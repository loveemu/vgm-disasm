; Shin Megami Tensei (Japan) (Rev 1)
0300: 20        clrp
0301: cd ff     mov   x,#$ff
0303: bd        mov   sp,x
0304: e8 00     mov   a,#$00
0306: 5d        mov   x,a
0307: af        mov   (x)+,a
0308: c8 e0     cmp   x,#$e0
030a: d0 fb     bne   $0307
030c: cd c0     mov   x,#$c0
030e: 1d        dec   x
030f: d5 00 01  mov   $0100+x,a
0312: d0 fa     bne   $030e
0314: 5d        mov   x,a
0315: d5 00 02  mov   $0200+x,a
0318: 3d        inc   x
0319: d0 fa     bne   $0315
031b: 3f 5b 04  call  $045b
031e: e8 00     mov   a,#$00
0320: c5 f4 00  mov   $00f4,a
0323: bc        inc   a
0324: c5 f5 00  mov   $00f5,a
0327: 8f 20 b9  mov   $b9,#$20
032a: 8f 20 ba  mov   $ba,#$20
032d: 8f 95 bb  mov   $bb,#$95
0330: 8f 3a bc  mov   $bc,#$3a
0333: e5 fd 00  mov   a,$00fd
0336: f0 03     beq   $033b
0338: 3f e9 04  call  $04e9
033b: e5 fe 00  mov   a,$00fe
033e: f0 03     beq   $0343
0340: 3f 16 05  call  $0516
0343: e8 ff     mov   a,#$ff
0345: c5 f5 00  mov   $00f5,a
0348: 8d 04     mov   y,#$04
034a: fe fe     dbnz  y,$034a
034c: e5 f4 00  mov   a,$00f4
034f: c4 b4     mov   $b4,a
0351: e5 f5 00  mov   a,$00f5
0354: c4 b5     mov   $b5,a
0356: e5 f6 00  mov   a,$00f6
0359: c4 b6     mov   $b6,a
035b: e5 f7 00  mov   a,$00f7
035e: c4 b7     mov   $b7,a
0360: e8 33     mov   a,#$33
0362: c5 f1 00  mov   $00f1,a
0365: ab bd     inc   $bd
0367: e4 bd     mov   a,$bd
0369: c5 f4 00  mov   $00f4,a
036c: 43 b0 05  bbs2  $b0,$0374
036f: e8 00     mov   a,#$00
0371: c5 f5 00  mov   $00f5,a
0374: cd ff     mov   x,#$ff
0376: 3d        inc   x
0377: c8 05     cmp   x,#$05
0379: f0 b8     beq   $0333
037b: f4 b4     mov   a,$b4+x
037d: f0 f7     beq   $0376
037f: bc        inc   a
0380: d0 05     bne   $0387
0382: 3f 5b 04  call  $045b
0385: 2f 16     bra   $039d
0387: 43 b0 13  bbs2  $b0,$039d
038a: 68 fe     cmp   a,#$fe
038c: f0 15     beq   $03a3
038e: 68 ff     cmp   a,#$ff
0390: d0 05     bne   $0397
0392: 3f 8e 0a  call  $0a8e
0395: 2f 9c     bra   $0333
0397: 9c        dec   a
0398: 4d        push  x
0399: 3f b6 03  call  $03b6
039c: ce        pop   x
039d: e8 00     mov   a,#$00
039f: d4 b4     mov   $b4+x,a
03a1: 2f d3     bra   $0376
03a3: 42 b0     set2  $b0
03a5: e8 01     mov   a,#$01
03a7: c4 be     mov   $be,a
03a9: c4 bf     mov   $bf,a
03ab: e8 01     mov   a,#$01
03ad: c4 c0     mov   $c0,a
03af: e8 fe     mov   a,#$fe
03b1: c5 f5 00  mov   $00f5,a
03b4: 2f e7     bra   $039d
03b6: 13 b0 01  bbc0  $b0,$03ba
03b9: 6f        ret

03ba: 1c        asl   a
03bb: 5d        mov   x,a
03bc: f5 68 0d  mov   a,$0d68+x
03bf: c4 00     mov   $00,a
03c1: f5 69 0d  mov   a,$0d69+x
03c4: c4 01     mov   $01,a
03c6: 8d ff     mov   y,#$ff
03c8: fc        inc   y
03c9: f7 00     mov   a,($00)+y
03cb: 30 3d     bmi   $040a
03cd: 5d        mov   x,a
03ce: f5 84 0b  mov   a,$0b84+x
03d1: c8 08     cmp   x,#$08
03d3: b0 06     bcs   $03db
03d5: 04 02     or    a,$02
03d7: c4 02     mov   $02,a
03d9: 2f 04     bra   $03df
03db: 04 03     or    a,$03
03dd: c4 03     mov   $03,a
03df: fc        inc   y
03e0: f7 00     mov   a,($00)+y
03e2: d5 20 02  mov   $0220+x,a
03e5: fc        inc   y
03e6: f7 00     mov   a,($00)+y
03e8: d5 30 02  mov   $0230+x,a
03eb: e8 00     mov   a,#$00
03ed: d5 00 02  mov   $0200+x,a
03f0: d5 10 02  mov   $0210+x,a
03f3: d5 70 02  mov   $0270+x,a
03f6: d5 80 02  mov   $0280+x,a
03f9: d5 a0 02  mov   $02a0+x,a
03fc: d5 b0 02  mov   $02b0+x,a
03ff: d5 00 01  mov   $0100+x,a
0402: d5 90 02  mov   $0290+x,a
0405: bc        inc   a
0406: d4 10     mov   $10+x,a
0408: 2f be     bra   $03c8
040a: 28 0f     and   a,#$0f
040c: 1c        asl   a
040d: 5d        mov   x,a
040e: 1f 11 04  jmp   ($0411+x)

