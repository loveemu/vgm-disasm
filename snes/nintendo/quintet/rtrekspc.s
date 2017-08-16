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
040f: 3f 6f 0a  call  $0a6f
0412: a2 48     set5  $48
0414: e8 00     mov   a,#$00
0416: 8d 0c     mov   y,#$0c
0418: 3f 01 06  call  $0601
041b: 8d 1c     mov   y,#$1c
041d: 3f 01 06  call  $0601
0420: 8d 2c     mov   y,#$2c
0422: 3f 01 06  call  $0601
0425: 8d 3c     mov   y,#$3c
0427: 3f 01 06  call  $0601
042a: e8 10     mov   a,#$10
042c: 8d 5d     mov   y,#$5d
042e: 3f 01 06  call  $0601             ; set DIR to $1000
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
045b: f6 3d 0e  mov   a,$0e3d+y
045e: c4 f2     mov   $f2,a
0460: f6 47 0e  mov   a,$0e47+y
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
0486: 3f 80 0e  call  $0e80
0489: 69 4d 4c  cmp   ($4c),($4d)
048c: f0 02     beq   $0490
048e: ab 4c     inc   $4c
0490: e4 53     mov   a,$53
0492: eb fe     mov   y,$fe
0494: f0 fc     beq   $0492
0496: cf        mul   ya
0497: 60        clrc
0498: 84 51     adc   a,$51
049a: c4 51     mov   $51,a
049c: b0 04     bcs   $04a2
049e: ad 00     cmp   y,#$00
04a0: f0 44     beq   $04e6
04a2: 3f 2c 07  call  $072c
04a5: e4 31     mov   a,$31
04a7: f0 35     beq   $04de
04a9: eb 61     mov   y,$61
04ab: e4 31     mov   a,$31
04ad: cf        mul   ya
04ae: e8 ff     mov   a,#$ff
04b0: cf        mul   ya
04b1: cb 6b     mov   $6b,y
04b3: eb 63     mov   y,$63
04b5: e4 31     mov   a,$31
04b7: cf        mul   ya
04b8: e8 ff     mov   a,#$ff
04ba: cf        mul   ya
04bb: cb 6c     mov   $6c,y
04bd: 8d 60     mov   y,#$60
04bf: e4 31     mov   a,$31
04c1: cf        mul   ya
04c2: e8 ff     mov   a,#$ff
04c4: cf        mul   ya
04c5: dd        mov   a,y
04c6: 8d 0c     mov   y,#$0c
04c8: 3f 01 06  call  $0601
04cb: 8d 1c     mov   y,#$1c
04cd: 3f 01 06  call  $0601
04d0: e4 30     mov   a,$30
04d2: f0 0a     beq   $04de
04d4: 8b 31     dec   $31
04d6: d0 06     bne   $04de
04d8: 8f 00 04  mov   $04,#$00
04db: 3f 31 06  call  $0631
04de: cd 00     mov   x,#$00
04e0: 3f ff 04  call  $04ff
04e3: 5f 43 04  jmp   $0443

04e6: e4 04     mov   a,$04
04e8: f0 12     beq   $04fc
04ea: cd 00     mov   x,#$00
04ec: 8f 01 47  mov   $47,#$01
04ef: f4 d5     mov   a,$d5+x
04f1: f0 03     beq   $04f6
04f3: 3f 5c 0d  call  $0d5c
04f6: 3d        inc   x
04f7: 3d        inc   x
04f8: 0b 47     asl   $47
04fa: d0 f3     bne   $04ef
04fc: 5f 43 04  jmp   $0443

04ff: f4 04     mov   a,$04+x
0501: d4 f4     mov   $f4+x,a
0503: f4 f4     mov   a,$f4+x
0505: 74 f4     cmp   a,$f4+x
0507: d0 fa     bne   $0503
0509: d4 00     mov   $00+x,a
050b: 6f        ret

050c: ad ca     cmp   y,#$ca
050e: 90 05     bcc   $0515
0510: 3f 91 08  call  $0891
0513: 8d a4     mov   y,#$a4
0515: ad c8     cmp   y,#$c8
0517: b0 f2     bcs   $050b
0519: e4 1a     mov   a,$1a
051b: 24 47     and   a,$47
051d: d0 ec     bne   $050b
051f: dd        mov   a,y
0520: 28 7f     and   a,#$7f
0522: 60        clrc
0523: 84 50     adc   a,$50
0525: 60        clrc
0526: 95 f0 02  adc   a,$02f0+x
0529: d5 7d 03  mov   $037d+x,a
052c: f5 a5 03  mov   a,$03a5+x
052f: d5 7c 03  mov   $037c+x,a
0532: f5 a1 02  mov   a,$02a1+x
0535: 5c        lsr   a
0536: e8 00     mov   a,#$00
0538: 7c        ror   a
0539: d5 8c 02  mov   $028c+x,a
053c: e8 00     mov   a,#$00
053e: d4 ac     mov   $ac+x,a
0540: d5 00 01  mov   $0100+x,a
0543: d5 c8 02  mov   $02c8+x,a
0546: d4 c0     mov   $c0+x,a
0548: 09 47 5e  or    ($5e),($47)
054b: 09 47 45  or    ($45),($47)
054e: f5 64 02  mov   a,$0264+x
0551: d4 98     mov   $98+x,a
0553: f0 1e     beq   $0573
0555: f5 65 02  mov   a,$0265+x
0558: d4 99     mov   $99+x,a
055a: f5 78 02  mov   a,$0278+x
055d: d0 0a     bne   $0569
055f: f5 7d 03  mov   a,$037d+x
0562: 80        setc
0563: b5 79 02  sbc   a,$0279+x
0566: d5 7d 03  mov   $037d+x,a
0569: f5 79 02  mov   a,$0279+x
056c: 60        clrc
056d: 95 7d 03  adc   a,$037d+x
0570: 3f 03 0b  call  $0b03
0573: 3f 1b 0b  call  $0b1b
0576: 8d 00     mov   y,#$00
0578: e4 11     mov   a,$11
057a: 80        setc
057b: a8 34     sbc   a,#$34
057d: b0 09     bcs   $0588
057f: e4 11     mov   a,$11
0581: 80        setc
0582: a8 13     sbc   a,#$13
0584: b0 06     bcs   $058c
0586: dc        dec   y
0587: 1c        asl   a
0588: 7a 10     addw  ya,$10
058a: da 10     movw  $10,ya
058c: 4d        push  x
058d: e4 11     mov   a,$11
058f: 1c        asl   a
0590: 8d 00     mov   y,#$00
0592: cd 18     mov   x,#$18
0594: 9e        div   ya,x
0595: 5d        mov   x,a
0596: f6 53 0e  mov   a,$0e53+y
0599: c4 15     mov   $15,a
059b: f6 52 0e  mov   a,$0e52+y
059e: c4 14     mov   $14,a
05a0: f6 55 0e  mov   a,$0e55+y
05a3: 2d        push  a
05a4: f6 54 0e  mov   a,$0e54+y
05a7: ee        pop   y
05a8: 9a 14     subw  ya,$14
05aa: eb 10     mov   y,$10
05ac: cf        mul   ya
05ad: dd        mov   a,y
05ae: 8d 00     mov   y,#$00
05b0: 7a 14     addw  ya,$14
05b2: cb 15     mov   $15,y
05b4: 1c        asl   a
05b5: 2b 15     rol   $15
05b7: c4 14     mov   $14,a
05b9: 2f 04     bra   $05bf
05bb: 4b 15     lsr   $15
05bd: 7c        ror   a
05be: 3d        inc   x
05bf: c8 06     cmp   x,#$06
05c1: d0 f8     bne   $05bb
05c3: c4 14     mov   $14,a
05c5: ce        pop   x
05c6: f5 28 02  mov   a,$0228+x
05c9: eb 15     mov   y,$15
05cb: cf        mul   ya
05cc: da 16     movw  $16,ya
05ce: f5 28 02  mov   a,$0228+x
05d1: eb 14     mov   y,$14
05d3: cf        mul   ya
05d4: 6d        push  y
05d5: f5 29 02  mov   a,$0229+x
05d8: eb 14     mov   y,$14
05da: cf        mul   ya
05db: 7a 16     addw  ya,$16
05dd: da 16     movw  $16,ya
05df: f5 29 02  mov   a,$0229+x
05e2: eb 15     mov   y,$15
05e4: cf        mul   ya
05e5: fd        mov   y,a
05e6: ae        pop   a
05e7: 7a 16     addw  ya,$16
05e9: da 16     movw  $16,ya
05eb: f5 6c 0e  mov   a,$0e6c+x
05ee: 08 02     or    a,#$02
05f0: fd        mov   y,a
05f1: e4 16     mov   a,$16
05f3: 3f f9 05  call  $05f9
05f6: fc        inc   y
05f7: e4 17     mov   a,$17
05f9: 2d        push  a
05fa: e4 47     mov   a,$47
05fc: 24 1a     and   a,$1a
05fe: ae        pop   a
05ff: d0 04     bne   $0605
0601: cb f2     mov   $f2,y
0603: c4 f3     mov   $f3,a
0605: 6f        ret

