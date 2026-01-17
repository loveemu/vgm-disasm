02b5: 20        clrp
02b6: cd 2f     mov   x,#$2f
02b8: bd        mov   sp,x
02b9: e8 00     mov   a,#$00
02bb: 5d        mov   x,a
02bc: af        mov   (x)+,a
02bd: c8 f0     cmp   x,#$f0
02bf: d0 fb     bne   $02bc
02c1: 5d        mov   x,a
02c2: d5 00 01  mov   $0100+x,a
02c5: c8 b0     cmp   x,#$b0
02c7: b0 03     bcs   $02cc
02c9: d5 00 02  mov   $0200+x,a
02cc: 3d        inc   x
02cd: d0 f3     bne   $02c2
02cf: fd        mov   y,a
02d0: da f4     movw  $f4,ya
02d2: da f6     movw  $f6,ya
02d4: bc        inc   a
02d5: 3f e7 0f  call  $0fe7
02d8: a2 31     set5  $31
02da: e8 15     mov   a,#$15
02dc: 8d 5d     mov   y,#$5d
02de: cb f2     mov   $f2,y
02e0: c4 f3     mov   $f3,a
02e2: 8f f0 f1  mov   $f1,#$f0
02e5: e8 10     mov   a,#$10
02e7: c4 fa     mov   $fa,a
02e9: c4 fb     mov   $fb,a
02eb: c4 3b     mov   $3b,a
02ed: 8f 03 f1  mov   $f1,#$03
02f0: 8f 02 f4  mov   $f4,#$02
02f3: 8f 00 f5  mov   $f5,#$00
02f6: e5 df 06  mov   a,$06df
02f9: ec e0 06  mov   y,$06e0
02fc: da 06     movw  $06,ya
02fe: 8f 02 2f  mov   $2f,#$02
0301: 8d 0a     mov   y,#$0a
0303: ad 05     cmp   y,#$05
0305: f0 07     beq   $030e
0307: b0 08     bcs   $0311
0309: 69 36 35  cmp   ($35),($36)
030c: d0 0f     bne   $031d
030e: e3 35 0c  bbs7  $35,$031d
0311: f6 8e 03  mov   a,$038e+y
0314: c4 f2     mov   $f2,a
0316: f6 98 03  mov   a,$0398+y
0319: 5d        mov   x,a
031a: e6        mov   a,(x)
031b: c4 f3     mov   $f3,a
031d: fe e4     dbnz  y,$0303
031f: cb 29     mov   $29,y
0321: cb 2a     mov   $2a,y
0323: eb fe     mov   y,$fe
0325: f0 fc     beq   $0323
0327: e8 30     mov   a,#$30
0329: cf        mul   ya
032a: 60        clrc
032b: 84 58     adc   a,$58
032d: c4 58     mov   $58,a
032f: 90 03     bcc   $0334
0331: 3f a3 03  call  $03a3
0334: eb fd     mov   y,$fd
0336: f0 fc     beq   $0334
0338: 6d        push  y
0339: e8 40     mov   a,#$40
033b: cf        mul   ya
033c: 60        clrc
033d: 84 14     adc   a,$14
033f: c4 14     mov   $14,a
0341: 90 18     bcc   $035b
0343: ba f4     movw  ya,$f4
0345: 5a f4     cmpw  ya,$f4
0347: d0 fa     bne   $0343
0349: 5a 00     cmpw  ya,$00
034b: f0 07     beq   $0354
034d: da 00     movw  $00,ya
034f: da f4     movw  $f4,ya
0351: 3f 69 04  call  $0469
0354: 69 36 35  cmp   ($35),($36)
0357: f0 02     beq   $035b
0359: ab 35     inc   $35
035b: ee        pop   y
035c: e4 3b     mov   a,$3b
035e: cf        mul   ya
035f: 60        clrc
0360: 84 39     adc   a,$39
0362: c4 39     mov   $39,a
0364: 90 05     bcc   $036b
0366: 3f cf 09  call  $09cf
0369: 2f 96     bra   $0301
036b: e4 05     mov   a,$05
036d: f0 92     beq   $0301
036f: cd 00     mov   x,#$00
0371: 8f 01 2b  mov   $2b,#$01
0374: f4 19     mov   a,$19+x
0376: f0 03     beq   $037b
0378: 3f 5d 13  call  $135d
037b: 3d        inc   x
037c: 3d        inc   x
037d: 0b 2b     asl   $2b
037f: f4 19     mov   a,$19+x
0381: f0 03     beq   $0386
0383: 3f 5d 13  call  $135d
0386: 3d        inc   x
0387: 3d        inc   x
0388: 0b 2b     asl   $2b
038a: d0 e8     bne   $0374
038c: 5f 01 03  jmp   $0301

038f: 2c 3c 0d  rol   $0d3c
0392: 4d        push  x
0393: 6c 4c 5c  ror   $5c4c
0396: 3d        inc   x
0397: 2d        push  a
0398: 5c        lsr   a
0399: 4a 4c 37  and1  c,$174c,1
039c: 33 31 29  bbc1  $31,$03c8
039f: 09 32 34  or    ($34),($32)
03a2: 2a e4 13  or1   c,!($13e4,0)
03a5: f0 03     beq   $03aa
03a7: 3f 18 07  call  $0718
03aa: eb 71     mov   y,$71
03ac: f0 75     beq   $0423
03ae: dc        dec   y
03af: 6d        push  y
03b0: f9 72     mov   x,$72+y
03b2: d8 2b     mov   $2b,x
03b4: 7d        mov   a,x
03b5: f9 59     mov   x,$59+y
03b7: 24 28     and   a,$28
03b9: d0 4f     bne   $040a
03bb: fb 62     mov   y,$62+x
03bd: f0 57     beq   $0416
03bf: d8 2c     mov   $2c,x
03c1: 9b 7f     dec   $7f+x
03c3: d0 45     bne   $040a
03c5: e7 61     mov   a,($61+x)
03c7: bb 61     inc   $61+x
03c9: d0 02     bne   $03cd
03cb: bb 62     inc   $62+x
03cd: fd        mov   y,a
03ce: d0 17     bne   $03e7
03d0: f4 8f     mov   a,$8f+x
03d2: f0 50     beq   $0424
03d4: 3f 78 0e  call  $0e78
03d7: 9b 8f     dec   $8f+x
03d9: d0 ea     bne   $03c5
03db: f5 60 01  mov   a,$0160+x
03de: d4 61     mov   $61+x,a
03e0: f5 61 01  mov   a,$0161+x
03e3: d4 62     mov   $62+x,a
03e5: 2f de     bra   $03c5
03e7: 30 0c     bmi   $03f5
03e9: d5 30 01  mov   $0130+x,a
03ec: e7 61     mov   a,($61+x)
03ee: bb 61     inc   $61+x
03f0: d0 02     bne   $03f4
03f2: bb 62     inc   $62+x
03f4: fd        mov   y,a
03f5: 68 ce     cmp   a,#$ce
03f7: 90 05     bcc   $03fe
03f9: 3f 4d 04  call  $044d
03fc: 2f c7     bra   $03c5
03fe: 3f 48 07  call  $0748
0401: f5 30 01  mov   a,$0130+x
0404: d4 7f     mov   $7f+x,a
0406: d4 80     mov   $80+x,a
0408: 2f 03     bra   $040d
040a: 3f 3e 12  call  $123e
040d: 3f 2b 10  call  $102b
0410: 3f ea 10  call  $10ea
0413: 3f dc 13  call  $13dc
0416: e4 df     mov   a,$df
0418: 68 02     cmp   a,#$02
041a: d0 03     bne   $041f
041c: 3f 15 06  call  $0615
041f: ae        pop   a
0420: fd        mov   y,a
0421: d0 8b     bne   $03ae
0423: 6f        ret

0424: e8 ff     mov   a,#$ff
0426: d5 71 02  mov   $0271+x,a
0429: bc        inc   a
042a: d4 62     mov   $62+x,a
042c: e4 df     mov   a,$df
042e: f0 e6     beq   $0416
0430: 3f fb 05  call  $05fb
0433: 2f e1     bra   $0416

; note dur%'s
0435: db $32,$65,$7f,$98,$b2,$cb,$e5,$fd
; per-note velocity values
043d: db $50,$64,$73,$84,$8e,$98,$a2,$ac
0445: db $b6,$c0,$ca,$d5,$e1,$e8,$f2,$ff

044d: 1c        asl   a
044e: fd        mov   y,a
044f: f6 77 0a  mov   a,$0a77+y
0452: 2d        push  a
0453: f6 76 0a  mov   a,$0a76+y
0456: 2d        push  a
0457: dd        mov   a,y
0458: 5c        lsr   a
0459: fd        mov   y,a
045a: f6 0a 0b  mov   a,$0b0a+y
045d: f0 09     beq   $0468
045f: e7 61     mov   a,($61+x)
0461: bb 61     inc   $61+x
0463: d0 02     bne   $0467
0465: bb 62     inc   $62+x
0467: fd        mov   y,a
0468: 6f        ret

0469: dd        mov   a,y
046a: 28 0e     and   a,#$0e
046c: 5d        mov   x,a
046d: dd        mov   a,y
046e: 28 e0     and   a,#$e0
0470: 9f        xcn   a
0471: c4 2c     mov   $2c,a
0473: 1f 77 04  jmp   ($0477+x)

0476: 6f        ret

0477: 59        eor   (x),(y)
0478: 06        or    a,(x)
0479: 87 04     adc   a,($04+x)
047b: 98 04 b1  adc   $b1,#$04
047e: 05 d8 04  or    a,$04d8
0481: e0        clrv
0482: 04 a8     or    a,$a8
0484: 04 e5     or    a,$e5
0486: 05 fa 00  or    a,$00fa
0489: 05 e8 ff  or    a,$ffe8
048c: c4 04     mov   $04,a
048e: e4 2c     mov   a,$2c
0490: 5c        lsr   a
0491: c4 e6     mov   $e6,a
0493: e8 02     mov   a,#$02
0495: c4 2f     mov   $2f,a
0497: 6f        ret

0498: e4 00     mov   a,$00
049a: c4 e6     mov   $e6,a
049c: e8 01     mov   a,#$01
049e: c4 7d     mov   $7d,a
04a0: e8 7e     mov   a,#$7e
04a2: c4 05     mov   $05,a
04a4: 8f 02 2f  mov   $2f,#$02
04a7: 6f        ret

04a8: e5 39 14  mov   a,$1439
04ab: 48 01     eor   a,#$01
04ad: c5 39 14  mov   $1439,a
04b0: f0 1a     beq   $04cc
04b2: e4 4a     mov   a,$4a
04b4: 04 4c     or    a,$4c
04b6: f0 1f     beq   $04d7
04b8: e4 4a     mov   a,$4a
04ba: 10 05     bpl   $04c1
04bc: 48 ff     eor   a,#$ff
04be: bc        inc   a
04bf: c4 4a     mov   $4a,a
04c1: e4 4c     mov   a,$4c
04c3: 10 0f     bpl   $04d4
04c5: 48 ff     eor   a,#$ff
04c7: bc        inc   a
04c8: c4 4c     mov   $4c,a
04ca: 2f 08     bra   $04d4
04cc: e4 51     mov   a,$51
04ce: c4 4a     mov   $4a,a
04d0: e4 52     mov   a,$52
04d2: c4 4c     mov   $4c,a
04d4: 8f ff 46  mov   $46,#$ff
04d7: 6f        ret

04d8: e4 00     mov   a,$00
04da: 60        clrc
04db: 84 7e     adc   a,$7e
04dd: c4 3b     mov   $3b,a
04df: 6f        ret

04e0: f8 2c     mov   x,$2c
04e2: f4 19     mov   a,$19+x
04e4: c4 10     mov   $10,a
04e6: c4 0d     mov   $0d,a
04e8: f0 0a     beq   $04f4
04ea: c8 02     cmp   x,#$02
04ec: f0 03     beq   $04f1
04ee: 5f b0 05  jmp   $05b0

04f1: 5f e1 06  jmp   $06e1

