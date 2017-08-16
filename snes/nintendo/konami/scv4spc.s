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
0424: 3f 1d 07  call  $071d
0427: e8 00     mov   a,#$00
0429: 8d 6d     mov   y,#$6d
042b: 3f 1d 07  call  $071d
042e: 8d 7d     mov   y,#$7d
0430: 3f 1d 07  call  $071d
0433: 8d 4d     mov   y,#$4d
0435: 3f 1d 07  call  $071d
0438: 8d 0d     mov   y,#$0d
043a: 3f 1d 07  call  $071d
043d: 8d 2c     mov   y,#$2c
043f: 3f 1d 07  call  $071d
0442: 8d 3c     mov   y,#$3c
0444: 3f 1d 07  call  $071d
0447: 8d 71     mov   y,#$71
0449: e8 00     mov   a,#$00
044b: 3f 1d 07  call  $071d
044e: dc        dec   y
044f: 3f 1d 07  call  $071d
0452: dd        mov   a,y
0453: 80        setc
0454: a8 0f     sbc   a,#$0f
0456: fd        mov   y,a
0457: 10 f0     bpl   $0449
0459: e8 ff     mov   a,#$ff
045b: c4 46     mov   $46,a
045d: 8d 5c     mov   y,#$5c
045f: 3f 1d 07  call  $071d
0462: e8 7f     mov   a,#$7f
0464: 8d 0c     mov   y,#$0c
0466: 3f 1d 07  call  $071d
0469: 8d 1c     mov   y,#$1c
046b: 3f 1d 07  call  $071d
046e: e8 fe     mov   a,#$fe
0470: 8d 5d     mov   y,#$5d
0472: 3f 1d 07  call  $071d
0475: 3f 6f 07  call  $076f
0478: e8 f0     mov   a,#$f0
047a: c5 f1 00  mov   $00f1,a
047d: e8 20     mov   a,#$20
047f: c5 fa 00  mov   $00fa,a
0482: e8 01     mov   a,#$01
0484: c5 f1 00  mov   $00f1,a
0487: 8d 06     mov   y,#$06
0489: f6 2a 11  mov   a,$112a+y
048c: c5 f2 00  mov   $00f2,a
048f: f6 30 11  mov   a,$1130+y
0492: 5d        mov   x,a
0493: e6        mov   a,(x)
0494: c5 f3 00  mov   $00f3,a
0497: fe f0     dbnz  y,$0489
0499: cb 45     mov   $45,y
049b: cb 46     mov   $46,y
049d: cb 1b     mov   $1b,y
049f: ec fd 00  mov   y,$00fd
04a2: d0 53     bne   $04f7
04a4: e9 f7 00  mov   x,$00f7
04a7: 1e f7 00  cmp   x,$00f7
04aa: d0 f8     bne   $04a4
04ac: 3e 07     cmp   x,$07
04ae: f0 13     beq   $04c3
04b0: 3e 06     cmp   x,$06
04b2: f0 eb     beq   $049f
04b4: d8 06     mov   $06,x
04b6: 8f 80 07  mov   $07,#$80
04b9: ec f6 00  mov   y,$00f6
04bc: 5e f6 00  cmp   y,$00f6
04bf: d0 f8     bne   $04b9
04c1: 2f 2c     bra   $04ef
04c3: ec f6 00  mov   y,$00f6
04c6: 5e f6 00  cmp   y,$00f6
04c9: d0 f8     bne   $04c3
04cb: 7d        mov   a,x
04cc: c4 06     mov   $06,a
04ce: 10 11     bpl   $04e1
04d0: 68 80     cmp   a,#$80
04d2: d0 05     bne   $04d9
04d4: cb 04     mov   $04,y
04d6: bc        inc   a
04d7: 2f 04     bra   $04dd
04d9: cb 05     mov   $05,y
04db: e8 00     mov   a,#$00
04dd: c4 07     mov   $07,a
04df: 2f 0e     bra   $04ef
04e1: dd        mov   a,y
04e2: 8d 00     mov   y,#$00
04e4: d7 04     mov   ($04)+y,a
04e6: fd        mov   y,a
04e7: 7d        mov   a,x
04e8: bc        inc   a
04e9: 28 7f     and   a,#$7f
04eb: c4 07     mov   $07,a
04ed: 3a 04     incw  $04
04ef: cc f6 00  mov   $00f6,y
04f2: c9 f7 00  mov   $00f7,x
04f5: 2f a8     bra   $049f
04f7: cb 43     mov   $43,y
04f9: cc f5 00  mov   $00f5,y
04fc: 3f 79 07  call  $0779
04ff: f0 0c     beq   $050d
0501: 0e 46 00  tset1 $0046
0504: 4e 1d 00  tclr1 $001d
0507: 0e 1b 00  tset1 $001b
050a: 4e 1f 00  tclr1 $001f
050d: e4 1a     mov   a,$1a
050f: 04 4e     or    a,$4e
0511: f0 0a     beq   $051d
0513: 8f 00 5e  mov   $5e,#$00
0516: cd 0c     mov   x,#$0c
0518: 8f 40 47  mov   $47,#$40
051b: 2f 32     bra   $054f
051d: 8f 01 47  mov   $47,#$01
0520: e4 0b     mov   a,$0b
0522: f0 25     beq   $0549
0524: cd 3f     mov   x,#$3f
0526: ab 0c     inc   $0c
0528: e4 0c     mov   a,$0c
052a: 64 0b     cmp   a,$0b
052c: d0 1d     bne   $054b
052e: 8f 00 0c  mov   $0c,#$00
0531: ab 0d     inc   $0d
0533: e4 0d     mov   a,$0d
0535: d0 14     bne   $054b
0537: 3f 20 08  call  $0820
053a: 0e 46 00  tset1 $0046
053d: 4e 1d 00  tclr1 $001d
0540: 4e 1f 00  tclr1 $001f
0543: e8 00     mov   a,#$00
0545: c4 0b     mov   $0b,a
0547: c4 0d     mov   $0d,a
0549: cd 00     mov   x,#$00
054b: d8 5e     mov   $5e,x
054d: cd 00     mov   x,#$00
054f: f5 e1 02  mov   a,$02e1+x
0552: f0 3b     beq   $058f
0554: e4 47     mov   a,$47
0556: 24 1b     and   a,$1b
0558: d0 35     bne   $058f
055a: d8 44     mov   $44,x
055c: eb 43     mov   y,$43
055e: f4 d1     mov   a,$d1+x
0560: cf        mul   ya
0561: 60        clrc
0562: 94 d0     adc   a,$d0+x
0564: d4 d0     mov   $d0+x,a
0566: 90 24     bcc   $058c
0568: c8 0c     cmp   x,#$0c
056a: b0 18     bcs   $0584
056c: 78 00 50  cmp   $50,#$00
056f: f0 13     beq   $0584
0571: 8b 50     dec   $50
0573: f0 0b     beq   $0580
0575: ba 52     movw  ya,$52
0577: 7a 54     addw  ya,$54
0579: da 54     movw  $54,ya
057b: dd        mov   a,y
057c: d4 d1     mov   $d1+x,a
057e: 2f 04     bra   $0584
0580: e4 51     mov   a,$51
0582: d4 d1     mov   $d1+x,a
0584: 3f 15 0a  call  $0a15
0587: 3f 03 0e  call  $0e03
058a: 2f 03     bra   $058f
058c: 3f 72 10  call  $1072
058f: 3d        inc   x
0590: 3d        inc   x
0591: 0b 47     asl   $47
0593: d0 ba     bne   $054f
0595: 5f 87 04  jmp   $0487

0598: 0a 00 a8  or1   c,$0800,5
059b: 0a 00 a1  or1   c,$0100,5
059e: 0a 00 ad  or1   c,$0d00,5
05a1: 0a 00 ab  or1   c,$0b00,5
05a4: 0a 00 b0  or1   c,$1000,5
05a7: 0a 00 ac  or1   c,$0c00,5
05aa: 0a 00 a4  or1   c,$0400,5
05ad: 05 00 a4  or    a,$a400
05b0: 0a 00 a4  or1   c,$0400,5
05b3: 0a 00 a4  or1   c,$0400,5
05b6: 0a 00 a4  or1   c,$0400,5
05b9: 0a 00 a4  or1   c,$0400,5
05bc: 0a 00 a4  or1   c,$0400,5
05bf: 0a 00 a4  or1   c,$0400,5
05c2: 0a 00 a4  or1   c,$0400,5
05c5: 0a 00 a4  or1   c,$0400,5
05c8: ad ca     cmp   y,#$ca
05ca: 90 31     bcc   $05fd
05cc: 3f e9 0a  call  $0ae9
05cf: f5 11 02  mov   a,$0211+x
05d2: 80        setc
05d3: a8 ca     sbc   a,#$ca
05d5: c4 1e     mov   $1e,a
05d7: 1c        asl   a
05d8: 84 1e     adc   a,$1e
05da: fd        mov   y,a
05db: e4 5f     mov   a,$5f
05dd: 24 47     and   a,$47
05df: f0 0e     beq   $05ef
05e1: f6 98 05  mov   a,$0598+y
05e4: d5 31 03  mov   $0331+x,a
05e7: d5 51 03  mov   $0351+x,a
05ea: e8 00     mov   a,#$00
05ec: d5 30 03  mov   $0330+x,a
05ef: fc        inc   y
05f0: f6 98 05  mov   a,$0598+y
05f3: d5 f1 02  mov   $02f1+x,a
05f6: fc        inc   y
05f7: f6 98 05  mov   a,$0598+y
05fa: fd        mov   y,a
05fb: 2f 35     bra   $0632
05fd: e8 00     mov   a,#$00
05ff: d5 f1 02  mov   $02f1+x,a
0602: ad c8     cmp   y,#$c8
0604: 90 01     bcc   $0607
0606: 6f        ret