0606: 8d 00     mov   y,#$00
0608: f7 40     mov   a,($40)+y
060a: 3a 40     incw  $40
060c: 2d        push  a
060d: f7 40     mov   a,($40)+y
060f: 3a 40     incw  $40
0611: fd        mov   y,a
0612: ae        pop   a
0613: 6f        ret

0614: 8f ff 30  mov   $30,#$ff
0617: 8f ff 31  mov   $31,#$ff
061a: c4 04     mov   $04,a
061c: 6f        ret

061d: 2d        push  a
061e: e5 fe 0f  mov   a,$0ffe
0621: ec ff 0f  mov   y,$0fff
0624: da 3b     movw  $3b,ya
0626: e8 00     mov   a,#$00
0628: 5d        mov   x,a
0629: c7 3b     mov   ($3b+x),a
062b: 3a 3b     incw  $3b
062d: d0 fa     bne   $0629
062f: ae        pop   a
0630: 6f        ret

0631: e4 d5     mov   a,$d5
0633: f0 44     beq   $0679
0635: e8 00     mov   a,#$00
0637: c4 6b     mov   $6b,a
0639: c4 6c     mov   $6c,a
063b: 8f ff 5c  mov   $5c,#$ff
063e: 8f ff 0e  mov   $0e,#$ff
0641: 8f 00 04  mov   $04,#$00
0644: e8 00     mov   a,#$00
0646: 8d 0c     mov   y,#$0c
0648: 3f 01 06  call  $0601
064b: 8d 1c     mov   y,#$1c
064d: 3f 01 06  call  $0601
0650: 8d 2c     mov   y,#$2c
0652: 3f 01 06  call  $0601
0655: 8d 3c     mov   y,#$3c
0657: 3f 01 06  call  $0601
065a: a2 48     set5  $48
065c: e8 00     mov   a,#$00
065e: c4 d5     mov   $d5,a
0660: c4 d7     mov   $d7,a
0662: c4 d9     mov   $d9,a
0664: c4 db     mov   $db,a
0666: c4 dd     mov   $dd,a
0668: c4 df     mov   $df,a
066a: c4 e1     mov   $e1,a
066c: c4 e3     mov   $e3,a
066e: c4 e5     mov   $e5,a
0670: c4 e7     mov   $e7,a
0672: c4 31     mov   $31,a
0674: e8 01     mov   a,#$01
0676: 3f 6f 0a  call  $0a6f
0679: 6f        ret

067a: 8f ff 0e  mov   $0e,#$ff
067d: 6f        ret

067e: 3f 87 0f  call  $0f87
0681: c4 08     mov   $08,a
0683: c4 04     mov   $04,a
0685: 6f        ret

0686: 68 f0     cmp   a,#$f0
0688: f0 a7     beq   $0631
068a: 68 f1     cmp   a,#$f1
068c: f0 86     beq   $0614
068e: 68 f2     cmp   a,#$f2
0690: f0 e8     beq   $067a
0692: 68 ff     cmp   a,#$ff
0694: f0 e8     beq   $067e
0696: 6f        ret

0697: e4 f4     mov   a,$f4
0699: 68 90     cmp   a,#$90
069b: f0 12     beq   $06af
069d: 68 91     cmp   a,#$91
069f: f0 12     beq   $06b3
06a1: 80        setc
06a2: a8 10     sbc   a,#$10
06a4: 68 70     cmp   a,#$70
06a6: b0 06     bcs   $06ae
06a8: 1c        asl   a
06a9: c4 3e     mov   $3e,a
06ab: 8f ff 5e  mov   $5e,#$ff
06ae: 6f        ret

06af: 8f 01 32  mov   $32,#$01
06b2: 6f        ret

06b3: 8f 00 32  mov   $32,#$00
06b6: 6f        ret

06b7: c4 04     mov   $04,a
06b9: 1c        asl   a
06ba: f0 32     beq   $06ee
06bc: 68 02     cmp   a,#$02
06be: d0 d7     bne   $0697
06c0: 3f 1d 06  call  $061d
06c3: e5 fc 0f  mov   a,$0ffc
06c6: ec fd 0f  mov   y,$0ffd
06c9: da 40     movw  $40,ya
06cb: 3a 40     incw  $40
06cd: 3a 40     incw  $40
06cf: 8f 02 0c  mov   $0c,#$02
06d2: e8 00     mov   a,#$00
06d4: c4 30     mov   $30,a
06d6: 8f 00 31  mov   $31,#$00
06d9: c4 5f     mov   $5f,a
06db: c4 39     mov   $39,a
06dd: c4 36     mov   $36,a
06df: c4 e5     mov   $e5,a
06e1: c4 e7     mov   $e7,a
06e3: c4 3d     mov   $3d,a
06e5: c4 3e     mov   $3e,a
06e7: c4 f5     mov   $f5,a
06e9: 8f 00 0e  mov   $0e,#$00
06ec: d2 48     clr6  $48
06ee: e4 1a     mov   a,$1a
06f0: 48 ff     eor   a,#$ff
06f2: 0e 46 00  tset1 $0046
06f5: 6f        ret

06f6: cd 0e     mov   x,#$0e
06f8: 8f 80 47  mov   $47,#$80
06fb: e8 00     mov   a,#$00
06fd: d5 05 03  mov   $0305+x,a
0700: e8 0a     mov   a,#$0a
0702: 3f fd 08  call  $08fd
0705: d5 15 02  mov   $0215+x,a
0708: d5 a5 03  mov   $03a5+x,a
070b: d5 f0 02  mov   $02f0+x,a
070e: d5 64 02  mov   $0264+x,a
0711: d4 ad     mov   $ad+x,a
0713: d4 c1     mov   $c1+x,a
0715: 1d        dec   x
0716: 1d        dec   x
0717: 4b 47     lsr   $47
0719: d0 e0     bne   $06fb
071b: c4 5a     mov   $5a,a
071d: c4 68     mov   $68,a
071f: c4 54     mov   $54,a
0721: c4 50     mov   $50,a
0723: c4 42     mov   $42,a
0725: 8f 00 59  mov   $59,#$00
0728: 8f 20 53  mov   $53,#$20
072b: 6f        ret

072c: eb 08     mov   y,$08
072e: e4 00     mov   a,$00
0730: 68 f0     cmp   a,#$f0
0732: 90 03     bcc   $0737
0734: 5f 86 06  jmp   $0686