04f4: e4 00     mov   a,$00
04f6: d3 00 34  bbc6  $00,$052d
04f9: 28 bf     and   a,#$bf
04fb: c4 0f     mov   $0f,a
04fd: cd 00     mov   x,#$00
04ff: 1d        dec   x
0500: f0 2b     beq   $052d
0502: ba f6     movw  ya,$f6
0504: 5a f6     cmpw  ya,$f6
0506: d0 fa     bne   $0502
0508: 5a 02     cmpw  ya,$02
050a: f0 f3     beq   $04ff
050c: da 02     movw  $02,ya
050e: da f6     movw  $f6,ya
0510: 48 ff     eor   a,#$ff
0512: c4 e3     mov   $e3,a
0514: dd        mov   a,y
0515: 10 05     bpl   $051c
0517: 48 ff     eor   a,#$ff
0519: bc        inc   a
051a: e2 0d     set7  $0d
051c: cd 06     mov   x,#$06
051e: 8d 00     mov   y,#$00
0520: 9e        div   ya,x
0521: e3 0d 03  bbs7  $0d,$0527
0524: 48 ff     eor   a,#$ff
0526: bc        inc   a
0527: c4 e2     mov   $e2,a
0529: e4 0f     mov   a,$0f
052b: 2f 09     bra   $0536
052d: e8 ff     mov   a,#$ff
052f: c4 e3     mov   $e3,a
0531: bc        inc   a
0532: c4 e2     mov   $e2,a
0534: e4 00     mov   a,$00
0536: f8 2c     mov   x,$2c
0538: eb 2c     mov   y,$2c
053a: c8 0c     cmp   x,#$0c
053c: d0 04     bne   $0542
053e: c4 e4     mov   $e4,a
0540: 2f 17     bra   $0559
0542: f5 71 02  mov   a,$0271+x
0545: 30 12     bmi   $0559
0547: ab 10     inc   $10
0549: 1d        dec   x
054a: 1d        dec   x
054b: e4 e4     mov   a,$e4
054d: f0 0a     beq   $0559
054f: 28 0f     and   a,#$0f
0551: 68 02     cmp   a,#$02
0553: f0 04     beq   $0559
0555: 8b 10     dec   $10
0557: 3d        inc   x
0558: 3d        inc   x
0559: e4 00     mov   a,$00
055b: 28 bf     and   a,#$bf
055d: 1c        asl   a
055e: b0 11     bcs   $0571
0560: 75 71 02  cmp   a,$0271+x
0563: f0 15     beq   $057a
0565: 90 13     bcc   $057a
0567: e4 10     mov   a,$10
0569: f0 45     beq   $05b0
056b: 8b 10     dec   $10
056d: 3d        inc   x
056e: 3d        inc   x
056f: 2f e8     bra   $0559
0571: 2d        push  a
0572: e8 00     mov   a,#$00
0574: d5 71 02  mov   $0271+x,a
0577: ae        pop   a
0578: 2f 03     bra   $057d
057a: d5 71 02  mov   $0271+x,a
057d: c4 0f     mov   $0f,a
057f: e4 e2     mov   a,$e2
0581: d5 90 02  mov   $0290+x,a
0584: e4 e3     mov   a,$e3
0586: d5 91 02  mov   $0291+x,a
0589: f6 a0 02  mov   a,$02a0+y
058c: 60        clrc
058d: 84 0f     adc   a,$0f
058f: c4 0f     mov   $0f,a
0591: f6 a1 02  mov   a,$02a1+y
0594: 84 09     adc   a,$09
0596: c4 10     mov   $10,a
0598: 8d 00     mov   y,#$00
059a: f7 0f     mov   a,($0f)+y
059c: d4 61     mov   $61+x,a
059e: fc        inc   y
059f: f7 0f     mov   a,($0f)+y
05a1: d4 62     mov   $62+x,a
05a3: f5 bc 08  mov   a,$08bc+x
05a6: 8d 5c     mov   y,#$5c
05a8: cb f2     mov   $f2,y
05aa: c4 f3     mov   $f3,a
05ac: 04 28     or    a,$28
05ae: c4 28     mov   $28,a
05b0: 6f        ret

05b1: f8 2c     mov   x,$2c
05b3: f4 19     mov   a,$19+x
05b5: d0 1d     bne   $05d4
05b7: f5 bc 08  mov   a,$08bc+x
05ba: 24 e8     and   a,$e8
05bc: f0 16     beq   $05d4
05be: f5 81 02  mov   a,$0281+x
05c1: fd        mov   y,a
05c2: e8 00     mov   a,#$00
05c4: d4 d0     mov   $d0+x,a
05c6: e4 00     mov   a,$00
05c8: 5c        lsr   a
05c9: 7b d0     ror   $d0+x
05cb: 5c        lsr   a
05cc: 7b d0     ror   $d0+x
05ce: d5 80 02  mov   $0280+x,a
05d1: 3f 48 07  call  $0748
05d4: 6f        ret

05d5: e8 ff     mov   a,#$ff
05d7: c4 e3     mov   $e3,a
05d9: bc        inc   a
05da: c4 e2     mov   $e2,a
05dc: e8 0c     mov   a,#$0c
05de: cd 0e     mov   x,#$0e
05e0: 8d 0e     mov   y,#$0e
05e2: 5f 7a 05  jmp   $057a

05e5: 78 01 00  cmp   $00,#$01
05e8: f0 43     beq   $062d
05ea: 8f 01 df  mov   $df,#$01
05ed: 78 02 00  cmp   $00,#$02
05f0: f0 03     beq   $05f5
05f2: 8f 00 e7  mov   $e7,#$00
05f5: 8f 25 e7  mov   $e7,#$25
05f8: 5f d5 05  jmp   $05d5

05fb: 8f 02 df  mov   $df,#$02
05fe: 60        clrc
05ff: e4 4a     mov   a,$4a
0601: 10 01     bpl   $0604
0603: 80        setc
0604: 7c        ror   a
0605: c4 4a     mov   $4a,a
0607: 60        clrc
0608: e4 4c     mov   a,$4c
060a: 10 01     bpl   $060d
060c: 80        setc
060d: 7c        ror   a
060e: c4 4c     mov   $4c,a
0610: e8 70     mov   a,#$70
0612: c4 30     mov   $30,a
0614: 6f        ret

0615: 8b 30     dec   $30
0617: e4 30     mov   a,$30
0619: 8d 0c     mov   y,#$0c
061b: cb f2     mov   $f2,y
061d: c4 f3     mov   $f3,a
061f: 8d 1c     mov   y,#$1c
0621: cb f2     mov   $f2,y
0623: c4 f3     mov   $f3,a
0625: 64 e7     cmp   a,$e7
0627: d0 03     bne   $062c
0629: 8f 00 df  mov   $df,#$00
062c: 6f        ret

062d: 3f d5 05  call  $05d5
0630: e4 df     mov   a,$df
0632: 8f 00 df  mov   $df,#$00
0635: 68 01     cmp   a,#$01
0637: f0 06     beq   $063f
0639: 0b 4a     asl   $4a
063b: 0b 4c     asl   $4c
063d: e4 30     mov   a,$30
063f: bc        inc   a
0640: 8d 0c     mov   y,#$0c
0642: cb f2     mov   $f2,y
0644: c4 f3     mov   $f3,a
0646: 8d 1c     mov   y,#$1c
0648: cb f2     mov   $f2,y
064a: c4 f3     mov   $f3,a
064c: 68 70     cmp   a,#$70
064e: d0 ef     bne   $063f
0650: c4 30     mov   $30,a
0652: 6f        ret

0653: cd 60     mov   x,#$60
0655: 1d        dec   x
0656: d0 fd     bne   $0655
0658: 6f        ret

0659: fa 00 e0  mov   ($e0),($00)
065c: 8f 01 2b  mov   $2b,#$01
065f: cd 00     mov   x,#$00
0661: f4 62     mov   a,$62+x
0663: d0 03     bne   $0668
0665: 09 2b e1  or    ($e1),($2b)
0668: 3d        inc   x
0669: 3d        inc   x
066a: 0b 2b     asl   $2b
066c: d0 f3     bne   $0661
066e: e8 5c     mov   a,#$5c
0670: eb e1     mov   y,$e1
0672: da f2     movw  $f2,ya
0674: 6f        ret

0675: 8f 6c f2  mov   $f2,#$6c
0678: 8f 20 f3  mov   $f3,#$20
067b: 8f aa f4  mov   $f4,#$aa
067e: 8f bb f5  mov   $f5,#$bb
0681: e4 f4     mov   a,$f4
0683: 64 f4     cmp   a,$f4
0685: d0 fa     bne   $0681
0687: 68 cc     cmp   a,#$cc
0689: d0 f6     bne   $0681
068b: 2f 1b     bra   $06a8
068d: eb f4     mov   y,$f4
068f: d0 fc     bne   $068d
0691: 7e f4     cmp   y,$f4
0693: d0 0d     bne   $06a2
0695: e4 f5     mov   a,$f5
0697: cb f4     mov   $f4,y
0699: d7 7a     mov   ($7a)+y,a
069b: fc        inc   y
069c: d0 f3     bne   $0691
069e: ab 7b     inc   $7b
06a0: 2f ef     bra   $0691
06a2: 10 ed     bpl   $0691
06a4: 7e f4     cmp   y,$f4
06a6: 10 e9     bpl   $0691
06a8: ba f6     movw  ya,$f6
06aa: da 7a     movw  $7a,ya
06ac: ba f4     movw  ya,$f4
06ae: c4 f4     mov   $f4,a
06b0: dd        mov   a,y
06b1: 5d        mov   x,a
06b2: d0 d9     bne   $068d
06b4: ba f4     movw  ya,$f4
06b6: d0 fc     bne   $06b4
06b8: da 00     movw  $00,ya
06ba: da f4     movw  $f4,ya
06bc: ba f6     movw  ya,$f6
06be: d0 fc     bne   $06bc
06c0: da 02     movw  $02,ya
06c2: da f6     movw  $f6,ya
06c4: e8 5c     mov   a,#$5c
06c6: 8d ff     mov   y,#$ff
06c8: da f2     movw  $f2,ya
06ca: 8d 00     mov   y,#$00
06cc: e8 2c     mov   a,#$2c
06ce: da f2     movw  $f2,ya
06d0: e8 3c     mov   a,#$3c
06d2: da f2     movw  $f2,ya
06d4: ba 7a     movw  ya,$7a
06d6: c5 df 06  mov   $06df,a
06d9: cc e0 06  mov   $06e0,y
06dc: 5f b5 02  jmp   $02b5

06df: cc 90 f5  mov   $f590,y
06e2: bc        inc   a
06e3: 08 24     or    a,#$24
06e5: e9 f0 2f  mov   x,$2ff0
06e8: c4 13     mov   $13,a
06ea: 8d 5c     mov   y,#$5c
06ec: da f2     movw  $f2,ya
06ee: e8 06     mov   a,#$06
06f0: 3f af 0b  call  $0baf
06f3: e8 6f     mov   a,#$6f
06f5: fd        mov   y,a
06f6: 3f 2b 0d  call  $0d2b
06f9: e8 7c     mov   a,#$7c
06fb: fd        mov   y,a
06fc: 3f 3d 0d  call  $0d3d
06ff: 8d 18     mov   y,#$18
0701: f5 ac 08  mov   a,$08ac+x
0704: da f2     movw  $f2,ya
0706: bc        inc   a
0707: da f2     movw  $f2,ya
0709: e8 b9     mov   a,#$b9
070b: fd        mov   y,a
070c: 3f 48 07  call  $0748
070f: e4 13     mov   a,$13
0711: 8d 4c     mov   y,#$4c
0713: cb f2     mov   $f2,y
0715: c4 f3     mov   $f3,a
0717: 6f        ret

0718: 8f 18 f2  mov   $f2,#$18
071b: e4 f3     mov   a,$f3
071d: d0 28     bne   $0747
071f: cd 02     mov   x,#$02
0721: f5 81 02  mov   a,$0281+x
0724: 68 c5     cmp   a,#$c5
0726: f0 19     beq   $0741
0728: 68 c0     cmp   a,#$c0
072a: f0 04     beq   $0730
072c: e8 c0     mov   a,#$c0
072e: 2f 02     bra   $0732
0730: e8 c5     mov   a,#$c5
0732: fd        mov   y,a
0733: 3f 48 07  call  $0748
0736: f5 bc 08  mov   a,$08bc+x
0739: 8d 4c     mov   y,#$4c
073b: cb f2     mov   $f2,y
073d: c4 f3     mov   $f3,a
073f: 2f 06     bra   $0747
0741: fa 13 46  mov   ($46),($13)
0744: 8f 00 13  mov   $13,#$00
0747: 6f        ret

