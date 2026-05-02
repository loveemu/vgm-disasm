0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 f0     cmp   x,#$f0
040a: d0 fb     bne   $0407
040c: 5d        mov   x,a
040d: d5 00 01  mov   $0100+x,a
0410: d5 00 02  mov   $0200+x,a
0413: d5 00 03  mov   $0300+x,a
0416: 3d        inc   x
0417: d0 f4     bne   $040d
0419: bc        inc   a
041a: 3f 67 0d  call  $0d67
041d: a2 43     set5  $43
041f: e8 60     mov   a,#$60
0421: 8d 0c     mov   y,#$0c
0423: 3f 70 07  call  $0770
0426: 8d 1c     mov   y,#$1c
0428: 3f 70 07  call  $0770
042b: 3f e8 07  call  $07e8
042e: e8 14     mov   a,#$14
0430: 8d 5d     mov   y,#$5d
0432: 3f 70 07  call  $0770
0435: e8 90     mov   a,#$90
0437: c5 f1 00  mov   $00f1,a
043a: e8 10     mov   a,#$10
043c: c5 fa 00  mov   $00fa,a
043f: c4 4d     mov   $4d,a
0441: e8 81     mov   a,#$81
0443: c5 f1 00  mov   $00f1,a
0446: e8 00     mov   a,#$00
0448: c4 f4     mov   $f4,a
044a: 8d 0a     mov   y,#$0a
044c: ad 05     cmp   y,#$05
044e: f0 07     beq   $0457
0450: b0 08     bcs   $045a
0452: 69 48 47  cmp   ($47),($48)
0455: d0 11     bne   $0468
0457: e3 47 0e  bbs7  $47,$0468
045a: f6 bf 04  mov   a,$04bf+y
045d: c5 f2 00  mov   $00f2,a
0460: f6 c9 04  mov   a,$04c9+y
0463: 5d        mov   x,a
0464: e6        mov   a,(x)
0465: c5 f3 00  mov   $00f3,a
0468: fe e2     dbnz  y,$044c
046a: cb 3f     mov   $3f,y
046c: cb 40     mov   $40,y
046e: 3f d4 04  call  $04d4
0471: ec fd 00  mov   y,$00fd
0474: f0 f8     beq   $046e
0476: 6d        push  y
0477: e8 20     mov   a,#$20
0479: cf        mul   ya
047a: 60        clrc
047b: 84 1b     adc   a,$1b
047d: c4 1b     mov   $1b,a
047f: 90 07     bcc   $0488
0481: 69 48 47  cmp   ($47),($48)
0484: f0 02     beq   $0488
0486: ab 47     inc   $47
0488: ee        pop   y
0489: e4 4d     mov   a,$4d
048b: cf        mul   ya
048c: 60        clrc
048d: 84 4b     adc   a,$4b
048f: c4 4b     mov   $4b,a
0491: 90 0b     bcc   $049e
0493: 3f df 08  call  $08df
0496: 3f e9 08  call  $08e9
0499: 3f d4 04  call  $04d4
049c: 2f ac     bra   $044a
049e: f0 fc     beq   $049c
04a0: cd 00     mov   x,#$00
04a2: 8f 01 41  mov   $41,#$01
04a5: f4 69     mov   a,$69+x
04a7: f0 03     beq   $04ac
04a9: 3f 11 10  call  $1011
04ac: 3d        inc   x
04ad: 3d        inc   x
04ae: 0b 41     asl   $41
04b0: d0 f3     bne   $04a5
04b2: 2f e8     bra   $049c
04b4: e4 18     mov   a,$18
04b6: 44 19     eor   a,$19
04b8: 5c        lsr   a
04b9: 5c        lsr   a
04ba: ed        notc
04bb: 6b 18     ror   $18
04bd: 6b 19     ror   $19
04bf: 6f        ret

04c0: 2c 3c 0d  rol   $0d3c
04c3: 4d        push  x
04c4: 6c 4c 5c  ror   $5c4c
04c7: 3d        inc   x
04c8: 2d        push  a
04c9: 5c        lsr   a
04ca: 5b 5d     lsr   $5d+x
04cc: 49 45 43  eor   ($43),($45)
04cf: 3f 0e 44  call  $440e
04d2: 46        eor   a,(x)
04d3: 40        setp
04d4: e4 f4     mov   a,$f4
04d6: 68 55     cmp   a,#$55
04d8: f0 39     beq   $0513
04da: 68 01     cmp   a,#$01
04dc: d0 03     bne   $04e1
04de: 5f 42 05  jmp   $0542

04e1: 68 02     cmp   a,#$02
04e3: f0 76     beq   $055b
04e5: 68 03     cmp   a,#$03
04e7: d0 03     bne   $04ec
04e9: 5f 9f 05  jmp   $059f

04ec: 68 04     cmp   a,#$04
04ee: d0 03     bne   $04f3
04f0: 5f bf 05  jmp   $05bf

04f3: 68 05     cmp   a,#$05
04f5: d0 03     bne   $04fa
04f7: 5f e2 05  jmp   $05e2

04fa: 68 06     cmp   a,#$06
04fc: d0 03     bne   $0501
04fe: 5f 0b 06  jmp   $060b

0501: 68 fe     cmp   a,#$fe
0503: d0 03     bne   $0508
0505: 5f 3f 06  jmp   $063f

0508: 68 07     cmp   a,#$07
050a: d0 03     bne   $050f
050c: 5f 43 06  jmp   $0643

050f: 68 ff     cmp   a,#$ff
0511: f0 04     beq   $0517
0513: c5 89 03  mov   $0389,a
0516: 6f        ret

0517: c4 f4     mov   $f4,a
0519: e8 80     mov   a,#$80
051b: 8d 6c     mov   y,#$6c
051d: 3f 70 07  call  $0770
0520: e8 00     mov   a,#$00
0522: 3f 67 0d  call  $0d67
0525: a2 43     set5  $43
0527: 8f 00 14  mov   $14,#$00
052a: 8f 80 15  mov   $15,#$80
052d: 8d 00     mov   y,#$00
052f: e8 00     mov   a,#$00
0531: d7 14     mov   ($14)+y,a
0533: ab 14     inc   $14
0535: d0 f8     bne   $052f
0537: ab 15     inc   $15
0539: e4 15     mov   a,$15
053b: 68 f0     cmp   a,#$f0
053d: d0 f0     bne   $052f
053f: 5f c0 ff  jmp   $ffc0

0542: c4 f4     mov   $f4,a
0544: e4 f5     mov   a,$f5
0546: c4 00     mov   $00,a
0548: eb f6     mov   y,$f6
054a: 3f 77 0c  call  $0c77
054d: e4 f7     mov   a,$f7
054f: c4 65     mov   $65,a
0551: e8 01     mov   a,#$01
0553: c5 89 03  mov   $0389,a
0556: e8 55     mov   a,#$55
0558: c4 f4     mov   $f4,a
055a: 6f        ret

055b: e5 89 03  mov   a,$0389
055e: 68 02     cmp   a,#$02
0560: f0 3c     beq   $059e
0562: c4 f4     mov   $f4,a
0564: e4 f5     mov   a,$f5
0566: c5 60 03  mov   $0360,a
0569: e5 f6 00  mov   a,$00f6
056c: 2d        push  a
056d: 28 e0     and   a,#$e0
056f: 5c        lsr   a
0570: 5c        lsr   a
0571: 5c        lsr   a
0572: 5c        lsr   a
0573: 68 0e     cmp   a,#$0e
0575: d0 04     bne   $057b
0577: e8 ff     mov   a,#$ff
0579: 2f 03     bra   $057e
057b: 8d 10     mov   y,#$10
057d: cf        mul   ya
057e: c5 61 03  mov   $0361,a
0581: ae        pop   a
0582: 28 1f     and   a,#$1f
0584: 68 14     cmp   a,#$14
0586: 90 02     bcc   $058a
0588: e8 14     mov   a,#$14
058a: c5 62 03  mov   $0362,a
058d: e4 f7     mov   a,$f7
058f: c5 8a 03  mov   $038a,a
0592: e8 02     mov   a,#$02
0594: c5 89 03  mov   $0389,a
0597: 3f f3 10  call  $10f3
059a: e8 55     mov   a,#$55
059c: c4 f4     mov   $f4,a
059e: 6f        ret

059f: c4 f4     mov   $f4,a
05a1: e5 f5 00  mov   a,$00f5
05a4: c4 54     mov   $54,a
05a6: e5 f6 00  mov   a,$00f6
05a9: c4 55     mov   $55,a
05ab: 80        setc
05ac: a4 53     sbc   a,$53
05ae: f8 54     mov   x,$54
05b0: 3f fb 0d  call  $0dfb
05b3: da 56     movw  $56,ya
05b5: e8 03     mov   a,#$03
05b7: c5 89 03  mov   $0389,a
05ba: e8 55     mov   a,#$55
05bc: c4 f4     mov   $f4,a
05be: 6f        ret

05bf: c4 f4     mov   $f4,a
05c1: e5 f5 00  mov   a,$00f5
05c4: c4 4e     mov   $4e,a
05c6: e5 f6 00  mov   a,$00f6
05c9: c4 4f     mov   $4f,a
05cb: 80        setc
05cc: a4 4d     sbc   a,$4d
05ce: f8 4e     mov   x,$4e
05d0: 3f fb 0d  call  $0dfb
05d3: da 50     movw  $50,ya
05d5: e8 04     mov   a,#$04
05d7: c5 89 03  mov   $0389,a
05da: c5 8b 03  mov   $038b,a
05dd: e8 55     mov   a,#$55
05df: c4 f4     mov   $f4,a
05e1: 6f        ret