0607: e4 49     mov   a,$49
0609: 24 47     and   a,$47
060b: f0 25     beq   $0632
060d: dd        mov   a,y
060e: 28 1f     and   a,#$1f
0610: 2d        push  a
0611: e4 48     mov   a,$48
0613: 28 e0     and   a,#$e0
0615: c4 48     mov   $48,a
0617: ae        pop   a
0618: 04 48     or    a,$48
061a: c4 48     mov   $48,a
061c: 09 47 5e  or    ($5e),($47)
061f: e4 47     mov   a,$47
0621: 24 1f     and   a,$1f
0623: d0 e1     bne   $0606
0625: e8 00     mov   a,#$00
0627: d5 d0 02  mov   $02d0+x,a
062a: 09 47 45  or    ($45),($47)
062d: 09 47 1d  or    ($1d),($47)
0630: 2f d4     bra   $0606
0632: dd        mov   a,y
0633: 28 7f     and   a,#$7f
0635: 60        clrc
0636: 95 f0 02  adc   a,$02f0+x
0639: 60        clrc
063a: 95 90 03  adc   a,$0390+x
063d: d5 61 03  mov   $0361+x,a
0640: f5 81 03  mov   a,$0381+x
0643: 60        clrc
0644: 95 91 03  adc   a,$0391+x
0647: d5 60 03  mov   $0360+x,a
064a: 90 07     bcc   $0653
064c: f5 61 03  mov   a,$0361+x
064f: bc        inc   a
0650: d5 61 03  mov   $0361+x,a
0653: f5 60 03  mov   a,$0360+x
0656: 60        clrc
0657: 95 50 02  adc   a,$0250+x
065a: d5 60 03  mov   $0360+x,a
065d: f5 61 03  mov   a,$0361+x
0660: 95 51 02  adc   a,$0251+x
0663: d5 61 03  mov   $0361+x,a
0666: 09 47 5e  or    ($5e),($47)
0669: e4 47     mov   a,$47
066b: 24 1f     and   a,$1f
066d: d0 1c     bne   $068b
066f: f5 b1 02  mov   a,$02b1+x
0672: 5c        lsr   a
0673: e8 00     mov   a,#$00
0675: 7c        ror   a
0676: d5 a0 02  mov   $02a0+x,a
0679: e8 00     mov   a,#$00
067b: d4 b0     mov   $b0+x,a
067d: d5 00 01  mov   $0100+x,a
0680: d5 d0 02  mov   $02d0+x,a
0683: d4 c0     mov   $c0+x,a
0685: 09 47 45  or    ($45),($47)
0688: 09 47 1d  or    ($1d),($47)
068b: f5 80 02  mov   a,$0280+x
068e: d4 a0     mov   $a0+x,a
0690: f0 1e     beq   $06b0
0692: f5 81 02  mov   a,$0281+x
0695: d4 a1     mov   $a1+x,a
0697: f5 90 02  mov   a,$0290+x
069a: d0 0a     bne   $06a6
069c: f5 61 03  mov   a,$0361+x
069f: 80        setc
06a0: b5 91 02  sbc   a,$0291+x
06a3: d5 61 03  mov   $0361+x,a
06a6: f5 91 02  mov   a,$0291+x
06a9: 60        clrc
06aa: 95 61 03  adc   a,$0361+x
06ad: 3f 67 0d  call  $0d67
06b0: 3f 7f 0d  call  $0d7f
06b3: 8d 00     mov   y,#$00
06b5: e4 11     mov   a,$11
06b7: 80        setc
06b8: a8 34     sbc   a,#$34
06ba: b0 09     bcs   $06c5
06bc: e4 11     mov   a,$11
06be: 80        setc
06bf: a8 13     sbc   a,#$13
06c1: b0 06     bcs   $06c9
06c3: dc        dec   y
06c4: 1c        asl   a
06c5: 7a 10     addw  ya,$10
06c7: da 10     movw  $10,ya
06c9: 4d        push  x
06ca: e4 11     mov   a,$11
06cc: 1c        asl   a
06cd: 8d 00     mov   y,#$00
06cf: cd 18     mov   x,#$18
06d1: 9e        div   ya,x
06d2: 5d        mov   x,a
06d3: f6 38 11  mov   a,$1138+y
06d6: c4 15     mov   $15,a
06d8: f6 37 11  mov   a,$1137+y
06db: c4 14     mov   $14,a
06dd: f6 3a 11  mov   a,$113a+y
06e0: 2d        push  a
06e1: f6 39 11  mov   a,$1139+y
06e4: ee        pop   y
06e5: 9a 14     subw  ya,$14
06e7: eb 10     mov   y,$10
06e9: cf        mul   ya
06ea: dd        mov   a,y
06eb: 8d 00     mov   y,#$00
06ed: 7a 14     addw  ya,$14
06ef: cb 15     mov   $15,y
06f1: 1c        asl   a
06f2: 2b 15     rol   $15
06f4: c4 14     mov   $14,a
06f6: 2f 04     bra   $06fc
06f8: 4b 15     lsr   $15
06fa: 7c        ror   a
06fb: 3d        inc   x
06fc: c8 06     cmp   x,#$06
06fe: d0 f8     bne   $06f8
0700: ce        pop   x
0701: c4 14     mov   $14,a
0703: 0b 14     asl   $14
0705: 2b 15     rol   $15
0707: 0b 14     asl   $14
0709: 2b 15     rol   $15
070b: ba 14     movw  ya,$14
070d: da 16     movw  $16,ya
070f: 7d        mov   a,x
0710: 9f        xcn   a
0711: 5c        lsr   a
0712: 08 02     or    a,#$02
0714: fd        mov   y,a
0715: e4 16     mov   a,$16
0717: 3f 1d 07  call  $071d
071a: fc        inc   y
071b: e4 17     mov   a,$17
071d: cc f2 00  mov   $00f2,y
0720: c5 f3 00  mov   $00f3,a
0723: 6f        ret

0724: 8d 00     mov   y,#$00
0726: f7 40     mov   a,($40)+y
0728: 3a 40     incw  $40
072a: 2d        push  a
072b: f7 40     mov   a,($40)+y
072d: f0 08     beq   $0737
072f: 3a 40     incw  $40
0731: fd        mov   y,a
0732: ae        pop   a
0733: 7a 4b     addw  ya,$4b
0735: 2f 04     bra   $073b
0737: 3a 40     incw  $40
0739: fd        mov   y,a
073a: ae        pop   a
073b: 6f        ret

073c: e8 20     mov   a,#$20
073e: d4 d1     mov   $d1+x,a
0740: f5 e1 02  mov   a,$02e1+x
0743: 68 a0     cmp   a,#$a0
0745: b0 02     bcs   $0749
0747: 2f 12     bra   $075b
0749: 68 b0     cmp   a,#$b0
074b: b0 07     bcs   $0754
074d: 4d        push  x
074e: 3f 20 08  call  $0820
0751: ce        pop   x
0752: 2f 11     bra   $0765
0754: 4d        push  x
0755: 3f 06 08  call  $0806
0758: ce        pop   x
0759: 2f 0a     bra   $0765
075b: e8 00     mov   a,#$00
075d: d5 e1 02  mov   $02e1+x,a
0760: d5 a0 03  mov   $03a0+x,a
0763: e4 47     mov   a,$47
0765: 0e 46 00  tset1 $0046
0768: 4e 1d 00  tclr1 $001d
076b: 4e 1f 00  tclr1 $001f
076e: 6f        ret

076f: e8 21     mov   a,#$21
0771: c5 f1 00  mov   $00f1,a
0774: e8 00     mov   a,#$00
0776: c4 06     mov   $06,a
0778: 6f        ret

0779: e5 f4 00  mov   a,$00f4
077c: 65 f4 00  cmp   a,$00f4
077f: d0 f8     bne   $0779
0781: 68 00     cmp   a,#$00
0783: d0 01     bne   $0786
0785: 6f        ret

