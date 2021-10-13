0470: e8 00     mov   a,#$00
0472: c4 f6     mov   $f6,a
0474: c4 f7     mov   $f7,a
0476: 20        clrp
0477: cd 4f     mov   x,#$4f
0479: bd        mov   sp,x
047a: 3f 59 09  call  $0959
047d: 8f 30 f1  mov   $f1,#$30
0480: 8f 85 fb  mov   $fb,#$85
0483: e8 aa     mov   a,#$aa
0485: c4 f6     mov   $f6,a
0487: c4 f7     mov   $f7,a
0489: 3f 73 14  call  $1473
048c: 3f a8 05  call  $05a8
048f: 90 f8     bcc   $0489
0491: 33 00 05  bbc1  $00,$0499
0494: 8f 85 fa  mov   $fa,#$85
0497: 2f 03     bra   $049c
0499: 8f 42 fa  mov   $fa,#$42
049c: 3f 73 14  call  $1473
049f: 3f a8 05  call  $05a8
04a2: 90 f8     bcc   $049c
04a4: 3f 18 09  call  $0918
04a7: 8f 01 f1  mov   $f1,#$01
04aa: 13 00 03  bbc0  $00,$04b0
04ad: 8f 02 f1  mov   $f1,#$02
04b0: 3f 73 14  call  $1473
04b3: 3f 95 05  call  $0595
04b6: 3f a0 14  call  $14a0
04b9: 3f dd 05  call  $05dd
04bc: 3f 78 05  call  $0578
04bf: 90 ef     bcc   $04b0
04c1: 8d 02     mov   y,#$02
04c3: 33 00 01  bbc1  $00,$04c7
04c6: dc        dec   y
04c7: 6d        push  y
04c8: 8f 00 1a  mov   $1a,#$00
04cb: e3 4a 04  bbs7  $4a,$04d2
04ce: 8b 4a     dec   $4a
04d0: 2f 3a     bra   $050c
04d2: e4 1f     mov   a,$1f
04d4: f0 07     beq   $04dd
04d6: 60        clrc
04d7: 84 1b     adc   a,$1b
04d9: c4 1b     mov   $1b,a
04db: 90 2f     bcc   $050c
04dd: a3 00 2c  bbs5  $00,$050c
04e0: 8d 08     mov   y,#$08
04e2: 8f 00 16  mov   $16,#$00
04e5: 6d        push  y
04e6: f8 16     mov   x,$16
04e8: e4 17     mov   a,$17
04ea: 35 63 14  and   a,$1463+x
04ed: f0 12     beq   $0501
04ef: 3f 09 0a  call  $0a09
04f2: 3f 51 0c  call  $0c51
04f5: 3f 8c 0c  call  $0c8c
04f8: 3f e9 0c  call  $0ce9
04fb: 3f 26 0d  call  $0d26
04fe: 3f a0 0b  call  $0ba0
0501: ab 16     inc   $16
0503: ee        pop   y
0504: fe df     dbnz  y,$04e5
0506: 3f 5d 0d  call  $0d5d
0509: 3f 4d 0d  call  $0d4d
050c: e3 4b 04  bbs7  $4b,$0513
050f: 8b 4b     dec   $4b
0511: 2f 37     bra   $054a
0513: 8d 08     mov   y,#$08
0515: 8f 08 16  mov   $16,#$08
0518: 6d        push  y
0519: f8 16     mov   x,$16
051b: e4 18     mov   a,$18
051d: 35 63 14  and   a,$1463+x
0520: f0 23     beq   $0545
0522: f5 d9 01  mov   a,$01d9+x
0525: f0 09     beq   $0530
0527: 60        clrc
0528: 95 c9 01  adc   a,$01c9+x
052b: d5 c9 01  mov   $01c9+x,a
052e: 90 15     bcc   $0545
0530: 3f 09 0a  call  $0a09
0533: 3f 6d 0d  call  $0d6d
0536: 3f 51 0c  call  $0c51
0539: 3f 8c 0c  call  $0c8c
053c: 3f e9 0c  call  $0ce9
053f: 3f 26 0d  call  $0d26
0542: 3f a0 0b  call  $0ba0
0545: ab 16     inc   $16
0547: ee        pop   y
0548: fe ce     dbnz  y,$0518
054a: 3f 19 0c  call  $0c19
054d: 3f ae 0d  call  $0dae
0550: 3f 99 0d  call  $0d99
0553: e4 1a     mov   a,$1a
0555: 4e 18 00  tclr1 $0018
0558: 4e 19 00  tclr1 $0019
055b: 3f 8b 0b  call  $0b8b
055e: ee        pop   y
055f: dc        dec   y
0560: f0 08     beq   $056a
0562: 3f 6d 05  call  $056d
0565: 90 fb     bcc   $0562
0567: 5f c7 04  jmp   $04c7

056a: 5f aa 04  jmp   $04aa

056d: e4 fd     mov   a,$fd
056f: f0 05     beq   $0576
0571: c4 22     mov   $22,a
0573: 80        setc
0574: 2f 01     bra   $0577
0576: 60        clrc
0577: 6f        ret

0578: 13 00 f2  bbc0  $00,$056d
057b: aa 00 40  mov1  c,$0000,2
057e: 52 00     clr2  $00
0580: 6f        ret

0581: f5 50 01  mov   a,$0150+x
0584: d5 54 01  mov   $0154+x,a
0587: 3f 8e 05  call  $058e
058a: d5 50 01  mov   $0150+x,a
058d: 6f        ret

058e: f4 f4     mov   a,$f4+x
0590: 74 f4     cmp   a,$f4+x
0592: d0 fa     bne   $058e
0594: 6f        ret

0595: cd 00     mov   x,#$00
0597: 3f 81 05  call  $0581
059a: 75 54 01  cmp   a,$0154+x
059d: f0 08     beq   $05a7
059f: 48 80     eor   a,#$80
05a1: d4 f4     mov   $f4+x,a
05a3: 28 7f     and   a,#$7f
05a5: c4 12     mov   $12,a
05a7: 6f        ret

05a8: e4 13     mov   a,$13
05aa: e2 13     set7  $13
05ac: 10 02     bpl   $05b0
05ae: 60        clrc
05af: 6f        ret

05b0: 1c        asl   a
05b1: 5d        mov   x,a
05b2: 1f b5 05  jmp   ($05b5+x)

05b5: dw $05ae
05b7: dw $06cc
05b9: dw $06c4
05bb: dw $06b4
05bd: dw $06bc
05bf: dw $06ce
05c1: dw $06d4
05c3: dw $0713
05c5: dw $07f1
05c7: dw $081d
05c9: dw $0846
05cb: dw $06e3
05cd: dw $06e8
05cf: dw $06ed
05d1: dw $06f5
05d3: dw $06d9
05d5: dw $06de
05d7: dw $0700
05d9: dw $070b
05db: dw $0796

05dd: e4 12     mov   a,$12
05df: 30 61     bmi   $0642
05e1: 68 7f     cmp   a,#$7f
05e3: b0 5e     bcs   $0643
05e5: 68 77     cmp   a,#$77
05e7: b0 03     bcs   $05ec
05e9: 5f 86 09  jmp   $0986

05ec: 3f 8a 08  call  $088a
05ef: 8f 00 18  mov   $18,#$00
05f2: 8f 00 19  mov   $19,#$00
05f5: e8 ff     mov   a,#$ff
05f7: 03 30 07  bbs0  $30,$0601
05fa: e3 00 02  bbs7  $00,$05ff
05fd: c4 24     mov   $24,a
05ff: c4 26     mov   $26,a
0601: 12 30     clr0  $30
0603: e4 12     mov   a,$12
0605: 80        setc
0606: a8 77     sbc   a,#$77
0608: 1c        asl   a
0609: fd        mov   y,a
060a: f6 18 19  mov   a,$1918+y
060d: c4 03     mov   $03,a
060f: f6 19 19  mov   a,$1919+y
0612: c4 04     mov   $04,a
0614: 8d 00     mov   y,#$00
0616: f7 03     mov   a,($03)+y
0618: c4 01     mov   $01,a
061a: fc        inc   y
061b: f7 03     mov   a,($03)+y
061d: c4 02     mov   $02,a
061f: cd 07     mov   x,#$07
0621: 7d        mov   a,x
0622: 1c        asl   a
0623: fd        mov   y,a
0624: f7 01     mov   a,($01)+y
0626: d5 59 01  mov   $0159+x,a
0629: fc        inc   y
062a: f7 01     mov   a,($01)+y
062c: d5 69 01  mov   $0169+x,a
062f: 15 59 01  or    a,$0159+x
0632: f0 09     beq   $063d
0634: 3f ac 08  call  $08ac
0637: f5 63 14  mov   a,$1463+x
063a: 0e 17 00  tset1 $0017
063d: 1d        dec   x
063e: 10 e1     bpl   $0621
0640: e2 12     set7  $12
0642: 6f        ret

0643: 8f ff 2d  mov   $2d,#$ff
0646: 8f 00 18  mov   $18,#$00
0649: 8f 00 19  mov   $19,#$00
064c: 3f 8b 0b  call  $0b8b
064f: 3f 3b 08  call  $083b
0652: e8 ff     mov   a,#$ff
0654: 03 30 07  bbs0  $30,$065e
0657: e3 00 02  bbs7  $00,$065c
065a: c4 24     mov   $24,a
065c: c4 26     mov   $26,a
065e: 12 30     clr0  $30
0660: e4 12     mov   a,$12
0662: 80        setc
0663: a8 7f     sbc   a,#$7f
0665: 1c        asl   a
0666: fd        mov   y,a
0667: f6 18 df  mov   a,$df18+y
066a: c4 03     mov   $03,a
066c: f6 19 df  mov   a,$df19+y
066f: c4 04     mov   $04,a
0671: 8d 00     mov   y,#$00
0673: f7 03     mov   a,($03)+y
0675: c4 01     mov   $01,a
0677: fc        inc   y
0678: f7 03     mov   a,($03)+y
067a: c4 02     mov   $02,a
067c: 8d 08     mov   y,#$08
067e: 8f 08 16  mov   $16,#$08
0681: 6d        push  y
0682: e4 16     mov   a,$16
0684: 5d        mov   x,a
0685: 80        setc
0686: a8 08     sbc   a,#$08
0688: 1c        asl   a
0689: fd        mov   y,a
068a: f7 01     mov   a,($01)+y
068c: d5 59 01  mov   $0159+x,a
068f: fc        inc   y
0690: f7 01     mov   a,($01)+y
0692: d5 69 01  mov   $0169+x,a
0695: 15 59 01  or    a,$0159+x
0698: f0 0c     beq   $06a6
069a: 3f ac 08  call  $08ac
069d: f5 63 14  mov   a,$1463+x
06a0: 0e 18 00  tset1 $0018
06a3: 0e 19 00  tset1 $0019
06a6: ab 16     inc   $16
06a8: ee        pop   y
06a9: fe d6     dbnz  y,$0681
06ab: 03 31 05  bbs0  $31,$06b3
06ae: 8f ff 25  mov   $25,#$ff
06b1: e2 12     set7  $12
06b3: 6f        ret

06b4: 32 00     clr1  $00
06b6: 8f 02 f1  mov   $f1,#$02
06b9: 5f 82 08  jmp   $0882

06bc: 22 00     set1  $00
06be: 8f 02 f1  mov   $f1,#$02
06c1: 5f 82 08  jmp   $0882

06c4: 02 00     set0  $00
06c6: 8f 02 f1  mov   $f1,#$02
06c9: 5f 82 08  jmp   $0882

06cc: 12 00     clr0  $00
06ce: 8f 03 f1  mov   $f1,#$03
06d1: 5f 82 08  jmp   $0882