; handle a note vcmd (80-df)
0748: ad c8     cmp   y,#$c8
074a: b0 fb     bcs   $0747
074c: dd        mov   a,y
074d: d5 81 02  mov   $0281+x,a
0750: 28 7f     and   a,#$7f
0752: 2f 13     bra   $0767
; vcmds 80-c7,c8,c9 - note/tie/rest
0754: ad c8     cmp   y,#$c8
0756: b0 ef     bcs   $0747
0758: 09 2b e9  or    ($e9),($2b)
075b: e4 13     mov   a,$13
075d: 24 2b     and   a,$2b
075f: d0 e6     bne   $0747
; vcmds 80-c7 - note (note number in Y)
0761: dd        mov   a,y
0762: 28 7f     and   a,#$7f
0764: 60        clrc
0765: 84 38     adc   a,$38
0767: 60        clrc
0768: 95 80 02  adc   a,$0280+x
076b: d5 01 02  mov   $0201+x,a
076e: f4 d0     mov   a,$d0+x
0770: d5 00 02  mov   $0200+x,a
0773: f5 60 02  mov   a,$0260+x
0776: 5c        lsr   a
0777: e8 00     mov   a,#$00
0779: 7c        ror   a
077a: d5 41 02  mov   $0241+x,a
077d: e8 00     mov   a,#$00
077f: d4 bf     mov   $bf+x,a
0781: d5 90 00  mov   $0090+x,a
0784: e4 2b     mov   a,$2b
0786: 24 57     and   a,$57
0788: d0 03     bne   $078d
078a: 09 2b 29  or    ($29),($2b)
078d: 09 2b 46  or    ($46),($2b)
0790: f5 21 02  mov   a,$0221+x
0793: d4 af     mov   $af+x,a
0795: f0 67     beq   $07fe
0797: f5 30 02  mov   a,$0230+x
079a: d4 b0     mov   $b0+x,a
079c: f5 31 02  mov   a,$0231+x
079f: 68 01     cmp   a,#$01
07a1: f0 15     beq   $07b8
07a3: b0 1c     bcs   $07c1
07a5: f5 01 02  mov   a,$0201+x
07a8: 80        setc
07a9: b5 40 02  sbc   a,$0240+x
07ac: d5 01 02  mov   $0201+x,a
07af: f5 40 02  mov   a,$0240+x
07b2: 60        clrc
07b3: 95 01 02  adc   a,$0201+x
07b6: 2f 17     bra   $07cf
07b8: f5 01 02  mov   a,$0201+x
07bb: 80        setc
07bc: b5 40 02  sbc   a,$0240+x
07bf: 2f 0e     bra   $07cf
07c1: f5 01 02  mov   a,$0201+x
07c4: fd        mov   y,a
07c5: f5 40 02  mov   a,$0240+x
07c8: d5 01 02  mov   $0201+x,a
07cb: dd        mov   a,y
07cc: d5 40 02  mov   $0240+x,a
07cf: 28 7f     and   a,#$7f
07d1: d5 20 02  mov   $0220+x,a
07d4: 80        setc
07d5: b5 01 02  sbc   a,$0201+x
07d8: fb af     mov   y,$af+x
07da: 6d        push  y
07db: ce        pop   x
07dc: ed        notc
07dd: 6b 0d     ror   $0d
07df: 10 03     bpl   $07e4
07e1: 48 ff     eor   a,#$ff
07e3: bc        inc   a
07e4: 8d 00     mov   y,#$00
07e6: 9e        div   ya,x
07e7: 2d        push  a
07e8: e8 00     mov   a,#$00
07ea: 9e        div   ya,x
07eb: ee        pop   y
07ec: f8 2c     mov   x,$2c
07ee: f3 0d 06  bbc7  $0d,$07f7
07f1: da 0f     movw  $0f,ya
07f3: ba 09     movw  ya,$09
07f5: 9a 0f     subw  ya,$0f
07f7: d5 10 02  mov   $0210+x,a
07fa: dd        mov   a,y
07fb: d5 11 02  mov   $0211+x,a
07fe: f5 01 02  mov   a,$0201+x
0801: c4 0c     mov   $0c,a
0803: f5 00 02  mov   a,$0200+x
0806: c4 0b     mov   $0b,a
0808: 8d 00     mov   y,#$00
080a: e4 0c     mov   a,$0c
080c: 80        setc
080d: a8 34     sbc   a,#$34
080f: b0 09     bcs   $081a
0811: e4 0c     mov   a,$0c
0813: 80        setc
0814: a8 13     sbc   a,#$13
0816: b0 06     bcs   $081e
0818: dc        dec   y
0819: 1c        asl   a
081a: 7a 0b     addw  ya,$0b
081c: da 0b     movw  $0b,ya
081e: 4d        push  x
081f: e4 0c     mov   a,$0c
0821: 1c        asl   a
0822: 8d 00     mov   y,#$00
0824: cd 18     mov   x,#$18
0826: 9e        div   ya,x
0827: 5d        mov   x,a
0828: f6 93 08  mov   a,$0893+y
082b: c4 10     mov   $10,a
082d: f6 92 08  mov   a,$0892+y
0830: c4 0f     mov   $0f,a
0832: f6 95 08  mov   a,$0895+y
0835: 2d        push  a
0836: f6 94 08  mov   a,$0894+y
0839: ee        pop   y
083a: 9a 0f     subw  ya,$0f
083c: eb 0b     mov   y,$0b
083e: cf        mul   ya
083f: dd        mov   a,y
0840: 8d 00     mov   y,#$00
0842: 7a 0f     addw  ya,$0f
0844: cb 10     mov   $10,y
0846: 1c        asl   a
0847: 2b 10     rol   $10
0849: c4 0f     mov   $0f,a
084b: 2f 04     bra   $0851
084d: 4b 10     lsr   $10
084f: 7c        ror   a
0850: 3d        inc   x
0851: c8 06     cmp   x,#$06
0853: d0 f8     bne   $084d
0855: c4 0f     mov   $0f,a
0857: ce        pop   x
0858: f5 50 01  mov   a,$0150+x
085b: eb 10     mov   y,$10
085d: cf        mul   ya
085e: da 11     movw  $11,ya
0860: f5 50 01  mov   a,$0150+x
0863: eb 0f     mov   y,$0f
0865: cf        mul   ya
0866: 6d        push  y
0867: f5 51 01  mov   a,$0151+x
086a: eb 0f     mov   y,$0f
086c: cf        mul   ya
086d: 7a 11     addw  ya,$11
086f: da 11     movw  $11,ya
0871: f5 51 01  mov   a,$0151+x
0874: eb 10     mov   y,$10
0876: cf        mul   ya
0877: fd        mov   y,a
0878: ae        pop   a
0879: 7a 11     addw  ya,$11
087b: da 11     movw  $11,ya
087d: e4 2b     mov   a,$2b
087f: 24 13     and   a,$13
0881: d0 0e     bne   $0891
0883: f5 ac 08  mov   a,$08ac+x
0886: 08 02     or    a,#$02
0888: eb 11     mov   y,$11
088a: da f2     movw  $f2,ya
088c: bc        inc   a
088d: eb 12     mov   y,$12
088f: da f2     movw  $f2,ya
0891: 6f        ret

; pitch table
0892: dw $085f
0894: dw $08de
0896: dw $0965
0898: dw $09f4
089a: dw $0a8c
089c: dw $0b2c
089e: dw $0bd6
08a0: dw $0c8b
08a2: dw $0d4a
08a4: dw $0e14
08a6: dw $0eea
08a8: dw $0fcd
08aa: dw $10be

; channel value table
08ac: dw $0000
08ae: dw $0010
08b0: dw $0020
08b2: dw $0030
08b4: dw $0040
08b6: dw $0050
08b8: dw $0060
08ba: dw $0070
08bc: dw $0001
08be: dw $0002
08c0: dw $0004
08c2: dw $0008
08c4: dw $0010
08c6: dw $0020
08c8: dw $0040
08ca: dw $0080

08cc: 8d 00     mov   y,#$00
08ce: cb 29     mov   $29,y
08d0: cb e0     mov   $e0,y
08d2: f7 15     mov   a,($15)+y
08d4: 3a 15     incw  $15
08d6: 2d        push  a
08d7: f7 15     mov   a,($15)+y
08d9: 3a 15     incw  $15
08db: fd        mov   y,a
08dc: ae        pop   a
08dd: 6f        ret

08de: 8f ff 04  mov   $04,#$ff
08e1: 8b 2e     dec   $2e
08e3: 10 49     bpl   $092e
08e5: e4 30     mov   a,$30
08e7: f0 48     beq   $0931
08e9: fa e6 2e  mov   ($2e),($e6)
08ec: 9c        dec   a
08ed: f0 01     beq   $08f0
08ef: 9c        dec   a
08f0: c4 30     mov   $30,a
08f2: 8d 0c     mov   y,#$0c
08f4: cb f2     mov   $f2,y
08f6: c4 f3     mov   $f3,a
08f8: 8d 1c     mov   y,#$1c
08fa: cb f2     mov   $f2,y
08fc: c4 f3     mov   $f3,a
08fe: eb 4a     mov   y,$4a
0900: f0 14     beq   $0916
0902: 10 06     bpl   $090a
0904: fc        inc   y
0905: f0 07     beq   $090e
0907: fc        inc   y
0908: 2f 04     bra   $090e
090a: dc        dec   y
090b: f0 01     beq   $090e
090d: dc        dec   y
090e: cb 4a     mov   $4a,y
0910: cb 51     mov   $51,y
0912: e8 2c     mov   a,#$2c
0914: da f2     movw  $f2,ya
0916: eb 4c     mov   y,$4c
0918: f0 14     beq   $092e
091a: 10 06     bpl   $0922
091c: fc        inc   y
091d: f0 07     beq   $0926
091f: fc        inc   y
0920: 2f 04     bra   $0926
0922: dc        dec   y
0923: f0 01     beq   $0926
0925: dc        dec   y
0926: cb 4c     mov   $4c,y
0928: cb 52     mov   $52,y
092a: e8 3c     mov   a,#$3c
092c: da f2     movw  $f2,ya
092e: 5f d5 09  jmp   $09d5

0931: fa e6 2e  mov   ($2e),($e6)
0934: 8b 2f     dec   $2f
0936: d0 f6     bne   $092e
0938: e4 7d     mov   a,$7d
093a: f0 03     beq   $093f
093c: 5f 75 06  jmp   $0675

; play song
093f: e4 05     mov   a,$05
0941: c4 04     mov   $04,a
0943: 1c        asl   a
0944: f0 14     beq   $095a
0946: 9c        dec   a
0947: fd        mov   y,a
0948: e8 00     mov   a,#$00
094a: c4 e4     mov   $e4,a
094c: c4 2d     mov   $2d,a
094e: f7 06     mov   a,($06)+y
0950: 2d        push  a
0951: dc        dec   y
0952: f7 06     mov   a,($06)+y
0954: ee        pop   y
0955: da 15     movw  $15,ya
0957: 8f 02 08  mov   $08,#$02
095a: e4 13     mov   a,$13
095c: 48 ff     eor   a,#$ff
095e: 0e 2a 00  tset1 $002a
0961: e8 00     mov   a,#$00
0963: 8d 00     mov   y,#$00
0965: 3f 62 0f  call  $0f62
0968: 6f        ret

0969: e4 05     mov   a,$05
096b: 30 cb     bmi   $0938
096d: 5f de 08  jmp   $08de

