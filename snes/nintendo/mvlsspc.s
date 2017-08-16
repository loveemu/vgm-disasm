; Marvelous: Mouhitotsu no Takarajima - loveemu labo
; Disassembler: spcdas v0.01

0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 e0     cmp   x,#$e0
040a: d0 fb     bne   $0407
040c: cd 00     mov   x,#$00
040e: 3d        inc   x
040f: d5 4f 02  mov   $024f+x,a
0412: c8 30     cmp   x,#$30
0414: d0 f8     bne   $040e
0416: cd 00     mov   x,#$00
0418: 3d        inc   x
0419: d5 8f 03  mov   $038f+x,a
041c: c8 70     cmp   x,#$70
041e: d0 f8     bne   $0418
0420: cd 00     mov   x,#$00
0422: 3d        inc   x
0423: d5 1f 01  mov   $011f+x,a
0426: c8 a0     cmp   x,#$a0
0428: d0 f8     bne   $0422
042a: cd 00     mov   x,#$00
042c: 8f 00 d2  mov   $d2,#$00
042f: 8f df d3  mov   $d3,#$df
0432: c7 d2     mov   ($d2+x),a
0434: ab d2     inc   $d2
0436: d0 fa     bne   $0432
0438: ab d3     inc   $d3
043a: 78 ff d3  cmp   $d3,#$ff
043d: d0 f3     bne   $0432
043f: bc        inc   a
0440: 3f c5 0b  call  $0bc5
0443: a2 48     set5  $48
0445: 3f 10 08  call  $0810
0448: e8 5c     mov   a,#$5c
044a: 8d 5d     mov   y,#$5d
044c: 3f 49 06  call  $0649
044f: e8 f0     mov   a,#$f0
0451: c5 f1 00  mov   $00f1,a
0454: e8 10     mov   a,#$10
0456: c5 fa 00  mov   $00fa,a
0459: c4 53     mov   $53,a
045b: e8 01     mov   a,#$01
045d: c5 f1 00  mov   $00f1,a
0460: e8 02     mov   a,#$02
0462: 3f c5 0b  call  $0bc5
0465: 8f 3c 4e  mov   $4e,#$3c
0468: e8 00     mov   a,#$00
046a: 3f ae 0b  call  $0bae
046d: b2 48     clr5  $48
046f: e8 ff     mov   a,#$ff
0471: c5 70 02  mov   $0270,a
0474: c5 71 02  mov   $0271,a
0477: c5 7d 02  mov   $027d,a
047a: c5 7e 02  mov   $027e,a
047d: c5 7f 02  mov   $027f,a
0480: e8 02     mov   a,#$02
0482: c5 79 02  mov   $0279,a
0485: e8 00     mov   a,#$00
0487: c4 29     mov   $29,a
0489: c5 73 02  mov   $0273,a
048c: c5 74 02  mov   $0274,a
048f: 3f ae 10  call  $10ae
0492: 3f 29 11  call  $1129
0495: e8 ff     mov   a,#$ff
0497: c4 00     mov   $00,a
0499: c4 01     mov   $01,a
049b: c4 02     mov   $02,a
049d: c4 03     mov   $03,a
049f: e8 80     mov   a,#$80
04a1: c4 04     mov   $04,a
04a3: 8d 0a     mov   y,#$0a
04a5: ad 05     cmp   y,#$05
04a7: f0 07     beq   $04b0
04a9: b0 08     bcs   $04b3
04ab: 69 4d 4c  cmp   ($4c),($4d)
04ae: d0 11     bne   $04c1
04b0: e3 4c 0e  bbs7  $4c,$04c1
04b3: f6 99 0f  mov   a,$0f99+y
04b6: c5 f2 00  mov   $00f2,a
04b9: f6 a3 0f  mov   a,$0fa3+y
04bc: 5d        mov   x,a
04bd: e6        mov   a,(x)
04be: c5 f3 00  mov   $00f3,a
04c1: fe e2     dbnz  y,$04a5
04c3: cb 45     mov   $45,y
04c5: cb 46     mov   $46,y
04c7: e4 18     mov   a,$18
04c9: 44 19     eor   a,$19
04cb: 5c        lsr   a
04cc: 5c        lsr   a
04cd: ed        notc
04ce: 6b 18     ror   $18
04d0: 6b 19     ror   $19
04d2: e4 27     mov   a,$27
04d4: 5d        mov   x,a
04d5: bc        inc   a
04d6: 28 07     and   a,#$07
04d8: c4 27     mov   $27,a
04da: e4 18     mov   a,$18
04dc: d5 5c 18  mov   $185c+x,a
04df: ec fd 00  mov   y,$00fd
04e2: f0 fb     beq   $04df
04e4: 6d        push  y
04e5: e8 2c     mov   a,#$2c
04e7: cf        mul   ya
04e8: 60        clrc
04e9: 84 43     adc   a,$43
04eb: c4 43     mov   $43,a
04ed: 90 13     bcc   $0502
04ef: 3f 2e 11  call  $112e
04f2: 3f 70 11  call  $1170
04f5: 3f 28 0f  call  $0f28
04f8: 3f 86 12  call  $1286
04fb: 69 4d 4c  cmp   ($4c),($4d)
04fe: f0 02     beq   $0502
0500: ab 4c     inc   $4c
0502: e4 53     mov   a,$53
0504: ee        pop   y
0505: cf        mul   ya
0506: 60        clrc
0507: 84 51     adc   a,$51
0509: c4 51     mov   $51,a
050b: 90 0b     bcc   $0518
050d: 3f 29 08  call  $0829
0510: cd 00     mov   x,#$00
0512: 3f 43 05  call  $0543
0515: 5f a3 04  jmp   $04a3

0518: e4 04     mov   a,$04
051a: 68 80     cmp   a,#$80
051c: f0 12     beq   $0530
051e: cd 00     mov   x,#$00
0520: 8f 01 47  mov   $47,#$01
0523: f4 31     mov   a,$31+x
0525: f0 03     beq   $052a
0527: 3f 85 0e  call  $0e85
052a: 3d        inc   x
052b: 3d        inc   x
052c: 0b 47     asl   $47
052e: d0 f3     bne   $0523
0530: 5f a3 04  jmp   $04a3

0533: f4 04     mov   a,$04+x
0535: d5 f4 00  mov   $00f4+x,a
0538: f5 f4 00  mov   a,$00f4+x
053b: 75 f4 00  cmp   a,$00f4+x
053e: d0 f8     bne   $0538
0540: d4 6b     mov   $6b+x,a
0542: 6f        ret

0543: e5 7b 02  mov   a,$027b
0546: c5 f4 00  mov   $00f4,a
0549: e5 f4 00  mov   a,$00f4
054c: 65 f4 00  cmp   a,$00f4
054f: d0 f8     bne   $0549
0551: c4 6b     mov   $6b,a
0553: 6f        ret

