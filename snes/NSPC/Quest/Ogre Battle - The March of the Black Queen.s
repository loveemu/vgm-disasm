0500: 20        clrp
0501: cd ff     mov   x,#$ff
0503: bd        mov   sp,x
0504: 8f 00 f7  mov   $f7,#$00
0507: 8f ff f4  mov   $f4,#$ff
050a: 3f 92 16  call  $1692
050d: 8f ff f5  mov   $f5,#$ff
0510: e8 01     mov   a,#$01
0512: c4 1a     mov   $1a,a
0514: c4 f7     mov   $f7,a
0516: 8f ff f6  mov   $f6,#$ff
0519: 8f 00 cb  mov   $cb,#$00
051c: 3f 66 05  call  $0566
051f: f8 18     mov   x,$18
0521: 30 f6     bmi   $0519
0523: 8b 18     dec   $18
0525: e8 05     mov   a,#$05
0527: 2d        push  a
0528: e8 1f     mov   a,#$1f
052a: 2d        push  a
052b: f5 00 02  mov   a,$0200+x
052e: c4 19     mov   $19,a
0530: 1c        asl   a
0531: 5d        mov   x,a
0532: 1f 35 05  jmp   ($0535+x)

0537: dw $0565
0539: dw $05c0
0539: dw $0620
053b: dw $0565
053d: dw $06d4
053f: dw $0565
0541: dw $0565
0543: dw $0565
0545: dw $0940
0547: dw $0962
0549: dw $0940
054b: dw $0984
054d: dw $09de
054f: dw $09c4
0551: dw $09de
0553: dw $09f5
0555: dw $0a10
0557: dw $0a2e
0559: dw $0a95
055b: dw $0a99
055d: dw $15b8
055f: dw $15c3
0561: dw $15a9
0563: dw $0a73

0565: 6f        ret

0566: 8d ff     mov   y,#$ff
0568: cb 18     mov   $18,y
056a: e4 fd     mov   a,$fd
056c: f0 06     beq   $0574
056e: fc        inc   y
056f: e8 01     mov   a,#$01
0571: d6 00 02  mov   $0200+y,a
0574: e4 fe     mov   a,$fe
0576: f0 06     beq   $057e
0578: fc        inc   y
0579: e8 02     mov   a,#$02
057b: d6 00 02  mov   $0200+y,a
057e: 3f 3c 16  call  $163c
0581: f8 d1     mov   x,$d1
0583: f0 08     beq   $058d
0585: 8f 00 d1  mov   $d1,#$00
0588: 1d        dec   x
0589: f4 d2     mov   a,$d2+x
058b: d4 d8     mov   $d8+x,a
058d: e4 d8     mov   a,$d8
058f: f0 1a     beq   $05ab
0591: 8f 00 d8  mov   $d8,#$00
0594: 68 f0     cmp   a,#$f0
0596: b0 0a     bcs   $05a2
0598: c4 cc     mov   $cc,a
059a: fc        inc   y
059b: e8 04     mov   a,#$04
059d: d6 00 02  mov   $0200+y,a
05a0: 2f 09     bra   $05ab
05a2: 28 0f     and   a,#$0f
05a4: 60        clrc
05a5: 88 08     adc   a,#$08
05a7: fc        inc   y
05a8: d6 00 02  mov   $0200+y,a
05ab: e4 d9     mov   a,$d9
05ad: f0 05     beq   $05b4
05af: 8f 00 d9  mov   $d9,#$00
05b2: c4 cf     mov   $cf,a
05b4: e4 da     mov   a,$da
05b6: f0 05     beq   $05bd
05b8: 8f 00 da  mov   $da,#$00
05bb: c4 d0     mov   $d0,a
05bd: cb 18     mov   $18,y
05bf: 6f        ret

05c0: e4 cb     mov   a,$cb
05c2: 5c        lsr   a
05c3: b0 27     bcs   $05ec
05c5: 3f 08 08  call  $0808
05c8: e8 00     mov   a,#$00
05ca: c4 5e     mov   $5e,a
05cc: c4 5c     mov   $5c,a
05ce: c4 5d     mov   $5d,a
05d0: c4 59     mov   $59,a
05d2: c4 5a     mov   $5a,a
05d4: c4 5b     mov   $5b,a
05d6: c4 00     mov   $00,a
05d8: c4 01     mov   $01,a
05da: c4 02     mov   $02,a
05dc: 3f f2 07  call  $07f2
05df: 3f 53 06  call  $0653
05e2: 3f 89 06  call  $0689
05e5: e4 03     mov   a,$03
05e7: f0 03     beq   $05ec
05e9: 3f c3 0a  call  $0ac3
05ec: ba a7     movw  ya,$a7
05ee: f0 2f     beq   $061f
05f0: 28 03     and   a,#$03
05f2: d0 08     bne   $05fc
05f4: e8 08     mov   a,#$08
05f6: fd        mov   y,a
05f7: d6 01 03  mov   $0301+y,a
05fa: fe fb     dbnz  y,$05f7
05fc: 1a a7     decw  $a7
05fe: d0 0c     bne   $060c
0600: e5 c0 04  mov   a,$04c0
0603: 68 ff     cmp   a,#$ff
0605: d0 05     bne   $060c
0607: c4 cc     mov   $cc,a
0609: 5f d4 06  jmp   $06d4

060c: 60        clrc
060d: e5 70 02  mov   a,$0270
0610: 85 6c 02  adc   a,$026c
0613: c5 6c 02  mov   $026c,a
0616: e5 71 02  mov   a,$0271
0619: 85 6d 02  adc   a,$026d
061c: c5 6d 02  mov   $026d,a
061f: 6f        ret

0620: 3f 33 08  call  $0833
0623: 8f 01 59  mov   $59,#$01
0626: e8 08     mov   a,#$08
0628: c4 5c     mov   $5c,a
062a: c4 5a     mov   $5a,a
062c: c4 01     mov   $01,a
062e: 1c        asl   a
062f: c4 5d     mov   $5d,a
0631: c4 5b     mov   $5b,a
0633: c4 02     mov   $02,a
0635: 8f 40 5e  mov   $5e,#$40
0638: 8f 40 00  mov   $00,#$40
063b: 3f 53 06  call  $0653
063e: 3f 89 06  call  $0689
0641: e4 e0     mov   a,$e0
0643: d0 04     bne   $0649
0645: e4 03     mov   a,$03
0647: f0 06     beq   $064f
0649: 8f 00 e0  mov   $e0,#$00
064c: 3f f4 0a  call  $0af4
064f: 3f 91 08  call  $0891
0652: 6f        ret

0653: e4 5a     mov   a,$5a
0655: 08 40     or    a,#$40
0657: c5 63 06  mov   $0663,a
065a: cd 07     mov   x,#$07
065c: 8d 00     mov   y,#$00
065e: f4 1d     mov   a,$1d+x
0660: 28 48     and   a,#$48
0662: 68 40     cmp   a,#$40
0664: d0 04     bne   $066a
0666: db 1d     mov   $1d+x,y
0668: db 25     mov   $25+x,y
066a: 1d        dec   x
066b: 10 f1     bpl   $065e
066d: 8f 5c f2  mov   $f2,#$5c
0670: 8f 00 f3  mov   $f3,#$00
0673: 3f 88 13  call  $1388
0676: 3f 5a 07  call  $075a
0679: 6f        ret

067a: f8 59     mov   x,$59
067c: f4 63     mov   a,$63+x
067e: d0 05     bne   $0685
0680: f4 61     mov   a,$61+x
0682: d4 63     mov   $63+x,a
0684: 6f        ret

0685: 9c        dec   a
0686: d4 63     mov   $63+x,a
0688: 6f        ret

0689: 8f 00 03  mov   $03,#$00
068c: 8f 08 04  mov   $04,#$08
068f: 2f 06     bra   $0697
0691: ab 5d     inc   $5d
0693: ab 5d     inc   $5d
0695: ab 5c     inc   $5c
0697: f8 5c     mov   x,$5c
0699: f4 3d     mov   a,$3d+x
069b: f0 33     beq   $06d0
069d: f8 5d     mov   x,$5d
069f: fb 86     mov   y,$86+x
06a1: 30 15     bmi   $06b8
06a3: f4 85     mov   a,$85+x
06a5: 5a 11     cmpw  ya,$11
06a7: d0 09     bne   $06b2
06a9: e8 80     mov   a,#$80
06ab: d4 86     mov   $86+x,a
06ad: 3f 39 07  call  $0739
06b0: 2f 06     bra   $06b8
06b2: 9a 10     subw  ya,$10
06b4: d4 85     mov   $85+x,a
06b6: db 86     mov   $86+x,y
06b8: f4 65     mov   a,$65+x
06ba: fb 66     mov   y,$66+x
06bc: 9a 10     subw  ya,$10
06be: d0 0c     bne   $06cc
06c0: f8 5c     mov   x,$5c
06c2: f4 3d     mov   a,$3d+x
06c4: 08 80     or    a,#$80
06c6: d4 3d     mov   $3d+x,a
06c8: c4 03     mov   $03,a
06ca: 2f 04     bra   $06d0
06cc: d4 65     mov   $65+x,a
06ce: db 66     mov   $66+x,y
06d0: 6e 04 be  dbnz  $04,$0691
06d3: 6f        ret

; play song?
06d4: e8 01     mov   a,#$01
06d6: c4 cb     mov   $cb,a
06d8: 9c        dec   a
06d9: c4 59     mov   $59,a
06db: c4 5a     mov   $5a,a
06dd: c4 5b     mov   $5b,a
06df: 3f 59 12  call  $1259
06e2: 3f 9c 12  call  $129c
06e5: e4 cc     mov   a,$cc
06e7: 68 ff     cmp   a,#$ff
06e9: f0 04     beq   $06ef
06eb: 68 80     cmp   a,#$80
06ed: b0 1a     bcs   $0709
06ef: c4 f4     mov   $f4,a
06f1: 68 ff     cmp   a,#$ff
06f3: f0 43     beq   $0738
06f5: 1c        asl   a
06f6: 5d        mov   x,a
06f7: e8 80     mov   a,#$80
06f9: c5 80 01  mov   $0180,a
06fc: f5 00 34  mov   a,$3400+x
06ff: c4 4e     mov   $4e,a
0701: fd        mov   y,a
0702: f5 ff 33  mov   a,$33ff+x
0705: c4 4d     mov   $4d,a
0707: 2f 16     bra   $071f
0709: c4 f4     mov   $f4,a
070b: 28 7f     and   a,#$7f
070d: 1c        asl   a
070e: 5d        mov   x,a
070f: e8 80     mov   a,#$80
0711: c5 80 01  mov   $0180,a
0714: f5 00 1e  mov   a,$1e00+x
0717: c4 4e     mov   $4e,a
0719: fd        mov   y,a
071a: f5 ff 1d  mov   a,$1dff+x
071d: c4 4d     mov   $4d,a
071f: 3f df 11  call  $11df
0722: b0 14     bcs   $0738
0724: 3f 2e 12  call  $122e
0727: 3f c3 0a  call  $0ac3
072a: e5 6b 03  mov   a,$036b
072d: c4 fa     mov   $fa,a
072f: e8 00     mov   a,#$00
0731: c5 6a 03  mov   $036a,a
0734: e4 4f     mov   a,$4f
0736: c4 f1     mov   $f1,a
0738: 6f        ret

0739: 4d        push  x
073a: f8 5c     mov   x,$5c
073c: f4 2d     mov   a,$2d+x
073e: 10 18     bpl   $0758
0740: 28 7f     and   a,#$7f
0742: d4 2d     mov   $2d+x,a
0744: 28 07     and   a,#$07
0746: 5d        mov   x,a
0747: f4 1d     mov   a,$1d+x
0749: 08 40     or    a,#$40
074b: d4 1d     mov   $1d+x,a
074d: f5 45 17  mov   a,$1745+x
0750: 8f 5c f2  mov   $f2,#$5c
0753: c4 f3     mov   $f3,a
0755: 3f 07 0d  call  $0d07
0758: ce        pop   x
0759: 6f        ret