0737: c4 08     mov   $08,a
0739: 7e 00     cmp   y,$00
073b: f0 03     beq   $0740
073d: 5f b7 06  jmp   $06b7

0740: e4 04     mov   a,$04
0742: f0 e7     beq   $072b
0744: 8f 00 0e  mov   $0e,#$00
0747: e4 0c     mov   a,$0c
0749: f0 5e     beq   $07a9
074b: 6e 0c a8  dbnz  $0c,$06f6
074e: fa 3d f5  mov   ($f5),($3d)
0751: 3f 06 06  call  $0606
0754: d0 20     bne   $0776
0756: fd        mov   y,a
0757: d0 09     bne   $0762
0759: 8f ff 3d  mov   $3d,#$ff
075c: 8f ff f5  mov   $f5,#$ff
075f: 5f b7 06  jmp   $06b7

0762: 8b 42     dec   $42
0764: 10 05     bpl   $076b
0766: c4 42     mov   $42,a
0768: 8f 00 3d  mov   $3d,#$00
076b: 3f 06 06  call  $0606
076e: f8 42     mov   x,$42
0770: f0 dc     beq   $074e
0772: da 40     movw  $40,ya
0774: 2f d8     bra   $074e
0776: ab 3d     inc   $3d
0778: da 16     movw  $16,ya
077a: 8d 0f     mov   y,#$0f
077c: f7 16     mov   a,($16)+y
077e: d6 d4 00  mov   $00d4+y,a
0781: dc        dec   y
0782: 10 f8     bpl   $077c
0784: cd 00     mov   x,#$00
0786: 8f 01 47  mov   $47,#$01
0789: f4 d5     mov   a,$d5+x
078b: f0 0a     beq   $0797
078d: f5 15 02  mov   a,$0215+x
0790: d0 05     bne   $0797
0792: e8 00     mov   a,#$00
0794: 3f 91 08  call  $0891
0797: e8 00     mov   a,#$00
0799: d5 b8 03  mov   $03b8+x,a
079c: d4 84     mov   $84+x,a
079e: d4 85     mov   $85+x,a
07a0: bc        inc   a
07a1: d4 70     mov   $70+x,a
07a3: 3d        inc   x
07a4: 3d        inc   x
07a5: 0b 47     asl   $47
07a7: d0 e0     bne   $0789
07a9: cd 00     mov   x,#$00
07ab: d8 5e     mov   $5e,x
07ad: 8f 01 47  mov   $47,#$01
07b0: d8 44     mov   $44,x
07b2: f4 d5     mov   a,$d5+x
07b4: f0 6c     beq   $0822
07b6: 9b 70     dec   $70+x
07b8: d0 62     bne   $081c
07ba: 3f 87 08  call  $0887
07bd: d0 1d     bne   $07dc
07bf: f5 b8 03  mov   a,$03b8+x
07c2: f0 8a     beq   $074e
07c4: 3f 07 0a  call  $0a07
07c7: f5 b8 03  mov   a,$03b8+x
07ca: 9c        dec   a
07cb: d5 b8 03  mov   $03b8+x,a
07ce: d0 ea     bne   $07ba
07d0: f5 3c 02  mov   a,$023c+x
07d3: d4 d4     mov   $d4+x,a
07d5: f5 3d 02  mov   a,$023d+x
07d8: d4 d5     mov   $d5+x,a
07da: 2f de     bra   $07ba
07dc: 30 20     bmi   $07fe
07de: d5 00 02  mov   $0200+x,a
07e1: 3f 87 08  call  $0887
07e4: 30 18     bmi   $07fe
07e6: 2d        push  a
07e7: 9f        xcn   a
07e8: 28 07     and   a,#$07
07ea: fd        mov   y,a
07eb: f6 00 13  mov   a,$1300+y
07ee: d5 01 02  mov   $0201+x,a
07f1: ae        pop   a
07f2: 28 0f     and   a,#$0f
07f4: fd        mov   y,a
07f5: f6 08 13  mov   a,$1308+y
07f8: d5 14 02  mov   $0214+x,a
07fb: 3f 87 08  call  $0887
07fe: 68 e0     cmp   a,#$e0
0800: 90 05     bcc   $0807
0802: 3f 75 08  call  $0875
0805: 2f b3     bra   $07ba
0807: 3f 0c 05  call  $050c
080a: f5 00 02  mov   a,$0200+x
080d: d4 70     mov   $70+x,a
080f: fd        mov   y,a
0810: f5 01 02  mov   a,$0201+x
0813: cf        mul   ya
0814: dd        mov   a,y
0815: d0 01     bne   $0818
0817: bc        inc   a
0818: d4 71     mov   $71+x,a
081a: 2f 03     bra   $081f
081c: 3f 6b 0c  call  $0c6b
081f: 3f e3 0a  call  $0ae3
0822: 3d        inc   x
0823: 3d        inc   x
0824: 0b 47     asl   $47
0826: d0 88     bne   $07b0
0828: e4 54     mov   a,$54
082a: f0 0b     beq   $0837
082c: ba 56     movw  ya,$56
082e: 7a 52     addw  ya,$52
0830: 6e 54 02  dbnz  $54,$0835
0833: ba 54     movw  ya,$54
0835: da 52     movw  $52,ya
0837: e4 68     mov   a,$68
0839: f0 15     beq   $0850
083b: ba 64     movw  ya,$64
083d: 7a 60     addw  ya,$60
083f: da 60     movw  $60,ya
0841: ba 66     movw  ya,$66
0843: 7a 62     addw  ya,$62
0845: 6e 68 06  dbnz  $68,$084e
0848: ba 68     movw  ya,$68
084a: da 60     movw  $60,ya
084c: eb 6a     mov   y,$6a
084e: da 62     movw  $62,ya
0850: e4 5a     mov   a,$5a
0852: f0 0e     beq   $0862
0854: ba 5c     movw  ya,$5c
0856: 7a 58     addw  ya,$58
0858: 6e 5a 02  dbnz  $5a,$085d
085b: ba 5a     movw  ya,$5a
085d: da 58     movw  $58,ya
085f: 8f ff 5e  mov   $5e,#$ff
0862: cd 00     mov   x,#$00
0864: 8f 01 47  mov   $47,#$01
0867: f4 d5     mov   a,$d5+x
0869: f0 03     beq   $086e
086b: 3f a2 0b  call  $0ba2
086e: 3d        inc   x
086f: 3d        inc   x
0870: 0b 47     asl   $47
0872: d0 f3     bne   $0867
0874: 6f        ret

0875: 1c        asl   a
0876: fd        mov   y,a
0877: f6 83 0a  mov   a,$0a83+y
087a: 2d        push  a
087b: f6 82 0a  mov   a,$0a82+y
087e: 2d        push  a
087f: dd        mov   a,y
0880: 5c        lsr   a
0881: fd        mov   y,a
0882: f6 22 0b  mov   a,$0b22+y
0885: f0 08     beq   $088f
0887: e7 d4     mov   a,($d4+x)
0889: bb d4     inc   $d4+x
088b: d0 02     bne   $088f
088d: bb d5     inc   $d5+x
088f: fd        mov   y,a
0890: 6f        ret

