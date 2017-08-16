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
045b: f6 ed 0d  mov   a,$0ded+y
045e: c4 f2     mov   $f2,a
0460: f6 f7 0d  mov   a,$0df7+y
0463: 5d        mov   x,a
0464: e6        mov   a,(x)
0465: c4 f3     mov   $f3,a
0467: fe e4     dbnz  y,$044d
0469: cb 45     mov   $45,y
046b: cb 46     mov   $46,y
046d: eb fd     mov   y,$fd
046f: f0 fc     beq   $046d
0471: e8 30     mov   a,#$30
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
0486: 3f 30 0e  call  $0e30
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
04ae: e8 c0     mov   a,#$c0
04b0: cf        mul   ya
04b1: cb 6b     mov   $6b,y
04b3: eb 63     mov   y,$63
04b5: e4 31     mov   a,$31
04b7: cf        mul   ya
04b8: e8 c0     mov   a,#$c0
04ba: cf        mul   ya
04bb: cb 6c     mov   $6c,y
04bd: 8d 60     mov   y,#$60
04bf: e4 31     mov   a,$31
04c1: cf        mul   ya
04c2: e8 c0     mov   a,#$c0
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
04f3: 3f 0c 0d  call  $0d0c
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
0570: 3f db 0a  call  $0adb
0573: 3f f3 0a  call  $0af3
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
0596: f6 03 0e  mov   a,$0e03+y
0599: c4 15     mov   $15,a
059b: f6 02 0e  mov   a,$0e02+y
059e: c4 14     mov   $14,a
05a0: f6 05 0e  mov   a,$0e05+y
05a3: 2d        push  a
05a4: f6 04 0e  mov   a,$0e04+y
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
05eb: f5 1c 0e  mov   a,$0e1c+x
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

067e: 3f 32 0f  call  $0f32
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
081c: 3f 34 0c  call  $0c34
081f: 3f bb 0a  call  $0abb
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
086b: 3f 6b 0b  call  $0b6b
086e: 3d        inc   x
086f: 3d        inc   x
0870: 0b 47     asl   $47
0872: d0 f3     bne   $0867
0874: 6f        ret

; dispatch vcmd
0875: 1c        asl   a
0876: fd        mov   y,a
0877: f6 5b 0a  mov   a,$0a5b+y
087a: 2d        push  a
087b: f6 5a 0a  mov   a,$0a5a+y         ; refs vcmd dispatch table $0b1a
087e: 2d        push  a
087f: dd        mov   a,y
0880: 5c        lsr   a
0881: fd        mov   y,a
0882: f6 f0 0a  mov   a,$0af0+y         ; refs vcmd dispatch table $0b50
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
08c5: f5 1c 0e  mov   a,$0e1c+x
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
0919: 3f fe 0a  call  $0afe
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
0968: 3f fe 0a  call  $0afe
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
0983: 3f fe 0a  call  $0afe
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
09c2: a8 28     sbc   a,#$28
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
09df: 3f fe 0a  call  $0afe
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
0a31: 3f fe 0a  call  $0afe
0a34: da 64     movw  $64,ya
0a36: 3f 87 08  call  $0887
0a39: c4 6a     mov   $6a,a
0a3b: 80        setc
0a3c: a4 63     sbc   a,$63
0a3e: f8 68     mov   x,$68
0a40: 3f fe 0a  call  $0afe
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
0a5e: f5 ce 0d  mov   a,$0dce+x
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
0a89: f6 ed 0d  mov   a,$0ded+y
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

; vcmd fa - set perc patch base
0ab1: eb 34     mov   y,$34
0ab3: d0 03     bne   $0ab8
; BGM
0ab5: c4 5f     mov   $5f,a
0ab7: 6f        ret
; SFX
0ab8: c4 39     mov   $39,a
0aba: 6f        ret

