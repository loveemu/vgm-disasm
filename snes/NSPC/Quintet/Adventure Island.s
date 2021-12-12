0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 e0     cmp   x,#$e0
040a: d0 fb     bne   $0407
040c: c5 ff 0f  mov   $0fff,a
040f: bc        inc   a
0410: 3f c3 09  call  $09c3
0413: a2 48     set5  $48
0415: e8 60     mov   a,#$60
0417: 8d 0c     mov   y,#$0c
0419: 3f e4 05  call  $05e4
041c: 8d 1c     mov   y,#$1c
041e: 3f e4 05  call  $05e4
0421: e8 2c     mov   a,#$2c
0423: 8d 5d     mov   y,#$5d
0425: 3f e4 05  call  $05e4
0428: e8 30     mov   a,#$30
042a: c5 f1 00  mov   $00f1,a
042d: e8 10     mov   a,#$10
042f: c5 fa 00  mov   $00fa,a
0432: c4 53     mov   $53,a
0434: e8 01     mov   a,#$01
0436: c5 f1 00  mov   $00f1,a
0439: 8d 0a     mov   y,#$0a
043b: ad 05     cmp   y,#$05
043d: f0 07     beq   $0446
043f: b0 08     bcs   $0449
0441: 69 4d 4c  cmp   ($4c),($4d)
0444: d0 11     bne   $0457
0446: e3 4c 0e  bbs7  $4c,$0457
0449: f6 34 0d  mov   a,$0d34+y
044c: c5 f2 00  mov   $00f2,a
044f: f6 3e 0d  mov   a,$0d3e+y
0452: 5d        mov   x,a
0453: e6        mov   a,(x)
0454: c5 f3 00  mov   $00f3,a
0457: fe e2     dbnz  y,$043b
0459: cb 45     mov   $45,y
045b: cb 46     mov   $46,y
045d: ec fd 00  mov   y,$00fd
0460: f0 fb     beq   $045d
0462: 6d        push  y
0463: e8 40     mov   a,#$40
0465: cf        mul   ya
0466: 60        clrc
0467: 84 43     adc   a,$43
0469: c4 43     mov   $43,a
046b: 90 35     bcc   $04a2
046d: 8f ff d4  mov   $d4,#$ff
0470: e4 f6     mov   a,$f6
0472: 64 d2     cmp   a,$d2
0474: f0 19     beq   $048f
0476: c4 d2     mov   $d2,a
0478: fd        mov   y,a
0479: f0 14     beq   $048f
047b: 30 09     bmi   $0486
047d: f8 d3     mov   x,$d3
047f: f5 3b 0f  mov   a,$0f3b+x
0482: 76 3b 0f  cmp   a,$0f3b+y
0485: dd        mov   a,y
0486: 28 7f     and   a,#$7f
0488: c4 d3     mov   $d3,a
048a: e2 46     set7  $46
048c: 3f 63 0d  call  $0d63
048f: 3f a2 0d  call  $0da2
0492: 8f 00 d4  mov   $d4,#$00
0495: e4 f7     mov   a,$f7
0497: c4 f7     mov   $f7,a
0499: c4 1a     mov   $1a,a
049b: 69 4d 4c  cmp   ($4c),($4d)
049e: f0 02     beq   $04a2
04a0: ab 4c     inc   $4c
04a2: e4 53     mov   a,$53
04a4: ee        pop   y
04a5: cf        mul   ya
04a6: 60        clrc
04a7: 84 51     adc   a,$51
04a9: c4 51     mov   $51,a
04ab: 90 19     bcc   $04c6
04ad: 3f a8 06  call  $06a8
04b0: e4 d0     mov   a,$d0
04b2: f0 0a     beq   $04be
04b4: 8b d1     dec   $d1
04b6: d0 06     bne   $04be
04b8: 8f 00 04  mov   $04,#$00
04bb: 3f 16 06  call  $0616
04be: cd 00     mov   x,#$00
04c0: 3f df 04  call  $04df
04c3: 5f 39 04  jmp   $0439

04c6: e4 04     mov   a,$04
04c8: f0 12     beq   $04dc
04ca: cd 00     mov   x,#$00
04cc: 8f 01 47  mov   $47,#$01
04cf: f4 31     mov   a,$31+x
04d1: f0 03     beq   $04d6
04d3: 3f 51 0c  call  $0c51
04d6: 3d        inc   x
04d7: 3d        inc   x
04d8: 0b 47     asl   $47
04da: d0 f3     bne   $04cf
04dc: 5f 39 04  jmp   $0439

04df: f4 04     mov   a,$04+x
04e1: d5 f4 00  mov   $00f4+x,a
04e4: f5 f4 00  mov   a,$00f4+x
04e7: 75 f4 00  cmp   a,$00f4+x
04ea: d0 f8     bne   $04e4
04ec: d4 00     mov   $00+x,a
04ee: 6f        ret

04ef: ad ca     cmp   y,#$ca
04f1: 90 05     bcc   $04f8
04f3: 3f f8 07  call  $07f8
04f6: 8d a4     mov   y,#$a4
04f8: ad c8     cmp   y,#$c8
04fa: b0 f2     bcs   $04ee
04fc: e4 1a     mov   a,$1a
04fe: 24 47     and   a,$47
0500: d0 ec     bne   $04ee
0502: dd        mov   a,y
0503: 28 7f     and   a,#$7f
0505: 60        clrc
0506: 84 50     adc   a,$50
0508: 60        clrc
0509: 95 f0 02  adc   a,$02f0+x
050c: d5 61 03  mov   $0361+x,a
050f: f5 81 03  mov   a,$0381+x
0512: d5 60 03  mov   $0360+x,a
0515: f5 b1 02  mov   a,$02b1+x
0518: 5c        lsr   a
0519: e8 00     mov   a,#$00
051b: 7c        ror   a
051c: d5 a0 02  mov   $02a0+x,a
051f: e8 00     mov   a,#$00
0521: d4 b0     mov   $b0+x,a
0523: d5 00 01  mov   $0100+x,a
0526: d5 d0 02  mov   $02d0+x,a
0529: d4 c0     mov   $c0+x,a
052b: 09 47 5e  or    ($5e),($47)
052e: 09 47 45  or    ($45),($47)
0531: f5 80 02  mov   a,$0280+x
0534: d4 a0     mov   $a0+x,a
0536: f0 1e     beq   $0556
0538: f5 81 02  mov   a,$0281+x
053b: d4 a1     mov   $a1+x,a
053d: f5 90 02  mov   a,$0290+x
0540: d0 0a     bne   $054c
0542: f5 61 03  mov   a,$0361+x
0545: 80        setc
0546: b5 91 02  sbc   a,$0291+x
0549: d5 61 03  mov   $0361+x,a
054c: f5 91 02  mov   a,$0291+x
054f: 60        clrc
0550: 95 61 03  adc   a,$0361+x
0553: 3f 33 0a  call  $0a33
0556: 3f 4b 0a  call  $0a4b
0559: 8d 00     mov   y,#$00
055b: e4 11     mov   a,$11
055d: 80        setc
055e: a8 34     sbc   a,#$34
0560: b0 09     bcs   $056b
0562: e4 11     mov   a,$11
0564: 80        setc
0565: a8 13     sbc   a,#$13
0567: b0 06     bcs   $056f
0569: dc        dec   y
056a: 1c        asl   a
056b: 7a 10     addw  ya,$10
056d: da 10     movw  $10,ya
056f: 4d        push  x
0570: e4 11     mov   a,$11
0572: 1c        asl   a
0573: 8d 00     mov   y,#$00
0575: cd 18     mov   x,#$18
0577: 9e        div   ya,x
0578: 5d        mov   x,a
0579: f6 4a 0d  mov   a,$0d4a+y
057c: c4 15     mov   $15,a
057e: f6 49 0d  mov   a,$0d49+y
0581: c4 14     mov   $14,a
0583: f6 4c 0d  mov   a,$0d4c+y
0586: 2d        push  a
0587: f6 4b 0d  mov   a,$0d4b+y
058a: ee        pop   y
058b: 9a 14     subw  ya,$14
058d: eb 10     mov   y,$10
058f: cf        mul   ya
0590: dd        mov   a,y
0591: 8d 00     mov   y,#$00
0593: 7a 14     addw  ya,$14
0595: cb 15     mov   $15,y
0597: 1c        asl   a
0598: 2b 15     rol   $15
059a: c4 14     mov   $14,a
059c: 2f 04     bra   $05a2
059e: 4b 15     lsr   $15
05a0: 7c        ror   a
05a1: 3d        inc   x
05a2: c8 06     cmp   x,#$06
05a4: d0 f8     bne   $059e
05a6: c4 14     mov   $14,a
05a8: ce        pop   x
05a9: f5 20 02  mov   a,$0220+x
05ac: eb 15     mov   y,$15
05ae: cf        mul   ya
05af: da 16     movw  $16,ya
05b1: f5 20 02  mov   a,$0220+x
05b4: eb 14     mov   y,$14
05b6: cf        mul   ya
05b7: 6d        push  y
05b8: f5 21 02  mov   a,$0221+x
05bb: eb 14     mov   y,$14
05bd: cf        mul   ya
05be: 7a 16     addw  ya,$16
05c0: da 16     movw  $16,ya
05c2: f5 21 02  mov   a,$0221+x
05c5: eb 15     mov   y,$15
05c7: cf        mul   ya
05c8: fd        mov   y,a
05c9: ae        pop   a
05ca: 7a 16     addw  ya,$16
05cc: da 16     movw  $16,ya
05ce: 7d        mov   a,x
05cf: 9f        xcn   a
05d0: 5c        lsr   a
05d1: 08 02     or    a,#$02
05d3: fd        mov   y,a
05d4: e4 16     mov   a,$16
05d6: 3f dc 05  call  $05dc
05d9: fc        inc   y
05da: e4 17     mov   a,$17
05dc: 2d        push  a
05dd: e4 47     mov   a,$47
05df: 24 1a     and   a,$1a
05e1: ae        pop   a
05e2: d0 06     bne   $05ea
05e4: cc f2 00  mov   $00f2,y
05e7: c5 f3 00  mov   $00f3,a
05ea: 6f        ret