0970: cd 0e     mov   x,#$0e
0972: 8f 80 2b  mov   $2b,#$80
0975: e8 0a     mov   a,#$0a
0977: 3f ff 0b  call  $0bff
097a: e8 00     mov   a,#$00
097c: d5 a1 01  mov   $01a1+x,a
097f: d4 d0     mov   $d0+x,a
0981: d5 80 02  mov   $0280+x,a
0984: d4 af     mov   $af+x,a
0986: d5 21 02  mov   $0221+x,a
0989: d5 30 02  mov   $0230+x,a
098c: d5 31 02  mov   $0231+x,a
098f: d5 c0 00  mov   $00c0+x,a
0992: d4 62     mov   $62+x,a
0994: 9c        dec   a
0995: d5 71 02  mov   $0271+x,a
0998: 1d        dec   x
0999: 1d        dec   x
099a: 4b 2b     lsr   $2b
099c: d0 d7     bne   $0975
099e: e8 00     mov   a,#$00
09a0: 8d 07     mov   y,#$07
09a2: d6 72 00  mov   $0072+y,a
09a5: dc        dec   y
09a6: 10 fa     bpl   $09a2
09a8: c4 42     mov   $42,a
09aa: c4 53     mov   $53,a
09ac: c4 3c     mov   $3c,a
09ae: c4 38     mov   $38,a
09b0: c4 17     mov   $17,a
09b2: c4 56     mov   $56,a
09b4: c4 57     mov   $57,a
09b6: c4 71     mov   $71,a
09b8: e8 70     mov   a,#$70
09ba: c4 30     mov   $30,a
09bc: 8d 0c     mov   y,#$0c
09be: cb f2     mov   $f2,y
09c0: c4 f3     mov   $f3,a
09c2: 8d 1c     mov   y,#$1c
09c4: cb f2     mov   $f2,y
09c6: c4 f3     mov   $f3,a
09c8: 8f c0 41  mov   $41,#$c0
09cb: 8f 30 3b  mov   $3b,#$30
09ce: 6f        ret

09cf: eb 04     mov   y,$04
09d1: 7e 05     cmp   y,$05
09d3: d0 94     bne   $0969
09d5: e4 e0     mov   a,$e0
09d7: d0 0f     bne   $09e8
09d9: e4 04     mov   a,$04
09db: f0 f1     beq   $09ce
09dd: e4 08     mov   a,$08
09df: f0 5f     beq   $0a40
09e1: 6e 08 8c  dbnz  $08,$0970
09e4: e8 00     mov   a,#$00
09e6: c4 2d     mov   $2d,a
09e8: 3f cc 08  call  $08cc
09eb: d0 17     bne   $0a04
09ed: fd        mov   y,a
09ee: d0 03     bne   $09f3
09f0: 5f de 08  jmp   $08de

09f3: 8b 17     dec   $17
09f5: 10 02     bpl   $09f9
09f7: c4 17     mov   $17,a
09f9: 3f cc 08  call  $08cc
09fc: f8 17     mov   x,$17
09fe: f0 e8     beq   $09e8
0a00: da 15     movw  $15,ya
0a02: 2f e4     bra   $09e8
0a04: da 11     movw  $11,ya
0a06: 8d 0f     mov   y,#$0f
0a08: f7 11     mov   a,($11)+y
0a0a: d6 18 00  mov   $0018+y,a
0a0d: dc        dec   y
0a0e: 10 f8     bpl   $0a08
0a10: cd 00     mov   x,#$00
0a12: 8f 01 2b  mov   $2b,#$01
0a15: f4 62     mov   a,$62+x
0a17: d0 1f     bne   $0a38
0a19: f4 19     mov   a,$19+x
0a1b: f0 1b     beq   $0a38
0a1d: e8 00     mov   a,#$00
0a1f: d4 8f     mov   $8f+x,a
0a21: d4 9f     mov   $9f+x,a
0a23: d4 a0     mov   $a0+x,a
0a25: d4 cf     mov   $cf+x,a
0a27: d5 30 02  mov   $0230+x,a
0a2a: d5 21 02  mov   $0221+x,a
0a2d: bc        inc   a
0a2e: d4 7f     mov   $7f+x,a
0a30: e4 2b     mov   a,$2b
0a32: 4e 56 00  tclr1 $0056
0a35: 4e 57 00  tclr1 $0057
0a38: 3d        inc   x
0a39: 3d        inc   x
0a3a: 0b 2b     asl   $2b
0a3c: d0 d7     bne   $0a15
0a3e: e8 00     mov   a,#$00
0a40: cd 00     mov   x,#$00
0a42: 8f 01 2b  mov   $2b,#$01
0a45: d8 2c     mov   $2c,x
0a47: f4 19     mov   a,$19+x
0a49: f0 71     beq   $0abc
0a4b: 9b 7f     dec   $7f+x
0a4d: d0 67     bne   $0ab6
0a4f: e7 18     mov   a,($18+x)
0a51: bb 18     inc   $18+x
0a53: d0 02     bne   $0a57
0a55: bb 19     inc   $19+x
0a57: fd        mov   y,a
0a58: d0 17     bne   $0a71
0a5a: f4 8f     mov   a,$8f+x
0a5c: f0 8a     beq   $09e8
0a5e: 3f 8e 0e  call  $0e8e
0a61: 9b 8f     dec   $8f+x
0a63: d0 ea     bne   $0a4f
0a65: f5 60 01  mov   a,$0160+x
0a68: d4 18     mov   $18+x,a
0a6a: f5 61 01  mov   a,$0161+x
0a6d: d4 19     mov   $19+x,a
0a6f: 2f de     bra   $0a4f
0a71: 30 25     bmi   $0a98
0a73: d5 30 01  mov   $0130+x,a
0a76: e7 18     mov   a,($18+x)
0a78: bb 18     inc   $18+x
0a7a: d0 02     bne   $0a7e
0a7c: bb 19     inc   $19+x
0a7e: fd        mov   y,a
0a7f: 30 17     bmi   $0a98
0a81: 2d        push  a
0a82: 9f        xcn   a
0a83: 28 07     and   a,#$07
0a85: fd        mov   y,a
0a86: f6 35 04  mov   a,$0435+y
0a89: d5 31 01  mov   $0131+x,a
0a8c: ae        pop   a
0a8d: 28 0f     and   a,#$0f
0a8f: fd        mov   y,a
0a90: f6 3d 04  mov   a,$043d+y
0a93: d5 40 01  mov   $0140+x,a
0a96: 2f b7     bra   $0a4f
0a98: 68 ce     cmp   a,#$ce
0a9a: 90 05     bcc   $0aa1
0a9c: 3f 7b 0b  call  $0b7b
0a9f: 2f ae     bra   $0a4f
0aa1: 3f 54 07  call  $0754
0aa4: f5 30 01  mov   a,$0130+x
0aa7: d4 7f     mov   $7f+x,a
0aa9: fd        mov   y,a
0aaa: f5 31 01  mov   a,$0131+x
0aad: cf        mul   ya
0aae: dd        mov   a,y
0aaf: d0 01     bne   $0ab2
0ab1: bc        inc   a
0ab2: d4 80     mov   $80+x,a
0ab4: 2f 03     bra   $0ab9
0ab6: 3f 3e 12  call  $123e
0ab9: 3f 57 10  call  $1057
0abc: 3d        inc   x
0abd: 3d        inc   x
0abe: 0b 2b     asl   $2b
0ac0: d0 83     bne   $0a45
0ac2: fa 56 57  mov   ($57),($56)
0ac5: e4 3c     mov   a,$3c
0ac7: f0 0b     beq   $0ad4
0ac9: ba 3e     movw  ya,$3e
0acb: 7a 3a     addw  ya,$3a
0acd: 6e 3c 02  dbnz  $3c,$0ad2
0ad0: ba 3c     movw  ya,$3c
0ad2: da 3a     movw  $3a,ya
0ad4: e4 53     mov   a,$53
0ad6: f0 15     beq   $0aed
0ad8: ba 4d     movw  ya,$4d
0ada: 7a 49     addw  ya,$49
0adc: da 49     movw  $49,ya
0ade: ba 4f     movw  ya,$4f
0ae0: 7a 4b     addw  ya,$4b
0ae2: 6e 53 06  dbnz  $53,$0aeb
0ae5: ba 53     movw  ya,$53
0ae7: da 49     movw  $49,ya
0ae9: eb 55     mov   y,$55
0aeb: da 4b     movw  $4b,ya
0aed: e4 42     mov   a,$42
0aef: f0 0e     beq   $0aff
0af1: ba 44     movw  ya,$44
0af3: 7a 40     addw  ya,$40
0af5: 6e 42 02  dbnz  $42,$0afa
0af8: ba 42     movw  ya,$42
0afa: da 40     movw  $40,ya
0afc: 8f ff 46  mov   $46,#$ff
0aff: cd 00     mov   x,#$00
0b01: 8f 01 2b  mov   $2b,#$01
0b04: f4 19     mov   a,$19+x
0b06: f0 03     beq   $0b0b
0b08: 3f 4c 11  call  $114c
0b0b: 3d        inc   x
0b0c: 3d        inc   x
0b0d: 0b 2b     asl   $2b
0b0f: d0 f3     bne   $0b04
0b11: 6f        ret

; vcmd dispatch table
0b12: dw $0baf	; ce - set instrument
0b14: dw $0bff	; cf - pan
0b16: dw $0c33	; d0 - pan fade
0b18: dw $0c79	; d1 - vibrato on
0b1a: dw $0caf	; d2 - vibrato off
0b1c: dw $0cca	; d3 - master volume
0b1e: dw $0ccf	; d4 - master volume fade
0b20: dw $0cf6	; d5 - tempo
0b22: dw $0cfd	; d6 - tempo fade
0b24: dw $0d24	; d7 - global transpose
0b26: dw $0d27	; d8 - per-voice transpose
0b28: dw $0d2b	; d9 - set channel ASDR
0b2a: dw $0d3d	; da - set channel ASDR envelope
0b2c: dw $0dbf	; db - volume
0b2e: dw $0de5	; dc - volume fade
0b30: dw $0e32	; dd - call subroutine
0b32: dw $0cba	; de - vibrato fade
0b34: dw $0d60	; df - pitch envelope (release)
0b36: dw $0d64	; e0 - pitch envelope (attack)
0b38: dw $0db8	; e1 - pitch envelope off
0b3a: dw $0e2f	; e2 - tuning
0b3c: dw $0e99	; e3 - echo vbits/volume
0b3e: dw $0f62	; e4 - disable echo
0b40: dw $0f69	; e5 - set echo params
0b42: dw $0ee9	; e6 - echo volume fade
0b44: dw $1080	; e7 - pitch slide
0b46: dw $1021	; e8
0b48: dw $0d4b	; e9 - set FIR
0b4a: dw $1021	; ea
0b4c: dw $1025	; eb
0b4e: dw $0fb9	; ec
0b50: dw $0da4	; ed
0b52: dw $0fb6	; ee
0b54: dw $0dc8	; ef
0b56: dw $0e2b	; f0

; vcmd lengths
0b58: db $01,$01,$02,$03,$00,$01,$02,$01 ; ce-d5
0b60: db $02,$01,$01,$01,$01,$01,$02,$03 ; d6-dd
0b68: db $01,$03,$03,$00,$01,$03,$00,$03 ; de-e5
0b70: db $03,$03,$01,$01,$00,$00,$00,$01 ; e6-ed
0b78: db $01,$01,$00			 ; ee-f0

; dispatch vcmd
0b7b: 1c        asl   a
0b7c: fd        mov   y,a
0b7d: f6 77 0a  mov   a,$0a77+y
0b80: 2d        push  a
0b81: f6 76 0a  mov   a,$0a76+y
0b84: 2d        push  a
0b85: dd        mov   a,y
0b86: 5c        lsr   a
0b87: fd        mov   y,a
0b88: f6 0a 0b  mov   a,$0b0a+y
0b8b: f0 09     beq   $0b96
0b8d: e7 18     mov   a,($18+x)
0b8f: bb 18     inc   $18+x
0b91: d0 02     bne   $0b95
0b93: bb 19     inc   $19+x
0b95: fd        mov   y,a
0b96: 6f        ret

0b97: f4 19     mov   a,$19+x
0b99: f0 0a     beq   $0ba5
0b9b: e7 18     mov   a,($18+x)
0b9d: bb 18     inc   $18+x
0b9f: d0 02     bne   $0ba3
0ba1: bb 19     inc   $19+x
0ba3: fd        mov   y,a
0ba4: 6f        ret

0ba5: e7 61     mov   a,($61+x)
0ba7: bb 61     inc   $61+x
0ba9: d0 02     bne   $0bad
0bab: bb 62     inc   $62+x
0bad: fd        mov   y,a
0bae: 6f        ret

