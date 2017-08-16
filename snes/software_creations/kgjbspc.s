0400: 20        clrp
0401: 00        nop
0402: cd ff     mov   x,#$ff
0404: bd        mov   sp,x
0405: 8f 30 f1  mov   $f1,#$30
0408: 8f 6c f2  mov   $f2,#$6c
040b: 8f f3 f3  mov   $f3,#$f3
040e: 8f 0c f2  mov   $f2,#$0c
0411: 8f 00 f3  mov   $f3,#$00
0414: 8f 1c f2  mov   $f2,#$1c
0417: 8f 00 f3  mov   $f3,#$00
041a: 3f 25 13  call  $1325
041d: 3f c6 08  call  $08c6
0420: 8f 1b ec  mov   $ec,#$1b
0423: 8f 09 ed  mov   $ed,#$09
0426: 8f 13 ee  mov   $ee,#$13
0429: 8f 3a ef  mov   $ef,#$3a
042c: 8f 30 e8  mov   $e8,#$30
042f: 8f c0 e9  mov   $e9,#$c0
0432: 8f 80 d1  mov   $d1,#$80
0435: e8 80     mov   a,#$80
0437: c4 f6     mov   $f6,a
0439: 64 f6     cmp   a,$f6
043b: d0 fc     bne   $0439
043d: e8 00     mov   a,#$00
043f: c4 f4     mov   $f4,a
0441: c4 f5     mov   $f5,a
0443: 3f b5 04  call  $04b5
0446: 3f 80 05  call  $0580
0449: 8f 6c f2  mov   $f2,#$6c
044c: 8f 33 f3  mov   $f3,#$33
044f: cd 00     mov   x,#$00
0451: 3f 4d 07  call  $074d
0454: 3f 7e 06  call  $067e
0457: 9d        mov   x,sp
0458: c8 22     cmp   x,#$22
045a: 90 1f     bcc   $047b
045c: 3d        inc   x
045d: d0 1c     bne   $047b
045f: 3f 34 05  call  $0534
0462: e5 44 03  mov   a,$0344
0465: 60        clrc
0466: 84 ff     adc   a,$ff
0468: c5 44 03  mov   $0344,a
046b: 68 04     cmp   a,#$04
046d: 90 e8     bcc   $0457
046f: 80        setc
0470: a8 04     sbc   a,#$04
0472: c5 44 03  mov   $0344,a
0475: 3f 7e 06  call  $067e
0478: 5f 57 04  jmp   $0457

047b: 7d        mov   a,x
047c: 9c        dec   a
047d: cd 89     mov   x,#$89
047f: 5f 55 14  jmp   $1455

0482: e4 ff     mov   a,$ff
0484: e4 e1     mov   a,$e1
0486: eb ff     mov   y,$ff
0488: f0 fc     beq   $0486
048a: 80        setc
048b: a8 08     sbc   a,#$08
048d: 10 02     bpl   $0491
048f: e8 00     mov   a,#$00
0491: 8f 0c f2  mov   $f2,#$0c
0494: c4 f3     mov   $f3,a
0496: 8f 1c f2  mov   $f2,#$1c
0499: c4 f3     mov   $f3,a
049b: 08 00     or    a,#$00
049d: d0 e7     bne   $0486
049f: c4 f6     mov   $f6,a
04a1: e8 ff     mov   a,#$ff
04a3: 8f 5c f2  mov   $f2,#$5c
04a6: c4 f3     mov   $f3,a
04a8: e8 b0     mov   a,#$b0
04aa: c4 f1     mov   $f1,a
04ac: 8f 6c f2  mov   $f2,#$6c
04af: 8f e0 f3  mov   $f3,#$e0
04b2: 5f 55 14  jmp   $1455

04b5: 8f 00 f1  mov   $f1,#$00
04b8: 00        nop
04b9: 00        nop
04ba: 00        nop
04bb: 00        nop
04bc: 8f 85 fc  mov   $fc,#$85
04bf: 8f 04 f1  mov   $f1,#$04
04c2: 6f        ret

04c3: cd 02     mov   x,#$02
04c5: 5f 55 14  jmp   $1455

04c8: fd        mov   y,a
04c9: 68 2b     cmp   a,#$2b
04cb: b0 f6     bcs   $04c3
04cd: cd 0e     mov   x,#$0e
04cf: f6 1c 16  mov   a,$161c+y
04d2: 30 0c     bmi   $04e0
04d4: f0 0a     beq   $04e0
04d6: dd        mov   a,y
04d7: 75 01 01  cmp   a,$0101+x
04da: f0 32     beq   $050e
04dc: 1d        dec   x
04dd: 1d        dec   x
04de: 10 f7     bpl   $04d7
04e0: cd 0e     mov   x,#$0e
04e2: f5 f1 02  mov   a,$02f1+x
04e5: f0 27     beq   $050e
04e7: 1d        dec   x
04e8: 1d        dec   x
04e9: 10 f7     bpl   $04e2
04eb: cd 0e     mov   x,#$0e
04ed: e8 ff     mov   a,#$ff
04ef: 75 c1 02  cmp   a,$02c1+x
04f2: 90 05     bcc   $04f9
04f4: f5 c1 02  mov   a,$02c1+x
04f7: d8 e5     mov   $e5,x
04f9: 1d        dec   x
04fa: 1d        dec   x
04fb: 10 f2     bpl   $04ef
04fd: f8 e5     mov   x,$e5
04ff: c4 e5     mov   $e5,a
0501: f6 1c 16  mov   a,$161c+y
0504: 28 7f     and   a,#$7f
0506: 64 e5     cmp   a,$e5
0508: f0 04     beq   $050e
050a: b0 02     bcs   $050e
050c: 60        clrc
050d: 6f        ret

050e: dd        mov   a,y
050f: d5 01 01  mov   $0101+x,a
0512: f6 1c 16  mov   a,$161c+y
0515: 28 7f     and   a,#$7f
0517: d5 c1 02  mov   $02c1+x,a
051a: 3f 09 08  call  $0809
051d: f6 c6 15  mov   a,$15c6+y
0520: d4 30     mov   $30+x,a
0522: f6 f1 15  mov   a,$15f1+y
0525: d4 31     mov   $31+x,a
0527: e4 e9     mov   a,$e9
0529: d5 66 03  mov   $0366+x,a
052c: 80        setc
052d: 6f        ret

052e: 6f        ret

052f: cd 80     mov   x,#$80
0531: 5f 55 14  jmp   $1455

0534: 3f 90 05  call  $0590
0537: e4 f6     mov   a,$f6
0539: 28 c0     and   a,#$c0
053b: 64 d1     cmp   a,$d1
053d: f0 2a     beq   $0569
053f: e4 f6     mov   a,$f6
0541: 28 c0     and   a,#$c0
0543: 64 d1     cmp   a,$d1
0545: f0 22     beq   $0569
0547: fd        mov   y,a
0548: e4 f6     mov   a,$f6
054a: 64 f6     cmp   a,$f6
054c: d0 fa     bne   $0548
054e: 28 3f     and   a,#$3f
0550: f0 17     beq   $0569
0552: 68 0e     cmp   a,#$0e
0554: b0 13     bcs   $0569
0556: 5d        mov   x,a
0557: f5 f0 05  mov   a,$05f0+x
055a: 2d        push  a
055b: f5 e3 05  mov   a,$05e3+x
055e: 2d        push  a
055f: e4 f7     mov   a,$f7
0561: 64 f7     cmp   a,$f7
0563: d0 fa     bne   $055f
0565: cb d1     mov   $d1,y
0567: cb f6     mov   $f6,y
0569: 60        clrc
056a: 6f        ret

056b: d8 f4     mov   $f4,x
056d: 3d        inc   x
056e: d0 03     bne   $0573
0570: 5f 82 04  jmp   $0482

0573: e4 f4     mov   a,$f4
0575: d0 fc     bne   $0573
0577: e4 f4     mov   a,$f4
0579: d0 f8     bne   $0573
057b: c4 f4     mov   $f4,a
057d: 3d        inc   x
057e: d0 0c     bne   $058c
0580: 8f 80 db  mov   $db,#$80
0583: 8f 4f dc  mov   $dc,#$4f
0586: e8 00     mov   a,#$00
0588: c5 10 01  mov   $0110,a
058b: 6f        ret

058c: ac 11 01  inc   $0111
058f: 6f        ret

0590: f8 f4     mov   x,$f4
0592: f0 4e     beq   $05e2
0594: 3e f4     cmp   x,$f4
0596: d0 f8     bne   $0590
0598: 3d        inc   x
0599: 1d        dec   x
059a: 30 cf     bmi   $056b
059c: 8d 00     mov   y,#$00
059e: e4 f5     mov   a,$f5
05a0: d8 f4     mov   $f4,x
05a2: d7 db     mov   ($db)+y,a
05a4: 3a db     incw  $db
05a6: 3e f4     cmp   x,$f4
05a8: f0 fc     beq   $05a6
05aa: f8 f4     mov   x,$f4
05ac: d0 f0     bne   $059e
05ae: d8 f4     mov   $f4,x
05b0: 78 b0 db  cmp   $db,#$b0
05b3: d0 0b     bne   $05c0
05b5: 78 55 dc  cmp   $dc,#$55
05b8: d0 06     bne   $05c0
05ba: 8f 80 db  mov   $db,#$80
05bd: 8f 4f dc  mov   $dc,#$4f
05c0: e5 a7 55  mov   a,$55a7
05c3: 28 01     and   a,#$01
05c5: 68 01     cmp   a,#$01
05c7: f0 08     beq   $05d1
05c9: e5 a7 55  mov   a,$55a7
05cc: 08 03     or    a,#$03
05ce: c5 a7 55  mov   $55a7,a
05d1: e5 10 01  mov   a,$0110
05d4: d0 0c     bne   $05e2
05d6: ac 10 01  inc   $0110
05d9: e8 00     mov   a,#$00
05db: c5 11 01  mov   $0111,a
05de: 60        clrc
05df: 5f 2e 06  jmp   $062e

05e2: 60        clrc
05e3: 6f        ret

; $0619
; $062e
; $0639
; $064f
; $0651
; $0656
; $066e
; $0671
; $0674
; $0677
; $0663
; $067a
; $05fe
05e4: db $19,$2e,$39,$4f,$51,$56,$6e,$71,$74,$77,$63,$7a,$fe
05f1: db $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$05

05fe: cd 0e     mov   x,#$0e
0600: 75 01 01  cmp   a,$0101+x
0603: d0 0e     bne   $0613
0605: 2d        push  a
0606: e8 01     mov   a,#$01
0608: d4 80     mov   $80+x,a
060a: e8 c5     mov   a,#$c5
060c: d4 30     mov   $30+x,a
060e: e8 15     mov   a,#$15
0610: d4 31     mov   $31+x,a
0612: ae        pop   a
0613: 1d        dec   x
0614: 1d        dec   x
0615: 10 e9     bpl   $0600
0617: 60        clrc
0618: 6f        ret

