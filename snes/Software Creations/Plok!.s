0400: 20        clrp
0401: 00        nop
0402: cd ff     mov   x,#$ff
0404: bd        mov   sp,x
0405: 8f 30 f1  mov   $f1,#$30
0408: 8f 6c f2  mov   $f2,#$6c
040b: 8f f3 f3  mov   $f3,#$f3
040e: 8f 5c f2  mov   $f2,#$5c
0411: 8f ff f3  mov   $f3,#$ff
0414: 8f 0c f2  mov   $f2,#$0c
0417: 8f 00 f3  mov   $f3,#$00
041a: 8f 1c f2  mov   $f2,#$1c
041d: 8f 00 f3  mov   $f3,#$00
0420: 3f 62 10  call  $1062
0423: 3f 08 07  call  $0708
0426: 8f 1b eb  mov   $eb,#$1b
0429: 8f 09 ec  mov   $ec,#$09
042c: 8f 13 ed  mov   $ed,#$13
042f: 8f 3a ee  mov   $ee,#$3a
0432: 8f 80 e8  mov   $e8,#$80
0435: 8f 80 e9  mov   $e9,#$80
0438: 8f fb d1  mov   $d1,#$fb
043b: e8 fa     mov   a,#$fa
043d: c4 f4     mov   $f4,a
043f: c4 f5     mov   $f5,a
0441: 64 f4     cmp   a,$f4
0443: d0 fc     bne   $0441
0445: 64 f4     cmp   a,$f4
0447: d0 f8     bne   $0441
0449: 3f e8 10  call  $10e8
044c: 8f 6c f2  mov   $f2,#$6c
044f: 8f 33 f3  mov   $f3,#$33
0452: cd 00     mov   x,#$00
0454: 3f 89 05  call  $0589
0457: 3f c5 04  call  $04c5
045a: 9d        mov   x,sp
045b: 3d        inc   x
045c: d0 2f     bne   $048d
045e: e4 f5     mov   a,$f5
0460: 64 f5     cmp   a,$f5
0462: d0 fa     bne   $045e
0464: 68 55     cmp   a,#$55
0466: f0 2c     beq   $0494
0468: 3f 63 11  call  $1163
046b: e5 44 03  mov   a,$0344
046e: 60        clrc
046f: 84 ff     adc   a,$ff
0471: c5 44 03  mov   $0344,a
0474: 68 04     cmp   a,#$04
0476: 90 e2     bcc   $045a
0478: 80        setc
0479: a8 04     sbc   a,#$04
047b: c5 44 03  mov   $0344,a
047e: 8f 0c f7  mov   $f7,#$0c
0481: 3f c5 04  call  $04c5
0484: 8f 08 f7  mov   $f7,#$08
0487: 8f 0f f7  mov   $f7,#$0f
048a: 5f 5a 04  jmp   $045a

048d: 7d        mov   a,x
048e: 9c        dec   a
048f: cd 80     mov   x,#$80
0491: 5f ac 12  jmp   $12ac

0494: e4 ff     mov   a,$ff
0496: e4 e1     mov   a,$e1
0498: eb ff     mov   y,$ff
049a: f0 fc     beq   $0498
049c: 80        setc
049d: a8 08     sbc   a,#$08
049f: 10 02     bpl   $04a3
04a1: e8 00     mov   a,#$00
04a3: 8f 0c f2  mov   $f2,#$0c
04a6: c4 f3     mov   $f3,a
04a8: 8f 1c f2  mov   $f2,#$1c
04ab: c4 f3     mov   $f3,a
04ad: 08 00     or    a,#$00
04af: d0 e7     bne   $0498
04b1: e8 ff     mov   a,#$ff
04b3: 8f 5c f2  mov   $f2,#$5c
04b6: c4 f3     mov   $f3,a
04b8: e8 b0     mov   a,#$b0
04ba: c4 f1     mov   $f1,a
04bc: 8f 6c f2  mov   $f2,#$6c
04bf: 8f e0 f3  mov   $f3,#$e0
04c2: 5f b6 12  jmp   $12b6

04c5: ab e6     inc   $e6
04c7: ba e2     movw  ya,$e2
04c9: f0 24     beq   $04ef
04cb: 30 12     bmi   $04df
04cd: ba e0     movw  ya,$e0
04cf: 7a e2     addw  ya,$e2
04d1: 10 08     bpl   $04db
04d3: 8f 00 e2  mov   $e2,#$00
04d6: 8f 00 e3  mov   $e3,#$00
04d9: 8d 7f     mov   y,#$7f
04db: da e0     movw  $e0,ya
04dd: 2f 10     bra   $04ef
04df: ba e0     movw  ya,$e0
04e1: 7a e2     addw  ya,$e2
04e3: 10 08     bpl   $04ed
04e5: 8f 00 e2  mov   $e2,#$00
04e8: 8f 00 e3  mov   $e3,#$00
04eb: 8d 00     mov   y,#$00
04ed: da e0     movw  $e0,ya
04ef: 8f 5c f2  mov   $f2,#$5c
04f2: 8f 00 f3  mov   $f3,#$00
04f5: 8d 00     mov   y,#$00
04f7: cd 00     mov   x,#$00
04f9: 3f f7 0f  call  $0ff7
04fc: 8d 02     mov   y,#$02
04fe: cd 10     mov   x,#$10
0500: 3f f7 0f  call  $0ff7
0503: 8d 04     mov   y,#$04
0505: cd 20     mov   x,#$20
0507: 3f f7 0f  call  $0ff7
050a: 8d 06     mov   y,#$06
050c: cd 30     mov   x,#$30
050e: 3f f7 0f  call  $0ff7
0511: 8d 08     mov   y,#$08
0513: cd 40     mov   x,#$40
0515: 3f f7 0f  call  $0ff7
0518: 8d 0a     mov   y,#$0a
051a: cd 50     mov   x,#$50
051c: 3f f7 0f  call  $0ff7
051f: 8d 0c     mov   y,#$0c
0521: cd 60     mov   x,#$60
0523: 3f f7 0f  call  $0ff7
0526: 8d 0e     mov   y,#$0e
0528: cd 70     mov   x,#$70
052a: 3f f7 0f  call  $0ff7
052d: 8f 4c f2  mov   $f2,#$4c
0530: fa d4 f3  mov   ($f3),($d4)
0533: 8f 00 d4  mov   $d4,#$00
0536: cd 00     mov   x,#$00
0538: 3f 53 07  call  $0753
053b: b0 2f     bcs   $056c
053d: cd 02     mov   x,#$02
053f: 3f 53 07  call  $0753
0542: b0 28     bcs   $056c
0544: cd 04     mov   x,#$04
0546: 3f 53 07  call  $0753
0549: b0 21     bcs   $056c
054b: cd 06     mov   x,#$06
054d: 3f 53 07  call  $0753
0550: b0 1a     bcs   $056c
0552: cd 08     mov   x,#$08
0554: 3f 53 07  call  $0753
0557: b0 13     bcs   $056c
0559: cd 0a     mov   x,#$0a
055b: 3f 53 07  call  $0753
055e: b0 0c     bcs   $056c
0560: cd 0c     mov   x,#$0c
0562: 3f 53 07  call  $0753
0565: b0 05     bcs   $056c
0567: cd 0e     mov   x,#$0e
0569: 3f 53 07  call  $0753
056c: 8f 5c f2  mov   $f2,#$5c
056f: fa d5 f3  mov   ($f3),($d5)
0572: 8f 00 d5  mov   $d5,#$00
0575: e4 e1     mov   a,$e1
0577: 8f 0c f2  mov   $f2,#$0c
057a: c4 f3     mov   $f3,a
057c: 8f 1c f2  mov   $f2,#$1c
057f: c4 f3     mov   $f3,a
0581: 8f 3d f2  mov   $f2,#$3d
0584: fa d6 f3  mov   ($f3),($d6)
0587: 6f        ret

0588: 6f        ret

; read voice ptr for song x
0589: 7d        mov   a,x
058a: 68 05     cmp   a,#$05
058c: b0 fa     bcs   $0588
058e: fd        mov   y,a               ; y = song select (0-4)
058f: cd 00     mov   x,#$00
0591: f6 85 13  mov   a,$1385+y
0594: f0 0a     beq   $05a0             ; $00xx = unused channel
0596: c4 31     mov   $31,a
0598: f6 80 13  mov   a,$1380+y
059b: c4 30     mov   $30,a             ; channel 1 voice ptr
059d: 3f 38 06  call  $0638
05a0: 3d        inc   x
05a1: 3d        inc   x
05a2: f6 8f 13  mov   a,$138f+y
05a5: f0 0a     beq   $05b1
05a7: d4 31     mov   $31+x,a
05a9: f6 8a 13  mov   a,$138a+y
05ac: d4 30     mov   $30+x,a           ; channel 2 voice ptr
05ae: 3f 38 06  call  $0638
05b1: 3d        inc   x
05b2: 3d        inc   x
05b3: f6 99 13  mov   a,$1399+y
05b6: f0 0a     beq   $05c2
05b8: d4 31     mov   $31+x,a
05ba: f6 94 13  mov   a,$1394+y
05bd: d4 30     mov   $30+x,a           ; channel 3 voice ptr
05bf: 3f 38 06  call  $0638
05c2: 3d        inc   x
05c3: 3d        inc   x
05c4: f6 a3 13  mov   a,$13a3+y
05c7: f0 0a     beq   $05d3
05c9: d4 31     mov   $31+x,a
05cb: f6 9e 13  mov   a,$139e+y
05ce: d4 30     mov   $30+x,a           ; channel 4 voice ptr
05d0: 3f 38 06  call  $0638
05d3: 3d        inc   x
05d4: 3d        inc   x
05d5: f6 ad 13  mov   a,$13ad+y
05d8: f0 0a     beq   $05e4
05da: d4 31     mov   $31+x,a
05dc: f6 a8 13  mov   a,$13a8+y
05df: d4 30     mov   $30+x,a           ; channel 5 voice ptr
05e1: 3f 38 06  call  $0638
05e4: 3d        inc   x
05e5: 3d        inc   x
05e6: f6 b7 13  mov   a,$13b7+y
05e9: f0 0a     beq   $05f5
05eb: d4 31     mov   $31+x,a
05ed: f6 b2 13  mov   a,$13b2+y
05f0: d4 30     mov   $30+x,a           ; channel 6 voice ptr
05f2: 3f 38 06  call  $0638
05f5: 3d        inc   x
05f6: 3d        inc   x
05f7: f6 c1 13  mov   a,$13c1+y
05fa: f0 0a     beq   $0606
05fc: d4 31     mov   $31+x,a
05fe: f6 bc 13  mov   a,$13bc+y
0601: d4 30     mov   $30+x,a           ; channel 7 voice ptr
0603: 3f 38 06  call  $0638
0606: 3d        inc   x
0607: 3d        inc   x
0608: f6 cb 13  mov   a,$13cb+y
060b: f0 0a     beq   $0617
060d: d4 31     mov   $31+x,a
060f: f6 c6 13  mov   a,$13c6+y
0612: d4 30     mov   $30+x,a           ; channel 8 voice ptr
0614: 3f 38 06  call  $0638
0617: 3d        inc   x
0618: 3d        inc   x
0619: dd        mov   a,y
061a: 5d        mov   x,a
061b: 1d        dec   x                 ; x = song select - 1
061c: f5 d0 13  mov   a,$13d0+x
061f: c4 d9     mov   $d9,a
0621: f5 d4 13  mov   a,$13d4+x
0624: c4 da     mov   $da,a
0626: f0 0f     beq   $0637             ; $00xx = not used
0628: 8d fb     mov   y,#$fb
062a: f7 d9     mov   a,($d9)+y
062c: d6 df 13  mov   $13df+y,a         ; copy from ($d9) to $13df in 252 bytes
062f: dc        dec   y
0630: d0 f8     bne   $062a
0632: f7 d9     mov   a,($d9)+y
0634: d6 df 13  mov   $13df+y,a
0637: 6f        ret

