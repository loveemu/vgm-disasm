0460: 20        clrp
0461: cd ff     mov   x,#$ff
0463: bd        mov   sp,x
0464: e8 00     mov   a,#$00
0466: c4 f1     mov   $f1,a
0468: 5d        mov   x,a
0469: d5 00 01  mov   $0100+x,a
046c: d5 00 02  mov   $0200+x,a
046f: d5 00 03  mov   $0300+x,a
0472: c8 60     cmp   x,#$60
0474: b0 03     bcs   $0479
0476: d5 00 04  mov   $0400+x,a
0479: 3d        inc   x
047a: d0 ed     bne   $0469
047c: af        mov   (x)+,a
047d: c8 f0     cmp   x,#$f0
047f: d0 fb     bne   $047c
0481: 8f 60 27  mov   $27,#$60
0484: 3f f9 0d  call  $0df9
0487: cd 1e     mov   x,#$1e
0489: 3f 6c 08  call  $086c
048c: e8 00     mov   a,#$00
048e: 8d 00     mov   y,#$00
0490: da 62     movw  $62,ya
0492: e8 00     mov   a,#$00
0494: 8d 00     mov   y,#$00
0496: da 64     movw  $64,ya
0498: e8 07     mov   a,#$07
049a: 80        setc
049b: a8 04     sbc   a,#$04
049d: c4 4c     mov   $4c,a
049f: e8 30     mov   a,#$30
04a1: 8d 00     mov   y,#$00
04a3: da 5e     movw  $5e,ya
04a5: e8 18     mov   a,#$18
04a7: 8d 00     mov   y,#$00
04a9: da 60     movw  $60,ya
04ab: 3f 63 07  call  $0763
04ae: e8 38     mov   a,#$38
04b0: 8d 5d     mov   y,#$5d
04b2: 3f 0c 07  call  $070c
04b5: 8f 30 f1  mov   $f1,#$30
04b8: 8f 10 fa  mov   $fa,#$10
04bb: 8f 10 fb  mov   $fb,#$10
04be: 8f 18 32  mov   $32,#$18
04c1: 8f 18 35  mov   $35,#$18
04c4: 8f 03 f1  mov   $f1,#$03
04c7: ba 0e     movw  ya,$0e
04c9: da f4     movw  $f4,ya
04cb: 8d 0a     mov   y,#$0a
04cd: e4 24     mov   a,$24
04cf: f0 02     beq   $04d3
04d1: d2 27     clr6  $27
04d3: ad 05     cmp   y,#$05
04d5: b0 08     bcs   $04df
04d7: e3 2b 13  bbs7  $2b,$04ed
04da: 69 2c 2b  cmp   ($2b),($2c)
04dd: d0 0e     bne   $04ed
04df: f6 b0 12  mov   a,$12b0+y
04e2: c4 f2     mov   $f2,a
04e4: f6 ba 12  mov   a,$12ba+y
04e7: 5d        mov   x,a
04e8: e6        mov   a,(x)
04e9: c4 f3     mov   $f3,a
04eb: fe e6     dbnz  y,$04d3
04ed: 8f 00 24  mov   $24,#$00
04f0: 8f 00 25  mov   $25,#$00
04f3: eb fd     mov   y,$fd
04f5: d0 0c     bne   $0503
04f7: 3f f1 05  call  $05f1
04fa: d0 39     bne   $0535
04fc: 3f f4 05  call  $05f4
04ff: d0 5f     bne   $0560
0501: 2f f0     bra   $04f3
0503: 6d        push  y
0504: e8 20     mov   a,#$20
0506: cf        mul   ya
0507: 60        clrc
0508: 84 22     adc   a,$22
050a: c4 22     mov   $22,a
050c: 90 07     bcc   $0515
050e: 69 2c 2b  cmp   ($2b),($2c)
0511: f0 02     beq   $0515
0513: ab 2b     inc   $2b
0515: e4 32     mov   a,$32
0517: ee        pop   y
0518: cf        mul   ya
0519: 60        clrc
051a: 84 30     adc   a,$30
051c: c4 30     mov   $30,a
051e: 8d 00     mov   y,#$00
0520: f7 5e     mov   a,($5e)+y
0522: c4 f6     mov   $f6,a
0524: f7 60     mov   a,($60)+y
0526: c4 f7     mov   $f7,a
0528: 90 06     bcc   $0530
052a: 3f fe 09  call  $09fe
052d: 3f 6c 05  call  $056c
0530: 3f f1 05  call  $05f1
0533: f0 12     beq   $0547
0535: e4 f6     mov   a,$f6
0537: 2e f6 fb  cbne  $f6,$0535
053a: c4 04     mov   $04,a
053c: 78 f7 02  cmp   $02,#$f7
053f: b0 03     bcs   $0544
0541: fa 1b f4  mov   ($f4),($1b)
0544: 3f c5 08  call  $08c5
0547: 3f ac 05  call  $05ac
054a: eb fe     mov   y,$fe
054c: f0 0d     beq   $055b
054e: e4 35     mov   a,$35
0550: cf        mul   ya
0551: 60        clrc
0552: 84 33     adc   a,$33
0554: c4 33     mov   $33,a
0556: 90 03     bcc   $055b
0558: 3f 85 0a  call  $0a85
055b: 3f f4 05  call  $05f4
055e: f0 06     beq   $0566
0560: 3f 85 0a  call  $0a85
0563: fa 1b f4  mov   ($f4),($1b)
0566: 3f cc 05  call  $05cc
0569: 5f cb 04  jmp   $04cb

056c: 3f c5 08  call  $08c5
056f: e5 80 13  mov   a,$1380
0572: f0 34     beq   $05a8
0574: cd 00     mov   x,#$00
0576: d8 1e     mov   $1e,x
0578: f5 81 13  mov   a,$1381+x
057b: 30 03     bmi   $0580
057d: c4 1e     mov   $1e,a
057f: 3d        inc   x
0580: 4d        push  x
0581: 8d 00     mov   y,#$00
0583: f5 81 13  mov   a,$1381+x
0586: d6 ff 12  mov   $12ff+y,a
0589: 3d        inc   x
058a: fc        inc   y
058b: ad 04     cmp   y,#$04
058d: d0 f4     bne   $0583
058f: 8f 00 19  mov   $19,#$00
0592: 8f 10 12  mov   $12,#$10
0595: 3f 9a 07  call  $079a
0598: ae        pop   a
0599: bc        inc   a
059a: 60        clrc
059b: 84 4b     adc   a,$4b
059d: 5d        mov   x,a
059e: 1e 80 13  cmp   x,$1380
05a1: d0 d5     bne   $0578
05a3: e8 00     mov   a,#$00
05a5: c5 80 13  mov   $1380,a
05a8: 65 83 fb  cmp   a,$fb83
05ab: 6f        ret

05ac: e4 06     mov   a,$06
05ae: f0 18     beq   $05c8
05b0: e4 1a     mov   a,$1a
05b2: 04 18     or    a,$18
05b4: c4 19     mov   $19,a
05b6: cd 00     mov   x,#$00
05b8: 8f 01 26  mov   $26,#$01
05bb: f4 91     mov   a,$91+x
05bd: f0 03     beq   $05c2
05bf: 3f c5 11  call  $11c5
05c2: 3d        inc   x
05c3: 3d        inc   x
05c4: 0b 26     asl   $26
05c6: d0 f3     bne   $05bb
05c8: 6f        ret

05c9: 3f 85 0a  call  $0a85
05cc: 8f 00 19  mov   $19,#$00
05cf: cd 1e     mov   x,#$1e
05d1: 8f 07 1e  mov   $1e,#$07
05d4: 8f 80 26  mov   $26,#$80
05d7: eb 1e     mov   y,$1e
05d9: f6 68 00  mov   a,$0068+y
05dc: 28 7f     and   a,#$7f
05de: 68 01     cmp   a,#$01
05e0: d0 03     bne   $05e5
05e2: 3f c5 11  call  $11c5
05e5: 1d        dec   x
05e6: 1d        dec   x
05e7: 4b 26     lsr   $26
05e9: 8b 1e     dec   $1e
05eb: 69 4c 1e  cmp   ($1e),($4c)
05ee: d0 e7     bne   $05d7
05f0: 6f        ret

05f1: cd 00     mov   x,#$00
05f3: 65 cd 01  cmp   a,$01cd
05f6: f4 f4     mov   a,$f4+x
05f8: de f4 fb  cbne  $f4+x,$05f6
05fb: 68 00     cmp   a,#$00
05fd: f0 09     beq   $0608
05ff: 8f 13 f1  mov   $f1,#$13
0602: d4 02     mov   $02+x,a
0604: ab 1b     inc   $1b
0606: 68 00     cmp   a,#$00
0608: 6f        ret