05eb: 8d 00     mov   y,#$00
05ed: f7 40     mov   a,($40)+y
05ef: 3a 40     incw  $40
05f1: 2d        push  a
05f2: f7 40     mov   a,($40)+y
05f4: 3a 40     incw  $40
05f6: fd        mov   y,a
05f7: ae        pop   a
05f8: 6f        ret

05f9: 8f ff d0  mov   $d0,#$ff
05fc: 8f 7f d1  mov   $d1,#$7f
05ff: c4 04     mov   $04,a
0601: 6f        ret

0602: 2d        push  a
0603: e5 fd 0f  mov   a,$0ffd
0606: ec fe 0f  mov   y,$0ffe
0609: da e4     movw  $e4,ya
060b: e8 00     mov   a,#$00
060d: 5d        mov   x,a
060e: c7 e4     mov   ($e4+x),a
0610: 3a e4     incw  $e4
0612: d0 fa     bne   $060e
0614: ae        pop   a
0615: 6f        ret

0616: 8f ff 46  mov   $46,#$ff
0619: 8f 00 04  mov   $04,#$00
061c: a2 48     set5  $48
061e: c2 48     set6  $48
0620: e8 00     mov   a,#$00
0622: fd        mov   y,a
0623: da 3e     movw  $3e,ya
0625: e8 01     mov   a,#$01
0627: 3f c3 09  call  $09c3
062a: 6f        ret

062b: c2 48     set6  $48
062d: 6f        ret

062e: 3f ef 0e  call  $0eef
0631: c4 08     mov   $08,a
0633: c4 04     mov   $04,a
0635: 6f        ret

0636: 68 f0     cmp   a,#$f0
0638: f0 dc     beq   $0616
063a: 68 f1     cmp   a,#$f1
063c: f0 bb     beq   $05f9
063e: 68 f2     cmp   a,#$f2
0640: f0 e9     beq   $062b
0642: 68 ff     cmp   a,#$ff
0644: f0 e8     beq   $062e
0646: 6f        ret

0647: c4 04     mov   $04,a
0649: 1c        asl   a
064a: f0 1e     beq   $066a
064c: 3f 02 06  call  $0602
064f: 5d        mov   x,a
0650: f5 ff 0f  mov   a,$0fff+x
0653: fd        mov   y,a
0654: f5 fe 0f  mov   a,$0ffe+x
0657: da 40     movw  $40,ya
0659: 8f 02 0c  mov   $0c,#$02
065c: e8 00     mov   a,#$00
065e: c4 d0     mov   $d0,a
0660: c4 d3     mov   $d3,a
0662: c4 d2     mov   $d2,a
0664: c4 5f     mov   $5f,a
0666: c4 d5     mov   $d5,a
0668: d2 48     clr6  $48
066a: e4 1a     mov   a,$1a
066c: 48 ff     eor   a,#$ff
066e: 0e 46 00  tset1 $0046
0671: 6f        ret

0672: cd 0e     mov   x,#$0e
0674: 8f 80 47  mov   $47,#$80
0677: e8 ff     mov   a,#$ff
0679: d5 01 03  mov   $0301+x,a
067c: e8 0a     mov   a,#$0a
067e: 3f 64 08  call  $0864
0681: d5 11 02  mov   $0211+x,a
0684: d5 81 03  mov   $0381+x,a
0687: d5 f0 02  mov   $02f0+x,a
068a: d5 80 02  mov   $0280+x,a
068d: d4 b1     mov   $b1+x,a
068f: d4 c1     mov   $c1+x,a
0691: 1d        dec   x
0692: 1d        dec   x
0693: 4b 47     lsr   $47
0695: d0 e0     bne   $0677
0697: c4 5a     mov   $5a,a
0699: c4 68     mov   $68,a
069b: c4 54     mov   $54,a
069d: c4 50     mov   $50,a
069f: c4 42     mov   $42,a
06a1: 8f c0 59  mov   $59,#$c0
06a4: 8f 20 53  mov   $53,#$20
06a7: 6f        ret

06a8: eb 08     mov   y,$08
06aa: e4 00     mov   a,$00
06ac: 68 f0     cmp   a,#$f0
06ae: b0 86     bcs   $0636
06b0: c4 08     mov   $08,a
06b2: 7e 00     cmp   y,$00
06b4: d0 91     bne   $0647
06b6: e4 04     mov   a,$04
06b8: f0 ed     beq   $06a7
06ba: d2 48     clr6  $48
06bc: e4 0c     mov   a,$0c
06be: f0 4f     beq   $070f
06c0: 6e 0c af  dbnz  $0c,$0672
06c3: 3f eb 05  call  $05eb
06c6: d0 17     bne   $06df
06c8: fd        mov   y,a
06c9: d0 03     bne   $06ce
06cb: 5f 47 06  jmp   $0647

