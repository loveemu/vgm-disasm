0550: 20        clrp
0551: 8f 30 f1  mov   $f1,#$30
0554: 8f 86 fa  mov   $fa,#$86
0557: 8f 01 f1  mov   $f1,#$01
055a: e8 00     mov   a,#$00
055c: 5d        mov   x,a
055d: af        mov   (x)+,a
055e: c8 f0     cmp   x,#$f0
0560: d0 fb     bne   $055d
0562: cd ff     mov   x,#$ff
0564: bd        mov   sp,x
0565: e8 ff     mov   a,#$ff
0567: 8d 5c     mov   y,#$5c
0569: 3f 1c 0a  call  $0a1c
056c: cd 00     mov   x,#$00
056e: f5 f8 09  mov   a,$09f8+x
0571: fd        mov   y,a
0572: 3d        inc   x
0573: f5 f8 09  mov   a,$09f8+x
0576: 3f 1c 0a  call  $0a1c
0579: 3d        inc   x
057a: c8 18     cmp   x,#$18
057c: d0 f0     bne   $056e
057e: 8f 02 e0  mov   $e0,#$02
0581: 3f 1f 07  call  $071f
0584: ba f4     movw  ya,$f4
0586: 64 f4     cmp   a,$f4
0588: d0 fa     bne   $0584
058a: 64 48     cmp   a,$48
058c: d0 0f     bne   $059d
058e: e5 fd 00  mov   a,$00fd
0591: f0 f1     beq   $0584
0593: e4 db     mov   a,$db
0595: 8d 4c     mov   y,#$4c
0597: 3f 1c 0a  call  $0a1c
059a: 5f 26 07  jmp   $0726

059d: 8f 01 f4  mov   $f4,#$01
05a0: c4 f5     mov   $f5,a
05a2: c4 48     mov   $48,a
05a4: 1c        asl   a
05a5: 68 1c     cmp   a,#$1c
05a7: b0 d8     bcs   $0581
05a9: 5d        mov   x,a
05aa: 1f ad 05  jmp   ($05ad+x)

05ad: dw $0581
05af: dw $063a
05b1: dw $0673
05b3: dw $0581
05b5: dw $05de
05b7: dw $05e5
05b9: dw $05f0
05bb: dw $05ea
05bd: dw $068e
05bf: dw $05c9
05c1: dw $05f8
05c3: dw $0609
05c5: dw $061a
05c7: dw $062b

05c9: dd        mov   a,y
05ca: 1c        asl   a
05cb: 5d        mov   x,a
05cc: f5 48 05  mov   a,$0548+x
05cf: d0 b0     bne   $0581
05d1: f4 09     mov   a,$09+x
05d3: d5 48 05  mov   $0548+x,a
05d6: e8 00     mov   a,#$00
05d8: d5 49 05  mov   $0549+x,a
05db: 5f 81 05  jmp   $0581

05de: cb d3     mov   $d3,y
05e0: cb d1     mov   $d1,y
05e2: 5f 81 05  jmp   $0581

05e5: cb d4     mov   $d4,y
05e7: 5f 81 05  jmp   $0581

05ea: 8f 00 d5  mov   $d5,#$00
05ed: 5f 81 05  jmp   $0581

05f0: 8f ff d5  mov   $d5,#$ff
05f3: 8d 5c     mov   y,#$5c
05f5: 3f 1c 0a  call  $0a1c
;
05f8: cb 45     mov   $45,y
05fa: 3f 1f 07  call  $071f
05fd: e5 08 c0  mov   a,$c008
0600: ec 09 c0  mov   y,$c009
0603: da 3c     movw  $3c,ya
0605: cd 00     mov   x,#$00
0607: 2f 31     bra   $063a
;
0609: cb 45     mov   $45,y
060b: 3f 1f 07  call  $071f
060e: e5 0a c0  mov   a,$c00a
0611: ec 0b c0  mov   y,$c00b
0614: da 3c     movw  $3c,ya
0616: cd 02     mov   x,#$02
0618: 2f 20     bra   $063a
;
061a: cb 45     mov   $45,y
061c: 3f 1f 07  call  $071f
061f: e5 0c c0  mov   a,$c00c
0622: ec 0d c0  mov   y,$c00d
0625: da 3c     movw  $3c,ya
0627: cd 04     mov   x,#$04
0629: 2f 0f     bra   $063a
;
062b: cb 45     mov   $45,y
062d: 3f 1f 07  call  $071f
0630: e5 0e c0  mov   a,$c00e
0633: ec 0f c0  mov   y,$c00f
0636: da 3c     movw  $3c,ya            ; load song list address to $3c/d
0638: cd 06     mov   x,#$06
063a: e4 d1     mov   a,$d1
063c: f0 03     beq   $0641
063e: 3f 87 10  call  $1087
0641: e4 45     mov   a,$45             ; song number
0643: d4 49     mov   $49+x,a
0645: 1c        asl   a
0646: fd        mov   y,a
0647: f7 3c     mov   a,($3c)+y
0649: d4 00     mov   $00+x,a
064b: fc        inc   y
064c: f7 3c     mov   a,($3c)+y
064e: d4 01     mov   $01+x,a
0650: e8 00     mov   a,#$00
0652: d4 19     mov   $19+x,a
0654: d4 20     mov   $20+x,a
0656: d4 21     mov   $21+x,a
0658: d4 30     mov   $30+x,a
065a: d4 29     mov   $29+x,a
065c: d4 28     mov   $28+x,a
065e: d5 48 05  mov   $0548+x,a
0661: d5 49 05  mov   $0549+x,a
0664: e8 60     mov   a,#$60
0666: 8d 0c     mov   y,#$0c
0668: 3f 1c 0a  call  $0a1c
066b: 8d 1c     mov   y,#$1c
066d: 3f 1c 0a  call  $0a1c
0670: 5f 84 05  jmp   $0584

0673: dd        mov   a,y
0674: c4 f6     mov   $f6,a
0676: 30 0d     bmi   $0685
0678: 1c        asl   a
0679: 5d        mov   x,a
067a: e8 00     mov   a,#$00
067c: d4 49     mov   $49+x,a
067e: c8 00     cmp   x,#$00
0680: f0 06     beq   $0688
0682: 5f 81 05  jmp   $0581

0685: 3f 8a 10  call  $108a
0688: 8f 50 f7  mov   $f7,#$50
068b: 5f 81 05  jmp   $0581

068e: 8f 01 f4  mov   $f4,#$01
0691: 78 01 f4  cmp   $f4,#$01
0694: d0 fb     bne   $0691
0696: fa f6 45  mov   ($45),($f6)
0699: fa f7 46  mov   ($46),($f7)
069c: 8f 81 f4  mov   $f4,#$81
069f: 78 81 f4  cmp   $f4,#$81
06a2: d0 fb     bne   $069f
06a4: fa f6 47  mov   ($47),($f6)
06a7: fa f7 48  mov   ($48),($f7)
06aa: 8f 01 f4  mov   $f4,#$01
06ad: cd 00     mov   x,#$00
06af: e4 f4     mov   a,$f4
06b1: 30 fc     bmi   $06af
06b3: e4 f5     mov   a,$f5
06b5: c7 45     mov   ($45+x),a
06b7: ba f6     movw  ya,$f6
06b9: 8f 81 f4  mov   $f4,#$81
06bc: 1a 47     decw  $47
06be: f0 37     beq   $06f7
06c0: 3a 45     incw  $45
06c2: c7 45     mov   ($45+x),a
06c4: 1a 47     decw  $47
06c6: f0 2f     beq   $06f7
06c8: 3a 45     incw  $45
06ca: dd        mov   a,y
06cb: c7 45     mov   ($45+x),a
06cd: 1a 47     decw  $47
06cf: f0 26     beq   $06f7
06d1: 3a 45     incw  $45
06d3: e4 f4     mov   a,$f4
06d5: 10 fc     bpl   $06d3
06d7: e4 f5     mov   a,$f5
06d9: c7 45     mov   ($45+x),a
06db: ba f6     movw  ya,$f6
06dd: 8f 01 f4  mov   $f4,#$01
06e0: 1a 47     decw  $47
06e2: f0 13     beq   $06f7
06e4: 3a 45     incw  $45
06e6: c7 45     mov   ($45+x),a
06e8: 1a 47     decw  $47
06ea: f0 0b     beq   $06f7
06ec: 3a 45     incw  $45
06ee: dd        mov   a,y
06ef: c7 45     mov   ($45+x),a
06f1: 3a 45     incw  $45
06f3: 1a 47     decw  $47
06f5: d0 b8     bne   $06af
06f7: e4 f4     mov   a,$f4
06f9: d0 fc     bne   $06f7
06fb: c4 48     mov   $48,a
06fd: 3f 1f 07  call  $071f
0700: ba f4     movw  ya,$f4
0702: 64 f4     cmp   a,$f4
0704: d0 fa     bne   $0700
0706: 64 48     cmp   a,$48
0708: f0 f6     beq   $0700
070a: 5f 9d 05  jmp   $059d