075a: f8 59     mov   x,$59
075c: 8f 00 00  mov   $00,#$00
075f: 8f 08 01  mov   $01,#$08
0762: 8f 00 03  mov   $03,#$00
0765: f4 57     mov   a,$57+x
0767: c4 05     mov   $05,a
0769: e4 5a     mov   a,$5a
076b: c5 7e 07  mov   $077e,a
076e: f8 00     mov   x,$00
0770: f4 25     mov   a,$25+x
0772: f0 28     beq   $079c
0774: c4 02     mov   $02,a
0776: f4 1d     mov   a,$1d+x
0778: 10 22     bpl   $079c
077a: fd        mov   y,a
077b: 28 08     and   a,#$08
077d: 48 00     eor   a,#$00
077f: d0 1b     bne   $079c
0781: dd        mov   a,y
0782: 28 0f     and   a,#$0f
0784: c4 06     mov   $06,a
0786: 78 ff 02  cmp   $02,#$ff
0789: d0 0c     bne   $0797
078b: 3f e0 07  call  $07e0
078e: eb 00     mov   y,$00
0790: f6 45 17  mov   a,$1745+y
0793: 04 03     or    a,$03
0795: c4 03     mov   $03,a
0797: e4 06     mov   a,$06
0799: 3f bf 07  call  $07bf
079c: ab 00     inc   $00
079e: 6e 01 cd  dbnz  $01,$076e
07a1: e4 03     mov   a,$03
07a3: f0 13     beq   $07b8
07a5: f8 59     mov   x,$59
07a7: e4 05     mov   a,$05
07a9: d4 57     mov   $57+x,a
07ab: 8f 3d f2  mov   $f2,#$3d
07ae: fa 58 f3  mov   ($f3),($58)
07b1: 8f 4c f2  mov   $f2,#$4c
07b4: fa 03 f3  mov   ($f3),($03)
07b7: 6f        ret

07b8: 8f 3d f2  mov   $f2,#$3d
07bb: fa 58 f3  mov   ($f3),($58)
07be: 6f        ret

07bf: 9f        xcn   a
07c0: 5c        lsr   a
07c1: 5d        mov   x,a
07c2: eb 00     mov   y,$00
07c4: dd        mov   a,y
07c5: 9f        xcn   a
07c6: fd        mov   y,a
07c7: cb f2     mov   $f2,y
07c9: 8d 08     mov   y,#$08
07cb: 4b 02     lsr   $02
07cd: 90 05     bcc   $07d4
07cf: f5 00 01  mov   a,$0100+x
07d2: c4 f3     mov   $f3,a
07d4: 3d        inc   x
07d5: ab f2     inc   $f2
07d7: fe f2     dbnz  y,$07cb
07d9: e8 00     mov   a,#$00
07db: f8 00     mov   x,$00
07dd: d4 25     mov   $25+x,a
07df: 6f        ret

07e0: fd        mov   y,a
07e1: f6 2d 00  mov   a,$002d+y
07e4: 28 20     and   a,#$20
07e6: f0 09     beq   $07f1
07e8: f8 00     mov   x,$00
07ea: f5 45 17  mov   a,$1745+x
07ed: 04 05     or    a,$05
07ef: c4 05     mov   $05,a
07f1: 6f        ret

07f2: e5 6a 03  mov   a,$036a
07f5: f0 0e     beq   $0805
07f7: e8 00     mov   a,#$00
07f9: c5 6a 03  mov   $036a,a
07fc: e5 6b 03  mov   a,$036b
07ff: c4 fa     mov   $fa,a
0801: e4 4f     mov   a,$4f
0803: c4 f1     mov   $f1,a
0805: 6f        ret

0806: 2d        push  a
0807: 2d        push  a
0808: e5 80 01  mov   a,$0180
080b: 68 c0     cmp   a,#$c0
080d: 90 23     bcc   $0832
080f: 8d 00     mov   y,#$00
0811: cc 80 01  mov   $0180,y
0814: cd 07     mov   x,#$07
0816: db 3d     mov   $3d+x,y
0818: db 2d     mov   $2d+x,y
081a: f4 1d     mov   a,$1d+x
081c: 28 0f     and   a,#$0f
081e: 9f        xcn   a
081f: 30 03     bmi   $0824
0821: 3f 1e 17  call  $171e
0824: 1d        dec   x
0825: 10 ef     bpl   $0816
0827: ae        pop   a
0828: ae        pop   a
0829: 12 4f     clr0  $4f
082b: e4 4f     mov   a,$4f
082d: c4 f1     mov   $f1,a
082f: 8f ff f4  mov   $f4,#$ff
0832: 6f        ret

0833: 8f 00 00  mov   $00,#$00
0836: e5 81 01  mov   a,$0181
0839: 68 c0     cmp   a,#$c0
083b: 90 26     bcc   $0863
083d: e8 00     mov   a,#$00
083f: c5 81 01  mov   $0181,a
0842: cd 03     mov   x,#$03
0844: d4 45     mov   $45+x,a
0846: d4 35     mov   $35+x,a
0848: 1d        dec   x
0849: 10 f9     bpl   $0844
084b: cd 03     mov   x,#$03
084d: 8d 00     mov   y,#$00
084f: f4 1d     mov   a,$1d+x
0851: 9f        xcn   a
0852: 10 09     bpl   $085d
0854: 28 70     and   a,#$70
0856: 68 40     cmp   a,#$40
0858: b0 03     bcs   $085d
085a: 3f 1e 17  call  $171e
085d: 1d        dec   x
085e: 10 ef     bpl   $084f
0860: 8f ff f5  mov   $f5,#$ff
0863: e5 82 01  mov   a,$0182
0866: 68 c0     cmp   a,#$c0
0868: 90 26     bcc   $0890
086a: e8 00     mov   a,#$00
086c: c5 82 01  mov   $0182,a
086f: cd 03     mov   x,#$03
0871: d4 49     mov   $49+x,a
0873: d4 39     mov   $39+x,a
0875: 1d        dec   x
0876: 10 f9     bpl   $0871
0878: cd 07     mov   x,#$07
087a: 8d 00     mov   y,#$00
087c: f4 1d     mov   a,$1d+x
087e: 9f        xcn   a
087f: 10 09     bpl   $088a
0881: 28 70     and   a,#$70
0883: 68 40     cmp   a,#$40
0885: 90 03     bcc   $088a
0887: 3f 1e 17  call  $171e
088a: 1d        dec   x
088b: 10 ef     bpl   $087c
088d: 8f ff f6  mov   $f6,#$ff
0890: 6f        ret

0891: cd 00     mov   x,#$00
0893: d8 00     mov   $00,x
0895: f4 cf     mov   a,$cf+x
0897: f0 3a     beq   $08d3
0899: 68 ff     cmp   a,#$ff
089b: f0 1b     beq   $08b8
089d: 68 e0     cmp   a,#$e0
089f: 90 0d     bcc   $08ae
08a1: 80        setc
08a2: a8 60     sbc   a,#$60
08a4: d4 cd     mov   $cd+x,a
08a6: c4 01     mov   $01,a
08a8: e8 00     mov   a,#$00
08aa: d4 a5     mov   $a5+x,a
08ac: 2f 10     bra   $08be
08ae: 28 80     and   a,#$80
08b0: d4 a5     mov   $a5+x,a
08b2: f4 cf     mov   a,$cf+x
08b4: 28 7f     and   a,#$7f
08b6: f0 1b     beq   $08d3
08b8: d4 cd     mov   $cd+x,a
08ba: c4 01     mov   $01,a
08bc: e8 00     mov   a,#$00
08be: d4 cf     mov   $cf+x,a
08c0: 4d        push  x
08c1: 3f f4 12  call  $12f4
08c4: 78 ff 01  cmp   $01,#$ff
08c7: f0 09     beq   $08d2
08c9: 3f 3e 13  call  $133e
08cc: 3f da 08  call  $08da
08cf: 8f 01 e0  mov   $e0,#$01
08d2: ce        pop   x
08d3: 60        clrc
08d4: 3d        inc   x
08d5: c8 02     cmp   x,#$02
08d7: d0 ba     bne   $0893
08d9: 6f        ret

08da: f8 00     mov   x,$00
08dc: e8 80     mov   a,#$80
08de: d5 81 01  mov   $0181+x,a
08e1: f4 cd     mov   a,$cd+x
08e3: d4 f5     mov   $f5+x,a
08e5: 68 80     cmp   a,#$80
08e7: 90 0e     bcc   $08f7
08e9: 1c        asl   a
08ea: 5d        mov   x,a
08eb: f5 00 1f  mov   a,$1f00+x
08ee: c4 0a     mov   $0a,a
08f0: f5 01 1f  mov   a,$1f01+x
08f3: c4 0b     mov   $0b,a
08f5: 2f 0d     bra   $0904
08f7: 9c        dec   a
08f8: 1c        asl   a
08f9: 5d        mov   x,a
08fa: f5 00 1e  mov   a,$1e00+x
08fd: c4 0a     mov   $0a,a
08ff: f5 01 1e  mov   a,$1e01+x
0902: c4 0b     mov   $0b,a
0904: e4 00     mov   a,$00
0906: 1c        asl   a
0907: 1c        asl   a
0908: c4 02     mov   $02,a
090a: 1c        asl   a
090b: c4 03     mov   $03,a
090d: 8d 00     mov   y,#$00
090f: f7 0a     mov   a,($0a)+y
0911: c4 05     mov   $05,a
0913: fc        inc   y
0914: f7 0a     mov   a,($0a)+y
0916: f0 27     beq   $093f
0918: fc        inc   y
0919: f8 03     mov   x,$03
091b: d5 1b 02  mov   $021b+x,a
091e: e4 05     mov   a,$05
0920: d5 1a 02  mov   $021a+x,a
0923: f8 02     mov   x,$02
0925: f5 45 17  mov   a,$1745+x
0928: 04 60     or    a,$60
092a: c4 60     mov   $60,a
092c: 7d        mov   a,x
092d: 08 c8     or    a,#$c8
092f: d4 45     mov   $45+x,a
0931: e8 00     mov   a,#$00
0933: d4 35     mov   $35+x,a
0935: ab 02     inc   $02
0937: ab 03     inc   $03
0939: ab 03     inc   $03
093b: ad 08     cmp   y,#$08
093d: d0 d0     bne   $090f
093f: 6f        ret

0940: e5 bf 04  mov   a,$04bf
0943: d0 1c     bne   $0961
0945: 8f 5c f2  mov   $f2,#$5c
0948: 8f ff f3  mov   $f3,#$ff
094b: 8f 0d f2  mov   $f2,#$0d
094e: c4 f3     mov   $f3,a
0950: bc        inc   a
0951: c4 cb     mov   $cb,a
0953: e4 4f     mov   a,$4f
0955: c5 bf 04  mov   $04bf,a
0958: e8 00     mov   a,#$00
095a: c4 4f     mov   $4f,a
095c: c4 f1     mov   $f1,a
095e: 3f 9d 0a  call  $0a9d
0961: 6f        ret

0962: e5 bf 04  mov   a,$04bf
0965: f0 fa     beq   $0961
0967: cd 00     mov   x,#$00
0969: c9 bf 04  mov   $04bf,x
096c: 8f 5c f2  mov   $f2,#$5c
096f: d8 f3     mov   $f3,x
0971: e9 dc 03  mov   x,$03dc
0974: 8f 0d f2  mov   $f2,#$0d
0977: d8 f3     mov   $f3,x
0979: c4 4f     mov   $4f,a
097b: c4 f1     mov   $f1,a
097d: 8f 4c f2  mov   $f2,#$4c
0980: fa 1c f3  mov   ($f3),($1c)
0983: 6f        ret

0984: e5 80 01  mov   a,$0180
0987: f0 14     beq   $099d
0989: e5 c0 04  mov   a,$04c0
098c: d0 0f     bne   $099d
098e: e5 6d 02  mov   a,$026d
0991: f0 0a     beq   $099d
0993: c5 c0 04  mov   $04c0,a
0996: 5c        lsr   a
0997: fd        mov   y,a
0998: e8 05     mov   a,#$05
099a: 3f 79 0a  call  $0a79
099d: 6f        ret

099e: e5 80 01  mov   a,$0180
09a1: f0 20     beq   $09c3
09a3: e5 c0 04  mov   a,$04c0
09a6: d0 1b     bne   $09c3
09a8: e5 6d 02  mov   a,$026d
09ab: f0 16     beq   $09c3
09ad: c5 c0 04  mov   $04c0,a
09b0: e8 00     mov   a,#$00
09b2: c5 6d 02  mov   $026d,a
09b5: 8f 01 a7  mov   $a7,#$01
09b8: 8f 00 a8  mov   $a8,#$00
09bb: e8 08     mov   a,#$08
09bd: fd        mov   y,a
09be: d6 01 03  mov   $0301+y,a
09c1: fe fb     dbnz  y,$09be
09c3: 6f        ret

09c4: e5 80 01  mov   a,$0180
09c7: f0 14     beq   $09dd
09c9: e5 c0 04  mov   a,$04c0
09cc: d0 0f     bne   $09dd
09ce: e5 6d 02  mov   a,$026d
09d1: f0 0a     beq   $09dd
09d3: c5 c0 04  mov   $04c0,a
09d6: 8d 00     mov   y,#$00
09d8: e4 ca     mov   a,$ca
09da: 3f 79 0a  call  $0a79
09dd: 6f        ret

