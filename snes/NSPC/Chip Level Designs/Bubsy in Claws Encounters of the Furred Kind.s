0460: 20        clrp
0461: cd ff     mov   x,#$ff
0463: bd        mov   sp,x
0464: e8 00     mov   a,#$00
0466: 5d        mov   x,a
0467: d5 00 01  mov   $0100+x,a
046a: d5 00 02  mov   $0200+x,a
046d: d5 00 03  mov   $0300+x,a
0470: c8 60     cmp   x,#$60
0472: b0 03     bcs   $0477
0474: d5 00 04  mov   $0400+x,a
0477: 3d        inc   x
0478: d0 ed     bne   $0467
047a: af        mov   (x)+,a
047b: c8 f0     cmp   x,#$f0
047d: d0 fb     bne   $047a
047f: bc        inc   a
0480: 3f 12 0d  call  $0d12
0483: a2 28     set5  $28
0485: cd 1e     mov   x,#$1e
0487: 3f d3 07  call  $07d3
048a: e8 60     mov   a,#$60
048c: 8d 0c     mov   y,#$0c
048e: 3f ba 06  call  $06ba
0491: 8d 1c     mov   y,#$1c
0493: 3f ba 06  call  $06ba
0496: e8 3c     mov   a,#$3c
0498: 8d 5d     mov   y,#$5d
049a: 3f ba 06  call  $06ba
049d: e8 30     mov   a,#$30
049f: c4 f1     mov   $f1,a
04a1: e8 10     mov   a,#$10
04a3: c4 fa     mov   $fa,a
04a5: c4 33     mov   $33,a
04a7: e8 01     mov   a,#$01
04a9: c4 f1     mov   $f1,a
04ab: 8f 00 f4  mov   $f4,#$00
04ae: 8d 0a     mov   y,#$0a
04b0: ad 05     cmp   y,#$05
04b2: f0 07     beq   $04bb
04b4: b0 08     bcs   $04be
04b6: 69 2d 2c  cmp   ($2c),($2d)
04b9: d0 0f     bne   $04ca
04bb: e3 2c 0c  bbs7  $2c,$04ca
04be: f6 fe 10  mov   a,$10fe+y
04c1: c4 f2     mov   $f2,a
04c3: f6 08 11  mov   a,$1108+y
04c6: 5d        mov   x,a
04c7: e6        mov   a,(x)
04c8: c4 f3     mov   $f3,a
04ca: fe e4     dbnz  y,$04b0
04cc: cb 25     mov   $25,y
04ce: cb 26     mov   $26,y
04d0: eb fd     mov   y,$fd
04d2: f0 fc     beq   $04d0
04d4: 6d        push  y
04d5: e8 20     mov   a,#$20
04d7: cf        mul   ya
04d8: 60        clrc
04d9: 84 23     adc   a,$23
04db: c4 23     mov   $23,a
04dd: 90 07     bcc   $04e6
04df: 69 2d 2c  cmp   ($2c),($2d)
04e2: f0 02     beq   $04e6
04e4: ab 2c     inc   $2c
04e6: e4 33     mov   a,$33
04e8: ee        pop   y
04e9: cf        mul   ya
04ea: 60        clrc
04eb: 84 31     adc   a,$31
04ed: c4 f6     mov   $f6,a
04ef: c4 31     mov   $31,a
04f1: b0 34     bcs   $0527
04f3: cd 00     mov   x,#$00
04f5: 3f a9 05  call  $05a9
04f8: 68 00     cmp   a,#$00
04fa: f0 19     beq   $0515
04fc: e4 f6     mov   a,$f6
04fe: 64 f6     cmp   a,$f6
0500: d0 fa     bne   $04fc
0502: c4 1b     mov   $1b,a
0504: 78 f7 02  cmp   $02,#$f7
0507: f0 09     beq   $0512
0509: 78 f8 02  cmp   $02,#$f8
050c: f0 04     beq   $0512
050e: e4 1c     mov   a,$1c
0510: c4 f4     mov   $f4,a
0512: 3f 27 08  call  $0827
0515: cd 01     mov   x,#$01
0517: 3f a9 05  call  $05a9
051a: 68 00     cmp   a,#$00
051c: f0 48     beq   $0566
051e: 3f b7 09  call  $09b7
0521: e4 1c     mov   a,$1c
0523: c4 f4     mov   $f4,a
0525: 2f 3f     bra   $0566
0527: 3f 27 08  call  $0827
052a: e5 e2 11  mov   a,$11e2
052d: f0 34     beq   $0563
052f: cd 00     mov   x,#$00
0531: d8 1f     mov   $1f,x
0533: f5 e3 11  mov   a,$11e3+x
0536: 30 03     bmi   $053b
0538: c4 1f     mov   $1f,a
053a: 3d        inc   x
053b: 4d        push  x
053c: 8d 00     mov   y,#$00
053e: f5 e3 11  mov   a,$11e3+x
0541: d6 4d 11  mov   $114d+y,a
0544: 3d        inc   x
0545: fc        inc   y
0546: ad 04     cmp   y,#$04
0548: d0 f4     bne   $053e
054a: 8f 00 19  mov   $19,#$00
054d: 8f 10 12  mov   $12,#$10
0550: 3f 18 07  call  $0718
0553: ae        pop   a
0554: bc        inc   a
0555: 60        clrc
0556: 84 49     adc   a,$49
0558: 5d        mov   x,a
0559: 1e e2 11  cmp   x,$11e2
055c: d0 d5     bne   $0533
055e: e8 00     mov   a,#$00
0560: c5 e2 11  mov   $11e2,a
0563: 3f b7 09  call  $09b7
0566: e4 06     mov   a,$06
0568: f0 18     beq   $0582
056a: e4 1a     mov   a,$1a
056c: 04 18     or    a,$18
056e: c4 19     mov   $19,a
0570: cd 00     mov   x,#$00
0572: 8f 01 27  mov   $27,#$01
0575: f4 91     mov   a,$91+x
0577: f0 03     beq   $057c
0579: 3f 1d 10  call  $101d
057c: 3d        inc   x
057d: 3d        inc   x
057e: 0b 27     asl   $27
0580: d0 f3     bne   $0575
0582: 8f 00 19  mov   $19,#$00
0585: cd 1e     mov   x,#$1e
0587: 8f 07 1f  mov   $1f,#$07
058a: 8f 80 27  mov   $27,#$80
058d: eb 1f     mov   y,$1f
058f: f6 68 00  mov   a,$0068+y
0592: 28 7f     and   a,#$7f
0594: 68 01     cmp   a,#$01
0596: d0 03     bne   $059b
0598: 3f 1d 10  call  $101d
059b: 1d        dec   x
059c: 1d        dec   x
059d: 4b 27     lsr   $27
059f: 8b 1f     dec   $1f
05a1: 78 03 1f  cmp   $1f,#$03
05a4: d0 e7     bne   $058d
05a6: 5f ae 04  jmp   $04ae

05a9: f4 f4     mov   a,$f4+x
05ab: 74 f4     cmp   a,$f4+x
05ad: d0 fa     bne   $05a9
05af: 68 00     cmp   a,#$00
05b1: f0 08     beq   $05bb
05b3: 8d 11     mov   y,#$11
05b5: cb f1     mov   $f1,y
05b7: d4 02     mov   $02+x,a
05b9: ab 1c     inc   $1c
05bb: 6f        ret