070d: ba f4     movw  ya,$f4
070f: 64 f4     cmp   a,$f4
0711: d0 fa     bne   $070d
0713: 64 48     cmp   a,$48
0715: d0 01     bne   $0718
0717: 6f        ret

0718: 68 0e     cmp   a,#$0e
071a: b0 03     bcs   $071f
071c: 3f 9d 05  call  $059d
071f: fa e0 f4  mov   ($f4),($e0)
0722: 58 80 e0  eor   $e0,#$80
0725: 6f        ret

0726: cd 00     mov   x,#$00
0728: d8 df     mov   $df,x
072a: d8 da     mov   $da,x
072c: d8 db     mov   $db,x
072e: d8 dc     mov   $dc,x
0730: f4 49     mov   a,$49+x
0732: c4 d6     mov   $d6,a
0734: d8 de     mov   $de,x
0736: f0 05     beq   $073d
0738: 10 4a     bpl   $0784
073a: 5f 2f 09  jmp   $092f

073d: 5f 2f 10  jmp   $102f

0740: f8 de     mov   x,$de
0742: f4 09     mov   a,$09+x
0744: 04 da     or    a,$da
0746: c4 da     mov   $da,a
0748: f4 30     mov   a,$30+x
074a: 04 dc     or    a,$dc
074c: c4 dc     mov   $dc,a
074e: e4 d5     mov   a,$d5
0750: d0 0c     bne   $075e
0752: 3d        inc   x
0753: 3d        inc   x
0754: d8 df     mov   $df,x
0756: 0b df     asl   $df
0758: 0b df     asl   $df
075a: c8 08     cmp   x,#$08
075c: d0 d2     bne   $0730
075e: e8 00     mov   a,#$00
0760: 8d 5c     mov   y,#$5c
0762: 3f 1c 0a  call  $0a1c
0765: e4 d1     mov   a,$d1
0767: f0 03     beq   $076c
0769: 3f 57 10  call  $1057
076c: e4 d9     mov   a,$d9
076e: 8d 3d     mov   y,#$3d
0770: 3f 1c 0a  call  $0a1c
0773: 8d 08     mov   y,#$08
0775: e8 00     mov   a,#$00
0777: 4b dc     lsr   $dc
0779: 3c        rol   a
077a: fe fb     dbnz  y,$0777
077c: 8d 4d     mov   y,#$4d
077e: 3f 1c 0a  call  $0a1c
0781: 5f 84 05  jmp   $0584

0784: 3f 10 0a  call  $0a10
0787: 68 18     cmp   a,#$18
0789: 10 05     bpl   $0790
078b: 1c        asl   a
078c: 5d        mov   x,a
078d: 1f af 07  jmp   ($07af+x)

0790: c4 39     mov   $39,a
0792: 28 0f     and   a,#$0f
0794: f8 df     mov   x,$df
0796: 8f 60 3a  mov   $3a,#$60
0799: 8f 03 3b  mov   $3b,#$03
079c: 8d 20     mov   y,#$20
079e: cf        mul   ya
079f: 7a 3a     addw  ya,$3a
07a1: 3f a7 0f  call  $0fa7
07a4: 2f de     bra   $0784
07a6: e8 e0     mov   a,#$e0
07a8: 8d 04     mov   y,#$04
07aa: 3f a7 0f  call  $0fa7
07ad: 2f d5     bra   $0784
07af: db 07     mov   $07+x,y
07b1: e3 07 01  bbs7  $07,$07b5
07b4: 08 1c     or    a,#$1c
07b6: 10 80     bpl   $0738
07b8: 08 88     or    a,#$88
07ba: 08 2e     or    a,#$2e
07bc: 08 5e     or    a,#$5e
07be: 08 1e     or    a,#$1e
07c0: 08 12     or    a,#$12
07c2: 09 90 08  or    ($08),($90)
07c5: a6        sbc   a,(x)
07c6: 07 9b     or    a,($9b+x)
07c8: 08 a3     or    a,#$a3
07ca: 08 43     or    a,#$43
07cc: 09 3f 08  or    ($08),($3f)
07cf: 6f        ret

07d0: 08 c4     or    a,#$c4
07d2: 08 ea     or    a,#$ea
07d4: 08 da     or    a,#$da
07d6: 08 cf     or    a,#$cf
07d8: 08 fc     or    a,#$fc
07da: 0f        brk
07db: 3f 10 0a  call  $0a10
07de: d4 08     mov   $08+x,a
07e0: 5f 84 07  jmp   $0784

07e3: f8 de     mov   x,$de
07e5: e4 da     mov   a,$da
07e7: 48 ff     eor   a,#$ff
07e9: c4 3c     mov   $3c,a
07eb: 34 09     and   a,$09+x
07ed: c4 41     mov   $41,a
07ef: 3f 13 0a  call  $0a13
07f2: d4 09     mov   $09+x,a
07f4: 24 3c     and   a,$3c
07f6: 04 41     or    a,$41
07f8: 3f 45 10  call  $1045
07fb: 3f bf 0f  call  $0fbf
07fe: 5f 84 07  jmp   $0784

0801: 3f 10 0a  call  $0a10
0804: c4 38     mov   $38,a
0806: 3f 13 0a  call  $0a13
0809: c4 39     mov   $39,a
080b: f4 00     mov   a,$00+x
080d: d4 18     mov   $18+x,a
080f: f4 01     mov   a,$01+x
0811: d4 19     mov   $19+x,a
0813: e4 38     mov   a,$38
0815: d4 00     mov   $00+x,a
0817: e4 39     mov   a,$39
0819: d4 01     mov   $01+x,a
081b: 5f 84 07  jmp   $0784

081e: 3f 10 0a  call  $0a10
0821: c4 38     mov   $38,a
0823: e7 00     mov   a,($00+x)
0825: d4 01     mov   $01+x,a
0827: e4 38     mov   a,$38
0829: d4 00     mov   $00+x,a
082b: 5f 84 07  jmp   $0784

082e: f8 de     mov   x,$de
0830: bb 20     inc   $20+x
0832: 3f 13 0a  call  $0a13
0835: 74 20     cmp   a,$20+x
0837: d0 e5     bne   $081e
0839: e8 00     mov   a,#$00
083b: d4 20     mov   $20+x,a
083d: 2f 0f     bra   $084e
083f: f8 de     mov   x,$de
0841: bb 21     inc   $21+x
0843: 3f 13 0a  call  $0a13
0846: 74 21     cmp   a,$21+x
0848: d0 d4     bne   $081e
084a: e8 00     mov   a,#$00
084c: d4 21     mov   $21+x,a
084e: 60        clrc
084f: f4 00     mov   a,$00+x
0851: 88 02     adc   a,#$02
0853: d4 00     mov   $00+x,a
0855: f4 01     mov   a,$01+x
0857: 88 00     adc   a,#$00
0859: d4 01     mov   $01+x,a
085b: 5f 84 07  jmp   $0784