06ce: 8b 42     dec   $42
06d0: 10 02     bpl   $06d4
06d2: c4 42     mov   $42,a
06d4: 3f eb 05  call  $05eb
06d7: f8 42     mov   x,$42
06d9: f0 e8     beq   $06c3
06db: da 40     movw  $40,ya
06dd: 2f e4     bra   $06c3
06df: da 16     movw  $16,ya
06e1: 8d 0d     mov   y,#$0d
06e3: f7 16     mov   a,($16)+y
06e5: d6 30 00  mov   $0030+y,a
06e8: dc        dec   y
06e9: 10 f8     bpl   $06e3
06eb: cd 00     mov   x,#$00
06ed: 8f 01 47  mov   $47,#$01
06f0: f4 31     mov   a,$31+x
06f2: f0 0a     beq   $06fe
06f4: f5 11 02  mov   a,$0211+x
06f7: d0 05     bne   $06fe
06f9: e8 00     mov   a,#$00
06fb: 3f f8 07  call  $07f8
06fe: e8 00     mov   a,#$00
0700: d4 80     mov   $80+x,a
0702: d4 90     mov   $90+x,a
0704: d4 91     mov   $91+x,a
0706: bc        inc   a
0707: d4 70     mov   $70+x,a
0709: 3d        inc   x
070a: 3d        inc   x
070b: 0b 47     asl   $47
070d: 10 e1     bpl   $06f0
070f: cd 00     mov   x,#$00
0711: d8 5e     mov   $5e,x
0713: 8f 01 47  mov   $47,#$01
0716: d8 44     mov   $44,x
0718: f4 31     mov   a,$31+x
071a: f0 66     beq   $0782
071c: 9b 70     dec   $70+x
071e: d0 5c     bne   $077c
0720: 3f ee 07  call  $07ee
0723: d0 17     bne   $073c
0725: f4 80     mov   a,$80+x
0727: f0 9a     beq   $06c3
0729: 3f 5b 09  call  $095b
072c: 9b 80     dec   $80+x
072e: d0 f0     bne   $0720
0730: f5 30 02  mov   a,$0230+x
0733: d4 30     mov   $30+x,a
0735: f5 31 02  mov   a,$0231+x
0738: d4 31     mov   $31+x,a
073a: 2f e4     bra   $0720
073c: 30 20     bmi   $075e
073e: d5 00 02  mov   $0200+x,a
0741: 3f ee 07  call  $07ee
0744: 30 18     bmi   $075e
0746: 2d        push  a
0747: 9f        xcn   a
0748: 28 07     and   a,#$07
074a: fd        mov   y,a
074b: f6 00 2f  mov   a,$2f00+y
074e: d5 01 02  mov   $0201+x,a
0751: ae        pop   a
0752: 28 0f     and   a,#$0f
0754: fd        mov   y,a
0755: f6 08 2f  mov   a,$2f08+y
0758: d5 10 02  mov   $0210+x,a
075b: 3f ee 07  call  $07ee
075e: 68 e0     cmp   a,#$e0
0760: 90 05     bcc   $0767
0762: 3f dc 07  call  $07dc
0765: 2f b9     bra   $0720
0767: 3f ef 04  call  $04ef
076a: f5 00 02  mov   a,$0200+x
076d: d4 70     mov   $70+x,a
076f: fd        mov   y,a
0770: f5 01 02  mov   a,$0201+x
0773: cf        mul   ya
0774: dd        mov   a,y
0775: d0 01     bne   $0778
0777: bc        inc   a
0778: d4 71     mov   $71+x,a
077a: 2f 03     bra   $077f
077c: 3f 7a 0b  call  $0b7a
077f: 3f 13 0a  call  $0a13
0782: 3d        inc   x
0783: 3d        inc   x
0784: 0b 47     asl   $47
0786: 10 8e     bpl   $0716
0788: e4 d0     mov   a,$d0
078a: f0 03     beq   $078f
078c: 8f ff 5e  mov   $5e,#$ff
078f: e4 54     mov   a,$54
0791: f0 0b     beq   $079e
0793: ba 56     movw  ya,$56
0795: 7a 52     addw  ya,$52
0797: 6e 54 02  dbnz  $54,$079c
079a: ba 54     movw  ya,$54
079c: da 52     movw  $52,ya
079e: e4 68     mov   a,$68
07a0: f0 15     beq   $07b7
07a2: ba 64     movw  ya,$64
07a4: 7a 60     addw  ya,$60
07a6: da 60     movw  $60,ya
07a8: ba 66     movw  ya,$66
07aa: 7a 62     addw  ya,$62
07ac: 6e 68 06  dbnz  $68,$07b5
07af: ba 68     movw  ya,$68
07b1: da 60     movw  $60,ya
07b3: eb 6a     mov   y,$6a
07b5: da 62     movw  $62,ya
07b7: e4 5a     mov   a,$5a
07b9: f0 0e     beq   $07c9
07bb: ba 5c     movw  ya,$5c
07bd: 7a 58     addw  ya,$58
07bf: 6e 5a 02  dbnz  $5a,$07c4
07c2: ba 5a     movw  ya,$5a
07c4: da 58     movw  $58,ya
07c6: 8f ff 5e  mov   $5e,#$ff
07c9: cd 00     mov   x,#$00
07cb: 8f 01 47  mov   $47,#$01
07ce: f4 31     mov   a,$31+x
07d0: f0 03     beq   $07d5
07d2: 3f c3 0a  call  $0ac3
07d5: 3d        inc   x
07d6: 3d        inc   x
07d7: 0b 47     asl   $47
07d9: 10 f3     bpl   $07ce
07db: 6f        ret

07dc: 1c        asl   a
07dd: fd        mov   y,a
07de: f6 b3 09  mov   a,$09b3+y
07e1: 2d        push  a
07e2: f6 b2 09  mov   a,$09b2+y         ; refs vcmd dispatch table $0a72
07e5: 2d        push  a
07e6: dd        mov   a,y
07e7: 5c        lsr   a
07e8: fd        mov   y,a
07e9: f6 48 0a  mov   a,$0a48+y         ; refs vcmd length table $0aa8
07ec: f0 08     beq   $07f6
07ee: e7 30     mov   a,($30+x)
07f0: bb 30     inc   $30+x
07f2: d0 02     bne   $07f6
07f4: bb 31     inc   $31+x
07f6: fd        mov   y,a
07f7: 6f        ret

; vcmd e0 - set instrument
07f8: d5 11 02  mov   $0211+x,a
07fb: eb d4     mov   y,$d4
07fd: d0 0f     bne   $080e
07ff: fd        mov   y,a
0800: 10 06     bpl   $0808
0802: 80        setc
0803: a8 ca     sbc   a,#$ca
0805: 60        clrc
0806: 84 5f     adc   a,$5f
0808: 60        clrc
0809: 85 ff 0f  adc   a,$0fff           ; add patch offset for BGM
080c: 2f 09     bra   $0817
080e: fd        mov   y,a
080f: 10 06     bpl   $0817
0811: 80        setc
0812: a8 ca     sbc   a,#$ca
0814: 60        clrc
0815: 84 d5     adc   a,$d5
0817: 8d 06     mov   y,#$06
0819: cf        mul   ya
081a: da 14     movw  $14,ya
081c: 60        clrc
081d: 98 00 14  adc   $14,#$00
0820: 98 2e 15  adc   $15,#$2e
0823: e4 1a     mov   a,$1a
0825: 24 47     and   a,$47
0827: d0 3a     bne   $0863
0829: 4d        push  x
082a: 7d        mov   a,x
082b: 9f        xcn   a
082c: 5c        lsr   a
082d: 08 04     or    a,#$04
082f: 5d        mov   x,a
0830: 8d 00     mov   y,#$00
0832: f7 14     mov   a,($14)+y
0834: 10 0e     bpl   $0844
0836: 28 1f     and   a,#$1f
0838: 38 20 48  and   $48,#$20
083b: 0e 48 00  tset1 $0048
083e: 09 47 49  or    ($49),($47)
0841: dd        mov   a,y
0842: 2f 07     bra   $084b
0844: e4 47     mov   a,$47
0846: 4e 49 00  tclr1 $0049
0849: f7 14     mov   a,($14)+y
084b: c9 f2 00  mov   $00f2,x
084e: c5 f3 00  mov   $00f3,a
0851: 3d        inc   x
0852: fc        inc   y
0853: ad 04     cmp   y,#$04
0855: d0 f2     bne   $0849
0857: ce        pop   x
0858: f7 14     mov   a,($14)+y
085a: d5 21 02  mov   $0221+x,a
085d: fc        inc   y
085e: f7 14     mov   a,($14)+y
0860: d5 20 02  mov   $0220+x,a
0863: 6f        ret