09de: e5 80 01  mov   a,$0180
09e1: f0 11     beq   $09f4
09e3: ec c0 04  mov   y,$04c0
09e6: f0 0c     beq   $09f4
09e8: d0 00     bne   $09ea
09ea: cd 00     mov   x,#$00
09ec: c9 c0 04  mov   $04c0,x
09ef: e4 ca     mov   a,$ca
09f1: 3f 79 0a  call  $0a79
09f4: 6f        ret

09f5: e5 80 01  mov   a,$0180
09f8: f0 15     beq   $0a0f
09fa: e5 c0 04  mov   a,$04c0
09fd: d0 10     bne   $0a0f
09ff: e5 6d 02  mov   a,$026d
0a02: f0 0b     beq   $0a0f
0a04: 8d ff     mov   y,#$ff
0a06: cc c0 04  mov   $04c0,y
0a09: fc        inc   y
0a0a: e4 ca     mov   a,$ca
0a0c: 3f 79 0a  call  $0a79
0a0f: 6f        ret

0a10: 8f 4c f2  mov   $f2,#$4c
0a13: 8f 00 f3  mov   $f3,#$00
0a16: 8f 5c f2  mov   $f2,#$5c
0a19: 8f ff f3  mov   $f3,#$ff
0a1c: e8 c0     mov   a,#$c0
0a1e: c5 80 01  mov   $0180,a
0a21: c5 81 01  mov   $0181,a
0a24: c5 82 01  mov   $0182,a
0a27: 8f 5c f2  mov   $f2,#$5c
0a2a: 8f 00 f3  mov   $f3,#$00
0a2d: 6f        ret

0a2e: 3f 10 0a  call  $0a10
0a31: e8 ff     mov   a,#$ff
0a33: fa 5c f2  mov   ($f2),($5c)
0a36: c4 f3     mov   $f3,a
0a38: fa 6c f2  mov   ($f2),($6c)
0a3b: c4 f3     mov   $f3,a
0a3d: 8d 00     mov   y,#$00
0a3f: dd        mov   a,y
0a40: cd 07     mov   x,#$07
0a42: c4 f2     mov   $f2,a
0a44: cb f3     mov   $f3,y
0a46: bc        inc   a
0a47: c4 f2     mov   $f2,a
0a49: cb f3     mov   $f3,y
0a4b: bc        inc   a
0a4c: c4 f2     mov   $f2,a
0a4e: cb f3     mov   $f3,y
0a50: bc        inc   a
0a51: c4 f2     mov   $f2,a
0a53: cb f3     mov   $f3,y
0a55: bc        inc   a
0a56: c4 f2     mov   $f2,a
0a58: cb f3     mov   $f3,y
0a5a: bc        inc   a
0a5b: c4 f2     mov   $f2,a
0a5d: cb f3     mov   $f3,y
0a5f: bc        inc   a
0a60: c4 f2     mov   $f2,a
0a62: cb f3     mov   $f3,y
0a64: bc        inc   a
0a65: c4 f2     mov   $f2,a
0a67: cb f3     mov   $f3,y
0a69: bc        inc   a
0a6a: 60        clrc
0a6b: 88 08     adc   a,#$08
0a6d: 1d        dec   x
0a6e: 10 d2     bpl   $0a42
0a70: 5f 00 05  jmp   $0500

0a73: 8f ff cc  mov   $cc,#$ff
0a76: 5f d4 06  jmp   $06d4

0a79: cd 00     mov   x,#$00
0a7b: c9 6c 02  mov   $026c,x
0a7e: d8 a8     mov   $a8,x
0a80: c9 6a 02  mov   $026a,x
0a83: 5d        mov   x,a
0a84: c4 a7     mov   $a7,a
0a86: dd        mov   a,y
0a87: 80        setc
0a88: a5 6d 02  sbc   a,$026d
0a8b: 3f 7a 16  call  $167a
0a8e: c5 70 02  mov   $0270,a
0a91: cc 71 02  mov   $0271,y
0a94: 6f        ret

0a95: 8f 00 1b  mov   $1b,#$00
0a98: 6f        ret

0a99: 8f 01 1b  mov   $1b,#$01
0a9c: 6f        ret

0a9d: cd 00     mov   x,#$00
0a9f: d8 00     mov   $00,x
0aa1: 4b 00     lsr   $00
0aa3: f4 1d     mov   a,$1d+x
0aa5: 10 0f     bpl   $0ab6
0aa7: 1c        asl   a
0aa8: 30 0c     bmi   $0ab6
0aaa: 5c        lsr   a
0aab: 28 0f     and   a,#$0f
0aad: fd        mov   y,a
0aae: f6 af 04  mov   a,$04af+y
0ab1: 10 03     bpl   $0ab6
0ab3: 18 80 00  or    $00,#$80
0ab6: e8 00     mov   a,#$00
0ab8: d4 25     mov   $25+x,a
0aba: 3d        inc   x
0abb: c8 08     cmp   x,#$08
0abd: d0 e2     bne   $0aa1
0abf: fa 00 1c  mov   ($1c),($00)
0ac2: 6f        ret

0ac3: e5 c0 04  mov   a,$04c0
0ac6: 68 ff     cmp   a,#$ff
0ac8: d0 05     bne   $0acf
0aca: e5 6d 02  mov   a,$026d
0acd: f0 1f     beq   $0aee
0acf: 8f 00 5e  mov   $5e,#$00
0ad2: 8f 00 5c  mov   $5c,#$00
0ad5: 8f 00 5d  mov   $5d,#$00
0ad8: fa 5f 00  mov   ($00),($5f)
0adb: 3f 2b 0b  call  $0b2b
0ade: e4 00     mov   a,$00
0ae0: c4 5f     mov   $5f,a
0ae2: d0 0f     bne   $0af3
0ae4: 3f df 11  call  $11df
0ae7: b0 05     bcs   $0aee
0ae9: 3f 2e 12  call  $122e
0aec: 2f d5     bra   $0ac3
0aee: e8 c0     mov   a,#$c0
0af0: c5 80 01  mov   $0180,a
0af3: 6f        ret

0af4: fa 60 00  mov   ($00),($60)
0af7: 8f 40 5e  mov   $5e,#$40
0afa: 8f 01 59  mov   $59,#$01
0afd: 8f 08 5a  mov   $5a,#$08
0b00: 8f 10 5b  mov   $5b,#$10
0b03: 8f 08 5c  mov   $5c,#$08
0b06: 8f 10 5d  mov   $5d,#$10
0b09: 3f 2b 0b  call  $0b2b
0b0c: e4 00     mov   a,$00
0b0e: 64 60     cmp   a,$60
0b10: f0 18     beq   $0b2a
0b12: 2d        push  a
0b13: 8d 00     mov   y,#$00
0b15: cd 00     mov   x,#$00
0b17: 28 0f     and   a,#$0f
0b19: d0 03     bne   $0b1e
0b1b: 3f 16 0d  call  $0d16
0b1e: ae        pop   a
0b1f: 8d 01     mov   y,#$01
0b21: cd 04     mov   x,#$04
0b23: 28 f0     and   a,#$f0
0b25: d0 03     bne   $0b2a
0b27: 3f 16 0d  call  $0d16
0b2a: 6f        ret

0b2b: 8f 08 01  mov   $01,#$08
0b2e: f8 5c     mov   x,$5c
0b30: f4 3d     mov   a,$3d+x
0b32: 10 07     bpl   $0b3b
0b34: 28 7f     and   a,#$7f
0b36: d4 3d     mov   $3d+x,a
0b38: 3f 54 0b  call  $0b54
0b3b: 60        clrc
0b3c: 6b 00     ror   $00
0b3e: 90 02     bcc   $0b42
0b40: e2 00     set7  $00
0b42: e4 00     mov   a,$00
0b44: f0 0d     beq   $0b53
0b46: 60        clrc
0b47: 98 08 5e  adc   $5e,#$08
0b4a: ab 5d     inc   $5d
0b4c: ab 5d     inc   $5d
0b4e: ab 5c     inc   $5c
0b50: 6e 01 db  dbnz  $01,$0b2e
0b53: 6f        ret

0b54: f8 5d     mov   x,$5d
0b56: f5 0a 02  mov   a,$020a+x
0b59: c4 0a     mov   $0a,a
0b5b: f5 0b 02  mov   a,$020b+x
0b5e: c4 0b     mov   $0b,a
0b60: 3f bf 0b  call  $0bbf
0b63: 90 03     bcc   $0b68
0b65: 12 00     clr0  $00
0b67: 6f        ret

0b68: f8 5d     mov   x,$5d
0b6a: e4 03     mov   a,$03
0b6c: 8d 00     mov   y,#$00
0b6e: 7a 0a     addw  ya,$0a
0b70: d5 0a 02  mov   $020a+x,a
0b73: dd        mov   a,y
0b74: d5 0b 02  mov   $020b+x,a
0b77: 6f        ret

0b78: 3f 86 0c  call  $0c86
0b7b: 0d        push  psw
0b7c: b0 03     bcs   $0b81
0b7e: 3f 36 0d  call  $0d36
0b81: 3f 0a 0e  call  $0e0a
0b84: 8e        pop   psw
0b85: 3f a0 0e  call  $0ea0
0b88: f8 5c     mov   x,$5c
0b8a: f5 d2 02  mov   a,$02d2+x
0b8d: f0 03     beq   $0b92
0b8f: d5 02 03  mov   $0302+x,a
0b92: ab 03     inc   $03
0b94: 60        clrc
0b95: 6f        ret

0b96: 3f 86 0c  call  $0c86
0b99: 0d        push  psw
0b9a: b0 03     bcs   $0b9f
0b9c: 3f 50 0d  call  $0d50
0b9f: 3f 0a 0e  call  $0e0a
0ba2: 8e        pop   psw
0ba3: 3f a0 0e  call  $0ea0
0ba6: f8 5c     mov   x,$5c
0ba8: f5 d2 02  mov   a,$02d2+x
0bab: f0 03     beq   $0bb0
0bad: d5 02 03  mov   $0302+x,a
0bb0: ab 03     inc   $03
0bb2: 60        clrc
0bb3: 6f        ret

0bb4: 3f 0a 0e  call  $0e0a
0bb7: 80        setc
0bb8: 3f a0 0e  call  $0ea0
0bbb: ab 03     inc   $03
0bbd: 60        clrc
0bbe: 6f        ret

0bbf: 8f ff 03  mov   $03,#$ff
0bc2: ab 03     inc   $03
0bc4: eb 03     mov   y,$03
0bc6: f7 0a     mov   a,($0a)+y
0bc8: f0 27     beq   $0bf1
0bca: 10 20     bpl   $0bec
0bcc: 68 c8     cmp   a,#$c8
0bce: 90 a8     bcc   $0b78
0bd0: 68 e0     cmp   a,#$e0
0bd2: b0 0a     bcs   $0bde
0bd4: 68 ca     cmp   a,#$ca
0bd6: b0 be     bcs   $0b96
0bd8: 68 c9     cmp   a,#$c9
0bda: f0 d8     beq   $0bb4
0bdc: 2f e4     bra   $0bc2
; dispatch vcmd in A (??-ff)
0bde: 1c        asl   a
0bdf: 80        setc
0be0: a8 c0     sbc   a,#$c0
0be2: 5d        mov   x,a
0be3: e8 0b     mov   a,#$0b
0be5: 2d        push  a
0be6: e8 c2     mov   a,#$c2
0be8: 2d        push  a
0be9: 1f 28 0c  jmp   ($0c28+x)
; vcmd 01-7f
0bec: 3f 6e 0f  call  $0f6e
0bef: 2f d1     bra   $0bc2
0bf1: 3f f8 0b  call  $0bf8
0bf4: d0 cc     bne   $0bc2
0bf6: 80        setc
0bf7: 6f        ret

; vcmd 00 - end repeat/return
0bf8: f8 5c     mov   x,$5c
0bfa: f5 9f 04  mov   a,$049f+x
0bfd: f0 28     beq   $0c27
0bff: 68 ff     cmp   a,#$ff
0c01: f0 06     beq   $0c09
0c03: 9c        dec   a
0c04: d5 9f 04  mov   $049f+x,a
0c07: f0 10     beq   $0c19
0c09: f8 5d     mov   x,$5d
0c0b: f5 5f 04  mov   a,$045f+x
0c0e: c4 0a     mov   $0a,a
0c10: f5 60 04  mov   a,$0460+x
0c13: c4 0b     mov   $0b,a
0c15: 8f ff 03  mov   $03,#$ff
0c18: 6f        ret

0c19: c4 03     mov   $03,a
0c1b: f8 5d     mov   x,$5d
0c1d: f5 7f 04  mov   a,$047f+x
0c20: c4 0a     mov   $0a,a
0c22: f5 80 04  mov   a,$0480+x
0c25: c4 0b     mov   $0b,a
0c27: 6f        ret