085e: f8 de     mov   x,$de
0860: bb 20     inc   $20+x
0862: 3f 13 0a  call  $0a13
0865: 74 20     cmp   a,$20+x
0867: d0 e5     bne   $084e
0869: e8 00     mov   a,#$00
086b: d4 20     mov   $20+x,a
086d: 2f af     bra   $081e
086f: f8 de     mov   x,$de
0871: bb 21     inc   $21+x
0873: 3f 13 0a  call  $0a13
0876: 74 21     cmp   a,$21+x
0878: d0 d4     bne   $084e
087a: e8 00     mov   a,#$00
087c: d4 21     mov   $21+x,a
087e: 2f 9e     bra   $081e
0880: 3f 10 0a  call  $0a10
0883: d4 10     mov   $10+x,a
0885: 5f 84 07  jmp   $0784

0888: 3f 10 0a  call  $0a10
088b: d4 11     mov   $11+x,a
088d: 5f 84 07  jmp   $0784

0890: 3f 10 0a  call  $0a10
0893: 8d 7d     mov   y,#$7d
0895: 3f 1c 0a  call  $0a1c
0898: 5f 84 07  jmp   $0784

089b: 3f 10 0a  call  $0a10
089e: d4 29     mov   $29+x,a
08a0: 5f 84 07  jmp   $0784

08a3: e8 6c     mov   a,#$6c
08a5: 3f 23 0a  call  $0a23
08a8: fd        mov   y,a
08a9: 3f 10 0a  call  $0a10
08ac: 68 00     cmp   a,#$00
08ae: d0 07     bne   $08b7
08b0: d4 30     mov   $30+x,a
08b2: dd        mov   a,y
08b3: 08 20     or    a,#$20
08b5: 2f 05     bra   $08bc
08b7: d4 30     mov   $30+x,a
08b9: dd        mov   a,y
08ba: 28 df     and   a,#$df
08bc: 8d 6c     mov   y,#$6c
08be: 3f 1c 0a  call  $0a1c
08c1: 5f 84 07  jmp   $0784

08c4: 3f 10 0a  call  $0a10
08c7: 8d 0d     mov   y,#$0d
08c9: 3f 1c 0a  call  $0a1c
08cc: 5f 84 07  jmp   $0784

08cf: 3f 10 0a  call  $0a10
08d2: 8d 6d     mov   y,#$6d
08d4: 3f 1c 0a  call  $0a1c
08d7: 5f 84 07  jmp   $0784

08da: 3f 10 0a  call  $0a10
08dd: 8d 2c     mov   y,#$2c
08df: 3f 1c 0a  call  $0a1c
08e2: 8d 3c     mov   y,#$3c
08e4: 3f 1c 0a  call  $0a1c
08e7: 5f 84 07  jmp   $0784

08ea: ec 07 c0  mov   y,$c007
08ed: e5 06 c0  mov   a,$c006
08f0: da 3a     movw  $3a,ya
08f2: 3f 10 0a  call  $0a10
08f5: cd 0f     mov   x,#$0f
08f7: 1c        asl   a
08f8: 1c        asl   a
08f9: 1c        asl   a
08fa: fd        mov   y,a
08fb: f7 3a     mov   a,($3a)+y
08fd: c9 f2 00  mov   $00f2,x
0900: c5 f3 00  mov   $00f3,a
0903: fc        inc   y
0904: 7d        mov   a,x
0905: 60        clrc
0906: 88 10     adc   a,#$10
0908: 5d        mov   x,a
0909: 68 8f     cmp   a,#$8f
090b: d0 ee     bne   $08fb
090d: f8 de     mov   x,$de
090f: 5f 84 07  jmp   $0784

0912: 3f 10 0a  call  $0a10
0915: eb df     mov   y,$df
0917: c4 38     mov   $38,a
0919: 0b 38     asl   $38
091b: 90 0b     bcc   $0928
091d: 3f 13 0a  call  $0a13
0920: d6 c0 04  mov   $04c0+y,a
0923: e8 00     mov   a,#$00
0925: d6 70 00  mov   $0070+y,a
0928: fc        inc   y
0929: e4 38     mov   a,$38
092b: d0 ec     bne   $0919
092d: 2f 16     bra   $0945
092f: f8 de     mov   x,$de
0931: f4 08     mov   a,$08+x
0933: fb 10     mov   y,$10+x
0935: cf        mul   ya
0936: c4 d0     mov   $d0,a
0938: 74 28     cmp   a,$28+x
093a: d0 09     bne   $0945
093c: e8 00     mov   a,#$00
093e: d4 28     mov   $28+x,a
0940: 5f 84 07  jmp   $0784

0943: f8 de     mov   x,$de
0945: f4 09     mov   a,$09+x
0947: c4 38     mov   $38,a
0949: e4 da     mov   a,$da
094b: 48 ff     eor   a,#$ff
094d: 24 38     and   a,$38
094f: c4 dd     mov   $dd,a
0951: f4 29     mov   a,$29+x
0953: c4 d8     mov   $d8,a
0955: f5 48 05  mov   a,$0548+x
0958: 24 dd     and   a,$dd
095a: c4 46     mov   $46,a
095c: f0 0d     beq   $096b
095e: f4 28     mov   a,$28+x
0960: 28 01     and   a,#$01
0962: f0 07     beq   $096b
0964: f5 49 05  mov   a,$0549+x
0967: bc        inc   a
0968: d5 49 05  mov   $0549+x,a
096b: 3f 30 0e  call  $0e30
096e: 0b 38     asl   $38
0970: 90 64     bcc   $09d6
0972: f8 df     mov   x,$df
0974: e4 dd     mov   a,$dd
0976: 10 7a     bpl   $09f2
0978: f4 70     mov   a,$70+x
097a: 68 ff     cmp   a,#$ff
097c: f0 58     beq   $09d6
097e: 75 e0 04  cmp   a,$04e0+x
0981: d0 44     bne   $09c7
0983: f5 c0 04  mov   a,$04c0+x
0986: 68 ff     cmp   a,#$ff
0988: f0 3d     beq   $09c7
098a: 8f 20 3c  mov   $3c,#$20
098d: 8f 00 3d  mov   $3d,#$00
0990: 8f 60 3e  mov   $3e,#$60
0993: 8f 03 3f  mov   $3f,#$03
0996: 8f 00 40  mov   $40,#$00
0999: 8f 02 41  mov   $41,#$02
099c: 8f 0b 3b  mov   $3b,#$0b
099f: eb df     mov   y,$df
09a1: f7 3e     mov   a,($3e)+y
09a3: d7 40     mov   ($40)+y,a
09a5: ba 3c     movw  ya,$3c
09a7: 7a 3e     addw  ya,$3e
09a9: da 3e     movw  $3e,ya
09ab: ba 3c     movw  ya,$3c
09ad: 7a 40     addw  ya,$40
09af: da 40     movw  $40,ya
09b1: 6e 3b eb  dbnz  $3b,$099f
09b4: 3f 2a 0a  call  $0a2a
09b7: 3f ce 0d  call  $0dce
09ba: e8 ff     mov   a,#$ff
09bc: f8 df     mov   x,$df
09be: d5 c0 04  mov   $04c0+x,a
09c1: e8 00     mov   a,#$00
09c3: d4 b0     mov   $b0+x,a
09c5: 2f 05     bra   $09cc
09c7: 3f 31 0b  call  $0b31
09ca: f8 df     mov   x,$df
09cc: bb b0     inc   $b0+x
09ce: f4 70     mov   a,$70+x
09d0: 68 fe     cmp   a,#$fe
09d2: f0 02     beq   $09d6
09d4: bb 70     inc   $70+x
09d6: 3f 38 0e  call  $0e38
09d9: 0b dd     asl   $dd
09db: 0b d8     asl   $d8
09dd: 0b 46     asl   $46
09df: ab df     inc   $df
09e1: e4 38     mov   a,$38
09e3: d0 86     bne   $096b
09e5: f8 de     mov   x,$de
09e7: bb 28     inc   $28+x
09e9: e4 d6     mov   a,$d6
09eb: 08 80     or    a,#$80
09ed: d4 49     mov   $49+x,a
09ef: 5f 40 07  jmp   $0740