0609: ad ca     cmp   y,#$ca
060b: 90 05     bcc   $0612
060d: 3f 35 0c  call  $0c35
0610: 8d a4     mov   y,#$a4
0612: ad c8     cmp   y,#$c8
0614: b0 f2     bcs   $0608
0616: dd        mov   a,y
0617: 28 7f     and   a,#$7f
0619: 60        clrc
061a: 84 2f     adc   a,$2f
061c: 60        clrc
061d: 94 71     adc   a,$71+x
061f: d5 01 04  mov   $0401+x,a
0622: f5 41 04  mov   a,$0441+x
0625: d5 00 04  mov   $0400+x,a
0628: f5 c1 02  mov   a,$02c1+x
062b: 5c        lsr   a
062c: e8 00     mov   a,#$00
062e: 7c        ror   a
062f: d5 a0 02  mov   $02a0+x,a
0632: e8 00     mov   a,#$00
0634: d5 60 01  mov   $0160+x,a
0637: d5 00 01  mov   $0100+x,a
063a: d5 00 03  mov   $0300+x,a
063d: d5 40 01  mov   $0140+x,a
0640: e4 26     mov   a,$26
0642: 24 19     and   a,$19
0644: d0 06     bne   $064c
0646: 09 26 07  or    ($07),($26)
0649: 09 26 24  or    ($24),($26)
064c: f5 60 02  mov   a,$0260+x
064f: d5 20 01  mov   $0120+x,a
0652: f0 1f     beq   $0673
0654: f5 61 02  mov   a,$0261+x
0657: d5 21 01  mov   $0121+x,a
065a: f5 80 02  mov   a,$0280+x
065d: d0 0a     bne   $0669
065f: f5 01 04  mov   a,$0401+x
0662: 80        setc
0663: b5 81 02  sbc   a,$0281+x
0666: d5 01 04  mov   $0401+x,a
0669: f5 81 02  mov   a,$0281+x
066c: 60        clrc
066d: 95 01 04  adc   a,$0401+x
0670: 3f 8e 0e  call  $0e8e
0673: 3f d2 0f  call  $0fd2
0676: e4 26     mov   a,$26
0678: 24 19     and   a,$19
067a: d0 8c     bne   $0608
067c: 8d 00     mov   y,#$00
067e: e4 11     mov   a,$11
0680: 80        setc
0681: a8 34     sbc   a,#$34
0683: b0 0e     bcs   $0693
0685: e4 11     mov   a,$11
0687: 80        setc
0688: a8 13     sbc   a,#$13
068a: b0 0b     bcs   $0697
068c: 78 00 11  cmp   $11,#$00
068f: f0 01     beq   $0692
0691: dc        dec   y
0692: 1c        asl   a
0693: 7a 10     addw  ya,$10
0695: da 10     movw  $10,ya
0697: e4 11     mov   a,$11
0699: 1c        asl   a
069a: 8d 00     mov   y,#$00
069c: 4d        push  x
069d: cd 18     mov   x,#$18
069f: 9e        div   ya,x
06a0: 5d        mov   x,a
06a1: f6 c6 12  mov   a,$12c6+y
06a4: c4 15     mov   $15,a
06a6: f6 c5 12  mov   a,$12c5+y
06a9: c4 14     mov   $14,a
06ab: f6 c8 12  mov   a,$12c8+y
06ae: 2d        push  a
06af: f6 c7 12  mov   a,$12c7+y
06b2: ee        pop   y
06b3: 9a 14     subw  ya,$14
06b5: eb 10     mov   y,$10
06b7: cf        mul   ya
06b8: dd        mov   a,y
06b9: 8d 00     mov   y,#$00
06bb: 7a 14     addw  ya,$14
06bd: cb 15     mov   $15,y
06bf: 1c        asl   a
06c0: 2b 15     rol   $15
06c2: c4 14     mov   $14,a
06c4: 2f 04     bra   $06ca
06c6: 4b 15     lsr   $15
06c8: 7c        ror   a
06c9: 3d        inc   x
06ca: c8 06     cmp   x,#$06
06cc: d0 f8     bne   $06c6
06ce: c4 14     mov   $14,a
06d0: ce        pop   x
06d1: f5 00 02  mov   a,$0200+x
06d4: eb 15     mov   y,$15
06d6: cf        mul   ya
06d7: da 16     movw  $16,ya
06d9: f5 00 02  mov   a,$0200+x
06dc: eb 14     mov   y,$14
06de: cf        mul   ya
06df: 6d        push  y
06e0: f5 01 02  mov   a,$0201+x
06e3: eb 14     mov   y,$14
06e5: cf        mul   ya
06e6: 7a 16     addw  ya,$16
06e8: da 16     movw  $16,ya
06ea: f5 01 02  mov   a,$0201+x
06ed: eb 15     mov   y,$15
06ef: cf        mul   ya
06f0: fd        mov   y,a
06f1: ae        pop   a
06f2: 7a 16     addw  ya,$16
06f4: da 16     movw  $16,ya
06f6: 7d        mov   a,x
06f7: 9f        xcn   a
06f8: 5c        lsr   a
06f9: 08 02     or    a,#$02
06fb: fd        mov   y,a
06fc: e4 16     mov   a,$16
06fe: 3f 04 07  call  $0704
0701: fc        inc   y
0702: e4 17     mov   a,$17
0704: 2d        push  a
0705: e4 26     mov   a,$26
0707: 24 19     and   a,$19
0709: ae        pop   a
070a: d0 04     bne   $0710
070c: cb f2     mov   $f2,y
070e: c4 f3     mov   $f3,a
0710: 6f        ret

0711: 8d 00     mov   y,#$00
0713: f7 1f     mov   a,($1f)+y
0715: 3a 1f     incw  $1f
0717: 2d        push  a
0718: f7 1f     mov   a,($1f)+y
071a: 3a 1f     incw  $1f
071c: fd        mov   y,a
071d: ae        pop   a
071e: 6f        ret

071f: 3f 07 5d  call  $5d07
0722: 07 0e     or    a,($0e+x)
0724: 08 12     or    a,#$12
0726: 08 0a     or    a,#$0a
0728: 08 75     or    a,#$75
072a: 07 70     or    a,($70+x)
072c: 07 17     or    a,($17+x)
072e: 08 2a     or    a,#$2a
0730: 08 48     or    a,#$48
0732: 08 23     or    a,#$23
0734: 08 5e     or    a,#$5e
0736: 08 e0     or    a,#$e0
0738: 08 e0     or    a,#$e0
073a: 08 11     or    a,#$11
073c: 13 03 13  bbc0  $03,$0752
073f: e8 0c     mov   a,#$0c
0741: c4 f2     mov   $f2,a
0743: 8f 00 f3  mov   $f3,#$00
0746: 60        clrc
0747: 88 10     adc   a,#$10
0749: 68 4c     cmp   a,#$4c
074b: d0 f4     bne   $0741
074d: 3f f1 05  call  $05f1
0750: d0 05     bne   $0757
0752: 3f f4 05  call  $05f4
0755: f0 f6     beq   $074d
0757: 3f 63 07  call  $0763
075a: 5f e0 08  jmp   $08e0

075d: 3f 44 08  call  $0844
0760: 5f e0 08  jmp   $08e0

0763: e8 60     mov   a,#$60
0765: 8d 0c     mov   y,#$0c
0767: 3f 0c 07  call  $070c
076a: 8d 1c     mov   y,#$1c
076c: 3f 0c 07  call  $070c
076f: 6f        ret

0770: 8f 00 12  mov   $12,#$00
0773: 2f 06     bra   $077b
0775: 8f 00 19  mov   $19,#$00
0778: 8f 10 12  mov   $12,#$10
077b: fa 04 1e  mov   ($1e),($04)
077e: e4 f4     mov   a,$f4
0780: f0 fc     beq   $077e
0782: c5 ff 12  mov   $12ff,a
0785: ba f6     movw  ya,$f6
0787: c5 01 13  mov   $1301,a
078a: cc 02 13  mov   $1302,y
078d: e4 f5     mov   a,$f5
078f: c5 00 13  mov   $1300,a
0792: 8f 33 f1  mov   $f1,#$33
0795: ab 1b     inc   $1b
0797: fa 1b f4  mov   ($f4),($1b)
079a: f8 1e     mov   x,$1e
079c: f5 f7 12  mov   a,$12f7+x
079f: c4 26     mov   $26,a
07a1: 7d        mov   a,x
07a2: 1c        asl   a
07a3: 84 12     adc   a,$12
07a5: c4 23     mov   $23,a
07a7: 5d        mov   x,a
07a8: e5 ff 12  mov   a,$12ff
07ab: 68 fb     cmp   a,#$fb
07ad: f0 44     beq   $07f3
07af: 68 fe     cmp   a,#$fe
07b1: f0 3f     beq   $07f2
07b3: 68 e0     cmp   a,#$e0
07b5: 90 3b     bcc   $07f2
07b7: f4 90     mov   a,$90+x
07b9: fb 91     mov   y,$91+x
07bb: da 1c     movw  $1c,ya
07bd: e8 00     mov   a,#$00
07bf: d4 90     mov   $90+x,a
07c1: e8 13     mov   a,#$13
07c3: d4 91     mov   $91+x,a
07c5: e5 ff 12  mov   a,$12ff
07c8: 3f 17 0c  call  $0c17
07cb: f5 41 04  mov   a,$0441+x
07ce: d5 00 04  mov   $0400+x,a
07d1: f5 c1 02  mov   a,$02c1+x
07d4: 5c        lsr   a
07d5: e8 00     mov   a,#$00
07d7: 7c        ror   a
07d8: d5 a0 02  mov   $02a0+x,a
07db: e8 00     mov   a,#$00
07dd: d5 60 01  mov   $0160+x,a
07e0: d5 00 01  mov   $0100+x,a
07e3: d5 00 03  mov   $0300+x,a
07e6: d5 40 01  mov   $0140+x,a
07e9: 3f 4c 06  call  $064c
07ec: ba 1c     movw  ya,$1c
07ee: d4 90     mov   $90+x,a
07f0: db 91     mov   $91+x,y
07f2: 6f        ret

07f3: 78 00 12  cmp   $12,#$00
07f6: d0 0e     bne   $0806
07f8: 78 01 26  cmp   $26,#$01
07fb: d0 04     bne   $0801
07fd: 8f 01 0c  mov   $0c,#$01
0800: 6f        ret

0801: e8 00     mov   a,#$00
0803: d4 91     mov   $91+x,a
0805: 6f        ret

0806: 3f 09 0c  call  $0c09
0809: 6f        ret

080a: fa 04 1a  mov   ($1a),($04)
080d: 6f        ret

