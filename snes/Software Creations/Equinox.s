0400: 20        clrp
0401: cd ff     mov   x,#$ff
0403: bd        mov   sp,x
0404: 8f 30 f1  mov   $f1,#$30
0407: e8 fa     mov   a,#$fa
0409: c4 f4     mov   $f4,a
040b: 64 f4     cmp   a,$f4
040d: d0 fc     bne   $040b
040f: 64 f4     cmp   a,$f4
0411: d0 f8     bne   $040b
0413: 8f 55 f5  mov   $f5,#$55
0416: 8f 6c f2  mov   $f2,#$6c
0419: 8f f3 f3  mov   $f3,#$f3
041c: 8f 0c f2  mov   $f2,#$0c
041f: 8f 00 f3  mov   $f3,#$00
0422: 8f 1c f2  mov   $f2,#$1c
0425: 8f 00 f3  mov   $f3,#$00
0428: 3f 03 12  call  $1203
042b: 3f d2 08  call  $08d2
042e: 8f 1b eb  mov   $eb,#$1b
0431: 8f 09 ec  mov   $ec,#$09
0434: 8f 13 ed  mov   $ed,#$13
0437: 8f 3a ee  mov   $ee,#$3a
043a: 8f 80 e8  mov   $e8,#$80
043d: 8f 80 e9  mov   $e9,#$80
0440: 8f fb d1  mov   $d1,#$fb
0443: 3f db 04  call  $04db
0446: 8f 6c f2  mov   $f2,#$6c
0449: 8f 33 f3  mov   $f3,#$33
044c: cd 00     mov   x,#$00
044e: 3f 59 07  call  $0759
0451: 3f 36 06  call  $0636
0454: e4 f5     mov   a,$f5
0456: 64 f5     cmp   a,$f5
0458: d0 fa     bne   $0454
045a: 28 08     and   a,#$08
045c: f0 09     beq   $0467
045e: 3f 4e 05  call  $054e
0461: 3f 36 06  call  $0636
0464: 5f 54 04  jmp   $0454

0467: e4 f5     mov   a,$f5
0469: 64 f5     cmp   a,$f5
046b: d0 fa     bne   $0467
046d: 68 55     cmp   a,#$55
046f: f0 30     beq   $04a1
0471: 68 66     cmp   a,#$66
0473: f0 2c     beq   $04a1
0475: 3f 95 05  call  $0595
0478: e5 44 03  mov   a,$0344
047b: 60        clrc
047c: 84 ff     adc   a,$ff
047e: c5 44 03  mov   $0344,a
0481: 68 04     cmp   a,#$04
0483: 90 cf     bcc   $0454
0485: 80        setc
0486: a8 04     sbc   a,#$04
0488: c5 44 03  mov   $0344,a
048b: 8f 0c f7  mov   $f7,#$0c
048e: 3f 36 06  call  $0636
0491: 8f 08 f7  mov   $f7,#$08
0494: 8f 0f f7  mov   $f7,#$0f
0497: 5f 54 04  jmp   $0454

049a: 7d        mov   a,x
049b: 9c        dec   a
049c: cd 81     mov   x,#$81
049e: 5f 33 13  jmp   $1333

04a1: e4 ff     mov   a,$ff
04a3: e4 e1     mov   a,$e1
04a5: eb ff     mov   y,$ff
04a7: f0 fc     beq   $04a5
04a9: 80        setc
04aa: a8 08     sbc   a,#$08
04ac: 10 02     bpl   $04b0
04ae: e8 00     mov   a,#$00
04b0: 8f 0c f2  mov   $f2,#$0c
04b3: c4 f3     mov   $f3,a
04b5: 8f 1c f2  mov   $f2,#$1c
04b8: c4 f3     mov   $f3,a
04ba: 08 00     or    a,#$00
04bc: d0 e7     bne   $04a5
04be: e8 ff     mov   a,#$ff
04c0: 8f 5c f2  mov   $f2,#$5c
04c3: c4 f3     mov   $f3,a
04c5: e8 b0     mov   a,#$b0
04c7: c4 f1     mov   $f1,a
04c9: 8f 6c f2  mov   $f2,#$6c
04cc: 8f e0 f3  mov   $f3,#$e0
04cf: e4 f5     mov   a,$f5
04d1: 68 66     cmp   a,#$66
04d3: f0 03     beq   $04d8
04d5: 5f 3d 13  jmp   $133d

04d8: 5f c0 ff  jmp   $ffc0

04db: 8f 00 f1  mov   $f1,#$00
04de: 00        nop
04df: 00        nop
04e0: 8f 84 fc  mov   $fc,#$84
04e3: 8f 04 f1  mov   $f1,#$04
04e6: 6f        ret

04e7: 6f        ret

04e8: fd        mov   y,a
04e9: 68 4e     cmp   a,#$4e
04eb: b0 fa     bcs   $04e7
04ed: cd 0e     mov   x,#$0e
04ef: f6 1c 14  mov   a,$141c+y
04f2: 30 0e     bmi   $0502
04f4: dd        mov   a,y
04f5: 75 01 01  cmp   a,$0101+x
04f8: f0 06     beq   $0500
04fa: 1d        dec   x
04fb: 1d        dec   x
04fc: 10 f7     bpl   $04f5
04fe: 2f 02     bra   $0502
0500: 2f 2c     bra   $052e
0502: cd 0e     mov   x,#$0e
0504: f5 f1 02  mov   a,$02f1+x
0507: f0 25     beq   $052e
0509: 1d        dec   x
050a: 1d        dec   x
050b: 10 f7     bpl   $0504
050d: cd 0e     mov   x,#$0e
050f: e8 ff     mov   a,#$ff
0511: 75 c1 02  cmp   a,$02c1+x
0514: 90 05     bcc   $051b
0516: f5 c1 02  mov   a,$02c1+x
0519: d8 e5     mov   $e5,x
051b: 1d        dec   x
051c: 1d        dec   x
051d: 10 f2     bpl   $0511
051f: f8 e5     mov   x,$e5
0521: c4 e5     mov   $e5,a
0523: f6 1c 14  mov   a,$141c+y
0526: 28 7f     and   a,#$7f
0528: 64 e5     cmp   a,$e5
052a: b0 02     bcs   $052e
052c: 60        clrc
052d: 6f        ret

052e: dd        mov   a,y
052f: d5 01 01  mov   $0101+x,a
0532: f6 1c 14  mov   a,$141c+y
0535: 28 7f     and   a,#$7f
0537: d5 c1 02  mov   $02c1+x,a
053a: 3f 15 08  call  $0815
053d: f6 80 13  mov   a,$1380+y
0540: d4 30     mov   $30+x,a
0542: f6 ce 13  mov   a,$13ce+y
0545: d4 31     mov   $31+x,a
0547: e4 e9     mov   a,$e9
0549: d5 66 03  mov   $0366+x,a
054c: 80        setc
054d: 6f        ret

054e: cd 0e     mov   x,#$0e
0550: e8 ff     mov   a,#$ff
0552: 2d        push  a
0553: f5 f1 02  mov   a,$02f1+x
0556: fd        mov   y,a
0557: ae        pop   a
0558: fc        inc   y
0559: dc        dec   y
055a: f0 06     beq   $0562
055c: 74 80     cmp   a,$80+x
055e: 90 02     bcc   $0562
0560: f4 80     mov   a,$80+x
0562: 1d        dec   x
0563: 1d        dec   x
0564: 10 ec     bpl   $0552
0566: 68 04     cmp   a,#$04
0568: 90 22     bcc   $058c
056a: 80        setc
056b: a8 02     sbc   a,#$02
056d: 68 14     cmp   a,#$14
056f: 90 02     bcc   $0573
0571: e8 14     mov   a,#$14
0573: cd 0e     mov   x,#$0e
0575: c4 e5     mov   $e5,a
0577: f4 80     mov   a,$80+x
0579: 80        setc
057a: a4 e5     sbc   a,$e5
057c: d4 80     mov   $80+x,a
057e: 7d        mov   a,x
057f: c4 d9     mov   $d9,a
0581: 1c        asl   a
0582: 1c        asl   a
0583: 1c        asl   a
0584: 80        setc
0585: a4 d9     sbc   a,$d9
0587: fd        mov   y,a
0588: 1d        dec   x
0589: 1d        dec   x
058a: 10 eb     bpl   $0577
058c: 6f        ret

058d: e4 f4     mov   a,$f4
058f: c4 f4     mov   $f4,a
0591: bc        inc   a
0592: c4 d1     mov   $d1,a
0594: 6f        ret

0595: e4 f4     mov   a,$f4
0597: 64 f4     cmp   a,$f4
0599: d0 fa     bne   $0595
059b: 64 d1     cmp   a,$d1
059d: d0 28     bne   $05c7
059f: e4 f6     mov   a,$f6
05a1: 64 f6     cmp   a,$f6
05a3: d0 fa     bne   $059f
05a5: 68 0a     cmp   a,#$0a
05a7: b0 e4     bcs   $058d
05a9: 5d        mov   x,a
05aa: f0 1b     beq   $05c7
05ac: f5 d2 05  mov   a,$05d2+x
05af: 2d        push  a
05b0: f5 c8 05  mov   a,$05c8+x
05b3: 2d        push  a
05b4: e4 f7     mov   a,$f7
05b6: 64 f7     cmp   a,$f7
05b8: d0 fa     bne   $05b4
05ba: 2d        push  a
05bb: e4 f4     mov   a,$f4
05bd: 64 f4     cmp   a,$f4
05bf: d0 fa     bne   $05bb
05c1: c4 f4     mov   $f4,a
05c3: bc        inc   a
05c4: c4 d1     mov   $d1,a
05c6: ae        pop   a
05c7: 60        clrc
05c8: 6f        ret