06d4: 42 00     set2  $00
06d6: 5f 82 08  jmp   $0882

06d9: 82 00     set4  $00
06db: 5f 82 08  jmp   $0882

06de: 92 00     clr4  $00
06e0: 5f 82 08  jmp   $0882

06e3: a2 00     set5  $00
06e5: 5f 82 08  jmp   $0882

06e8: b2 00     clr5  $00
06ea: 5f 82 08  jmp   $0882

06ed: c2 00     set6  $00
06ef: fa 14 2e  mov   ($2e),($14)
06f2: 5f 82 08  jmp   $0882

06f5: e2 00     set7  $00
06f7: fa 14 2e  mov   ($2e),($14)
06fa: 8f 00 24  mov   $24,#$00
06fd: 5f 82 08  jmp   $0882

0700: 02 30     set0  $30
0702: fa 14 24  mov   ($24),($14)
0705: fa 14 26  mov   ($26),($14)
0708: 5f 82 08  jmp   $0882

070b: 02 31     set0  $31
070d: fa 14 25  mov   ($25),($14)
0710: 5f 82 08  jmp   $0882

0713: 8f aa f4  mov   $f4,#$aa
0716: 8f bb f5  mov   $f5,#$bb
0719: cd 01     mov   x,#$01
071b: 3f 8e 05  call  $058e
071e: 68 00     cmp   a,#$00
0720: f0 4e     beq   $0770
0722: 68 ff     cmp   a,#$ff
0724: f0 33     beq   $0759
0726: 2f f1     bra   $0719
0728: 8d 00     mov   y,#$00
072a: cd 01     mov   x,#$01
072c: 3f 8e 05  call  $058e
072f: 68 00     cmp   a,#$00
0731: f0 3d     beq   $0770
0733: 68 ff     cmp   a,#$ff
0735: f0 22     beq   $0759
0737: 7e f4     cmp   y,$f4
0739: d0 ef     bne   $072a
073b: 7e f4     cmp   y,$f4
073d: d0 eb     bne   $072a
073f: 6d        push  y
0740: cd 02     mov   x,#$02
0742: 3f 8e 05  call  $058e
0745: d7 01     mov   ($01)+y,a
0747: fc        inc   y
0748: cd 03     mov   x,#$03
074a: 3f 8e 05  call  $058e
074d: d7 01     mov   ($01)+y,a
074f: fc        inc   y
0750: d0 02     bne   $0754
0752: ab 02     inc   $02
0754: ae        pop   a
0755: c4 f4     mov   $f4,a
0757: 2f d1     bra   $072a
0759: cd 02     mov   x,#$02
075b: 3f 8e 05  call  $058e
075e: c4 01     mov   $01,a
0760: cd 03     mov   x,#$03
0762: 3f 8e 05  call  $058e
0765: c4 02     mov   $02,a
0767: cd 00     mov   x,#$00
0769: 3f 8e 05  call  $058e
076c: c4 f4     mov   $f4,a
076e: 2f b8     bra   $0728
0770: cd 00     mov   x,#$00
0772: 3f 8e 05  call  $058e
0775: c5 50 01  mov   $0150,a
0778: 3d        inc   x
0779: 3f 8e 05  call  $058e
077c: c5 51 01  mov   $0151,a
077f: 3d        inc   x
0780: 3f 8e 05  call  $058e
0783: c5 52 01  mov   $0152,a
0786: 3d        inc   x
0787: 3f 8e 05  call  $058e
078a: c5 53 01  mov   $0153,a
078d: e8 aa     mov   a,#$aa
078f: c4 f4     mov   $f4,a
0791: c4 f5     mov   $f5,a
0793: 5f 88 08  jmp   $0888

0796: 8f aa f4  mov   $f4,#$aa
0799: 8f bb f5  mov   $f5,#$bb
079c: e4 f5     mov   a,$f5
079e: f0 34     beq   $07d4
07a0: 68 ff     cmp   a,#$ff
07a2: f0 24     beq   $07c8
07a4: 2f f6     bra   $079c
07a6: 8d 00     mov   y,#$00
07a8: e4 f5     mov   a,$f5
07aa: f0 28     beq   $07d4
07ac: 68 ff     cmp   a,#$ff
07ae: f0 18     beq   $07c8
07b0: 7e f4     cmp   y,$f4
07b2: d0 f4     bne   $07a8
07b4: 6d        push  y
07b5: e4 f6     mov   a,$f6
07b7: d7 01     mov   ($01)+y,a
07b9: fc        inc   y
07ba: e4 f7     mov   a,$f7
07bc: d7 01     mov   ($01)+y,a
07be: fc        inc   y
07bf: d0 02     bne   $07c3
07c1: ab 02     inc   $02
07c3: ae        pop   a
07c4: c4 f4     mov   $f4,a
07c6: 2f e0     bra   $07a8
07c8: e4 f6     mov   a,$f6
07ca: eb f7     mov   y,$f7
07cc: da 01     movw  $01,ya
07ce: e4 f4     mov   a,$f4
07d0: c4 f4     mov   $f4,a
07d2: 2f d2     bra   $07a6
07d4: e4 f4     mov   a,$f4
07d6: c5 50 01  mov   $0150,a
07d9: e4 f5     mov   a,$f5
07db: c5 51 01  mov   $0151,a
07de: e4 f6     mov   a,$f6
07e0: c5 52 01  mov   $0152,a
07e3: e4 f7     mov   a,$f7
07e5: c5 53 01  mov   $0153,a
07e8: e8 aa     mov   a,#$aa
07ea: c4 f4     mov   $f4,a
07ec: c4 f5     mov   $f5,a
07ee: 5f 88 08  jmp   $0888

07f1: 3f 40 09  call  $0940
07f4: 3f 8a 08  call  $088a
07f7: e8 ff     mov   a,#$ff
07f9: 8d 5c     mov   y,#$5c
07fb: cb f2     mov   $f2,y
07fd: c4 f3     mov   $f3,a
07ff: e8 00     mov   a,#$00
0801: c4 30     mov   $30,a
0803: c4 31     mov   $31,a
0805: c4 18     mov   $18,a
0807: c4 19     mov   $19,a
0809: c4 54     mov   $54,a
080b: 9c        dec   a
080c: c4 26     mov   $26,a
080e: c4 24     mov   $24,a
0810: c4 25     mov   $25,a
0812: cd 0f     mov   x,#$0f
0814: 3f ac 08  call  $08ac
0817: 1d        dec   x
0818: 10 fa     bpl   $0814
081a: 5f 82 08  jmp   $0882

081d: 3f 23 08  call  $0823
0820: 5f 82 08  jmp   $0882

0823: 3f 8a 08  call  $088a
0826: 3f 3b 08  call  $083b
0829: e8 00     mov   a,#$00
082b: c4 30     mov   $30,a
082d: 9c        dec   a
082e: c4 26     mov   $26,a
0830: c4 24     mov   $24,a
0832: cd 07     mov   x,#$07
0834: 3f ac 08  call  $08ac
0837: 1d        dec   x
0838: 10 fa     bpl   $0834
083a: 6f        ret

083b: e4 18     mov   a,$18
083d: 48 ff     eor   a,#$ff
083f: 8d 5c     mov   y,#$5c
0841: cb f2     mov   $f2,y
0843: c4 f3     mov   $f3,a
0845: 6f        ret

0846: e8 00     mov   a,#$00
0848: c4 31     mov   $31,a
084a: c4 54     mov   $54,a
084c: 9c        dec   a
084d: c4 25     mov   $25,a
084f: 3f 55 08  call  $0855
0852: 5f 82 08  jmp   $0882

0855: 3f 79 08  call  $0879
0858: cd 08     mov   x,#$08
085a: e4 18     mov   a,$18
085c: 35 63 14  and   a,$1463+x
085f: f0 09     beq   $086a
0861: e4 38     mov   a,$38
0863: 2d        push  a
0864: 3f ac 08  call  $08ac
0867: ae        pop   a
0868: c4 38     mov   $38,a
086a: 3d        inc   x
086b: c8 10     cmp   x,#$10
086d: 90 eb     bcc   $085a
086f: 8f 00 18  mov   $18,#$00
0872: 8f 00 19  mov   $19,#$00
0875: 3f 8b 0b  call  $0b8b
0878: 6f        ret

0879: e4 18     mov   a,$18
087b: 8d 5c     mov   y,#$5c
087d: cb f2     mov   $f2,y
087f: c4 f3     mov   $f3,a
0881: 6f        ret

0882: e8 aa     mov   a,#$aa
0884: c4 f6     mov   $f6,a
0886: c4 f7     mov   $f7,a
0888: 80        setc
0889: 6f        ret

088a: e8 ff     mov   a,#$ff
088c: c5 59 04  mov   $0459,a
088f: e8 60     mov   a,#$60
0891: 4e 00 00  tclr1 $0000
0894: e8 00     mov   a,#$00
0896: c4 17     mov   $17,a
0898: c4 1b     mov   $1b,a
089a: c4 23     mov   $23,a
089c: c4 2f     mov   $2f,a
089e: c4 4c     mov   $4c,a
08a0: c4 32     mov   $32,a
08a2: c4 4e     mov   $4e,a
08a4: c4 50     mov   $50,a
08a6: c4 1f     mov   $1f,a
08a8: 8f ff 28  mov   $28,#$ff
08ab: 6f        ret

08ac: e8 02     mov   a,#$02
08ae: d4 55     mov   $55+x,a
08b0: 9c        dec   a
08b1: d4 65     mov   $65+x,a
08b3: d5 e9 01  mov   $01e9+x,a
08b6: 9c        dec   a
08b7: d5 59 02  mov   $0259+x,a
08ba: d5 09 02  mov   $0209+x,a
08bd: d5 19 02  mov   $0219+x,a
08c0: d4 75     mov   $75+x,a
08c2: d4 85     mov   $85+x,a
08c4: d5 d9 02  mov   $02d9+x,a
08c7: d5 29 03  mov   $0329+x,a
08ca: d5 39 03  mov   $0339+x,a
08cd: d5 49 03  mov   $0349+x,a
08d0: d5 59 03  mov   $0359+x,a
08d3: d5 a9 03  mov   $03a9+x,a
08d6: d5 d9 03  mov   $03d9+x,a
08d9: d5 39 04  mov   $0439+x,a
08dc: d5 b9 01  mov   $01b9+x,a
08df: d5 49 04  mov   $0449+x,a
08e2: d5 d9 01  mov   $01d9+x,a
08e5: 9c        dec   a
08e6: d5 a9 02  mov   $02a9+x,a
08e9: e8 0a     mov   a,#$0a
08eb: d5 49 02  mov   $0249+x,a
08ee: e8 80     mov   a,#$80
08f0: d5 f9 01  mov   $01f9+x,a
08f3: c8 08     cmp   x,#$08
08f5: 90 20     bcc   $0917
08f7: 6d        push  y
08f8: f5 63 14  mov   a,$1463+x
08fb: 0e 51 00  tset1 $0051
08fe: 4e 4f 00  tclr1 $004f
0901: 4e 38 00  tclr1 $0038
0904: 4e 52 00  tclr1 $0052
0907: 7d        mov   a,x
0908: 28 07     and   a,#$07
090a: fd        mov   y,a
090b: f6 f9 01  mov   a,$01f9+y
090e: 28 7f     and   a,#$7f
0910: d6 f9 01  mov   $01f9+y,a
0913: 8f 00 53  mov   $53,#$00
0916: ee        pop   y
0917: 6f        ret