0abb: f4 98     mov   a,$98+x
0abd: d0 33     bne   $0af2
0abf: e7 d4     mov   a,($d4+x)
0ac1: 68 f9     cmp   a,#$f9
0ac3: d0 2d     bne   $0af2
0ac5: 3f 89 08  call  $0889
0ac8: 3f 87 08  call  $0887
; vcmd f9
0acb: d4 99     mov   $99+x,a
0acd: 3f 87 08  call  $0887
0ad0: d4 98     mov   $98+x,a
0ad2: 3f 87 08  call  $0887
0ad5: 60        clrc
0ad6: 84 50     adc   a,$50
0ad8: 95 f0 02  adc   a,$02f0+x
0adb: 28 7f     and   a,#$7f
0add: d5 a4 03  mov   $03a4+x,a
0ae0: 80        setc
0ae1: b5 7d 03  sbc   a,$037d+x
0ae4: fb 98     mov   y,$98+x
0ae6: 6d        push  y
0ae7: ce        pop   x
0ae8: 3f fe 0a  call  $0afe
0aeb: d5 90 03  mov   $0390+x,a
0aee: dd        mov   a,y
0aef: d5 91 03  mov   $0391+x,a
0af2: 6f        ret

0af3: f5 7d 03  mov   a,$037d+x
0af6: c4 11     mov   $11,a
0af8: f5 7c 03  mov   a,$037c+x
0afb: c4 10     mov   $10,a
0afd: 6f        ret

0afe: ed        notc
0aff: 6b 12     ror   $12
0b01: 10 03     bpl   $0b06
0b03: 48 ff     eor   a,#$ff
0b05: bc        inc   a
0b06: 8d 00     mov   y,#$00
0b08: 9e        div   ya,x
0b09: 2d        push  a
0b0a: e8 00     mov   a,#$00
0b0c: 9e        div   ya,x
0b0d: ee        pop   y
0b0e: f8 44     mov   x,$44
0b10: f3 12 06  bbc7  $12,$0b19
0b13: da 14     movw  $14,ya
0b15: ba 0e     movw  ya,$0e
0b17: 9a 14     subw  ya,$14
0b19: 6f        ret

; vcmd dispatch table
0b1a: dw $0891  ; e0 - set instrument
0b1c: dw $08fd  ; e1
0b1e: dw $090b  ; e2
0b20: dw $0924  ; e3
0b22: dw $0930  ; e4
0b24: dw $094b  ; e5
0b26: dw $095c  ; e6
0b28: dw $096e  ; e7
0b2a: dw $0977  ; e8
0b2c: dw $0989  ; e9
0b2e: dw $098c  ; ea
0b30: dw $0990  ; eb
0b32: dw $099c  ; ec
0b34: dw $09bd  ; ed
0b36: dw $09d1  ; ee
0b38: dw $09ee  ; ef
0b3a: dw $093b  ; f0
0b3c: dw $099f  ; f1
0b3e: dw $09a3  ; f2
0b40: dw $09b9  ; f3
0b42: dw $09ea  ; f4
0b44: dw $0a12  ; f5
0b46: dw $0a46  ; f6
0b48: dw $0a4d  ; f7
0b4a: dw $0a25  ; f8
0b4c: dw $0acb  ; f9
0b4e: dw $0ab1  ; fa - set perc patch base

; vcmd length table
0b50: db $01,$01,$02,$03,$00,$01,$02,$01
0b58: db $02,$01,$01,$03,$00,$01,$02,$03
0b60: db $01,$03,$03,$00,$01,$03,$00,$03
0b68: db $03,$03,$01