080e: e8 00     mov   a,#$00
0810: 2f 02     bra   $0814
0812: e8 ff     mov   a,#$ff
0814: c4 2e     mov   $2e,a
0816: 6f        ret

0817: ba f6     movw  ya,$f6
0819: da 14     movw  $14,ya
081b: 8d 00     mov   y,#$00
081d: f7 14     mov   a,($14)+y
081f: c4 f5     mov   $f5,a
0821: 2f 21     bra   $0844
0823: f8 f6     mov   x,$f6
0825: e4 f7     mov   a,$f7
0827: c6        mov   (x),a
0828: 2f 1a     bra   $0844
082a: e4 f6     mov   a,$f6
082c: 2d        push  a
082d: 28 07     and   a,#$07
082f: 1c        asl   a
0830: 60        clrc
0831: 88 10     adc   a,#$10
0833: 5d        mov   x,a
0834: e4 f7     mov   a,$f7
0836: 5c        lsr   a
0837: d5 01 04  mov   $0401+x,a
083a: ae        pop   a
083b: 28 f8     and   a,#$f8
083d: 7c        ror   a
083e: d5 00 04  mov   $0400+x,a
0841: 3f 73 06  call  $0673
0844: fa 1b f4  mov   ($f4),($1b)
0847: 6f        ret

0848: e4 f6     mov   a,$f6
084a: 1c        asl   a
084b: 60        clrc
084c: 88 10     adc   a,#$10
084e: 5d        mov   x,a
084f: e4 f7     mov   a,$f7
0851: 3f 4f 0d  call  $0d4f
0854: e8 ff     mov   a,#$ff
0856: 3f 60 12  call  $1260
0859: 3f 45 10  call  $1045
085c: 2f e6     bra   $0844
085e: f8 f6     mov   x,$f6
0860: d0 01     bne   $0863
0862: 3d        inc   x
0863: e8 00     mov   a,#$00
0865: 3f f0 0c  call  $0cf0
0868: 8f 02 4f  mov   $4f,#$02
086b: 6f        ret

086c: 8d 08     mov   y,#$08
086e: e8 ff     mov   a,#$ff
0870: d5 41 03  mov   $0341+x,a
0873: e8 0a     mov   a,#$0a
0875: 3f 8c 0c  call  $0c8c
0878: d5 a1 01  mov   $01a1+x,a
087b: d5 41 04  mov   $0441+x,a
087e: d4 71     mov   $71+x,a
0880: d5 60 02  mov   $0260+x,a
0883: d5 61 01  mov   $0161+x,a
0886: d5 41 01  mov   $0141+x,a
0889: c4 2a     mov   $2a,a
088b: 1d        dec   x
088c: 1d        dec   x
088d: fe df     dbnz  y,$086e
088f: c4 48     mov   $48,a
0891: c4 36     mov   $36,a
0893: c4 2f     mov   $2f,a
0895: c4 21     mov   $21,a
0897: c4 0d     mov   $0d,a
0899: 8f 18 32  mov   $32,#$18
089c: 78 00 4f  cmp   $4f,#$00
089f: d0 05     bne   $08a6
08a1: c4 3c     mov   $3c,a
08a3: 8f c8 3b  mov   $3b,#$c8
08a6: 6f        ret

08a7: c4 06     mov   $06,a
08a9: 9c        dec   a
08aa: 1c        asl   a
08ab: fd        mov   y,a
08ac: f7 62     mov   a,($62)+y
08ae: c4 1f     mov   $1f,a
08b0: fc        inc   y
08b1: f7 62     mov   a,($62)+y
08b3: c4 20     mov   $20,a
08b5: 8f 02 0c  mov   $0c,#$02
08b8: e4 1a     mov   a,$1a
08ba: 48 ff     eor   a,#$ff
08bc: 0e 25 00  tset1 $0025
08bf: e4 18     mov   a,$18
08c1: 4e 25 00  tclr1 $0025
08c4: 6f        ret

08c5: e4 1a     mov   a,$1a
08c7: 04 18     or    a,$18
08c9: c4 19     mov   $19,a
08cb: e4 02     mov   a,$02
08cd: f0 11     beq   $08e0
08cf: c4 08     mov   $08,a
08d1: 8d 00     mov   y,#$00
08d3: cb 02     mov   $02,y
08d5: 68 f0     cmp   a,#$f0
08d7: 90 ce     bcc   $08a7
08d9: a8 f0     sbc   a,#$f0
08db: 1c        asl   a
08dc: 5d        mov   x,a
08dd: 1f 1f 07  jmp   ($071f+x)

08e0: e4 1a     mov   a,$1a
08e2: 04 18     or    a,$18
08e4: c4 19     mov   $19,a
08e6: e4 06     mov   a,$06
08e8: f0 bc     beq   $08a6
08ea: e4 0c     mov   a,$0c
08ec: f0 5b     beq   $0949
08ee: 8b 0c     dec   $0c
08f0: f0 05     beq   $08f7
08f2: cd 0e     mov   x,#$0e
08f4: 5f 6c 08  jmp   $086c

08f7: 3f 11 07  call  $0711
08fa: d0 1c     bne   $0918
08fc: fd        mov   y,a
08fd: f0 a8     beq   $08a7
08ff: 78 ff 21  cmp   $21,#$ff
0902: f0 09     beq   $090d
0904: 8b 21     dec   $21
0906: 78 ff 21  cmp   $21,#$ff
0909: d0 02     bne   $090d
090b: c4 21     mov   $21,a
090d: 3f 11 07  call  $0711
0910: f8 21     mov   x,$21
0912: f0 e3     beq   $08f7
0914: da 1f     movw  $1f,ya
0916: 2f df     bra   $08f7
0918: da 16     movw  $16,ya
091a: 8d 0f     mov   y,#$0f
091c: f7 16     mov   a,($16)+y
091e: d6 90 00  mov   $0090+y,a
0921: dc        dec   y
0922: 10 f8     bpl   $091c
0924: cd 00     mov   x,#$00
0926: 8f 01 26  mov   $26,#$01
0929: f4 91     mov   a,$91+x
092b: f0 0a     beq   $0937
092d: f5 a1 01  mov   a,$01a1+x
0930: d0 05     bne   $0937
0932: e8 00     mov   a,#$00
0934: 3f 35 0c  call  $0c35
0937: e8 00     mov   a,#$00
0939: d5 01 01  mov   $0101+x,a
093c: d4 d0     mov   $d0+x,a
093e: d4 d1     mov   $d1+x,a
0940: bc        inc   a
0941: d4 b0     mov   $b0+x,a
0943: 3d        inc   x
0944: 3d        inc   x
0945: 0b 26     asl   $26
0947: d0 e0     bne   $0929
0949: cd 00     mov   x,#$00
094b: fa 18 07  mov   ($07),($18)
094e: 8f 01 26  mov   $26,#$01
0951: d8 23     mov   $23,x
0953: f4 91     mov   a,$91+x
0955: d0 03     bne   $095a
0957: 5f e2 09  jmp   $09e2

095a: 9b b0     dec   $b0+x
095c: d0 7e     bne   $09dc
095e: 3f 2b 0c  call  $0c2b
0961: d0 30     bne   $0993
0963: f5 01 01  mov   a,$0101+x
0966: d0 16     bne   $097e
0968: 78 01 26  cmp   $26,#$01
096b: d0 03     bne   $0970
096d: 5f f7 08  jmp   $08f7

0970: e8 00     mov   a,#$00
0972: d4 91     mov   $91+x,a
0974: 2f 6c     bra   $09e2
0976: e4 06     mov   a,$06
0978: 3f a7 08  call  $08a7
097b: 5f e0 08  jmp   $08e0

097e: 3f 8e 0d  call  $0d8e
0981: 40        setp
0982: 9b 01     dec   $01+x
0984: 20        clrp
0985: d0 d7     bne   $095e
0987: f5 20 02  mov   a,$0220+x
098a: d4 90     mov   $90+x,a
098c: f5 21 02  mov   a,$0221+x
098f: d4 91     mov   $91+x,a
0991: 2f cb     bra   $095e
0993: 30 20     bmi   $09b5
0995: d5 80 01  mov   $0180+x,a
0998: 3f 2b 0c  call  $0c2b
099b: 30 18     bmi   $09b5
099d: 2d        push  a
099e: 9f        xcn   a
099f: 28 07     and   a,#$07
09a1: fd        mov   y,a
09a2: f6 df 12  mov   a,$12df+y
09a5: d5 81 01  mov   $0181+x,a
09a8: ae        pop   a
09a9: 28 0f     and   a,#$0f
09ab: fd        mov   y,a
09ac: f6 e7 12  mov   a,$12e7+y
09af: d5 a0 01  mov   $01a0+x,a
09b2: 3f 2b 0c  call  $0c2b
09b5: 68 e0     cmp   a,#$e0
09b7: 90 0d     bcc   $09c6
09b9: 68 fb     cmp   a,#$fb
09bb: f0 ab     beq   $0968
09bd: 68 fe     cmp   a,#$fe
09bf: f0 b5     beq   $0976
09c1: 3f 17 0c  call  $0c17
09c4: 2f 98     bra   $095e
09c6: dd        mov   a,y
09c7: 3f 09 06  call  $0609
09ca: f5 80 01  mov   a,$0180+x
09cd: d4 b0     mov   $b0+x,a
09cf: fd        mov   y,a
09d0: f5 81 01  mov   a,$0181+x
09d3: cf        mul   ya
09d4: dd        mov   a,y
09d5: d0 01     bne   $09d8
09d7: bc        inc   a
09d8: d4 b1     mov   $b1+x,a
09da: 2f 03     bra   $09df
09dc: 3f c9 10  call  $10c9
09df: 3f 6c 0e  call  $0e6c
09e2: 3d        inc   x
09e3: 3d        inc   x
09e4: 0b 26     asl   $26
09e6: f0 03     beq   $09eb
09e8: 5f 51 09  jmp   $0951