; vcmd ce - set instrument
0baf: 8d 06     mov   y,#$06
0bb1: cf        mul   ya
0bb2: da 0f     movw  $0f,ya
0bb4: 60        clrc
0bb5: 98 7b 0f  adc   $0f,#$7b
0bb8: 98 14 10  adc   $10,#$14
0bbb: e4 13     mov   a,$13
0bbd: 24 2b     and   a,$2b
0bbf: d0 3d     bne   $0bfe
0bc1: 4d        push  x
0bc2: f5 ac 08  mov   a,$08ac+x
0bc5: 08 04     or    a,#$04
0bc7: 5d        mov   x,a
0bc8: 8d 00     mov   y,#$00
0bca: f7 0f     mov   a,($0f)+y
0bcc: 10 13     bpl   $0be1
0bce: 28 1f     and   a,#$1f
0bd0: 38 20 31  and   $31,#$20
0bd3: 0e 31 00  tset1 $0031
0bd6: 09 2b 32  or    ($32),($2b)
0bd9: 8d 04     mov   y,#$04
0bdb: f7 0f     mov   a,($0f)+y
0bdd: 8d 00     mov   y,#$00
0bdf: 2f 07     bra   $0be8
0be1: e4 2b     mov   a,$2b
0be3: 4e 32 00  tclr1 $0032
0be6: f7 0f     mov   a,($0f)+y
0be8: d8 f2     mov   $f2,x
0bea: c4 f3     mov   $f3,a
0bec: 3d        inc   x
0bed: fc        inc   y
0bee: ad 04     cmp   y,#$04
0bf0: d0 f4     bne   $0be6
0bf2: ce        pop   x
0bf3: f7 0f     mov   a,($0f)+y
0bf5: d5 51 01  mov   $0151+x,a
0bf8: fc        inc   y
0bf9: f7 0f     mov   a,($0f)+y
0bfb: d5 50 01  mov   $0150+x,a
0bfe: 6f        ret

; vcmd cf - pan
0bff: f4 62     mov   a,$62+x
0c01: d0 03     bne   $0c06
0c03: dd        mov   a,y
0c04: 2f 1f     bra   $0c25
0c06: dd        mov   a,y
0c07: 60        clrc
0c08: 95 90 02  adc   a,$0290+x
0c0b: 10 07     bpl   $0c14
0c0d: 48 ff     eor   a,#$ff
0c0f: bc        inc   a
0c10: 28 9f     and   a,#$9f
0c12: 2f 0f     bra   $0c23
0c14: 68 14     cmp   a,#$14
0c16: f0 0d     beq   $0c25
0c18: 90 0b     bcc   $0c25
0c1a: 80        setc
0c1b: a8 14     sbc   a,#$14
0c1d: c4 0f     mov   $0f,a
0c1f: e8 14     mov   a,#$14
0c21: a4 0f     sbc   a,$0f
0c23: 08 80     or    a,#$80
0c25: d5 f1 01  mov   $01f1+x,a
0c28: 28 1f     and   a,#$1f
0c2a: d5 d1 01  mov   $01d1+x,a
0c2d: e8 00     mov   a,#$00
0c2f: d5 d0 01  mov   $01d0+x,a
0c32: 6f        ret

; vcmd d0 - pan fade
0c33: d4 a0     mov   $a0+x,a
0c35: 2d        push  a
0c36: f4 19     mov   a,$19+x
0c38: d0 0b     bne   $0c45
0c3a: e7 61     mov   a,($61+x)
0c3c: bb 61     inc   $61+x
0c3e: d0 02     bne   $0c42
0c40: bb 62     inc   $62+x
0c42: fd        mov   y,a
0c43: 2f 09     bra   $0c4e
0c45: e7 18     mov   a,($18+x)
0c47: bb 18     inc   $18+x
0c49: d0 02     bne   $0c4d
0c4b: bb 19     inc   $19+x
0c4d: fd        mov   y,a
0c4e: d5 f0 01  mov   $01f0+x,a
0c51: 80        setc
0c52: b5 d1 01  sbc   a,$01d1+x
0c55: ce        pop   x
0c56: ed        notc
0c57: 6b 0d     ror   $0d
0c59: 10 03     bpl   $0c5e
0c5b: 48 ff     eor   a,#$ff
0c5d: bc        inc   a
0c5e: 8d 00     mov   y,#$00
0c60: 9e        div   ya,x
0c61: 2d        push  a
0c62: e8 00     mov   a,#$00
0c64: 9e        div   ya,x
0c65: ee        pop   y
0c66: f8 2c     mov   x,$2c
0c68: f3 0d 06  bbc7  $0d,$0c71
0c6b: da 0f     movw  $0f,ya
0c6d: ba 09     movw  ya,$09
0c6f: 9a 0f     subw  ya,$0f
0c71: d5 e0 01  mov   $01e0+x,a
0c74: dd        mov   a,y
0c75: d5 e1 01  mov   $01e1+x,a
0c78: 6f        ret

; vcmd d1 - vibrato on
0c79: d5 51 02  mov   $0251+x,a
0c7c: f4 19     mov   a,$19+x
0c7e: d0 0b     bne   $0c8b
0c80: e7 61     mov   a,($61+x)
0c82: bb 61     inc   $61+x
0c84: d0 02     bne   $0c88
0c86: bb 62     inc   $62+x
0c88: fd        mov   y,a
0c89: 2f 09     bra   $0c94
0c8b: e7 18     mov   a,($18+x)
0c8d: bb 18     inc   $18+x
0c8f: d0 02     bne   $0c93
0c91: bb 19     inc   $19+x
0c93: fd        mov   y,a
0c94: d5 50 02  mov   $0250+x,a
0c97: f4 19     mov   a,$19+x
0c99: d0 0b     bne   $0ca6
0c9b: e7 61     mov   a,($61+x)
0c9d: bb 61     inc   $61+x
0c9f: d0 02     bne   $0ca3
0ca1: bb 62     inc   $62+x
0ca3: fd        mov   y,a
0ca4: 2f 09     bra   $0caf
0ca6: e7 18     mov   a,($18+x)
0ca8: bb 18     inc   $18+x
0caa: d0 02     bne   $0cae
0cac: bb 19     inc   $19+x
0cae: fd        mov   y,a
; vcmd d2 - vibrato off
0caf: d4 c0     mov   $c0+x,a
0cb1: d5 70 02  mov   $0270+x,a
0cb4: e8 00     mov   a,#$00
0cb6: d5 60 02  mov   $0260+x,a
0cb9: 6f        ret

; vcmd de - vibrato fade
0cba: d5 60 02  mov   $0260+x,a
0cbd: 2d        push  a
0cbe: 8d 00     mov   y,#$00
0cc0: f4 c0     mov   a,$c0+x
0cc2: ce        pop   x
0cc3: 9e        div   ya,x
0cc4: f8 2c     mov   x,$2c
0cc6: d5 61 02  mov   $0261+x,a
0cc9: 6f        ret

; vcmd d3 - master volume
0cca: e8 00     mov   a,#$00
0ccc: da 40     movw  $40,ya
0cce: 6f        ret

; vcmd d4 - master volume fade
0ccf: c4 42     mov   $42,a
0cd1: f4 19     mov   a,$19+x
0cd3: d0 0b     bne   $0ce0
0cd5: e7 61     mov   a,($61+x)
0cd7: bb 61     inc   $61+x
0cd9: d0 02     bne   $0cdd
0cdb: bb 62     inc   $62+x
0cdd: fd        mov   y,a
0cde: 2f 09     bra   $0ce9
0ce0: e7 18     mov   a,($18+x)
0ce2: bb 18     inc   $18+x
0ce4: d0 02     bne   $0ce8
0ce6: bb 19     inc   $19+x
0ce8: fd        mov   y,a
0ce9: c4 43     mov   $43,a
0ceb: 80        setc
0cec: a4 41     sbc   a,$41
0cee: f8 42     mov   x,$42
0cf0: 3f 46 0f  call  $0f46
0cf3: da 44     movw  $44,ya
0cf5: 6f        ret

; vcmd d5 - tempo
0cf6: e8 00     mov   a,#$00
0cf8: da 3a     movw  $3a,ya
0cfa: cb 7e     mov   $7e,y
0cfc: 6f        ret

; vcmd d6 - tempo fade
0cfd: c4 3c     mov   $3c,a
0cff: f4 19     mov   a,$19+x
0d01: d0 0b     bne   $0d0e
0d03: e7 61     mov   a,($61+x)
0d05: bb 61     inc   $61+x
0d07: d0 02     bne   $0d0b
0d09: bb 62     inc   $62+x
0d0b: fd        mov   y,a
0d0c: 2f 09     bra   $0d17
0d0e: e7 18     mov   a,($18+x)
0d10: bb 18     inc   $18+x
0d12: d0 02     bne   $0d16
0d14: bb 19     inc   $19+x
0d16: fd        mov   y,a
0d17: c4 3d     mov   $3d,a
0d19: 80        setc
0d1a: a4 3b     sbc   a,$3b
0d1c: f8 3c     mov   x,$3c
0d1e: 3f 46 0f  call  $0f46
0d21: da 3e     movw  $3e,ya
0d23: 6f        ret

; vcmd d7 - global transpose
0d24: c4 38     mov   $38,a
0d26: 6f        ret

; vcmd d8 - per-voice transpose
0d27: d5 80 02  mov   $0280+x,a
0d2a: 6f        ret

; vcmd d9 - set channel ASDR
0d2b: e4 2b     mov   a,$2b
0d2d: 24 13     and   a,$13
0d2f: d0 09     bne   $0d3a
0d31: dd        mov   a,y
0d32: 08 80     or    a,#$80
0d34: fd        mov   y,a
0d35: f5 ac 08  mov   a,$08ac+x
0d38: 08 05     or    a,#$05
0d3a: da f2     movw  $f2,ya
0d3c: 6f        ret

; vcmd da - set channel ASDR envelope
0d3d: e4 2b     mov   a,$2b
0d3f: 24 13     and   a,$13
0d41: d0 07     bne   $0d4a
0d43: f5 ac 08  mov   a,$08ac+x
0d46: 08 06     or    a,#$06
0d48: da f2     movw  $f2,ya
0d4a: 6f        ret

; vcmd e9 - set FIR
0d4b: e4 2b     mov   a,$2b
0d4d: 24 13     and   a,$13
0d4f: d0 0e     bne   $0d5f
0d51: f5 ac 08  mov   a,$08ac+x
0d54: 08 05     or    a,#$05
0d56: c4 f2     mov   $f2,a
0d58: 8f 7f f3  mov   $f3,#$7f
0d5b: bc        inc   a
0d5c: bc        inc   a
0d5d: da f2     movw  $f2,ya
0d5f: 6f        ret

; vcmd df - pitch envelope (release)
0d60: e8 01     mov   a,#$01
0d62: 2f 02     bra   $0d66
; vcmd e0 - pitch envelope (attack)
0d64: e8 00     mov   a,#$00
0d66: d5 31 02  mov   $0231+x,a
0d69: dd        mov   a,y
0d6a: d5 30 02  mov   $0230+x,a
0d6d: f4 19     mov   a,$19+x
0d6f: d0 0b     bne   $0d7c
0d71: e7 61     mov   a,($61+x)
0d73: bb 61     inc   $61+x
0d75: d0 02     bne   $0d79
0d77: bb 62     inc   $62+x
0d79: fd        mov   y,a
0d7a: 2f 09     bra   $0d85
0d7c: e7 18     mov   a,($18+x)
0d7e: bb 18     inc   $18+x
0d80: d0 02     bne   $0d84
0d82: bb 19     inc   $19+x
0d84: fd        mov   y,a
0d85: d5 21 02  mov   $0221+x,a
0d88: f4 19     mov   a,$19+x
0d8a: d0 0b     bne   $0d97
0d8c: e7 61     mov   a,($61+x)
0d8e: bb 61     inc   $61+x
0d90: d0 02     bne   $0d94
0d92: bb 62     inc   $62+x
0d94: fd        mov   y,a
0d95: 2f 09     bra   $0da0
0d97: e7 18     mov   a,($18+x)
0d99: bb 18     inc   $18+x
0d9b: d0 02     bne   $0d9f
0d9d: bb 19     inc   $19+x
0d9f: fd        mov   y,a
0da0: d5 40 02  mov   $0240+x,a
0da3: 6f        ret

; vcmd ed
0da4: d5 21 02  mov   $0221+x,a
0da7: e8 02     mov   a,#$02
0da9: d5 31 02  mov   $0231+x,a
0dac: f5 01 02  mov   a,$0201+x
0daf: d5 40 02  mov   $0240+x,a
0db2: e8 00     mov   a,#$00
0db4: d5 30 02  mov   $0230+x,a
0db7: 6f        ret