0b6b: f4 84     mov   a,$84+x
0b6d: f0 09     beq   $0b78
0b6f: e8 04     mov   a,#$04
0b71: 8d 03     mov   y,#$03
0b73: 9b 84     dec   $84+x
0b75: 3f 0b 0c  call  $0c0b
0b78: fb c1     mov   y,$c1+x
0b7a: f0 23     beq   $0b9f
0b7c: f5 dc 02  mov   a,$02dc+x
0b7f: de c0 1b  cbne  $c0+x,$0b9d
0b82: 09 47 5e  or    ($5e),($47)
0b85: f5 c8 02  mov   a,$02c8+x
0b88: 10 07     bpl   $0b91
0b8a: fc        inc   y
0b8b: d0 04     bne   $0b91
0b8d: e8 80     mov   a,#$80
0b8f: 2f 04     bra   $0b95
0b91: 60        clrc
0b92: 95 c9 02  adc   a,$02c9+x
0b95: d5 c8 02  mov   $02c8+x,a
0b98: 3f 98 0d  call  $0d98
0b9b: 2f 07     bra   $0ba4
0b9d: bb c0     inc   $c0+x
0b9f: e8 ff     mov   a,#$ff
0ba1: 3f a3 0d  call  $0da3
0ba4: f4 85     mov   a,$85+x
0ba6: f0 09     beq   $0bb1
0ba8: e8 40     mov   a,#$40
0baa: 8d 03     mov   y,#$03
0bac: 9b 85     dec   $85+x
0bae: 3f 0b 0c  call  $0c0b
0bb1: e4 47     mov   a,$47
0bb3: 24 5e     and   a,$5e
0bb5: f0 53     beq   $0c0a
0bb7: f5 41 03  mov   a,$0341+x
0bba: fd        mov   y,a
0bbb: f5 40 03  mov   a,$0340+x
0bbe: da 10     movw  $10,ya
0bc0: f5 1c 0e  mov   a,$0e1c+x
0bc3: c4 12     mov   $12,a
0bc5: e4 32     mov   a,$32
0bc7: f0 09     beq   $0bd2
0bc9: 8f 0a 11  mov   $11,#$0a
0bcc: 8f 00 10  mov   $10,#$00
0bcf: 8f 0a 11  mov   $11,#$0a
0bd2: eb 11     mov   y,$11
0bd4: f6 ba 0d  mov   a,$0dba+y
0bd7: 80        setc
0bd8: b6 b9 0d  sbc   a,$0db9+y
0bdb: eb 10     mov   y,$10
0bdd: cf        mul   ya
0bde: dd        mov   a,y
0bdf: eb 11     mov   y,$11
0be1: 60        clrc
0be2: 96 b9 0d  adc   a,$0db9+y
0be5: fd        mov   y,a
0be6: f5 2d 03  mov   a,$032d+x
0be9: cf        mul   ya
0bea: f5 69 03  mov   a,$0369+x
0bed: 1c        asl   a
0bee: 13 12 01  bbc0  $12,$0bf2
0bf1: 1c        asl   a
0bf2: dd        mov   a,y
0bf3: 90 03     bcc   $0bf8
0bf5: 48 ff     eor   a,#$ff
0bf7: bc        inc   a
0bf8: eb 12     mov   y,$12
0bfa: 3f f9 05  call  $05f9
0bfd: 8d 14     mov   y,#$14
0bff: e8 00     mov   a,#$00
0c01: 9a 10     subw  ya,$10
0c03: da 10     movw  $10,ya
0c05: ab 12     inc   $12
0c07: 33 12 c8  bbc1  $12,$0bd2
0c0a: 6f        ret

0c0b: 09 47 5e  or    ($5e),($47)
0c0e: da 14     movw  $14,ya
0c10: da 16     movw  $16,ya
0c12: 4d        push  x
0c13: ee        pop   y
0c14: 60        clrc
0c15: d0 0f     bne   $0c26
0c17: 98 27 16  adc   $16,#$27
0c1a: 68 7c     cmp   a,#$7c
0c1c: f0 15     beq   $0c33
0c1e: 60        clrc
0c1f: e8 00     mov   a,#$00
0c21: d7 14     mov   ($14)+y,a
0c23: fc        inc   y
0c24: 2f 09     bra   $0c2f
0c26: 98 14 16  adc   $16,#$14
0c29: 3f 2d 0c  call  $0c2d
0c2c: fc        inc   y
0c2d: f7 14     mov   a,($14)+y
0c2f: 97 16     adc   a,($16)+y
0c31: d7 14     mov   ($14)+y,a
0c33: 6f        ret

