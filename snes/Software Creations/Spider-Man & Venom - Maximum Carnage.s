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
041a: 3f d8 12  call  $12d8
041d: 3f e9 08  call  $08e9
0420: 8f 1b ec  mov   $ec,#$1b
0423: 8f 09 ed  mov   $ed,#$09
0426: 8f 13 ee  mov   $ee,#$13
0429: 8f 3a ef  mov   $ef,#$3a
042c: 8f 50 e8  mov   $e8,#$50
042f: 8f ff e9  mov   $e9,#$ff
0432: 8f 80 d1  mov   $d1,#$80
0435: e8 80     mov   a,#$80
0437: c4 f6     mov   $f6,a
0439: 64 f6     cmp   a,$f6
043b: d0 fc     bne   $0439
043d: e8 00     mov   a,#$00
043f: c4 f4     mov   $f4,a
0441: c4 f5     mov   $f5,a
0443: 3f d5 04  call  $04d5
0446: 3f c4 05  call  $05c4
0449: 8f 6c f2  mov   $f2,#$6c
044c: 8f 33 f3  mov   $f3,#$33
044f: cd 00     mov   x,#$00
0451: 3f 70 07  call  $0770
0454: 3f a1 06  call  $06a1
0457: 9d        mov   x,sp
0458: c8 22     cmp   x,#$22
045a: 90 3f     bcc   $049b
045c: 3d        inc   x
045d: d0 3c     bne   $049b
045f: e5 f1 02  mov   a,$02f1
0462: 05 f3 02  or    a,$02f3
0465: 05 f5 02  or    a,$02f5
0468: 05 f7 02  or    a,$02f7
046b: 05 f9 02  or    a,$02f9
046e: 05 fb 02  or    a,$02fb
0471: 05 fd 02  or    a,$02fd
0474: 05 ff 02  or    a,$02ff
0477: 5d        mov   x,a
0478: d8 f7     mov   $f7,x
047a: 3f 92 05  call  $0592
047d: e5 44 03  mov   a,$0344
0480: 60        clrc
0481: 84 ff     adc   a,$ff
0483: c5 44 03  mov   $0344,a
0486: 68 04     cmp   a,#$04
0488: 90 cd     bcc   $0457
048a: 80        setc
048b: a8 04     sbc   a,#$04
048d: c5 44 03  mov   $0344,a
0490: e5 11 01  mov   a,$0111
0493: f0 00     beq   $0495
0495: 3f a1 06  call  $06a1
0498: 5f 57 04  jmp   $0457

049b: 7d        mov   a,x
049c: 9c        dec   a
049d: cd 89     mov   x,#$89
049f: 5f 08 14  jmp   $1408

04a2: e4 ff     mov   a,$ff
04a4: e4 e1     mov   a,$e1
04a6: eb ff     mov   y,$ff
04a8: f0 fc     beq   $04a6
04aa: 80        setc
04ab: a8 08     sbc   a,#$08
04ad: 10 02     bpl   $04b1
04af: e8 00     mov   a,#$00
04b1: 8f 0c f2  mov   $f2,#$0c
04b4: c4 f3     mov   $f3,a
04b6: 8f 1c f2  mov   $f2,#$1c
04b9: c4 f3     mov   $f3,a
04bb: 08 00     or    a,#$00
04bd: d0 e7     bne   $04a6
04bf: c4 f6     mov   $f6,a
04c1: e8 ff     mov   a,#$ff
04c3: 8f 5c f2  mov   $f2,#$5c
04c6: c4 f3     mov   $f3,a
04c8: e8 80     mov   a,#$80
04ca: c4 f1     mov   $f1,a
04cc: 8f 6c f2  mov   $f2,#$6c
04cf: 8f e0 f3  mov   $f3,#$e0
04d2: 5f c0 ff  jmp   $ffc0

04d5: 8f 00 f1  mov   $f1,#$00
04d8: 00        nop
04d9: 00        nop
04da: 00        nop
04db: 00        nop
04dc: 8f 85 fc  mov   $fc,#$85
04df: 8f 04 f1  mov   $f1,#$04
04e2: 6f        ret

04e3: cd 02     mov   x,#$02
04e5: 5f 08 14  jmp   $1408

04e8: fd        mov   y,a
04e9: 68 21     cmp   a,#$21
04eb: b0 f6     bcs   $04e3
04ed: cd 0e     mov   x,#$0e
04ef: f6 8d 15  mov   a,$158d+y
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
0523: f6 8d 15  mov   a,$158d+y
0526: 28 7f     and   a,#$7f
0528: 64 e5     cmp   a,$e5
052a: b0 02     bcs   $052e
052c: 60        clrc
052d: 6f        ret

052e: dd        mov   a,y
052f: d5 01 01  mov   $0101+x,a
0532: f6 8d 15  mov   a,$158d+y
0535: 28 7f     and   a,#$7f
0537: d5 c1 02  mov   $02c1+x,a
053a: 3f 2c 08  call  $082c
053d: f6 4b 15  mov   a,$154b+y
0540: d4 30     mov   $30+x,a
0542: f6 6c 15  mov   a,$156c+y
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

058d: cd 80     mov   x,#$80
058f: 5f 08 14  jmp   $1408

0592: 3f d4 05  call  $05d4
0595: e4 f6     mov   a,$f6
0597: 28 c0     and   a,#$c0
0599: 64 d1     cmp   a,$d1
059b: f0 14     beq   $05b1
059d: fd        mov   y,a
059e: c4 d1     mov   $d1,a
05a0: e4 f6     mov   a,$f6
05a2: 28 3f     and   a,#$3f
05a4: 5d        mov   x,a
05a5: f5 2f 06  mov   a,$062f+x
05a8: 2d        push  a
05a9: f5 23 06  mov   a,$0623+x
05ac: 2d        push  a
05ad: e4 f7     mov   a,$f7
05af: cb f6     mov   $f6,y
05b1: 60        clrc
05b2: 6f        ret

05b3: d8 f4     mov   $f4,x
05b5: 3d        inc   x
05b6: d0 03     bne   $05bb
05b8: 5f a2 04  jmp   $04a2

05bb: e4 f4     mov   a,$f4
05bd: d0 fc     bne   $05bb
05bf: c4 f4     mov   $f4,a
05c1: 3d        inc   x
05c2: d0 0c     bne   $05d0
05c4: 8f 78 db  mov   $db,#$78
05c7: 8f 30 dc  mov   $dc,#$30
05ca: e8 00     mov   a,#$00
05cc: c5 10 01  mov   $0110,a
05cf: 6f        ret

05d0: ac 11 01  inc   $0111
05d3: 6f        ret

05d4: f8 f4     mov   x,$f4
05d6: f0 4a     beq   $0622
05d8: f8 f4     mov   x,$f4
05da: 30 d7     bmi   $05b3
05dc: 8d 00     mov   y,#$00
05de: e4 f5     mov   a,$f5
05e0: d8 f4     mov   $f4,x
05e2: d7 db     mov   ($db)+y,a
05e4: 3a db     incw  $db
05e6: 3e f4     cmp   x,$f4
05e8: f0 fc     beq   $05e6
05ea: f8 f4     mov   x,$f4
05ec: d0 f0     bne   $05de
05ee: d8 f4     mov   $f4,x
05f0: 78 78 db  cmp   $db,#$78
05f3: d0 0b     bne   $0600
05f5: 78 30 dc  cmp   $dc,#$30
05f8: d0 06     bne   $0600
05fa: 8f 78 db  mov   $db,#$78
05fd: 8f 30 dc  mov   $dc,#$30
0600: e5 78 30  mov   a,$3078
0603: 28 01     and   a,#$01
0605: 68 01     cmp   a,#$01
0607: f0 08     beq   $0611
0609: e5 78 30  mov   a,$3078
060c: 08 03     or    a,#$03
060e: c5 78 30  mov   $3078,a
0611: e5 10 01  mov   a,$0110
0614: d0 0c     bne   $0622
0616: ac 10 01  inc   $0110
0619: e8 00     mov   a,#$00
061b: c5 11 01  mov   $0111,a
061e: 60        clrc
061f: 5f 4e 06  jmp   $064e

0622: 60        clrc
0623: 6f        ret

; $063c
; $064e
; $0659
; $066f
; $0674
; $0679
; $0691
; $0694
; $0697
; $069a
; $0686
; $069d
0624: db $3c,$4e,$59,$6f,$74,$79,$91,$94,$97,$9a,$86,$9d
0630: db $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06

063c: 5d        mov   x,a
063d: 1d        dec   x
063e: d8 e4     mov   $e4,x
0640: 3f 70 07  call  $0770
0643: 8f 00 e0  mov   $e0,#$00
0646: 8f 7f e1  mov   $e1,#$7f
0649: 3f d5 04  call  $04d5
064c: 80        setc
064d: 6f        ret

064e: 3f e8 04  call  $04e8
0651: 8f 00 e0  mov   $e0,#$00
0654: 8f 7f e1  mov   $e1,#$7f
0657: 60        clrc
0658: 6f        ret

0659: 8d 00     mov   y,#$00
065b: bc        inc   a
065c: 9c        dec   a
065d: 10 01     bpl   $0660
065f: dc        dec   y
0660: cb e3     mov   $e3,y
0662: 1c        asl   a
0663: 2b e3     rol   $e3
0665: 1c        asl   a
0666: 2b e3     rol   $e3
0668: 1c        asl   a
0669: 2b e3     rol   $e3
066b: c4 e2     mov   $e2,a
066d: 60        clrc
066e: 6f        ret

066f: 8f 55 f5  mov   $f5,#$55
0672: 60        clrc
0673: 6f        ret

0674: 3f 3c 06  call  $063c
0677: 60        clrc
0678: 6f        ret

0679: 3f eb 10  call  $10eb
067c: 48 ff     eor   a,#$ff
067e: 36 3c 03  and   a,$033c+y
0681: d6 3c 03  mov   $033c+y,a
0684: 60        clrc
0685: 6f        ret