0638: e8 ff     mov   a,#$ff
063a: d5 c1 02  mov   $02c1+x,a
063d: d5 01 01  mov   $0101+x,a
0640: e4 e8     mov   a,$e8
0642: d5 66 03  mov   $0366+x,a
0645: e8 00     mov   a,#$00
0647: d5 00 01  mov   $0100+x,a
064a: d4 00     mov   $00+x,a
064c: d4 01     mov   $01+x,a
064e: d4 10     mov   $10+x,a
0650: d4 11     mov   $11+x,a
0652: d4 20     mov   $20+x,a
0654: d4 21     mov   $21+x,a
0656: d4 51     mov   $51+x,a
0658: d4 60     mov   $60+x,a
065a: d4 70     mov   $70+x,a
065c: d4 71     mov   $71+x,a
065e: d4 81     mov   $81+x,a
0660: d4 90     mov   $90+x,a
0662: d4 91     mov   $91+x,a
0664: d4 a0     mov   $a0+x,a
0666: d4 a1     mov   $a1+x,a
0668: d4 b0     mov   $b0+x,a
066a: d4 b1     mov   $b1+x,a
066c: d4 c0     mov   $c0+x,a
066e: d4 c1     mov   $c1+x,a
0670: d5 00 02  mov   $0200+x,a
0673: d5 01 02  mov   $0201+x,a
0676: d5 10 02  mov   $0210+x,a
0679: d5 11 02  mov   $0211+x,a
067c: d5 20 02  mov   $0220+x,a
067f: d5 21 02  mov   $0221+x,a
0682: d5 30 02  mov   $0230+x,a
0685: d5 31 02  mov   $0231+x,a
0688: d5 40 02  mov   $0240+x,a
068b: d5 41 02  mov   $0241+x,a
068e: d5 50 02  mov   $0250+x,a
0691: d5 51 02  mov   $0251+x,a
0694: d5 60 02  mov   $0260+x,a
0697: d5 61 02  mov   $0261+x,a
069a: d5 70 02  mov   $0270+x,a
069d: d5 71 02  mov   $0271+x,a
06a0: d5 80 02  mov   $0280+x,a
06a3: d5 81 02  mov   $0281+x,a
06a6: d5 90 02  mov   $0290+x,a
06a9: d5 91 02  mov   $0291+x,a
06ac: d5 a0 02  mov   $02a0+x,a
06af: d5 a1 02  mov   $02a1+x,a
06b2: d5 b0 02  mov   $02b0+x,a
06b5: d5 b1 02  mov   $02b1+x,a
06b8: d5 c0 02  mov   $02c0+x,a
06bb: d5 d0 02  mov   $02d0+x,a
06be: d5 d1 02  mov   $02d1+x,a
06c1: d5 e0 02  mov   $02e0+x,a
06c4: d5 e1 02  mov   $02e1+x,a
06c7: d5 f0 02  mov   $02f0+x,a
06ca: d5 45 03  mov   $0345+x,a
06cd: d5 65 03  mov   $0365+x,a
06d0: e8 ff     mov   a,#$ff
06d2: d5 f1 02  mov   $02f1+x,a
06d5: 7d        mov   a,x
06d6: 1c        asl   a
06d7: 1c        asl   a
06d8: 1c        asl   a
06d9: d4 50     mov   $50+x,a
06db: e8 01     mov   a,#$01
06dd: d4 80     mov   $80+x,a
06df: f5 aa 10  mov   a,$10aa+x
06e2: 24 d7     and   a,$d7
06e4: c4 d7     mov   $d7,a
06e6: f5 aa 10  mov   a,$10aa+x
06e9: 24 d6     and   a,$d6
06eb: c4 d6     mov   $d6,a
06ed: f5 aa 10  mov   a,$10aa+x
06f0: 24 d8     and   a,$d8
06f2: c4 d8     mov   $d8,a
06f4: f5 a9 10  mov   a,$10a9+x
06f7: 04 d5     or    a,$d5
06f9: c4 d5     mov   $d5,a
06fb: 7d        mov   a,x
06fc: 1c        asl   a
06fd: 1c        asl   a
06fe: 1c        asl   a
06ff: 60        clrc
0700: 88 07     adc   a,#$07
0702: c4 f2     mov   $f2,a
0704: 8f 9f f3  mov   $f3,#$9f
0707: 6f        ret

0708: e8 00     mov   a,#$00
070a: 8d 00     mov   y,#$00
070c: d6 00 00  mov   $0000+y,a
070f: d6 00 01  mov   $0100+y,a
0712: fc        inc   y
0713: ad f0     cmp   y,#$f0
0715: d0 f5     bne   $070c
0717: bc        inc   a
0718: 8d 0e     mov   y,#$0e
071a: d6 80 00  mov   $0080+y,a
071d: dc        dec   y
071e: dc        dec   y
071f: 10 f9     bpl   $071a
0721: 9c        dec   a
0722: 8d 00     mov   y,#$00
0724: d6 00 02  mov   $0200+y,a
0727: d6 00 03  mov   $0300+y,a
072a: dc        dec   y
072b: d0 f7     bne   $0724
072d: 8f 00 db  mov   $db,#$00
0730: 8f 03 dc  mov   $dc,#$03
0733: 8f 04 d9  mov   $d9,#$04
0736: 8f 00 da  mov   $da,#$00
0739: 8d 00     mov   y,#$00
073b: e8 00     mov   a,#$00
073d: d7 db     mov   ($db)+y,a
073f: fc        inc   y
0740: d0 02     bne   $0744
0742: ab dc     inc   $dc
0744: 8b d9     dec   $d9
0746: f8 d9     mov   x,$d9
0748: 3d        inc   x
0749: d0 f0     bne   $073b
074b: 8b da     dec   $da
074d: f8 da     mov   x,$da
074f: 3d        inc   x
0750: d0 e9     bne   $073b
0752: 6f        ret

0753: f5 f1 02  mov   a,$02f1+x
0756: 30 03     bmi   $075b
0758: 5f 63 11  jmp   $1163

075b: e8 01     mov   a,#$01
075d: d5 65 03  mov   $0365+x,a
0760: f5 a9 10  mov   a,$10a9+x
0763: c4 d2     mov   $d2,a
0765: f5 aa 10  mov   a,$10aa+x
0768: c4 d3     mov   $d3,a
076a: 9b 80     dec   $80+x             ; decrease tick counter
076c: d0 25     bne   $0793
; tick
076e: 3f 85 07  call  $0785
0771: 10 1d     bpl   $0790             ; 00-7f - note/rest
0773: 68 ba     cmp   a,#$ba
0775: b0 0b     bcs   $0782
0777: 1c        asl   a
0778: fd        mov   y,a
0779: f6 70 0b  mov   a,$0b70+y
077c: 2d        push  a
077d: f6 6f 0b  mov   a,$0b6f+y
0780: 2d        push  a
0781: 6f        ret

; vcmd db-ff - end of track (duplicated)
0782: 5f 68 0f  jmp   $0f68

; read next voice byte
0785: e7 30     mov   a,($30+x)
0787: bb 30     inc   $30+x
0789: d0 02     bne   $078d
078b: bb 31     inc   $31+x
078d: 08 00     or    a,#$00
078f: 6f        ret

; vcmd 00-7f - note/rest
0790: 3f 95 0a  call  $0a95
0793: 3f e3 07  call  $07e3
0796: 3f 6e 08  call  $086e
0799: 3f 94 08  call  $0894
079c: 3f d8 08  call  $08d8
079f: 3f 26 09  call  $0926
07a2: 3f 71 09  call  $0971
07a5: 3f b9 09  call  $09b9
07a8: f5 60 02  mov   a,$0260+x
07ab: 60        clrc
07ac: 95 20 02  adc   a,$0220+x
07af: 0d        push  psw
07b0: 60        clrc
07b1: 95 c0 02  adc   a,$02c0+x
07b4: d4 10     mov   $10+x,a
07b6: f5 61 02  mov   a,$0261+x
07b9: 95 21 02  adc   a,$0221+x
07bc: 8e        pop   psw
07bd: 88 00     adc   a,#$00
07bf: d4 11     mov   $11+x,a
07c1: 5f 63 11  jmp   $1163

