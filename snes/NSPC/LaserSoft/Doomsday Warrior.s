 0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 f0     cmp   x,#$f0
040a: d0 fb     bne   $0407
040c: cd 00     mov   x,#$00
040e: d5 00 01  mov   $0100+x,a
0411: d5 00 02  mov   $0200+x,a
0414: d5 00 03  mov   $0300+x,a
0417: 3d        inc   x
0418: d0 f4     bne   $040e
041a: e8 3c     mov   a,#$3c
041c: c4 11     mov   $11,a
041e: e8 00     mov   a,#$00
0420: c4 10     mov   $10,a
0422: 8d 00     mov   y,#$00
0424: d7 10     mov   ($10)+y,a
0426: fc        inc   y
0427: d0 fb     bne   $0424
0429: ab 11     inc   $11
042b: d0 f7     bne   $0424
042d: e8 c0     mov   a,#$c0
042f: c4 18     mov   $18,a
0431: e8 80     mov   a,#$80
0433: c4 4b     mov   $4b,a
0435: e8 01     mov   a,#$01
0437: 3f b8 0d  call  $0db8
043a: a2 48     set5  $48
043c: e8 60     mov   a,#$60
043e: 3f 64 05  call  $0564
0441: e8 14     mov   a,#$14
0443: 8d 5d     mov   y,#$5d
0445: 3f 87 07  call  $0787
0448: e8 f0     mov   a,#$f0
044a: c5 f1 00  mov   $00f1,a
044d: e8 20     mov   a,#$20
044f: c5 fa 00  mov   $00fa,a
0452: c4 53     mov   $53,a
0454: e8 01     mov   a,#$01
0456: c5 f1 00  mov   $00f1,a
0459: e4 62     mov   a,$62
045b: 3f 2e 05  call  $052e
045e: c4 ae     mov   $ae,a
0460: e4 64     mov   a,$64
0462: 3f 2e 05  call  $052e
0465: c4 af     mov   $af,a
0467: 8d 0a     mov   y,#$0a
0469: ad 05     cmp   y,#$05
046b: f0 07     beq   $0474
046d: b0 08     bcs   $0477
046f: 69 4d 4c  cmp   ($4c),($4d)
0472: d0 11     bne   $0485
0474: e3 4c 0e  bbs7  $4c,$0485
0477: f6 ad 12  mov   a,$12ad+y
047a: c5 f2 00  mov   $00f2,a
047d: f6 b7 12  mov   a,$12b7+y
0480: 5d        mov   x,a
0481: e6        mov   a,(x)
0482: c5 f3 00  mov   $00f3,a
0485: fe e2     dbnz  y,$0469
0487: cb a8     mov   $a8,y
0489: cb a9     mov   $a9,y
048b: ec fd 00  mov   y,$00fd
048e: f0 fb     beq   $048b
0490: 6d        push  y
0491: 2f 05     bra   $0498
0493: 6d        push  y
0494: 3f f5 07  call  $07f5
0497: ee        pop   y
0498: dd        mov   a,y
0499: f0 03     beq   $049e
049b: dc        dec   y
049c: 2f f5     bra   $0493
049e: e4 a6     mov   a,$a6
04a0: 0e a8 00  tset1 $00a8
04a3: e4 a7     mov   a,$a7
04a5: 0e a9 00  tset1 $00a9
04a8: c4 a6     mov   $a6,a
04aa: e8 00     mov   a,#$00
04ac: c4 a7     mov   $a7,a
04ae: ee        pop   y
04af: 6d        push  y
04b0: e8 40     mov   a,#$40
04b2: cf        mul   ya
04b3: 60        clrc
04b4: 84 00     adc   a,$00
04b6: c4 00     mov   $00,a
04b8: 90 0a     bcc   $04c4
04ba: 3f 36 05  call  $0536
04bd: 69 4d 4c  cmp   ($4c),($4d)
04c0: f0 02     beq   $04c4
04c2: ab 4c     inc   $4c
04c4: ee        pop   y
04c5: e4 53     mov   a,$53
04c7: 1c        asl   a
04c8: cf        mul   ya
04c9: cb 1f     mov   $1f,y
04cb: 60        clrc
04cc: 84 51     adc   a,$51
04ce: c4 51     mov   $51,a
04d0: b0 06     bcs   $04d8
04d2: e4 1f     mov   a,$1f
04d4: f0 0b     beq   $04e1
04d6: 8b 1f     dec   $1f
04d8: 3f 2d 0a  call  $0a2d
04db: e4 1f     mov   a,$1f
04dd: f0 1e     beq   $04fd
04df: 2f f5     bra   $04d6
04e1: e4 04     mov   a,$04
04e3: f0 18     beq   $04fd
04e5: cd 00     mov   x,#$00
04e7: 8f 01 47  mov   $47,#$01
04ea: e4 18     mov   a,$18
04ec: 24 47     and   a,$47
04ee: d0 07     bne   $04f7
04f0: f4 31     mov   a,$31+x
04f2: f0 03     beq   $04f7
04f4: 3f 5c 11  call  $115c
04f7: 3d        inc   x
04f8: 3d        inc   x
04f9: 0b 47     asl   $47
04fb: d0 ed     bne   $04ea
04fd: 5f 59 04  jmp   $0459

0500: e5 f4 00  mov   a,$00f4
0503: 65 f4 00  cmp   a,$00f4
0506: d0 f8     bne   $0500
0508: 68 00     cmp   a,#$00
050a: f0 0a     beq   $0516
050c: 2d        push  a
050d: e8 11     mov   a,#$11
050f: c5 f1 00  mov   $00f1,a
0512: ae        pop   a
0513: c5 f4 00  mov   $00f4,a
0516: 6f        ret

0517: e5 f6 00  mov   a,$00f6
051a: 65 f6 00  cmp   a,$00f6
051d: d0 f8     bne   $0517
051f: 68 00     cmp   a,#$00
0521: f0 0a     beq   $052d
0523: 2d        push  a
0524: e8 21     mov   a,#$21
0526: c5 f1 00  mov   $00f1,a
0529: ae        pop   a
052a: c5 f6 00  mov   $00f6,a
052d: 6f        ret

052e: 80        setc
052f: a4 ac     sbc   a,$ac
0531: b0 02     bcs   $0535
0533: e8 00     mov   a,#$00
0535: 6f        ret

0536: e4 ac     mov   a,$ac
0538: d0 05     bne   $053f
053a: e8 60     mov   a,#$60
053c: 5f 60 05  jmp   $0560

053f: 60        clrc
0540: e8 96     mov   a,#$96
0542: 84 ad     adc   a,$ad
0544: c4 ad     mov   $ad,a
0546: e8 01     mov   a,#$01
0548: 84 ac     adc   a,$ac
054a: c4 ac     mov   $ac,a
054c: 80        setc
054d: e8 60     mov   a,#$60
054f: a4 ac     sbc   a,$ac
0551: b0 0d     bcs   $0560
0553: e8 00     mov   a,#$00
0555: c4 ad     mov   $ad,a
0557: c4 ac     mov   $ac,a
0559: 3f 64 05  call  $0564
055c: 3f 06 0a  call  $0a06
055f: 6f        ret

0560: 3f 64 05  call  $0564
0563: 6f        ret

0564: 6d        push  y
0565: 8d 0c     mov   y,#$0c
0567: 3f 87 07  call  $0787
056a: 8d 1c     mov   y,#$1c
056c: 3f 87 07  call  $0787
056f: ee        pop   y
0570: 6f        ret

0571: f4 80     mov   a,$80+x
0573: d0 65     bne   $05da
0575: ad c8     cmp   y,#$c8
0577: b0 61     bcs   $05da
0579: e4 18     mov   a,$18
057b: 24 47     and   a,$47
057d: f0 5b     beq   $05da
057f: dd        mov   a,y
0580: 28 7f     and   a,#$7f
0582: 95 91 03  adc   a,$0391+x
0585: c4 11     mov   $11,a
0587: f5 90 03  mov   a,$0390+x
058a: c4 10     mov   $10,a
058c: f5 b1 02  mov   a,$02b1+x
058f: 5c        lsr   a
0590: e8 00     mov   a,#$00
0592: 7c        ror   a
0593: d5 a0 02  mov   $02a0+x,a
0596: e8 00     mov   a,#$00
0598: d4 d0     mov   $d0+x,a
059a: d5 00 01  mov   $0100+x,a
059d: d5 d0 02  mov   $02d0+x,a
05a0: d4 e0     mov   $e0+x,a
05a2: 09 47 a7  or    ($a7),($47)
05a5: f5 80 02  mov   a,$0280+x
05a8: d4 c0     mov   $c0+x,a
05aa: f0 1b     beq   $05c7
05ac: f5 81 02  mov   a,$0281+x
05af: d4 c1     mov   $c1+x,a
05b1: f5 90 02  mov   a,$0290+x
05b4: d0 08     bne   $05be
05b6: e4 11     mov   a,$11
05b8: 80        setc
05b9: b5 91 02  sbc   a,$0291+x
05bc: c4 11     mov   $11,a
05be: f5 91 02  mov   a,$0291+x
05c1: 60        clrc
05c2: 84 11     adc   a,$11
05c4: 3f 39 0e  call  $0e39
05c7: e4 11     mov   a,$11
05c9: d5 61 03  mov   $0361+x,a
05cc: e4 10     mov   a,$10
05ce: d5 60 03  mov   $0360+x,a
05d1: f5 11 02  mov   a,$0211+x
05d4: 3f 46 0c  call  $0c46
05d7: 5f eb 06  jmp   $06eb

05da: 6f        ret

; handle a note vcmd (80-df)
05db: ad ca     cmp   y,#$ca
05dd: 90 06     bcc   $05e5
; vcmds ca-df - percussion note
05df: dd        mov   a,y
05e0: d5 11 02  mov   $0211+x,a
05e3: 8d a4     mov   y,#$a4
; vcmds c7,c8,c9 - note/tie/rest
05e5: ad c8     cmp   y,#$c8
05e7: b0 f1     bcs   $05da
05e9: 4d        push  x
05ea: cd 00     mov   x,#$00
05ec: f4 90     mov   a,$90+x
05ee: 64 44     cmp   a,$44
05f0: d0 15     bne   $0607
05f2: f4 80     mov   a,$80+x
05f4: f0 11     beq   $0607
05f6: dd        mov   a,y
05f7: 28 7f     and   a,#$7f
05f9: 74 81     cmp   a,$81+x
05fb: d0 0a     bne   $0607
05fd: 7d        mov   a,x
05fe: fd        mov   y,a
05ff: ce        pop   x
0600: f5 01 02  mov   a,$0201+x
0603: d6 80 00  mov   $0080+y,a
0606: 6f        ret

