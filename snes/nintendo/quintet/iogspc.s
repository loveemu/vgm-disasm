0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 f0     cmp   x,#$f0
040a: d0 fb     bne   $0407
040c: c2 48     set6  $48
040e: bc        inc   a
040f: 3f 76 0a  call  $0a76
0412: a2 48     set5  $48
0414: e8 00     mov   a,#$00
0416: 8d 0c     mov   y,#$0c
0418: 3f 06 06  call  $0606
041b: 8d 1c     mov   y,#$1c
041d: 3f 06 06  call  $0606
0420: 8d 2c     mov   y,#$2c
0422: 3f 06 06  call  $0606
0425: 8d 3c     mov   y,#$3c
0427: 3f 06 06  call  $0606
042a: e8 10     mov   a,#$10
042c: 8d 5d     mov   y,#$5d
042e: 3f 06 06  call  $0606             ; set DIR to $1000
0431: e8 30     mov   a,#$30
0433: c4 f1     mov   $f1,a
0435: e8 10     mov   a,#$10
0437: c4 fa     mov   $fa,a
0439: e8 10     mov   a,#$10
043b: c4 fb     mov   $fb,a
043d: c4 53     mov   $53,a
043f: e8 03     mov   a,#$03
0441: c4 f1     mov   $f1,a
0443: e4 36     mov   a,$36
0445: 48 ff     eor   a,#$ff
0447: 24 4a     and   a,$4a
0449: c4 38     mov   $38,a
044b: 8d 0a     mov   y,#$0a
044d: ad 05     cmp   y,#$05
044f: f0 07     beq   $0458
0451: b0 08     bcs   $045b
0453: 69 4d 4c  cmp   ($4c),($4d)
0456: d0 0f     bne   $0467
0458: e3 4c 0c  bbs7  $4c,$0467
045b: f6 44 0e  mov   a,$0e44+y
045e: c4 f2     mov   $f2,a
0460: f6 4e 0e  mov   a,$0e4e+y
0463: 5d        mov   x,a
0464: e6        mov   a,(x)
0465: c4 f3     mov   $f3,a
0467: fe e4     dbnz  y,$044d
0469: cb 45     mov   $45,y
046b: cb 46     mov   $46,y
046d: eb fd     mov   y,$fd
046f: f0 fc     beq   $046d
0471: e8 40     mov   a,#$40
0473: cf        mul   ya
0474: 60        clrc
0475: 84 43     adc   a,$43
0477: c4 43     mov   $43,a
0479: 90 15     bcc   $0490
047b: e5 fd 0f  mov   a,$0ffd
047e: 68 14     cmp   a,#$14
0480: f0 07     beq   $0489
0482: e4 31     mov   a,$31
0484: f0 03     beq   $0489
0486: 3f 87 0e  call  $0e87
0489: 69 4d 4c  cmp   ($4c),($4d)
048c: f0 02     beq   $0490
048e: ab 4c     inc   $4c
0490: e4 53     mov   a,$53
0492: 60        clrc
0493: 84 f5     adc   a,$f5
0495: eb fe     mov   y,$fe
0497: f0 fc     beq   $0495
0499: cf        mul   ya
049a: 60        clrc
049b: 84 51     adc   a,$51
049d: c4 51     mov   $51,a
049f: b0 04     bcs   $04a5
04a1: ad 00     cmp   y,#$00
04a3: f0 46     beq   $04eb
04a5: 3f 38 07  call  $0738
04a8: e4 31     mov   a,$31
04aa: f0 37     beq   $04e3
04ac: eb 61     mov   y,$61
04ae: e4 31     mov   a,$31
04b0: cf        mul   ya
04b1: e4 3e     mov   a,$3e
04b3: cf        mul   ya
04b4: cb 6b     mov   $6b,y
04b6: eb 63     mov   y,$63
04b8: e4 31     mov   a,$31
04ba: cf        mul   ya
04bb: e4 3e     mov   a,$3e
04bd: cf        mul   ya
04be: cb 6c     mov   $6c,y
04c0: 8d 60     mov   y,#$60
04c2: e4 31     mov   a,$31
04c4: cf        mul   ya
04c5: e4 3e     mov   a,$3e
04c7: cf        mul   ya
04c8: dd        mov   a,y
04c9: c4 f7     mov   $f7,a
04cb: 8d 0c     mov   y,#$0c
04cd: 3f 06 06  call  $0606
04d0: 8d 1c     mov   y,#$1c
04d2: 3f 06 06  call  $0606
04d5: e4 30     mov   a,$30
04d7: f0 0a     beq   $04e3
04d9: 8b 31     dec   $31
04db: d0 06     bne   $04e3
04dd: 8f 00 04  mov   $04,#$00
04e0: 3f 36 06  call  $0636
04e3: cd 00     mov   x,#$00
04e5: 3f 04 05  call  $0504
04e8: 5f 43 04  jmp   $0443

04eb: e4 04     mov   a,$04
04ed: f0 12     beq   $0501
04ef: cd 00     mov   x,#$00
04f1: 8f 01 47  mov   $47,#$01
04f4: f4 d5     mov   a,$d5+x
04f6: f0 03     beq   $04fb
04f8: 3f 63 0d  call  $0d63
04fb: 3d        inc   x
04fc: 3d        inc   x
04fd: 0b 47     asl   $47
04ff: d0 f3     bne   $04f4
0501: 5f 43 04  jmp   $0443

0504: f4 04     mov   a,$04+x
0506: d4 f4     mov   $f4+x,a
0508: f4 f4     mov   a,$f4+x
050a: 74 f4     cmp   a,$f4+x
050c: d0 fa     bne   $0508
050e: d4 00     mov   $00+x,a
0510: 6f        ret