09eb: cd 00     mov   x,#$00
09ed: 8f 01 26  mov   $26,#$01
09f0: f4 91     mov   a,$91+x
09f2: f0 03     beq   $09f7
09f4: 3f f9 0f  call  $0ff9
09f7: 3d        inc   x
09f8: 3d        inc   x
09f9: 0b 26     asl   $26
09fb: d0 f3     bne   $09f0
09fd: 6f        ret

09fe: e4 36     mov   a,$36
0a00: f0 0b     beq   $0a0d
0a02: ba 38     movw  ya,$38
0a04: 7a 31     addw  ya,$31
0a06: 6e 36 02  dbnz  $36,$0a0b
0a09: ba 36     movw  ya,$36
0a0b: da 31     movw  $31,ya
0a0d: e4 48     mov   a,$48
0a0f: f0 15     beq   $0a26
0a11: ba 44     movw  ya,$44
0a13: 7a 40     addw  ya,$40
0a15: da 40     movw  $40,ya
0a17: ba 46     movw  ya,$46
0a19: 7a 42     addw  ya,$42
0a1b: 6e 48 06  dbnz  $48,$0a24
0a1e: ba 48     movw  ya,$48
0a20: da 40     movw  $40,ya
0a22: eb 4a     mov   y,$4a
0a24: da 42     movw  $42,ya
0a26: e4 3c     mov   a,$3c
0a28: f0 32     beq   $0a5c
0a2a: ba 3e     movw  ya,$3e
0a2c: 7a 3a     addw  ya,$3a
0a2e: 6e 3c 26  dbnz  $3c,$0a57
0a31: 78 00 4f  cmp   $4f,#$00
0a34: f0 1f     beq   $0a55
0a36: e8 00     mov   a,#$00
0a38: 6e 4f 0c  dbnz  $4f,$0a47
0a3b: c4 06     mov   $06,a
0a3d: 3f cd 0d  call  $0dcd
0a40: 3f 44 08  call  $0844
0a43: 8d c8     mov   y,#$c8
0a45: 2f 10     bra   $0a57
0a47: c4 18     mov   $18,a
0a49: cd 07     mov   x,#$07
0a4b: d4 68     mov   $68+x,a
0a4d: 1d        dec   x
0a4e: 10 fb     bpl   $0a4b
0a50: 3f b8 08  call  $08b8
0a53: ab 3c     inc   $3c
0a55: ba 3c     movw  ya,$3c
0a57: da 3a     movw  $3a,ya
0a59: 8f ff 07  mov   $07,#$ff
0a5c: 6f        ret

0a5d: 9c        dec   a
0a5e: 1c        asl   a
0a5f: fd        mov   y,a
0a60: f7 64     mov   a,($64)+y
0a62: d4 90     mov   $90+x,a
0a64: fc        inc   y
0a65: f7 64     mov   a,($64)+y
0a67: d4 91     mov   $91+x,a
0a69: e8 ff     mov   a,#$ff
0a6b: d5 41 03  mov   $0341+x,a
0a6e: e8 0a     mov   a,#$0a
0a70: 3f 8c 0c  call  $0c8c
0a73: d5 a1 01  mov   $01a1+x,a
0a76: d5 41 04  mov   $0441+x,a
0a79: d4 71     mov   $71+x,a
0a7b: d5 60 02  mov   $0260+x,a
0a7e: d5 61 01  mov   $0161+x,a
0a81: d5 41 01  mov   $0141+x,a
0a84: 6f        ret

0a85: 78 f0 02  cmp   $02,#$f0
0a88: f0 fa     beq   $0a84
0a8a: e4 03     mov   a,$03
0a8c: f0 47     beq   $0ad5
0a8e: cd 07     mov   x,#$07
0a90: f4 68     mov   a,$68+x
0a92: f0 18     beq   $0aac
0a94: 1d        dec   x
0a95: 3e 4c     cmp   x,$4c
0a97: d0 f7     bne   $0a90
0a99: cd 07     mov   x,#$07
0a9b: f4 68     mov   a,$68+x
0a9d: 10 0d     bpl   $0aac
0a9f: 1d        dec   x
0aa0: 3e 4c     cmp   x,$4c
0aa2: d0 f7     bne   $0a9b
0aa4: 8f ff f5  mov   $f5,#$ff
0aa7: 8f 00 03  mov   $03,#$00
0aaa: 2f 29     bra   $0ad5
0aac: e4 03     mov   a,$03
0aae: 28 80     and   a,#$80
0ab0: 08 03     or    a,#$03
0ab2: d4 68     mov   $68+x,a
0ab4: d8 f5     mov   $f5,x
0ab6: f5 f7 12  mov   a,$12f7+x
0ab9: c4 26     mov   $26,a
0abb: 0e 18 00  tset1 $0018
0abe: 8d 5c     mov   y,#$5c
0ac0: 3f 0c 07  call  $070c
0ac3: 7d        mov   a,x
0ac4: 1c        asl   a
0ac5: 60        clrc
0ac6: 88 10     adc   a,#$10
0ac8: 5d        mov   x,a
0ac9: d8 23     mov   $23,x
0acb: e4 03     mov   a,$03
0acd: 28 7f     and   a,#$7f
0acf: 8f 00 03  mov   $03,#$00
0ad2: 3f 5d 0a  call  $0a5d
0ad5: 78 00 18  cmp   $18,#$00
0ad8: f0 3d     beq   $0b17
0ada: 8f 00 19  mov   $19,#$00
0add: 8f 07 1e  mov   $1e,#$07
0ae0: 8f 1e 23  mov   $23,#$1e
0ae3: 8f 80 26  mov   $26,#$80
0ae6: 3f 18 0b  call  $0b18
0ae9: 8b 23     dec   $23
0aeb: 8b 23     dec   $23
0aed: 4b 26     lsr   $26
0aef: 8b 1e     dec   $1e
0af1: 69 4c 1e  cmp   ($1e),($4c)
0af4: d0 f0     bne   $0ae6
0af6: 8f 07 1e  mov   $1e,#$07
0af9: 8f 1e 23  mov   $23,#$1e
0afc: 8f 80 26  mov   $26,#$80
0aff: f8 1e     mov   x,$1e
0b01: f4 68     mov   a,$68+x
0b03: f0 05     beq   $0b0a
0b05: f8 23     mov   x,$23
0b07: 3f f9 0f  call  $0ff9
0b0a: 8b 23     dec   $23
0b0c: 8b 23     dec   $23
0b0e: 4b 26     lsr   $26
0b10: 8b 1e     dec   $1e
0b12: 69 4c 1e  cmp   ($1e),($4c)
0b15: d0 e8     bne   $0aff
0b17: 6f        ret

0b18: f8 1e     mov   x,$1e
0b1a: f4 68     mov   a,$68+x
0b1c: f0 45     beq   $0b63
0b1e: 28 7f     and   a,#$7f
0b20: 68 01     cmp   a,#$01
0b22: f0 5d     beq   $0b81
0b24: 68 40     cmp   a,#$40
0b26: b0 08     bcs   $0b30
0b28: 9b 68     dec   $68+x
0b2a: 9c        dec   a
0b2b: 68 01     cmp   a,#$01
0b2d: f0 3a     beq   $0b69
0b2f: 6f        ret

0b30: 68 40     cmp   a,#$40
0b32: f0 03     beq   $0b37
0b34: 9b 68     dec   $68+x
0b36: 6f        ret

0b37: 8f 5c f2  mov   $f2,#$5c
0b3a: e4 f3     mov   a,$f3
0b3c: 24 26     and   a,$26
0b3e: d0 11     bne   $0b51
0b40: 7d        mov   a,x
0b41: 9f        xcn   a
0b42: 08 08     or    a,#$08
0b44: c4 f2     mov   $f2,a
0b46: e4 f3     mov   a,$f3
0b48: d0 1a     bne   $0b64
0b4a: e4 26     mov   a,$26
0b4c: 8d 5c     mov   y,#$5c
0b4e: 3f 0c 07  call  $070c
0b51: e8 00     mov   a,#$00
0b53: d4 68     mov   $68+x,a
0b55: e4 26     mov   a,$26
0b57: 4e 18 00  tclr1 $0018
0b5a: 7d        mov   a,x
0b5b: 1c        asl   a
0b5c: 5d        mov   x,a
0b5d: f5 a1 01  mov   a,$01a1+x
0b60: 3f 35 0c  call  $0c35
0b63: 6f        ret

0b64: f8 23     mov   x,$23
0b66: 5f c9 10  jmp   $10c9