; vcmd e1 - pitch envelope off
0db8: d5 30 02  mov   $0230+x,a
0dbb: d5 21 02  mov   $0221+x,a
0dbe: 6f        ret

; vcmd db - volume
0dbf: d5 a1 01  mov   $01a1+x,a
0dc2: e8 00     mov   a,#$00
0dc4: d5 a0 01  mov   $01a0+x,a
0dc7: 6f        ret

; vcmd ef
0dc8: d4 cf     mov   $cf+x,a
0dca: d5 90 01  mov   $0190+x,a
0dcd: f4 19     mov   a,$19+x
0dcf: d0 0b     bne   $0ddc
0dd1: e7 61     mov   a,($61+x)
0dd3: bb 61     inc   $61+x
0dd5: d0 02     bne   $0dd9
0dd7: bb 62     inc   $62+x
0dd9: fd        mov   y,a
0dda: 2f 09     bra   $0de5
0ddc: e7 18     mov   a,($18+x)
0dde: bb 18     inc   $18+x
0de0: d0 02     bne   $0de4
0de2: bb 19     inc   $19+x
0de4: fd        mov   y,a
; vcmd dc - volume fade
0de5: d4 9f     mov   $9f+x,a
0de7: 2d        push  a
0de8: f4 19     mov   a,$19+x
0dea: d0 0b     bne   $0df7
0dec: e7 61     mov   a,($61+x)
0dee: bb 61     inc   $61+x
0df0: d0 02     bne   $0df4
0df2: bb 62     inc   $62+x
0df4: fd        mov   y,a
0df5: 2f 09     bra   $0e00
0df7: e7 18     mov   a,($18+x)
0df9: bb 18     inc   $18+x
0dfb: d0 02     bne   $0dff
0dfd: bb 19     inc   $19+x
0dff: fd        mov   y,a
0e00: d5 c0 01  mov   $01c0+x,a
0e03: 80        setc
0e04: b5 a1 01  sbc   a,$01a1+x
0e07: ce        pop   x
0e08: ed        notc
0e09: 6b 0d     ror   $0d
0e0b: 10 03     bpl   $0e10
0e0d: 48 ff     eor   a,#$ff
0e0f: bc        inc   a
0e10: 8d 00     mov   y,#$00
0e12: 9e        div   ya,x
0e13: 2d        push  a
0e14: e8 00     mov   a,#$00
0e16: 9e        div   ya,x
0e17: ee        pop   y
0e18: f8 2c     mov   x,$2c
0e1a: f3 0d 06  bbc7  $0d,$0e23
0e1d: da 0f     movw  $0f,ya
0e1f: ba 09     movw  ya,$09
0e21: 9a 0f     subw  ya,$0f
0e23: d5 b0 01  mov   $01b0+x,a
0e26: dd        mov   a,y
0e27: d5 b1 01  mov   $01b1+x,a
0e2a: 6f        ret

; vcmd f0
0e2b: 09 2b e8  or    ($e8),($2b)
0e2e: 6f        ret

; vcmd de - tuning
0e2f: d4 d0     mov   $d0+x,a
0e31: 6f        ret

; vcmd dd - call subroutine
0e32: d5 70 01  mov   $0170+x,a
0e35: f4 19     mov   a,$19+x
0e37: d0 0b     bne   $0e44
0e39: e7 61     mov   a,($61+x)
0e3b: bb 61     inc   $61+x
0e3d: d0 02     bne   $0e41
0e3f: bb 62     inc   $62+x
0e41: fd        mov   y,a
0e42: 2f 09     bra   $0e4d
0e44: e7 18     mov   a,($18+x)
0e46: bb 18     inc   $18+x
0e48: d0 02     bne   $0e4c
0e4a: bb 19     inc   $19+x
0e4c: fd        mov   y,a
0e4d: d5 71 01  mov   $0171+x,a
0e50: f4 19     mov   a,$19+x
0e52: d0 0b     bne   $0e5f
0e54: e7 61     mov   a,($61+x)
0e56: bb 61     inc   $61+x
0e58: d0 02     bne   $0e5c
0e5a: bb 62     inc   $62+x
0e5c: fd        mov   y,a
0e5d: 2f 09     bra   $0e68
0e5f: e7 18     mov   a,($18+x)
0e61: bb 18     inc   $18+x
0e63: d0 02     bne   $0e67
0e65: bb 19     inc   $19+x
0e67: fd        mov   y,a
0e68: d4 8f     mov   $8f+x,a
0e6a: fb 62     mov   y,$62+x
0e6c: f0 16     beq   $0e84
0e6e: f4 61     mov   a,$61+x
0e70: d5 60 01  mov   $0160+x,a
0e73: f4 62     mov   a,$62+x
0e75: d5 61 01  mov   $0161+x,a
0e78: f5 70 01  mov   a,$0170+x
0e7b: d4 61     mov   $61+x,a
0e7d: f5 71 01  mov   a,$0171+x
0e80: d4 62     mov   $62+x,a
0e82: 2f 14     bra   $0e98
0e84: f4 18     mov   a,$18+x
0e86: d5 60 01  mov   $0160+x,a
0e89: f4 19     mov   a,$19+x
0e8b: d5 61 01  mov   $0161+x,a
0e8e: f5 70 01  mov   a,$0170+x
0e91: d4 18     mov   $18+x,a
0e93: f5 71 01  mov   a,$0171+x
0e96: d4 19     mov   $19+x,a
0e98: 6f        ret

; vcmd e3 - echo vbits/volume
0e99: c4 33     mov   $33,a
0e9b: f4 19     mov   a,$19+x
0e9d: d0 0b     bne   $0eaa
0e9f: e7 61     mov   a,($61+x)
0ea1: bb 61     inc   $61+x
0ea3: d0 02     bne   $0ea7
0ea5: bb 62     inc   $62+x
0ea7: fd        mov   y,a
0ea8: 2f 09     bra   $0eb3
0eaa: e7 18     mov   a,($18+x)
0eac: bb 18     inc   $18+x
0eae: d0 02     bne   $0eb2
0eb0: bb 19     inc   $19+x
0eb2: fd        mov   y,a
0eb3: e8 00     mov   a,#$00
0eb5: cb 51     mov   $51,y
0eb7: da 49     movw  $49,ya
0eb9: f4 19     mov   a,$19+x
0ebb: d0 0b     bne   $0ec8
0ebd: e7 61     mov   a,($61+x)
0ebf: bb 61     inc   $61+x
0ec1: d0 02     bne   $0ec5
0ec3: bb 62     inc   $62+x
0ec5: fd        mov   y,a
0ec6: 2f 09     bra   $0ed1
0ec8: e7 18     mov   a,($18+x)
0eca: bb 18     inc   $18+x
0ecc: d0 02     bne   $0ed0
0ece: bb 19     inc   $19+x
0ed0: fd        mov   y,a
0ed1: cb 52     mov   $52,y
0ed3: ec 39 14  mov   y,$1439
0ed6: f0 09     beq   $0ee1
0ed8: 2d        push  a
0ed9: 44 51     eor   a,$51
0edb: ae        pop   a
0edc: 10 03     bpl   $0ee1
0ede: 48 ff     eor   a,#$ff
0ee0: bc        inc   a
0ee1: fd        mov   y,a
0ee2: e8 00     mov   a,#$00
0ee4: da 4b     movw  $4b,ya
0ee6: b2 31     clr5  $31
0ee8: 6f        ret

; vcmd e6 - echo volume fade
0ee9: c4 53     mov   $53,a
0eeb: f4 19     mov   a,$19+x
0eed: d0 0b     bne   $0efa
0eef: e7 61     mov   a,($61+x)
0ef1: bb 61     inc   $61+x
0ef3: d0 02     bne   $0ef7
0ef5: bb 62     inc   $62+x
0ef7: fd        mov   y,a
0ef8: 2f 09     bra   $0f03
0efa: e7 18     mov   a,($18+x)
0efc: bb 18     inc   $18+x
0efe: d0 02     bne   $0f02
0f00: bb 19     inc   $19+x
0f02: fd        mov   y,a
0f03: cb 51     mov   $51,y
0f05: c4 54     mov   $54,a
0f07: 80        setc
0f08: a4 4a     sbc   a,$4a
0f0a: f8 53     mov   x,$53
0f0c: 3f 46 0f  call  $0f46
0f0f: da 4d     movw  $4d,ya
0f11: f4 19     mov   a,$19+x
0f13: d0 0b     bne   $0f20
0f15: e7 61     mov   a,($61+x)
0f17: bb 61     inc   $61+x
0f19: d0 02     bne   $0f1d
0f1b: bb 62     inc   $62+x
0f1d: fd        mov   y,a
0f1e: 2f 09     bra   $0f29
0f20: e7 18     mov   a,($18+x)
0f22: bb 18     inc   $18+x
0f24: d0 02     bne   $0f28
0f26: bb 19     inc   $19+x
0f28: fd        mov   y,a
0f29: cb 52     mov   $52,y
0f2b: ec 39 14  mov   y,$1439
0f2e: f0 09     beq   $0f39
0f30: 2d        push  a
0f31: 44 51     eor   a,$51
0f33: ae        pop   a
0f34: 10 03     bpl   $0f39
0f36: 48 ff     eor   a,#$ff
0f38: bc        inc   a
0f39: c4 55     mov   $55,a
0f3b: 80        setc
0f3c: a4 4c     sbc   a,$4c
0f3e: f8 53     mov   x,$53
0f40: 3f 46 0f  call  $0f46
0f43: da 4f     movw  $4f,ya
0f45: 6f        ret

0f46: ed        notc
0f47: 6b 0d     ror   $0d
0f49: 10 03     bpl   $0f4e
0f4b: 48 ff     eor   a,#$ff
0f4d: bc        inc   a
0f4e: 8d 00     mov   y,#$00
0f50: 9e        div   ya,x
0f51: 2d        push  a
0f52: e8 00     mov   a,#$00
0f54: 9e        div   ya,x
0f55: ee        pop   y
0f56: f8 2c     mov   x,$2c
0f58: f3 0d 06  bbc7  $0d,$0f61
0f5b: da 0f     movw  $0f,ya
0f5d: ba 09     movw  ya,$09
0f5f: 9a 0f     subw  ya,$0f
0f61: 6f        ret

; vcmd e4 - disable echo
0f62: da 49     movw  $49,ya
0f64: da 4b     movw  $4b,ya
0f66: a2 31     set5  $31
0f68: 6f        ret

; vcmd e5 - set echo params
0f69: 3f e7 0f  call  $0fe7
0f6c: f4 19     mov   a,$19+x
0f6e: d0 0b     bne   $0f7b
0f70: e7 61     mov   a,($61+x)
0f72: bb 61     inc   $61+x
0f74: d0 02     bne   $0f78
0f76: bb 62     inc   $62+x
0f78: fd        mov   y,a
0f79: 2f 09     bra   $0f84
0f7b: e7 18     mov   a,($18+x)
0f7d: bb 18     inc   $18+x
0f7f: d0 02     bne   $0f83
0f81: bb 19     inc   $19+x
0f83: fd        mov   y,a
0f84: c4 37     mov   $37,a
0f86: f4 19     mov   a,$19+x
0f88: d0 0b     bne   $0f95
0f8a: e7 61     mov   a,($61+x)
0f8c: bb 61     inc   $61+x
0f8e: d0 02     bne   $0f92
0f90: bb 62     inc   $62+x
0f92: fd        mov   y,a
0f93: 2f 09     bra   $0f9e
0f95: e7 18     mov   a,($18+x)
0f97: bb 18     inc   $18+x
0f99: d0 02     bne   $0f9d
0f9b: bb 19     inc   $19+x
0f9d: fd        mov   y,a
0f9e: 8d 08     mov   y,#$08
0fa0: cf        mul   ya
0fa1: 5d        mov   x,a
0fa2: 8d 0f     mov   y,#$0f
0fa4: f5 29 14  mov   a,$1429+x
0fa7: cb f2     mov   $f2,y
0fa9: c4 f3     mov   $f3,a
0fab: 3d        inc   x
0fac: dd        mov   a,y
0fad: 60        clrc
0fae: 88 10     adc   a,#$10
0fb0: fd        mov   y,a
0fb1: 10 f1     bpl   $0fa4
0fb3: f8 2c     mov   x,$2c
0fb5: 6f        ret