0619: 5d        mov   x,a
061a: 1d        dec   x
061b: d8 e4     mov   $e4,x
061d: 3f 4d 07  call  $074d
0620: 8f 00 eb  mov   $eb,#$00
0623: 8f 00 e0  mov   $e0,#$00
0626: 8f 7f e1  mov   $e1,#$7f
0629: 3f b5 04  call  $04b5
062c: 80        setc
062d: 6f        ret

062e: 3f c8 04  call  $04c8
0631: 8f 00 e0  mov   $e0,#$00
0634: 8f 7f e1  mov   $e1,#$7f
0637: 60        clrc
0638: 6f        ret

0639: 8d 00     mov   y,#$00
063b: bc        inc   a
063c: 9c        dec   a
063d: 10 01     bpl   $0640
063f: dc        dec   y
0640: cb e3     mov   $e3,y
0642: 1c        asl   a
0643: 2b e3     rol   $e3
0645: 1c        asl   a
0646: 2b e3     rol   $e3
0648: 1c        asl   a
0649: 2b e3     rol   $e3
064b: c4 e2     mov   $e2,a
064d: 60        clrc
064e: 6f        ret

064f: 60        clrc
0650: 6f        ret

0651: 3f 19 06  call  $0619
0654: 60        clrc
0655: 6f        ret

0656: 3f fe 10  call  $10fe
0659: 48 ff     eor   a,#$ff
065b: 36 3c 03  and   a,$033c+y
065e: d6 3c 03  mov   $033c+y,a
0661: 60        clrc
0662: 6f        ret

0663: 3f fe 10  call  $10fe
0666: 16 3c 03  or    a,$033c+y
0669: d6 3c 03  mov   $033c+y,a
066c: 60        clrc
066d: 6f        ret

066e: c4 e8     mov   $e8,a
0670: 6f        ret

0671: c4 e9     mov   $e9,a
0673: 6f        ret

0674: c4 ea     mov   $ea,a
0676: 6f        ret

0677: c4 d0     mov   $d0,a
0679: 6f        ret

067a: c5 76 12  mov   $1276,a
067d: 6f        ret

067e: e4 eb     mov   a,$eb
0680: f0 03     beq   $0685
0682: 3f 2e 05  call  $052e
0685: ab e6     inc   $e6
0687: ba e2     movw  ya,$e2
0689: f0 24     beq   $06af
068b: 30 12     bmi   $069f
068d: ba e0     movw  ya,$e0
068f: 7a e2     addw  ya,$e2
0691: 10 08     bpl   $069b
0693: 8f 00 e2  mov   $e2,#$00
0696: 8f 00 e3  mov   $e3,#$00
0699: 8d 7f     mov   y,#$7f
069b: da e0     movw  $e0,ya
069d: 2f 10     bra   $06af
069f: ba e0     movw  ya,$e0
06a1: 7a e2     addw  ya,$e2
06a3: 10 08     bpl   $06ad
06a5: 8f 00 e2  mov   $e2,#$00
06a8: 8f 00 e3  mov   $e3,#$00
06ab: 8d 00     mov   y,#$00
06ad: da e0     movw  $e0,ya
06af: cd 00     mov   x,#$00
06b1: 3f 12 09  call  $0912
06b4: b0 2f     bcs   $06e5
06b6: cd 02     mov   x,#$02
06b8: 3f 12 09  call  $0912
06bb: b0 28     bcs   $06e5
06bd: cd 04     mov   x,#$04
06bf: 3f 12 09  call  $0912
06c2: b0 21     bcs   $06e5
06c4: cd 06     mov   x,#$06
06c6: 3f 12 09  call  $0912
06c9: b0 1a     bcs   $06e5
06cb: cd 08     mov   x,#$08
06cd: 3f 12 09  call  $0912
06d0: b0 13     bcs   $06e5
06d2: cd 0a     mov   x,#$0a
06d4: 3f 12 09  call  $0912
06d7: b0 0c     bcs   $06e5
06d9: cd 0c     mov   x,#$0c
06db: 3f 12 09  call  $0912
06de: b0 05     bcs   $06e5
06e0: cd 0e     mov   x,#$0e
06e2: 3f 12 09  call  $0912
06e5: 8f 5c f2  mov   $f2,#$5c
06e8: fa d5 f3  mov   ($f3),($d5)
06eb: 8f 00 d5  mov   $d5,#$00
06ee: e4 e1     mov   a,$e1
06f0: 8f 0c f2  mov   $f2,#$0c
06f3: c4 f3     mov   $f3,a
06f5: 8f 1c f2  mov   $f2,#$1c
06f8: c4 f3     mov   $f3,a
06fa: 8d 00     mov   y,#$00
06fc: cd 00     mov   x,#$00
06fe: 3f bf 12  call  $12bf
0701: 8d 02     mov   y,#$02
0703: cd 10     mov   x,#$10
0705: 3f bf 12  call  $12bf
0708: 8d 04     mov   y,#$04
070a: cd 20     mov   x,#$20
070c: 3f bf 12  call  $12bf
070f: 8d 06     mov   y,#$06
0711: cd 30     mov   x,#$30
0713: 3f bf 12  call  $12bf
0716: 8d 08     mov   y,#$08
0718: 8f 5c f2  mov   $f2,#$5c
071b: 8f 00 f3  mov   $f3,#$00
071e: cd 40     mov   x,#$40
0720: 3f bf 12  call  $12bf
0723: 8d 0a     mov   y,#$0a
0725: cd 50     mov   x,#$50
0727: 3f bf 12  call  $12bf
072a: 8d 0c     mov   y,#$0c
072c: cd 60     mov   x,#$60
072e: 3f bf 12  call  $12bf
0731: 8d 0e     mov   y,#$0e
0733: cd 70     mov   x,#$70
0735: 3f bf 12  call  $12bf
0738: 8f 3d f2  mov   $f2,#$3d
073b: fa d6 f3  mov   ($f3),($d6)
073e: 8f 4c f2  mov   $f2,#$4c
0741: fa d4 f3  mov   ($f3),($d4)
0744: 8f 00 d4  mov   $d4,#$00
0747: 6f        ret

0748: cd 01     mov   x,#$01
074a: 5f 55 14  jmp   $1455

074d: 7d        mov   a,x
074e: 68 03     cmp   a,#$03
0750: b0 f6     bcs   $0748
0752: fd        mov   y,a
0753: cd 00     mov   x,#$00
0755: f6 a2 14  mov   a,$14a2+y
0758: f0 0a     beq   $0764
075a: c4 31     mov   $31,a
075c: f6 a0 14  mov   a,$14a0+y
075f: c4 30     mov   $30,a
0761: 3f fc 07  call  $07fc
0764: 3d        inc   x
0765: 3d        inc   x
0766: f6 a6 14  mov   a,$14a6+y
0769: f0 0a     beq   $0775
076b: d4 31     mov   $31+x,a
076d: f6 a4 14  mov   a,$14a4+y
0770: d4 30     mov   $30+x,a
0772: 3f fc 07  call  $07fc
0775: 3d        inc   x
0776: 3d        inc   x
0777: f6 aa 14  mov   a,$14aa+y
077a: f0 0a     beq   $0786
077c: d4 31     mov   $31+x,a
077e: f6 a8 14  mov   a,$14a8+y
0781: d4 30     mov   $30+x,a
0783: 3f fc 07  call  $07fc
0786: 3d        inc   x
0787: 3d        inc   x
0788: f6 ae 14  mov   a,$14ae+y
078b: f0 0a     beq   $0797
078d: d4 31     mov   $31+x,a
078f: f6 ac 14  mov   a,$14ac+y
0792: d4 30     mov   $30+x,a
0794: 3f fc 07  call  $07fc
0797: 3d        inc   x
0798: 3d        inc   x
0799: f6 b2 14  mov   a,$14b2+y
079c: f0 0a     beq   $07a8
079e: d4 31     mov   $31+x,a
07a0: f6 b0 14  mov   a,$14b0+y
07a3: d4 30     mov   $30+x,a
07a5: 3f fc 07  call  $07fc
07a8: 3d        inc   x
07a9: 3d        inc   x
07aa: f6 b6 14  mov   a,$14b6+y
07ad: f0 0a     beq   $07b9
07af: d4 31     mov   $31+x,a
07b1: f6 b4 14  mov   a,$14b4+y
07b4: d4 30     mov   $30+x,a
07b6: 3f fc 07  call  $07fc
07b9: 3d        inc   x
07ba: 3d        inc   x
07bb: f6 ba 14  mov   a,$14ba+y
07be: f0 0a     beq   $07ca
07c0: d4 31     mov   $31+x,a
07c2: f6 b8 14  mov   a,$14b8+y
07c5: d4 30     mov   $30+x,a
07c7: 3f fc 07  call  $07fc
07ca: 3d        inc   x
07cb: 3d        inc   x
07cc: f6 be 14  mov   a,$14be+y
07cf: f0 0a     beq   $07db
07d1: d4 31     mov   $31+x,a
07d3: f6 bc 14  mov   a,$14bc+y
07d6: d4 30     mov   $30+x,a
07d8: 3f fc 07  call  $07fc
07db: 3d        inc   x
07dc: 3d        inc   x
07dd: dd        mov   a,y
07de: 5d        mov   x,a
07df: 1d        dec   x
07e0: f5 c0 14  mov   a,$14c0+x
07e3: c4 d9     mov   $d9,a
07e5: f5 c1 14  mov   a,$14c1+x
07e8: c4 da     mov   $da,a
07ea: f0 0f     beq   $07fb
07ec: 8d fb     mov   y,#$fb
07ee: f7 d9     mov   a,($d9)+y
07f0: d6 c9 14  mov   $14c9+y,a
07f3: dc        dec   y
07f4: d0 f8     bne   $07ee
07f6: f7 d9     mov   a,($d9)+y
07f8: d6 c9 14  mov   $14c9+y,a
07fb: 6f        ret