; $05dd
; $05ef
; $05fa
; $0610
; $0618
; $061d
; $062a
; $062d
; $0630
; $0633
05c9: db $dd,$ef,$fa,$10,$18,$1d,$2a,$2d,$30,$33
05d3: db $05,$05,$05,$06,$06,$06,$06,$06,$06,$06

05dd: 5d        mov   x,a
05de: 1d        dec   x
05df: d8 e4     mov   $e4,x
05e1: 3f 59 07  call  $0759
05e4: 8f 00 e0  mov   $e0,#$00
05e7: 8f 7f e1  mov   $e1,#$7f
05ea: 3f db 04  call  $04db
05ed: 80        setc
05ee: 6f        ret

05ef: 3f e8 04  call  $04e8
05f2: 8f 00 e0  mov   $e0,#$00
05f5: 8f 7f e1  mov   $e1,#$7f
05f8: 60        clrc
05f9: 6f        ret

05fa: 8d 00     mov   y,#$00
05fc: bc        inc   a
05fd: 9c        dec   a
05fe: 10 01     bpl   $0601
0600: dc        dec   y
0601: cb e3     mov   $e3,y
0603: 1c        asl   a
0604: 2b e3     rol   $e3
0606: 1c        asl   a
0607: 2b e3     rol   $e3
0609: 1c        asl   a
060a: 2b e3     rol   $e3
060c: c4 e2     mov   $e2,a
060e: 60        clrc
060f: 6f        ret

0610: 3f 0b 07  call  $070b
0613: 8f 55 f5  mov   $f5,#$55
0616: 60        clrc
0617: 6f        ret

0618: 3f dd 05  call  $05dd
061b: 60        clrc
061c: 6f        ret

061d: 3f 26 10  call  $1026
0620: 48 ff     eor   a,#$ff
0622: 36 3c 03  and   a,$033c+y
0625: d6 3c 03  mov   $033c+y,a
0628: 60        clrc
0629: 6f        ret

062a: c4 e8     mov   $e8,a
062c: 6f        ret

062d: c4 e9     mov   $e9,a
062f: 6f        ret

0630: c4 ea     mov   $ea,a
0632: 6f        ret

0633: c4 d0     mov   $d0,a
0635: 6f        ret

0636: ab e6     inc   $e6
0638: ba e2     movw  ya,$e2
063a: f0 24     beq   $0660
063c: 30 12     bmi   $0650
063e: ba e0     movw  ya,$e0
0640: 7a e2     addw  ya,$e2
0642: 10 08     bpl   $064c
0644: 8f 00 e2  mov   $e2,#$00
0647: 8f 00 e3  mov   $e3,#$00
064a: 8d 7f     mov   y,#$7f
064c: da e0     movw  $e0,ya
064e: 2f 10     bra   $0660
0650: ba e0     movw  ya,$e0
0652: 7a e2     addw  ya,$e2
0654: 10 08     bpl   $065e
0656: 8f 00 e2  mov   $e2,#$00
0659: 8f 00 e3  mov   $e3,#$00
065c: 8d 00     mov   y,#$00
065e: da e0     movw  $e0,ya
0660: e4 f5     mov   a,$f5
0662: 64 f5     cmp   a,$f5
0664: d0 fa     bne   $0660
0666: 28 04     and   a,#$04
0668: f0 08     beq   $0672
066a: 8b df     dec   $df
066c: f0 01     beq   $066f
066e: 6f        ret

066f: 8f 20 df  mov   $df,#$20
0672: 8f 4c f2  mov   $f2,#$4c
0675: fa d4 f3  mov   ($f3),($d4)
0678: 8f 00 d4  mov   $d4,#$00
067b: 8f 3d f2  mov   $f2,#$3d
067e: fa d6 f3  mov   ($f3),($d6)
0681: cd 00     mov   x,#$00
0683: 3f 1e 09  call  $091e
0686: b0 2f     bcs   $06b7
0688: cd 02     mov   x,#$02
068a: 3f 1e 09  call  $091e
068d: b0 28     bcs   $06b7
068f: cd 04     mov   x,#$04
0691: 3f 1e 09  call  $091e
0694: b0 21     bcs   $06b7
0696: cd 06     mov   x,#$06
0698: 3f 1e 09  call  $091e
069b: b0 1a     bcs   $06b7
069d: cd 08     mov   x,#$08
069f: 3f 1e 09  call  $091e
06a2: b0 13     bcs   $06b7
06a4: cd 0a     mov   x,#$0a
06a6: 3f 1e 09  call  $091e
06a9: b0 0c     bcs   $06b7
06ab: cd 0c     mov   x,#$0c
06ad: 3f 1e 09  call  $091e
06b0: b0 05     bcs   $06b7
06b2: cd 0e     mov   x,#$0e
06b4: 3f 1e 09  call  $091e
06b7: 8f 5c f2  mov   $f2,#$5c
06ba: fa d5 f3  mov   ($f3),($d5)
06bd: 8f 00 d5  mov   $d5,#$00
06c0: e4 e1     mov   a,$e1
06c2: 8f 0c f2  mov   $f2,#$0c
06c5: c4 f3     mov   $f3,a
06c7: 8f 1c f2  mov   $f2,#$1c
06ca: c4 f3     mov   $f3,a
06cc: 8d 00     mov   y,#$00
06ce: cd 00     mov   x,#$00
06d0: 3f 98 11  call  $1198
06d3: 8d 02     mov   y,#$02
06d5: cd 10     mov   x,#$10
06d7: 3f 98 11  call  $1198
06da: 8d 04     mov   y,#$04
06dc: cd 20     mov   x,#$20
06de: 3f 98 11  call  $1198
06e1: 8d 06     mov   y,#$06
06e3: cd 30     mov   x,#$30
06e5: 3f 98 11  call  $1198
06e8: 8d 08     mov   y,#$08
06ea: cd 40     mov   x,#$40
06ec: 3f 98 11  call  $1198
06ef: 8d 0a     mov   y,#$0a
06f1: cd 50     mov   x,#$50
06f3: 3f 98 11  call  $1198
06f6: 8d 0c     mov   y,#$0c
06f8: cd 60     mov   x,#$60
06fa: 3f 98 11  call  $1198
06fd: 8d 0e     mov   y,#$0e
06ff: cd 70     mov   x,#$70
0701: 3f 98 11  call  $1198
0704: 8f 5c f2  mov   $f2,#$5c
0707: 8f 00 f3  mov   $f3,#$00
070a: 6f        ret

070b: 4d        push  x
070c: 9c        dec   a
070d: 10 10     bpl   $071f
070f: cd 00     mov   x,#$00
0711: f4 00     mov   a,$00+x
0713: c4 f6     mov   $f6,a
0715: d8 f5     mov   $f5,x
0717: 00        nop
0718: 00        nop
0719: 00        nop
071a: 3d        inc   x
071b: d0 f4     bne   $0711
071d: ce        pop   x
071e: 6f        ret

071f: 9c        dec   a
0720: 10 11     bpl   $0733
0722: cd 00     mov   x,#$00
0724: f5 00 01  mov   a,$0100+x
0727: c4 f6     mov   $f6,a
0729: d8 f5     mov   $f5,x
072b: 00        nop
072c: 00        nop
072d: 00        nop
072e: 3d        inc   x
072f: d0 f3     bne   $0724
0731: ce        pop   x
0732: 6f        ret

0733: 9c        dec   a
0734: 10 11     bpl   $0747
0736: cd 00     mov   x,#$00
0738: f5 00 02  mov   a,$0200+x
073b: c4 f6     mov   $f6,a
073d: d8 f5     mov   $f5,x
073f: 00        nop
0740: 00        nop
0741: 00        nop
0742: 3d        inc   x
0743: d0 f3     bne   $0738
0745: ce        pop   x
0746: 6f        ret

0747: cd 00     mov   x,#$00
0749: f5 00 03  mov   a,$0300+x
074c: c4 f6     mov   $f6,a
074e: d8 f5     mov   $f5,x
0750: 00        nop
0751: 00        nop
0752: 00        nop
0753: 3d        inc   x
0754: d0 f3     bne   $0749
0756: ce        pop   x
0757: 6f        ret

0758: 6f        ret