; vcmd e1
0864: d5 51 03  mov   $0351+x,a
0867: 28 1f     and   a,#$1f
0869: d5 31 03  mov   $0331+x,a
086c: e8 00     mov   a,#$00
086e: d5 30 03  mov   $0330+x,a
0871: 6f        ret

; vcmd e2
0872: d4 91     mov   $91+x,a
0874: 2d        push  a
0875: 3f ee 07  call  $07ee
0878: d5 50 03  mov   $0350+x,a
087b: 80        setc
087c: b5 31 03  sbc   a,$0331+x
087f: ce        pop   x
0880: 3f 56 0a  call  $0a56
0883: d5 40 03  mov   $0340+x,a
0886: dd        mov   a,y
0887: d5 41 03  mov   $0341+x,a
088a: 6f        ret

; vcmd e3
088b: d5 b0 02  mov   $02b0+x,a
088e: 3f ee 07  call  $07ee
0891: d5 a1 02  mov   $02a1+x,a
0894: 3f ee 07  call  $07ee
; vcmd e4
0897: d4 b1     mov   $b1+x,a
0899: d5 c1 02  mov   $02c1+x,a
089c: e8 00     mov   a,#$00
089e: d5 b1 02  mov   $02b1+x,a
08a1: 6f        ret

; vcmd f0
08a2: d5 b1 02  mov   $02b1+x,a
08a5: 2d        push  a
08a6: 8d 00     mov   y,#$00
08a8: f4 b1     mov   a,$b1+x
08aa: ce        pop   x
08ab: 9e        div   ya,x
08ac: f8 44     mov   x,$44
08ae: d5 c0 02  mov   $02c0+x,a
08b1: 6f        ret

; vcmd e5
08b2: dd        mov   a,y
08b3: 80        setc
08b4: a8 00     sbc   a,#$00
08b6: fd        mov   y,a
08b7: e8 00     mov   a,#$00
08b9: da 58     movw  $58,ya
08bb: 6f        ret

; vcmd e6
08bc: c4 5a     mov   $5a,a
08be: 3f ee 07  call  $07ee
08c1: c4 5b     mov   $5b,a
08c3: 80        setc
08c4: a4 59     sbc   a,$59
08c6: f8 5a     mov   x,$5a
08c8: 3f 56 0a  call  $0a56
08cb: da 5c     movw  $5c,ya
08cd: 6f        ret

; vcmd e7
08ce: e4 d4     mov   a,$d4
08d0: d0 04     bne   $08d6
08d2: e8 00     mov   a,#$00
08d4: da 52     movw  $52,ya
08d6: 6f        ret

; vcmd e8
08d7: c4 54     mov   $54,a
08d9: 3f ee 07  call  $07ee
08dc: c4 55     mov   $55,a
08de: 80        setc
08df: a4 53     sbc   a,$53
08e1: f8 54     mov   x,$54
08e3: 3f 56 0a  call  $0a56
08e6: da 56     movw  $56,ya
08e8: 6f        ret

; vcmd e9
08e9: c4 50     mov   $50,a
08eb: 6f        ret

; vcmd ea
08ec: d5 f0 02  mov   $02f0+x,a
08ef: 6f        ret

; vcmd eb
08f0: d5 e0 02  mov   $02e0+x,a
08f3: 3f ee 07  call  $07ee
08f6: d5 d1 02  mov   $02d1+x,a
08f9: 3f ee 07  call  $07ee
; vcmd ec
08fc: d4 c1     mov   $c1+x,a
08fe: 6f        ret

; vcmd f1
08ff: e8 01     mov   a,#$01
0901: 2f 02     bra   $0905
; vcmd f2
0903: e8 00     mov   a,#$00
0905: d5 90 02  mov   $0290+x,a
0908: dd        mov   a,y
0909: d5 81 02  mov   $0281+x,a
090c: 3f ee 07  call  $07ee
090f: d5 80 02  mov   $0280+x,a
0912: 3f ee 07  call  $07ee
0915: d5 91 02  mov   $0291+x,a
0918: 6f        ret

; vcmd f3
0919: d5 80 02  mov   $0280+x,a
091c: 6f        ret

; vcmd ed
091d: d5 01 03  mov   $0301+x,a
0920: e8 00     mov   a,#$00
0922: d5 00 03  mov   $0300+x,a
0925: 6f        ret

; vcmd ee
3: d4 90     mov   $90+x,a
0928: 2d        push  a
0929: 3f ee 07  call  $07ee
092c: d5 20 03  mov   $0320+x,a
092f: 80        setc
0930: b5 01 03  sbc   a,$0301+x
0933: ce        pop   x
0934: 3f 56 0a  call  $0a56
0937: d5 10 03  mov   $0310+x,a
093a: dd        mov   a,y
093b: d5 11 03  mov   $0311+x,a
093e: 6f        ret

; vcmd f4
093f: d5 81 03  mov   $0381+x,a
0942: 6f        ret

; vcmd ef
0943: d5 40 02  mov   $0240+x,a
0946: 3f ee 07  call  $07ee
0949: d5 41 02  mov   $0241+x,a
094c: 3f ee 07  call  $07ee
094f: d4 80     mov   $80+x,a
0951: f4 30     mov   a,$30+x
0953: d5 30 02  mov   $0230+x,a
0956: f4 31     mov   a,$31+x
0958: d5 31 02  mov   $0231+x,a
095b: f5 40 02  mov   a,$0240+x
095e: d4 30     mov   $30+x,a
0960: f5 41 02  mov   a,$0241+x
0963: d4 31     mov   $31+x,a
0965: 6f        ret

; vcmd f5
0966: c4 4a     mov   $4a,a
0968: 3f ee 07  call  $07ee
096b: e8 00     mov   a,#$00
096d: da 60     movw  $60,ya
096f: 3f ee 07  call  $07ee
0972: e8 00     mov   a,#$00
0974: da 62     movw  $62,ya
0976: b2 48     clr5  $48
0978: 6f        ret

; vcmd f8
0979: c4 68     mov   $68,a
097b: 3f ee 07  call  $07ee
097e: c4 69     mov   $69,a
0980: 80        setc
0981: a4 61     sbc   a,$61
0983: f8 68     mov   x,$68
0985: 3f 56 0a  call  $0a56
0988: da 64     movw  $64,ya
098a: 3f ee 07  call  $07ee
098d: c4 6a     mov   $6a,a
098f: 80        setc
0990: a4 63     sbc   a,$63
0992: f8 68     mov   x,$68
0994: 3f 56 0a  call  $0a56
0997: da 66     movw  $66,ya
0999: 6f        ret

; vcmd f6
099a: da 60     movw  $60,ya
099c: da 62     movw  $62,ya
099e: a2 48     set5  $48
09a0: 6f        ret