0511: ad ca     cmp   y,#$ca
0513: 90 05     bcc   $051a
0515: 3f 9d 08  call  $089d
0518: 8d a4     mov   y,#$a4
051a: ad c8     cmp   y,#$c8
051c: b0 f2     bcs   $0510
051e: e4 1a     mov   a,$1a
0520: 24 47     and   a,$47
0522: d0 ec     bne   $0510
0524: dd        mov   a,y
0525: 28 7f     and   a,#$7f
0527: 60        clrc
0528: 84 50     adc   a,$50
052a: 60        clrc
052b: 95 f0 02  adc   a,$02f0+x
052e: d5 7d 03  mov   $037d+x,a
0531: f5 a5 03  mov   a,$03a5+x
0534: d5 7c 03  mov   $037c+x,a
0537: f5 a1 02  mov   a,$02a1+x
053a: 5c        lsr   a
053b: e8 00     mov   a,#$00
053d: 7c        ror   a
053e: d5 8c 02  mov   $028c+x,a
0541: e8 00     mov   a,#$00
0543: d4 ac     mov   $ac+x,a
0545: d5 00 01  mov   $0100+x,a
0548: d5 c8 02  mov   $02c8+x,a
054b: d4 c0     mov   $c0+x,a
054d: 09 47 5e  or    ($5e),($47)
0550: 09 47 45  or    ($45),($47)
0553: f5 64 02  mov   a,$0264+x
0556: d4 98     mov   $98+x,a
0558: f0 1e     beq   $0578
055a: f5 65 02  mov   a,$0265+x
055d: d4 99     mov   $99+x,a
055f: f5 78 02  mov   a,$0278+x
0562: d0 0a     bne   $056e
0564: f5 7d 03  mov   a,$037d+x
0567: 80        setc
0568: b5 79 02  sbc   a,$0279+x
056b: d5 7d 03  mov   $037d+x,a
056e: f5 79 02  mov   a,$0279+x
0571: 60        clrc
0572: 95 7d 03  adc   a,$037d+x
0575: 3f 0a 0b  call  $0b0a
0578: 3f 22 0b  call  $0b22
057b: 8d 00     mov   y,#$00
057d: e4 11     mov   a,$11
057f: 80        setc
0580: a8 34     sbc   a,#$34
0582: b0 09     bcs   $058d
0584: e4 11     mov   a,$11
0586: 80        setc
0587: a8 13     sbc   a,#$13
0589: b0 06     bcs   $0591
058b: dc        dec   y
058c: 1c        asl   a
058d: 7a 10     addw  ya,$10
058f: da 10     movw  $10,ya
0591: 4d        push  x
0592: e4 11     mov   a,$11
0594: 1c        asl   a
0595: 8d 00     mov   y,#$00
0597: cd 18     mov   x,#$18
0599: 9e        div   ya,x
059a: 5d        mov   x,a
059b: f6 5a 0e  mov   a,$0e5a+y
059e: c4 15     mov   $15,a
05a0: f6 59 0e  mov   a,$0e59+y
05a3: c4 14     mov   $14,a
05a5: f6 5c 0e  mov   a,$0e5c+y
05a8: 2d        push  a
05a9: f6 5b 0e  mov   a,$0e5b+y
05ac: ee        pop   y
05ad: 9a 14     subw  ya,$14
05af: eb 10     mov   y,$10
05b1: cf        mul   ya
05b2: dd        mov   a,y
05b3: 8d 00     mov   y,#$00
05b5: 7a 14     addw  ya,$14
05b7: cb 15     mov   $15,y
05b9: 1c        asl   a
05ba: 2b 15     rol   $15
05bc: c4 14     mov   $14,a
05be: 2f 04     bra   $05c4
05c0: 4b 15     lsr   $15
05c2: 7c        ror   a
05c3: 3d        inc   x
05c4: c8 06     cmp   x,#$06
05c6: d0 f8     bne   $05c0
05c8: c4 14     mov   $14,a
05ca: ce        pop   x
05cb: f5 28 02  mov   a,$0228+x
05ce: eb 15     mov   y,$15
05d0: cf        mul   ya
05d1: da 16     movw  $16,ya
05d3: f5 28 02  mov   a,$0228+x
05d6: eb 14     mov   y,$14
05d8: cf        mul   ya
05d9: 6d        push  y
05da: f5 29 02  mov   a,$0229+x
05dd: eb 14     mov   y,$14
05df: cf        mul   ya
05e0: 7a 16     addw  ya,$16
05e2: da 16     movw  $16,ya
05e4: f5 29 02  mov   a,$0229+x
05e7: eb 15     mov   y,$15
05e9: cf        mul   ya
05ea: fd        mov   y,a
05eb: ae        pop   a
05ec: 7a 16     addw  ya,$16
05ee: da 16     movw  $16,ya
05f0: f5 73 0e  mov   a,$0e73+x
05f3: 08 02     or    a,#$02
05f5: fd        mov   y,a
05f6: e4 16     mov   a,$16
05f8: 3f fe 05  call  $05fe
05fb: fc        inc   y
05fc: e4 17     mov   a,$17
05fe: 2d        push  a
05ff: e4 47     mov   a,$47
0601: 24 1a     and   a,$1a
0603: ae        pop   a
0604: d0 04     bne   $060a
0606: cb f2     mov   $f2,y
0608: c4 f3     mov   $f3,a
060a: 6f        ret

060b: 8d 00     mov   y,#$00
060d: f7 40     mov   a,($40)+y
060f: 3a 40     incw  $40
0611: 2d        push  a
0612: f7 40     mov   a,($40)+y
0614: 3a 40     incw  $40
0616: fd        mov   y,a
0617: ae        pop   a
0618: 6f        ret

0619: 8f ff 30  mov   $30,#$ff
061c: 8f ff 31  mov   $31,#$ff
061f: c4 04     mov   $04,a
0621: 6f        ret

0622: 2d        push  a
0623: e5 fe 0f  mov   a,$0ffe
0626: ec ff 0f  mov   y,$0fff
0629: da 3b     movw  $3b,ya
062b: e8 00     mov   a,#$00
062d: 5d        mov   x,a
062e: c7 3b     mov   ($3b+x),a
0630: 3a 3b     incw  $3b
0632: d0 fa     bne   $062e
0634: ae        pop   a
0635: 6f        ret

0636: e4 d5     mov   a,$d5
0638: f0 44     beq   $067e
063a: e8 00     mov   a,#$00
063c: c4 6b     mov   $6b,a
063e: c4 6c     mov   $6c,a
0640: 8f ff 5c  mov   $5c,#$ff
0643: 8f ff 0e  mov   $0e,#$ff
0646: 8f 00 04  mov   $04,#$00
0649: e8 00     mov   a,#$00
064b: 8d 0c     mov   y,#$0c
064d: 3f 06 06  call  $0606
0650: 8d 1c     mov   y,#$1c
0652: 3f 06 06  call  $0606
0655: 8d 2c     mov   y,#$2c
0657: 3f 06 06  call  $0606
065a: 8d 3c     mov   y,#$3c
065c: 3f 06 06  call  $0606
065f: a2 48     set5  $48
0661: e8 00     mov   a,#$00
0663: c4 d5     mov   $d5,a
0665: c4 d7     mov   $d7,a
0667: c4 d9     mov   $d9,a
0669: c4 db     mov   $db,a
066b: c4 dd     mov   $dd,a
066d: c4 df     mov   $df,a
066f: c4 e1     mov   $e1,a
0671: c4 e3     mov   $e3,a
0673: c4 e5     mov   $e5,a
0675: c4 e7     mov   $e7,a
0677: c4 31     mov   $31,a
0679: e8 01     mov   a,#$01
067b: 3f 76 0a  call  $0a76
067e: 6f        ret

067f: 8f ff 0e  mov   $0e,#$ff
0682: 6f        ret

0683: 3f 89 0f  call  $0f89
0686: c4 08     mov   $08,a
0688: c4 04     mov   $04,a
068a: 6f        ret

068b: 68 f0     cmp   a,#$f0
068d: f0 a7     beq   $0636
068f: 68 f1     cmp   a,#$f1
0691: f0 86     beq   $0619
0693: 68 f2     cmp   a,#$f2
0695: f0 e8     beq   $067f
0697: 68 ff     cmp   a,#$ff
0699: f0 e8     beq   $0683
069b: 6f        ret

069c: e4 04     mov   a,$04
069e: 68 90     cmp   a,#$90
06a0: f0 18     beq   $06ba
06a2: 68 91     cmp   a,#$91
06a4: f0 18     beq   $06be
06a6: e4 04     mov   a,$04
06a8: 30 0f     bmi   $06b9
06aa: 80        setc
06ab: a8 40     sbc   a,#$40
06ad: 90 0a     bcc   $06b9
06af: 1c        asl   a
06b0: 1c        asl   a
06b1: 48 ff     eor   a,#$ff
06b3: fd        mov   y,a
06b4: e8 e0     mov   a,#$e0
06b6: cf        mul   ya
06b7: cb 3e     mov   $3e,y
06b9: 6f        ret

06ba: 8f 01 32  mov   $32,#$01
06bd: 6f        ret

06be: 8f 00 32  mov   $32,#$00
06c1: 6f        ret

06c2: c4 04     mov   $04,a
06c4: 1c        asl   a
06c5: f0 33     beq   $06fa
06c7: 68 02     cmp   a,#$02
06c9: d0 d1     bne   $069c
06cb: 3f 22 06  call  $0622
06ce: e5 fc 0f  mov   a,$0ffc
06d1: ec fd 0f  mov   y,$0ffd
06d4: da 40     movw  $40,ya
06d6: 3a 40     incw  $40
06d8: 3a 40     incw  $40
06da: 8f 02 0c  mov   $0c,#$02
06dd: e8 00     mov   a,#$00
06df: c4 30     mov   $30,a
06e1: 8f 00 31  mov   $31,#$00
06e4: c4 5f     mov   $5f,a
06e6: c4 39     mov   $39,a
06e8: c4 36     mov   $36,a
06ea: c4 e5     mov   $e5,a
06ec: c4 e7     mov   $e7,a
06ee: c4 3d     mov   $3d,a
06f0: c4 f5     mov   $f5,a
06f2: 8f e0 3e  mov   $3e,#$e0
06f5: 8f 00 0e  mov   $0e,#$00
06f8: d2 48     clr6  $48
06fa: e4 1a     mov   a,$1a
06fc: 48 ff     eor   a,#$ff
06fe: 0e 46 00  tset1 $0046
0701: 6f        ret