0c34: f4 71     mov   a,$71+x
0c36: f0 64     beq   $0c9c
0c38: 9b 71     dec   $71+x
0c3a: f0 05     beq   $0c41
0c3c: e8 02     mov   a,#$02
0c3e: de 70 5b  cbne  $70+x,$0c9c
0c41: f5 b8 03  mov   a,$03b8+x
0c44: c4 17     mov   $17,a
0c46: f4 d4     mov   a,$d4+x
0c48: fb d5     mov   y,$d5+x
0c4a: da 14     movw  $14,ya
0c4c: 8d 00     mov   y,#$00
0c4e: f7 14     mov   a,($14)+y
0c50: f0 1c     beq   $0c6e
0c52: 30 05     bmi   $0c59
0c54: fc        inc   y
0c55: f7 14     mov   a,($14)+y
0c57: 10 fb     bpl   $0c54
0c59: 68 c8     cmp   a,#$c8
0c5b: f0 3f     beq   $0c9c
0c5d: 68 ef     cmp   a,#$ef
0c5f: f0 29     beq   $0c8a
0c61: 68 e0     cmp   a,#$e0
0c63: 90 30     bcc   $0c95
0c65: 6d        push  y
0c66: fd        mov   y,a
0c67: ae        pop   a
0c68: 96 70 0a  adc   a,$0a70+y
0c6b: fd        mov   y,a
0c6c: 2f e0     bra   $0c4e
0c6e: e4 17     mov   a,$17
0c70: f0 23     beq   $0c95
0c72: 8b 17     dec   $17
0c74: d0 0a     bne   $0c80
0c76: f5 3d 02  mov   a,$023d+x
0c79: 2d        push  a
0c7a: f5 3c 02  mov   a,$023c+x
0c7d: ee        pop   y
0c7e: 2f ca     bra   $0c4a
0c80: f5 51 02  mov   a,$0251+x
0c83: 2d        push  a
0c84: f5 50 02  mov   a,$0250+x
0c87: ee        pop   y
0c88: 2f c0     bra   $0c4a
0c8a: fc        inc   y
0c8b: f7 14     mov   a,($14)+y
0c8d: 2d        push  a
0c8e: fc        inc   y
0c8f: f7 14     mov   a,($14)+y
0c91: fd        mov   y,a
0c92: ae        pop   a
0c93: 2f b5     bra   $0c4a
0c95: e4 47     mov   a,$47
0c97: 8d 5c     mov   y,#$5c
0c99: 3f f9 05  call  $05f9
0c9c: f2 13     clr7  $13
0c9e: f4 98     mov   a,$98+x
0ca0: f0 13     beq   $0cb5
0ca2: f4 99     mov   a,$99+x
0ca4: f0 04     beq   $0caa
0ca6: 9b 99     dec   $99+x
0ca8: 2f 0b     bra   $0cb5
0caa: e2 13     set7  $13
0cac: e8 7c     mov   a,#$7c
0cae: 8d 03     mov   y,#$03
0cb0: 9b 98     dec   $98+x
0cb2: 3f 0e 0c  call  $0c0e
0cb5: 3f f3 0a  call  $0af3
0cb8: f4 ad     mov   a,$ad+x
0cba: f0 4c     beq   $0d08
0cbc: f5 a0 02  mov   a,$02a0+x
0cbf: de ac 44  cbne  $ac+x,$0d06
0cc2: f5 00 01  mov   a,$0100+x
0cc5: 75 a1 02  cmp   a,$02a1+x
0cc8: d0 05     bne   $0ccf
0cca: f5 b5 02  mov   a,$02b5+x
0ccd: 2f 0d     bra   $0cdc
0ccf: 40        setp
0cd0: bb 00     inc   $00+x
0cd2: 20        clrp
0cd3: fd        mov   y,a
0cd4: f0 02     beq   $0cd8
0cd6: f4 ad     mov   a,$ad+x
0cd8: 60        clrc
0cd9: 95 b4 02  adc   a,$02b4+x
0cdc: d4 ad     mov   $ad+x,a
0cde: f5 8c 02  mov   a,$028c+x
0ce1: 60        clrc
0ce2: 95 8d 02  adc   a,$028d+x
0ce5: d5 8c 02  mov   $028c+x,a
0ce8: c4 12     mov   $12,a
0cea: 1c        asl   a
0ceb: 1c        asl   a
0cec: 90 02     bcc   $0cf0
0cee: 48 ff     eor   a,#$ff
0cf0: fd        mov   y,a
0cf1: f4 ad     mov   a,$ad+x
0cf3: 68 f1     cmp   a,#$f1
0cf5: 90 05     bcc   $0cfc
0cf7: 28 0f     and   a,#$0f
0cf9: cf        mul   ya
0cfa: 2f 04     bra   $0d00
0cfc: cf        mul   ya
0cfd: dd        mov   a,y
0cfe: 8d 00     mov   y,#$00
0d00: 3f 83 0d  call  $0d83
0d03: 5f 76 05  jmp   $0576