; vcmd e0 - set instrument
0891: d5 15 02  mov   $0215+x,a
0894: eb 34     mov   y,$34
0896: d0 11     bne   $08a9
; BGM
0898: fd        mov   y,a
0899: 10 06     bpl   $08a1             ; if percussion note:
089b: 80        setc
089c: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
089e: 60        clrc
089f: 84 5f     adc   a,$5f             ;   add perc patch base
08a1: 4d        push  x
08a2: 5d        mov   x,a
08a3: f5 e0 0f  mov   a,$0fe0+x         ; get real instrument index from lookup table
08a6: ce        pop   x
08a7: 2f 09     bra   $08b2
; SFX
08a9: fd        mov   y,a
08aa: 10 06     bpl   $08b2
08ac: 80        setc
08ad: a8 ca     sbc   a,#$ca
08af: 60        clrc
08b0: 84 39     adc   a,$39
;
08b2: 8d 06     mov   y,#$06
08b4: cf        mul   ya
08b5: da 14     movw  $14,ya
08b7: 60        clrc
08b8: 98 00 14  adc   $14,#$00
08bb: 98 12 15  adc   $15,#$12
08be: e4 1a     mov   a,$1a
08c0: 24 47     and   a,$47
08c2: d0 38     bne   $08fc
08c4: 4d        push  x
08c5: f5 6c 0e  mov   a,$0e6c+x
08c8: 08 04     or    a,#$04
08ca: 5d        mov   x,a
08cb: 8d 00     mov   y,#$00
08cd: f7 14     mov   a,($14)+y
08cf: 10 0e     bpl   $08df
08d1: 28 1f     and   a,#$1f
08d3: 38 20 48  and   $48,#$20
08d6: 0e 48 00  tset1 $0048
08d9: 09 47 49  or    ($49),($47)
08dc: dd        mov   a,y
08dd: 2f 07     bra   $08e6
08df: e4 47     mov   a,$47
08e1: 4e 49 00  tclr1 $0049
08e4: f7 14     mov   a,($14)+y
08e6: d8 f2     mov   $f2,x
08e8: c4 f3     mov   $f3,a
08ea: 3d        inc   x
08eb: fc        inc   y
08ec: ad 04     cmp   y,#$04
08ee: d0 f4     bne   $08e4
08f0: ce        pop   x
08f1: f7 14     mov   a,($14)+y
08f3: d5 29 02  mov   $0229+x,a
08f6: fc        inc   y
08f7: f7 14     mov   a,($14)+y
08f9: d5 28 02  mov   $0228+x,a
08fc: 6f        ret

; vcmd e1
08fd: d5 69 03  mov   $0369+x,a
0900: 28 1f     and   a,#$1f
0902: d5 41 03  mov   $0341+x,a
0905: e8 00     mov   a,#$00
0907: d5 40 03  mov   $0340+x,a
090a: 6f        ret

; vcmd e2
090b: d4 85     mov   $85+x,a
090d: 2d        push  a
090e: 3f 87 08  call  $0887
0911: d5 68 03  mov   $0368+x,a
0914: 80        setc
0915: b5 41 03  sbc   a,$0341+x
0918: ce        pop   x
0919: 3f 26 0b  call  $0b26
091c: d5 54 03  mov   $0354+x,a
091f: dd        mov   a,y
0920: d5 55 03  mov   $0355+x,a
0923: 6f        ret

; vcmd e3
0924: d5 a0 02  mov   $02a0+x,a
0927: 3f 87 08  call  $0887
092a: d5 8d 02  mov   $028d+x,a
092d: 3f 87 08  call  $0887
; vcmd e4
0930: d4 ad     mov   $ad+x,a
0932: d5 b5 02  mov   $02b5+x,a
0935: e8 00     mov   a,#$00
0937: d5 a1 02  mov   $02a1+x,a
093a: 6f        ret

; vcmd f0
093b: d5 a1 02  mov   $02a1+x,a
093e: 2d        push  a
093f: 8d 00     mov   y,#$00
0941: f4 ad     mov   a,$ad+x
0943: ce        pop   x
0944: 9e        div   ya,x
0945: f8 44     mov   x,$44
0947: d5 b4 02  mov   $02b4+x,a
094a: 6f        ret

; vcmd e5
094b: dd        mov   a,y
094c: 80        setc
094d: a8 1e     sbc   a,#$1e
094f: fd        mov   y,a
0950: e8 00     mov   a,#$00
0952: da 58     movw  $58,ya
0954: e4 31     mov   a,$31
0956: d0 03     bne   $095b
0958: 8f ff 31  mov   $31,#$ff
095b: 6f        ret

; vcmd e6
095c: c4 5a     mov   $5a,a
095e: 3f 87 08  call  $0887
0961: c4 5b     mov   $5b,a
0963: 80        setc
0964: a4 59     sbc   a,$59
0966: f8 5a     mov   x,$5a
0968: 3f 26 0b  call  $0b26
096b: da 5c     movw  $5c,ya
096d: 6f        ret

; vcmd e7
096e: e4 34     mov   a,$34
0970: d0 04     bne   $0976
0972: e8 00     mov   a,#$00
0974: da 52     movw  $52,ya
0976: 6f        ret

; vcmd e8
0977: c4 54     mov   $54,a
0979: 3f 87 08  call  $0887
097c: c4 55     mov   $55,a
097e: 80        setc
097f: a4 53     sbc   a,$53
0981: f8 54     mov   x,$54
0983: 3f 26 0b  call  $0b26
0986: da 56     movw  $56,ya
0988: 6f        ret

; vcmd e9
0989: c4 50     mov   $50,a
098b: 6f        ret

; vcmd ea
098c: d5 f0 02  mov   $02f0+x,a
098f: 6f        ret

; vcmd eb
0990: d5 dc 02  mov   $02dc+x,a
0993: 3f 87 08  call  $0887
0996: d5 c9 02  mov   $02c9+x,a
0999: 3f 87 08  call  $0887
; vcmd ec
099c: d4 c1     mov   $c1+x,a
099e: 6f        ret

; vcmd f1
099f: e8 01     mov   a,#$01
09a1: 2f 02     bra   $09a5
; vcmd f2
09a3: e8 00     mov   a,#$00
09a5: d5 78 02  mov   $0278+x,a
09a8: dd        mov   a,y
09a9: d5 65 02  mov   $0265+x,a
09ac: 3f 87 08  call  $0887
09af: d5 64 02  mov   $0264+x,a
09b2: 3f 87 08  call  $0887
09b5: d5 79 02  mov   $0279+x,a
09b8: 6f        ret

; vcmd f3
09b9: d5 64 02  mov   $0264+x,a
09bc: 6f        ret

; vcmd ed
09bd: eb 34     mov   y,$34
09bf: f0 07     beq   $09c8
09c1: 80        setc
09c2: a8 00     sbc   a,#$00
09c4: b0 02     bcs   $09c8
09c6: e8 00     mov   a,#$00
09c8: d5 05 03  mov   $0305+x,a
09cb: e8 00     mov   a,#$00
09cd: d5 04 03  mov   $0304+x,a
09d0: 6f        ret

; vcmd ee
09d1: d4 84     mov   $84+x,a
09d3: 2d        push  a
09d4: 3f 87 08  call  $0887
09d7: d5 2c 03  mov   $032c+x,a
09da: 80        setc
09db: b5 05 03  sbc   a,$0305+x
09de: ce        pop   x
09df: 3f 26 0b  call  $0b26
09e2: d5 18 03  mov   $0318+x,a
09e5: dd        mov   a,y
09e6: d5 19 03  mov   $0319+x,a
09e9: 6f        ret

; vcmd f4
09ea: d5 a5 03  mov   $03a5+x,a
09ed: 6f        ret

; vcmd ef
09ee: d5 50 02  mov   $0250+x,a
09f1: 3f 87 08  call  $0887
09f4: d5 51 02  mov   $0251+x,a
09f7: 3f 87 08  call  $0887
09fa: d5 b8 03  mov   $03b8+x,a
09fd: f4 d4     mov   a,$d4+x
09ff: d5 3c 02  mov   $023c+x,a
0a02: f4 d5     mov   a,$d5+x
0a04: d5 3d 02  mov   $023d+x,a
0a07: f5 50 02  mov   a,$0250+x
0a0a: d4 d4     mov   $d4+x,a
0a0c: f5 51 02  mov   a,$0251+x
0a0f: d4 d5     mov   $d5+x,a
0a11: 6f        ret