05bc: ad ca     cmp   y,#$ca
05be: 90 05     bcc   $05c5
05c0: 3f 62 0b  call  $0b62
05c3: 8d a4     mov   y,#$a4
05c5: ad c8     cmp   y,#$c8
05c7: b0 f2     bcs   $05bb
05c9: dd        mov   a,y
05ca: 28 7f     and   a,#$7f
05cc: 60        clrc
05cd: 84 30     adc   a,$30
05cf: 60        clrc
05d0: 94 71     adc   a,$71+x
05d2: d5 01 04  mov   $0401+x,a
05d5: f5 41 04  mov   a,$0441+x
05d8: d5 00 04  mov   $0400+x,a
05db: f5 c1 02  mov   a,$02c1+x
05de: 5c        lsr   a
05df: e8 00     mov   a,#$00
05e1: 7c        ror   a
05e2: d5 a0 02  mov   $02a0+x,a
05e5: e8 00     mov   a,#$00
05e7: d5 60 01  mov   $0160+x,a
05ea: d5 00 01  mov   $0100+x,a
05ed: d5 00 03  mov   $0300+x,a
05f0: d5 40 01  mov   $0140+x,a
05f3: e4 27     mov   a,$27
05f5: 24 19     and   a,$19
05f7: d0 06     bne   $05ff
05f9: 09 27 07  or    ($07),($27)
05fc: 09 27 25  or    ($25),($27)
05ff: f5 60 02  mov   a,$0260+x
0602: d5 20 01  mov   $0120+x,a
0605: f0 1f     beq   $0626
0607: f5 61 02  mov   a,$0261+x
060a: d5 21 01  mov   $0121+x,a
060d: f5 80 02  mov   a,$0280+x
0610: d0 0a     bne   $061c
0612: f5 01 04  mov   a,$0401+x
0615: 80        setc
0616: b5 81 02  sbc   a,$0281+x
0619: d5 01 04  mov   $0401+x,a
061c: f5 81 02  mov   a,$0281+x
061f: 60        clrc
0620: 95 01 04  adc   a,$0401+x
0623: 3f 79 0d  call  $0d79
0626: 3f b7 0d  call  $0db7
0629: e4 27     mov   a,$27
062b: 24 19     and   a,$19
062d: d0 8c     bne   $05bb
062f: 8d 00     mov   y,#$00
0631: e4 11     mov   a,$11
0633: 80        setc
0634: a8 34     sbc   a,#$34
0636: b0 09     bcs   $0641
0638: e4 11     mov   a,$11
063a: 80        setc
063b: a8 13     sbc   a,#$13
063d: b0 06     bcs   $0645
063f: dc        dec   y
0640: 1c        asl   a
0641: 7a 10     addw  ya,$10
0643: da 10     movw  $10,ya
0645: 4d        push  x
0646: e4 11     mov   a,$11
0648: 1c        asl   a
0649: 8d 00     mov   y,#$00
064b: cd 18     mov   x,#$18
064d: 9e        div   ya,x
064e: 5d        mov   x,a
064f: f6 14 11  mov   a,$1114+y
0652: c4 15     mov   $15,a
0654: f6 13 11  mov   a,$1113+y
0657: c4 14     mov   $14,a
0659: f6 16 11  mov   a,$1116+y
065c: 2d        push  a
065d: f6 15 11  mov   a,$1115+y
0660: ee        pop   y
0661: 9a 14     subw  ya,$14
0663: eb 10     mov   y,$10
0665: cf        mul   ya
0666: dd        mov   a,y
0667: 8d 00     mov   y,#$00
0669: 7a 14     addw  ya,$14
066b: cb 15     mov   $15,y
066d: 1c        asl   a
066e: 2b 15     rol   $15
0670: c4 14     mov   $14,a
0672: 2f 04     bra   $0678
0674: 4b 15     lsr   $15
0676: 7c        ror   a
0677: 3d        inc   x
0678: c8 06     cmp   x,#$06
067a: d0 f8     bne   $0674
067c: c4 14     mov   $14,a
067e: ce        pop   x
067f: f5 00 02  mov   a,$0200+x
0682: eb 15     mov   y,$15
0684: cf        mul   ya
0685: da 16     movw  $16,ya
0687: f5 00 02  mov   a,$0200+x
068a: eb 14     mov   y,$14
068c: cf        mul   ya
068d: 6d        push  y
068e: f5 01 02  mov   a,$0201+x
0691: eb 14     mov   y,$14
0693: cf        mul   ya
0694: 7a 16     addw  ya,$16
0696: da 16     movw  $16,ya
0698: f5 01 02  mov   a,$0201+x
069b: eb 15     mov   y,$15
069d: cf        mul   ya
069e: fd        mov   y,a
069f: ae        pop   a
06a0: 7a 16     addw  ya,$16
06a2: da 16     movw  $16,ya
06a4: 7d        mov   a,x
06a5: 9f        xcn   a
06a6: 5c        lsr   a
06a7: 08 02     or    a,#$02
06a9: fd        mov   y,a
06aa: e4 16     mov   a,$16
06ac: 3f b2 06  call  $06b2
06af: fc        inc   y
06b0: e4 17     mov   a,$17
06b2: 2d        push  a
06b3: e4 27     mov   a,$27
06b5: 24 19     and   a,$19
06b7: ae        pop   a
06b8: d0 04     bne   $06be
06ba: cb f2     mov   $f2,y
06bc: c4 f3     mov   $f3,a
06be: 6f        ret

06bf: 8d 00     mov   y,#$00
06c1: f7 20     mov   a,($20)+y
06c3: 3a 20     incw  $20
06c5: 2d        push  a
06c6: f7 20     mov   a,($20)+y
06c8: 3a 20     incw  $20
06ca: fd        mov   y,a
06cb: ae        pop   a
06cc: 6f        ret

06cd: dw $0846
06cf: dw $0789
06d1: dw $078d
06d3: dw $0784
06d5: dw $06f0
06d7: dw $06eb
06d9: dw $0792
06db: dw $079e
06dd: dw $07bd
06df: dw $0846
06e1: dw $0846
06e3: dw $0846
06e5: dw $0846
06e7: dw $1160
06e9: dw $1151

06eb: 8f 00 12  mov   $12,#$00
06ee: 2f 06     bra   $06f6
06f0: 8f 00 19  mov   $19,#$00
06f3: 8f 10 12  mov   $12,#$10
06f6: f8 1b     mov   x,$1b
06f8: d8 1f     mov   $1f,x
06fa: e4 f4     mov   a,$f4
06fc: f0 fc     beq   $06fa
06fe: c5 4d 11  mov   $114d,a
0701: ba f6     movw  ya,$f6
0703: c5 4f 11  mov   $114f,a
0706: cc 50 11  mov   $1150,y
0709: e4 f5     mov   a,$f5
070b: c5 4e 11  mov   $114e,a
070e: e8 31     mov   a,#$31
0710: c4 f1     mov   $f1,a
0712: ab 1c     inc   $1c
0714: e4 1c     mov   a,$1c
0716: c4 f4     mov   $f4,a
0718: f8 1f     mov   x,$1f
071a: f5 45 11  mov   a,$1145+x
071d: c4 27     mov   $27,a
071f: 7d        mov   a,x
0720: 1c        asl   a
0721: 84 12     adc   a,$12
0723: c4 24     mov   $24,a
0725: 5d        mov   x,a
0726: e5 4d 11  mov   a,$114d
0729: 68 fb     cmp   a,#$fb
072b: f0 40     beq   $076d
072d: 68 e0     cmp   a,#$e0
072f: 90 3b     bcc   $076c
0731: f4 90     mov   a,$90+x
0733: fb 91     mov   y,$91+x
0735: da 1d     movw  $1d,ya
0737: e8 4e     mov   a,#$4e
0739: d4 90     mov   $90+x,a
073b: e8 11     mov   a,#$11
073d: d4 91     mov   $91+x,a
073f: e5 4d 11  mov   a,$114d
0742: 3f 44 0b  call  $0b44
0745: f5 41 04  mov   a,$0441+x
0748: d5 00 04  mov   $0400+x,a
074b: f5 c1 02  mov   a,$02c1+x
074e: 5c        lsr   a
074f: e8 00     mov   a,#$00
0751: 7c        ror   a
0752: d5 a0 02  mov   $02a0+x,a
0755: e8 00     mov   a,#$00
0757: d5 60 01  mov   $0160+x,a
075a: d5 00 01  mov   $0100+x,a
075d: d5 00 03  mov   $0300+x,a
0760: d5 40 01  mov   $0140+x,a
0763: 3f ff 05  call  $05ff
0766: ba 1d     movw  ya,$1d
0768: d4 90     mov   $90+x,a
076a: db 91     mov   $91+x,y
076c: 6f        ret

076d: 78 00 12  cmp   $12,#$00
0770: d0 0e     bne   $0780
0772: 78 01 27  cmp   $27,#$01
0775: d0 04     bne   $077b
0777: 8f 01 0c  mov   $0c,#$01
077a: 6f        ret

077b: e8 00     mov   a,#$00
077d: d4 91     mov   $91+x,a
077f: 6f        ret

0780: 3f 36 0b  call  $0b36
0783: 6f        ret

0784: e4 1b     mov   a,$1b
0786: c4 1a     mov   $1a,a
0788: 6f        ret

0789: e8 00     mov   a,#$00
078b: 2f 02     bra   $078f
078d: e8 ff     mov   a,#$ff
078f: c4 2f     mov   $2f,a
0791: 6f        ret

0792: ba f6     movw  ya,$f6
0794: da 14     movw  $14,ya
0796: 8d 00     mov   y,#$00
0798: f7 14     mov   a,($14)+y
079a: c4 f5     mov   $f5,a
079c: 2f 1a     bra   $07b8
079e: e4 f6     mov   a,$f6
07a0: 2d        push  a
07a1: 28 07     and   a,#$07
07a3: 1c        asl   a
07a4: 60        clrc
07a5: 88 10     adc   a,#$10
07a7: 5d        mov   x,a
07a8: e4 f7     mov   a,$f7
07aa: 5c        lsr   a
07ab: d5 01 04  mov   $0401+x,a
07ae: ae        pop   a
07af: 28 f8     and   a,#$f8
07b1: 7c        ror   a
07b2: d5 00 04  mov   $0400+x,a
07b5: 3f 26 06  call  $0626
07b8: e4 1c     mov   a,$1c
07ba: c4 f4     mov   $f4,a
07bc: 6f        ret