0b69: f8 23     mov   x,$23
0b6b: f5 a1 01  mov   a,$01a1+x
0b6e: d0 05     bne   $0b75
0b70: e8 00     mov   a,#$00
0b72: 3f 35 0c  call  $0c35
0b75: e8 00     mov   a,#$00
0b77: d5 01 01  mov   $0101+x,a
0b7a: d4 d0     mov   $d0+x,a
0b7c: d4 d1     mov   $d1+x,a
0b7e: bc        inc   a
0b7f: d4 b0     mov   $b0+x,a
0b81: f8 23     mov   x,$23
0b83: e4 26     mov   a,$26
0b85: 48 ff     eor   a,#$ff
0b87: 24 07     and   a,$07
0b89: c4 07     mov   $07,a
0b8b: 9b b0     dec   $b0+x
0b8d: d0 68     bne   $0bf7
0b8f: 3f 2b 0c  call  $0c2b
0b92: d0 1a     bne   $0bae
0b94: f5 01 01  mov   a,$0101+x
0b97: f0 65     beq   $0bfe
0b99: 3f 8e 0d  call  $0d8e
0b9c: 40        setp
0b9d: 9b 01     dec   $01+x
0b9f: 20        clrp
0ba0: d0 ed     bne   $0b8f
0ba2: f5 20 02  mov   a,$0220+x
0ba5: d4 90     mov   $90+x,a
0ba7: f5 21 02  mov   a,$0221+x
0baa: d4 91     mov   $91+x,a
0bac: 2f e1     bra   $0b8f
0bae: 30 20     bmi   $0bd0
0bb0: d5 80 01  mov   $0180+x,a
0bb3: 3f 2b 0c  call  $0c2b
0bb6: 30 18     bmi   $0bd0
0bb8: 2d        push  a
0bb9: 9f        xcn   a
0bba: 28 07     and   a,#$07
0bbc: fd        mov   y,a
0bbd: f6 df 12  mov   a,$12df+y
0bc0: d5 81 01  mov   $0181+x,a
0bc3: ae        pop   a
0bc4: 28 0f     and   a,#$0f
0bc6: fd        mov   y,a
0bc7: f6 e7 12  mov   a,$12e7+y
0bca: d5 a0 01  mov   $01a0+x,a
0bcd: 3f 2b 0c  call  $0c2b
0bd0: 68 e0     cmp   a,#$e0
0bd2: 90 0d     bcc   $0be1
0bd4: 68 fb     cmp   a,#$fb
0bd6: f0 31     beq   $0c09
0bd8: 68 fe     cmp   a,#$fe
0bda: f0 3a     beq   $0c16
0bdc: 3f 17 0c  call  $0c17
0bdf: 2f ae     bra   $0b8f
0be1: dd        mov   a,y
0be2: 3f 09 06  call  $0609
0be5: f5 80 01  mov   a,$0180+x
0be8: d4 b0     mov   $b0+x,a
0bea: fd        mov   y,a
0beb: f5 81 01  mov   a,$0181+x
0bee: cf        mul   ya
0bef: dd        mov   a,y
0bf0: d0 01     bne   $0bf3
0bf2: bc        inc   a
0bf3: d4 b1     mov   $b1+x,a
0bf5: 2f 03     bra   $0bfa
0bf7: 3f c9 10  call  $10c9
0bfa: 3f 6c 0e  call  $0e6c
0bfd: 6f        ret

0bfe: f8 1e     mov   x,$1e
0c00: f4 68     mov   a,$68+x
0c02: 28 80     and   a,#$80
0c04: 08 40     or    a,#$40
0c06: d4 68     mov   $68+x,a
0c08: 6f        ret

0c09: e4 26     mov   a,$26
0c0b: 8d 5c     mov   y,#$5c
0c0d: 3f 0c 07  call  $070c
0c10: f8 1e     mov   x,$1e
0c12: e8 41     mov   a,#$41
0c14: d4 68     mov   $68+x,a
0c16: 6f        ret

0c17: 1c        asl   a
0c18: fd        mov   y,a
0c19: f6 77 0e  mov   a,$0e77+y
0c1c: 2d        push  a
0c1d: f6 76 0e  mov   a,$0e76+y
0c20: 2d        push  a
0c21: dd        mov   a,y
0c22: 5c        lsr   a
0c23: fd        mov   y,a
0c24: f6 16 0f  mov   a,$0f16+y
0c27: c4 4b     mov   $4b,a
0c29: f0 08     beq   $0c33
0c2b: e7 90     mov   a,($90+x)
0c2d: bb 90     inc   $90+x
0c2f: d0 02     bne   $0c33
0c31: bb 91     inc   $91+x
0c33: fd        mov   y,a
0c34: 6f        ret

0c35: d5 a1 01  mov   $01a1+x,a
0c38: fd        mov   y,a
0c39: 10 06     bpl   $0c41
0c3b: 80        setc
0c3c: a8 ca     sbc   a,#$ca
0c3e: 60        clrc
0c3f: 84 0d     adc   a,$0d
0c41: 8d 06     mov   y,#$06
0c43: cf        mul   ya
0c44: da 14     movw  $14,ya
0c46: 60        clrc
0c47: 98 00 14  adc   $14,#$00
0c4a: 98 39 15  adc   $15,#$39
0c4d: e4 19     mov   a,$19
0c4f: 24 26     and   a,$26
0c51: d0 38     bne   $0c8b
0c53: 4d        push  x
0c54: 7d        mov   a,x
0c55: 9f        xcn   a
0c56: 5c        lsr   a
0c57: 08 04     or    a,#$04
0c59: 5d        mov   x,a
0c5a: 8d 00     mov   y,#$00
0c5c: f7 14     mov   a,($14)+y
0c5e: 10 0e     bpl   $0c6e
0c60: 28 1f     and   a,#$1f
0c62: 38 e0 27  and   $27,#$e0
0c65: 0e 27 00  tset1 $0027
0c68: 09 26 28  or    ($28),($26)
0c6b: dd        mov   a,y
0c6c: 2f 07     bra   $0c75
0c6e: e4 26     mov   a,$26
0c70: 4e 28 00  tclr1 $0028
0c73: f7 14     mov   a,($14)+y
0c75: d8 f2     mov   $f2,x
0c77: c4 f3     mov   $f3,a
0c79: 3d        inc   x
0c7a: fc        inc   y
0c7b: ad 04     cmp   y,#$04
0c7d: d0 f4     bne   $0c73
0c7f: ce        pop   x
0c80: f7 14     mov   a,($14)+y
0c82: d5 01 02  mov   $0201+x,a
0c85: fc        inc   y
0c86: f7 14     mov   a,($14)+y
0c88: d5 00 02  mov   $0200+x,a
0c8b: 6f        ret

0c8c: d5 e1 03  mov   $03e1+x,a
0c8f: 28 1f     and   a,#$1f
0c91: d5 a1 03  mov   $03a1+x,a
0c94: e8 00     mov   a,#$00
0c96: d5 a0 03  mov   $03a0+x,a
0c99: 6f        ret

0c9a: d4 d1     mov   $d1+x,a
0c9c: 2d        push  a
0c9d: 3f 2b 0c  call  $0c2b
0ca0: d5 e0 03  mov   $03e0+x,a
0ca3: 80        setc
0ca4: b5 a1 03  sbc   a,$03a1+x
0ca7: ce        pop   x
0ca8: 3f dd 0f  call  $0fdd
0cab: d5 c0 03  mov   $03c0+x,a
0cae: dd        mov   a,y
0caf: d5 c1 03  mov   $03c1+x,a
0cb2: 6f        ret

0cb3: d5 c0 02  mov   $02c0+x,a
0cb6: 3f 2b 0c  call  $0c2b
0cb9: d5 a1 02  mov   $02a1+x,a
0cbc: 3f 2b 0c  call  $0c2b
0cbf: d5 61 01  mov   $0161+x,a
0cc2: d5 e1 02  mov   $02e1+x,a
0cc5: e8 00     mov   a,#$00
0cc7: d5 c1 02  mov   $02c1+x,a
0cca: 6f        ret

0ccb: d5 c1 02  mov   $02c1+x,a
0cce: 2d        push  a
0ccf: 8d 00     mov   y,#$00
0cd1: f5 61 01  mov   a,$0161+x
0cd4: ce        pop   x
0cd5: 9e        div   ya,x
0cd6: f8 23     mov   x,$23
0cd8: d5 e0 02  mov   $02e0+x,a
0cdb: 6f        ret

0cdc: 78 00 4f  cmp   $4f,#$00
0cdf: d0 04     bne   $0ce5
0ce1: e8 00     mov   a,#$00
0ce3: da 3a     movw  $3a,ya
0ce5: 6f        ret

0ce6: 2d        push  a
0ce7: 3f 2b 0c  call  $0c2b
0cea: ce        pop   x
0ceb: 78 00 4f  cmp   $4f,#$00
0cee: d0 0c     bne   $0cfc
0cf0: d8 3c     mov   $3c,x
0cf2: c4 3d     mov   $3d,a
0cf4: 80        setc
0cf5: a4 3b     sbc   a,$3b
0cf7: 3f dd 0f  call  $0fdd
0cfa: da 3e     movw  $3e,ya
0cfc: 6f        ret

0cfd: e8 00     mov   a,#$00
0cff: c8 10     cmp   x,#$10
0d01: b0 03     bcs   $0d06
0d03: da 31     movw  $31,ya
0d05: 6f        ret

0d06: da 34     movw  $34,ya
0d08: 6f        ret

0d09: c4 36     mov   $36,a
0d0b: 3f 2b 0c  call  $0c2b
0d0e: c4 37     mov   $37,a
0d10: 80        setc
0d11: a4 32     sbc   a,$32
0d13: f8 36     mov   x,$36
0d15: 3f dd 0f  call  $0fdd
0d18: da 38     movw  $38,ya
0d1a: 6f        ret

0d1b: c4 2f     mov   $2f,a
0d1d: 6f        ret

0d1e: d4 71     mov   $71+x,a
0d20: 6f        ret

0d21: d5 20 03  mov   $0320+x,a
0d24: 3f 2b 0c  call  $0c2b
0d27: d5 01 03  mov   $0301+x,a
0d2a: 3f 2b 0c  call  $0c2b
0d2d: d5 41 01  mov   $0141+x,a
0d30: 6f        ret

0d31: e8 01     mov   a,#$01
0d33: 2f 02     bra   $0d37
0d35: e8 00     mov   a,#$00
0d37: d5 80 02  mov   $0280+x,a
0d3a: dd        mov   a,y
0d3b: d5 61 02  mov   $0261+x,a
0d3e: 3f 2b 0c  call  $0c2b
0d41: d5 60 02  mov   $0260+x,a
0d44: 3f 2b 0c  call  $0c2b
0d47: d5 81 02  mov   $0281+x,a
0d4a: 6f        ret