0d06: bb ac     inc   $ac+x
0d08: e3 13 f8  bbs7  $13,$0d03
0d0b: 6f        ret

0d0c: f2 13     clr7  $13
0d0e: f4 c1     mov   a,$c1+x
0d10: f0 09     beq   $0d1b
0d12: f5 dc 02  mov   a,$02dc+x
0d15: de c0 03  cbne  $c0+x,$0d1b
0d18: 3f 8b 0d  call  $0d8b
0d1b: f5 41 03  mov   a,$0341+x
0d1e: fd        mov   y,a
0d1f: f5 40 03  mov   a,$0340+x
0d22: da 10     movw  $10,ya
0d24: f4 85     mov   a,$85+x
0d26: f0 0a     beq   $0d32
0d28: f5 55 03  mov   a,$0355+x
0d2b: fd        mov   y,a
0d2c: f5 54 03  mov   a,$0354+x
0d2f: 3f 6d 0d  call  $0d6d
0d32: f3 13 03  bbc7  $13,$0d38
0d35: 3f c0 0b  call  $0bc0
0d38: f2 13     clr7  $13
0d3a: f5 7d 03  mov   a,$037d+x
0d3d: fd        mov   y,a
0d3e: f5 7c 03  mov   a,$037c+x
0d41: da 10     movw  $10,ya
0d43: f4 98     mov   a,$98+x
0d45: f0 0e     beq   $0d55
0d47: f4 99     mov   a,$99+x
0d49: d0 0a     bne   $0d55
0d4b: f5 91 03  mov   a,$0391+x
0d4e: fd        mov   y,a
0d4f: f5 90 03  mov   a,$0390+x
0d52: 3f 6d 0d  call  $0d6d
0d55: f4 ad     mov   a,$ad+x
0d57: f0 af     beq   $0d08
0d59: f5 a0 02  mov   a,$02a0+x
0d5c: de ac a9  cbne  $ac+x,$0d08
0d5f: eb 51     mov   y,$51
0d61: f5 8d 02  mov   a,$028d+x
0d64: cf        mul   ya
0d65: dd        mov   a,y
0d66: 60        clrc
0d67: 95 8c 02  adc   a,$028c+x
0d6a: 5f e8 0c  jmp   $0ce8

0d6d: e2 13     set7  $13
0d6f: cb 12     mov   $12,y
0d71: 3f 10 0b  call  $0b10
0d74: 6d        push  y
0d75: eb 51     mov   y,$51
0d77: cf        mul   ya
0d78: cb 14     mov   $14,y
0d7a: 8f 00 15  mov   $15,#$00
0d7d: eb 51     mov   y,$51
0d7f: ae        pop   a
0d80: cf        mul   ya
0d81: 7a 14     addw  ya,$14
0d83: 3f 10 0b  call  $0b10
0d86: 7a 10     addw  ya,$10
0d88: da 10     movw  $10,ya
0d8a: 6f        ret

0d8b: e2 13     set7  $13
0d8d: eb 51     mov   y,$51
0d8f: f5 c9 02  mov   a,$02c9+x
0d92: cf        mul   ya
0d93: dd        mov   a,y
0d94: 60        clrc
0d95: 95 c8 02  adc   a,$02c8+x
0d98: 1c        asl   a
0d99: 90 02     bcc   $0d9d
0d9b: 48 ff     eor   a,#$ff
0d9d: fb c1     mov   y,$c1+x
0d9f: cf        mul   ya
0da0: dd        mov   a,y
0da1: 48 ff     eor   a,#$ff
0da3: eb 34     mov   y,$34
0da5: d0 03     bne   $0daa
0da7: eb 59     mov   y,$59
0da9: cf        mul   ya
0daa: f5 14 02  mov   a,$0214+x
0dad: cf        mul   ya
0dae: f5 05 03  mov   a,$0305+x
0db1: cf        mul   ya
0db2: dd        mov   a,y
0db3: cf        mul   ya
0db4: dd        mov   a,y
0db5: d5 2d 03  mov   $032d+x,a
0db8: 6f        ret