0918: 3f 40 09  call  $0940
091b: e8 70     mov   a,#$70
091d: 8d 0c     mov   y,#$0c
091f: cb f2     mov   $f2,y
0921: c4 f3     mov   $f3,a
0923: 8d 1c     mov   y,#$1c
0925: cb f2     mov   $f2,y
0927: c4 f3     mov   $f3,a
0929: e8 00     mov   a,#$00
092b: 8d 3d     mov   y,#$3d
092d: cb f2     mov   $f2,y
092f: c4 f3     mov   $f3,a
0931: 8d 2d     mov   y,#$2d
0933: cb f2     mov   $f2,y
0935: c4 f3     mov   $f3,a
0937: e8 18     mov   a,#$18
0939: 8d 5d     mov   y,#$5d
093b: cb f2     mov   $f2,y
093d: c4 f3     mov   $f3,a
093f: 6f        ret

0940: 8f 00 4d  mov   $4d,#$00
0943: 8f 01 45  mov   $45,#$01
0946: 8f 01 44  mov   $44,#$01
0949: 8f 01 49  mov   $49,#$01
094c: 3f 9e 0e  call  $0e9e
094f: 8f ff 47  mov   $47,#$ff
0952: 8f ff 4a  mov   $4a,#$ff
0955: 8f ff 4b  mov   $4b,#$ff
0958: 6f        ret

0959: e8 00     mov   a,#$00
095b: 5d        mov   x,a
095c: af        mov   (x)+,a
095d: c8 f0     cmp   x,#$f0
095f: d0 fb     bne   $095c
0961: cd 00     mov   x,#$00
0963: d5 50 01  mov   $0150+x,a
0966: d5 50 02  mov   $0250+x,a
0969: d5 50 03  mov   $0350+x,a
096c: 3d        inc   x
096d: d0 f4     bne   $0963
096f: cd 00     mov   x,#$00
0971: d5 50 04  mov   $0450+x,a
0974: 3d        inc   x
0975: c8 20     cmp   x,#$20
0977: 90 f8     bcc   $0971
0979: e8 80     mov   a,#$80
097b: c4 12     mov   $12,a
097d: c4 13     mov   $13,a
097f: e8 ff     mov   a,#$ff
0981: c4 24     mov   $24,a
0983: c4 25     mov   $25,a
0985: 6f        ret

0986: e4 25     mov   a,$25
0988: f0 7c     beq   $0a06
098a: e4 19     mov   a,$19
098c: d0 78     bne   $0a06
098e: eb 12     mov   y,$12
0990: ad 12     cmp   y,#$12
0992: f0 17     beq   $09ab
0994: f6 02 23  mov   a,$2302+y
0997: 64 53     cmp   a,$53
0999: 90 6b     bcc   $0a06
099b: 2d        push  a
099c: 8f ff 2d  mov   $2d,#$ff
099f: eb 54     mov   y,$54
09a1: d0 03     bne   $09a6
09a3: 3f 55 08  call  $0855
09a6: ae        pop   a
09a7: c4 53     mov   $53,a
09a9: 2f 06     bra   $09b1
09ab: 8f 01 54  mov   $54,#$01
09ae: 8f ff 2d  mov   $2d,#$ff
09b1: e8 00     mov   a,#$00
09b3: 8d 23     mov   y,#$23
09b5: da 03     movw  $03,ya            ; #$2300
09b7: 8d 00     mov   y,#$00
09b9: f7 03     mov   a,($03)+y
09bb: c4 01     mov   $01,a
09bd: fc        inc   y
09be: f7 03     mov   a,($03)+y
09c0: c4 02     mov   $02,a
09c2: e4 12     mov   a,$12
09c4: 1c        asl   a
09c5: fd        mov   y,a
09c6: f7 01     mov   a,($01)+y
09c8: c4 09     mov   $09,a
09ca: fc        inc   y
09cb: f7 01     mov   a,($01)+y
09cd: c4 0a     mov   $0a,a
09cf: 3f 59 10  call  $1059
09d2: c4 01     mov   $01,a
09d4: 8d 08     mov   y,#$08
09d6: 8f 08 16  mov   $16,#$08
09d9: 6d        push  y
09da: f8 16     mov   x,$16
09dc: 4b 01     lsr   $01
09de: 90 1b     bcc   $09fb
09e0: e4 53     mov   a,$53
09e2: 2d        push  a
09e3: 3f ac 08  call  $08ac
09e6: ae        pop   a
09e7: c4 53     mov   $53,a
09e9: f5 63 14  mov   a,$1463+x
09ec: 0e 18 00  tset1 $0018
09ef: 3f 59 10  call  $1059
09f2: d5 59 01  mov   $0159+x,a         ; set score pointer (lo)
09f5: 3f 59 10  call  $1059
09f8: d5 69 01  mov   $0169+x,a         ; set score pointer (hi)
09fb: ab 16     inc   $16
09fd: ee        pop   y
09fe: fe d9     dbnz  y,$09d9
0a00: 03 31 03  bbs0  $31,$0a06
0a03: 8f ff 25  mov   $25,#$ff
0a06: e2 12     set7  $12
0a08: 6f        ret

0a09: 9b 55     dec   $55+x
0a0b: f0 65     beq   $0a72
0a0d: f5 49 04  mov   a,$0449+x
0a10: d0 5f     bne   $0a71
0a12: f4 55     mov   a,$55+x
0a14: 74 65     cmp   a,$65+x
0a16: d0 59     bne   $0a71
0a18: f5 69 01  mov   a,$0169+x
0a1b: fd        mov   y,a
0a1c: f5 59 01  mov   a,$0159+x
0a1f: da 09     movw  $09,ya
0a21: 8d 00     mov   y,#$00
0a23: f7 09     mov   a,($09)+y
0a25: 3a 09     incw  $09
0a27: 68 00     cmp   a,#$00
0a29: d0 13     bne   $0a3e
0a2b: f5 b9 01  mov   a,$01b9+x
0a2e: f0 33     beq   $0a63
0a30: f5 99 01  mov   a,$0199+x
0a33: c4 09     mov   $09,a
0a35: f5 a9 01  mov   a,$01a9+x
0a38: c4 0a     mov   $0a,a
0a3a: f7 09     mov   a,($09)+y
0a3c: 3a 09     incw  $09
0a3e: 68 e2     cmp   a,#$e2
0a40: f0 2f     beq   $0a71
0a42: 68 f9     cmp   a,#$f9
0a44: f0 2b     beq   $0a71
0a46: 68 ef     cmp   a,#$ef
0a48: d0 13     bne   $0a5d
0a4a: f7 09     mov   a,($09)+y
0a4c: 3a 09     incw  $09
0a4e: 2d        push  a
0a4f: f7 09     mov   a,($09)+y
0a51: c4 0a     mov   $0a,a
0a53: ae        pop   a
0a54: c4 09     mov   $09,a
0a56: f7 09     mov   a,($09)+y
0a58: 3a 09     incw  $09
0a5a: 5f 3e 0a  jmp   $0a3e

0a5d: f7 09     mov   a,($09)+y
0a5f: 68 c8     cmp   a,#$c8
0a61: f0 0e     beq   $0a71
0a63: f5 63 14  mov   a,$1463+x
0a66: c8 08     cmp   x,#$08
0a68: b0 04     bcs   $0a6e
0a6a: 0e 50 00  tset1 $0050
0a6d: 6f        ret

0a6e: 0e 51 00  tset1 $0051
0a71: 6f        ret

0a72: f5 69 01  mov   a,$0169+x         ; score pointer (hi)
0a75: fd        mov   y,a
0a76: f5 59 01  mov   a,$0159+x         ; score pointer (lo)
0a79: da 09     movw  $09,ya
0a7b: f8 16     mov   x,$16
0a7d: 3f 59 10  call  $1059             ; read vcmd
0a80: d0 03     bne   $0a85
0a82: 5f 44 0b  jmp   $0b44

0a85: 30 35     bmi   $0abc
0a87: fd        mov   y,a
0a88: f5 e9 01  mov   a,$01e9+x
0a8b: cf        mul   ya
0a8c: d5 89 02  mov   $0289+x,a
0a8f: f5 49 04  mov   a,$0449+x
0a92: f0 0b     beq   $0a9f
0a94: f5 89 02  mov   a,$0289+x
0a97: d4 55     mov   $55+x,a
0a99: f5 49 03  mov   a,$0349+x
0a9c: 5f 06 0b  jmp   $0b06

0a9f: 3f 59 10  call  $1059
0aa2: 30 18     bmi   $0abc
0aa4: 2d        push  a
0aa5: 9f        xcn   a
0aa6: 28 07     and   a,#$07
0aa8: fd        mov   y,a
0aa9: f6 4b 14  mov   a,$144b+y
0aac: d5 99 02  mov   $0299+x,a
0aaf: ae        pop   a
0ab0: 28 0f     and   a,#$0f
0ab2: fd        mov   y,a
0ab3: f6 53 14  mov   a,$1453+y
0ab6: d5 a9 02  mov   $02a9+x,a
0ab9: 3f 59 10  call  $1059
; vcmd branches 80-ff
0abc: 68 e0     cmp   a,#$e0
0abe: 90 0e     bcc   $0ace
; dispatch vcmd
0ac0: 80        setc
0ac1: a8 e0     sbc   a,#$e0
0ac3: 1c        asl   a
0ac4: 5d        mov   x,a
0ac5: e8 0a     mov   a,#$0a
0ac7: 2d        push  a
0ac8: e8 7b     mov   a,#$7b
0aca: 2d        push  a
0acb: 1f 61 10  jmp   ($1061+x)

; vcmds 80-df
0ace: 2d        push  a
0acf: e8 00     mov   a,#$00
0ad1: d5 19 03  mov   $0319+x,a
0ad4: f5 89 02  mov   a,$0289+x
0ad7: d4 55     mov   $55+x,a
0ad9: 2d        push  a
0ada: fd        mov   y,a
0adb: f5 99 02  mov   a,$0299+x
0ade: cf        mul   ya
0adf: dd        mov   a,y
0ae0: d0 01     bne   $0ae3
0ae2: bc        inc   a
0ae3: c4 01     mov   $01,a
0ae5: ae        pop   a
0ae6: 80        setc
0ae7: a4 01     sbc   a,$01
0ae9: d4 65     mov   $65+x,a
0aeb: ae        pop   a
0aec: 68 c8     cmp   a,#$c8
0aee: f0 4a     beq   $0b3a
0af0: 68 c9     cmp   a,#$c9
0af2: d0 08     bne   $0afc
0af4: e8 01     mov   a,#$01
0af6: d5 19 03  mov   $0319+x,a
0af9: 5f 3a 0b  jmp   $0b3a

0afc: 68 ca     cmp   a,#$ca
0afe: 90 06     bcc   $0b06
0b00: fd        mov   y,a
0b01: 3f a6 10  call  $10a6
0b04: e8 a4     mov   a,#$a4
0b06: 28 7f     and   a,#$7f
0b08: 60        clrc
0b09: 95 29 03  adc   a,$0329+x
0b0c: 60        clrc
0b0d: 95 39 03  adc   a,$0339+x
0b10: c8 08     cmp   x,#$08
0b12: b0 03     bcs   $0b17
0b14: 60        clrc
0b15: 84 4c     adc   a,$4c
0b17: d4 c5     mov   $c5+x,a
0b19: f5 59 03  mov   a,$0359+x
0b1c: d4 b5     mov   $b5+x,a
0b1e: e8 00     mov   a,#$00
0b20: d5 09 04  mov   $0409+x,a
0b23: d5 29 04  mov   $0429+x,a
0b26: f5 49 04  mov   a,$0449+x
0b29: d0 0f     bne   $0b3a
0b2b: f5 63 14  mov   a,$1463+x
0b2e: c8 08     cmp   x,#$08
0b30: b0 05     bcs   $0b37
0b32: 0e 4e 00  tset1 $004e
0b35: 2f 03     bra   $0b3a
0b37: 0e 4f 00  tset1 $004f
0b3a: ba 09     movw  ya,$09
0b3c: d5 59 01  mov   $0159+x,a
0b3f: dd        mov   a,y
0b40: d5 69 01  mov   $0169+x,a
0b43: 6f        ret