0d4b: d5 60 02  mov   $0260+x,a
0d4e: 6f        ret

0d4f: d5 41 03  mov   $0341+x,a
0d52: e8 00     mov   a,#$00
0d54: d5 40 03  mov   $0340+x,a
0d57: 6f        ret

0d58: d4 d0     mov   $d0+x,a
0d5a: 2d        push  a
0d5b: 3f 2b 0c  call  $0c2b
0d5e: d5 80 03  mov   $0380+x,a
0d61: 80        setc
0d62: b5 41 03  sbc   a,$0341+x
0d65: ce        pop   x
0d66: 3f dd 0f  call  $0fdd
0d69: d5 60 03  mov   $0360+x,a
0d6c: dd        mov   a,y
0d6d: d5 61 03  mov   $0361+x,a
0d70: 6f        ret

0d71: d5 41 04  mov   $0441+x,a
0d74: 6f        ret

0d75: d5 40 02  mov   $0240+x,a
0d78: 3f 2b 0c  call  $0c2b
0d7b: d5 41 02  mov   $0241+x,a
0d7e: 3f 2b 0c  call  $0c2b
0d81: d5 01 01  mov   $0101+x,a
0d84: f4 90     mov   a,$90+x
0d86: d5 20 02  mov   $0220+x,a
0d89: f4 91     mov   a,$91+x
0d8b: d5 21 02  mov   $0221+x,a
0d8e: f5 40 02  mov   a,$0240+x
0d91: d4 90     mov   $90+x,a
0d93: f5 41 02  mov   a,$0241+x
0d96: d4 91     mov   $91+x,a
0d98: 6f        ret

0d99: c4 29     mov   $29,a
0d9b: 3f 2b 0c  call  $0c2b
0d9e: e8 00     mov   a,#$00
0da0: da 40     movw  $40,ya
0da2: 3f 2b 0c  call  $0c2b
0da5: e8 00     mov   a,#$00
0da7: da 42     movw  $42,ya
0da9: b2 27     clr5  $27
0dab: 6f        ret

0dac: c4 48     mov   $48,a
0dae: 3f 2b 0c  call  $0c2b
0db1: c4 49     mov   $49,a
0db3: 80        setc
0db4: a4 41     sbc   a,$41
0db6: f8 48     mov   x,$48
0db8: 3f dd 0f  call  $0fdd
0dbb: da 44     movw  $44,ya
0dbd: 3f 2b 0c  call  $0c2b
0dc0: c4 4a     mov   $4a,a
0dc2: 80        setc
0dc3: a4 43     sbc   a,$43
0dc5: f8 48     mov   x,$48
0dc7: 3f dd 0f  call  $0fdd
0dca: da 46     movw  $46,ya
0dcc: 6f        ret

0dcd: 8f 00 29  mov   $29,#$00
0dd0: da 40     movw  $40,ya
0dd2: da 42     movw  $42,ya
0dd4: a2 27     set5  $27
0dd6: 6f        ret

0dd7: 3f 00 0e  call  $0e00
0dda: 3f 2b 0c  call  $0c2b
0ddd: c4 2d     mov   $2d,a
0ddf: 3f 2b 0c  call  $0c2b
0de2: 1c        asl   a
0de3: 1c        asl   a
0de4: 1c        asl   a
0de5: 5d        mov   x,a
0de6: 8d 0f     mov   y,#$0f
0de8: f5 91 12  mov   a,$1291+x
0deb: 3f 0c 07  call  $070c
0dee: 3d        inc   x
0def: dd        mov   a,y
0df0: 60        clrc
0df1: 88 10     adc   a,#$10
0df3: fd        mov   y,a
0df4: 10 f2     bpl   $0de8
0df6: f8 23     mov   x,$23
0df8: 6f        ret

0df9: e8 00     mov   a,#$00
0dfb: 3f e2 0d  call  $0de2
0dfe: e8 00     mov   a,#$00
0e00: c4 14     mov   $14,a
0e02: 28 0f     and   a,#$0f
0e04: c4 2c     mov   $2c,a
0e06: 8d 7d     mov   y,#$7d
0e08: cb f2     mov   $f2,y
0e0a: e4 f3     mov   a,$f3
0e0c: 64 2c     cmp   a,$2c
0e0e: f0 2e     beq   $0e3e
0e10: e4 2c     mov   a,$2c
0e12: 28 0f     and   a,#$0f
0e14: 48 ff     eor   a,#$ff
0e16: a8 10     sbc   a,#$10
0e18: f3 2b 03  bbc7  $2b,$0e1e
0e1b: 60        clrc
0e1c: 84 2b     adc   a,$2b
0e1e: 8f f5 2b  mov   $2b,#$f5
0e21: 8d 04     mov   y,#$04
0e23: f6 b0 12  mov   a,$12b0+y
0e26: c4 f2     mov   $f2,a
0e28: e8 00     mov   a,#$00
0e2a: c4 f3     mov   $f3,a
0e2c: fe f5     dbnz  y,$0e23
0e2e: e4 27     mov   a,$27
0e30: 08 20     or    a,#$20
0e32: 8d 6c     mov   y,#$6c
0e34: 3f 0c 07  call  $070c
0e37: e4 2c     mov   a,$2c
0e39: 8d 7d     mov   y,#$7d
0e3b: 3f 0c 07  call  $070c
0e3e: 68 00     cmp   a,#$00
0e40: d0 04     bne   $0e46
0e42: e8 fe     mov   a,#$fe
0e44: 2f 08     bra   $0e4e
0e46: 1c        asl   a
0e47: 1c        asl   a
0e48: 1c        asl   a
0e49: 48 ff     eor   a,#$ff
0e4b: 80        setc
0e4c: 88 ff     adc   a,#$ff
0e4e: 8d 6d     mov   y,#$6d
0e50: 3f 0c 07  call  $070c
0e53: 93 14 12  bbc4  $14,$0e68
0e56: c4 15     mov   $15,a
0e58: 8d 00     mov   y,#$00
0e5a: cb 14     mov   $14,y
0e5c: dd        mov   a,y
0e5d: d7 14     mov   ($14)+y,a
0e5f: fe fc     dbnz  y,$0e5d
0e61: ab 15     inc   $15
0e63: 78 ff 15  cmp   $15,#$ff
0e66: d0 f5     bne   $0e5d
0e68: 6f        ret

0e69: c4 0d     mov   $0d,a
0e6b: 6f        ret

0e6c: f5 20 01  mov   a,$0120+x
0e6f: d0 36     bne   $0ea7
0e71: e7 90     mov   a,($90+x)
0e73: 68 f9     cmp   a,#$f9
0e75: d0 30     bne   $0ea7
0e77: 3f 2d 0c  call  $0c2d
0e7a: 3f 2b 0c  call  $0c2b
0e7d: d5 21 01  mov   $0121+x,a
0e80: 3f 2b 0c  call  $0c2b
0e83: d5 20 01  mov   $0120+x,a
0e86: 3f 2b 0c  call  $0c2b
0e89: 60        clrc
0e8a: 84 2f     adc   a,$2f
0e8c: 94 71     adc   a,$71+x
0e8e: 28 7f     and   a,#$7f
0e90: d5 40 04  mov   $0440+x,a
0e93: 80        setc
0e94: b5 01 04  sbc   a,$0401+x
0e97: 40        setp
0e98: fb 20     mov   y,$20+x
0e9a: 20        clrp
0e9b: 6d        push  y
0e9c: ce        pop   x
0e9d: 3f dd 0f  call  $0fdd
0ea0: d5 20 04  mov   $0420+x,a
0ea3: dd        mov   a,y
0ea4: d5 21 04  mov   $0421+x,a
0ea7: 6f        ret

0ea8: 2d        push  a
0ea9: 3f 2b 0c  call  $0c2b
0eac: d4 91     mov   $91+x,a
0eae: ae        pop   a
0eaf: d4 90     mov   $90+x,a
0eb1: 6f        ret

0eb2: 2d        push  a
0eb3: 80        setc
0eb4: f5 00 04  mov   a,$0400+x
0eb7: b5 41 04  sbc   a,$0441+x
0eba: d5 00 04  mov   $0400+x,a
0ebd: f5 01 04  mov   a,$0401+x
0ec0: b4 71     sbc   a,$71+x
0ec2: d5 01 04  mov   $0401+x,a
0ec5: 3f 2b 0c  call  $0c2b
0ec8: ae        pop   a
0ec9: d5 41 04  mov   $0441+x,a
0ecc: 60        clrc
0ecd: 95 00 04  adc   a,$0400+x
0ed0: d5 00 04  mov   $0400+x,a
0ed3: dd        mov   a,y
0ed4: d4 71     mov   $71+x,a
0ed6: 95 01 04  adc   a,$0401+x
0ed9: d5 01 04  mov   $0401+x,a
0edc: 5f 73 06  jmp   $0673

0edf: 9c        dec   a
0ee0: 2d        push  a
0ee1: 1c        asl   a
0ee2: fd        mov   y,a
0ee3: f6 bb 0f  mov   a,$0fbb+y
0ee6: 2d        push  a
0ee7: f6 ba 0f  mov   a,$0fba+y
0eea: 2d        push  a
0eeb: dd        mov   a,y
0eec: 5c        lsr   a
0eed: fd        mov   y,a
0eee: f6 ca 0f  mov   a,$0fca+y
0ef1: 5f 27 0c  jmp   $0c27

0ef4: ee        pop   y
0ef5: f6 ca 0f  mov   a,$0fca+y
0ef8: 48 ff     eor   a,#$ff
0efa: 60        clrc
0efb: 88 03     adc   a,#$03
0efd: f0 06     beq   $0f05
0eff: 3f 2d 0c  call  $0c2d
0f02: 9c        dec   a
0f03: d0 fa     bne   $0eff
0f05: 6f        ret