; vcmd dispatch table
0c28: dw $10aa	; e0 - set instrument
0c2a: dw $106a	; e1 - pan
0c2c: dw $10a5	; e2 - skip 2 bytes
0c2e: dw $10d2	; e3 - vibrato on
0c30: dw $1103	; e4 - vibrato off
0c32: dw $0fb9	; e5 - master volume
0c34: dw $0ff8	; e6 - master volume fade
0c36: dw $0f9b	; e7 - tempo
0c38: dw $0fb4	; e8 - skip 2 bytes
0c3a: dw $0f90	; e9 - global transpose
0c3c: dw $105f	; ea - per-voice transpose
0c3e: dw $111b	; eb - tremolo on
0c40: dw $110f	; ec - tremolo off
0c42: dw $1020	; ed - volume
0c44: dw $1035	; ee - volume fade
0c46: dw $1179	; ef - call subroutine
0c48: dw $1100	; f0 - skip 1 byte
0c4a: dw $114a	; f1 - pitch envelope
0c4c: dw $1178	; f2 - nop
0c4e: dw $1103	; f3 - vibrato off
0c50: dw $10c9	; f4 - set perc patch base
0c52: dw $1630	; f5 - skip 3 bytes
0c54: dw $163c	; f6 - read/write APU port 3
0c56: dw $1636	; f7 - skip 3 bytes
0c58: dw $163c	; f8 - read/write APU port 3
0c5a: dw $1178	; f9 - nop
0c5c: dw $10c9	; fa - set perc patch base
0c5e: dw $107b	; fb - (2 bytes)
0c60: dw $163c	; fc - read/write APU port 3
0c62: dw $119f	; fd - (4 bytes)
0c64: dw $0c69	; fe - (2 bytes)

; vcmd fe
0c69: fc        inc   y
0c6a: f7 0a     mov   a,($0a)+y
0c6c: 68 04     cmp   a,#$04
0c6e: b0 0c     bcs   $0c7c
0c70: 5d        mov   x,a
0c71: bc        inc   a
0c72: c4 d1     mov   $d1,a
0c74: fc        inc   y
0c75: cb 03     mov   $03,y
0c77: f7 0a     mov   a,($0a)+y
0c79: d4 d2     mov   $d2+x,a
0c7b: 6f        ret

0c7c: 5d        mov   x,a
0c7d: bc        inc   a
0c7e: fc        inc   y
0c7f: cb 03     mov   $03,y
0c81: f7 0a     mov   a,($0a)+y
0c83: d4 00     mov   $00+x,a
0c85: 6f        ret

0c86: 2d        push  a
0c87: cd 07     mov   x,#$07
0c89: f4 1d     mov   a,$1d+x
0c8b: 10 43     bpl   $0cd0
0c8d: 1c        asl   a
0c8e: 30 40     bmi   $0cd0
0c90: 1d        dec   x
0c91: 10 f6     bpl   $0c89
0c93: f8 5c     mov   x,$5c
0c95: f5 87 17  mov   a,$1787+x
0c98: c4 07     mov   $07,a
0c9a: cd 07     mov   x,#$07
0c9c: 8f 00 04  mov   $04,#$00
0c9f: f4 1d     mov   a,$1d+x
0ca1: 28 0f     and   a,#$0f
0ca3: fd        mov   y,a
0ca4: f6 87 17  mov   a,$1787+y
0ca7: 64 04     cmp   a,$04
0ca9: 90 06     bcc   $0cb1
0cab: c4 04     mov   $04,a
0cad: d8 05     mov   $05,x
0caf: cb 06     mov   $06,y
0cb1: 1d        dec   x
0cb2: 10 eb     bpl   $0c9f
0cb4: 69 04 07  cmp   ($07),($04)
0cb7: b0 4c     bcs   $0d05
0cb9: f8 06     mov   x,$06
0cbb: f4 2d     mov   a,$2d+x
0cbd: 28 7f     and   a,#$7f
0cbf: d4 2d     mov   $2d+x,a
0cc1: f8 05     mov   x,$05
0cc3: f5 45 17  mov   a,$1745+x
0cc6: 8f 5c f2  mov   $f2,#$5c
0cc9: c4 f3     mov   $f3,a
0ccb: 3f 07 0d  call  $0d07
0cce: f8 05     mov   x,$05
0cd0: d8 05     mov   $05,x
0cd2: e8 ff     mov   a,#$ff
0cd4: d4 25     mov   $25+x,a
0cd6: e4 5c     mov   a,$5c
0cd8: 08 80     or    a,#$80
0cda: d4 1d     mov   $1d+x,a
0cdc: f8 5c     mov   x,$5c
0cde: f4 2d     mov   a,$2d+x
0ce0: 28 f8     and   a,#$f8
0ce2: 04 05     or    a,$05
0ce4: 08 80     or    a,#$80
0ce6: d4 2d     mov   $2d+x,a
0ce8: f8 59     mov   x,$59
0cea: eb 05     mov   y,$05
0cec: 2d        push  a
0ced: 28 10     and   a,#$10
0cef: f0 07     beq   $0cf8
0cf1: f4 55     mov   a,$55+x
0cf3: 16 45 17  or    a,$1745+y
0cf6: d4 55     mov   $55+x,a
0cf8: ae        pop   a
0cf9: 28 20     and   a,#$20
0cfb: f0 07     beq   $0d04
0cfd: f4 57     mov   a,$57+x
0cff: 16 45 17  or    a,$1745+y
0d02: d4 57     mov   $57+x,a
0d04: 60        clrc
0d05: ae        pop   a
0d06: 6f        ret

0d07: 48 ff     eor   a,#$ff
0d09: fd        mov   y,a
0d0a: f8 59     mov   x,$59
0d0c: 34 55     and   a,$55+x
0d0e: d4 55     mov   $55+x,a
0d10: dd        mov   a,y
0d11: 34 57     and   a,$57+x
0d13: d4 57     mov   $57+x,a
0d15: 6f        ret

0d16: fa 00 60  mov   ($60),($00)
0d19: f6 81 01  mov   a,$0181+y
0d1c: 10 17     bpl   $0d35
0d1e: e8 c0     mov   a,#$c0
0d20: d6 81 01  mov   $0181+y,a
0d23: e8 00     mov   a,#$00
0d25: d4 35     mov   $35+x,a
0d27: d4 36     mov   $36+x,a
0d29: d4 37     mov   $37+x,a
0d2b: d4 38     mov   $38+x,a
0d2d: d4 45     mov   $45+x,a
0d2f: d4 46     mov   $46+x,a
0d31: d4 47     mov   $47+x,a
0d33: d4 48     mov   $48+x,a
0d35: 6f        ret

0d36: f8 59     mov   x,$59
0d38: 28 7f     and   a,#$7f
0d3a: 60        clrc
0d3b: 95 12 03  adc   a,$0312+x
0d3e: f8 5c     mov   x,$5c
0d40: 95 14 03  adc   a,$0314+x
0d43: 68 48     cmp   a,#$48
0d45: 90 02     bcc   $0d49
0d47: e8 47     mov   a,#$47
0d49: 3f 1a 0f  call  $0f1a
0d4c: 3f dc 0e  call  $0edc
0d4f: 6f        ret

0d50: f8 5c     mov   x,$5c
0d52: 75 df 03  cmp   a,$03df+x
0d55: f0 29     beq   $0d80
0d57: d5 df 03  mov   $03df+x,a
0d5a: 80        setc
0d5b: a8 ca     sbc   a,#$ca
0d5d: 60        clrc
0d5e: 85 de 03  adc   a,$03de
0d61: eb 59     mov   y,$59
0d63: f0 02     beq   $0d67
0d65: 88 30     adc   a,#$30
0d67: 2d        push  a
0d68: f4 2d     mov   a,$2d+x
0d6a: 28 d7     and   a,#$d7
0d6c: c4 05     mov   $05,a
0d6e: 8f 00 06  mov   $06,#$00
0d71: ae        pop   a
0d72: 3f 84 0d  call  $0d84
0d75: e8 24     mov   a,#$24
0d77: f8 5c     mov   x,$5c
0d79: 60        clrc
0d7a: 95 14 03  adc   a,$0314+x
0d7d: 3f 1a 0f  call  $0f1a
0d80: 3f dc 0e  call  $0edc
0d83: 6f        ret

0d84: 8f 00 06  mov   $06,#$00
0d87: 8d 06     mov   y,#$06
0d89: 68 fc     cmp   a,#$fc
0d8b: 90 0e     bcc   $0d9b
0d8d: 80        setc
0d8e: a8 fc     sbc   a,#$fc
0d90: cf        mul   ya
0d91: 60        clrc
0d92: 88 f8     adc   a,#$f8
0d94: c4 0c     mov   $0c,a
0d96: 8f 1d 0d  mov   $0d,#$1d
0d99: 2f 14     bra   $0daf
0d9b: 8f 1a 0d  mov   $0d,#$1a
0d9e: 8f 00 0c  mov   $0c,#$00
0da1: cf        mul   ya
0da2: 7a 0c     addw  ya,$0c
0da4: f8 59     mov   x,$59
0da6: f0 05     beq   $0dad
0da8: fc        inc   y
0da9: fc        inc   y
0daa: 8f 40 06  mov   $06,#$40
0dad: da 0c     movw  $0c,ya
0daf: 8d 00     mov   y,#$00
0db1: f7 0c     mov   a,($0c)+y
0db3: 10 1f     bpl   $0dd4
0db5: 1c        asl   a
0db6: 30 15     bmi   $0dcd
0db8: 5c        lsr   a
0db9: 38 e0 50  and   $50,#$e0
0dbc: 28 1f     and   a,#$1f
0dbe: 04 50     or    a,$50
0dc0: c4 50     mov   $50,a
0dc2: 8f 6c f2  mov   $f2,#$6c
0dc5: c4 f3     mov   $f3,a
0dc7: a2 05     set5  $05
0dc9: e8 00     mov   a,#$00
0dcb: 2f 11     bra   $0dde
0dcd: 5c        lsr   a
0dce: 48 7f     eor   a,#$7f
0dd0: 88 3c     adc   a,#$3c
0dd2: 2f 0a     bra   $0dde
0dd4: 60        clrc
0dd5: 84 06     adc   a,$06
0dd7: 68 70     cmp   a,#$70
0dd9: 90 03     bcc   $0dde
0ddb: 80        setc
0ddc: a8 70     sbc   a,#$70
0dde: f8 5e     mov   x,$5e
0de0: d5 04 01  mov   $0104+x,a
0de3: fc        inc   y
0de4: f7 0c     mov   a,($0c)+y
0de6: d5 05 01  mov   $0105+x,a
0de9: fc        inc   y
0dea: f7 0c     mov   a,($0c)+y
0dec: d5 06 01  mov   $0106+x,a
0def: fc        inc   y
0df0: f7 0c     mov   a,($0c)+y
0df2: d5 07 01  mov   $0107+x,a
0df5: f8 5d     mov   x,$5d
0df7: fc        inc   y
0df8: f7 0c     mov   a,($0c)+y
0dfa: d5 44 03  mov   $0344+x,a
0dfd: fc        inc   y
0dfe: f7 0c     mov   a,($0c)+y
0e00: d5 45 03  mov   $0345+x,a
0e03: f8 5c     mov   x,$5c
0e05: e4 05     mov   a,$05
0e07: d4 2d     mov   $2d+x,a
0e09: 6f        ret

0e0a: f8 5c     mov   x,$5c
0e0c: f5 2a 02  mov   a,$022a+x
0e0f: f8 5d     mov   x,$5d
0e11: d4 65     mov   $65+x,a
0e13: e8 00     mov   a,#$00
0e15: d4 66     mov   $66+x,a
0e17: 8f 80 04  mov   $04,#$80
0e1a: 8f 80 05  mov   $05,#$80
0e1d: eb 03     mov   y,$03
0e1f: 3f 86 0e  call  $0e86
0e22: f0 08     beq   $0e2c
0e24: 68 80     cmp   a,#$80
0e26: 90 05     bcc   $0e2d
0e28: 68 c8     cmp   a,#$c8
0e2a: f0 1c     beq   $0e48
0e2c: 6f        ret

0e2d: c4 04     mov   $04,a
0e2f: 3f 86 0e  call  $0e86
0e32: f0 08     beq   $0e3c
0e34: 68 80     cmp   a,#$80
0e36: 90 05     bcc   $0e3d
0e38: 68 c8     cmp   a,#$c8
0e3a: f0 0c     beq   $0e48
0e3c: 6f        ret