07bd: e4 f6     mov   a,$f6
07bf: 1c        asl   a
07c0: 60        clrc
07c1: 88 10     adc   a,#$10
07c3: 5d        mov   x,a
07c4: e4 f7     mov   a,$f7
07c6: 3f 6b 0c  call  $0c6b
07c9: e8 ff     mov   a,#$ff
07cb: 3f b8 10  call  $10b8
07ce: 3f a9 0e  call  $0ea9
07d1: 2f e5     bra   $07b8
07d3: 8d 08     mov   y,#$08
07d5: e8 ff     mov   a,#$ff
07d7: d5 41 03  mov   $0341+x,a
07da: e8 0a     mov   a,#$0a
07dc: 3f b9 0b  call  $0bb9
07df: d5 a1 01  mov   $01a1+x,a
07e2: d5 41 04  mov   $0441+x,a
07e5: d4 71     mov   $71+x,a
07e7: d5 60 02  mov   $0260+x,a
07ea: d5 61 01  mov   $0161+x,a
07ed: d5 41 01  mov   $0141+x,a
07f0: c4 2b     mov   $2b,a
07f2: 1d        dec   x
07f3: 1d        dec   x
07f4: dc        dec   y
07f5: d0 de     bne   $07d5
07f7: c4 3a     mov   $3a,a
07f9: c4 46     mov   $46,a
07fb: c4 34     mov   $34,a
07fd: c4 30     mov   $30,a
07ff: c4 22     mov   $22,a
0801: c4 0d     mov   $0d,a
0803: 8f c0 39  mov   $39,#$c0
0806: 8f 20 33  mov   $33,#$20
0809: 6f        ret

080a: c4 06     mov   $06,a
080c: 1c        asl   a
080d: 5d        mov   x,a
080e: f5 ff 11  mov   a,$11ff+x
0811: fd        mov   y,a
0812: f5 fe 11  mov   a,$11fe+x
0815: da 20     movw  $20,ya
0817: 8f 02 0c  mov   $0c,#$02
081a: e4 1a     mov   a,$1a
081c: 48 ff     eor   a,#$ff
081e: 0e 26 00  tset1 $0026
0821: e4 18     mov   a,$18
0823: 4e 26 00  tclr1 $0026
0826: 6f        ret

0827: e4 1a     mov   a,$1a
0829: 04 18     or    a,$18
082b: c4 19     mov   $19,a
082d: e4 02     mov   a,$02
082f: f0 15     beq   $0846
0831: c4 08     mov   $08,a
0833: 68 f0     cmp   a,#$f0
0835: f0 e3     beq   $081a
0837: 8d 00     mov   y,#$00
0839: cb 02     mov   $02,y
083b: 68 f1     cmp   a,#$f1
083d: 90 cb     bcc   $080a
083f: a8 f1     sbc   a,#$f1
0841: 1c        asl   a
0842: 5d        mov   x,a
0843: 1f cd 06  jmp   ($06cd+x)

0846: e4 1a     mov   a,$1a
0848: 04 18     or    a,$18
084a: c4 19     mov   $19,a
084c: e4 06     mov   a,$06
084e: f0 b9     beq   $0809
0850: e4 0c     mov   a,$0c
0852: f0 53     beq   $08a7
0854: 8b 0c     dec   $0c
0856: f0 05     beq   $085d
0858: cd 0e     mov   x,#$0e
085a: 5f d3 07  jmp   $07d3

085d: 3f bf 06  call  $06bf
0860: d0 14     bne   $0876
0862: fd        mov   y,a
0863: f0 a5     beq   $080a
0865: 8b 22     dec   $22
0867: 10 02     bpl   $086b
0869: c4 22     mov   $22,a
086b: 3f bf 06  call  $06bf
086e: f8 22     mov   x,$22
0870: f0 eb     beq   $085d
0872: da 20     movw  $20,ya
0874: 2f e7     bra   $085d
0876: da 16     movw  $16,ya
0878: 8d 0f     mov   y,#$0f
087a: f7 16     mov   a,($16)+y
087c: d6 90 00  mov   $0090+y,a
087f: dc        dec   y
0880: 10 f8     bpl   $087a
0882: cd 00     mov   x,#$00
0884: 8f 01 27  mov   $27,#$01
0887: f4 91     mov   a,$91+x
0889: f0 0a     beq   $0895
088b: f5 a1 01  mov   a,$01a1+x
088e: d0 05     bne   $0895
0890: e8 00     mov   a,#$00
0892: 3f 62 0b  call  $0b62
0895: e8 00     mov   a,#$00
0897: d5 01 01  mov   $0101+x,a
089a: d4 d0     mov   $d0+x,a
089c: d4 d1     mov   $d1+x,a
089e: bc        inc   a
089f: d4 b0     mov   $b0+x,a
08a1: 3d        inc   x
08a2: 3d        inc   x
08a3: 0b 27     asl   $27
08a5: d0 e0     bne   $0887
08a7: cd 00     mov   x,#$00
08a9: e4 18     mov   a,$18
08ab: c4 07     mov   $07,a
08ad: 8f 01 27  mov   $27,#$01
08b0: d8 24     mov   $24,x
08b2: f4 91     mov   a,$91+x
08b4: d0 03     bne   $08b9
08b6: 5f 35 09  jmp   $0935

08b9: 9b b0     dec   $b0+x
08bb: d0 72     bne   $092f
08bd: 3f 58 0b  call  $0b58
08c0: d0 28     bne   $08ea
08c2: f5 01 01  mov   a,$0101+x
08c5: d0 0e     bne   $08d5
08c7: 78 01 27  cmp   $27,#$01
08ca: d0 03     bne   $08cf
08cc: 5f 5d 08  jmp   $085d

08cf: e8 00     mov   a,#$00
08d1: d4 91     mov   $91+x,a
08d3: 2f 60     bra   $0935
08d5: 3f aa 0c  call  $0caa
08d8: 40        setp
08d9: 9b 01     dec   $01+x
08db: 20        clrp
08dc: d0 df     bne   $08bd
08de: f5 20 02  mov   a,$0220+x
08e1: d4 90     mov   $90+x,a
08e3: f5 21 02  mov   a,$0221+x
08e6: d4 91     mov   $91+x,a
08e8: 2f d3     bra   $08bd
08ea: 30 20     bmi   $090c
08ec: d5 80 01  mov   $0180+x,a
08ef: 3f 58 0b  call  $0b58
08f2: 30 18     bmi   $090c
08f4: 2d        push  a
08f5: 9f        xcn   a
08f6: 28 07     and   a,#$07
08f8: fd        mov   y,a
08f9: f6 2d 11  mov   a,$112d+y
08fc: d5 81 01  mov   $0181+x,a
08ff: ae        pop   a
0900: 28 0f     and   a,#$0f
0902: fd        mov   y,a
0903: f6 35 11  mov   a,$1135+y
0906: d5 a0 01  mov   $01a0+x,a
0909: 3f 58 0b  call  $0b58
090c: 68 e0     cmp   a,#$e0
090e: 90 09     bcc   $0919
0910: 68 fb     cmp   a,#$fb
0912: f0 b3     beq   $08c7
0914: 3f 44 0b  call  $0b44
0917: 2f a4     bra   $08bd
0919: dd        mov   a,y
091a: 3f bc 05  call  $05bc
091d: f5 80 01  mov   a,$0180+x
0920: d4 b0     mov   $b0+x,a
0922: fd        mov   y,a
0923: f5 81 01  mov   a,$0181+x
0926: cf        mul   ya
0927: dd        mov   a,y
0928: d0 01     bne   $092b
092a: bc        inc   a
092b: d4 b1     mov   $b1+x,a
092d: 2f 03     bra   $0932
092f: 3f 2e 0f  call  $0f2e
0932: 3f 57 0d  call  $0d57
0935: 3d        inc   x
0936: 3d        inc   x
0937: 0b 27     asl   $27
0939: f0 03     beq   $093e
093b: 5f b0 08  jmp   $08b0

093e: 3f 54 09  call  $0954
0941: cd 00     mov   x,#$00
0943: 8f 01 27  mov   $27,#$01
0946: f4 91     mov   a,$91+x
0948: f0 03     beq   $094d
094a: 3f 5d 0e  call  $0e5d
094d: 3d        inc   x
094e: 3d        inc   x
094f: 0b 27     asl   $27
0951: d0 f3     bne   $0946
0953: 6f        ret