0786: c5 f4 00  mov   $00f4,a
0789: 8d 11     mov   y,#$11
078b: cc f1 00  mov   $00f1,y
078e: c4 e0     mov   $e0,a
0790: 68 f2     cmp   a,#$f2
0792: d0 09     bne   $079d
0794: 8f 01 4e  mov   $4e,#$01
0797: 8f 3f 46  mov   $46,#$3f
079a: e8 00     mov   a,#$00
079c: 6f        ret

079d: 68 f3     cmp   a,#$f3
079f: d0 05     bne   $07a6
07a1: 8f 00 4e  mov   $4e,#$00
07a4: 2f 22     bra   $07c8
07a6: 68 9f     cmp   a,#$9f
07a8: f0 2b     beq   $07d5
07aa: 68 f0     cmp   a,#$f0
07ac: d0 0d     bne   $07bb
07ae: e8 3f     mov   a,#$3f
07b0: c4 46     mov   $46,a
07b2: c4 1a     mov   $1a,a
07b4: e8 9f     mov   a,#$9f
07b6: c4 e0     mov   $e0,a
07b8: 5f 92 08  jmp   $0892

07bb: 68 f1     cmp   a,#$f1
07bd: d0 19     bne   $07d8
07bf: e8 00     mov   a,#$00
07c1: c4 1a     mov   $1a,a
07c3: e4 4e     mov   a,$4e
07c5: f0 01     beq   $07c8
07c7: 6f        ret

07c8: e4 1d     mov   a,$1d
07ca: ec e1 02  mov   y,$02e1
07cd: ad b0     cmp   y,#$b0
07cf: b0 02     bcs   $07d3
07d1: 28 3f     and   a,#$3f
07d3: c4 45     mov   $45,a
07d5: e8 00     mov   a,#$00
07d7: 6f        ret

07d8: 68 fa     cmp   a,#$fa
07da: d0 03     bne   $07df
07dc: c4 19     mov   $19,a
07de: 6f        ret

07df: 68 fb     cmp   a,#$fb
07e1: d0 05     bne   $07e8
07e3: e8 00     mov   a,#$00
07e5: c4 19     mov   $19,a
07e7: 6f        ret

07e8: 68 f4     cmp   a,#$f4
07ea: f0 04     beq   $07f0
07ec: 68 fc     cmp   a,#$fc
07ee: d0 12     bne   $0802
07f0: 8f 10 0d  mov   $0d,#$10
07f3: cd 01     mov   x,#$01
07f5: 68 fc     cmp   a,#$fc
07f7: f0 02     beq   $07fb
07f9: cd 03     mov   x,#$03
07fb: d8 0b     mov   $0b,x
07fd: e8 00     mov   a,#$00
07ff: c4 0c     mov   $0c,a
0801: 6f        ret

0802: 68 fe     cmp   a,#$fe
0804: d0 16     bne   $081c
0806: cd 0e     mov   x,#$0e
0808: 8d ff     mov   y,#$ff
080a: e8 00     mov   a,#$00
080c: c4 1a     mov   $1a,a
080e: c4 4e     mov   $4e,a
0810: d5 e1 02  mov   $02e1+x,a
0813: d5 a0 03  mov   $03a0+x,a
0816: 1d        dec   x
0817: 1d        dec   x
0818: 10 f6     bpl   $0810
081a: dd        mov   a,y
081b: 6f        ret

081c: 68 fd     cmp   a,#$fd
081e: d0 06     bne   $0826
0820: cd 0a     mov   x,#$0a
0822: 8d 3f     mov   y,#$3f
0824: 2f e4     bra   $080a
0826: 68 70     cmp   a,#$70
0828: b0 68     bcs   $0892
082a: 8d 0e     mov   y,#$0e
082c: 8f 40 47  mov   $47,#$40
082f: 68 37     cmp   a,#$37
0831: f0 04     beq   $0837
0833: 68 39     cmp   a,#$39
0835: d0 24     bne   $085b
0837: f6 e1 02  mov   a,$02e1+y
083a: 68 37     cmp   a,#$37
083c: f0 19     beq   $0857
083e: 68 39     cmp   a,#$39
0840: f0 15     beq   $0857
0842: dc        dec   y
0843: dc        dec   y
0844: 0b 47     asl   $47
0846: f6 df 02  mov   a,$02df+y
0849: 68 37     cmp   a,#$37
084b: f0 0a     beq   $0857
084d: 68 39     cmp   a,#$39
084f: f0 06     beq   $0857
0851: fc        inc   y
0852: fc        inc   y
0853: 4b 47     lsr   $47
0855: 2f 04     bra   $085b
0857: e4 e0     mov   a,$e0
0859: 2f 2b     bra   $0886
085b: e4 e0     mov   a,$e0
085d: 76 e1 02  cmp   a,$02e1+y
0860: d0 04     bne   $0866
0862: 0b 47     asl   $47
0864: 2f 20     bra   $0886
0866: dc        dec   y
0867: dc        dec   y
0868: 76 e1 02  cmp   a,$02e1+y
086b: f0 19     beq   $0886
086d: 5d        mov   x,a
086e: f5 e7 12  mov   a,$12e7+x
0871: c4 e1     mov   $e1,a
0873: f6 a0 03  mov   a,$03a0+y
0876: 76 a2 03  cmp   a,$03a2+y
0879: 90 04     bcc   $087f
087b: fc        inc   y
087c: fc        inc   y
087d: 0b 47     asl   $47
087f: e4 e1     mov   a,$e1
0881: 76 a0 03  cmp   a,$03a0+y
0884: 90 52     bcc   $08d8
0886: cd 01     mov   x,#$01
0888: e4 e0     mov   a,$e0
088a: 3f db 08  call  $08db
088d: f0 02     beq   $0891
088f: e4 47     mov   a,$47
0891: 6f        ret

0892: 68 a0     cmp   a,#$a0
0894: b0 19     bcs   $08af
0896: 5d        mov   x,a
0897: f5 e7 12  mov   a,$12e7+x
089a: c4 e1     mov   $e1,a
089c: cd 02     mov   x,#$02
089e: 8d 0c     mov   y,#$0c
08a0: 76 a0 03  cmp   a,$03a0+y
08a3: 90 33     bcc   $08d8
08a5: e4 e0     mov   a,$e0
08a7: 3f db 08  call  $08db
08aa: f0 02     beq   $08ae
08ac: e8 c0     mov   a,#$c0
08ae: 6f        ret

08af: 68 b0     cmp   a,#$b0
08b1: b0 10     bcs   $08c3
08b3: cd 06     mov   x,#$06
08b5: 8d 00     mov   y,#$00
08b7: cb 4c     mov   $4c,y
08b9: cb 4b     mov   $4b,y
08bb: 3f db 08  call  $08db
08be: f0 02     beq   $08c2
08c0: e8 3f     mov   a,#$3f
08c2: 6f        ret

08c3: cd 08     mov   x,#$08
08c5: 8d 00     mov   y,#$00
08c7: cb 4c     mov   $4c,y
08c9: cb 4b     mov   $4b,y
08cb: 3f db 08  call  $08db
08ce: f0 02     beq   $08d2
08d0: e8 ff     mov   a,#$ff
08d2: 6f        ret

08d3: ce        pop   x
08d4: ee        pop   y
08d5: 8d 0c     mov   y,#$0c
08d7: ae        pop   a
08d8: e8 00     mov   a,#$00
08da: 6f        ret

08db: 2d        push  a
08dc: 6d        push  y
08dd: 4d        push  x
08de: 68 a0     cmp   a,#$a0
08e0: 90 3e     bcc   $0920
08e2: 80        setc
08e3: a8 a0     sbc   a,#$a0
08e5: 1c        asl   a
08e6: 5d        mov   x,a
08e7: f5 a8 12  mov   a,$12a8+x
08ea: f0 e7     beq   $08d3
08ec: fd        mov   y,a
08ed: f5 a7 12  mov   a,$12a7+x
08f0: da 40     movw  $40,ya
08f2: 3f 24 07  call  $0724
08f5: da 16     movw  $16,ya
08f7: ce        pop   x
08f8: ee        pop   y
08f9: ae        pop   a
08fa: d6 e1 02  mov   $02e1+y,a
08fd: 2d        push  a
08fe: e4 e1     mov   a,$e1
0900: d6 a0 03  mov   $03a0+y,a
0903: 3f 6b 09  call  $096b
0906: 3f b7 09  call  $09b7
0909: ae        pop   a
090a: 1d        dec   x
090b: d0 ed     bne   $08fa
090d: e4 19     mov   a,$19
090f: f0 02     beq   $0913
0911: e8 00     mov   a,#$00
0913: c4 5f     mov   $5f,a
0915: e8 00     mov   a,#$00
0917: c4 42     mov   $42,a
0919: c4 0b     mov   $0b,a
091b: c4 0d     mov   $0d,a
091d: 5f b4 09  jmp   $09b4