09f2: e8 ff     mov   a,#$ff
09f4: d4 70     mov   $70+x,a
09f6: 2f de     bra   $09d6

09f8: db $0c,$60
09fa: db $1c,$60
09fc: db $0d,$00
09fe: db $2c,$00
0a00: db $2d,$00
0a02: db $3c,$00
0a04: db $3d,$00
0a06: db $4d,$00
0a08: db $5d,$11
0a0a: db $6d,$c8
0a0c: db $7d,$01
0a0e: db $6c,$20

0a10: e9 de 00  mov   x,$00de
0a13: e7 00     mov   a,($00+x)
0a15: bb 00     inc   $00+x
0a17: d0 02     bne   $0a1b
0a19: bb 01     inc   $01+x
0a1b: 6f        ret

0a1c: cc f2 00  mov   $00f2,y
0a1f: c5 f3 00  mov   $00f3,a
0a22: 6f        ret

0a23: c5 f2 00  mov   $00f2,a
0a26: e5 f3 00  mov   a,$00f3
0a29: 6f        ret

0a2a: f8 df     mov   x,$df
0a2c: f5 c0 04  mov   a,$04c0+x
0a2f: 68 54     cmp   a,#$54
0a31: 90 03     bcc   $0a36
0a33: 5f a8 0a  jmp   $0aa8

0a36: c4 39     mov   $39,a
0a38: 3f 57 0b  call  $0b57
0a3b: 3f a5 0c  call  $0ca5
0a3e: f5 e0 02  mov   a,$02e0+x
0a41: f0 12     beq   $0a55
0a43: f4 50     mov   a,$50+x
0a45: 68 54     cmp   a,#$54
0a47: f0 0c     beq   $0a55
0a49: d5 a0 01  mov   $01a0+x,a
0a4c: f5 2a 0a  mov   a,$0a2a+x
0a4f: d5 20 05  mov   $0520+x,a
0a52: 3f b0 0c  call  $0cb0
0a55: e4 d8     mov   a,$d8
0a57: 10 06     bpl   $0a5f
0a59: 3f 67 0b  call  $0b67
0a5c: 5f 79 0b  jmp   $0b79

0a5f: f5 80 02  mov   a,$0280+x
0a62: f0 06     beq   $0a6a
0a64: 3f 96 0b  call  $0b96
0a67: 3f b1 0b  call  $0bb1
0a6a: e4 df     mov   a,$df
0a6c: 28 07     and   a,#$07
0a6e: 5d        mov   x,a
0a6f: fd        mov   y,a
0a70: f6 9c 10  mov   a,$109c+y
0a73: 8d 5c     mov   y,#$5c
0a75: 3f 1c 0a  call  $0a1c
0a78: 7d        mov   a,x
0a79: 1c        asl   a
0a7a: 9f        xcn   a
0a7b: 08 02     or    a,#$02
0a7d: c5 85 0a  mov   $0a85,a
0a80: 08 12     or    a,#$12
0a82: c5 87 0a  mov   $0a87,a
0a85: e2 db     set7  $db
0a87: f2 d9     clr7  $d9
0a89: 3f 17 0d  call  $0d17
0a8c: 3f 5b 0e  call  $0e5b
0a8f: f5 40 03  mov   a,$0340+x
0a92: d0 05     bne   $0a99
0a94: e8 7f     mov   a,#$7f
0a96: 5f c2 0e  jmp   $0ec2

0a99: 3f 75 0e  call  $0e75
0a9c: cd 00     mov   x,#$00
0a9e: e7 3a     mov   a,($3a+x)
0aa0: 10 03     bpl   $0aa5
0aa2: 5f 8e 0e  jmp   $0e8e

0aa5: 5f ac 0e  jmp   $0eac

0aa8: f0 47     beq   $0af1
0aaa: 68 80     cmp   a,#$80
0aac: b0 51     bcs   $0aff
0aae: f8 df     mov   x,$df
0ab0: 28 1f     and   a,#$1f
0ab2: d4 50     mov   $50+x,a
0ab4: e8 6c     mov   a,#$6c
0ab6: 3f 23 0a  call  $0a23
0ab9: 28 e0     and   a,#$e0
0abb: 14 50     or    a,$50+x
0abd: 8d 6c     mov   y,#$6c
0abf: 3f 1c 0a  call  $0a1c
0ac2: e4 d8     mov   a,$d8
0ac4: 10 03     bpl   $0ac9
0ac6: 5f 79 0b  jmp   $0b79

0ac9: e4 df     mov   a,$df
0acb: 28 07     and   a,#$07
0acd: 5d        mov   x,a
0ace: fd        mov   y,a
0acf: f6 9c 10  mov   a,$109c+y
0ad2: 8d 5c     mov   y,#$5c
0ad4: 3f 1c 0a  call  $0a1c
0ad7: 7d        mov   a,x
0ad8: 1c        asl   a
0ad9: 9f        xcn   a
0ada: 08 02     or    a,#$02
0adc: c5 e2 0a  mov   $0ae2,a
0adf: c5 e4 0a  mov   $0ae4,a
0ae2: a2 d9     set5  $d9
0ae4: a2 db     set5  $db
0ae6: e4 d2     mov   a,$d2
0ae8: 08 04     or    a,#$04
0aea: fd        mov   y,a
0aeb: 3f 6c 0e  call  $0e6c
0aee: 5f 8f 0a  jmp   $0a8f

0af1: f8 df     mov   x,$df
0af3: 3f a5 0c  call  $0ca5
0af6: 3f 67 0b  call  $0b67
0af9: f5 40 03  mov   a,$0340+x
0afc: 5f 63 0f  jmp   $0f63

0aff: 28 7f     and   a,#$7f
0b01: 8d 05     mov   y,#$05
0b03: cf        mul   ya
0b04: da 3a     movw  $3a,ya
0b06: ec 05 c0  mov   y,$c005
0b09: e5 04 c0  mov   a,$c004
0b0c: 7a 3a     addw  ya,$3a
0b0e: da 3a     movw  $3a,ya
0b10: 8d 00     mov   y,#$00
0b12: f8 df     mov   x,$df
0b14: f7 3a     mov   a,($3a)+y
0b16: d5 00 02  mov   $0200+x,a
0b19: fc        inc   y
0b1a: f7 3a     mov   a,($3a)+y
0b1c: d5 40 03  mov   $0340+x,a
0b1f: fc        inc   y
0b20: f7 3a     mov   a,($3a)+y
0b22: d5 20 02  mov   $0220+x,a
0b25: fc        inc   y
0b26: f7 3a     mov   a,($3a)+y
0b28: d5 40 02  mov   $0240+x,a
0b2b: fc        inc   y
0b2c: f7 3a     mov   a,($3a)+y
0b2e: 5f 2f 0a  jmp   $0a2f

0b31: f8 df     mov   x,$df
0b33: f4 50     mov   a,$50+x
0b35: 68 54     cmp   a,#$54
0b37: b0 16     bcs   $0b4f
0b39: 3f a5 0c  call  $0ca5
0b3c: f5 e0 02  mov   a,$02e0+x
0b3f: f0 08     beq   $0b49
0b41: f5 a0 01  mov   a,$01a0+x
0b44: f0 03     beq   $0b49
0b46: 3f b0 0c  call  $0cb0
0b49: 3f 67 0b  call  $0b67
0b4c: 5f 79 0b  jmp   $0b79

0b4f: d0 28     bne   $0b79
0b51: 3f 67 0b  call  $0b67
0b54: 5f 63 0f  jmp   $0f63