0702: cd 0e     mov   x,#$0e
0704: 8f 80 47  mov   $47,#$80
0707: e8 00     mov   a,#$00
0709: d5 05 03  mov   $0305+x,a
070c: e8 0a     mov   a,#$0a
070e: 3f 09 09  call  $0909
0711: d5 15 02  mov   $0215+x,a
0714: d5 a5 03  mov   $03a5+x,a
0717: d5 f0 02  mov   $02f0+x,a
071a: d5 64 02  mov   $0264+x,a
071d: d4 ad     mov   $ad+x,a
071f: d4 c1     mov   $c1+x,a
0721: 1d        dec   x
0722: 1d        dec   x
0723: 4b 47     lsr   $47
0725: d0 e0     bne   $0707
0727: c4 5a     mov   $5a,a
0729: c4 68     mov   $68,a
072b: c4 54     mov   $54,a
072d: c4 50     mov   $50,a
072f: c4 42     mov   $42,a
0731: 8f 00 59  mov   $59,#$00
0734: 8f 20 53  mov   $53,#$20
0737: 6f        ret

0738: eb 08     mov   y,$08
073a: e4 00     mov   a,$00
073c: 68 f0     cmp   a,#$f0
073e: 90 03     bcc   $0743
0740: 5f 8b 06  jmp   $068b

0743: c4 08     mov   $08,a
0745: 7e 00     cmp   y,$00
0747: f0 03     beq   $074c
0749: 5f c2 06  jmp   $06c2

074c: e4 04     mov   a,$04
074e: f0 e7     beq   $0737
0750: 8f 00 0e  mov   $0e,#$00
0753: e4 0c     mov   a,$0c
0755: f0 5e     beq   $07b5
0757: 6e 0c a8  dbnz  $0c,$0702
075a: fa 3d f5  mov   ($f5),($3d)
075d: 3f 0b 06  call  $060b
0760: d0 20     bne   $0782
0762: fd        mov   y,a
0763: d0 09     bne   $076e
0765: 8f ff 3d  mov   $3d,#$ff
0768: 8f ff f5  mov   $f5,#$ff
076b: 5f c2 06  jmp   $06c2

076e: 8b 42     dec   $42
0770: 10 05     bpl   $0777
0772: c4 42     mov   $42,a
0774: 8f 00 3d  mov   $3d,#$00
0777: 3f 0b 06  call  $060b
077a: f8 42     mov   x,$42
077c: f0 dc     beq   $075a
077e: da 40     movw  $40,ya
0780: 2f d8     bra   $075a
0782: ab 3d     inc   $3d
0784: da 16     movw  $16,ya
0786: 8d 0f     mov   y,#$0f
0788: f7 16     mov   a,($16)+y
078a: d6 d4 00  mov   $00d4+y,a
078d: dc        dec   y
078e: 10 f8     bpl   $0788
0790: cd 00     mov   x,#$00
0792: 8f 01 47  mov   $47,#$01
0795: f4 d5     mov   a,$d5+x
0797: f0 0a     beq   $07a3
0799: f5 15 02  mov   a,$0215+x
079c: d0 05     bne   $07a3
079e: e8 00     mov   a,#$00
07a0: 3f 9d 08  call  $089d
07a3: e8 00     mov   a,#$00
07a5: d5 b8 03  mov   $03b8+x,a
07a8: d4 84     mov   $84+x,a
07aa: d4 85     mov   $85+x,a
07ac: bc        inc   a
07ad: d4 70     mov   $70+x,a
07af: 3d        inc   x
07b0: 3d        inc   x
07b1: 0b 47     asl   $47
07b3: d0 e0     bne   $0795
07b5: cd 00     mov   x,#$00
07b7: d8 5e     mov   $5e,x
07b9: 8f 01 47  mov   $47,#$01
07bc: d8 44     mov   $44,x
07be: f4 d5     mov   a,$d5+x
07c0: f0 6c     beq   $082e
07c2: 9b 70     dec   $70+x
07c4: d0 62     bne   $0828
07c6: 3f 93 08  call  $0893
07c9: d0 1d     bne   $07e8
07cb: f5 b8 03  mov   a,$03b8+x
07ce: f0 8a     beq   $075a
07d0: 3f 0e 0a  call  $0a0e
07d3: f5 b8 03  mov   a,$03b8+x
07d6: 9c        dec   a
07d7: d5 b8 03  mov   $03b8+x,a
07da: d0 ea     bne   $07c6
07dc: f5 3c 02  mov   a,$023c+x
07df: d4 d4     mov   $d4+x,a
07e1: f5 3d 02  mov   a,$023d+x
07e4: d4 d5     mov   $d5+x,a
07e6: 2f de     bra   $07c6
07e8: 30 20     bmi   $080a
07ea: d5 00 02  mov   $0200+x,a
07ed: 3f 93 08  call  $0893
07f0: 30 18     bmi   $080a
07f2: 2d        push  a
07f3: 9f        xcn   a
07f4: 28 07     and   a,#$07
07f6: fd        mov   y,a
07f7: f6 00 13  mov   a,$1300+y
07fa: d5 01 02  mov   $0201+x,a
07fd: ae        pop   a
07fe: 28 0f     and   a,#$0f
0800: fd        mov   y,a
0801: f6 08 13  mov   a,$1308+y
0804: d5 14 02  mov   $0214+x,a
0807: 3f 93 08  call  $0893
080a: 68 e0     cmp   a,#$e0
080c: 90 05     bcc   $0813
080e: 3f 81 08  call  $0881
0811: 2f b3     bra   $07c6
0813: 3f 11 05  call  $0511
0816: f5 00 02  mov   a,$0200+x
0819: d4 70     mov   $70+x,a
081b: fd        mov   y,a
081c: f5 01 02  mov   a,$0201+x
081f: cf        mul   ya
0820: dd        mov   a,y
0821: d0 01     bne   $0824
0823: bc        inc   a
0824: d4 71     mov   $71+x,a
0826: 2f 03     bra   $082b
0828: 3f 72 0c  call  $0c72
082b: 3f ea 0a  call  $0aea
082e: 3d        inc   x
082f: 3d        inc   x
0830: 0b 47     asl   $47
0832: d0 88     bne   $07bc
0834: e4 54     mov   a,$54
0836: f0 0b     beq   $0843
0838: ba 56     movw  ya,$56
083a: 7a 52     addw  ya,$52
083c: 6e 54 02  dbnz  $54,$0841
083f: ba 54     movw  ya,$54
0841: da 52     movw  $52,ya
0843: e4 68     mov   a,$68
0845: f0 15     beq   $085c
0847: ba 64     movw  ya,$64
0849: 7a 60     addw  ya,$60
084b: da 60     movw  $60,ya
084d: ba 66     movw  ya,$66
084f: 7a 62     addw  ya,$62
0851: 6e 68 06  dbnz  $68,$085a
0854: ba 68     movw  ya,$68
0856: da 60     movw  $60,ya
0858: eb 6a     mov   y,$6a
085a: da 62     movw  $62,ya
085c: e4 5a     mov   a,$5a
085e: f0 0e     beq   $086e
0860: ba 5c     movw  ya,$5c
0862: 7a 58     addw  ya,$58
0864: 6e 5a 02  dbnz  $5a,$0869
0867: ba 5a     movw  ya,$5a
0869: da 58     movw  $58,ya
086b: 8f ff 5e  mov   $5e,#$ff
086e: cd 00     mov   x,#$00
0870: 8f 01 47  mov   $47,#$01
0873: f4 d5     mov   a,$d5+x
0875: f0 03     beq   $087a
0877: 3f a9 0b  call  $0ba9
087a: 3d        inc   x
087b: 3d        inc   x
087c: 0b 47     asl   $47
087e: d0 f3     bne   $0873
0880: 6f        ret