05e2: c4 f4     mov   $f4,a
05e4: e4 f5     mov   a,$f5
05e6: f0 09     beq   $05f1
05e8: 68 01     cmp   a,#$01
05ea: f0 0d     beq   $05f9
05ec: 68 02     cmp   a,#$02
05ee: f0 11     beq   $0601
05f0: 6f        ret

05f1: fa 4d f5  mov   ($f5),($4d)
05f4: e8 55     mov   a,#$55
05f6: c4 f4     mov   $f4,a
05f8: 6f        ret

05f9: fa 53 f5  mov   ($f5),($53)
05fc: e8 55     mov   a,#$55
05fe: c4 f4     mov   $f4,a
0600: 6f        ret

0601: e5 8c 03  mov   a,$038c
0604: c4 f5     mov   $f5,a
0606: e8 55     mov   a,#$55
0608: c4 f4     mov   $f4,a
060a: 6f        ret

060b: c4 f4     mov   $f4,a
060d: e5 89 03  mov   a,$0389
0610: 68 06     cmp   a,#$06
0612: f0 26     beq   $063a
0614: e9 9f 03  mov   x,$039f
0617: e4 f6     mov   a,$f6
0619: 3f e4 0c  call  $0ce4
061c: 3f 8a 10  call  $108a
061f: e4 f5     mov   a,$f5
0621: 3f 1f 0c  call  $0c1f
0624: 4d        push  x
0625: e8 01     mov   a,#$01
0627: 1c        asl   a
0628: 1d        dec   x
0629: 1d        dec   x
062a: d0 fb     bne   $0627
062c: c4 41     mov   $41,a
062e: 09 41 58  or    ($58),($41)
0631: ce        pop   x
0632: 3f 50 0e  call  $0e50
0635: e8 06     mov   a,#$06
0637: c5 89 03  mov   $0389,a
063a: e8 55     mov   a,#$55
063c: c4 f4     mov   $f4,a
063e: 6f        ret

063f: 3f e9 08  call  $08e9
0642: 6f        ret

0643: c4 f4     mov   $f4,a
0645: e5 89 03  mov   a,$0389
0648: 68 06     cmp   a,#$06
064a: f0 0a     beq   $0656
064c: e4 f5     mov   a,$f5
064e: c5 a3 03  mov   $03a3,a
0651: e8 06     mov   a,#$06
0653: c5 89 03  mov   $0389,a
0656: e8 55     mov   a,#$55
0658: c4 f4     mov   $f4,a
065a: 6f        ret

065b: 6f        ret

065c: ad ca     cmp   y,#$ca
065e: 90 06     bcc   $0666
0660: 3f 29 0b  call  $0b29
0663: ec a0 03  mov   y,$03a0
0666: ad c8     cmp   y,#$c8
0668: b0 f1     bcs   $065b
066a: e4 1a     mov   a,$1a
066c: 24 41     and   a,$41
066e: d0 eb     bne   $065b
0670: f5 a4 03  mov   a,$03a4+x
0673: f0 11     beq   $0686
0675: e4 18     mov   a,$18
0677: 68 14     cmp   a,#$14
0679: 90 05     bcc   $0680
067b: 80        setc
067c: a8 14     sbc   a,#$14
067e: 2f f7     bra   $0677
0680: 3f 1f 0c  call  $0c1f
0683: 3f b4 04  call  $04b4
0686: dd        mov   a,y
0687: 28 7f     and   a,#$7f
0689: 60        clrc
068a: 84 4a     adc   a,$4a
068c: 60        clrc
068d: 95 41 03  adc   a,$0341+x
0690: 60        clrc
0691: 95 50 03  adc   a,$0350+x
0694: d5 b1 02  mov   $02b1+x,a
0697: e8 00     mov   a,#$00
0699: d5 50 03  mov   $0350+x,a
069c: f5 d1 02  mov   a,$02d1+x
069f: d5 b0 02  mov   $02b0+x,a
06a2: f5 11 03  mov   a,$0311+x
06a5: 5c        lsr   a
06a6: e8 00     mov   a,#$00
06a8: 7c        ror   a
06a9: d5 00 03  mov   $0300+x,a
06ac: e8 00     mov   a,#$00
06ae: d4 c9     mov   $c9+x,a
06b0: d4 9a     mov   $9a+x,a
06b2: d5 30 03  mov   $0330+x,a
06b5: d4 d9     mov   $d9+x,a
06b7: 09 41 58  or    ($58),($41)
06ba: 09 41 3f  or    ($3f),($41)
06bd: f5 e0 02  mov   a,$02e0+x
06c0: d4 b9     mov   $b9+x,a
06c2: f0 1e     beq   $06e2
06c4: f5 e1 02  mov   a,$02e1+x
06c7: d4 ba     mov   $ba+x,a
06c9: f5 f0 02  mov   a,$02f0+x
06cc: d0 0a     bne   $06d8
06ce: f5 b1 02  mov   a,$02b1+x
06d1: 80        setc
06d2: b5 f1 02  sbc   a,$02f1+x
06d5: d5 b1 02  mov   $02b1+x,a
06d8: f5 f1 02  mov   a,$02f1+x
06db: 60        clrc
06dc: 95 b1 02  adc   a,$02b1+x
06df: 3f d3 0d  call  $0dd3
06e2: 3f f0 0d  call  $0df0
06e5: 8d 00     mov   y,#$00
06e7: e4 11     mov   a,$11
06e9: 80        setc
06ea: a8 34     sbc   a,#$34
06ec: b0 09     bcs   $06f7
06ee: e4 11     mov   a,$11
06f0: 80        setc
06f1: a8 13     sbc   a,#$13
06f3: b0 06     bcs   $06fb
06f5: dc        dec   y
06f6: 1c        asl   a
06f7: 7a 10     addw  ya,$10
06f9: da 10     movw  $10,ya
06fb: 4d        push  x
06fc: e4 11     mov   a,$11
06fe: 1c        asl   a
06ff: 8d 00     mov   y,#$00
0701: cd 18     mov   x,#$18
0703: 9e        div   ya,x
0704: 5d        mov   x,a
0705: f6 78 07  mov   a,$0778+y
0708: c4 15     mov   $15,a
070a: f6 77 07  mov   a,$0777+y
070d: c4 14     mov   $14,a
070f: f6 7a 07  mov   a,$077a+y
0712: 2d        push  a
0713: f6 79 07  mov   a,$0779+y
0716: ee        pop   y
0717: 9a 14     subw  ya,$14
0719: eb 10     mov   y,$10
071b: cf        mul   ya
071c: dd        mov   a,y
071d: 8d 00     mov   y,#$00
071f: 7a 14     addw  ya,$14
0721: cb 15     mov   $15,y
0723: 1c        asl   a
0724: 2b 15     rol   $15
0726: c4 14     mov   $14,a
0728: 2f 04     bra   $072e
072a: 4b 15     lsr   $15
072c: 7c        ror   a
072d: 3d        inc   x
072e: c8 06     cmp   x,#$06
0730: d0 f8     bne   $072a
0732: c4 14     mov   $14,a
0734: ce        pop   x
0735: f5 20 02  mov   a,$0220+x
0738: eb 15     mov   y,$15
073a: cf        mul   ya
073b: da 16     movw  $16,ya
073d: f5 20 02  mov   a,$0220+x
0740: eb 14     mov   y,$14
0742: cf        mul   ya
0743: 6d        push  y
0744: f5 21 02  mov   a,$0221+x
0747: eb 14     mov   y,$14
0749: cf        mul   ya
074a: 7a 16     addw  ya,$16
074c: da 16     movw  $16,ya
074e: f5 21 02  mov   a,$0221+x
0751: eb 15     mov   y,$15
0753: cf        mul   ya
0754: fd        mov   y,a
0755: ae        pop   a
0756: 7a 16     addw  ya,$16
0758: da 16     movw  $16,ya
075a: 7d        mov   a,x
075b: 9f        xcn   a
075c: 5c        lsr   a
075d: 08 02     or    a,#$02
075f: fd        mov   y,a
0760: e4 16     mov   a,$16
0762: 3f 68 07  call  $0768
0765: fc        inc   y
0766: e4 17     mov   a,$17
0768: 2d        push  a
0769: e4 41     mov   a,$41
076b: 24 1a     and   a,$1a
076d: ae        pop   a
076e: d0 06     bne   $0776
0770: cc f2 00  mov   $00f2,y
0773: c5 f3 00  mov   $00f3,a
0776: 6f        ret

0777: dw $085f
0779: dw $08de
077b: dw $0965
077d: dw $09f4
077f: dw $0a8c
0781: dw $0b2c
0783: dw $0bd6
0785: dw $0c8b
0787: dw $0d4a
0789: dw $0e14
078b: dw $0eea
078d: dw $0fcd
078f: dw $10be
 
0791: 8d 00     mov   y,#$00
0793: f7 1c     mov   a,($1c)+y
0795: 3a 1c     incw  $1c
0797: 2d        push  a
0798: f7 1c     mov   a,($1c)+y
079a: 3a 1c     incw  $1c
079c: fd        mov   y,a
079d: ae        pop   a
079e: 6f        ret