0b57: f8 df     mov   x,$df
0b59: 60        clrc
0b5a: 95 a0 02  adc   a,$02a0+x
0b5d: d5 20 01  mov   $0120+x,a
0b60: f5 c0 02  mov   a,$02c0+x
0b63: d5 00 01  mov   $0100+x,a
0b66: 6f        ret

0b67: f5 80 02  mov   a,$0280+x
0b6a: f0 06     beq   $0b72
0b6c: 3f 96 0b  call  $0b96
0b6f: 3f e9 0b  call  $0be9
0b72: 3f 17 0d  call  $0d17
0b75: 3f 5b 0e  call  $0e5b
0b78: 6f        ret

0b79: f8 df     mov   x,$df
0b7b: f5 60 02  mov   a,$0260+x
0b7e: f0 0a     beq   $0b8a
0b80: 74 b0     cmp   a,$b0+x
0b82: b0 06     bcs   $0b8a
0b84: f5 40 03  mov   a,$0340+x
0b87: 5f 63 0f  jmp   $0f63

0b8a: f4 90     mov   a,$90+x
0b8c: d0 01     bne   $0b8f
0b8e: 6f        ret

0b8f: 3f 75 0e  call  $0e75
0b92: 3f d4 0e  call  $0ed4
0b95: 6f        ret

0b96: 1c        asl   a
0b97: fd        mov   y,a
0b98: e5 02 c0  mov   a,$c002
0b9b: c4 40     mov   $40,a
0b9d: e5 03 c0  mov   a,$c003
0ba0: c4 41     mov   $41,a
0ba2: f7 40     mov   a,($40)+y
0ba4: c4 3a     mov   $3a,a
0ba6: fc        inc   y
0ba7: f7 40     mov   a,($40)+y
0ba9: c4 3b     mov   $3b,a
0bab: 6f        ret

0bac: f5 40 01  mov   a,$0140+x
0baf: 2f 11     bra   $0bc2
0bb1: f5 00 03  mov   a,$0300+x
0bb4: d5 80 01  mov   $0180+x,a
0bb7: e8 00     mov   a,#$00
0bb9: d5 80 01  mov   $0180+x,a
0bbc: d5 40 01  mov   $0140+x,a
0bbf: d5 60 01  mov   $0160+x,a
0bc2: fd        mov   y,a
0bc3: f7 3a     mov   a,($3a)+y
0bc5: 80        setc
0bc6: a8 64     sbc   a,#$64
0bc8: 90 0c     bcc   $0bd6
0bca: fd        mov   y,a
0bcb: f5 20 03  mov   a,$0320+x
0bce: f0 01     beq   $0bd1
0bd0: cf        mul   ya
0bd1: 7a 3c     addw  ya,$3c
0bd3: da 3c     movw  $3c,ya
0bd5: 6f        ret

0bd6: 48 ff     eor   a,#$ff
0bd8: bc        inc   a
0bd9: fd        mov   y,a
0bda: f5 20 03  mov   a,$0320+x
0bdd: f0 01     beq   $0be0
0bdf: cf        mul   ya
0be0: da 42     movw  $42,ya
0be2: ba 3c     movw  ya,$3c
0be4: 9a 42     subw  ya,$42
0be6: da 3c     movw  $3c,ya
0be8: 6f        ret

0be9: f5 40 01  mov   a,$0140+x
0bec: fd        mov   y,a
0bed: f7 3a     mov   a,($3a)+y
0bef: c4 3e     mov   $3e,a
0bf1: fc        inc   y
0bf2: f7 3a     mov   a,($3a)+y
0bf4: c4 3f     mov   $3f,a
0bf6: f5 00 03  mov   a,$0300+x
0bf9: 60        clrc
0bfa: 95 80 01  adc   a,$0180+x
0bfd: 90 1a     bcc   $0c19
0bff: f5 00 03  mov   a,$0300+x
0c02: d5 80 01  mov   $0180+x,a
0c05: e4 3f     mov   a,$3f
0c07: 68 f0     cmp   a,#$f0
0c09: 90 05     bcc   $0c10
0c0b: 3f 9c 0c  call  $0c9c
0c0e: f7 3a     mov   a,($3a)+y
0c10: c4 3e     mov   $3e,a
0c12: dd        mov   a,y
0c13: d5 40 01  mov   $0140+x,a
0c16: fc        inc   y
0c17: 2f 0c     bra   $0c25
0c19: d5 80 01  mov   $0180+x,a
0c1c: e4 3f     mov   a,$3f
0c1e: 68 f0     cmp   a,#$f0
0c20: 90 09     bcc   $0c2b
0c22: 3f 9c 0c  call  $0c9c
0c25: f7 3a     mov   a,($3a)+y
0c27: c4 3f     mov   $3f,a
0c29: 2f f3     bra   $0c1e
0c2b: 3f ac 0b  call  $0bac
0c2e: f5 80 01  mov   a,$0180+x
0c31: fd        mov   y,a
0c32: f5 20 03  mov   a,$0320+x
0c35: f0 01     beq   $0c38
0c37: cf        mul   ya
0c38: da 40     movw  $40,ya
0c3a: e4 3f     mov   a,$3f
0c3c: 80        setc
0c3d: a4 3e     sbc   a,$3e
0c3f: 90 2c     bcc   $0c6d
0c41: c4 3e     mov   $3e,a
0c43: eb 40     mov   y,$40
0c45: cf        mul   ya
0c46: da 42     movw  $42,ya
0c48: e4 3e     mov   a,$3e
0c4a: eb 41     mov   y,$41
0c4c: cf        mul   ya
0c4d: 60        clrc
0c4e: 84 43     adc   a,$43
0c50: c4 43     mov   $43,a
0c52: dd        mov   a,y
0c53: 88 00     adc   a,#$00
0c55: c4 44     mov   $44,a
0c57: 60        clrc
0c58: e4 42     mov   a,$42
0c5a: 95 60 01  adc   a,$0160+x
0c5d: d5 60 01  mov   $0160+x,a
0c60: e4 43     mov   a,$43
0c62: 84 3c     adc   a,$3c
0c64: c4 3c     mov   $3c,a
0c66: e4 44     mov   a,$44
0c68: 84 3d     adc   a,$3d
0c6a: c4 3d     mov   $3d,a
0c6c: 6f        ret

0c6d: 48 ff     eor   a,#$ff
0c6f: bc        inc   a
0c70: c4 3e     mov   $3e,a
0c72: eb 40     mov   y,$40
0c74: cf        mul   ya
0c75: da 42     movw  $42,ya
0c77: e4 3e     mov   a,$3e
0c79: eb 41     mov   y,$41
0c7b: cf        mul   ya
0c7c: 60        clrc
0c7d: 84 43     adc   a,$43
0c7f: c4 43     mov   $43,a
0c81: dd        mov   a,y
0c82: 88 00     adc   a,#$00
0c84: c4 44     mov   $44,a
0c86: 80        setc
0c87: f5 60 01  mov   a,$0160+x
0c8a: a4 42     sbc   a,$42
0c8c: d5 60 01  mov   $0160+x,a
0c8f: e4 3c     mov   a,$3c
0c91: a4 43     sbc   a,$43
0c93: c4 3c     mov   $3c,a
0c95: e4 3d     mov   a,$3d
0c97: a4 44     sbc   a,$44
0c99: c4 3d     mov   $3d,a
0c9b: 6f        ret

0c9c: d0 02     bne   $0ca0
0c9e: dc        dec   y
0c9f: 6f        ret

0ca0: fc        inc   y
0ca1: f7 3a     mov   a,($3a)+y
0ca3: fd        mov   y,a
0ca4: 6f        ret

0ca5: f5 00 01  mov   a,$0100+x
0ca8: c4 3c     mov   $3c,a
0caa: f5 20 01  mov   a,$0120+x
0cad: c4 3d     mov   $3d,a
0caf: 6f        ret