; vcmd f7
09a1: 3f c3 09  call  $09c3
09a4: 3f ee 07  call  $07ee
09a7: c4 4e     mov   $4e,a
09a9: 3f ee 07  call  $07ee
09ac: 8d 08     mov   y,#$08
09ae: cf        mul   ya
09af: 5d        mov   x,a
09b0: 8d 0f     mov   y,#$0f
09b2: f5 15 0d  mov   a,$0d15+x
09b5: 3f e4 05  call  $05e4
09b8: 3d        inc   x
09b9: dd        mov   a,y
09ba: 60        clrc
09bb: 88 10     adc   a,#$10
09bd: fd        mov   y,a
09be: 10 f2     bpl   $09b2
09c0: f8 44     mov   x,$44
09c2: 6f        ret

09c3: c4 4d     mov   $4d,a
09c5: 8d 7d     mov   y,#$7d
09c7: cc f2 00  mov   $00f2,y
09ca: e5 f3 00  mov   a,$00f3
09cd: 64 4d     cmp   a,$4d
09cf: f0 2b     beq   $09fc
09d1: 28 0f     and   a,#$0f
09d3: 48 ff     eor   a,#$ff
09d5: f3 4c 03  bbc7  $4c,$09db
09d8: 60        clrc
09d9: 84 4c     adc   a,$4c
09db: c4 4c     mov   $4c,a
09dd: 8d 04     mov   y,#$04
09df: f6 34 0d  mov   a,$0d34+y
09e2: c5 f2 00  mov   $00f2,a
09e5: e8 00     mov   a,#$00
09e7: c5 f3 00  mov   $00f3,a
09ea: fe f3     dbnz  y,$09df
09ec: e4 48     mov   a,$48
09ee: 08 20     or    a,#$20
09f0: 8d 6c     mov   y,#$6c
09f2: 3f e4 05  call  $05e4
09f5: e4 4d     mov   a,$4d
09f7: 8d 7d     mov   y,#$7d
09f9: 3f e4 05  call  $05e4
09fc: 1c        asl   a
09fd: 1c        asl   a
09fe: 1c        asl   a
09ff: 48 ff     eor   a,#$ff
0a01: 80        setc
0a02: 88 ff     adc   a,#$ff
0a04: 8d 6d     mov   y,#$6d
0a06: 5f e4 05  jmp   $05e4

; vcmd fa
0a09: eb d4     mov   y,$d4
0a0b: d0 03     bne   $0a10
0a0d: c4 5f     mov   $5f,a
0a0f: 6f        ret

0a10: c4 d5     mov   $d5,a
0a12: 6f        ret

0a13: f4 a0     mov   a,$a0+x
0a15: d0 33     bne   $0a4a
0a17: e7 30     mov   a,($30+x)
0a19: 68 f9     cmp   a,#$f9
0a1b: d0 2d     bne   $0a4a
0a1d: 3f f0 07  call  $07f0
0a20: 3f ee 07  call  $07ee
; vcmd f9
0a23: d4 a1     mov   $a1+x,a
0a25: 3f ee 07  call  $07ee
0a28: d4 a0     mov   $a0+x,a
0a2a: 3f ee 07  call  $07ee
0a2d: 60        clrc
0a2e: 84 50     adc   a,$50
0a30: 95 f0 02  adc   a,$02f0+x
0a33: 28 7f     and   a,#$7f
0a35: d5 80 03  mov   $0380+x,a
0a38: 80        setc
0a39: b5 61 03  sbc   a,$0361+x
0a3c: fb a0     mov   y,$a0+x
0a3e: 6d        push  y
0a3f: ce        pop   x
0a40: 3f 56 0a  call  $0a56
0a43: d5 70 03  mov   $0370+x,a
0a46: dd        mov   a,y
0a47: d5 71 03  mov   $0371+x,a
0a4a: 6f        ret

0a4b: f5 61 03  mov   a,$0361+x
0a4e: c4 11     mov   $11,a
0a50: f5 60 03  mov   a,$0360+x
0a53: c4 10     mov   $10,a
0a55: 6f        ret

0a56: ed        notc
0a57: 6b 12     ror   $12
0a59: 10 03     bpl   $0a5e
0a5b: 48 ff     eor   a,#$ff
0a5d: bc        inc   a
0a5e: 8d 00     mov   y,#$00
0a60: 9e        div   ya,x
0a61: 2d        push  a
0a62: e8 00     mov   a,#$00
0a64: 9e        div   ya,x
0a65: ee        pop   y
0a66: f8 44     mov   x,$44
0a68: f3 12 06  bbc7  $12,$0a71
0a6b: da 14     movw  $14,ya
0a6d: ba 0e     movw  ya,$0e
0a6f: 9a 14     subw  ya,$14
0a71: 6f        ret

; vcmd dispatch table
0a72: dw $07f8  ; e0 - set instrument
0a74: dw $0864  ; e1
0a76: dw $0872  ; e2
0a78: dw $088b  ; e3
0a7a: dw $0897  ; e4
0a7c: dw $08b2  ; e5
0a7e: dw $08bc  ; e6
0a80: dw $08ce  ; e7
0a82: dw $08d7  ; e8
0a84: dw $08e9  ; e9
0a86: dw $08ec  ; ea
0a88: dw $08f0  ; eb
0a8a: dw $08fc  ; ec
0a8c: dw $091d  ; ed
0a8e: dw $0926  ; ee
0a90: dw $0943  ; ef
0a92: dw $08a2  ; f0
0a94: dw $08ff  ; f1
0a96: dw $0903  ; f2
0a98: dw $0919  ; f3
0a9a: dw $093f  ; f4
0a9c: dw $0966  ; f5
0a9e: dw $099a  ; f6
0aa0: dw $09a1  ; f7
0aa2: dw $0979  ; f8
0aa4: dw $0a23  ; f9
0aa6: dw $0a09  ; fa

; vcmd length table
0aa8: db $01,$01,$02,$03,$00,$01,$02,$01
0ab0: db $02,$01,$01,$03,$00,$01,$02,$03
0ab8: db $01,$03,$03,$00,$01,$03,$00,$03
0ac0: db $03,$03,$01

0ac3: f4 90     mov   a,$90+x
0ac5: f0 09     beq   $0ad0
0ac7: e8 00     mov   a,#$00
0ac9: 8d 03     mov   y,#$03
0acb: 9b 90     dec   $90+x
0acd: 3f 56 0b  call  $0b56
0ad0: fb c1     mov   y,$c1+x
0ad2: f0 23     beq   $0af7
0ad4: f5 e0 02  mov   a,$02e0+x
0ad7: de c0 1b  cbne  $c0+x,$0af5
0ada: 09 47 5e  or    ($5e),($47)
0add: f5 d0 02  mov   a,$02d0+x
0ae0: 10 07     bpl   $0ae9
0ae2: fc        inc   y
0ae3: d0 04     bne   $0ae9
0ae5: e8 80     mov   a,#$80
0ae7: 2f 04     bra   $0aed
0ae9: 60        clrc
0aea: 95 d1 02  adc   a,$02d1+x
0aed: d5 d0 02  mov   $02d0+x,a
0af0: 3f d7 0c  call  $0cd7
0af3: 2f 07     bra   $0afc
0af5: bb c0     inc   $c0+x
0af7: e8 ff     mov   a,#$ff
0af9: 3f e2 0c  call  $0ce2
0afc: f4 91     mov   a,$91+x
0afe: f0 09     beq   $0b09
0b00: e8 30     mov   a,#$30
0b02: 8d 03     mov   y,#$03
0b04: 9b 91     dec   $91+x
0b06: 3f 56 0b  call  $0b56
0b09: e4 47     mov   a,$47
0b0b: 24 5e     and   a,$5e
0b0d: f0 46     beq   $0b55
0b0f: f5 31 03  mov   a,$0331+x
0b12: fd        mov   y,a
0b13: f5 30 03  mov   a,$0330+x
0b16: da 10     movw  $10,ya
0b18: 7d        mov   a,x
0b19: 9f        xcn   a
0b1a: 5c        lsr   a
0b1b: c4 12     mov   $12,a
0b1d: eb 11     mov   y,$11
0b1f: f6 01 0d  mov   a,$0d01+y
0b22: 80        setc
0b23: b6 00 0d  sbc   a,$0d00+y
0b26: eb 10     mov   y,$10
0b28: cf        mul   ya
0b29: dd        mov   a,y
0b2a: eb 11     mov   y,$11
0b2c: 60        clrc
0b2d: 96 00 0d  adc   a,$0d00+y
0b30: fd        mov   y,a
0b31: f5 21 03  mov   a,$0321+x
0b34: cf        mul   ya
0b35: f5 51 03  mov   a,$0351+x
0b38: 1c        asl   a
0b39: 13 12 01  bbc0  $12,$0b3d
0b3c: 1c        asl   a
0b3d: dd        mov   a,y
0b3e: 90 03     bcc   $0b43
0b40: 48 ff     eor   a,#$ff
0b42: bc        inc   a
0b43: eb 12     mov   y,$12
0b45: 3f dc 05  call  $05dc
0b48: 8d 14     mov   y,#$14
0b4a: e8 00     mov   a,#$00
0b4c: 9a 10     subw  ya,$10
0b4e: da 10     movw  $10,ya
0b50: ab 12     inc   $12
0b52: 33 12 c8  bbc1  $12,$0b1d
0b55: 6f        ret