0920: cb 15     mov   $15,y
0922: 68 70     cmp   a,#$70
0924: 90 10     bcc   $0936
0926: 80        setc
0927: a8 70     sbc   a,#$70
0929: 1c        asl   a
092a: 5d        mov   x,a
092b: f5 48 12  mov   a,$1248+x
092e: f0 a3     beq   $08d3
0930: fd        mov   y,a
0931: f5 47 12  mov   a,$1247+x
0934: 2f 0b     bra   $0941
0936: 1c        asl   a
0937: 5d        mov   x,a
0938: f5 68 11  mov   a,$1168+x
093b: f0 96     beq   $08d3
093d: fd        mov   y,a
093e: f5 67 11  mov   a,$1167+x
0941: 80        setc
0942: a4 15     sbc   a,$15
0944: b0 01     bcs   $0947
0946: dc        dec   y
0947: da 16     movw  $16,ya
0949: ce        pop   x
094a: ee        pop   y
094b: ae        pop   a
094c: d6 e1 02  mov   $02e1+y,a
094f: 2d        push  a
0950: e4 e1     mov   a,$e1
0952: d6 a0 03  mov   $03a0+y,a
0955: 3f 6b 09  call  $096b
0958: f7 16     mov   a,($16)+y
095a: d6 30 00  mov   $0030+y,a
095d: fc        inc   y
095e: f7 16     mov   a,($16)+y
0960: d6 30 00  mov   $0030+y,a
0963: fc        inc   y
0964: ae        pop   a
0965: 1d        dec   x
0966: d0 e4     bne   $094c
0968: 5f b4 09  jmp   $09b4

096b: e8 ff     mov   a,#$ff
096d: d6 01 03  mov   $0301+y,a
0970: d6 d0 00  mov   $00d0+y,a
0973: e8 0a     mov   a,#$0a
0975: d6 51 03  mov   $0351+y,a
0978: d6 31 03  mov   $0331+y,a
097b: e8 00     mov   a,#$00
097d: d6 30 03  mov   $0330+y,a
0980: d6 81 03  mov   $0381+y,a
0983: d6 f0 02  mov   $02f0+y,a
0986: d6 80 02  mov   $0280+y,a
0989: d6 b1 00  mov   $00b1+y,a
098c: d6 c1 00  mov   $00c1+y,a
098f: d6 81 00  mov   $0081+y,a
0992: d6 01 01  mov   $0101+y,a
0995: d6 50 02  mov   $0250+y,a
0998: d6 51 02  mov   $0251+y,a
099b: d6 71 02  mov   $0271+y,a
099e: d6 80 00  mov   $0080+y,a
09a1: d6 90 00  mov   $0090+y,a
09a4: d6 91 00  mov   $0091+y,a
09a7: bc        inc   a
09a8: d6 70 00  mov   $0070+y,a
09ab: d6 01 02  mov   $0201+y,a
09ae: e8 20     mov   a,#$20
09b0: d6 d1 00  mov   $00d1+y,a
09b3: 6f        ret

09b4: e8 01     mov   a,#$01
09b6: 6f        ret

09b7: f7 16     mov   a,($16)+y
09b9: 60        clrc
09ba: 84 4b     adc   a,$4b
09bc: d6 30 00  mov   $0030+y,a
09bf: fc        inc   y
09c0: f7 16     mov   a,($16)+y
09c2: 84 4c     adc   a,$4c
09c4: d6 30 00  mov   $0030+y,a
09c7: fc        inc   y
09c8: 6f        ret

09c9: 3f 24 07  call  $0724
09cc: d0 19     bne   $09e7
09ce: fd        mov   y,a
09cf: d0 03     bne   $09d4
09d1: 5f 3c 07  jmp   $073c

09d4: 8b 42     dec   $42
09d6: 10 02     bpl   $09da
09d8: c4 42     mov   $42,a
09da: 3f 24 07  call  $0724
09dd: 2d        push  a
09de: e4 42     mov   a,$42
09e0: ae        pop   a
09e1: f0 e6     beq   $09c9
09e3: da 40     movw  $40,ya
09e5: 2f e2     bra   $09c9
09e7: da 16     movw  $16,ya
09e9: 8d 00     mov   y,#$00
09eb: e8 00     mov   a,#$00
09ed: d6 80 00  mov   $0080+y,a
09f0: d6 90 00  mov   $0090+y,a
09f3: d6 91 00  mov   $0091+y,a
09f6: bc        inc   a
09f7: d6 70 00  mov   $0070+y,a
09fa: 3f b7 09  call  $09b7
09fd: f5 e1 02  mov   a,$02e1+x
0a00: 68 b0     cmp   a,#$b0
0a02: b0 06     bcs   $0a0a
0a04: ad 0c     cmp   y,#$0c
0a06: d0 e3     bne   $09eb
0a08: 2f 04     bra   $0a0e
0a0a: ad 10     cmp   y,#$10
0a0c: d0 dd     bne   $09eb
0a0e: cd 00     mov   x,#$00
0a10: d8 5e     mov   $5e,x
0a12: 8f 01 47  mov   $47,#$01
0a15: 9b 70     dec   $70+x
0a17: f0 03     beq   $0a1c
0a19: 5f 9e 0a  jmp   $0a9e

0a1c: 3f b7 0a  call  $0ab7
0a1f: d0 21     bne   $0a42
0a21: f4 80     mov   a,$80+x
0a23: d0 0a     bne   $0a2f
0a25: f5 e1 02  mov   a,$02e1+x
0a28: 68 a0     cmp   a,#$a0
0a2a: b0 9d     bcs   $09c9
0a2c: 5f 3c 07  jmp   $073c

0a2f: 3f e3 0c  call  $0ce3
0a32: 9b 80     dec   $80+x
0a34: d0 e6     bne   $0a1c
0a36: f5 30 02  mov   a,$0230+x
0a39: d4 30     mov   $30+x,a
0a3b: f5 31 02  mov   a,$0231+x
0a3e: d4 31     mov   $31+x,a
0a40: 2f da     bra   $0a1c
0a42: 30 24     bmi   $0a68
0a44: d5 00 02  mov   $0200+x,a
0a47: 3f b7 0a  call  $0ab7
0a4a: 30 1c     bmi   $0a68
0a4c: 2d        push  a
0a4d: 9f        xcn   a
0a4e: 28 07     and   a,#$07
0a50: fd        mov   y,a
0a51: f6 51 11  mov   a,$1151+y
0a54: d5 01 02  mov   $0201+x,a
0a57: ae        pop   a
0a58: 28 0f     and   a,#$0f
0a5a: fd        mov   y,a
0a5b: f6 59 11  mov   a,$1159+y
0a5e: 60        clrc
0a5f: 95 01 01  adc   a,$0101+x
0a62: d5 10 02  mov   $0210+x,a
0a65: 3f b7 0a  call  $0ab7
0a68: 68 e0     cmp   a,#$e0
0a6a: 90 05     bcc   $0a71
0a6c: 3f a5 0a  call  $0aa5
0a6f: 2f ab     bra   $0a1c
0a71: 3f c8 05  call  $05c8
0a74: f5 01 02  mov   a,$0201+x
0a77: d0 0b     bne   $0a84
0a79: e4 1f     mov   a,$1f
0a7b: 24 47     and   a,$47
0a7d: d0 0d     bne   $0a8c
0a7f: 09 47 1f  or    ($1f),($47)
0a82: 2f 08     bra   $0a8c
0a84: e4 47     mov   a,$47
0a86: 48 ff     eor   a,#$ff
0a88: 24 1f     and   a,$1f
0a8a: c4 1f     mov   $1f,a
0a8c: f5 00 02  mov   a,$0200+x
0a8f: d4 70     mov   $70+x,a
0a91: fd        mov   y,a
0a92: f5 01 02  mov   a,$0201+x
0a95: f0 01     beq   $0a98
0a97: bc        inc   a
0a98: cf        mul   ya
0a99: dd        mov   a,y
0a9a: d4 71     mov   $71+x,a
0a9c: 2f 03     bra   $0aa1
0a9e: 3f d8 0e  call  $0ed8
0aa1: 3f 49 0d  call  $0d49
0aa4: 6f        ret

0aa5: 1c        asl   a
0aa6: fd        mov   y,a
0aa7: f6 e7 0c  mov   a,$0ce7+y
0aaa: 2d        push  a
0aab: f6 e6 0c  mov   a,$0ce6+y
0aae: 2d        push  a
0aaf: dd        mov   a,y
0ab0: 5c        lsr   a
0ab1: fd        mov   y,a
0ab2: f6 84 0d  mov   a,$0d84+y
0ab5: f0 08     beq   $0abf
0ab7: e7 30     mov   a,($30+x)
0ab9: bb 30     inc   $30+x
0abb: d0 02     bne   $0abf
0abd: bb 31     inc   $31+x
0abf: fd        mov   y,a
0ac0: 6f        ret