0b44: f5 b9 01  mov   a,$01b9+x
0b47: f0 20     beq   $0b69
0b49: 9c        dec   a
0b4a: d5 b9 01  mov   $01b9+x,a
0b4d: f0 0d     beq   $0b5c
0b4f: f5 79 01  mov   a,$0179+x
0b52: c4 09     mov   $09,a
0b54: f5 89 01  mov   a,$0189+x
0b57: c4 0a     mov   $0a,a
0b59: 5f 7b 0a  jmp   $0a7b

0b5c: f5 99 01  mov   a,$0199+x
0b5f: c4 09     mov   $09,a
0b61: f5 a9 01  mov   a,$01a9+x
0b64: c4 0a     mov   $0a,a
0b66: 5f 7b 0a  jmp   $0a7b

0b69: f5 63 14  mov   a,$1463+x
0b6c: c8 08     cmp   x,#$08
0b6e: b0 04     bcs   $0b74
0b70: 4e 17 00  tclr1 $0017
0b73: 6f        ret

0b74: f5 63 14  mov   a,$1463+x
0b77: 0e 1a 00  tset1 $001a
0b7a: e4 38     mov   a,$38
0b7c: 2d        push  a
0b7d: 3f ac 08  call  $08ac
0b80: ae        pop   a
0b81: c4 38     mov   $38,a
0b83: e4 38     mov   a,$38
0b85: f0 03     beq   $0b8a
0b87: 8f 00 24  mov   $24,#$00
0b8a: 6f        ret

0b8b: e4 18     mov   a,$18
0b8d: d0 10     bne   $0b9f
0b8f: e4 38     mov   a,$38
0b91: f0 0c     beq   $0b9f
0b93: 3f af 12  call  $12af
0b96: 3f f9 13  call  $13f9
0b99: 8f 00 38  mov   $38,#$00
0b9c: fa 26 24  mov   ($24),($26)
0b9f: 6f        ret

0ba0: 4d        push  x
0ba1: 8d 00     mov   y,#$00
0ba3: e4 10     mov   a,$10
0ba5: cd 0c     mov   x,#$0c
0ba7: 9e        div   ya,x
0ba8: 68 07     cmp   a,#$07
0baa: 90 02     bcc   $0bae
0bac: e8 06     mov   a,#$06
0bae: 1c        asl   a
0baf: 5d        mov   x,a
0bb0: f6 27 14  mov   a,$1427+y
0bb3: c4 0b     mov   $0b,a
0bb5: f6 33 14  mov   a,$1433+y
0bb8: c4 0c     mov   $0c,a
0bba: f6 3f 14  mov   a,$143f+y
0bbd: eb 0f     mov   y,$0f
0bbf: cf        mul   ya
0bc0: dd        mov   a,y
0bc1: 8d 00     mov   y,#$00
0bc3: 7a 0b     addw  ya,$0b
0bc5: da 0b     movw  $0b,ya
0bc7: 7a 0b     addw  ya,$0b
0bc9: da 0b     movw  $0b,ya
0bcb: 1f ce 0b  jmp   ($0bce+x)

0bce: dc        dec   y
0bcf: 0b df     asl   $df
0bd1: 0b e2     asl   $e2
0bd3: 0b e5     asl   $e5
0bd5: 0b e8     asl   $e8
0bd7: 0b eb     asl   $eb
0bd9: 0b ee     asl   $ee
0bdb: 0b 4b     asl   $4b
0bdd: 0c 7c 4b  asl   $4b7c
0be0: 0c 7c 4b  asl   $4b7c
0be3: 0c 7c 4b  asl   $4b7c
0be6: 0c 7c 4b  asl   $4b7c
0be9: 0c 7c 4b  asl   $4b7c
0bec: 0c 7c c4  asl   $c47c
0bef: 0b ce     asl   $ce
0bf1: f5 29 02  mov   a,$0229+x
0bf4: eb 0c     mov   y,$0c
0bf6: cf        mul   ya
0bf7: da 0d     movw  $0d,ya
0bf9: f5 29 02  mov   a,$0229+x
0bfc: eb 0b     mov   y,$0b
0bfe: cf        mul   ya
0bff: 6d        push  y
0c00: f5 39 02  mov   a,$0239+x
0c03: eb 0b     mov   y,$0b
0c05: cf        mul   ya
0c06: 7a 0d     addw  ya,$0d
0c08: da 0d     movw  $0d,ya
0c0a: f5 39 02  mov   a,$0239+x
0c0d: eb 0c     mov   y,$0c
0c0f: cf        mul   ya
0c10: fd        mov   y,a
0c11: ae        pop   a
0c12: 7a 0d     addw  ya,$0d
0c14: d4 95     mov   $95+x,a
0c16: db a5     mov   $a5+x,y
0c18: 6f        ret

0c19: a3 00 18  bbs5  $00,$0c34
0c1c: d3 00 16  bbc6  $00,$0c35
0c1f: e4 24     mov   a,$24
0c21: f0 0a     beq   $0c2d
0c23: 80        setc
0c24: a4 2e     sbc   a,$2e
0c26: b0 02     bcs   $0c2a
0c28: e8 00     mov   a,#$00
0c2a: c4 24     mov   $24,a
0c2c: 6f        ret

0c2d: d2 00     clr6  $00
0c2f: c4 17     mov   $17,a
0c31: 9c        dec   a
0c32: c4 50     mov   $50,a
0c34: 6f        ret

0c35: f3 00 18  bbc7  $00,$0c50
0c38: e4 17     mov   a,$17
0c3a: f0 14     beq   $0c50
0c3c: e4 24     mov   a,$24
0c3e: 64 26     cmp   a,$26
0c40: b0 0c     bcs   $0c4e
0c42: 60        clrc
0c43: 84 2e     adc   a,$2e
0c45: 64 26     cmp   a,$26
0c47: 90 02     bcc   $0c4b
0c49: e4 26     mov   a,$26
0c4b: c4 24     mov   $24,a
0c4d: 6f        ret

0c4e: f2 00     clr7  $00
0c50: 6f        ret

0c51: f5 19 03  mov   a,$0319+x
0c54: d0 11     bne   $0c67
0c56: f5 d9 03  mov   a,$03d9+x
0c59: f0 0c     beq   $0c67
0c5b: f5 69 03  mov   a,$0369+x
0c5e: f0 08     beq   $0c68
0c60: f5 69 03  mov   a,$0369+x
0c63: 9c        dec   a
0c64: d5 69 03  mov   $0369+x,a
0c67: 6f        ret

0c68: f5 d9 03  mov   a,$03d9+x
0c6b: 9c        dec   a
0c6c: d5 d9 03  mov   $03d9+x,a
0c6f: d0 0b     bne   $0c7c
0c71: f5 59 03  mov   a,$0359+x
0c74: d4 b5     mov   $b5+x,a
0c76: f5 99 03  mov   a,$0399+x
0c79: d4 c5     mov   $c5+x,a
0c7b: 6f        ret

0c7c: f4 b5     mov   a,$b5+x
0c7e: 60        clrc
0c7f: 95 79 03  adc   a,$0379+x
0c82: d4 b5     mov   $b5+x,a
0c84: f4 c5     mov   a,$c5+x
0c86: 95 89 03  adc   a,$0389+x
0c89: d4 c5     mov   $c5+x,a
0c8b: 6f        ret

0c8c: 8f 00 01  mov   $01,#$00
0c8f: 8f 00 02  mov   $02,#$00
0c92: f5 19 03  mov   a,$0319+x
0c95: d0 44     bne   $0cdb
0c97: f5 39 04  mov   a,$0439+x
0c9a: f0 3f     beq   $0cdb
0c9c: f5 09 04  mov   a,$0409+x
0c9f: 75 f9 03  cmp   a,$03f9+x
0ca2: b0 07     bcs   $0cab
0ca4: bc        inc   a
0ca5: d5 09 04  mov   $0409+x,a
0ca8: 5f db 0c  jmp   $0cdb

0cab: f5 29 04  mov   a,$0429+x
0cae: 60        clrc
0caf: 95 19 04  adc   a,$0419+x
0cb2: 90 02     bcc   $0cb6
0cb4: e8 00     mov   a,#$00
0cb6: d5 29 04  mov   $0429+x,a
0cb9: fd        mov   y,a
0cba: 10 04     bpl   $0cc0
0cbc: 48 ff     eor   a,#$ff
0cbe: 8b 02     dec   $02
0cc0: 1c        asl   a
0cc1: 30 04     bmi   $0cc7
0cc3: dd        mov   a,y
0cc4: 5f ca 0c  jmp   $0cca

0cc7: dd        mov   a,y
0cc8: 48 ff     eor   a,#$ff
0cca: 28 3f     and   a,#$3f
0ccc: 1c        asl   a
0ccd: 1c        asl   a
0cce: fd        mov   y,a
0ccf: f5 39 04  mov   a,$0439+x
0cd2: cf        mul   ya
0cd3: dd        mov   a,y
0cd4: 13 02 02  bbc0  $02,$0cd9
0cd7: 48 ff     eor   a,#$ff
0cd9: c4 01     mov   $01,a
0cdb: e4 01     mov   a,$01
0cdd: 60        clrc
0cde: 94 b5     adc   a,$b5+x
0ce0: c4 0f     mov   $0f,a
0ce2: e4 02     mov   a,$02
0ce4: 94 c5     adc   a,$c5+x
0ce6: c4 10     mov   $10,a
0ce8: 6f        ret

0ce9: f5 59 02  mov   a,$0259+x
0cec: f0 37     beq   $0d25
0cee: f5 69 02  mov   a,$0269+x
0cf1: bc        inc   a
0cf2: d5 69 02  mov   $0269+x,a
0cf5: 75 59 02  cmp   a,$0259+x
0cf8: 90 2b     bcc   $0d25
0cfa: e8 00     mov   a,#$00
0cfc: d5 69 02  mov   $0269+x,a
0cff: f5 79 02  mov   a,$0279+x
0d02: 30 0d     bmi   $0d11
0d04: f5 49 02  mov   a,$0249+x
0d07: 75 79 02  cmp   a,$0279+x
0d0a: b0 14     bcs   $0d20
0d0c: bc        inc   a
0d0d: d5 49 02  mov   $0249+x,a
0d10: 6f        ret

0d11: 28 1f     and   a,#$1f
0d13: 75 49 02  cmp   a,$0249+x
0d16: b0 08     bcs   $0d20
0d18: f5 49 02  mov   a,$0249+x
0d1b: 9c        dec   a
0d1c: d5 49 02  mov   $0249+x,a
0d1f: 6f        ret

0d20: e8 00     mov   a,#$00
0d22: d5 59 02  mov   $0259+x,a
0d25: 6f        ret

0d26: f5 d9 02  mov   a,$02d9+x
0d29: f0 21     beq   $0d4c
0d2b: f4 75     mov   a,$75+x
0d2d: 60        clrc
0d2e: 95 f9 02  adc   a,$02f9+x
0d31: d4 75     mov   $75+x,a
0d33: f4 85     mov   a,$85+x
0d35: 95 09 03  adc   a,$0309+x
0d38: d4 85     mov   $85+x,a
0d3a: f5 d9 02  mov   a,$02d9+x
0d3d: 9c        dec   a
0d3e: d5 d9 02  mov   $02d9+x,a
0d41: d0 09     bne   $0d4c
0d43: e8 00     mov   a,#$00
0d45: d4 75     mov   $75+x,a
0d47: f5 e9 02  mov   a,$02e9+x
0d4a: d4 85     mov   $85+x,a
0d4c: 6f        ret