0607: 3d        inc   x
0608: 3d        inc   x
0609: c8 10     cmp   x,#$10
060b: d0 df     bne   $05ec
060d: ce        pop   x
060e: 6d        push  y
060f: 3f 8e 07  call  $078e
0612: 4e 1d 00  tclr1 $001d
0615: 0e 46 00  tset1 $0046
0618: 0e 5e 00  tset1 $005e
061b: 0e 5f 00  tset1 $005f
061e: 0e 60 00  tset1 $0060
0621: c4 a2     mov   $a2,a
0623: 8d 0e     mov   y,#$0e
0625: e4 a2     mov   a,$a2
0627: 36 a0 03  and   a,$03a0+y
062a: f0 0a     beq   $0636
062c: e4 a2     mov   a,$a2
062e: 48 ff     eor   a,#$ff
0630: 36 a0 03  and   a,$03a0+y
0633: d6 a0 03  mov   $03a0+y,a
0636: dc        dec   y
0637: dc        dec   y
0638: 10 eb     bpl   $0625
063a: e4 a2     mov   a,$a2
063c: 15 a0 03  or    a,$03a0+x
063f: d5 a0 03  mov   $03a0+x,a
0642: e4 a2     mov   a,$a2
0644: 8d ff     mov   y,#$ff
0646: fc        inc   y
0647: 5c        lsr   a
0648: 90 fc     bcc   $0646
064a: dd        mov   a,y
064b: ee        pop   y
064c: 4d        push  x
064d: 1c        asl   a
064e: 5d        mov   x,a
064f: dd        mov   a,y
0650: 28 7f     and   a,#$7f
0652: d4 81     mov   $81+x,a
0654: ae        pop   a
0655: d4 90     mov   $90+x,a
0657: fd        mov   y,a
0658: f6 01 02  mov   a,$0201+y
065b: d4 80     mov   $80+x,a
065d: f6 10 02  mov   a,$0210+y
0660: d4 91     mov   $91+x,a
0662: dd        mov   a,y
0663: 5d        mov   x,a
0664: 6f        ret

0665: e4 60     mov   a,$60
0667: 24 47     and   a,$47
0669: f0 f9     beq   $0664
066b: e4 5f     mov   a,$5f
066d: 24 47     and   a,$47
066f: f0 5c     beq   $06cd
0671: 4d        push  x
0672: f4 81     mov   a,$81+x
0674: 2d        push  a
0675: f4 90     mov   a,$90+x
0677: 5d        mov   x,a
0678: ae        pop   a
0679: 60        clrc
067a: 84 50     adc   a,$50
067c: 95 f0 02  adc   a,$02f0+x
067f: c4 11     mov   $11,a
0681: 8f 00 10  mov   $10,#$00
0684: f5 b1 02  mov   a,$02b1+x
0687: 5c        lsr   a
0688: e8 00     mov   a,#$00
068a: 7c        ror   a
068b: d5 a0 02  mov   $02a0+x,a
068e: e8 00     mov   a,#$00
0690: d4 d0     mov   $d0+x,a
0692: d5 00 01  mov   $0100+x,a
0695: d5 d0 02  mov   $02d0+x,a
0698: d4 e0     mov   $e0+x,a
069a: f5 80 02  mov   a,$0280+x
069d: d4 c0     mov   $c0+x,a
069f: f0 1b     beq   $06bc
06a1: f5 81 02  mov   a,$0281+x
06a4: d4 c1     mov   $c1+x,a
06a6: f5 90 02  mov   a,$0290+x
06a9: d0 08     bne   $06b3
06ab: e4 11     mov   a,$11
06ad: 80        setc
06ae: b5 91 02  sbc   a,$0291+x
06b1: c4 11     mov   $11,a
06b3: f5 91 02  mov   a,$0291+x
06b6: 60        clrc
06b7: 84 11     adc   a,$11
06b9: 3f 39 0e  call  $0e39
06bc: ce        pop   x
06bd: e4 11     mov   a,$11
06bf: d5 61 03  mov   $0361+x,a
06c2: e4 10     mov   a,$10
06c4: d5 60 03  mov   $0360+x,a
06c7: 3f f5 0b  call  $0bf5
06ca: 5f d7 06  jmp   $06d7

06cd: f5 61 03  mov   a,$0361+x
06d0: c4 11     mov   $11,a
06d2: f5 60 03  mov   a,$0360+x
06d5: c4 10     mov   $10,a
06d7: 4d        push  x
06d8: f4 90     mov   a,$90+x
06da: 5d        mov   x,a
06db: 60        clrc
06dc: e4 10     mov   a,$10
06de: 95 90 03  adc   a,$0390+x
06e1: c4 10     mov   $10,a
06e3: e4 11     mov   a,$11
06e5: 95 91 03  adc   a,$0391+x
06e8: c4 11     mov   $11,a
06ea: ce        pop   x
06eb: 8d 00     mov   y,#$00
06ed: e4 11     mov   a,$11
06ef: 80        setc
06f0: a8 34     sbc   a,#$34
06f2: b0 09     bcs   $06fd
06f4: e4 11     mov   a,$11
06f6: 80        setc
06f7: a8 13     sbc   a,#$13
06f9: b0 06     bcs   $0701
06fb: dc        dec   y
06fc: 1c        asl   a
06fd: 7a 10     addw  ya,$10
06ff: da 10     movw  $10,ya
0701: 4d        push  x
0702: e4 11     mov   a,$11
0704: 1c        asl   a
0705: 8d 00     mov   y,#$00
0707: cd 18     mov   x,#$18
0709: 9e        div   ya,x
070a: 5d        mov   x,a
070b: f6 c3 12  mov   a,$12c3+y
070e: c4 15     mov   $15,a
0710: f6 c2 12  mov   a,$12c2+y
0713: c4 14     mov   $14,a
0715: f6 c5 12  mov   a,$12c5+y
0718: 2d        push  a
0719: f6 c4 12  mov   a,$12c4+y
071c: ee        pop   y
071d: 9a 14     subw  ya,$14
071f: eb 10     mov   y,$10
0721: cf        mul   ya
0722: dd        mov   a,y
0723: 8d 00     mov   y,#$00
0725: 7a 14     addw  ya,$14
0727: cb 15     mov   $15,y
0729: 1c        asl   a
072a: 2b 15     rol   $15
072c: c4 14     mov   $14,a
072e: 2f 04     bra   $0734
0730: 4b 15     lsr   $15
0732: 7c        ror   a
0733: 3d        inc   x
0734: c8 06     cmp   x,#$06
0736: d0 f8     bne   $0730
0738: c4 14     mov   $14,a
073a: ce        pop   x
073b: f5 20 02  mov   a,$0220+x
073e: eb 15     mov   y,$15
0740: cf        mul   ya
0741: da 16     movw  $16,ya
0743: f5 20 02  mov   a,$0220+x
0746: eb 14     mov   y,$14
0748: cf        mul   ya
0749: 6d        push  y
074a: f5 21 02  mov   a,$0221+x
074d: eb 14     mov   y,$14
074f: cf        mul   ya
0750: 7a 16     addw  ya,$16
0752: da 16     movw  $16,ya
0754: f5 21 02  mov   a,$0221+x
0757: eb 15     mov   y,$15
0759: cf        mul   ya
075a: fd        mov   y,a
075b: ae        pop   a
075c: 7a 16     addw  ya,$16
075e: da 16     movw  $16,ya
0760: 8d 02     mov   y,#$02
0762: e4 16     mov   a,$16
0764: 3f 6a 07  call  $076a
0767: fc        inc   y
0768: e4 17     mov   a,$17
076a: c5 c0 03  mov   $03c0,a
076d: cc c1 03  mov   $03c1,y
0770: 7d        mov   a,x
0771: 5c        lsr   a
0772: 9f        xcn   a
0773: 05 c1 03  or    a,$03c1
0776: fd        mov   y,a
0777: e5 c0 03  mov   a,$03c0
077a: cc f2 00  mov   $00f2,y
077d: c5 f3 00  mov   $00f3,a
0780: ec c1 03  mov   y,$03c1
0783: e5 c0 03  mov   a,$03c0
0786: 6f        ret

0787: cc f2 00  mov   $00f2,y
078a: c5 f3 00  mov   $00f3,a
078d: 6f        ret

078e: e4 19     mov   a,$19
0790: 24 47     and   a,$47
0792: d0 03     bne   $0797
0794: e4 47     mov   a,$47
0796: 6f        ret

0797: e4 1d     mov   a,$1d
0799: 35 a0 03  and   a,$03a0+x
079c: f0 16     beq   $07b4
079e: f5 a1 03  mov   a,$03a1+x
07a1: 1c        asl   a
07a2: d5 a1 03  mov   $03a1+x,a
07a5: d0 05     bne   $07ac
07a7: e8 01     mov   a,#$01
07a9: d5 a1 03  mov   $03a1+x,a
07ac: 35 a0 03  and   a,$03a0+x
07af: 24 1d     and   a,$1d
07b1: f0 eb     beq   $079e
07b3: 6f        ret

07b4: e4 1d     mov   a,$1d
07b6: d0 2e     bne   $07e6
07b8: e8 80     mov   a,#$80
07ba: c5 c0 03  mov   $03c0,a
07bd: c5 c1 03  mov   $03c1,a
07c0: 8d 07     mov   y,#$07
07c2: e4 1a     mov   a,$1a
07c4: 25 c0 03  and   a,$03c0
07c7: f0 17     beq   $07e0
07c9: dd        mov   a,y
07ca: 9f        xcn   a
07cb: 08 08     or    a,#$08
07cd: c5 f2 00  mov   $00f2,a
07d0: e5 f3 00  mov   a,$00f3
07d3: 65 c1 03  cmp   a,$03c1
07d6: b0 08     bcs   $07e0
07d8: c5 c1 03  mov   $03c1,a
07db: e5 c0 03  mov   a,$03c0
07de: c4 1d     mov   $1d,a
07e0: 4c c0 03  lsr   $03c0
07e3: dc        dec   y
07e4: 10 dc     bpl   $07c2
07e6: 0b 1b     asl   $1b
07e8: d0 04     bne   $07ee
07ea: e8 01     mov   a,#$01
07ec: c4 1b     mov   $1b,a
07ee: e4 1b     mov   a,$1b
07f0: 24 1d     and   a,$1d
07f2: f0 f2     beq   $07e6
07f4: 6f        ret