079f: 8d 0f     mov   y,#$0f
07a1: cd 0f     mov   x,#$0f
07a3: f7 1c     mov   a,($1c)+y
07a5: f0 04     beq   $07ab
07a7: d4 1f     mov   $1f+x,a
07a9: d4 69     mov   $69+x,a
07ab: dc        dec   y
07ac: 1d        dec   x
07ad: 10 f4     bpl   $07a3
07af: f8 66     mov   x,$66
07b1: 1d        dec   x
07b2: 1d        dec   x
07b3: 8f 01 41  mov   $41,#$01
07b6: e7 1f     mov   a,($1f+x)
07b8: d4 2f     mov   $2f+x,a
07ba: f0 06     beq   $07c2
07bc: bb 1f     inc   $1f+x
07be: d0 02     bne   $07c2
07c0: bb 20     inc   $20+x
07c2: e7 1f     mov   a,($1f+x)
07c4: d4 30     mov   $30+x,a
07c6: f0 06     beq   $07ce
07c8: bb 1f     inc   $1f+x
07ca: d0 02     bne   $07ce
07cc: bb 20     inc   $20+x
07ce: f5 11 02  mov   a,$0211+x
07d1: d0 05     bne   $07d8
07d3: e8 00     mov   a,#$00
07d5: 3f 29 0b  call  $0b29
07d8: e8 00     mov   a,#$00
07da: d4 99     mov   $99+x,a
07dc: d4 a9     mov   $a9+x,a
07de: d4 aa     mov   $aa+x,a
07e0: bc        inc   a
07e1: d4 89     mov   $89+x,a
07e3: 1d        dec   x
07e4: 1d        dec   x
07e5: 10 cf     bpl   $07b6
07e7: 6f        ret

07e8: e4 1a     mov   a,$1a
07ea: 48 ff     eor   a,#$ff
07ec: 0e 40 00  tset1 $0040
07ef: e8 00     mov   a,#$00
07f1: c5 8c 03  mov   $038c,a
07f4: cd 0e     mov   x,#$0e
07f6: d4 69     mov   $69+x,a
07f8: 1d        dec   x
07f9: 10 fb     bpl   $07f6
07fb: c4 66     mov   $66,a
07fd: c4 54     mov   $54,a
07ff: c4 62     mov   $62,a
0801: c4 4e     mov   $4e,a
0803: c4 4a     mov   $4a,a
0805: c4 1e     mov   $1e,a
0807: c4 59     mov   $59,a
0809: e8 01     mov   a,#$01
080b: c4 4e     mov   $4e,a
080d: e8 2d     mov   a,#$2d
080f: c4 4f     mov   $4f,a
0811: 80        setc
0812: a4 4d     sbc   a,$4d
0814: f8 4e     mov   x,$4e
0816: 3f fb 0d  call  $0dfb
0819: da 50     movw  $50,ya
081b: e8 00     mov   a,#$00
081d: 3f 67 0d  call  $0d67
0820: a2 43     set5  $43
0822: 6f        ret

; load song
0823: c4 08     mov   $08,a
0825: c5 8c 03  mov   $038c,a
0828: 1c        asl   a
0829: 1c        asl   a
082a: f0 bc     beq   $07e8
082c: 5d        mov   x,a
082d: f5 fd 7f  mov   a,$7ffd+x
0830: fd        mov   y,a
0831: f5 fc 7f  mov   a,$7ffc+x
0834: da 1c     movw  $1c,ya
0836: f5 fe 7f  mov   a,$7ffe+x
0839: c4 66     mov   $66,a
083b: e4 1a     mov   a,$1a
083d: 48 ff     eor   a,#$ff
083f: 0e 40 00  tset1 $0040
0842: cd 0e     mov   x,#$0e
0844: 8f 80 41  mov   $41,#$80
0847: e8 ff     mov   a,#$ff
0849: d5 51 02  mov   $0251+x,a
084c: e8 0a     mov   a,#$0a
084e: 3f 1f 0c  call  $0c1f
0851: d5 11 02  mov   $0211+x,a
0854: d5 d1 02  mov   $02d1+x,a
0857: d5 41 03  mov   $0341+x,a
085a: d4 79     mov   $79+x,a
085c: d5 a4 03  mov   $03a4+x,a
085f: d5 e0 02  mov   $02e0+x,a
0862: d4 ca     mov   $ca+x,a
0864: d4 da     mov   $da+x,a
0866: c5 9f 03  mov   $039f,a
0869: d5 65 03  mov   $0365+x,a
086c: d5 75 03  mov   $0375+x,a
086f: d4 69     mov   $69+x,a
0871: 1d        dec   x
0872: d4 69     mov   $69+x,a
0874: 1d        dec   x
0875: 4b 41     lsr   $41
0877: d0 ce     bne   $0847
0879: e8 00     mov   a,#$00
087b: c5 8b 03  mov   $038b,a
087e: c4 54     mov   $54,a
0880: c4 62     mov   $62,a
0882: c4 4e     mov   $4e,a
0884: c4 4a     mov   $4a,a
0886: c4 1e     mov   $1e,a
0888: c4 59     mov   $59,a
088a: 8f 20 4d  mov   $4d,#$20
088d: 8d 0f     mov   y,#$0f
088f: cd 0f     mov   x,#$0f
0891: f7 1c     mov   a,($1c)+y
0893: d4 1f     mov   $1f+x,a
0895: d4 69     mov   $69+x,a
0897: dc        dec   y
0898: 1d        dec   x
0899: 10 f6     bpl   $0891
089b: cd 0e     mov   x,#$0e
089d: 8f 01 41  mov   $41,#$01
08a0: e7 1f     mov   a,($1f+x)
08a2: d4 2f     mov   $2f+x,a
08a4: f0 06     beq   $08ac
08a6: bb 1f     inc   $1f+x
08a8: d0 02     bne   $08ac
08aa: bb 20     inc   $20+x
08ac: e7 1f     mov   a,($1f+x)
08ae: d4 30     mov   $30+x,a
08b0: f0 06     beq   $08b8
08b2: bb 1f     inc   $1f+x
08b4: d0 02     bne   $08b8
08b6: bb 20     inc   $20+x
08b8: 1d        dec   x
08b9: 1d        dec   x
08ba: 0b 41     asl   $41
08bc: d0 e2     bne   $08a0
08be: cd 00     mov   x,#$00
08c0: 8f 01 41  mov   $41,#$01
08c3: f5 11 02  mov   a,$0211+x
08c6: d0 05     bne   $08cd
08c8: e8 00     mov   a,#$00
08ca: 3f 29 0b  call  $0b29
08cd: e8 00     mov   a,#$00
08cf: d4 99     mov   $99+x,a
08d1: d4 a9     mov   $a9+x,a
08d3: d4 aa     mov   $aa+x,a
08d5: bc        inc   a
08d6: d4 89     mov   $89+x,a
08d8: 3d        inc   x
08d9: 3d        inc   x
08da: 0b 41     asl   $41
08dc: d0 e5     bne   $08c3
08de: 6f        ret

08df: e4 00     mov   a,$00
08e1: 64 08     cmp   a,$08
08e3: f0 03     beq   $08e8
08e5: 5f 23 08  jmp   $0823

08e8: 6f        ret

08e9: cd 00     mov   x,#$00
08eb: d8 58     mov   $58,x
08ed: 8f 01 41  mov   $41,#$01
08f0: d8 42     mov   $42,x
08f2: f4 69     mov   a,$69+x
08f4: d0 03     bne   $08f9
08f6: 5f ab 09  jmp   $09ab

08f9: 7d        mov   a,x
08fa: 9b 89     dec   $89+x
08fc: f0 03     beq   $0901
08fe: 5f a5 09  jmp   $09a5

; dispatch voice bytes
0901: 3f 7e 0a  call  $0a7e             ; read vcmd
0904: d0 68     bne   $096e
; vcmd 00
0906: 3f 7e 0a  call  $0a7e
0909: f0 28     beq   $0933             ; vcmd 00 00 - end pattern
090b: 68 02     cmp   a,#$02
090d: f0 15     beq   $0924
; vcmd 00 xx - ?
090f: e8 00     mov   a,#$00
0911: d4 69     mov   $69+x,a
0913: d4 6a     mov   $6a+x,a
0915: d5 65 03  mov   $0365+x,a
0918: d5 66 03  mov   $0366+x,a
091b: d5 75 03  mov   $0375+x,a
091e: d5 76 03  mov   $0376+x,a
0921: 5f ab 09  jmp   $09ab

; vcmd 00 02 - goto
0924: 3f 7e 0a  call  $0a7e
0927: 2d        push  a
0928: 3f 7e 0a  call  $0a7e
092b: f4 30     mov   a,$30+x
092d: ae        pop   a
092e: d4 2f     mov   $2f+x,a           ; goto arg1/2
0930: 5f 01 09  jmp   $0901

; dispatch pattern event
; note: each tracks has the corresponding pattern sequence
; (incompatible with standard N-SPC, which has only a single global pattern sequence)
0933: e7 1f     mov   a,($1f+x)
0935: d4 2f     mov   $2f+x,a
0937: bb 1f     inc   $1f+x
0939: d0 02     bne   $093d
093b: bb 20     inc   $20+x
093d: e7 1f     mov   a,($1f+x)
093f: d4 30     mov   $30+x,a           ; read new start address for the track
0941: bb 1f     inc   $1f+x
0943: d0 02     bne   $0947
0945: bb 20     inc   $20+x
0947: f4 30     mov   a,$30+x
0949: f0 0b     beq   $0956             ; if $00xx: end of pattern?
094b: 68 ff     cmp   a,#$ff
094d: f0 1c     beq   $096b             ; if $ffxx: loop?
094f: 68 01     cmp   a,#$01
0951: f0 06     beq   $0959             ; if $01xx (usually 00 01): goto
0953: 5f 01 09  jmp   $0901             ; else: start dispatching the new pattern

0956: 5f e8 07  jmp   $07e8

; goto for the pattern sequence
0959: e7 1f     mov   a,($1f+x)
095b: 2d        push  a
095c: bb 1f     inc   $1f+x
095e: d0 02     bne   $0962
0960: ab 20     inc   $20
0962: e7 1f     mov   a,($1f+x)
0964: d4 20     mov   $20+x,a
0966: ae        pop   a
0967: d4 1f     mov   $1f+x,a
0969: 2f c8     bra   $0933
096b: 5f 9f 07  jmp   $079f