0686: 3f eb 10  call  $10eb
0689: 16 3c 03  or    a,$033c+y
068c: d6 3c 03  mov   $033c+y,a
068f: 60        clrc
0690: 6f        ret

0691: c4 e8     mov   $e8,a
0693: 6f        ret

0694: c4 e9     mov   $e9,a
0696: 6f        ret

0697: c4 ea     mov   $ea,a
0699: 6f        ret

069a: c4 d0     mov   $d0,a
069c: 6f        ret

069d: c5 24 12  mov   $1224,a
06a0: 6f        ret

06a1: e4 eb     mov   a,$eb
06a3: f0 03     beq   $06a8
06a5: 3f 4e 05  call  $054e
06a8: ab e6     inc   $e6
06aa: ba e2     movw  ya,$e2
06ac: f0 24     beq   $06d2
06ae: 30 12     bmi   $06c2
06b0: ba e0     movw  ya,$e0
06b2: 7a e2     addw  ya,$e2
06b4: 10 08     bpl   $06be
06b6: 8f 00 e2  mov   $e2,#$00
06b9: 8f 00 e3  mov   $e3,#$00
06bc: 8d 7f     mov   y,#$7f
06be: da e0     movw  $e0,ya
06c0: 2f 10     bra   $06d2
06c2: ba e0     movw  ya,$e0
06c4: 7a e2     addw  ya,$e2
06c6: 10 08     bpl   $06d0
06c8: 8f 00 e2  mov   $e2,#$00
06cb: 8f 00 e3  mov   $e3,#$00
06ce: 8d 00     mov   y,#$00
06d0: da e0     movw  $e0,ya
06d2: 8f 4c f2  mov   $f2,#$4c
06d5: fa d4 f3  mov   ($f3),($d4)
06d8: 8f 00 d4  mov   $d4,#$00
06db: 8f 3d f2  mov   $f2,#$3d
06de: fa d6 f3  mov   ($f3),($d6)
06e1: cd 00     mov   x,#$00
06e3: 3f 35 09  call  $0935
06e6: b0 2f     bcs   $0717
06e8: cd 02     mov   x,#$02
06ea: 3f 35 09  call  $0935
06ed: b0 28     bcs   $0717
06ef: cd 04     mov   x,#$04
06f1: 3f 35 09  call  $0935
06f4: b0 21     bcs   $0717
06f6: cd 06     mov   x,#$06
06f8: 3f 35 09  call  $0935
06fb: b0 1a     bcs   $0717
06fd: cd 08     mov   x,#$08
06ff: 3f 35 09  call  $0935
0702: b0 13     bcs   $0717
0704: cd 0a     mov   x,#$0a
0706: 3f 35 09  call  $0935
0709: b0 0c     bcs   $0717
070b: cd 0c     mov   x,#$0c
070d: 3f 35 09  call  $0935
0710: b0 05     bcs   $0717
0712: cd 0e     mov   x,#$0e
0714: 3f 35 09  call  $0935
0717: 8f 5c f2  mov   $f2,#$5c
071a: fa d5 f3  mov   ($f3),($d5)
071d: 8f 00 d5  mov   $d5,#$00
0720: e4 e1     mov   a,$e1
0722: 8f 0c f2  mov   $f2,#$0c
0725: c4 f3     mov   $f3,a
0727: 8f 1c f2  mov   $f2,#$1c
072a: c4 f3     mov   $f3,a
072c: 8d 00     mov   y,#$00
072e: cd 00     mov   x,#$00
0730: 3f 6d 12  call  $126d
0733: 8d 02     mov   y,#$02
0735: cd 10     mov   x,#$10
0737: 3f 6d 12  call  $126d
073a: 8d 04     mov   y,#$04
073c: cd 20     mov   x,#$20
073e: 3f 6d 12  call  $126d
0741: 8d 06     mov   y,#$06
0743: cd 30     mov   x,#$30
0745: 3f 6d 12  call  $126d
0748: 8d 08     mov   y,#$08
074a: cd 40     mov   x,#$40
074c: 3f 6d 12  call  $126d
074f: 8d 0a     mov   y,#$0a
0751: cd 50     mov   x,#$50
0753: 3f 6d 12  call  $126d
0756: 8d 0c     mov   y,#$0c
0758: cd 60     mov   x,#$60
075a: 3f 6d 12  call  $126d
075d: 8d 0e     mov   y,#$0e
075f: cd 70     mov   x,#$70
0761: 3f 6d 12  call  $126d
0764: 8f 5c f2  mov   $f2,#$5c
0767: 8f 00 f3  mov   $f3,#$00
076a: 6f        ret

076b: cd 01     mov   x,#$01
076d: 5f 08 14  jmp   $1408

0770: 7d        mov   a,x
0771: 68 03     cmp   a,#$03
0773: b0 f6     bcs   $076b
0775: fd        mov   y,a
0776: cd 00     mov   x,#$00
0778: f6 16 14  mov   a,$1416+y
077b: f0 0a     beq   $0787
077d: c4 31     mov   $31,a
077f: f6 13 14  mov   a,$1413+y
0782: c4 30     mov   $30,a
0784: 3f 1f 08  call  $081f
0787: 3d        inc   x
0788: 3d        inc   x
0789: f6 1c 14  mov   a,$141c+y
078c: f0 0a     beq   $0798
078e: d4 31     mov   $31+x,a
0790: f6 19 14  mov   a,$1419+y
0793: d4 30     mov   $30+x,a
0795: 3f 1f 08  call  $081f
0798: 3d        inc   x
0799: 3d        inc   x
079a: f6 22 14  mov   a,$1422+y
079d: f0 0a     beq   $07a9
079f: d4 31     mov   $31+x,a
07a1: f6 1f 14  mov   a,$141f+y
07a4: d4 30     mov   $30+x,a
07a6: 3f 1f 08  call  $081f
07a9: 3d        inc   x
07aa: 3d        inc   x
07ab: f6 28 14  mov   a,$1428+y
07ae: f0 0a     beq   $07ba
07b0: d4 31     mov   $31+x,a
07b2: f6 25 14  mov   a,$1425+y
07b5: d4 30     mov   $30+x,a
07b7: 3f 1f 08  call  $081f
07ba: 3d        inc   x
07bb: 3d        inc   x
07bc: f6 2e 14  mov   a,$142e+y
07bf: f0 0a     beq   $07cb
07c1: d4 31     mov   $31+x,a
07c3: f6 2b 14  mov   a,$142b+y
07c6: d4 30     mov   $30+x,a
07c8: 3f 1f 08  call  $081f
07cb: 3d        inc   x
07cc: 3d        inc   x
07cd: f6 34 14  mov   a,$1434+y
07d0: f0 0a     beq   $07dc
07d2: d4 31     mov   $31+x,a
07d4: f6 31 14  mov   a,$1431+y
07d7: d4 30     mov   $30+x,a
07d9: 3f 1f 08  call  $081f
07dc: 3d        inc   x
07dd: 3d        inc   x
07de: f6 3a 14  mov   a,$143a+y
07e1: f0 0a     beq   $07ed
07e3: d4 31     mov   $31+x,a
07e5: f6 37 14  mov   a,$1437+y
07e8: d4 30     mov   $30+x,a
07ea: 3f 1f 08  call  $081f
07ed: 3d        inc   x
07ee: 3d        inc   x
07ef: f6 40 14  mov   a,$1440+y
07f2: f0 0a     beq   $07fe
07f4: d4 31     mov   $31+x,a
07f6: f6 3d 14  mov   a,$143d+y
07f9: d4 30     mov   $30+x,a
07fb: 3f 1f 08  call  $081f
07fe: 3d        inc   x
07ff: 3d        inc   x
0800: dd        mov   a,y
0801: 5d        mov   x,a
0802: 1d        dec   x
0803: f5 43 14  mov   a,$1443+x
0806: c4 d9     mov   $d9,a
0808: f5 45 14  mov   a,$1445+x
080b: c4 da     mov   $da,a
080d: f0 0f     beq   $081e
080f: 8d fb     mov   y,#$fb
0811: f7 d9     mov   a,($d9)+y
0813: d6 4e 14  mov   $144e+y,a
0816: dc        dec   y
0817: d0 f8     bne   $0811
0819: f7 d9     mov   a,($d9)+y
081b: d6 4e 14  mov   $144e+y,a
081e: 6f        ret