07fc: e8 ff     mov   a,#$ff
07fe: d5 c1 02  mov   $02c1+x,a
0801: d5 01 01  mov   $0101+x,a
0804: e4 e8     mov   a,$e8
0806: d5 66 03  mov   $0366+x,a
0809: e8 00     mov   a,#$00
080b: d5 00 01  mov   $0100+x,a
080e: d4 00     mov   $00+x,a
0810: d4 01     mov   $01+x,a
0812: d4 10     mov   $10+x,a
0814: d4 11     mov   $11+x,a
0816: d4 20     mov   $20+x,a
0818: d4 21     mov   $21+x,a
081a: d4 51     mov   $51+x,a
081c: d4 60     mov   $60+x,a
081e: d4 70     mov   $70+x,a
0820: d4 71     mov   $71+x,a
0822: d4 81     mov   $81+x,a
0824: d4 90     mov   $90+x,a
0826: d4 91     mov   $91+x,a
0828: d4 a0     mov   $a0+x,a
082a: d4 a1     mov   $a1+x,a
082c: d4 b0     mov   $b0+x,a
082e: d4 b1     mov   $b1+x,a
0830: d4 c0     mov   $c0+x,a
0832: d4 c1     mov   $c1+x,a
0834: d5 00 02  mov   $0200+x,a
0837: d5 01 02  mov   $0201+x,a
083a: d5 10 02  mov   $0210+x,a
083d: d5 11 02  mov   $0211+x,a
0840: d5 20 02  mov   $0220+x,a
0843: d5 21 02  mov   $0221+x,a
0846: d5 30 02  mov   $0230+x,a
0849: d5 31 02  mov   $0231+x,a
084c: d5 40 02  mov   $0240+x,a
084f: d5 41 02  mov   $0241+x,a
0852: d5 50 02  mov   $0250+x,a
0855: d5 51 02  mov   $0251+x,a
0858: d5 60 02  mov   $0260+x,a
085b: d5 61 02  mov   $0261+x,a
085e: d5 70 02  mov   $0270+x,a
0861: d5 71 02  mov   $0271+x,a
0864: d5 80 02  mov   $0280+x,a
0867: d5 81 02  mov   $0281+x,a
086a: d5 90 02  mov   $0290+x,a
086d: d5 91 02  mov   $0291+x,a
0870: d5 a0 02  mov   $02a0+x,a
0873: d5 a1 02  mov   $02a1+x,a
0876: d5 b0 02  mov   $02b0+x,a
0879: d5 b1 02  mov   $02b1+x,a
087c: d5 c0 02  mov   $02c0+x,a
087f: d5 d0 02  mov   $02d0+x,a
0882: d5 d1 02  mov   $02d1+x,a
0885: d5 e0 02  mov   $02e0+x,a
0888: d5 e1 02  mov   $02e1+x,a
088b: d5 f0 02  mov   $02f0+x,a
088e: d5 45 03  mov   $0345+x,a
0891: d5 65 03  mov   $0365+x,a
0894: d5 12 01  mov   $0112+x,a
0897: d5 13 01  mov   $0113+x,a
089a: e8 ff     mov   a,#$ff
089c: d5 f1 02  mov   $02f1+x,a
089f: 7d        mov   a,x
08a0: 1c        asl   a
08a1: 1c        asl   a
08a2: 1c        asl   a
08a3: d4 50     mov   $50+x,a
08a5: e8 01     mov   a,#$01
08a7: d4 80     mov   $80+x,a
08a9: f5 6d 13  mov   a,$136d+x
08ac: 24 d7     and   a,$d7
08ae: c4 d7     mov   $d7,a
08b0: f5 6d 13  mov   a,$136d+x
08b3: 24 d6     and   a,$d6
08b5: c4 d6     mov   $d6,a
08b7: f5 6d 13  mov   a,$136d+x
08ba: 24 d8     and   a,$d8
08bc: c4 d8     mov   $d8,a
08be: f5 6c 13  mov   a,$136c+x
08c1: 04 d5     or    a,$d5
08c3: c4 d5     mov   $d5,a
08c5: 6f        ret

08c6: e8 00     mov   a,#$00
08c8: 8d 00     mov   y,#$00
08ca: d6 00 00  mov   $0000+y,a
08cd: d6 00 01  mov   $0100+y,a
08d0: fc        inc   y
08d1: ad f0     cmp   y,#$f0
08d3: d0 f5     bne   $08ca
08d5: bc        inc   a
08d6: 8d 14     mov   y,#$14
08d8: d6 80 00  mov   $0080+y,a
08db: dc        dec   y
08dc: dc        dec   y
08dd: 10 f9     bpl   $08d8
08df: 9c        dec   a
08e0: 8d 00     mov   y,#$00
08e2: d6 00 02  mov   $0200+y,a
08e5: d6 00 03  mov   $0300+y,a
08e8: dc        dec   y
08e9: d0 f7     bne   $08e2
08eb: 8f 00 db  mov   $db,#$00
08ee: 8f 03 dc  mov   $dc,#$03
08f1: 8f 04 d9  mov   $d9,#$04
08f4: 8f 00 da  mov   $da,#$00
08f7: 8d 00     mov   y,#$00
08f9: e8 00     mov   a,#$00
08fb: d7 db     mov   ($db)+y,a
08fd: fc        inc   y
08fe: d0 02     bne   $0902
0900: ab dc     inc   $dc
0902: 8b d9     dec   $d9
0904: f8 d9     mov   x,$d9
0906: 3d        inc   x
0907: d0 f0     bne   $08f9
0909: 8b da     dec   $da
090b: f8 da     mov   x,$da
090d: 3d        inc   x
090e: d0 e9     bne   $08f9
0910: 6f        ret

0911: 6f        ret

0912: f5 f1 02  mov   a,$02f1+x
0915: 30 03     bmi   $091a
0917: 5f 34 05  jmp   $0534

091a: e8 01     mov   a,#$01
091c: d5 65 03  mov   $0365+x,a
091f: f5 6c 13  mov   a,$136c+x
0922: c4 d2     mov   $d2,a
0924: f5 6d 13  mov   a,$136d+x
0927: c4 d3     mov   $d3,a
0929: 9b 80     dec   $80+x
092b: d0 1c     bne   $0949
092d: 3f 67 0d  call  $0d67
0930: 10 14     bpl   $0946
0932: 68 c7     cmp   a,#$c7
0934: b0 0b     bcs   $0941
0936: 1c        asl   a
0937: fd        mov   y,a
0938: f6 73 0d  mov   a,$0d73+y
093b: 2d        push  a
093c: f6 72 0d  mov   a,$0d72+y
093f: 2d        push  a
0940: 6f        ret

0941: cd 81     mov   x,#$81
0943: 5f 55 14  jmp   $1455

0946: 3f 4b 0c  call  $0c4b
0949: 3f 99 09  call  $0999
094c: 3f 24 0a  call  $0a24
094f: 3f 4a 0a  call  $0a4a
0952: 3f 8e 0a  call  $0a8e
0955: 3f dc 0a  call  $0adc
0958: 3f 27 0b  call  $0b27
095b: 3f 6f 0b  call  $0b6f
095e: f5 60 02  mov   a,$0260+x
0961: 60        clrc
0962: 95 20 02  adc   a,$0220+x
0965: 0d        push  psw
0966: 60        clrc
0967: 95 c0 02  adc   a,$02c0+x
096a: d4 10     mov   $10+x,a
096c: f5 61 02  mov   a,$0261+x
096f: 95 21 02  adc   a,$0221+x
0972: 8e        pop   psw
0973: 88 00     adc   a,#$00
0975: d4 11     mov   $11+x,a
0977: 5f 34 05  jmp   $0534

097a: f5 60 02  mov   a,$0260+x
097d: 80        setc
097e: b5 d1 02  sbc   a,$02d1+x
0981: c4 d9     mov   $d9,a
0983: f5 61 02  mov   a,$0261+x
0986: b5 e0 02  sbc   a,$02e0+x
0989: 04 d9     or    a,$d9
098b: 6f        ret

098c: f5 d1 02  mov   a,$02d1+x
098f: d5 60 02  mov   $0260+x,a
0992: f5 e0 02  mov   a,$02e0+x
0995: d5 61 02  mov   $0261+x,a
0998: 6f        ret

0999: f5 00 01  mov   a,$0100+x
099c: f0 0a     beq   $09a8
099e: e4 ea     mov   a,$ea
09a0: d5 45 03  mov   $0345+x,a
09a3: e4 d0     mov   a,$d0
09a5: d5 46 03  mov   $0346+x,a
09a8: f5 45 03  mov   a,$0345+x
09ab: f0 6b     beq   $0a18
09ad: fd        mov   y,a
09ae: f5 46 03  mov   a,$0346+x
09b1: cf        mul   ya
09b2: dd        mov   a,y
09b3: c4 e5     mov   $e5,a
09b5: f5 45 03  mov   a,$0345+x
09b8: 80        setc
09b9: a4 e5     sbc   a,$e5
09bb: 1c        asl   a
09bc: 9c        dec   a
09bd: d4 01     mov   $01+x,a
09bf: e4 e5     mov   a,$e5
09c1: 1c        asl   a
09c2: d4 00     mov   $00+x,a
09c4: f5 46 03  mov   a,$0346+x
09c7: 10 07     bpl   $09d0
09c9: f5 45 03  mov   a,$0345+x
09cc: d4 00     mov   $00+x,a
09ce: 2f 05     bra   $09d5
09d0: f5 45 03  mov   a,$0345+x
09d3: d4 01     mov   $01+x,a
09d5: e4 e6     mov   a,$e6
09d7: 28 0f     and   a,#$0f
09d9: d0 17     bne   $09f2
09db: f5 56 03  mov   a,$0356+x
09de: f0 12     beq   $09f2
09e0: fd        mov   y,a
09e1: f5 45 03  mov   a,$0345+x
09e4: cf        mul   ya
09e5: dd        mov   a,y
09e6: d5 45 03  mov   $0345+x,a
09e9: d0 07     bne   $09f2
09eb: d4 00     mov   $00+x,a
09ed: d4 01     mov   $01+x,a
09ef: d5 56 03  mov   $0356+x,a
09f2: f5 55 03  mov   a,$0355+x
09f5: 30 0a     bmi   $0a01
09f7: 60        clrc
09f8: 95 46 03  adc   a,$0346+x
09fb: 90 18     bcc   $0a15
09fd: 8d ff     mov   y,#$ff
09ff: 2f 08     bra   $0a09
0a01: 60        clrc
0a02: 95 46 03  adc   a,$0346+x
0a05: b0 0e     bcs   $0a15
0a07: 8d 00     mov   y,#$00
0a09: f5 55 03  mov   a,$0355+x
0a0c: 48 ff     eor   a,#$ff
0a0e: 60        clrc
0a0f: 88 01     adc   a,#$01
0a11: d5 55 03  mov   $0355+x,a
0a14: dd        mov   a,y
0a15: d5 46 03  mov   $0346+x,a
0a18: 6f        ret

0a19: 80        setc
0a1a: a8 40     sbc   a,#$40
0a1c: 30 02     bmi   $0a20
0a1e: 1c        asl   a
0a1f: 6f        ret

0a20: 1c        asl   a
0a21: 08 80     or    a,#$80
0a23: 6f        ret

0a24: f5 91 02  mov   a,$0291+x
0a27: f0 20     beq   $0a49
0a29: 9b 91     dec   $91+x
0a2b: d0 1c     bne   $0a49
0a2d: f5 b0 02  mov   a,$02b0+x
0a30: 75 90 02  cmp   a,$0290+x
0a33: f0 08     beq   $0a3d
0a35: d5 90 02  mov   $0290+x,a
0a38: f5 a1 02  mov   a,$02a1+x
0a3b: 2f 0a     bra   $0a47
0a3d: 60        clrc
0a3e: 95 91 02  adc   a,$0291+x
0a41: d5 90 02  mov   $0290+x,a
0a44: f5 a0 02  mov   a,$02a0+x
0a47: d4 91     mov   $91+x,a
0a49: 6f        ret