0ac1: db $03,$fe,$fd,$f9,$fa,$fb,$09,$fb,$fb,$00,$00,$00,$00,$00,$00,$fd,$09,$00,$00,$fe
0ad5: db $e6,$e6,$0b,$87,$28,$07,$af,$0a,$0a,$00,$00,$00,$00,$00,$00,$be,$b2,$00,$00,$e3

; vcmd e0
0ae9: d5 11 02  mov   $0211+x,a
0aec: fd        mov   y,a
0aed: 30 15     bmi   $0b04
0aef: 2d        push  a
0af0: 4d        push  x
0af1: 5d        mov   x,a
0af2: f5 c1 0a  mov   a,$0ac1+x
0af5: fd        mov   y,a
0af6: f5 d5 0a  mov   a,$0ad5+x
0af9: ce        pop   x
0afa: d5 91 03  mov   $0391+x,a
0afd: dd        mov   a,y
0afe: d5 90 03  mov   $0390+x,a
0b01: ae        pop   a
0b02: 2f 10     bra   $0b14
0b04: 2d        push  a
0b05: e8 00     mov   a,#$00
0b07: d5 91 03  mov   $0391+x,a
0b0a: d5 90 03  mov   $0390+x,a
0b0d: ae        pop   a
0b0e: 80        setc
0b0f: a8 ca     sbc   a,#$ca
0b11: 60        clrc
0b12: 88 0e     adc   a,#$0e
0b14: 8d 06     mov   y,#$06
0b16: cf        mul   ya
0b17: da 14     movw  $14,ya
0b19: 60        clrc
0b1a: 98 97 14  adc   $14,#$97
0b1d: 98 13 15  adc   $15,#$13
0b20: 4d        push  x
0b21: 7d        mov   a,x
0b22: 9f        xcn   a
0b23: 5c        lsr   a
0b24: 08 04     or    a,#$04
0b26: 5d        mov   x,a
0b27: 8d 00     mov   y,#$00
0b29: f7 14     mov   a,($14)+y
0b2b: 10 0e     bpl   $0b3b
0b2d: 28 1f     and   a,#$1f
0b2f: 38 20 48  and   $48,#$20
0b32: 0e 48 00  tset1 $0048
0b35: 09 47 49  or    ($49),($47)
0b38: dd        mov   a,y
0b39: 2f 07     bra   $0b42
0b3b: e4 47     mov   a,$47
0b3d: 4e 49 00  tclr1 $0049
0b40: f7 14     mov   a,($14)+y
0b42: c9 f2 00  mov   $00f2,x
0b45: c5 f3 00  mov   $00f3,a
0b48: 3d        inc   x
0b49: fc        inc   y
0b4a: ad 04     cmp   y,#$04
0b4c: d0 f2     bne   $0b40
0b4e: ce        pop   x
0b4f: f7 14     mov   a,($14)+y
0b51: d5 21 02  mov   $0221+x,a
0b54: fc        inc   y
0b55: f7 14     mov   a,($14)+y
0b57: d5 20 02  mov   $0220+x,a
0b5a: 6f        ret

; vcmd e1
0b5b: eb 19     mov   y,$19
0b5d: d0 23     bne   $0b82
0b5f: 68 ff     cmp   a,#$ff
0b61: f0 04     beq   $0b67
0b63: 30 09     bmi   $0b6e
0b65: 2f 0e     bra   $0b75
0b67: e4 47     mov   a,$47
0b69: 0e 5f 00  tset1 $005f
0b6c: 2f 05     bra   $0b73
0b6e: e4 47     mov   a,$47
0b70: 4e 5f 00  tclr1 $005f
0b73: e8 0a     mov   a,#$0a
0b75: d5 51 03  mov   $0351+x,a
0b78: 28 1f     and   a,#$1f
0b7a: d5 31 03  mov   $0331+x,a
0b7d: e8 00     mov   a,#$00
0b7f: d5 30 03  mov   $0330+x,a
0b82: 6f        ret

; vcmd e2
0b83: eb 19     mov   y,$19
0b85: f0 03     beq   $0b8a
0b87: 5f b7 0a  jmp   $0ab7

0b8a: d4 91     mov   $91+x,a
0b8c: 2d        push  a
0b8d: 3f b7 0a  call  $0ab7
0b90: d5 50 03  mov   $0350+x,a
0b93: 80        setc
0b94: b5 31 03  sbc   a,$0331+x
0b97: ce        pop   x
0b98: 3f 8a 0d  call  $0d8a
0b9b: d5 40 03  mov   $0340+x,a
0b9e: dd        mov   a,y
0b9f: d5 41 03  mov   $0341+x,a
0ba2: 6f        ret

; vcmd e3
0ba3: d5 b0 02  mov   $02b0+x,a
0ba6: 3f b7 0a  call  $0ab7
0ba9: d5 a1 02  mov   $02a1+x,a
0bac: 3f b7 0a  call  $0ab7
0baf: d4 b1     mov   $b1+x,a
0bb1: d5 c1 02  mov   $02c1+x,a
0bb4: e8 00     mov   a,#$00
0bb6: d5 b1 02  mov   $02b1+x,a
0bb9: 6f        ret

; vcmd f0
0bba: d5 b1 02  mov   $02b1+x,a
0bbd: 2d        push  a
0bbe: 8d 00     mov   y,#$00
0bc0: f4 b1     mov   a,$b1+x
0bc2: ce        pop   x
0bc3: 9e        div   ya,x
0bc4: f8 44     mov   x,$44
0bc6: d5 c0 02  mov   $02c0+x,a
0bc9: 6f        ret

; vcmd e4
0bca: d5 70 02  mov   $0270+x,a
0bcd: 3f b7 0a  call  $0ab7
0bd0: d5 71 02  mov   $0271+x,a
0bd3: e8 00     mov   a,#$00
0bd5: d4 20     mov   $20+x,a
0bd7: d4 21     mov   $21+x,a
0bd9: 6f        ret

; vcmd e5
0bda: f4 30     mov   a,$30+x
0bdc: d5 60 02  mov   $0260+x,a
0bdf: f4 31     mov   a,$31+x
0be1: d5 61 02  mov   $0261+x,a
0be4: e8 00     mov   a,#$00
0be6: d4 81     mov   $81+x,a
0be8: 6f        ret

; vcmd e6
0be9: bb 81     inc   $81+x
0beb: 74 81     cmp   a,$81+x
0bed: f0 39     beq   $0c28
0bef: 3f b7 0a  call  $0ab7
0bf2: 60        clrc
0bf3: 95 01 01  adc   a,$0101+x
0bf6: d5 01 01  mov   $0101+x,a
0bf9: 3f b7 0a  call  $0ab7
0bfc: 8d 00     mov   y,#$00
0bfe: 1c        asl   a
0bff: 90 01     bcc   $0c02
0c01: dc        dec   y
0c02: cb 1e     mov   $1e,y
0c04: 1c        asl   a
0c05: 2b 1e     rol   $1e
0c07: 1c        asl   a
0c08: 2b 1e     rol   $1e
0c0a: 1c        asl   a
0c0b: 2b 1e     rol   $1e
0c0d: eb 1e     mov   y,$1e
0c0f: 60        clrc
0c10: 95 50 02  adc   a,$0250+x
0c13: d5 50 02  mov   $0250+x,a
0c16: dd        mov   a,y
0c17: 95 51 02  adc   a,$0251+x
0c1a: d5 51 02  mov   $0251+x,a
0c1d: f5 60 02  mov   a,$0260+x
0c20: d4 30     mov   $30+x,a
0c22: f5 61 02  mov   a,$0261+x
0c25: d4 31     mov   $31+x,a
0c27: 6f        ret

0c28: e8 00     mov   a,#$00
0c2a: d4 81     mov   $81+x,a
0c2c: d5 01 01  mov   $0101+x,a
0c2f: d5 50 02  mov   $0250+x,a
0c32: d5 51 02  mov   $0251+x,a
0c35: 3f b9 0a  call  $0ab9
0c38: 5f b9 0a  jmp   $0ab9

; vcmd e7
0c3b: 1c        asl   a
0c3c: d5 d1 00  mov   $00d1+x,a
0c3f: 8f 00 50  mov   $50,#$00
0c42: 6f        ret

; vcmd e8
0c43: c4 50     mov   $50,a
0c45: 3f b7 0a  call  $0ab7
0c48: c4 51     mov   $51,a
0c4a: 80        setc
0c4b: a4 d1     sbc   a,$d1
0c4d: f8 50     mov   x,$50
0c4f: 3f 8a 0d  call  $0d8a
0c52: da 52     movw  $52,ya
0c54: f4 d1     mov   a,$d1+x
0c56: c4 55     mov   $55,a
0c58: 8f 00 54  mov   $54,#$00
0c5b: 6f        ret