0411: dw $044a
0413: dw $0434
0415: dw $0452
0417: dw $0431
0419: dw $0431
041b: dw $0431
041d: dw $0431
041f: dw $0431
0421: dw $0431
0423: dw $0431
0425: dw $0431
0427: dw $0431
0429: dw $0431
042b: dw $0431
042d: dw $0431
042f: dw $045a

0431: 5f c8 03  jmp   $03c8

0434: e8 02     mov   a,#$02
0436: c5 f1 00  mov   $00f1,a
0439: fc        inc   y
043a: f7 00     mov   a,($00)+y
043c: 60        clrc
043d: 88 80     adc   a,#$80
043f: c5 fa 00  mov   $00fa,a
0442: e8 03     mov   a,#$03
0444: c5 f1 00  mov   $00f1,a
0447: 5f c8 03  jmp   $03c8

044a: 6d        push  y
044b: 3f 5b 04  call  $045b
044e: ee        pop   y
044f: 5f c8 03  jmp   $03c8

0452: fc        inc   y
0453: f7 00     mov   a,($00)+y
0455: c4 b3     mov   $b3,a
0457: 5f c8 03  jmp   $03c8

045a: 6f        ret

045b: 8d 6c     mov   y,#$6c
045d: cc f2 00  mov   $00f2,y
0460: e8 a0     mov   a,#$a0
0462: c5 f3 00  mov   $00f3,a
0465: e8 00     mov   a,#$00
0467: c4 02     mov   $02,a
0469: c4 03     mov   $03,a
046b: c5 f1 00  mov   $00f1,a
046e: c5 f7 00  mov   $00f7,a
0471: 8d 2c     mov   y,#$2c
0473: cc f2 00  mov   $00f2,y
0476: c5 f3 00  mov   $00f3,a
0479: 8d 3c     mov   y,#$3c
047b: cc f2 00  mov   $00f2,y
047e: c5 f3 00  mov   $00f3,a
0481: 8d 0d     mov   y,#$0d
0483: cc f2 00  mov   $00f2,y
0486: c5 f3 00  mov   $00f3,a
0489: 8d 2d     mov   y,#$2d
048b: cc f2 00  mov   $00f2,y
048e: c5 f3 00  mov   $00f3,a
0491: 8d 3d     mov   y,#$3d
0493: cc f2 00  mov   $00f2,y
0496: c5 f3 00  mov   $00f3,a
0499: 8d 4d     mov   y,#$4d
049b: cc f2 00  mov   $00f2,y
049e: c5 f3 00  mov   $00f3,a
04a1: 8d 7d     mov   y,#$7d
04a3: cc f2 00  mov   $00f2,y
04a6: e8 00     mov   a,#$00
04a8: c5 f3 00  mov   $00f3,a
04ab: 8d 6d     mov   y,#$6d
04ad: cc f2 00  mov   $00f2,y
04b0: e8 80     mov   a,#$80
04b2: c5 f3 00  mov   $00f3,a
04b5: 8d 0c     mov   y,#$0c
04b7: cc f2 00  mov   $00f2,y
04ba: e8 60     mov   a,#$60
04bc: c5 f3 00  mov   $00f3,a
04bf: 8d 1c     mov   y,#$1c
04c1: cc f2 00  mov   $00f2,y
04c4: c5 f3 00  mov   $00f3,a
04c7: 8d 5d     mov   y,#$5d
04c9: cc f2 00  mov   $00f2,y
04cc: e8 20     mov   a,#$20
04ce: c5 f3 00  mov   $00f3,a
04d1: 8d 6c     mov   y,#$6c
04d3: cc f2 00  mov   $00f2,y
04d6: e8 14     mov   a,#$14
04d8: c5 f3 00  mov   $00f3,a
04db: e8 80     mov   a,#$80
04dd: c5 fa 00  mov   $00fa,a
04e0: c5 fb 00  mov   $00fb,a
04e3: e8 33     mov   a,#$33
04e5: c5 f1 00  mov   $00f1,a
04e8: 6f        ret

04e9: fa 02 06  mov   ($06),($02)
04ec: 8f ff 08  mov   $08,#$ff
04ef: ab 08     inc   $08
04f1: 4b 06     lsr   $06
04f3: 90 1e     bcc   $0513
04f5: 0d        push  psw
04f6: f8 08     mov   x,$08
04f8: 8f 01 b1  mov   $b1,#$01
04fb: f5 84 0b  mov   a,$0b84+x
04fe: 24 03     and   a,$03
0500: f0 03     beq   $0505
0502: 8f 03 b1  mov   $b1,#$03
0505: f5 00 02  mov   a,$0200+x
0508: c4 b2     mov   $b2,a
050a: 3f 4c 05  call  $054c
050d: e4 b2     mov   a,$b2
050f: d5 00 02  mov   $0200+x,a
0512: 8e        pop   psw
0513: d0 da     bne   $04ef
0515: 6f        ret