0a4a: f4 81     mov   a,$81+x
0a4c: d0 07     bne   $0a55
0a4e: f5 90 02  mov   a,$0290+x
0a51: d4 90     mov   $90+x,a
0a53: 2f 33     bra   $0a88
0a55: 9b 81     dec   $81+x
0a57: d0 34     bne   $0a8d
0a59: f5 80 02  mov   a,$0280+x
0a5c: d4 81     mov   $81+x,a
0a5e: f4 90     mov   a,$90+x
0a60: 75 90 02  cmp   a,$0290+x
0a63: f0 28     beq   $0a8d
0a65: 90 0f     bcc   $0a76
0a67: f4 90     mov   a,$90+x
0a69: 80        setc
0a6a: b5 81 02  sbc   a,$0281+x
0a6d: d4 90     mov   $90+x,a
0a6f: 75 90 02  cmp   a,$0290+x
0a72: b0 14     bcs   $0a88
0a74: 2f 0d     bra   $0a83
0a76: f5 81 02  mov   a,$0281+x
0a79: 60        clrc
0a7a: 94 90     adc   a,$90+x
0a7c: d4 90     mov   $90+x,a
0a7e: 75 90 02  cmp   a,$0290+x
0a81: 90 05     bcc   $0a88
0a83: f5 90 02  mov   a,$0290+x
0a86: d4 90     mov   $90+x,a
0a88: fb 90     mov   y,$90+x
0a8a: 3f df 0c  call  $0cdf
0a8d: 6f        ret

0a8e: f4 70     mov   a,$70+x
0a90: f0 04     beq   $0a96
0a92: 9b 70     dec   $70+x
0a94: 2f 45     bra   $0adb
0a96: f5 10 02  mov   a,$0210+x
0a99: f0 40     beq   $0adb
0a9b: 30 15     bmi   $0ab2
0a9d: f5 00 02  mov   a,$0200+x
0aa0: 60        clrc
0aa1: 95 20 02  adc   a,$0220+x
0aa4: d5 20 02  mov   $0220+x,a
0aa7: e8 00     mov   a,#$00
0aa9: 95 21 02  adc   a,$0221+x
0aac: d5 21 02  mov   $0221+x,a
0aaf: 5f c7 0a  jmp   $0ac7

0ab2: f5 00 02  mov   a,$0200+x
0ab5: 48 ff     eor   a,#$ff
0ab7: bc        inc   a
0ab8: 60        clrc
0ab9: 95 20 02  adc   a,$0220+x
0abc: d5 20 02  mov   $0220+x,a
0abf: e8 ff     mov   a,#$ff
0ac1: 95 21 02  adc   a,$0221+x
0ac4: d5 21 02  mov   $0221+x,a
0ac7: 9b 71     dec   $71+x
0ac9: d0 10     bne   $0adb
0acb: f5 01 02  mov   a,$0201+x
0ace: d4 71     mov   $71+x,a
0ad0: f0 09     beq   $0adb
0ad2: f5 10 02  mov   a,$0210+x
0ad5: 48 ff     eor   a,#$ff
0ad7: bc        inc   a
0ad8: d5 10 02  mov   $0210+x,a
0adb: 6f        ret

0adc: f5 51 02  mov   a,$0251+x
0adf: d0 05     bne   $0ae6
0ae1: 3f 8c 09  call  $098c
0ae4: 2f 40     bra   $0b26
0ae6: 3f 7a 09  call  $097a
0ae9: f0 3b     beq   $0b26
0aeb: 90 1f     bcc   $0b0c
0aed: f5 51 02  mov   a,$0251+x
0af0: 48 ff     eor   a,#$ff
0af2: bc        inc   a
0af3: 60        clrc
0af4: 95 60 02  adc   a,$0260+x
0af7: d5 60 02  mov   $0260+x,a
0afa: f5 61 02  mov   a,$0261+x
0afd: 88 ff     adc   a,#$ff
0aff: d5 61 02  mov   $0261+x,a
0b02: 3f 7a 09  call  $097a
0b05: b0 1f     bcs   $0b26
0b07: 3f 8c 09  call  $098c
0b0a: 2f 1a     bra   $0b26
0b0c: f5 60 02  mov   a,$0260+x
0b0f: 60        clrc
0b10: 95 51 02  adc   a,$0251+x
0b13: d5 60 02  mov   $0260+x,a
0b16: f5 61 02  mov   a,$0261+x
0b19: 88 00     adc   a,#$00
0b1b: d5 61 02  mov   $0261+x,a
0b1e: 3f 7a 09  call  $097a
0b21: 90 03     bcc   $0b26
0b23: 3f 8c 09  call  $098c
0b26: 6f        ret

0b27: f5 d0 02  mov   a,$02d0+x
0b2a: f0 42     beq   $0b6e
0b2c: f4 51     mov   a,$51+x
0b2e: f0 1e     beq   $0b4e
0b30: 9b 51     dec   $51+x
0b32: d0 1a     bne   $0b4e
0b34: 3f 86 12  call  $1286
0b37: 10 0e     bpl   $0b47
0b39: 68 80     cmp   a,#$80
0b3b: d0 06     bne   $0b43
0b3d: f4 61     mov   a,$61+x
0b3f: d4 60     mov   $60+x,a
0b41: 2f f1     bra   $0b34
0b43: 9b 60     dec   $60+x
0b45: 2f 02     bra   $0b49
0b47: d4 21     mov   $21+x,a
0b49: f5 41 02  mov   a,$0241+x
0b4c: d4 51     mov   $51+x,a
0b4e: f4 c1     mov   a,$c1+x
0b50: f0 1c     beq   $0b6e
0b52: 74 80     cmp   a,$80+x
0b54: d0 18     bne   $0b6e
0b56: f4 61     mov   a,$61+x
0b58: d0 14     bne   $0b6e
0b5a: f4 40     mov   a,$40+x
0b5c: c4 d9     mov   $d9,a
0b5e: f4 41     mov   a,$41+x
0b60: c4 da     mov   $da,a
0b62: 8d ff     mov   y,#$ff
0b64: fc        inc   y
0b65: f7 d9     mov   a,($d9)+y
0b67: 10 fb     bpl   $0b64
0b69: fc        inc   y
0b6a: db 60     mov   $60+x,y
0b6c: db 61     mov   $61+x,y
0b6e: 6f        ret

0b6f: f5 d0 02  mov   a,$02d0+x
0b72: d0 32     bne   $0ba6
0b74: f4 80     mov   a,$80+x
0b76: f0 10     beq   $0b88
0b78: 74 c1     cmp   a,$c1+x
0b7a: d0 0c     bne   $0b88
0b7c: e8 03     mov   a,#$03
0b7e: d4 a1     mov   $a1+x,a
0b80: f4 21     mov   a,$21+x
0b82: d4 b1     mov   $b1+x,a
0b84: e8 00     mov   a,#$00
0b86: d4 b0     mov   $b0+x,a
0b88: 9b a0     dec   $a0+x
0b8a: d0 1a     bne   $0ba6
0b8c: fb a1     mov   y,$a1+x
0b8e: f6 ac 0b  mov   a,$0bac+y
0b91: 2d        push  a
0b92: f6 a7 0b  mov   a,$0ba7+y
0b95: 2d        push  a
0b96: 7d        mov   a,x
0b97: c4 e5     mov   $e5,a
0b99: 1c        asl   a
0b9a: 1c        asl   a
0b9b: 1c        asl   a
0b9c: 80        setc
0b9d: a4 e5     sbc   a,$e5
0b9f: 5c        lsr   a
0ba0: fd        mov   y,a
0ba1: f6 04 03  mov   a,$0304+y
0ba4: d4 a0     mov   $a0+x,a
0ba6: 6f        ret

0ba7: db $b1,$e3,$1e,$1f,$4a
0bac: db $0b,$0b,$0c,$0c,$0c

0bb1: f6 07 03  mov   a,$0307+y
0bb4: 80        setc
0bb5: b6 05 03  sbc   a,$0305+y
0bb8: 6d        push  y
0bb9: 4d        push  x
0bba: 2d        push  a
0bbb: f6 06 03  mov   a,$0306+y
0bbe: f0 1f     beq   $0bdf
0bc0: fb b0     mov   y,$b0+x
0bc2: 5d        mov   x,a
0bc3: 1d        dec   x
0bc4: ae        pop   a
0bc5: cf        mul   ya
0bc6: 9e        div   ya,x
0bc7: ce        pop   x
0bc8: ee        pop   y
0bc9: 60        clrc
0bca: 96 05 03  adc   a,$0305+y
0bcd: d4 21     mov   $21+x,a
0bcf: bb b0     inc   $b0+x
0bd1: f6 06 03  mov   a,$0306+y
0bd4: 74 b0     cmp   a,$b0+x
0bd6: d0 06     bne   $0bde
0bd8: bb a1     inc   $a1+x
0bda: e8 00     mov   a,#$00
0bdc: d4 b0     mov   $b0+x,a
0bde: 6f        ret

0bdf: ae        pop   a
0be0: ce        pop   x
0be1: ee        pop   y
0be2: 6f        ret

0be3: f6 07 03  mov   a,$0307+y
0be6: 80        setc
0be7: b6 09 03  sbc   a,$0309+y
0bea: 6d        push  y
0beb: 4d        push  x
0bec: 2d        push  a
0bed: f6 08 03  mov   a,$0308+y
0bf0: 2d        push  a
0bf1: 60        clrc
0bf2: b4 b0     sbc   a,$b0+x
0bf4: f0 13     beq   $0c09
0bf6: fd        mov   y,a
0bf7: ae        pop   a
0bf8: f0 20     beq   $0c1a
0bfa: 5d        mov   x,a
0bfb: ae        pop   a
0bfc: cf        mul   ya
0bfd: 9e        div   ya,x
0bfe: ce        pop   x
0bff: ee        pop   y
0c00: 60        clrc
0c01: 96 09 03  adc   a,$0309+y
0c04: d4 21     mov   $21+x,a
0c06: bb b0     inc   $b0+x
0c08: 6f        ret

0c09: ae        pop   a
0c0a: ae        pop   a
0c0b: ce        pop   x
0c0c: ee        pop   y
0c0d: f6 09 03  mov   a,$0309+y
0c10: d4 21     mov   $21+x,a
0c12: bb a1     inc   $a1+x
0c14: e8 00     mov   a,#$00
0c16: d4 b0     mov   $b0+x,a
0c18: 6f        ret

0c19: 6f        ret

0c1a: ae        pop   a
0c1b: ce        pop   x
0c1c: ee        pop   y
0c1d: 6f        ret

0c1e: 6f        ret

0c1f: f4 b1     mov   a,$b1+x
0c21: 6d        push  y
0c22: 4d        push  x
0c23: 2d        push  a
0c24: f6 0a 03  mov   a,$030a+y
0c27: 2d        push  a
0c28: 60        clrc
0c29: b4 b0     sbc   a,$b0+x
0c2b: f0 0f     beq   $0c3c
0c2d: fd        mov   y,a
0c2e: ae        pop   a
0c2f: f0 16     beq   $0c47
0c31: 5d        mov   x,a
0c32: ae        pop   a
0c33: cf        mul   ya
0c34: 9e        div   ya,x
0c35: ce        pop   x
0c36: ee        pop   y
0c37: d4 21     mov   $21+x,a
0c39: bb b0     inc   $b0+x
0c3b: 6f        ret