096e: 30 16     bmi   $0986             ; vcmds 01-7f - note info:
0970: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0973: 3f 7e 0a  call  $0a7e             ;   read next byte
0976: 30 0e     bmi   $0986             ;   branch if not a note
0978: f0 8c     beq   $0906             ;   branch if zero (end pattern)

; process the second note param (velocity)
; (incompatible with standard N-SPC)
097a: 1c        asl   a                 ; extend 7-bit value to 8-bit
097b: d5 10 02  mov   $0210+x,a         ; set per-note volume (velocity)
097e: e8 ff     mov   a,#$ff
0980: d5 01 02  mov   $0201+x,a         ; maximize dur%
0983: 5f 01 09  jmp   $0901

; vcmd branches 80-ff
0986: 68 e0     cmp   a,#$e0
0988: 90 06     bcc   $0990
098a: 3f 6c 0a  call  $0a6c
098d: 5f 01 09  jmp   $0901

; vcmds 80-df - note
0990: 3f 5c 06  call  $065c
0993: f5 00 02  mov   a,$0200+x
0996: d4 89     mov   $89+x,a
0998: fd        mov   y,a
0999: f5 01 02  mov   a,$0201+x
099c: cf        mul   ya
099d: dd        mov   a,y
099e: d0 01     bne   $09a1
09a0: bc        inc   a
09a1: d4 8a     mov   $8a+x,a
09a3: 2f 03     bra   $09a8
09a5: 3f 08 0f  call  $0f08
09a8: 3f b0 0d  call  $0db0
09ab: 3d        inc   x
09ac: 3d        inc   x
09ad: 0b 41     asl   $41
09af: f0 03     beq   $09b4
09b1: 5f f0 08  jmp   $08f0

09b4: e4 53     mov   a,$53
09b6: 68 20     cmp   a,#$20
09b8: b0 04     bcs   $09be
09ba: e8 00     mov   a,#$00
09bc: c4 00     mov   $00,a
09be: e4 4e     mov   a,$4e
09c0: f0 0b     beq   $09cd
09c2: ba 50     movw  ya,$50
09c4: 7a 4c     addw  ya,$4c
09c6: 6e 4e 02  dbnz  $4e,$09cb
09c9: ba 4e     movw  ya,$4e
09cb: da 4c     movw  $4c,ya
09cd: e4 62     mov   a,$62
09cf: f0 15     beq   $09e6
09d1: ba 5e     movw  ya,$5e
09d3: 7a 5a     addw  ya,$5a
09d5: da 5a     movw  $5a,ya
09d7: ba 60     movw  ya,$60
09d9: 7a 5c     addw  ya,$5c
09db: 6e 62 06  dbnz  $62,$09e4
09de: ba 62     movw  ya,$62
09e0: da 5a     movw  $5a,ya
09e2: eb 64     mov   y,$64
09e4: da 5c     movw  $5c,ya
09e6: e4 54     mov   a,$54
09e8: f0 0f     beq   $09f9
09ea: ba 56     movw  ya,$56
09ec: 7a 52     addw  ya,$52
09ee: 8b 54     dec   $54
09f0: d0 02     bne   $09f4
09f2: ba 54     movw  ya,$54
09f4: da 52     movw  $52,ya
09f6: 8f ff 58  mov   $58,#$ff
09f9: cd 00     mov   x,#$00
09fb: 8f 01 41  mov   $41,#$01
09fe: f4 69     mov   a,$69+x
0a00: f0 03     beq   $0a05
0a02: 3f 17 0e  call  $0e17
0a05: 3d        inc   x
0a06: 3d        inc   x
0a07: 0b 41     asl   $41
0a09: d0 f3     bne   $09fe
0a0b: 6f        ret

; vcmd dispatch table
0a0c: dw $0a91		; e0 - set instrument
0a0e: dw $0c1f		; e1 - pan
0a10: dw $0c37		; e2 - pan fade
0a12: dw $0c50		; e3 - vibrato on
0a14: dw $0c5c		; e4 - vibrato off
0a16: dw $0c77		; e5 - master volume
0a18: dw $0c7c		; e6 - master volume fade
0a1a: dw $0c8e		; e7 - tempo
0a1c: dw $0c98		; e8 - tempo fade
0a1e: dw $0caa		; e9 - global transpose
0a20: dw $0cad		; ea - per-voice transpose
0a22: dw $0cb7		; eb - tremolo on
0a24: dw $0cc3		; ec - tremolo off
0a26: dw $0ce4		; ed - volume
0a28: dw $0ced		; ee - volume fade
0a2a: dw $0d0a		; ef - echo vbits/volume
0a2c: dw $0c67		; f0 - vibrato fade
0a2e: dw $0cc6		; f1 - pitch envelope (release)
0a30: dw $0cca		; f2 - pitch envelope (attack)
0a32: dw $0ce0		; f3 - pitch envelope off
0a34: dw $0d06		; f4 - tuning
0a36: dw $0d0a		; f5 - echo vbits/volume
0a38: dw $0d3e		; f6 - disable echo
0a3a: dw $0d45		; f7 - set echo params
0a3c: dw $0d1d		; f8 - echo volume fade
0a3e: dw $0dc0		; f9 - pitch slide
0a40: dw $0dad		; fa - set perc patch base
0a42: dw $0cb1		; fb
0a44: dw $0b29		; fc - set instrument (alternate)
0a46: dw $0c02		; fd
0a48: dw $0c2d		; fe - GAIN on
0a4a: dw $0c31		; ff - GAIN off

; vcmd lengths
0a4c: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0a55: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0a5c: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0a5e: db $03,$03,$01,$01,$01,$03,$00,$00 ; f8-ff

0a6c: 1c        asl   a
0a6d: fd        mov   y,a
0a6e: f6 4d 09  mov   a,$094d+y
0a71: 2d        push  a
0a72: f6 4c 09  mov   a,$094c+y
0a75: 2d        push  a
0a76: dd        mov   a,y
0a77: 5c        lsr   a
0a78: fd        mov   y,a
0a79: f6 ec 09  mov   a,$09ec+y
0a7c: f0 08     beq   $0a86
0a7e: e7 2f     mov   a,($2f+x)
0a80: bb 2f     inc   $2f+x
0a82: d0 02     bne   $0a86
0a84: bb 30     inc   $30+x
0a86: fd        mov   y,a
0a87: 6f        ret

0a88: e7 2f     mov   a,($2f+x)
0a8a: bb 2f     inc   $2f+x
0a8c: d0 02     bne   $0a90
0a8e: bb 30     inc   $30+x
0a90: 6f        ret

; vcmd e0 - set instrument
0a91: d5 11 02  mov   $0211+x,a
0a94: fd        mov   y,a
0a95: ad ff     cmp   y,#$ff
0a97: f0 0a     beq   $0aa3
0a99: 10 1a     bpl   $0ab5
0a9b: 80        setc
0a9c: a8 ca     sbc   a,#$ca
0a9e: 60        clrc
0a9f: 84 59     adc   a,$59
0aa1: 2f 12     bra   $0ab5
0aa3: 3f 7e 0a  call  $0a7e
0aa6: 28 1f     and   a,#$1f
0aa8: 38 20 43  and   $43,#$20
0aab: 0e 43 00  tset1 $0043
0aae: 09 41 44  or    ($44),($41)
0ab1: e8 13     mov   a,#$13
0ab3: 2f 07     bra   $0abc
0ab5: 2d        push  a
0ab6: e4 41     mov   a,$41
0ab8: 4e 44 00  tclr1 $0044
0abb: ae        pop   a
0abc: c5 86 03  mov   $0386,a
0abf: 8d 02     mov   y,#$02
0ac1: cf        mul   ya
0ac2: da 14     movw  $14,ya
0ac4: 60        clrc
0ac5: 98 00 14  adc   $14,#$00
0ac8: 98 15 15  adc   $15,#$15
0acb: e4 1a     mov   a,$1a
0acd: 24 41     and   a,$41
0acf: d0 57     bne   $0b28
0ad1: e5 86 03  mov   a,$0386
0ad4: 1c        asl   a
0ad5: 1c        asl   a
0ad6: c9 88 03  mov   $0388,x
0ad9: 5d        mov   x,a
0ada: 8d 01     mov   y,#$01
0adc: f7 14     mov   a,($14)+y
0ade: 2d        push  a
0adf: dc        dec   y
0ae0: f7 14     mov   a,($14)+y
0ae2: ee        pop   y
0ae3: da 14     movw  $14,ya
0ae5: e4 14     mov   a,$14
0ae7: 60        clrc
0ae8: 88 04     adc   a,#$04
0aea: d5 00 14  mov   $1400+x,a
0aed: e4 15     mov   a,$15
0aef: 88 00     adc   a,#$00
0af1: d5 01 14  mov   $1401+x,a
0af4: 8d 00     mov   y,#$00
0af6: f7 14     mov   a,($14)+y
0af8: 60        clrc
0af9: 95 00 14  adc   a,$1400+x
0afc: d5 02 14  mov   $1402+x,a
0aff: fc        inc   y
0b00: f7 14     mov   a,($14)+y
0b02: 95 01 14  adc   a,$1401+x
0b05: d5 03 14  mov   $1403+x,a
0b08: fc        inc   y
0b09: e9 88 03  mov   x,$0388
0b0c: f7 14     mov   a,($14)+y
0b0e: 5c        lsr   a
0b0f: 5c        lsr   a
0b10: d5 20 02  mov   $0220+x,a
0b13: fc        inc   y
0b14: f7 14     mov   a,($14)+y
0b16: 5c        lsr   a
0b17: 5c        lsr   a
0b18: d5 21 02  mov   $0221+x,a
0b1b: 7d        mov   a,x
0b1c: 9f        xcn   a
0b1d: 5c        lsr   a
0b1e: 08 04     or    a,#$04
0b20: fd        mov   y,a
0b21: e5 86 03  mov   a,$0386
0b24: cb f2     mov   $f2,y
0b26: c4 f3     mov   $f3,a
0b28: 6f        ret