0554: ad ca     cmp   y,#$ca
0556: 90 05     bcc   $055d
0558: 3f fe 09  call  $09fe
055b: 8d a4     mov   y,#$a4
055d: ad c8     cmp   y,#$c8
055f: b0 e1     bcs   $0542
0561: e4 1a     mov   a,$1a
0563: 24 47     and   a,$47
0565: d0 db     bne   $0542
0567: dd        mov   a,y
0568: 28 7f     and   a,#$7f
056a: 60        clrc
056b: 84 50     adc   a,$50
056d: 60        clrc
056e: 95 f0 02  adc   a,$02f0+x
0571: d5 61 03  mov   $0361+x,a
0574: f5 81 03  mov   a,$0381+x
0577: d5 60 03  mov   $0360+x,a
057a: f5 b1 02  mov   a,$02b1+x
057d: 5c        lsr   a
057e: e8 00     mov   a,#$00
0580: 7c        ror   a
0581: d5 a0 02  mov   $02a0+x,a
0584: e8 00     mov   a,#$00
0586: d4 b0     mov   $b0+x,a
0588: d5 00 01  mov   $0100+x,a
058b: d5 d0 02  mov   $02d0+x,a
058e: d4 c0     mov   $c0+x,a
0590: 09 47 5e  or    ($5e),($47)
0593: 09 47 45  or    ($45),($47)
0596: f5 80 02  mov   a,$0280+x
0599: d4 a0     mov   $a0+x,a
059b: f0 1e     beq   $05bb
059d: f5 81 02  mov   a,$0281+x
05a0: d4 a1     mov   $a1+x,a
05a2: f5 90 02  mov   a,$0290+x
05a5: d0 0a     bne   $05b1
05a7: f5 61 03  mov   a,$0361+x
05aa: 80        setc
05ab: b5 91 02  sbc   a,$0291+x
05ae: d5 61 03  mov   $0361+x,a
05b1: f5 91 02  mov   a,$0291+x
05b4: 60        clrc
05b5: 95 61 03  adc   a,$0361+x
05b8: 3f 2e 0c  call  $0c2e
05bb: 3f 46 0c  call  $0c46
05be: 8d 00     mov   y,#$00
05c0: e4 11     mov   a,$11
05c2: 80        setc
05c3: a8 34     sbc   a,#$34
05c5: b0 09     bcs   $05d0
05c7: e4 11     mov   a,$11
05c9: 80        setc
05ca: a8 13     sbc   a,#$13
05cc: b0 06     bcs   $05d4
05ce: dc        dec   y
05cf: 1c        asl   a
05d0: 7a 10     addw  ya,$10
05d2: da 10     movw  $10,ya
05d4: 4d        push  x
05d5: e4 11     mov   a,$11
05d7: 1c        asl   a
05d8: 8d 00     mov   y,#$00
05da: cd 18     mov   x,#$18
05dc: 9e        div   ya,x
05dd: 5d        mov   x,a
05de: f6 af 0f  mov   a,$0faf+y
05e1: c4 15     mov   $15,a
05e3: f6 ae 0f  mov   a,$0fae+y
05e6: c4 14     mov   $14,a
05e8: f6 b1 0f  mov   a,$0fb1+y
05eb: 2d        push  a
05ec: f6 b0 0f  mov   a,$0fb0+y
05ef: ee        pop   y
05f0: 9a 14     subw  ya,$14
05f2: eb 10     mov   y,$10
05f4: cf        mul   ya
05f5: dd        mov   a,y
05f6: 8d 00     mov   y,#$00
05f8: 7a 14     addw  ya,$14
05fa: cb 15     mov   $15,y
05fc: 1c        asl   a
05fd: 2b 15     rol   $15
05ff: c4 14     mov   $14,a
0601: 2f 04     bra   $0607
0603: 4b 15     lsr   $15
0605: 7c        ror   a
0606: 3d        inc   x
0607: c8 06     cmp   x,#$06
0609: d0 f8     bne   $0603
060b: c4 14     mov   $14,a
060d: ce        pop   x
060e: f5 20 02  mov   a,$0220+x
0611: eb 15     mov   y,$15
0613: cf        mul   ya
0614: da 16     movw  $16,ya
0616: f5 20 02  mov   a,$0220+x
0619: eb 14     mov   y,$14
061b: cf        mul   ya
061c: 6d        push  y
061d: f5 21 02  mov   a,$0221+x
0620: eb 14     mov   y,$14
0622: cf        mul   ya
0623: 7a 16     addw  ya,$16
0625: da 16     movw  $16,ya
0627: f5 21 02  mov   a,$0221+x
062a: eb 15     mov   y,$15
062c: cf        mul   ya
062d: fd        mov   y,a
062e: ae        pop   a
062f: 7a 16     addw  ya,$16
0631: da 16     movw  $16,ya
0633: 7d        mov   a,x
0634: 9f        xcn   a
0635: 5c        lsr   a
0636: 08 02     or    a,#$02
0638: fd        mov   y,a
0639: e4 16     mov   a,$16
063b: 3f 41 06  call  $0641
063e: fc        inc   y
063f: e4 17     mov   a,$17
0641: 2d        push  a
0642: e4 47     mov   a,$47
0644: 24 1a     and   a,$1a
0646: ae        pop   a
0647: d0 06     bne   $064f
0649: cc f2 00  mov   $00f2,y
064c: c5 f3 00  mov   $00f3,a
064f: 6f        ret

0650: 8d 00     mov   y,#$00
0652: f7 40     mov   a,($40)+y
0654: 3a 40     incw  $40
0656: 2d        push  a
0657: f7 40     mov   a,($40)+y
0659: 3a 40     incw  $40
065b: fd        mov   y,a
065c: ae        pop   a
065d: 6f        ret

065e: 5f ab 08  jmp   $08ab

0661: e8 ff     mov   a,#$ff
0663: c5 7f 02  mov   $027f,a
0666: 3f 7d 07  call  $077d
0669: e8 02     mov   a,#$02
066b: 3f c5 0b  call  $0bc5
066e: e8 00     mov   a,#$00
0670: fd        mov   y,a
0671: da 60     movw  $60,ya
0673: da 62     movw  $62,ya
0675: 3f d3 0f  call  $0fd3
0678: e8 ff     mov   a,#$ff
067a: 9c        dec   a
067b: d0 fd     bne   $067a
067d: e8 80     mov   a,#$80
067f: c4 08     mov   $08,a
0681: e8 80     mov   a,#$80
0683: 64 04     cmp   a,$04
0685: d0 14     bne   $069b
0687: e8 ff     mov   a,#$ff
0689: c5 7f 02  mov   $027f,a
068c: e8 00     mov   a,#$00
068e: c5 78 02  mov   $0278,a
0691: e8 06     mov   a,#$06
0693: c5 79 02  mov   $0279,a
0696: 3f 9d 07  call  $079d
0699: 2f c3     bra   $065e
069b: c5 7b 02  mov   $027b,a
069e: c4 d5     mov   $d5,a
06a0: fa 04 22  mov   ($22),($04)
06a3: c4 04     mov   $04,a
06a5: 68 80     cmp   a,#$80
06a7: f0 52     beq   $06fb
06a9: 68 21     cmp   a,#$21
06ab: b0 55     bcs   $0702
06ad: 78 00 29  cmp   $29,#$00
06b0: f0 1c     beq   $06ce
06b2: 68 06     cmp   a,#$06
06b4: d0 0a     bne   $06c0
06b6: 78 0a 22  cmp   $22,#$0a
06b9: d0 05     bne   $06c0
06bb: 8f 01 d7  mov   $d7,#$01
06be: 2f c7     bra   $0687
06c0: 68 0a     cmp   a,#$0a
06c2: d0 0a     bne   $06ce
06c4: 78 06 22  cmp   $22,#$06
06c7: d0 05     bne   $06ce
06c9: 8f 00 d7  mov   $d7,#$00
06cc: 2f b9     bra   $0687
06ce: 1c        asl   a
06cf: 5d        mov   x,a
06d0: f5 67 28  mov   a,$2867+x
06d3: fd        mov   y,a
06d4: f5 66 28  mov   a,$2866+x
06d7: da 40     movw  $40,ya
06d9: 8f 02 0c  mov   $0c,#$02
06dc: e8 00     mov   a,#$00
06de: c5 78 02  mov   $0278,a
06e1: e8 ff     mov   a,#$ff
06e3: c5 7f 02  mov   $027f,a
06e6: c5 79 02  mov   $0279,a
06e9: c5 70 02  mov   $0270,a
06ec: e4 04     mov   a,$04
06ee: 68 10     cmp   a,#$10
06f0: b0 03     bcs   $06f5
06f2: 3f 9d 07  call  $079d
06f5: 3f 29 11  call  $1129
06f8: 3f d4 10  call  $10d4
06fb: e4 1a     mov   a,$1a
06fd: 48 ff     eor   a,#$ff
06ff: 0e 46 00  tset1 $0046
0702: 6f        ret

0703: cd 0e     mov   x,#$0e
0705: 8f 80 47  mov   $47,#$80
0708: e8 ff     mov   a,#$ff
070a: d5 01 03  mov   $0301+x,a
070d: e8 0a     mov   a,#$0a
070f: 3f 57 0a  call  $0a57
0712: d5 11 02  mov   $0211+x,a
0715: d5 81 03  mov   $0381+x,a
0718: d5 f0 02  mov   $02f0+x,a
071b: d5 80 02  mov   $0280+x,a
071e: d4 b1     mov   $b1+x,a
0720: d4 c1     mov   $c1+x,a
0722: 1d        dec   x
0723: 1d        dec   x
0724: 4b 47     lsr   $47
0726: d0 e0     bne   $0708
0728: c4 5a     mov   $5a,a
072a: c4 68     mov   $68,a
072c: c4 54     mov   $54,a
072e: c4 50     mov   $50,a
0730: c4 42     mov   $42,a
0732: c4 5f     mov   $5f,a
0734: 8f c0 59  mov   $59,#$c0
0737: 3f 29 11  call  $1129
073a: 8f 20 53  mov   $53,#$20
073d: 6f        ret