081f: e8 ff     mov   a,#$ff
0821: d5 c1 02  mov   $02c1+x,a
0824: d5 01 01  mov   $0101+x,a
0827: e4 e8     mov   a,$e8
0829: d5 66 03  mov   $0366+x,a
082c: e8 00     mov   a,#$00
082e: d5 00 01  mov   $0100+x,a
0831: d4 00     mov   $00+x,a
0833: d4 01     mov   $01+x,a
0835: d4 10     mov   $10+x,a
0837: d4 11     mov   $11+x,a
0839: d4 20     mov   $20+x,a
083b: d4 21     mov   $21+x,a
083d: d4 51     mov   $51+x,a
083f: d4 60     mov   $60+x,a
0841: d4 70     mov   $70+x,a
0843: d4 71     mov   $71+x,a
0845: d4 81     mov   $81+x,a
0847: d4 90     mov   $90+x,a
0849: d4 91     mov   $91+x,a
084b: d4 a0     mov   $a0+x,a
084d: d4 a1     mov   $a1+x,a
084f: d4 b0     mov   $b0+x,a
0851: d4 b1     mov   $b1+x,a
0853: d4 c0     mov   $c0+x,a
0855: d4 c1     mov   $c1+x,a
0857: d5 00 02  mov   $0200+x,a
085a: d5 01 02  mov   $0201+x,a
085d: d5 10 02  mov   $0210+x,a
0860: d5 11 02  mov   $0211+x,a
0863: d5 20 02  mov   $0220+x,a
0866: d5 21 02  mov   $0221+x,a
0869: d5 30 02  mov   $0230+x,a
086c: d5 31 02  mov   $0231+x,a
086f: d5 40 02  mov   $0240+x,a
0872: d5 41 02  mov   $0241+x,a
0875: d5 50 02  mov   $0250+x,a
0878: d5 51 02  mov   $0251+x,a
087b: d5 60 02  mov   $0260+x,a
087e: d5 61 02  mov   $0261+x,a
0881: d5 70 02  mov   $0270+x,a
0884: d5 71 02  mov   $0271+x,a
0887: d5 80 02  mov   $0280+x,a
088a: d5 81 02  mov   $0281+x,a
088d: d5 90 02  mov   $0290+x,a
0890: d5 91 02  mov   $0291+x,a
0893: d5 a0 02  mov   $02a0+x,a
0896: d5 a1 02  mov   $02a1+x,a
0899: d5 b0 02  mov   $02b0+x,a
089c: d5 b1 02  mov   $02b1+x,a
089f: d5 c0 02  mov   $02c0+x,a
08a2: d5 d0 02  mov   $02d0+x,a
08a5: d5 d1 02  mov   $02d1+x,a
08a8: d5 e0 02  mov   $02e0+x,a
08ab: d5 e1 02  mov   $02e1+x,a
08ae: d5 f0 02  mov   $02f0+x,a
08b1: d5 45 03  mov   $0345+x,a
08b4: d5 65 03  mov   $0365+x,a
08b7: d5 12 01  mov   $0112+x,a
08ba: d5 13 01  mov   $0113+x,a
08bd: e8 ff     mov   a,#$ff
08bf: d5 f1 02  mov   $02f1+x,a
08c2: 7d        mov   a,x
08c3: 1c        asl   a
08c4: 1c        asl   a
08c5: 1c        asl   a
08c6: d4 50     mov   $50+x,a
08c8: e8 01     mov   a,#$01
08ca: d4 80     mov   $80+x,a
08cc: f5 20 13  mov   a,$1320+x
08cf: 24 d7     and   a,$d7
08d1: c4 d7     mov   $d7,a
08d3: f5 20 13  mov   a,$1320+x
08d6: 24 d6     and   a,$d6
08d8: c4 d6     mov   $d6,a
08da: f5 20 13  mov   a,$1320+x
08dd: 24 d8     and   a,$d8
08df: c4 d8     mov   $d8,a
08e1: f5 1f 13  mov   a,$131f+x
08e4: 04 d5     or    a,$d5
08e6: c4 d5     mov   $d5,a
08e8: 6f        ret

08e9: e8 00     mov   a,#$00
08eb: 8d 00     mov   y,#$00
08ed: d6 00 00  mov   $0000+y,a
08f0: d6 00 01  mov   $0100+y,a
08f3: fc        inc   y
08f4: ad f0     cmp   y,#$f0
08f6: d0 f5     bne   $08ed
08f8: bc        inc   a
08f9: 8d 14     mov   y,#$14
08fb: d6 80 00  mov   $0080+y,a
08fe: dc        dec   y
08ff: dc        dec   y
0900: 10 f9     bpl   $08fb
0902: 9c        dec   a
0903: 8d 00     mov   y,#$00
0905: d6 00 02  mov   $0200+y,a
0908: d6 00 03  mov   $0300+y,a
090b: dc        dec   y
090c: d0 f7     bne   $0905
090e: 8f 00 db  mov   $db,#$00
0911: 8f 03 dc  mov   $dc,#$03
0914: 8f 04 d9  mov   $d9,#$04
0917: 8f 00 da  mov   $da,#$00
091a: 8d 00     mov   y,#$00
091c: e8 00     mov   a,#$00
091e: d7 db     mov   ($db)+y,a
0920: fc        inc   y
0921: d0 02     bne   $0925
0923: ab dc     inc   $dc
0925: 8b d9     dec   $d9
0927: f8 d9     mov   x,$d9
0929: 3d        inc   x
092a: d0 f0     bne   $091c
092c: 8b da     dec   $da
092e: f8 da     mov   x,$da
0930: 3d        inc   x
0931: d0 e9     bne   $091c
0933: 6f        ret

0934: 6f        ret

0935: f5 f1 02  mov   a,$02f1+x
0938: 30 03     bmi   $093d
093a: 5f 92 05  jmp   $0592

093d: e8 01     mov   a,#$01
093f: d5 65 03  mov   $0365+x,a
0942: f5 1f 13  mov   a,$131f+x
0945: c4 d2     mov   $d2,a
0947: f5 20 13  mov   a,$1320+x
094a: c4 d3     mov   $d3,a
094c: 9b 80     dec   $80+x
094e: d0 1c     bne   $096c
0950: 3f 8a 0d  call  $0d8a
0953: 10 14     bpl   $0969
0955: 68 bd     cmp   a,#$bd
0957: b0 0b     bcs   $0964
0959: 1c        asl   a
095a: fd        mov   y,a
095b: f6 96 0d  mov   a,$0d96+y
095e: 2d        push  a
095f: f6 95 0d  mov   a,$0d95+y
0962: 2d        push  a
0963: 6f        ret

0964: cd 81     mov   x,#$81
0966: 5f 08 14  jmp   $1408

0969: 3f 6e 0c  call  $0c6e
096c: 3f bc 09  call  $09bc
096f: 3f 47 0a  call  $0a47
0972: 3f 6d 0a  call  $0a6d
0975: 3f b1 0a  call  $0ab1
0978: 3f ff 0a  call  $0aff
097b: 3f 4a 0b  call  $0b4a
097e: 3f 92 0b  call  $0b92
0981: f5 60 02  mov   a,$0260+x
0984: 60        clrc
0985: 95 20 02  adc   a,$0220+x
0988: 0d        push  psw
0989: 60        clrc
098a: 95 c0 02  adc   a,$02c0+x
098d: d4 10     mov   $10+x,a
098f: f5 61 02  mov   a,$0261+x
0992: 95 21 02  adc   a,$0221+x
0995: 8e        pop   psw
0996: 88 00     adc   a,#$00
0998: d4 11     mov   $11+x,a
099a: 5f 92 05  jmp   $0592

099d: f5 60 02  mov   a,$0260+x
09a0: 80        setc
09a1: b5 d1 02  sbc   a,$02d1+x
09a4: c4 d9     mov   $d9,a
09a6: f5 61 02  mov   a,$0261+x
09a9: b5 e0 02  sbc   a,$02e0+x
09ac: 04 d9     or    a,$d9
09ae: 6f        ret

09af: f5 d1 02  mov   a,$02d1+x
09b2: d5 60 02  mov   $0260+x,a
09b5: f5 e0 02  mov   a,$02e0+x
09b8: d5 61 02  mov   $0261+x,a
09bb: 6f        ret

09bc: f5 00 01  mov   a,$0100+x
09bf: f0 0a     beq   $09cb
09c1: e4 ea     mov   a,$ea
09c3: d5 45 03  mov   $0345+x,a
09c6: e4 d0     mov   a,$d0
09c8: d5 46 03  mov   $0346+x,a
09cb: f5 45 03  mov   a,$0345+x
09ce: f0 6b     beq   $0a3b
09d0: fd        mov   y,a
09d1: f5 46 03  mov   a,$0346+x
09d4: cf        mul   ya
09d5: dd        mov   a,y
09d6: c4 e5     mov   $e5,a
09d8: f5 45 03  mov   a,$0345+x
09db: 80        setc
09dc: a4 e5     sbc   a,$e5
09de: 1c        asl   a
09df: 9c        dec   a
09e0: d4 01     mov   $01+x,a
09e2: e4 e5     mov   a,$e5
09e4: 1c        asl   a
09e5: d4 00     mov   $00+x,a
09e7: f5 46 03  mov   a,$0346+x
09ea: 10 07     bpl   $09f3
09ec: f5 45 03  mov   a,$0345+x
09ef: d4 00     mov   $00+x,a
09f1: 2f 05     bra   $09f8
09f3: f5 45 03  mov   a,$0345+x
09f6: d4 01     mov   $01+x,a
09f8: e4 e6     mov   a,$e6
09fa: 28 0f     and   a,#$0f
09fc: d0 17     bne   $0a15
09fe: f5 56 03  mov   a,$0356+x
0a01: f0 12     beq   $0a15
0a03: fd        mov   y,a
0a04: f5 45 03  mov   a,$0345+x
0a07: cf        mul   ya
0a08: dd        mov   a,y
0a09: d5 45 03  mov   $0345+x,a
0a0c: d0 07     bne   $0a15
0a0e: d4 00     mov   $00+x,a
0a10: d4 01     mov   $01+x,a
0a12: d5 56 03  mov   $0356+x,a
0a15: f5 55 03  mov   a,$0355+x
0a18: 30 0a     bmi   $0a24
0a1a: 60        clrc
0a1b: 95 46 03  adc   a,$0346+x
0a1e: 90 18     bcc   $0a38
0a20: 8d ff     mov   y,#$ff
0a22: 2f 08     bra   $0a2c
0a24: 60        clrc
0a25: 95 46 03  adc   a,$0346+x
0a28: b0 0e     bcs   $0a38
0a2a: 8d 00     mov   y,#$00
0a2c: f5 55 03  mov   a,$0355+x
0a2f: 48 ff     eor   a,#$ff
0a31: 60        clrc
0a32: 88 01     adc   a,#$01
0a34: d5 55 03  mov   $0355+x,a
0a37: dd        mov   a,y
0a38: d5 46 03  mov   $0346+x,a
0a3b: 6f        ret

0a3c: 80        setc
0a3d: a8 40     sbc   a,#$40
0a3f: 30 02     bmi   $0a43
0a41: 1c        asl   a
0a42: 6f        ret

0a43: 1c        asl   a
0a44: 08 80     or    a,#$80
0a46: 6f        ret