07f5: 3f 17 05  call  $0517
07f8: 68 1b     cmp   a,#$1b
07fa: b0 04     bcs   $0800
07fc: 68 00     cmp   a,#$00
07fe: d0 03     bne   $0803
0800: 5f 02 09  jmp   $0902

0803: c4 10     mov   $10,a
0805: 9c        dec   a
0806: 1c        asl   a
0807: 1c        asl   a
0808: fd        mov   y,a
0809: f6 00 15  mov   a,$1500+y
080c: c4 12     mov   $12,a
080e: f6 01 15  mov   a,$1501+y
0811: 28 0f     and   a,#$0f
0813: c4 13     mov   $13,a
0815: e4 18     mov   a,$18
0817: 48 ff     eor   a,#$ff
0819: 24 12     and   a,$12
081b: d0 54     bne   $0871
081d: cd 0e     mov   x,#$0e
081f: 8f 80 47  mov   $47,#$80
0822: e4 12     mov   a,$12
0824: 24 47     and   a,$47
0826: f0 06     beq   $082e
0828: f4 21     mov   a,$21+x
082a: 64 13     cmp   a,$13
082c: b0 43     bcs   $0871
082e: 1d        dec   x
082f: 1d        dec   x
0830: 4b 47     lsr   $47
0832: d0 ee     bne   $0822
0834: f6 01 15  mov   a,$1501+y
0837: 5c        lsr   a
0838: 5c        lsr   a
0839: 5c        lsr   a
083a: 5c        lsr   a
083b: c4 13     mov   $13,a
083d: f6 03 15  mov   a,$1503+y
0840: c4 15     mov   $15,a
0842: f6 02 15  mov   a,$1502+y
0845: c4 14     mov   $14,a
0847: 8d 00     mov   y,#$00
0849: cd 0e     mov   x,#$0e
084b: 8f 80 47  mov   $47,#$80
084e: e4 12     mov   a,$12
0850: 24 47     and   a,$47
0852: f0 03     beq   $0857
0854: 3f 74 08  call  $0874
0857: 1d        dec   x
0858: 1d        dec   x
0859: 4b 47     lsr   $47
085b: d0 f1     bne   $084e
085d: cd 0e     mov   x,#$0e
085f: 8f 80 47  mov   $47,#$80
0862: e4 12     mov   a,$12
0864: 24 47     and   a,$47
0866: f0 03     beq   $086b
0868: 3f b4 08  call  $08b4
086b: 1d        dec   x
086c: 1d        dec   x
086d: 4b 47     lsr   $47
086f: d0 f1     bne   $0862
0871: 5f 02 09  jmp   $0902

0874: e4 47     mov   a,$47
0876: 2d        push  a
0877: 4d        push  x
0878: e8 80     mov   a,#$80
087a: c4 47     mov   $47,a
087c: cd 0e     mov   x,#$0e
087e: f4 20     mov   a,$20+x
0880: f0 2d     beq   $08af
0882: 74 20     cmp   a,$20+x
0884: d0 23     bne   $08a9
0886: 2d        push  a
0887: e4 47     mov   a,$47
0889: 24 18     and   a,$18
088b: f0 1b     beq   $08a8
088d: e4 47     mov   a,$47
088f: 0e a9 00  tset1 $00a9
0892: 4e a7 00  tclr1 $00a7
0895: 4e a6 00  tclr1 $00a6
0898: 4e 4b 00  tclr1 $004b
089b: 4e 49 00  tclr1 $0049
089e: e8 00     mov   a,#$00
08a0: d4 20     mov   $20+x,a
08a2: d4 21     mov   $21+x,a
08a4: d4 30     mov   $30+x,a
08a6: d4 31     mov   $31+x,a
08a8: ae        pop   a
08a9: 1d        dec   x
08aa: 1d        dec   x
08ab: 4b 47     lsr   $47
08ad: d0 d3     bne   $0882
08af: ce        pop   x
08b0: ae        pop   a
08b1: c4 47     mov   $47,a
08b3: 6f        ret

08b4: f7 14     mov   a,($14)+y
08b6: d4 30     mov   $30+x,a
08b8: fc        inc   y
08b9: f7 14     mov   a,($14)+y
08bb: d4 31     mov   $31+x,a
08bd: fc        inc   y
08be: f4 31     mov   a,$31+x
08c0: d0 01     bne   $08c3
08c2: 6f        ret

08c3: e4 47     mov   a,$47
08c5: 4e 49 00  tclr1 $0049
08c8: 4e 4b 00  tclr1 $004b
08cb: e8 ff     mov   a,#$ff
08cd: d5 01 03  mov   $0301+x,a
08d0: 7d        mov   a,x
08d1: d4 90     mov   $90+x,a
08d3: 3f 60 0c  call  $0c60
08d6: d5 a0 03  mov   $03a0+x,a
08d9: d5 a1 03  mov   $03a1+x,a
08dc: d5 11 02  mov   $0211+x,a
08df: d5 90 03  mov   $0390+x,a
08e2: d5 91 03  mov   $0391+x,a
08e5: d5 f0 02  mov   $02f0+x,a
08e8: d5 80 02  mov   $0280+x,a
08eb: d4 b0     mov   $b0+x,a
08ed: d4 d1     mov   $d1+x,a
08ef: d4 e1     mov   $e1+x,a
08f1: d5 01 02  mov   $0201+x,a
08f4: d4 80     mov   $80+x,a
08f6: bc        inc   a
08f7: d4 70     mov   $70+x,a
08f9: e4 10     mov   a,$10
08fb: d4 20     mov   $20+x,a
08fd: e4 13     mov   a,$13
08ff: d4 21     mov   $21+x,a
0901: 6f        ret

0902: cd 0e     mov   x,#$0e
0904: 8f 80 47  mov   $47,#$80
0907: e4 18     mov   a,$18
0909: 24 47     and   a,$47
090b: f0 72     beq   $097f
090d: d8 44     mov   $44,x
090f: f4 31     mov   a,$31+x
0911: f0 6c     beq   $097f
0913: f4 20     mov   a,$20+x
0915: f0 68     beq   $097f
0917: 9b 70     dec   $70+x
0919: d0 5e     bne   $0979
091b: 3f d2 0b  call  $0bd2
091e: 68 ff     cmp   a,#$ff		; vcmd ff - end repeat/return
0920: d0 1e     bne   $0940
0922: e4 47     mov   a,$47
0924: 0e a9 00  tset1 $00a9
0927: 4e a7 00  tclr1 $00a7
092a: 4e a6 00  tclr1 $00a6
092d: 4e 49 00  tclr1 $0049
0930: 4e 4b 00  tclr1 $004b
0933: e8 00     mov   a,#$00
0935: d4 30     mov   $30+x,a
0937: d4 31     mov   $31+x,a
0939: d4 20     mov   $20+x,a
093b: d4 21     mov   $21+x,a
093d: 5f 7f 09  jmp   $097f
; vcmd branches
0940: 30 17     bmi   $0959a		; vcmds 01-7f - note info:
0942: d5 00 02  mov   $0200+x,a		;   set cmd as duration
0945: 3f d2 0b  call  $0bd2		;   read next byte
0948: 30 0f     bmi   $0959		;   if not note then
094a: d5 01 02  mov   $0201+x,a		;   set dur% from next byte
094d: 3f d2 0b  call  $0bd2
0950: 30 07     bmi   $0959		;   if not note then
0952: 1c        asl   a
0953: d5 10 02  mov   $0210+x,a		;   set per-note vol from next byte
0956: 3f d2 0b  call  $0bd2
; vcmd branches 80-ff
0959: 68 de     cmp   a,#$de
095b: 90 05     bcc   $0962
095d: 3f dc 0b  call  $0bdc
0960: 2f b9     bra   $091b
0962: f5 01 02  mov   a,$0201+x
0965: f0 03     beq   $096a
0967: 3f 71 05  call  $0571
096a: f5 01 02  mov   a,$0201+x
096d: d4 80     mov   $80+x,a
096f: f5 00 02  mov   a,$0200+x
0972: d4 70     mov   $70+x,a
0974: f0 a5     beq   $091b
0976: 3f 19 0e  call  $0e19
0979: 3f d0 10  call  $10d0
097c: 3f 4f 0f  call  $0f4f
097f: 1d        dec   x
0980: 1d        dec   x
0981: 4b 47     lsr   $47
0983: d0 82     bne   $0907
0985: 6f        ret

0986: 8d 00     mov   y,#$00
0988: f7 40     mov   a,($40)+y
098a: 3a 40     incw  $40
098c: 2d        push  a
098d: f7 40     mov   a,($40)+y
098f: 3a 40     incw  $40
0991: fd        mov   y,a
0992: ae        pop   a
0993: 6f        ret

0994: cd 0e     mov   x,#$0e
0996: e8 ff     mov   a,#$ff
0998: d5 01 03  mov   $0301+x,a
099b: d4 90     mov   $90+x,a
099d: 3f 60 0c  call  $0c60
09a0: d5 a0 03  mov   $03a0+x,a
09a3: d5 a1 03  mov   $03a1+x,a
09a6: d5 90 03  mov   $0390+x,a
09a9: d5 91 03  mov   $0391+x,a
09ac: d5 f0 02  mov   $02f0+x,a
09af: d5 80 02  mov   $0280+x,a
09b2: d4 d1     mov   $d1+x,a
09b4: d4 e1     mov   $e1+x,a
09b6: d4 80     mov   $80+x,a
09b8: 1d        dec   x
09b9: 1d        dec   x
09ba: 10 da     bpl   $0996
09bc: c4 5a     mov   $5a,a
09be: c4 69     mov   $69,a
09c0: c4 62     mov   $62,a
09c2: c4 64     mov   $64,a
09c4: c4 54     mov   $54,a
09c6: c4 50     mov   $50,a
09c8: c4 42     mov   $42,a
09ca: c4 1a     mov   $1a,a
09cc: c4 19     mov   $19,a
09ce: c4 a3     mov   $a3,a
09d0: c4 a4     mov   $a4,a
09d2: c4 1b     mov   $1b,a
09d4: c4 ac     mov   $ac,a
09d6: bc        inc   a
09d7: 3f b8 0d  call  $0db8
09da: 8f ff 1d  mov   $1d,#$ff
09dd: 8f c0 59  mov   $59,#$c0
09e0: 8f 20 53  mov   $53,#$20
09e3: e8 60     mov   a,#$60
09e5: 3f 64 05  call  $0564
09e8: 6f        ret