; dispatch vcmd
0881: 1c        asl   a
0882: fd        mov   y,a
0883: f6 8a 0a  mov   a,$0a8a+y
0886: 2d        push  a
0887: f6 89 0a  mov   a,$0a89+y         ; refs vcmd dispatch table $0b49
088a: 2d        push  a
088b: dd        mov   a,y
088c: 5c        lsr   a
088d: fd        mov   y,a
088e: f6 29 0b  mov   a,$0b29+y         ; refs vcmd length table $0b89
0891: f0 08     beq   $089b
0893: e7 d4     mov   a,($d4+x)
0895: bb d4     inc   $d4+x
0897: d0 02     bne   $089b
0899: bb d5     inc   $d5+x
089b: fd        mov   y,a
089c: 6f        ret

; vcmd e0 - set instrument
089d: d5 15 02  mov   $0215+x,a
08a0: eb 34     mov   y,$34
08a2: d0 11     bne   $08b5
; BGM
08a4: fd        mov   y,a
08a5: 10 06     bpl   $08ad             ; if percussion note:
08a7: 80        setc
08a8: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
08aa: 60        clrc
08ab: 84 5f     adc   a,$5f             ;   add perc patch base
08ad: 4d        push  x
08ae: 5d        mov   x,a
08af: f5 e0 0f  mov   a,$0fe0+x         ; get real instrument index from lookup table
08b2: ce        pop   x
08b3: 2f 09     bra   $08be
; SFX
08b5: fd        mov   y,a
08b6: 10 06     bpl   $08be
08b8: 80        setc
08b9: a8 ca     sbc   a,#$ca
08bb: 60        clrc
08bc: 84 39     adc   a,$39
;
08be: 8d 06     mov   y,#$06
08c0: cf        mul   ya
08c1: da 14     movw  $14,ya
08c3: 60        clrc
08c4: 98 00 14  adc   $14,#$00
08c7: 98 12 15  adc   $15,#$12
08ca: e4 1a     mov   a,$1a
08cc: 24 47     and   a,$47
08ce: d0 38     bne   $0908
08d0: 4d        push  x
08d1: f5 73 0e  mov   a,$0e73+x
08d4: 08 04     or    a,#$04
08d6: 5d        mov   x,a
08d7: 8d 00     mov   y,#$00
08d9: f7 14     mov   a,($14)+y
08db: 10 0e     bpl   $08eb
08dd: 28 1f     and   a,#$1f
08df: 38 20 48  and   $48,#$20
08e2: 0e 48 00  tset1 $0048
08e5: 09 47 49  or    ($49),($47)
08e8: dd        mov   a,y
08e9: 2f 07     bra   $08f2
08eb: e4 47     mov   a,$47
08ed: 4e 49 00  tclr1 $0049
08f0: f7 14     mov   a,($14)+y
08f2: d8 f2     mov   $f2,x
08f4: c4 f3     mov   $f3,a
08f6: 3d        inc   x
08f7: fc        inc   y
08f8: ad 04     cmp   y,#$04
08fa: d0 f4     bne   $08f0
08fc: ce        pop   x
08fd: f7 14     mov   a,($14)+y
08ff: d5 29 02  mov   $0229+x,a
0902: fc        inc   y
0903: f7 14     mov   a,($14)+y
0905: d5 28 02  mov   $0228+x,a
0908: 6f        ret

; vcmd e1
0909: d5 69 03  mov   $0369+x,a
090c: 28 1f     and   a,#$1f
090e: d5 41 03  mov   $0341+x,a
0911: e8 00     mov   a,#$00
0913: d5 40 03  mov   $0340+x,a
0916: 6f        ret

; vcmd e2
0917: d4 85     mov   $85+x,a
0919: 2d        push  a
091a: 3f 93 08  call  $0893
091d: d5 68 03  mov   $0368+x,a
0920: 80        setc
0921: b5 41 03  sbc   a,$0341+x
0924: ce        pop   x
0925: 3f 2d 0b  call  $0b2d
0928: d5 54 03  mov   $0354+x,a
092b: dd        mov   a,y
092c: d5 55 03  mov   $0355+x,a
092f: 6f        ret

; vcmd e3
0930: d5 a0 02  mov   $02a0+x,a
0933: 3f 93 08  call  $0893
0936: d5 8d 02  mov   $028d+x,a
0939: 3f 93 08  call  $0893
; vcmd e4
093c: d4 ad     mov   $ad+x,a
093e: d5 b5 02  mov   $02b5+x,a
0941: e8 00     mov   a,#$00
0943: d5 a1 02  mov   $02a1+x,a
0946: 6f        ret

; vcmd f0
0947: d5 a1 02  mov   $02a1+x,a
094a: 2d        push  a
094b: 8d 00     mov   y,#$00
094d: f4 ad     mov   a,$ad+x
094f: ce        pop   x
0950: 9e        div   ya,x
0951: f8 44     mov   x,$44
0953: d5 b4 02  mov   $02b4+x,a
0956: 6f        ret

; vcmd e5
0957: dd        mov   a,y
0958: 80        setc
0959: a8 1e     sbc   a,#$1e
095b: fd        mov   y,a
095c: e8 00     mov   a,#$00
095e: da 58     movw  $58,ya
0960: e4 31     mov   a,$31
0962: d0 03     bne   $0967
0964: 8f ff 31  mov   $31,#$ff
0967: 6f        ret

; vcmd e6
0968: c4 5a     mov   $5a,a
096a: 3f 93 08  call  $0893
096d: c4 5b     mov   $5b,a
096f: 80        setc
0970: a4 59     sbc   a,$59
0972: f8 5a     mov   x,$5a
0974: 3f 2d 0b  call  $0b2d
0977: da 5c     movw  $5c,ya
0979: 6f        ret

; vcmd e7
097a: e4 34     mov   a,$34
097c: d0 04     bne   $0982
097e: e8 00     mov   a,#$00
0980: da 52     movw  $52,ya
0982: 6f        ret

; vcmd e8
0983: c4 54     mov   $54,a
0985: 3f 93 08  call  $0893
0988: c4 55     mov   $55,a
098a: 80        setc
098b: a4 53     sbc   a,$53
098d: f8 54     mov   x,$54
098f: 3f 2d 0b  call  $0b2d
0992: da 56     movw  $56,ya
0994: 6f        ret

; vcmd e9
0995: c4 50     mov   $50,a
0997: 6f        ret

; vcmd ea
0998: d5 f0 02  mov   $02f0+x,a
099b: 6f        ret

; vcmd eb
099c: d5 dc 02  mov   $02dc+x,a
099f: 3f 93 08  call  $0893
09a2: d5 c9 02  mov   $02c9+x,a
09a5: 3f 93 08  call  $0893
; vcmd ec
09a8: d4 c1     mov   $c1+x,a
09aa: 6f        ret

; vcmd f1
09ab: e8 01     mov   a,#$01
09ad: 2f 02     bra   $09b1
; vcmd f2
09af: e8 00     mov   a,#$00
09b1: d5 78 02  mov   $0278+x,a
09b4: dd        mov   a,y
09b5: d5 65 02  mov   $0265+x,a
09b8: 3f 93 08  call  $0893
09bb: d5 64 02  mov   $0264+x,a
09be: 3f 93 08  call  $0893
09c1: d5 79 02  mov   $0279+x,a
09c4: 6f        ret

; vcmd f3
09c5: d5 64 02  mov   $0264+x,a
09c8: 6f        ret

; vcmd ed
09c9: eb 34     mov   y,$34
09cb: f0 02     beq   $09cf
09cd: e8 b4     mov   a,#$b4
09cf: d5 05 03  mov   $0305+x,a
09d2: e8 00     mov   a,#$00
09d4: d5 04 03  mov   $0304+x,a
09d7: 6f        ret