07c4: f5 60 02  mov   a,$0260+x
07c7: 80        setc
07c8: b5 d1 02  sbc   a,$02d1+x
07cb: c4 d9     mov   $d9,a
07cd: f5 61 02  mov   a,$0261+x
07d0: b5 e0 02  sbc   a,$02e0+x
07d3: 04 d9     or    a,$d9
07d5: 6f        ret

07d6: f5 d1 02  mov   a,$02d1+x
07d9: d5 60 02  mov   $0260+x,a
07dc: f5 e0 02  mov   a,$02e0+x
07df: d5 61 02  mov   $0261+x,a
07e2: 6f        ret

07e3: f5 00 01  mov   a,$0100+x
07e6: f0 0a     beq   $07f2
07e8: e4 ea     mov   a,$ea
07ea: d5 45 03  mov   $0345+x,a
07ed: e4 d0     mov   a,$d0
07ef: d5 46 03  mov   $0346+x,a
07f2: f5 45 03  mov   a,$0345+x
07f5: f0 6b     beq   $0862
07f7: fd        mov   y,a
07f8: f5 46 03  mov   a,$0346+x
07fb: cf        mul   ya
07fc: dd        mov   a,y
07fd: c4 e5     mov   $e5,a
07ff: f5 45 03  mov   a,$0345+x
0802: 80        setc
0803: a4 e5     sbc   a,$e5
0805: 1c        asl   a
0806: 9c        dec   a
0807: d4 01     mov   $01+x,a
0809: e4 e5     mov   a,$e5
080b: 1c        asl   a
080c: d4 00     mov   $00+x,a
080e: f5 46 03  mov   a,$0346+x
0811: 10 07     bpl   $081a
0813: f5 45 03  mov   a,$0345+x
0816: d4 00     mov   $00+x,a
0818: 2f 05     bra   $081f
081a: f5 45 03  mov   a,$0345+x
081d: d4 01     mov   $01+x,a
081f: e4 e6     mov   a,$e6
0821: 28 0f     and   a,#$0f
0823: d0 17     bne   $083c
0825: f5 56 03  mov   a,$0356+x
0828: f0 12     beq   $083c
082a: fd        mov   y,a
082b: f5 45 03  mov   a,$0345+x
082e: cf        mul   ya
082f: dd        mov   a,y
0830: d5 45 03  mov   $0345+x,a
0833: d0 07     bne   $083c
0835: d4 00     mov   $00+x,a
0837: d4 01     mov   $01+x,a
0839: d5 56 03  mov   $0356+x,a
083c: f5 55 03  mov   a,$0355+x
083f: 30 0a     bmi   $084b
0841: 60        clrc
0842: 95 46 03  adc   a,$0346+x
0845: 90 18     bcc   $085f
0847: 8d ff     mov   y,#$ff
0849: 2f 08     bra   $0853
084b: 60        clrc
084c: 95 46 03  adc   a,$0346+x
084f: b0 0e     bcs   $085f
0851: 8d 00     mov   y,#$00
0853: f5 55 03  mov   a,$0355+x
0856: 48 ff     eor   a,#$ff
0858: 60        clrc
0859: 88 01     adc   a,#$01
085b: d5 55 03  mov   $0355+x,a
085e: dd        mov   a,y
085f: d5 46 03  mov   $0346+x,a
0862: 6f        ret

0863: 80        setc
0864: a8 40     sbc   a,#$40
0866: 30 02     bmi   $086a
0868: 1c        asl   a
0869: 6f        ret

086a: 1c        asl   a
086b: 08 80     or    a,#$80
086d: 6f        ret

086e: f5 91 02  mov   a,$0291+x
0871: f0 20     beq   $0893
0873: 9b 91     dec   $91+x
0875: d0 1c     bne   $0893
0877: f5 b0 02  mov   a,$02b0+x
087a: 75 90 02  cmp   a,$0290+x
087d: f0 08     beq   $0887
087f: d5 90 02  mov   $0290+x,a
0882: f5 a1 02  mov   a,$02a1+x
0885: 2f 0a     bra   $0891
0887: 60        clrc
0888: 95 91 02  adc   a,$0291+x
088b: d5 90 02  mov   $0290+x,a
088e: f5 a0 02  mov   a,$02a0+x
0891: d4 91     mov   $91+x,a
0893: 6f        ret

0894: f4 81     mov   a,$81+x
0896: d0 07     bne   $089f
0898: f5 90 02  mov   a,$0290+x
089b: d4 90     mov   $90+x,a
089d: 2f 33     bra   $08d2
089f: 9b 81     dec   $81+x
08a1: d0 34     bne   $08d7
08a3: f5 80 02  mov   a,$0280+x
08a6: d4 81     mov   $81+x,a
08a8: f4 90     mov   a,$90+x
08aa: 75 90 02  cmp   a,$0290+x
08ad: f0 28     beq   $08d7
08af: 90 0f     bcc   $08c0
08b1: f4 90     mov   a,$90+x
08b3: 80        setc
08b4: b5 81 02  sbc   a,$0281+x
08b7: d4 90     mov   $90+x,a
08b9: 75 90 02  cmp   a,$0290+x
08bc: b0 14     bcs   $08d2
08be: 2f 0d     bra   $08cd
08c0: f5 81 02  mov   a,$0281+x
08c3: 60        clrc
08c4: 94 90     adc   a,$90+x
08c6: d4 90     mov   $90+x,a
08c8: 75 90 02  cmp   a,$0290+x
08cb: 90 05     bcc   $08d2
08cd: f5 90 02  mov   a,$0290+x
08d0: d4 90     mov   $90+x,a
08d2: fb 90     mov   y,$90+x
08d4: 3f ee 0a  call  $0aee
08d7: 6f        ret

08d8: f4 70     mov   a,$70+x
08da: f0 04     beq   $08e0
08dc: 9b 70     dec   $70+x
08de: 2f 45     bra   $0925
08e0: f5 10 02  mov   a,$0210+x
08e3: f0 40     beq   $0925
08e5: 30 15     bmi   $08fc
08e7: f5 00 02  mov   a,$0200+x
08ea: 60        clrc
08eb: 95 20 02  adc   a,$0220+x
08ee: d5 20 02  mov   $0220+x,a
08f1: e8 00     mov   a,#$00
08f3: 95 21 02  adc   a,$0221+x
08f6: d5 21 02  mov   $0221+x,a
08f9: 5f 11 09  jmp   $0911

08fc: f5 00 02  mov   a,$0200+x
08ff: 48 ff     eor   a,#$ff
0901: bc        inc   a
0902: 60        clrc
0903: 95 20 02  adc   a,$0220+x
0906: d5 20 02  mov   $0220+x,a
0909: e8 ff     mov   a,#$ff
090b: 95 21 02  adc   a,$0221+x
090e: d5 21 02  mov   $0221+x,a
0911: 9b 71     dec   $71+x
0913: d0 10     bne   $0925
0915: f5 01 02  mov   a,$0201+x
0918: d4 71     mov   $71+x,a
091a: f0 09     beq   $0925
091c: f5 10 02  mov   a,$0210+x
091f: 48 ff     eor   a,#$ff
0921: bc        inc   a
0922: d5 10 02  mov   $0210+x,a
0925: 6f        ret

0926: f5 51 02  mov   a,$0251+x
0929: d0 05     bne   $0930
092b: 3f d6 07  call  $07d6
092e: 2f 40     bra   $0970
0930: 3f c4 07  call  $07c4
0933: f0 3b     beq   $0970
0935: 90 1f     bcc   $0956
0937: f5 51 02  mov   a,$0251+x
093a: 48 ff     eor   a,#$ff
093c: bc        inc   a
093d: 60        clrc
093e: 95 60 02  adc   a,$0260+x
0941: d5 60 02  mov   $0260+x,a
0944: f5 61 02  mov   a,$0261+x
0947: 88 ff     adc   a,#$ff
0949: d5 61 02  mov   $0261+x,a
094c: 3f c4 07  call  $07c4
094f: b0 1f     bcs   $0970
0951: 3f d6 07  call  $07d6
0954: 2f 1a     bra   $0970
0956: f5 60 02  mov   a,$0260+x
0959: 60        clrc
095a: 95 51 02  adc   a,$0251+x
095d: d5 60 02  mov   $0260+x,a
0960: f5 61 02  mov   a,$0261+x
0963: 88 00     adc   a,#$00
0965: d5 61 02  mov   $0261+x,a
0968: 3f c4 07  call  $07c4
096b: 90 03     bcc   $0970
096d: 3f d6 07  call  $07d6
0970: 6f        ret

0971: f5 d0 02  mov   a,$02d0+x
0974: f0 42     beq   $09b8
0976: f4 51     mov   a,$51+x
0978: f0 1e     beq   $0998
097a: 9b 51     dec   $51+x
097c: d0 1a     bne   $0998
097e: 3f be 0f  call  $0fbe
0981: 10 0e     bpl   $0991
0983: 68 80     cmp   a,#$80
0985: d0 06     bne   $098d
0987: f4 61     mov   a,$61+x
0989: d4 60     mov   $60+x,a
098b: 2f f1     bra   $097e
098d: 9b 60     dec   $60+x
098f: 2f 02     bra   $0993
0991: d4 21     mov   $21+x,a
0993: f5 41 02  mov   a,$0241+x
0996: d4 51     mov   $51+x,a
0998: f4 c1     mov   a,$c1+x
099a: f0 1c     beq   $09b8
099c: 74 80     cmp   a,$80+x
099e: d0 18     bne   $09b8
09a0: f4 61     mov   a,$61+x
09a2: d0 14     bne   $09b8
09a4: f4 40     mov   a,$40+x
09a6: c4 d9     mov   $d9,a
09a8: f4 41     mov   a,$41+x
09aa: c4 da     mov   $da,a
09ac: 8d ff     mov   y,#$ff
09ae: fc        inc   y
09af: f7 d9     mov   a,($d9)+y
09b1: 10 fb     bpl   $09ae
09b3: fc        inc   y
09b4: db 60     mov   $60+x,y
09b6: db 61     mov   $61+x,y
09b8: 6f        ret