09e9: 3f 06 0a  call  $0a06
09ec: 3f 94 09  call  $0994
09ef: 3f dc 12  call  $12dc
09f2: 6f        ret

09f3: e8 02     mov   a,#$02	; play song in A
09f5: c4 04     mov   $04,a
09f7: 5d        mov   x,a
09f8: f5 ff 3b  mov   a,$3bff+x
09fb: fd        mov   y,a
09fc: f5 fe 3b  mov   a,$3bfe+x
09ff: da 40     movw  $40,ya
0a01: 8f 02 0c  mov   $0c,#$02
0a04: 2f 08     bra   $0a0e
0a06: e8 00     mov   a,#$00
0a08: c4 04     mov   $04,a
0a0a: c4 45     mov   $45,a
0a0c: c4 46     mov   $46,a
0a0e: e4 18     mov   a,$18
0a10: 48 ff     eor   a,#$ff
0a12: 8d 5c     mov   y,#$5c
0a14: 3f 87 07  call  $0787
0a17: 6f        ret

0a18: 5f 94 09  jmp   $0994

0a1b: e4 04     mov   a,$04
0a1d: f0 0d     beq   $0a2c
0a1f: e4 ac     mov   a,$ac
0a21: d0 09     bne   $0a2c
0a23: c4 62     mov   $62,a
0a25: c4 64     mov   $64,a
0a27: c4 ad     mov   $ad,a
0a29: bc        inc   a
0a2a: c4 ac     mov   $ac,a
0a2c: 6f        ret

0a2d: 3f 00 05  call  $0500
0a30: f0 12     beq   $0a44
0a32: 68 f0     cmp   a,#$f0
0a34: f0 d0     beq   $0a06
0a36: 68 f1     cmp   a,#$f1
0a38: f0 0a     beq   $0a44
0a3a: 68 f2     cmp   a,#$f2
0a3c: f0 dd     beq   $0a1b
0a3e: 68 ff     cmp   a,#$ff
0a40: f0 a7     beq   $09e9
0a42: 2f af     bra   $09f3
0a44: e4 04     mov   a,$04
0a46: f0 e4     beq   $0a2c
0a48: e4 0c     mov   a,$0c
0a4a: d0 03     bne   $0a4f
0a4c: 5f bc 0a  jmp   $0abc

0a4f: 6e 0c c6  dbnz  $0c,$0a18
0a52: 3f 86 09  call  $0986
0a55: d0 19     bne   $0a70
0a57: fd        mov   y,a
0a58: d0 05     bne   $0a5f
0a5a: c4 04     mov   $04,a
0a5c: 5f 06 0a  jmp   $0a06

0a5f: 8b 42     dec   $42
0a61: 10 02     bpl   $0a65
0a63: c4 42     mov   $42,a
0a65: 3f 86 09  call  $0986
0a68: f8 42     mov   x,$42
0a6a: f0 e6     beq   $0a52
0a6c: da 40     movw  $40,ya
0a6e: 2f e2     bra   $0a52
0a70: da 16     movw  $16,ya
0a72: 8d 0e     mov   y,#$0e
0a74: e8 80     mov   a,#$80
0a76: c4 47     mov   $47,a
0a78: e4 47     mov   a,$47
0a7a: 24 18     and   a,$18
0a7c: d0 0c     bne   $0a8a
0a7e: f7 16     mov   a,($16)+y
0a80: d6 30 00  mov   $0030+y,a
0a83: fc        inc   y
0a84: f7 16     mov   a,($16)+y
0a86: d6 30 00  mov   $0030+y,a
0a89: dc        dec   y
0a8a: dc        dec   y
0a8b: dc        dec   y
0a8c: 4b 47     lsr   $47
0a8e: d0 e8     bne   $0a78
0a90: cd 00     mov   x,#$00
0a92: 8f 01 47  mov   $47,#$01
0a95: f4 31     mov   a,$31+x
0a97: f0 0b     beq   $0aa4
0a99: e8 00     mov   a,#$00
0a9b: d4 71     mov   $71+x,a
0a9d: d4 b0     mov   $b0+x,a
0a9f: d4 b1     mov   $b1+x,a
0aa1: bc        inc   a
0aa2: d4 70     mov   $70+x,a
0aa4: 3d        inc   x
0aa5: 3d        inc   x
0aa6: 0b 47     asl   $47
0aa8: d0 eb     bne   $0a95
0aaa: 2f 4c     bra   $0af8
0aac: 01        tcall 0
0aad: 00        nop
0aae: 02 00     set0  $00
0ab0: 04 00     or    a,$00
0ab2: 08 00     or    a,#$00
0ab4: 10 00     bpl   $0ab6
0ab6: 20        clrp
0ab7: 00        nop
0ab8: 40        setp
0ab9: 00        nop
0aba: 80        setc
0abb: 00        nop
0abc: e4 04     mov   a,$04
0abe: d0 01     bne   $0ac1
0ac0: 6f        ret

0ac1: e4 1f     mov   a,$1f
0ac3: d0 39     bne   $0afe
0ac5: 8f 00 a4  mov   $a4,#$00
0ac8: cd 00     mov   x,#$00
0aca: 8f 01 47  mov   $47,#$01
0acd: e4 18     mov   a,$18
0acf: 24 47     and   a,$47
0ad1: d0 1f     bne   $0af2
0ad3: f4 90     mov   a,$90+x
0ad5: 68 ff     cmp   a,#$ff
0ad7: f0 19     beq   $0af2
0ad9: 4d        push  x
0ada: 5d        mov   x,a
0adb: f5 ac 0a  mov   a,$0aac+x
0ade: 24 a3     and   a,$a3
0ae0: f0 03     beq   $0ae5
0ae2: 09 47 a4  or    ($a4),($47)
0ae5: ce        pop   x
0ae6: 3f 65 06  call  $0665
0ae9: 3f e2 0f  call  $0fe2
0aec: 3f df 10  call  $10df
0aef: 3f b4 10  call  $10b4
0af2: 3d        inc   x
0af3: 3d        inc   x
0af4: 0b 47     asl   $47
0af6: d0 d5     bne   $0acd
0af8: 8f 00 5f  mov   $5f,#$00
0afb: 8f 00 5e  mov   $5e,#$00
0afe: cd 00     mov   x,#$00
0b00: 8f 01 47  mov   $47,#$01
0b03: e4 18     mov   a,$18
0b05: 24 47     and   a,$47
0b07: d0 5f     bne   $0b68
0b09: d8 44     mov   $44,x
0b0b: f4 31     mov   a,$31+x
0b0d: f0 59     beq   $0b68
0b0f: 9b 70     dec   $70+x
0b11: d0 55     bne   $0b68
0b13: 3f d2 0b  call  $0bd2
0b16: 68 ff     cmp   a,#$ff
0b18: d0 1a     bne   $0b34
0b1a: f4 71     mov   a,$71+x
0b1c: d0 03     bne   $0b21
0b1e: 5f 52 0a  jmp   $0a52

0b21: 3f 50 0d  call  $0d50
0b24: 9b 71     dec   $71+x
0b26: d0 eb     bne   $0b13
0b28: f5 30 02  mov   a,$0230+x
0b2b: d4 30     mov   $30+x,a
0b2d: f5 31 02  mov   a,$0231+x
0b30: d4 31     mov   $31+x,a
0b32: 2f df     bra   $0b13
0b34: 30 17     bmi   $0b4d
0b36: d5 00 02  mov   $0200+x,a
0b39: 3f d2 0b  call  $0bd2
0b3c: 30 0f     bmi   $0b4d
0b3e: d5 01 02  mov   $0201+x,a
0b41: 3f d2 0b  call  $0bd2
0b44: 30 07     bmi   $0b4d
0b46: 1c        asl   a
0b47: d5 10 02  mov   $0210+x,a
0b4a: 3f d2 0b  call  $0bd2
0b4d: 68 de     cmp   a,#$de
0b4f: 90 05     bcc   $0b56
0b51: 3f c0 0b  call  $0bc0
0b54: 2f bd     bra   $0b13
0b56: f5 01 02  mov   a,$0201+x
0b59: f0 03     beq   $0b5e
0b5b: 3f db 05  call  $05db
0b5e: f5 00 02  mov   a,$0200+x
0b61: d4 70     mov   $70+x,a
0b63: f0 ae     beq   $0b13
0b65: 3f 19 0e  call  $0e19
0b68: 3d        inc   x
0b69: 3d        inc   x
0b6a: 0b 47     asl   $47
0b6c: d0 95     bne   $0b03
0b6e: e4 54     mov   a,$54
0b70: f0 0b     beq   $0b7d
0b72: ba 56     movw  ya,$56
0b74: 7a 52     addw  ya,$52
0b76: 6e 54 02  dbnz  $54,$0b7b
0b79: ba 54     movw  ya,$54
0b7b: da 52     movw  $52,ya
0b7d: e4 69     mov   a,$69
0b7f: f0 15     beq   $0b96
0b81: ba 65     movw  ya,$65
0b83: 7a 61     addw  ya,$61
0b85: da 61     movw  $61,ya
0b87: ba 67     movw  ya,$67
0b89: 7a 63     addw  ya,$63
0b8b: 6e 69 06  dbnz  $69,$0b94
0b8e: ba 69     movw  ya,$69
0b90: da 61     movw  $61,ya
0b92: eb 6b     mov   y,$6b
0b94: da 63     movw  $63,ya
0b96: e4 5a     mov   a,$5a
0b98: f0 0e     beq   $0ba8
0b9a: ba 5c     movw  ya,$5c
0b9c: 7a 58     addw  ya,$58
0b9e: 6e 5a 02  dbnz  $5a,$0ba3
0ba1: ba 5a     movw  ya,$5a
0ba3: da 58     movw  $58,ya
0ba5: 8f ff 5e  mov   $5e,#$ff
0ba8: e4 1f     mov   a,$1f
0baa: d0 13     bne   $0bbf
0bac: fa a4 4a  mov   ($4a),($a4)
0baf: e4 45     mov   a,$45
0bb1: 0e a8 00  tset1 $00a8
0bb4: e4 46     mov   a,$46
0bb6: 0e a9 00  tset1 $00a9
0bb9: c4 45     mov   $45,a
0bbb: e8 00     mov   a,#$00
0bbd: c4 46     mov   $46,a
0bbf: 6f        ret