0cb0: 80        setc
0cb1: f5 00 01  mov   a,$0100+x
0cb4: b5 20 05  sbc   a,$0520+x
0cb7: f5 20 01  mov   a,$0120+x
0cba: b5 a0 01  sbc   a,$01a0+x
0cbd: 30 23     bmi   $0ce2
0cbf: bc        inc   a
0cc0: fd        mov   y,a
0cc1: f5 e0 02  mov   a,$02e0+x
0cc4: cf        mul   ya
0cc5: da 3a     movw  $3a,ya
0cc7: 4b 3b     lsr   $3b
0cc9: 6b 3a     ror   $3a
0ccb: f5 a0 01  mov   a,$01a0+x
0cce: fd        mov   y,a
0ccf: f5 20 05  mov   a,$0520+x
0cd2: 7a 3a     addw  ya,$3a
0cd4: 5a 3c     cmpw  ya,$3c
0cd6: b0 30     bcs   $0d08
0cd8: da 3c     movw  $3c,ya
0cda: d5 20 05  mov   $0520+x,a
0cdd: dd        mov   a,y
0cde: d5 a0 01  mov   $01a0+x,a
0ce1: 6f        ret

0ce2: 48 ff     eor   a,#$ff
0ce4: bc        inc   a
0ce5: bc        inc   a
0ce6: fd        mov   y,a
0ce7: f5 e0 02  mov   a,$02e0+x
0cea: cf        mul   ya
0ceb: da 3a     movw  $3a,ya
0ced: 4b 3b     lsr   $3b
0cef: 6b 3a     ror   $3a
0cf1: f5 a0 01  mov   a,$01a0+x
0cf4: fd        mov   y,a
0cf5: f5 20 05  mov   a,$0520+x
0cf8: 9a 3a     subw  ya,$3a
0cfa: 5a 3c     cmpw  ya,$3c
0cfc: 90 0a     bcc   $0d08
0cfe: da 3c     movw  $3c,ya
0d00: d5 20 05  mov   $0520+x,a
0d03: dd        mov   a,y
0d04: d5 a0 01  mov   $01a0+x,a
0d07: 6f        ret

0d08: f5 20 01  mov   a,$0120+x
0d0b: fd        mov   y,a
0d0c: f5 00 01  mov   a,$0100+x
0d0f: da 3c     movw  $3c,ya
0d11: e8 00     mov   a,#$00
0d13: d5 a0 01  mov   $01a0+x,a
0d16: 6f        ret

0d17: f8 df     mov   x,$df
0d19: e4 3d     mov   a,$3d
0d1b: d4 50     mov   $50+x,a
0d1d: 8d 00     mov   y,#$00
0d1f: cd 0c     mov   x,#$0c
0d21: 9e        div   ya,x
0d22: 48 ff     eor   a,#$ff
0d24: 9c        dec   a
0d25: 28 07     and   a,#$07
0d27: 2d        push  a
0d28: dd        mov   a,y
0d29: 1c        asl   a
0d2a: fd        mov   y,a
0d2b: f6 b5 10  mov   a,$10b5+y
0d2e: c4 3b     mov   $3b,a
0d30: f6 b4 10  mov   a,$10b4+y
0d33: c4 3a     mov   $3a,a
0d35: f6 b7 10  mov   a,$10b7+y
0d38: c4 39     mov   $39,a
0d3a: f6 b6 10  mov   a,$10b6+y
0d3d: eb 39     mov   y,$39
0d3f: 9a 3a     subw  ya,$3a
0d41: da 42     movw  $42,ya
0d43: f8 df     mov   x,$df
0d45: fd        mov   y,a
0d46: f5 60 01  mov   a,$0160+x
0d49: cf        mul   ya
0d4a: cb 3e     mov   $3e,y
0d4c: e4 42     mov   a,$42
0d4e: eb 3c     mov   y,$3c
0d50: cf        mul   ya
0d51: 60        clrc
0d52: 84 3e     adc   a,$3e
0d54: c4 3e     mov   $3e,a
0d56: dd        mov   a,y
0d57: 88 00     adc   a,#$00
0d59: c4 3f     mov   $3f,a
0d5b: eb 43     mov   y,$43
0d5d: d0 04     bne   $0d63
0d5f: cb 40     mov   $40,y
0d61: 2f 17     bra   $0d7a
0d63: f5 60 01  mov   a,$0160+x
0d66: cf        mul   ya
0d67: 7a 3e     addw  ya,$3e
0d69: da 3e     movw  $3e,ya
0d6b: e4 3c     mov   a,$3c
0d6d: eb 43     mov   y,$43
0d6f: cf        mul   ya
0d70: 60        clrc
0d71: 84 3f     adc   a,$3f
0d73: c4 3f     mov   $3f,a
0d75: dd        mov   a,y
0d76: 88 00     adc   a,#$00
0d78: c4 40     mov   $40,a
0d7a: f3 3e 02  bbc7  $3e,$0d7f
0d7d: 3a 3f     incw  $3f
0d7f: ba 3a     movw  ya,$3a
0d81: 7a 3f     addw  ya,$3f
0d83: cb 3b     mov   $3b,y
0d85: ce        pop   x
0d86: c8 00     cmp   x,#$00
0d88: f0 06     beq   $0d90
0d8a: 4b 3b     lsr   $3b
0d8c: 7c        ror   a
0d8d: 1d        dec   x
0d8e: d0 fa     bne   $0d8a
0d90: c4 3a     mov   $3a,a
0d92: f8 df     mov   x,$df
0d94: f5 00 02  mov   a,$0200+x
0d97: 1c        asl   a
0d98: 60        clrc
0d99: 88 b0     adc   a,#$b0
0d9b: c4 3c     mov   $3c,a
0d9d: e8 11     mov   a,#$11
0d9f: 88 00     adc   a,#$00
0da1: c4 3d     mov   $3d,a
0da3: 8d 00     mov   y,#$00
0da5: f7 3c     mov   a,($3c)+y
0da7: c4 3e     mov   $3e,a
0da9: fc        inc   y
0daa: f7 3c     mov   a,($3c)+y
0dac: c4 3d     mov   $3d,a
0dae: eb 3b     mov   y,$3b
0db0: cf        mul   ya
0db1: da 40     movw  $40,ya
0db3: e4 3d     mov   a,$3d
0db5: eb 3a     mov   y,$3a
0db7: cf        mul   ya
0db8: 6d        push  y
0db9: e4 3e     mov   a,$3e
0dbb: eb 3a     mov   y,$3a
0dbd: cf        mul   ya
0dbe: 7a 40     addw  ya,$40
0dc0: da 40     movw  $40,ya
0dc2: e4 3e     mov   a,$3e
0dc4: eb 3b     mov   y,$3b
0dc6: cf        mul   ya
0dc7: fd        mov   y,a
0dc8: ae        pop   a
0dc9: 7a 40     addw  ya,$40
0dcb: da 40     movw  $40,ya
0dcd: 6f        ret