0e3d: c4 05     mov   $05,a
0e3f: 3f 86 0e  call  $0e86
0e42: f0 f8     beq   $0e3c
0e44: 68 c8     cmp   a,#$c8
0e46: d0 f4     bne   $0e3c
0e48: cb 03     mov   $03,y
0e4a: f8 5c     mov   x,$5c
0e4c: e4 04     mov   a,$04
0e4e: 30 20     bmi   $0e70
0e50: 1c        asl   a
0e51: d5 2a 02  mov   $022a+x,a
0e54: f8 5d     mov   x,$5d
0e56: c4 13     mov   $13,a
0e58: f4 65     mov   a,$65+x
0e5a: fb 66     mov   y,$66+x
0e5c: 7a 13     addw  ya,$13
0e5e: d4 65     mov   $65+x,a
0e60: db 66     mov   $66+x,y
0e62: e4 05     mov   a,$05
0e64: 30 b1     bmi   $0e17
0e66: 9f        xcn   a
0e67: 28 07     and   a,#$07
0e69: f8 5c     mov   x,$5c
0e6b: d5 3a 02  mov   $023a+x,a
0e6e: 2f a7     bra   $0e17
0e70: f8 5c     mov   x,$5c
0e72: f5 2a 02  mov   a,$022a+x
0e75: c4 13     mov   $13,a
0e77: f8 5d     mov   x,$5d
0e79: f4 65     mov   a,$65+x
0e7b: fb 66     mov   y,$66+x
0e7d: 7a 13     addw  ya,$13
0e7f: d4 65     mov   $65+x,a
0e81: db 66     mov   $66+x,y
0e83: 5f 17 0e  jmp   $0e17

0e86: fc        inc   y
0e87: f7 0a     mov   a,($0a)+y
0e89: d0 09     bne   $0e94
0e8b: 3f f8 0b  call  $0bf8
0e8e: f0 0f     beq   $0e9f
0e90: eb 03     mov   y,$03
0e92: 2f f2     bra   $0e86
0e94: 68 ef     cmp   a,#$ef
0e96: d0 07     bne   $0e9f
0e98: 3f 79 11  call  $1179
0e9b: eb 03     mov   y,$03
0e9d: 2f e7     bra   $0e86
0e9f: 6f        ret

; get note durations
0ea0: b0 33     bcs   $0ed5
0ea2: f8 5c     mov   x,$5c
0ea4: f5 3a 02  mov   a,$023a+x
0ea7: f8 5d     mov   x,$5d
0ea9: 68 07     cmp   a,#$07
0eab: f0 1b     beq   $0ec8
0ead: fd        mov   y,a
0eae: f6 6f 17  mov   a,$176f+y
0eb1: c4 04     mov   $04,a
0eb3: f4 65     mov   a,$65+x
0eb5: fb 66     mov   y,$66+x
0eb7: cb 05     mov   $05,y
0eb9: eb 04     mov   y,$04
0ebb: cf        mul   ya
0ebc: cb 13     mov   $13,y
0ebe: ba 04     movw  ya,$04
0ec0: cf        mul   ya
0ec1: 7a 13     addw  ya,$13
0ec3: d4 85     mov   $85+x,a
0ec5: db 86     mov   $86+x,y
0ec7: 6f        ret

0ec8: f4 65     mov   a,$65+x
0eca: fb 66     mov   y,$66+x
0ecc: 9a 10     subw  ya,$10
0ece: 9a 10     subw  ya,$10
0ed0: d4 85     mov   $85+x,a
0ed2: db 86     mov   $86+x,y
0ed4: 6f        ret

0ed5: f8 5d     mov   x,$5d
0ed7: e8 80     mov   a,#$80
0ed9: d4 86     mov   $86+x,a
0edb: 6f        ret

0edc: f8 5c     mov   x,$5c
0ede: e8 ff     mov   a,#$ff
0ee0: d5 8d 03  mov   $038d+x,a
0ee3: f5 ef 03  mov   a,$03ef+x
0ee6: f0 10     beq   $0ef8
0ee8: f5 ff 03  mov   a,$03ff+x
0eeb: d4 aa     mov   $aa+x,a
0eed: e8 00     mov   a,#$00
0eef: d5 2f 04  mov   $042f+x,a
0ef2: f5 0f 04  mov   a,$040f+x
0ef5: d5 1f 04  mov   $041f+x,a
0ef8: f5 10 ff  mov   a,$ff10+x
0efb: f0 1c     beq   $0f19
0efd: f5 00 ff  mov   a,$ff00+x
0f00: d4 ba     mov   $ba+x,a
0f02: e8 00     mov   a,#$00
0f04: d5 30 ff  mov   $ff30+x,a
0f07: f5 10 ff  mov   a,$ff10+x
0f0a: d5 20 ff  mov   $ff20+x,a
0f0d: f8 5d     mov   x,$5d
0f0f: e8 00     mov   a,#$00
0f11: d5 60 ff  mov   $ff60+x,a
0f14: e8 80     mov   a,#$80
0f16: d5 61 ff  mov   $ff61+x,a
0f19: 6f        ret

0f1a: 8d 00     mov   y,#$00
0f1c: cd 0c     mov   x,#$0c
0f1e: 9e        div   ya,x
0f1f: c4 04     mov   $04,a
0f21: dd        mov   a,y
0f22: 1c        asl   a
0f23: 5d        mov   x,a
0f24: f5 56 17  mov   a,$1756+x
0f27: fd        mov   y,a
0f28: f5 55 17  mov   a,$1755+x
0f2b: da 0c     movw  $0c,ya
0f2d: f8 5d     mov   x,$5d
0f2f: f5 44 03  mov   a,$0344+x
0f32: eb 0d     mov   y,$0d
0f34: cf        mul   ya
0f35: da 0e     movw  $0e,ya
0f37: f5 44 03  mov   a,$0344+x
0f3a: eb 0c     mov   y,$0c
0f3c: cf        mul   ya
0f3d: 6d        push  y
0f3e: f5 45 03  mov   a,$0345+x
0f41: eb 0c     mov   y,$0c
0f43: cf        mul   ya
0f44: 7a 0e     addw  ya,$0e
0f46: da 0e     movw  $0e,ya
0f48: f5 45 03  mov   a,$0345+x
0f4b: eb 0d     mov   y,$0d
0f4d: cf        mul   ya
0f4e: fd        mov   y,a
0f4f: ae        pop   a
0f50: 7a 0e     addw  ya,$0e
0f52: da 0c     movw  $0c,ya
0f54: e8 05     mov   a,#$05
0f56: 80        setc
0f57: a4 04     sbc   a,$04
0f59: f0 07     beq   $0f62
0f5b: fd        mov   y,a
0f5c: 4b 0d     lsr   $0d
0f5e: 6b 0c     ror   $0c
0f60: fe fa     dbnz  y,$0f5c
0f62: f8 5e     mov   x,$5e
0f64: ba 0c     movw  ya,$0c
0f66: d5 02 01  mov   $0102+x,a
0f69: dd        mov   a,y
0f6a: d5 03 01  mov   $0103+x,a
0f6d: 6f        ret

; get velocity values
0f6e: f8 5c     mov   x,$5c
0f70: 1c        asl   a
0f71: d5 2a 02  mov   $022a+x,a
0f74: fc        inc   y
0f75: f7 0a     mov   a,($0a)+y
0f77: 30 16     bmi   $0f8f
0f79: cb 03     mov   $03,y
0f7b: 2d        push  a
0f7c: 28 0f     and   a,#$0f
0f7e: fd        mov   y,a
0f7f: f6 77 17  mov   a,$1777+y
0f82: d5 4a 02  mov   $024a+x,a
0f85: d5 02 03  mov   $0302+x,a
0f88: ae        pop   a
0f89: 9f        xcn   a
0f8a: 28 07     and   a,#$07
0f8c: d5 3a 02  mov   $023a+x,a
0f8f: 6f        ret

; vcmd e9 - global transpose
0f90: fc        inc   y
0f91: f7 0a     mov   a,($0a)+y
0f93: cb 03     mov   $03,y
0f95: f8 59     mov   x,$59
0f97: d5 12 03  mov   $0312+x,a
0f9a: 6f        ret

; vcmd e7 - tempo
0f9b: fc        inc   y
0f9c: f7 0a     mov   a,($0a)+y
0f9e: cb 03     mov   $03,y
0fa0: 5d        mov   x,a
0fa1: e8 2a     mov   a,#$2a
0fa3: 8d 08     mov   y,#$08
0fa5: 9e        div   ya,x
0fa6: c5 6a 03  mov   $036a,a
0fa9: c5 6b 03  mov   $036b,a
0fac: e8 00     mov   a,#$00
0fae: c4 a9     mov   $a9,a
0fb0: 18 01 4f  or    $4f,#$01
0fb3: 6f        ret

; vcmd e8 - skip 2 bytes
0fb4: fc        inc   y
0fb5: fc        inc   y
0fb6: cb 03     mov   $03,y
0fb8: 6f        ret

; vcmd e5 - master volume
0fb9: e5 c0 04  mov   a,$04c0
0fbc: d0 36     bne   $0ff4
0fbe: e5 c1 04  mov   a,$04c1
0fc1: d0 18     bne   $0fdb
0fc3: fc        inc   y
0fc4: cb 03     mov   $03,y
0fc6: f7 0a     mov   a,($0a)+y
0fc8: c5 6a 02  mov   $026a,a
0fcb: c5 6d 02  mov   $026d,a
0fce: e8 00     mov   a,#$00
0fd0: c4 a7     mov   $a7,a
0fd2: bc        inc   a
0fd3: 8d 08     mov   y,#$08
0fd5: d6 01 03  mov   $0301+y,a
0fd8: fe fb     dbnz  y,$0fd5
0fda: 6f        ret

0fdb: e8 00     mov   a,#$00
0fdd: c5 c1 04  mov   $04c1,a
0fe0: c5 6a 02  mov   $026a,a
0fe3: c5 6d 02  mov   $026d,a
0fe6: bc        inc   a
0fe7: c5 c0 04  mov   $04c0,a
0fea: fc        inc   y
0feb: cb 03     mov   $03,y
0fed: f7 0a     mov   a,($0a)+y
0fef: fd        mov   y,a
0ff0: 3f 79 0a  call  $0a79
0ff3: 6f        ret

0ff4: fc        inc   y
0ff5: cb 03     mov   $03,y
0ff7: 6f        ret

; vcmd e6 - master volume fade
0ff8: e5 c0 04  mov   a,$04c0
0ffb: d0 f7     bne   $0ff4
0ffd: e8 00     mov   a,#$00
0fff: c5 6c 02  mov   $026c,a
1002: c4 a8     mov   $a8,a
1004: fc        inc   y
1005: f7 0a     mov   a,($0a)+y
1007: c4 a7     mov   $a7,a
1009: 5d        mov   x,a
100a: fc        inc   y
100b: f7 0a     mov   a,($0a)+y
100d: cb 03     mov   $03,y
100f: c5 6a 02  mov   $026a,a
1012: 80        setc
1013: a5 6d 02  sbc   a,$026d
1016: 3f 7a 16  call  $167a
1019: c5 70 02  mov   $0270,a
101c: cc 71 02  mov   $0271,y
101f: 6f        ret

; vcmd ed - volume
1020: fc        inc   y
1021: cb 03     mov   $03,y
1023: f7 0a     mov   a,($0a)+y
1025: f8 5d     mov   x,$5d
1027: d5 b3 02  mov   $02b3+x,a
102a: f8 5c     mov   x,$5c
102c: d5 72 02  mov   $0272+x,a
102f: e8 01     mov   a,#$01
1031: d5 02 03  mov   $0302+x,a
1034: 6f        ret

; vcmd ee - volume fade
1035: f8 5c     mov   x,$5c
1037: fc        inc   y
1038: f7 0a     mov   a,($0a)+y
103a: d5 d2 02  mov   $02d2+x,a
103d: 2d        push  a
103e: fc        inc   y
103f: cb 03     mov   $03,y
1041: f7 0a     mov   a,($0a)+y
1043: d5 72 02  mov   $0272+x,a
1046: eb 5d     mov   y,$5d
1048: ce        pop   x
1049: 80        setc
104a: b6 b3 02  sbc   a,$02b3+y
104d: 3f 7a 16  call  $167a
1050: f8 5d     mov   x,$5d
1052: d5 e2 02  mov   $02e2+x,a
1055: dd        mov   a,y
1056: d5 e3 02  mov   $02e3+x,a
1059: e8 00     mov   a,#$00
105b: d5 b2 02  mov   $02b2+x,a
105e: 6f        ret

; vcmd ea - per-voice transpose
105f: fc        inc   y
1060: f7 0a     mov   a,($0a)+y
1062: cb 03     mov   $03,y
1064: f8 5c     mov   x,$5c
1066: d5 14 03  mov   $0314+x,a
1069: 6f        ret

; vcmd e1 - pan
106a: f8 5c     mov   x,$5c
106c: e8 00     mov   a,#$00
106e: d5 9d 03  mov   $039d+x,a
1071: bc        inc   a
1072: d5 8d 03  mov   $038d+x,a
1075: 3f 97 10  call  $1097
1078: cb 03     mov   $03,y
107a: 6f        ret