073e: 5f 83 06  jmp   $0683

0741: 5f fb 06  jmp   $06fb

0744: 5f 61 06  jmp   $0661

0747: 5f 03 07  jmp   $0703

074a: 5f 81 06  jmp   $0681

074d: e8 ff     mov   a,#$ff
074f: 8d 5c     mov   y,#$5c
0751: 3f 49 06  call  $0649
0754: e8 00     mov   a,#$00
0756: 8d 2c     mov   y,#$2c
0758: 3f 49 06  call  $0649
075b: e8 00     mov   a,#$00
075d: 8d 3c     mov   y,#$3c
075f: 3f 49 06  call  $0649
0762: e8 00     mov   a,#$00
0764: 8d 4d     mov   y,#$4d
0766: 3f 49 06  call  $0649
0769: 20        clrp
076a: e8 80     mov   a,#$80
076c: c5 f1 00  mov   $00f1,a
076f: e8 20     mov   a,#$20
0771: 8d 6c     mov   y,#$6c
0773: 3f 49 06  call  $0649
0776: 5f c0 ff  jmp   $ffc0

0779: e4 1a     mov   a,$1a
077b: 28 0e     and   a,#$0e
077d: c4 22     mov   $22,a
077f: 8d 5c     mov   y,#$5c
0781: 3f 49 06  call  $0649
0784: 8f 01 23  mov   $23,#$01
0787: cd 00     mov   x,#$00
0789: e4 23     mov   a,$23
078b: 24 22     and   a,$22
078d: f0 05     beq   $0794
078f: e8 02     mov   a,#$02
0791: d5 60 02  mov   $0260+x,a
0794: 0b 23     asl   $23
0796: 3d        inc   x
0797: 3d        inc   x
0798: c8 10     cmp   x,#$10
079a: d0 ed     bne   $0789
079c: 6f        ret

079d: e5 7e 02  mov   a,$027e
07a0: fd        mov   y,a
07a1: e5 7f 02  mov   a,$027f
07a4: cf        mul   ya
07a5: dd        mov   a,y
07a6: c5 70 02  mov   $0270,a
07a9: 6f        ret

07aa: 78 0e 04  cmp   $04,#$0e
07ad: d0 03     bne   $07b2
07af: 5f 76 08  jmp   $0876

07b2: e8 01     mov   a,#$01
07b4: c5 79 02  mov   $0279,a
07b7: e8 00     mov   a,#$00
07b9: 2f 2f     bra   $07ea
07bb: e8 02     mov   a,#$02
07bd: c5 79 02  mov   $0279,a
07c0: e8 e0     mov   a,#$e0
07c2: c5 7e 02  mov   $027e,a
07c5: 2f 1a     bra   $07e1
07c7: e8 06     mov   a,#$06
07c9: c5 79 02  mov   $0279,a
07cc: e8 ff     mov   a,#$ff
07ce: c5 7e 02  mov   $027e,a
07d1: 2f 0e     bra   $07e1
07d3: e8 e0     mov   a,#$e0
07d5: c5 7f 02  mov   $027f,a
07d8: 2f 07     bra   $07e1
07da: e8 ff     mov   a,#$ff
07dc: c5 7f 02  mov   $027f,a
07df: 2f 00     bra   $07e1
07e1: e5 7e 02  mov   a,$027e
07e4: fd        mov   y,a
07e5: e5 7f 02  mov   a,$027f
07e8: cf        mul   ya
07e9: dd        mov   a,y
07ea: c5 70 02  mov   $0270,a
07ed: 5f 76 08  jmp   $0876

07f0: e8 00     mov   a,#$00
07f2: c5 70 02  mov   $0270,a
07f5: e8 02     mov   a,#$02
07f7: c5 79 02  mov   $0279,a
07fa: 5f 76 08  jmp   $0876

07fd: c4 d4     mov   $d4,a
07ff: e4 4a     mov   a,$4a
0801: 24 1a     and   a,$1a
0803: c4 22     mov   $22,a
0805: e4 1a     mov   a,$1a
0807: 48 ff     eor   a,#$ff
0809: 24 d4     and   a,$d4
080b: 04 22     or    a,$22
080d: c4 4a     mov   $4a,a
080f: 6f        ret

0810: e8 60     mov   a,#$60
0812: 8d 0c     mov   y,#$0c
0814: 3f 49 06  call  $0649
0817: 8d 1c     mov   y,#$1c
0819: 3f 49 06  call  $0649
081c: 6f        ret

081d: 5f 61 06  jmp   $0661

0820: 5f 4d 07  jmp   $074d

0823: 5f 7f 08  jmp   $087f

0826: 5f 76 08  jmp   $0876

0829: e4 6b     mov   a,$6b
082b: 68 81     cmp   a,#$81
082d: 90 f4     bcc   $0823
082f: c4 08     mov   $08,a
0831: 68 fe     cmp   a,#$fe
0833: f0 eb     beq   $0820
0835: 68 ff     cmp   a,#$ff
0837: f0 e4     beq   $081d
0839: ec 7b 02  mov   y,$027b
083c: 7e 6b     cmp   y,$6b
083e: f0 e6     beq   $0826
0840: c5 7b 02  mov   $027b,a
0843: 2f 15     bra   $085a
0845: 5f aa 07  jmp   $07aa

0848: 5f f0 07  jmp   $07f0

084b: 5f b2 07  jmp   $07b2

084e: 5f bb 07  jmp   $07bb

0851: 5f c7 07  jmp   $07c7

0854: 5f d3 07  jmp   $07d3

0857: 5f da 07  jmp   $07da

085a: 68 d7     cmp   a,#$d7
085c: f0 f3     beq   $0851
085e: 68 d6     cmp   a,#$d6
0860: f0 ec     beq   $084e
0862: 68 d5     cmp   a,#$d5
0864: f0 f1     beq   $0857
0866: 68 d4     cmp   a,#$d4
0868: f0 ea     beq   $0854
086a: 68 d3     cmp   a,#$d3
086c: f0 d7     beq   $0845
086e: 68 d2     cmp   a,#$d2
0870: f0 d6     beq   $0848
0872: 68 d1     cmp   a,#$d1
0874: f0 d5     beq   $084b
0876: e9 75 02  mov   x,$0275
0879: f0 30     beq   $08ab
087b: 6f        ret

087c: 5f 83 06  jmp   $0683

087f: e9 75 02  mov   x,$0275
0882: f0 0a     beq   $088e
0884: 68 80     cmp   a,#$80
0886: f0 f4     beq   $087c
0888: e4 04     mov   a,$04
088a: c5 7b 02  mov   $027b,a
088d: 6f        ret

088e: e4 04     mov   a,$04
0890: c5 7b 02  mov   $027b,a
0893: eb 08     mov   y,$08
0895: e4 6b     mov   a,$6b
0897: c4 08     mov   $08,a
0899: f0 06     beq   $08a1
089b: 7e 6b     cmp   y,$6b
089d: d0 dd     bne   $087c
089f: 2f 0a     bra   $08ab
08a1: 78 80 04  cmp   $04,#$80
08a4: f0 05     beq   $08ab
08a6: e8 00     mov   a,#$00
08a8: c5 7b 02  mov   $027b,a
08ab: e4 04     mov   a,$04
08ad: f0 06     beq   $08b5
08af: 68 80     cmp   a,#$80
08b1: f0 02     beq   $08b5
08b3: 2f 09     bra   $08be
08b5: 5f 3d 07  jmp   $073d

08b8: 5f 03 07  jmp   $0703

08bb: 5f 81 06  jmp   $0681