0c3c: ae        pop   a
0c3d: ae        pop   a
0c3e: ce        pop   x
0c3f: ee        pop   y
0c40: e8 00     mov   a,#$00
0c42: d4 21     mov   $21+x,a
0c44: bb a1     inc   $a1+x
0c46: 6f        ret

0c47: ae        pop   a
0c48: ce        pop   x
0c49: ee        pop   y
0c4a: 6f        ret

0c4b: f0 53     beq   $0ca0
0c4d: 3f af 0c  call  $0caf
0c50: fb 20     mov   y,$20+x
0c52: 60        clrc
0c53: 96 40 4f  adc   a,$4f40+y
0c56: 5b c0     lsr   $c0+x
0c58: b0 04     bcs   $0c5e
0c5a: 60        clrc
0c5b: 95 40 02  adc   a,$0240+x
0c5e: d5 b0 02  mov   $02b0+x,a
0c61: d5 90 02  mov   $0290+x,a
0c64: fd        mov   y,a
0c65: f5 80 02  mov   a,$0280+x
0c68: d4 81     mov   $81+x,a
0c6a: d0 05     bne   $0c71
0c6c: db 90     mov   $90+x,y
0c6e: 3f df 0c  call  $0cdf
0c71: 3f 08 0d  call  $0d08
0c74: f5 d0 02  mov   a,$02d0+x
0c77: f0 0e     beq   $0c87
0c79: f5 e1 02  mov   a,$02e1+x
0c7c: d0 09     bne   $0c87
0c7e: d4 60     mov   $60+x,a
0c80: d4 61     mov   $61+x,a
0c82: f5 41 02  mov   a,$0241+x
0c85: d4 51     mov   $51+x,a
0c87: f5 a1 02  mov   a,$02a1+x
0c8a: d4 91     mov   $91+x,a
0c8c: 3f 37 0d  call  $0d37
0c8f: f5 f0 02  mov   a,$02f0+x
0c92: d0 0c     bne   $0ca0
0c94: e4 d2     mov   a,$d2
0c96: 04 d4     or    a,$d4
0c98: c4 d4     mov   $d4,a
0c9a: e4 d2     mov   a,$d2
0c9c: 04 d5     or    a,$d5
0c9e: c4 d5     mov   $d5,a
0ca0: f5 12 01  mov   a,$0112+x
0ca3: f0 03     beq   $0ca8
0ca5: 3f 60 0d  call  $0d60
0ca8: 3f 4b 0d  call  $0d4b
0cab: 3f 22 0d  call  $0d22
0cae: 6f        ret

0caf: fd        mov   y,a
0cb0: f5 13 01  mov   a,$0113+x
0cb3: f0 28     beq   $0cdd
0cb5: dd        mov   a,y
0cb6: 80        setc
0cb7: a8 12     sbc   a,#$12
0cb9: 1c        asl   a
0cba: 1c        asl   a
0cbb: fd        mov   y,a
0cbc: f4 40     mov   a,$40+x
0cbe: c4 d9     mov   $d9,a
0cc0: f4 41     mov   a,$41+x
0cc2: c4 da     mov   $da,a
0cc4: f7 d9     mov   a,($d9)+y
0cc6: d4 20     mov   $20+x,a
0cc8: fc        inc   y
0cc9: f7 d9     mov   a,($d9)+y
0ccb: 2d        push  a
0ccc: fc        inc   y
0ccd: f7 d9     mov   a,($d9)+y
0ccf: d5 46 03  mov   $0346+x,a
0cd2: fc        inc   y
0cd3: f7 d9     mov   a,($d9)+y
0cd5: fd        mov   y,a
0cd6: ae        pop   a
0cd7: 6d        push  y
0cd8: 3f c4 0f  call  $0fc4
0cdb: ae        pop   a
0cdc: 6f        ret

0cdd: dd        mov   a,y
0cde: 6f        ret

0cdf: f6 a9 13  mov   a,$13a9+y
0ce2: c4 d9     mov   $d9,a
0ce4: f6 fe 13  mov   a,$13fe+y
0ce7: c4 da     mov   $da,a
0ce9: fb 20     mov   y,$20+x
0ceb: f6 00 4f  mov   a,$4f00+y
0cee: fd        mov   y,a
0cef: 6d        push  y
0cf0: e4 d9     mov   a,$d9
0cf2: cf        mul   ya
0cf3: cb dd     mov   $dd,y
0cf5: ee        pop   y
0cf6: e4 da     mov   a,$da
0cf8: cf        mul   ya
0cf9: 8f 00 de  mov   $de,#$00
0cfc: 7a dd     addw  ya,$dd
0cfe: 7a d9     addw  ya,$d9
0d00: d5 d1 02  mov   $02d1+x,a
0d03: dd        mov   a,y
0d04: d5 e0 02  mov   $02e0+x,a
0d07: 6f        ret

0d08: f5 11 02  mov   a,$0211+x
0d0b: d4 70     mov   $70+x,a
0d0d: f5 01 02  mov   a,$0201+x
0d10: 5c        lsr   a
0d11: d4 71     mov   $71+x,a
0d13: f5 50 02  mov   a,$0250+x
0d16: d5 10 02  mov   $0210+x,a
0d19: e8 00     mov   a,#$00
0d1b: d5 21 02  mov   $0221+x,a
0d1e: d5 20 02  mov   $0220+x,a
0d21: 6f        ret

0d22: f5 70 02  mov   a,$0270+x
0d25: f0 0a     beq   $0d31
0d27: f4 80     mov   a,$80+x
0d29: 80        setc
0d2a: b5 70 02  sbc   a,$0270+x
0d2d: d4 c1     mov   $c1+x,a
0d2f: 2f 05     bra   $0d36
0d31: f5 71 02  mov   a,$0271+x
0d34: d4 c1     mov   $c1+x,a
0d36: 6f        ret

0d37: f5 b1 02  mov   a,$02b1+x
0d3a: f0 0e     beq   $0d4a
0d3c: f5 e1 02  mov   a,$02e1+x
0d3f: d0 09     bne   $0d4a
0d41: e8 00     mov   a,#$00
0d43: d4 a1     mov   $a1+x,a
0d45: d4 b0     mov   $b0+x,a
0d47: bc        inc   a
0d48: d4 a0     mov   $a0+x,a
0d4a: 6f        ret

0d4b: f5 31 02  mov   a,$0231+x
0d4e: d0 05     bne   $0d55
0d50: f5 30 02  mov   a,$0230+x
0d53: d0 08     bne   $0d5d
0d55: e8 00     mov   a,#$00
0d57: d5 31 02  mov   $0231+x,a
0d5a: 3f 67 0d  call  $0d67
0d5d: d4 80     mov   $80+x,a
0d5f: 6f        ret

0d60: 3f 67 0d  call  $0d67
0d63: d5 45 03  mov   $0345+x,a
0d66: 6f        ret

0d67: e7 30     mov   a,($30+x)
0d69: bb 30     inc   $30+x
0d6b: d0 02     bne   $0d6f
0d6d: bb 31     inc   $31+x
0d6f: 08 00     or    a,#$00
0d71: 6f        ret

; vcmd dispatch table
0d72: dw $1217  ; 80
0d74: dw $0e7e  ; 81
0d76: dw $0e8d  ; 82
0d78: dw $0ea1  ; 83
0d7a: dw $0ea7  ; 84
0d7c: dw $0eb5  ; 85
0d7e: dw $0ed6  ; 86
0d80: dw $0edf  ; 87
0d82: dw $0ee7  ; 88
0d84: dw $0ef0  ; 89
0d86: dw $0ef8  ; 8a
0d88: dw $0f05  ; 8b
0d8a: dw $0f0d  ; 8c
0d8c: dw $0f37  ; 8d
0d8e: dw $0f40  ; 8e
0d90: dw $0f44  ; 8f
0d92: dw $0f68  ; 90
0d94: dw $0f60  ; 91
0d96: dw $0f71  ; 92
0d98: dw $0f7f  ; 93
0d9a: dw $0f8d  ; 94
0d9c: dw $0f9c  ; 95
0d9e: dw $0fa4  ; 96
0da0: dw $0fbb  ; 97
0da2: dw $0ffd  ; 98
0da4: dw $1006  ; 99
0da6: dw $100f  ; 9a
0da8: dw $1029  ; 9b
0daa: dw $1021  ; 9c
0dac: dw $1038  ; 9d
0dae: dw $1047  ; 9e
0db0: dw $104f  ; 9f
0db2: dw $1057  ; a0
0db4: dw $105e  ; a1
0db6: dw $107a  ; a2
0db8: dw $1097  ; a3
0dba: dw $10b0  ; a4
0dbc: dw $10ef  ; a5
0dbe: dw $1115  ; a6
0dc0: dw $1126  ; a7
0dc2: dw $1144  ; a8
0dc4: dw $1152  ; a9
0dc6: dw $1182  ; aa
0dc8: dw $1191  ; ab
0dca: dw $11a0  ; ac
0dcc: dw $11ab  ; ad
0dce: dw $11b6  ; ae
0dd0: dw $11c1  ; af
0dd2: dw $11d9  ; b0
0dd4: dw $11e2  ; b1
0dd6: dw $11eb  ; b2
0dd8: dw $11f4  ; b3
0dda: dw $1203  ; b4
0ddc: dw $120c  ; b5
0dde: dw $122d  ; b6
0de0: dw $1235  ; b7
0de2: dw $1245  ; b8
0de4: dw $126c  ; b9
0de6: dw $1160  ; ba
0de8: dw $0e34  ; bb
0dea: dw $0e3b  ; bc
0dec: dw $0e42  ; bd
0dee: dw $0e4b  ; be
0df0: dw $0e54  ; bf
0df2: dw $0e5c  ; c0
0df4: dw $0e64  ; c1
0df6: dw $0e76  ; c2
0df8: dw $0e22  ; c3
0dfa: dw $0e2b  ; c4
0dfc: dw $0e1c  ; c5
0dfe: dw $0e00  ; c6

; vcmd c6
0e00: 4d        push  x
0e01: cd 0e     mov   x,#$0e
0e03: 8d 00     mov   y,#$00
0e05: f5 01 01  mov   a,$0101+x
0e08: 68 1d     cmp   a,#$1d
0e0a: d0 01     bne   $0e0d
0e0c: fc        inc   y
0e0d: 1d        dec   x
0e0e: 1d        dec   x
0e0f: 10 f4     bpl   $0e05
0e11: ce        pop   x
0e12: ad 02     cmp   y,#$02
0e14: 90 03     bcc   $0e19
0e16: 5f 17 12  jmp   $1217

0e19: 5f 2d 09  jmp   $092d

; vcmd c5
0e1c: 3f 09 08  call  $0809
0e1f: 5f 2d 09  jmp   $092d

; vcmd c3
0e22: 3f 67 0d  call  $0d67
0e25: d5 01 01  mov   $0101+x,a
0e28: 5f 2d 09  jmp   $092d

; vcmd c4
0e2b: 3f 67 0d  call  $0d67
0e2e: d5 c1 02  mov   $02c1+x,a
0e31: 5f 2d 09  jmp   $092d

; vcmd bb
0e34: e8 01     mov   a,#$01
0e36: c4 eb     mov   $eb,a
0e38: 5f 2d 09  jmp   $092d