09b9: f5 d0 02  mov   a,$02d0+x
09bc: d0 32     bne   $09f0
09be: f4 80     mov   a,$80+x
09c0: f0 10     beq   $09d2
09c2: 74 c1     cmp   a,$c1+x
09c4: d0 0c     bne   $09d2
09c6: e8 03     mov   a,#$03
09c8: d4 a1     mov   $a1+x,a
09ca: f4 21     mov   a,$21+x
09cc: d4 b1     mov   $b1+x,a
09ce: e8 00     mov   a,#$00
09d0: d4 b0     mov   $b0+x,a
09d2: 9b a0     dec   $a0+x
09d4: d0 1a     bne   $09f0
09d6: fb a1     mov   y,$a1+x
09d8: f6 f6 09  mov   a,$09f6+y
09db: 2d        push  a
09dc: f6 f1 09  mov   a,$09f1+y
09df: 2d        push  a
09e0: 7d        mov   a,x
09e1: c4 e5     mov   $e5,a
09e3: 1c        asl   a
09e4: 1c        asl   a
09e5: 1c        asl   a
09e6: 80        setc
09e7: a4 e5     sbc   a,$e5
09e9: 5c        lsr   a
09ea: fd        mov   y,a
09eb: f6 04 03  mov   a,$0304+y
09ee: d4 a0     mov   $a0+x,a
09f0: 6f        ret

09f1: fb 2d     mov   y,$2d+x
09f3: 68 69     cmp   a,#$69
09f5: 94 09     adc   a,$09+x
09f7: 0a 0a 0a  or1   c,$0a0a,0
09fa: 0a f6 07  or1   c,$07f6,0
09fd: 03 80 b6  bbs0  $80,$09b6
0a00: 05 03 6d  or    a,$6d03
0a03: 4d        push  x
0a04: 2d        push  a
0a05: f6 06 03  mov   a,$0306+y
0a08: f0 1f     beq   $0a29
0a0a: fb b0     mov   y,$b0+x
0a0c: 5d        mov   x,a
0a0d: 1d        dec   x
0a0e: ae        pop   a
0a0f: cf        mul   ya
0a10: 9e        div   ya,x
0a11: ce        pop   x
0a12: ee        pop   y
0a13: 60        clrc
0a14: 96 05 03  adc   a,$0305+y
0a17: d4 21     mov   $21+x,a
0a19: bb b0     inc   $b0+x
0a1b: f6 06 03  mov   a,$0306+y
0a1e: 74 b0     cmp   a,$b0+x
0a20: d0 06     bne   $0a28
0a22: bb a1     inc   $a1+x
0a24: e8 00     mov   a,#$00
0a26: d4 b0     mov   $b0+x,a
0a28: 6f        ret

0a29: ae        pop   a
0a2a: ce        pop   x
0a2b: ee        pop   y
0a2c: 6f        ret

0a2d: f6 07 03  mov   a,$0307+y
0a30: 80        setc
0a31: b6 09 03  sbc   a,$0309+y
0a34: 6d        push  y
0a35: 4d        push  x
0a36: 2d        push  a
0a37: f6 08 03  mov   a,$0308+y
0a3a: 2d        push  a
0a3b: 60        clrc
0a3c: b4 b0     sbc   a,$b0+x
0a3e: f0 13     beq   $0a53
0a40: fd        mov   y,a
0a41: ae        pop   a
0a42: f0 20     beq   $0a64
0a44: 5d        mov   x,a
0a45: ae        pop   a
0a46: cf        mul   ya
0a47: 9e        div   ya,x
0a48: ce        pop   x
0a49: ee        pop   y
0a4a: 60        clrc
0a4b: 96 09 03  adc   a,$0309+y
0a4e: d4 21     mov   $21+x,a
0a50: bb b0     inc   $b0+x
0a52: 6f        ret

0a53: ae        pop   a
0a54: ae        pop   a
0a55: ce        pop   x
0a56: ee        pop   y
0a57: f6 09 03  mov   a,$0309+y
0a5a: d4 21     mov   $21+x,a
0a5c: bb a1     inc   $a1+x
0a5e: e8 00     mov   a,#$00
0a60: d4 b0     mov   $b0+x,a
0a62: 6f        ret

0a63: 6f        ret

0a64: ae        pop   a
0a65: ce        pop   x
0a66: ee        pop   y
0a67: 6f        ret

0a68: 6f        ret

0a69: f4 b1     mov   a,$b1+x
0a6b: 6d        push  y
0a6c: 4d        push  x
0a6d: 2d        push  a
0a6e: f6 0a 03  mov   a,$030a+y
0a71: 2d        push  a
0a72: 60        clrc
0a73: b4 b0     sbc   a,$b0+x
0a75: f0 0f     beq   $0a86
0a77: fd        mov   y,a
0a78: ae        pop   a
0a79: f0 16     beq   $0a91
0a7b: 5d        mov   x,a
0a7c: ae        pop   a
0a7d: cf        mul   ya
0a7e: 9e        div   ya,x
0a7f: ce        pop   x
0a80: ee        pop   y
0a81: d4 21     mov   $21+x,a
0a83: bb b0     inc   $b0+x
0a85: 6f        ret

0a86: ae        pop   a
0a87: ae        pop   a
0a88: ce        pop   x
0a89: ee        pop   y
0a8a: e8 00     mov   a,#$00
0a8c: d4 21     mov   $21+x,a
0a8e: bb a1     inc   $a1+x
0a90: 6f        ret

0a91: ae        pop   a
0a92: ce        pop   x
0a93: ee        pop   y
0a94: 6f        ret

0a95: f0 50     beq   $0ae7
0a97: fb 20     mov   y,$20+x
0a99: 60        clrc
0a9a: 96 b8 38  adc   a,$38b8+y
0a9d: 5b c0     lsr   $c0+x
0a9f: b0 04     bcs   $0aa5
0aa1: 60        clrc
0aa2: 95 40 02  adc   a,$0240+x
0aa5: d5 b0 02  mov   $02b0+x,a
0aa8: d5 90 02  mov   $0290+x,a
0aab: fd        mov   y,a
0aac: f5 80 02  mov   a,$0280+x
0aaf: d4 81     mov   $81+x,a
0ab1: d0 05     bne   $0ab8
0ab3: db 90     mov   $90+x,y
0ab5: 3f ee 0a  call  $0aee
0ab8: 3f 17 0b  call  $0b17
0abb: f5 d0 02  mov   a,$02d0+x
0abe: f0 0e     beq   $0ace
0ac0: f5 e1 02  mov   a,$02e1+x
0ac3: d0 09     bne   $0ace
0ac5: d4 60     mov   $60+x,a
0ac7: d4 61     mov   $61+x,a
0ac9: f5 41 02  mov   a,$0241+x
0acc: d4 51     mov   $51+x,a
0ace: f5 a1 02  mov   a,$02a1+x
0ad1: d4 91     mov   $91+x,a
0ad3: 3f 46 0b  call  $0b46
0ad6: f5 f0 02  mov   a,$02f0+x
0ad9: d0 0c     bne   $0ae7
0adb: e4 d2     mov   a,$d2
0add: 04 d4     or    a,$d4
0adf: c4 d4     mov   $d4,a
0ae1: e4 d2     mov   a,$d2
0ae3: 04 d5     or    a,$d5
0ae5: c4 d5     mov   $d5,a
0ae7: 3f 5a 0b  call  $0b5a
0aea: 3f 31 0b  call  $0b31
0aed: 6f        ret

0aee: f6 00 12  mov   a,$1200+y
0af1: c4 d9     mov   $d9,a
0af3: f6 55 12  mov   a,$1255+y
0af6: c4 da     mov   $da,a
0af8: fb 20     mov   y,$20+x
0afa: f6 e5 38  mov   a,$38e5+y
0afd: fd        mov   y,a
0afe: 6d        push  y
0aff: e4 d9     mov   a,$d9
0b01: cf        mul   ya
0b02: cb dd     mov   $dd,y
0b04: ee        pop   y
0b05: e4 da     mov   a,$da
0b07: cf        mul   ya
0b08: 8f 00 de  mov   $de,#$00
0b0b: 7a dd     addw  ya,$dd
0b0d: 7a d9     addw  ya,$d9
0b0f: d5 d1 02  mov   $02d1+x,a
0b12: dd        mov   a,y
0b13: d5 e0 02  mov   $02e0+x,a
0b16: 6f        ret

0b17: f5 11 02  mov   a,$0211+x
0b1a: d4 70     mov   $70+x,a
0b1c: f5 01 02  mov   a,$0201+x
0b1f: 5c        lsr   a
0b20: d4 71     mov   $71+x,a
0b22: f5 50 02  mov   a,$0250+x
0b25: d5 10 02  mov   $0210+x,a
0b28: e8 00     mov   a,#$00
0b2a: d5 21 02  mov   $0221+x,a
0b2d: d5 20 02  mov   $0220+x,a
0b30: 6f        ret

0b31: f5 70 02  mov   a,$0270+x
0b34: f0 0a     beq   $0b40
; duration (direct)
0b36: f4 80     mov   a,$80+x
0b38: 80        setc
0b39: b5 70 02  sbc   a,$0270+x
0b3c: d4 c1     mov   $c1+x,a
0b3e: 2f 05     bra   $0b45
; duration (subtract)
0b40: f5 71 02  mov   a,$0271+x
0b43: d4 c1     mov   $c1+x,a
0b45: 6f        ret