0759: 7d        mov   a,x
075a: 68 05     cmp   a,#$05
075c: b0 fa     bcs   $0758
075e: fd        mov   y,a
075f: cd 00     mov   x,#$00
0761: f6 eb 1d  mov   a,$1deb+y
0764: f0 0a     beq   $0770
0766: c4 31     mov   $31,a
0768: f6 e6 1d  mov   a,$1de6+y
076b: c4 30     mov   $30,a
076d: 3f 08 08  call  $0808
0770: 3d        inc   x
0771: 3d        inc   x
0772: f6 f5 1d  mov   a,$1df5+y
0775: f0 0a     beq   $0781
0777: d4 31     mov   $31+x,a
0779: f6 f0 1d  mov   a,$1df0+y
077c: d4 30     mov   $30+x,a
077e: 3f 08 08  call  $0808
0781: 3d        inc   x
0782: 3d        inc   x
0783: f6 ff 1d  mov   a,$1dff+y
0786: f0 0a     beq   $0792
0788: d4 31     mov   $31+x,a
078a: f6 fa 1d  mov   a,$1dfa+y
078d: d4 30     mov   $30+x,a
078f: 3f 08 08  call  $0808
0792: 3d        inc   x
0793: 3d        inc   x
0794: f6 09 1e  mov   a,$1e09+y
0797: f0 0a     beq   $07a3
0799: d4 31     mov   $31+x,a
079b: f6 04 1e  mov   a,$1e04+y
079e: d4 30     mov   $30+x,a
07a0: 3f 08 08  call  $0808
07a3: 3d        inc   x
07a4: 3d        inc   x
07a5: f6 13 1e  mov   a,$1e13+y
07a8: f0 0a     beq   $07b4
07aa: d4 31     mov   $31+x,a
07ac: f6 0e 1e  mov   a,$1e0e+y
07af: d4 30     mov   $30+x,a
07b1: 3f 08 08  call  $0808
07b4: 3d        inc   x
07b5: 3d        inc   x
07b6: f6 1d 1e  mov   a,$1e1d+y
07b9: f0 0a     beq   $07c5
07bb: d4 31     mov   $31+x,a
07bd: f6 18 1e  mov   a,$1e18+y
07c0: d4 30     mov   $30+x,a
07c2: 3f 08 08  call  $0808
07c5: 3d        inc   x
07c6: 3d        inc   x
07c7: f6 27 1e  mov   a,$1e27+y
07ca: f0 0a     beq   $07d6
07cc: d4 31     mov   $31+x,a
07ce: f6 22 1e  mov   a,$1e22+y
07d1: d4 30     mov   $30+x,a
07d3: 3f 08 08  call  $0808
07d6: 3d        inc   x
07d7: 3d        inc   x
07d8: f6 31 1e  mov   a,$1e31+y
07db: f0 0a     beq   $07e7
07dd: d4 31     mov   $31+x,a
07df: f6 2c 1e  mov   a,$1e2c+y
07e2: d4 30     mov   $30+x,a
07e4: 3f 08 08  call  $0808
07e7: 3d        inc   x
07e8: 3d        inc   x
07e9: dd        mov   a,y
07ea: 5d        mov   x,a
07eb: 1d        dec   x
07ec: f5 36 1e  mov   a,$1e36+x
07ef: c4 d9     mov   $d9,a
07f1: f5 3a 1e  mov   a,$1e3a+x
07f4: c4 da     mov   $da,a
07f6: f0 0f     beq   $0807
07f8: 8d fb     mov   y,#$fb
07fa: f7 d9     mov   a,($d9)+y
07fc: d6 45 1e  mov   $1e45+y,a
07ff: dc        dec   y
0800: d0 f8     bne   $07fa
0802: f7 d9     mov   a,($d9)+y
0804: d6 45 1e  mov   $1e45+y,a
0807: 6f        ret

0808: e8 ff     mov   a,#$ff
080a: d5 c1 02  mov   $02c1+x,a
080d: d5 01 01  mov   $0101+x,a
0810: e4 e8     mov   a,$e8
0812: d5 66 03  mov   $0366+x,a
0815: e8 00     mov   a,#$00
0817: d5 56 03  mov   $0356+x,a
081a: d5 55 03  mov   $0355+x,a
081d: d5 00 01  mov   $0100+x,a
0820: d4 00     mov   $00+x,a
0822: d4 01     mov   $01+x,a
0824: d4 10     mov   $10+x,a
0826: d4 11     mov   $11+x,a
0828: d4 20     mov   $20+x,a
082a: d4 21     mov   $21+x,a
082c: d4 51     mov   $51+x,a
082e: d4 60     mov   $60+x,a
0830: d4 70     mov   $70+x,a
0832: d4 71     mov   $71+x,a
0834: d4 81     mov   $81+x,a
0836: d4 90     mov   $90+x,a
0838: d4 91     mov   $91+x,a
083a: d4 a0     mov   $a0+x,a
083c: d4 a1     mov   $a1+x,a
083e: d4 b0     mov   $b0+x,a
0840: d4 b1     mov   $b1+x,a
0842: d4 c0     mov   $c0+x,a
0844: d4 c1     mov   $c1+x,a
0846: d5 00 02  mov   $0200+x,a
0849: d5 01 02  mov   $0201+x,a
084c: d5 10 02  mov   $0210+x,a
084f: d5 11 02  mov   $0211+x,a
0852: d5 20 02  mov   $0220+x,a
0855: d5 21 02  mov   $0221+x,a
0858: d5 30 02  mov   $0230+x,a
085b: d5 31 02  mov   $0231+x,a
085e: d5 40 02  mov   $0240+x,a
0861: d5 41 02  mov   $0241+x,a
0864: d5 50 02  mov   $0250+x,a
0867: d5 51 02  mov   $0251+x,a
086a: d5 60 02  mov   $0260+x,a
086d: d5 61 02  mov   $0261+x,a
0870: d5 70 02  mov   $0270+x,a
0873: d5 71 02  mov   $0271+x,a
0876: d5 80 02  mov   $0280+x,a
0879: d5 81 02  mov   $0281+x,a
087c: d5 90 02  mov   $0290+x,a
087f: d5 91 02  mov   $0291+x,a
0882: d5 a0 02  mov   $02a0+x,a
0885: d5 a1 02  mov   $02a1+x,a
0888: d5 b0 02  mov   $02b0+x,a
088b: d5 b1 02  mov   $02b1+x,a
088e: d5 c0 02  mov   $02c0+x,a
0891: d5 d0 02  mov   $02d0+x,a
0894: d5 d1 02  mov   $02d1+x,a
0897: d5 e0 02  mov   $02e0+x,a
089a: d5 e1 02  mov   $02e1+x,a
089d: d5 f0 02  mov   $02f0+x,a
08a0: d5 45 03  mov   $0345+x,a
08a3: d5 65 03  mov   $0365+x,a
08a6: e8 ff     mov   a,#$ff
08a8: d5 f1 02  mov   $02f1+x,a
08ab: 7d        mov   a,x
08ac: 1c        asl   a
08ad: 1c        asl   a
08ae: 1c        asl   a
08af: d4 50     mov   $50+x,a
08b1: e8 01     mov   a,#$01
08b3: d4 80     mov   $80+x,a
08b5: f5 4b 12  mov   a,$124b+x
08b8: 24 d7     and   a,$d7
08ba: c4 d7     mov   $d7,a
08bc: f5 4b 12  mov   a,$124b+x
08bf: 24 d6     and   a,$d6
08c1: c4 d6     mov   $d6,a
08c3: f5 4b 12  mov   a,$124b+x
08c6: 24 d8     and   a,$d8
08c8: c4 d8     mov   $d8,a
08ca: f5 4a 12  mov   a,$124a+x
08cd: 04 d5     or    a,$d5
08cf: c4 d5     mov   $d5,a
08d1: 6f        ret

08d2: e8 00     mov   a,#$00
08d4: 8d 00     mov   y,#$00
08d6: d6 00 00  mov   $0000+y,a
08d9: d6 00 01  mov   $0100+y,a
08dc: fc        inc   y
08dd: ad f0     cmp   y,#$f0
08df: d0 f5     bne   $08d6
08e1: bc        inc   a
08e2: 8d 14     mov   y,#$14
08e4: d6 80 00  mov   $0080+y,a
08e7: dc        dec   y
08e8: dc        dec   y
08e9: 10 f9     bpl   $08e4
08eb: 9c        dec   a
08ec: 8d 00     mov   y,#$00
08ee: d6 00 02  mov   $0200+y,a
08f1: d6 00 03  mov   $0300+y,a
08f4: dc        dec   y
08f5: d0 f7     bne   $08ee
08f7: 8f 00 db  mov   $db,#$00
08fa: 8f 03 dc  mov   $dc,#$03
08fd: 8f 04 d9  mov   $d9,#$04
0900: 8f 00 da  mov   $da,#$00
0903: 8d 00     mov   y,#$00
0905: e8 00     mov   a,#$00
0907: d7 db     mov   ($db)+y,a
0909: fc        inc   y
090a: d0 02     bne   $090e
090c: ab dc     inc   $dc
090e: 8b d9     dec   $d9
0910: f8 d9     mov   x,$d9
0912: 3d        inc   x
0913: d0 f0     bne   $0905
0915: 8b da     dec   $da
0917: f8 da     mov   x,$da
0919: 3d        inc   x
091a: d0 e9     bne   $0905
091c: 6f        ret

091d: 6f        ret

091e: f5 f1 02  mov   a,$02f1+x
0921: 30 03     bmi   $0926
0923: 5f 95 05  jmp   $0595

0926: e8 01     mov   a,#$01
0928: d5 65 03  mov   $0365+x,a
092b: f5 4a 12  mov   a,$124a+x
092e: c4 d2     mov   $d2,a
0930: f5 4b 12  mov   a,$124b+x
0933: c4 d3     mov   $d3,a
0935: 9b 80     dec   $80+x
0937: d0 1a     bne   $0953
0939: 3f 2f 0d  call  $0d2f
093c: 10 12     bpl   $0950
093e: 68 b8     cmp   a,#$b8
0940: b0 0b     bcs   $094d
0942: 1c        asl   a
0943: fd        mov   y,a
0944: f6 3b 0d  mov   a,$0d3b+y
0947: 2d        push  a
0948: f6 3a 0d  mov   a,$0d3a+y
094b: 2d        push  a
094c: 6f        ret

094d: 5f 31 11  jmp   $1131

0950: 3f 55 0c  call  $0c55
0953: 3f a3 09  call  $09a3
0956: 3f 2e 0a  call  $0a2e
0959: 3f 54 0a  call  $0a54
095c: 3f 98 0a  call  $0a98
095f: 3f e6 0a  call  $0ae6
0962: 3f 31 0b  call  $0b31
0965: 3f 79 0b  call  $0b79
0968: f5 60 02  mov   a,$0260+x
096b: 60        clrc
096c: 95 20 02  adc   a,$0220+x
096f: 0d        push  psw
0970: 60        clrc
0971: 95 c0 02  adc   a,$02c0+x
0974: d4 10     mov   $10+x,a
0976: f5 61 02  mov   a,$0261+x
0979: 95 21 02  adc   a,$0221+x
097c: 8e        pop   psw
097d: 88 00     adc   a,#$00
097f: d4 11     mov   $11+x,a
0981: 5f 95 05  jmp   $0595