0954: e4 34     mov   a,$34
0956: f0 0b     beq   $0963
0958: ba 36     movw  ya,$36
095a: 7a 32     addw  ya,$32
095c: 6e 34 02  dbnz  $34,$0961
095f: ba 34     movw  ya,$34
0961: da 32     movw  $32,ya
0963: e4 46     mov   a,$46
0965: f0 15     beq   $097c
0967: ba 42     movw  ya,$42
0969: 7a 3e     addw  ya,$3e
096b: da 3e     movw  $3e,ya
096d: ba 44     movw  ya,$44
096f: 7a 40     addw  ya,$40
0971: 6e 46 06  dbnz  $46,$097a
0974: ba 46     movw  ya,$46
0976: da 3e     movw  $3e,ya
0978: eb 48     mov   y,$48
097a: da 40     movw  $40,ya
097c: e4 3a     mov   a,$3a
097e: f0 0e     beq   $098e
0980: ba 3c     movw  ya,$3c
0982: 7a 38     addw  ya,$38
0984: 6e 3a 02  dbnz  $3a,$0989
0987: ba 3a     movw  ya,$3a
0989: da 38     movw  $38,ya
098b: 8f ff 07  mov   $07,#$ff
098e: 6f        ret

098f: 1c        asl   a
0990: fd        mov   y,a
0991: f6 13 12  mov   a,$1213+y
0994: d4 91     mov   $91+x,a
0996: f6 12 12  mov   a,$1212+y
0999: d4 90     mov   $90+x,a
099b: e8 ff     mov   a,#$ff
099d: d5 41 03  mov   $0341+x,a
09a0: e8 0a     mov   a,#$0a
09a2: 3f b9 0b  call  $0bb9
09a5: d5 a1 01  mov   $01a1+x,a
09a8: d5 41 04  mov   $0441+x,a
09ab: d4 71     mov   $71+x,a
09ad: d5 60 02  mov   $0260+x,a
09b0: d5 61 01  mov   $0161+x,a
09b3: d5 41 01  mov   $0141+x,a
09b6: 6f        ret

09b7: 78 f0 02  cmp   $02,#$f0
09ba: f0 fa     beq   $09b6
09bc: e4 03     mov   a,$03
09be: f0 47     beq   $0a07
09c0: cd 07     mov   x,#$07
09c2: f4 68     mov   a,$68+x
09c4: f0 18     beq   $09de
09c6: 1d        dec   x
09c7: c8 03     cmp   x,#$03
09c9: d0 f7     bne   $09c2
09cb: cd 07     mov   x,#$07
09cd: f4 68     mov   a,$68+x
09cf: 10 0d     bpl   $09de
09d1: 1d        dec   x
09d2: c8 03     cmp   x,#$03
09d4: d0 f7     bne   $09cd
09d6: 8f ff f5  mov   $f5,#$ff
09d9: 8f 00 03  mov   $03,#$00
09dc: 2f 29     bra   $0a07
09de: e4 03     mov   a,$03
09e0: 28 80     and   a,#$80
09e2: 08 03     or    a,#$03
09e4: d4 68     mov   $68+x,a
09e6: d8 f5     mov   $f5,x
09e8: f5 45 11  mov   a,$1145+x
09eb: c4 27     mov   $27,a
09ed: 0e 18 00  tset1 $0018
09f0: 8d 5c     mov   y,#$5c
09f2: 3f ba 06  call  $06ba
09f5: 7d        mov   a,x
09f6: 1c        asl   a
09f7: 60        clrc
09f8: 88 10     adc   a,#$10
09fa: 5d        mov   x,a
09fb: d8 24     mov   $24,x
09fd: e4 03     mov   a,$03
09ff: 28 7f     and   a,#$7f
0a01: 8f 00 03  mov   $03,#$00
0a04: 3f 8f 09  call  $098f
0a07: 8f 00 19  mov   $19,#$00
0a0a: 8f 07 1f  mov   $1f,#$07
0a0d: 8f 1e 24  mov   $24,#$1e
0a10: 8f 80 27  mov   $27,#$80
0a13: 3f 48 0a  call  $0a48
0a16: 8b 24     dec   $24
0a18: 8b 24     dec   $24
0a1a: 4b 27     lsr   $27
0a1c: 8b 1f     dec   $1f
0a1e: 78 03 1f  cmp   $1f,#$03
0a21: d0 f0     bne   $0a13
0a23: 3f 54 09  call  $0954
0a26: 8f 07 1f  mov   $1f,#$07
0a29: 8f 1e 24  mov   $24,#$1e
0a2c: 8f 80 27  mov   $27,#$80
0a2f: f8 1f     mov   x,$1f
0a31: f4 68     mov   a,$68+x
0a33: f0 05     beq   $0a3a
0a35: f8 24     mov   x,$24
0a37: 3f 5d 0e  call  $0e5d
0a3a: 8b 24     dec   $24
0a3c: 8b 24     dec   $24
0a3e: 4b 27     lsr   $27
0a40: 8b 1f     dec   $1f
0a42: 78 03 1f  cmp   $1f,#$03
0a45: d0 e8     bne   $0a2f
0a47: 6f        ret

0a48: f8 1f     mov   x,$1f
0a4a: f4 68     mov   a,$68+x
0a4c: f0 46     beq   $0a94
0a4e: 28 7f     and   a,#$7f
0a50: 68 01     cmp   a,#$01
0a52: f0 5e     beq   $0ab2
0a54: 68 40     cmp   a,#$40
0a56: b0 08     bcs   $0a60
0a58: 9b 68     dec   $68+x
0a5a: 9c        dec   a
0a5b: 68 01     cmp   a,#$01
0a5d: f0 3b     beq   $0a9a
0a5f: 6f        ret

0a60: 68 40     cmp   a,#$40
0a62: f0 03     beq   $0a67
0a64: 9b 68     dec   $68+x
0a66: 6f        ret

0a67: e8 5c     mov   a,#$5c
0a69: c4 f2     mov   $f2,a
0a6b: e4 f3     mov   a,$f3
0a6d: 24 27     and   a,$27
0a6f: d0 11     bne   $0a82
0a71: 7d        mov   a,x
0a72: 9f        xcn   a
0a73: 08 08     or    a,#$08
0a75: c4 f2     mov   $f2,a
0a77: e4 f3     mov   a,$f3
0a79: d0 1a     bne   $0a95
0a7b: e4 27     mov   a,$27
0a7d: 8d 5c     mov   y,#$5c
0a7f: 3f ba 06  call  $06ba
0a82: e8 00     mov   a,#$00
0a84: d4 68     mov   $68+x,a
0a86: e4 27     mov   a,$27
0a88: 4e 18 00  tclr1 $0018
0a8b: 7d        mov   a,x
0a8c: 1c        asl   a
0a8d: 5d        mov   x,a
0a8e: f5 a1 01  mov   a,$01a1+x
0a91: 3f 62 0b  call  $0b62
0a94: 6f        ret

0a95: f8 24     mov   x,$24
0a97: 5f 2e 0f  jmp   $0f2e

0a9a: f8 24     mov   x,$24
0a9c: f5 a1 01  mov   a,$01a1+x
0a9f: d0 05     bne   $0aa6
0aa1: e8 00     mov   a,#$00
0aa3: 3f 62 0b  call  $0b62
0aa6: e8 00     mov   a,#$00
0aa8: d5 01 01  mov   $0101+x,a
0aab: d4 d0     mov   $d0+x,a
0aad: d4 d1     mov   $d1+x,a
0aaf: bc        inc   a
0ab0: d4 b0     mov   $b0+x,a
0ab2: f8 24     mov   x,$24
0ab4: e4 27     mov   a,$27
0ab6: 48 ff     eor   a,#$ff
0ab8: 24 07     and   a,$07
0aba: c4 07     mov   $07,a
0abc: 9b b0     dec   $b0+x
0abe: d0 64     bne   $0b24
0ac0: 3f 58 0b  call  $0b58
0ac3: d0 1a     bne   $0adf
0ac5: f5 01 01  mov   a,$0101+x
0ac8: f0 61     beq   $0b2b
0aca: 3f aa 0c  call  $0caa
0acd: 40        setp
0ace: 9b 01     dec   $01+x
0ad0: 20        clrp
0ad1: d0 ed     bne   $0ac0
0ad3: f5 20 02  mov   a,$0220+x
0ad6: d4 90     mov   $90+x,a
0ad8: f5 21 02  mov   a,$0221+x
0adb: d4 91     mov   $91+x,a
0add: 2f e1     bra   $0ac0
0adf: 30 20     bmi   $0b01
0ae1: d5 80 01  mov   $0180+x,a
0ae4: 3f 58 0b  call  $0b58
0ae7: 30 18     bmi   $0b01
0ae9: 2d        push  a
0aea: 9f        xcn   a
0aeb: 28 07     and   a,#$07
0aed: fd        mov   y,a
0aee: f6 2d 11  mov   a,$112d+y
0af1: d5 81 01  mov   $0181+x,a
0af4: ae        pop   a
0af5: 28 0f     and   a,#$0f
0af7: fd        mov   y,a
0af8: f6 35 11  mov   a,$1135+y
0afb: d5 a0 01  mov   $01a0+x,a
0afe: 3f 58 0b  call  $0b58
0b01: 68 e0     cmp   a,#$e0
0b03: 90 09     bcc   $0b0e
0b05: 68 fb     cmp   a,#$fb
0b07: f0 2d     beq   $0b36
0b09: 3f 44 0b  call  $0b44
0b0c: 2f b2     bra   $0ac0
0b0e: dd        mov   a,y
0b0f: 3f bc 05  call  $05bc
0b12: f5 80 01  mov   a,$0180+x
0b15: d4 b0     mov   $b0+x,a
0b17: fd        mov   y,a
0b18: f5 81 01  mov   a,$0181+x
0b1b: cf        mul   ya
0b1c: dd        mov   a,y
0b1d: d0 01     bne   $0b20
0b1f: bc        inc   a
0b20: d4 b1     mov   $b1+x,a
0b22: 2f 03     bra   $0b27
0b24: 3f 2e 0f  call  $0f2e
0b27: 3f 57 0d  call  $0d57
0b2a: 6f        ret