0db9: db $00,$01,$03,$07,$0d,$15,$1e,$29
0dc1: db $34,$42,$51,$5e,$67,$6e,$73,$77
0dc9: db $7a,$7c,$7d,$7e,$7f

0dce: db $7f,$00,$00,$00,$00,$00,$00,$00
0dd6: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0dde: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0de6: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0dee: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0df8: db $6b,$6c,$4e,$38,$48,$45,$0e,$49,$4b,$46

0e02: dw $085f
0e04: dw $08de
0e06: dw $0965
0e08: dw $09f4
0e0a: dw $0a8c
0e0c: dw $0b2c
0e0e: dw $0bd6
0e10: dw $0c8b
0e12: dw $0d4a
0e14: dw $0e14
0e16: dw $0eea
0e18: dw $0fcd
0e1a: dw $10be

0e1c: dw $0000
0e1e: dw $0010
0e20: dw $0020
0e22: dw $0030
0e24: dw $0040
0e26: dw $0050
0e28: dw $0060
0e2a: dw $0070
0e2c: dw $0060
0e2e: dw $0070

0e30: fa 1a 37  mov   ($37),($1a)
0e33: 38 3f 1a  and   $1a,#$3f
0e36: 8f ff 34  mov   $34,#$ff
0e39: 8f 00 5e  mov   $5e,#$00
0e3c: 8f 40 47  mov   $47,#$40
0e3f: cd 10     mov   x,#$10
0e41: e4 f6     mov   a,$f6
0e43: f0 0c     beq   $0e51
0e45: 09 47 46  or    ($46),($47)
0e48: 09 47 37  or    ($37),($47)
0e4b: 09 47 36  or    ($36),($47)
0e4e: 3f 73 0e  call  $0e73
0e51: 3f d9 0e  call  $0ed9
0e54: 8f 80 47  mov   $47,#$80
0e57: cd 12     mov   x,#$12
0e59: e4 f7     mov   a,$f7
0e5b: f0 0c     beq   $0e69
0e5d: 09 47 46  or    ($46),($47)
0e60: 09 47 37  or    ($37),($47)
0e63: 09 47 36  or    ($36),($47)
0e66: 3f 73 0e  call  $0e73
0e69: 3f d9 0e  call  $0ed9
0e6c: 8f 00 34  mov   $34,#$00
0e6f: fa 37 1a  mov   ($1a),($37)
0e72: 6f        ret

0e73: 1c        asl   a
0e74: 4d        push  x
0e75: 5d        mov   x,a
0e76: f5 01 14  mov   a,$1401+x
0e79: fd        mov   y,a
0e7a: f5 00 14  mov   a,$1400+x
0e7d: ce        pop   x
0e7e: d4 d4     mov   $d4+x,a
0e80: db d5     mov   $d5+x,y
0e82: e8 96     mov   a,#$96
0e84: d5 05 03  mov   $0305+x,a
0e87: e8 0a     mov   a,#$0a
0e89: 3f fd 08  call  $08fd
0e8c: e8 00     mov   a,#$00
0e8e: d5 15 02  mov   $0215+x,a
0e91: d5 a5 03  mov   $03a5+x,a
0e94: d5 f0 02  mov   $02f0+x,a
0e97: d5 64 02  mov   $0264+x,a
0e9a: d4 ad     mov   $ad+x,a
0e9c: d4 c1     mov   $c1+x,a
0e9e: d5 b8 03  mov   $03b8+x,a
0ea1: d4 84     mov   $84+x,a
0ea3: d4 85     mov   $85+x,a
0ea5: e8 02     mov   a,#$02
0ea7: d4 70     mov   $70+x,a
0ea9: 6f        ret