; vcmd fb
107b: f8 5c     mov   x,$5c
107d: e8 00     mov   a,#$00
107f: d5 9d 03  mov   $039d+x,a
1082: bc        inc   a
1083: d5 8d 03  mov   $038d+x,a
1086: 3f d6 11  call  $11d6
1089: 0d        push  psw
108a: d0 01     bne   $108d
108c: fc        inc   y
108d: 3f 97 10  call  $1097
1090: 8e        pop   psw
1091: f0 01     beq   $1094
1093: fc        inc   y
1094: cb 03     mov   $03,y
1096: 6f        ret

1097: fc        inc   y
1098: f7 0a     mov   a,($0a)+y
109a: f8 5d     mov   x,$5d
109c: d5 6e 03  mov   $036e+x,a
109f: e8 00     mov   a,#$00
10a1: d5 6d 03  mov   $036d+x,a
10a4: 6f        ret

; vcmd e2 - skip 2 bytes
10a5: fc        inc   y
10a6: fc        inc   y
10a7: cb 03     mov   $03,y
10a9: 6f        ret

; vcmd e0 - set instrument
10aa: f8 5c     mov   x,$5c
10ac: e8 ff     mov   a,#$ff
10ae: d5 df 03  mov   $03df+x,a
10b1: f4 2d     mov   a,$2d+x
10b3: 28 d7     and   a,#$d7
10b5: c4 05     mov   $05,a
10b7: fc        inc   y
10b8: cb 03     mov   $03,y
10ba: f7 0a     mov   a,($0a)+y
10bc: d5 af 04  mov   $04af+x,a
10bf: 68 fc     cmp   a,#$fc
10c1: b0 02     bcs   $10c5
10c3: 28 7f     and   a,#$7f
10c5: 3f 84 0d  call  $0d84
10c8: 6f        ret

; vcmd f4/fa - set perc patch base
10c9: fc        inc   y
10ca: f7 0a     mov   a,($0a)+y
10cc: cb 03     mov   $03,y
10ce: c5 de 03  mov   $03de,a
10d1: 6f        ret

; vcmd e3 - vibrato on
10d2: f8 5c     mov   x,$5c
10d4: e8 01     mov   a,#$01
10d6: d5 ef 03  mov   $03ef+x,a
10d9: d5 8d 03  mov   $038d+x,a
10dc: fc        inc   y
10dd: f7 0a     mov   a,($0a)+y
10df: d5 ff 03  mov   $03ff+x,a
10e2: fc        inc   y
10e3: 80        setc
10e4: e8 00     mov   a,#$00
10e6: b7 0a     sbc   a,($0a)+y
10e8: d5 0f 04  mov   $040f+x,a
10eb: 2d        push  a
10ec: fc        inc   y
10ed: cb 03     mov   $03,y
10ef: f7 0a     mov   a,($0a)+y
10f1: ce        pop   x
10f2: 8d 00     mov   y,#$00
10f4: 9e        div   ya,x
10f5: f8 5d     mov   x,$5d
10f7: d5 3f 04  mov   $043f+x,a
10fa: e8 00     mov   a,#$00
10fc: d5 40 04  mov   $0440+x,a
10ff: 6f        ret

; vcmd f0 - skip 1 byte
1100: ab 03     inc   $03
1102: 6f        ret

; vcmd e4/f3 - vibrato off
1103: f8 5c     mov   x,$5c
1105: e8 00     mov   a,#$00
1107: d5 ef 03  mov   $03ef+x,a
110a: bc        inc   a
110b: d5 8d 03  mov   $038d+x,a
110e: 6f        ret

; vcmd ec - tremolo off
110f: f8 5c     mov   x,$5c
1111: e8 00     mov   a,#$00
1113: d5 10 ff  mov   $ff10+x,a
1116: bc        inc   a
1117: d5 8d 03  mov   $038d+x,a
111a: 6f        ret

; vcmd eb - tremolo on
111b: f8 5c     mov   x,$5c
111d: e8 03     mov   a,#$03
111f: d5 8d 03  mov   $038d+x,a
1122: fc        inc   y
1123: f7 0a     mov   a,($0a)+y
1125: d5 00 ff  mov   $ff00+x,a
1128: fc        inc   y
1129: 80        setc
112a: e8 00     mov   a,#$00
112c: b7 0a     sbc   a,($0a)+y
112e: d5 10 ff  mov   $ff10+x,a
1131: 2d        push  a
1132: fc        inc   y
1133: cb 03     mov   $03,y
1135: f7 0a     mov   a,($0a)+y
1137: ce        pop   x
1138: 8d 00     mov   y,#$00
113a: 9e        div   ya,x
113b: 2d        push  a
113c: e8 00     mov   a,#$00
113e: 9e        div   ya,x
113f: ee        pop   y
1140: f8 5d     mov   x,$5d
1142: d5 40 ff  mov   $ff40+x,a
1145: dd        mov   a,y
1146: d5 41 ff  mov   $ff41+x,a
1149: 6f        ret

; vcmd f1 - pitch envelope
114a: f8 5c     mov   x,$5c
114c: e8 02     mov   a,#$02
114e: d5 ef 03  mov   $03ef+x,a
1151: d5 8d 03  mov   $038d+x,a
1154: fc        inc   y
1155: f7 0a     mov   a,($0a)+y
1157: d5 ff 03  mov   $03ff+x,a
115a: fc        inc   y
115b: f7 0a     mov   a,($0a)+y
115d: d5 0f 04  mov   $040f+x,a
1160: fc        inc   y
1161: cb 03     mov   $03,y
1163: f8 5d     mov   x,$5d
1165: f7 0a     mov   a,($0a)+y
1167: d5 3f 04  mov   $043f+x,a
116a: 30 06     bmi   $1172
116c: e8 00     mov   a,#$00
116e: d5 40 04  mov   $0440+x,a
1171: 6f        ret

1172: e8 ff     mov   a,#$ff
1174: d5 40 04  mov   $0440+x,a
1177: 6f        ret

; vcmd f2/f9 - nop
1178: 6f        ret

; vcmd ef - call subroutine
1179: f8 5d     mov   x,$5d
117b: fc        inc   y
117c: f7 0a     mov   a,($0a)+y
117e: d5 5f 04  mov   $045f+x,a
1181: 2d        push  a
1182: fc        inc   y
1183: f7 0a     mov   a,($0a)+y
1185: d5 60 04  mov   $0460+x,a
1188: 2d        push  a
1189: f8 5c     mov   x,$5c
118b: fc        inc   y
118c: f7 0a     mov   a,($0a)+y
118e: d5 9f 04  mov   $049f+x,a
1191: dd        mov   a,y
1192: 3f c6 11  call  $11c6
1195: 8f ff 03  mov   $03,#$ff
1198: ae        pop   a
1199: c4 0b     mov   $0b,a
119b: ae        pop   a
119c: c4 0a     mov   $0a,a
119e: 6f        ret

; vcmd fd
119f: 6d        push  y
11a0: dd        mov   a,y
11a1: 60        clrc
11a2: 88 04     adc   a,#$04
11a4: 3f c6 11  call  $11c6
11a7: ee        pop   y
11a8: f8 5c     mov   x,$5c
11aa: e8 01     mov   a,#$01
11ac: d5 9f 04  mov   $049f+x,a
11af: 3f d6 11  call  $11d6
11b2: d0 02     bne   $11b6
11b4: fc        inc   y
11b5: fc        inc   y
11b6: fc        inc   y
11b7: f7 0a     mov   a,($0a)+y
11b9: 2d        push  a
11ba: fc        inc   y
11bb: f7 0a     mov   a,($0a)+y
11bd: c4 0b     mov   $0b,a
11bf: ae        pop   a
11c0: c4 0a     mov   $0a,a
11c2: 8f ff 03  mov   $03,#$ff
11c5: 6f        ret

11c6: f8 5d     mov   x,$5d
11c8: 60        clrc
11c9: 84 0a     adc   a,$0a
11cb: d5 7f 04  mov   $047f+x,a
11ce: e8 00     mov   a,#$00
11d0: 84 0b     adc   a,$0b
11d2: d5 80 04  mov   $0480+x,a
11d5: 6f        ret

11d6: 7d        mov   a,x
11d7: 28 07     and   a,#$07
11d9: 5c        lsr   a
11da: 5c        lsr   a
11db: 5d        mov   x,a
11dc: f4 a5     mov   a,$a5+x
11de: 6f        ret

11df: 8d 01     mov   y,#$01
11e1: f7 4d     mov   a,($4d)+y
11e3: f0 15     beq   $11fa
11e5: c4 0b     mov   $0b,a
11e7: dc        dec   y
11e8: f7 4d     mov   a,($4d)+y
11ea: c4 0a     mov   $0a,a
11ec: 60        clrc
11ed: dd        mov   a,y
11ee: 88 02     adc   a,#$02
11f0: 84 4d     adc   a,$4d
11f2: c4 4d     mov   $4d,a
11f4: 90 02     bcc   $11f8
11f6: ab 4e     inc   $4e
11f8: 60        clrc
11f9: 6f        ret

11fa: dc        dec   y
11fb: f7 4d     mov   a,($4d)+y
11fd: f0 2b     beq   $122a
11ff: e9 64 03  mov   x,$0364
1202: d0 08     bne   $120c
1204: 68 ff     cmp   a,#$ff
1206: f0 01     beq   $1209
1208: bc        inc   a
1209: c5 64 03  mov   $0364,a
120c: e5 64 03  mov   a,$0364
120f: 68 ff     cmp   a,#$ff
1211: f0 05     beq   $1218
1213: 8c 64 03  dec   $0364
1216: f0 0e     beq   $1226
1218: 8d 02     mov   y,#$02
121a: f7 4d     mov   a,($4d)+y
121c: 5d        mov   x,a
121d: fc        inc   y
121e: f7 4d     mov   a,($4d)+y
1220: c4 4e     mov   $4e,a
1222: d8 4d     mov   $4d,x
1224: 2f b9     bra   $11df
1226: 8d 05     mov   y,#$05
1228: 2f b7     bra   $11e1
122a: c4 4e     mov   $4e,a
122c: 80        setc
122d: 6f        ret

122e: 8d 00     mov   y,#$00
1230: cd 00     mov   x,#$00
1232: 8f 08 00  mov   $00,#$08
1235: 8f 00 5f  mov   $5f,#$00
1238: 4b 5f     lsr   $5f
123a: e8 00     mov   a,#$00
123c: d5 df 03  mov   $03df+x,a
123f: f7 0a     mov   a,($0a)+y
1241: d6 0a 02  mov   $020a+y,a
1244: fc        inc   y
1245: f7 0a     mov   a,($0a)+y
1247: d6 0a 02  mov   $020a+y,a
124a: f0 07     beq   $1253
124c: 7d        mov   a,x
124d: 08 c0     or    a,#$c0
124f: d4 3d     mov   $3d+x,a
1251: e2 5f     set7  $5f
1253: 3d        inc   x
1254: fc        inc   y
1255: 6e 00 e0  dbnz  $00,$1238
1258: 6f        ret

1259: e5 80 01  mov   a,$0180
125c: 10 0e     bpl   $126c
125e: 1c        asl   a
125f: 30 0b     bmi   $126c
1261: e8 c0     mov   a,#$c0
1263: c5 80 01  mov   $0180,a
1266: 8f 00 5f  mov   $5f,#$00
1269: 3f 6d 12  call  $126d
126c: 6f        ret

126d: cd 07     mov   x,#$07
126f: 8f 00 00  mov   $00,#$00
1272: f4 2d     mov   a,$2d+x
1274: 10 16     bpl   $128c
1276: 28 07     and   a,#$07
1278: fd        mov   y,a
1279: e4 5f     mov   a,$5f
127b: d0 08     bne   $1285
127d: f6 1d 00  mov   a,$001d+y
1280: 08 40     or    a,#$40
1282: d6 1d 00  mov   $001d+y,a
1285: f6 45 17  mov   a,$1745+y
1288: 04 00     or    a,$00
128a: c4 00     mov   $00,a
128c: e4 5f     mov   a,$5f
128e: d0 02     bne   $1292
1290: d4 2d     mov   $2d+x,a
1292: 1d        dec   x
1293: 10 dd     bpl   $1272
1295: 8f 5c f2  mov   $f2,#$5c
1298: fa 00 f3  mov   ($f3),($00)
129b: 6f        ret