0b2b: f8 1f     mov   x,$1f
0b2d: f4 68     mov   a,$68+x
0b2f: 28 80     and   a,#$80
0b31: 08 40     or    a,#$40
0b33: d4 68     mov   $68+x,a
0b35: 6f        ret

0b36: e4 27     mov   a,$27
0b38: 8d 5c     mov   y,#$5c
0b3a: 3f ba 06  call  $06ba
0b3d: f8 1f     mov   x,$1f
0b3f: e8 41     mov   a,#$41
0b41: d4 68     mov   $68+x,a
0b43: 6f        ret

; dispatch vcmd
0b44: 1c        asl   a
0b45: fd        mov   y,a
0b46: f6 1f 0d  mov   a,$0d1f+y
0b49: 2d        push  a
0b4a: f6 1e 0d  mov   a,$0d1e+y         ; $0dde
0b4d: 2d        push  a
0b4e: dd        mov   a,y
0b4f: 5c        lsr   a
0b50: fd        mov   y,a
0b51: f6 be 0d  mov   a,$0dbe+y         ; $0e1e
0b54: c4 49     mov   $49,a
0b56: f0 08     beq   $0b60
0b58: e7 90     mov   a,($90+x)
0b5a: bb 90     inc   $90+x
0b5c: d0 02     bne   $0b60
0b5e: bb 91     inc   $91+x
0b60: fd        mov   y,a
0b61: 6f        ret

; vcmd e0
0b62: d5 a1 01  mov   $01a1+x,a
0b65: fd        mov   y,a
0b66: 10 06     bpl   $0b6e
0b68: 80        setc
0b69: a8 ca     sbc   a,#$ca
0b6b: 60        clrc
0b6c: 84 0d     adc   a,$0d
0b6e: 8d 06     mov   y,#$06
0b70: cf        mul   ya
0b71: da 14     movw  $14,ya
0b73: 60        clrc
0b74: 98 00 14  adc   $14,#$00
0b77: 98 3e 15  adc   $15,#$3e
0b7a: e4 19     mov   a,$19
0b7c: 24 27     and   a,$27
0b7e: d0 38     bne   $0bb8
0b80: 4d        push  x
0b81: 7d        mov   a,x
0b82: 9f        xcn   a
0b83: 5c        lsr   a
0b84: 08 04     or    a,#$04
0b86: 5d        mov   x,a
0b87: 8d 00     mov   y,#$00
0b89: f7 14     mov   a,($14)+y
0b8b: 10 0e     bpl   $0b9b
0b8d: 28 1f     and   a,#$1f
0b8f: 38 20 28  and   $28,#$20
0b92: 0e 28 00  tset1 $0028
0b95: 09 27 29  or    ($29),($27)
0b98: dd        mov   a,y
0b99: 2f 07     bra   $0ba2
0b9b: e4 27     mov   a,$27
0b9d: 4e 29 00  tclr1 $0029
0ba0: f7 14     mov   a,($14)+y
0ba2: d8 f2     mov   $f2,x
0ba4: c4 f3     mov   $f3,a
0ba6: 3d        inc   x
0ba7: fc        inc   y
0ba8: ad 04     cmp   y,#$04
0baa: d0 f4     bne   $0ba0
0bac: ce        pop   x
0bad: f7 14     mov   a,($14)+y
0baf: d5 01 02  mov   $0201+x,a
0bb2: fc        inc   y
0bb3: f7 14     mov   a,($14)+y
0bb5: d5 00 02  mov   $0200+x,a
0bb8: 6f        ret

; vcmd e1
0bb9: d5 e1 03  mov   $03e1+x,a
0bbc: 28 1f     and   a,#$1f
0bbe: d5 a1 03  mov   $03a1+x,a
0bc1: e8 00     mov   a,#$00
0bc3: d5 a0 03  mov   $03a0+x,a
0bc6: 6f        ret

; vcmd e2
0bc7: d4 d1     mov   $d1+x,a
0bc9: 2d        push  a
0bca: 3f 58 0b  call  $0b58
0bcd: d5 e0 03  mov   $03e0+x,a
0bd0: 80        setc
0bd1: b5 a1 03  sbc   a,$03a1+x
0bd4: ce        pop   x
0bd5: 3f c2 0d  call  $0dc2
0bd8: d5 c0 03  mov   $03c0+x,a
0bdb: dd        mov   a,y
0bdc: d5 c1 03  mov   $03c1+x,a
0bdf: 6f        ret

; vcmd e3
0be0: d5 c0 02  mov   $02c0+x,a
0be3: 3f 58 0b  call  $0b58
0be6: d5 a1 02  mov   $02a1+x,a
0be9: 3f 58 0b  call  $0b58
; vcmd e4
0bec: d5 61 01  mov   $0161+x,a
0bef: d5 e1 02  mov   $02e1+x,a
0bf2: e8 00     mov   a,#$00
0bf4: d5 c1 02  mov   $02c1+x,a
0bf7: 6f        ret

; vcmd f0
0bf8: d5 c1 02  mov   $02c1+x,a
0bfb: 2d        push  a
0bfc: 8d 00     mov   y,#$00
0bfe: f5 61 01  mov   a,$0161+x
0c01: ce        pop   x
0c02: 9e        div   ya,x
0c03: f8 24     mov   x,$24
0c05: d5 e0 02  mov   $02e0+x,a
0c08: 6f        ret

; vcmd e5
0c09: e8 00     mov   a,#$00
0c0b: da 38     movw  $38,ya
0c0d: 6f        ret

; vcmd e6
0c0e: c4 3a     mov   $3a,a
0c10: 3f 58 0b  call  $0b58
0c13: c4 3b     mov   $3b,a
0c15: 80        setc
0c16: a4 39     sbc   a,$39
0c18: f8 3a     mov   x,$3a
0c1a: 3f c2 0d  call  $0dc2
0c1d: da 3c     movw  $3c,ya
0c1f: 6f        ret

; vcmd e7
0c20: e8 00     mov   a,#$00
0c22: da 32     movw  $32,ya
0c24: 6f        ret

; vcmd e8
0c25: c4 34     mov   $34,a
0c27: 3f 58 0b  call  $0b58
0c2a: c4 35     mov   $35,a
0c2c: 80        setc
0c2d: a4 33     sbc   a,$33
0c2f: f8 34     mov   x,$34
0c31: 3f c2 0d  call  $0dc2
0c34: da 36     movw  $36,ya
0c36: 6f        ret

; vcmd e9
0c37: c4 30     mov   $30,a
0c39: 6f        ret

; vcmd ea
0c3a: d4 71     mov   $71+x,a
0c3c: 6f        ret

; vcmd eb
0c3d: d5 20 03  mov   $0320+x,a
0c40: 3f 58 0b  call  $0b58
0c43: d5 01 03  mov   $0301+x,a
0c46: 3f 58 0b  call  $0b58
; vcmd ec
0c49: d5 41 01  mov   $0141+x,a
0c4c: 6f        ret

; vcmd f1
0c4d: e8 01     mov   a,#$01
0c4f: 2f 02     bra   $0c53
; vcmd f2
0c51: e8 00     mov   a,#$00
0c53: d5 80 02  mov   $0280+x,a
0c56: dd        mov   a,y
0c57: d5 61 02  mov   $0261+x,a
0c5a: 3f 58 0b  call  $0b58
0c5d: d5 60 02  mov   $0260+x,a
0c60: 3f 58 0b  call  $0b58
0c63: d5 81 02  mov   $0281+x,a
0c66: 6f        ret

; vcmd f3
0c67: d5 60 02  mov   $0260+x,a
0c6a: 6f        ret