; vcmd ee
0fb6: c4 37     mov   $37,a
0fb8: 6f        ret

; vcmd ec
0fb9: eb 71     mov   y,$71
0fbb: f6 72 00  mov   a,$0072+y
0fbe: 24 2b     and   a,$2b
0fc0: d0 18     bne   $0fda
0fc2: dc        dec   y
0fc3: 10 f6     bpl   $0fbb
0fc5: eb 71     mov   y,$71
0fc7: ab 71     inc   $71
0fc9: d9 59     mov   $59+y,x
0fcb: e4 2b     mov   a,$2b
0fcd: d6 72 00  mov   $0072+y,a
0fd0: f4 18     mov   a,$18+x
0fd2: d5 a0 02  mov   $02a0+x,a
0fd5: f4 19     mov   a,$19+x
0fd7: d5 a1 02  mov   $02a1+x,a
0fda: e8 00     mov   a,#$00
0fdc: d4 19     mov   $19+x,a
0fde: ae        pop   a
0fdf: ae        pop   a
0fe0: e8 0a     mov   a,#$0a
0fe2: 2d        push  a
0fe3: e8 bc     mov   a,#$bc
0fe5: 2d        push  a
0fe6: 6f        ret

0fe7: c4 36     mov   $36,a
0fe9: 8d 7d     mov   y,#$7d
0feb: 28 0f     and   a,#$0f
0fed: 48 ff     eor   a,#$ff
0fef: f3 35 03  bbc7  $35,$0ff5
0ff2: 60        clrc
0ff3: 84 35     adc   a,$35
0ff5: c4 35     mov   $35,a
0ff7: 8d 04     mov   y,#$04
0ff9: f6 8e 03  mov   a,$038e+y
0ffc: c4 f2     mov   $f2,a
0ffe: e8 00     mov   a,#$00
1000: c4 f3     mov   $f3,a
1002: fe f5     dbnz  y,$0ff9
1004: 08 20     or    a,#$20
1006: 8d 6c     mov   y,#$6c
1008: cb f2     mov   $f2,y
100a: c4 f3     mov   $f3,a
100c: e4 36     mov   a,$36
100e: 8d 7d     mov   y,#$7d
1010: cb f2     mov   $f2,y
1012: c4 f3     mov   $f3,a
1014: 1c        asl   a
1015: 1c        asl   a
1016: 1c        asl   a
1017: 48 ff     eor   a,#$ff
1019: bc        inc   a
101a: 8d 6d     mov   y,#$6d
101c: cb f2     mov   $f2,y
101e: c4 f3     mov   $f3,a
1020: 6f        ret

; vcmd e8/ea
1021: 09 2b 56  or    ($56),($2b)
1024: 6f        ret

; vcmd eb
1025: e4 2b     mov   a,$2b
1027: 4e 56 00  tclr1 $0056
102a: 6f        ret

102b: f4 af     mov   a,$af+x
102d: d0 27     bne   $1056
102f: e7 61     mov   a,($61+x)
1031: 68 e7     cmp   a,#$e7
1033: d0 21     bne   $1056
1035: bb 61     inc   $61+x
1037: d0 02     bne   $103b
1039: bb 62     inc   $62+x
103b: fd        mov   y,a
103c: f4 19     mov   a,$19+x
103e: d0 0b     bne   $104b
1040: e7 61     mov   a,($61+x)
1042: bb 61     inc   $61+x
1044: d0 02     bne   $1048
1046: bb 62     inc   $62+x
1048: fd        mov   y,a
1049: 2f 09     bra   $1054
104b: e7 18     mov   a,($18+x)
104d: bb 18     inc   $18+x
104f: d0 02     bne   $1053
1051: bb 19     inc   $19+x
1053: fd        mov   y,a
1054: 2f 2a     bra   $1080
1056: 6f        ret

1057: f4 af     mov   a,$af+x
1059: d0 fb     bne   $1056
105b: e7 18     mov   a,($18+x)
105d: 68 e7     cmp   a,#$e7
105f: d0 f5     bne   $1056
1061: bb 18     inc   $18+x
1063: d0 02     bne   $1067
1065: bb 19     inc   $19+x
1067: fd        mov   y,a
1068: f4 19     mov   a,$19+x
106a: d0 0b     bne   $1077
106c: e7 61     mov   a,($61+x)
106e: bb 61     inc   $61+x
1070: d0 02     bne   $1074
1072: bb 62     inc   $62+x
1074: fd        mov   y,a
1075: 2f 09     bra   $1080
1077: e7 18     mov   a,($18+x)
1079: bb 18     inc   $18+x
107b: d0 02     bne   $107f
107d: bb 19     inc   $19+x
107f: fd        mov   y,a
; vcmd e7 - pitch slide
1080: d4 b0     mov   $b0+x,a
1082: f4 19     mov   a,$19+x
1084: d0 0b     bne   $1091
1086: e7 61     mov   a,($61+x)
1088: bb 61     inc   $61+x
108a: d0 02     bne   $108e
108c: bb 62     inc   $62+x
108e: fd        mov   y,a
108f: 2f 09     bra   $109a
1091: e7 18     mov   a,($18+x)
1093: bb 18     inc   $18+x
1095: d0 02     bne   $1099
1097: bb 19     inc   $19+x
1099: fd        mov   y,a
109a: d4 af     mov   $af+x,a
109c: f4 19     mov   a,$19+x
109e: d0 0b     bne   $10ab
10a0: e7 61     mov   a,($61+x)
10a2: bb 61     inc   $61+x
10a4: d0 02     bne   $10a8
10a6: bb 62     inc   $62+x
10a8: fd        mov   y,a
10a9: 2f 09     bra   $10b4
10ab: e7 18     mov   a,($18+x)
10ad: bb 18     inc   $18+x
10af: d0 02     bne   $10b3
10b1: bb 19     inc   $19+x
10b3: fd        mov   y,a
10b4: 60        clrc
10b5: 84 38     adc   a,$38
10b7: 95 80 02  adc   a,$0280+x
10ba: 28 7f     and   a,#$7f
10bc: d5 20 02  mov   $0220+x,a
10bf: 80        setc
10c0: b5 01 02  sbc   a,$0201+x
10c3: fb af     mov   y,$af+x
10c5: 6d        push  y
10c6: ce        pop   x
10c7: ed        notc
10c8: 6b 0d     ror   $0d
10ca: 10 03     bpl   $10cf
10cc: 48 ff     eor   a,#$ff
10ce: bc        inc   a
10cf: 8d 00     mov   y,#$00
10d1: 9e        div   ya,x
10d2: 2d        push  a
10d3: e8 00     mov   a,#$00
10d5: 9e        div   ya,x
10d6: ee        pop   y
10d7: f8 2c     mov   x,$2c
10d9: f3 0d 06  bbc7  $0d,$10e2
10dc: da 0f     movw  $0f,ya
10de: ba 09     movw  ya,$09
10e0: 9a 0f     subw  ya,$0f
10e2: d5 10 02  mov   $0210+x,a
10e5: dd        mov   a,y
10e6: d5 11 02  mov   $0211+x,a
10e9: 6f        ret

10ea: f4 9f     mov   a,$9f+x
10ec: f0 28     beq   $1116
10ee: e8 a0     mov   a,#$a0
10f0: 8d 01     mov   y,#$01
10f2: 09 2b 46  or    ($46),($2b)
10f5: 9b 9f     dec   $9f+x
10f7: d0 0a     bne   $1103
10f9: e8 00     mov   a,#$00
10fb: d5 a0 01  mov   $01a0+x,a
10fe: f5 c0 01  mov   a,$01c0+x
1101: 2f 10     bra   $1113
1103: 60        clrc
1104: f5 a0 01  mov   a,$01a0+x
1107: 95 b0 01  adc   a,$01b0+x
110a: d5 a0 01  mov   $01a0+x,a
110d: f5 a1 01  mov   a,$01a1+x
1110: 95 b1 01  adc   a,$01b1+x
1113: d5 a1 01  mov   $01a1+x,a
1116: f5 a1 01  mov   a,$01a1+x
1119: fd        mov   y,a
111a: f5 91 02  mov   a,$0291+x
111d: cf        mul   ya
111e: dd        mov   a,y
111f: d5 c1 01  mov   $01c1+x,a
1122: f4 a0     mov   a,$a0+x
1124: f0 24     beq   $114a
1126: 09 2b 46  or    ($46),($2b)
1129: 9b a0     dec   $a0+x
112b: d0 0a     bne   $1137
112d: e8 00     mov   a,#$00
112f: d5 d0 01  mov   $01d0+x,a
1132: f5 f0 01  mov   a,$01f0+x
1135: 2f 10     bra   $1147
1137: 60        clrc
1138: f5 d0 01  mov   a,$01d0+x
113b: 95 e0 01  adc   a,$01e0+x
113e: d5 d0 01  mov   $01d0+x,a
1141: f5 d1 01  mov   a,$01d1+x
1144: 95 e1 01  adc   a,$01e1+x
1147: d5 d1 01  mov   $01d1+x,a
114a: 2f 77     bra   $11c3
114c: f4 cf     mov   a,$cf+x
114e: f0 04     beq   $1154
1150: 9b cf     dec   $cf+x
1152: 2f 2d     bra   $1181
1154: f4 9f     mov   a,$9f+x
1156: f0 29     beq   $1181
1158: f5 90 01  mov   a,$0190+x
115b: d4 cf     mov   $cf+x,a
115d: 09 2b 46  or    ($46),($2b)
1160: 9b 9f     dec   $9f+x
1162: d0 0a     bne   $116e
1164: e8 00     mov   a,#$00
1166: d5 a0 01  mov   $01a0+x,a
1169: f5 c0 01  mov   a,$01c0+x
116c: 2f 10     bra   $117e
116e: 60        clrc
116f: f5 a0 01  mov   a,$01a0+x
1172: 95 b0 01  adc   a,$01b0+x
1175: d5 a0 01  mov   $01a0+x,a
1178: f5 a1 01  mov   a,$01a1+x
117b: 95 b1 01  adc   a,$01b1+x
117e: d5 a1 01  mov   $01a1+x,a
1181: eb 41     mov   y,$41
1183: f5 40 01  mov   a,$0140+x
1186: cf        mul   ya
1187: f5 a1 01  mov   a,$01a1+x
118a: cf        mul   ya
118b: dd        mov   a,y
118c: cf        mul   ya
118d: dd        mov   a,y
118e: d5 c1 01  mov   $01c1+x,a
1191: f4 a0     mov   a,$a0+x
1193: f0 2e     beq   $11c3
1195: e8 d0     mov   a,#$d0
1197: 8d 01     mov   y,#$01
1199: 9b a0     dec   $a0+x
119b: 0d        push  psw
119c: 09 2b 46  or    ($46),($2b)
119f: 8e        pop   psw
11a0: da 0f     movw  $0f,ya
11a2: da 11     movw  $11,ya
11a4: 4d        push  x
11a5: ee        pop   y
11a6: 60        clrc
11a7: d0 0a     bne   $11b3
11a9: 98 1f 11  adc   $11,#$1f
11ac: e8 00     mov   a,#$00
11ae: d7 0f     mov   ($0f)+y,a
11b0: fc        inc   y
11b1: 2f 0c     bra   $11bf
11b3: 98 10 11  adc   $11,#$10
11b6: f7 0f     mov   a,($0f)+y
11b8: 97 11     adc   a,($11)+y
11ba: d7 0f     mov   ($0f)+y,a
11bc: fc        inc   y
11bd: f7 0f     mov   a,($0f)+y
11bf: 97 11     adc   a,($11)+y
11c1: d7 0f     mov   ($0f)+y,a
11c3: e4 2b     mov   a,$2b
11c5: 24 46     and   a,$46
11c7: f0 5f     beq   $1228
11c9: f5 d1 01  mov   a,$01d1+x
11cc: fd        mov   y,a
11cd: f5 d0 01  mov   a,$01d0+x
11d0: da 0b     movw  $0b,ya
11d2: f5 ac 08  mov   a,$08ac+x
11d5: c4 0d     mov   $0d,a
11d7: 8d 51     mov   y,#$51
11d9: e5 39 14  mov   a,$1439
11dc: d0 14     bne   $11f2
11de: eb 0c     mov   y,$0c
11e0: f6 2a 12  mov   a,$122a+y
11e3: 80        setc
11e4: b6 29 12  sbc   a,$1229+y
11e7: eb 0b     mov   y,$0b
11e9: cf        mul   ya
11ea: dd        mov   a,y
11eb: eb 0c     mov   y,$0c
11ed: 60        clrc
11ee: 96 29 12  adc   a,$1229+y
11f1: fd        mov   y,a
11f2: f5 c1 01  mov   a,$01c1+x
11f5: cf        mul   ya
11f6: 60        clrc
11f7: e5 39 14  mov   a,$1439
11fa: d0 08     bne   $1204
11fc: f5 f1 01  mov   a,$01f1+x
11ff: 1c        asl   a
1200: 13 0d 01  bbc0  $0d,$1204
1203: 1c        asl   a
1204: dd        mov   a,y
1205: 90 03     bcc   $120a
1207: 48 ff     eor   a,#$ff
1209: bc        inc   a
120a: eb 0d     mov   y,$0d
120c: 2d        push  a
120d: e4 2b     mov   a,$2b
120f: 24 13     and   a,$13
1211: ae        pop   a
1212: d0 04     bne   $1218
1214: cb f2     mov   $f2,y
1216: c4 f3     mov   $f3,a
1218: 8d 14     mov   y,#$14
121a: e8 00     mov   a,#$00
121c: 9a 0b     subw  ya,$0b
121e: da 0b     movw  $0b,ya
1220: ab 0d     inc   $0d
1222: 33 0d b2  bbc1  $0d,$11d7
1225: 49 2b 46  eor   ($46),($2b)
1228: 6f        ret