; dispatch vcmd in A (de-ff)
0bc0: 1c        asl   a
0bc1: fd        mov   y,a
0bc2: f6 b1 0d  mov   a,$0db1+y
0bc5: 2d        push  a
0bc6: f6 b0 0d  mov   a,$0db0+y
0bc9: 2d        push  a
0bca: dd        mov   a,y
0bcb: 5c        lsr   a
0bcc: fd        mov   y,a
0bcd: f6 4e 0e  mov   a,$0e4e+y
0bd0: f0 08     beq   $0bda
; read new argument to A and Y
0bd2: e7 30     mov   a,($30+x)
; advance reading ptr
0bd4: bb 30     inc   $30+x
0bd6: d0 02     bne   $0bda
0bd8: bb 31     inc   $31+x
0bda: fd        mov   y,a
0bdb: 6f        ret

0bdc: 1c        asl   a
0bdd: fd        mov   y,a
0bde: f6 11 0e  mov   a,$0e11+y
0be1: 2d        push  a
0be2: f6 10 0e  mov   a,$0e10+y
0be5: 2d        push  a
0be6: dd        mov   a,y
0be7: 5c        lsr   a
0be8: fd        mov   y,a
0be9: f6 ae 0e  mov   a,$0eae+y
0bec: f0 ec     beq   $0bda
0bee: 5f d2 0b  jmp   $0bd2

; vcmd de - set instrument
0bf1: d5 11 02  mov   $0211+x,a
0bf4: 6f        ret

0bf5: 4d        push  x
0bf6: f4 90     mov   a,$90+x
0bf8: 5d        mov   x,a
0bf9: f5 11 02  mov   a,$0211+x
0bfc: ce        pop   x
0bfd: fd        mov   y,a
0bfe: 10 06     bpl   $0c06
0c00: 80        setc
0c01: a8 ca     sbc   a,#$ca
0c03: 60        clrc
0c04: 84 4f     adc   a,$4f
0c06: 8d 06     mov   y,#$06
0c08: cf        mul   ya
0c09: da 14     movw  $14,ya
0c0b: 60        clrc
0c0c: 98 fe 14  adc   $14,#$fe
0c0f: 98 3b 15  adc   $15,#$3b
0c12: 8d 04     mov   y,#$04
0c14: cb 12     mov   $12,y
0c16: f7 14     mov   a,($14)+y
0c18: 10 11     bpl   $0c2b
0c1a: 28 1f     and   a,#$1f
0c1c: 38 20 48  and   $48,#$20
0c1f: 0e 48 00  tset1 $0048
0c22: e4 47     mov   a,$47
0c24: 0e 49 00  tset1 $0049
0c27: e8 00     mov   a,#$00
0c29: 2f 07     bra   $0c32
0c2b: e4 47     mov   a,$47
0c2d: 4e 49 00  tclr1 $0049
0c30: f7 14     mov   a,($14)+y
0c32: 3f 6a 07  call  $076a
0c35: fc        inc   y
0c36: ad 08     cmp   y,#$08
0c38: d0 f6     bne   $0c30
0c3a: f7 14     mov   a,($14)+y
0c3c: d5 21 02  mov   $0221+x,a
0c3f: fc        inc   y
0c40: f7 14     mov   a,($14)+y
0c42: d5 20 02  mov   $0220+x,a
0c45: 6f        ret

0c46: 8d 06     mov   y,#$06
0c48: cf        mul   ya
0c49: da 14     movw  $14,ya
0c4b: 60        clrc
0c4c: 98 fc 14  adc   $14,#$fc
0c4f: 98 19 15  adc   $15,#$19
0c52: 8d 04     mov   y,#$04
0c54: cb 12     mov   $12,y
0c56: f7 14     mov   a,($14)+y
0c58: 30 c0     bmi   $0c1a
0c5a: 60        clrc
0c5b: 88 20     adc   a,#$20
0c5d: 5f 32 0c  jmp   $0c32

0c60: e8 0a     mov   a,#$0a
; vcmd df - pan
0c62: d5 51 03  mov   $0351+x,a
0c65: 28 1f     and   a,#$1f
0c67: d5 31 03  mov   $0331+x,a
0c6a: e8 00     mov   a,#$00
0c6c: d5 30 03  mov   $0330+x,a
0c6f: 6f        ret

; vcmd e0 - pan fade
0c70: d4 b1     mov   $b1+x,a
0c72: 2d        push  a
0c73: 3f d2 0b  call  $0bd2
0c76: d5 50 03  mov   $0350+x,a
0c79: 80        setc
0c7a: b5 31 03  sbc   a,$0331+x
0c7d: ce        pop   x
0c7e: 3f 50 0e  call  $0e50
0c81: d5 40 03  mov   $0340+x,a
0c84: dd        mov   a,y
0c85: d5 41 03  mov   $0341+x,a
0c88: 6f        ret

; vcmd e1 - vibrato on
0c89: d5 b0 02  mov   $02b0+x,a
0c8c: 3f d2 0b  call  $0bd2
0c8f: d5 a1 02  mov   $02a1+x,a
0c92: 3f d2 0b  call  $0bd2
; vcmd e2 - vibrato off
0c95: d4 d1     mov   $d1+x,a
0c97: d5 c1 02  mov   $02c1+x,a
0c9a: e8 00     mov   a,#$00
0c9c: d5 b1 02  mov   $02b1+x,a
0c9f: 6f        ret

; vcmd e8 - vibrato fade
0ca0: d5 b1 02  mov   $02b1+x,a
0ca3: 2d        push  a
0ca4: 8d 00     mov   y,#$00
0ca6: f4 d1     mov   a,$d1+x
0ca8: ce        pop   x
0ca9: 9e        div   ya,x
0caa: f8 44     mov   x,$44
0cac: d5 c0 02  mov   $02c0+x,a
0caf: 6f        ret

; vcmd ee (music) - master volume
0cb0: e8 00     mov   a,#$00
0cb2: da 58     movw  $58,ya
0cb4: 6f        ret

; vcmd ef (music)  - master volume fade
0cb5: c4 5a     mov   $5a,a
0cb7: 3f d2 0b  call  $0bd2
0cba: c4 5b     mov   $5b,a
0cbc: 80        setc
0cbd: a4 59     sbc   a,$59
0cbf: f8 5a     mov   x,$5a
0cc1: 3f 50 0e  call  $0e50
0cc4: da 5c     movw  $5c,ya
0cc6: 6f        ret

; vcmd f0 (music) - tempo
0cc7: e8 00     mov   a,#$00
0cc9: da 52     movw  $52,ya
0ccb: 6f        ret

; vcmd f1 (music) - tempo fade
0ccc: c4 54     mov   $54,a
0cce: 3f d2 0b  call  $0bd2
0cd1: c4 55     mov   $55,a
0cd3: 80        setc
0cd4: a4 53     sbc   a,$53
0cd6: f8 54     mov   x,$54
0cd8: 3f 50 0e  call  $0e50
0cdb: da 56     movw  $56,ya
0cdd: 6f        ret

; vcmd f2 - global transpose
0cde: c4 50     mov   $50,a
0ce0: 6f        ret

; vcmd f3 - per-voice transpose
0ce1: d5 f0 02  mov   $02f0+x,a
0ce4: 6f        ret

; vcmd e3 - tremolo on
0ce5: d5 e0 02  mov   $02e0+x,a
0ce8: 3f d2 0b  call  $0bd2
0ceb: d5 d1 02  mov   $02d1+x,a
0cee: 3f d2 0b  call  $0bd2
; vcmd e4 - tremolo off
0cf1: d4 e1     mov   $e1+x,a
0cf3: 6f        ret

; vcmd eb - pitch envelope (release)
0cf4: e8 01     mov   a,#$01
0cf6: 2f 02     bra   $0cfa
; vcmd ea - pitch envelope (attack)
0cf8: e8 00     mov   a,#$00
0cfa: d5 90 02  mov   $0290+x,a
0cfd: dd        mov   a,y
0cfe: d5 81 02  mov   $0281+x,a
0d01: 3f d2 0b  call  $0bd2
0d04: d5 80 02  mov   $0280+x,a
0d07: 3f d2 0b  call  $0bd2
0d0a: d5 91 02  mov   $0291+x,a
0d0d: 6f        ret

; vcmd ec - pitch envelope off
0d0e: d5 80 02  mov   $0280+x,a
0d11: 6f        ret

; vcmd e5 - volume
0d12: d5 01 03  mov   $0301+x,a
0d15: e8 00     mov   a,#$00
0d17: d5 00 03  mov   $0300+x,a
0d1a: 6f        ret

; vcmd e6 - volume fade
0d1b: d4 b0     mov   $b0+x,a
0d1d: 2d        push  a
0d1e: 3f d2 0b  call  $0bd2
0d21: d5 20 03  mov   $0320+x,a
0d24: 80        setc
0d25: b5 01 03  sbc   a,$0301+x
0d28: ce        pop   x
0d29: 3f 50 0e  call  $0e50
0d2c: d5 10 03  mov   $0310+x,a
0d2f: dd        mov   a,y
0d30: d5 11 03  mov   $0311+x,a
0d33: 6f        ret

0d34: d5 90 03  mov   $0390+x,a
0d37: 6f        ret

; vcmd e7 - call subroutine
0d38: d5 40 02  mov   $0240+x,a
0d3b: 3f d2 0b  call  $0bd2
0d3e: d5 41 02  mov   $0241+x,a
0d41: 3f d2 0b  call  $0bd2
0d44: d4 71     mov   $71+x,a
0d46: f4 30     mov   a,$30+x
0d48: d5 30 02  mov   $0230+x,a
0d4b: f4 31     mov   a,$31+x
0d4d: d5 31 02  mov   $0231+x,a
0d50: f5 40 02  mov   a,$0240+x
0d53: d4 30     mov   $30+x,a
0d55: f5 41 02  mov   a,$0241+x
0d58: d4 31     mov   $31+x,a
0d5a: 6f        ret