0b56: 09 47 5e  or    ($5e),($47)
0b59: da 14     movw  $14,ya
0b5b: da 16     movw  $16,ya
0b5d: 4d        push  x
0b5e: ee        pop   y
0b5f: 60        clrc
0b60: d0 0a     bne   $0b6c
0b62: 98 1f 16  adc   $16,#$1f
0b65: e8 00     mov   a,#$00
0b67: d7 14     mov   ($14)+y,a
0b69: fc        inc   y
0b6a: 2f 09     bra   $0b75
0b6c: 98 10 16  adc   $16,#$10
0b6f: 3f 73 0b  call  $0b73
0b72: fc        inc   y
0b73: f7 14     mov   a,($14)+y
0b75: 97 16     adc   a,($16)+y
0b77: d7 14     mov   ($14)+y,a
0b79: 6f        ret

0b7a: f4 71     mov   a,$71+x
0b7c: f0 63     beq   $0be1
0b7e: 9b 71     dec   $71+x
0b80: f0 05     beq   $0b87
0b82: e8 02     mov   a,#$02
0b84: de 70 5a  cbne  $70+x,$0be1
0b87: f4 80     mov   a,$80+x
0b89: c4 17     mov   $17,a
0b8b: f4 30     mov   a,$30+x
0b8d: fb 31     mov   y,$31+x
0b8f: da 14     movw  $14,ya
0b91: 8d 00     mov   y,#$00
0b93: f7 14     mov   a,($14)+y
0b95: f0 1c     beq   $0bb3
0b97: 30 05     bmi   $0b9e
0b99: fc        inc   y
0b9a: f7 14     mov   a,($14)+y
0b9c: 10 fb     bpl   $0b99
0b9e: 68 c8     cmp   a,#$c8
0ba0: f0 3f     beq   $0be1
0ba2: 68 ef     cmp   a,#$ef
0ba4: f0 29     beq   $0bcf
0ba6: 68 e0     cmp   a,#$e0
0ba8: 90 30     bcc   $0bda
0baa: 6d        push  y
0bab: fd        mov   y,a
0bac: ae        pop   a
0bad: 96 c8 09  adc   a,$09c8+y
0bb0: fd        mov   y,a
0bb1: 2f e0     bra   $0b93
0bb3: e4 17     mov   a,$17
0bb5: f0 23     beq   $0bda
0bb7: 8b 17     dec   $17
0bb9: d0 0a     bne   $0bc5
0bbb: f5 31 02  mov   a,$0231+x
0bbe: 2d        push  a
0bbf: f5 30 02  mov   a,$0230+x
0bc2: ee        pop   y
0bc3: 2f ca     bra   $0b8f
0bc5: f5 41 02  mov   a,$0241+x
0bc8: 2d        push  a
0bc9: f5 40 02  mov   a,$0240+x
0bcc: ee        pop   y
0bcd: 2f c0     bra   $0b8f
0bcf: fc        inc   y
0bd0: f7 14     mov   a,($14)+y
0bd2: 2d        push  a
0bd3: fc        inc   y
0bd4: f7 14     mov   a,($14)+y
0bd6: fd        mov   y,a
0bd7: ae        pop   a
0bd8: 2f b5     bra   $0b8f
0bda: e4 47     mov   a,$47
0bdc: 8d 5c     mov   y,#$5c
0bde: 3f dc 05  call  $05dc
0be1: f2 13     clr7  $13
0be3: f4 a0     mov   a,$a0+x
0be5: f0 13     beq   $0bfa
0be7: f4 a1     mov   a,$a1+x
0be9: f0 04     beq   $0bef
0beb: 9b a1     dec   $a1+x
0bed: 2f 0b     bra   $0bfa
0bef: e2 13     set7  $13
0bf1: e8 60     mov   a,#$60
0bf3: 8d 03     mov   y,#$03
0bf5: 9b a0     dec   $a0+x
0bf7: 3f 59 0b  call  $0b59
0bfa: 3f 4b 0a  call  $0a4b
0bfd: f4 b1     mov   a,$b1+x
0bff: f0 4c     beq   $0c4d
0c01: f5 b0 02  mov   a,$02b0+x
0c04: de b0 44  cbne  $b0+x,$0c4b
0c07: f5 00 01  mov   a,$0100+x
0c0a: 75 b1 02  cmp   a,$02b1+x
0c0d: d0 05     bne   $0c14
0c0f: f5 c1 02  mov   a,$02c1+x
0c12: 2f 0d     bra   $0c21
0c14: 40        setp
0c15: bb 00     inc   $00+x
0c17: 20        clrp
0c18: fd        mov   y,a
0c19: f0 02     beq   $0c1d
0c1b: f4 b1     mov   a,$b1+x
0c1d: 60        clrc
0c1e: 95 c0 02  adc   a,$02c0+x
0c21: d4 b1     mov   $b1+x,a
0c23: f5 a0 02  mov   a,$02a0+x
0c26: 60        clrc
0c27: 95 a1 02  adc   a,$02a1+x
0c2a: d5 a0 02  mov   $02a0+x,a
0c2d: c4 12     mov   $12,a
0c2f: 1c        asl   a
0c30: 1c        asl   a
0c31: 90 02     bcc   $0c35
0c33: 48 ff     eor   a,#$ff
0c35: fd        mov   y,a
0c36: f4 b1     mov   a,$b1+x
0c38: 68 f1     cmp   a,#$f1
0c3a: 90 05     bcc   $0c41
0c3c: 28 0f     and   a,#$0f
0c3e: cf        mul   ya
0c3f: 2f 04     bra   $0c45
0c41: cf        mul   ya
0c42: dd        mov   a,y
0c43: 8d 00     mov   y,#$00
0c45: 3f c2 0c  call  $0cc2
0c48: 5f 59 05  jmp   $0559

0c4b: bb b0     inc   $b0+x
0c4d: e3 13 f8  bbs7  $13,$0c48
0c50: 6f        ret