0984: f5 60 02  mov   a,$0260+x
0987: 80        setc
0988: b5 d1 02  sbc   a,$02d1+x
098b: c4 d9     mov   $d9,a
098d: f5 61 02  mov   a,$0261+x
0990: b5 e0 02  sbc   a,$02e0+x
0993: 04 d9     or    a,$d9
0995: 6f        ret

0996: f5 d1 02  mov   a,$02d1+x
0999: d5 60 02  mov   $0260+x,a
099c: f5 e0 02  mov   a,$02e0+x
099f: d5 61 02  mov   $0261+x,a
09a2: 6f        ret

09a3: f5 00 01  mov   a,$0100+x
09a6: f0 0a     beq   $09b2
09a8: e4 ea     mov   a,$ea
09aa: d5 45 03  mov   $0345+x,a
09ad: e4 d0     mov   a,$d0
09af: d5 46 03  mov   $0346+x,a
09b2: f5 45 03  mov   a,$0345+x
09b5: f0 6b     beq   $0a22
09b7: fd        mov   y,a
09b8: f5 46 03  mov   a,$0346+x
09bb: cf        mul   ya
09bc: dd        mov   a,y
09bd: c4 e5     mov   $e5,a
09bf: f5 45 03  mov   a,$0345+x
09c2: 80        setc
09c3: a4 e5     sbc   a,$e5
09c5: 1c        asl   a
09c6: 9c        dec   a
09c7: d4 01     mov   $01+x,a
09c9: e4 e5     mov   a,$e5
09cb: 1c        asl   a
09cc: d4 00     mov   $00+x,a
09ce: f5 46 03  mov   a,$0346+x
09d1: 10 07     bpl   $09da
09d3: f5 45 03  mov   a,$0345+x
09d6: d4 00     mov   $00+x,a
09d8: 2f 05     bra   $09df
09da: f5 45 03  mov   a,$0345+x
09dd: d4 01     mov   $01+x,a
09df: e4 e6     mov   a,$e6
09e1: 28 0f     and   a,#$0f
09e3: d0 17     bne   $09fc
09e5: f5 56 03  mov   a,$0356+x
09e8: f0 12     beq   $09fc
09ea: fd        mov   y,a
09eb: f5 45 03  mov   a,$0345+x
09ee: cf        mul   ya
09ef: dd        mov   a,y
09f0: d5 45 03  mov   $0345+x,a
09f3: d0 07     bne   $09fc
09f5: d4 00     mov   $00+x,a
09f7: d4 01     mov   $01+x,a
09f9: d5 56 03  mov   $0356+x,a
09fc: f5 55 03  mov   a,$0355+x
09ff: 30 0a     bmi   $0a0b
0a01: 60        clrc
0a02: 95 46 03  adc   a,$0346+x
0a05: 90 18     bcc   $0a1f
0a07: 8d ff     mov   y,#$ff
0a09: 2f 08     bra   $0a13
0a0b: 60        clrc
0a0c: 95 46 03  adc   a,$0346+x
0a0f: b0 0e     bcs   $0a1f
0a11: 8d 00     mov   y,#$00
0a13: f5 55 03  mov   a,$0355+x
0a16: 48 ff     eor   a,#$ff
0a18: 60        clrc
0a19: 88 01     adc   a,#$01
0a1b: d5 55 03  mov   $0355+x,a
0a1e: dd        mov   a,y
0a1f: d5 46 03  mov   $0346+x,a
0a22: 6f        ret

0a23: 80        setc
0a24: a8 40     sbc   a,#$40
0a26: 30 02     bmi   $0a2a
0a28: 1c        asl   a
0a29: 6f        ret

0a2a: 1c        asl   a
0a2b: 08 80     or    a,#$80
0a2d: 6f        ret

0a2e: f5 91 02  mov   a,$0291+x
0a31: f0 20     beq   $0a53
0a33: 9b 91     dec   $91+x
0a35: d0 1c     bne   $0a53
0a37: f5 b0 02  mov   a,$02b0+x
0a3a: 75 90 02  cmp   a,$0290+x
0a3d: f0 08     beq   $0a47
0a3f: d5 90 02  mov   $0290+x,a
0a42: f5 a1 02  mov   a,$02a1+x
0a45: 2f 0a     bra   $0a51
0a47: 60        clrc
0a48: 95 91 02  adc   a,$0291+x
0a4b: d5 90 02  mov   $0290+x,a
0a4e: f5 a0 02  mov   a,$02a0+x
0a51: d4 91     mov   $91+x,a
0a53: 6f        ret

0a54: f4 81     mov   a,$81+x
0a56: d0 07     bne   $0a5f
0a58: f5 90 02  mov   a,$0290+x
0a5b: d4 90     mov   $90+x,a
0a5d: 2f 33     bra   $0a92
0a5f: 9b 81     dec   $81+x
0a61: d0 34     bne   $0a97
0a63: f5 80 02  mov   a,$0280+x
0a66: d4 81     mov   $81+x,a
0a68: f4 90     mov   a,$90+x
0a6a: 75 90 02  cmp   a,$0290+x
0a6d: f0 28     beq   $0a97
0a6f: 90 0f     bcc   $0a80
0a71: f4 90     mov   a,$90+x
0a73: 80        setc
0a74: b5 81 02  sbc   a,$0281+x
0a77: d4 90     mov   $90+x,a
0a79: 75 90 02  cmp   a,$0290+x
0a7c: b0 14     bcs   $0a92
0a7e: 2f 0d     bra   $0a8d
0a80: f5 81 02  mov   a,$0281+x
0a83: 60        clrc
0a84: 94 90     adc   a,$90+x
0a86: d4 90     mov   $90+x,a
0a88: 75 90 02  cmp   a,$0290+x
0a8b: 90 05     bcc   $0a92
0a8d: f5 90 02  mov   a,$0290+x
0a90: d4 90     mov   $90+x,a
0a92: fb 90     mov   y,$90+x
0a94: 3f ae 0c  call  $0cae
0a97: 6f        ret

0a98: f4 70     mov   a,$70+x
0a9a: f0 04     beq   $0aa0
0a9c: 9b 70     dec   $70+x
0a9e: 2f 45     bra   $0ae5
0aa0: f5 10 02  mov   a,$0210+x
0aa3: f0 40     beq   $0ae5
0aa5: 30 15     bmi   $0abc
0aa7: f5 00 02  mov   a,$0200+x
0aaa: 60        clrc
0aab: 95 20 02  adc   a,$0220+x
0aae: d5 20 02  mov   $0220+x,a
0ab1: e8 00     mov   a,#$00
0ab3: 95 21 02  adc   a,$0221+x
0ab6: d5 21 02  mov   $0221+x,a
0ab9: 5f d1 0a  jmp   $0ad1

0abc: f5 00 02  mov   a,$0200+x
0abf: 48 ff     eor   a,#$ff
0ac1: bc        inc   a
0ac2: 60        clrc
0ac3: 95 20 02  adc   a,$0220+x
0ac6: d5 20 02  mov   $0220+x,a
0ac9: e8 ff     mov   a,#$ff
0acb: 95 21 02  adc   a,$0221+x
0ace: d5 21 02  mov   $0221+x,a
0ad1: 9b 71     dec   $71+x
0ad3: d0 10     bne   $0ae5
0ad5: f5 01 02  mov   a,$0201+x
0ad8: d4 71     mov   $71+x,a
0ada: f0 09     beq   $0ae5
0adc: f5 10 02  mov   a,$0210+x
0adf: 48 ff     eor   a,#$ff
0ae1: bc        inc   a
0ae2: d5 10 02  mov   $0210+x,a
0ae5: 6f        ret

0ae6: f5 51 02  mov   a,$0251+x
0ae9: d0 05     bne   $0af0
0aeb: 3f 96 09  call  $0996
0aee: 2f 40     bra   $0b30
0af0: 3f 84 09  call  $0984
0af3: f0 3b     beq   $0b30
0af5: 90 1f     bcc   $0b16
0af7: f5 51 02  mov   a,$0251+x
0afa: 48 ff     eor   a,#$ff
0afc: bc        inc   a
0afd: 60        clrc
0afe: 95 60 02  adc   a,$0260+x
0b01: d5 60 02  mov   $0260+x,a
0b04: f5 61 02  mov   a,$0261+x
0b07: 88 ff     adc   a,#$ff
0b09: d5 61 02  mov   $0261+x,a
0b0c: 3f 84 09  call  $0984
0b0f: b0 1f     bcs   $0b30
0b11: 3f 96 09  call  $0996
0b14: 2f 1a     bra   $0b30
0b16: f5 60 02  mov   a,$0260+x
0b19: 60        clrc
0b1a: 95 51 02  adc   a,$0251+x
0b1d: d5 60 02  mov   $0260+x,a
0b20: f5 61 02  mov   a,$0261+x
0b23: 88 00     adc   a,#$00
0b25: d5 61 02  mov   $0261+x,a
0b28: 3f 84 09  call  $0984
0b2b: 90 03     bcc   $0b30
0b2d: 3f 96 09  call  $0996
0b30: 6f        ret

0b31: f5 d0 02  mov   a,$02d0+x
0b34: f0 42     beq   $0b78
0b36: f4 51     mov   a,$51+x
0b38: f0 1e     beq   $0b58
0b3a: 9b 51     dec   $51+x
0b3c: d0 1a     bne   $0b58
0b3e: 3f 5f 11  call  $115f
0b41: 10 0e     bpl   $0b51
0b43: 68 80     cmp   a,#$80
0b45: d0 06     bne   $0b4d
0b47: f4 61     mov   a,$61+x
0b49: d4 60     mov   $60+x,a
0b4b: 2f f1     bra   $0b3e
0b4d: 9b 60     dec   $60+x
0b4f: 2f 02     bra   $0b53
0b51: d4 21     mov   $21+x,a
0b53: f5 41 02  mov   a,$0241+x
0b56: d4 51     mov   $51+x,a
0b58: f4 c1     mov   a,$c1+x
0b5a: f0 1c     beq   $0b78
0b5c: 74 80     cmp   a,$80+x
0b5e: d0 18     bne   $0b78
0b60: f4 61     mov   a,$61+x
0b62: d0 14     bne   $0b78
0b64: f4 40     mov   a,$40+x
0b66: c4 d9     mov   $d9,a
0b68: f4 41     mov   a,$41+x
0b6a: c4 da     mov   $da,a
0b6c: 8d ff     mov   y,#$ff
0b6e: fc        inc   y
0b6f: f7 d9     mov   a,($d9)+y
0b71: 10 fb     bpl   $0b6e
0b73: fc        inc   y
0b74: db 60     mov   $60+x,y
0b76: db 61     mov   $61+x,y
0b78: 6f        ret