; vcmd f4 - echo vbits/volume
0d5b: c4 a3     mov   $a3,a
0d5d: 3f d2 0b  call  $0bd2
0d60: e8 00     mov   a,#$00
0d62: da 61     movw  $61,ya
0d64: 3f d2 0b  call  $0bd2
0d67: e8 00     mov   a,#$00
0d69: da 63     movw  $63,ya
0d6b: b2 48     clr5  $48
0d6d: 6f        ret

; vcmd f7 - echo volume fade
0d6e: c4 69     mov   $69,a
0d70: 3f d2 0b  call  $0bd2
0d73: c4 6a     mov   $6a,a
0d75: 80        setc
0d76: a4 62     sbc   a,$62
0d78: f8 69     mov   x,$69
0d7a: 3f 50 0e  call  $0e50
0d7d: da 65     movw  $65,ya
0d7f: 3f d2 0b  call  $0bd2
0d82: c4 6b     mov   $6b,a
0d84: 80        setc
0d85: a4 64     sbc   a,$64
0d87: f8 69     mov   x,$69
0d89: 3f 50 0e  call  $0e50
0d8c: da 67     movw  $67,ya
0d8e: 6f        ret

; vcmd f5 - disable echo
0d8f: da 61     movw  $61,ya
0d91: da 63     movw  $63,ya
0d93: a2 48     set5  $48
0d95: 6f        ret

; vcmd f6 - set echo params
0d96: 3f b8 0d  call  $0db8
0d99: 3f d2 0b  call  $0bd2
0d9c: c4 4e     mov   $4e,a
0d9e: 3f d2 0b  call  $0bd2
0da1: 8d 08     mov   y,#$08
0da3: cf        mul   ya
0da4: 5d        mov   x,a
0da5: 8d 0f     mov   y,#$0f
0da7: f5 8e 12  mov   a,$128e+x
0daa: 3f 87 07  call  $0787
0dad: 3d        inc   x
0dae: dd        mov   a,y
0daf: 60        clrc
0db0: 88 10     adc   a,#$10
0db2: fd        mov   y,a
0db3: 10 f2     bpl   $0da7
0db5: f8 44     mov   x,$44
0db7: 6f        ret
; set echo delay to A
0db8: c4 4d     mov   $4d,a
0dba: 8d 7d     mov   y,#$7d
0dbc: cc f2 00  mov   $00f2,y
0dbf: e5 f3 00  mov   a,$00f3
0dc2: 64 4d     cmp   a,$4d
0dc4: f0 2b     beq   $0df1
0dc6: 28 0f     and   a,#$0f
0dc8: 48 ff     eor   a,#$ff
0dca: f3 4c 03  bbc7  $4c,$0dd0
0dcd: 60        clrc
0dce: 84 4c     adc   a,$4c
0dd0: c4 4c     mov   $4c,a
0dd2: 8d 04     mov   y,#$04
0dd4: f6 ad 12  mov   a,$12ad+y
0dd7: c5 f2 00  mov   $00f2,a
0dda: e8 00     mov   a,#$00
0ddc: c5 f3 00  mov   $00f3,a
0ddf: fe f3     dbnz  y,$0dd4
0de1: e4 48     mov   a,$48
0de3: 08 20     or    a,#$20
0de5: 8d 6c     mov   y,#$6c
0de7: 3f 87 07  call  $0787
0dea: e4 4d     mov   a,$4d
0dec: 8d 7d     mov   y,#$7d
0dee: 3f 87 07  call  $0787
0df1: 1c        asl   a
0df2: 1c        asl   a
0df3: 1c        asl   a
0df4: 48 ff     eor   a,#$ff
0df6: 80        setc
0df7: 88 ff     adc   a,#$ff
0df9: 8d 6d     mov   y,#$6d
0dfb: 5f 87 07  jmp   $0787

; vcmd f8 - set perc patch base
0dfe: c4 4f     mov   $4f,a
0e00: 6f        ret

; vcmd f9
0e01: c4 19     mov   $19,a
0e03: 3f d2 0b  call  $0bd2
0e06: c4 1a     mov   $1a,a
0e08: fa 1a 19  mov   ($19),($1a)
0e0b: c4 1d     mov   $1d,a
0e0d: 6f        ret

; vcmd fb
0e0e: bc        inc   a
0e0f: d5 f0 03  mov   $03f0+x,a
0e12: 6f        ret

; vcmd fc
0e13: bc        inc   a
; vcmd fd
0e14: c4 6f     mov   $6f,a
0e16: 5f 0e 0a  jmp   $0a0e

0e19: f4 c0     mov   a,$c0+x
0e1b: d0 32     bne   $0e4f
0e1d: e7 30     mov   a,($30+x)
0e1f: 68 e9     cmp   a,#$e9
0e21: d0 2c     bne   $0e4f
0e23: 3f d4 0b  call  $0bd4
0e26: 3f d2 0b  call  $0bd2
; vcmd e9 - pitch slide
0e29: d4 c1     mov   $c1+x,a
0e2b: 3f d2 0b  call  $0bd2
0e2e: d4 c0     mov   $c0+x,a
0e30: 3f d2 0b  call  $0bd2
0e33: 60        clrc
0e34: 84 50     adc   a,$50
0e36: 95 f0 02  adc   a,$02f0+x
0e39: 28 7f     and   a,#$7f
0e3b: d5 80 03  mov   $0380+x,a
0e3e: 80        setc
0e3f: a4 11     sbc   a,$11
0e41: fb c0     mov   y,$c0+x
0e43: 6d        push  y
0e44: ce        pop   x
0e45: 3f 50 0e  call  $0e50
0e48: d5 70 03  mov   $0370+x,a
0e4b: dd        mov   a,y
0e4c: d5 71 03  mov   $0371+x,a
0e4f: 6f        ret

0e50: ed        notc
0e51: 6b 12     ror   $12
0e53: 10 03     bpl   $0e58
0e55: 48 ff     eor   a,#$ff
0e57: bc        inc   a
0e58: 8d 00     mov   y,#$00
0e5a: 9e        div   ya,x
0e5b: 2d        push  a
0e5c: e8 00     mov   a,#$00
0e5e: 9e        div   ya,x
0e5f: ee        pop   y
0e60: f8 44     mov   x,$44
0e62: f3 12 06  bbc7  $12,$0e6b
0e65: da 14     movw  $14,ya
0e67: ba 0e     movw  ya,$0e
0e69: 9a 14     subw  ya,$14
0e6b: 6f        ret

; vcmd dispatch table (music)
0e6d: dw $0bf1 ; de - set instrument
0e6f: dw $0c62 ; df - pan
0e71: dw $0c70 ; e0 - pan fade
0e73: dw $0c89 ; e1 - vibrato on
0e75: dw $0c95 ; e2 - vibrato off
0e77: dw $0ce5 ; e3 - tremolo on
0e79: dw $0cf1 ; e4 - tremolo off
0e7b: dw $0d12 ; e5 - volume
0e7d: dw $0d1b ; e6 - volume fade
0e7f: dw $0d38 ; e7 - call subroutine
0e81: dw $0ca0 ; e8 - vibrato fade
0e83: dw $0e29 ; e9 - pitch slide
0e85: dw $0cf8 ; ea - pitch envelope (attack)
0e87: dw $0cf4 ; eb - pitch envelope (release)
0e89: dw $0d0e ; ec - pitch envelope off
0e8b: dw $1208 ; ed - tuning
0e8d: dw $0cb0 ; ee - master volume
0e8f: dw $0cb5 ; ef - master volume fade
0e91: dw $0cc7 ; f0 - tempo
0e93: dw $0ccc ; f1 - tempo fade
0e95: dw $0cde ; f2 - global transpose
0e97: dw $0ce1 ; f3 - per-voice transpose
0e99: dw $0d5b ; f4 - echo vbits/volume
0e9b: dw $0d8f ; f5 - disable echo
0e9d: dw $0d96 ; f6 - set echo params
0e9f: dw $0d6e ; f7 - echo volume fade
0ea1: dw $0dfe ; f8 - set perc patch base
0ea3: dw $0e01 ; f9
0ea5: dw $1205 ; fa
0ea7: dw $0e0e ; fb
0ea9: dw $0e13 ; fc
0eaa: dw $0e14 ; fd

; vcmd lengths (music)
0eac: db $01,$01,$02,$03,$00,$03,$00,$01 ; de-e5
0eb4: db $02,$03,$01,$03,$03,$03,$00,$03 ; e6-ed
0ebc: db $01,$02,$01,$02,$01,$01,$03,$00 ; ee-f5
0ec4: db $03,$03,$01,$02,$01,$00,$00,$00 ; f6-fd

; vcmd dispatch table (sfx)
0ecc: dw $0bf1 ; de - set instrument
0ece: dw $0c62 ; df - pan
0ed0: dw $0c70 ; e0 - pan fade
0ed2: dw $0c89 ; e1 - vibrato on
0ed4: dw $0c95 ; e2 - vibrato off
0ed6: dw $0ce5 ; e3 - tremolo on
0ed8: dw $0cf1 ; e4 - tremolo off
0eda: dw $0d12 ; e5 - volume
0edc: dw $0d1b ; e6 - volume fade
0ede: dw $0d38 ; e7 - call subroutine
0ee0: dw $0ca0 ; e8 - vibrato fade
0ee2: dw $0e29 ; e9 - pitch slide
0ee4: dw $0cf8 ; ea - pitch envelope (attack)
0ee6: dw $0cf4 ; eb - pitch envelope (release)
0ee8: dw $0d0e ; ec - pitch envelope off
0eea: dw $1241 ; ed - tuning
0eec: dw $0f2c ; ee
0eee: dw $0f32 ; ef
0ef0: dw $0f38 ; f0
0ef2: dw $0f49 ; f1
0ef4: dw $0cde ; f2 - global transpose
0ef6: dw $0ce1 ; f3 - per-voice transpose
0ef8: dw $0d5b ; f4 - echo vbits/volume
0efa: dw $0d8f ; f5 - disable echo
0efc: dw $0d96 ; f6 - set echo params
0efe: dw $0d6e ; f7 - echo volume fade
0f00: dw $0dfe ; f8 - set perc patch base
0f02: dw $0e01 ; f9
0f04: dw $1205 ; fa
0f06: dw $0e0e ; fb
0f08: dw $0e13 ; fc
0f0a: dw $0e14 ; fd