0c51: f2 13     clr7  $13
0c53: f4 c1     mov   a,$c1+x
0c55: f0 09     beq   $0c60
0c57: f5 e0 02  mov   a,$02e0+x
0c5a: de c0 03  cbne  $c0+x,$0c60
0c5d: 3f ca 0c  call  $0cca
0c60: f5 31 03  mov   a,$0331+x
0c63: fd        mov   y,a
0c64: f5 30 03  mov   a,$0330+x
0c67: da 10     movw  $10,ya
0c69: f4 91     mov   a,$91+x
0c6b: f0 0a     beq   $0c77
0c6d: f5 41 03  mov   a,$0341+x
0c70: fd        mov   y,a
0c71: f5 40 03  mov   a,$0340+x
0c74: 3f ac 0c  call  $0cac
0c77: f3 13 03  bbc7  $13,$0c7d
0c7a: 3f 18 0b  call  $0b18
0c7d: f2 13     clr7  $13
0c7f: 3f 4b 0a  call  $0a4b
0c82: f4 a0     mov   a,$a0+x
0c84: f0 0e     beq   $0c94
0c86: f4 a1     mov   a,$a1+x
0c88: d0 0a     bne   $0c94
0c8a: f5 71 03  mov   a,$0371+x
0c8d: fd        mov   y,a
0c8e: f5 70 03  mov   a,$0370+x
0c91: 3f ac 0c  call  $0cac
0c94: f4 b1     mov   a,$b1+x
0c96: f0 b5     beq   $0c4d
0c98: f5 b0 02  mov   a,$02b0+x
0c9b: de b0 af  cbne  $b0+x,$0c4d
0c9e: eb 51     mov   y,$51
0ca0: f5 a1 02  mov   a,$02a1+x
0ca3: cf        mul   ya
0ca4: dd        mov   a,y
0ca5: 60        clrc
0ca6: 95 a0 02  adc   a,$02a0+x
0ca9: 5f 2d 0c  jmp   $0c2d

0cac: e2 13     set7  $13
0cae: cb 12     mov   $12,y
0cb0: 3f 68 0a  call  $0a68
0cb3: 6d        push  y
0cb4: eb 51     mov   y,$51
0cb6: cf        mul   ya
0cb7: cb 14     mov   $14,y
0cb9: 8f 00 15  mov   $15,#$00
0cbc: eb 51     mov   y,$51
0cbe: ae        pop   a
0cbf: cf        mul   ya
0cc0: 7a 14     addw  ya,$14
0cc2: 3f 68 0a  call  $0a68
0cc5: 7a 10     addw  ya,$10
0cc7: da 10     movw  $10,ya
0cc9: 6f        ret

0cca: e2 13     set7  $13
0ccc: eb 51     mov   y,$51
0cce: f5 d1 02  mov   a,$02d1+x
0cd1: cf        mul   ya
0cd2: dd        mov   a,y
0cd3: 60        clrc
0cd4: 95 d0 02  adc   a,$02d0+x
0cd7: 1c        asl   a
0cd8: 90 02     bcc   $0cdc
0cda: 48 ff     eor   a,#$ff
0cdc: fb c1     mov   y,$c1+x
0cde: cf        mul   ya
0cdf: dd        mov   a,y
0ce0: 48 ff     eor   a,#$ff
0ce2: eb d4     mov   y,$d4
0ce4: d0 03     bne   $0ce9
0ce6: eb 59     mov   y,$59
0ce8: cf        mul   ya
0ce9: f5 10 02  mov   a,$0210+x
0cec: cf        mul   ya
0ced: f5 01 03  mov   a,$0301+x
0cf0: cf        mul   ya
0cf1: e4 d0     mov   a,$d0
0cf3: f0 04     beq   $0cf9
0cf5: e4 d1     mov   a,$d1
0cf7: 1c        asl   a
0cf8: cf        mul   ya
0cf9: dd        mov   a,y
0cfa: cf        mul   ya
0cfb: dd        mov   a,y
0cfc: d5 21 03  mov   $0321+x,a
0cff: 6f        ret

0d00: db $00,$01,$03,$07,$0d,$15,$1e,$29
0d08: db $34,$42,$51,$5e,$67,$6e,$73,$77
0d10: db $7a,$7c,$7d,$7e,$7f

0d15: db $7f,$00,$00,$00,$00,$00,$00,$00
0d1d: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0d25: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0d2d: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0d35: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0d3f: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
0d49: dw $085f
0d4b: dw $08de
0d4d: dw $0965
0d4f: dw $09f4
0d51: dw $0a8c
0d53: dw $0b2c
0d55: dw $0bd6
0d57: dw $0c8b
0d59: dw $0d4a
0d5b: dw $0e14
0d5d: dw $0eea
0d5f: dw $0fcd
0d61: dw $10be

0d63: e4 d3     mov   a,$d3
0d65: 1c        asl   a
0d66: 5d        mov   x,a
0d67: f5 01 24  mov   a,$2401+x
0d6a: fd        mov   y,a
0d6b: f5 00 24  mov   a,$2400+x
0d6e: da 3e     movw  $3e,ya
0d70: cd 0e     mov   x,#$0e
0d72: e8 dc     mov   a,#$dc
0d74: d5 01 03  mov   $0301+x,a
0d77: e8 0a     mov   a,#$0a
0d79: 3f 64 08  call  $0864
0d7c: e8 00     mov   a,#$00
0d7e: d5 11 02  mov   $0211+x,a
0d81: d5 81 03  mov   $0381+x,a
0d84: d5 f0 02  mov   $02f0+x,a
0d87: d5 80 02  mov   $0280+x,a
0d8a: d4 b1     mov   $b1+x,a
0d8c: d4 c1     mov   $c1+x,a
0d8e: d4 80     mov   $80+x,a
0d90: d4 90     mov   $90+x,a
0d92: d4 91     mov   $91+x,a
0d94: e8 02     mov   a,#$02
0d96: d4 70     mov   $70+x,a
0d98: 6f        ret

0d99: e2 46     set7  $46
0d9b: 8f 00 d3  mov   $d3,#$00
0d9e: 8f 00 3f  mov   $3f,#$00
0da1: 6f        ret

0da2: cd 0e     mov   x,#$0e
0da4: f4 31     mov   a,$31+x
0da6: f0 61     beq   $0e09
0da8: d8 44     mov   $44,x
0daa: 8f 80 47  mov   $47,#$80
0dad: 8f 00 5e  mov   $5e,#$00
0db0: 9b 70     dec   $70+x
0db2: d0 45     bne   $0df9
0db4: 3f ee 07  call  $07ee
0db7: f0 e0     beq   $0d99
0db9: 30 20     bmi   $0ddb
0dbb: d5 00 02  mov   $0200+x,a
0dbe: 3f ee 07  call  $07ee
0dc1: 30 18     bmi   $0ddb
0dc3: 2d        push  a
0dc4: 9f        xcn   a
0dc5: 28 07     and   a,#$07
0dc7: fd        mov   y,a
0dc8: f6 00 2f  mov   a,$2f00+y
0dcb: d5 01 02  mov   $0201+x,a
0dce: ae        pop   a
0dcf: 28 0f     and   a,#$0f
0dd1: fd        mov   y,a
0dd2: f6 08 2f  mov   a,$2f08+y
0dd5: d5 10 02  mov   $0210+x,a
0dd8: 3f ee 07  call  $07ee
0ddb: 68 e0     cmp   a,#$e0
0ddd: 90 05     bcc   $0de4
0ddf: 3f dc 07  call  $07dc
0de2: 2f d0     bra   $0db4
0de4: 3f ef 04  call  $04ef
0de7: f5 00 02  mov   a,$0200+x
0dea: d4 70     mov   $70+x,a
0dec: fd        mov   y,a
0ded: f5 01 02  mov   a,$0201+x
0df0: cf        mul   ya
0df1: dd        mov   a,y
0df2: d0 01     bne   $0df5
0df4: bc        inc   a
0df5: d4 71     mov   $71+x,a
0df7: 2f 03     bra   $0dfc
0df9: 3f 7a 0b  call  $0b7a
0dfc: 3f 13 0a  call  $0a13
0dff: e4 d0     mov   a,$d0
0e01: f0 03     beq   $0e06
0e03: 8f 80 5e  mov   $5e,#$80
0e06: 3f c3 0a  call  $0ac3
0e09: 6f        ret