0b46: f5 b1 02  mov   a,$02b1+x
0b49: f0 0e     beq   $0b59
0b4b: f5 e1 02  mov   a,$02e1+x
0b4e: d0 09     bne   $0b59
0b50: e8 00     mov   a,#$00
0b52: d4 a1     mov   $a1+x,a
0b54: d4 b0     mov   $b0+x,a
0b56: bc        inc   a
0b57: d4 a0     mov   $a0+x,a
0b59: 6f        ret

0b5a: f5 31 02  mov   a,$0231+x
0b5d: d0 05     bne   $0b64
0b5f: f5 30 02  mov   a,$0230+x
0b62: d0 08     bne   $0b6c
0b64: e8 00     mov   a,#$00
0b66: d5 31 02  mov   $0231+x,a
0b69: 3f 85 07  call  $0785
0b6c: d4 80     mov   $80+x,a
0b6e: 6f        ret

; vcmd dispatch table
0b6f: dw $0f68  ; 80 - end of track
0b71: dw $0be3  ; 81 - goto
0b73: dw $0bf2  ; 82 - call subroutine
0b75: dw $0c06  ; 83 - end subroutine
0b77: dw $0c0c  ; 84 - repeat start
0b79: dw $0c1a  ; 85 - repeat end
0b7b: dw $0c3b  ; 86 - set default note length
0b7d: dw $0c44  ; 87
0b7f: dw $0c4c  ; 88 - transpose (absolute)
0b81: dw $0c55  ; 89 - set instrument
0b83: dw $0c5d  ; 8a
0b85: dw $0c6a  ; 8b
0b87: dw $0c72  ; 8c
0b89: dw $0c9c  ; 8d
0b8b: dw $0ca5  ; 8e
0b8d: dw $0ca9  ; 8f
0b8f: dw $0ccd  ; 90
0b91: dw $0cc5  ; 91
0b93: dw $0cd6  ; 92 - set duration (direct)
0b95: dw $0ce4  ; 93 - set duration (subtract)
0b97: dw $0cf2  ; 94
0b99: dw $0d01  ; 95
0b9b: dw $0d09  ; 96
0b9d: dw $0d20  ; 97
0b9f: dw $0d5c  ; 98
0ba1: dw $0d65  ; 99
0ba3: dw $0d6e  ; 9a
0ba5: dw $0d88  ; 9b
0ba7: dw $0d80  ; 9c
0ba9: dw $0d97  ; 9d
0bab: dw $0da6  ; 9e
0bad: dw $0dae  ; 9f
0baf: dw $0db6  ; a0
0bb1: dw $0dbd  ; a1
0bb3: dw $0dd9  ; a2
0bb5: dw $0df6  ; a3
0bb7: dw $0e0f  ; a4
0bb9: dw $0e4e  ; a5
0bbb: dw $0e74  ; a6
0bbd: dw $0e85  ; a7
0bbf: dw $0ea3  ; a8
0bc1: dw $0eb1  ; a9
0bc3: dw $0ed3  ; aa
0bc5: dw $0ee2  ; ab
0bc7: dw $0ef1  ; ac
0bc9: dw $0efc  ; ad
0bcb: dw $0f07  ; ae
0bcd: dw $0f12  ; af
0bcf: dw $0f2a  ; b0
0bd1: dw $0f33  ; b1
0bd3: dw $0f3c  ; b2
0bd5: dw $0f45  ; b3
0bd7: dw $0f54  ; b4
0bd9: dw $0f5d  ; b5
0bdb: dw $0f7e  ; b6 - set tempo
0bdd: dw $0f86  ; b7
0bdf: dw $0f96  ; b8
0be1: dw $0fb0  ; b9

; vcmd 81 - goto
0be3: 3f 85 07  call  $0785
0be6: 2d        push  a
0be7: 3f 85 07  call  $0785
0bea: d4 31     mov   $31+x,a
0bec: ae        pop   a
0bed: d4 30     mov   $30+x,a
0bef: 5f 6e 07  jmp   $076e

; vcmd 82 - call subroutine
0bf2: 3f 85 07  call  $0785
0bf5: 2d        push  a
0bf6: 3f 85 07  call  $0785
0bf9: 2d        push  a
0bfa: 3f e6 0f  call  $0fe6             ; push return address
0bfd: ae        pop   a
0bfe: d4 31     mov   $31+x,a
0c00: ae        pop   a
0c01: d4 30     mov   $30+x,a           ; goto arg1/2
0c03: 5f 6e 07  jmp   $076e

; vcmd 83 - end subroutine
0c06: 3f cd 0f  call  $0fcd             ; pop return address
0c09: 5f 6e 07  jmp   $076e

; vcmd 84 - repeat start
0c0c: 3f 85 07  call  $0785             ; arg1 - repeat count
0c0f: 2d        push  a
0c10: 3f e6 0f  call  $0fe6             ; push voice ptr
0c13: ae        pop   a
0c14: 3f de 0f  call  $0fde             ; push repeat count
0c17: 5f 6e 07  jmp   $076e

; vcmd 85 - repeat end
0c1a: fb 50     mov   y,$50+x
0c1c: f6 7f 03  mov   a,$037f+y
0c1f: 9c        dec   a                 ; decrement repeat count
0c20: f0 10     beq   $0c32
; repeat again
0c22: d6 7f 03  mov   $037f+y,a         ; update repeat count
0c25: f6 7e 03  mov   a,$037e+y
0c28: d4 31     mov   $31+x,a
0c2a: f6 7d 03  mov   a,$037d+y
0c2d: d4 30     mov   $30+x,a           ; goto repeat start
0c2f: 5f 6e 07  jmp   $076e
; repeat end
0c32: dd        mov   a,y
0c33: 80        setc
0c34: a8 03     sbc   a,#$03
0c36: d4 50     mov   $50+x,a           ; pop repeat params
0c38: 5f 6e 07  jmp   $076e

; vcmd 86 - set default note length
0c3b: 3f 85 07  call  $0785
0c3e: d5 30 02  mov   $0230+x,a
0c41: 5f 6e 07  jmp   $076e

; vcmd 87
0c44: e8 ff     mov   a,#$ff
0c46: d5 31 02  mov   $0231+x,a
0c49: 5f 6e 07  jmp   $076e

; vcmd 88 - transpose (absolute)
0c4c: 3f 85 07  call  $0785
0c4f: d5 40 02  mov   $0240+x,a
0c52: 5f 6e 07  jmp   $076e

; vcmd 89 - set instrument
0c55: 3f 85 07  call  $0785
0c58: d4 20     mov   $20+x,a
0c5a: 5f 6e 07  jmp   $076e

; vcmd 8a
0c5d: 3f 85 07  call  $0785
0c60: d4 00     mov   $00+x,a
0c62: e8 00     mov   a,#$00
0c64: d5 45 03  mov   $0345+x,a
0c67: 5f 6e 07  jmp   $076e

; vcmd 8b
0c6a: 3f 85 07  call  $0785
0c6d: d4 01     mov   $01+x,a
0c6f: 5f 62 0c  jmp   $0c62

; vcmd 8c
0c72: 3f 85 07  call  $0785
0c75: d5 41 02  mov   $0241+x,a
0c78: 3f 85 07  call  $0785
0c7b: d4 40     mov   $40+x,a
0c7d: 3f 85 07  call  $0785
0c80: d4 41     mov   $41+x,a
0c82: e8 00     mov   a,#$00
0c84: d4 60     mov   $60+x,a
0c86: d5 b1 02  mov   $02b1+x,a
0c89: d5 e1 02  mov   $02e1+x,a
0c8c: 9c        dec   a
0c8d: d5 d0 02  mov   $02d0+x,a
0c90: e8 01     mov   a,#$01
0c92: d4 51     mov   $51+x,a
0c94: 3f be 0f  call  $0fbe
0c97: d4 21     mov   $21+x,a
0c99: 5f 6e 07  jmp   $076e

; vcmd 8d
0c9c: 3f 85 07  call  $0785
0c9f: d5 c0 02  mov   $02c0+x,a
0ca2: 5f 6e 07  jmp   $076e

; vcmd 8e
0ca5: e8 01     mov   a,#$01
0ca7: 2f 02     bra   $0cab

; vmcd 8f
0ca9: e8 ff     mov   a,#$ff
0cab: d5 50 02  mov   $0250+x,a
0cae: 3f 85 07  call  $0785
0cb1: d5 11 02  mov   $0211+x,a
0cb4: 3f 85 07  call  $0785
0cb7: d5 00 02  mov   $0200+x,a
0cba: 3f 85 07  call  $0785
0cbd: d5 01 02  mov   $0201+x,a
0cc0: d4 71     mov   $71+x,a
0cc2: 5f 6e 07  jmp   $076e

; vcmd 91
0cc5: e8 00     mov   a,#$00
0cc7: d5 50 02  mov   $0250+x,a
0cca: 5f 6e 07  jmp   $076e

; vcmd 90
0ccd: 3f 85 07  call  $0785
0cd0: d5 51 02  mov   $0251+x,a
0cd3: 5f 6e 07  jmp   $076e

; vcmd 92 - set duration (direct)
0cd6: 3f 85 07  call  $0785
0cd9: d5 70 02  mov   $0270+x,a
0cdc: e8 00     mov   a,#$00
0cde: d5 71 02  mov   $0271+x,a
0ce1: 5f 6e 07  jmp   $076e

; vcmd 93 - set duration (subtract)
0ce4: 3f 85 07  call  $0785
0ce7: d5 71 02  mov   $0271+x,a
0cea: e8 00     mov   a,#$00
0cec: d5 70 02  mov   $0270+x,a
0cef: 5f 6e 07  jmp   $076e

; vcmd 94
0cf2: 3f 85 07  call  $0785
0cf5: d5 81 02  mov   $0281+x,a
0cf8: 3f 85 07  call  $0785
0cfb: d5 80 02  mov   $0280+x,a
0cfe: 5f 6e 07  jmp   $076e

; vcmd 95
0d01: e8 00     mov   a,#$00
0d03: d5 80 02  mov   $0280+x,a
0d06: 5f 6e 07  jmp   $076e