08be: e4 0c     mov   a,$0c
08c0: f0 4c     beq   $090e
08c2: 6e 0c f3  dbnz  $0c,$08b8
08c5: 3f 50 06  call  $0650
08c8: d0 14     bne   $08de
08ca: fd        mov   y,a
08cb: f0 ee     beq   $08bb
08cd: 8b 42     dec   $42
08cf: 10 02     bpl   $08d3
08d1: c4 42     mov   $42,a
08d3: 3f 50 06  call  $0650
08d6: f8 42     mov   x,$42
08d8: f0 eb     beq   $08c5
08da: da 40     movw  $40,ya
08dc: 2f e7     bra   $08c5
08de: da 16     movw  $16,ya
08e0: 8d 0f     mov   y,#$0f
08e2: f7 16     mov   a,($16)+y
08e4: d6 30 00  mov   $0030+y,a
08e7: dc        dec   y
08e8: 10 f8     bpl   $08e2
08ea: cd 00     mov   x,#$00
08ec: 8f 01 47  mov   $47,#$01
08ef: f4 31     mov   a,$31+x
08f1: f0 0a     beq   $08fd
08f3: f5 11 02  mov   a,$0211+x
08f6: d0 05     bne   $08fd
08f8: e8 00     mov   a,#$00
08fa: 3f fe 09  call  $09fe
08fd: e8 00     mov   a,#$00
08ff: d4 80     mov   $80+x,a
0901: d4 90     mov   $90+x,a
0903: d4 91     mov   $91+x,a
0905: bc        inc   a
0906: d4 70     mov   $70+x,a
0908: 3d        inc   x
0909: 3d        inc   x
090a: 0b 47     asl   $47
090c: d0 e1     bne   $08ef
090e: cd 00     mov   x,#$00
0910: d8 5e     mov   $5e,x
0912: 8f 01 47  mov   $47,#$01
0915: d8 44     mov   $44,x
0917: f4 31     mov   a,$31+x
0919: f0 66     beq   $0981
091b: 9b 70     dec   $70+x
091d: d0 5c     bne   $097b
091f: 3f f4 09  call  $09f4
0922: d0 17     bne   $093b
0924: f4 80     mov   a,$80+x
0926: f0 9d     beq   $08c5
0928: 3f 48 0b  call  $0b48
092b: 9b 80     dec   $80+x
092d: d0 f0     bne   $091f
092f: f5 30 02  mov   a,$0230+x
0932: d4 30     mov   $30+x,a
0934: f5 31 02  mov   a,$0231+x
0937: d4 31     mov   $31+x,a
0939: 2f e4     bra   $091f
093b: 30 20     bmi   $095d
093d: d5 00 02  mov   $0200+x,a
0940: 3f f4 09  call  $09f4
0943: 30 18     bmi   $095d
0945: 2d        push  a
0946: 9f        xcn   a
0947: 28 07     and   a,#$07
0949: fd        mov   y,a
094a: f6 80 5d  mov   a,$5d80+y
094d: d5 01 02  mov   $0201+x,a
0950: ae        pop   a
0951: 28 0f     and   a,#$0f
0953: fd        mov   y,a
0954: f6 88 5d  mov   a,$5d88+y
0957: d5 10 02  mov   $0210+x,a
095a: 3f f4 09  call  $09f4
095d: 68 e0     cmp   a,#$e0
095f: 90 05     bcc   $0966
0961: 3f e2 09  call  $09e2
0964: 2f b9     bra   $091f
0966: 3f 54 05  call  $0554
0969: f5 00 02  mov   a,$0200+x
096c: d4 70     mov   $70+x,a
096e: fd        mov   y,a
096f: f5 01 02  mov   a,$0201+x
0972: cf        mul   ya
0973: dd        mov   a,y
0974: d0 01     bne   $0977
0976: bc        inc   a
0977: d4 71     mov   $71+x,a
0979: 2f 03     bra   $097e
097b: 3f 93 0d  call  $0d93
097e: 3f 0e 0c  call  $0c0e
0981: 3d        inc   x
0982: 3d        inc   x
0983: 0b 47     asl   $47
0985: d0 8e     bne   $0915
0987: e4 54     mov   a,$54
0989: f0 0b     beq   $0996
098b: ba 56     movw  ya,$56
098d: 7a 52     addw  ya,$52
098f: 6e 54 02  dbnz  $54,$0994
0992: ba 54     movw  ya,$54
0994: da 52     movw  $52,ya
0996: e4 68     mov   a,$68
0998: f0 15     beq   $09af
099a: ba 64     movw  ya,$64
099c: 7a 60     addw  ya,$60
099e: da 60     movw  $60,ya
09a0: ba 66     movw  ya,$66
09a2: 7a 62     addw  ya,$62
09a4: 6e 68 06  dbnz  $68,$09ad
09a7: ba 68     movw  ya,$68
09a9: da 60     movw  $60,ya
09ab: eb 6a     mov   y,$6a
09ad: da 62     movw  $62,ya
09af: e4 5a     mov   a,$5a
09b1: f0 11     beq   $09c4
09b3: ba 5c     movw  ya,$5c
09b5: 7a 20     addw  ya,$20
09b7: 6e 5a 02  dbnz  $5a,$09bc
09ba: ba 5a     movw  ya,$5a
09bc: da 20     movw  $20,ya
09be: 3f 29 11  call  $1129
09c1: 8f ff 5e  mov   $5e,#$ff
09c4: cd 00     mov   x,#$00
09c6: 8f 01 47  mov   $47,#$01
09c9: e5 78 02  mov   a,$0278
09cc: d0 06     bne   $09d4
09ce: e4 1a     mov   a,$1a
09d0: 48 ff     eor   a,#$ff
09d2: c4 5e     mov   $5e,a
09d4: f4 31     mov   a,$31+x
09d6: f0 03     beq   $09db
09d8: 3f ca 0c  call  $0cca
09db: 3d        inc   x
09dc: 3d        inc   x
09dd: 0b 47     asl   $47
09df: d0 f3     bne   $09d4
09e1: 6f        ret

09e2: 1c        asl   a
09e3: fd        mov   y,a
09e4: f6 ae 0b  mov   a,$0bae+y
09e7: 2d        push  a
09e8: f6 ad 0b  mov   a,$0bad+y
09eb: 2d        push  a
09ec: dd        mov   a,y
09ed: 5c        lsr   a
09ee: fd        mov   y,a
09ef: f6 4b 0c  mov   a,$0c4b+y
09f2: f0 08     beq   $09fc
09f4: e7 30     mov   a,($30+x)
09f6: bb 30     inc   $30+x
09f8: d0 02     bne   $09fc
09fa: bb 31     inc   $31+x
09fc: fd        mov   y,a
09fd: 6f        ret

; vcmds e0,fd - set instrument
09fe: d5 11 02  mov   $0211+x,a
0a01: fd        mov   y,a
0a02: 10 06     bpl   $0a0a
0a04: 80        setc
0a05: a8 ca     sbc   a,#$ca
0a07: 60        clrc
0a08: 84 5f     adc   a,$5f
0a0a: 8d 06     mov   y,#$06
0a0c: cf        mul   ya
0a0d: da 14     movw  $14,ya
0a0f: 60        clrc
0a10: 98 00 14  adc   $14,#$00
0a13: 98 5e 15  adc   $15,#$5e
0a16: e4 1a     mov   a,$1a
0a18: 24 47     and   a,$47
0a1a: d0 3a     bne   $0a56
0a1c: 4d        push  x
0a1d: 7d        mov   a,x
0a1e: 9f        xcn   a
0a1f: 5c        lsr   a
0a20: 08 04     or    a,#$04
0a22: 5d        mov   x,a
0a23: 8d 00     mov   y,#$00
0a25: f7 14     mov   a,($14)+y
0a27: 10 0e     bpl   $0a37
0a29: 28 1f     and   a,#$1f
0a2b: 38 20 48  and   $48,#$20
0a2e: 0e 48 00  tset1 $0048
0a31: 09 47 49  or    ($49),($47)
0a34: dd        mov   a,y
0a35: 2f 07     bra   $0a3e
0a37: e4 47     mov   a,$47
0a39: 4e 49 00  tclr1 $0049
0a3c: f7 14     mov   a,($14)+y
0a3e: c9 f2 00  mov   $00f2,x
0a41: c5 f3 00  mov   $00f3,a
0a44: 3d        inc   x
0a45: fc        inc   y
0a46: ad 04     cmp   y,#$04
0a48: d0 f2     bne   $0a3c
0a4a: ce        pop   x
0a4b: f7 14     mov   a,($14)+y
0a4d: d5 21 02  mov   $0221+x,a
0a50: fc        inc   y
0a51: f7 14     mov   a,($14)+y
0a53: d5 20 02  mov   $0220+x,a
0a56: 6f        ret