0dce: f8 de     mov   x,$de
0dd0: f4 11     mov   a,$11+x
0dd2: fd        mov   y,a
0dd3: f8 df     mov   x,$df
0dd5: f5 20 02  mov   a,$0220+x
0dd8: cf        mul   ya
0dd9: e4 d4     mov   a,$d4
0ddb: f0 1a     beq   $0df7
0ddd: f5 40 02  mov   a,$0240+x
0de0: 28 0f     and   a,#$0f
0de2: c4 42     mov   $42,a
0de4: f5 40 02  mov   a,$0240+x
0de7: 9f        xcn   a
0de8: 28 0f     and   a,#$0f
0dea: 60        clrc
0deb: 84 42     adc   a,$42
0ded: 1c        asl   a
0dee: 1c        asl   a
0def: 1c        asl   a
0df0: cf        mul   ya
0df1: cb 3d     mov   $3d,y
0df3: cb 3c     mov   $3c,y
0df5: 2f 15     bra   $0e0c
0df7: cb 3c     mov   $3c,y
0df9: f5 40 02  mov   a,$0240+x
0dfc: 28 f0     and   a,#$f0
0dfe: cf        mul   ya
0dff: cb 3d     mov   $3d,y
0e01: f5 40 02  mov   a,$0240+x
0e04: 28 0f     and   a,#$0f
0e06: 9f        xcn   a
0e07: eb 3c     mov   y,$3c
0e09: cf        mul   ya
0e0a: cb 3c     mov   $3c,y
0e0c: eb d2     mov   y,$d2
0e0e: e4 3d     mov   a,$3d
0e10: 5c        lsr   a
0e11: f8 de     mov   x,$de
0e13: 80        setc
0e14: b5 49 05  sbc   a,$0549+x
0e17: b0 02     bcs   $0e1b
0e19: e8 00     mov   a,#$00
0e1b: 3f 1c 0a  call  $0a1c
0e1e: c4 47     mov   $47,a
0e20: fc        inc   y
0e21: e4 3c     mov   a,$3c
0e23: 5c        lsr   a
0e24: 80        setc
0e25: b5 49 05  sbc   a,$0549+x
0e28: b0 02     bcs   $0e2c
0e2a: e8 00     mov   a,#$00
0e2c: 3f 1c 0a  call  $0a1c
0e2f: 6f        ret

0e30: e4 df     mov   a,$df
0e32: 28 07     and   a,#$07
0e34: 9f        xcn   a
0e35: c4 d2     mov   $d2,a
0e37: 6f        ret

0e38: e4 46     mov   a,$46
0e3a: 30 01     bmi   $0e3d
0e3c: 6f        ret

0e3d: 3f ce 0d  call  $0dce
0e40: 04 47     or    a,$47
0e42: f0 01     beq   $0e45
0e44: 6f        ret

0e45: e4 df     mov   a,$df
0e47: 28 07     and   a,#$07
0e49: fd        mov   y,a
0e4a: f6 a4 10  mov   a,$10a4+y
0e4d: 35 48 05  and   a,$0548+x
0e50: d5 48 05  mov   $0548+x,a
0e53: f0 01     beq   $0e56
0e55: 6f        ret

0e56: ee        pop   y
0e57: ee        pop   y
0e58: 5f 2f 10  jmp   $102f

0e5b: e4 d2     mov   a,$d2
0e5d: 08 02     or    a,#$02
0e5f: fd        mov   y,a
0e60: e4 40     mov   a,$40
0e62: 3f 1c 0a  call  $0a1c
0e65: fc        inc   y
0e66: e4 41     mov   a,$41
0e68: 3f 1c 0a  call  $0a1c
0e6b: fc        inc   y
0e6c: f8 df     mov   x,$df
0e6e: f5 00 02  mov   a,$0200+x
0e71: 3f 1c 0a  call  $0a1c
0e74: 6f        ret

0e75: e5 00 c0  mov   a,$c000
0e78: c4 42     mov   $42,a
0e7a: e5 01 c0  mov   a,$c001
0e7d: c4 43     mov   $43,a
0e7f: f5 40 03  mov   a,$0340+x
0e82: 1c        asl   a
0e83: fd        mov   y,a
0e84: f7 42     mov   a,($42)+y
0e86: c4 3a     mov   $3a,a
0e88: fc        inc   y
0e89: f7 42     mov   a,($42)+y
0e8b: c4 3b     mov   $3b,a
0e8d: 6f        ret

0e8e: c4 39     mov   $39,a
0e90: e4 d2     mov   a,$d2
0e92: 08 05     or    a,#$05
0e94: fd        mov   y,a
0e95: e4 39     mov   a,$39
0e97: 3f 1c 0a  call  $0a1c
0e9a: 3a 3a     incw  $3a
0e9c: e7 3a     mov   a,($3a+x)
0e9e: fc        inc   y
0e9f: 3f 1c 0a  call  $0a1c
0ea2: f8 df     mov   x,$df
0ea4: e8 00     mov   a,#$00
0ea6: d4 90     mov   $90+x,a
0ea8: d5 00 05  mov   $0500+x,a
0eab: 6f        ret

0eac: 8d 00     mov   y,#$00
0eae: fd        mov   y,a
0eaf: cf        mul   ya
0eb0: f8 df     mov   x,$df
0eb2: d5 00 05  mov   $0500+x,a
0eb5: dd        mov   a,y
0eb6: 8d 01     mov   y,#$01
0eb8: db 90     mov   $90+x,y
0eba: 77 3a     cmp   a,($3a)+y
0ebc: 90 04     bcc   $0ec2
0ebe: f7 3a     mov   a,($3a)+y
0ec0: bb 90     inc   $90+x
0ec2: c4 39     mov   $39,a
0ec4: e4 d2     mov   a,$d2
0ec6: 08 05     or    a,#$05
0ec8: fd        mov   y,a
0ec9: e4 39     mov   a,$39
0ecb: 3f 1c 0a  call  $0a1c
0ece: fc        inc   y
0ecf: fc        inc   y
0ed0: 3f 1c 0a  call  $0a1c
0ed3: 6f        ret

0ed4: f5 00 05  mov   a,$0500+x
0ed7: c4 3c     mov   $3c,a
0ed9: e4 d2     mov   a,$d2
0edb: 08 08     or    a,#$08
0edd: 3f 23 0a  call  $0a23
0ee0: c4 3d     mov   $3d,a
0ee2: fb 90     mov   y,$90+x
0ee4: dc        dec   y
0ee5: f7 3a     mov   a,($3a)+y
0ee7: 68 f0     cmp   a,#$f0
0ee9: b0 4a     bcs   $0f35
0eeb: fd        mov   y,a
0eec: cf        mul   ya
0eed: da 3e     movw  $3e,ya
0eef: fb 90     mov   y,$90+x
0ef1: f7 3a     mov   a,($3a)+y
0ef3: c4 39     mov   $39,a
0ef5: ba 3c     movw  ya,$3c
0ef7: 7e 39     cmp   y,$39
0ef9: f0 23     beq   $0f1e
0efb: b0 0a     bcs   $0f07
0efd: 7a 3e     addw  ya,$3e
0eff: 30 12     bmi   $0f13
0f01: 7e 39     cmp   y,$39
0f03: b0 0e     bcs   $0f13
0f05: 2f 17     bra   $0f1e
0f07: 9a 3e     subw  ya,$3e
0f09: 30 08     bmi   $0f13
0f0b: 7e 39     cmp   y,$39
0f0d: f0 04     beq   $0f13
0f0f: 90 02     bcc   $0f13
0f11: 2f 0b     bra   $0f1e
0f13: e8 00     mov   a,#$00
0f15: d5 00 05  mov   $0500+x,a
0f18: bb 90     inc   $90+x
0f1a: bb 90     inc   $90+x
0f1c: 2f 05     bra   $0f23
0f1e: d5 00 05  mov   $0500+x,a
0f21: cb 39     mov   $39,y
0f23: e4 d2     mov   a,$d2
0f25: 08 07     or    a,#$07
0f27: fd        mov   y,a
0f28: e4 39     mov   a,$39
0f2a: 3f 1c 0a  call  $0a1c
0f2d: dc        dec   y
0f2e: dc        dec   y
0f2f: e8 7f     mov   a,#$7f
0f31: 3f 1c 0a  call  $0a1c
0f34: 6f        ret

0f35: 28 0f     and   a,#$0f
0f37: f0 0d     beq   $0f46
0f39: 68 04     cmp   a,#$04
0f3b: f0 0a     beq   $0f47
0f3d: f5 60 02  mov   a,$0260+x
0f40: f0 04     beq   $0f46
0f42: 74 b0     cmp   a,$b0+x
0f44: 90 0a     bcc   $0f50
0f46: 6f        ret