0d4d: e4 29     mov   a,$29
0d4f: f0 0b     beq   $0d5c
0d51: ba 2b     movw  ya,$2b
0d53: 7a 27     addw  ya,$27
0d55: 6e 29 02  dbnz  $29,$0d5a
0d58: ba 29     movw  ya,$29
0d5a: da 27     movw  $27,ya
0d5c: 6f        ret

0d5d: e4 1c     mov   a,$1c
0d5f: f0 0b     beq   $0d6c
0d61: ba 1e     movw  ya,$1e
0d63: 7a 20     addw  ya,$20
0d65: 6e 1c 02  dbnz  $1c,$0d6a
0d68: ba 1c     movw  ya,$1c
0d6a: da 1e     movw  $1e,ya
0d6c: 6f        ret

0d6d: f5 a9 03  mov   a,$03a9+x
0d70: f0 0c     beq   $0d7e
0d72: f5 b9 03  mov   a,$03b9+x
0d75: 75 a9 03  cmp   a,$03a9+x
0d78: b0 05     bcs   $0d7f
0d7a: bc        inc   a
0d7b: d5 b9 03  mov   $03b9+x,a
0d7e: 6f        ret

0d7f: e8 00     mov   a,#$00
0d81: d5 b9 03  mov   $03b9+x,a
0d84: e4 52     mov   a,$52
0d86: 35 63 14  and   a,$1463+x
0d89: d0 03     bne   $0d8e
0d8b: 5f 7c 0c  jmp   $0c7c

0d8e: e4 4d     mov   a,$4d
0d90: 60        clrc
0d91: 95 79 03  adc   a,$0379+x
0d94: 28 1f     and   a,#$1f
0d96: c4 4d     mov   $4d,a
0d98: 6f        ret

0d99: e4 17     mov   a,$17
0d9b: 04 18     or    a,$18
0d9d: f0 0e     beq   $0dad
0d9f: e8 70     mov   a,#$70
0da1: 8d 0c     mov   y,#$0c
0da3: cb f2     mov   $f2,y
0da5: c4 f3     mov   $f3,a
0da7: 8d 1c     mov   y,#$1c
0da9: cb f2     mov   $f2,y
0dab: c4 f3     mov   $f3,a
0dad: 6f        ret

0dae: 3f 22 0e  call  $0e22
0db1: f3 4a 1b  bbc7  $4a,$0dcf
0db4: a3 00 18  bbs5  $00,$0dcf
0db7: cd 00     mov   x,#$00
0db9: e4 18     mov   a,$18
0dbb: 35 63 14  and   a,$1463+x
0dbe: d0 0a     bne   $0dca
0dc0: e4 17     mov   a,$17
0dc2: 35 63 14  and   a,$1463+x
0dc5: f0 03     beq   $0dca
0dc7: 3f a7 0f  call  $0fa7
0dca: 3d        inc   x
0dcb: c8 08     cmp   x,#$08
0dcd: 90 ea     bcc   $0db9
0dcf: f3 4b 11  bbc7  $4b,$0de3
0dd2: cd 08     mov   x,#$08
0dd4: e4 18     mov   a,$18
0dd6: 35 63 14  and   a,$1463+x
0dd9: f0 03     beq   $0dde
0ddb: 3f a7 0f  call  $0fa7
0dde: 3d        inc   x
0ddf: c8 10     cmp   x,#$10
0de1: 90 f1     bcc   $0dd4
0de3: 3f 04 0e  call  $0e04
0de6: 3f 57 0e  call  $0e57
0de9: e4 4d     mov   a,$4d
0deb: eb 49     mov   y,$49
0ded: ad 04     cmp   y,#$04
0def: b0 02     bcs   $0df3
0df1: 08 20     or    a,#$20
0df3: 04 46     or    a,$46
0df5: 8d 6c     mov   y,#$6c
0df7: cb f2     mov   $f2,y
0df9: c4 f3     mov   $f3,a
0dfb: e4 52     mov   a,$52
0dfd: 8d 3d     mov   y,#$3d
0dff: cb f2     mov   $f2,y
0e01: c4 f3     mov   $f3,a
0e03: 6f        ret

0e04: b3 00 03  bbc5  $00,$0e0a
0e07: 8f 00 4e  mov   $4e,#$00
0e0a: e4 18     mov   a,$18
0e0c: 48 ff     eor   a,#$ff
0e0e: 24 4e     and   a,$4e
0e10: 25 59 04  and   a,$0459
0e13: 04 4f     or    a,$4f
0e15: 8d 4c     mov   y,#$4c
0e17: cb f2     mov   $f2,y
0e19: c4 f3     mov   $f3,a
0e1b: e8 00     mov   a,#$00
0e1d: c4 4e     mov   $4e,a
0e1f: c4 4f     mov   $4f,a
0e21: 6f        ret

0e22: b3 00 03  bbc5  $00,$0e28
0e25: 8f ff 50  mov   $50,#$ff
0e28: e4 18     mov   a,$18
0e2a: 48 ff     eor   a,#$ff
0e2c: 24 50     and   a,$50
0e2e: 04 51     or    a,$51
0e30: 8d 5c     mov   y,#$5c
0e32: cb f2     mov   $f2,y
0e34: c4 f3     mov   $f3,a
0e36: 3f 4b 0e  call  $0e4b
0e39: e8 00     mov   a,#$00
0e3b: 8d 5c     mov   y,#$5c
0e3d: cb f2     mov   $f2,y
0e3f: c4 f3     mov   $f3,a
0e41: 3f 4b 0e  call  $0e4b
0e44: e8 00     mov   a,#$00
0e46: c4 50     mov   $50,a
0e48: c4 51     mov   $51,a
0e4a: 6f        ret

0e4b: e8 11     mov   a,#$11
0e4d: 9c        dec   a
0e4e: d0 fd     bne   $0e4d
0e50: 6f        ret

0e51: e8 ff     mov   a,#$ff
0e53: 9c        dec   a
0e54: d0 fd     bne   $0e53
0e56: 6f        ret

0e57: e3 47 37  bbs7  $47,$0e91
0e5a: fa 32 3e  mov   ($3e),($32)
0e5d: fa 38 3f  mov   ($3f),($38)
0e60: e4 38     mov   a,$38
0e62: d0 14     bne   $0e78
0e64: fa 32 40  mov   ($40),($32)
0e67: fa 33 41  mov   ($41),($33)
0e6a: fa 34 42  mov   ($42),($34)
0e6d: fa 35 43  mov   ($43),($35)
0e70: fa 36 44  mov   ($44),($36)
0e73: fa 37 45  mov   ($45),($37)
0e76: 2f 12     bra   $0e8a
0e78: fa 38 40  mov   ($40),($38)
0e7b: fa 39 41  mov   ($41),($39)
0e7e: fa 3a 42  mov   ($42),($3a)
0e81: fa 3b 43  mov   ($43),($3b)
0e84: fa 3c 44  mov   ($44),($3c)
0e87: fa 3d 45  mov   ($45),($3d)
0e8a: e4 49     mov   a,$49
0e8c: 1c        asl   a
0e8d: 5d        mov   x,a
0e8e: 1f 92 0e  jmp   ($0e92+x)

0e91: 6f        ret

0e92: 19        or    (x),(y)
0e93: 0f        brk
0e94: 9e        div   ya,x
0e95: 0e 06 0f  tset1 $0f06
0e98: 0e 0f 06  tset1 $060f
0e9b: 0f        brk
0e9c: 22 0f     set1  $0f
0e9e: e8 7d     mov   a,#$7d
0ea0: c4 f2     mov   $f2,a
0ea2: e4 f3     mov   a,$f3
0ea4: 28 0f     and   a,#$0f
0ea6: d0 01     bne   $0ea9
0ea8: bc        inc   a
0ea9: 3f 91 0f  call  $0f91
0eac: ab 49     inc   $49
0eae: e8 00     mov   a,#$00
0eb0: 8d 2c     mov   y,#$2c
0eb2: cb f2     mov   $f2,y
0eb4: c4 f3     mov   $f3,a
0eb6: 8d 3c     mov   y,#$3c
0eb8: cb f2     mov   $f2,y
0eba: c4 f3     mov   $f3,a
0ebc: 8d 0d     mov   y,#$0d
0ebe: cb f2     mov   $f2,y
0ec0: c4 f3     mov   $f3,a
0ec2: 8d 4d     mov   y,#$4d
0ec4: cb f2     mov   $f2,y
0ec6: c4 f3     mov   $f3,a
0ec8: e4 4d     mov   a,$4d
0eca: 08 20     or    a,#$20
0ecc: 8d 6c     mov   y,#$6c
0ece: cb f2     mov   $f2,y
0ed0: c4 f3     mov   $f3,a
0ed2: e4 45     mov   a,$45
0ed4: 8d 7d     mov   y,#$7d
0ed6: cb f2     mov   $f2,y
0ed8: c4 f3     mov   $f3,a
0eda: 3f f5 0e  call  $0ef5
0edd: e4 44     mov   a,$44
0edf: 1c        asl   a
0ee0: 1c        asl   a
0ee1: 1c        asl   a
0ee2: 5d        mov   x,a
0ee3: 8d 0f     mov   y,#$0f
0ee5: f5 49 0f  mov   a,$0f49+x
0ee8: cb f2     mov   $f2,y
0eea: c4 f3     mov   $f3,a
0eec: 3d        inc   x
0eed: dd        mov   a,y
0eee: 60        clrc
0eef: 88 10     adc   a,#$10
0ef1: fd        mov   y,a
0ef2: 10 f1     bpl   $0ee5
0ef4: 6f        ret

0ef5: 1c        asl   a
0ef6: 1c        asl   a
0ef7: 1c        asl   a
0ef8: c4 01     mov   $01,a
0efa: e8 ff     mov   a,#$ff
0efc: 80        setc
0efd: a4 01     sbc   a,$01
0eff: 8d 6d     mov   y,#$6d
0f01: cb f2     mov   $f2,y
0f03: c4 f3     mov   $f3,a
0f05: 6f        ret

0f06: 3f 9d 0f  call  $0f9d
0f09: 90 02     bcc   $0f0d
0f0b: ab 49     inc   $49
0f0d: 6f        ret

0f0e: e4 45     mov   a,$45
0f10: d0 01     bne   $0f13
0f12: bc        inc   a
0f13: 3f 91 0f  call  $0f91
0f16: ab 49     inc   $49
0f18: 6f        ret

0f19: 8f 00 3e  mov   $3e,#$00
0f1c: 8f 00 3f  mov   $3f,#$00
0f1f: 8f 00 40  mov   $40,#$00
0f22: e4 43     mov   a,$43
0f24: 8d 0d     mov   y,#$0d
0f26: cb f2     mov   $f2,y
0f28: c4 f3     mov   $f3,a
0f2a: e4 41     mov   a,$41
0f2c: 8d 2c     mov   y,#$2c
0f2e: cb f2     mov   $f2,y
0f30: c4 f3     mov   $f3,a
0f32: e4 42     mov   a,$42
0f34: 8d 3c     mov   y,#$3c
0f36: cb f2     mov   $f2,y
0f38: c4 f3     mov   $f3,a
0f3a: e4 18     mov   a,$18
0f3c: 48 ff     eor   a,#$ff
0f3e: 24 3e     and   a,$3e
0f40: 04 3f     or    a,$3f
0f42: 8d 4d     mov   y,#$4d
0f44: cb f2     mov   $f2,y
0f46: c4 f3     mov   $f3,a
0f48: 6f        ret