0a47: f5 91 02  mov   a,$0291+x
0a4a: f0 20     beq   $0a6c
0a4c: 9b 91     dec   $91+x
0a4e: d0 1c     bne   $0a6c
0a50: f5 b0 02  mov   a,$02b0+x
0a53: 75 90 02  cmp   a,$0290+x
0a56: f0 08     beq   $0a60
0a58: d5 90 02  mov   $0290+x,a
0a5b: f5 a1 02  mov   a,$02a1+x
0a5e: 2f 0a     bra   $0a6a
0a60: 60        clrc
0a61: 95 91 02  adc   a,$0291+x
0a64: d5 90 02  mov   $0290+x,a
0a67: f5 a0 02  mov   a,$02a0+x
0a6a: d4 91     mov   $91+x,a
0a6c: 6f        ret

0a6d: f4 81     mov   a,$81+x
0a6f: d0 07     bne   $0a78
0a71: f5 90 02  mov   a,$0290+x
0a74: d4 90     mov   $90+x,a
0a76: 2f 33     bra   $0aab
0a78: 9b 81     dec   $81+x
0a7a: d0 34     bne   $0ab0
0a7c: f5 80 02  mov   a,$0280+x
0a7f: d4 81     mov   $81+x,a
0a81: f4 90     mov   a,$90+x
0a83: 75 90 02  cmp   a,$0290+x
0a86: f0 28     beq   $0ab0
0a88: 90 0f     bcc   $0a99
0a8a: f4 90     mov   a,$90+x
0a8c: 80        setc
0a8d: b5 81 02  sbc   a,$0281+x
0a90: d4 90     mov   $90+x,a
0a92: 75 90 02  cmp   a,$0290+x
0a95: b0 14     bcs   $0aab
0a97: 2f 0d     bra   $0aa6
0a99: f5 81 02  mov   a,$0281+x
0a9c: 60        clrc
0a9d: 94 90     adc   a,$90+x
0a9f: d4 90     mov   $90+x,a
0aa1: 75 90 02  cmp   a,$0290+x
0aa4: 90 05     bcc   $0aab
0aa6: f5 90 02  mov   a,$0290+x
0aa9: d4 90     mov   $90+x,a
0aab: fb 90     mov   y,$90+x
0aad: 3f 02 0d  call  $0d02
0ab0: 6f        ret

0ab1: f4 70     mov   a,$70+x
0ab3: f0 04     beq   $0ab9
0ab5: 9b 70     dec   $70+x
0ab7: 2f 45     bra   $0afe
0ab9: f5 10 02  mov   a,$0210+x
0abc: f0 40     beq   $0afe
0abe: 30 15     bmi   $0ad5
0ac0: f5 00 02  mov   a,$0200+x
0ac3: 60        clrc
0ac4: 95 20 02  adc   a,$0220+x
0ac7: d5 20 02  mov   $0220+x,a
0aca: e8 00     mov   a,#$00
0acc: 95 21 02  adc   a,$0221+x
0acf: d5 21 02  mov   $0221+x,a
0ad2: 5f ea 0a  jmp   $0aea

0ad5: f5 00 02  mov   a,$0200+x
0ad8: 48 ff     eor   a,#$ff
0ada: bc        inc   a
0adb: 60        clrc
0adc: 95 20 02  adc   a,$0220+x
0adf: d5 20 02  mov   $0220+x,a
0ae2: e8 ff     mov   a,#$ff
0ae4: 95 21 02  adc   a,$0221+x
0ae7: d5 21 02  mov   $0221+x,a
0aea: 9b 71     dec   $71+x
0aec: d0 10     bne   $0afe
0aee: f5 01 02  mov   a,$0201+x
0af1: d4 71     mov   $71+x,a
0af3: f0 09     beq   $0afe
0af5: f5 10 02  mov   a,$0210+x
0af8: 48 ff     eor   a,#$ff
0afa: bc        inc   a
0afb: d5 10 02  mov   $0210+x,a
0afe: 6f        ret

0aff: f5 51 02  mov   a,$0251+x
0b02: d0 05     bne   $0b09
0b04: 3f af 09  call  $09af
0b07: 2f 40     bra   $0b49
0b09: 3f 9d 09  call  $099d
0b0c: f0 3b     beq   $0b49
0b0e: 90 1f     bcc   $0b2f
0b10: f5 51 02  mov   a,$0251+x
0b13: 48 ff     eor   a,#$ff
0b15: bc        inc   a
0b16: 60        clrc
0b17: 95 60 02  adc   a,$0260+x
0b1a: d5 60 02  mov   $0260+x,a
0b1d: f5 61 02  mov   a,$0261+x
0b20: 88 ff     adc   a,#$ff
0b22: d5 61 02  mov   $0261+x,a
0b25: 3f 9d 09  call  $099d
0b28: b0 1f     bcs   $0b49
0b2a: 3f af 09  call  $09af
0b2d: 2f 1a     bra   $0b49
0b2f: f5 60 02  mov   a,$0260+x
0b32: 60        clrc
0b33: 95 51 02  adc   a,$0251+x
0b36: d5 60 02  mov   $0260+x,a
0b39: f5 61 02  mov   a,$0261+x
0b3c: 88 00     adc   a,#$00
0b3e: d5 61 02  mov   $0261+x,a
0b41: 3f 9d 09  call  $099d
0b44: 90 03     bcc   $0b49
0b46: 3f af 09  call  $09af
0b49: 6f        ret

0b4a: f5 d0 02  mov   a,$02d0+x
0b4d: f0 42     beq   $0b91
0b4f: f4 51     mov   a,$51+x
0b51: f0 1e     beq   $0b71
0b53: 9b 51     dec   $51+x
0b55: d0 1a     bne   $0b71
0b57: 3f 34 12  call  $1234
0b5a: 10 0e     bpl   $0b6a
0b5c: 68 80     cmp   a,#$80
0b5e: d0 06     bne   $0b66
0b60: f4 61     mov   a,$61+x
0b62: d4 60     mov   $60+x,a
0b64: 2f f1     bra   $0b57
0b66: 9b 60     dec   $60+x
0b68: 2f 02     bra   $0b6c
0b6a: d4 21     mov   $21+x,a
0b6c: f5 41 02  mov   a,$0241+x
0b6f: d4 51     mov   $51+x,a
0b71: f4 c1     mov   a,$c1+x
0b73: f0 1c     beq   $0b91
0b75: 74 80     cmp   a,$80+x
0b77: d0 18     bne   $0b91
0b79: f4 61     mov   a,$61+x
0b7b: d0 14     bne   $0b91
0b7d: f4 40     mov   a,$40+x
0b7f: c4 d9     mov   $d9,a
0b81: f4 41     mov   a,$41+x
0b83: c4 da     mov   $da,a
0b85: 8d ff     mov   y,#$ff
0b87: fc        inc   y
0b88: f7 d9     mov   a,($d9)+y
0b8a: 10 fb     bpl   $0b87
0b8c: fc        inc   y
0b8d: db 60     mov   $60+x,y
0b8f: db 61     mov   $61+x,y
0b91: 6f        ret

0b92: f5 d0 02  mov   a,$02d0+x
0b95: d0 32     bne   $0bc9
0b97: f4 80     mov   a,$80+x
0b99: f0 10     beq   $0bab
0b9b: 74 c1     cmp   a,$c1+x
0b9d: d0 0c     bne   $0bab
0b9f: e8 03     mov   a,#$03
0ba1: d4 a1     mov   $a1+x,a
0ba3: f4 21     mov   a,$21+x
0ba5: d4 b1     mov   $b1+x,a
0ba7: e8 00     mov   a,#$00
0ba9: d4 b0     mov   $b0+x,a
0bab: 9b a0     dec   $a0+x
0bad: d0 1a     bne   $0bc9
0baf: fb a1     mov   y,$a1+x
0bb1: f6 cf 0b  mov   a,$0bcf+y
0bb4: 2d        push  a
0bb5: f6 ca 0b  mov   a,$0bca+y
0bb8: 2d        push  a
0bb9: 7d        mov   a,x
0bba: c4 e5     mov   $e5,a
0bbc: 1c        asl   a
0bbd: 1c        asl   a
0bbe: 1c        asl   a
0bbf: 80        setc
0bc0: a4 e5     sbc   a,$e5
0bc2: 5c        lsr   a
0bc3: fd        mov   y,a
0bc4: f6 04 03  mov   a,$0304+y
0bc7: d4 a0     mov   $a0+x,a
0bc9: 6f        ret

0bca: db $d4,$06,$41,$42,$6d
0bcf: db $0b,$0c,$0c,$0c,$0c

0bd4: f6 07 03  mov   a,$0307+y
0bd7: 80        setc
0bd8: b6 05 03  sbc   a,$0305+y
0bdb: 6d        push  y
0bdc: 4d        push  x
0bdd: 2d        push  a
0bde: f6 06 03  mov   a,$0306+y
0be1: f0 1f     beq   $0c02
0be3: fb b0     mov   y,$b0+x
0be5: 5d        mov   x,a
0be6: 1d        dec   x
0be7: ae        pop   a
0be8: cf        mul   ya
0be9: 9e        div   ya,x
0bea: ce        pop   x
0beb: ee        pop   y
0bec: 60        clrc
0bed: 96 05 03  adc   a,$0305+y
0bf0: d4 21     mov   $21+x,a
0bf2: bb b0     inc   $b0+x
0bf4: f6 06 03  mov   a,$0306+y
0bf7: 74 b0     cmp   a,$b0+x
0bf9: d0 06     bne   $0c01
0bfb: bb a1     inc   $a1+x
0bfd: e8 00     mov   a,#$00
0bff: d4 b0     mov   $b0+x,a
0c01: 6f        ret

0c02: ae        pop   a
0c03: ce        pop   x
0c04: ee        pop   y
0c05: 6f        ret