; vcmd 96
0d09: 3f 85 07  call  $0785
0d0c: d5 91 02  mov   $0291+x,a
0d0f: 3f 85 07  call  $0785
0d12: d5 a0 02  mov   $02a0+x,a
0d15: 3f 85 07  call  $0785
0d18: d5 a1 02  mov   $02a1+x,a
0d1b: d4 91     mov   $91+x,a
0d1d: 5f 6e 07  jmp   $076e

; vcmd 97
0d20: e8 d8     mov   a,#$d8
0d22: c4 d9     mov   $d9,a
0d24: e8 13     mov   a,#$13
0d26: c4 da     mov   $da,a
0d28: 3f 85 07  call  $0785
0d2b: 8d 07     mov   y,#$07
0d2d: cf        mul   ya
0d2e: 4d        push  x
0d2f: 60        clrc
0d30: 7a d9     addw  ya,$d9
0d32: da d9     movw  $d9,ya
0d34: 8d 00     mov   y,#$00
0d36: 7d        mov   a,x
0d37: c4 e5     mov   $e5,a
0d39: 1c        asl   a
0d3a: 1c        asl   a
0d3b: 1c        asl   a
0d3c: 80        setc
0d3d: a4 e5     sbc   a,$e5
0d3f: 5c        lsr   a
0d40: 5d        mov   x,a
0d41: f7 d9     mov   a,($d9)+y
0d43: d5 04 03  mov   $0304+x,a
0d46: 3d        inc   x
0d47: fc        inc   y
0d48: ad 07     cmp   y,#$07
0d4a: d0 f5     bne   $0d41
0d4c: ce        pop   x
0d4d: e8 00     mov   a,#$00
0d4f: d5 d0 02  mov   $02d0+x,a
0d52: d5 e1 02  mov   $02e1+x,a
0d55: 9c        dec   a
0d56: d5 b1 02  mov   $02b1+x,a
0d59: 5f 6e 07  jmp   $076e

; vcmd 98
0d5c: e4 d2     mov   a,$d2
0d5e: 04 d6     or    a,$d6
0d60: c4 d6     mov   $d6,a
0d62: 5f 6e 07  jmp   $076e

; vcmd 99
0d65: e4 d3     mov   a,$d3
0d67: 24 d6     and   a,$d6
0d69: c4 d6     mov   $d6,a
0d6b: 5f 6e 07  jmp   $076e

; vcmd 9a
0d6e: 3f 85 07  call  $0785
0d71: 28 1f     and   a,#$1f
0d73: 08 20     or    a,#$20
0d75: 8f 6c f2  mov   $f2,#$6c
0d78: 00        nop
0d79: 00        nop
0d7a: 00        nop
0d7b: c4 f3     mov   $f3,a
0d7d: 5f 6e 07  jmp   $076e

; vcmd 9c
0d80: e8 ff     mov   a,#$ff
0d82: d5 e1 02  mov   $02e1+x,a
0d85: 5f 6e 07  jmp   $076e

; vcmd 9b
0d88: e8 00     mov   a,#$00
0d8a: d5 e1 02  mov   $02e1+x,a
0d8d: d5 d0 02  mov   $02d0+x,a
0d90: 9c        dec   a
0d91: d5 b1 02  mov   $02b1+x,a
0d94: 5f 6e 07  jmp   $076e

; vcmd 9d
0d97: e8 00     mov   a,#$00
0d99: d5 e1 02  mov   $02e1+x,a
0d9c: d5 b1 02  mov   $02b1+x,a
0d9f: 9c        dec   a
0da0: d5 d0 02  mov   $02d0+x,a
0da3: 5f 6e 07  jmp   $076e

; vcmd 9e
0da6: e8 00     mov   a,#$00
0da8: d5 f0 02  mov   $02f0+x,a
0dab: 5f 6e 07  jmp   $076e

; vcmd 9f
0dae: e8 ff     mov   a,#$ff
0db0: d5 f0 02  mov   $02f0+x,a
0db3: 5f 6e 07  jmp   $076e

; vcmd a0
0db6: e8 01     mov   a,#$01
0db8: d4 c0     mov   $c0+x,a
0dba: 5f 6e 07  jmp   $076e

; vcmd a1
0dbd: 4d        push  x
0dbe: f8 e4     mov   x,$e4
0dc0: cd 01     mov   x,#$01
0dc2: 3f 89 05  call  $0589
0dc5: ce        pop   x
0dc6: f5 a9 10  mov   a,$10a9+x
0dc9: c4 d2     mov   $d2,a
0dcb: f5 aa 10  mov   a,$10aa+x
0dce: c4 d3     mov   $d3,a
0dd0: 8f 00 e0  mov   $e0,#$00
0dd3: 8f 7f e1  mov   $e1,#$7f
0dd6: 5f 6e 07  jmp   $076e

; vcmd a2
0dd9: 7d        mov   a,x
0dda: c4 e5     mov   $e5,a
0ddc: 1c        asl   a
0ddd: 1c        asl   a
0dde: 1c        asl   a
0ddf: 80        setc
0de0: a4 e5     sbc   a,$e5
0de2: 5c        lsr   a
0de3: fd        mov   y,a
0de4: e8 07     mov   a,#$07
0de6: c4 e5     mov   $e5,a
0de8: 3f 85 07  call  $0785
0deb: d6 04 03  mov   $0304+y,a
0dee: fc        inc   y
0def: 8b e5     dec   $e5
0df1: d0 f5     bne   $0de8
0df3: 5f 88 0d  jmp   $0d88

; vcmd a3
0df6: 3f 85 07  call  $0785
0df9: 3f b9 10  call  $10b9
0dfc: 1c        asl   a
0dfd: c4 e5     mov   $e5,a
0dff: 60        clrc
0e00: f4 30     mov   a,$30+x
0e02: 84 e5     adc   a,$e5
0e04: d4 30     mov   $30+x,a
0e06: f4 31     mov   a,$31+x
0e08: 88 00     adc   a,#$00
0e0a: d4 31     mov   $31+x,a
0e0c: 5f e3 0b  jmp   $0be3

; vcmd a4
0e0f: 3f 85 07  call  $0785
0e12: c4 e5     mov   $e5,a
0e14: 3f b9 10  call  $10b9
0e17: c4 d9     mov   $d9,a
0e19: 1c        asl   a
0e1a: 60        clrc
0e1b: 94 30     adc   a,$30+x
0e1d: d4 30     mov   $30+x,a
0e1f: f4 31     mov   a,$31+x
0e21: 88 00     adc   a,#$00
0e23: d4 31     mov   $31+x,a
0e25: 3f 85 07  call  $0785
0e28: 2d        push  a
0e29: 3f 85 07  call  $0785
0e2c: 2d        push  a
0e2d: e4 e5     mov   a,$e5
0e2f: 9c        dec   a
0e30: 80        setc
0e31: a4 d9     sbc   a,$d9
0e33: 1c        asl   a
0e34: c4 d9     mov   $d9,a
0e36: f4 30     mov   a,$30+x
0e38: 84 d9     adc   a,$d9
0e3a: d4 30     mov   $30+x,a
0e3c: f4 31     mov   a,$31+x
0e3e: 88 00     adc   a,#$00
0e40: d4 31     mov   $31+x,a
0e42: 3f e6 0f  call  $0fe6
0e45: ae        pop   a
0e46: d4 31     mov   $31+x,a
0e48: ae        pop   a
0e49: d4 30     mov   $30+x,a
0e4b: 5f 6e 07  jmp   $076e

; vcmd a5
0e4e: 3f 85 07  call  $0785
0e51: 3f 5d 0e  call  $0e5d
0e54: 16 3c 03  or    a,$033c+y
0e57: d6 3c 03  mov   $033c+y,a
0e5a: 5f 6e 07  jmp   $076e

0e5d: 4d        push  x
0e5e: fd        mov   y,a
0e5f: 28 07     and   a,#$07
0e61: 5d        mov   x,a
0e62: dd        mov   a,y
0e63: 5c        lsr   a
0e64: 5c        lsr   a
0e65: 5c        lsr   a
0e66: fd        mov   y,a
0e67: f5 6c 0e  mov   a,$0e6c+x
0e6a: ce        pop   x
0e6b: 6f        ret

0e6c: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd a6
0e74: 3f 85 07  call  $0785
0e77: 3f 5d 0e  call  $0e5d
0e7a: 48 ff     eor   a,#$ff
0e7c: 36 3c 03  and   a,$033c+y
0e7f: d6 3c 03  mov   $033c+y,a
0e82: 5f 6e 07  jmp   $076e

; vcmd a7
0e85: 3f 85 07  call  $0785
0e88: 3f 5d 0e  call  $0e5d
0e8b: 36 3c 03  and   a,$033c+y
0e8e: f0 03     beq   $0e93
0e90: 5f e3 0b  jmp   $0be3

0e93: f4 30     mov   a,$30+x
0e95: 60        clrc
0e96: 88 02     adc   a,#$02
0e98: d4 30     mov   $30+x,a
0e9a: f4 31     mov   a,$31+x
0e9c: 88 00     adc   a,#$00
0e9e: d4 31     mov   $31+x,a
0ea0: 5f 6e 07  jmp   $076e

; vcmd a8
0ea3: 3f 85 07  call  $0785
0ea6: 3f 5d 0e  call  $0e5d
0ea9: 36 3c 03  and   a,$033c+y
0eac: d0 e5     bne   $0e93
0eae: 5f e3 0b  jmp   $0be3

; vcmd a9
0eb1: 3f 85 07  call  $0785
0eb4: 3f 5d 0e  call  $0e5d
0eb7: 36 3c 03  and   a,$033c+y
0eba: f0 03     beq   $0ebf
0ebc: 5f 6e 07  jmp   $076e

0ebf: e8 01     mov   a,#$01
0ec1: d4 80     mov   $80+x,a
0ec3: f4 30     mov   a,$30+x
0ec5: 80        setc
0ec6: a8 02     sbc   a,#$02
0ec8: d4 30     mov   $30+x,a
0eca: f4 31     mov   a,$31+x
0ecc: a8 00     sbc   a,#$00
0ece: d4 31     mov   $31+x,a
0ed0: 5f 93 07  jmp   $0793