0516: fa 03 06  mov   ($06),($03)
0519: 8f 07 08  mov   $08,#$07
051c: 8f 00 b1  mov   $b1,#$00
051f: ab 08     inc   $08
0521: 4b 06     lsr   $06
0523: 90 1e     bcc   $0543
0525: 0d        push  psw
0526: 8f 00 b1  mov   $b1,#$00
0529: f8 08     mov   x,$08
052b: f5 84 0b  mov   a,$0b84+x
052e: 24 02     and   a,$02
0530: f0 03     beq   $0535
0532: 8f 04 b1  mov   $b1,#$04
0535: f5 00 02  mov   a,$0200+x
0538: c4 b2     mov   $b2,a
053a: 3f 4c 05  call  $054c
053d: e4 b2     mov   a,$b2
053f: d5 00 02  mov   $0200+x,a
0542: 8e        pop   psw
0543: d0 da     bne   $051f
0545: 53 b0 03  bbc2  $b0,$054b
0548: 3f 67 0a  call  $0a67
054b: 6f        ret

054c: 9b 10     dec   $10+x
054e: d0 03     bne   $0553
0550: 5f 7b 05  jmp   $057b

0553: a3 b2 24  bbs5  $b2,$057a
0556: 13 b2 03  bbc0  $b2,$055c
0559: 3f e7 09  call  $09e7
055c: d3 b2 03  bbc6  $b2,$0562
055f: 3f 24 0a  call  $0a24
0562: 9b 40     dec   $40+x
0564: d0 14     bne   $057a
0566: 43 b2 11  bbs2  $b2,$057a
0569: 23 b1 0e  bbs1  $b1,$057a
056c: e8 5c     mov   a,#$5c
056e: c5 f2 00  mov   $00f2,a
0571: f5 84 0b  mov   a,$0b84+x
0574: 05 f3 00  or    a,$00f3
0577: c5 f3 00  mov   $00f3,a
057a: 6f        ret

057b: f5 20 02  mov   a,$0220+x
057e: c4 00     mov   $00,a
0580: f5 30 02  mov   a,$0230+x
0583: c4 01     mov   $01,a
0585: 2f 02     bra   $0589
0587: 3a 00     incw  $00
0589: f8 08     mov   x,$08
058b: 8d 00     mov   y,#$00
058d: f7 00     mov   a,($00)+y
058f: 30 34     bmi   $05c5
0591: 68 60     cmp   a,#$60
0593: b0 03     bcs   $0598
0595: 5f 3d 06  jmp   $063d

0598: 28 1f     and   a,#$1f
059a: fd        mov   y,a
059b: f6 64 0b  mov   a,$0b64+y
059e: d5 90 02  mov   $0290+x,a
05a1: c4 09     mov   $09,a
05a3: 3f b4 05  call  $05b4
05a6: d5 50 00  mov   $0050+x,a
05a9: e4 09     mov   a,$09
05ab: 9f        xcn   a
05ac: 3f b4 05  call  $05b4
05af: d5 60 00  mov   $0060+x,a
05b2: 2f d3     bra   $0587
05b4: 28 0f     and   a,#$0f
05b6: 1c        asl   a
05b7: 1c        asl   a
05b8: 60        clrc
05b9: 95 70 02  adc   a,$0270+x
05bc: 10 02     bpl   $05c0
05be: e8 7f     mov   a,#$7f
05c0: 48 ff     eor   a,#$ff
05c2: 28 7f     and   a,#$7f
05c4: 6f        ret

05c5: 68 c0     cmp   a,#$c0
05c7: 90 07     bcc   $05d0
05c9: 28 1f     and   a,#$1f
05cb: 1c        asl   a
05cc: 5d        mov   x,a
05cd: 1f fe 06  jmp   ($06fe+x)

05d0: 28 7f     and   a,#$7f
05d2: 60        clrc
05d3: 95 80 02  adc   a,$0280+x
05d6: fd        mov   y,a
05d7: f6 04 0c  mov   a,$0c04+y
05da: 80        setc
05db: b5 00 01  sbc   a,$0100+x
05de: b0 04     bcs   $05e4
05e0: d0 02     bne   $05e4
05e2: e8 01     mov   a,#$01
05e4: d5 60 02  mov   $0260+x,a
05e7: 80        setc
05e8: b5 30 01  sbc   a,$0130+x
05eb: 50 02     bvc   $05ef
05ed: e8 01     mov   a,#$01
05ef: d5 20 01  mov   $0120+x,a
05f2: 2f 93     bra   $0587
05f4: dd        mov   a,y
05f5: 28 1f     and   a,#$1f
05f7: 23 b0 02  bbs1  $b0,$05fc
05fa: 08 20     or    a,#$20
05fc: d5 10 01  mov   $0110+x,a
05ff: 23 b1 21  bbs1  $b1,$0623
0602: fd        mov   y,a
0603: e8 3d     mov   a,#$3d
0605: c5 f2 00  mov   $00f2,a
0608: e5 f3 00  mov   a,$00f3
060b: f0 08     beq   $0615
060d: f5 84 0b  mov   a,$0b84+x
0610: 45 f3 00  eor   a,$00f3
0613: d0 11     bne   $0626
0615: f5 84 0b  mov   a,$0b84+x
0618: c5 f3 00  mov   $00f3,a
061b: e8 6c     mov   a,#$6c
061d: c5 f2 00  mov   $00f2,a
0620: cc f3 00  mov   $00f3,y
0623: 5f cc 06  jmp   $06cc