; vcmd f5
0a12: c4 4a     mov   $4a,a
0a14: 3f 87 08  call  $0887
0a17: e8 00     mov   a,#$00
0a19: da 60     movw  $60,ya
0a1b: 3f 87 08  call  $0887
0a1e: e8 00     mov   a,#$00
0a20: da 62     movw  $62,ya
0a22: b2 48     clr5  $48
0a24: 6f        ret

; vcmd f8
0a25: c4 68     mov   $68,a
0a27: 3f 87 08  call  $0887
0a2a: c4 69     mov   $69,a
0a2c: 80        setc
0a2d: a4 61     sbc   a,$61
0a2f: f8 68     mov   x,$68
0a31: 3f 26 0b  call  $0b26
0a34: da 64     movw  $64,ya
0a36: 3f 87 08  call  $0887
0a39: c4 6a     mov   $6a,a
0a3b: 80        setc
0a3c: a4 63     sbc   a,$63
0a3e: f8 68     mov   x,$68
0a40: 3f 26 0b  call  $0b26
0a43: da 66     movw  $66,ya
0a45: 6f        ret

; vcmd f6
0a46: da 60     movw  $60,ya
0a48: da 62     movw  $62,ya
0a4a: a2 48     set5  $48
0a4c: 6f        ret

; vcmd f7
0a4d: 3f 6f 0a  call  $0a6f
0a50: 3f 87 08  call  $0887
0a53: c4 4e     mov   $4e,a
0a55: 3f 87 08  call  $0887
0a58: 8d 08     mov   y,#$08
0a5a: cf        mul   ya
0a5b: 5d        mov   x,a
0a5c: 8d 0f     mov   y,#$0f
0a5e: f5 1e 0e  mov   a,$0e1e+x
0a61: 3f 01 06  call  $0601
0a64: 3d        inc   x
0a65: dd        mov   a,y
0a66: 60        clrc
0a67: 88 10     adc   a,#$10
0a69: fd        mov   y,a
0a6a: 10 f2     bpl   $0a5e
0a6c: f8 44     mov   x,$44
0a6e: 6f        ret

0a6f: c4 4d     mov   $4d,a
0a71: 8d 7d     mov   y,#$7d
0a73: cb f2     mov   $f2,y
0a75: e4 f3     mov   a,$f3
0a77: 64 4d     cmp   a,$4d
0a79: f0 29     beq   $0aa4
0a7b: 28 0f     and   a,#$0f
0a7d: 48 ff     eor   a,#$ff
0a7f: f3 4c 03  bbc7  $4c,$0a85
0a82: 60        clrc
0a83: 84 4c     adc   a,$4c
0a85: c4 4c     mov   $4c,a
0a87: 8d 04     mov   y,#$04
0a89: f6 3d 0e  mov   a,$0e3d+y
0a8c: c4 f2     mov   $f2,a
0a8e: e8 00     mov   a,#$00
0a90: c4 f3     mov   $f3,a
0a92: fe f5     dbnz  y,$0a89
0a94: e4 48     mov   a,$48
0a96: 08 20     or    a,#$20
0a98: 8d 6c     mov   y,#$6c
0a9a: 3f 01 06  call  $0601
0a9d: e4 4d     mov   a,$4d
0a9f: 8d 7d     mov   y,#$7d
0aa1: 3f 01 06  call  $0601
0aa4: 1c        asl   a
0aa5: 1c        asl   a
0aa6: 1c        asl   a
0aa7: 48 ff     eor   a,#$ff
0aa9: 80        setc
0aaa: 88 ff     adc   a,#$ff
0aac: 8d 6d     mov   y,#$6d
0aae: 5f 01 06  jmp   $0601

; vcmd ff
0ab1: 2d        push  a
0ab2: 7d        mov   a,x
0ab3: 68 10     cmp   a,#$10
0ab5: 90 03     bcc   $0aba
0ab7: 80        setc
0ab8: a8 04     sbc   a,#$04
0aba: 9f        xcn   a
0abb: 5c        lsr   a
0abc: 60        clrc
0abd: 88 05     adc   a,#$05
0abf: fd        mov   y,a
0ac0: ae        pop   a
0ac1: 08 80     or    a,#$80
0ac3: 3f f9 05  call  $05f9
0ac6: fc        inc   y
0ac7: 6d        push  y
0ac8: 3f 87 08  call  $0887
0acb: c4 3f     mov   $3f,a
0acd: 3f 87 08  call  $0887
0ad0: 9f        xcn   a
0ad1: 1c        asl   a
0ad2: 04 3f     or    a,$3f
0ad4: ee        pop   y
0ad5: 3f f9 05  call  $05f9
0ad8: 6f        ret

; vcmd fa - set perc patch base
0ad9: eb 34     mov   y,$34
0adb: d0 03     bne   $0ae0
; BGM
0add: c4 5f     mov   $5f,a
0adf: 6f        ret
; SFX
0ae0: c4 39     mov   $39,a
0ae2: 6f        ret

0ae3: f4 98     mov   a,$98+x
0ae5: d0 33     bne   $0b1a
0ae7: e7 d4     mov   a,($d4+x)
0ae9: 68 f9     cmp   a,#$f9
0aeb: d0 2d     bne   $0b1a
0aed: 3f 89 08  call  $0889
0af0: 3f 87 08  call  $0887
; vcmd f9
0af3: d4 99     mov   $99+x,a
0af5: 3f 87 08  call  $0887
0af8: d4 98     mov   $98+x,a
0afa: 3f 87 08  call  $0887
0afd: 60        clrc
0afe: 84 50     adc   a,$50
0b00: 95 f0 02  adc   a,$02f0+x
0b03: 28 7f     and   a,#$7f
0b05: d5 a4 03  mov   $03a4+x,a
0b08: 80        setc
0b09: b5 7d 03  sbc   a,$037d+x
0b0c: fb 98     mov   y,$98+x
0b0e: 6d        push  y
0b0f: ce        pop   x
0b10: 3f 26 0b  call  $0b26
0b13: d5 90 03  mov   $0390+x,a
0b16: dd        mov   a,y
0b17: d5 91 03  mov   $0391+x,a
0b1a: 6f        ret

0b1b: f5 7d 03  mov   a,$037d+x
0b1e: c4 11     mov   $11,a
0b20: f5 7c 03  mov   a,$037c+x
0b23: c4 10     mov   $10,a
0b25: 6f        ret

0b26: ed        notc
0b27: 6b 12     ror   $12
0b29: 10 03     bpl   $0b2e
0b2b: 48 ff     eor   a,#$ff
0b2d: bc        inc   a
0b2e: 8d 00     mov   y,#$00
0b30: 9e        div   ya,x
0b31: 2d        push  a
0b32: e8 00     mov   a,#$00
0b34: 9e        div   ya,x
0b35: ee        pop   y
0b36: f8 44     mov   x,$44
0b38: f3 12 06  bbc7  $12,$0b41
0b3b: da 14     movw  $14,ya
0b3d: ba 1c     movw  ya,$1c
0b3f: 9a 14     subw  ya,$14
0b41: 6f        ret