1229: db $00,$01,$03,$07,$0d,$15,$1e,$29
0231: db $34,$42,$51,$5e,$67,$6e,$73,$77
0239: db $7a,$7c,$7d,$7e,$7f

123e: f0 7e     beq   $12be
1240: f4 80     mov   a,$80+x
1242: f0 7a     beq   $12be
1244: 9b 80     dec   $80+x
1246: f0 05     beq   $124d
1248: e8 02     mov   a,#$02
124a: de 7f 71  cbne  $7f+x,$12be
124d: f4 8f     mov   a,$8f+x
124f: c4 12     mov   $12,a
1251: fb 62     mov   y,$62+x
1253: f0 04     beq   $1259
1255: f4 61     mov   a,$61+x
1257: 2f 04     bra   $125d
1259: f4 18     mov   a,$18+x
125b: fb 19     mov   y,$19+x
125d: da 0f     movw  $0f,ya
125f: 8d 00     mov   y,#$00
1261: f7 0f     mov   a,($0f)+y
1263: f0 1c     beq   $1281
1265: 30 05     bmi   $126c
1267: fc        inc   y
1268: f7 0f     mov   a,($0f)+y
126a: 10 fb     bpl   $1267
126c: 68 c8     cmp   a,#$c8
126e: f0 4e     beq   $12be
1270: 68 dd     cmp   a,#$dd
1272: f0 29     beq   $129d
1274: 68 ce     cmp   a,#$ce
1276: 90 30     bcc   $12a8
1278: 6d        push  y
1279: fd        mov   y,a
127a: ae        pop   a
127b: 96 8a 0a  adc   a,$0a8a+y
127e: fd        mov   y,a
127f: 2f e0     bra   $1261
1281: e4 12     mov   a,$12
1283: f0 23     beq   $12a8
1285: 8b 12     dec   $12
1287: d0 0a     bne   $1293
1289: f5 61 01  mov   a,$0161+x
128c: 2d        push  a
128d: f5 60 01  mov   a,$0160+x
1290: ee        pop   y
1291: 2f ca     bra   $125d
1293: f5 71 01  mov   a,$0171+x
1296: 2d        push  a
1297: f5 70 01  mov   a,$0170+x
129a: ee        pop   y
129b: 2f c0     bra   $125d
129d: fc        inc   y
129e: f7 0f     mov   a,($0f)+y
12a0: 2d        push  a
12a1: fc        inc   y
12a2: f7 0f     mov   a,($0f)+y
12a4: fd        mov   y,a
12a5: ae        pop   a
12a6: 2f b5     bra   $125d
12a8: e4 57     mov   a,$57
12aa: 24 2b     and   a,$2b
12ac: d0 10     bne   $12be
12ae: e4 2b     mov   a,$2b
12b0: 8d 5c     mov   y,#$5c
12b2: 2d        push  a
12b3: e4 2b     mov   a,$2b
12b5: 24 13     and   a,$13
12b7: ae        pop   a
12b8: d0 04     bne   $12be
12ba: cb f2     mov   $f2,y
12bc: c4 f3     mov   $f3,a
12be: f2 0e     clr7  $0e
12c0: f4 af     mov   a,$af+x
12c2: f0 33     beq   $12f7
12c4: f4 b0     mov   a,$b0+x
12c6: f0 04     beq   $12cc
12c8: 9b b0     dec   $b0+x
12ca: 2f 2b     bra   $12f7
12cc: e2 0e     set7  $0e
12ce: e8 00     mov   a,#$00
12d0: 8d 02     mov   y,#$02
12d2: 9b af     dec   $af+x
12d4: da 0f     movw  $0f,ya
12d6: da 11     movw  $11,ya
12d8: 4d        push  x
12d9: ee        pop   y
12da: 60        clrc
12db: d0 0a     bne   $12e7
12dd: 98 1f 11  adc   $11,#$1f
12e0: e8 00     mov   a,#$00
12e2: d7 0f     mov   ($0f)+y,a
12e4: fc        inc   y
12e5: 2f 0c     bra   $12f3
12e7: 98 10 11  adc   $11,#$10
12ea: f7 0f     mov   a,($0f)+y
12ec: 97 11     adc   a,($11)+y
12ee: d7 0f     mov   ($0f)+y,a
12f0: fc        inc   y
12f1: f7 0f     mov   a,($0f)+y
12f3: 97 11     adc   a,($11)+y
12f5: d7 0f     mov   ($0f)+y,a
12f7: f5 01 02  mov   a,$0201+x
12fa: c4 0c     mov   $0c,a
12fc: f5 00 02  mov   a,$0200+x
12ff: c4 0b     mov   $0b,a
1301: f4 c0     mov   a,$c0+x
1303: f0 54     beq   $1359
1305: f5 51 02  mov   a,$0251+x
1308: de bf 4c  cbne  $bf+x,$1357
130b: f5 90 00  mov   a,$0090+x
130e: 75 60 02  cmp   a,$0260+x
1311: d0 05     bne   $1318
1313: f5 70 02  mov   a,$0270+x
1316: 2f 0b     bra   $1323
1318: bb 90     inc   $90+x
131a: fd        mov   y,a
131b: f0 02     beq   $131f
131d: f4 c0     mov   a,$c0+x
131f: 60        clrc
1320: 95 61 02  adc   a,$0261+x
1323: d4 c0     mov   $c0+x,a
1325: f5 41 02  mov   a,$0241+x
1328: 60        clrc
1329: 95 50 02  adc   a,$0250+x
132c: d5 41 02  mov   $0241+x,a
132f: c4 0d     mov   $0d,a
1331: 1c        asl   a
1332: 1c        asl   a
1333: 90 02     bcc   $1337
1335: 48 ff     eor   a,#$ff
1337: fd        mov   y,a
1338: f4 c0     mov   a,$c0+x
133a: 68 f1     cmp   a,#$f1
133c: 90 05     bcc   $1343
133e: 28 0f     and   a,#$0f
1340: cf        mul   ya
1341: 2f 04     bra   $1347
1343: cf        mul   ya
1344: dd        mov   a,y
1345: 8d 00     mov   y,#$00
1347: f3 0d 06  bbc7  $0d,$1350
134a: da 0f     movw  $0f,ya
134c: ba 09     movw  ya,$09
134e: 9a 0f     subw  ya,$0f
1350: 7a 0b     addw  ya,$0b
1352: da 0b     movw  $0b,ya
1354: 5f 08 08  jmp   $0808

1357: bb bf     inc   $bf+x
1359: e3 0e f8  bbs7  $0e,$1354
135c: 6f        ret

135d: f2 0e     clr7  $0e
135f: f5 d1 01  mov   a,$01d1+x
1362: fd        mov   y,a
1363: f5 d0 01  mov   a,$01d0+x
1366: da 0b     movw  $0b,ya
1368: f4 a0     mov   a,$a0+x
136a: f0 0a     beq   $1376
136c: f5 e1 01  mov   a,$01e1+x
136f: fd        mov   y,a
1370: f5 e0 01  mov   a,$01e0+x
1373: 3f b2 13  call  $13b2
1376: f3 0e 03  bbc7  $0e,$137c
1379: 3f d2 11  call  $11d2
137c: f2 0e     clr7  $0e
137e: f5 01 02  mov   a,$0201+x
1381: c4 0c     mov   $0c,a
1383: f5 00 02  mov   a,$0200+x
1386: c4 0b     mov   $0b,a
1388: f4 af     mov   a,$af+x
138a: f0 0e     beq   $139a
138c: f4 b0     mov   a,$b0+x
138e: d0 0a     bne   $139a
1390: f5 11 02  mov   a,$0211+x
1393: fd        mov   y,a
1394: f5 10 02  mov   a,$0210+x
1397: 3f b2 13  call  $13b2
139a: f4 c0     mov   a,$c0+x
139c: f0 bb     beq   $1359
139e: f5 51 02  mov   a,$0251+x
13a1: de bf b5  cbne  $bf+x,$1359
13a4: eb 39     mov   y,$39
13a6: f5 50 02  mov   a,$0250+x
13a9: cf        mul   ya
13aa: dd        mov   a,y
13ab: 60        clrc
13ac: 95 41 02  adc   a,$0241+x
13af: 5f 2f 13  jmp   $132f

13b2: e2 0e     set7  $0e
13b4: cb 0d     mov   $0d,y
13b6: f3 0d 06  bbc7  $0d,$13bf
13b9: da 0f     movw  $0f,ya
13bb: ba 09     movw  ya,$09
13bd: 9a 0f     subw  ya,$0f
13bf: 6d        push  y
13c0: eb 39     mov   y,$39
13c2: cf        mul   ya
13c3: cb 0f     mov   $0f,y
13c5: 8f 00 10  mov   $10,#$00
13c8: eb 39     mov   y,$39
13ca: ae        pop   a
13cb: cf        mul   ya
13cc: 7a 0f     addw  ya,$0f
13ce: f3 0d 06  bbc7  $0d,$13d7
13d1: da 0f     movw  $0f,ya
13d3: ba 09     movw  ya,$09
13d5: 9a 0f     subw  ya,$0f
13d7: 7a 0b     addw  ya,$0b
13d9: da 0b     movw  $0b,ya
13db: 6f        ret

13dc: e4 2b     mov   a,$2b
13de: 24 28     and   a,$28
13e0: f0 46     beq   $1428
13e2: f5 ac 08  mov   a,$08ac+x
13e5: 08 08     or    a,#$08
13e7: c4 f2     mov   $f2,a
13e9: e4 f3     mov   a,$f3
13eb: d0 3b     bne   $1428
13ed: e4 2b     mov   a,$2b
13ef: 4e 56 00  tclr1 $0056
13f2: 4e 57 00  tclr1 $0057
13f5: 4e e8 00  tclr1 $00e8
13f8: e8 00     mov   a,#$00
13fa: d5 81 02  mov   $0281+x,a
13fd: d4 80     mov   $80+x,a
13ff: d4 a0     mov   $a0+x,a
1401: d4 9f     mov   $9f+x,a
1403: d4 8f     mov   $8f+x,a
1405: d5 80 02  mov   $0280+x,a
1408: d4 d0     mov   $d0+x,a
140a: d5 d0 01  mov   $01d0+x,a
140d: 3f b8 0d  call  $0db8
1410: d5 31 02  mov   $0231+x,a
1413: d5 b0 00  mov   $00b0+x,a
1416: 3f af 0c  call  $0caf
1419: e8 02     mov   a,#$02
141b: d4 7f     mov   $7f+x,a
141d: e8 0a     mov   a,#$0a
141f: d5 f1 01  mov   $01f1+x,a
1422: d5 d1 01  mov   $01d1+x,a
1425: 49 2b 28  eor   ($28),($2b)
1428: 6f        ret

; echo FIR presets
1429: db $7f,$00,$00,$00,$00,$00,$00,$00
1431: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c