0f06: e4 26     mov   a,$26
0f08: 0e 2a 00  tset1 $002a
0f0b: 2f e7     bra   $0ef4
0f0d: e4 26     mov   a,$26
0f0f: 4e 2a 00  tclr1 $002a
0f12: 2f e0     bra   $0ef4
0f14: c4 4e     mov   $4e,a
0f16: 2f dc     bra   $0ef4
0f18: e4 26     mov   a,$26
0f1a: 0e 29 00  tset1 $0029
0f1d: 2f d5     bra   $0ef4
0f1f: e4 26     mov   a,$26
0f21: 4e 29 00  tclr1 $0029
0f24: 2f ce     bra   $0ef4
0f26: e4 26     mov   a,$26
0f28: 0e 50 00  tset1 $0050
0f2b: 2f c7     bra   $0ef4
0f2d: e4 26     mov   a,$26
0f2f: 4e 50 00  tclr1 $0050
0f32: 2f c0     bra   $0ef4
0f34: 2f be     bra   $0ef4

0f36: dw $0c35
0f38: dw $0c8c
0f3a: dw $0c9a
0f3c: dw $0cb3
0f3e: dw $0cbf
0f40: dw $0cdc
0f42: dw $0ce6
0f44: dw $0cfd
0f46: dw $0d09
0f48: dw $0d1b
0f4a: dw $0d1e
0f4c: dw $0d21
0f4e: dw $0d2d
0f50: dw $0d4f
0f52: dw $0d58
0f54: dw $0d75
0f56: dw $0ccb
0f58: dw $0d31
0f5a: dw $0d35
0f5c: dw $0d4b
0f5e: dw $0d71
0f60: dw $0d99
0f62: dw $0dcd
0f64: dw $0dd7
0f66: dw $0dac
0f68: dw $0e7d
0f6a: dw $0e69
0f6c: dw $0000
0f6e: dw $0ea8
0f70: dw $0eb2
0f72: dw $0000
0f74: dw $0edf

0f76: db $01,$01,$02,$03,$00,$01,$02,$01
0f7e: db $02,$01,$01,$03,$00,$01,$02,$03
0f86: db $01,$03,$03,$00,$01,$03,$00,$03
0f8e: db $03,$03,$01,$00,$02,$02,$00,$03

0f96: 28 43 29 20 31 39 39 32
0f9e: 2d 31 39 39 34 20 42 61
0fa6: 73 65 6d 65 6e 74 20 42
0fae: 6f 79 73 20 53 6f 66 74
0fb6: 77 61 72 65

0fba: dw $0f06
0fbc: dw $0f0d
0fbe: dw $0f14
0fc0: dw $0f18
0fc2: dw $0f1f
0fc4: dw $0f26
0fc6: dw $0f2d
0fc8: dw $0f34

0fca: db $00,$00,$01,$00,$00,$00,$00,$00

0fd2: f5 01 04  mov   a,$0401+x
0fd5: c4 11     mov   $11,a
0fd7: f5 00 04  mov   a,$0400+x
0fda: c4 10     mov   $10,a
0fdc: 6f        ret

0fdd: ed        notc
0fde: 6b 12     ror   $12
0fe0: 10 03     bpl   $0fe5
0fe2: 48 ff     eor   a,#$ff
0fe4: bc        inc   a
0fe5: 8d 00     mov   y,#$00
0fe7: 9e        div   ya,x
0fe8: 2d        push  a
0fe9: e8 00     mov   a,#$00
0feb: 9e        div   ya,x
0fec: ee        pop   y
0fed: f8 23     mov   x,$23
0fef: f3 12 06  bbc7  $12,$0ff8
0ff2: da 14     movw  $14,ya
0ff4: ba 0e     movw  ya,$0e
0ff6: 9a 14     subw  ya,$14
0ff8: 6f        ret

0ff9: f4 d0     mov   a,$d0+x
0ffb: f0 09     beq   $1006
0ffd: e8 40     mov   a,#$40
0fff: 8d 03     mov   y,#$03
1001: 9b d0     dec   $d0+x
1003: 3f a5 10  call  $10a5
1006: f5 41 01  mov   a,$0141+x
1009: fd        mov   y,a
100a: f0 27     beq   $1033
100c: f5 20 03  mov   a,$0320+x
100f: 75 40 01  cmp   a,$0140+x
1012: d0 1b     bne   $102f
1014: 09 26 07  or    ($07),($26)
1017: f5 00 03  mov   a,$0300+x
101a: 10 07     bpl   $1023
101c: fc        inc   y
101d: d0 04     bne   $1023
101f: e8 80     mov   a,#$80
1021: 2f 04     bra   $1027
1023: 60        clrc
1024: 95 01 03  adc   a,$0301+x
1027: d5 00 03  mov   $0300+x,a
102a: 3f 53 12  call  $1253
102d: 2f 09     bra   $1038
102f: 40        setp
1030: bb 40     inc   $40+x
1032: 20        clrp
1033: e8 ff     mov   a,#$ff
1035: 3f 60 12  call  $1260
1038: f4 d1     mov   a,$d1+x
103a: f0 09     beq   $1045
103c: e8 a0     mov   a,#$a0
103e: 8d 03     mov   y,#$03
1040: 9b d1     dec   $d1+x
1042: 3f a5 10  call  $10a5
1045: e4 26     mov   a,$26
1047: 24 19     and   a,$19
1049: d0 59     bne   $10a4
104b: 8f 5c f2  mov   $f2,#$5c
104e: e4 f3     mov   a,$f3
1050: 24 26     and   a,$26
1052: d0 50     bne   $10a4
1054: f5 a1 03  mov   a,$03a1+x
1057: fd        mov   y,a
1058: f5 a0 03  mov   a,$03a0+x
105b: da 10     movw  $10,ya
105d: e4 2e     mov   a,$2e
105f: f0 06     beq   $1067
1061: e8 00     mov   a,#$00
1063: 8d 0a     mov   y,#$0a
1065: da 10     movw  $10,ya
1067: 7d        mov   a,x
1068: 9f        xcn   a
1069: 5c        lsr   a
106a: c4 12     mov   $12,a
106c: eb 11     mov   y,$11
106e: f6 73 12  mov   a,$1273+y
1071: 80        setc
1072: b6 72 12  sbc   a,$1272+y
1075: eb 10     mov   y,$10
1077: cf        mul   ya
1078: dd        mov   a,y
1079: eb 11     mov   y,$11
107b: 60        clrc
107c: 96 72 12  adc   a,$1272+y
107f: fd        mov   y,a
1080: f5 81 03  mov   a,$0381+x
1083: cf        mul   ya
1084: f5 e1 03  mov   a,$03e1+x
1087: 1c        asl   a
1088: 13 12 01  bbc0  $12,$108c
108b: 1c        asl   a
108c: dd        mov   a,y
108d: 90 03     bcc   $1092
108f: 48 ff     eor   a,#$ff
1091: bc        inc   a
1092: eb 12     mov   y,$12
1094: 3f 04 07  call  $0704
1097: 8d 14     mov   y,#$14
1099: e8 00     mov   a,#$00
109b: 9a 10     subw  ya,$10
109d: da 10     movw  $10,ya
109f: ab 12     inc   $12
10a1: 33 12 c8  bbc1  $12,$106c
10a4: 6f        ret

10a5: 09 26 07  or    ($07),($26)
10a8: da 14     movw  $14,ya
10aa: da 16     movw  $16,ya
10ac: 4d        push  x
10ad: ee        pop   y
10ae: 60        clrc
10af: d0 0a     bne   $10bb
10b1: 98 3f 16  adc   $16,#$3f
10b4: e8 00     mov   a,#$00
10b6: d7 14     mov   ($14)+y,a
10b8: fc        inc   y
10b9: 2f 09     bra   $10c4
10bb: 98 20 16  adc   $16,#$20
10be: 3f c2 10  call  $10c2
10c1: fc        inc   y
10c2: f7 14     mov   a,($14)+y
10c4: 97 16     adc   a,($16)+y
10c6: d7 14     mov   ($14)+y,a
10c8: 6f        ret