0b79: f5 d0 02  mov   a,$02d0+x
0b7c: d0 32     bne   $0bb0
0b7e: f4 80     mov   a,$80+x
0b80: f0 10     beq   $0b92
0b82: 74 c1     cmp   a,$c1+x
0b84: d0 0c     bne   $0b92
0b86: e8 03     mov   a,#$03
0b88: d4 a1     mov   $a1+x,a
0b8a: f4 21     mov   a,$21+x
0b8c: d4 b1     mov   $b1+x,a
0b8e: e8 00     mov   a,#$00
0b90: d4 b0     mov   $b0+x,a
0b92: 9b a0     dec   $a0+x
0b94: d0 1a     bne   $0bb0
0b96: fb a1     mov   y,$a1+x
0b98: f6 b6 0b  mov   a,$0bb6+y
0b9b: 2d        push  a
0b9c: f6 b1 0b  mov   a,$0bb1+y
0b9f: 2d        push  a
0ba0: 7d        mov   a,x
0ba1: c4 e5     mov   $e5,a
0ba3: 1c        asl   a
0ba4: 1c        asl   a
0ba5: 1c        asl   a
0ba6: 80        setc
0ba7: a4 e5     sbc   a,$e5
0ba9: 5c        lsr   a
0baa: fd        mov   y,a
0bab: f6 04 03  mov   a,$0304+y
0bae: d4 a0     mov   $a0+x,a
0bb0: 6f        ret

0bb1: db $bb,$ed,$28,$29,$54
0bb6: db $0b,$0b,$0c,$0c,$0c

0bbb: f6 07 03  mov   a,$0307+y
0bbe: 80        setc
0bbf: b6 05 03  sbc   a,$0305+y
0bc2: 6d        push  y
0bc3: 4d        push  x
0bc4: 2d        push  a
0bc5: f6 06 03  mov   a,$0306+y
0bc8: f0 1f     beq   $0be9
0bca: fb b0     mov   y,$b0+x
0bcc: 5d        mov   x,a
0bcd: 1d        dec   x
0bce: ae        pop   a
0bcf: cf        mul   ya
0bd0: 9e        div   ya,x
0bd1: ce        pop   x
0bd2: ee        pop   y
0bd3: 60        clrc
0bd4: 96 05 03  adc   a,$0305+y
0bd7: d4 21     mov   $21+x,a
0bd9: bb b0     inc   $b0+x
0bdb: f6 06 03  mov   a,$0306+y
0bde: 74 b0     cmp   a,$b0+x
0be0: d0 06     bne   $0be8
0be2: bb a1     inc   $a1+x
0be4: e8 00     mov   a,#$00
0be6: d4 b0     mov   $b0+x,a
0be8: 6f        ret

0be9: ae        pop   a
0bea: ce        pop   x
0beb: ee        pop   y
0bec: 6f        ret

0bed: f6 07 03  mov   a,$0307+y
0bf0: 80        setc
0bf1: b6 09 03  sbc   a,$0309+y
0bf4: 6d        push  y
0bf5: 4d        push  x
0bf6: 2d        push  a
0bf7: f6 08 03  mov   a,$0308+y
0bfa: 2d        push  a
0bfb: 60        clrc
0bfc: b4 b0     sbc   a,$b0+x
0bfe: f0 13     beq   $0c13
0c00: fd        mov   y,a
0c01: ae        pop   a
0c02: f0 20     beq   $0c24
0c04: 5d        mov   x,a
0c05: ae        pop   a
0c06: cf        mul   ya
0c07: 9e        div   ya,x
0c08: ce        pop   x
0c09: ee        pop   y
0c0a: 60        clrc
0c0b: 96 09 03  adc   a,$0309+y
0c0e: d4 21     mov   $21+x,a
0c10: bb b0     inc   $b0+x
0c12: 6f        ret

0c13: ae        pop   a
0c14: ae        pop   a
0c15: ce        pop   x
0c16: ee        pop   y
0c17: f6 09 03  mov   a,$0309+y
0c1a: d4 21     mov   $21+x,a
0c1c: bb a1     inc   $a1+x
0c1e: e8 00     mov   a,#$00
0c20: d4 b0     mov   $b0+x,a
0c22: 6f        ret

0c23: 6f        ret

0c24: ae        pop   a
0c25: ce        pop   x
0c26: ee        pop   y
0c27: 6f        ret

0c28: 6f        ret

0c29: f4 b1     mov   a,$b1+x
0c2b: 6d        push  y
0c2c: 4d        push  x
0c2d: 2d        push  a
0c2e: f6 0a 03  mov   a,$030a+y
0c31: 2d        push  a
0c32: 60        clrc
0c33: b4 b0     sbc   a,$b0+x
0c35: f0 0f     beq   $0c46
0c37: fd        mov   y,a
0c38: ae        pop   a
0c39: f0 16     beq   $0c51
0c3b: 5d        mov   x,a
0c3c: ae        pop   a
0c3d: cf        mul   ya
0c3e: 9e        div   ya,x
0c3f: ce        pop   x
0c40: ee        pop   y
0c41: d4 21     mov   $21+x,a
0c43: bb b0     inc   $b0+x
0c45: 6f        ret

0c46: ae        pop   a
0c47: ae        pop   a
0c48: ce        pop   x
0c49: ee        pop   y
0c4a: e8 00     mov   a,#$00
0c4c: d4 21     mov   $21+x,a
0c4e: bb a1     inc   $a1+x
0c50: 6f        ret

0c51: ae        pop   a
0c52: ce        pop   x
0c53: ee        pop   y
0c54: 6f        ret

0c55: f0 50     beq   $0ca7
0c57: fb 20     mov   y,$20+x
0c59: 60        clrc
0c5a: 96 90 42  adc   a,$4290+y
0c5d: 5b c0     lsr   $c0+x
0c5f: b0 04     bcs   $0c65
0c61: 60        clrc
0c62: 95 40 02  adc   a,$0240+x
0c65: d5 b0 02  mov   $02b0+x,a
0c68: d5 90 02  mov   $0290+x,a
0c6b: fd        mov   y,a
0c6c: f5 80 02  mov   a,$0280+x
0c6f: d4 81     mov   $81+x,a
0c71: d0 05     bne   $0c78
0c73: db 90     mov   $90+x,y
0c75: 3f ae 0c  call  $0cae
0c78: 3f d7 0c  call  $0cd7
0c7b: f5 d0 02  mov   a,$02d0+x
0c7e: f0 0e     beq   $0c8e
0c80: f5 e1 02  mov   a,$02e1+x
0c83: d0 09     bne   $0c8e
0c85: d4 60     mov   $60+x,a
0c87: d4 61     mov   $61+x,a
0c89: f5 41 02  mov   a,$0241+x
0c8c: d4 51     mov   $51+x,a
0c8e: f5 a1 02  mov   a,$02a1+x
0c91: d4 91     mov   $91+x,a
0c93: 3f 06 0d  call  $0d06
0c96: f5 f0 02  mov   a,$02f0+x
0c99: d0 0c     bne   $0ca7
0c9b: e4 d2     mov   a,$d2
0c9d: 04 d4     or    a,$d4
0c9f: c4 d4     mov   $d4,a
0ca1: e4 d2     mov   a,$d2
0ca3: 04 d5     or    a,$d5
0ca5: c4 d5     mov   $d5,a
0ca7: 3f 1a 0d  call  $0d1a
0caa: 3f f1 0c  call  $0cf1
0cad: 6f        ret

0cae: f6 87 12  mov   a,$1287+y
0cb1: c4 d9     mov   $d9,a
0cb3: f6 dc 12  mov   a,$12dc+y
0cb6: c4 da     mov   $da,a
0cb8: fb 20     mov   y,$20+x
0cba: f6 b4 42  mov   a,$42b4+y
0cbd: fd        mov   y,a
0cbe: 6d        push  y
0cbf: e4 d9     mov   a,$d9
0cc1: cf        mul   ya
0cc2: cb dd     mov   $dd,y
0cc4: ee        pop   y
0cc5: e4 da     mov   a,$da
0cc7: cf        mul   ya
0cc8: 8f 00 de  mov   $de,#$00
0ccb: 7a dd     addw  ya,$dd
0ccd: 7a d9     addw  ya,$d9
0ccf: d5 d1 02  mov   $02d1+x,a
0cd2: dd        mov   a,y
0cd3: d5 e0 02  mov   $02e0+x,a
0cd6: 6f        ret

0cd7: f5 11 02  mov   a,$0211+x
0cda: d4 70     mov   $70+x,a
0cdc: f5 01 02  mov   a,$0201+x
0cdf: 5c        lsr   a
0ce0: d4 71     mov   $71+x,a
0ce2: f5 50 02  mov   a,$0250+x
0ce5: d5 10 02  mov   $0210+x,a
0ce8: e8 00     mov   a,#$00
0cea: d5 21 02  mov   $0221+x,a
0ced: d5 20 02  mov   $0220+x,a
0cf0: 6f        ret