0c06: f6 07 03  mov   a,$0307+y
0c09: 80        setc
0c0a: b6 09 03  sbc   a,$0309+y
0c0d: 6d        push  y
0c0e: 4d        push  x
0c0f: 2d        push  a
0c10: f6 08 03  mov   a,$0308+y
0c13: 2d        push  a
0c14: 60        clrc
0c15: b4 b0     sbc   a,$b0+x
0c17: f0 13     beq   $0c2c
0c19: fd        mov   y,a
0c1a: ae        pop   a
0c1b: f0 20     beq   $0c3d
0c1d: 5d        mov   x,a
0c1e: ae        pop   a
0c1f: cf        mul   ya
0c20: 9e        div   ya,x
0c21: ce        pop   x
0c22: ee        pop   y
0c23: 60        clrc
0c24: 96 09 03  adc   a,$0309+y
0c27: d4 21     mov   $21+x,a
0c29: bb b0     inc   $b0+x
0c2b: 6f        ret

0c2c: ae        pop   a
0c2d: ae        pop   a
0c2e: ce        pop   x
0c2f: ee        pop   y
0c30: f6 09 03  mov   a,$0309+y
0c33: d4 21     mov   $21+x,a
0c35: bb a1     inc   $a1+x
0c37: e8 00     mov   a,#$00
0c39: d4 b0     mov   $b0+x,a
0c3b: 6f        ret

0c3c: 6f        ret

0c3d: ae        pop   a
0c3e: ce        pop   x
0c3f: ee        pop   y
0c40: 6f        ret

0c41: 6f        ret

0c42: f4 b1     mov   a,$b1+x
0c44: 6d        push  y
0c45: 4d        push  x
0c46: 2d        push  a
0c47: f6 0a 03  mov   a,$030a+y
0c4a: 2d        push  a
0c4b: 60        clrc
0c4c: b4 b0     sbc   a,$b0+x
0c4e: f0 0f     beq   $0c5f
0c50: fd        mov   y,a
0c51: ae        pop   a
0c52: f0 16     beq   $0c6a
0c54: 5d        mov   x,a
0c55: ae        pop   a
0c56: cf        mul   ya
0c57: 9e        div   ya,x
0c58: ce        pop   x
0c59: ee        pop   y
0c5a: d4 21     mov   $21+x,a
0c5c: bb b0     inc   $b0+x
0c5e: 6f        ret

0c5f: ae        pop   a
0c60: ae        pop   a
0c61: ce        pop   x
0c62: ee        pop   y
0c63: e8 00     mov   a,#$00
0c65: d4 21     mov   $21+x,a
0c67: bb a1     inc   $a1+x
0c69: 6f        ret

0c6a: ae        pop   a
0c6b: ce        pop   x
0c6c: ee        pop   y
0c6d: 6f        ret

0c6e: f0 53     beq   $0cc3
0c70: 3f d2 0c  call  $0cd2
0c73: fb 20     mov   y,$20+x
0c75: 60        clrc
0c76: 96 64 30  adc   a,$3064+y
0c79: 5b c0     lsr   $c0+x
0c7b: b0 04     bcs   $0c81
0c7d: 60        clrc
0c7e: 95 40 02  adc   a,$0240+x
0c81: d5 b0 02  mov   $02b0+x,a
0c84: d5 90 02  mov   $0290+x,a
0c87: fd        mov   y,a
0c88: f5 80 02  mov   a,$0280+x
0c8b: d4 81     mov   $81+x,a
0c8d: d0 05     bne   $0c94
0c8f: db 90     mov   $90+x,y
0c91: 3f 02 0d  call  $0d02
0c94: 3f 2b 0d  call  $0d2b
0c97: f5 d0 02  mov   a,$02d0+x
0c9a: f0 0e     beq   $0caa
0c9c: f5 e1 02  mov   a,$02e1+x
0c9f: d0 09     bne   $0caa
0ca1: d4 60     mov   $60+x,a
0ca3: d4 61     mov   $61+x,a
0ca5: f5 41 02  mov   a,$0241+x
0ca8: d4 51     mov   $51+x,a
0caa: f5 a1 02  mov   a,$02a1+x
0cad: d4 91     mov   $91+x,a
0caf: 3f 5a 0d  call  $0d5a
0cb2: f5 f0 02  mov   a,$02f0+x
0cb5: d0 0c     bne   $0cc3
0cb7: e4 d2     mov   a,$d2
0cb9: 04 d4     or    a,$d4
0cbb: c4 d4     mov   $d4,a
0cbd: e4 d2     mov   a,$d2
0cbf: 04 d5     or    a,$d5
0cc1: c4 d5     mov   $d5,a
0cc3: f5 12 01  mov   a,$0112+x
0cc6: f0 03     beq   $0ccb
0cc8: 3f 83 0d  call  $0d83
0ccb: 3f 6e 0d  call  $0d6e
0cce: 3f 45 0d  call  $0d45
0cd1: 6f        ret

0cd2: fd        mov   y,a
0cd3: f5 13 01  mov   a,$0113+x
0cd6: f0 28     beq   $0d00
0cd8: dd        mov   a,y
0cd9: 80        setc
0cda: a8 12     sbc   a,#$12
0cdc: 1c        asl   a
0cdd: 1c        asl   a
0cde: fd        mov   y,a
0cdf: f4 40     mov   a,$40+x
0ce1: c4 d9     mov   $d9,a
0ce3: f4 41     mov   a,$41+x
0ce5: c4 da     mov   $da,a
0ce7: f7 d9     mov   a,($d9)+y
0ce9: d4 20     mov   $20+x,a
0ceb: fc        inc   y
0cec: f7 d9     mov   a,($d9)+y
0cee: 2d        push  a
0cef: fc        inc   y
0cf0: f7 d9     mov   a,($d9)+y
0cf2: d5 46 03  mov   $0346+x,a
0cf5: fc        inc   y
0cf6: f7 d9     mov   a,($d9)+y
0cf8: fd        mov   y,a
0cf9: ae        pop   a
0cfa: 6d        push  y
0cfb: 3f b1 0f  call  $0fb1
0cfe: ae        pop   a
0cff: 6f        ret

0d00: dd        mov   a,y
0d01: 6f        ret

0d02: f6 5c 13  mov   a,$135c+y
0d05: c4 d9     mov   $d9,a
0d07: f6 b1 13  mov   a,$13b1+y
0d0a: c4 da     mov   $da,a
0d0c: fb 20     mov   y,$20+x
0d0e: f6 50 30  mov   a,$3050+y
0d11: fd        mov   y,a
0d12: 6d        push  y
0d13: e4 d9     mov   a,$d9
0d15: cf        mul   ya
0d16: cb dd     mov   $dd,y
0d18: ee        pop   y
0d19: e4 da     mov   a,$da
0d1b: cf        mul   ya
0d1c: 8f 00 de  mov   $de,#$00
0d1f: 7a dd     addw  ya,$dd
0d21: 7a d9     addw  ya,$d9
0d23: d5 d1 02  mov   $02d1+x,a
0d26: dd        mov   a,y
0d27: d5 e0 02  mov   $02e0+x,a
0d2a: 6f        ret

0d2b: f5 11 02  mov   a,$0211+x
0d2e: d4 70     mov   $70+x,a
0d30: f5 01 02  mov   a,$0201+x
0d33: 5c        lsr   a
0d34: d4 71     mov   $71+x,a
0d36: f5 50 02  mov   a,$0250+x
0d39: d5 10 02  mov   $0210+x,a
0d3c: e8 00     mov   a,#$00
0d3e: d5 21 02  mov   $0221+x,a
0d41: d5 20 02  mov   $0220+x,a
0d44: 6f        ret

0d45: f5 70 02  mov   a,$0270+x
0d48: f0 0a     beq   $0d54
0d4a: f4 80     mov   a,$80+x
0d4c: 80        setc
0d4d: b5 70 02  sbc   a,$0270+x
0d50: d4 c1     mov   $c1+x,a
0d52: 2f 05     bra   $0d59
0d54: f5 71 02  mov   a,$0271+x
0d57: d4 c1     mov   $c1+x,a
0d59: 6f        ret

0d5a: f5 b1 02  mov   a,$02b1+x
0d5d: f0 0e     beq   $0d6d
0d5f: f5 e1 02  mov   a,$02e1+x
0d62: d0 09     bne   $0d6d
0d64: e8 00     mov   a,#$00
0d66: d4 a1     mov   $a1+x,a
0d68: d4 b0     mov   $b0+x,a
0d6a: bc        inc   a
0d6b: d4 a0     mov   $a0+x,a
0d6d: 6f        ret

0d6e: f5 31 02  mov   a,$0231+x
0d71: d0 05     bne   $0d78
0d73: f5 30 02  mov   a,$0230+x
0d76: d0 08     bne   $0d80
0d78: e8 00     mov   a,#$00
0d7a: d5 31 02  mov   $0231+x,a
0d7d: 3f 8a 0d  call  $0d8a
0d80: d4 80     mov   $80+x,a
0d82: 6f        ret

0d83: 3f 8a 0d  call  $0d8a
0d86: d5 45 03  mov   $0345+x,a
0d89: 6f        ret

0d8a: e7 30     mov   a,($30+x)
0d8c: bb 30     inc   $30+x
0d8e: d0 02     bne   $0d92
0d90: bb 31     inc   $31+x
0d92: 08 00     or    a,#$00
0d94: 6f        ret