; vcmd ed
0c6b: d5 41 03  mov   $0341+x,a
0c6e: e8 00     mov   a,#$00
0c70: d5 40 03  mov   $0340+x,a
0c73: 6f        ret

; vcmd ee
0c74: d4 d0     mov   $d0+x,a
0c76: 2d        push  a
0c77: 3f 58 0b  call  $0b58
0c7a: d5 80 03  mov   $0380+x,a
0c7d: 80        setc
0c7e: b5 41 03  sbc   a,$0341+x
0c81: ce        pop   x
0c82: 3f c2 0d  call  $0dc2
0c85: d5 60 03  mov   $0360+x,a
0c88: dd        mov   a,y
0c89: d5 61 03  mov   $0361+x,a
0c8c: 6f        ret

; vcmd f4
0c8d: d5 41 04  mov   $0441+x,a
0c90: 6f        ret

; vcmd ef
0c91: d5 40 02  mov   $0240+x,a
0c94: 3f 58 0b  call  $0b58
0c97: d5 41 02  mov   $0241+x,a
0c9a: 3f 58 0b  call  $0b58
0c9d: d5 01 01  mov   $0101+x,a
0ca0: f4 90     mov   a,$90+x
0ca2: d5 20 02  mov   $0220+x,a
0ca5: f4 91     mov   a,$91+x
0ca7: d5 21 02  mov   $0221+x,a
0caa: f5 40 02  mov   a,$0240+x
0cad: d4 90     mov   $90+x,a
0caf: f5 41 02  mov   a,$0241+x
0cb2: d4 91     mov   $91+x,a
0cb4: 6f        ret

; vcmd f5
0cb5: c4 2a     mov   $2a,a
0cb7: 3f 58 0b  call  $0b58
0cba: e8 00     mov   a,#$00
0cbc: da 3e     movw  $3e,ya
0cbe: 3f 58 0b  call  $0b58
0cc1: e8 00     mov   a,#$00
0cc3: da 40     movw  $40,ya
0cc5: b2 28     clr5  $28
0cc7: 6f        ret

; vcmd f8
0cc8: c4 46     mov   $46,a
0cca: 3f 58 0b  call  $0b58
0ccd: c4 47     mov   $47,a
0ccf: 80        setc
0cd0: a4 3f     sbc   a,$3f
0cd2: f8 46     mov   x,$46
0cd4: 3f c2 0d  call  $0dc2
0cd7: da 42     movw  $42,ya
0cd9: 3f 58 0b  call  $0b58
0cdc: c4 48     mov   $48,a
0cde: 80        setc
0cdf: a4 41     sbc   a,$41
0ce1: f8 46     mov   x,$46
0ce3: 3f c2 0d  call  $0dc2
0ce6: da 44     movw  $44,ya
0ce8: 6f        ret

; vcmd f6
0ce9: da 3e     movw  $3e,ya
0ceb: da 40     movw  $40,ya
0ced: a2 28     set5  $28
0cef: 6f        ret

; vcmd f7
0cf0: 3f 12 0d  call  $0d12
0cf3: 3f 58 0b  call  $0b58
0cf6: c4 2e     mov   $2e,a
0cf8: 3f 58 0b  call  $0b58
0cfb: 8d 08     mov   y,#$08
0cfd: cf        mul   ya
0cfe: 5d        mov   x,a
0cff: 8d 0f     mov   y,#$0f
0d01: f5 df 10  mov   a,$10df+x
0d04: 3f ba 06  call  $06ba
0d07: 3d        inc   x
0d08: dd        mov   a,y
0d09: 60        clrc
0d0a: 88 10     adc   a,#$10
0d0c: fd        mov   y,a
0d0d: 10 f2     bpl   $0d01
0d0f: f8 24     mov   x,$24
0d11: 6f        ret

0d12: c4 2d     mov   $2d,a
0d14: 8d 7d     mov   y,#$7d
0d16: cb f2     mov   $f2,y
0d18: e4 f3     mov   a,$f3
0d1a: 64 2d     cmp   a,$2d
0d1c: f0 29     beq   $0d47
0d1e: 28 0f     and   a,#$0f
0d20: 48 ff     eor   a,#$ff
0d22: f3 2c 03  bbc7  $2c,$0d28
0d25: 60        clrc
0d26: 84 2c     adc   a,$2c
0d28: c4 2c     mov   $2c,a
0d2a: 8d 04     mov   y,#$04
0d2c: f6 fe 10  mov   a,$10fe+y
0d2f: c4 f2     mov   $f2,a
0d31: e8 00     mov   a,#$00
0d33: c4 f3     mov   $f3,a
0d35: fe f5     dbnz  y,$0d2c
0d37: e4 28     mov   a,$28
0d39: 08 20     or    a,#$20
0d3b: 8d 6c     mov   y,#$6c
0d3d: 3f ba 06  call  $06ba
0d40: e4 2d     mov   a,$2d
0d42: 8d 7d     mov   y,#$7d
0d44: 3f ba 06  call  $06ba
0d47: 1c        asl   a
0d48: 1c        asl   a
0d49: 1c        asl   a
0d4a: 48 ff     eor   a,#$ff
0d4c: 80        setc
0d4d: 88 fb     adc   a,#$fb
0d4f: 8d 6d     mov   y,#$6d
0d51: 5f ba 06  jmp   $06ba

; vcmd fa
0d54: c4 0d     mov   $0d,a
0d56: 6f        ret

0d57: f5 20 01  mov   a,$0120+x
0d5a: d0 36     bne   $0d92
0d5c: e7 90     mov   a,($90+x)
0d5e: 68 f9     cmp   a,#$f9
0d60: d0 30     bne   $0d92
0d62: 3f 5a 0b  call  $0b5a
0d65: 3f 58 0b  call  $0b58
; vcmd f9
0d68: d5 21 01  mov   $0121+x,a
0d6b: 3f 58 0b  call  $0b58
0d6e: d5 20 01  mov   $0120+x,a
0d71: 3f 58 0b  call  $0b58
0d74: 60        clrc
0d75: 84 30     adc   a,$30
0d77: 94 71     adc   a,$71+x
0d79: 28 7f     and   a,#$7f
0d7b: d5 40 04  mov   $0440+x,a
0d7e: 80        setc
0d7f: b5 01 04  sbc   a,$0401+x
0d82: 40        setp
0d83: fb 20     mov   y,$20+x
0d85: 20        clrp
0d86: 6d        push  y
0d87: ce        pop   x
0d88: 3f c2 0d  call  $0dc2
0d8b: d5 20 04  mov   $0420+x,a
0d8e: dd        mov   a,y
0d8f: d5 21 04  mov   $0421+x,a
0d92: 6f        ret

; vcmd fc
0d93: 2d        push  a
0d94: 3f 58 0b  call  $0b58
0d97: d4 91     mov   $91+x,a
0d99: ae        pop   a
0d9a: d4 90     mov   $90+x,a
0d9c: 6f        ret

; vcmd fd
0d9d: e4 27     mov   a,$27
0d9f: 0e 2b 00  tset1 $002b
0da2: 6f        ret

; vcmd fe
0da3: e4 27     mov   a,$27
0da5: 4e 2b 00  tclr1 $002b
0da8: 6f        ret

; vcmd ff
0da9: d5 00 04  mov   $0400+x,a
0dac: 3f 58 0b  call  $0b58
0daf: 28 7f     and   a,#$7f
0db1: d5 01 04  mov   $0401+x,a
0db4: 5f 26 06  jmp   $0626

0db7: f5 01 04  mov   a,$0401+x
0dba: c4 11     mov   $11,a
0dbc: f5 00 04  mov   a,$0400+x
0dbf: c4 10     mov   $10,a
0dc1: 6f        ret

0dc2: ed        notc
0dc3: 6b 12     ror   $12
0dc5: 10 03     bpl   $0dca
0dc7: 48 ff     eor   a,#$ff
0dc9: bc        inc   a
0dca: 8d 00     mov   y,#$00
0dcc: 9e        div   ya,x
0dcd: 2d        push  a
0dce: e8 00     mov   a,#$00
0dd0: 9e        div   ya,x
0dd1: ee        pop   y
0dd2: f8 24     mov   x,$24
0dd4: f3 12 06  bbc7  $12,$0ddd
0dd7: da 14     movw  $14,ya
0dd9: ba 0e     movw  ya,$0e
0ddb: 9a 14     subw  ya,$14
0ddd: 6f        ret