0f47: fc        inc   y
0f48: f7 3a     mov   a,($3a)+y
0f4a: fd        mov   y,a
0f4b: bc        inc   a
0f4c: d4 90     mov   $90+x,a
0f4e: 2f 95     bra   $0ee5
0f50: fc        inc   y
0f51: fc        inc   y
0f52: f7 3a     mov   a,($3a)+y
0f54: c4 39     mov   $39,a
0f56: db 90     mov   $90+x,y
0f58: f7 3a     mov   a,($3a)+y
0f5a: fd        mov   y,a
0f5b: cf        mul   ya
0f5c: da 3e     movw  $3e,ya
0f5e: ba 3c     movw  ya,$3c
0f60: 5f 07 0f  jmp   $0f07

0f63: e4 d2     mov   a,$d2
0f65: 08 08     or    a,#$08
0f67: 3f 23 0a  call  $0a23
0f6a: d0 01     bne   $0f6d
0f6c: 6f        ret

0f6d: f8 df     mov   x,$df
0f6f: c4 39     mov   $39,a
0f71: f4 90     mov   a,$90+x
0f73: f0 17     beq   $0f8c
0f75: 3f 75 0e  call  $0e75
0f78: f4 90     mov   a,$90+x
0f7a: fd        mov   y,a
0f7b: dc        dec   y
0f7c: fc        inc   y
0f7d: f7 3a     mov   a,($3a)+y
0f7f: 68 f2     cmp   a,#$f2
0f81: d0 f9     bne   $0f7c
0f83: db 90     mov   $90+x,y
0f85: fc        inc   y
0f86: e8 00     mov   a,#$00
0f88: d4 90     mov   $90+x,a
0f8a: 2f 05     bra   $0f91
0f8c: 3f 75 0e  call  $0e75
0f8f: 8d 02     mov   y,#$02
0f91: f7 3a     mov   a,($3a)+y
0f93: 08 a0     or    a,#$a0
0f95: 5d        mov   x,a
0f96: e4 d2     mov   a,$d2
0f98: 08 07     or    a,#$07
0f9a: fd        mov   y,a
0f9b: 7d        mov   a,x
0f9c: 3f 1c 0a  call  $0a1c
0f9f: dc        dec   y
0fa0: dc        dec   y
0fa1: e8 00     mov   a,#$00
0fa3: 3f 1c 0a  call  $0a1c
0fa6: 6f        ret

0fa7: da 3a     movw  $3a,ya
0fa9: eb df     mov   y,$df
0fab: 3f 10 0a  call  $0a10
0fae: c4 38     mov   $38,a
0fb0: 0b 38     asl   $38
0fb2: 90 05     bcc   $0fb9
0fb4: 3f 13 0a  call  $0a13
0fb7: d7 3a     mov   ($3a)+y,a
0fb9: fc        inc   y
0fba: e4 38     mov   a,$38
0fbc: d0 f2     bne   $0fb0
0fbe: 6f        ret

0fbf: f4 09     mov   a,$09+x
0fc1: c4 dd     mov   $dd,a
0fc3: f8 df     mov   x,$df
0fc5: 0b dd     asl   $dd
0fc7: 90 2d     bcc   $0ff6
0fc9: e8 00     mov   a,#$00
0fcb: d5 e0 04  mov   $04e0+x,a
0fce: d5 c0 03  mov   $03c0+x,a
0fd1: d5 a0 04  mov   $04a0+x,a
0fd4: d5 e0 03  mov   $03e0+x,a
0fd7: d5 00 04  mov   $0400+x,a
0fda: d5 20 04  mov   $0420+x,a
0fdd: d5 40 04  mov   $0440+x,a
0fe0: d5 a0 01  mov   $01a0+x,a
0fe3: d4 70     mov   $70+x,a
0fe5: d4 90     mov   $90+x,a
0fe7: e8 88     mov   a,#$88
0fe9: d5 a0 03  mov   $03a0+x,a
0fec: d5 80 03  mov   $0380+x,a
0fef: e8 54     mov   a,#$54
0ff1: d5 c0 04  mov   $04c0+x,a
0ff4: d4 50     mov   $50+x,a
0ff6: 3d        inc   x
0ff7: e4 dd     mov   a,$dd
0ff9: d0 ca     bne   $0fc5
0ffb: 6f        ret

0ffc: f8 de     mov   x,$de
0ffe: f4 09     mov   a,$09+x
1000: 28 07     and   a,#$07
1002: fd        mov   y,a
1003: e8 7c     mov   a,#$7c
1005: 3f 23 0a  call  $0a23
1008: 48 ff     eor   a,#$ff
100a: 36 ac 10  and   a,$10ac+y
100d: d0 07     bne   $1016
100f: 7d        mov   a,x
1010: 5c        lsr   a
1011: 8f 50 f7  mov   $f7,#$50
1014: 2f 19     bra   $102f
1016: 8f 10 f7  mov   $f7,#$10
1019: 5f 84 07  jmp   $0784

101c: f8 de     mov   x,$de
101e: f4 19     mov   a,$19+x
1020: f0 0d     beq   $102f
1022: d4 01     mov   $01+x,a
1024: f4 18     mov   a,$18+x
1026: d4 00     mov   $00+x,a
1028: e8 00     mov   a,#$00
102a: d4 19     mov   $19+x,a
102c: 5f 84 07  jmp   $0784

102f: 3f 3d 10  call  $103d
1032: e8 00     mov   a,#$00
1034: d4 09     mov   $09+x,a
1036: d4 49     mov   $49+x,a
1038: d4 30     mov   $30+x,a
103a: 5f 40 07  jmp   $0740

103d: f8 de     mov   x,$de
103f: e4 da     mov   a,$da
1041: 48 ff     eor   a,#$ff
1043: 34 09     and   a,$09+x
1045: 8f 00 dd  mov   $dd,#$00
1048: 8d 08     mov   y,#$08
104a: 5c        lsr   a
104b: 2b dd     rol   $dd
104d: fe fb     dbnz  y,$104a
104f: 8d 5c     mov   y,#$5c
1051: e4 dd     mov   a,$dd
1053: 3f 1c 0a  call  $0a1c
1056: 6f        ret

1057: 5d        mov   x,a
1058: e8 0c     mov   a,#$0c
105a: 3f 23 0a  call  $0a23
105d: f0 28     beq   $1087
105f: c4 3b     mov   $3b,a
1061: 7d        mov   a,x
1062: 10 0e     bpl   $1072
1064: 28 7f     and   a,#$7f
1066: bc        inc   a
1067: c4 3c     mov   $3c,a
1069: e4 3b     mov   a,$3b
106b: 80        setc
106c: a4 3c     sbc   a,$3c
106e: b0 0d     bcs   $107d
1070: 2f 15     bra   $1087
1072: 60        clrc
1073: 84 d3     adc   a,$d3
1075: c4 d3     mov   $d3,a
1077: b0 01     bcs   $107a
1079: 6f        ret

107a: e4 3b     mov   a,$3b
107c: 9c        dec   a
107d: 8d 0c     mov   y,#$0c
107f: 3f 1c 0a  call  $0a1c
1082: 8d 1c     mov   y,#$1c
1084: 5f 1c 0a  jmp   $0a1c

1087: 8f 00 d1  mov   $d1,#$00
108a: e8 ff     mov   a,#$ff
108c: 8d 5c     mov   y,#$5c
108e: 3f 1c 0a  call  $0a1c
1091: e8 00     mov   a,#$00
1093: c4 49     mov   $49,a
1095: c4 4b     mov   $4b,a
1097: c4 4d     mov   $4d,a
1099: c4 4f     mov   $4f,a
109b: 6f        ret

109c: db $01,$02,$04,$08,$10,$20,$40,$80
10a4: db $7f,$bf,$df,$ef,$f7,$fb,$fd,$fe

10ac: db $00,$80,$40,$c0,$20,$a0,$60,$e0

10b4: dw $10b0
10b6: dw $11ae
10b8: dw $12bb
10ba: dw $13d8
10bc: dw $1506
10be: dw $1646
10c0: dw $179a
10c2: dw $1901
10c4: dw $1a7d
10c6: dw $1c11
10c8: dw $1dbc
10ca: dw $1f80
10cc: dw $2160