; vcmd fc
0b29: d5 11 02  mov   $0211+x,a
0b2c: fd        mov   y,a
0b2d: 10 40     bpl   $0b6f
0b2f: 80        setc
0b30: a8 ca     sbc   a,#$ca
0b32: c5 86 03  mov   $0386,a
0b35: 1c        asl   a
0b36: 60        clrc
0b37: 85 86 03  adc   a,$0386
0b3a: 1c        asl   a
0b3b: 2d        push  a
0b3c: c9 88 03  mov   $0388,x
0b3f: 7d        mov   a,x
0b40: 9f        xcn   a
0b41: 5c        lsr   a
0b42: 08 05     or    a,#$05
0b44: 5d        mov   x,a
0b45: ee        pop   y
0b46: f6 df 0b  mov   a,$0bdf+y
0b49: d8 f2     mov   $f2,x
0b4b: c4 f3     mov   $f3,a
0b4d: 3d        inc   x
0b4e: f6 e0 0b  mov   a,$0be0+y
0b51: d8 f2     mov   $f2,x
0b53: c4 f3     mov   $f3,a
0b55: 3d        inc   x
0b56: f6 e0 0b  mov   a,$0be0+y
0b59: d8 f2     mov   $f2,x
0b5b: c4 f3     mov   $f3,a
0b5d: f6 e2 0b  mov   a,$0be2+y
0b60: e9 88 03  mov   x,$0388
0b63: 3f 1f 0c  call  $0c1f
0b66: f6 e3 0b  mov   a,$0be3+y
0b69: c5 a0 03  mov   $03a0,a
0b6c: f6 de 0b  mov   a,$0bde+y
0b6f: c5 86 03  mov   $0386,a
0b72: 8d 02     mov   y,#$02
0b74: cf        mul   ya
0b75: da 14     movw  $14,ya
0b77: 60        clrc
0b78: 98 80 14  adc   $14,#$80
0b7b: 98 97 15  adc   $15,#$97
0b7e: e4 1a     mov   a,$1a
0b80: 24 41     and   a,$41
0b82: d0 59     bne   $0bdd
0b84: 8d 01     mov   y,#$01
0b86: f7 14     mov   a,($14)+y
0b88: 2d        push  a
0b89: dc        dec   y
0b8a: f7 14     mov   a,($14)+y
0b8c: ee        pop   y
0b8d: da 14     movw  $14,ya
0b8f: e5 86 03  mov   a,$0386
0b92: 60        clrc
0b93: 88 20     adc   a,#$20
0b95: c5 86 03  mov   $0386,a
0b98: 1c        asl   a
0b99: 1c        asl   a
0b9a: c9 88 03  mov   $0388,x
0b9d: 5d        mov   x,a
0b9e: e4 14     mov   a,$14
0ba0: 60        clrc
0ba1: 88 04     adc   a,#$04
0ba3: d5 00 14  mov   $1400+x,a
0ba6: e4 15     mov   a,$15
0ba8: 88 00     adc   a,#$00
0baa: d5 01 14  mov   $1401+x,a
0bad: 8d 00     mov   y,#$00
0baf: f7 14     mov   a,($14)+y
0bb1: 60        clrc
0bb2: 95 00 14  adc   a,$1400+x
0bb5: d5 02 14  mov   $1402+x,a
0bb8: fc        inc   y
0bb9: f7 14     mov   a,($14)+y
0bbb: 95 01 14  adc   a,$1401+x
0bbe: d5 03 14  mov   $1403+x,a
0bc1: fc        inc   y
0bc2: e9 88 03  mov   x,$0388
0bc5: f7 14     mov   a,($14)+y
0bc7: d5 20 02  mov   $0220+x,a
0bca: fc        inc   y
0bcb: f7 14     mov   a,($14)+y
0bcd: d5 21 02  mov   $0221+x,a
0bd0: 7d        mov   a,x
0bd1: 9f        xcn   a
0bd2: 5c        lsr   a
0bd3: 08 04     or    a,#$04
0bd5: fd        mov   y,a
0bd6: e5 86 03  mov   a,$0386
0bd9: cb f2     mov   $f2,y
0bdb: c4 f3     mov   $f3,a
0bdd: 6f        ret

0bde: db $01,$8f,$e0,$b8,$0a,$a4,$02,$8f
0be6: db $e0,$b8,$0a,$a4,$04,$8f,$e0,$b8
0bee: db $14,$98,$03,$8f,$e0,$b8,$0a,$b0
0bf6: db $05,$8f,$e0,$b8,$08,$98,$06,$8f
0bfe: db $e0,$b8,$0c,$98

; vcmd fd
0c02: 2d        push  a
0c03: 7d        mov   a,x
0c04: 9f        xcn   a
0c05: 5c        lsr   a
0c06: 08 05     or    a,#$05
0c08: fd        mov   y,a
0c09: ae        pop   a
0c0a: cb f2     mov   $f2,y
0c0c: c4 f3     mov   $f3,a
0c0e: fc        inc   y
0c0f: 3f 88 0a  call  $0a88
0c12: cb f2     mov   $f2,y
0c14: c4 f3     mov   $f3,a
0c16: fc        inc   y
0c17: 3f 88 0a  call  $0a88
0c1a: cb f2     mov   $f2,y
0c1c: c4 f3     mov   $f3,a
0c1e: 6f        ret

; vcmd e1 - pan
0c1f: d5 a1 02  mov   $02a1+x,a
0c22: 28 1f     and   a,#$1f
0c24: d5 81 02  mov   $0281+x,a
0c27: e8 00     mov   a,#$00
0c29: d5 80 02  mov   $0280+x,a
0c2c: 6f        ret

; vcmd fe - GAIN on
0c2d: e8 01     mov   a,#$01
0c2f: 2f 02     bra   $0c33
; vcmd ff - GAIN off
0c31: e8 00     mov   a,#$00
0c33: d5 a4 03  mov   $03a4+x,a
0c36: 6f        ret

; vcmd e2 - pan fade
0c37: d4 aa     mov   $aa+x,a
0c39: 2d        push  a
0c3a: 3f 7e 0a  call  $0a7e
0c3d: d5 a0 02  mov   $02a0+x,a
0c40: 80        setc
0c41: b5 81 02  sbc   a,$0281+x
0c44: ce        pop   x
0c45: 3f fb 0d  call  $0dfb
0c48: d5 90 02  mov   $0290+x,a
0c4b: dd        mov   a,y
0c4c: d5 91 02  mov   $0291+x,a
0c4f: 6f        ret

; vcmd e3 - vibrato on
0c50: d5 10 03  mov   $0310+x,a
0c53: 3f 7e 0a  call  $0a7e
0c56: d5 01 03  mov   $0301+x,a
0c59: 3f 7e 0a  call  $0a7e
; vcmd e4 - vibrato off
0c5c: d4 ca     mov   $ca+x,a
0c5e: d5 21 03  mov   $0321+x,a
0c61: e8 00     mov   a,#$00
0c63: d5 11 03  mov   $0311+x,a
0c66: 6f        ret

; vcmd f0 - vibrato fade
0c67: d5 11 03  mov   $0311+x,a
0c6a: 2d        push  a
0c6b: 8d 00     mov   y,#$00
0c6d: f4 ca     mov   a,$ca+x
0c6f: ce        pop   x
0c70: 9e        div   ya,x
0c71: f8 42     mov   x,$42
0c73: d5 20 03  mov   $0320+x,a
0c76: 6f        ret

; vcmd e5 - master volume
0c77: e8 00     mov   a,#$00
0c79: da 52     movw  $52,ya
0c7b: 6f        ret

; vcmd e6 - master volume fade
0c7c: c4 54     mov   $54,a
0c7e: 3f 7e 0a  call  $0a7e
0c81: c4 55     mov   $55,a
0c83: 80        setc
0c84: a4 53     sbc   a,$53
0c86: f8 54     mov   x,$54
0c88: 3f fb 0d  call  $0dfb
0c8b: da 56     movw  $56,ya
0c8d: 6f        ret

; vcmd e7 - tempo
0c8e: e5 8b 03  mov   a,$038b
0c91: d0 04     bne   $0c97
0c93: e8 00     mov   a,#$00
0c95: da 4c     movw  $4c,ya
0c97: 6f        ret

; vcmd e8 - tempo fade
0c98: c4 4e     mov   $4e,a
0c9a: 3f 7e 0a  call  $0a7e
0c9d: c4 4f     mov   $4f,a
0c9f: 80        setc
0ca0: a4 4d     sbc   a,$4d
0ca2: f8 4e     mov   x,$4e
0ca4: 3f fb 0d  call  $0dfb
0ca7: da 50     movw  $50,ya
0ca9: 6f        ret

; vcmd e9 - global transpose
0caa: c4 4a     mov   $4a,a
0cac: 6f        ret

; vcmd ea - per-voice transpose
0cad: d5 41 03  mov   $0341+x,a
0cb0: 6f        ret

; vcmd fb
0cb1: d4 79     mov   $79+x,a
0cb3: d5 8d 03  mov   $038d+x,a
0cb6: 6f        ret

; vcmd eb - tremolo on
0cb7: d5 40 03  mov   $0340+x,a
0cba: 3f 7e 0a  call  $0a7e
0cbd: d5 31 03  mov   $0331+x,a
0cc0: 3f 7e 0a  call  $0a7e
; vcmd ec - tremolo off
0cc3: d4 da     mov   $da+x,a
0cc5: 6f        ret