0e0a: 2d        push  a
0e0b: e8 00     mov   a,#$00
0e0d: 8d 10     mov   y,#$10
0e0f: da da     movw  $da,ya
0e11: da dc     movw  $dc,ya
0e13: e8 20     mov   a,#$20
0e15: cd 00     mov   x,#$00
0e17: d5 00 10  mov   $1000+x,a
0e1a: 3d        inc   x
0e1b: d0 fa     bne   $0e17
0e1d: e8 ef     mov   a,#$ef
0e1f: c4 da     mov   $da,a
0e21: e8 80     mov   a,#$80
0e23: c4 e2     mov   $e2,a
0e25: e8 00     mov   a,#$00
0e27: 8d 70     mov   y,#$70
0e29: da d6     movw  $d6,ya
0e2b: e7 d6     mov   a,($d6+x)
0e2d: 3a d6     incw  $d6
0e2f: c4 d8     mov   $d8,a
0e31: e7 d6     mov   a,($d6+x)
0e33: 3a d6     incw  $d6
0e35: c4 d9     mov   $d9,a
0e37: e7 d6     mov   a,($d6+x)
0e39: 3a d6     incw  $d6
0e3b: c4 de     mov   $de,a
0e3d: e7 d6     mov   a,($d6+x)
0e3f: 3a d6     incw  $d6
0e41: c4 df     mov   $df,a
0e43: e7 d6     mov   a,($d6+x)
0e45: 24 e2     and   a,$e2
0e47: 0d        push  psw
0e48: 4b e2     lsr   $e2
0e4a: 90 04     bcc   $0e50
0e4c: 6b e2     ror   $e2
0e4e: 3a d6     incw  $d6
0e50: 8e        pop   psw
0e51: f0 11     beq   $0e64
0e53: 3f 86 0e  call  $0e86
0e56: c7 d8     mov   ($d8+x),a
0e58: 3a d8     incw  $d8
0e5a: c7 da     mov   ($da+x),a
0e5c: ab da     inc   $da
0e5e: 1a de     decw  $de
0e60: d0 e1     bne   $0e43
0e62: 2f 20     bra   $0e84
0e64: 3f 86 0e  call  $0e86
0e67: c4 dc     mov   $dc,a
0e69: 3f a3 0e  call  $0ea3
0e6c: bc        inc   a
0e6d: bc        inc   a
0e6e: fd        mov   y,a
0e6f: e7 dc     mov   a,($dc+x)
0e71: ab dc     inc   $dc
0e73: c7 da     mov   ($da+x),a
0e75: ab da     inc   $da
0e77: c7 d8     mov   ($d8+x),a
0e79: 3a d8     incw  $d8
0e7b: 1a de     decw  $de
0e7d: f0 05     beq   $0e84
0e7f: dc        dec   y
0e80: d0 ed     bne   $0e6f
0e82: 2f bf     bra   $0e43
0e84: ae        pop   a
0e85: 6f        ret

0e86: e7 d6     mov   a,($d6+x)
0e88: 3a d6     incw  $d6
0e8a: c4 e1     mov   $e1,a
0e8c: e7 d6     mov   a,($d6+x)
0e8e: c4 e0     mov   $e0,a
0e90: e4 e2     mov   a,$e2
0e92: 8f 07 e3  mov   $e3,#$07
0e95: 1c        asl   a
0e96: b0 08     bcs   $0ea0
0e98: 0b e0     asl   $e0
0e9a: 2b e1     rol   $e1
0e9c: 8b e3     dec   $e3
0e9e: d0 f5     bne   $0e95
0ea0: e4 e1     mov   a,$e1
0ea2: 6f        ret

0ea3: e4 e2     mov   a,$e2
0ea5: 68 10     cmp   a,#$10
0ea7: 9f        xcn   a
0ea8: c4 e2     mov   $e2,a
0eaa: 90 1d     bcc   $0ec9
0eac: e7 d6     mov   a,($d6+x)
0eae: c4 e0     mov   $e0,a
0eb0: e4 e2     mov   a,$e2
0eb2: 4b e0     lsr   $e0
0eb4: 5c        lsr   a
0eb5: b0 0d     bcs   $0ec4
0eb7: 4b e0     lsr   $e0
0eb9: 5c        lsr   a
0eba: b0 08     bcs   $0ec4
0ebc: 4b e0     lsr   $e0
0ebe: 5c        lsr   a
0ebf: b0 03     bcs   $0ec4
0ec1: 4b e0     lsr   $e0
0ec3: 5c        lsr   a
0ec4: e4 e0     mov   a,$e0
0ec6: 28 0f     and   a,#$0f
0ec8: 6f        ret

0ec9: e7 d6     mov   a,($d6+x)
0ecb: 3a d6     incw  $d6
0ecd: c4 e1     mov   $e1,a
0ecf: e7 d6     mov   a,($d6+x)
0ed1: c4 e0     mov   $e0,a
0ed3: e4 e2     mov   a,$e2
0ed5: 1c        asl   a
0ed6: b0 12     bcs   $0eea
0ed8: 0b e0     asl   $e0
0eda: 2b e1     rol   $e1
0edc: 1c        asl   a
0edd: b0 0b     bcs   $0eea
0edf: 0b e0     asl   $e0
0ee1: 2b e1     rol   $e1
0ee3: 1c        asl   a
0ee4: b0 04     bcs   $0eea
0ee6: 0b e0     asl   $e0
0ee8: 2b e1     rol   $e1
0eea: e4 e1     mov   a,$e1
0eec: 28 0f     and   a,#$0f
0eee: 6f        ret

0eef: e8 aa     mov   a,#$aa
0ef1: c5 f4 00  mov   $00f4,a
0ef4: e8 bb     mov   a,#$bb
0ef6: c5 f5 00  mov   $00f5,a
0ef9: e5 f4 00  mov   a,$00f4
0efc: 68 cc     cmp   a,#$cc
0efe: d0 f9     bne   $0ef9
0f00: 2f 20     bra   $0f22
0f02: ec f4 00  mov   y,$00f4
0f05: d0 fb     bne   $0f02
0f07: 5e f4 00  cmp   y,$00f4
0f0a: d0 0f     bne   $0f1b
0f0c: e5 f5 00  mov   a,$00f5
0f0f: cc f4 00  mov   $00f4,y
0f12: d7 14     mov   ($14)+y,a
0f14: fc        inc   y
0f15: d0 f0     bne   $0f07
0f17: ab 15     inc   $15
0f19: 2f ec     bra   $0f07
0f1b: 10 ea     bpl   $0f07
0f1d: 5e f4 00  cmp   y,$00f4
0f20: 10 e5     bpl   $0f07
0f22: e5 f6 00  mov   a,$00f6
0f25: ec f7 00  mov   y,$00f7
0f28: da 14     movw  $14,ya
0f2a: ec f4 00  mov   y,$00f4
0f2d: e5 f5 00  mov   a,$00f5
0f30: cc f4 00  mov   $00f4,y
0f33: d0 cd     bne   $0f02
0f35: cd 31     mov   x,#$31
0f37: c9 f1 00  mov   $00f1,x
0f3a: 6f        ret

0f3b: db $09,$03,$03,$03,$03,$00,$00,$03
0f43: db $02,$03,$01,$03,$03,$02,$02,$02
0f4b: db $00,$00,$03,$00,$02,$03,$02,$02
0f53: db $02,$02,$01,$02,$00,$02,$02,$02
0f5b: db $01,$02,$02,$02,$02,$02,$02