; vcmd ee
09d8: d4 84     mov   $84+x,a
09da: 2d        push  a
09db: 3f 93 08  call  $0893
09de: d5 2c 03  mov   $032c+x,a
09e1: 80        setc
09e2: b5 05 03  sbc   a,$0305+x
09e5: ce        pop   x
09e6: 3f 2d 0b  call  $0b2d
09e9: d5 18 03  mov   $0318+x,a
09ec: dd        mov   a,y
09ed: d5 19 03  mov   $0319+x,a
09f0: 6f        ret

; vcmd f4
09f1: d5 a5 03  mov   $03a5+x,a
09f4: 6f        ret

; vcmd ef
09f5: d5 50 02  mov   $0250+x,a
09f8: 3f 93 08  call  $0893
09fb: d5 51 02  mov   $0251+x,a
09fe: 3f 93 08  call  $0893
0a01: d5 b8 03  mov   $03b8+x,a
0a04: f4 d4     mov   a,$d4+x
0a06: d5 3c 02  mov   $023c+x,a
0a09: f4 d5     mov   a,$d5+x
0a0b: d5 3d 02  mov   $023d+x,a
0a0e: f5 50 02  mov   a,$0250+x
0a11: d4 d4     mov   $d4+x,a
0a13: f5 51 02  mov   a,$0251+x
0a16: d4 d5     mov   $d5+x,a
0a18: 6f        ret

; vcmd f5
0a19: c4 4a     mov   $4a,a
0a1b: 3f 93 08  call  $0893
0a1e: e8 00     mov   a,#$00
0a20: da 60     movw  $60,ya
0a22: 3f 93 08  call  $0893
0a25: e8 00     mov   a,#$00
0a27: da 62     movw  $62,ya
0a29: b2 48     clr5  $48
0a2b: 6f        ret

; vcmd f8
0a2c: c4 68     mov   $68,a
0a2e: 3f 93 08  call  $0893
0a31: c4 69     mov   $69,a
0a33: 80        setc
0a34: a4 61     sbc   a,$61
0a36: f8 68     mov   x,$68
0a38: 3f 2d 0b  call  $0b2d
0a3b: da 64     movw  $64,ya
0a3d: 3f 93 08  call  $0893
0a40: c4 6a     mov   $6a,a
0a42: 80        setc
0a43: a4 63     sbc   a,$63
0a45: f8 68     mov   x,$68
0a47: 3f 2d 0b  call  $0b2d
0a4a: da 66     movw  $66,ya
0a4c: 6f        ret

; vcmd f6
0a4d: da 60     movw  $60,ya
0a4f: da 62     movw  $62,ya
0a51: a2 48     set5  $48
0a53: 6f        ret

; vcmd f7
0a54: 3f 76 0a  call  $0a76
0a57: 3f 93 08  call  $0893
0a5a: c4 4e     mov   $4e,a
0a5c: 3f 93 08  call  $0893
0a5f: 8d 08     mov   y,#$08
0a61: cf        mul   ya
0a62: 5d        mov   x,a
0a63: 8d 0f     mov   y,#$0f
0a65: f5 25 0e  mov   a,$0e25+x
0a68: 3f 06 06  call  $0606
0a6b: 3d        inc   x
0a6c: dd        mov   a,y
0a6d: 60        clrc
0a6e: 88 10     adc   a,#$10
0a70: fd        mov   y,a
0a71: 10 f2     bpl   $0a65
0a73: f8 44     mov   x,$44
0a75: 6f        ret

0a76: c4 4d     mov   $4d,a
0a78: 8d 7d     mov   y,#$7d
0a7a: cb f2     mov   $f2,y
0a7c: e4 f3     mov   a,$f3
0a7e: 64 4d     cmp   a,$4d
0a80: f0 29     beq   $0aab
0a82: 28 0f     and   a,#$0f
0a84: 48 ff     eor   a,#$ff
0a86: f3 4c 03  bbc7  $4c,$0a8c
0a89: 60        clrc
0a8a: 84 4c     adc   a,$4c
0a8c: c4 4c     mov   $4c,a
0a8e: 8d 04     mov   y,#$04
0a90: f6 44 0e  mov   a,$0e44+y
0a93: c4 f2     mov   $f2,a
0a95: e8 00     mov   a,#$00
0a97: c4 f3     mov   $f3,a
0a99: fe f5     dbnz  y,$0a90
0a9b: e4 48     mov   a,$48
0a9d: 08 20     or    a,#$20
0a9f: 8d 6c     mov   y,#$6c
0aa1: 3f 06 06  call  $0606
0aa4: e4 4d     mov   a,$4d
0aa6: 8d 7d     mov   y,#$7d
0aa8: 3f 06 06  call  $0606
0aab: 1c        asl   a
0aac: 1c        asl   a
0aad: 1c        asl   a
0aae: 48 ff     eor   a,#$ff
0ab0: 80        setc
0ab1: 88 ff     adc   a,#$ff
0ab3: 8d 6d     mov   y,#$6d
0ab5: 5f 06 06  jmp   $0606

; vcmd ff
0ab8: 2d        push  a
0ab9: 7d        mov   a,x
0aba: 68 10     cmp   a,#$10
0abc: 90 03     bcc   $0ac1
0abe: 80        setc
0abf: a8 04     sbc   a,#$04
0ac1: 9f        xcn   a
0ac2: 5c        lsr   a
0ac3: 60        clrc
0ac4: 88 05     adc   a,#$05
0ac6: fd        mov   y,a
0ac7: ae        pop   a
0ac8: 08 80     or    a,#$80
0aca: 3f fe 05  call  $05fe
0acd: fc        inc   y
0ace: 6d        push  y
0acf: 3f 93 08  call  $0893
0ad2: c4 3f     mov   $3f,a
0ad4: 3f 93 08  call  $0893
0ad7: 9f        xcn   a
0ad8: 1c        asl   a
0ad9: 04 3f     or    a,$3f
0adb: ee        pop   y
0adc: 3f fe 05  call  $05fe
0adf: 6f        ret

; vcmd fa - set perc patch base
0ae0: eb 34     mov   y,$34
0ae2: d0 03     bne   $0ae7
; BGM
0ae4: c4 5f     mov   $5f,a
0ae6: 6f        ret
; SFX
0ae7: c4 39     mov   $39,a
0ae9: 6f        ret

0aea: f4 98     mov   a,$98+x
0aec: d0 33     bne   $0b21
0aee: e7 d4     mov   a,($d4+x)
0af0: 68 f9     cmp   a,#$f9
0af2: d0 2d     bne   $0b21
0af4: 3f 95 08  call  $0895
0af7: 3f 93 08  call  $0893
; vcmd f9
0afa: d4 99     mov   $99+x,a
0afc: 3f 93 08  call  $0893
0aff: d4 98     mov   $98+x,a
0b01: 3f 93 08  call  $0893
0b04: 60        clrc
0b05: 84 50     adc   a,$50
0b07: 95 f0 02  adc   a,$02f0+x
0b0a: 28 7f     and   a,#$7f
0b0c: d5 a4 03  mov   $03a4+x,a
0b0f: 80        setc
0b10: b5 7d 03  sbc   a,$037d+x
0b13: fb 98     mov   y,$98+x
0b15: 6d        push  y
0b16: ce        pop   x
0b17: 3f 2d 0b  call  $0b2d
0b1a: d5 90 03  mov   $0390+x,a
0b1d: dd        mov   a,y
0b1e: d5 91 03  mov   $0391+x,a
0b21: 6f        ret

0b22: f5 7d 03  mov   a,$037d+x
0b25: c4 11     mov   $11,a
0b27: f5 7c 03  mov   a,$037c+x
0b2a: c4 10     mov   $10,a
0b2c: 6f        ret

0b2d: ed        notc
0b2e: 6b 12     ror   $12
0b30: 10 03     bpl   $0b35
0b32: 48 ff     eor   a,#$ff
0b34: bc        inc   a
0b35: 8d 00     mov   y,#$00
0b37: 9e        div   ya,x
0b38: 2d        push  a
0b39: e8 00     mov   a,#$00
0b3b: 9e        div   ya,x
0b3c: ee        pop   y
0b3d: f8 44     mov   x,$44
0b3f: f3 12 06  bbc7  $12,$0b48
0b42: da 14     movw  $14,ya
0b44: ba 1c     movw  ya,$1c
0b46: 9a 14     subw  ya,$14
0b48: 6f        ret