0dde: dw $0b62  ; e0
0de0: dw $0bb9  ; e1
0de2: dw $0bc7  ; e2
0de4: dw $0be0  ; e3
0de6: dw $0bec  ; e4
0de8: dw $0c09  ; e5
0dea: dw $0c0e  ; e6
0dec: dw $0c20  ; e7
0dee: dw $0c25  ; e8
0df0: dw $0c37  ; e9
0df2: dw $0c3a  ; ea
0df4: dw $0c3d  ; eb
0df6: dw $0c49  ; ec
0df8: dw $0c6b  ; ed
0dfa: dw $0c74  ; ee
0dfc: dw $0c91  ; ef
0dfe: dw $0bf8  ; f0
0e00: dw $0c4d  ; f1
0e02: dw $0c51  ; f2
0e04: dw $0c67  ; f3
0e06: dw $0c8d  ; f4
0e08: dw $0cb5  ; f5
0e0a: dw $0ce9  ; f6
0e0c: dw $0cf0  ; f7
0e0e: dw $0cc8  ; f8
0e10: dw $0d68  ; f9
0e12: dw $0d54  ; fa
0e14: dw $0000  ; fb
0e16: dw $0d93  ; fc
0e18: dw $0d9d  ; fd
0e1a: dw $0da3  ; fe
0e1c: dw $0da9  ; ff

0e1e: db $01,$01,$02,$03,$00,$01,$02,$01
0e26: db $02,$01,$01,$03,$00,$01,$02,$03
0e2e: db $01,$03,$03,$00,$01,$03,$00,$03
0e36: db $03,$03,$01,$00,$02,$00,$00,$02

0e3e: db "(C) 1992 Basement Boys Software"

0e5d: f4 d0     mov   a,$d0+x
0e5f: f0 09     beq   $0e6a
0e61: e8 40     mov   a,#$40
0e63: 8d 03     mov   y,#$03
0e65: 9b d0     dec   $d0+x
0e67: 3f 0a 0f  call  $0f0a
0e6a: f5 41 01  mov   a,$0141+x
0e6d: fd        mov   y,a
0e6e: f0 27     beq   $0e97
0e70: f5 20 03  mov   a,$0320+x
0e73: 75 40 01  cmp   a,$0140+x
0e76: d0 1b     bne   $0e93
0e78: 09 27 07  or    ($07),($27)
0e7b: f5 00 03  mov   a,$0300+x
0e7e: 10 07     bpl   $0e87
0e80: fc        inc   y
0e81: d0 04     bne   $0e87
0e83: e8 80     mov   a,#$80
0e85: 2f 04     bra   $0e8b
0e87: 60        clrc
0e88: 95 01 03  adc   a,$0301+x
0e8b: d5 00 03  mov   $0300+x,a
0e8e: 3f ab 10  call  $10ab
0e91: 2f 09     bra   $0e9c
0e93: 40        setp
0e94: bb 40     inc   $40+x
0e96: 20        clrp
0e97: e8 ff     mov   a,#$ff
0e99: 3f b8 10  call  $10b8
0e9c: f4 d1     mov   a,$d1+x
0e9e: f0 09     beq   $0ea9
0ea0: e8 a0     mov   a,#$a0
0ea2: 8d 03     mov   y,#$03
0ea4: 9b d1     dec   $d1+x
0ea6: 3f 0a 0f  call  $0f0a
0ea9: e4 27     mov   a,$27
0eab: 24 19     and   a,$19
0ead: d0 5a     bne   $0f09
0eaf: e8 5c     mov   a,#$5c
0eb1: c4 f2     mov   $f2,a
0eb3: e4 f3     mov   a,$f3
0eb5: 24 27     and   a,$27
0eb7: d0 50     bne   $0f09
0eb9: f5 a1 03  mov   a,$03a1+x
0ebc: fd        mov   y,a
0ebd: f5 a0 03  mov   a,$03a0+x
0ec0: da 10     movw  $10,ya
0ec2: e4 2f     mov   a,$2f
0ec4: f0 06     beq   $0ecc
0ec6: e8 00     mov   a,#$00
0ec8: 8d 0a     mov   y,#$0a
0eca: da 10     movw  $10,ya
0ecc: 7d        mov   a,x
0ecd: 9f        xcn   a
0ece: 5c        lsr   a
0ecf: c4 12     mov   $12,a
0ed1: eb 11     mov   y,$11
0ed3: f6 cb 10  mov   a,$10cb+y
0ed6: 80        setc
0ed7: b6 ca 10  sbc   a,$10ca+y
0eda: eb 10     mov   y,$10
0edc: cf        mul   ya
0edd: dd        mov   a,y
0ede: eb 11     mov   y,$11
0ee0: 60        clrc
0ee1: 96 ca 10  adc   a,$10ca+y
0ee4: fd        mov   y,a
0ee5: f5 81 03  mov   a,$0381+x
0ee8: cf        mul   ya
0ee9: f5 e1 03  mov   a,$03e1+x
0eec: 1c        asl   a
0eed: 13 12 01  bbc0  $12,$0ef1
0ef0: 1c        asl   a
0ef1: dd        mov   a,y
0ef2: 90 03     bcc   $0ef7
0ef4: 48 ff     eor   a,#$ff
0ef6: bc        inc   a
0ef7: eb 12     mov   y,$12
0ef9: 3f b2 06  call  $06b2
0efc: 8d 14     mov   y,#$14
0efe: e8 00     mov   a,#$00
0f00: 9a 10     subw  ya,$10
0f02: da 10     movw  $10,ya
0f04: ab 12     inc   $12
0f06: 33 12 c8  bbc1  $12,$0ed1
0f09: 6f        ret

0f0a: 09 27 07  or    ($07),($27)
0f0d: da 14     movw  $14,ya
0f0f: da 16     movw  $16,ya
0f11: 4d        push  x
0f12: ee        pop   y
0f13: 60        clrc
0f14: d0 0a     bne   $0f20
0f16: 98 3f 16  adc   $16,#$3f
0f19: e8 00     mov   a,#$00
0f1b: d7 14     mov   ($14)+y,a
0f1d: fc        inc   y
0f1e: 2f 09     bra   $0f29
0f20: 98 20 16  adc   $16,#$20
0f23: 3f 27 0f  call  $0f27
0f26: fc        inc   y
0f27: f7 14     mov   a,($14)+y
0f29: 97 16     adc   a,($16)+y
0f2b: d7 14     mov   ($14)+y,a
0f2d: 6f        ret

0f2e: f4 b1     mov   a,$b1+x
0f30: f0 6a     beq   $0f9c
0f32: 9b b1     dec   $b1+x
0f34: f0 05     beq   $0f3b
0f36: e8 02     mov   a,#$02
0f38: de b0 61  cbne  $b0+x,$0f9c
0f3b: f5 01 01  mov   a,$0101+x
0f3e: c4 17     mov   $17,a
0f40: f4 90     mov   a,$90+x
0f42: fb 91     mov   y,$91+x
0f44: da 14     movw  $14,ya
0f46: 8d 00     mov   y,#$00
0f48: f7 14     mov   a,($14)+y
0f4a: f0 1c     beq   $0f68
0f4c: 30 05     bmi   $0f53
0f4e: fc        inc   y
0f4f: f7 14     mov   a,($14)+y
0f51: 10 fb     bpl   $0f4e
0f53: 68 c8     cmp   a,#$c8
0f55: f0 45     beq   $0f9c
0f57: 68 ef     cmp   a,#$ef
0f59: f0 29     beq   $0f84
0f5b: 68 e0     cmp   a,#$e0
0f5d: 90 36     bcc   $0f95
0f5f: 6d        push  y
0f60: fd        mov   y,a
0f61: ae        pop   a
0f62: 96 3e 0d  adc   a,$0d3e+y
0f65: fd        mov   y,a
0f66: 2f e0     bra   $0f48
0f68: e4 17     mov   a,$17
0f6a: f0 23     beq   $0f8f
0f6c: 8b 17     dec   $17
0f6e: d0 0a     bne   $0f7a
0f70: f5 21 02  mov   a,$0221+x
0f73: 2d        push  a
0f74: f5 20 02  mov   a,$0220+x
0f77: ee        pop   y
0f78: 2f ca     bra   $0f44
0f7a: f5 41 02  mov   a,$0241+x
0f7d: 2d        push  a
0f7e: f5 40 02  mov   a,$0240+x
0f81: ee        pop   y
0f82: 2f c0     bra   $0f44
0f84: fc        inc   y
0f85: f7 14     mov   a,($14)+y
0f87: 2d        push  a
0f88: fc        inc   y
0f89: f7 14     mov   a,($14)+y
0f8b: fd        mov   y,a
0f8c: ae        pop   a
0f8d: 2f b5     bra   $0f44
0f8f: e4 27     mov   a,$27
0f91: 24 18     and   a,$18
0f93: d0 07     bne   $0f9c
0f95: e4 27     mov   a,$27
0f97: 8d 5c     mov   y,#$5c
0f99: 3f b2 06  call  $06b2
0f9c: f2 13     clr7  $13
0f9e: f5 20 01  mov   a,$0120+x
0fa1: f0 18     beq   $0fbb
0fa3: f5 21 01  mov   a,$0121+x
0fa6: f0 06     beq   $0fae
0fa8: 40        setp
0fa9: 9b 21     dec   $21+x
0fab: 20        clrp
0fac: 2f 0d     bra   $0fbb
0fae: e2 13     set7  $13
0fb0: e8 00     mov   a,#$00
0fb2: 8d 04     mov   y,#$04
0fb4: 40        setp
0fb5: 9b 20     dec   $20+x
0fb7: 20        clrp
0fb8: 3f 0d 0f  call  $0f0d
0fbb: 3f b7 0d  call  $0db7
0fbe: f5 61 01  mov   a,$0161+x
0fc1: f0 56     beq   $1019
0fc3: f5 c0 02  mov   a,$02c0+x
0fc6: 75 60 01  cmp   a,$0160+x
0fc9: d0 47     bne   $1012
0fcb: f5 00 01  mov   a,$0100+x
0fce: 75 c1 02  cmp   a,$02c1+x
0fd1: d0 05     bne   $0fd8
0fd3: f5 e1 02  mov   a,$02e1+x
0fd6: 2f 0e     bra   $0fe6
0fd8: 40        setp
0fd9: bb 00     inc   $00+x
0fdb: 20        clrp
0fdc: fd        mov   y,a
0fdd: f0 03     beq   $0fe2
0fdf: f5 61 01  mov   a,$0161+x
0fe2: 60        clrc
0fe3: 95 e0 02  adc   a,$02e0+x
0fe6: d5 61 01  mov   $0161+x,a
0fe9: f5 a0 02  mov   a,$02a0+x
0fec: 60        clrc
0fed: 95 a1 02  adc   a,$02a1+x
0ff0: d5 a0 02  mov   $02a0+x,a
0ff3: c4 12     mov   $12,a
0ff5: 1c        asl   a
0ff6: 1c        asl   a
0ff7: 90 02     bcc   $0ffb
0ff9: 48 ff     eor   a,#$ff
0ffb: fd        mov   y,a
0ffc: f5 61 01  mov   a,$0161+x
0fff: 68 f1     cmp   a,#$f1
1001: 90 05     bcc   $1008
1003: 28 0f     and   a,#$0f
1005: cf        mul   ya
1006: 2f 04     bra   $100c
1008: cf        mul   ya
1009: dd        mov   a,y
100a: 8d 00     mov   y,#$00
100c: 3f 96 10  call  $1096
100f: 5f 29 06  jmp   $0629