0f49: db $7f,$00,$00,$00,$00,$00,$00,$00
0f51: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0f59: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
0f61: db $80,$60,$20,$30,$25,$17,$08,$02
0f69: db $80,$70,$25,$30,$50,$20,$08,$02
0f71: db $60,$20,$60,$30,$55,$17,$80,$01
0f79: db $10,$20,$30,$40,$50,$60,$70,$80
0f81: db $10,$20,$60,$30,$55,$17,$80,$01
0f89: db $10,$20,$80,$20,$fe,$a0,$b0,$c0

0f91: 8f 01 f1  mov   $f1,#$01
0f94: c4 47     mov   $47,a
0f96: 8f 00 48  mov   $48,#$00
0f99: 8f 03 f1  mov   $f1,#$03
0f9c: 6f        ret

0f9d: e4 fe     mov   a,$fe
0f9f: 60        clrc
0fa0: 84 48     adc   a,$48
0fa2: c4 48     mov   $48,a
0fa4: 64 47     cmp   a,$47
0fa6: 6f        ret

0fa7: f5 f9 01  mov   a,$01f9+x
0faa: 30 11     bmi   $0fbd
0fac: 2d        push  a
0fad: 08 80     or    a,#$80
0faf: d5 f9 01  mov   $01f9+x,a
0fb2: e8 04     mov   a,#$04
0fb4: 15 49 10  or    a,$1049+x
0fb7: fd        mov   y,a
0fb8: ae        pop   a
0fb9: cb f2     mov   $f2,y
0fbb: c4 f3     mov   $f3,a
0fbd: e8 02     mov   a,#$02
0fbf: 15 49 10  or    a,$1049+x
0fc2: fd        mov   y,a
0fc3: f4 95     mov   a,$95+x
0fc5: cb f2     mov   $f2,y
0fc7: c4 f3     mov   $f3,a
0fc9: fc        inc   y
0fca: f4 a5     mov   a,$a5+x
0fcc: cb f2     mov   $f2,y
0fce: c4 f3     mov   $f3,a
0fd0: e8 05     mov   a,#$05
0fd2: 15 49 10  or    a,$1049+x
0fd5: fd        mov   y,a
0fd6: f5 09 02  mov   a,$0209+x
0fd9: cb f2     mov   $f2,y
0fdb: c4 f3     mov   $f3,a
0fdd: fc        inc   y
0fde: f5 19 02  mov   a,$0219+x
0fe1: cb f2     mov   $f2,y
0fe3: c4 f3     mov   $f3,a
0fe5: f5 49 10  mov   a,$1049+x
0fe8: 2d        push  a
0fe9: c8 08     cmp   x,#$08
0feb: b0 07     bcs   $0ff4
0fed: e4 24     mov   a,$24
0fef: eb 28     mov   y,$28
0ff1: cf        mul   ya
0ff2: 2f 05     bra   $0ff9
0ff4: e4 25     mov   a,$25
0ff6: eb 2d     mov   y,$2d
0ff8: cf        mul   ya
0ff9: f4 85     mov   a,$85+x
0ffb: cf        mul   ya
0ffc: f5 a9 02  mov   a,$02a9+x
0fff: cf        mul   ya
1000: dd        mov   a,y
1001: cf        mul   ya
1002: cb 01     mov   $01,y
1004: e8 60     mov   a,#$60
1006: 83 00 09  bbs4  $00,$1012
1009: 6d        push  y
100a: f5 49 02  mov   a,$0249+x
100d: fd        mov   y,a
100e: f6 34 10  mov   a,$1034+y
1011: ee        pop   y
1012: cf        mul   ya
1013: dd        mov   a,y
1014: ee        pop   y
1015: cb f2     mov   $f2,y
1017: c4 f3     mov   $f3,a
1019: fc        inc   y
101a: 6d        push  y
101b: e8 60     mov   a,#$60
101d: 83 00 0a  bbs4  $00,$102a
1020: e8 14     mov   a,#$14
1022: 80        setc
1023: b5 49 02  sbc   a,$0249+x
1026: fd        mov   y,a
1027: f6 34 10  mov   a,$1034+y
102a: eb 01     mov   y,$01
102c: cf        mul   ya
102d: dd        mov   a,y
102e: ee        pop   y
102f: cb f2     mov   $f2,y
1031: c4 f3     mov   $f3,a
1033: 6f        ret

1034: db $00,$01,$03,$07,$0d,$15,$1e,$29
103c: db $34,$42,$51,$5e,$67,$6e,$73,$77
1044: db $7a,$7c,$7d,$7e,$7f

1049: db $00,$10,$20,$30,$40,$50,$60,$70
1051: db $00,$10,$20,$30,$40,$50,$60,$70

; read voice byte from $09/a
1059: 8d 00     mov   y,#$00
105b: f7 09     mov   a,($09)+y
105d: 3a 09     incw  $09
105f: fd        mov   y,a
1060: 6f        ret

1061: dw $10a1   ; e0
1063: dw $10d7   ; e1
1065: dw $10e7   ; e2
1067: dw $1107   ; e3
1069: dw $111c   ; e4
106b: dw $1124   ; e5
106d: dw $1136   ; e6
106f: dw $114d   ; e7
1071: dw $117a   ; e8
1073: dw $1191   ; e9
1075: dw $1199   ; ea
1077: dw $11a7   ; eb
1079: dw $11bc   ; ec
107b: dw $11c6   ; ed
107d: dw $11ce   ; ee
107f: dw $11f2   ; ef
1081: dw $1217   ; f0
1083: dw $1218   ; f1
1085: dw $1218   ; f2
1087: dw $122d   ; f3
1089: dw $1238   ; f4
108b: dw $1241   ; f5
108d: dw $1264   ; f6
108f: dw $128c   ; f7
1091: dw $12b9   ; f8
1093: dw $12b9   ; f9
1095: dw $12f4   ; fa
1097: dw $12fa   ; fb
1099: dw $131c   ; fc
109b: dw $1329   ; fd
109d: dw $0000   ; fe - undefined
109f: dw $133f   ; ff

10a1: f8 16     mov   x,$16
10a3: 3f 59 10  call  $10ae
10a6: 10 06     bpl   $1414
10a8: 80        setc
10a9: a8 ca     sbc   a,#$ca
10ab: 60        clrc
10ac: 84 23     adc   a,$23
10ae: d5 f9 01  mov   $01f9+x,a
10b1: 8d 04     mov   y,#$04
10b3: cf        mul   ya
10b4: da 01     movw  $01,ya
10b6: 60        clrc
10b7: 98 00 01  adc   $01,#$00
10ba: 98 17 02  adc   $02,#$17
10bd: 8d 00     mov   y,#$00
10bf: f7 01     mov   a,($01)+y
10c1: d5 09 02  mov   $0209+x,a
10c4: fc        inc   y
10c5: f7 01     mov   a,($01)+y
10c7: d5 19 02  mov   $0219+x,a
10ca: fc        inc   y
10cb: f7 01     mov   a,($01)+y
10cd: d5 39 02  mov   $0239+x,a
10d0: fc        inc   y
10d1: f7 01     mov   a,($01)+y
10d3: d5 29 02  mov   $0229+x,a
10d6: 6f        ret

10d7: f8 16     mov   x,$16
10d9: 3f 59 10  call  $1059
10dc: 28 1f     and   a,#$1f
10de: d5 49 02  mov   $0249+x,a
10e1: e8 00     mov   a,#$00
10e3: d5 59 02  mov   $0259+x,a
10e6: 6f        ret

10e7: f8 16     mov   x,$16
10e9: 3f 59 10  call  $1059
10ec: d5 59 02  mov   $0259+x,a
10ef: 3f 59 10  call  $1059
10f2: 28 1f     and   a,#$1f
10f4: d5 79 02  mov   $0279+x,a
10f7: 75 49 02  cmp   a,$0249+x
10fa: b0 05     bcs   $1101
10fc: 08 80     or    a,#$80
10fe: d5 79 02  mov   $0279+x,a
1101: e8 00     mov   a,#$00
1103: d5 69 02  mov   $0269+x,a
1106: 6f        ret

1107: f8 16     mov   x,$16
1109: 3f 59 10  call  $1059
110c: d5 f9 03  mov   $03f9+x,a
110f: 3f 59 10  call  $1059
1112: d5 19 04  mov   $0419+x,a
1115: 3f 59 10  call  $1059
1118: d5 39 04  mov   $0439+x,a
111b: 6f        ret

111c: f8 16     mov   x,$16
111e: e8 00     mov   a,#$00
1120: d5 39 04  mov   $0439+x,a
1123: 6f        ret

1124: f8 16     mov   x,$16
1126: 3f 59 10  call  $1059
1129: c8 08     cmp   x,#$08
112b: b0 06     bcs   $1133
112d: c4 28     mov   $28,a
112f: 8f 00 29  mov   $29,#$00
1132: 6f        ret

1133: c4 2d     mov   $2d,a
1135: 6f        ret

1136: f8 16     mov   x,$16
1138: 3f 59 10  call  $1059
113b: c4 29     mov   $29,a
113d: 3f 59 10  call  $1059
1140: c4 2a     mov   $2a,a
1142: 80        setc
1143: a4 28     sbc   a,$28
1145: f8 29     mov   x,$29
1147: 3f 0c 14  call  $140c
114a: da 2b     movw  $2b,ya
114c: 6f        ret

114d: f8 16     mov   x,$16
114f: 3f 59 10  call  $1059
1152: 1c        asl   a
1153: 1c        asl   a
1154: c4 1f     mov   $1f,a
1156: e8 ff     mov   a,#$ff
1158: c4 1b     mov   $1b,a
115a: 8f 00 1c  mov   $1c,#$00
115d: e8 01     mov   a,#$01
115f: c5 e9 01  mov   $01e9,a
1162: c5 ea 01  mov   $01ea,a
1165: c5 eb 01  mov   $01eb,a
1168: c5 ec 01  mov   $01ec,a
116b: c5 ed 01  mov   $01ed,a
116e: c5 ee 01  mov   $01ee,a
1171: c5 ef 01  mov   $01ef,a
1174: c5 f0 01  mov   $01f0,a
1177: 2f 00     bra   $1179
1179: 6f        ret

117a: f8 16     mov   x,$16
117c: 3f 59 10  call  $1059
117f: c4 1c     mov   $1c,a
1181: 3f 59 10  call  $1059
1184: c4 1d     mov   $1d,a
1186: 80        setc
1187: a4 1f     sbc   a,$1f
1189: f8 1c     mov   x,$1c
118b: 3f 0c 14  call  $140c
118e: da 20     movw  $20,ya
1190: 6f        ret

1191: f8 16     mov   x,$16
1193: 3f 59 10  call  $1059
1196: c4 4c     mov   $4c,a
1198: 6f        ret

1199: f8 16     mov   x,$16
119b: 3f 59 10  call  $1059
119e: d5 29 03  mov   $0329+x,a
11a1: e8 00     mov   a,#$00
11a3: d5 39 03  mov   $0339+x,a
11a6: 6f        ret

11a7: f8 16     mov   x,$16
11a9: 3f 59 10  call  $1059
11ac: 1c        asl   a
11ad: 1c        asl   a
11ae: d5 d9 01  mov   $01d9+x,a
11b1: e8 ff     mov   a,#$ff
11b3: d5 c9 01  mov   $01c9+x,a
11b6: e8 01     mov   a,#$01
11b8: d5 e9 01  mov   $01e9+x,a
11bb: 6f        ret

11bc: f8 16     mov   x,$16
11be: 3f 59 10  call  $1059
11c1: 94 85     adc   a,$85+x
11c3: d4 85     mov   $85+x,a
11c5: 6f        ret

11c6: f8 16     mov   x,$16
11c8: 3f 59 10  call  $1059
11cb: d4 85     mov   $85+x,a
11cd: 6f        ret