0cf1: f5 70 02  mov   a,$0270+x
0cf4: f0 0a     beq   $0d00
0cf6: f4 80     mov   a,$80+x
0cf8: 80        setc
0cf9: b5 70 02  sbc   a,$0270+x
0cfc: d4 c1     mov   $c1+x,a
0cfe: 2f 05     bra   $0d05
0d00: f5 71 02  mov   a,$0271+x
0d03: d4 c1     mov   $c1+x,a
0d05: 6f        ret

0d06: f5 b1 02  mov   a,$02b1+x
0d09: f0 0e     beq   $0d19
0d0b: f5 e1 02  mov   a,$02e1+x
0d0e: d0 09     bne   $0d19
0d10: e8 00     mov   a,#$00
0d12: d4 a1     mov   $a1+x,a
0d14: d4 b0     mov   $b0+x,a
0d16: bc        inc   a
0d17: d4 a0     mov   $a0+x,a
0d19: 6f        ret

0d1a: f5 31 02  mov   a,$0231+x
0d1d: d0 05     bne   $0d24
0d1f: f5 30 02  mov   a,$0230+x
0d22: d0 08     bne   $0d2c
0d24: e8 00     mov   a,#$00
0d26: d5 31 02  mov   $0231+x,a
0d29: 3f 2f 0d  call  $0d2f
0d2c: d4 80     mov   $80+x,a
0d2e: 6f        ret

0d2f: e7 30     mov   a,($30+x)
0d31: bb 30     inc   $30+x
0d33: d0 02     bne   $0d37
0d35: bb 31     inc   $31+x
0d37: 08 00     or    a,#$00
0d39: 6f        ret

; vcmd dispatch table
0d3a: dw $1131  ; 80
0d3c: dw $0daa  ; 81
0d3e: dw $0db9  ; 82
0d40: dw $0dcd  ; 83
0d42: dw $0dd3  ; 84
0d44: dw $0de1  ; 85
0d46: dw $0e02  ; 86
0d48: dw $0e0b  ; 87
0d4a: dw $0e13  ; 88
0d4c: dw $0e1c  ; 89
0d4e: dw $0e24  ; 8a
0d50: dw $0e31  ; 8b
0d52: dw $0e39  ; 8c
0d54: dw $0e63  ; 8d
0d56: dw $0e6c  ; 8e
0d58: dw $0e70  ; 8f
0d5a: dw $0e94  ; 90
0d5c: dw $0e8c  ; 91
0d5e: dw $0e9d  ; 92
0d60: dw $0eab  ; 93
0d62: dw $0eb9  ; 94
0d64: dw $0ec8  ; 95
0d66: dw $0ed0  ; 96
0d68: dw $0ee7  ; 97
0d6a: dw $0f23  ; 98
0d6c: dw $0f2c  ; 99
0d6e: dw $0f35  ; 9a
0d70: dw $0f4f  ; 9b
0d72: dw $0f47  ; 9c
0d74: dw $0f5e  ; 9d
0d76: dw $0f6d  ; 9e
0d78: dw $0f75  ; 9f
0d7a: dw $0f7d  ; a0
0d7c: dw $0f84  ; a1
0d7e: dw $0fa0  ; a2
0d80: dw $0fbd  ; a3
0d82: dw $0fd6  ; a4
0d84: dw $1017  ; a5
0d86: dw $103d  ; a6
0d88: dw $104e  ; a7
0d8a: dw $106c  ; a8
0d8c: dw $107a  ; a9
0d8e: dw $109c  ; aa
0d90: dw $10ab  ; ab
0d92: dw $10ba  ; ac
0d94: dw $10c5  ; ad
0d96: dw $10d0  ; ae
0d98: dw $10db  ; af
0d9a: dw $10f3  ; b0
0d9c: dw $10fc  ; b1
0d9e: dw $1105  ; b2
0da0: dw $110e  ; b3
0da2: dw $111d  ; b4
0da4: dw $1126  ; b5
0da6: dw $1147  ; b6
0da8: dw $114f  ; b7

; vcmd 81
0daa: 3f 2f 0d  call  $0d2f
0dad: 2d        push  a
0dae: 3f 2f 0d  call  $0d2f
0db1: d4 31     mov   $31+x,a
0db3: ae        pop   a
0db4: d4 30     mov   $30+x,a
0db6: 5f 39 09  jmp   $0939

; vcmd 82
0db9: 3f 2f 0d  call  $0d2f
0dbc: 2d        push  a
0dbd: 3f 2f 0d  call  $0d2f
0dc0: 2d        push  a
0dc1: 3f 87 11  call  $1187
0dc4: ae        pop   a
0dc5: d4 31     mov   $31+x,a
0dc7: ae        pop   a
0dc8: d4 30     mov   $30+x,a
0dca: 5f 39 09  jmp   $0939

; vcmd 83
0dcd: 3f 6e 11  call  $116e
0dd0: 5f 39 09  jmp   $0939

; vcmd 84
0dd3: 3f 2f 0d  call  $0d2f
0dd6: 2d        push  a
0dd7: 3f 87 11  call  $1187
0dda: ae        pop   a
0ddb: 3f 7f 11  call  $117f
0dde: 5f 39 09  jmp   $0939

; vcmd 85
0de1: fb 50     mov   y,$50+x
0de3: f6 7f 03  mov   a,$037f+y
0de6: 9c        dec   a
0de7: f0 10     beq   $0df9
0de9: d6 7f 03  mov   $037f+y,a
0dec: f6 7e 03  mov   a,$037e+y
0def: d4 31     mov   $31+x,a
0df1: f6 7d 03  mov   a,$037d+y
0df4: d4 30     mov   $30+x,a
0df6: 5f 39 09  jmp   $0939

0df9: dd        mov   a,y
0dfa: 80        setc
0dfb: a8 03     sbc   a,#$03
0dfd: d4 50     mov   $50+x,a
0dff: 5f 39 09  jmp   $0939

; vcmd 86
0e02: 3f 2f 0d  call  $0d2f
0e05: d5 30 02  mov   $0230+x,a
0e08: 5f 39 09  jmp   $0939

; vcmd 87
0e0b: e8 ff     mov   a,#$ff
0e0d: d5 31 02  mov   $0231+x,a
0e10: 5f 39 09  jmp   $0939

; vcmd 88
0e13: 3f 2f 0d  call  $0d2f
0e16: d5 40 02  mov   $0240+x,a
0e19: 5f 39 09  jmp   $0939

; vcmd 89
0e1c: 3f 2f 0d  call  $0d2f
0e1f: d4 20     mov   $20+x,a
0e21: 5f 39 09  jmp   $0939

; vcmd 8a
0e24: 3f 2f 0d  call  $0d2f
0e27: d4 00     mov   $00+x,a
0e29: e8 00     mov   a,#$00
0e2b: d5 45 03  mov   $0345+x,a
0e2e: 5f 39 09  jmp   $0939

; vcmd 8b
0e31: 3f 2f 0d  call  $0d2f
0e34: d4 01     mov   $01+x,a
0e36: 5f 29 0e  jmp   $0e29

; vcmd 8c
0e39: 3f 2f 0d  call  $0d2f
0e3c: d5 41 02  mov   $0241+x,a
0e3f: 3f 2f 0d  call  $0d2f
0e42: d4 40     mov   $40+x,a
0e44: 3f 2f 0d  call  $0d2f
0e47: d4 41     mov   $41+x,a
0e49: e8 00     mov   a,#$00
0e4b: d4 60     mov   $60+x,a
0e4d: d5 b1 02  mov   $02b1+x,a
0e50: d5 e1 02  mov   $02e1+x,a
0e53: 9c        dec   a
0e54: d5 d0 02  mov   $02d0+x,a
0e57: e8 01     mov   a,#$01
0e59: d4 51     mov   $51+x,a
0e5b: 3f 5f 11  call  $115f
0e5e: d4 21     mov   $21+x,a
0e60: 5f 39 09  jmp   $0939

; vcmd 8d
0e63: 3f 2f 0d  call  $0d2f
0e66: d5 c0 02  mov   $02c0+x,a
0e69: 5f 39 09  jmp   $0939

; vcmd 8e
0e6c: e8 01     mov   a,#$01
0e6e: 2f 02     bra   $0e72
; vcmd 8f
0e70: e8 ff     mov   a,#$ff
0e72: d5 50 02  mov   $0250+x,a
0e75: 3f 2f 0d  call  $0d2f
0e78: d5 11 02  mov   $0211+x,a
0e7b: 3f 2f 0d  call  $0d2f
0e7e: d5 00 02  mov   $0200+x,a
0e81: 3f 2f 0d  call  $0d2f
0e84: d5 01 02  mov   $0201+x,a
0e87: d4 71     mov   $71+x,a
0e89: 5f 39 09  jmp   $0939

; vcmd 91
0e8c: e8 00     mov   a,#$00
0e8e: d5 50 02  mov   $0250+x,a
0e91: 5f 39 09  jmp   $0939

; vcmd 90
0e94: 3f 2f 0d  call  $0d2f
0e97: d5 51 02  mov   $0251+x,a
0e9a: 5f 39 09  jmp   $0939

; vcmd 92
0e9d: 3f 2f 0d  call  $0d2f
0ea0: d5 70 02  mov   $0270+x,a
0ea3: e8 00     mov   a,#$00
0ea5: d5 71 02  mov   $0271+x,a
0ea8: 5f 39 09  jmp   $0939

; vcmd 93
0eab: 3f 2f 0d  call  $0d2f
0eae: d5 71 02  mov   $0271+x,a
0eb1: e8 00     mov   a,#$00
0eb3: d5 70 02  mov   $0270+x,a
0eb6: 5f 39 09  jmp   $0939

; vcmd 94
0eb9: 3f 2f 0d  call  $0d2f
0ebc: d5 81 02  mov   $0281+x,a
0ebf: 3f 2f 0d  call  $0d2f
0ec2: d5 80 02  mov   $0280+x,a
0ec5: 5f 39 09  jmp   $0939