0eaa: e4 47     mov   a,$47
0eac: 48 ff     eor   a,#$ff
0eae: fd        mov   y,a
0eaf: 24 37     and   a,$37
0eb1: c4 37     mov   $37,a
0eb3: dd        mov   a,y
0eb4: 24 36     and   a,$36
0eb6: c4 36     mov   $36,a
0eb8: 09 47 5e  or    ($5e),($47)
0ebb: fa 47 5c  mov   ($5c),($47)
0ebe: 09 47 46  or    ($46),($47)
0ec1: 8f 00 34  mov   $34,#$00
0ec4: 4d        push  x
0ec5: 7d        mov   a,x
0ec6: 80        setc
0ec7: a8 04     sbc   a,#$04
0ec9: 5d        mov   x,a
0eca: f5 15 02  mov   a,$0215+x
0ecd: 3f 91 08  call  $0891
0ed0: ce        pop   x
0ed1: 8f ff 34  mov   $34,#$ff
0ed4: e8 00     mov   a,#$00
0ed6: d4 d5     mov   $d5+x,a
0ed8: 6f        ret

0ed9: f4 d5     mov   a,$d5+x
0edb: f0 54     beq   $0f31
0edd: d8 44     mov   $44,x
0edf: 9b 70     dec   $70+x
0ee1: d0 45     bne   $0f28
0ee3: 3f 87 08  call  $0887
0ee6: f0 c2     beq   $0eaa
0ee8: 30 20     bmi   $0f0a
0eea: d5 00 02  mov   $0200+x,a
0eed: 3f 87 08  call  $0887
0ef0: 30 18     bmi   $0f0a
0ef2: 2d        push  a
0ef3: 9f        xcn   a
0ef4: 28 07     and   a,#$07
0ef6: fd        mov   y,a
0ef7: f6 00 13  mov   a,$1300+y
0efa: d5 01 02  mov   $0201+x,a
0efd: ae        pop   a
0efe: 28 0f     and   a,#$0f
0f00: fd        mov   y,a
0f01: f6 08 13  mov   a,$1308+y
0f04: d5 14 02  mov   $0214+x,a
0f07: 3f 87 08  call  $0887
0f0a: 68 e0     cmp   a,#$e0
0f0c: 90 05     bcc   $0f13
0f0e: 3f 75 08  call  $0875
0f11: 2f d0     bra   $0ee3
0f13: 3f 0c 05  call  $050c
0f16: f5 00 02  mov   a,$0200+x
0f19: d4 70     mov   $70+x,a
0f1b: fd        mov   y,a
0f1c: f5 01 02  mov   a,$0201+x
0f1f: cf        mul   ya
0f20: dd        mov   a,y
0f21: d0 01     bne   $0f24
0f23: bc        inc   a
0f24: d4 71     mov   $71+x,a
0f26: 2f 03     bra   $0f2b
0f28: 3f 34 0c  call  $0c34
0f2b: 3f bb 0a  call  $0abb
0f2e: 3f 6b 0b  call  $0b6b
0f31: 6f        ret

0f32: 8d bb     mov   y,#$bb
0f34: e8 aa     mov   a,#$aa
0f36: da f4     movw  $f4,ya
0f38: e4 f4     mov   a,$f4
0f3a: 68 cc     cmp   a,#$cc
0f3c: d0 fa     bne   $0f38
0f3e: 2f 1e     bra   $0f5e
0f40: eb f4     mov   y,$f4
0f42: d0 fc     bne   $0f40
0f44: 7e f4     cmp   y,$f4
0f46: d0 10     bne   $0f58
0f48: cb f4     mov   $f4,y
0f4a: e4 f5     mov   a,$f5
0f4c: d6 24 e1  mov   $e124+y,a
0f4f: fc        inc   y
0f50: d0 f2     bne   $0f44
0f52: ac 4e 0f  inc   $0f4e
0f55: 5f 44 0f  jmp   $0f44

0f58: 10 ea     bpl   $0f44
0f5a: 7e f4     cmp   y,$f4
0f5c: 10 e6     bpl   $0f44
0f5e: ba f6     movw  ya,$f6
0f60: c5 4d 0f  mov   $0f4d,a
0f63: cc 4e 0f  mov   $0f4e,y
0f66: eb f4     mov   y,$f4
0f68: e4 f5     mov   a,$f5
0f6a: cb f4     mov   $f4,y
0f6c: d0 d2     bne   $0f40
0f6e: cd 33     mov   x,#$33
0f70: d8 f1     mov   $f1,x
0f72: 6f        ret