; vcmd bc
0e3b: e8 00     mov   a,#$00
0e3d: c4 eb     mov   $eb,a
0e3f: 5f 2d 09  jmp   $092d

; vcmd bd
0e42: 3f 67 0d  call  $0d67
0e45: d5 46 03  mov   $0346+x,a
0e48: 5f 2d 09  jmp   $092d

; vcmd be
0e4b: 3f 67 0d  call  $0d67
0e4e: d5 45 03  mov   $0345+x,a
0e51: 5f 2d 09  jmp   $092d

; vcmd bf
0e54: e8 01     mov   a,#$01
0e56: d5 12 01  mov   $0112+x,a
0e59: 5f 2d 09  jmp   $092d

; vcmd c0
0e5c: e8 00     mov   a,#$00
0e5e: d5 12 01  mov   $0112+x,a
0e61: 5f 2d 09  jmp   $092d

; vcmd c1
0e64: 3f 67 0d  call  $0d67
0e67: d4 40     mov   $40+x,a
0e69: 3f 67 0d  call  $0d67
0e6c: d4 41     mov   $41+x,a
0e6e: e8 01     mov   a,#$01
0e70: d5 13 01  mov   $0113+x,a
0e73: 5f 2d 09  jmp   $092d

; vcmd c2
0e76: e8 00     mov   a,#$00
0e78: c5 13 01  mov   $0113,a
0e7b: 5f 2d 09  jmp   $092d

; vcmd 81
0e7e: 3f 67 0d  call  $0d67
0e81: 2d        push  a
0e82: 3f 67 0d  call  $0d67
0e85: d4 31     mov   $31+x,a
0e87: ae        pop   a
0e88: d4 30     mov   $30+x,a
0e8a: 5f 2d 09  jmp   $092d

; vcmd 82
0e8d: 3f 67 0d  call  $0d67
0e90: 2d        push  a
0e91: 3f 67 0d  call  $0d67
0e94: 2d        push  a
0e95: 3f ae 12  call  $12ae
0e98: ae        pop   a
0e99: d4 31     mov   $31+x,a
0e9b: ae        pop   a
0e9c: d4 30     mov   $30+x,a
0e9e: 5f 2d 09  jmp   $092d

; vcmd 83
0ea1: 3f 95 12  call  $1295
0ea4: 5f 2d 09  jmp   $092d

; vcmd 84
0ea7: 3f 67 0d  call  $0d67
0eaa: 2d        push  a
0eab: 3f ae 12  call  $12ae
0eae: ae        pop   a
0eaf: 3f a6 12  call  $12a6
0eb2: 5f 2d 09  jmp   $092d

; vcmd 85
0eb5: fb 50     mov   y,$50+x
0eb7: f6 7f 03  mov   a,$037f+y
0eba: 9c        dec   a
0ebb: f0 10     beq   $0ecd
0ebd: d6 7f 03  mov   $037f+y,a
0ec0: f6 7e 03  mov   a,$037e+y
0ec3: d4 31     mov   $31+x,a
0ec5: f6 7d 03  mov   a,$037d+y
0ec8: d4 30     mov   $30+x,a
0eca: 5f 2d 09  jmp   $092d

0ecd: dd        mov   a,y
0ece: 80        setc
0ecf: a8 03     sbc   a,#$03
0ed1: d4 50     mov   $50+x,a
0ed3: 5f 2d 09  jmp   $092d

; vcmd 86
0ed6: 3f 67 0d  call  $0d67
0ed9: d5 30 02  mov   $0230+x,a
0edc: 5f 2d 09  jmp   $092d

; vcmd 87
0edf: e8 ff     mov   a,#$ff
0ee1: d5 31 02  mov   $0231+x,a
0ee4: 5f 2d 09  jmp   $092d

; vcmd 88
0ee7: 3f 67 0d  call  $0d67
0eea: d5 40 02  mov   $0240+x,a
0eed: 5f 2d 09  jmp   $092d

; vcmd 89
0ef0: 3f 67 0d  call  $0d67
0ef3: d4 20     mov   $20+x,a
0ef5: 5f 2d 09  jmp   $092d

; vcmd 8a
0ef8: 3f 67 0d  call  $0d67
0efb: d4 00     mov   $00+x,a
0efd: e8 00     mov   a,#$00
0eff: d5 45 03  mov   $0345+x,a
0f02: 5f 2d 09  jmp   $092d

; vcmd 8b
0f05: 3f 67 0d  call  $0d67
0f08: d4 01     mov   $01+x,a
0f0a: 5f fd 0e  jmp   $0efd

; vcmd 8c
0f0d: 3f 67 0d  call  $0d67
0f10: d5 41 02  mov   $0241+x,a
0f13: 3f 67 0d  call  $0d67
0f16: d4 40     mov   $40+x,a
0f18: 3f 67 0d  call  $0d67
0f1b: d4 41     mov   $41+x,a
0f1d: e8 00     mov   a,#$00
0f1f: d4 60     mov   $60+x,a
0f21: d5 b1 02  mov   $02b1+x,a
0f24: d5 e1 02  mov   $02e1+x,a
0f27: 9c        dec   a
0f28: d5 d0 02  mov   $02d0+x,a
0f2b: e8 01     mov   a,#$01
0f2d: d4 51     mov   $51+x,a
0f2f: 3f 86 12  call  $1286
0f32: d4 21     mov   $21+x,a
0f34: 5f 2d 09  jmp   $092d

; vcmd 8d
0f37: 3f 67 0d  call  $0d67
0f3a: d5 c0 02  mov   $02c0+x,a
0f3d: 5f 2d 09  jmp   $092d

; vcmd 8e
0f40: e8 01     mov   a,#$01
0f42: 2f 02     bra   $0f46
; vcmd 8f
0f44: e8 ff     mov   a,#$ff
0f46: d5 50 02  mov   $0250+x,a
0f49: 3f 67 0d  call  $0d67
0f4c: d5 11 02  mov   $0211+x,a
0f4f: 3f 67 0d  call  $0d67
0f52: d5 00 02  mov   $0200+x,a
0f55: 3f 67 0d  call  $0d67
0f58: d5 01 02  mov   $0201+x,a
0f5b: d4 71     mov   $71+x,a
0f5d: 5f 2d 09  jmp   $092d

; vcmd 91
0f60: e8 00     mov   a,#$00
0f62: d5 50 02  mov   $0250+x,a
0f65: 5f 2d 09  jmp   $092d

; vcmd 90
0f68: 3f 67 0d  call  $0d67
0f6b: d5 51 02  mov   $0251+x,a
0f6e: 5f 2d 09  jmp   $092d

; vcmd 92
0f71: 3f 67 0d  call  $0d67
0f74: d5 70 02  mov   $0270+x,a
0f77: e8 00     mov   a,#$00
0f79: d5 71 02  mov   $0271+x,a
0f7c: 5f 2d 09  jmp   $092d

; vcmd 93
0f7f: 3f 67 0d  call  $0d67
0f82: d5 71 02  mov   $0271+x,a
0f85: e8 00     mov   a,#$00
0f87: d5 70 02  mov   $0270+x,a
0f8a: 5f 2d 09  jmp   $092d

; vcmd 94
0f8d: 3f 67 0d  call  $0d67
0f90: d5 81 02  mov   $0281+x,a
0f93: 3f 67 0d  call  $0d67
0f96: d5 80 02  mov   $0280+x,a
0f99: 5f 2d 09  jmp   $092d

; vcmd 95
0f9c: e8 00     mov   a,#$00
0f9e: d5 80 02  mov   $0280+x,a
0fa1: 5f 2d 09  jmp   $092d

; vcmd 96
0fa4: 3f 67 0d  call  $0d67
0fa7: d5 91 02  mov   $0291+x,a
0faa: 3f 67 0d  call  $0d67
0fad: d5 a0 02  mov   $02a0+x,a
0fb0: 3f 67 0d  call  $0d67
0fb3: d5 a1 02  mov   $02a1+x,a
0fb6: d4 91     mov   $91+x,a
0fb8: 5f 2d 09  jmp   $092d

; vcmd 97
0fbb: 3f 67 0d  call  $0d67
0fbe: 3f c4 0f  call  $0fc4
0fc1: 5f 2d 09  jmp   $092d

0fc4: 2d        push  a
0fc5: e8 c2     mov   a,#$c2
0fc7: c4 d9     mov   $d9,a
0fc9: e8 14     mov   a,#$14
0fcb: c4 da     mov   $da,a
0fcd: ae        pop   a
0fce: 8d 07     mov   y,#$07
0fd0: cf        mul   ya
0fd1: 4d        push  x
0fd2: 60        clrc
0fd3: 7a d9     addw  ya,$d9
0fd5: da d9     movw  $d9,ya
0fd7: 8d 00     mov   y,#$00
0fd9: 7d        mov   a,x
0fda: c4 e5     mov   $e5,a
0fdc: 1c        asl   a
0fdd: 1c        asl   a
0fde: 1c        asl   a
0fdf: 80        setc
0fe0: a4 e5     sbc   a,$e5
0fe2: 5c        lsr   a
0fe3: 5d        mov   x,a
0fe4: f7 d9     mov   a,($d9)+y
0fe6: d5 04 03  mov   $0304+x,a
0fe9: 3d        inc   x
0fea: fc        inc   y
0feb: ad 07     cmp   y,#$07
0fed: d0 f5     bne   $0fe4
0fef: ce        pop   x
0ff0: e8 00     mov   a,#$00
0ff2: d5 d0 02  mov   $02d0+x,a
0ff5: d5 e1 02  mov   $02e1+x,a
0ff8: 9c        dec   a
0ff9: d5 b1 02  mov   $02b1+x,a
0ffc: 6f        ret

; vcmd 98
0ffd: e4 d2     mov   a,$d2
0fff: 04 d6     or    a,$d6
1001: c4 d6     mov   $d6,a
1003: 5f 2d 09  jmp   $092d

; vcmd 99
1006: e4 d3     mov   a,$d3
1008: 24 d6     and   a,$d6
100a: c4 d6     mov   $d6,a
100c: 5f 2d 09  jmp   $092d

; vcmd 9a
100f: 3f 67 0d  call  $0d67
1012: 28 1f     and   a,#$1f
1014: 08 20     or    a,#$20
1016: 8f 6c f2  mov   $f2,#$6c
1019: 00        nop
101a: 00        nop
101b: 00        nop
101c: c4 f3     mov   $f3,a
101e: 5f 2d 09  jmp   $092d

; vcmd 9c
1021: e8 ff     mov   a,#$ff
1023: d5 e1 02  mov   $02e1+x,a
1026: 5f 2d 09  jmp   $092d

; vcmd 9b
1029: e8 00     mov   a,#$00
102b: d5 e1 02  mov   $02e1+x,a
102e: d5 d0 02  mov   $02d0+x,a
1031: 9c        dec   a
1032: d5 b1 02  mov   $02b1+x,a
1035: 5f 2d 09  jmp   $092d