; vcmd 95
0ec8: e8 00     mov   a,#$00
0eca: d5 80 02  mov   $0280+x,a
0ecd: 5f 39 09  jmp   $0939

; vcmd 96
0ed0: 3f 2f 0d  call  $0d2f
0ed3: d5 91 02  mov   $0291+x,a
0ed6: 3f 2f 0d  call  $0d2f
0ed9: d5 a0 02  mov   $02a0+x,a
0edc: 3f 2f 0d  call  $0d2f
0edf: d5 a1 02  mov   $02a1+x,a
0ee2: d4 91     mov   $91+x,a
0ee4: 5f 39 09  jmp   $0939

; vcmd 97
0ee7: e8 3e     mov   a,#$3e
0ee9: c4 d9     mov   $d9,a
0eeb: e8 1e     mov   a,#$1e
0eed: c4 da     mov   $da,a
0eef: 3f 2f 0d  call  $0d2f
0ef2: 8d 07     mov   y,#$07
0ef4: cf        mul   ya
0ef5: 4d        push  x
0ef6: 60        clrc
0ef7: 7a d9     addw  ya,$d9
0ef9: da d9     movw  $d9,ya
0efb: 8d 00     mov   y,#$00
0efd: 7d        mov   a,x
0efe: c4 e5     mov   $e5,a
0f00: 1c        asl   a
0f01: 1c        asl   a
0f02: 1c        asl   a
0f03: 80        setc
0f04: a4 e5     sbc   a,$e5
0f06: 5c        lsr   a
0f07: 5d        mov   x,a
0f08: f7 d9     mov   a,($d9)+y
0f0a: d5 04 03  mov   $0304+x,a
0f0d: 3d        inc   x
0f0e: fc        inc   y
0f0f: ad 07     cmp   y,#$07
0f11: d0 f5     bne   $0f08
0f13: ce        pop   x
0f14: e8 00     mov   a,#$00
0f16: d5 d0 02  mov   $02d0+x,a
0f19: d5 e1 02  mov   $02e1+x,a
0f1c: 9c        dec   a
0f1d: d5 b1 02  mov   $02b1+x,a
0f20: 5f 39 09  jmp   $0939

; vcmd 98
0f23: e4 d2     mov   a,$d2
0f25: 04 d6     or    a,$d6
0f27: c4 d6     mov   $d6,a
0f29: 5f 39 09  jmp   $0939

; vcmd 99
0f2c: e4 d3     mov   a,$d3
0f2e: 24 d6     and   a,$d6
0f30: c4 d6     mov   $d6,a
0f32: 5f 39 09  jmp   $0939

; vcmd 9a
0f35: 3f 2f 0d  call  $0d2f
0f38: 28 1f     and   a,#$1f
0f3a: 08 20     or    a,#$20
0f3c: 8f 6c f2  mov   $f2,#$6c
0f3f: 00        nop
0f40: 00        nop
0f41: 00        nop
0f42: c4 f3     mov   $f3,a
0f44: 5f 39 09  jmp   $0939

; vcmd 9c
0f47: e8 ff     mov   a,#$ff
0f49: d5 e1 02  mov   $02e1+x,a
0f4c: 5f 39 09  jmp   $0939

; vcmd 9b
0f4f: e8 00     mov   a,#$00
0f51: d5 e1 02  mov   $02e1+x,a
0f54: d5 d0 02  mov   $02d0+x,a
0f57: 9c        dec   a
0f58: d5 b1 02  mov   $02b1+x,a
0f5b: 5f 39 09  jmp   $0939

; vcmd 9d
0f5e: e8 00     mov   a,#$00
0f60: d5 e1 02  mov   $02e1+x,a
0f63: d5 b1 02  mov   $02b1+x,a
0f66: 9c        dec   a
0f67: d5 d0 02  mov   $02d0+x,a
0f6a: 5f 39 09  jmp   $0939

; vcmd 9e
0f6d: e8 00     mov   a,#$00
0f6f: d5 f0 02  mov   $02f0+x,a
0f72: 5f 39 09  jmp   $0939

; vcmd 9f
0f75: e8 ff     mov   a,#$ff
0f77: d5 f0 02  mov   $02f0+x,a
0f7a: 5f 39 09  jmp   $0939

; vcmd a0
0f7d: e8 01     mov   a,#$01
0f7f: d4 c0     mov   $c0+x,a
0f81: 5f 39 09  jmp   $0939

; vcmd a1
0f84: 4d        push  x
0f85: f8 e4     mov   x,$e4
0f87: cd 01     mov   x,#$01
0f89: 3f 59 07  call  $0759
0f8c: ce        pop   x
0f8d: f5 4a 12  mov   a,$124a+x
0f90: c4 d2     mov   $d2,a
0f92: f5 4b 12  mov   a,$124b+x
0f95: c4 d3     mov   $d3,a
0f97: 8f 00 e0  mov   $e0,#$00
0f9a: 8f 7f e1  mov   $e1,#$7f
0f9d: 5f 39 09  jmp   $0939

; vcmd a2
0fa0: 7d        mov   a,x
0fa1: c4 e5     mov   $e5,a
0fa3: 1c        asl   a
0fa4: 1c        asl   a
0fa5: 1c        asl   a
0fa6: 80        setc
0fa7: a4 e5     sbc   a,$e5
0fa9: 5c        lsr   a
0faa: fd        mov   y,a
0fab: e8 07     mov   a,#$07
0fad: c4 e5     mov   $e5,a
0faf: 3f 2f 0d  call  $0d2f
0fb2: d6 04 03  mov   $0304+y,a
0fb5: fc        inc   y
0fb6: 8b e5     dec   $e5
0fb8: d0 f5     bne   $0faf
0fba: 5f 4f 0f  jmp   $0f4f

; vcmd a3
0fbd: 3f 2f 0d  call  $0d2f
0fc0: 3f 5a 12  call  $125a
0fc3: 1c        asl   a
0fc4: c4 e5     mov   $e5,a
0fc6: 60        clrc
0fc7: f4 30     mov   a,$30+x
0fc9: 84 e5     adc   a,$e5
0fcb: d4 30     mov   $30+x,a
0fcd: f4 31     mov   a,$31+x
0fcf: 88 00     adc   a,#$00
0fd1: d4 31     mov   $31+x,a
0fd3: 5f aa 0d  jmp   $0daa

; vcmd a4
0fd6: 3f 2f 0d  call  $0d2f
0fd9: c4 e5     mov   $e5,a
0fdb: 3f 5a 12  call  $125a
0fde: c4 d9     mov   $d9,a
0fe0: 1c        asl   a
0fe1: 60        clrc
0fe2: f4 30     mov   a,$30+x
0fe4: 84 d9     adc   a,$d9
0fe6: d4 30     mov   $30+x,a
0fe8: f4 31     mov   a,$31+x
0fea: 88 00     adc   a,#$00
0fec: d4 31     mov   $31+x,a
0fee: 3f 2f 0d  call  $0d2f
0ff1: 2d        push  a
0ff2: 3f 2f 0d  call  $0d2f
0ff5: 2d        push  a
0ff6: e4 e5     mov   a,$e5
0ff8: 9c        dec   a
0ff9: 80        setc
0ffa: a4 d9     sbc   a,$d9
0ffc: 1c        asl   a
0ffd: c4 d9     mov   $d9,a
0fff: f4 30     mov   a,$30+x
1001: 84 d9     adc   a,$d9
1003: d4 30     mov   $30+x,a
1005: f4 31     mov   a,$31+x
1007: 88 00     adc   a,#$00
1009: d4 31     mov   $31+x,a
100b: 3f 87 11  call  $1187
100e: ae        pop   a
100f: d4 31     mov   $31+x,a
1011: ae        pop   a
1012: d4 30     mov   $30+x,a
1014: 5f 39 09  jmp   $0939

; vcmd a5
1017: 3f 2f 0d  call  $0d2f
101a: 3f 26 10  call  $1026
101d: 16 3c 03  or    a,$033c+y
1020: d6 3c 03  mov   $033c+y,a
1023: 5f 39 09  jmp   $0939

1026: 4d        push  x
1027: fd        mov   y,a
1028: 28 07     and   a,#$07
102a: 5d        mov   x,a
102b: dd        mov   a,y
102c: 5c        lsr   a
102d: 5c        lsr   a
102e: 5c        lsr   a
102f: fd        mov   y,a
1030: f5 35 10  mov   a,$1035+x
1033: ce        pop   x
1034: 6f        ret

1035: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
103d: 3f 2f 0d  call  $0d2f
1040: 3f 26 10  call  $1026
1043: 48 ff     eor   a,#$ff
1045: 36 3c 03  and   a,$033c+y
1048: d6 3c 03  mov   $033c+y,a
104b: 5f 39 09  jmp   $0939

; vcmd a7
104e: 3f 2f 0d  call  $0d2f
1051: 3f 26 10  call  $1026
1054: 36 3c 03  and   a,$033c+y
1057: f0 03     beq   $105c
1059: 5f aa 0d  jmp   $0daa

105c: f4 30     mov   a,$30+x
105e: 60        clrc
105f: 88 02     adc   a,#$02
1061: d4 30     mov   $30+x,a
1063: f4 31     mov   a,$31+x
1065: 88 00     adc   a,#$00
1067: d4 31     mov   $31+x,a
1069: 5f 39 09  jmp   $0939

; vcmd a8
106c: 3f 2f 0d  call  $0d2f
106f: 3f 26 10  call  $1026
1072: 36 3c 03  and   a,$033c+y
1075: d0 e5     bne   $105c
1077: 5f aa 0d  jmp   $0daa

; vcmd a9
107a: 3f 2f 0d  call  $0d2f
107d: 3f 26 10  call  $1026
1080: 36 3c 03  and   a,$033c+y
1083: f0 03     beq   $1088
1085: 5f 39 09  jmp   $0939