; vcmd dispatch table
0b42: dw $0891  ; e0 - set instrument
0b44: dw $08fd  ; e1
0b46: dw $090b  ; e2
0b48: dw $0924  ; e3
0b4a: dw $0930  ; e4
0b4c: dw $094b  ; e5
0b4e: dw $095c  ; e6
0b50: dw $096e  ; e7
0b52: dw $0977  ; e8
0b54: dw $0989  ; e9
0b56: dw $098c  ; ea
0b58: dw $0990  ; eb
0b5a: dw $099c  ; ec
0b5c: dw $09bd  ; ed
0b5e: dw $09d1  ; ee
0b60: dw $09ee  ; ef
0b62: dw $093b  ; f0
0b64: dw $099f  ; f1
0b66: dw $09a3  ; f2
0b68: dw $09b9  ; f3
0b6a: dw $09ea  ; f4
0b6c: dw $0a12  ; f5
0b6e: dw $0a46  ; f6
0b70: dw $0a4d  ; f7
0b72: dw $0a25  ; f8
0b74: dw $0af3  ; f9
0b76: dw $0ad9  ; fa - set perc patch base
0b78: dw $0000  ; fb
0b7a: dw $0000  ; fc
0b7c: dw $0000  ; fd
0b7e: dw $0000  ; fe
0b80: dw $0ab1  ; ff

; vcmd length table
0b82: db $01,$01,$02,$03,$00,$01,$02,$01
0b8a: db $02,$01,$01,$03,$00,$01,$02,$03
0b92: db $01,$03,$03,$00,$01,$03,$00,$03
0b9a: db $03,$03,$01,$00,$00,$00,$00,$01

0ba2: f4 84     mov   a,$84+x
0ba4: f0 09     beq   $0baf
0ba6: e8 04     mov   a,#$04
0ba8: 8d 03     mov   y,#$03
0baa: 9b 84     dec   $84+x
0bac: 3f 42 0c  call  $0c42
0baf: fb c1     mov   y,$c1+x
0bb1: f0 23     beq   $0bd6
0bb3: f5 dc 02  mov   a,$02dc+x
0bb6: de c0 1b  cbne  $c0+x,$0bd4
0bb9: 09 47 5e  or    ($5e),($47)
0bbc: f5 c8 02  mov   a,$02c8+x
0bbf: 10 07     bpl   $0bc8
0bc1: fc        inc   y
0bc2: d0 04     bne   $0bc8
0bc4: e8 80     mov   a,#$80
0bc6: 2f 04     bra   $0bcc
0bc8: 60        clrc
0bc9: 95 c9 02  adc   a,$02c9+x
0bcc: d5 c8 02  mov   $02c8+x,a
0bcf: 3f e8 0d  call  $0de8
0bd2: 2f 07     bra   $0bdb
0bd4: bb c0     inc   $c0+x
0bd6: e8 ff     mov   a,#$ff
0bd8: 3f f3 0d  call  $0df3
0bdb: f4 85     mov   a,$85+x
0bdd: f0 09     beq   $0be8
0bdf: e8 40     mov   a,#$40
0be1: 8d 03     mov   y,#$03
0be3: 9b 85     dec   $85+x
0be5: 3f 42 0c  call  $0c42
0be8: e4 47     mov   a,$47
0bea: 24 5e     and   a,$5e
0bec: f0 53     beq   $0c41
0bee: f5 41 03  mov   a,$0341+x
0bf1: fd        mov   y,a
0bf2: f5 40 03  mov   a,$0340+x
0bf5: da 10     movw  $10,ya
0bf7: f5 6c 0e  mov   a,$0e6c+x
0bfa: c4 12     mov   $12,a
0bfc: e4 32     mov   a,$32
0bfe: f0 09     beq   $0c09
0c00: 8f 0a 11  mov   $11,#$0a
0c03: 8f 00 10  mov   $10,#$00
0c06: 8f 0a 11  mov   $11,#$0a
0c09: eb 11     mov   y,$11
0c0b: f6 0a 0e  mov   a,$0e0a+y
0c0e: 80        setc
0c0f: b6 09 0e  sbc   a,$0e09+y
0c12: eb 10     mov   y,$10
0c14: cf        mul   ya
0c15: dd        mov   a,y
0c16: eb 11     mov   y,$11
0c18: 60        clrc
0c19: 96 09 0e  adc   a,$0e09+y
0c1c: fd        mov   y,a
0c1d: f5 2d 03  mov   a,$032d+x
0c20: cf        mul   ya
0c21: f5 69 03  mov   a,$0369+x
0c24: 1c        asl   a
0c25: 13 12 01  bbc0  $12,$0c29
0c28: 1c        asl   a
0c29: dd        mov   a,y
0c2a: 90 03     bcc   $0c2f
0c2c: 48 ff     eor   a,#$ff
0c2e: bc        inc   a
0c2f: eb 12     mov   y,$12
0c31: 3f f9 05  call  $05f9
0c34: 8d 14     mov   y,#$14
0c36: e8 00     mov   a,#$00
0c38: 9a 10     subw  ya,$10
0c3a: da 10     movw  $10,ya
0c3c: ab 12     inc   $12
0c3e: 33 12 c8  bbc1  $12,$0c09
0c41: 6f        ret

0c42: 09 47 5e  or    ($5e),($47)
0c45: da 14     movw  $14,ya
0c47: da 16     movw  $16,ya
0c49: 4d        push  x
0c4a: ee        pop   y
0c4b: 60        clrc
0c4c: d0 0f     bne   $0c5d
0c4e: 98 27 16  adc   $16,#$27
0c51: 68 7c     cmp   a,#$7c
0c53: f0 15     beq   $0c6a
0c55: 60        clrc
0c56: e8 00     mov   a,#$00
0c58: d7 14     mov   ($14)+y,a
0c5a: fc        inc   y
0c5b: 2f 09     bra   $0c66
0c5d: 98 14 16  adc   $16,#$14
0c60: 3f 64 0c  call  $0c64
0c63: fc        inc   y
0c64: f7 14     mov   a,($14)+y
0c66: 97 16     adc   a,($16)+y
0c68: d7 14     mov   ($14)+y,a
0c6a: 6f        ret