0626: 13 b1 ec  bbc0  $b1,$0615
0629: a2 b2     set5  $b2
062b: 23 b1 0e  bbs1  $b1,$063c
062e: e8 5c     mov   a,#$5c
0630: c5 f2 00  mov   $00f2,a
0633: f5 84 0b  mov   a,$0b84+x
0636: 05 f3 00  or    a,$00f3
0639: c5 f3 00  mov   $00f3,a
063c: 6f        ret

063d: 3a 00     incw  $00
063f: fd        mov   y,a
0640: e4 00     mov   a,$00
0642: d5 20 02  mov   $0220+x,a
0645: e4 01     mov   a,$01
0647: d5 30 02  mov   $0230+x,a
064a: f5 60 02  mov   a,$0260+x
064d: d4 10     mov   $10+x,a
064f: f5 20 01  mov   a,$0120+x
0652: d4 40     mov   $40+x,a
0654: ad 30     cmp   y,#$30
0656: f0 d1     beq   $0629
0658: b2 b2     clr5  $b2
065a: ad 31     cmp   y,#$31
065c: d0 07     bne   $0665
065e: e2 b0     set7  $b0
0660: 5f cc 06  jmp   $06cc

0663: 2f 8f     bra   $05f4
0665: 23 b1 0e  bbs1  $b1,$0676
0668: e8 5c     mov   a,#$5c
066a: c5 f2 00  mov   $00f2,a
066d: f5 94 0b  mov   a,$0b94+x
0670: 25 f3 00  and   a,$00f3
0673: c5 f3 00  mov   $00f3,a
0676: ad 40     cmp   y,#$40
0678: b0 e9     bcs   $0663
067a: 92 b2     clr4  $b2
067c: 23 b1 0e  bbs1  $b1,$068d
067f: e8 3d     mov   a,#$3d
0681: c5 f2 00  mov   $00f2,a
0684: f5 94 0b  mov   a,$0b94+x
0687: 25 f3 00  and   a,$00f3
068a: c5 f3 00  mov   $00f3,a
068d: dd        mov   a,y
068e: 60        clrc
068f: 95 10 02  adc   a,$0210+x
0692: 68 30     cmp   a,#$30
0694: 90 01     bcc   $0697
0696: dd        mov   a,y
0697: 1c        asl   a
0698: fd        mov   y,a
0699: f6 a4 0b  mov   a,$0ba4+y
069c: c4 0a     mov   $0a,a
069e: f6 a5 0b  mov   a,$0ba5+y
06a1: c4 0b     mov   $0b,a
06a3: f5 a0 02  mov   a,$02a0+x
06a6: 8d 00     mov   y,#$00
06a8: 60        clrc
06a9: 7a 0a     addw  ya,$0a
06ab: d5 40 02  mov   $0240+x,a
06ae: 23 b1 15  bbs1  $b1,$06c6
06b1: 5d        mov   x,a
06b2: e4 08     mov   a,$08
06b4: 28 07     and   a,#$07
06b6: 9f        xcn   a
06b7: 08 02     or    a,#$02
06b9: c5 f2 00  mov   $00f2,a
06bc: c9 f3 00  mov   $00f3,x
06bf: bc        inc   a
06c0: c5 f2 00  mov   $00f2,a
06c3: cc f3 00  mov   $00f3,y
06c6: dd        mov   a,y
06c7: f8 08     mov   x,$08
06c9: d5 50 02  mov   $0250+x,a
06cc: 23 b1 18  bbs1  $b1,$06e7
06cf: 7d        mov   a,x
06d0: 28 07     and   a,#$07
06d2: 9f        xcn   a
06d3: fd        mov   y,a
06d4: f5 50 00  mov   a,$0050+x
06d7: cc f2 00  mov   $00f2,y
06da: c5 f3 00  mov   $00f3,a
06dd: fc        inc   y
06de: f5 60 00  mov   a,$0060+x
06e1: cc f2 00  mov   $00f2,y
06e4: c5 f3 00  mov   $00f3,a
06e7: e3 b0 11  bbs7  $b0,$06fb
06ea: 43 b2 0e  bbs2  $b2,$06fb
06ed: 23 b1 0b  bbs1  $b1,$06fb
06f0: e8 4c     mov   a,#$4c
06f2: c5 f2 00  mov   $00f2,a
06f5: f5 84 0b  mov   a,$0b84+x
06f8: c5 f3 00  mov   $00f3,a
06fb: f2 b0     clr7  $b0
06fd: 6f        ret

06fe: dw $0741
0700: dw $075d
0702: dw $0760
0704: dw $0765
0706: dw $0773
0708: dw $0788
070a: dw $079b
070c: dw $07ba
070e: dw $07c9
0710: dw $07e7
0712: dw $07ec
0714: dw $07ff
0716: dw $080b
0718: dw $0820
071a: dw $082a
071c: dw $082f
071e: dw $0834
0720: dw $0867
0722: dw $0886
0724: dw $0895
0726: dw $08a1
0728: dw $08b6
072a: dw $08c9
072c: dw $08e8
072e: dw $08f7
0730: dw $0907
0732: dw $0913
0734: dw $091f
0736: dw $092b
0738: dw $0930
073a: dw $0935
073c: dw $093e

073e: 5f 87 05  jmp   $0587