11ce: f8 16     mov   x,$16
11d0: 3f 59 10  call  $1059
11d3: d5 d9 02  mov   $02d9+x,a
11d6: 2d        push  a
11d7: 3f 59 10  call  $1059
11da: d5 e9 02  mov   $02e9+x,a
11dd: 80        setc
11de: b4 85     sbc   a,$85+x
11e0: ce        pop   x
11e1: 3f 0c 14  call  $140c
11e4: f8 16     mov   x,$16
11e6: d5 f9 02  mov   $02f9+x,a
11e9: dd        mov   a,y
11ea: d5 09 03  mov   $0309+x,a
11ed: e8 00     mov   a,#$00
11ef: d4 75     mov   $75+x,a
11f1: 6f        ret

11f2: f8 16     mov   x,$16
11f4: 3f 59 10  call  $1059
11f7: d5 79 01  mov   $0179+x,a
11fa: 2d        push  a
11fb: 3f 59 10  call  $1059
11fe: d5 89 01  mov   $0189+x,a
1201: 2d        push  a
1202: 3f 59 10  call  $1059
1205: d5 b9 01  mov   $01b9+x,a
1208: e4 09     mov   a,$09
120a: d5 99 01  mov   $0199+x,a
120d: e4 0a     mov   a,$0a
120f: d5 a9 01  mov   $01a9+x,a
1212: ee        pop   y
1213: ae        pop   a
1214: da 09     movw  $09,ya
1216: 6f        ret

1217: 6f        ret

1218: f8 16     mov   x,$16
121a: 3f 59 10  call  $1059
121d: d5 69 03  mov   $0369+x,a
1220: 3f 59 10  call  $1059
1223: d5 c9 03  mov   $03c9+x,a
1226: 3f 59 10  call  $1059
1229: d5 e9 03  mov   $03e9+x,a
122c: 6f        ret

122d: f8 16     mov   x,$16
122f: e8 00     mov   a,#$00
1231: d5 c9 03  mov   $03c9+x,a
1234: d5 d9 03  mov   $03d9+x,a
1237: 6f        ret

1238: f8 16     mov   x,$16
123a: 3f 59 10  call  $1059
123d: d5 59 03  mov   $0359+x,a
1240: 6f        ret

1241: f8 16     mov   x,$16
1243: 3f 59 10  call  $1059
1246: c8 08     cmp   x,#$08
1248: b0 0d     bcs   $1257
124a: c4 32     mov   $32,a
124c: 3f 59 10  call  $1059
124f: c4 33     mov   $33,a
1251: 3f 59 10  call  $1059
1254: c4 34     mov   $34,a
1256: 6f        ret

1257: c4 38     mov   $38,a
1259: 3f 59 10  call  $1059
125c: c4 39     mov   $39,a
125e: 3f 59 10  call  $1059
1261: c4 3a     mov   $3a,a
1263: 6f        ret

1264: f8 16     mov   x,$16
1266: f5 63 14  mov   a,$1463+x
1269: c8 08     cmp   x,#$08
126b: b0 0d     bcs   $127a
126d: 4e 32 00  tclr1 $0032
1270: e8 00     mov   a,#$00
1272: c4 33     mov   $33,a
1274: c4 34     mov   $34,a
1276: c4 35     mov   $35,a
1278: 2f 0b     bra   $1285
127a: 4e 38 00  tclr1 $0038
127d: e8 00     mov   a,#$00
127f: c4 39     mov   $39,a
1281: c4 3a     mov   $3a,a
1283: c4 3b     mov   $3b,a
1285: 8f 00 49  mov   $49,#$00
1288: 8f 20 46  mov   $46,#$20
128b: 6f        ret

128c: f8 16     mov   x,$16
128e: 3f 59 10  call  $1059
1291: c8 08     cmp   x,#$08
1293: b0 0e     bcs   $12a3
1295: c4 37     mov   $37,a
1297: 3f 59 10  call  $1059
129a: c4 35     mov   $35,a
129c: 3f 59 10  call  $1059
129f: c4 36     mov   $36,a
12a1: 2f 0c     bra   $12af
12a3: c4 3d     mov   $3d,a
12a5: 3f 59 10  call  $1059
12a8: c4 3b     mov   $3b,a
12aa: 3f 59 10  call  $1059
12ad: c4 3c     mov   $3c,a
12af: 8f 01 49  mov   $49,#$01
12b2: 8f 00 47  mov   $47,#$00
12b5: 8f 00 46  mov   $46,#$00
12b8: 6f        ret

12b9: f8 16     mov   x,$16
12bb: 3f 59 10  call  $1059
12be: d5 69 03  mov   $0369+x,a
12c1: 3f 59 10  call  $1059
12c4: d5 d9 03  mov   $03d9+x,a
12c7: 3f 59 10  call  $1059
12ca: 60        clrc
12cb: 95 29 03  adc   a,$0329+x
12ce: 60        clrc
12cf: 95 39 03  adc   a,$0339+x
12d2: c8 08     cmp   x,#$08
12d4: b0 03     bcs   $12d9
12d6: 60        clrc
12d7: 84 4c     adc   a,$4c
12d9: 28 7f     and   a,#$7f
12db: d5 99 03  mov   $0399+x,a
12de: 80        setc
12df: b4 c5     sbc   a,$c5+x
12e1: 2d        push  a
12e2: f5 d9 03  mov   a,$03d9+x
12e5: 5d        mov   x,a
12e6: ae        pop   a
12e7: 3f 0c 14  call  $140c
12ea: f8 16     mov   x,$16
12ec: d5 79 03  mov   $0379+x,a
12ef: dd        mov   a,y
12f0: d5 89 03  mov   $0389+x,a
12f3: 6f        ret

12f4: 3f 59 10  call  $1059
12f7: c4 23     mov   $23,a
12f9: 6f        ret

12fa: f8 16     mov   x,$16
12fc: 3f 59 10  call  $1059
12ff: c4 01     mov   $01,a
1301: 3f 59 10  call  $1059
1304: 9f        xcn   a
1305: 04 01     or    a,$01
1307: 08 80     or    a,#$80
1309: d5 09 02  mov   $0209+x,a
130c: 3f 59 10  call  $1059
130f: c4 01     mov   $01,a
1311: 3f 59 10  call  $1059
1314: 9f        xcn   a
1315: 1c        asl   a
1316: 04 01     or    a,$01
1318: d5 19 02  mov   $0219+x,a
131b: 6f        ret

131c: f8 16     mov   x,$16
131e: 3f 59 10  call  $1059
1321: 60        clrc
1322: 95 39 03  adc   a,$0339+x
1325: d5 39 03  mov   $0339+x,a
1328: 6f        ret

1329: f8 16     mov   x,$16
132b: 3f 59 10  call  $1059
132e: d5 e9 01  mov   $01e9+x,a
1331: e8 00     mov   a,#$00
1333: c8 08     cmp   x,#$08
1335: b0 04     bcs   $133b
1337: c4 1f     mov   $1f,a
1339: 2f 03     bra   $133e
133b: d5 d9 01  mov   $01d9+x,a
133e: 6f        ret

133f: 8d 00     mov   y,#$00
1341: f7 09     mov   a,($09)+y
1343: 3a 09     incw  $09
1345: 5d        mov   x,a
1346: 1f 49 13  jmp   ($1349+x)

1349: dw $135b
134b: dw $1363
134d: dw $136b
134f: dw $1391
1351: dw $13c7
1353: dw $13d0
1355: dw $0000
1357: dw $13f5
1359: dw $13f9

135b: f8 16     mov   x,$16
135d: e8 00     mov   a,#$00
135f: d5 49 04  mov   $0449+x,a
1362: 6f        ret

1363: f8 16     mov   x,$16
1365: e8 01     mov   a,#$01
1367: d5 49 04  mov   $0449+x,a
136a: 6f        ret

136b: f8 16     mov   x,$16
136d: 3f 59 10  call  $1059
1370: f0 15     beq   $1387
1372: d5 a9 03  mov   $03a9+x,a
1375: 3f 59 10  call  $1059
1378: d5 79 03  mov   $0379+x,a
137b: 3f 59 10  call  $1059
137e: d5 89 03  mov   $0389+x,a
1381: e8 00     mov   a,#$00
1383: d5 b9 03  mov   $03b9+x,a
1386: 6f        ret

1387: d5 a9 03  mov   $03a9+x,a
138a: 3f 59 10  call  $1059
138d: d5 49 03  mov   $0349+x,a
1390: 6f        ret

1391: f8 16     mov   x,$16
1393: 3f 59 10  call  $1059
1396: d5 a9 03  mov   $03a9+x,a
1399: f0 08     beq   $13a3
139b: 3f 59 10  call  $1059
139e: d5 79 03  mov   $0379+x,a
13a1: 2f 09     bra   $13ac
13a3: 3f 59 10  call  $1059
13a6: 28 1f     and   a,#$1f
13a8: c4 4d     mov   $4d,a
13aa: f0 0c     beq   $13b8
13ac: e8 00     mov   a,#$00
13ae: d5 b9 03  mov   $03b9+x,a
13b1: f5 63 14  mov   a,$1463+x
13b4: 0e 52 00  tset1 $0052
13b7: 6f        ret

13b8: d5 a9 03  mov   $03a9+x,a
13bb: e8 00     mov   a,#$00
13bd: d5 b9 03  mov   $03b9+x,a
13c0: f5 63 14  mov   a,$1463+x
13c3: 4e 52 00  tclr1 $0052
13c6: 6f        ret

13c7: f8 16     mov   x,$16
13c9: f5 63 14  mov   a,$1463+x
13cc: 0e 4f 00  tset1 $004f
13cf: 6f        ret

13d0: f8 16     mov   x,$16
13d2: f5 63 14  mov   a,$1463+x
13d5: 0e 51 00  tset1 $0051
13d8: e8 00     mov   a,#$00
13da: cd 00     mov   x,#$00
13dc: d5 00 e3  mov   $e300+x,a
13df: 3d        inc   x
13e0: c8 c8     cmp   x,#$c8
13e2: 30 f8     bmi   $13dc
13e4: e8 00     mov   a,#$00
13e6: cd 00     mov   x,#$00
13e8: d5 00 e5  mov   $e500+x,a
13eb: 3d        inc   x
13ec: c8 c8     cmp   x,#$c8
13ee: 30 f8     bmi   $13e8
13f0: e8 00     mov   a,#$00
13f2: c4 11     mov   $11,a
13f4: 6f        ret

13f5: 8f 00 54  mov   $54,#$00
13f8: 6f        ret

13f9: f8 16     mov   x,$16
13fb: e8 0f     mov   a,#$0f
13fd: 33 00 02  bbc1  $00,$1402
1400: e8 07     mov   a,#$07
1402: c8 08     cmp   x,#$08
1404: b0 03     bcs   $1409
1406: c4 4a     mov   $4a,a
1408: 6f        ret

1409: c4 4b     mov   $4b,a
140b: 6f        ret

140c: ed        notc
140d: 6b 01     ror   $01
140f: 10 03     bpl   $1414
1411: 48 ff     eor   a,#$ff
1413: bc        inc   a
1414: 8d 00     mov   y,#$00
1416: 9e        div   ya,x
1417: 2d        push  a
1418: e8 00     mov   a,#$00
141a: 9e        div   ya,x
141b: ee        pop   y
141c: f3 01 07  bbc7  $01,$1426
141f: da 01     movw  $01,ya
1421: e8 00     mov   a,#$00
1423: fd        mov   y,a
1424: 9a 01     subw  ya,$01
1426: 6f        ret

; pitch table
1427: db $5f,$de,$65,$f4,$8c,$2c,$d6,$8b,$4a,$14,$ea,$cd
1433: db $08,$08,$09,$09,$0a,$0b,$0b,$0c,$0d,$0e,$0e,$0f
143f: db $7f,$87,$8f,$98,$a0,$aa,$b5,$bf,$ca,$d6,$e3,$f1