; vcmd lengths (sfx)
0f0c: db $01,$01,$02,$03,$00,$03,$00,$01 ; de-e5
0f14: db $02,$03,$01,$03,$03,$03,$00,$03 ; e6-ed
0f1c: db $00,$00,$01,$00,$01,$01,$03,$00 ; ee-f5
0f24: db $03,$03,$01,$02,$00,$00,$00,$00 ; f6-fd

; vcmd ee (sfx)
0f2c: e4 47     mov   a,$47
0f2e: 0e 4b 00  tset1 $004b
0f31: 6f        ret

; vcmd ef (sfx)
0f32: e4 47     mov   a,$47
0f34: 4e 4b 00  tclr1 $004b
0f37: 6f        ret

; vcmd f0 (sfx)
0f38: 2d        push  a
0f39: e4 48     mov   a,$48
0f3b: 28 c0     and   a,#$c0
0f3d: c4 48     mov   $48,a
0f3f: ae        pop   a
0f40: 0e 48 00  tset1 $0048
0f43: e4 47     mov   a,$47
0f45: 0e 49 00  tset1 $0049
0f48: 6f        ret

; vcmd f1 (sfx)
0f49: e4 47     mov   a,$47
0f4b: 4e 49 00  tclr1 $0049
0f4e: 6f        ret

0f4f: f4 b0     mov   a,$b0+x
0f51: f0 09     beq   $0f5c
0f53: e8 00     mov   a,#$00
0f55: 8d 03     mov   y,#$03
0f57: 9b b0     dec   $b0+x
0f59: 3f 93 10  call  $1093
0f5c: fb e1     mov   y,$e1+x
0f5e: f0 20     beq   $0f80
0f60: f5 e0 02  mov   a,$02e0+x
0f63: de e0 18  cbne  $e0+x,$0f7e
0f66: f5 d0 02  mov   a,$02d0+x
0f69: 10 07     bpl   $0f72
0f6b: fc        inc   y
0f6c: d0 04     bne   $0f72
0f6e: e8 80     mov   a,#$80
0f70: 2f 04     bra   $0f76
0f72: 60        clrc
0f73: 95 d1 02  adc   a,$02d1+x
0f76: d5 d0 02  mov   $02d0+x,a
0f79: 3f c7 0f  call  $0fc7
0f7c: 2f 07     bra   $0f85
0f7e: bb e0     inc   $e0+x
0f80: e8 ff     mov   a,#$ff
0f82: 3f d2 0f  call  $0fd2
0f85: f4 b1     mov   a,$b1+x
0f87: f0 09     beq   $0f92
0f89: e8 30     mov   a,#$30
0f8b: 8d 03     mov   y,#$03
0f8d: 9b b1     dec   $b1+x
0f8f: 3f 90 10  call  $1090
0f92: f5 31 03  mov   a,$0331+x
0f95: c4 11     mov   $11,a
0f97: f5 30 03  mov   a,$0330+x
0f9a: c4 10     mov   $10,a
0f9c: 8f 00 12  mov   $12,#$00
0f9f: 3f 69 10  call  $1069
0fa2: eb 12     mov   y,$12
0fa4: 3f 6a 07  call  $076a
0fa7: 8d 14     mov   y,#$14
0fa9: e8 00     mov   a,#$00
0fab: 9a 10     subw  ya,$10
0fad: da 10     movw  $10,ya
0faf: ab 12     inc   $12
0fb1: 3f 69 10  call  $1069
0fb4: eb 12     mov   y,$12
0fb6: 3f 6a 07  call  $076a
0fb9: 6f        ret

0fba: e2 13     set7  $13
0fbc: eb 51     mov   y,$51
0fbe: f5 d1 02  mov   a,$02d1+x
0fc1: cf        mul   ya
0fc2: dd        mov   a,y
0fc3: 60        clrc
0fc4: 95 d0 02  adc   a,$02d0+x
0fc7: 1c        asl   a
0fc8: 90 02     bcc   $0fcc
0fca: 48 ff     eor   a,#$ff
0fcc: fb e1     mov   y,$e1+x
0fce: cf        mul   ya
0fcf: dd        mov   a,y
0fd0: 48 ff     eor   a,#$ff
0fd2: fd        mov   y,a
0fd3: f5 10 02  mov   a,$0210+x
0fd6: cf        mul   ya
0fd7: f5 01 03  mov   a,$0301+x
0fda: cf        mul   ya
0fdb: dd        mov   a,y
0fdc: cf        mul   ya
0fdd: dd        mov   a,y
0fde: d5 21 03  mov   $0321+x,a
0fe1: 6f        ret

0fe2: f4 91     mov   a,$91+x
0fe4: c4 a0     mov   $a0,a
0fe6: d8 a1     mov   $a1,x
0fe8: f4 90     mov   a,$90+x
0fea: 5d        mov   x,a
0feb: f4 b0     mov   a,$b0+x
0fed: f0 09     beq   $0ff8
0fef: e8 00     mov   a,#$00
0ff1: 8d 03     mov   y,#$03
0ff3: 9b b0     dec   $b0+x
0ff5: 3f 90 10  call  $1090
0ff8: fb e1     mov   y,$e1+x
0ffa: f0 23     beq   $101f
0ffc: f5 e0 02  mov   a,$02e0+x
0fff: de e0 1b  cbne  $e0+x,$101d
1002: 09 47 5e  or    ($5e),($47)
1005: f5 d0 02  mov   a,$02d0+x
1008: 10 07     bpl   $1011
100a: fc        inc   y
100b: d0 04     bne   $1011
100d: e8 80     mov   a,#$80
100f: 2f 04     bra   $1015
1011: 60        clrc
1012: 95 d1 02  adc   a,$02d1+x
1015: d5 d0 02  mov   $02d0+x,a
1018: 3f e9 11  call  $11e9
101b: 2f 07     bra   $1024
101d: bb e0     inc   $e0+x
101f: e8 ff     mov   a,#$ff
1021: 3f f4 11  call  $11f4
1024: f4 b1     mov   a,$b1+x
1026: f0 09     beq   $1031
1028: e8 30     mov   a,#$30
102a: 8d 03     mov   y,#$03
102c: 9b b1     dec   $b1+x
102e: 3f 90 10  call  $1090
1031: e4 47     mov   a,$47
1033: 24 5e     and   a,$5e
1035: f0 2f     beq   $1066
1037: f5 31 03  mov   a,$0331+x
103a: c4 11     mov   $11,a
103c: f5 30 03  mov   a,$0330+x
103f: c4 10     mov   $10,a
1041: 8f 00 12  mov   $12,#$00
1044: 3f 69 10  call  $1069
1047: eb 12     mov   y,$12
1049: 4d        push  x
104a: f8 a1     mov   x,$a1
104c: 3f 6a 07  call  $076a
104f: ce        pop   x
1050: 8d 14     mov   y,#$14
1052: e8 00     mov   a,#$00
1054: 9a 10     subw  ya,$10
1056: da 10     movw  $10,ya
1058: ab 12     inc   $12
105a: 3f 69 10  call  $1069
105d: eb 12     mov   y,$12
105f: 4d        push  x
1060: f8 a1     mov   x,$a1
1062: 3f 6a 07  call  $076a
1065: ce        pop   x
1066: f8 a1     mov   x,$a1
1068: 6f        ret

1069: eb 11     mov   y,$11
106b: f6 7a 12  mov   a,$127a+y
106e: 80        setc
106f: b6 79 12  sbc   a,$1279+y
1072: eb 10     mov   y,$10
1074: cf        mul   ya
1075: dd        mov   a,y
1076: eb 11     mov   y,$11
1078: 60        clrc
1079: 96 79 12  adc   a,$1279+y
107c: fd        mov   y,a
107d: f5 21 03  mov   a,$0321+x
1080: cf        mul   ya
1081: f5 51 03  mov   a,$0351+x
1084: 1c        asl   a
1085: 13 12 01  bbc0  $12,$1089
1088: 1c        asl   a
1089: dd        mov   a,y
108a: 90 03     bcc   $108f
108c: 48 ff     eor   a,#$ff
108e: bc        inc   a
108f: 6f        ret

1090: 09 47 5e  or    ($5e),($47)
1093: da 14     movw  $14,ya
1095: da 16     movw  $16,ya
1097: 4d        push  x
1098: ee        pop   y
1099: 60        clrc
109a: d0 0a     bne   $10a6
109c: 98 1f 16  adc   $16,#$1f
109f: e8 00     mov   a,#$00
10a1: d7 14     mov   ($14)+y,a
10a3: fc        inc   y
10a4: 2f 09     bra   $10af
10a6: 98 10 16  adc   $16,#$10
10a9: 3f ad 10  call  $10ad
10ac: fc        inc   y
10ad: f7 14     mov   a,($14)+y
10af: 97 16     adc   a,($16)+y
10b1: d7 14     mov   ($14)+y,a
10b3: 6f        ret

10b4: f4 80     mov   a,$80+x
10b6: f0 17     beq   $10cf
10b8: 9b 80     dec   $80+x
10ba: d0 13     bne   $10cf
10bc: e4 47     mov   a,$47
10be: 24 18     and   a,$18
10c0: d0 0d     bne   $10cf
10c2: 8d 05     mov   y,#$05
10c4: e8 00     mov   a,#$00
10c6: 3f 6a 07  call  $076a
10c9: e5 47 00  mov   a,$0047
10cc: 0e 1d 00  tset1 $001d
10cf: 6f        ret