0c6b: f4 71     mov   a,$71+x
0c6d: f0 64     beq   $0cd3
0c6f: 9b 71     dec   $71+x
0c71: f0 05     beq   $0c78
0c73: e8 02     mov   a,#$02
0c75: de 70 5b  cbne  $70+x,$0cd3
0c78: f5 b8 03  mov   a,$03b8+x
0c7b: c4 17     mov   $17,a
0c7d: f4 d4     mov   a,$d4+x
0c7f: fb d5     mov   y,$d5+x
0c81: da 14     movw  $14,ya
0c83: 8d 00     mov   y,#$00
0c85: f7 14     mov   a,($14)+y
0c87: f0 1c     beq   $0ca5
0c89: 30 05     bmi   $0c90
0c8b: fc        inc   y
0c8c: f7 14     mov   a,($14)+y
0c8e: 10 fb     bpl   $0c8b
0c90: 68 c8     cmp   a,#$c8
0c92: f0 3f     beq   $0cd3
0c94: 68 ef     cmp   a,#$ef
0c96: f0 29     beq   $0cc1
0c98: 68 e0     cmp   a,#$e0
0c9a: 90 30     bcc   $0ccc
0c9c: 6d        push  y
0c9d: fd        mov   y,a
0c9e: ae        pop   a
0c9f: 96 a2 0a  adc   a,$0aa2+y
0ca2: fd        mov   y,a
0ca3: 2f e0     bra   $0c85
0ca5: e4 17     mov   a,$17
0ca7: f0 23     beq   $0ccc
0ca9: 8b 17     dec   $17
0cab: d0 0a     bne   $0cb7
0cad: f5 3d 02  mov   a,$023d+x
0cb0: 2d        push  a
0cb1: f5 3c 02  mov   a,$023c+x
0cb4: ee        pop   y
0cb5: 2f ca     bra   $0c81
0cb7: f5 51 02  mov   a,$0251+x
0cba: 2d        push  a
0cbb: f5 50 02  mov   a,$0250+x
0cbe: ee        pop   y
0cbf: 2f c0     bra   $0c81
0cc1: fc        inc   y
0cc2: f7 14     mov   a,($14)+y
0cc4: 2d        push  a
0cc5: fc        inc   y
0cc6: f7 14     mov   a,($14)+y
0cc8: fd        mov   y,a
0cc9: ae        pop   a
0cca: 2f b5     bra   $0c81
0ccc: e4 47     mov   a,$47
0cce: 8d 5c     mov   y,#$5c
0cd0: 3f f9 05  call  $05f9
0cd3: f2 13     clr7  $13
0cd5: f4 98     mov   a,$98+x
0cd7: f0 2c     beq   $0d05
0cd9: f4 99     mov   a,$99+x
0cdb: f0 04     beq   $0ce1
0cdd: 9b 99     dec   $99+x
0cdf: 2f 24     bra   $0d05
0ce1: e2 13     set7  $13
0ce3: 9b 98     dec   $98+x
0ce5: d0 0b     bne   $0cf2
0ce7: f5 a5 03  mov   a,$03a5+x
0cea: d5 7c 03  mov   $037c+x,a
0ced: f5 a4 03  mov   a,$03a4+x
0cf0: 2f 10     bra   $0d02
0cf2: 60        clrc
0cf3: f5 7c 03  mov   a,$037c+x
0cf6: 95 90 03  adc   a,$0390+x
0cf9: d5 7c 03  mov   $037c+x,a
0cfc: f5 7d 03  mov   a,$037d+x
0cff: 95 91 03  adc   a,$0391+x
0d02: d5 7d 03  mov   $037d+x,a
0d05: 3f 1b 0b  call  $0b1b
0d08: f4 ad     mov   a,$ad+x
0d0a: f0 4c     beq   $0d58
0d0c: f5 a0 02  mov   a,$02a0+x
0d0f: de ac 44  cbne  $ac+x,$0d56
0d12: f5 00 01  mov   a,$0100+x
0d15: 75 a1 02  cmp   a,$02a1+x
0d18: d0 05     bne   $0d1f
0d1a: f5 b5 02  mov   a,$02b5+x
0d1d: 2f 0d     bra   $0d2c
0d1f: 40        setp
0d20: bb 00     inc   $00+x
0d22: 20        clrp
0d23: fd        mov   y,a
0d24: f0 02     beq   $0d28
0d26: f4 ad     mov   a,$ad+x
0d28: 60        clrc
0d29: 95 b4 02  adc   a,$02b4+x
0d2c: d4 ad     mov   $ad+x,a
0d2e: f5 8c 02  mov   a,$028c+x
0d31: 60        clrc
0d32: 95 8d 02  adc   a,$028d+x
0d35: d5 8c 02  mov   $028c+x,a
0d38: c4 12     mov   $12,a
0d3a: 1c        asl   a
0d3b: 1c        asl   a
0d3c: 90 02     bcc   $0d40
0d3e: 48 ff     eor   a,#$ff
0d40: fd        mov   y,a
0d41: f4 ad     mov   a,$ad+x
0d43: 68 f1     cmp   a,#$f1
0d45: 90 05     bcc   $0d4c
0d47: 28 0f     and   a,#$0f
0d49: cf        mul   ya
0d4a: 2f 04     bra   $0d50
0d4c: cf        mul   ya
0d4d: dd        mov   a,y
0d4e: 8d 00     mov   y,#$00
0d50: 3f d3 0d  call  $0dd3
0d53: 5f 76 05  jmp   $0576

0d56: bb ac     inc   $ac+x
0d58: e3 13 f8  bbs7  $13,$0d53
0d5b: 6f        ret

0d5c: f2 13     clr7  $13
0d5e: f4 c1     mov   a,$c1+x
0d60: f0 09     beq   $0d6b
0d62: f5 dc 02  mov   a,$02dc+x
0d65: de c0 03  cbne  $c0+x,$0d6b
0d68: 3f db 0d  call  $0ddb
0d6b: f5 41 03  mov   a,$0341+x
0d6e: fd        mov   y,a
0d6f: f5 40 03  mov   a,$0340+x
0d72: da 10     movw  $10,ya
0d74: f4 85     mov   a,$85+x
0d76: f0 0a     beq   $0d82
0d78: f5 55 03  mov   a,$0355+x
0d7b: fd        mov   y,a
0d7c: f5 54 03  mov   a,$0354+x
0d7f: 3f bd 0d  call  $0dbd
0d82: f3 13 03  bbc7  $13,$0d88
0d85: 3f f7 0b  call  $0bf7
0d88: f2 13     clr7  $13
0d8a: f5 7d 03  mov   a,$037d+x
0d8d: fd        mov   y,a
0d8e: f5 7c 03  mov   a,$037c+x
0d91: da 10     movw  $10,ya
0d93: f4 98     mov   a,$98+x
0d95: f0 0e     beq   $0da5
0d97: f4 99     mov   a,$99+x
0d99: d0 0a     bne   $0da5
0d9b: f5 91 03  mov   a,$0391+x
0d9e: fd        mov   y,a
0d9f: f5 90 03  mov   a,$0390+x
0da2: 3f bd 0d  call  $0dbd
0da5: f4 ad     mov   a,$ad+x
0da7: f0 af     beq   $0d58
0da9: f5 a0 02  mov   a,$02a0+x
0dac: de ac a9  cbne  $ac+x,$0d58
0daf: eb 51     mov   y,$51
0db1: f5 8d 02  mov   a,$028d+x
0db4: cf        mul   ya
0db5: dd        mov   a,y
0db6: 60        clrc
0db7: 95 8c 02  adc   a,$028c+x
0dba: 5f 38 0d  jmp   $0d38

0dbd: e2 13     set7  $13
0dbf: cb 12     mov   $12,y
0dc1: 3f 38 0b  call  $0b38
0dc4: 6d        push  y
0dc5: eb 51     mov   y,$51
0dc7: cf        mul   ya
0dc8: cb 14     mov   $14,y
0dca: 8f 00 15  mov   $15,#$00
0dcd: eb 51     mov   y,$51
0dcf: ae        pop   a
0dd0: cf        mul   ya
0dd1: 7a 14     addw  ya,$14
0dd3: 3f 38 0b  call  $0b38
0dd6: 7a 10     addw  ya,$10
0dd8: da 10     movw  $10,ya
0dda: 6f        ret

0ddb: e2 13     set7  $13
0ddd: eb 51     mov   y,$51
0ddf: f5 c9 02  mov   a,$02c9+x
0de2: cf        mul   ya
0de3: dd        mov   a,y
0de4: 60        clrc
0de5: 95 c8 02  adc   a,$02c8+x
0de8: 1c        asl   a
0de9: 90 02     bcc   $0ded
0deb: 48 ff     eor   a,#$ff
0ded: fb c1     mov   y,$c1+x
0def: cf        mul   ya
0df0: dd        mov   a,y
0df1: 48 ff     eor   a,#$ff
0df3: eb 34     mov   y,$34
0df5: d0 03     bne   $0dfa
0df7: eb 59     mov   y,$59
0df9: cf        mul   ya
0dfa: f5 14 02  mov   a,$0214+x
0dfd: cf        mul   ya
0dfe: f5 05 03  mov   a,$0305+x
0e01: cf        mul   ya
0e02: dd        mov   a,y
0e03: cf        mul   ya
0e04: dd        mov   a,y
0e05: d5 2d 03  mov   $032d+x,a
0e08: 6f        ret

0e09: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e11: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e19: db $7a,$7c,$7d,$7e,$7f

0e1e: db $7f,$00,$00,$00,$00,$00,$00,$00
0e26: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0e2e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0e36: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0e3e: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0e48: db $6b,$6c,$4e,$38,$48,$45,$0e,$49,$4b,$46