144b: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

1453: db $0a,$19,$28,$3c,$50,$64,$7d,$96,$aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff

1463: db $01,$02,$04,$08,$10,$20,$40,$80

146b: db $01,$02,$04,$08,$10,$20,$40,$80

1473: cd 01     mov   x,#$01
1475: 3f 81 05  call  $0581
1478: 75 54 01  cmp   a,$0154+x
147b: f0 22     beq   $149f
147d: fd        mov   y,a
147e: 28 7f     and   a,#$7f
1480: c4 13     mov   $13,a
1482: 68 18     cmp   a,#$18
1484: b0 05     bcs   $148b
1486: dd        mov   a,y
1487: 48 80     eor   a,#$80
1489: d4 f4     mov   $f4+x,a
148b: cd 02     mov   x,#$02
148d: 3f 81 05  call  $0581
1490: c4 14     mov   $14,a
1492: cd 03     mov   x,#$03
1494: 3f 81 05  call  $0581
1497: c4 15     mov   $15,a
1499: e8 00     mov   a,#$00
149b: c4 f6     mov   $f6,a
149d: c4 f7     mov   $f7,a
149f: 6f        ret

14a0: e4 13     mov   a,$13
14a2: e2 13     set7  $13
14a4: 10 02     bpl   $14a8
14a6: 60        clrc
14a7: 6f        ret

14a8: 68 18     cmp   a,#$18
14aa: b0 03     bcs   $14af
14ac: 5f b0 05  jmp   $05b0

14af: 80        setc
14b0: a8 18     sbc   a,#$18
14b2: 1c        asl   a
14b3: 5d        mov   x,a
14b4: e8 14     mov   a,#$14
14b6: 2d        push  a
14b7: e8 bd     mov   a,#$bd
14b9: 2d        push  a
14ba: 1f c6 14  jmp   ($14c6+x)

14bd: e5 51 01  mov   a,$0151
14c0: 48 80     eor   a,#$80
14c2: c4 f5     mov   $f5,a
14c4: 80        setc
14c5: 6f        ret

14c6: dw $152e  ; 18
14c8: dw $1538  ; 19
14ca: dw $1544  ; 1a
14cc: dw $154e  ; 1b
14ce: dw $154e  ; 1c
14d0: dw $1555  ; 1d
14d2: dw $1555  ; 1e
14d4: dw $155f  ; 1f
14d6: dw $155f  ; 20
14d8: dw $1569  ; 21
14da: dw $1575  ; 22
14dc: dw $157e  ; 23
14de: dw $1587  ; 24
14e0: dw $1590  ; 25
14e2: dw $159a  ; 26
14e4: dw $15a3  ; 27
14e6: dw $15cb  ; 28
14e8: dw $15d5  ; 29
14ea: dw $15df  ; 2a
14ec: dw $15e8  ; 2b
14ee: dw $15f2  ; 2c
14f0: dw $1605  ; 2d
14f2: dw $1619  ; 2e
14f4: dw $1623  ; 2f
14f6: dw $162d  ; 30
14f8: dw $1637  ; 31
14fa: dw $1641  ; 32
14fc: dw $164b  ; 33
14fe: dw $1655  ; 34
1500: dw $165f  ; 35
1502: dw $05ae  ; 36
1504: dw $05ae  ; 37
1506: dw $05ae  ; 38
1508: dw $05ae  ; 39
150a: dw $05ae  ; 3a
150c: dw $05ae  ; 3b
150e: dw $05ae  ; 3c
1510: dw $05ae  ; 3d
1512: dw $05ae  ; 3e
1514: dw $05ae  ; 3f
1516: dw $1669  ; 40
1518: dw $166f  ; 41
151a: dw $1675  ; 42
151c: dw $167b  ; 43
151e: dw $1681  ; 44
1520: dw $1687  ; 45
1522: dw $168d  ; 46
1524: dw $1693  ; 47
1526: dw $1699  ; 48
1528: dw $169f  ; 49
152a: dw $16a5  ; 4a
152c: dw $16ab  ; 4b

152e: e4 14     mov   a,$14
1530: 48 ff     eor   a,#$ff
1532: c5 59 04  mov   $0459,a
1535: 5f b3 16  jmp   $16b3

1538: e5 59 04  mov   a,$0459
153b: 24 17     and   a,$17
153d: 48 ff     eor   a,#$ff
153f: c4 f6     mov   $f6,a
1541: 5f b3 16  jmp   $16b3

1544: e4 14     mov   a,$14
1546: c4 1f     mov   $1f,a
1548: 8f 00 1c  mov   $1c,#$00
154b: 5f b3 16  jmp   $16b3

154e: e4 14     mov   a,$14
1550: c4 4c     mov   $4c,a
1552: 5f b3 16  jmp   $16b3

1555: e4 14     mov   a,$14
1557: c4 28     mov   $28,a
1559: 8f 00 29  mov   $29,#$00
155c: 5f b3 16  jmp   $16b3

155f: f8 14     mov   x,$14
1561: e4 15     mov   a,$15
1563: d5 f9 01  mov   $01f9+x,a
1566: 5f b3 16  jmp   $16b3

1569: f8 14     mov   x,$14
156b: f5 f9 01  mov   a,$01f9+x
156e: 28 7f     and   a,#$7f
1570: c4 f6     mov   $f6,a
1572: 5f b3 16  jmp   $16b3

1575: f8 14     mov   x,$14
1577: e4 15     mov   a,$15
1579: d4 85     mov   $85+x,a
157b: 5f b3 16  jmp   $16b3

157e: f8 14     mov   x,$14
1580: f4 85     mov   a,$85+x
1582: c4 f6     mov   $f6,a
1584: 5f b3 16  jmp   $16b3

1587: f8 14     mov   x,$14
1589: e4 15     mov   a,$15
158b: d5 d9 02  mov   $02d9+x,a
158e: 2f 1d     bra   $15ad
1590: f8 14     mov   x,$14
1592: f5 d9 02  mov   a,$02d9+x
1595: c4 f6     mov   $f6,a
1597: 5f b3 16  jmp   $16b3

159a: f8 14     mov   x,$14
159c: e4 15     mov   a,$15
159e: d5 e9 02  mov   $02e9+x,a
15a1: 2f 0a     bra   $15ad
15a3: f8 14     mov   x,$14
15a5: f5 e9 02  mov   a,$02e9+x
15a8: c4 f6     mov   $f6,a
15aa: 5f b3 16  jmp   $16b3

15ad: 4d        push  x
15ae: f5 d9 02  mov   a,$02d9+x
15b1: 2d        push  a
15b2: f5 e9 02  mov   a,$02e9+x
15b5: 80        setc
15b6: b4 85     sbc   a,$85+x
15b8: ce        pop   x
15b9: 3f 0c 14  call  $140c
15bc: ce        pop   x
15bd: d5 f9 02  mov   $02f9+x,a
15c0: dd        mov   a,y
15c1: d5 09 03  mov   $0309+x,a
15c4: e8 00     mov   a,#$00
15c6: d4 75     mov   $75+x,a
15c8: 5f b3 16  jmp   $16b3

15cb: f8 14     mov   x,$14
15cd: e4 15     mov   a,$15
15cf: d5 49 02  mov   $0249+x,a
15d2: 5f b3 16  jmp   $16b3

15d5: f8 14     mov   x,$14
15d7: f5 49 02  mov   a,$0249+x
15da: c4 f6     mov   $f6,a
15dc: 5f b3 16  jmp   $16b3

15df: f8 14     mov   x,$14
15e1: e4 15     mov   a,$15
15e3: d5 59 02  mov   $0259+x,a
15e6: 2f 29     bra   $1611
15e8: f8 14     mov   x,$14
15ea: f5 59 02  mov   a,$0259+x
15ed: c4 f6     mov   $f6,a
15ef: 5f b3 16  jmp   $16b3

15f2: f8 14     mov   x,$14
15f4: e4 15     mov   a,$15
15f6: d5 79 02  mov   $0279+x,a
15f9: 75 49 02  cmp   a,$0249+x
15fc: b0 05     bcs   $1603
15fe: 08 80     or    a,#$80
1600: d5 79 02  mov   $0279+x,a
1603: 2f 0c     bra   $1611
1605: f8 14     mov   x,$14
1607: f5 79 02  mov   a,$0279+x
160a: 28 7f     and   a,#$7f
160c: c4 f6     mov   $f6,a
160e: 5f b3 16  jmp   $16b3

1611: e8 00     mov   a,#$00
1613: d5 69 02  mov   $0269+x,a
1616: 5f b3 16  jmp   $16b3

1619: f8 14     mov   x,$14
161b: e4 15     mov   a,$15
161d: d5 59 03  mov   $0359+x,a
1620: 5f b3 16  jmp   $16b3

1623: f8 14     mov   x,$14
1625: f5 59 03  mov   a,$0359+x
1628: c4 f6     mov   $f6,a
162a: 5f b3 16  jmp   $16b3

162d: f8 14     mov   x,$14
162f: e4 15     mov   a,$15
1631: d5 f9 03  mov   $03f9+x,a
1634: 5f b3 16  jmp   $16b3

1637: f8 14     mov   x,$14
1639: f5 f9 03  mov   a,$03f9+x
163c: c4 f6     mov   $f6,a
163e: 5f b3 16  jmp   $16b3

1641: f8 14     mov   x,$14
1643: e4 15     mov   a,$15
1645: d5 19 04  mov   $0419+x,a
1648: 5f b3 16  jmp   $16b3

164b: f8 14     mov   x,$14
164d: f5 19 04  mov   a,$0419+x
1650: c4 f6     mov   $f6,a
1652: 5f b3 16  jmp   $16b3

1655: f8 14     mov   x,$14
1657: e4 15     mov   a,$15
1659: d5 39 04  mov   $0439+x,a
165c: 5f b3 16  jmp   $16b3

165f: f8 14     mov   x,$14
1661: f5 39 04  mov   a,$0439+x
1664: c4 f6     mov   $f6,a
1666: 5f b3 16  jmp   $16b3

1669: e4 14     mov   a,$14
166b: c4 32     mov   $32,a
166d: 2f 40     bra   $16af
166f: e4 32     mov   a,$32
1671: c4 f6     mov   $f6,a
1673: 2f 3a     bra   $16af
1675: e4 14     mov   a,$14
1677: c4 33     mov   $33,a
1679: 2f 34     bra   $16af
167b: e4 33     mov   a,$33
167d: c4 f6     mov   $f6,a
167f: 2f 2e     bra   $16af
1681: e4 14     mov   a,$14
1683: c4 34     mov   $34,a
1685: 2f 28     bra   $16af
1687: e4 34     mov   a,$34
1689: c4 f6     mov   $f6,a
168b: 2f 22     bra   $16af
168d: e4 14     mov   a,$14
168f: c4 37     mov   $37,a
1691: 2f 1c     bra   $16af
1693: e4 37     mov   a,$37
1695: c4 f6     mov   $f6,a
1697: 2f 16     bra   $16af
1699: e4 14     mov   a,$14
169b: c4 35     mov   $35,a
169d: 2f 10     bra   $16af
169f: e4 35     mov   a,$35
16a1: c4 f6     mov   $f6,a
16a3: 2f 0a     bra   $16af
16a5: e4 14     mov   a,$14
16a7: c4 36     mov   $36,a
16a9: 2f 04     bra   $16af
16ab: e4 36     mov   a,$36
16ad: c4 f6     mov   $f6,a
16af: e8 01     mov   a,#$01
16b1: c4 49     mov   $49,a
16b3: 6f        ret