; vcmd aa
0ed3: e4 d2     mov   a,$d2
0ed5: 04 d7     or    a,$d7
0ed7: c4 d7     mov   $d7,a
0ed9: 8f 4d f2  mov   $f2,#$4d
0edc: fa d7 f3  mov   ($f3),($d7)
0edf: 5f 6e 07  jmp   $076e

; vcmd ab
0ee2: e4 d3     mov   a,$d3
0ee4: 24 d7     and   a,$d7
0ee6: c4 d7     mov   $d7,a
0ee8: 8f 4d f2  mov   $f2,#$4d
0eeb: fa d7 f3  mov   ($f3),($d7)
0eee: 5f 6e 07  jmp   $076e

; vcmd ac
0ef1: 3f 85 07  call  $0785
0ef4: 8f 2c f2  mov   $f2,#$2c
0ef7: c4 f3     mov   $f3,a
0ef9: 5f 6e 07  jmp   $076e

; vcmd ad
0efc: 3f 85 07  call  $0785
0eff: 8f 3c f2  mov   $f2,#$3c
0f02: c4 f3     mov   $f3,a
0f04: 5f 6e 07  jmp   $076e

; vcmd ae
0f07: 3f 85 07  call  $0785
0f0a: 8f 0d f2  mov   $f2,#$0d
0f0d: c4 f3     mov   $f3,a
0f0f: 5f 6e 07  jmp   $076e

; vcmd af
0f12: 8d 00     mov   y,#$00
0f14: dd        mov   a,y
0f15: 1c        asl   a
0f16: 1c        asl   a
0f17: 1c        asl   a
0f18: 1c        asl   a
0f19: 08 0f     or    a,#$0f
0f1b: c4 f2     mov   $f2,a
0f1d: 3f 85 07  call  $0785
0f20: c4 f3     mov   $f3,a
0f22: fc        inc   y
0f23: ad 08     cmp   y,#$08
0f25: d0 ed     bne   $0f14
0f27: 5f 6e 07  jmp   $076e

; vcmd b0
0f2a: 3f 85 07  call  $0785
0f2d: d5 56 03  mov   $0356+x,a
0f30: 5f 6e 07  jmp   $076e

; vcmd b1
0f33: e4 d2     mov   a,$d2
0f35: 04 d8     or    a,$d8
0f37: c4 d8     mov   $d8,a
0f39: 5f 6e 07  jmp   $076e

; vcmd b2
0f3c: e4 d3     mov   a,$d3
0f3e: 24 d8     and   a,$d8
0f40: c4 d8     mov   $d8,a
0f42: 5f 6e 07  jmp   $076e

; vcmd b3
0f45: 3f 85 07  call  $0785
0f48: d5 45 03  mov   $0345+x,a
0f4b: 3f 85 07  call  $0785
0f4e: d5 46 03  mov   $0346+x,a
0f51: 5f 6e 07  jmp   $076e

; vcmd b4
0f54: 3f 85 07  call  $0785
0f57: d5 55 03  mov   $0355+x,a
0f5a: 5f 6e 07  jmp   $076e

; vcmd b5
0f5d: 3f 85 07  call  $0785
0f60: 4d        push  x
0f61: 3f f7 10  call  $10f7
0f64: ce        pop   x
0f65: 5f 6e 07  jmp   $076e

; vcmd 80 - end of track
0f68: e8 00     mov   a,#$00
0f6a: d5 65 03  mov   $0365+x,a
0f6d: d5 f1 02  mov   $02f1+x,a
0f70: d5 c1 02  mov   $02c1+x,a
0f73: 9c        dec   a
0f74: d5 01 01  mov   $0101+x,a
0f77: e4 d2     mov   a,$d2
0f79: 04 d5     or    a,$d5
0f7b: c4 d5     mov   $d5,a
0f7d: 6f        ret

; vcmd b6 - set tempo
0f7e: 3f 85 07  call  $0785
0f81: c4 fc     mov   $fc,a
0f83: 5f 6e 07  jmp   $076e

; vcmd b7
0f86: e8 ff     mov   a,#$ff
0f88: d5 00 01  mov   $0100+x,a
0f8b: e8 01     mov   a,#$01
0f8d: d5 46 03  mov   $0346+x,a
0f90: d5 45 03  mov   $0345+x,a
0f93: 5f 6e 07  jmp   $076e

; vcmd b8
0f96: 3f 85 07  call  $0785
0f99: fd        mov   y,a
0f9a: f6 a0 0f  mov   a,$0fa0+y
0f9d: 5f 71 07  jmp   $0771

0fa0: db $2d,$2d,$2d,$2d,$2d,$2d,$2d,$2d
0fa8: db $2d,$2d,$2d,$2d,$2d,$2d,$2d,$2d

; vcmd b9
0fb0: 7d        mov   a,x
0fb1: 1c        asl   a
0fb2: 1c        asl   a
0fb3: 1c        asl   a
0fb4: 74 50     cmp   a,$50+x
0fb6: f0 03     beq   $0fbb
0fb8: 5f ac 12  jmp   $12ac

0fbb: 5f 6e 07  jmp   $076e

0fbe: f4 40     mov   a,$40+x
0fc0: c4 d9     mov   $d9,a
0fc2: f4 41     mov   a,$41+x
0fc4: c4 da     mov   $da,a
0fc6: fb 60     mov   y,$60+x
0fc8: bb 60     inc   $60+x
0fca: f7 d9     mov   a,($d9)+y
0fcc: 6f        ret

0fcd: fb 50     mov   y,$50+x
0fcf: dc        dec   y
0fd0: f6 80 03  mov   a,$0380+y
0fd3: d4 31     mov   $31+x,a
0fd5: dc        dec   y
0fd6: f6 80 03  mov   a,$0380+y
0fd9: d4 30     mov   $30+x,a
0fdb: db 50     mov   $50+x,y
0fdd: 6f        ret

; push repeat count
0fde: fb 50     mov   y,$50+x
0fe0: d6 80 03  mov   $0380+y,a
0fe3: bb 50     inc   $50+x
0fe5: 6f        ret

; push voice ptr
0fe6: fb 50     mov   y,$50+x           ; load stack ptr
0fe8: f4 30     mov   a,$30+x
0fea: d6 80 03  mov   $0380+y,a
0fed: f4 31     mov   a,$31+x
0fef: d6 81 03  mov   $0381+y,a         ; push voice ptr
0ff2: fc        inc   y
0ff3: fc        inc   y
0ff4: db 50     mov   $50+x,y           ; save stack ptr
0ff6: 6f        ret

0ff7: f6 65 03  mov   a,$0365+y
0ffa: f0 37     beq   $1033
0ffc: d8 f2     mov   $f2,x
0ffe: f6 00 00  mov   a,$0000+y
1001: 3f 36 10  call  $1036
1004: c4 f3     mov   $f3,a
1006: 3d        inc   x
1007: d8 f2     mov   $f2,x
1009: f6 01 00  mov   a,$0001+y
100c: 3f 36 10  call  $1036
100f: c4 f3     mov   $f3,a
1011: 3d        inc   x
1012: d8 f2     mov   $f2,x
1014: f6 10 00  mov   a,$0010+y
1017: c4 f3     mov   $f3,a
1019: 3d        inc   x
101a: d8 f2     mov   $f2,x
101c: f6 11 00  mov   a,$0011+y
101f: c4 f3     mov   $f3,a
1021: 3d        inc   x
1022: d8 f2     mov   $f2,x
1024: f6 20 00  mov   a,$0020+y
1027: c4 f3     mov   $f3,a
1029: 3d        inc   x
102a: 3d        inc   x
102b: 3d        inc   x
102c: d8 f2     mov   $f2,x
102e: f6 21 00  mov   a,$0021+y
1031: c4 f3     mov   $f3,a
1033: 5f 63 11  jmp   $1163

1036: 30 17     bmi   $104f
1038: 6d        push  y
1039: 4d        push  x
103a: 6d        push  y
103b: ce        pop   x
103c: fd        mov   y,a
103d: f5 c1 02  mov   a,$02c1+x
1040: bc        inc   a
1041: d0 04     bne   $1047
1043: e4 e8     mov   a,$e8
1045: 2f 03     bra   $104a
1047: f5 66 03  mov   a,$0366+x
104a: cf        mul   ya
104b: dd        mov   a,y
104c: ce        pop   x
104d: ee        pop   y
104e: 6f        ret

104f: 48 ff     eor   a,#$ff
1051: bc        inc   a
1052: 6d        push  y
1053: 4d        push  x
1054: 6d        push  y
1055: ce        pop   x
1056: fd        mov   y,a
1057: f5 66 03  mov   a,$0366+x
105a: cf        mul   ya
105b: dd        mov   a,y
105c: ce        pop   x
105d: ee        pop   y
105e: 48 ff     eor   a,#$ff
1060: bc        inc   a
1061: 6f        ret

1062: cd 00     mov   x,#$00
1064: f5 74 10  mov   a,$1074+x
1067: 30 0a     bmi   $1073
1069: c4 f2     mov   $f2,a
106b: f5 8f 10  mov   a,$108f+x
106e: c4 f3     mov   $f3,a
1070: 3d        inc   x
1071: d0 f1     bne   $1064
1073: 6f        ret

1074: db $2c,$3c,$5c,$2d,$3d,$4d,$7d,$6d,$0d,$5d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$05,$15,$25,$35,$45,$55,$65,$75,$ff
108f: db $00,$00,$ff,$00,$00,$00,$00,$03,$00,$38,$7f,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

10a9: db $01,$fe
10ab: db $02,$fd
10ad: db $04,$fb
10af: db $08,$f7
10b1: db $10,$ef
10b3: db $20,$df
10b5: db $40,$bf
10b7: db $80,$7f