0741: 3a 00     incw  $00
0743: f7 00     mov   a,($00)+y
0745: 13 b1 12  bbc0  $b1,$075a
0748: 60        clrc
0749: 2d        push  a
074a: e8 02     mov   a,#$02
074c: c5 f1 00  mov   $00f1,a
074f: ae        pop   a
0750: 88 80     adc   a,#$80
0752: c5 fa 00  mov   $00fa,a
0755: e8 33     mov   a,#$33
0757: c5 f1 00  mov   $00f1,a
075a: 5f 87 05  jmp   $0587

075d: 5f 87 05  jmp   $0587

0760: 12 b2     clr0  $b2
0762: 5f 87 05  jmp   $0587

0765: 02 b2     set0  $b2
0767: 3a 00     incw  $00
0769: f7 00     mov   a,($00)+y
076b: f8 08     mov   x,$08
076d: d5 b0 02  mov   $02b0+x,a
0770: 5f 87 05  jmp   $0587

0773: 3a 00     incw  $00
0775: f7 00     mov   a,($00)+y
0777: f8 08     mov   x,$08
0779: d4 20     mov   $20+x,a
077b: e4 00     mov   a,$00
077d: d5 70 00  mov   $0070+x,a
0780: e4 01     mov   a,$01
0782: d5 80 00  mov   $0080+x,a
0785: 5f 87 05  jmp   $0587

0788: f8 08     mov   x,$08
078a: 9b 20     dec   $20+x
078c: f0 0a     beq   $0798
078e: f5 70 00  mov   a,$0070+x
0791: c4 00     mov   $00,a
0793: f5 80 00  mov   a,$0080+x
0796: c4 01     mov   $01,a
0798: 5f 87 05  jmp   $0587

079b: f8 08     mov   x,$08
079d: 3a 00     incw  $00
079f: f7 00     mov   a,($00)+y
07a1: c4 09     mov   $09,a
07a3: 3a 00     incw  $00
07a5: f7 00     mov   a,($00)+y
07a7: fd        mov   y,a
07a8: e4 00     mov   a,$00
07aa: d5 78 01  mov   $0178+x,a
07ad: e4 01     mov   a,$01
07af: d5 88 01  mov   $0188+x,a
07b2: fa 09 00  mov   ($00),($09)
07b5: cb 01     mov   $01,y
07b7: 5f 89 05  jmp   $0589

07ba: f8 08     mov   x,$08
07bc: f5 78 01  mov   a,$0178+x
07bf: c4 00     mov   $00,a
07c1: f5 88 01  mov   a,$0188+x
07c4: c4 01     mov   $01,a
07c6: 5f 87 05  jmp   $0587

07c9: c2 b2     set6  $b2
07cb: f8 08     mov   x,$08
07cd: 3a 00     incw  $00
07cf: f7 00     mov   a,($00)+y
07d1: 1c        asl   a
07d2: fd        mov   y,a
07d3: f6 44 0c  mov   a,$0c44+y
07d6: d5 e0 02  mov   $02e0+x,a
07d9: f6 45 0c  mov   a,$0c45+y
07dc: d5 f0 02  mov   $02f0+x,a
07df: e8 00     mov   a,#$00
07e1: d5 d0 02  mov   $02d0+x,a
07e4: 5f 87 05  jmp   $0587

07e7: d2 b2     clr6  $b2
07e9: 5f 87 05  jmp   $0587

07ec: f8 08     mov   x,$08
07ee: f5 84 0b  mov   a,$0b84+x
07f1: 23 b1 08  bbs1  $b1,$07fc
07f4: 8d 5c     mov   y,#$5c
07f6: cc f2 00  mov   $00f2,y
07f9: c5 f3 00  mov   $00f3,a
07fc: 5f 87 05  jmp   $0587

07ff: f8 08     mov   x,$08
0801: 3a 00     incw  $00
0803: f7 00     mov   a,($00)+y
0805: d5 30 01  mov   $0130+x,a
0808: 5f 87 05  jmp   $0587

080b: f8 08     mov   x,$08
080d: 3a 00     incw  $00
080f: f7 00     mov   a,($00)+y
0811: c4 be     mov   $be,a
0813: c4 bf     mov   $bf,a
0815: 3a 00     incw  $00
0817: f7 00     mov   a,($00)+y
0819: c4 c0     mov   $c0,a
081b: 42 b0     set2  $b0
081d: 5f 87 05  jmp   $0587

0820: 3a 00     incw  $00
0822: f7 00     mov   a,($00)+y
0824: c5 f7 00  mov   $00f7,a
0827: 5f 87 05  jmp   $0587

082a: 02 b0     set0  $b0
082c: 5f 87 05  jmp   $0587

082f: 12 b0     clr0  $b0
0831: 5f 87 05  jmp   $0587

0834: f8 08     mov   x,$08
0836: 3a 00     incw  $00
0838: f7 00     mov   a,($00)+y
083a: 2d        push  a
083b: 3a 00     incw  $00
083d: f7 00     mov   a,($00)+y
083f: ee        pop   y
0840: 13 b1 0c  bbc0  $b1,$084f
0843: d5 48 01  mov   $0148+x,a
0846: 2d        push  a
0847: dd        mov   a,y
0848: d5 40 01  mov   $0140+x,a
084b: ae        pop   a
084c: 23 b1 15  bbs1  $b1,$0864
084f: 5d        mov   x,a
0850: e4 08     mov   a,$08
0852: 28 07     and   a,#$07
0854: 9f        xcn   a
0855: 08 05     or    a,#$05
0857: c5 f2 00  mov   $00f2,a
085a: cc f3 00  mov   $00f3,y
085d: bc        inc   a
085e: c5 f2 00  mov   $00f2,a
0861: c9 f3 00  mov   $00f3,x
0864: 5f 87 05  jmp   $0587