; vcmd e9
0c5c: 6f        ret

; vcmd ea
0c5d: d5 f0 02  mov   $02f0+x,a
0c60: 6f        ret

; vcmd eb
0c61: d5 e0 02  mov   $02e0+x,a
0c64: 3f b7 0a  call  $0ab7
0c67: d5 d1 02  mov   $02d1+x,a
0c6a: 3f b7 0a  call  $0ab7
; vcmd ec
0c6d: d4 c1     mov   $c1+x,a
0c6f: 6f        ret

; vcmd f1
0c70: e8 01     mov   a,#$01
0c72: 2f 02     bra   $0c76
; vcmd f2
0c74: e8 00     mov   a,#$00
0c76: d5 90 02  mov   $0290+x,a
0c79: dd        mov   a,y
0c7a: d5 81 02  mov   $0281+x,a
0c7d: 3f b7 0a  call  $0ab7
0c80: d5 80 02  mov   $0280+x,a
0c83: 3f b7 0a  call  $0ab7
0c86: d5 91 02  mov   $0291+x,a
0c89: 6f        ret

; vcmd f3
0c8a: d5 80 02  mov   $0280+x,a
0c8d: 6f        ret

; vcmd ed
0c8e: d5 01 03  mov   $0301+x,a
0c91: e8 00     mov   a,#$00
0c93: d5 00 03  mov   $0300+x,a
0c96: 6f        ret

; vcmd ee
0c97: d4 90     mov   $90+x,a
0c99: 2d        push  a
0c9a: 3f b7 0a  call  $0ab7
0c9d: d5 20 03  mov   $0320+x,a
0ca0: 80        setc
0ca1: b5 01 03  sbc   a,$0301+x
0ca4: ce        pop   x
0ca5: 3f 8a 0d  call  $0d8a
0ca8: d5 10 03  mov   $0310+x,a
0cab: dd        mov   a,y
0cac: d5 11 03  mov   $0311+x,a
0caf: 6f        ret

; vcmd f4
0cb0: d5 81 03  mov   $0381+x,a
0cb3: 6f        ret

; vcmd ef
0cb4: d5 40 02  mov   $0240+x,a
0cb7: 3f b7 0a  call  $0ab7
0cba: d5 41 02  mov   $0241+x,a
0cbd: f5 e1 02  mov   a,$02e1+x
0cc0: 68 a0     cmp   a,#$a0
0cc2: 90 10     bcc   $0cd4
0cc4: f5 41 02  mov   a,$0241+x
0cc7: fd        mov   y,a
0cc8: f5 40 02  mov   a,$0240+x
0ccb: 7a 4b     addw  ya,$4b
0ccd: d5 40 02  mov   $0240+x,a
0cd0: dd        mov   a,y
0cd1: d5 41 02  mov   $0241+x,a
0cd4: 3f b7 0a  call  $0ab7
0cd7: d4 80     mov   $80+x,a
0cd9: f4 30     mov   a,$30+x
0cdb: d5 30 02  mov   $0230+x,a
0cde: f4 31     mov   a,$31+x
0ce0: d5 31 02  mov   $0231+x,a
0ce3: f5 40 02  mov   a,$0240+x
0ce6: d4 30     mov   $30+x,a
0ce8: f5 41 02  mov   a,$0241+x
0ceb: d4 31     mov   $31+x,a
0ced: 6f        ret

; vcmd f5-f8
0cee: a2 48     set5  $48
0cf0: 6f        ret

; vcmd fa
0cf1: 6f        ret

; vcmd fb
0cf2: 8d 00     mov   y,#$00
0cf4: 68 a0     cmp   a,#$a0
0cf6: b0 10     bcs   $0d08
0cf8: 4d        push  x
0cf9: cd 0a     mov   x,#$0a
0cfb: 9e        div   ya,x
0cfc: c4 1e     mov   $1e,a
0cfe: dd        mov   a,y
0cff: 28 07     and   a,#$07
0d01: 9f        xcn   a
0d02: 04 1e     or    a,$1e
0d04: 08 80     or    a,#$80
0d06: fd        mov   y,a
0d07: ce        pop   x
0d08: 4d        push  x
0d09: 7d        mov   a,x
0d0a: 9f        xcn   a
0d0b: 5c        lsr   a
0d0c: 08 05     or    a,#$05
0d0e: 5d        mov   x,a
0d0f: dd        mov   a,y
0d10: c9 f2 00  mov   $00f2,x
0d13: c5 f3 00  mov   $00f3,a
0d16: 4d        push  x
0d17: ee        pop   y
0d18: ce        pop   x
0d19: fc        inc   y
0d1a: 3f 3f 0d  call  $0d3f
0d1d: cc f2 00  mov   $00f2,y
0d20: 4d        push  x
0d21: 6d        push  y
0d22: 8d 00     mov   y,#$00
0d24: cd 1e     mov   x,#$1e
0d26: 9e        div   ya,x
0d27: fc        inc   y
0d28: fc        inc   y
0d29: cb 1e     mov   $1e,y
0d2b: 9f        xcn   a
0d2c: 1c        asl   a
0d2d: 04 1e     or    a,$1e
0d2f: ee        pop   y
0d30: ce        pop   x
0d31: c5 f3 00  mov   $00f3,a
0d34: fc        inc   y
0d35: 3f 3f 0d  call  $0d3f
0d38: cc f2 00  mov   $00f2,y
0d3b: c5 f3 00  mov   $00f3,a
0d3e: 6f        ret

0d3f: e7 30     mov   a,($30+x)
0d41: bb 30     inc   $30+x
0d43: d0 02     bne   $0d47
0d45: bb 31     inc   $31+x
0d47: 6f        ret

; vcmd fd-fe
0d48: 6f        ret

0d49: f4 a0     mov   a,$a0+x
0d4b: d0 31     bne   $0d7e
0d4d: e7 30     mov   a,($30+x)
0d4f: 68 f9     cmp   a,#$f9
0d51: d0 2b     bne   $0d7e
0d53: 3f b9 0a  call  $0ab9
0d56: 3f b7 0a  call  $0ab7
; vcmd f9
0d59: d4 a1     mov   $a1+x,a
0d5b: 3f b7 0a  call  $0ab7
0d5e: d4 a0     mov   $a0+x,a
0d60: 3f b7 0a  call  $0ab7
0d63: 60        clrc
0d64: 95 f0 02  adc   a,$02f0+x
0d67: 28 7f     and   a,#$7f
0d69: d5 80 03  mov   $0380+x,a
0d6c: 80        setc
0d6d: b5 61 03  sbc   a,$0361+x
0d70: fb a0     mov   y,$a0+x
0d72: 6d        push  y
0d73: ce        pop   x
0d74: 3f 8a 0d  call  $0d8a
0d77: d5 70 03  mov   $0370+x,a
0d7a: dd        mov   a,y
0d7b: d5 71 03  mov   $0371+x,a
0d7e: 6f        ret

0d7f: f5 61 03  mov   a,$0361+x
0d82: c4 11     mov   $11,a
0d84: f5 60 03  mov   a,$0360+x
0d87: c4 10     mov   $10,a
0d89: 6f        ret

0d8a: ed        notc
0d8b: 6b 12     ror   $12
0d8d: 10 03     bpl   $0d92
0d8f: 48 ff     eor   a,#$ff
0d91: bc        inc   a
0d92: 8d 00     mov   y,#$00
0d94: 9e        div   ya,x
0d95: 2d        push  a
0d96: e8 00     mov   a,#$00
0d98: 9e        div   ya,x
0d99: ee        pop   y
0d9a: f8 44     mov   x,$44
0d9c: f3 12 06  bbc7  $12,$0da5
0d9f: da 14     movw  $14,ya
0da1: ba 0e     movw  ya,$0e
0da3: 9a 14     subw  ya,$14
0da5: 6f        ret

0da6: dw $0ae9  ; e0
0da8: dw $0b5b  ; e1
0daa: dw $0b83  ; e2
0dac: dw $0ba3  ; e3
0dae: dw $0bca  ; e4
0db0: dw $0bda  ; e5
0db2: dw $0be9  ; e6
0db4: dw $0c3b  ; e7
0db6: dw $0c43  ; e8
0db8: dw $0c5c  ; e9
0dba: dw $0c5d  ; ea
0dbc: dw $0c61  ; eb
0dbe: dw $0c6d  ; ec
0dc0: dw $0c8e  ; ed
0dc2: dw $0c97  ; ee
0dc4: dw $0cb4  ; ef
0dc6: dw $0bba  ; f0
0dc8: dw $0c70  ; f1
0dca: dw $0c74  ; f2
0dcc: dw $0c8a  ; f3
0dce: dw $0cb0  ; f4
0dd0: dw $0cee  ; f5
0dd2: dw $0cee  ; f6
0dd4: dw $0cee  ; f7
0dd6: dw $0cee  ; f8
0dd8: dw $0d59  ; f9
0dda: dw $0cf1  ; fa
0ddc: dw $0cf2  ; fb
0dde: dw $0d48  ; fc
0de0: dw $0d48  ; fd
0de2: dw $0d48  ; fe