; vcmd e1 - pan
0a57: d5 51 03  mov   $0351+x,a
0a5a: 28 1f     and   a,#$1f
0a5c: d5 31 03  mov   $0331+x,a
0a5f: e8 00     mov   a,#$00
0a61: d5 30 03  mov   $0330+x,a
0a64: 6f        ret

; vcmd e2 - pan fade
0a65: d4 91     mov   $91+x,a
0a67: 2d        push  a
0a68: 3f f4 09  call  $09f4
0a6b: d5 50 03  mov   $0350+x,a
0a6e: 80        setc
0a6f: b5 31 03  sbc   a,$0331+x
0a72: ce        pop   x
0a73: 3f 51 0c  call  $0c51
0a76: d5 40 03  mov   $0340+x,a
0a79: dd        mov   a,y
0a7a: d5 41 03  mov   $0341+x,a
0a7d: 6f        ret

; vcmd e3 - vibrato on
0a7e: d5 b0 02  mov   $02b0+x,a
0a81: 3f f4 09  call  $09f4
0a84: d5 a1 02  mov   $02a1+x,a
0a87: 3f f4 09  call  $09f4
; vcmd e4 - vibrato off
0a8a: d4 b1     mov   $b1+x,a
0a8c: d5 c1 02  mov   $02c1+x,a
0a8f: e8 00     mov   a,#$00
0a91: d5 b1 02  mov   $02b1+x,a
0a94: 6f        ret

; vcmd f0 - vibrato fade
0a95: d5 b1 02  mov   $02b1+x,a
0a98: 2d        push  a
0a99: 8d 00     mov   y,#$00
0a9b: f4 b1     mov   a,$b1+x
0a9d: ce        pop   x
0a9e: 9e        div   ya,x
0a9f: f8 44     mov   x,$44
0aa1: d5 c0 02  mov   $02c0+x,a
0aa4: 6f        ret

; vcmd e5 - master volume
0aa5: e8 00     mov   a,#$00
0aa7: da 20     movw  $20,ya
0aa9: 3f 29 11  call  $1129
0aac: 6f        ret

; vcmd e6 - master volume fade
0aad: c4 5a     mov   $5a,a
0aaf: 3f f4 09  call  $09f4
0ab2: c4 5b     mov   $5b,a
0ab4: 80        setc
0ab5: a4 21     sbc   a,$21
0ab7: f8 5a     mov   x,$5a
0ab9: 3f 51 0c  call  $0c51
0abc: da 5c     movw  $5c,ya
0abe: 6f        ret

; vcmd e7 - tempo
0abf: e8 00     mov   a,#$00
0ac1: da 52     movw  $52,ya
0ac3: 6f        ret

; vcmd e8 - tempo fade
0ac4: c4 54     mov   $54,a
0ac6: 3f f4 09  call  $09f4
0ac9: c4 55     mov   $55,a
0acb: 80        setc
0acc: a4 53     sbc   a,$53
0ace: f8 54     mov   x,$54
0ad0: 3f 51 0c  call  $0c51
0ad3: da 56     movw  $56,ya
0ad5: 6f        ret

; vcmd e9 - global transpose
0ad6: c4 50     mov   $50,a
0ad8: 6f        ret

; vcmd ea - per-voice transpose
0ad9: d5 f0 02  mov   $02f0+x,a
0adc: 6f        ret

; vcmd eb - tremolo on
0add: d5 e0 02  mov   $02e0+x,a
0ae0: 3f f4 09  call  $09f4
0ae3: d5 d1 02  mov   $02d1+x,a
0ae6: 3f f4 09  call  $09f4
; vcmd ec - tremolo off
0ae9: d4 c1     mov   $c1+x,a
0aeb: 6f        ret

; vcmd f1 - pitch envelope (release)
0aec: e8 01     mov   a,#$01
0aee: 2f 02     bra   $0af2
; vcmd f2 - pitch envelope (attack)
0af0: e8 00     mov   a,#$00
0af2: d5 90 02  mov   $0290+x,a
0af5: dd        mov   a,y
0af6: d5 81 02  mov   $0281+x,a
0af9: 3f f4 09  call  $09f4
0afc: d5 80 02  mov   $0280+x,a
0aff: 3f f4 09  call  $09f4
0b02: d5 91 02  mov   $0291+x,a
0b05: 6f        ret

; vcmd f3 - pitch envelope off
0b06: d5 80 02  mov   $0280+x,a
0b09: 6f        ret

; vcmd ed - volume
0b0a: d5 01 03  mov   $0301+x,a
0b0d: e8 00     mov   a,#$00
0b0f: d5 00 03  mov   $0300+x,a
0b12: 6f        ret

; vcmd ee - volume fade
0b13: d4 90     mov   $90+x,a
0b15: 2d        push  a
0b16: 3f f4 09  call  $09f4
0b19: d5 20 03  mov   $0320+x,a
0b1c: 80        setc
0b1d: b5 01 03  sbc   a,$0301+x
0b20: ce        pop   x
0b21: 3f 51 0c  call  $0c51
0b24: d5 10 03  mov   $0310+x,a
0b27: dd        mov   a,y
0b28: d5 11 03  mov   $0311+x,a
0b2b: 6f        ret

; vcmd f4 - tuning
0b2c: d5 81 03  mov   $0381+x,a
0b2f: 6f        ret

; vcmd ef - call subroutine
0b30: d5 40 02  mov   $0240+x,a
0b33: 3f f4 09  call  $09f4
0b36: d5 41 02  mov   $0241+x,a
0b39: 3f f4 09  call  $09f4
0b3c: d4 80     mov   $80+x,a
0b3e: f4 30     mov   a,$30+x
0b40: d5 30 02  mov   $0230+x,a
0b43: f4 31     mov   a,$31+x
0b45: d5 31 02  mov   $0231+x,a
0b48: f5 40 02  mov   a,$0240+x
0b4b: d4 30     mov   $30+x,a
0b4d: f5 41 02  mov   a,$0241+x
0b50: d4 31     mov   $31+x,a
0b52: 6f        ret

; vcmd f5 - echo vbits/volume
0b53: 3f fd 07  call  $07fd
0b56: 3f f4 09  call  $09f4
0b59: e8 00     mov   a,#$00
0b5b: da 60     movw  $60,ya
0b5d: cc 73 02  mov   $0273,y
0b60: 3f f4 09  call  $09f4
0b63: e8 00     mov   a,#$00
0b65: da 62     movw  $62,ya
0b67: cc 74 02  mov   $0274,y
0b6a: b2 48     clr5  $48
0b6c: 6f        ret

; vcmd f8 - echo volume fade
0b6d: c4 68     mov   $68,a
0b6f: 3f f4 09  call  $09f4
0b72: c4 69     mov   $69,a
0b74: 80        setc
0b75: a4 61     sbc   a,$61
0b77: f8 68     mov   x,$68
0b79: 3f 51 0c  call  $0c51
0b7c: da 64     movw  $64,ya
0b7e: 3f f4 09  call  $09f4
0b81: c4 6a     mov   $6a,a
0b83: 80        setc
0b84: a4 63     sbc   a,$63
0b86: f8 68     mov   x,$68
0b88: 3f 51 0c  call  $0c51
0b8b: da 66     movw  $66,ya
0b8d: 6f        ret

; vcmd f6 - disable echo
0b8e: da 60     movw  $60,ya
0b90: da 62     movw  $62,ya
0b92: a2 48     set5  $48
0b94: 6f        ret