; vcmd 9d
1038: e8 00     mov   a,#$00
103a: d5 e1 02  mov   $02e1+x,a
103d: d5 b1 02  mov   $02b1+x,a
1040: 9c        dec   a
1041: d5 d0 02  mov   $02d0+x,a
1044: 5f 2d 09  jmp   $092d

; vcmd 9e
1047: e8 00     mov   a,#$00
1049: d5 f0 02  mov   $02f0+x,a
104c: 5f 2d 09  jmp   $092d

; vcmd 9f
104f: e8 ff     mov   a,#$ff
1051: d5 f0 02  mov   $02f0+x,a
1054: 5f 2d 09  jmp   $092d

; vcmd a0
1057: e8 01     mov   a,#$01
1059: d4 c0     mov   $c0+x,a
105b: 5f 2d 09  jmp   $092d

; vcmd a1
105e: 4d        push  x
105f: f8 e4     mov   x,$e4
1061: cd 01     mov   x,#$01
1063: 3f 4d 07  call  $074d
1066: ce        pop   x
1067: f5 6c 13  mov   a,$136c+x
106a: c4 d2     mov   $d2,a
106c: f5 6d 13  mov   a,$136d+x
106f: c4 d3     mov   $d3,a
1071: 8f 00 e0  mov   $e0,#$00
1074: 8f 7f e1  mov   $e1,#$7f
1077: 5f 2d 09  jmp   $092d

; vcmd a2
107a: 7d        mov   a,x
107b: c4 e5     mov   $e5,a
107d: 1c        asl   a
107e: 1c        asl   a
107f: 1c        asl   a
1080: 80        setc
1081: a4 e5     sbc   a,$e5
1083: 5c        lsr   a
1084: fd        mov   y,a
1085: e8 07     mov   a,#$07
1087: c4 e5     mov   $e5,a
1089: 3f 67 0d  call  $0d67
108c: d6 04 03  mov   $0304+y,a
108f: fc        inc   y
1090: 8b e5     dec   $e5
1092: d0 f5     bne   $1089
1094: 5f 29 10  jmp   $1029

; vcmd a3
1097: 3f 67 0d  call  $0d67
109a: 3f 7c 13  call  $137c
109d: 1c        asl   a
109e: c4 e5     mov   $e5,a
10a0: 60        clrc
10a1: f4 30     mov   a,$30+x
10a3: 84 e5     adc   a,$e5
10a5: d4 30     mov   $30+x,a
10a7: f4 31     mov   a,$31+x
10a9: 88 00     adc   a,#$00
10ab: d4 31     mov   $31+x,a
10ad: 5f 7e 0e  jmp   $0e7e

; vcmd a4
10b0: 3f 67 0d  call  $0d67
10b3: c4 e5     mov   $e5,a
10b5: 3f 7c 13  call  $137c
10b8: c4 d9     mov   $d9,a
10ba: 1c        asl   a
10bb: 60        clrc
10bc: 94 30     adc   a,$30+x
10be: d4 30     mov   $30+x,a
10c0: f4 31     mov   a,$31+x
10c2: 88 00     adc   a,#$00
10c4: d4 31     mov   $31+x,a
10c6: 3f 67 0d  call  $0d67
10c9: 2d        push  a
10ca: 3f 67 0d  call  $0d67
10cd: 2d        push  a
10ce: e4 e5     mov   a,$e5
10d0: 9c        dec   a
10d1: 80        setc
10d2: a4 d9     sbc   a,$d9
10d4: 1c        asl   a
10d5: c4 d9     mov   $d9,a
10d7: f4 30     mov   a,$30+x
10d9: 84 d9     adc   a,$d9
10db: d4 30     mov   $30+x,a
10dd: f4 31     mov   a,$31+x
10df: 88 00     adc   a,#$00
10e1: d4 31     mov   $31+x,a
10e3: 3f ae 12  call  $12ae
10e6: ae        pop   a
10e7: d4 31     mov   $31+x,a
10e9: ae        pop   a
10ea: d4 30     mov   $30+x,a
10ec: 5f 2d 09  jmp   $092d

; vcmd a5
10ef: 3f 67 0d  call  $0d67
10f2: 3f fe 10  call  $10fe
10f5: 16 3c 03  or    a,$033c+y
10f8: d6 3c 03  mov   $033c+y,a
10fb: 5f 2d 09  jmp   $092d

10fe: 4d        push  x
10ff: fd        mov   y,a
1100: 28 07     and   a,#$07
1102: 5d        mov   x,a
1103: dd        mov   a,y
1104: 5c        lsr   a
1105: 5c        lsr   a
1106: 5c        lsr   a
1107: fd        mov   y,a
1108: f5 0d 11  mov   a,$110d+x
110b: ce        pop   x
110c: 6f        ret

110d: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
1115: 3f 67 0d  call  $0d67
1118: 3f fe 10  call  $10fe
111b: 48 ff     eor   a,#$ff
111d: 36 3c 03  and   a,$033c+y
1120: d6 3c 03  mov   $033c+y,a
1123: 5f 2d 09  jmp   $092d

; vcmd a7
1126: 3f 67 0d  call  $0d67
1129: 3f fe 10  call  $10fe
112c: 36 3c 03  and   a,$033c+y
112f: f0 03     beq   $1134
1131: 5f 7e 0e  jmp   $0e7e

1134: f4 30     mov   a,$30+x
1136: 60        clrc
1137: 88 02     adc   a,#$02
1139: d4 30     mov   $30+x,a
113b: f4 31     mov   a,$31+x
113d: 88 00     adc   a,#$00
113f: d4 31     mov   $31+x,a
1141: 5f 2d 09  jmp   $092d

; vcmd a8
1144: 3f 67 0d  call  $0d67
1147: 3f fe 10  call  $10fe
114a: 36 3c 03  and   a,$033c+y
114d: d0 e5     bne   $1134
114f: 5f 7e 0e  jmp   $0e7e

; vcmd a9
1152: 3f 67 0d  call  $0d67
1155: 3f fe 10  call  $10fe
1158: 36 3c 03  and   a,$033c+y
115b: f0 11     beq   $116e
115d: 5f 2d 09  jmp   $092d

; vcmd ba
1160: 3f 67 0d  call  $0d67
1163: 3f fe 10  call  $10fe
1166: 36 3c 03  and   a,$033c+y
1169: d0 03     bne   $116e
116b: 5f 2d 09  jmp   $092d

116e: e8 01     mov   a,#$01
1170: d4 80     mov   $80+x,a
1172: f4 30     mov   a,$30+x
1174: 80        setc
1175: a8 02     sbc   a,#$02
1177: d4 30     mov   $30+x,a
1179: f4 31     mov   a,$31+x
117b: a8 00     sbc   a,#$00
117d: d4 31     mov   $31+x,a
117f: 5f 49 09  jmp   $0949

; vcmd aa
1182: e4 d2     mov   a,$d2
1184: 04 d7     or    a,$d7
1186: c4 d7     mov   $d7,a
1188: 8f 4d f2  mov   $f2,#$4d
118b: fa d7 f3  mov   ($f3),($d7)
118e: 5f 2d 09  jmp   $092d

; vcmd ab
1191: e4 d3     mov   a,$d3
1193: 24 d7     and   a,$d7
1195: c4 d7     mov   $d7,a
1197: 8f 4d f2  mov   $f2,#$4d
119a: fa d7 f3  mov   ($f3),($d7)
119d: 5f 2d 09  jmp   $092d

; vcmd ac
11a0: 3f 67 0d  call  $0d67
11a3: 8f 2c f2  mov   $f2,#$2c
11a6: c4 f3     mov   $f3,a
11a8: 5f 2d 09  jmp   $092d

; vcmd ad
11ab: 3f 67 0d  call  $0d67
11ae: 8f 3c f2  mov   $f2,#$3c
11b1: c4 f3     mov   $f3,a
11b3: 5f 2d 09  jmp   $092d

; vcmd ae
11b6: 3f 67 0d  call  $0d67
11b9: 8f 0d f2  mov   $f2,#$0d
11bc: c4 f3     mov   $f3,a
11be: 5f 2d 09  jmp   $092d

; vcmd af
11c1: 8d 00     mov   y,#$00
11c3: dd        mov   a,y
11c4: 1c        asl   a
11c5: 1c        asl   a
11c6: 1c        asl   a
11c7: 1c        asl   a
11c8: 08 0f     or    a,#$0f
11ca: c4 f2     mov   $f2,a
11cc: 3f 67 0d  call  $0d67
11cf: c4 f3     mov   $f3,a
11d1: fc        inc   y
11d2: ad 08     cmp   y,#$08
11d4: d0 ed     bne   $11c3
11d6: 5f 2d 09  jmp   $092d

; vcmd b0
11d9: 3f 67 0d  call  $0d67
11dc: d5 56 03  mov   $0356+x,a
11df: 5f 2d 09  jmp   $092d

; vcmd b1
11e2: e4 d2     mov   a,$d2
11e4: 04 d8     or    a,$d8
11e6: c4 d8     mov   $d8,a
11e8: 5f 2d 09  jmp   $092d

; vcmd b2
11eb: e4 d3     mov   a,$d3
11ed: 24 d8     and   a,$d8
11ef: c4 d8     mov   $d8,a
11f1: 5f 2d 09  jmp   $092d

; vcmd b3
11f4: 3f 67 0d  call  $0d67
11f7: d5 45 03  mov   $0345+x,a
11fa: 3f 67 0d  call  $0d67
11fd: d5 46 03  mov   $0346+x,a
1200: 5f 2d 09  jmp   $092d

; vcmd b4
1203: 3f 67 0d  call  $0d67
1206: d5 55 03  mov   $0355+x,a
1209: 5f 2d 09  jmp   $092d

; vcmd b5
120c: 3f 67 0d  call  $0d67
120f: 4d        push  x
1210: 3f c8 04  call  $04c8
1213: ce        pop   x
1214: 5f 2d 09  jmp   $092d

; vcmd 80
1217: e8 00     mov   a,#$00
1219: d5 65 03  mov   $0365+x,a
121c: d5 f1 02  mov   $02f1+x,a
121f: d5 c1 02  mov   $02c1+x,a
1222: 9c        dec   a
1223: d5 01 01  mov   $0101+x,a
1226: e4 d2     mov   a,$d2
1228: 04 d5     or    a,$d5
122a: c4 d5     mov   $d5,a
122c: 6f        ret

; vcmd b6
122d: 3f 67 0d  call  $0d67
1230: c4 fc     mov   $fc,a
1232: 5f 2d 09  jmp   $092d

; vcmd b7
1235: e8 ff     mov   a,#$ff
1237: d5 00 01  mov   $0100+x,a
123a: e8 01     mov   a,#$01
123c: d5 46 03  mov   $0346+x,a
123f: d5 45 03  mov   $0345+x,a
1242: 5f 2d 09  jmp   $092d

; vcmd b8
1245: e5 11 01  mov   a,$0111
1248: f0 0e     beq   $1258
124a: e4 d2     mov   a,$d2
124c: 04 d5     or    a,$d5
124e: c4 d5     mov   $d5,a
1250: 8f 5c f2  mov   $f2,#$5c
1253: c4 f3     mov   $f3,a
1255: 5f 17 12  jmp   $1217