0de4: db $01,$01,$02,$03,$02,$00,$03,$01
0dec: db $02,$01,$01,$03,$00,$01,$02,$03
0df4: db $01,$03,$03,$00,$01,$03,$00,$03
0dfc: db $03,$03,$01,$03,$00,$00,$00

0e03: f4 90     mov   a,$90+x
0e05: f0 09     beq   $0e10
0e07: e8 00     mov   a,#$00
0e09: 8d 03     mov   y,#$03
0e0b: 9b 90     dec   $90+x
0e0d: 3f b4 0e  call  $0eb4
0e10: fb c1     mov   y,$c1+x
0e12: f0 23     beq   $0e37
0e14: f5 e0 02  mov   a,$02e0+x
0e17: de c0 1b  cbne  $c0+x,$0e35
0e1a: 09 47 5e  or    ($5e),($47)
0e1d: f5 d0 02  mov   a,$02d0+x
0e20: 10 07     bpl   $0e29
0e22: fc        inc   y
0e23: d0 04     bne   $0e29
0e25: e8 80     mov   a,#$80
0e27: 2f 04     bra   $0e2d
0e29: 60        clrc
0e2a: 95 d1 02  adc   a,$02d1+x
0e2d: d5 d0 02  mov   $02d0+x,a
0e30: 3f fb 10  call  $10fb
0e33: 2f 07     bra   $0e3c
0e35: bb c0     inc   $c0+x
0e37: e8 ff     mov   a,#$ff
0e39: 3f 06 11  call  $1106
0e3c: f4 91     mov   a,$91+x
0e3e: f0 09     beq   $0e49
0e40: e8 30     mov   a,#$30
0e42: 8d 03     mov   y,#$03
0e44: 9b 91     dec   $91+x
0e46: 3f b4 0e  call  $0eb4
0e49: e4 47     mov   a,$47
0e4b: 24 5e     and   a,$5e
0e4d: f0 64     beq   $0eb3
0e4f: f5 31 03  mov   a,$0331+x
0e52: fd        mov   y,a
0e53: f5 30 03  mov   a,$0330+x
0e56: da 10     movw  $10,ya
0e58: 7d        mov   a,x
0e59: 9f        xcn   a
0e5a: 5c        lsr   a
0e5b: c4 12     mov   $12,a
0e5d: eb 11     mov   y,$11
0e5f: f6 17 11  mov   a,$1117+y
0e62: 80        setc
0e63: b6 16 11  sbc   a,$1116+y
0e66: eb 10     mov   y,$10
0e68: cf        mul   ya
0e69: dd        mov   a,y
0e6a: eb 11     mov   y,$11
0e6c: 60        clrc
0e6d: 96 16 11  adc   a,$1116+y
0e70: fd        mov   y,a
0e71: f5 21 03  mov   a,$0321+x
0e74: cf        mul   ya
0e75: f5 51 03  mov   a,$0351+x
0e78: 1c        asl   a
0e79: 13 12 01  bbc0  $12,$0e7d
0e7c: 1c        asl   a
0e7d: dd        mov   a,y
0e7e: 90 03     bcc   $0e83
0e80: 48 ff     eor   a,#$ff
0e82: bc        inc   a
0e83: fd        mov   y,a
0e84: f5 e1 02  mov   a,$02e1+x
0e87: 68 a0     cmp   a,#$a0
0e89: 90 15     bcc   $0ea0
0e8b: dd        mov   a,y
0e8c: 80        setc
0e8d: b5 f1 02  sbc   a,$02f1+x
0e90: 90 0c     bcc   $0e9e
0e92: 2d        push  a
0e93: eb 0d     mov   y,$0d
0e95: cf        mul   ya
0e96: cb 1e     mov   $1e,y
0e98: ae        pop   a
0e99: 80        setc
0e9a: a4 1e     sbc   a,$1e
0e9c: b0 03     bcs   $0ea1
0e9e: 8d 00     mov   y,#$00
0ea0: dd        mov   a,y
0ea1: eb 12     mov   y,$12
0ea3: 3f 1d 07  call  $071d
0ea6: 8d 14     mov   y,#$14
0ea8: e8 00     mov   a,#$00
0eaa: 9a 10     subw  ya,$10
0eac: da 10     movw  $10,ya
0eae: ab 12     inc   $12
0eb0: 33 12 aa  bbc1  $12,$0e5d
0eb3: 6f        ret

0eb4: 09 47 5e  or    ($5e),($47)
0eb7: da 14     movw  $14,ya
0eb9: da 16     movw  $16,ya
0ebb: 4d        push  x
0ebc: ee        pop   y
0ebd: 60        clrc
0ebe: d0 0a     bne   $0eca
0ec0: 98 1f 16  adc   $16,#$1f
0ec3: e8 00     mov   a,#$00
0ec5: d7 14     mov   ($14)+y,a
0ec7: fc        inc   y
0ec8: 2f 09     bra   $0ed3
0eca: 98 10 16  adc   $16,#$10
0ecd: 3f d1 0e  call  $0ed1
0ed0: fc        inc   y
0ed1: f7 14     mov   a,($14)+y
0ed3: 97 16     adc   a,($16)+y
0ed5: d7 14     mov   ($14)+y,a
0ed7: 6f        ret

0ed8: f4 71     mov   a,$71+x
0eda: f0 6c     beq   $0f48
0edc: 9b 71     dec   $71+x
0ede: f0 05     beq   $0ee5
0ee0: e8 02     mov   a,#$02
0ee2: de 70 63  cbne  $70+x,$0f48
0ee5: f4 80     mov   a,$80+x
0ee7: c4 17     mov   $17,a
0ee9: f4 30     mov   a,$30+x
0eeb: fb 31     mov   y,$31+x
0eed: da 14     movw  $14,ya
0eef: 8d 00     mov   y,#$00
0ef1: f7 14     mov   a,($14)+y
0ef3: f0 1c     beq   $0f11
0ef5: 30 05     bmi   $0efc
0ef7: fc        inc   y
0ef8: f7 14     mov   a,($14)+y
0efa: 10 fb     bpl   $0ef7
0efc: 68 c8     cmp   a,#$c8
0efe: f0 48     beq   $0f48
0f00: 68 ef     cmp   a,#$ef
0f02: f0 2d     beq   $0f31
0f04: 68 e0     cmp   a,#$e0
0f06: 90 36     bcc   $0f3e
0f08: 6d        push  y
0f09: fd        mov   y,a
0f0a: ae        pop   a
0f0b: 96 04 0d  adc   a,$0d04+y
0f0e: fd        mov   y,a
0f0f: 2f e0     bra   $0ef1
0f11: e4 17     mov   a,$17
0f13: f0 29     beq   $0f3e
0f15: 8b 17     dec   $17
0f17: d0 0e     bne   $0f27
0f19: c8 0c     cmp   x,#$0c
0f1b: b0 21     bcs   $0f3e
0f1d: f5 31 02  mov   a,$0231+x
0f20: 2d        push  a
0f21: f5 30 02  mov   a,$0230+x
0f24: ee        pop   y
0f25: 2f c6     bra   $0eed
0f27: f5 41 02  mov   a,$0241+x
0f2a: 2d        push  a
0f2b: f5 40 02  mov   a,$0240+x
0f2e: ee        pop   y
0f2f: 2f bc     bra   $0eed
0f31: fc        inc   y
0f32: f7 14     mov   a,($14)+y
0f34: 2d        push  a
0f35: fc        inc   y
0f36: f7 14     mov   a,($14)+y
0f38: fd        mov   y,a
0f39: ae        pop   a
0f3a: 7a 4b     addw  ya,$4b
0f3c: 2f af     bra   $0eed
0f3e: e4 47     mov   a,$47
0f40: 4e 1d 00  tclr1 $001d
0f43: 8d 5c     mov   y,#$5c
0f45: 3f 1d 07  call  $071d
0f48: f2 13     clr7  $13
0f4a: f4 a0     mov   a,$a0+x
0f4c: f0 13     beq   $0f61
0f4e: f4 a1     mov   a,$a1+x
0f50: f0 04     beq   $0f56
0f52: 9b a1     dec   $a1+x
0f54: 2f 0b     bra   $0f61
0f56: e2 13     set7  $13
0f58: e8 60     mov   a,#$60
0f5a: 8d 03     mov   y,#$03
0f5c: 9b a0     dec   $a0+x
0f5e: 3f b7 0e  call  $0eb7
0f61: 3f 7f 0d  call  $0d7f
0f64: f4 b1     mov   a,$b1+x
0f66: f0 78     beq   $0fe0
0f68: f5 b0 02  mov   a,$02b0+x
0f6b: de b0 70  cbne  $b0+x,$0fde
0f6e: f5 00 01  mov   a,$0100+x
0f71: 75 b1 02  cmp   a,$02b1+x
0f74: d0 05     bne   $0f7b
0f76: f5 c1 02  mov   a,$02c1+x
0f79: 2f 0d     bra   $0f88
0f7b: 40        setp
0f7c: bb 00     inc   $00+x
0f7e: 20        clrp
0f7f: fd        mov   y,a
0f80: f0 02     beq   $0f84
0f82: f4 b1     mov   a,$b1+x
0f84: 60        clrc
0f85: 95 c0 02  adc   a,$02c0+x
0f88: d4 b1     mov   $b1+x,a
0f8a: f5 a0 02  mov   a,$02a0+x
0f8d: 60        clrc
0f8e: 95 a1 02  adc   a,$02a1+x
0f91: d5 a0 02  mov   $02a0+x,a
0f94: c4 12     mov   $12,a
0f96: 1c        asl   a
0f97: 1c        asl   a
0f98: 90 02     bcc   $0f9c
0f9a: 48 ff     eor   a,#$ff
0f9c: fd        mov   y,a
0f9d: f4 b1     mov   a,$b1+x
0f9f: 68 f1     cmp   a,#$f1
0fa1: 90 05     bcc   $0fa8
0fa3: 28 0f     and   a,#$0f
0fa5: cf        mul   ya
0fa6: 2f 04     bra   $0fac
0fa8: cf        mul   ya
0fa9: dd        mov   a,y
0faa: 8d 00     mov   y,#$00
0fac: 3f e6 10  call  $10e6
0faf: f5 71 02  mov   a,$0271+x
0fb2: f0 27     beq   $0fdb
0fb4: bb 20     inc   $20+x
0fb6: f4 20     mov   a,$20+x
0fb8: 75 70 02  cmp   a,$0270+x
0fbb: d0 1e     bne   $0fdb
0fbd: e8 00     mov   a,#$00
0fbf: d4 20     mov   $20+x,a
0fc1: f4 21     mov   a,$21+x
0fc3: 28 7f     and   a,#$7f
0fc5: 4d        push  x
0fc6: 5d        mov   x,a
0fc7: f5 f2 0f  mov   a,$0ff2+x
0fca: c4 12     mov   $12,a
0fcc: fd        mov   y,a
0fcd: ce        pop   x
0fce: bb 21     inc   $21+x
0fd0: f5 71 02  mov   a,$0271+x
0fd3: 10 02     bpl   $0fd7
0fd5: 48 ff     eor   a,#$ff
0fd7: cf        mul   ya
0fd8: 3f e6 10  call  $10e6
0fdb: 5f b3 06  jmp   $06b3