10c9: f4 b1     mov   a,$b1+x
10cb: f0 77     beq   $1144
10cd: 9b b1     dec   $b1+x
10cf: f0 05     beq   $10d6
10d1: e8 02     mov   a,#$02
10d3: de b0 6e  cbne  $b0+x,$1144
10d6: f5 01 01  mov   a,$0101+x
10d9: c4 17     mov   $17,a
10db: f4 90     mov   a,$90+x
10dd: fb 91     mov   y,$91+x
10df: da 14     movw  $14,ya
10e1: 8d 00     mov   y,#$00
10e3: f7 14     mov   a,($14)+y
10e5: f0 24     beq   $110b
10e7: 30 05     bmi   $10ee
10e9: fc        inc   y
10ea: f7 14     mov   a,($14)+y
10ec: 10 fb     bpl   $10e9
10ee: 68 c8     cmp   a,#$c8
10f0: f0 52     beq   $1144
10f2: 68 fd     cmp   a,#$fd
10f4: f0 4e     beq   $1144
10f6: 68 fc     cmp   a,#$fc
10f8: f0 4a     beq   $1144
10fa: 68 ef     cmp   a,#$ef
10fc: f0 28     beq   $1126
10fe: 68 e0     cmp   a,#$e0
1100: 90 35     bcc   $1137
1102: 6d        push  y
1103: fd        mov   y,a
1104: ae        pop   a
1105: 96 96 0e  adc   a,$0e96+y
1108: fd        mov   y,a
1109: 2f d8     bra   $10e3
110b: e4 17     mov   a,$17
110d: f0 22     beq   $1131
110f: 6e 17 0a  dbnz  $17,$111c
1112: f5 21 02  mov   a,$0221+x
1115: 2d        push  a
1116: f5 20 02  mov   a,$0220+x
1119: ee        pop   y
111a: 2f c3     bra   $10df
111c: f5 41 02  mov   a,$0241+x
111f: 2d        push  a
1120: f5 40 02  mov   a,$0240+x
1123: ee        pop   y
1124: 2f b9     bra   $10df
1126: fc        inc   y
1127: f7 14     mov   a,($14)+y
1129: 2d        push  a
112a: fc        inc   y
112b: f7 14     mov   a,($14)+y
112d: fd        mov   y,a
112e: ae        pop   a
112f: 2f ae     bra   $10df
1131: e4 26     mov   a,$26
1133: 24 18     and   a,$18
1135: d0 0d     bne   $1144
1137: e4 26     mov   a,$26
1139: 24 50     and   a,$50
113b: d0 07     bne   $1144
113d: e4 26     mov   a,$26
113f: 8d 5c     mov   y,#$5c
1141: 3f 04 07  call  $0704
1144: f2 13     clr7  $13
1146: f5 20 01  mov   a,$0120+x
1149: f0 18     beq   $1163
114b: f5 21 01  mov   a,$0121+x
114e: f0 06     beq   $1156
1150: 40        setp
1151: 9b 21     dec   $21+x
1153: 20        clrp
1154: 2f 0d     bra   $1163
1156: e2 13     set7  $13
1158: e8 00     mov   a,#$00
115a: 8d 04     mov   y,#$04
115c: 40        setp
115d: 9b 20     dec   $20+x
115f: 20        clrp
1160: 3f a8 10  call  $10a8
1163: 3f d2 0f  call  $0fd2
1166: f5 61 01  mov   a,$0161+x
1169: f0 56     beq   $11c1
116b: f5 c0 02  mov   a,$02c0+x
116e: 75 60 01  cmp   a,$0160+x
1171: d0 47     bne   $11ba
1173: f5 00 01  mov   a,$0100+x
1176: 75 c1 02  cmp   a,$02c1+x
1179: d0 05     bne   $1180
117b: f5 e1 02  mov   a,$02e1+x
117e: 2f 0e     bra   $118e
1180: 40        setp
1181: bb 00     inc   $00+x
1183: 20        clrp
1184: fd        mov   y,a
1185: f0 03     beq   $118a
1187: f5 61 01  mov   a,$0161+x
118a: 60        clrc
118b: 95 e0 02  adc   a,$02e0+x
118e: d5 61 01  mov   $0161+x,a
1191: f5 a0 02  mov   a,$02a0+x
1194: 60        clrc
1195: 95 a1 02  adc   a,$02a1+x
1198: d5 a0 02  mov   $02a0+x,a
119b: c4 12     mov   $12,a
119d: 1c        asl   a
119e: 1c        asl   a
119f: 90 02     bcc   $11a3
11a1: 48 ff     eor   a,#$ff
11a3: fd        mov   y,a
11a4: f5 61 01  mov   a,$0161+x
11a7: 68 f1     cmp   a,#$f1
11a9: 90 05     bcc   $11b0
11ab: 28 0f     and   a,#$0f
11ad: cf        mul   ya
11ae: 2f 04     bra   $11b4
11b0: cf        mul   ya
11b1: dd        mov   a,y
11b2: 8d 00     mov   y,#$00
11b4: 3f 3e 12  call  $123e
11b7: 5f 76 06  jmp   $0676

11ba: f5 60 01  mov   a,$0160+x
11bd: bc        inc   a
11be: d5 60 01  mov   $0160+x,a
11c1: e3 13 f3  bbs7  $13,$11b7
11c4: 6f        ret

11c5: f2 13     clr7  $13
11c7: f5 41 01  mov   a,$0141+x
11ca: f0 0b     beq   $11d7
11cc: f5 20 03  mov   a,$0320+x
11cf: 75 40 01  cmp   a,$0140+x
11d2: d0 03     bne   $11d7
11d4: 3f 46 12  call  $1246
11d7: f5 a1 03  mov   a,$03a1+x
11da: fd        mov   y,a
11db: f5 a0 03  mov   a,$03a0+x
11de: da 10     movw  $10,ya
11e0: f4 d1     mov   a,$d1+x
11e2: f0 0a     beq   $11ee
11e4: f5 c1 03  mov   a,$03c1+x
11e7: fd        mov   y,a
11e8: f5 c0 03  mov   a,$03c0+x
11eb: 3f 28 12  call  $1228
11ee: f3 13 03  bbc7  $13,$11f4
11f1: 3f 5d 10  call  $105d
11f4: f2 13     clr7  $13
11f6: 3f d2 0f  call  $0fd2
11f9: f5 20 01  mov   a,$0120+x
11fc: f0 0f     beq   $120d
11fe: f5 21 01  mov   a,$0121+x
1201: d0 0a     bne   $120d
1203: f5 21 04  mov   a,$0421+x
1206: fd        mov   y,a
1207: f5 20 04  mov   a,$0420+x
120a: 3f 28 12  call  $1228
120d: f5 61 01  mov   a,$0161+x
1210: f0 af     beq   $11c1
1212: f5 c0 02  mov   a,$02c0+x
1215: 75 60 01  cmp   a,$0160+x
1218: d0 a7     bne   $11c1
121a: eb 30     mov   y,$30
121c: f5 a1 02  mov   a,$02a1+x
121f: cf        mul   ya
1220: dd        mov   a,y
1221: 60        clrc
1222: 95 a0 02  adc   a,$02a0+x
1225: 5f 9b 11  jmp   $119b

1228: e2 13     set7  $13
122a: cb 12     mov   $12,y
122c: 3f ef 0f  call  $0fef
122f: 6d        push  y
1230: eb 30     mov   y,$30
1232: cf        mul   ya
1233: cb 14     mov   $14,y
1235: 8f 00 15  mov   $15,#$00
1238: eb 30     mov   y,$30
123a: ae        pop   a
123b: cf        mul   ya
123c: 7a 14     addw  ya,$14
123e: 3f ef 0f  call  $0fef
1241: 7a 10     addw  ya,$10
1243: da 10     movw  $10,ya
1245: 6f        ret

1246: e2 13     set7  $13
1248: eb 30     mov   y,$30
124a: f5 01 03  mov   a,$0301+x
124d: cf        mul   ya
124e: dd        mov   a,y
124f: 60        clrc
1250: 95 00 03  adc   a,$0300+x
1253: 1c        asl   a
1254: 90 02     bcc   $1258
1256: 48 ff     eor   a,#$ff
1258: 40        setp
1259: fb 41     mov   y,$41+x
125b: 20        clrp
125c: cf        mul   ya
125d: dd        mov   a,y
125e: 48 ff     eor   a,#$ff
1260: eb 3b     mov   y,$3b
1262: cf        mul   ya
1263: f5 a0 01  mov   a,$01a0+x
1266: cf        mul   ya
1267: f5 41 03  mov   a,$0341+x
126a: cf        mul   ya
126b: dd        mov   a,y
126c: cf        mul   ya
126d: dd        mov   a,y
126e: d5 81 03  mov   $0381+x,a
1271: 6f        ret

1272: db $00,$01,$03,$07,$0d,$15,$1e,$29
127a: db $34,$42,$51,$5e,$67,$6e,$73,$77
1282: db $7a,$7c,$7d,$7e,$7f

1287: 28 43 29 42 2e 42 2e 53 2e 00

1291: db $7f,$00,$00,$00,$00,$00,$00,$00
1299: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
12a1: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
12a9: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

12b1: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
12b9: db $41,$43,$2d,$29,$27,$24,$0e,$28,$2a,$25

12c5: dw $085f
12c7: dw $08de
12c9: dw $0965
12cb: dw $09f4
12cd: dw $0a8c
12cf: dw $0b2c
12d1: dw $0bd6
12d3: dw $0c8b
12d5: dw $0d4a
12d7: dw $0e14
12d9: dw $0eea
12db: dw $0fcd
12dd: dw $10be

12df: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
12e7: db $19,$32,$4c,$65,$72,$7f,$8c,$98
12ef: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

12f7: db $01,$02,$04,$08,$10,$20,$40,$80

12ff: fb 00     mov   y,$00+x
1301: 07 00     or    a,($00+x)
1303: 8f 83 f1  mov   $f1,#$83
1306: e8 00     mov   a,#$00
1308: 5d        mov   x,a
1309: 3f c9 ff  call  $ffc9
130c: 8f 33 f1  mov   $f1,#$33
130f: 2f 34     bra   $1345
1311: 8f cc f4  mov   $f4,#$cc
1314: 8f dd f5  mov   $f5,#$dd
1317: e4 f6     mov   a,$f6
1319: 8d 01     mov   y,#$01
131b: cd 00     mov   x,#$00
131d: 64 f6     cmp   a,$f6
131f: f0 fc     beq   $131d
1321: e4 f4     mov   a,$f4
1323: c7 f6     mov   ($f6+x),a
1325: e4 f5     mov   a,$f5
1327: d7 f6     mov   ($f6)+y,a
1329: e4 f6     mov   a,$f6
132b: d8 f4     mov   $f4,x
132d: 6e f7 02  dbnz  $f7,$1332
1330: 2f 13     bra   $1345
1332: 64 f6     cmp   a,$f6
1334: f0 fc     beq   $1332
1336: e4 f4     mov   a,$f4
1338: c7 f6     mov   ($f6+x),a
133a: e4 f5     mov   a,$f5
133c: d7 f6     mov   ($f6)+y,a
133e: e4 f6     mov   a,$f6
1340: cb f4     mov   $f4,y
1342: 6e f7 d8  dbnz  $f7,$131d
1345: 8f 00 f5  mov   $f5,#$00
1348: 5f 44 08  jmp   $0844