; vcmd f1 - pitch envelope (release)
0cc6: e8 01     mov   a,#$01
0cc8: 2f 02     bra   $0ccc
; vcmd f2 - pitch envelope (attack)
0cca: e8 00     mov   a,#$00
0ccc: d5 f0 02  mov   $02f0+x,a
0ccf: dd        mov   a,y
0cd0: d5 e1 02  mov   $02e1+x,a
0cd3: 3f 7e 0a  call  $0a7e
0cd6: d5 e0 02  mov   $02e0+x,a
0cd9: 3f 7e 0a  call  $0a7e
0cdc: d5 f1 02  mov   $02f1+x,a
0cdf: 6f        ret

; vcmd f3 - pitch envelope off
0ce0: d5 e0 02  mov   $02e0+x,a
0ce3: 6f        ret

; vcmd ed - volume
0ce4: d5 51 02  mov   $0251+x,a
0ce7: e8 00     mov   a,#$00
0ce9: d5 50 02  mov   $0250+x,a
0cec: 6f        ret

; vcmd ee - volume fade
0ced: d4 a9     mov   $a9+x,a
0cef: 2d        push  a
0cf0: 3f 7e 0a  call  $0a7e
0cf3: d5 70 02  mov   $0270+x,a
0cf6: 80        setc
0cf7: b5 51 02  sbc   a,$0251+x
0cfa: ce        pop   x
0cfb: 3f fb 0d  call  $0dfb
0cfe: d5 60 02  mov   $0260+x,a
0d01: dd        mov   a,y
0d02: d5 61 02  mov   $0261+x,a
0d05: 6f        ret

; vcmd f4 - tuning
0d06: d5 d1 02  mov   $02d1+x,a
0d09: 6f        ret

; vcmd ef/f5 - echo vbits/volume
0d0a: c4 45     mov   $45,a
0d0c: 3f 7e 0a  call  $0a7e
0d0f: e8 00     mov   a,#$00
0d11: da 5a     movw  $5a,ya
0d13: 3f 7e 0a  call  $0a7e
0d16: e8 00     mov   a,#$00
0d18: da 5c     movw  $5c,ya
0d1a: b2 43     clr5  $43
0d1c: 6f        ret

; vcmd f8 - echo volume fade
0d1d: c4 62     mov   $62,a
0d1f: 3f 7e 0a  call  $0a7e
0d22: c4 63     mov   $63,a
0d24: 80        setc
0d25: a4 5b     sbc   a,$5b
0d27: f8 62     mov   x,$62
0d29: 3f fb 0d  call  $0dfb
0d2c: da 5e     movw  $5e,ya
0d2e: 3f 7e 0a  call  $0a7e
0d31: c4 64     mov   $64,a
0d33: 80        setc
0d34: a4 5d     sbc   a,$5d
0d36: f8 62     mov   x,$62
0d38: 3f fb 0d  call  $0dfb
0d3b: da 60     movw  $60,ya
0d3d: 6f        ret

; vcmd f6 - disable echo
0d3e: da 5a     movw  $5a,ya
0d40: da 5c     movw  $5c,ya
0d42: a2 43     set5  $43
0d44: 6f        ret

; vcmd f7 - set echo params
0d45: 3f 67 0d  call  $0d67
0d48: 3f 7e 0a  call  $0a7e
0d4b: c4 49     mov   $49,a
0d4d: 3f 7e 0a  call  $0a7e
0d50: 8d 08     mov   y,#$08
0d52: cf        mul   ya
0d53: 5d        mov   x,a
0d54: 8d 0f     mov   y,#$0f
0d56: f5 bb 10  mov   a,$10bb+x
0d59: 3f 70 07  call  $0770
0d5c: 3d        inc   x
0d5d: dd        mov   a,y
0d5e: 60        clrc
0d5f: 88 10     adc   a,#$10
0d61: fd        mov   y,a
0d62: 10 f2     bpl   $0d56
0d64: f8 42     mov   x,$42
0d66: 6f        ret

0d67: c4 48     mov   $48,a
0d69: 8d 7d     mov   y,#$7d
0d6b: cc f2 00  mov   $00f2,y
0d6e: e5 f3 00  mov   a,$00f3
0d71: 64 48     cmp   a,$48
0d73: f0 2b     beq   $0da0
0d75: 28 0f     and   a,#$0f
0d77: 48 ff     eor   a,#$ff
0d79: f3 47 03  bbc7  $47,$0d7f
0d7c: 60        clrc
0d7d: 84 47     adc   a,$47
0d7f: c4 47     mov   $47,a
0d81: 8d 04     mov   y,#$04
0d83: f6 bf 04  mov   a,$04bf+y
0d86: c5 f2 00  mov   $00f2,a
0d89: e8 00     mov   a,#$00
0d8b: c5 f3 00  mov   $00f3,a
0d8e: fe f3     dbnz  y,$0d83
0d90: e4 43     mov   a,$43
0d92: 08 20     or    a,#$20
0d94: 8d 6c     mov   y,#$6c
0d96: 3f 70 07  call  $0770
0d99: e4 48     mov   a,$48
0d9b: 8d 7d     mov   y,#$7d
0d9d: 3f 70 07  call  $0770
0da0: 1c        asl   a
0da1: 1c        asl   a
0da2: 1c        asl   a
0da3: 48 ff     eor   a,#$ff
0da5: 80        setc
0da6: 88 f8     adc   a,#$f8
0da8: 8d 6d     mov   y,#$6d
0daa: 5f 70 07  jmp   $0770

; vcmd fa - set perc patch base
0dad: c4 59     mov   $59,a
0daf: 6f        ret

0db0: f4 b9     mov   a,$b9+x
0db2: d0 36     bne   $0dea
0db4: e7 2f     mov   a,($2f+x)
0db6: 68 f9     cmp   a,#$f9
0db8: d0 30     bne   $0dea
0dba: 3f 80 0a  call  $0a80
0dbd: 3f 7e 0a  call  $0a7e
; vcmd f9 - pitch slide
0dc0: d4 ba     mov   $ba+x,a
0dc2: 3f 7e 0a  call  $0a7e
0dc5: d4 b9     mov   $b9+x,a
0dc7: 3f 7e 0a  call  $0a7e
0dca: 60        clrc
0dcb: 84 4a     adc   a,$4a
0dcd: 95 41 03  adc   a,$0341+x
0dd0: 95 50 03  adc   a,$0350+x
0dd3: 28 7f     and   a,#$7f
0dd5: d5 d0 02  mov   $02d0+x,a
0dd8: 80        setc
0dd9: b5 b1 02  sbc   a,$02b1+x
0ddc: fb b9     mov   y,$b9+x
0dde: 6d        push  y
0ddf: ce        pop   x
0de0: 3f fb 0d  call  $0dfb
0de3: d5 c0 02  mov   $02c0+x,a
0de6: dd        mov   a,y
0de7: d5 c1 02  mov   $02c1+x,a
0dea: e8 00     mov   a,#$00
0dec: d5 50 03  mov   $0350+x,a
0def: 6f        ret

0df0: f5 b1 02  mov   a,$02b1+x
0df3: c4 11     mov   $11,a
0df5: f5 b0 02  mov   a,$02b0+x
0df8: c4 10     mov   $10,a
0dfa: 6f        ret

0dfb: ed        notc
0dfc: 6b 12     ror   $12
0dfe: 10 03     bpl   $0e03
0e00: 48 ff     eor   a,#$ff
0e02: bc        inc   a
0e03: 8d 00     mov   y,#$00
0e05: 9e        div   ya,x
0e06: 2d        push  a
0e07: e8 00     mov   a,#$00
0e09: 9e        div   ya,x
0e0a: ee        pop   y
0e0b: f8 42     mov   x,$42
0e0d: f3 12 06  bbc7  $12,$0e16
0e10: da 14     movw  $14,ya
0e12: ba 0e     movw  ya,$0e
0e14: 9a 14     subw  ya,$14
0e16: 6f        ret

0e17: f4 a9     mov   a,$a9+x
0e19: f0 09     beq   $0e24
0e1b: e8 50     mov   a,#$50
0e1d: 8d 02     mov   y,#$02
0e1f: 9b a9     dec   $a9+x
0e21: 3f d4 0e  call  $0ed4
0e24: fb da     mov   y,$da+x
0e26: f0 23     beq   $0e4b
0e28: f5 40 03  mov   a,$0340+x
0e2b: de d9 1b  cbne  $d9+x,$0e49
0e2e: 09 41 58  or    ($58),($41)
0e31: f5 30 03  mov   a,$0330+x
0e34: 10 07     bpl   $0e3d
0e36: fc        inc   y
0e37: d0 04     bne   $0e3d
0e39: e8 80     mov   a,#$80
0e3b: 2f 04     bra   $0e41
0e3d: 60        clrc
0e3e: 95 31 03  adc   a,$0331+x
0e41: d5 30 03  mov   $0330+x,a
0e44: 3f 97 10  call  $1097
0e47: 2f 07     bra   $0e50
0e49: bb d9     inc   $d9+x
0e4b: e8 ff     mov   a,#$ff
0e4d: 3f a2 10  call  $10a2
0e50: f4 aa     mov   a,$aa+x
0e52: f0 09     beq   $0e5d
0e54: e8 80     mov   a,#$80
0e56: 8d 02     mov   y,#$02
0e58: 9b aa     dec   $aa+x
0e5a: 3f d4 0e  call  $0ed4
0e5d: e4 41     mov   a,$41
0e5f: 24 58     and   a,$58
0e61: f0 5b     beq   $0ebe
0e63: f5 81 02  mov   a,$0281+x
0e66: fd        mov   y,a
0e67: f5 80 02  mov   a,$0280+x
0e6a: da 10     movw  $10,ya
0e6c: 7d        mov   a,x
0e6d: 9f        xcn   a
0e6e: 5c        lsr   a
0e6f: c4 12     mov   $12,a
0e71: eb 11     mov   y,$11
0e73: e5 a3 03  mov   a,$03a3
0e76: f0 04     beq   $0e7c
0e78: e8 7f     mov   a,#$7f
0e7a: 2f 03     bra   $0e7f
0e7c: f6 c0 0e  mov   a,$0ec0+y
0e7f: 80        setc
0e80: b6 bf 0e  sbc   a,$0ebf+y
0e83: eb 10     mov   y,$10
0e85: cf        mul   ya
0e86: dd        mov   a,y
0e87: eb 11     mov   y,$11
0e89: 2d        push  a
0e8a: e5 a3 03  mov   a,$03a3
0e8d: f0 05     beq   $0e94
0e8f: ae        pop   a
0e90: e8 78     mov   a,#$78
0e92: 2f 05     bra   $0e99
0e94: ae        pop   a
0e95: 60        clrc
0e96: 96 bf 0e  adc   a,$0ebf+y
0e99: fd        mov   y,a
0e9a: f5 71 02  mov   a,$0271+x
0e9d: cf        mul   ya
0e9e: f5 a1 02  mov   a,$02a1+x
0ea1: 1c        asl   a
0ea2: 13 12 01  bbc0  $12,$0ea6
0ea5: 1c        asl   a
0ea6: dd        mov   a,y
0ea7: 90 03     bcc   $0eac
0ea9: 48 ff     eor   a,#$ff
0eab: bc        inc   a
0eac: eb 12     mov   y,$12
0eae: 3f 68 07  call  $0768
0eb1: 8d 14     mov   y,#$14
0eb3: e8 00     mov   a,#$00
0eb5: 9a 10     subw  ya,$10
0eb7: da 10     movw  $10,ya
0eb9: ab 12     inc   $12
0ebb: 33 12 b3  bbc1  $12,$0e71
0ebe: 6f        ret