; vcmd dispatch table
0b49: dw $089d  ; e0 - set instrument
0b4b: dw $0909  ; e1
0b4d: dw $0917  ; e2
0b4f: dw $0930  ; e3
0b51: dw $093c  ; e4
0b53: dw $0957  ; e5
0b55: dw $0968  ; e6
0b57: dw $097a  ; e7
0b59: dw $0983  ; e8
0b5b: dw $0995  ; e9
0b5d: dw $0998  ; ea
0b5f: dw $099c  ; eb
0b61: dw $09a8  ; ec
0b63: dw $09c9  ; ed
0b65: dw $09d8  ; ee
0b67: dw $09f5  ; ef
0b69: dw $0947  ; f0
0b6b: dw $09ab  ; f1
0b6d: dw $09af  ; f2
0b6f: dw $09c5  ; f3
0b71: dw $09f1  ; f4
0b73: dw $0a19  ; f5
0b75: dw $0a4d  ; f6
0b77: dw $0a54  ; f7
0b79: dw $0a2c  ; f8
0b7b: dw $0afa  ; f9
0b7d: dw $0ae0  ; fa - set perc patch base
0b7f: dw $0000  ; fb
0b81: dw $0000  ; fc
0b83: dw $0000  ; fd
0b85: dw $0000  ; fe
0b87: dw $0ab8  ; ff

; vcmd length table
0b89: db $01,$01,$02,$03,$00,$01,$02,$01
0b91: db $02,$01,$01,$03,$00,$01,$02,$03
0b99: db $01,$03,$03,$00,$01,$03,$00,$03
0ba1: db $03,$03,$01,$00,$00,$00,$00,$01

0ba9: f4 84     mov   a,$84+x
0bab: f0 09     beq   $0bb6
0bad: e8 04     mov   a,#$04
0baf: 8d 03     mov   y,#$03
0bb1: 9b 84     dec   $84+x
0bb3: 3f 49 0c  call  $0c49
0bb6: fb c1     mov   y,$c1+x
0bb8: f0 23     beq   $0bdd
0bba: f5 dc 02  mov   a,$02dc+x
0bbd: de c0 1b  cbne  $c0+x,$0bdb
0bc0: 09 47 5e  or    ($5e),($47)
0bc3: f5 c8 02  mov   a,$02c8+x
0bc6: 10 07     bpl   $0bcf
0bc8: fc        inc   y
0bc9: d0 04     bne   $0bcf
0bcb: e8 80     mov   a,#$80
0bcd: 2f 04     bra   $0bd3
0bcf: 60        clrc
0bd0: 95 c9 02  adc   a,$02c9+x
0bd3: d5 c8 02  mov   $02c8+x,a
0bd6: 3f ef 0d  call  $0def
0bd9: 2f 07     bra   $0be2
0bdb: bb c0     inc   $c0+x
0bdd: e8 ff     mov   a,#$ff
0bdf: 3f fa 0d  call  $0dfa
0be2: f4 85     mov   a,$85+x
0be4: f0 09     beq   $0bef
0be6: e8 40     mov   a,#$40
0be8: 8d 03     mov   y,#$03
0bea: 9b 85     dec   $85+x
0bec: 3f 49 0c  call  $0c49
0bef: e4 47     mov   a,$47
0bf1: 24 5e     and   a,$5e
0bf3: f0 53     beq   $0c48
0bf5: f5 41 03  mov   a,$0341+x
0bf8: fd        mov   y,a
0bf9: f5 40 03  mov   a,$0340+x
0bfc: da 10     movw  $10,ya
0bfe: f5 73 0e  mov   a,$0e73+x
0c01: c4 12     mov   $12,a
0c03: e4 32     mov   a,$32
0c05: f0 09     beq   $0c10
0c07: 8f 0a 11  mov   $11,#$0a
0c0a: 8f 00 10  mov   $10,#$00
0c0d: 8f 0a 11  mov   $11,#$0a
0c10: eb 11     mov   y,$11
0c12: f6 11 0e  mov   a,$0e11+y
0c15: 80        setc
0c16: b6 10 0e  sbc   a,$0e10+y
0c19: eb 10     mov   y,$10
0c1b: cf        mul   ya
0c1c: dd        mov   a,y
0c1d: eb 11     mov   y,$11
0c1f: 60        clrc
0c20: 96 10 0e  adc   a,$0e10+y
0c23: fd        mov   y,a
0c24: f5 2d 03  mov   a,$032d+x
0c27: cf        mul   ya
0c28: f5 69 03  mov   a,$0369+x
0c2b: 1c        asl   a
0c2c: 13 12 01  bbc0  $12,$0c30
0c2f: 1c        asl   a
0c30: dd        mov   a,y
0c31: 90 03     bcc   $0c36
0c33: 48 ff     eor   a,#$ff
0c35: bc        inc   a
0c36: eb 12     mov   y,$12
0c38: 3f fe 05  call  $05fe
0c3b: 8d 14     mov   y,#$14
0c3d: e8 00     mov   a,#$00
0c3f: 9a 10     subw  ya,$10
0c41: da 10     movw  $10,ya
0c43: ab 12     inc   $12
0c45: 33 12 c8  bbc1  $12,$0c10
0c48: 6f        ret

0c49: 09 47 5e  or    ($5e),($47)
0c4c: da 14     movw  $14,ya
0c4e: da 16     movw  $16,ya
0c50: 4d        push  x
0c51: ee        pop   y
0c52: 60        clrc
0c53: d0 0f     bne   $0c64
0c55: 98 27 16  adc   $16,#$27
0c58: 68 7c     cmp   a,#$7c
0c5a: f0 15     beq   $0c71
0c5c: 60        clrc
0c5d: e8 00     mov   a,#$00
0c5f: d7 14     mov   ($14)+y,a
0c61: fc        inc   y
0c62: 2f 09     bra   $0c6d
0c64: 98 14 16  adc   $16,#$14
0c67: 3f 6b 0c  call  $0c6b
0c6a: fc        inc   y
0c6b: f7 14     mov   a,($14)+y
0c6d: 97 16     adc   a,($16)+y
0c6f: d7 14     mov   ($14)+y,a
0c71: 6f        ret