0867: f8 08     mov   x,$08
0869: 3a 00     incw  $00
086b: f7 00     mov   a,($00)+y
086d: 43 b1 03  bbs2  $b1,$0873
0870: d5 50 01  mov   $0150+x,a
0873: 23 b1 0d  bbs1  $b1,$0883
0876: fd        mov   y,a
0877: 7d        mov   a,x
0878: 28 07     and   a,#$07
087a: 9f        xcn   a
087b: 08 04     or    a,#$04
087d: c5 f2 00  mov   $00f2,a
0880: cc f3 00  mov   $00f3,y
0883: 5f 87 05  jmp   $0587

0886: f8 08     mov   x,$08
0888: 3a 00     incw  $00
088a: f7 00     mov   a,($00)+y
088c: d5 70 02  mov   $0270+x,a
088f: f5 90 02  mov   a,$0290+x
0892: 5f a1 05  jmp   $05a1

0895: f8 08     mov   x,$08
0897: 3a 00     incw  $00
0899: f7 00     mov   a,($00)+y
089b: d5 10 02  mov   $0210+x,a
089e: 5f 87 05  jmp   $0587

08a1: 3a 00     incw  $00
08a3: f7 00     mov   a,($00)+y
08a5: f8 08     mov   x,$08
08a7: d4 30     mov   $30+x,a
08a9: e4 00     mov   a,$00
08ab: d5 90 00  mov   $0090+x,a
08ae: e4 01     mov   a,$01
08b0: d5 a0 00  mov   $00a0+x,a
08b3: 5f 87 05  jmp   $0587

08b6: f8 08     mov   x,$08
08b8: 9b 30     dec   $30+x
08ba: f0 0a     beq   $08c6
08bc: f5 90 00  mov   a,$0090+x
08bf: c4 00     mov   $00,a
08c1: f5 a0 00  mov   a,$00a0+x
08c4: c4 01     mov   $01,a
08c6: 5f 87 05  jmp   $0587

08c9: f8 08     mov   x,$08
08cb: 3a 00     incw  $00
08cd: f7 00     mov   a,($00)+y
08cf: c4 09     mov   $09,a
08d1: 3a 00     incw  $00
08d3: f7 00     mov   a,($00)+y
08d5: fd        mov   y,a
08d6: e4 00     mov   a,$00
08d8: d5 58 01  mov   $0158+x,a
08db: e4 01     mov   a,$01
08dd: d5 68 01  mov   $0168+x,a
08e0: fa 09 00  mov   ($00),($09)
08e3: cb 01     mov   $01,y
08e5: 5f 89 05  jmp   $0589

08e8: f8 08     mov   x,$08
08ea: f5 58 01  mov   a,$0158+x
08ed: c4 00     mov   $00,a
08ef: f5 68 01  mov   a,$0168+x
08f2: c4 01     mov   $01,a
08f4: 5f 87 05  jmp   $0587

08f7: 3a 00     incw  $00
08f9: f7 00     mov   a,($00)+y
08fb: 5d        mov   x,a
08fc: 3a 00     incw  $00
08fe: f7 00     mov   a,($00)+y
0900: d8 00     mov   $00,x
0902: c4 01     mov   $01,a
0904: 5f 89 05  jmp   $0589

0907: f8 08     mov   x,$08
0909: 3a 00     incw  $00
090b: f7 00     mov   a,($00)+y
090d: d5 a0 02  mov   $02a0+x,a
0910: 5f 87 05  jmp   $0587

0913: f8 08     mov   x,$08
0915: 3a 00     incw  $00
0917: f7 00     mov   a,($00)+y
0919: d5 00 01  mov   $0100+x,a
091c: 5f 87 05  jmp   $0587

091f: f8 08     mov   x,$08
0921: 3a 00     incw  $00
0923: f7 00     mov   a,($00)+y
0925: d5 80 02  mov   $0280+x,a
0928: 5f 87 05  jmp   $0587

092b: 42 b2     set2  $b2
092d: 5f 87 05  jmp   $0587

0930: 52 b2     clr2  $b2
0932: 5f 87 05  jmp   $0587

0935: 3a 00     incw  $00
0937: f7 00     mov   a,($00)+y
0939: c4 b8     mov   $b8,a
093b: 5f 87 05  jmp   $0587

093e: f8 08     mov   x,$08
0940: 8f 00 b2  mov   $b2,#$00
0943: f5 94 0b  mov   a,$0b94+x
0946: 13 b1 06  bbc0  $b1,$094f
0949: 24 02     and   a,$02
094b: c4 02     mov   $02,a
094d: 2f 04     bra   $0953
094f: 24 03     and   a,$03
0951: c4 03     mov   $03,a
0953: 23 b1 29  bbs1  $b1,$097f
0956: 43 b1 27  bbs2  $b1,$0980
0959: f5 84 0b  mov   a,$0b84+x
095c: fd        mov   y,a
095d: e8 3d     mov   a,#$3d
095f: c5 f2 00  mov   $00f2,a
0962: dd        mov   a,y
0963: 25 f3 00  and   a,$00f3
0966: f0 05     beq   $096d
0968: e8 00     mov   a,#$00
096a: c5 f3 00  mov   $00f3,a
096d: 7d        mov   a,x
096e: 28 07     and   a,#$07
0970: 9f        xcn   a
0971: e8 5c     mov   a,#$5c
0973: c5 f2 00  mov   $00f2,a
0976: f5 84 0b  mov   a,$0b84+x
0979: 05 f3 00  or    a,$00f3
097c: c5 f3 00  mov   $00f3,a
097f: 6f        ret