129c: cd 07     mov   x,#$07
129e: e8 00     mov   a,#$00
12a0: d4 2d     mov   $2d+x,a
12a2: d4 3d     mov   $3d+x,a
12a4: d5 14 03  mov   $0314+x,a
12a7: d5 24 03  mov   $0324+x,a
12aa: d5 df 03  mov   $03df+x,a
12ad: d5 9f 04  mov   $049f+x,a
12b0: d5 ef 03  mov   $03ef+x,a
12b3: d5 10 ff  mov   $ff10+x,a
12b6: e8 dc     mov   a,#$dc
12b8: d5 8d 03  mov   $038d+x,a
12bb: d5 72 02  mov   $0272+x,a
12be: d5 02 03  mov   $0302+x,a
12c1: 1d        dec   x
12c2: 10 da     bpl   $129e
12c4: cd 0f     mov   x,#$0f
12c6: e8 ff     mov   a,#$ff
12c8: d5 b2 02  mov   $02b2+x,a
12cb: e8 0a     mov   a,#$0a
12cd: d5 6d 03  mov   $036d+x,a
12d0: dd        mov   a,y
12d1: d5 6c 03  mov   $036c+x,a
12d4: 1d        dec   x
12d5: 1d        dec   x
12d6: 10 ee     bpl   $12c6
12d8: 8f 64 ca  mov   $ca,#$64
12db: e8 00     mov   a,#$00
12dd: c5 c0 04  mov   $04c0,a
12e0: c5 6c 03  mov   $036c,a
12e3: c5 bf 04  mov   $04bf,a
12e6: c5 12 03  mov   $0312,a
12e9: c5 db 03  mov   $03db,a
12ec: c4 57     mov   $57,a
12ee: c4 55     mov   $55,a
12f0: 8f 01 61  mov   $61,#$01
12f3: 6f        ret

12f4: f8 00     mov   x,$00
12f6: f5 81 01  mov   a,$0181+x
12f9: 10 40     bpl   $133b
12fb: 1c        asl   a
12fc: 30 3d     bmi   $133b
12fe: f5 3c 13  mov   a,$133c+x
1301: 24 60     and   a,$60
1303: c4 60     mov   $60,a
1305: e8 c0     mov   a,#$c0
1307: d5 81 01  mov   $0181+x,a
130a: 7d        mov   a,x
130b: 1c        asl   a
130c: 1c        asl   a
130d: 5d        mov   x,a
130e: 8f 00 02  mov   $02,#$00
1311: 8f 04 03  mov   $03,#$04
1314: f4 45     mov   a,$45+x
1316: f0 16     beq   $132e
1318: f4 35     mov   a,$35+x
131a: 10 12     bpl   $132e
131c: 4d        push  x
131d: 28 07     and   a,#$07
131f: 5d        mov   x,a
1320: f4 1d     mov   a,$1d+x
1322: 08 40     or    a,#$40
1324: d4 1d     mov   $1d+x,a
1326: f5 45 17  mov   a,$1745+x
1329: 04 02     or    a,$02
132b: c4 02     mov   $02,a
132d: ce        pop   x
132e: 3d        inc   x
132f: 6e 03 e2  dbnz  $03,$1314
1332: 8f 5c f2  mov   $f2,#$5c
1335: fa 02 f3  mov   ($f3),($02)
1338: 8f 00 58  mov   $58,#$00
133b: 6f        ret

133c: db $f0,$0f

133e: 8f 04 01  mov   $01,#$04
1341: e4 00     mov   a,$00
1343: 1c        asl   a
1344: 1c        asl   a
1345: 5d        mov   x,a
1346: 1c        asl   a
1347: fd        mov   y,a
1348: e8 00     mov   a,#$00
134a: d4 35     mov   $35+x,a
134c: d4 45     mov   $45+x,a
134e: d5 95 03  mov   $0395+x,a
1351: d5 0a 03  mov   $030a+x,a
1354: d5 1c 03  mov   $031c+x,a
1357: d5 2c 03  mov   $032c+x,a
135a: d5 a7 04  mov   $04a7+x,a
135d: d5 f7 03  mov   $03f7+x,a
1360: d5 18 ff  mov   $ff18+x,a
1363: d6 7d 03  mov   $037d+y,a
1366: e8 0a     mov   a,#$0a
1368: d6 7e 03  mov   $037e+y,a
136b: e8 dc     mov   a,#$dc
136d: d5 7a 02  mov   $027a+x,a
1370: e8 dc     mov   a,#$dc
1372: d6 c3 02  mov   $02c3+y,a
1375: 3d        inc   x
1376: fc        inc   y
1377: fc        inc   y
1378: 6e 01 cd  dbnz  $01,$1348
137b: e8 00     mov   a,#$00
137d: c4 58     mov   $58,a
137f: e8 e6     mov   a,#$e6
1381: c5 6b 02  mov   $026b,a
1384: c5 6f 02  mov   $026f,a
1387: 6f        ret

1388: 8f 08 03  mov   $03,#$08
138b: f8 01     mov   x,$01
138d: f4 2d     mov   a,$2d+x
138f: 10 13     bpl   $13a4
1391: 3f d5 13  call  $13d5
1394: 3f 2c 14  call  $142c
1397: 3f 8c 14  call  $148c
139a: f8 01     mov   x,$01
139c: e8 00     mov   a,#$00
139e: d5 02 03  mov   $0302+x,a
13a1: d5 8d 03  mov   $038d+x,a
13a4: f8 01     mov   x,$01
13a6: f5 d2 02  mov   a,$02d2+x
13a9: f0 1c     beq   $13c7
13ab: d5 02 03  mov   $0302+x,a
13ae: 9c        dec   a
13af: d5 d2 02  mov   $02d2+x,a
13b2: f8 02     mov   x,$02
13b4: f5 e2 02  mov   a,$02e2+x
13b7: 60        clrc
13b8: 95 b2 02  adc   a,$02b2+x
13bb: d5 b2 02  mov   $02b2+x,a
13be: f5 e3 02  mov   a,$02e3+x
13c1: 95 b3 02  adc   a,$02b3+x
13c4: d5 b3 02  mov   $02b3+x,a
13c7: 60        clrc
13c8: 98 08 00  adc   $00,#$08
13cb: ab 01     inc   $01
13cd: ab 02     inc   $02
13cf: ab 02     inc   $02
13d1: 6e 03 b7  dbnz  $03,$138b
13d4: 6f        ret

13d5: f8 01     mov   x,$01
13d7: f5 02 03  mov   a,$0302+x
13da: d0 06     bne   $13e2
13dc: f5 8d 03  mov   a,$038d+x
13df: d0 11     bne   $13f2
13e1: 6f        ret

13e2: f5 4a 02  mov   a,$024a+x
13e5: fd        mov   y,a
13e6: f8 02     mov   x,$02
13e8: f5 b3 02  mov   a,$02b3+x
13eb: cf        mul   ya
13ec: dd        mov   a,y
13ed: f8 01     mov   x,$01
13ef: d5 82 02  mov   $0282+x,a
13f2: f5 82 02  mov   a,$0282+x
13f5: fd        mov   y,a
13f6: e4 59     mov   a,$59
13f8: 1c        asl   a
13f9: 5d        mov   x,a
13fa: f5 6d 02  mov   a,$026d+x
13fd: cf        mul   ya
13fe: dd        mov   a,y
13ff: cf        mul   ya
1400: cb 06     mov   $06,y
1402: f8 1b     mov   x,$1b
1404: f0 04     beq   $140a
1406: cd 14     mov   x,#$14
1408: 2f 07     bra   $1411
140a: f8 02     mov   x,$02
140c: f5 6e 03  mov   a,$036e+x
140f: 1c        asl   a
1410: 5d        mov   x,a
1411: f5 97 17  mov   a,$1797+x
1414: 2d        push  a
1415: f5 98 17  mov   a,$1798+x
1418: c4 05     mov   $05,a
141a: f8 01     mov   x,$01
141c: eb 06     mov   y,$06
141e: cf        mul   ya
141f: dd        mov   a,y
1420: d5 a2 02  mov   $02a2+x,a
1423: ae        pop   a
1424: eb 06     mov   y,$06
1426: cf        mul   ya
1427: dd        mov   a,y
1428: d5 92 02  mov   $0292+x,a
142b: 6f        ret

142c: f8 01     mov   x,$01
142e: f5 10 ff  mov   a,$ff10+x
1431: f0 33     beq   $1466
1433: f4 ba     mov   a,$ba+x
1435: d0 2f     bne   $1466
1437: f5 92 02  mov   a,$0292+x
143a: c4 04     mov   $04,a
143c: f5 a2 02  mov   a,$02a2+x
143f: c4 05     mov   $05,a
1441: f8 02     mov   x,$02
1443: f5 61 ff  mov   a,$ff61+x
1446: c4 06     mov   $06,a
1448: eb 04     mov   y,$04
144a: cf        mul   ya
144b: cd 80     mov   x,#$80
144d: 9e        div   ya,x
144e: f8 00     mov   x,$00
1450: d5 00 01  mov   $0100+x,a
1453: e4 06     mov   a,$06
1455: eb 05     mov   y,$05
1457: cf        mul   ya
1458: cd 80     mov   x,#$80
145a: 9e        div   ya,x
145b: f8 00     mov   x,$00
145d: d5 01 01  mov   $0101+x,a
1460: e8 03     mov   a,#$03
1462: 3f 6e 15  call  $156e
1465: 6f        ret

1466: eb 01     mov   y,$01
1468: f6 02 03  mov   a,$0302+y
146b: 16 8d 03  or    a,$038d+y
146e: f0 1b     beq   $148b
1470: e8 00     mov   a,#$00
1472: d6 02 03  mov   $0302+y,a
1475: d6 8d 03  mov   $038d+y,a
1478: f8 00     mov   x,$00
147a: f6 92 02  mov   a,$0292+y
147d: d5 00 01  mov   $0100+x,a
1480: f6 a2 02  mov   a,$02a2+y
1483: d5 01 01  mov   $0101+x,a
1486: e8 03     mov   a,#$03
1488: 3f 6e 15  call  $156e
148b: 6f        ret

148c: 8f 00 04  mov   $04,#$00
148f: f8 01     mov   x,$01
1491: f5 ef 03  mov   a,$03ef+x
1494: f0 0c     beq   $14a2
1496: fb aa     mov   y,$aa+x
1498: d0 05     bne   $149f
149a: 1c        asl   a
149b: 5d        mov   x,a
149c: 1f a5 14  jmp   ($14a5+x)

149f: dc        dec   y
14a0: db aa     mov   $aa+x,y
14a2: 5f f2 14  jmp   $14f2

14a5: dw $14a2
14a7: dw $14ab
14a9: dw $14e5

14ab: f8 01     mov   x,$01
14ad: f5 1f 04  mov   a,$041f+x
14b0: d0 2d     bne   $14df
14b2: f5 0f 04  mov   a,$040f+x
14b5: d5 1f 04  mov   $041f+x,a
14b8: f5 2f 04  mov   a,$042f+x
14bb: bc        inc   a
14bc: 28 03     and   a,#$03
14be: d5 2f 04  mov   $042f+x,a
14c1: 5c        lsr   a
14c2: 90 18     bcc   $14dc
14c4: f8 02     mov   x,$02
14c6: f5 40 04  mov   a,$0440+x
14c9: fd        mov   y,a
14ca: f5 3f 04  mov   a,$043f+x
14cd: da 0a     movw  $0a,ya
14cf: ba 11     movw  ya,$11
14d1: 9a 0a     subw  ya,$0a
14d3: d5 3f 04  mov   $043f+x,a
14d6: dd        mov   a,y
14d7: d5 40 04  mov   $0440+x,a
14da: f8 01     mov   x,$01
14dc: f5 1f 04  mov   a,$041f+x
14df: 3f 4d 15  call  $154d
14e2: 5f f2 14  jmp   $14f2

14e5: f8 01     mov   x,$01
14e7: f5 1f 04  mov   a,$041f+x
14ea: f0 06     beq   $14f2
14ec: 68 ff     cmp   a,#$ff
14ee: f0 61     beq   $1551
14f0: 2f 5b     bra   $154d
14f2: f8 01     mov   x,$01
14f4: f5 10 ff  mov   a,$ff10+x
14f7: f0 4f     beq   $1548
14f9: fb ba     mov   y,$ba+x
14fb: d0 4c     bne   $1549
14fd: f5 20 ff  mov   a,$ff20+x
1500: d0 2d     bne   $152f
1502: f5 10 ff  mov   a,$ff10+x
1505: d5 20 ff  mov   $ff20+x,a
1508: f5 30 ff  mov   a,$ff30+x
150b: bc        inc   a
150c: 28 03     and   a,#$03
150e: d5 30 ff  mov   $ff30+x,a
1511: 5c        lsr   a
1512: 90 18     bcc   $152c
1514: f8 02     mov   x,$02
1516: f5 41 ff  mov   a,$ff41+x
1519: fd        mov   y,a
151a: f5 40 ff  mov   a,$ff40+x
151d: da 0a     movw  $0a,ya
151f: ba 11     movw  ya,$11
1521: 9a 0a     subw  ya,$0a
1523: d5 40 ff  mov   $ff40+x,a
1526: dd        mov   a,y
1527: d5 41 ff  mov   $ff41+x,a
152a: f8 01     mov   x,$01
152c: f5 20 ff  mov   a,$ff20+x
152f: 9c        dec   a
1530: d5 20 ff  mov   $ff20+x,a
1533: f8 02     mov   x,$02
1535: f5 40 ff  mov   a,$ff40+x
1538: 60        clrc
1539: 95 60 ff  adc   a,$ff60+x
153c: d5 60 ff  mov   $ff60+x,a
153f: f5 41 ff  mov   a,$ff41+x
1542: 95 61 ff  adc   a,$ff61+x
1545: d5 61 ff  mov   $ff61+x,a
1548: 6f        ret