0c72: f4 71     mov   a,$71+x
0c74: f0 64     beq   $0cda
0c76: 9b 71     dec   $71+x
0c78: f0 05     beq   $0c7f
0c7a: e8 02     mov   a,#$02
0c7c: de 70 5b  cbne  $70+x,$0cda
0c7f: f5 b8 03  mov   a,$03b8+x
0c82: c4 17     mov   $17,a
0c84: f4 d4     mov   a,$d4+x
0c86: fb d5     mov   y,$d5+x
0c88: da 14     movw  $14,ya
0c8a: 8d 00     mov   y,#$00
0c8c: f7 14     mov   a,($14)+y
0c8e: f0 1c     beq   $0cac
0c90: 30 05     bmi   $0c97
0c92: fc        inc   y
0c93: f7 14     mov   a,($14)+y
0c95: 10 fb     bpl   $0c92
0c97: 68 c8     cmp   a,#$c8
0c99: f0 3f     beq   $0cda
0c9b: 68 ef     cmp   a,#$ef
0c9d: f0 29     beq   $0cc8
0c9f: 68 e0     cmp   a,#$e0
0ca1: 90 30     bcc   $0cd3
0ca3: 6d        push  y
0ca4: fd        mov   y,a
0ca5: ae        pop   a
0ca6: 96 a9 0a  adc   a,$0aa9+y
0ca9: fd        mov   y,a
0caa: 2f e0     bra   $0c8c
0cac: e4 17     mov   a,$17
0cae: f0 23     beq   $0cd3
0cb0: 8b 17     dec   $17
0cb2: d0 0a     bne   $0cbe
0cb4: f5 3d 02  mov   a,$023d+x
0cb7: 2d        push  a
0cb8: f5 3c 02  mov   a,$023c+x
0cbb: ee        pop   y
0cbc: 2f ca     bra   $0c88
0cbe: f5 51 02  mov   a,$0251+x
0cc1: 2d        push  a
0cc2: f5 50 02  mov   a,$0250+x
0cc5: ee        pop   y
0cc6: 2f c0     bra   $0c88
0cc8: fc        inc   y
0cc9: f7 14     mov   a,($14)+y
0ccb: 2d        push  a
0ccc: fc        inc   y
0ccd: f7 14     mov   a,($14)+y
0ccf: fd        mov   y,a
0cd0: ae        pop   a
0cd1: 2f b5     bra   $0c88
0cd3: e4 47     mov   a,$47
0cd5: 8d 5c     mov   y,#$5c
0cd7: 3f fe 05  call  $05fe
0cda: f2 13     clr7  $13
0cdc: f4 98     mov   a,$98+x
0cde: f0 2c     beq   $0d0c
0ce0: f4 99     mov   a,$99+x
0ce2: f0 04     beq   $0ce8
0ce4: 9b 99     dec   $99+x
0ce6: 2f 24     bra   $0d0c
0ce8: e2 13     set7  $13
0cea: 9b 98     dec   $98+x
0cec: d0 0b     bne   $0cf9
0cee: f5 a5 03  mov   a,$03a5+x
0cf1: d5 7c 03  mov   $037c+x,a
0cf4: f5 a4 03  mov   a,$03a4+x
0cf7: 2f 10     bra   $0d09
0cf9: 60        clrc
0cfa: f5 7c 03  mov   a,$037c+x
0cfd: 95 90 03  adc   a,$0390+x
0d00: d5 7c 03  mov   $037c+x,a
0d03: f5 7d 03  mov   a,$037d+x
0d06: 95 91 03  adc   a,$0391+x
0d09: d5 7d 03  mov   $037d+x,a
0d0c: 3f 22 0b  call  $0b22
0d0f: f4 ad     mov   a,$ad+x
0d11: f0 4c     beq   $0d5f
0d13: f5 a0 02  mov   a,$02a0+x
0d16: de ac 44  cbne  $ac+x,$0d5d
0d19: f5 00 01  mov   a,$0100+x
0d1c: 75 a1 02  cmp   a,$02a1+x
0d1f: d0 05     bne   $0d26
0d21: f5 b5 02  mov   a,$02b5+x
0d24: 2f 0d     bra   $0d33
0d26: 40        setp
0d27: bb 00     inc   $00+x
0d29: 20        clrp
0d2a: fd        mov   y,a
0d2b: f0 02     beq   $0d2f
0d2d: f4 ad     mov   a,$ad+x
0d2f: 60        clrc
0d30: 95 b4 02  adc   a,$02b4+x
0d33: d4 ad     mov   $ad+x,a
0d35: f5 8c 02  mov   a,$028c+x
0d38: 60        clrc
0d39: 95 8d 02  adc   a,$028d+x
0d3c: d5 8c 02  mov   $028c+x,a
0d3f: c4 12     mov   $12,a
0d41: 1c        asl   a
0d42: 1c        asl   a
0d43: 90 02     bcc   $0d47
0d45: 48 ff     eor   a,#$ff
0d47: fd        mov   y,a
0d48: f4 ad     mov   a,$ad+x
0d4a: 68 f1     cmp   a,#$f1
0d4c: 90 05     bcc   $0d53
0d4e: 28 0f     and   a,#$0f
0d50: cf        mul   ya
0d51: 2f 04     bra   $0d57
0d53: cf        mul   ya
0d54: dd        mov   a,y
0d55: 8d 00     mov   y,#$00
0d57: 3f da 0d  call  $0dda
0d5a: 5f 7b 05  jmp   $057b

0d5d: bb ac     inc   $ac+x
0d5f: e3 13 f8  bbs7  $13,$0d5a
0d62: 6f        ret

0d63: f2 13     clr7  $13
0d65: f4 c1     mov   a,$c1+x
0d67: f0 09     beq   $0d72
0d69: f5 dc 02  mov   a,$02dc+x
0d6c: de c0 03  cbne  $c0+x,$0d72
0d6f: 3f e2 0d  call  $0de2
0d72: f5 41 03  mov   a,$0341+x
0d75: fd        mov   y,a
0d76: f5 40 03  mov   a,$0340+x
0d79: da 10     movw  $10,ya
0d7b: f4 85     mov   a,$85+x
0d7d: f0 0a     beq   $0d89
0d7f: f5 55 03  mov   a,$0355+x
0d82: fd        mov   y,a
0d83: f5 54 03  mov   a,$0354+x
0d86: 3f c4 0d  call  $0dc4
0d89: f3 13 03  bbc7  $13,$0d8f
0d8c: 3f fe 0b  call  $0bfe
0d8f: f2 13     clr7  $13
0d91: f5 7d 03  mov   a,$037d+x
0d94: fd        mov   y,a
0d95: f5 7c 03  mov   a,$037c+x
0d98: da 10     movw  $10,ya
0d9a: f4 98     mov   a,$98+x
0d9c: f0 0e     beq   $0dac
0d9e: f4 99     mov   a,$99+x
0da0: d0 0a     bne   $0dac
0da2: f5 91 03  mov   a,$0391+x
0da5: fd        mov   y,a
0da6: f5 90 03  mov   a,$0390+x
0da9: 3f c4 0d  call  $0dc4
0dac: f4 ad     mov   a,$ad+x
0dae: f0 af     beq   $0d5f
0db0: f5 a0 02  mov   a,$02a0+x
0db3: de ac a9  cbne  $ac+x,$0d5f
0db6: eb 51     mov   y,$51
0db8: f5 8d 02  mov   a,$028d+x
0dbb: cf        mul   ya
0dbc: dd        mov   a,y
0dbd: 60        clrc
0dbe: 95 8c 02  adc   a,$028c+x
0dc1: 5f 3f 0d  jmp   $0d3f

0dc4: e2 13     set7  $13
0dc6: cb 12     mov   $12,y
0dc8: 3f 3f 0b  call  $0b3f
0dcb: 6d        push  y
0dcc: eb 51     mov   y,$51
0dce: cf        mul   ya
0dcf: cb 14     mov   $14,y
0dd1: 8f 00 15  mov   $15,#$00
0dd4: eb 51     mov   y,$51
0dd6: ae        pop   a
0dd7: cf        mul   ya
0dd8: 7a 14     addw  ya,$14
0dda: 3f 3f 0b  call  $0b3f
0ddd: 7a 10     addw  ya,$10
0ddf: da 10     movw  $10,ya
0de1: 6f        ret

0de2: e2 13     set7  $13
0de4: eb 51     mov   y,$51
0de6: f5 c9 02  mov   a,$02c9+x
0de9: cf        mul   ya
0dea: dd        mov   a,y
0deb: 60        clrc
0dec: 95 c8 02  adc   a,$02c8+x
0def: 1c        asl   a
0df0: 90 02     bcc   $0df4
0df2: 48 ff     eor   a,#$ff
0df4: fb c1     mov   y,$c1+x
0df6: cf        mul   ya
0df7: dd        mov   a,y
0df8: 48 ff     eor   a,#$ff
0dfa: eb 34     mov   y,$34
0dfc: d0 03     bne   $0e01
0dfe: eb 59     mov   y,$59
0e00: cf        mul   ya
0e01: f5 14 02  mov   a,$0214+x
0e04: cf        mul   ya
0e05: f5 05 03  mov   a,$0305+x
0e08: cf        mul   ya
0e09: dd        mov   a,y
0e0a: cf        mul   ya
0e0b: dd        mov   a,y
0e0c: d5 2d 03  mov   $032d+x,a
0e0f: 6f        ret