; vcmd f7 - set echo params
0b95: 3f c5 0b  call  $0bc5
0b98: 3f f4 09  call  $09f4
0b9b: c4 4e     mov   $4e,a
0b9d: 3f f4 09  call  $09f4
0ba0: 68 04     cmp   a,#$04
0ba2: 90 07     bcc   $0bab
0ba4: 8f 01 d7  mov   $d7,#$01
0ba7: e8 00     mov   a,#$00
0ba9: 2f 03     bra   $0bae
0bab: 8f 00 d7  mov   $d7,#$00
0bae: 8d 08     mov   y,#$08
0bb0: cf        mul   ya
0bb1: 5d        mov   x,a
0bb2: 8d 0f     mov   y,#$0f
0bb4: f5 7a 0f  mov   a,$0f7a+x
0bb7: 3f 49 06  call  $0649
0bba: 3d        inc   x
0bbb: dd        mov   a,y
0bbc: 60        clrc
0bbd: 88 10     adc   a,#$10
0bbf: fd        mov   y,a
0bc0: 10 f2     bpl   $0bb4
0bc2: f8 44     mov   x,$44
0bc4: 6f        ret

0bc5: c4 4d     mov   $4d,a
0bc7: 8d 7d     mov   y,#$7d
0bc9: cc f2 00  mov   $00f2,y
0bcc: e5 f3 00  mov   a,$00f3
0bcf: 64 4d     cmp   a,$4d
0bd1: f0 2b     beq   $0bfe
0bd3: e8 0f     mov   a,#$0f
0bd5: 48 ff     eor   a,#$ff
0bd7: f3 4c 03  bbc7  $4c,$0bdd
0bda: 60        clrc
0bdb: 84 4c     adc   a,$4c
0bdd: c4 4c     mov   $4c,a
0bdf: 8d 04     mov   y,#$04
0be1: f6 99 0f  mov   a,$0f99+y
0be4: c5 f2 00  mov   $00f2,a
0be7: e8 00     mov   a,#$00
0be9: c5 f3 00  mov   $00f3,a
0bec: fe f3     dbnz  y,$0be1
0bee: e4 48     mov   a,$48
0bf0: 08 20     or    a,#$20
0bf2: 8d 6c     mov   y,#$6c
0bf4: 3f 49 06  call  $0649
0bf7: e4 4d     mov   a,$4d
0bf9: 8d 7d     mov   y,#$7d
0bfb: 3f 49 06  call  $0649
0bfe: 1c        asl   a
0bff: 1c        asl   a
0c00: 1c        asl   a
0c01: 48 ff     eor   a,#$ff
0c03: 80        setc
0c04: 88 ff     adc   a,#$ff
0c06: 8d 6d     mov   y,#$6d
0c08: 5f 49 06  jmp   $0649

; vcmd fa - set perc patch base
0c0b: c4 5f     mov   $5f,a
0c0d: 6f        ret

0c0e: f4 a0     mov   a,$a0+x
0c10: d0 33     bne   $0c45
0c12: e7 30     mov   a,($30+x)
0c14: 68 f9     cmp   a,#$f9
0c16: d0 2d     bne   $0c45
0c18: 3f f6 09  call  $09f6
0c1b: 3f f4 09  call  $09f4
; vcmd f9 - pitch slide
0c1e: d4 a1     mov   $a1+x,a
0c20: 3f f4 09  call  $09f4
0c23: d4 a0     mov   $a0+x,a
0c25: 3f f4 09  call  $09f4
0c28: 60        clrc
0c29: 84 50     adc   a,$50
0c2b: 95 f0 02  adc   a,$02f0+x
0c2e: 28 7f     and   a,#$7f
0c30: d5 80 03  mov   $0380+x,a
0c33: 80        setc
0c34: b5 61 03  sbc   a,$0361+x
0c37: fb a0     mov   y,$a0+x
0c39: 6d        push  y
0c3a: ce        pop   x
0c3b: 3f 51 0c  call  $0c51
0c3e: d5 70 03  mov   $0370+x,a
0c41: dd        mov   a,y
0c42: d5 71 03  mov   $0371+x,a
0c45: 6f        ret

0c46: f5 61 03  mov   a,$0361+x
0c49: c4 11     mov   $11,a
0c4b: f5 60 03  mov   a,$0360+x
0c4e: c4 10     mov   $10,a
0c50: 6f        ret

0c51: ed        notc
0c52: 6b 12     ror   $12
0c54: 10 03     bpl   $0c59
0c56: 48 ff     eor   a,#$ff
0c58: bc        inc   a
0c59: 8d 00     mov   y,#$00
0c5b: 9e        div   ya,x
0c5c: 2d        push  a
0c5d: e8 00     mov   a,#$00
0c5f: 9e        div   ya,x
0c60: ee        pop   y
0c61: f8 44     mov   x,$44
0c63: f3 12 06  bbc7  $12,$0c6c
0c66: da 14     movw  $14,ya
0c68: ba 0e     movw  ya,$0e
0c6a: 9a 14     subw  ya,$14
0c6c: 6f        ret

; vcmd dispatch table ($0bad)
0c6d: dw $09fe  ; e0 - set instrument
0c6f: dw $0a57  ; e1 - pan
0c71: dw $0a65  ; e2 - pan fade
0c73: dw $0a7e  ; e3 - vibrato on
0c75: dw $0a8a  ; e4 - vibrato off
0c77: dw $0aa5  ; e5 - master volume
0c79: dw $0aad  ; e6 - master volume fade
0c7b: dw $0abf  ; e7 - tempo
0c7d: dw $0ac4  ; e8 - tempo fade
0c7f: dw $0ad6  ; e9 - global transpose
0c81: dw $0ad9  ; ea - per-voice transpose
0c83: dw $0add  ; eb - tremolo on
0c85: dw $0ae9  ; ec - tremolo off
0c87: dw $0b0a  ; ed - volume
0c89: dw $0b13  ; ee - volume fade
0c8b: dw $0b30  ; ef - call subroutine
0c8d: dw $0a95  ; f0 - vibrato fade
0c8f: dw $0aec  ; f1 - pitch envelope (release)
0c91: dw $0af0  ; f2 - pitch envelope (attack)
0c93: dw $0b06  ; f3 - pitch envelope off
0c95: dw $0b2c  ; f4 - tuning
0c97: dw $0b53  ; f5 - echo vbits/volume
0c99: dw $0b8e  ; f6 - disable echo
0c9b: dw $0b95  ; f7 - set echo params
0c9d: dw $0b6d  ; f8 - echo volume fade
0c9f: dw $0c1e  ; f9 - pitch slide
0ca1: dw $0c0b  ; fa - set perc patch base
0ca3: dw $108f  ; fb - set instrument with ADSR
0ca5: dw $0000  ; fc - not used (crash)
0ca7: dw $09fe  ; fd - set instrument (alternative)
0ca9: dw $0000  ; fe - not used (crash)
                ; ff - undefined

; vcmd lengths ($0c4b)
0cab: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0cb3: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0cbb: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0cc3: db $03,$03,$01,$02,$00,$01,$00     ; f8-fe