1258: e8 01     mov   a,#$01
125a: d4 80     mov   $80+x,a
125c: f4 30     mov   a,$30+x
125e: 80        setc
125f: a8 01     sbc   a,#$01
1261: d4 30     mov   $30+x,a
1263: f4 31     mov   a,$31+x
1265: a8 00     sbc   a,#$00
1267: d4 31     mov   $31+x,a
1269: 5f 49 09  jmp   $0949

; vcmd b9
126c: 3f 67 0d  call  $0d67
126f: fd        mov   y,a
1270: f6 76 12  mov   a,$1276+y
1273: 5f 30 09  jmp   $0930

1276: 05 05 05  or    a,$0505
1279: 05 05 05  or    a,$0505
127c: 05 05 05  or    a,$0505
127f: 05 05 05  or    a,$0505
1282: 05 05 05  or    a,$0505
1285: 05 f4 40  or    a,$40f4
1288: c4 d9     mov   $d9,a
128a: f4 41     mov   a,$41+x
128c: c4 da     mov   $da,a
128e: fb 60     mov   y,$60+x
1290: bb 60     inc   $60+x
1292: f7 d9     mov   a,($d9)+y
1294: 6f        ret

1295: fb 50     mov   y,$50+x
1297: dc        dec   y
1298: f6 80 03  mov   a,$0380+y
129b: d4 31     mov   $31+x,a
129d: dc        dec   y
129e: f6 80 03  mov   a,$0380+y
12a1: d4 30     mov   $30+x,a
12a3: db 50     mov   $50+x,y
12a5: 6f        ret

12a6: fb 50     mov   y,$50+x
12a8: d6 80 03  mov   $0380+y,a
12ab: bb 50     inc   $50+x
12ad: 6f        ret

12ae: fb 50     mov   y,$50+x
12b0: f4 30     mov   a,$30+x
12b2: d6 80 03  mov   $0380+y,a
12b5: f4 31     mov   a,$31+x
12b7: d6 81 03  mov   $0381+y,a
12ba: fc        inc   y
12bb: fc        inc   y
12bc: db 50     mov   $50+x,y
12be: 6f        ret

12bf: d8 f2     mov   $f2,x
12c1: f6 00 00  mov   a,$0000+y
12c4: 3f f9 12  call  $12f9
12c7: c4 f3     mov   $f3,a
12c9: 3d        inc   x
12ca: d8 f2     mov   $f2,x
12cc: f6 01 00  mov   a,$0001+y
12cf: 3f f9 12  call  $12f9
12d2: c4 f3     mov   $f3,a
12d4: 3d        inc   x
12d5: d8 f2     mov   $f2,x
12d7: f6 10 00  mov   a,$0010+y
12da: c4 f3     mov   $f3,a
12dc: 3d        inc   x
12dd: d8 f2     mov   $f2,x
12df: f6 11 00  mov   a,$0011+y
12e2: c4 f3     mov   $f3,a
12e4: 3d        inc   x
12e5: d8 f2     mov   $f2,x
12e7: f6 20 00  mov   a,$0020+y
12ea: c4 f3     mov   $f3,a
12ec: 3d        inc   x
12ed: 3d        inc   x
12ee: 3d        inc   x
12ef: d8 f2     mov   $f2,x
12f1: f6 21 00  mov   a,$0021+y
12f4: c4 f3     mov   $f3,a
12f6: 5f 34 05  jmp   $0534

12f9: 30 17     bmi   $1312
12fb: 6d        push  y
12fc: 4d        push  x
12fd: 6d        push  y
12fe: ce        pop   x
12ff: fd        mov   y,a
1300: f5 c1 02  mov   a,$02c1+x
1303: bc        inc   a
1304: d0 04     bne   $130a
1306: e4 e8     mov   a,$e8
1308: 2f 03     bra   $130d
130a: f5 66 03  mov   a,$0366+x
130d: cf        mul   ya
130e: dd        mov   a,y
130f: ce        pop   x
1310: ee        pop   y
1311: 6f        ret

1312: 48 ff     eor   a,#$ff
1314: bc        inc   a
1315: 6d        push  y
1316: 4d        push  x
1317: 6d        push  y
1318: ce        pop   x
1319: fd        mov   y,a
131a: f5 66 03  mov   a,$0366+x
131d: cf        mul   ya
131e: dd        mov   a,y
131f: ce        pop   x
1320: ee        pop   y
1321: 48 ff     eor   a,#$ff
1323: bc        inc   a
1324: 6f        ret

1325: cd 00     mov   x,#$00
1327: f5 37 13  mov   a,$1337+x
132a: 30 0a     bmi   $1336
132c: c4 f2     mov   $f2,a
132e: f5 52 13  mov   a,$1352+x
1331: c4 f3     mov   $f3,a
1333: 3d        inc   x
1334: d0 f1     bne   $1327
1336: 6f        ret

1337: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
1355: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$4e,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

136c: db $01,$fe
136e: db $02,$fd
1370: db $04,$fb
1372: db $08,$f7
1374: db $10,$ef
1376: db $20,$df
1378: db $40,$bf
137a: db $80,$7f

137c: fd        mov   y,a
137d: 3f 9a 13  call  $139a
1380: 3f 9a 13  call  $139a
1383: 3f 9a 13  call  $139a
1386: 3f 9a 13  call  $139a
1389: 3f 9a 13  call  $139a
138c: 3f 9a 13  call  $139a
138f: 3f 9a 13  call  $139a
1392: 3f 9a 13  call  $139a
1395: e4 ec     mov   a,$ec
1397: cf        mul   ya
1398: dd        mov   a,y
1399: 6f        ret

139a: e4 ec     mov   a,$ec
139c: 28 48     and   a,#$48
139e: 88 38     adc   a,#$38
13a0: 1c        asl   a
13a1: 1c        asl   a
13a2: 2b ef     rol   $ef
13a4: 2b ee     rol   $ee
13a6: 2b ed     rol   $ed
13a8: 2b ec     rol   $ec
13aa: 6f        ret

13ab: 80        setc
13ac: 87 8f     adc   a,($8f+x)
13ae: 98 a1 aa  adc   $aa,#$a1
13b1: b5 bf cb  sbc   a,$cbbf+x
13b4: d7 e4     mov   ($e4)+y,a
13b6: f1        tcall 15
13b7: 00        nop
13b8: 0f        brk
13b9: 1f 30 42  jmp   ($4230+x)

13bc: 55 6a 7f  eor   a,$7f6a+x
13bf: 96 ae c8  adc   a,$c8ae+y
13c2: e3 00 1e  bbs7  $00,$13e3
13c5: 3e 60     cmp   x,$60
13c7: 85 ab d4  adc   a,$d4ab
13ca: ff        stop
13cb: 2c 5d 90  rol   $905d
13ce: c6        mov   (x),a
13cf: 00        nop
13d0: 3c        rol   a
13d1: 7d        mov   a,x
13d2: c1        tcall 12
13d3: 0a 56 a8  or1   c,$0856,5
13d6: fe 59     dbnz  y,$1431
13d8: ba 20     movw  ya,$20
13da: 8d 00     mov   y,#$00
13dc: 79        cmp   (x),(y)
13dd: fa 83 14  mov   ($14),($83)
13e0: ad 50     cmp   y,#$50
13e2: fc        inc   y
13e3: b2 74     clr5  $74
13e5: 41        tcall 4
13e6: 1a 00     decw  $00
13e8: f3 f5 07  bbc7  $f5,$13f2
13eb: 28 5b     and   a,#$5b
13ed: a0        ei
13ee: f9 65     mov   x,$65+y
13f0: e8 82     mov   a,#$82
13f2: 34 00     and   a,$00+x
13f4: e7 eb     mov   a,($eb+x)
13f6: 0e 51 b7  tset1 $b751
13f9: 41        tcall 4
13fa: f2 cb     clr7  $cb
13fc: d1        tcall 13
13fd: 04 68     or    a,$68
13ff: 00        nop
1400: 00        nop
1401: 00        nop
1402: 00        nop
1403: 00        nop
1404: 00        nop
1405: 00        nop
1406: 00        nop
1407: 00        nop
1408: 00        nop
1409: 00        nop
140a: 00        nop
140b: 00        nop
140c: 01        tcall 0
140d: 01        tcall 0
140e: 01        tcall 0
140f: 01        tcall 0
1410: 01        tcall 0
1411: 01        tcall 0
1412: 01        tcall 0
1413: 01        tcall 0
1414: 01        tcall 0
1415: 01        tcall 0
1416: 01        tcall 0
1417: 01        tcall 0
1418: 02 02     set0  $02
141a: 02 02     set0  $02
141c: 02 02     set0  $02
141e: 02 02     set0  $02
1420: 03 03 03  bbs0  $03,$1426
1423: 03 04 04  bbs0  $04,$142a
1426: 04 04     or    a,$04
1428: 05 05 05  or    a,$0505
142b: 05 06 06  or    a,$0606
142e: 07 07     or    a,($07+x)
1430: 08 08     or    a,#$08
1432: 08 09     or    a,#$09
1434: 0a 0a 0b  or1   c,$0b0a,0
1437: 0b 0c     asl   $0c
1439: 0d        push  psw
143a: 0e 0f 10  tset1 $100f
143d: 10 11     bpl   $1450
143f: 13 14 15  bbc0  $14,$1457
1442: 16 17 19  or    a,$1917+y
1445: 1a 1c     decw  $1c
1447: 1e 20 21  cmp   x,$2120
144a: 23 26 28  bbs1  $26,$1475
144d: 2a 2d 2f  or1   c,!($0f2d,1)
1450: 32 35     clr1  $35
1452: 39        and   (x),(y)
1453: 3c        rol   a
1454: 40        setp
1455: cd ef     mov   x,#$ef
1457: bd        mov   sp,x
1458: e8 00     mov   a,#$00
145a: c6        mov   (x),a
145b: 1d        dec   x
145c: d0 fc     bne   $145a
145e: 8f aa f4  mov   $f4,#$aa
1461: 8f bb f5  mov   $f5,#$bb
1464: 78 cc f4  cmp   $f4,#$cc
1467: d0 fb     bne   $1464
1469: 2f 1b     bra   $1486
146b: eb f4     mov   y,$f4
146d: d0 fc     bne   $146b
146f: 7e f4     cmp   y,$f4
1471: d0 0d     bne   $1480
1473: e4 f5     mov   a,$f5
1475: cb f4     mov   $f4,y
1477: d7 00     mov   ($00)+y,a
1479: fc        inc   y
147a: d0 f3     bne   $146f
147c: ab 01     inc   $01
147e: 2f ef     bra   $146f
1480: 10 ed     bpl   $146f
1482: 7e f4     cmp   y,$f4
1484: 10 e9     bpl   $146f
1486: ba f6     movw  ya,$f6
1488: da 00     movw  $00,ya
148a: ba f4     movw  ya,$f4
148c: c4 f4     mov   $f4,a
148e: dd        mov   a,y
148f: 5d        mov   x,a
1490: d0 d9     bne   $146b
1492: 1f 00 00  jmp   ($0000+x)