; vcmd dispatch table
0d95: dw $11c5  ; 80
0d97: dw $0e95  ; 81
0d99: dw $0ea4  ; 82
0d9b: dw $0eb8  ; 83
0d9d: dw $0ebe  ; 84
0d9f: dw $0ecc  ; 85
0da1: dw $0eed  ; 86
0da3: dw $0ef6  ; 87
0da5: dw $0efe  ; 88
0da7: dw $0f07  ; 89
0da9: dw $0f0f  ; 8a
0dab: dw $0f1c  ; 8b
0dad: dw $0f24  ; 8c
0daf: dw $0f2d  ; 8d
0db1: dw $0f31  ; 8e
0db3: dw $0f55  ; 8f
0db5: dw $0f4d  ; 90
0db7: dw $0f5e  ; 91
0db9: dw $0f6c  ; 92
0dbb: dw $0f7a  ; 93
0dbd: dw $0f89  ; 94
0dbf: dw $0f91  ; 95
0dc1: dw $0fa8  ; 96
0dc3: dw $0fea  ; 97
0dc5: dw $0ff3  ; 98
0dc7: dw $0ffc  ; 99
0dc9: dw $1016  ; 9a
0dcb: dw $100e  ; 9b
0dcd: dw $1025  ; 9c
0dcf: dw $1034  ; 9d
0dd1: dw $103c  ; 9e
0dd3: dw $1044  ; 9f
0dd5: dw $104b  ; a0
0dd7: dw $1067  ; a1
0dd9: dw $1084  ; a2
0ddb: dw $109d  ; a3
0ddd: dw $10dc  ; a4
0ddf: dw $1102  ; a5
0de1: dw $1113  ; a6
0de3: dw $1131  ; a7
0de5: dw $113f  ; a8
0de7: dw $116f  ; a9
0de9: dw $1187  ; aa
0deb: dw $1190  ; ab
0ded: dw $1199  ; ac
0def: dw $11a2  ; ad
0df1: dw $11b1  ; ae
0df3: dw $11ba  ; af
0df5: dw $11db  ; b0
0df7: dw $11e3  ; b1
0df9: dw $11f3  ; b2
0dfb: dw $121a  ; b3
0dfd: dw $114d  ; b4
0dff: dw $0e4b  ; b5
0e01: dw $0e52  ; b6
0e03: dw $0e59  ; b7
0e05: dw $0e62  ; b8
0e07: dw $0e6b  ; b9
0e09: dw $0e73  ; ba
0e0b: dw $0e7b  ; bb
0e0d: dw $0e8d  ; bc
0e0f: dw $0e39  ; bd
0e11: dw $0e42  ; be
0e13: dw $0e33  ; bf
0e15: dw $0e17  ; c0

; vcmd c0
0e17: 4d        push  x
0e18: cd 0e     mov   x,#$0e
0e1a: 8d 00     mov   y,#$00
0e1c: f5 01 01  mov   a,$0101+x
0e1f: 68 1d     cmp   a,#$1d
0e21: d0 01     bne   $0e24
0e23: fc        inc   y
0e24: 1d        dec   x
0e25: 1d        dec   x
0e26: 10 f4     bpl   $0e1c
0e28: ce        pop   x
0e29: ad 02     cmp   y,#$02
0e2b: 90 03     bcc   $0e30
0e2d: 5f c5 11  jmp   $11c5

0e30: 5f 50 09  jmp   $0950

; vcmd bf
0e33: 3f 2c 08  call  $082c
0e36: 5f 50 09  jmp   $0950

; vcmd bd
0e39: 3f 8a 0d  call  $0d8a
0e3c: d5 01 01  mov   $0101+x,a
0e3f: 5f 50 09  jmp   $0950

; vcmd be
0e42: 3f 8a 0d  call  $0d8a
0e45: d5 c1 02  mov   $02c1+x,a
0e48: 5f 50 09  jmp   $0950

; vcmd b5
0e4b: e8 01     mov   a,#$01
0e4d: c4 eb     mov   $eb,a
0e4f: 5f 50 09  jmp   $0950

; vcmd b6
0e52: e8 00     mov   a,#$00
0e54: c4 eb     mov   $eb,a
0e56: 5f 50 09  jmp   $0950

; vcmd b7
0e59: 3f 8a 0d  call  $0d8a
0e5c: d5 46 03  mov   $0346+x,a
0e5f: 5f 50 09  jmp   $0950

; vcmd b8
0e62: 3f 8a 0d  call  $0d8a
0e65: d5 45 03  mov   $0345+x,a
0e68: 5f 50 09  jmp   $0950

; vcmd b9
0e6b: e8 01     mov   a,#$01
0e6d: d5 12 01  mov   $0112+x,a
0e70: 5f 50 09  jmp   $0950

; vcmd ba
0e73: e8 00     mov   a,#$00
0e75: d5 12 01  mov   $0112+x,a
0e78: 5f 50 09  jmp   $0950

; vcmd bb
0e7b: 3f 8a 0d  call  $0d8a
0e7e: d4 40     mov   $40+x,a
0e80: 3f 8a 0d  call  $0d8a
0e83: d4 41     mov   $41+x,a
0e85: e8 01     mov   a,#$01
0e87: d5 13 01  mov   $0113+x,a
0e8a: 5f 50 09  jmp   $0950

; vcmd bc
0e8d: e8 00     mov   a,#$00
0e8f: d5 13 01  mov   $0113+x,a
0e92: 5f 50 09  jmp   $0950

; vcmd 81
0e95: 3f 8a 0d  call  $0d8a
0e98: 2d        push  a
0e99: 3f 8a 0d  call  $0d8a
0e9c: d4 31     mov   $31+x,a
0e9e: ae        pop   a
0e9f: d4 30     mov   $30+x,a
0ea1: 5f 50 09  jmp   $0950

; vcmd 82
0ea4: 3f 8a 0d  call  $0d8a
0ea7: 2d        push  a
0ea8: 3f 8a 0d  call  $0d8a
0eab: 2d        push  a
0eac: 3f 5c 12  call  $125c
0eaf: ae        pop   a
0eb0: d4 31     mov   $31+x,a
0eb2: ae        pop   a
0eb3: d4 30     mov   $30+x,a
0eb5: 5f 50 09  jmp   $0950

; vcmd 83
0eb8: 3f 43 12  call  $1243
0ebb: 5f 50 09  jmp   $0950

; vcmd 84
0ebe: 3f 8a 0d  call  $0d8a
0ec1: 2d        push  a
0ec2: 3f 5c 12  call  $125c
0ec5: ae        pop   a
0ec6: 3f 54 12  call  $1254
0ec9: 5f 50 09  jmp   $0950

; vcmd 85
0ecc: fb 50     mov   y,$50+x
0ece: f6 7f 03  mov   a,$037f+y
0ed1: 9c        dec   a
0ed2: f0 10     beq   $0ee4
0ed4: d6 7f 03  mov   $037f+y,a
0ed7: f6 7e 03  mov   a,$037e+y
0eda: d4 31     mov   $31+x,a
0edc: f6 7d 03  mov   a,$037d+y
0edf: d4 30     mov   $30+x,a
0ee1: 5f 50 09  jmp   $0950

0ee4: dd        mov   a,y
0ee5: 80        setc
0ee6: a8 03     sbc   a,#$03
0ee8: d4 50     mov   $50+x,a
0eea: 5f 50 09  jmp   $0950

; vcmd 86
0eed: 3f 8a 0d  call  $0d8a
0ef0: d5 30 02  mov   $0230+x,a
0ef3: 5f 50 09  jmp   $0950

; vcmd 87
0ef6: e8 ff     mov   a,#$ff
0ef8: d5 31 02  mov   $0231+x,a
0efb: 5f 50 09  jmp   $0950

; vcmd 88
0efe: 3f 8a 0d  call  $0d8a
0f01: d5 40 02  mov   $0240+x,a
0f04: 5f 50 09  jmp   $0950

; vcmd 89
0f07: 3f 8a 0d  call  $0d8a
0f0a: d4 20     mov   $20+x,a
0f0c: 5f 50 09  jmp   $0950

; vcmd 8a
0f0f: 3f 8a 0d  call  $0d8a
0f12: d4 00     mov   $00+x,a
0f14: e8 00     mov   a,#$00
0f16: d5 45 03  mov   $0345+x,a
0f19: 5f 50 09  jmp   $0950

; vcmd 8b
0f1c: 3f 8a 0d  call  $0d8a
0f1f: d4 01     mov   $01+x,a
0f21: 5f 14 0f  jmp   $0f14

; vcmd 8c
0f24: 3f 8a 0d  call  $0d8a
0f27: d5 c0 02  mov   $02c0+x,a
0f2a: 5f 50 09  jmp   $0950

; vcmd 8d
0f2d: e8 01     mov   a,#$01
0f2f: 2f 02     bra   $0f33
; vcmd 8e
0f31: e8 ff     mov   a,#$ff
0f33: d5 50 02  mov   $0250+x,a
0f36: 3f 8a 0d  call  $0d8a
0f39: d5 11 02  mov   $0211+x,a
0f3c: 3f 8a 0d  call  $0d8a
0f3f: d5 00 02  mov   $0200+x,a
0f42: 3f 8a 0d  call  $0d8a
0f45: d5 01 02  mov   $0201+x,a
0f48: d4 71     mov   $71+x,a
0f4a: 5f 50 09  jmp   $0950

; vcmd 90
0f4d: e8 00     mov   a,#$00
0f4f: d5 50 02  mov   $0250+x,a
0f52: 5f 50 09  jmp   $0950

; vcmd 8f
0f55: 3f 8a 0d  call  $0d8a
0f58: d5 51 02  mov   $0251+x,a
0f5b: 5f 50 09  jmp   $0950

; vcmd 91
0f5e: 3f 8a 0d  call  $0d8a
0f61: d5 70 02  mov   $0270+x,a
0f64: e8 00     mov   a,#$00
0f66: d5 71 02  mov   $0271+x,a
0f69: 5f 50 09  jmp   $0950

; vcmd 92
0f6c: 3f 8a 0d  call  $0d8a
0f6f: d5 71 02  mov   $0271+x,a
0f72: e8 00     mov   a,#$00
0f74: d5 70 02  mov   $0270+x,a
0f77: 5f 50 09  jmp   $0950

; vcmd 93
0f7a: 3f 8a 0d  call  $0d8a
0f7d: d5 81 02  mov   $0281+x,a
0f80: 3f 8a 0d  call  $0d8a
0f83: d5 80 02  mov   $0280+x,a
0f86: 5f 50 09  jmp   $0950