0fde: bb b0     inc   $b0+x
0fe0: e3 13 cc  bbs7  $13,$0faf
0fe3: f5 71 02  mov   a,$0271+x
0fe6: f0 09     beq   $0ff1
0fe8: bb 20     inc   $20+x
0fea: f4 20     mov   a,$20+x
0fec: 75 70 02  cmp   a,$0270+x
0fef: f0 cc     beq   $0fbd
0ff1: 6f        ret

0ff2: db $fe,$04,$fd,$fc,$fe,$01,$fb,$ff
0ffa: db $fa,$02,$01,$01,$fd,$01,$07,$02
1002: db $07,$02,$04,$02,$08,$07,$02,$fd
100a: db $00,$04,$01,$05,$06,$07,$03,$00
1012: db $fb,$03,$02,$02,$fe,$02,$08,$03
101a: db $01,$07,$00,$ff,$01,$04,$fe,$02
1022: db $07,$03,$04,$02,$08,$07,$03,$fe
102a: db $01,$05,$02,$06,$07,$08,$03,$00
1032: db $fb,$03,$02,$03,$fe,$02,$08,$03
103a: db $08,$04,$05,$03,$09,$05,$01,$fc
1042: db $fa,$00,$f9,$f8,$fa,$fd,$f7,$fb
104a: db $fe,$02,$ff,$03,$04,$05,$fe,$00
1052: db $fb,$03,$02,$02,$fe,$01,$03,$ff
105a: db $04,$ff,$01,$ff,$05,$04,$00,$fb
1062: db $fe,$02,$ff,$03,$04,$05,$00,$fd
106a: db $fb,$01,$fa,$f9,$fb,$fe,$fa,$00

1072: f2 13     clr7  $13
1074: f4 c1     mov   a,$c1+x
1076: f0 09     beq   $1081
1078: f5 e0 02  mov   a,$02e0+x
107b: de c0 03  cbne  $c0+x,$1081
107e: 3f ee 10  call  $10ee
1081: f5 31 03  mov   a,$0331+x
1084: fd        mov   y,a
1085: f5 30 03  mov   a,$0330+x
1088: da 10     movw  $10,ya
108a: f4 91     mov   a,$91+x
108c: f0 0a     beq   $1098
108e: f5 41 03  mov   a,$0341+x
1091: fd        mov   y,a
1092: f5 40 03  mov   a,$0340+x
1095: 3f d0 10  call  $10d0
1098: f3 13 03  bbc7  $13,$109e
109b: 3f 58 0e  call  $0e58
109e: f2 13     clr7  $13
10a0: 3f 7f 0d  call  $0d7f
10a3: f4 a0     mov   a,$a0+x
10a5: f0 0e     beq   $10b5
10a7: f4 a1     mov   a,$a1+x
10a9: d0 0a     bne   $10b5
10ab: f5 71 03  mov   a,$0371+x
10ae: fd        mov   y,a
10af: f5 70 03  mov   a,$0370+x
10b2: 3f d0 10  call  $10d0
10b5: f4 b1     mov   a,$b1+x
10b7: d0 03     bne   $10bc
10b9: 5f e0 0f  jmp   $0fe0

10bc: f5 b0 02  mov   a,$02b0+x
10bf: de b0 f7  cbne  $b0+x,$10b9
10c2: fb d0     mov   y,$d0+x
10c4: f5 a1 02  mov   a,$02a1+x
10c7: cf        mul   ya
10c8: dd        mov   a,y
10c9: 60        clrc
10ca: 95 a0 02  adc   a,$02a0+x
10cd: 5f 94 0f  jmp   $0f94

10d0: e2 13     set7  $13
10d2: cb 12     mov   $12,y
10d4: 3f 9c 0d  call  $0d9c
10d7: 6d        push  y
10d8: fb d0     mov   y,$d0+x
10da: cf        mul   ya
10db: cb 14     mov   $14,y
10dd: 8f 00 15  mov   $15,#$00
10e0: fb d0     mov   y,$d0+x
10e2: ae        pop   a
10e3: cf        mul   ya
10e4: 7a 14     addw  ya,$14
10e6: 3f 9c 0d  call  $0d9c
10e9: 7a 10     addw  ya,$10
10eb: da 10     movw  $10,ya
10ed: 6f        ret

10ee: e2 13     set7  $13
10f0: fb d0     mov   y,$d0+x
10f2: f5 d1 02  mov   a,$02d1+x
10f5: cf        mul   ya
10f6: dd        mov   a,y
10f7: 60        clrc
10f8: 95 d0 02  adc   a,$02d0+x
10fb: 1c        asl   a
10fc: 90 02     bcc   $1100
10fe: 48 ff     eor   a,#$ff
1100: fb c1     mov   y,$c1+x
1102: cf        mul   ya
1103: dd        mov   a,y
1104: 48 ff     eor   a,#$ff
1106: fd        mov   y,a
1107: f5 10 02  mov   a,$0210+x
110a: cf        mul   ya
110b: f5 01 03  mov   a,$0301+x
110e: cf        mul   ya
110f: dd        mov   a,y
1110: cf        mul   ya
1111: dd        mov   a,y
1112: d5 21 03  mov   $0321+x,a
1115: 6f        ret

1116: db $00,$01,$03,$07,$0d,$15,$1e,$29
111e: db $34,$42,$51,$5e,$67,$6e,$73,$77
1126: db $7a,$7c,$7d,$7e,$7f

112b: db $6c,$4c,$5c,$3d,$2d,$5c
1131: db $48,$45,$0e,$49,$4a,$46

1137: dw $085f
1139: dw $08de
113b: dw $0965
113d: dw $09f4
113f: dw $0a8c
1141: dw $0b2c
1143: dw $0bd6
1145: dw $0c8b
1147: dw $0d4a
1149: dw $0e14
114b: dw $0eea
114d: dw $0fcd
114f: dw $10be

1151: db $00,$e6,$f0,$f5,$fa,$fc,$fe,$ff

1159: db $19,$32,$4c,$65,$72,$7f,$8c,$98
1161: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