10b9: fd        mov   y,a
10ba: 3f d7 10  call  $10d7
10bd: 3f d7 10  call  $10d7
10c0: 3f d7 10  call  $10d7
10c3: 3f d7 10  call  $10d7
10c6: 3f d7 10  call  $10d7
10c9: 3f d7 10  call  $10d7
10cc: 3f d7 10  call  $10d7
10cf: 3f d7 10  call  $10d7
10d2: e4 eb     mov   a,$eb
10d4: cf        mul   ya
10d5: dd        mov   a,y
10d6: 6f        ret

10d7: e4 eb     mov   a,$eb
10d9: 28 48     and   a,#$48
10db: 88 38     adc   a,#$38
10dd: 1c        asl   a
10de: 1c        asl   a
10df: 2b ee     rol   $ee
10e1: 2b ed     rol   $ed
10e3: 2b ec     rol   $ec
10e5: 2b eb     rol   $eb
10e7: 6f        ret

10e8: 8f 00 f1  mov   $f1,#$00
10eb: 00        nop
10ec: 00        nop
10ed: 00        nop
10ee: 00        nop
10ef: 8f 85 fc  mov   $fc,#$85
10f2: 8f 04 f1  mov   $f1,#$04
10f5: 6f        ret

10f6: 6f        ret

10f7: fd        mov   y,a
10f8: 68 4f     cmp   a,#$4f
10fa: b0 fa     bcs   $10f6
10fc: cd 0e     mov   x,#$0e
10fe: f6 68 17  mov   a,$1768+y
1101: 30 0a     bmi   $110d
1103: dd        mov   a,y
1104: 75 01 01  cmp   a,$0101+x
1107: f0 32     beq   $113b
1109: 1d        dec   x
110a: 1d        dec   x
110b: 10 f7     bpl   $1104
110d: cd 0e     mov   x,#$0e
110f: f5 f1 02  mov   a,$02f1+x
1112: f0 27     beq   $113b
1114: 1d        dec   x
1115: 1d        dec   x
1116: 10 f7     bpl   $110f
1118: cd 0e     mov   x,#$0e
111a: e8 ff     mov   a,#$ff
111c: d8 e5     mov   $e5,x
111e: 75 c1 02  cmp   a,$02c1+x
1121: 90 05     bcc   $1128
1123: f5 c1 02  mov   a,$02c1+x
1126: d8 e5     mov   $e5,x
1128: 1d        dec   x
1129: 1d        dec   x
112a: 10 f2     bpl   $111e
112c: f8 e5     mov   x,$e5
112e: c4 e5     mov   $e5,a
1130: f6 68 17  mov   a,$1768+y
1133: 28 7f     and   a,#$7f
1135: 64 e5     cmp   a,$e5
1137: b0 02     bcs   $113b
1139: 60        clrc
113a: 6f        ret

113b: dd        mov   a,y
113c: d5 01 01  mov   $0101+x,a
113f: f6 68 17  mov   a,$1768+y
1142: 28 7f     and   a,#$7f
1144: d5 c1 02  mov   $02c1+x,a
1147: 3f 45 06  call  $0645
114a: f6 ca 16  mov   a,$16ca+y
114d: d4 30     mov   $30+x,a
114f: f6 19 17  mov   a,$1719+y
1152: d4 31     mov   $31+x,a
1154: e4 e9     mov   a,$e9
1156: d5 66 03  mov   $0366+x,a
1159: 80        setc
115a: 6f        ret

115b: e4 f4     mov   a,$f4
115d: c4 f4     mov   $f4,a
115f: bc        inc   a
1160: c4 d1     mov   $d1,a
1162: 6f        ret

1163: e4 f4     mov   a,$f4
1165: 64 f4     cmp   a,$f4
1167: d0 fa     bne   $1163
1169: 64 d1     cmp   a,$d1
116b: d0 21     bne   $118e
116d: fd        mov   y,a
116e: e4 f6     mov   a,$f6
1170: 64 f6     cmp   a,$f6
1172: d0 fa     bne   $116e
1174: 68 0c     cmp   a,#$0c
1176: b0 e3     bcs   $115b
1178: 5d        mov   x,a
1179: f0 e0     beq   $115b
117b: f5 9a 11  mov   a,$119a+x
117e: 2d        push  a
117f: f5 8f 11  mov   a,$118f+x
1182: 2d        push  a
1183: e4 f7     mov   a,$f7
1185: 64 f7     cmp   a,$f7
1187: d0 fa     bne   $1183
1189: cb f4     mov   $f4,y
118b: fc        inc   y
118c: cb d1     mov   $d1,y
118e: 60        clrc
118f: 6f        ret

; $11aa
; $11c2
; $11cd
; $11e3
; $11e4
; $11e9
; $11f6
; $11f9
; $11fc
; $11ff
; $11a6
1190: db $aa,$c2,$cd,$e3,$e4,$e9,$f6,$f9,$fc,$ff,$a6 ; $118f+x
119b: db $11,$11,$11,$11,$11,$11,$11,$11,$11,$11,$11 ; $119a+x

11a6: c5 a0 0f  mov   $0fa0,a
11a9: 6f        ret

; start song (a - 1), save song index to $e4
11aa: 5d        mov   x,a
11ab: 1d        dec   x
11ac: d8 e4     mov   $e4,x
11ae: 3f 89 05  call  $0589
11b1: 8f 00 e2  mov   $e2,#$00
11b4: 8f 00 e3  mov   $e3,#$00
11b7: 8f 00 e0  mov   $e0,#$00
11ba: 8f 7f e1  mov   $e1,#$7f
11bd: 3f e8 10  call  $10e8
11c0: 80        setc
11c1: 6f        ret

11c2: 3f f7 10  call  $10f7
11c5: 8f 00 e0  mov   $e0,#$00
11c8: 8f 7f e1  mov   $e1,#$7f
11cb: 60        clrc
11cc: 6f        ret

11cd: 8d 00     mov   y,#$00
11cf: bc        inc   a
11d0: 9c        dec   a
11d1: 10 01     bpl   $11d4
11d3: dc        dec   y
11d4: cb e3     mov   $e3,y
11d6: 1c        asl   a
11d7: 2b e3     rol   $e3
11d9: 1c        asl   a
11da: 2b e3     rol   $e3
11dc: 1c        asl   a
11dd: 2b e3     rol   $e3
11df: c4 e2     mov   $e2,a
11e1: 60        clrc
11e2: 6f        ret

11e3: 6f        ret

11e4: 3f aa 11  call  $11aa
11e7: 60        clrc
11e8: 6f        ret

11e9: 3f 5d 0e  call  $0e5d
11ec: 48 ff     eor   a,#$ff
11ee: 36 3c 03  and   a,$033c+y
11f1: d6 3c 03  mov   $033c+y,a
11f4: 60        clrc
11f5: 6f        ret

11f6: c4 e8     mov   $e8,a
11f8: 6f        ret

11f9: c4 e9     mov   $e9,a
11fb: 6f        ret

11fc: c4 ea     mov   $ea,a
11fe: 6f        ret

11ff: c4 d0     mov   $d0,a
1201: 6f        ret

1202: 80 87 8f 98 a1 aa
1208: b5 bf cb d7 e4 f1 00 0f
1210: 1f 30 42 55 6a 7f 96 ae
1218: c8 e3 00 1e 3e 60 85 ab
1220: d4 ff 2c 5d 90 c6 00 3c
1228: 7d c1 0a 56 a8 fe 59 ba
1230: 20 8d 00 79 fa 83 14 ad
1238: 50 fc b2 74 41 1a 00 f3
1240: f5 07 28 5b a0 f9 65 e8
1248: 82 34 00 e7 eb 0e 51 b7
1250: 41 f2 cb d1 04 68 00 00
1258: 00 00 00 00 00 00 00 00
1260: 00 00 00 01 01 01 01 01
1268: 01 01 01 01 01 01 01 02
1270: 02 02 02 02 02 02 02 03
1278: 03 03 03 04 04 04 04 05
1280: 05 05 05 06 06 07 07 08
1288: 08 08 09 0a 0a 0b 0b 0c
1290: 0d 0e 0f 10 10 11 13 14
1298: 15 16 17 19 1a 1c 1e 20
12a0: 21 23 26 28 2a 2d 2f 32
12a8: 35 39 3c 40

12ac: c4 f4     mov   $f4,a
12ae: d8 f5     mov   $f5,x
12b0: bc        inc   a
12b1: c4 f6     mov   $f6,a
12b3: 5f b0 12  jmp   $12b0

12b6: cd ef     mov   x,#$ef
12b8: bd        mov   sp,x
12b9: e8 00     mov   a,#$00
12bb: c6        mov   (x),a
12bc: 1d        dec   x
12bd: d0 fc     bne   $12bb
12bf: 8f 30 f1  mov   $f1,#$30
12c2: 8f aa f4  mov   $f4,#$aa
12c5: 8f bb f5  mov   $f5,#$bb
12c8: 78 cc f4  cmp   $f4,#$cc
12cb: d0 fb     bne   $12c8
12cd: 2f 19     bra   $12e8
12cf: eb f4     mov   y,$f4
12d1: d0 fc     bne   $12cf
12d3: 7e f4     cmp   y,$f4
12d5: d0 0b     bne   $12e2
12d7: e4 f5     mov   a,$f5
12d9: cb f4     mov   $f4,y
12db: d7 00     mov   ($00)+y,a
12dd: fc        inc   y
12de: d0 f3     bne   $12d3
12e0: ab 01     inc   $01
12e2: 10 ef     bpl   $12d3
12e4: 7e f4     cmp   y,$f4
12e6: 10 eb     bpl   $12d3
12e8: ba f6     movw  ya,$f6
12ea: da 00     movw  $00,ya
12ec: da f6     movw  $f6,ya
12ee: ba f4     movw  ya,$f4
12f0: da f4     movw  $f4,ya
12f2: dd        mov   a,y
12f3: 5d        mov   x,a
12f4: d0 d9     bne   $12cf
12f6: 5f 00 04  jmp   $0400