; vcmd 94
0f89: e8 00     mov   a,#$00
0f8b: d5 80 02  mov   $0280+x,a
0f8e: 5f 50 09  jmp   $0950

; vcmd 95
0f91: 3f 8a 0d  call  $0d8a
0f94: d5 91 02  mov   $0291+x,a
0f97: 3f 8a 0d  call  $0d8a
0f9a: d5 a0 02  mov   $02a0+x,a
0f9d: 3f 8a 0d  call  $0d8a
0fa0: d5 a1 02  mov   $02a1+x,a
0fa3: d4 91     mov   $91+x,a
0fa5: 5f 50 09  jmp   $0950

; vcmd 96
0fa8: 3f 8a 0d  call  $0d8a
0fab: 3f b1 0f  call  $0fb1
0fae: 5f 50 09  jmp   $0950

0fb1: 2d        push  a
0fb2: e8 47     mov   a,#$47
0fb4: c4 d9     mov   $d9,a
0fb6: e8 14     mov   a,#$14
0fb8: c4 da     mov   $da,a
0fba: ae        pop   a
0fbb: 8d 07     mov   y,#$07
0fbd: cf        mul   ya
0fbe: 4d        push  x
0fbf: 60        clrc
0fc0: 7a d9     addw  ya,$d9
0fc2: da d9     movw  $d9,ya
0fc4: 8d 00     mov   y,#$00
0fc6: 7d        mov   a,x
0fc7: c4 e5     mov   $e5,a
0fc9: 1c        asl   a
0fca: 1c        asl   a
0fcb: 1c        asl   a
0fcc: 80        setc
0fcd: a4 e5     sbc   a,$e5
0fcf: 5c        lsr   a
0fd0: 5d        mov   x,a
0fd1: f7 d9     mov   a,($d9)+y
0fd3: d5 04 03  mov   $0304+x,a
0fd6: 3d        inc   x
0fd7: fc        inc   y
0fd8: ad 07     cmp   y,#$07
0fda: d0 f5     bne   $0fd1
0fdc: ce        pop   x
0fdd: e8 00     mov   a,#$00
0fdf: d5 d0 02  mov   $02d0+x,a
0fe2: d5 e1 02  mov   $02e1+x,a
0fe5: 9c        dec   a
0fe6: d5 b1 02  mov   $02b1+x,a
0fe9: 6f        ret

; vcmd 97
0fea: e4 d2     mov   a,$d2
0fec: 04 d6     or    a,$d6
0fee: c4 d6     mov   $d6,a
0ff0: 5f 50 09  jmp   $0950

; vcmd 98
0ff3: e4 d3     mov   a,$d3
0ff5: 24 d6     and   a,$d6
0ff7: c4 d6     mov   $d6,a
0ff9: 5f 50 09  jmp   $0950

; vcmd 99
0ffc: 3f 8a 0d  call  $0d8a
0fff: 28 1f     and   a,#$1f
1001: 08 20     or    a,#$20
1003: 8f 6c f2  mov   $f2,#$6c
1006: 00        nop
1007: 00        nop
1008: 00        nop
1009: c4 f3     mov   $f3,a
100b: 5f 50 09  jmp   $0950

; vcmd 9b
100e: e8 ff     mov   a,#$ff
1010: d5 e1 02  mov   $02e1+x,a
1013: 5f 50 09  jmp   $0950

; vcmd 9a
1016: e8 00     mov   a,#$00
1018: d5 e1 02  mov   $02e1+x,a
101b: d5 d0 02  mov   $02d0+x,a
101e: 9c        dec   a
101f: d5 b1 02  mov   $02b1+x,a
1022: 5f 50 09  jmp   $0950

; vcmd 9c
1025: e8 00     mov   a,#$00
1027: d5 e1 02  mov   $02e1+x,a
102a: d5 b1 02  mov   $02b1+x,a
102d: 9c        dec   a
102e: d5 d0 02  mov   $02d0+x,a
1031: 5f 50 09  jmp   $0950

; vcmd 9d
1034: e8 00     mov   a,#$00
1036: d5 f0 02  mov   $02f0+x,a
1039: 5f 50 09  jmp   $0950

; vcmd 9e
103c: e8 ff     mov   a,#$ff
103e: d5 f0 02  mov   $02f0+x,a
1041: 5f 50 09  jmp   $0950

; vcmd 9f
1044: e8 01     mov   a,#$01
1046: d4 c0     mov   $c0+x,a
1048: 5f 50 09  jmp   $0950

; vcmd a0
104b: 4d        push  x
104c: f8 e4     mov   x,$e4
104e: cd 01     mov   x,#$01
1050: 3f 70 07  call  $0770
1053: ce        pop   x
1054: f5 1f 13  mov   a,$131f+x
1057: c4 d2     mov   $d2,a
1059: f5 20 13  mov   a,$1320+x
105c: c4 d3     mov   $d3,a
105e: 8f 00 e0  mov   $e0,#$00
1061: 8f 7f e1  mov   $e1,#$7f
1064: 5f 50 09  jmp   $0950

; vcmd a1
1067: 7d        mov   a,x
1068: c4 e5     mov   $e5,a
106a: 1c        asl   a
106b: 1c        asl   a
106c: 1c        asl   a
106d: 80        setc
106e: a4 e5     sbc   a,$e5
1070: 5c        lsr   a
1071: fd        mov   y,a
1072: e8 07     mov   a,#$07
1074: c4 e5     mov   $e5,a
1076: 3f 8a 0d  call  $0d8a
1079: d6 04 03  mov   $0304+y,a
107c: fc        inc   y
107d: 8b e5     dec   $e5
107f: d0 f5     bne   $1076
1081: 5f 16 10  jmp   $1016

; vcmd a2
1084: 3f 8a 0d  call  $0d8a
1087: 3f 2f 13  call  $132f
108a: 1c        asl   a
108b: c4 e5     mov   $e5,a
108d: 60        clrc
108e: f4 30     mov   a,$30+x
1090: 84 e5     adc   a,$e5
1092: d4 30     mov   $30+x,a
1094: f4 31     mov   a,$31+x
1096: 88 00     adc   a,#$00
1098: d4 31     mov   $31+x,a
109a: 5f 95 0e  jmp   $0e95

; vcmd a3
109d: 3f 8a 0d  call  $0d8a
10a0: c4 e5     mov   $e5,a
10a2: 3f 2f 13  call  $132f
10a5: c4 d9     mov   $d9,a
10a7: 1c        asl   a
10a8: 60        clrc
10a9: 94 30     adc   a,$30+x
10ab: d4 30     mov   $30+x,a
10ad: f4 31     mov   a,$31+x
10af: 88 00     adc   a,#$00
10b1: d4 31     mov   $31+x,a
10b3: 3f 8a 0d  call  $0d8a
10b6: 2d        push  a
10b7: 3f 8a 0d  call  $0d8a
10ba: 2d        push  a
10bb: e4 e5     mov   a,$e5
10bd: 9c        dec   a
10be: 80        setc
10bf: a4 d9     sbc   a,$d9
10c1: 1c        asl   a
10c2: c4 d9     mov   $d9,a
10c4: f4 30     mov   a,$30+x
10c6: 84 d9     adc   a,$d9
10c8: d4 30     mov   $30+x,a
10ca: f4 31     mov   a,$31+x
10cc: 88 00     adc   a,#$00
10ce: d4 31     mov   $31+x,a
10d0: 3f 5c 12  call  $125c
10d3: ae        pop   a
10d4: d4 31     mov   $31+x,a
10d6: ae        pop   a
10d7: d4 30     mov   $30+x,a
10d9: 5f 50 09  jmp   $0950

; vcmd a4
10dc: 3f 8a 0d  call  $0d8a
10df: 3f eb 10  call  $10eb
10e2: 16 3c 03  or    a,$033c+y
10e5: d6 3c 03  mov   $033c+y,a
10e8: 5f 50 09  jmp   $0950

10eb: 4d        push  x
10ec: fd        mov   y,a
10ed: 28 07     and   a,#$07
10ef: 5d        mov   x,a
10f0: dd        mov   a,y
10f1: 5c        lsr   a
10f2: 5c        lsr   a
10f3: 5c        lsr   a
10f4: fd        mov   y,a
10f5: f5 fa 10  mov   a,$10fa+x
10f8: ce        pop   x
10f9: 6f        ret

10fa: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a5
1102: 3f 8a 0d  call  $0d8a
1105: 3f eb 10  call  $10eb
1108: 48 ff     eor   a,#$ff
110a: 36 3c 03  and   a,$033c+y
110d: d6 3c 03  mov   $033c+y,a
1110: 5f 50 09  jmp   $0950

; vcmd a6
1113: 3f 8a 0d  call  $0d8a
1116: 3f eb 10  call  $10eb
1119: 36 3c 03  and   a,$033c+y
111c: f0 03     beq   $1121
111e: 5f 95 0e  jmp   $0e95

1121: f4 30     mov   a,$30+x
1123: 60        clrc
1124: 88 02     adc   a,#$02
1126: d4 30     mov   $30+x,a
1128: f4 31     mov   a,$31+x
112a: 88 00     adc   a,#$00
112c: d4 31     mov   $31+x,a
112e: 5f 50 09  jmp   $0950

; vcmd a7
1131: 3f 8a 0d  call  $0d8a
1134: 3f eb 10  call  $10eb
1137: 36 3c 03  and   a,$033c+y
113a: d0 e5     bne   $1121
113c: 5f 95 0e  jmp   $0e95

; vcmd a8
113f: 3f 8a 0d  call  $0d8a
1142: 3f eb 10  call  $10eb
1145: 36 3c 03  and   a,$033c+y
1148: f0 11     beq   $115b
114a: 5f 50 09  jmp   $0950