0e52: dw $085f
0e54: dw $08de
0e56: dw $0965
0e58: dw $09f4
0e5a: dw $0a8c
0e5c: dw $0b2c
0e5e: dw $0bd6
0e60: dw $0c8b
0e62: dw $0d4a
0e64: dw $0e14
0e66: dw $0eea
0e68: dw $0fcd
0e6a: dw $10be

0e6c: dw $0000
0e6e: dw $0010
0e70: dw $0020
0e72: dw $0030
0e74: dw $0040
0e76: dw $0050
0e78: dw $0060
0e7a: dw $0070
0e7c: dw $0060
0e7e: dw $0070

0e80: fa 1a 37  mov   ($37),($1a)
0e83: 38 3f 1a  and   $1a,#$3f
0e86: 8f ff 34  mov   $34,#$ff
0e89: 8f 00 5e  mov   $5e,#$00
0e8c: 8f 40 47  mov   $47,#$40
0e8f: cd 10     mov   x,#$10
0e91: e4 f6     mov   a,$f6
0e93: f0 0c     beq   $0ea1
0e95: 09 47 46  or    ($46),($47)
0e98: 09 47 37  or    ($37),($47)
0e9b: 09 47 36  or    ($36),($47)
0e9e: 3f c3 0e  call  $0ec3
0ea1: 3f 2e 0f  call  $0f2e
0ea4: 8f 80 47  mov   $47,#$80
0ea7: cd 12     mov   x,#$12
0ea9: e4 f7     mov   a,$f7
0eab: f0 0c     beq   $0eb9
0ead: 09 47 46  or    ($46),($47)
0eb0: 09 47 37  or    ($37),($47)
0eb3: 09 47 36  or    ($36),($47)
0eb6: 3f c3 0e  call  $0ec3
0eb9: 3f 2e 0f  call  $0f2e
0ebc: 8f 00 34  mov   $34,#$00
0ebf: fa 37 1a  mov   ($1a),($37)
0ec2: 6f        ret

0ec3: 1c        asl   a
0ec4: 4d        push  x
0ec5: 5d        mov   x,a
0ec6: f5 01 14  mov   a,$1401+x
0ec9: fd        mov   y,a
0eca: f5 00 14  mov   a,$1400+x
0ecd: ce        pop   x
0ece: d4 d4     mov   $d4+x,a
0ed0: db d5     mov   $d5+x,y
0ed2: e8 96     mov   a,#$96
0ed4: d5 05 03  mov   $0305+x,a
0ed7: e8 0a     mov   a,#$0a
0ed9: 3f fd 08  call  $08fd
0edc: e8 00     mov   a,#$00
0ede: 3f 91 08  call  $0891
0ee1: e8 00     mov   a,#$00
0ee3: d5 15 02  mov   $0215+x,a
0ee6: d5 a5 03  mov   $03a5+x,a
0ee9: d5 f0 02  mov   $02f0+x,a
0eec: d5 64 02  mov   $0264+x,a
0eef: d4 ad     mov   $ad+x,a
0ef1: d4 c1     mov   $c1+x,a
0ef3: d5 b8 03  mov   $03b8+x,a
0ef6: d4 84     mov   $84+x,a
0ef8: d4 85     mov   $85+x,a
0efa: e8 02     mov   a,#$02
0efc: d4 70     mov   $70+x,a
0efe: 6f        ret

0eff: e4 47     mov   a,$47
0f01: 48 ff     eor   a,#$ff
0f03: fd        mov   y,a
0f04: 24 37     and   a,$37
0f06: c4 37     mov   $37,a
0f08: dd        mov   a,y
0f09: 24 36     and   a,$36
0f0b: c4 36     mov   $36,a
0f0d: 09 47 5e  or    ($5e),($47)
0f10: fa 47 5c  mov   ($5c),($47)
0f13: 09 47 46  or    ($46),($47)
0f16: 8f 00 34  mov   $34,#$00
0f19: 4d        push  x
0f1a: 7d        mov   a,x
0f1b: 80        setc
0f1c: a8 04     sbc   a,#$04
0f1e: 5d        mov   x,a
0f1f: f5 15 02  mov   a,$0215+x
0f22: 3f 91 08  call  $0891
0f25: ce        pop   x
0f26: 8f ff 34  mov   $34,#$ff
0f29: e8 00     mov   a,#$00
0f2b: d4 d5     mov   $d5+x,a
0f2d: 6f        ret

0f2e: f4 d5     mov   a,$d5+x
0f30: f0 54     beq   $0f86
0f32: d8 44     mov   $44,x
0f34: 9b 70     dec   $70+x
0f36: d0 45     bne   $0f7d
0f38: 3f 87 08  call  $0887
0f3b: f0 c2     beq   $0eff
0f3d: 30 20     bmi   $0f5f
0f3f: d5 00 02  mov   $0200+x,a
0f42: 3f 87 08  call  $0887
0f45: 30 18     bmi   $0f5f
0f47: 2d        push  a
0f48: 9f        xcn   a
0f49: 28 07     and   a,#$07
0f4b: fd        mov   y,a
0f4c: f6 00 13  mov   a,$1300+y
0f4f: d5 01 02  mov   $0201+x,a
0f52: ae        pop   a
0f53: 28 0f     and   a,#$0f
0f55: fd        mov   y,a
0f56: f6 08 13  mov   a,$1308+y
0f59: d5 14 02  mov   $0214+x,a
0f5c: 3f 87 08  call  $0887
0f5f: 68 e0     cmp   a,#$e0
0f61: 90 05     bcc   $0f68
0f63: 3f 75 08  call  $0875
0f66: 2f d0     bra   $0f38
0f68: 3f 0c 05  call  $050c
0f6b: f5 00 02  mov   a,$0200+x
0f6e: d4 70     mov   $70+x,a
0f70: fd        mov   y,a
0f71: f5 01 02  mov   a,$0201+x
0f74: cf        mul   ya
0f75: dd        mov   a,y
0f76: d0 01     bne   $0f79
0f78: bc        inc   a
0f79: d4 71     mov   $71+x,a
0f7b: 2f 03     bra   $0f80
0f7d: 3f 6b 0c  call  $0c6b
0f80: 3f e3 0a  call  $0ae3
0f83: 3f a2 0b  call  $0ba2
0f86: 6f        ret

0f87: 8d bb     mov   y,#$bb
0f89: e8 aa     mov   a,#$aa
0f8b: da f4     movw  $f4,ya
0f8d: e4 f4     mov   a,$f4
0f8f: 68 cc     cmp   a,#$cc
0f91: d0 fa     bne   $0f8d
0f93: 2f 1e     bra   $0fb3
0f95: eb f4     mov   y,$f4
0f97: d0 fc     bne   $0f95
0f99: 7e f4     cmp   y,$f4
0f9b: d0 10     bne   $0fad
0f9d: cb f4     mov   $f4,y
0f9f: e4 f5     mov   a,$f5
0fa1: d6 ac d1  mov   $d1ac+y,a
0fa4: fc        inc   y
0fa5: d0 f2     bne   $0f99
0fa7: ac a3 0f  inc   $0fa3
0faa: 5f 99 0f  jmp   $0f99

0fad: 10 ea     bpl   $0f99
0faf: 7e f4     cmp   y,$f4
0fb1: 10 e6     bpl   $0f99
0fb3: ba f6     movw  ya,$f6
0fb5: c5 a2 0f  mov   $0fa2,a
0fb8: cc a3 0f  mov   $0fa3,y
0fbb: eb f4     mov   y,$f4
0fbd: e4 f5     mov   a,$f5
0fbf: cb f4     mov   $f4,y
0fc1: d0 d2     bne   $0f95
0fc3: cd 33     mov   x,#$33
0fc5: d8 f1     mov   $f1,x
0fc7: 6f        ret