0980: e8 5c     mov   a,#$5c
0982: c5 f2 00  mov   $00f2,a
0985: f5 84 0b  mov   a,$0b84+x
0988: c5 f3 00  mov   $00f3,a
098b: 7d        mov   a,x
098c: 28 07     and   a,#$07
098e: 5d        mov   x,a
098f: 9f        xcn   a
0990: 8d 00     mov   y,#$00
0992: c5 f2 00  mov   $00f2,a
0995: cc f3 00  mov   $00f3,y
0998: bc        inc   a
0999: c5 f2 00  mov   $00f2,a
099c: cc f3 00  mov   $00f3,y
099f: fd        mov   y,a
09a0: fc        inc   y
09a1: cc f2 00  mov   $00f2,y
09a4: f5 40 02  mov   a,$0240+x
09a7: c5 f3 00  mov   $00f3,a
09aa: fc        inc   y
09ab: cc f2 00  mov   $00f2,y
09ae: f5 50 02  mov   a,$0250+x
09b1: c5 f3 00  mov   $00f3,a
09b4: fc        inc   y
09b5: cc f2 00  mov   $00f2,y
09b8: f5 50 01  mov   a,$0150+x
09bb: c5 f3 00  mov   $00f3,a
09be: fc        inc   y
09bf: cc f2 00  mov   $00f2,y
09c2: f5 40 01  mov   a,$0140+x
09c5: c5 f3 00  mov   $00f3,a
09c8: fc        inc   y
09c9: cc f2 00  mov   $00f2,y
09cc: f5 48 01  mov   a,$0148+x
09cf: c5 f3 00  mov   $00f3,a
09d2: f5 84 0b  mov   a,$0b84+x
09d5: fd        mov   y,a
09d6: e8 3d     mov   a,#$3d
09d8: c5 f2 00  mov   $00f2,a
09db: dd        mov   a,y
09dc: 25 f3 00  and   a,$00f3
09df: f0 8c     beq   $096d
09e1: e8 00     mov   a,#$00
09e3: c5 f3 00  mov   $00f3,a
09e6: 6f        ret

09e7: f5 40 02  mov   a,$0240+x
09ea: c4 0a     mov   $0a,a
09ec: f5 50 02  mov   a,$0250+x
09ef: c4 0b     mov   $0b,a
09f1: f5 b0 02  mov   a,$02b0+x
09f4: 30 04     bmi   $09fa
09f6: 8d 00     mov   y,#$00
09f8: 2f 02     bra   $09fc
09fa: 8d ff     mov   y,#$ff
09fc: 7a 0a     addw  ya,$0a
09fe: ad 3f     cmp   y,#$3f
0a00: b0 21     bcs   $0a23
0a02: d5 40 02  mov   $0240+x,a
0a05: 23 b1 17  bbs1  $b1,$0a1f
0a08: 5d        mov   x,a
0a09: e4 08     mov   a,$08
0a0b: 28 07     and   a,#$07
0a0d: 9f        xcn   a
0a0e: 08 02     or    a,#$02
0a10: c5 f2 00  mov   $00f2,a
0a13: c9 f3 00  mov   $00f3,x
0a16: bc        inc   a
0a17: c5 f2 00  mov   $00f2,a
0a1a: cc f3 00  mov   $00f3,y
0a1d: f8 08     mov   x,$08
0a1f: dd        mov   a,y
0a20: d5 50 02  mov   $0250+x,a
0a23: 6f        ret

0a24: f5 e0 02  mov   a,$02e0+x
0a27: c4 0a     mov   $0a,a
0a29: f5 f0 02  mov   a,$02f0+x
0a2c: c4 0b     mov   $0b,a
0a2e: f5 d0 02  mov   a,$02d0+x
0a31: fd        mov   y,a
0a32: f7 0a     mov   a,($0a)+y
0a34: 68 80     cmp   a,#$80
0a36: d0 07     bne   $0a3f
0a38: fc        inc   y
0a39: dd        mov   a,y
0a3a: d5 c0 02  mov   $02c0+x,a
0a3d: 2f f3     bra   $0a32
0a3f: 68 81     cmp   a,#$81
0a41: d0 06     bne   $0a49
0a43: f5 c0 02  mov   a,$02c0+x
0a46: fd        mov   y,a
0a47: 2f e9     bra   $0a32
0a49: 2d        push  a
0a4a: f5 40 02  mov   a,$0240+x
0a4d: c4 0a     mov   $0a,a
0a4f: f5 50 02  mov   a,$0250+x
0a52: c4 0b     mov   $0b,a
0a54: fc        inc   y
0a55: dd        mov   a,y
0a56: d5 d0 02  mov   $02d0+x,a
0a59: ae        pop   a
0a5a: 68 7f     cmp   a,#$7f
0a5c: b0 04     bcs   $0a62
0a5e: 8d 00     mov   y,#$00
0a60: 2f 02     bra   $0a64
0a62: 8d ff     mov   y,#$ff
0a64: 5f fc 09  jmp   $09fc

0a67: 8b be     dec   $be
0a69: f0 01     beq   $0a6c
0a6b: 6f        ret