1088: e8 01     mov   a,#$01
108a: d4 80     mov   $80+x,a
108c: f4 30     mov   a,$30+x
108e: 80        setc
108f: a8 02     sbc   a,#$02
1091: d4 30     mov   $30+x,a
1093: f4 31     mov   a,$31+x
1095: a8 00     sbc   a,#$00
1097: d4 31     mov   $31+x,a
1099: 5f 53 09  jmp   $0953

; vcmd aa
109c: e4 d2     mov   a,$d2
109e: 04 d7     or    a,$d7
10a0: c4 d7     mov   $d7,a
10a2: 8f 4d f2  mov   $f2,#$4d
10a5: fa d7 f3  mov   ($f3),($d7)
10a8: 5f 39 09  jmp   $0939

; vcmd ab
10ab: e4 d3     mov   a,$d3
10ad: 24 d7     and   a,$d7
10af: c4 d7     mov   $d7,a
10b1: 8f 4d f2  mov   $f2,#$4d
10b4: fa d7 f3  mov   ($f3),($d7)
10b7: 5f 39 09  jmp   $0939

; vcmd ac
10ba: 3f 2f 0d  call  $0d2f
10bd: 8f 2c f2  mov   $f2,#$2c
10c0: c4 f3     mov   $f3,a
10c2: 5f 39 09  jmp   $0939

; vcmd ad
10c5: 3f 2f 0d  call  $0d2f
10c8: 8f 3c f2  mov   $f2,#$3c
10cb: c4 f3     mov   $f3,a
10cd: 5f 39 09  jmp   $0939

; vcmd ae
10d0: 3f 2f 0d  call  $0d2f
10d3: 8f 0d f2  mov   $f2,#$0d
10d6: c4 f3     mov   $f3,a
10d8: 5f 39 09  jmp   $0939

; vcmd af
10db: 8d 00     mov   y,#$00
10dd: dd        mov   a,y
10de: 1c        asl   a
10df: 1c        asl   a
10e0: 1c        asl   a
10e1: 1c        asl   a
10e2: 08 0f     or    a,#$0f
10e4: c4 f2     mov   $f2,a
10e6: 3f 2f 0d  call  $0d2f
10e9: c4 f3     mov   $f3,a
10eb: fc        inc   y
10ec: ad 08     cmp   y,#$08
10ee: d0 ed     bne   $10dd
10f0: 5f 39 09  jmp   $0939

; vcmd b0
10f3: 3f 2f 0d  call  $0d2f
10f6: d5 56 03  mov   $0356+x,a
10f9: 5f 39 09  jmp   $0939

; vcmd b1
10fc: e4 d2     mov   a,$d2
10fe: 04 d8     or    a,$d8
1100: c4 d8     mov   $d8,a
1102: 5f 39 09  jmp   $0939

; vcmd b2
1105: e4 d3     mov   a,$d3
1107: 24 d8     and   a,$d8
1109: c4 d8     mov   $d8,a
110b: 5f 39 09  jmp   $0939

; vcmd b3
110e: 3f 2f 0d  call  $0d2f
1111: d5 45 03  mov   $0345+x,a
1114: 3f 2f 0d  call  $0d2f
1117: d5 46 03  mov   $0346+x,a
111a: 5f 39 09  jmp   $0939

; vcmd b4
111d: 3f 2f 0d  call  $0d2f
1120: d5 55 03  mov   $0355+x,a
1123: 5f 39 09  jmp   $0939

; vcmd b5
1126: 3f 2f 0d  call  $0d2f
1129: 4d        push  x
112a: 3f e8 04  call  $04e8
112d: ce        pop   x
112e: 5f 39 09  jmp   $0939

; vcmd 80
1131: e8 00     mov   a,#$00
1133: d5 65 03  mov   $0365+x,a
1136: d5 f1 02  mov   $02f1+x,a
1139: d5 c1 02  mov   $02c1+x,a
113c: 9c        dec   a
113d: d5 01 01  mov   $0101+x,a
1140: e4 d2     mov   a,$d2
1142: 04 d5     or    a,$d5
1144: c4 d5     mov   $d5,a
1146: 6f        ret

; vcmd b6
1147: 3f 2f 0d  call  $0d2f
114a: c4 fc     mov   $fc,a
114c: 5f 39 09  jmp   $0939

; vcmd b7
114f: e8 ff     mov   a,#$ff
1151: d5 00 01  mov   $0100+x,a
1154: e8 01     mov   a,#$01
1156: d5 46 03  mov   $0346+x,a
1159: d5 45 03  mov   $0345+x,a
115c: 5f 39 09  jmp   $0939

115f: f4 40     mov   a,$40+x
1161: c4 d9     mov   $d9,a
1163: f4 41     mov   a,$41+x
1165: c4 da     mov   $da,a
1167: fb 60     mov   y,$60+x
1169: bb 60     inc   $60+x
116b: f7 d9     mov   a,($d9)+y
116d: 6f        ret

116e: fb 50     mov   y,$50+x
1170: dc        dec   y
1171: f6 80 03  mov   a,$0380+y
1174: d4 31     mov   $31+x,a
1176: dc        dec   y
1177: f6 80 03  mov   a,$0380+y
117a: d4 30     mov   $30+x,a
117c: db 50     mov   $50+x,y
117e: 6f        ret

117f: fb 50     mov   y,$50+x
1181: d6 80 03  mov   $0380+y,a
1184: bb 50     inc   $50+x
1186: 6f        ret

1187: fb 50     mov   y,$50+x
1189: f4 30     mov   a,$30+x
118b: d6 80 03  mov   $0380+y,a
118e: f4 31     mov   a,$31+x
1190: d6 81 03  mov   $0381+y,a
1193: fc        inc   y
1194: fc        inc   y
1195: db 50     mov   $50+x,y
1197: 6f        ret

1198: f6 65 03  mov   a,$0365+y
119b: f0 37     beq   $11d4
119d: d8 f2     mov   $f2,x
119f: f6 00 00  mov   a,$0000+y
11a2: 3f d7 11  call  $11d7
11a5: c4 f3     mov   $f3,a
11a7: 3d        inc   x
11a8: d8 f2     mov   $f2,x
11aa: f6 01 00  mov   a,$0001+y
11ad: 3f d7 11  call  $11d7
11b0: c4 f3     mov   $f3,a
11b2: 3d        inc   x
11b3: d8 f2     mov   $f2,x
11b5: f6 10 00  mov   a,$0010+y
11b8: c4 f3     mov   $f3,a
11ba: 3d        inc   x
11bb: d8 f2     mov   $f2,x
11bd: f6 11 00  mov   a,$0011+y
11c0: c4 f3     mov   $f3,a
11c2: 3d        inc   x
11c3: d8 f2     mov   $f2,x
11c5: f6 20 00  mov   a,$0020+y
11c8: c4 f3     mov   $f3,a
11ca: 3d        inc   x
11cb: 3d        inc   x
11cc: 3d        inc   x
11cd: d8 f2     mov   $f2,x
11cf: f6 21 00  mov   a,$0021+y
11d2: c4 f3     mov   $f3,a
11d4: 5f 95 05  jmp   $0595

11d7: 30 17     bmi   $11f0
11d9: 6d        push  y
11da: 4d        push  x
11db: 6d        push  y
11dc: ce        pop   x
11dd: fd        mov   y,a
11de: f5 c1 02  mov   a,$02c1+x
11e1: bc        inc   a
11e2: d0 04     bne   $11e8
11e4: e4 e8     mov   a,$e8
11e6: 2f 03     bra   $11eb
11e8: f5 66 03  mov   a,$0366+x
11eb: cf        mul   ya
11ec: dd        mov   a,y
11ed: ce        pop   x
11ee: ee        pop   y
11ef: 6f        ret

11f0: 48 ff     eor   a,#$ff
11f2: bc        inc   a
11f3: 6d        push  y
11f4: 4d        push  x
11f5: 6d        push  y
11f6: ce        pop   x
11f7: fd        mov   y,a
11f8: f5 66 03  mov   a,$0366+x
11fb: cf        mul   ya
11fc: dd        mov   a,y
11fd: ce        pop   x
11fe: ee        pop   y
11ff: 48 ff     eor   a,#$ff
1201: bc        inc   a
1202: 6f        ret

1203: cd 00     mov   x,#$00
1205: f5 15 12  mov   a,$1215+x
1208: 30 0a     bmi   $1214
120a: c4 f2     mov   $f2,a
120c: f5 30 12  mov   a,$1230+x
120f: c4 f3     mov   $f3,a
1211: 3d        inc   x
1212: d0 f1     bne   $1205
1214: 6f        ret

1215: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
1230: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$42,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

124a: db $01,$fe
124c: db $02,$fd
124e: db $04,$fb
1250: db $08,$f7
1252: db $10,$ef
1254: db $20,$df
1256: db $40,$bf
1258: db $80,$7f

125a: fd        mov   y,a
125b: 3f 78 12  call  $1278
125e: 3f 78 12  call  $1278
1261: 3f 78 12  call  $1278
1264: 3f 78 12  call  $1278
1267: 3f 78 12  call  $1278
126a: 3f 78 12  call  $1278
126d: 3f 78 12  call  $1278
1270: 3f 78 12  call  $1278
1273: e4 eb     mov   a,$eb
1275: cf        mul   ya
1276: dd        mov   a,y
1277: 6f        ret

1278: e4 eb     mov   a,$eb
127a: 28 48     and   a,#$48
127c: 88 38     adc   a,#$38
127e: 1c        asl   a
127f: 1c        asl   a
1280: 2b ee     rol   $ee
1282: 2b ed     rol   $ed
1284: 2b ec     rol   $ec
1286: 2b eb     rol   $eb
1288: 6f        ret