1012: f5 60 01  mov   a,$0160+x
1015: bc        inc   a
1016: d5 60 01  mov   $0160+x,a
1019: e3 13 f3  bbs7  $13,$100f
101c: 6f        ret

101d: f2 13     clr7  $13
101f: f5 41 01  mov   a,$0141+x
1022: f0 0b     beq   $102f
1024: f5 20 03  mov   a,$0320+x
1027: 75 40 01  cmp   a,$0140+x
102a: d0 03     bne   $102f
102c: 3f 9e 10  call  $109e
102f: f5 a1 03  mov   a,$03a1+x
1032: fd        mov   y,a
1033: f5 a0 03  mov   a,$03a0+x
1036: da 10     movw  $10,ya
1038: f4 d1     mov   a,$d1+x
103a: f0 0a     beq   $1046
103c: f5 c1 03  mov   a,$03c1+x
103f: fd        mov   y,a
1040: f5 c0 03  mov   a,$03c0+x
1043: 3f 80 10  call  $1080
1046: f3 13 03  bbc7  $13,$104c
1049: 3f c2 0e  call  $0ec2
104c: f2 13     clr7  $13
104e: 3f b7 0d  call  $0db7
1051: f5 20 01  mov   a,$0120+x
1054: f0 0f     beq   $1065
1056: f5 21 01  mov   a,$0121+x
1059: d0 0a     bne   $1065
105b: f5 21 04  mov   a,$0421+x
105e: fd        mov   y,a
105f: f5 20 04  mov   a,$0420+x
1062: 3f 80 10  call  $1080
1065: f5 61 01  mov   a,$0161+x
1068: f0 af     beq   $1019
106a: f5 c0 02  mov   a,$02c0+x
106d: 75 60 01  cmp   a,$0160+x
1070: d0 a7     bne   $1019
1072: eb 31     mov   y,$31
1074: f5 a1 02  mov   a,$02a1+x
1077: cf        mul   ya
1078: dd        mov   a,y
1079: 60        clrc
107a: 95 a0 02  adc   a,$02a0+x
107d: 5f f3 0f  jmp   $0ff3

1080: e2 13     set7  $13
1082: cb 12     mov   $12,y
1084: 3f d4 0d  call  $0dd4
1087: 6d        push  y
1088: eb 31     mov   y,$31
108a: cf        mul   ya
108b: cb 14     mov   $14,y
108d: 8f 00 15  mov   $15,#$00
1090: eb 31     mov   y,$31
1092: ae        pop   a
1093: cf        mul   ya
1094: 7a 14     addw  ya,$14
1096: 3f d4 0d  call  $0dd4
1099: 7a 10     addw  ya,$10
109b: da 10     movw  $10,ya
109d: 6f        ret

109e: e2 13     set7  $13
10a0: eb 31     mov   y,$31
10a2: f5 01 03  mov   a,$0301+x
10a5: cf        mul   ya
10a6: dd        mov   a,y
10a7: 60        clrc
10a8: 95 00 03  adc   a,$0300+x
10ab: 1c        asl   a
10ac: 90 02     bcc   $10b0
10ae: 48 ff     eor   a,#$ff
10b0: 40        setp
10b1: fb 41     mov   y,$41+x
10b3: 20        clrp
10b4: cf        mul   ya
10b5: dd        mov   a,y
10b6: 48 ff     eor   a,#$ff
10b8: eb 39     mov   y,$39
10ba: cf        mul   ya
10bb: f5 a0 01  mov   a,$01a0+x
10be: cf        mul   ya
10bf: f5 41 03  mov   a,$0341+x
10c2: cf        mul   ya
10c3: dd        mov   a,y
10c4: cf        mul   ya
10c5: dd        mov   a,y
10c6: d5 81 03  mov   $0381+x,a
10c9: 6f        ret

10ca: db $00,$01,$03,$07,$0d,$15,$1e,$29
10d2: db $34,$42,$51,$5e,$67,$6e,$73,$77
10da: db $7a,$7c,$7d,$7e,$7f

10df: db $7f,$00,$00,$00,$00,$00,$00,$00
10e7: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
10ef: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
10f7: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

10ff: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1109: db $3f,$41,$2e,$2a,$28,$25,$0e,$29,$2b,$26

1113: dw $085f
1115: dw $08de
1117: dw $0965
1119: dw $09f4
111b: dw $0a8c
111d: dw $0b2c
111f: dw $0bd6
1121: dw $0c8b
1123: dw $0d4a
1125: dw $0e14
1127: dw $0eea
1129: dw $0fcd
112b: dw $10be

112d: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

1135: db $19,$32,$4c,$65,$72,$7f,$8c,$98
113d: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

1145: db $01,$02,$04,$08,$10,$20,$40,$80

114d: fb 00     mov   y,$00+x
114f: 04 00     or    a,$00
1151: e8 81     mov   a,#$81
1153: c4 f1     mov   $f1,a
1155: e8 00     mov   a,#$00
1157: 5d        mov   x,a
1158: 3f c9 ff  call  $ffc9
115b: e8 31     mov   a,#$31
115d: c4 f1     mov   $f1,a
115f: 6f        ret

1160: 8f cc f4  mov   $f4,#$cc
1163: 8f dd f5  mov   $f5,#$dd
1166: e4 f6     mov   a,$f6
1168: 8d 01     mov   y,#$01
116a: cd 00     mov   x,#$00
116c: 64 f6     cmp   a,$f6
116e: f0 fc     beq   $116c
1170: e4 f4     mov   a,$f4
1172: c7 f6     mov   ($f6+x),a
1174: e4 f5     mov   a,$f5
1176: d7 f6     mov   ($f6)+y,a
1178: e4 f6     mov   a,$f6
117a: d8 f4     mov   $f4,x
117c: 6e f7 02  dbnz  $f7,$1181
117f: 2f 13     bra   $1194
1181: 64 f6     cmp   a,$f6
1183: f0 fc     beq   $1181
1185: e4 f4     mov   a,$f4
1187: c7 f6     mov   ($f6+x),a
1189: e4 f5     mov   a,$f5
118b: d7 f6     mov   ($f6)+y,a
118d: e4 f6     mov   a,$f6
118f: cb f4     mov   $f4,y
1191: 6e f7 d8  dbnz  $f7,$116c
1194: 8f 00 f5  mov   $f5,#$00
1197: 6f        ret