0ebf: 00        nop
0ec0: 01        tcall 0
0ec1: 03 07 0d  bbs0  $07,$0ed1
0ec4: 15 1e 29  or    a,$291e+x
0ec7: 34 42     and   a,$42+x
0ec9: 51        tcall 5
0eca: 5e 67 6e  cmp   y,$6e67
0ecd: 73 77 7a  bbc3  $77,$0f4a
0ed0: 7c        ror   a
0ed1: 7d        mov   a,x
0ed2: 7e 7f     cmp   y,$7f
0ed4: 09 41 58  or    ($58),($41)
0ed7: da 14     movw  $14,ya
0ed9: da 16     movw  $16,ya
0edb: 4d        push  x
0edc: ee        pop   y
0edd: 60        clrc
0ede: d0 0a     bne   $0eea
0ee0: 98 1f 16  adc   $16,#$1f
0ee3: e8 00     mov   a,#$00
0ee5: d7 14     mov   ($14)+y,a
0ee7: fc        inc   y
0ee8: 2f 09     bra   $0ef3
0eea: 98 10 16  adc   $16,#$10
0eed: 3f f1 0e  call  $0ef1
0ef0: fc        inc   y
0ef1: f7 14     mov   a,($14)+y
0ef3: 97 16     adc   a,($16)+y
0ef5: d7 14     mov   ($14)+y,a
0ef7: 6f        ret

0ef8: fc        inc   y
0ef9: f7 14     mov   a,($14)+y
0efb: 2d        push  a
0efc: fc        inc   y
0efd: f7 14     mov   a,($14)+y
0eff: c4 15     mov   $15,a
0f01: ae        pop   a
0f02: c4 14     mov   $14,a
0f04: 8d 00     mov   y,#$00
0f06: 2f 16     bra   $0f1e
0f08: e8 01     mov   a,#$01
0f0a: 74 89     cmp   a,$89+x
0f0c: f0 03     beq   $0f11
0f0e: 5f a3 0f  jmp   $0fa3

0f11: e8 00     mov   a,#$00
0f13: c5 9e 03  mov   $039e,a
0f16: f4 2f     mov   a,$2f+x
0f18: fb 30     mov   y,$30+x
0f1a: da 14     movw  $14,ya
0f1c: 8d 00     mov   y,#$00
0f1e: f7 14     mov   a,($14)+y
0f20: f0 18     beq   $0f3a
0f22: 30 05     bmi   $0f29
0f24: fc        inc   y
0f25: f7 14     mov   a,($14)+y
0f27: 10 fb     bpl   $0f24
0f29: 68 c8     cmp   a,#$c8
0f2b: f0 76     beq   $0fa3
0f2d: 68 e0     cmp   a,#$e0
0f2f: 90 6b     bcc   $0f9c
0f31: 6d        push  y
0f32: fd        mov   y,a
0f33: ae        pop   a
0f34: 96 6c 09  adc   a,$096c+y
0f37: fd        mov   y,a
0f38: 2f e4     bra   $0f1e
0f3a: fc        inc   y
0f3b: f7 14     mov   a,($14)+y
0f3d: f0 06     beq   $0f45
0f3f: 68 01     cmp   a,#$01
0f41: f0 59     beq   $0f9c
0f43: 2f b3     bra   $0ef8
0f45: f4 20     mov   a,$20+x
0f47: 2d        push  a
0f48: f4 1f     mov   a,$1f+x
0f4a: ee        pop   y
0f4b: da 14     movw  $14,ya
0f4d: ec 9e 03  mov   y,$039e
0f50: f7 14     mov   a,($14)+y
0f52: 2d        push  a
0f53: fc        inc   y
0f54: f7 14     mov   a,($14)+y
0f56: fc        inc   y
0f57: cc 9e 03  mov   $039e,y
0f5a: fd        mov   y,a
0f5b: ae        pop   a
0f5c: da 14     movw  $14,ya
0f5e: 8d 00     mov   y,#$00
0f60: e4 15     mov   a,$15
0f62: f0 38     beq   $0f9c
0f64: 68 ff     cmp   a,#$ff
0f66: f0 06     beq   $0f6e
0f68: 68 01     cmp   a,#$01
0f6a: f0 15     beq   $0f81
0f6c: 2f b0     bra   $0f1e
0f6e: 4d        push  x
0f6f: ee        pop   y
0f70: f7 1c     mov   a,($1c)+y
0f72: 2d        push  a
0f73: fc        inc   y
0f74: f7 1c     mov   a,($1c)+y
0f76: fd        mov   y,a
0f77: ae        pop   a
0f78: da 14     movw  $14,ya
0f7a: 8d 00     mov   y,#$00
0f7c: cc 9e 03  mov   $039e,y
0f7f: 2f cf     bra   $0f50
0f81: f4 20     mov   a,$20+x
0f83: 2d        push  a
0f84: f4 1f     mov   a,$1f+x
0f86: ee        pop   y
0f87: da 14     movw  $14,ya
0f89: 8d 02     mov   y,#$02
0f8b: f7 14     mov   a,($14)+y
0f8d: 2d        push  a
0f8e: fc        inc   y
0f8f: f7 14     mov   a,($14)+y
0f91: fd        mov   y,a
0f92: ae        pop   a
0f93: da 14     movw  $14,ya
0f95: 8d 00     mov   y,#$00
0f97: cc 9e 03  mov   $039e,y
0f9a: 2f b4     bra   $0f50
0f9c: e4 41     mov   a,$41
0f9e: 8d 5c     mov   y,#$5c
0fa0: 3f 68 07  call  $0768
0fa3: f2 13     clr7  $13
0fa5: f4 b9     mov   a,$b9+x
0fa7: f0 13     beq   $0fbc
0fa9: f4 ba     mov   a,$ba+x
0fab: f0 04     beq   $0fb1
0fad: 9b ba     dec   $ba+x
0faf: 2f 0b     bra   $0fbc
0fb1: e2 13     set7  $13
0fb3: e8 b0     mov   a,#$b0
0fb5: 8d 02     mov   y,#$02
0fb7: 9b b9     dec   $b9+x
0fb9: 3f d7 0e  call  $0ed7
0fbc: 3f f0 0d  call  $0df0
0fbf: f4 ca     mov   a,$ca+x
0fc1: f0 4a     beq   $100d
0fc3: f5 10 03  mov   a,$0310+x
0fc6: de c9 42  cbne  $c9+x,$100b
0fc9: f5 9a 00  mov   a,$009a+x
0fcc: 75 11 03  cmp   a,$0311+x
0fcf: d0 05     bne   $0fd6
0fd1: f5 21 03  mov   a,$0321+x
0fd4: 2f 0b     bra   $0fe1
0fd6: bb 9a     inc   $9a+x
0fd8: fd        mov   y,a
0fd9: f0 02     beq   $0fdd
0fdb: f4 ca     mov   a,$ca+x
0fdd: 60        clrc
0fde: 95 20 03  adc   a,$0320+x
0fe1: d4 ca     mov   $ca+x,a
0fe3: f5 00 03  mov   a,$0300+x
0fe6: 60        clrc
0fe7: 95 01 03  adc   a,$0301+x
0fea: d5 00 03  mov   $0300+x,a
0fed: c4 12     mov   $12,a
0fef: 1c        asl   a
0ff0: 1c        asl   a
0ff1: 90 02     bcc   $0ff5
0ff3: 48 ff     eor   a,#$ff
0ff5: fd        mov   y,a
0ff6: f4 ca     mov   a,$ca+x
0ff8: 68 f1     cmp   a,#$f1
0ffa: 90 05     bcc   $1001
0ffc: 28 0f     and   a,#$0f
0ffe: cf        mul   ya
0fff: 2f 04     bra   $1005
1001: cf        mul   ya
1002: dd        mov   a,y
1003: 8d 00     mov   y,#$00
1005: 3f 82 10  call  $1082
1008: 5f e5 06  jmp   $06e5

100b: bb c9     inc   $c9+x
100d: e3 13 f8  bbs7  $13,$1008
1010: 6f        ret