0cca: f4 90     mov   a,$90+x
0ccc: f0 24     beq   $0cf2
0cce: 09 47 5e  or    ($5e),($47)
0cd1: 9b 90     dec   $90+x
0cd3: d0 0a     bne   $0cdf
0cd5: e8 00     mov   a,#$00
0cd7: d5 00 03  mov   $0300+x,a
0cda: f5 20 03  mov   a,$0320+x
0cdd: 2f 10     bra   $0cef
0cdf: 60        clrc
0ce0: f5 00 03  mov   a,$0300+x
0ce3: 95 10 03  adc   a,$0310+x
0ce6: d5 00 03  mov   $0300+x,a
0ce9: f5 01 03  mov   a,$0301+x
0cec: 95 11 03  adc   a,$0311+x
0cef: d5 01 03  mov   $0301+x,a
0cf2: fb c1     mov   y,$c1+x
0cf4: f0 23     beq   $0d19
0cf6: f5 e0 02  mov   a,$02e0+x
0cf9: de c0 1b  cbne  $c0+x,$0d17
0cfc: 09 47 5e  or    ($5e),($47)
0cff: f5 d0 02  mov   a,$02d0+x
0d02: 10 07     bpl   $0d0b
0d04: fc        inc   y
0d05: d0 04     bne   $0d0b
0d07: e8 80     mov   a,#$80
0d09: 2f 04     bra   $0d0f
0d0b: 60        clrc
0d0c: 95 d1 02  adc   a,$02d1+x
0d0f: d5 d0 02  mov   $02d0+x,a
0d12: 3f 0b 0f  call  $0f0b
0d15: 2f 07     bra   $0d1e
0d17: bb c0     inc   $c0+x
0d19: e8 ff     mov   a,#$ff
0d1b: 3f 16 0f  call  $0f16
0d1e: f4 91     mov   a,$91+x
0d20: f0 24     beq   $0d46
0d22: 09 47 5e  or    ($5e),($47)
0d25: 9b 91     dec   $91+x
0d27: d0 0a     bne   $0d33
0d29: e8 00     mov   a,#$00
0d2b: d5 30 03  mov   $0330+x,a
0d2e: f5 50 03  mov   a,$0350+x
0d31: 2f 10     bra   $0d43
0d33: 60        clrc
0d34: f5 30 03  mov   a,$0330+x
0d37: 95 40 03  adc   a,$0340+x
0d3a: d5 30 03  mov   $0330+x,a
0d3d: f5 31 03  mov   a,$0331+x
0d40: 95 41 03  adc   a,$0341+x
0d43: d5 31 03  mov   $0331+x,a
0d46: e4 47     mov   a,$47
0d48: 24 5e     and   a,$5e
0d4a: f0 46     beq   $0d92
0d4c: f5 31 03  mov   a,$0331+x
0d4f: fd        mov   y,a
0d50: f5 30 03  mov   a,$0330+x
0d53: da 10     movw  $10,ya
0d55: 7d        mov   a,x
0d56: 9f        xcn   a
0d57: 5c        lsr   a
0d58: c4 12     mov   $12,a
0d5a: eb 11     mov   y,$11
0d5c: f6 66 0f  mov   a,$0f66+y
0d5f: 80        setc
0d60: b6 65 0f  sbc   a,$0f65+y
0d63: eb 10     mov   y,$10
0d65: cf        mul   ya
0d66: dd        mov   a,y
0d67: eb 11     mov   y,$11
0d69: 60        clrc
0d6a: 96 65 0f  adc   a,$0f65+y
0d6d: fd        mov   y,a
0d6e: f5 21 03  mov   a,$0321+x
0d71: cf        mul   ya
0d72: f5 51 03  mov   a,$0351+x
0d75: 1c        asl   a
0d76: 13 12 01  bbc0  $12,$0d7a
0d79: 1c        asl   a
0d7a: dd        mov   a,y
0d7b: 90 03     bcc   $0d80
0d7d: 48 ff     eor   a,#$ff
0d7f: bc        inc   a
0d80: eb 12     mov   y,$12
0d82: 3f 41 06  call  $0641
0d85: 8d 14     mov   y,#$14
0d87: e8 00     mov   a,#$00
0d89: 9a 10     subw  ya,$10
0d8b: da 10     movw  $10,ya
0d8d: ab 12     inc   $12
0d8f: 33 12 c8  bbc1  $12,$0d5a
0d92: 6f        ret

0d93: f4 71     mov   a,$71+x
0d95: f0 65     beq   $0dfc
0d97: 9b 71     dec   $71+x
0d99: f0 05     beq   $0da0
0d9b: e8 02     mov   a,#$02
0d9d: de 70 5c  cbne  $70+x,$0dfc
0da0: f4 80     mov   a,$80+x
0da2: c4 17     mov   $17,a
0da4: f4 30     mov   a,$30+x
0da6: fb 31     mov   y,$31+x
0da8: da 14     movw  $14,ya
0daa: 8d 00     mov   y,#$00
0dac: f7 14     mov   a,($14)+y
0dae: f0 1e     beq   $0dce
0db0: 30 07     bmi   $0db9
0db2: fc        inc   y
0db3: 30 40     bmi   $0df5
0db5: f7 14     mov   a,($14)+y
0db7: 10 f9     bpl   $0db2
0db9: 68 c8     cmp   a,#$c8
0dbb: f0 3f     beq   $0dfc
0dbd: 68 ef     cmp   a,#$ef
0dbf: f0 29     beq   $0dea
0dc1: 68 e0     cmp   a,#$e0
0dc3: 90 30     bcc   $0df5
0dc5: 6d        push  y
0dc6: fd        mov   y,a
0dc7: ae        pop   a
0dc8: 96 cb 0b  adc   a,$0bcb+y
0dcb: fd        mov   y,a
0dcc: 2f de     bra   $0dac
0dce: e4 17     mov   a,$17
0dd0: f0 23     beq   $0df5
0dd2: 8b 17     dec   $17
0dd4: d0 0a     bne   $0de0
0dd6: f5 31 02  mov   a,$0231+x
0dd9: 2d        push  a
0dda: f5 30 02  mov   a,$0230+x
0ddd: ee        pop   y
0dde: 2f c8     bra   $0da8
0de0: f5 41 02  mov   a,$0241+x
0de3: 2d        push  a
0de4: f5 40 02  mov   a,$0240+x
0de7: ee        pop   y
0de8: 2f be     bra   $0da8
0dea: fc        inc   y
0deb: f7 14     mov   a,($14)+y
0ded: 2d        push  a
0dee: fc        inc   y
0def: f7 14     mov   a,($14)+y
0df1: fd        mov   y,a
0df2: ae        pop   a
0df3: 2f b3     bra   $0da8
0df5: e4 47     mov   a,$47
0df7: 8d 5c     mov   y,#$5c
0df9: 3f 41 06  call  $0641
0dfc: f2 13     clr7  $13
0dfe: f4 a0     mov   a,$a0+x
0e00: f0 2c     beq   $0e2e
0e02: f4 a1     mov   a,$a1+x
0e04: f0 04     beq   $0e0a
0e06: 9b a1     dec   $a1+x
0e08: 2f 24     bra   $0e2e
0e0a: e2 13     set7  $13
0e0c: 9b a0     dec   $a0+x
0e0e: d0 0b     bne   $0e1b
0e10: f5 81 03  mov   a,$0381+x
0e13: d5 60 03  mov   $0360+x,a
0e16: f5 80 03  mov   a,$0380+x
0e19: 2f 10     bra   $0e2b
0e1b: 60        clrc
0e1c: f5 60 03  mov   a,$0360+x
0e1f: 95 70 03  adc   a,$0370+x
0e22: d5 60 03  mov   $0360+x,a
0e25: f5 61 03  mov   a,$0361+x
0e28: 95 71 03  adc   a,$0371+x
0e2b: d5 61 03  mov   $0361+x,a
0e2e: 3f 46 0c  call  $0c46
0e31: f4 b1     mov   a,$b1+x
0e33: f0 4c     beq   $0e81
0e35: f5 b0 02  mov   a,$02b0+x
0e38: de b0 44  cbne  $b0+x,$0e7f
0e3b: f5 00 01  mov   a,$0100+x
0e3e: 75 b1 02  cmp   a,$02b1+x
0e41: d0 05     bne   $0e48
0e43: f5 c1 02  mov   a,$02c1+x
0e46: 2f 0d     bra   $0e55
0e48: 40        setp
0e49: bb 00     inc   $00+x
0e4b: 20        clrp
0e4c: fd        mov   y,a
0e4d: f0 02     beq   $0e51
0e4f: f4 b1     mov   a,$b1+x
0e51: 60        clrc
0e52: 95 c0 02  adc   a,$02c0+x
0e55: d4 b1     mov   $b1+x,a
0e57: f5 a0 02  mov   a,$02a0+x
0e5a: 60        clrc
0e5b: 95 a1 02  adc   a,$02a1+x
0e5e: d5 a0 02  mov   $02a0+x,a
0e61: c4 12     mov   $12,a
0e63: 1c        asl   a
0e64: 1c        asl   a
0e65: 90 02     bcc   $0e69
0e67: 48 ff     eor   a,#$ff
0e69: fd        mov   y,a
0e6a: f4 b1     mov   a,$b1+x
0e6c: 68 f1     cmp   a,#$f1
0e6e: 90 05     bcc   $0e75
0e70: 28 0f     and   a,#$0f
0e72: cf        mul   ya
0e73: 2f 04     bra   $0e79
0e75: cf        mul   ya
0e76: dd        mov   a,y
0e77: 8d 00     mov   y,#$00
0e79: 3f f6 0e  call  $0ef6
0e7c: 5f be 05  jmp   $05be

0e7f: bb b0     inc   $b0+x
0e81: e3 13 f8  bbs7  $13,$0e7c
0e84: 6f        ret