0e10: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e18: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e20: db $7a,$7c,$7d,$7e,$7f

0e28: db $7f,$00,$00,$00,$00,$00,$00,$00
0e30: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0e38: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0e40: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0e48: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0e52: db $6b,$6c,$4e,$38,$48,$45,$0e,$49,$4b,$46

0e59: dw $085f
0e5b: dw $08de
0e5d: dw $0965
0e5f: dw $09f4
0e61: dw $0a8c
0e63: dw $0b2c
0e65: dw $0bd6
0e67: dw $0c8b
0e69: dw $0d4a
0e6b: dw $0e14
0e6d: dw $0eea
0e6f: dw $0fcd
0e71: dw $10be

0e73: dw $0000
0e75: dw $0010
0e77: dw $0020
0e79: dw $0030
0e7b: dw $0040
0e7d: dw $0050
0e7f: dw $0060
0e81: dw $0070
0e83: dw $0060
0e85: dw $0070

0e87: fa 1a 37  mov   ($37),($1a)
0e8a: 38 3f 1a  and   $1a,#$3f
0e8d: 8f ff 34  mov   $34,#$ff
0e90: 8f 00 5e  mov   $5e,#$00
0e93: 8f 40 47  mov   $47,#$40
0e96: cd 10     mov   x,#$10
0e98: e4 f6     mov   a,$f6
0e9a: f0 0c     beq   $0ea8
0e9c: 09 47 46  or    ($46),($47)
0e9f: 09 47 37  or    ($37),($47)
0ea2: 09 47 36  or    ($36),($47)
0ea5: 3f ca 0e  call  $0eca
0ea8: 3f 30 0f  call  $0f30
0eab: 8f 80 47  mov   $47,#$80
0eae: cd 12     mov   x,#$12
0eb0: e4 f7     mov   a,$f7
0eb2: f0 0c     beq   $0ec0
0eb4: 09 47 46  or    ($46),($47)
0eb7: 09 47 37  or    ($37),($47)
0eba: 09 47 36  or    ($36),($47)
0ebd: 3f ca 0e  call  $0eca
0ec0: 3f 30 0f  call  $0f30
0ec3: 8f 00 34  mov   $34,#$00
0ec6: fa 37 1a  mov   ($1a),($37)
0ec9: 6f        ret

0eca: 1c        asl   a
0ecb: 4d        push  x
0ecc: 5d        mov   x,a
0ecd: f5 01 14  mov   a,$1401+x
0ed0: fd        mov   y,a
0ed1: f5 00 14  mov   a,$1400+x
0ed4: ce        pop   x
0ed5: d4 d4     mov   $d4+x,a
0ed7: db d5     mov   $d5+x,y
0ed9: e8 96     mov   a,#$96
0edb: d5 05 03  mov   $0305+x,a
0ede: e8 0a     mov   a,#$0a
0ee0: 3f 09 09  call  $0909
0ee3: e8 00     mov   a,#$00
0ee5: d5 15 02  mov   $0215+x,a
0ee8: d5 a5 03  mov   $03a5+x,a
0eeb: d5 f0 02  mov   $02f0+x,a
0eee: d5 64 02  mov   $0264+x,a
0ef1: d4 ad     mov   $ad+x,a
0ef3: d4 c1     mov   $c1+x,a
0ef5: d5 b8 03  mov   $03b8+x,a
0ef8: d4 84     mov   $84+x,a
0efa: d4 85     mov   $85+x,a
0efc: e8 02     mov   a,#$02
0efe: d4 70     mov   $70+x,a
0f00: 6f        ret

0f01: e4 47     mov   a,$47
0f03: 48 ff     eor   a,#$ff
0f05: fd        mov   y,a
0f06: 24 37     and   a,$37
0f08: c4 37     mov   $37,a
0f0a: dd        mov   a,y
0f0b: 24 36     and   a,$36
0f0d: c4 36     mov   $36,a
0f0f: 09 47 5e  or    ($5e),($47)
0f12: fa 47 5c  mov   ($5c),($47)
0f15: 09 47 46  or    ($46),($47)
0f18: 8f 00 34  mov   $34,#$00
0f1b: 4d        push  x
0f1c: 7d        mov   a,x
0f1d: 80        setc
0f1e: a8 04     sbc   a,#$04
0f20: 5d        mov   x,a
0f21: f5 15 02  mov   a,$0215+x
0f24: 3f 9d 08  call  $089d
0f27: ce        pop   x
0f28: 8f ff 34  mov   $34,#$ff
0f2b: e8 00     mov   a,#$00
0f2d: d4 d5     mov   $d5+x,a
0f2f: 6f        ret

0f30: f4 d5     mov   a,$d5+x
0f32: f0 54     beq   $0f88
0f34: d8 44     mov   $44,x
0f36: 9b 70     dec   $70+x
0f38: d0 45     bne   $0f7f
0f3a: 3f 93 08  call  $0893
0f3d: f0 c2     beq   $0f01
0f3f: 30 20     bmi   $0f61
0f41: d5 00 02  mov   $0200+x,a
0f44: 3f 93 08  call  $0893
0f47: 30 18     bmi   $0f61
0f49: 2d        push  a
0f4a: 9f        xcn   a
0f4b: 28 07     and   a,#$07
0f4d: fd        mov   y,a
0f4e: f6 00 13  mov   a,$1300+y
0f51: d5 01 02  mov   $0201+x,a
0f54: ae        pop   a
0f55: 28 0f     and   a,#$0f
0f57: fd        mov   y,a
0f58: f6 08 13  mov   a,$1308+y
0f5b: d5 14 02  mov   $0214+x,a
0f5e: 3f 93 08  call  $0893
0f61: 68 e0     cmp   a,#$e0
0f63: 90 05     bcc   $0f6a
0f65: 3f 81 08  call  $0881
0f68: 2f d0     bra   $0f3a
0f6a: 3f 11 05  call  $0511
0f6d: f5 00 02  mov   a,$0200+x
0f70: d4 70     mov   $70+x,a
0f72: fd        mov   y,a
0f73: f5 01 02  mov   a,$0201+x
0f76: cf        mul   ya
0f77: dd        mov   a,y
0f78: d0 01     bne   $0f7b
0f7a: bc        inc   a
0f7b: d4 71     mov   $71+x,a
0f7d: 2f 03     bra   $0f82
0f7f: 3f 72 0c  call  $0c72
0f82: 3f ea 0a  call  $0aea
0f85: 3f a9 0b  call  $0ba9
0f88: 6f        ret

0f89: 8d bb     mov   y,#$bb
0f8b: e8 aa     mov   a,#$aa
0f8d: da f4     movw  $f4,ya
0f8f: e4 f4     mov   a,$f4
0f91: 68 cc     cmp   a,#$cc
0f93: d0 fa     bne   $0f8f
0f95: 2f 1e     bra   $0fb5
0f97: eb f4     mov   y,$f4
0f99: d0 fc     bne   $0f97
0f9b: 7e f4     cmp   y,$f4
0f9d: d0 10     bne   $0faf
0f9f: cb f4     mov   $f4,y
0fa1: e4 f5     mov   a,$f5
0fa3: d6 b9 a4  mov   $a4b9+y,a
0fa6: fc        inc   y
0fa7: d0 f2     bne   $0f9b
0fa9: ac a5 0f  inc   $0fa5
0fac: 5f 9b 0f  jmp   $0f9b

0faf: 10 ea     bpl   $0f9b
0fb1: 7e f4     cmp   y,$f4
0fb3: 10 e6     bpl   $0f9b
0fb5: ba f6     movw  ya,$f6
0fb7: c5 a4 0f  mov   $0fa4,a
0fba: cc a5 0f  mov   $0fa5,y
0fbd: eb f4     mov   y,$f4
0fbf: e4 f5     mov   a,$f5
0fc1: cb f4     mov   $f4,y
0fc3: d0 d2     bne   $0f97
0fc5: cd 33     mov   x,#$33
0fc7: d8 f1     mov   $f1,x
0fc9: 6f        ret