0a6c: fa bf be  mov   ($be),($bf)
0a6f: e8 0c     mov   a,#$0c
0a71: c5 f2 00  mov   $00f2,a
0a74: e5 f3 00  mov   a,$00f3
0a77: 80        setc
0a78: a4 c0     sbc   a,$c0
0a7a: 30 0c     bmi   $0a88
0a7c: c5 f3 00  mov   $00f3,a
0a7f: 8d 1c     mov   y,#$1c
0a81: cc f2 00  mov   $00f2,y
0a84: c5 f3 00  mov   $00f3,a
0a87: 6f        ret

0a88: 52 b0     clr2  $b0
0a8a: 3f 5b 04  call  $045b
0a8d: 6f        ret

0a8e: 3f 5b 04  call  $045b
0a91: e8 ee     mov   a,#$ee
0a93: c5 f5 00  mov   $00f5,a
0a96: 8d 20     mov   y,#$20
0a98: fe fe     dbnz  y,$0a98
0a9a: e5 f4 00  mov   a,$00f4
0a9d: c4 08     mov   $08,a
0a9f: e5 f5 00  mov   a,$00f5
0aa2: 5d        mov   x,a
0aa3: 28 3f     and   a,#$3f
0aa5: c4 09     mov   $09,a
0aa7: 7d        mov   a,x
0aa8: 1c        asl   a
0aa9: 90 03     bcc   $0aae
0aab: 5f 2b 0b  jmp   $0b2b

0aae: 1c        asl   a
0aaf: b0 08     bcs   $0ab9
0ab1: 8f 00 00  mov   $00,#$00
0ab4: 8f 78 01  mov   $01,#$78
0ab7: 2f 06     bra   $0abf
0ab9: 8f 00 00  mov   $00,#$00
0abc: 8f 70 01  mov   $01,#$70
0abf: e8 00     mov   a,#$00
0ac1: c4 0a     mov   $0a,a
0ac3: c4 0b     mov   $0b,a
0ac5: c5 f4 00  mov   $00f4,a
0ac8: c5 f5 00  mov   $00f5,a
0acb: 5d        mov   x,a
0acc: e5 f4 00  mov   a,$00f4
0acf: ec f5 00  mov   y,$00f5
0ad2: 5a 0a     cmpw  ya,$0a
0ad4: d0 f6     bne   $0acc
0ad6: e5 f6 00  mov   a,$00f6
0ad9: c7 00     mov   ($00+x),a
0adb: 3a 00     incw  $00
0add: 1a 08     decw  $08
0adf: d0 04     bne   $0ae5
0ae1: ab 08     inc   $08
0ae3: 2f 07     bra   $0aec
0ae5: e5 f7 00  mov   a,$00f7
0ae8: c7 00     mov   ($00+x),a
0aea: 3a 00     incw  $00
0aec: 3a 0a     incw  $0a
0aee: e4 0a     mov   a,$0a
0af0: c5 f4 00  mov   $00f4,a
0af3: e4 0b     mov   a,$0b
0af5: c5 f5 00  mov   $00f5,a
0af8: 1a 08     decw  $08
0afa: d0 d0     bne   $0acc
0afc: e5 f4 00  mov   a,$00f4
0aff: ec f5 00  mov   y,$00f5
0b02: da 0a     movw  $0a,ya
0b04: 3a 0a     incw  $0a
0b06: d0 03     bne   $0b0b
0b08: 5f 8e 0a  jmp   $0a8e

0b0b: 1a 0a     decw  $0a
0b0d: d0 ed     bne   $0afc
0b0f: e8 33     mov   a,#$33
0b11: c5 f1 00  mov   $00f1,a
0b14: e8 00     mov   a,#$00
0b16: c4 bd     mov   $bd,a
0b18: c5 f4 00  mov   $00f4,a
0b1b: c5 f5 00  mov   $00f5,a
0b1e: 8f 20 b9  mov   $b9,#$20
0b21: 8f 20 ba  mov   $ba,#$20
0b24: 8f 95 bb  mov   $bb,#$95
0b27: 8f 3a bc  mov   $bc,#$3a
0b2a: 6f        ret

0b2b: cd 00     mov   x,#$00
0b2d: e5 f6 00  mov   a,$00f6
0b30: c4 0a     mov   $0a,a
0b32: e5 f7 00  mov   a,$00f7
0b35: c4 0b     mov   $0b,a
0b37: e4 bb     mov   a,$bb
0b39: c7 b9     mov   ($b9+x),a
0b3b: c4 00     mov   $00,a
0b3d: 3a b9     incw  $b9
0b3f: c4 0c     mov   $0c,a
0b41: e4 bc     mov   a,$bc
0b43: c7 b9     mov   ($b9+x),a
0b45: c4 01     mov   $01,a
0b47: 3a b9     incw  $b9
0b49: c4 0d     mov   $0d,a
0b4b: fd        mov   y,a
0b4c: e4 0c     mov   a,$0c
0b4e: 7a 0a     addw  ya,$0a
0b50: c7 b9     mov   ($b9+x),a
0b52: 3a b9     incw  $b9
0b54: dd        mov   a,y
0b55: c7 b9     mov   ($b9+x),a
0b57: 3a b9     incw  $b9
0b59: ba 0c     movw  ya,$0c
0b5b: 7a 08     addw  ya,$08
0b5d: c4 bb     mov   $bb,a
0b5f: cb bc     mov   $bc,y
0b61: 5f bf 0a  jmp   $0abf