; vcmd b4
114d: 3f 8a 0d  call  $0d8a
1150: 3f eb 10  call  $10eb
1153: 36 3c 03  and   a,$033c+y
1156: d0 03     bne   $115b
1158: 5f 50 09  jmp   $0950

115b: e8 01     mov   a,#$01
115d: d4 80     mov   $80+x,a
115f: f4 30     mov   a,$30+x
1161: 80        setc
1162: a8 02     sbc   a,#$02
1164: d4 30     mov   $30+x,a
1166: f4 31     mov   a,$31+x
1168: a8 00     sbc   a,#$00
116a: d4 31     mov   $31+x,a
116c: 5f 6c 09  jmp   $096c

; vcmd a9
116f: 8d 00     mov   y,#$00
1171: dd        mov   a,y
1172: 1c        asl   a
1173: 1c        asl   a
1174: 1c        asl   a
1175: 1c        asl   a
1176: 08 0f     or    a,#$0f
1178: c4 f2     mov   $f2,a
117a: 3f 8a 0d  call  $0d8a
117d: c4 f3     mov   $f3,a
117f: fc        inc   y
1180: ad 08     cmp   y,#$08
1182: d0 ed     bne   $1171
1184: 5f 50 09  jmp   $0950

; vcmd aa
1187: 3f 8a 0d  call  $0d8a
118a: d5 56 03  mov   $0356+x,a
118d: 5f 50 09  jmp   $0950

; vcmd ab
1190: e4 d2     mov   a,$d2
1192: 04 d8     or    a,$d8
1194: c4 d8     mov   $d8,a
1196: 5f 50 09  jmp   $0950

; vcmd ac
1199: e4 d3     mov   a,$d3
119b: 24 d8     and   a,$d8
119d: c4 d8     mov   $d8,a
119f: 5f 50 09  jmp   $0950

; vcmd ad
11a2: 3f 8a 0d  call  $0d8a
11a5: d5 45 03  mov   $0345+x,a
11a8: 3f 8a 0d  call  $0d8a
11ab: d5 46 03  mov   $0346+x,a
11ae: 5f 50 09  jmp   $0950

; vcmd ae
11b1: 3f 8a 0d  call  $0d8a
11b4: d5 55 03  mov   $0355+x,a
11b7: 5f 50 09  jmp   $0950

; vcmd af
11ba: 3f 8a 0d  call  $0d8a
11bd: 4d        push  x
11be: 3f e8 04  call  $04e8
11c1: ce        pop   x
11c2: 5f 50 09  jmp   $0950

; vcmd 80
11c5: e8 00     mov   a,#$00
11c7: d5 65 03  mov   $0365+x,a
11ca: d5 f1 02  mov   $02f1+x,a
11cd: d5 c1 02  mov   $02c1+x,a
11d0: 9c        dec   a
11d1: d5 01 01  mov   $0101+x,a
11d4: e4 d2     mov   a,$d2
11d6: 04 d5     or    a,$d5
11d8: c4 d5     mov   $d5,a
11da: 6f        ret

; vcmd b0
11db: 3f 8a 0d  call  $0d8a
11de: c4 fc     mov   $fc,a
11e0: 5f 50 09  jmp   $0950

; vcmd b1
11e3: e8 ff     mov   a,#$ff
11e5: d5 00 01  mov   $0100+x,a
11e8: e8 01     mov   a,#$01
11ea: d5 46 03  mov   $0346+x,a
11ed: d5 45 03  mov   $0345+x,a
11f0: 5f 50 09  jmp   $0950

; vcmd b2
11f3: e5 11 01  mov   a,$0111
11f6: f0 0e     beq   $1206
11f8: e4 d2     mov   a,$d2
11fa: 04 d5     or    a,$d5
11fc: c4 d5     mov   $d5,a
11fe: 8f 5c f2  mov   $f2,#$5c
1201: c4 f3     mov   $f3,a
1203: 5f c5 11  jmp   $11c5

1206: e8 01     mov   a,#$01
1208: d4 80     mov   $80+x,a
120a: f4 30     mov   a,$30+x
120c: 80        setc
120d: a8 01     sbc   a,#$01
120f: d4 30     mov   $30+x,a
1211: f4 31     mov   a,$31+x
1213: a8 00     sbc   a,#$00
1215: d4 31     mov   $31+x,a
1217: 5f 6c 09  jmp   $096c

; vcmd b3
121a: 3f 8a 0d  call  $0d8a
121d: fd        mov   y,a
121e: f6 24 12  mov   a,$1224+y
1221: 5f 53 09  jmp   $0953

1224: 05 05 05  or    a,$0505
1227: 05 05 05  or    a,$0505
122a: 05 05 05  or    a,$0505
122d: 05 05 05  or    a,$0505
1230: 05 05 05  or    a,$0505
1233: 05 f4 40  or    a,$40f4
1236: c4 d9     mov   $d9,a
1238: f4 41     mov   a,$41+x
123a: c4 da     mov   $da,a
123c: fb 60     mov   y,$60+x
123e: bb 60     inc   $60+x
1240: f7 d9     mov   a,($d9)+y
1242: 6f        ret

1243: fb 50     mov   y,$50+x
1245: dc        dec   y
1246: f6 80 03  mov   a,$0380+y
1249: d4 31     mov   $31+x,a
124b: dc        dec   y
124c: f6 80 03  mov   a,$0380+y
124f: d4 30     mov   $30+x,a
1251: db 50     mov   $50+x,y
1253: 6f        ret

1254: fb 50     mov   y,$50+x
1256: d6 80 03  mov   $0380+y,a
1259: bb 50     inc   $50+x
125b: 6f        ret

125c: fb 50     mov   y,$50+x
125e: f4 30     mov   a,$30+x
1260: d6 80 03  mov   $0380+y,a
1263: f4 31     mov   a,$31+x
1265: d6 81 03  mov   $0381+y,a
1268: fc        inc   y
1269: fc        inc   y
126a: db 50     mov   $50+x,y
126c: 6f        ret

126d: f6 65 03  mov   a,$0365+y
1270: f0 37     beq   $12a9
1272: d8 f2     mov   $f2,x
1274: f6 00 00  mov   a,$0000+y
1277: 3f ac 12  call  $12ac
127a: c4 f3     mov   $f3,a
127c: 3d        inc   x
127d: d8 f2     mov   $f2,x
127f: f6 01 00  mov   a,$0001+y
1282: 3f ac 12  call  $12ac
1285: c4 f3     mov   $f3,a
1287: 3d        inc   x
1288: d8 f2     mov   $f2,x
128a: f6 10 00  mov   a,$0010+y
128d: c4 f3     mov   $f3,a
128f: 3d        inc   x
1290: d8 f2     mov   $f2,x
1292: f6 11 00  mov   a,$0011+y
1295: c4 f3     mov   $f3,a
1297: 3d        inc   x
1298: d8 f2     mov   $f2,x
129a: f6 20 00  mov   a,$0020+y
129d: c4 f3     mov   $f3,a
129f: 3d        inc   x
12a0: 3d        inc   x
12a1: 3d        inc   x
12a2: d8 f2     mov   $f2,x
12a4: f6 21 00  mov   a,$0021+y
12a7: c4 f3     mov   $f3,a
12a9: 5f 92 05  jmp   $0592

12ac: 30 17     bmi   $12c5
12ae: 6d        push  y
12af: 4d        push  x
12b0: 6d        push  y
12b1: ce        pop   x
12b2: fd        mov   y,a
12b3: f5 c1 02  mov   a,$02c1+x
12b6: bc        inc   a
12b7: d0 04     bne   $12bd
12b9: e4 e8     mov   a,$e8
12bb: 2f 03     bra   $12c0
12bd: f5 66 03  mov   a,$0366+x
12c0: cf        mul   ya
12c1: dd        mov   a,y
12c2: ce        pop   x
12c3: ee        pop   y
12c4: 6f        ret

12c5: 48 ff     eor   a,#$ff
12c7: bc        inc   a
12c8: 6d        push  y
12c9: 4d        push  x
12ca: 6d        push  y
12cb: ce        pop   x
12cc: fd        mov   y,a
12cd: f5 66 03  mov   a,$0366+x
12d0: cf        mul   ya
12d1: dd        mov   a,y
12d2: ce        pop   x
12d3: ee        pop   y
12d4: 48 ff     eor   a,#$ff
12d6: bc        inc   a
12d7: 6f        ret

12d8: cd 00     mov   x,#$00
12da: f5 ea 12  mov   a,$12ea+x
12dd: 30 0a     bmi   $12e9
12df: c4 f2     mov   $f2,a
12e1: f5 05 13  mov   a,$1305+x
12e4: c4 f3     mov   $f3,a
12e6: 3d        inc   x
12e7: d0 f1     bne   $12da
12e9: 6f        ret

12ea: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
1305: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$30,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

131f: db $01,$fe
1321: db $02,$fd
1323: db $04,$fb
1325: db $08,$f7
1327: db $10,$ef
1329: db $20,$df
132b: db $40,$bf
132d: db $80,$7f

132f: fd        mov   y,a
1330: 3f 4d 13  call  $134d
1333: 3f 4d 13  call  $134d
1336: 3f 4d 13  call  $134d
1339: 3f 4d 13  call  $134d
133c: 3f 4d 13  call  $134d
133f: 3f 4d 13  call  $134d
1342: 3f 4d 13  call  $134d
1345: 3f 4d 13  call  $134d
1348: e4 ec     mov   a,$ec
134a: cf        mul   ya
134b: dd        mov   a,y
134c: 6f        ret

134d: e4 ec     mov   a,$ec
134f: 28 48     and   a,#$48
1351: 88 38     adc   a,#$38
1353: 1c        asl   a
1354: 1c        asl   a
1355: 2b ef     rol   $ef
1357: 2b ee     rol   $ee
1359: 2b ed     rol   $ed
135b: 2b ec     rol   $ec
135d: 6f        ret