0e85: f2 13     clr7  $13
0e87: f4 c1     mov   a,$c1+x
0e89: f0 09     beq   $0e94
0e8b: f5 e0 02  mov   a,$02e0+x
0e8e: de c0 03  cbne  $c0+x,$0e94
0e91: 3f fe 0e  call  $0efe
0e94: f5 31 03  mov   a,$0331+x
0e97: fd        mov   y,a
0e98: f5 30 03  mov   a,$0330+x
0e9b: da 10     movw  $10,ya
0e9d: f4 91     mov   a,$91+x
0e9f: f0 0a     beq   $0eab
0ea1: f5 41 03  mov   a,$0341+x
0ea4: fd        mov   y,a
0ea5: f5 40 03  mov   a,$0340+x
0ea8: 3f e0 0e  call  $0ee0
0eab: f3 13 03  bbc7  $13,$0eb1
0eae: 3f 55 0d  call  $0d55
0eb1: f2 13     clr7  $13
0eb3: 3f 46 0c  call  $0c46
0eb6: f4 a0     mov   a,$a0+x
0eb8: f0 0e     beq   $0ec8
0eba: f4 a1     mov   a,$a1+x
0ebc: d0 0a     bne   $0ec8
0ebe: f5 71 03  mov   a,$0371+x
0ec1: fd        mov   y,a
0ec2: f5 70 03  mov   a,$0370+x
0ec5: 3f e0 0e  call  $0ee0
0ec8: f4 b1     mov   a,$b1+x
0eca: f0 b5     beq   $0e81
0ecc: f5 b0 02  mov   a,$02b0+x
0ecf: de b0 af  cbne  $b0+x,$0e81
0ed2: eb 51     mov   y,$51
0ed4: f5 a1 02  mov   a,$02a1+x
0ed7: cf        mul   ya
0ed8: dd        mov   a,y
0ed9: 60        clrc
0eda: 95 a0 02  adc   a,$02a0+x
0edd: 5f 61 0e  jmp   $0e61

0ee0: e2 13     set7  $13
0ee2: cb 12     mov   $12,y
0ee4: 3f 63 0c  call  $0c63
0ee7: 6d        push  y
0ee8: eb 51     mov   y,$51
0eea: cf        mul   ya
0eeb: cb 14     mov   $14,y
0eed: 8f 00 15  mov   $15,#$00
0ef0: eb 51     mov   y,$51
0ef2: ae        pop   a
0ef3: cf        mul   ya
0ef4: 7a 14     addw  ya,$14
0ef6: 3f 63 0c  call  $0c63
0ef9: 7a 10     addw  ya,$10
0efb: da 10     movw  $10,ya
0efd: 6f        ret

0efe: e2 13     set7  $13
0f00: eb 51     mov   y,$51
0f02: f5 d1 02  mov   a,$02d1+x
0f05: cf        mul   ya
0f06: dd        mov   a,y
0f07: 60        clrc
0f08: 95 d0 02  adc   a,$02d0+x
0f0b: 1c        asl   a
0f0c: 90 02     bcc   $0f10
0f0e: 48 ff     eor   a,#$ff
0f10: fb c1     mov   y,$c1+x
0f12: cf        mul   ya
0f13: dd        mov   a,y
0f14: 48 ff     eor   a,#$ff
0f16: eb 59     mov   y,$59
0f18: cf        mul   ya
0f19: f5 10 02  mov   a,$0210+x
0f1c: cf        mul   ya
0f1d: f5 01 03  mov   a,$0301+x
0f20: cf        mul   ya
0f21: dd        mov   a,y
0f22: cf        mul   ya
0f23: dd        mov   a,y
0f24: d5 21 03  mov   $0321+x,a
0f27: 6f        ret

0f28: e8 03     mov   a,#$03
0f2a: c5 76 02  mov   $0276,a
0f2d: 3f 88 11  call  $1188
0f30: cd 03     mov   x,#$03
0f32: 3f 33 05  call  $0533
0f35: d4 04     mov   $04+x,a
0f37: e8 01     mov   a,#$01
0f39: c5 76 02  mov   $0276,a
0f3c: 3f 88 11  call  $1188
0f3f: cd 01     mov   x,#$01
0f41: 3f 33 05  call  $0533
0f44: 68 00     cmp   a,#$00
0f46: f0 04     beq   $0f4c
0f48: d4 04     mov   $04+x,a
0f4a: 2f 09     bra   $0f55
0f4c: e4 26     mov   a,$26
0f4e: f0 05     beq   $0f55
0f50: 8f 00 26  mov   $26,#$00
0f53: d4 04     mov   $04+x,a
0f55: e8 02     mov   a,#$02
0f57: c5 76 02  mov   $0276,a
0f5a: 3f 88 11  call  $1188
0f5d: cd 02     mov   x,#$02
0f5f: 3f 33 05  call  $0533
0f62: d4 04     mov   $04+x,a
0f64: 6f        ret

; pan table
0f65: db $00,$01,$03,$07,$0d,$15,$1e,$29
0f6d: db $34,$42,$51,$5e,$67,$6e,$73,$77
0f75: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0f7a: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0f82: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0f8a: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0f92: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($0f99+1) for dsp regs ($0fa3+1)
0f9a: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0fa4: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
0fae: dw $085f
0fb0: dw $08de
0fb2: dw $0965
0fb4: dw $09f4
0fb6: dw $0a8c
0fb8: dw $0b2c
0fba: dw $0bd6
0fbc: dw $0c8b
0fbe: dw $0d4a
0fc0: dw $0e14
0fc2: dw $0eea
0fc4: dw $0fcd
0fc6: dw $10be

0fc8: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

0fd3: e8 aa     mov   a,#$aa
0fd5: c5 f4 00  mov   $00f4,a
0fd8: e8 bb     mov   a,#$bb
0fda: c5 f5 00  mov   $00f5,a
0fdd: e5 f4 00  mov   a,$00f4
0fe0: 68 cc     cmp   a,#$cc
0fe2: d0 f9     bne   $0fdd
0fe4: 2f 20     bra   $1006
0fe6: ec f4 00  mov   y,$00f4
0fe9: d0 fb     bne   $0fe6
0feb: 5e f4 00  cmp   y,$00f4
0fee: d0 0f     bne   $0fff
0ff0: e5 f5 00  mov   a,$00f5
0ff3: cc f4 00  mov   $00f4,y
0ff6: d7 14     mov   ($14)+y,a
0ff8: fc        inc   y
0ff9: d0 f0     bne   $0feb
0ffb: ab 15     inc   $15
0ffd: 2f ec     bra   $0feb
0fff: 10 ea     bpl   $0feb
1001: 5e f4 00  cmp   y,$00f4
1004: 10 e5     bpl   $0feb
1006: e5 f6 00  mov   a,$00f6
1009: ec f7 00  mov   y,$00f7
100c: da 14     movw  $14,ya
100e: ec f4 00  mov   y,$00f4
1011: e5 f5 00  mov   a,$00f5
1014: cc f4 00  mov   $00f4,y
1017: d0 cd     bne   $0fe6
1019: cd 31     mov   x,#$31
101b: c9 f1 00  mov   $00f1,x
101e: 6f        ret

; vcmd fb - set instrument with ADSR
108f: 2d        push  a                 ; arg1 - sample number
1090: 8d 06     mov   y,#$06
1092: cf        mul   ya
1093: da 14     movw  $14,ya
1095: 60        clrc
1096: 98 00 14  adc   $14,#$00
1099: 98 5e 15  adc   $15,#$5e          ; $14/5 = $5e00 + (arg1 * 6)
109c: 3f f4 09  call  $09f4
109f: 8d 01     mov   y,#$01
10a1: d7 14     mov   ($14)+y,a         ; ADSR(1)
10a3: 3f f4 09  call  $09f4
10a6: 8d 02     mov   y,#$02
10a8: d7 14     mov   ($14)+y,a         ; ADSR(2)
10aa: ae        pop   a
10ab: 5f fe 09  jmp   $09fe             ; set instrument

5d80: db $33,$66,$7f,$99,$b2,$cc,$e5,$fc
5d88: db $19,$33,$4c,$66,$72,$7f,$8c,$99
5d90: db $a5,$b2,$bf,$cc,$d8,$e5,$f2,$fc