1011: f2 13     clr7  $13
1013: f4 da     mov   a,$da+x
1015: f0 09     beq   $1020
1017: f5 40 03  mov   a,$0340+x
101a: de d9 03  cbne  $d9+x,$1020
101d: 3f 8a 10  call  $108a
1020: f5 81 02  mov   a,$0281+x
1023: fd        mov   y,a
1024: f5 80 02  mov   a,$0280+x
1027: da 10     movw  $10,ya
1029: f4 aa     mov   a,$aa+x
102b: f0 0a     beq   $1037
102d: f5 91 02  mov   a,$0291+x
1030: fd        mov   y,a
1031: f5 90 02  mov   a,$0290+x
1034: 3f 6c 10  call  $106c
1037: f3 13 03  bbc7  $13,$103d
103a: 3f 6c 0e  call  $0e6c
103d: f2 13     clr7  $13
103f: 3f f0 0d  call  $0df0
1042: f4 b9     mov   a,$b9+x
1044: f0 0e     beq   $1054
1046: f4 ba     mov   a,$ba+x
1048: d0 0a     bne   $1054
104a: f5 c1 02  mov   a,$02c1+x
104d: fd        mov   y,a
104e: f5 c0 02  mov   a,$02c0+x
1051: 3f 6c 10  call  $106c
1054: f4 ca     mov   a,$ca+x
1056: f0 b5     beq   $100d
1058: f5 10 03  mov   a,$0310+x
105b: de c9 af  cbne  $c9+x,$100d
105e: eb 4b     mov   y,$4b
1060: f5 01 03  mov   a,$0301+x
1063: cf        mul   ya
1064: dd        mov   a,y
1065: 60        clrc
1066: 95 00 03  adc   a,$0300+x
1069: 5f ed 0f  jmp   $0fed

106c: e2 13     set7  $13
106e: cb 12     mov   $12,y
1070: 3f 0d 0e  call  $0e0d
1073: 6d        push  y
1074: eb 4b     mov   y,$4b
1076: cf        mul   ya
1077: cb 14     mov   $14,y
1079: 8f 00 15  mov   $15,#$00
107c: eb 4b     mov   y,$4b
107e: ae        pop   a
107f: cf        mul   ya
1080: 7a 14     addw  ya,$14
1082: 3f 0d 0e  call  $0e0d
1085: 7a 10     addw  ya,$10
1087: da 10     movw  $10,ya
1089: 6f        ret

108a: e2 13     set7  $13
108c: eb 4b     mov   y,$4b
108e: f5 31 03  mov   a,$0331+x
1091: cf        mul   ya
1092: dd        mov   a,y
1093: 60        clrc
1094: 95 30 03  adc   a,$0330+x
1097: 1c        asl   a
1098: 90 02     bcc   $109c
109a: 48 ff     eor   a,#$ff
109c: fb da     mov   y,$da+x
109e: cf        mul   ya
109f: dd        mov   a,y
10a0: 48 ff     eor   a,#$ff
10a2: eb 53     mov   y,$53
10a4: cf        mul   ya
10a5: f5 10 02  mov   a,$0210+x
10a8: cf        mul   ya
10a9: f5 51 02  mov   a,$0251+x
10ac: cf        mul   ya
10ad: 3e 66     cmp   x,$66
10af: b0 03     bcs   $10b4
10b1: e4 65     mov   a,$65
10b3: cf        mul   ya
10b4: dd        mov   a,y
10b5: cf        mul   ya
10b6: dd        mov   a,y
10b7: d5 71 02  mov   $0271+x,a
10ba: 6f        ret


10bb: db $7f,$00,$00,$00,$00,$00,$00,$00
10c3: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
10cb: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
10d3: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
10dd: db $fc,$e5,$cb,$b2,$98,$7f,$65,$33
10e3: db $19,$32,$4c,$65,$72,$7f,$8c,$98
10ed: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

10f3: e4 66     mov   a,$66
10f5: f0 09     beq   $1100
10f7: 68 10     cmp   a,#$10
10f9: f0 bf     beq   $10ba
10fb: 80        setc
10fc: a8 02     sbc   a,#$02
10fe: c4 66     mov   $66,a
1100: e5 60 03  mov   a,$0360
1103: 30 17     bmi   $111c
1105: fd        mov   y,a
1106: f6 47 12  mov   a,$1247+y
1109: f0 11     beq   $111c
110b: 68 01     cmp   a,#$01
110d: f0 21     beq   $1130
110f: 68 03     cmp   a,#$03
1111: f0 1d     beq   $1130
1113: e5 60 03  mov   a,$0360
1116: 60        clrc
1117: 88 80     adc   a,#$80
1119: c5 60 03  mov   $0360,a
111c: cd 0e     mov   x,#$0e
111e: d8 68     mov   $68,x
1120: f5 75 03  mov   a,$0375+x
1123: 30 05     bmi   $112a
1125: 65 60 03  cmp   a,$0360
1128: f0 39     beq   $1163
112a: 1d        dec   x
112b: 1d        dec   x
112c: 3e 66     cmp   x,$66
112e: d0 f0     bne   $1120
1130: cd 0e     mov   x,#$0e
1132: d8 68     mov   $68,x
1134: e8 80     mov   a,#$80
1136: c4 67     mov   $67,a
1138: f5 75 03  mov   a,$0375+x
113b: 30 0a     bmi   $1147
113d: f4 89     mov   a,$89+x
113f: 64 67     cmp   a,$67
1141: b0 04     bcs   $1147
1143: c4 67     mov   $67,a
1145: d8 68     mov   $68,x
1147: 1d        dec   x
1148: 1d        dec   x
1149: 3e 66     cmp   x,$66
114b: d0 eb     bne   $1138
114d: f8 68     mov   x,$68
114f: e5 60 03  mov   a,$0360
1152: 30 0f     bmi   $1163
1154: fd        mov   y,a
1155: f6 48 12  mov   a,$1248+y
1158: 68 03     cmp   a,#$03
115a: d0 07     bne   $1163
115c: e4 67     mov   a,$67
115e: 68 50     cmp   a,#$50
1160: 90 01     bcc   $1163
1162: 6f        ret

1163: e5 60 03  mov   a,$0360
1166: 10 34     bpl   $119c
1168: c5 86 03  mov   $0386,a
116b: 4d        push  x
116c: e9 9f 03  mov   x,$039f
116f: f0 20     beq   $1191
1171: e8 00     mov   a,#$00
1173: d4 69     mov   $69+x,a
1175: d4 6a     mov   $6a+x,a
1177: d5 75 03  mov   $0375+x,a
117a: e8 01     mov   a,#$01
117c: 1c        asl   a
117d: 1d        dec   x
117e: 1d        dec   x
117f: d0 fb     bne   $117c
1181: c5 87 03  mov   $0387,a
1184: 8d 5c     mov   y,#$5c
1186: cb f2     mov   $f2,y
1188: e4 f3     mov   a,$f3
118a: 05 87 03  or    a,$0387
118d: cb f2     mov   $f2,y
118f: c4 f3     mov   $f3,a
1191: ce        pop   x
1192: e5 86 03  mov   a,$0386
1195: 28 7f     and   a,#$7f
1197: f0 73     beq   $120c
1199: c9 9f 03  mov   $039f,x
119c: 1c        asl   a
119d: f0 6d     beq   $120c
119f: fd        mov   y,a
11a0: f6 14 12  mov   a,$1214+y
11a3: d4 2f     mov   $2f+x,a
11a5: f6 15 12  mov   a,$1215+y
11a8: d4 30     mov   $30+x,a
11aa: e8 01     mov   a,#$01
11ac: d4 69     mov   $69+x,a
11ae: d4 6a     mov   $6a+x,a
11b0: e5 60 03  mov   a,$0360
11b3: d5 75 03  mov   $0375+x,a
11b6: 7d        mov   a,x
11b7: c9 88 03  mov   $0388,x
11ba: e8 01     mov   a,#$01
11bc: 1c        asl   a
11bd: 1d        dec   x
11be: 1d        dec   x
11bf: d0 fb     bne   $11bc
11c1: c5 87 03  mov   $0387,a
11c4: 8d 5c     mov   y,#$5c
11c6: cb f2     mov   $f2,y
11c8: e4 f3     mov   a,$f3
11ca: 05 87 03  or    a,$0387
11cd: cb f2     mov   $f2,y
11cf: c4 f3     mov   $f3,a
11d1: e9 88 03  mov   x,$0388
11d4: e5 61 03  mov   a,$0361
11d7: d5 51 02  mov   $0251+x,a
11da: e5 8a 03  mov   a,$038a
11dd: d5 41 03  mov   $0341+x,a
11e0: e5 62 03  mov   a,$0362
11e3: 3f 1f 0c  call  $0c1f
11e6: d5 11 02  mov   $0211+x,a
11e9: d5 d1 02  mov   $02d1+x,a
11ec: d5 e0 02  mov   $02e0+x,a
11ef: d4 ca     mov   $ca+x,a
11f1: d4 da     mov   $da+x,a
11f3: f5 11 02  mov   a,$0211+x
11f6: d0 05     bne   $11fd
11f8: e8 00     mov   a,#$00
11fa: 3f 29 0b  call  $0b29
11fd: e8 00     mov   a,#$00
11ff: d4 99     mov   $99+x,a
1201: d4 a9     mov   $a9+x,a
1203: d4 aa     mov   $aa+x,a
1205: e8 02     mov   a,#$02
1207: d5 00 02  mov   $0200+x,a
120a: d4 89     mov   $89+x,a
120c: e4 66     mov   a,$66
120e: f0 05     beq   $1215
1210: 60        clrc
1211: 88 02     adc   a,#$02
1213: c4 66     mov   $66,a
1215: 6f        ret