1549: dc        dec   y
154a: db ba     mov   $ba+x,y
154c: 6f        ret

154d: 9c        dec   a
154e: d5 1f 04  mov   $041f+x,a
1551: f8 02     mov   x,$02
1553: eb 00     mov   y,$00
1555: f5 3f 04  mov   a,$043f+x
1558: 60        clrc
1559: 96 02 01  adc   a,$0102+y
155c: d6 02 01  mov   $0102+y,a
155f: f5 40 04  mov   a,$0440+x
1562: 96 03 01  adc   a,$0103+y
1565: d6 03 01  mov   $0103+y,a
1568: e8 0c     mov   a,#$0c
156a: 3f 6e 15  call  $156e
156d: 6f        ret

156e: fd        mov   y,a
156f: f8 01     mov   x,$01
1571: f4 2d     mov   a,$2d+x
1573: 28 07     and   a,#$07
1575: 5d        mov   x,a
1576: dd        mov   a,y
1577: 14 25     or    a,$25+x
1579: d4 25     mov   $25+x,a
157b: 6f        ret

157c: f8 1b     mov   x,$1b
157e: f0 04     beq   $1584
1580: e8 0a     mov   a,#$0a
1582: 2f 21     bra   $15a5
1584: f8 02     mov   x,$02
1586: f5 6e 03  mov   a,$036e+x
1589: 68 0a     cmp   a,#$0a
158b: f0 18     beq   $15a5
158d: 90 0f     bcc   $159e
158f: 80        setc
1590: c4 04     mov   $04,a
1592: e8 14     mov   a,#$14
1594: a4 04     sbc   a,$04
1596: 5d        mov   x,a
1597: f5 97 17  mov   a,$1797+x
159a: fd        mov   y,a
159b: e8 55     mov   a,#$55
159d: 6f        ret

159e: fd        mov   y,a
159f: f6 97 17  mov   a,$1797+y
15a2: 8d 55     mov   y,#$55
15a4: 6f        ret

15a5: e8 55     mov   a,#$55
15a7: fd        mov   y,a
15a8: 6f        ret

15a9: e8 00     mov   a,#$00
15ab: c4 f7     mov   $f7,a
15ad: c4 1a     mov   $1a,a
15af: 3f 40 09  call  $0940
15b2: 3f fb 15  call  $15fb
15b5: 5f 00 05  jmp   $0500

15b8: e8 00     mov   a,#$00
15ba: c4 f7     mov   $f7,a
15bc: c4 1a     mov   $1a,a
15be: 3f 59 12  call  $1259
15c1: 2f 0e     bra   $15d1
15c3: e8 00     mov   a,#$00
15c5: c4 f7     mov   $f7,a
15c7: c4 1a     mov   $1a,a
15c9: 78 15 19  cmp   $19,#$15
15cc: f0 03     beq   $15d1
15ce: 3f 40 09  call  $0940
15d1: 8f 00 00  mov   $00,#$00
15d4: 3f f4 12  call  $12f4
15d7: 8f 01 00  mov   $00,#$01
15da: 3f f4 12  call  $12f4
15dd: 3f fb 15  call  $15fb
15e0: 78 15 19  cmp   $19,#$15
15e3: f0 05     beq   $15ea
15e5: 3f 62 09  call  $0962
15e8: 2f 04     bra   $15ee
15ea: e4 cc     mov   a,$cc
15ec: c4 f4     mov   $f4,a
15ee: e8 01     mov   a,#$01
15f0: c4 1a     mov   $1a,a
15f2: e8 c0     mov   a,#$c0
15f4: c5 81 01  mov   $0181,a
15f7: c5 82 01  mov   $0182,a
15fa: 6f        ret

15fb: 8f aa f4  mov   $f4,#$aa
15fe: 8f bb f5  mov   $f5,#$bb
1601: 78 cc f4  cmp   $f4,#$cc
1604: d0 fb     bne   $1601
1606: 2f 1b     bra   $1623
1608: eb f4     mov   y,$f4
160a: d0 fc     bne   $1608
160c: 7e f4     cmp   y,$f4
160e: d0 0d     bne   $161d
1610: e4 f5     mov   a,$f5
1612: cb f4     mov   $f4,y
1614: d7 0a     mov   ($0a)+y,a
1616: fc        inc   y
1617: d0 f3     bne   $160c
1619: ab 0b     inc   $0b
161b: 2f ef     bra   $160c
161d: 10 ed     bpl   $160c
161f: 7e f4     cmp   y,$f4
1621: 10 e9     bpl   $160c
1623: ba f6     movw  ya,$f6
1625: da 0a     movw  $0a,ya
1627: eb f4     mov   y,$f4
1629: cb f4     mov   $f4,y
162b: e4 f5     mov   a,$f5
162d: d0 d9     bne   $1608
162f: 6f        ret

; vcmd f5 - skip 3 bytes
1630: fc        inc   y
1631: fc        inc   y
1632: fc        inc   y
1633: cb 03     mov   $03,y
1635: 6f        ret

; vcmd f7 - skip 3 bytes
1636: fc        inc   y
1637: fc        inc   y
1638: fc        inc   y
1639: cb 03     mov   $03,y
163b: 6f        ret

; vcmd f6/f8/fc - read/write APU port 3
163c: e4 f7     mov   a,$f7
163e: f0 1d     beq   $165d
1640: 64 1a     cmp   a,$1a
1642: d0 19     bne   $165d
1644: 64 f7     cmp   a,$f7
1646: d0 f4     bne   $163c
1648: cd 00     mov   x,#$00
164a: d8 00     mov   $00,x
164c: 3f 62 16  call  $1662
164f: 3d        inc   x
1650: c8 03     cmp   x,#$03
1652: d0 f8     bne   $164c
1654: e4 1a     mov   a,$1a
1656: bc        inc   a
1657: 28 7f     and   a,#$7f
1659: f0 fb     beq   $1656
165b: c4 1a     mov   $1a,a
165d: e4 1a     mov   a,$1a
165f: c4 f7     mov   $f7,a
1661: 6f        ret

1662: f4 f4     mov   a,$f4+x
1664: 74 f4     cmp   a,$f4+x
1666: d0 fa     bne   $1662
1668: 68 00     cmp   a,#$00
166a: f0 04     beq   $1670
166c: 74 d8     cmp   a,$d8+x
166e: d0 05     bne   $1675
1670: e8 00     mov   a,#$00
1672: d4 d8     mov   $d8+x,a
1674: 6f        ret

1675: ab 00     inc   $00
1677: d4 d8     mov   $d8+x,a
1679: 6f        ret

167a: 0d        push  psw
167b: b0 03     bcs   $1680
167d: 48 ff     eor   a,#$ff
167f: bc        inc   a
1680: 8d 00     mov   y,#$00
1682: 9e        div   ya,x
1683: 2d        push  a
1684: e8 00     mov   a,#$00
1686: 9e        div   ya,x
1687: ee        pop   y
1688: 8e        pop   psw
1689: b0 06     bcs   $1691
168b: da 16     movw  $16,ya
168d: ba 11     movw  ya,$11
168f: 9a 16     subw  ya,$16
1691: 6f        ret

1692: 8f 6c f2  mov   $f2,#$6c
1695: 8f e0 f3  mov   $f3,#$e0
1698: e8 00     mov   a,#$00
169a: cd e1     mov   x,#$e1
169c: c6        mov   (x),a
169d: 1d        dec   x
169e: d0 fc     bne   $169c
16a0: e8 01     mov   a,#$01
16a2: 8d 00     mov   y,#$00
16a4: da 10     movw  $10,ya
16a6: 3f f6 16  call  $16f6
16a9: e8 18     mov   a,#$18
16ab: c4 53     mov   $53,a
16ad: 8f 5d f2  mov   $f2,#$5d
16b0: c4 f3     mov   $f3,a
16b2: 8f f0 f1  mov   $f1,#$f0
16b5: 8d 00     mov   y,#$00
16b7: dd        mov   a,y
16b8: d6 00 02  mov   $0200+y,a
16bb: d6 00 03  mov   $0300+y,a
16be: d6 00 04  mov   $0400+y,a
16c1: fe f5     dbnz  y,$16b8
16c3: 8d 90     mov   y,#$90
16c5: d6 ff 00  mov   $00ff+y,a
16c8: fe fb     dbnz  y,$16c5
16ca: e8 ff     mov   a,#$ff
16cc: c4 cc     mov   $cc,a
16ce: c4 cd     mov   $cd,a
16d0: c4 ce     mov   $ce,a
16d2: c4 cf     mov   $cf,a
16d4: c4 d0     mov   $d0,a
16d6: 3f f6 16  call  $16f6
16d9: 8f 00 f1  mov   $f1,#$00
16dc: 8f 6d f2  mov   $f2,#$6d
16df: 8f ff f3  mov   $f3,#$ff
16e2: e8 20     mov   a,#$20
16e4: c4 50     mov   $50,a
16e6: 8f 6c f2  mov   $f2,#$6c
16e9: c4 f3     mov   $f3,a
16eb: e8 43     mov   a,#$43
16ed: c4 fb     mov   $fb,a
16ef: 8f 02 4f  mov   $4f,#$02
16f2: 8f 02 f1  mov   $f1,#$02
16f5: 6f        ret

16f6: e8 00     mov   a,#$00
16f8: cd 08     mov   x,#$08
16fa: 8d 08     mov   y,#$08
16fc: c4 f2     mov   $f2,a
16fe: 8f 00 f3  mov   $f3,#$00
1701: ab f2     inc   $f2
1703: fe f9     dbnz  y,$16fe
1705: 60        clrc
1706: 88 10     adc   a,#$10
1708: 1d        dec   x
1709: d0 ef     bne   $16fa
170b: cd 00     mov   x,#$00
170d: f5 30 17  mov   a,$1730+x
1710: 30 0b     bmi   $171d
1712: c4 f2     mov   $f2,a
1714: f5 31 17  mov   a,$1731+x
1717: c4 f3     mov   $f3,a
1719: 3d        inc   x
171a: 3d        inc   x
171b: 2f f0     bra   $170d
171d: 6f        ret

171e: 4d        push  x
171f: db 1d     mov   $1d+x,y
1721: f5 d1 17  mov   a,$17d1+x
1724: cd 07     mov   x,#$07
1726: c4 f2     mov   $f2,a
1728: cb f3     mov   $f3,y
172a: bc        inc   a
172b: 1d        dec   x
172c: 10 f8     bpl   $1726
172e: ce        pop   x
172f: 6f        ret

1730: db $0c,$60,$1c,$60,$2d,$00,$3d,$00
1738: db $4c,$00,$2c,$00,$3c,$00,$0d,$00
1740: db $7d,$00,$4d,$00,$ff

1745: db $01,$02,$04,$08,$10,$20,$40,$80
174d: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
1755: dw $085f
1757: dw $08de
1759: dw $0965
175b: dw $09f4
175d: dw $0a8c
175f: dw $0b2c
1761: dw $0bd6
1763: dw $0c8b
1765: dw $0d4a
1767: dw $0e14
1769: dw $0eea
176b: dw $0fcd
176d: dw $10be

; note dur%s
176f: db $32,$65,$7f,$98,$b2,$cb,$e5,$ff
; per-note velocity values
1777: db $28,$3c,$4c,$65,$72,$7f,$8c,$98
177f: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

1787: db $08,$09,$0a,$0b,$0c,$0d,$0e,$0f
178f: db $00,$01,$02,$03,$04,$05,$06,$07

1797: db $00,$7f,$02,$7f,$05,$7e,$0b,$7d
179f: db $13,$7c,$1e,$7b,$2b,$7a,$3c,$79
17a7: db $4b,$78,$5e,$75,$73,$73,$75,$5e
17af: db $78,$4b,$79,$3c,$7a,$2b,$7b,$1e
17b7: db $7c,$13,$7d,$0b,$7e,$05,$7f,$02
17bf: db $7f,$00,$00,$08,$10,$18,$20,$28
17c7: db $30,$38,$40,$48,$50,$58,$60,$68
17c9: db $70,$78