10d0: f4 80     mov   a,$80+x
10d2: f0 0b     beq   $10df
10d4: 9b 80     dec   $80+x
10d6: d0 07     bne   $10df
10d8: 8d 05     mov   y,#$05
10da: e8 00     mov   a,#$00
10dc: 3f 6a 07  call  $076a
10df: f2 13     clr7  $13
10e1: f4 c0     mov   a,$c0+x
10e3: f0 13     beq   $10f8
10e5: f4 c1     mov   a,$c1+x
10e7: f0 04     beq   $10ed
10e9: 9b c1     dec   $c1+x
10eb: 2f 0b     bra   $10f8
10ed: e2 13     set7  $13
10ef: e8 60     mov   a,#$60
10f1: 8d 03     mov   y,#$03
10f3: 9b c0     dec   $c0+x
10f5: 3f 93 10  call  $1093
10f8: f5 61 03  mov   a,$0361+x
10fb: c4 11     mov   $11,a
10fd: f5 60 03  mov   a,$0360+x
1100: c4 10     mov   $10,a
1102: f4 d1     mov   a,$d1+x
1104: f0 4c     beq   $1152
1106: f5 b0 02  mov   a,$02b0+x
1109: de d0 44  cbne  $d0+x,$1150
110c: f5 00 01  mov   a,$0100+x
110f: 75 b1 02  cmp   a,$02b1+x
1112: d0 05     bne   $1119
1114: f5 c1 02  mov   a,$02c1+x
1117: 2f 0d     bra   $1126
1119: 40        setp
111a: bb 00     inc   $00+x
111c: 20        clrp
111d: fd        mov   y,a
111e: f0 02     beq   $1122
1120: f4 d1     mov   a,$d1+x
1122: 60        clrc
1123: 95 c0 02  adc   a,$02c0+x
1126: d4 d1     mov   $d1+x,a
1128: f5 a0 02  mov   a,$02a0+x
112b: 60        clrc
112c: 95 a1 02  adc   a,$02a1+x
112f: d5 a0 02  mov   $02a0+x,a
1132: c4 12     mov   $12,a
1134: 1c        asl   a
1135: 1c        asl   a
1136: 90 02     bcc   $113a
1138: 48 ff     eor   a,#$ff
113a: fd        mov   y,a
113b: f4 d1     mov   a,$d1+x
113d: 68 f1     cmp   a,#$f1
113f: 90 05     bcc   $1146
1141: 28 0f     and   a,#$0f
1143: cf        mul   ya
1144: 2f 04     bra   $114a
1146: cf        mul   ya
1147: dd        mov   a,y
1148: 8d 00     mov   y,#$00
114a: 3f d4 11  call  $11d4
114d: 5f d7 06  jmp   $06d7

1150: bb d0     inc   $d0+x
1152: e3 13 f8  bbs7  $13,$114d
1155: e4 47     mov   a,$47
1157: 24 ab     and   a,$ab
1159: d0 f2     bne   $114d
115b: 6f        ret

115c: f2 13     clr7  $13
115e: f4 e1     mov   a,$e1+x
1160: f0 09     beq   $116b
1162: f5 e0 02  mov   a,$02e0+x
1165: de e0 03  cbne  $e0+x,$116b
1168: 3f dc 11  call  $11dc
116b: f5 31 03  mov   a,$0331+x
116e: fd        mov   y,a
116f: f5 30 03  mov   a,$0330+x
1172: da 10     movw  $10,ya
1174: f4 b1     mov   a,$b1+x
1176: f0 0a     beq   $1182
1178: f5 41 03  mov   a,$0341+x
117b: fd        mov   y,a
117c: f5 40 03  mov   a,$0340+x
117f: 3f be 11  call  $11be
1182: f3 13 03  bbc7  $13,$1188
1185: 3f 41 10  call  $1041
1188: f2 13     clr7  $13
118a: f5 61 03  mov   a,$0361+x
118d: c4 11     mov   $11,a
118f: f5 60 03  mov   a,$0360+x
1192: c4 10     mov   $10,a
1194: f4 c0     mov   a,$c0+x
1196: f0 0e     beq   $11a6
1198: f4 c1     mov   a,$c1+x
119a: d0 0a     bne   $11a6
119c: f5 71 03  mov   a,$0371+x
119f: fd        mov   y,a
11a0: f5 70 03  mov   a,$0370+x
11a3: 3f be 11  call  $11be
11a6: f4 d1     mov   a,$d1+x
11a8: f0 a8     beq   $1152
11aa: f5 b0 02  mov   a,$02b0+x
11ad: de d0 a2  cbne  $d0+x,$1152
11b0: eb 51     mov   y,$51
11b2: f5 a1 02  mov   a,$02a1+x
11b5: cf        mul   ya
11b6: dd        mov   a,y
11b7: 60        clrc
11b8: 95 a0 02  adc   a,$02a0+x
11bb: 5f 32 11  jmp   $1132

11be: e2 13     set7  $13
11c0: cb 12     mov   $12,y
11c2: 3f 62 0e  call  $0e62
11c5: 6d        push  y
11c6: eb 51     mov   y,$51
11c8: cf        mul   ya
11c9: cb 14     mov   $14,y
11cb: 8f 00 15  mov   $15,#$00
11ce: eb 51     mov   y,$51
11d0: ae        pop   a
11d1: cf        mul   ya
11d2: 7a 14     addw  ya,$14
11d4: 3f 62 0e  call  $0e62
11d7: 7a 10     addw  ya,$10
11d9: da 10     movw  $10,ya
11db: 6f        ret

11dc: e2 13     set7  $13
11de: eb 51     mov   y,$51
11e0: f5 d1 02  mov   a,$02d1+x
11e3: cf        mul   ya
11e4: dd        mov   a,y
11e5: 60        clrc
11e6: 95 d0 02  adc   a,$02d0+x
11e9: 1c        asl   a
11ea: 90 02     bcc   $11ee
11ec: 48 ff     eor   a,#$ff
11ee: fb e1     mov   y,$e1+x
11f0: cf        mul   ya
11f1: dd        mov   a,y
11f2: 48 ff     eor   a,#$ff
11f4: eb 59     mov   y,$59
11f6: cf        mul   ya
11f7: e4 a0     mov   a,$a0
11f9: cf        mul   ya
11fa: f5 01 03  mov   a,$0301+x
11fd: cf        mul   ya
11fe: dd        mov   a,y
11ff: cf        mul   ya
1200: dd        mov   a,y
1201: d5 21 03  mov   $0321+x,a
1204: 6f        ret

; vcmd fa
1205: c4 18     mov   $18,a
1207: 6f        ret

; vcmd ed - tuning
1208: 0d        push  psw
1209: 2d        push  a
120a: f5 a0 03  mov   a,$03a0+x
120d: 0e 60 00  tset1 $0060
1210: 3f d2 0b  call  $0bd2
1213: d5 91 03  mov   $0391+x,a
1216: 3f d2 0b  call  $0bd2
1219: d5 90 03  mov   $0390+x,a
121c: 10 0d     bpl   $122b
121e: f5 91 03  mov   a,$0391+x
1221: 9c        dec   a
1222: d5 91 03  mov   $0391+x,a
1225: f5 90 03  mov   a,$0390+x
1228: 60        clrc
1229: 88 64     adc   a,#$64
122b: c4 11     mov   $11,a
122d: 4b 11     lsr   $11
122f: 1c        asl   a
1230: 84 11     adc   a,$11
1232: d5 90 03  mov   $0390+x,a
1235: ae        pop   a
1236: 8e        pop   psw
1237: d0 01     bne   $123a
1239: 6f        ret

123a: d4 70     mov   $70+x,a
123c: ae        pop   a
123d: ae        pop   a
123e: 5f 68 0b  jmp   $0b68

1241: 0d        push  psw
1242: 2d        push  a
1243: e4 47     mov   a,$47
1245: 0e ab 00  tset1 $00ab
1248: 3f d2 0b  call  $0bd2
124b: d5 91 03  mov   $0391+x,a
124e: 3f d2 0b  call  $0bd2
1251: d5 90 03  mov   $0390+x,a
1254: 10 0d     bpl   $1263
1256: f5 91 03  mov   a,$0391+x
1259: 9c        dec   a
125a: d5 91 03  mov   $0391+x,a
125d: f5 90 03  mov   a,$0390+x
1260: 60        clrc
1261: 88 64     adc   a,#$64
1263: c4 11     mov   $11,a
1265: 4b 11     lsr   $11
1267: 1c        asl   a
1268: 84 11     adc   a,$11
126a: d5 90 03  mov   $0390+x,a
126d: ae        pop   a
126e: 8e        pop   psw
126f: d0 01     bne   $1272
1271: 6f        ret

1272: d4 70     mov   $70+x,a
1274: ae        pop   a
1275: ae        pop   a
1276: 5f 7f 09  jmp   $097f

; pan table
1279: db $00,$01,$03,$07,$0d,$15,$1e,$29
1281: db $34,$42,$51,$5e,$67,$6e,$73,$77
1289: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
128e: db $7f,$00,$00,$00,$00,$00,$00,$00
1296: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
129e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
12a6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
12ae: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
12b8: db $ae,$af,$4e,$4a,$48,$a8,$0e,$49,$4b,$a9

; pitch table
12c2: dw $085f
12c4: dw $08de
12c6: dw $0965
12c8: dw $09f4
12ca: dw $0a8c
12cc: dw $0b2c
12ce: dw $0bd6
12d0: dw $0c8b
12d2: dw $0d4a
12d4: dw $0e14
12d6: dw $0eea
12d8: dw $0fcd
12da: dw $10be

12dc: e8 aa     mov   a,#$aa
12de: c5 f4 00  mov   $00f4,a
12e1: e8 bb     mov   a,#$bb
12e3: c5 f5 00  mov   $00f5,a
12e6: e5 f4 00  mov   a,$00f4
12e9: 68 cc     cmp   a,#$cc
12eb: d0 f9     bne   $12e6
12ed: 2f 20     bra   $130f
12ef: ec f4 00  mov   y,$00f4
12f2: d0 fb     bne   $12ef
12f4: 5e f4 00  cmp   y,$00f4
12f7: d0 0f     bne   $1308
12f9: e5 f5 00  mov   a,$00f5
12fc: cc f4 00  mov   $00f4,y
12ff: d7 14     mov   ($14)+y,a
1301: fc        inc   y
1302: d0 f0     bne   $12f4
1304: ab 15     inc   $15
1306: 2f ec     bra   $12f4
1308: 10 ea     bpl   $12f4
130a: 5e f4 00  cmp   y,$00f4
130d: 10 e5     bpl   $12f4
130f: e5 f6 00  mov   a,$00f6
1312: ec f7 00  mov   y,$00f7
1315: da 14     movw  $14,ya
1317: ec f4 00  mov   y,$00f4
131a: e5 f5 00  mov   a,$00f5
131d: cc f4 00  mov   $00f4,y
1320: d0 cd     bne   $12ef
1322: cd 31     mov   x,#$31
1324: c9 f1 00  mov   $00f1,x
1327: 6f        ret

