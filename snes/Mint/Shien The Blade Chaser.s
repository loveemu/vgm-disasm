; Shien The Blade Chaser (Shien's Revenge) developed by Almanic
; Music composed by Akihiko Mori
; Music engine is similar to Akihiko Mori's other games.
; However, this one has quite different command map than other ones.

02f0: db $7f,$7e,$7d,$7c,$7a,$77,$73,$6e
02f8: db $69,$67,$64,$50,$46,$3c,$32,$28
0300: db $1e,$14,$0a,$05,$00

0304: 20        clrp
0306: cd ff     mov   x,#$ff
0308: bd        mov   sp,x
0309: e8 00     mov   a,#$00
030b: 5d        mov   x,a
030c: af        mov   (x)+,a
030d: c8 f0     cmp   x,#$f0
030f: d0 fb     bne   $030c
0311: e8 30     mov   a,#$30
0313: c4 f1     mov   $f1,a
0315: e8 11     mov   a,#$11
0317: 8d 5d     mov   y,#$5d
0319: cb f2     mov   $f2,y
031b: c4 f3     mov   $f3,a             ; set DIR
031d: e8 e0     mov   a,#$e0
031f: 8d 6c     mov   y,#$6c
0321: cb f2     mov   $f2,y
0323: c4 f3     mov   $f3,a             ; set FLG
0325: e8 e0     mov   a,#$e0
0327: 8d 6d     mov   y,#$6d
0329: cb f2     mov   $f2,y
032b: c4 f3     mov   $f3,a             ; set ESA
032d: e8 ff     mov   a,#$ff
032f: c4 19     mov   $19,a
0331: e8 04     mov   a,#$04
0333: 3f 96 0f  call  $0f96
0336: 3f 5f 0f  call  $0f5f
0339: 8d 64     mov   y,#$64
033b: 3f 77 03  call  $0377
033e: e8 35     mov   a,#$35
0340: c4 0c     mov   $0c,a
0342: e8 ab     mov   a,#$ab
0344: c4 0d     mov   $0d,a
0346: e8 20     mov   a,#$20
0348: c4 17     mov   $17,a
034a: 3f b9 0a  call  $0ab9
034d: e8 00     mov   a,#$00
034f: c4 f4     mov   $f4,a
0351: c4 f5     mov   $f5,a
0353: 3f e8 0a  call  $0ae8
0356: e8 31     mov   a,#$31
0358: c4 f1     mov   $f1,a
035a: 3f 5f 0f  call  $0f5f
035d: 3f 28 0e  call  $0e28
0360: 3f 4e 0f  call  $0f4e
0363: ec fd 00  mov   y,$00fd
0366: f0 f8     beq   $0360
0368: 6d        push  y
0369: 3f 23 0a  call  $0a23
036c: ee        pop   y
036d: 6d        push  y
036e: 3f 83 03  call  $0383
0371: ee        pop   y
0372: dc        dec   y
0373: d0 f8     bne   $036d
0375: 2f e9     bra   $0360
0377: e8 ff     mov   a,#$ff
0379: c4 f4     mov   $f4,a
037b: e4 fd     mov   a,$fd
037d: f0 f8     beq   $0377
037f: dc        dec   y
0380: d0 f5     bne   $0377
0382: 6f        ret

0383: 3f b7 0d  call  $0db7
0386: 3f de 0d  call  $0dde
0389: 3f 9d 03  call  $039d
038c: 3f c8 03  call  $03c8
038f: 3f d6 03  call  $03d6
0392: cd 00     mov   x,#$00
0394: 7d        mov   a,x
0395: d4 96     mov   $96+x,a
0397: 3d        inc   x
0398: c8 0a     cmp   x,#$0a
039a: d0 f9     bne   $0395
039c: 6f        ret

039d: 03 0f 27  bbs0  $0f,$03c7
03a0: e4 1c     mov   a,$1c
03a2: 60        clrc
03a3: 84 1d     adc   a,$1d
03a5: c4 1d     mov   $1d,a
03a7: e8 00     mov   a,#$00
03a9: 3c        rol   a
03aa: c4 10     mov   $10,a
03ac: e4 10     mov   a,$10
03ae: f0 0d     beq   $03bd
03b0: e4 38     mov   a,$38
03b2: bc        inc   a
03b3: 64 36     cmp   a,$36
03b5: d0 04     bne   $03bb
03b7: e8 00     mov   a,#$00
03b9: ab 37     inc   $37
03bb: c4 38     mov   $38,a
03bd: cd 00     mov   x,#$00
03bf: 3f 3f 04  call  $043f
03c2: 3d        inc   x
03c3: c8 0a     cmp   x,#$0a
03c5: d0 f8     bne   $03bf
03c7: 6f        ret

03c8: cd 00     mov   x,#$00
03ca: 8f 01 11  mov   $11,#$01
03cd: 3f c3 05  call  $05c3
03d0: 3d        inc   x
03d1: 0b 11     asl   $11
03d3: d0 f8     bne   $03cd
03d5: 6f        ret

03d6: e4 13     mov   a,$13
03d8: 8d 5c     mov   y,#$5c
03da: cb f2     mov   $f2,y
03dc: c4 f3     mov   $f3,a             ; set KOF
03de: cd 00     mov   x,#$00
03e0: 8f 01 11  mov   $11,#$01
03e3: 3f 26 06  call  $0626
03e6: 3d        inc   x
03e7: 0b 11     asl   $11
03e9: d0 f8     bne   $03e3
03eb: e4 1a     mov   a,$1a
03ed: f0 06     beq   $03f5
03ef: 8b 1a     dec   $1a
03f1: d0 02     bne   $03f5
03f3: b2 17     clr5  $17
03f5: 3f 40 0e  call  $0e40
03f8: e4 15     mov   a,$15
03fa: 8d 2d     mov   y,#$2d
03fc: cb f2     mov   $f2,y
03fe: c4 f3     mov   $f3,a             ; set PMON
0400: e4 14     mov   a,$14
0402: 8d 3d     mov   y,#$3d
0404: cb f2     mov   $f2,y
0406: c4 f3     mov   $f3,a             ; set NON
0408: e4 17     mov   a,$17
040a: 8d 6c     mov   y,#$6c
040c: cb f2     mov   $f2,y
040e: c4 f3     mov   $f3,a             ; set FLG
0410: e4 12     mov   a,$12
0412: 44 13     eor   a,$13
0414: 24 13     and   a,$13
0416: 8d 5c     mov   y,#$5c
0418: cb f2     mov   $f2,y
041a: c4 f3     mov   $f3,a             ; set KOF
041c: e4 1a     mov   a,$1a
041e: d0 10     bne   $0430
0420: e4 16     mov   a,$16
0422: 8d 4d     mov   y,#$4d
0424: cb f2     mov   $f2,y
0426: c4 f3     mov   $f3,a             ; set EON
0428: e4 18     mov   a,$18
042a: 8d 0d     mov   y,#$0d
042c: cb f2     mov   $f2,y
042e: c4 f3     mov   $f3,a             ; set EFB
0430: e4 12     mov   a,$12
0432: 8d 4c     mov   y,#$4c
0434: cb f2     mov   $f2,y
0436: c4 f3     mov   $f3,a             ; set KON
0438: e8 00     mov   a,#$00
043a: c4 12     mov   $12,a
043c: c4 13     mov   $13,a
043e: 6f        ret

043f: f5 12 02  mov   a,$0212+x
0442: 68 ff     cmp   a,#$ff
0444: f0 0c     beq   $0452
0446: f4 84     mov   a,$84+x
0448: 28 04     and   a,#$04
044a: 04 10     or    a,$10
044c: f0 04     beq   $0452
044e: 9b 72     dec   $72+x
0450: f0 01     beq   $0453
0452: 6f        ret

0453: f4 3c     mov   a,$3c+x
0455: c4 29     mov   $29,a
0457: f4 4e     mov   a,$4e+x
0459: c4 2a     mov   $2a,a
045b: 8d 00     mov   y,#$00
045d: f7 29     mov   a,($29)+y
045f: 3a 29     incw  $29
0461: fd        mov   y,a
0462: 30 28     bmi   $048c
0464: f0 03     beq   $0469
0466: d5 a2 02  mov   $02a2+x,a
0469: d4 72     mov   $72+x,a
046b: 8d 00     mov   y,#$00
046d: f7 29     mov   a,($29)+y
046f: 3a 29     incw  $29
0471: fd        mov   y,a
0472: 30 16     bmi   $048a
0474: d5 2c 02  mov   $022c+x,a
0477: 8d 00     mov   y,#$00
0479: f7 29     mov   a,($29)+y
047b: 3a 29     incw  $29
047d: fd        mov   y,a
047e: 30 0a     bmi   $048a
0480: d5 ca 00  mov   $00ca+x,a
0483: 8d 00     mov   y,#$00
0485: f7 29     mov   a,($29)+y
0487: 3a 29     incw  $29
0489: fd        mov   y,a
048a: 2f 07     bra   $0493
048c: 2d        push  a
048d: f5 a2 02  mov   a,$02a2+x
0490: d4 72     mov   $72+x,a
0492: ae        pop   a
0493: 68 c0     cmp   a,#$c0
0495: b0 20     bcs   $04b7
0497: 68 a0     cmp   a,#$a0
0499: 90 15     bcc   $04b0
049b: 2d        push  a
049c: 8d 00     mov   y,#$00
049e: f7 29     mov   a,($29)+y
04a0: 3a 29     incw  $29
04a2: fd        mov   y,a
04a3: 10 07     bpl   $04ac
04a5: 28 7f     and   a,#$7f
04a7: d5 ca 00  mov   $00ca+x,a
04aa: 2f 03     bra   $04af
04ac: d5 2c 02  mov   $022c+x,a
04af: ae        pop   a
04b0: 28 1f     and   a,#$1f
04b2: 3f cd 04  call  $04cd
04b5: 2f 09     bra   $04c0
04b7: 2d        push  a
04b8: e8 00     mov   a,#$00
04ba: d4 72     mov   $72+x,a
04bc: ae        pop   a
04bd: 3f e0 06  call  $06e0
04c0: f4 72     mov   a,$72+x
04c2: f0 97     beq   $045b
04c4: e4 29     mov   a,$29
04c6: d4 3c     mov   $3c+x,a
04c8: e4 2a     mov   a,$2a
04ca: d4 4e     mov   $4e+x,a
04cc: 6f        ret

04cd: c4 2f     mov   $2f,a
04cf: f4 84     mov   a,$84+x
04d1: 28 01     and   a,#$01
04d3: f0 19     beq   $04ee
04d5: f5 36 02  mov   a,$0236+x
04d8: c4 02     mov   $02,a
04da: f5 48 02  mov   a,$0248+x
04dd: c4 03     mov   $03,a
04df: e4 2f     mov   a,$2f
04e1: 1c        asl   a
04e2: fd        mov   y,a
04e3: f7 02     mov   a,($02)+y
04e5: c4 06     mov   $06,a
04e7: fc        inc   y
04e8: f7 02     mov   a,($02)+y
04ea: c4 07     mov   $07,a
04ec: 2f 0a     bra   $04f8
04ee: f5 36 02  mov   a,$0236+x
04f1: c4 06     mov   $06,a
04f3: f5 48 02  mov   a,$0248+x
04f6: c4 07     mov   $07,a
04f8: e4 2f     mov   a,$2f
04fa: 60        clrc
04fb: 95 6c 02  adc   a,$026c+x
04fe: 60        clrc
04ff: 95 5a 02  adc   a,$025a+x
0502: 28 7f     and   a,#$7f
0504: c4 2f     mov   $2f,a
0506: 3f a8 05  call  $05a8
0509: b0 73     bcs   $057e
050b: 3f d5 0c  call  $0cd5
050e: 68 00     cmp   a,#$00
0510: f0 1d     beq   $052f
0512: c4 34     mov   $34,a
0514: cc 33 00  mov   $0033,y
0517: e4 06     mov   a,$06
0519: 2d        push  a
051a: 8f 00 06  mov   $06,#$00
051d: 7d        mov   a,x
051e: 3f be 0c  call  $0cbe
0521: ae        pop   a
0522: c4 06     mov   $06,a
0524: b0 09     bcs   $052f
0526: e4 34     mov   a,$34
0528: 74 b8     cmp   a,$b8+x
052a: b0 5b     bcs   $0587
052c: ec 33 00  mov   y,$0033
052f: f4 b8     mov   a,$b8+x
0531: d6 c2 00  mov   $00c2+y,a
0534: 7d        mov   a,x
0535: d6 1c 02  mov   $021c+y,a
0538: e8 00     mov   a,#$00
053a: d6 24 02  mov   $0224+y,a
053d: 3f 88 05  call  $0588
0540: e4 06     mov   a,$06
0542: d6 46 00  mov   $0046+y,a
0545: e4 07     mov   a,$07
0547: d6 58 00  mov   $0058+y,a
054a: f5 7e 02  mov   a,$027e+x
054d: d6 88 02  mov   $0288+y,a
0550: e4 2f     mov   a,$2f
0552: d6 64 02  mov   $0264+y,a
0555: d6 76 02  mov   $0276+y,a
0558: f5 ca 00  mov   a,$00ca+x
055b: d6 d4 00  mov   $00d4+y,a
055e: f4 84     mov   a,$84+x
0560: 28 04     and   a,#$04
0562: d6 8e 00  mov   $008e+y,a
0565: 3f 9b 05  call  $059b
0568: f6 c5 01  mov   a,$01c5+y
056b: 48 ff     eor   a,#$ff
056d: 24 16     and   a,$16
056f: c4 16     mov   $16,a
0571: f4 84     mov   a,$84+x
0573: 28 08     and   a,#$08
0575: f0 07     beq   $057e
0577: f6 c5 01  mov   a,$01c5+y
057a: 04 16     or    a,$16
057c: c4 16     mov   $16,a
057e: f5 2c 02  mov   a,$022c+x
0581: f0 01     beq   $0584
0583: bc        inc   a
0584: d6 a8 00  mov   $00a8+y,a
0587: 6f        ret

0588: f5 00 02  mov   a,$0200+x
058b: 10 0a     bpl   $0597
058d: 4d        push  x
058e: e4 0a     mov   a,$0a
0590: 28 0f     and   a,#$0f
0592: 5d        mov   x,a
0593: f5 d4 0f  mov   a,$0fd4+x
0596: ce        pop   x
0597: d6 0a 02  mov   $020a+y,a
059a: 6f        ret

059b: e8 80     mov   a,#$80
059d: d6 a0 00  mov   $00a0+y,a
05a0: f6 c5 01  mov   a,$01c5+y
05a3: 04 13     or    a,$13
05a5: c4 13     mov   $13,a
05a7: 6f        ret

05a8: 8d 07     mov   y,#$07
05aa: 7d        mov   a,x
05ab: 76 1c 02  cmp   a,$021c+y
05ae: d0 0c     bne   $05bc
05b0: f6 a8 00  mov   a,$00a8+y
05b3: d0 07     bne   $05bc
05b5: f6 64 02  mov   a,$0264+y
05b8: 64 2f     cmp   a,$2f
05ba: f0 05     beq   $05c1
05bc: dc        dec   y
05bd: 10 eb     bpl   $05aa
05bf: 60        clrc
05c0: 6f        ret

05c1: 80        setc
05c2: 6f        ret

05c3: f4 a0     mov   a,$a0+x
05c5: 10 17     bpl   $05de
05c7: e8 ff     mov   a,#$ff
05c9: d5 9a 02  mov   $029a+x,a
05cc: e8 01     mov   a,#$01
05ce: d4 7c     mov   $7c+x,a
05d0: f5 ee 0f  mov   a,$0fee+x
05d3: d4 6a     mov   $6a+x,a
05d5: e8 00     mov   a,#$00
05d7: d5 d4 02  mov   $02d4+x,a
05da: e8 03     mov   a,#$03
05dc: d4 a0     mov   $a0+x,a
05de: f5 1c 02  mov   a,$021c+x
05e1: 10 06     bpl   $05e9
05e3: 68 ff     cmp   a,#$ff
05e5: f0 0e     beq   $05f5
05e7: 2f 0d     bra   $05f6
05e9: 3f ae 06  call  $06ae
05ec: f5 1c 02  mov   a,$021c+x
05ef: 68 ff     cmp   a,#$ff
05f1: f0 02     beq   $05f5
05f3: 2f 01     bra   $05f6
05f5: 6f        ret

05f6: 4d        push  x
05f7: 7d        mov   a,x
05f8: 60        clrc
05f9: 88 0a     adc   a,#$0a
05fb: 5d        mov   x,a
05fc: 9b 72     dec   $72+x
05fe: d0 24     bne   $0624
0600: f4 3c     mov   a,$3c+x
0602: c4 29     mov   $29,a
0604: f4 4e     mov   a,$4e+x
0606: c4 2a     mov   $2a,a
0608: 8d 00     mov   y,#$00
060a: f7 29     mov   a,($29)+y
060c: 3a 29     incw  $29
060e: fd        mov   y,a
060f: 30 04     bmi   $0615
0611: d4 72     mov   $72+x,a
0613: 2f 07     bra   $061c
0615: 3f e0 06  call  $06e0
0618: f4 72     mov   a,$72+x
061a: f0 ec     beq   $0608
061c: e4 29     mov   a,$29
061e: d4 3c     mov   $3c+x,a
0620: e4 2a     mov   a,$2a
0622: d4 4e     mov   $4e+x,a
0624: ce        pop   x
0625: 6f        ret

0626: f5 1c 02  mov   a,$021c+x
0629: 10 34     bpl   $065f
062b: 68 ff     cmp   a,#$ff
062d: d0 01     bne   $0630
062f: 6f        ret

0630: f4 a0     mov   a,$a0+x
0632: c4 30     mov   $30,a
0634: e8 00     mov   a,#$00
0636: d4 a0     mov   $a0+x,a
0638: 53 30 03  bbc2  $30,$063e
063b: 3f 6e 0e  call  $0e6e
063e: 13 30 0d  bbc0  $30,$064e
0641: f5 88 02  mov   a,$0288+x
0644: c4 2d     mov   $2d,a
0646: f5 76 02  mov   a,$0276+x
0649: c4 2e     mov   $2e,a
064b: 3f ee 0e  call  $0eee
064e: 33 30 0d  bbc1  $30,$065e
0651: f5 9a 02  mov   a,$029a+x
0654: fd        mov   y,a
0655: f5 d4 00  mov   a,$00d4+x
0658: 1c        asl   a
0659: cf        mul   ya
065a: dd        mov   a,y
065b: 5f ad 0e  jmp   $0ead

065e: 6f        ret

065f: f5 1c 02  mov   a,$021c+x
0662: fd        mov   y,a
0663: f6 96 00  mov   a,$0096+y
0666: 14 a0     or    a,$a0+x
0668: c4 30     mov   $30,a
066a: e8 00     mov   a,#$00
066c: d4 a0     mov   $a0+x,a
066e: 53 30 03  bbc2  $30,$0674
0671: 3f 6e 0e  call  $0e6e
0674: 13 30 18  bbc0  $30,$068f
0677: f5 1c 02  mov   a,$021c+x
067a: fd        mov   y,a
067b: f5 88 02  mov   a,$0288+x
067e: 60        clrc
067f: 96 b6 02  adc   a,$02b6+y
0682: c4 2d     mov   $2d,a
0684: f5 76 02  mov   a,$0276+x
0687: 96 c0 02  adc   a,$02c0+y
068a: c4 2e     mov   $2e,a
068c: 3f ee 0e  call  $0eee
068f: 33 30 1b  bbc1  $30,$06ad
0692: f5 1c 02  mov   a,$021c+x
0695: fd        mov   y,a
0696: f6 90 02  mov   a,$0290+y
0699: fd        mov   y,a
069a: f5 9a 02  mov   a,$029a+x
069d: cf        mul   ya
069e: f5 d4 00  mov   a,$00d4+x
06a1: 1c        asl   a
06a2: cf        mul   ya
06a3: e4 1f     mov   a,$1f
06a5: bc        inc   a
06a6: 1c        asl   a
06a7: cf        mul   ya
06a8: dd        mov   a,y
06a9: 1c        asl   a
06aa: 5f ad 0e  jmp   $0ead

06ad: 6f        ret

06ae: f4 8e     mov   a,$8e+x
06b0: 04 10     or    a,$10
06b2: f0 1b     beq   $06cf
06b4: f4 a8     mov   a,$a8+x
06b6: f0 17     beq   $06cf
06b8: 30 11     bmi   $06cb
06ba: 9b a8     dec   $a8+x
06bc: d0 11     bne   $06cf
06be: e8 01     mov   a,#$01
06c0: d4 c2     mov   $c2+x,a
06c2: e8 ff     mov   a,#$ff
06c4: d4 a8     mov   $a8+x,a
06c6: f4 b0     mov   a,$b0+x
06c8: f0 06     beq   $06d0
06ca: 6f        ret

06cb: 9b b0     dec   $b0+x
06cd: f0 01     beq   $06d0
06cf: 6f        ret

06d0: 09 11 13  or    ($13),($11)
06d3: e8 ff     mov   a,#$ff
06d5: d5 1c 02  mov   $021c+x,a
06d8: e8 00     mov   a,#$00
06da: d4 c2     mov   $c2+x,a
06dc: d5 d4 02  mov   $02d4+x,a
06df: 6f        ret

06e0: 80        setc
06e1: a8 c0     sbc   a,#$c0
06e3: 1c        asl   a
06e4: fd        mov   y,a
06e5: f6 ef 06  mov   a,$06ef+y
06e8: 2d        push  a
06e9: f6 ee 06  mov   a,$06ee+y
06ec: 2d        push  a
06ed: 6f        ret

06ee: dw $0765  ; c0 - set instrument
06f0: dw $0790  ; c1
06f2: dw $075e  ; c2 - nop
06f4: dw $075e  ; c3 - nop
06f6: dw $075e  ; c4 - nop
06f8: dw $07ad  ; c5
06fa: dw $075e  ; c6 - nop
06fc: dw $07b9  ; c7
06fe: dw $075e  ; c8 - nop
0700: dw $075e  ; c9 - nop
0702: dw $07cf  ; ca
0704: dw $075e  ; cb - nop
0706: dw $075e  ; cc - nop
0708: dw $080f  ; cd
070a: dw $075e  ; ce - nop
070c: dw $07c5  ; cf
070e: dw $075e  ; d0 - nop
0710: dw $075e  ; d1 - nop
0712: dw $075e  ; d2 - nop
0714: dw $075e  ; d3 - nop
0716: dw $0949  ; d4
0718: dw $082d  ; d5
071a: dw $0834  ; d6
071c: dw $083b  ; d7
071e: dw $075e  ; d8 - nop
0720: dw $0864  ; d9
0722: dw $0879  ; da
0724: dw $08a0  ; db
0726: dw $08b1  ; dc
0728: dw $08cf  ; dd
072a: dw $075e  ; de - nop
072c: dw $075e  ; df - nop
072e: dw $08ed  ; e0
0730: dw $07e4  ; e1
0732: dw $07ef  ; e2
0734: dw $07f9  ; e3
0736: dw $075e  ; e4 - nop
0738: dw $075f  ; e5
073a: dw $08fb  ; e6
073c: dw $090d  ; e7
073e: dw $09ac  ; e8
0740: dw $098d  ; e9
0742: dw $0955  ; ea
0744: dw $091c  ; eb
0746: dw $0918  ; ec
0748: dw $0818  ; ed
074a: dw $0920  ; ee
074c: dw $09bd  ; ef
074e: dw $09e5  ; f0
0750: dw $09f7  ; f1
0752: dw $0a00  ; f2
0754: dw $099a  ; f3
0756: dw $0803  ; f4
0758: dw $0799  ; f5
075a: dw $0a13  ; f6
075c: dw $07da  ; f7

; nop
075e: 6f        ret

; vcmd e5
075f: f5 a2 02  mov   a,$02a2+x
0762: d4 72     mov   $72+x,a
0764: 6f        ret

; vcmd c0 - set instrument
0765: 8d 00     mov   y,#$00
0767: f7 29     mov   a,($29)+y
0769: 3a 29     incw  $29
076b: fd        mov   y,a
076c: 2d        push  a
076d: 8d 00     mov   y,#$00
076f: f7 29     mov   a,($29)+y
0771: 3a 29     incw  $29
0773: fd        mov   y,a
0774: ae        pop   a
0775: 7a 29     addw  ya,$29            ; address arg1/2 (relative)
0777: da 02     movw  $02,ya
0779: f4 84     mov   a,$84+x
077b: 28 fe     and   a,#$fe
077d: 8d 00     mov   y,#$00            ; read first byte of instrument
077f: 17 02     or    a,($02)+y         ; rhythm? (0: melody, 1: rhythm)
0781: d4 84     mov   $84+x,a
0783: 3a 02     incw  $02               ; point to next byte
0785: e4 02     mov   a,$02
0787: d5 36 02  mov   $0236+x,a         ; set instrument address (lo)
078a: e4 03     mov   a,$03
078c: d5 48 02  mov   $0248+x,a         ; set instrument address (hi)
078f: 6f        ret                     ; prevent to skip more bytes

; vcmd c1
0790: 8d 00     mov   y,#$00
0792: f7 29     mov   a,($29)+y
0794: 3a 29     incw  $29
0796: fd        mov   y,a
0797: 2f 0a     bra   $07a3

; vcmd f5
0799: 8d 00     mov   y,#$00
079b: f7 29     mov   a,($29)+y
079d: 3a 29     incw  $29
079f: fd        mov   y,a
07a0: f6 dc 02  mov   a,$02dc+y
07a3: d5 00 02  mov   $0200+x,a
07a6: f4 96     mov   a,$96+x
07a8: 08 02     or    a,#$02
07aa: d4 96     mov   $96+x,a
07ac: 6f        ret

; vcmd c5
07ad: 8d 00     mov   y,#$00
07af: f7 29     mov   a,($29)+y
07b1: 3a 29     incw  $29
07b3: fd        mov   y,a
07b4: c4 1e     mov   $1e,a
07b6: 5f 3c 0b  jmp   $0b3c

; vcmd c7
07b9: 8d 00     mov   y,#$00
07bb: f7 29     mov   a,($29)+y
07bd: 3a 29     incw  $29
07bf: fd        mov   y,a
07c0: e8 00     mov   a,#$00
07c2: da 1b     movw  $1b,ya
07c4: 6f        ret

; vcmd cf
07c5: 8d 00     mov   y,#$00
07c7: f7 29     mov   a,($29)+y
07c9: 3a 29     incw  $29
07cb: fd        mov   y,a
07cc: d4 b8     mov   $b8+x,a
07ce: 6f        ret

; vcmd ca
07cf: 8d 00     mov   y,#$00
07d1: f7 29     mov   a,($29)+y
07d3: 3a 29     incw  $29
07d5: fd        mov   y,a
07d6: d5 6c 02  mov   $026c+x,a
07d9: 6f        ret

; vcmd f7
07da: 8d 00     mov   y,#$00
07dc: f7 29     mov   a,($29)+y
07de: 3a 29     incw  $29
07e0: fd        mov   y,a
07e1: c4 37     mov   $37,a
07e3: 6f        ret

; vcmd e1
07e4: 8d 00     mov   y,#$00
07e6: f7 29     mov   a,($29)+y
07e8: 3a 29     incw  $29
07ea: fd        mov   y,a
07eb: d5 5a 02  mov   $025a+x,a
07ee: 6f        ret

; vcmd e2
07ef: f5 5a 02  mov   a,$025a+x
07f2: 60        clrc
07f3: 88 0c     adc   a,#$0c
07f5: d5 5a 02  mov   $025a+x,a
07f8: 6f        ret

; vcmd e3
07f9: f5 5a 02  mov   a,$025a+x
07fc: 80        setc
07fd: a8 0c     sbc   a,#$0c
07ff: d5 5a 02  mov   $025a+x,a
0802: 6f        ret

; vcmd f4
0803: 8d 00     mov   y,#$00
0805: f7 29     mov   a,($29)+y
0807: 3a 29     incw  $29
0809: fd        mov   y,a
080a: f6 dc 02  mov   a,$02dc+y
080d: 2f 14     bra   $0823

; vcmd cd
080f: 8d 00     mov   y,#$00
0811: f7 29     mov   a,($29)+y
0813: 3a 29     incw  $29
0815: fd        mov   y,a
0816: 2f 0b     bra   $0823

; vcmd ed
0818: 8d 00     mov   y,#$00
081a: f7 29     mov   a,($29)+y
081c: 3a 29     incw  $29
081e: fd        mov   y,a
081f: 60        clrc
0820: 95 90 02  adc   a,$0290+x
0823: d5 90 02  mov   $0290+x,a
0826: f4 96     mov   a,$96+x
0828: 08 02     or    a,#$02
082a: d4 96     mov   $96+x,a
082c: 6f        ret

; vcmd d5
082d: f4 84     mov   a,$84+x
082f: 08 08     or    a,#$08
0831: d4 84     mov   $84+x,a
0833: 6f        ret

; vcmd d6
0834: f4 84     mov   a,$84+x
0836: 28 f7     and   a,#$f7
0838: d4 84     mov   $84+x,a
083a: 6f        ret

; vcmd d7
083b: 8d 00     mov   y,#$00
083d: f7 29     mov   a,($29)+y
083f: 3a 29     incw  $29
0841: fd        mov   y,a
0842: 3f 96 0f  call  $0f96
0845: 8d 00     mov   y,#$00
0847: f7 29     mov   a,($29)+y
0849: 3a 29     incw  $29
084b: fd        mov   y,a
084c: c4 28     mov   $28,a
084e: 8d 00     mov   y,#$00
0850: f7 29     mov   a,($29)+y
0852: 3a 29     incw  $29
0854: fd        mov   y,a
0855: c4 18     mov   $18,a
0857: 8d 00     mov   y,#$00
0859: f7 29     mov   a,($29)+y
085b: 3a 29     incw  $29
085d: fd        mov   y,a
085e: 4d        push  x
085f: 3f 68 0f  call  $0f68
0862: ce        pop   x
0863: 6f        ret

; vcmd d9
0864: 8d 00     mov   y,#$00
0866: f7 29     mov   a,($29)+y
0868: 3a 29     incw  $29
086a: fd        mov   y,a
086b: 2d        push  a
086c: 8d 00     mov   y,#$00
086e: f7 29     mov   a,($29)+y
0870: 3a 29     incw  $29
0872: fd        mov   y,a
0873: ae        pop   a
0874: 7a 29     addw  ya,$29
0876: da 29     movw  $29,ya
0878: 6f        ret

; vcmd da
0879: 8d 00     mov   y,#$00
087b: f7 29     mov   a,($29)+y
087d: 3a 29     incw  $29
087f: fd        mov   y,a
0880: 2d        push  a
0881: 8d 00     mov   y,#$00
0883: f7 29     mov   a,($29)+y
0885: 3a 29     incw  $29
0887: fd        mov   y,a
0888: 2d        push  a
0889: fb 60     mov   y,$60+x
088b: e4 29     mov   a,$29
088d: d6 f6 0f  mov   $0ff6+y,a
0890: fc        inc   y
0891: e4 2a     mov   a,$2a
0893: d6 f6 0f  mov   $0ff6+y,a
0896: fc        inc   y
0897: db 60     mov   $60+x,y
0899: ee        pop   y
089a: ae        pop   a
089b: 7a 29     addw  ya,$29
089d: da 29     movw  $29,ya
089f: 6f        ret

; vcmd db
08a0: fb 60     mov   y,$60+x
08a2: dc        dec   y
08a3: f6 f6 0f  mov   a,$0ff6+y
08a6: c4 2a     mov   $2a,a
08a8: dc        dec   y
08a9: f6 f6 0f  mov   a,$0ff6+y
08ac: c4 29     mov   $29,a
08ae: db 60     mov   $60+x,y
08b0: 6f        ret

; vcmd dc
08b1: 8d 00     mov   y,#$00
08b3: f7 29     mov   a,($29)+y
08b5: 3a 29     incw  $29
08b7: fd        mov   y,a
08b8: 2d        push  a
08b9: fb 60     mov   y,$60+x
08bb: e4 29     mov   a,$29
08bd: d6 f6 0f  mov   $0ff6+y,a
08c0: fc        inc   y
08c1: e4 2a     mov   a,$2a
08c3: d6 f6 0f  mov   $0ff6+y,a
08c6: fc        inc   y
08c7: ae        pop   a
08c8: d6 f6 0f  mov   $0ff6+y,a
08cb: fc        inc   y
08cc: db 60     mov   $60+x,y
08ce: 6f        ret

; vcmd dd
08cf: fb 60     mov   y,$60+x
08d1: dc        dec   y
08d2: f6 f6 0f  mov   a,$0ff6+y
08d5: 9c        dec   a
08d6: f0 10     beq   $08e8
08d8: d6 f6 0f  mov   $0ff6+y,a
08db: dc        dec   y
08dc: f6 f6 0f  mov   a,$0ff6+y
08df: c4 2a     mov   $2a,a
08e1: dc        dec   y
08e2: f6 f6 0f  mov   a,$0ff6+y
08e5: c4 29     mov   $29,a
08e7: 6f        ret

08e8: dc        dec   y
08e9: dc        dec   y
08ea: db 60     mov   $60+x,y
08ec: 6f        ret

; vcmd e0
08ed: e8 ff     mov   a,#$ff
08ef: d5 12 02  mov   $0212+x,a
08f2: e8 00     mov   a,#$00
08f4: d4 b8     mov   $b8+x,a
08f6: e8 01     mov   a,#$01
08f8: d4 72     mov   $72+x,a
08fa: 6f        ret

; vcmd e6
08fb: f4 84     mov   a,$84+x
08fd: 28 fd     and   a,#$fd
08ff: d4 84     mov   $84+x,a
0901: 8d 00     mov   y,#$00
0903: f7 29     mov   a,($29)+y
0905: 3a 29     incw  $29
0907: fd        mov   y,a
0908: 14 84     or    a,$84+x
090a: d4 84     mov   $84+x,a
090c: 6f        ret

; vcmd e7
090d: 8d 00     mov   y,#$00
090f: f7 29     mov   a,($29)+y
0911: 3a 29     incw  $29
0913: fd        mov   y,a
0914: d5 ac 02  mov   $02ac+x,a
0917: 6f        ret

; vcmd ec
0918: 09 11 13  or    ($13),($11)
091b: 6f        ret

; vcmd eb
091c: 09 11 12  or    ($12),($11)
091f: 6f        ret

; vcmd ee
0920: 8d 00     mov   y,#$00
0922: f7 29     mov   a,($29)+y
0924: 3a 29     incw  $29
0926: fd        mov   y,a
0927: c4 03     mov   $03,a
0929: 10 04     bpl   $092f
092b: e8 03     mov   a,#$03
092d: 2f 02     bra   $0931
092f: e8 00     mov   a,#$00
0931: 5c        lsr   a
0932: 6b 03     ror   $03
0934: 7c        ror   a
0935: 6b 03     ror   $03
0937: 7c        ror   a
0938: c4 02     mov   $02,a
093a: f5 ac 02  mov   a,$02ac+x
093d: 3f 04 0e  call  $0e04
0940: d5 b6 02  mov   $02b6+x,a
0943: dd        mov   a,y
0944: d5 c0 02  mov   $02c0+x,a
0947: 2f 6d     bra   $09b6

; vcmd d4
0949: 8d 00     mov   y,#$00
094b: f7 29     mov   a,($29)+y
094d: 3a 29     incw  $29
094f: fd        mov   y,a
0950: d5 7e 02  mov   $027e+x,a
0953: 2f 61     bra   $09b6

; vcmd ea
0955: 8d 00     mov   y,#$00
0957: f7 29     mov   a,($29)+y
0959: 3a 29     incw  $29
095b: fd        mov   y,a
095c: 30 13     bmi   $0971
095e: 60        clrc
095f: 95 7e 02  adc   a,$027e+x
0962: d5 7e 02  mov   $027e+x,a
0965: 90 4f     bcc   $09b6
0967: f5 6c 02  mov   a,$026c+x
096a: 88 00     adc   a,#$00
096c: d5 6c 02  mov   $026c+x,a
096f: 2f 42     bra   $09b3
0971: 60        clrc
0972: 95 7e 02  adc   a,$027e+x
0975: d5 7e 02  mov   $027e+x,a
0978: b0 3c     bcs   $09b6
097a: f5 6c 02  mov   a,$026c+x
097d: a8 00     sbc   a,#$00
097f: 30 05     bmi   $0986
0981: d5 6c 02  mov   $026c+x,a
0984: 2f 2d     bra   $09b3
0986: e8 00     mov   a,#$00
0988: d5 7e 02  mov   $027e+x,a
098b: 2f 26     bra   $09b3

; vcmd e9
098d: 8d 00     mov   y,#$00
098f: f7 29     mov   a,($29)+y
0991: 3a 29     incw  $29
0993: fd        mov   y,a
0994: 60        clrc
0995: 95 6c 02  adc   a,$026c+x
0998: 2f 19     bra   $09b3

; vcmd f3
099a: 8d 00     mov   y,#$00
099c: f7 29     mov   a,($29)+y
099e: 3a 29     incw  $29
09a0: fd        mov   y,a
09a1: f6 dc 02  mov   a,$02dc+y
09a4: d5 7e 02  mov   $027e+x,a
09a7: f6 e6 02  mov   a,$02e6+y
09aa: 2f 07     bra   $09b3

; vcmd e8
09ac: 8d 00     mov   y,#$00
09ae: f7 29     mov   a,($29)+y
09b0: 3a 29     incw  $29
09b2: fd        mov   y,a
09b3: d5 6c 02  mov   $026c+x,a
09b6: f4 96     mov   a,$96+x
09b8: 08 01     or    a,#$01
09ba: d4 96     mov   $96+x,a
09bc: 6f        ret

; vcmd ef
09bd: e4 11     mov   a,$11
09bf: 8d 5c     mov   y,#$5c
09c1: cb f2     mov   $f2,y
09c3: c4 f3     mov   $f3,a             ; set KOF
09c5: 8d 00     mov   y,#$00
09c7: f7 29     mov   a,($29)+y
09c9: 3a 29     incw  $29
09cb: fd        mov   y,a
09cc: 2d        push  a
09cd: 8d 00     mov   y,#$00
09cf: f7 29     mov   a,($29)+y
09d1: 3a 29     incw  $29
09d3: fd        mov   y,a
09d4: ae        pop   a
09d5: 7a 29     addw  ya,$29
09d7: d5 36 02  mov   $0236+x,a
09da: dd        mov   a,y
09db: d5 48 02  mov   $0248+x,a
09de: f4 96     mov   a,$96+x
09e0: 08 04     or    a,#$04
09e2: d4 96     mov   $96+x,a
09e4: 6f        ret

; vcmd f0
09e5: 8d 00     mov   y,#$00
09e7: f7 29     mov   a,($29)+y
09e9: 3a 29     incw  $29
09eb: fd        mov   y,a
09ec: f0 05     beq   $09f3
09ee: 2d        push  a
09ef: 3f 9f 0c  call  $0c9f
09f2: ae        pop   a
09f3: d5 ca 02  mov   $02ca+x,a
09f6: 6f        ret

; vcmd f1
09f7: 8d 00     mov   y,#$00
09f9: f7 29     mov   a,($29)+y
09fb: 3a 29     incw  $29
09fd: fd        mov   y,a
09fe: 2f 0c     bra   $0a0c

; vcmd f2
0a00: 8d 00     mov   y,#$00
0a02: f7 29     mov   a,($29)+y
0a04: 3a 29     incw  $29
0a06: fd        mov   y,a
0a07: 60        clrc
0a08: 84 17     adc   a,$17
0a0a: 28 1f     and   a,#$1f
0a0c: 38 e0 17  and   $17,#$e0
0a0f: 0e 17 00  tset1 $0017
0a12: 6f        ret

; vcmd f6
0a13: 8d 00     mov   y,#$00
0a15: f7 29     mov   a,($29)+y
0a17: 3a 29     incw  $29
0a19: fd        mov   y,a
0a1a: f6 dc 02  mov   a,$02dc+y
0a1d: d0 01     bne   $0a20
0a1f: bc        inc   a
0a20: d4 72     mov   $72+x,a
0a22: 6f        ret

0a23: e4 0e     mov   a,$0e
0a25: c4 f4     mov   $f4,a
0a27: e5 37 00  mov   a,$0037
0a2a: c4 f5     mov   $f5,a
0a2c: e8 00     mov   a,#$00
0a2e: c4 f6     mov   $f6,a
0a30: e4 f4     mov   a,$f4
0a32: 64 f4     cmp   a,$f4
0a34: d0 fa     bne   $0a30
0a36: c4 35     mov   $35,a
0a38: 28 ff     and   a,#$ff
0a3a: f0 25     beq   $0a61
0a3c: e4 f5     mov   a,$f5
0a3e: c4 39     mov   $39,a
0a40: e4 f6     mov   a,$f6
0a42: c4 3a     mov   $3a,a
0a44: e4 f7     mov   a,$f7
0a46: c4 3b     mov   $3b,a
0a48: e8 31     mov   a,#$31
0a4a: c4 f1     mov   $f1,a
0a4c: e4 35     mov   a,$35
0a4e: f0 11     beq   $0a61
0a50: 30 03     bmi   $0a55
0a52: 5f ad 0b  jmp   $0bad

0a55: 28 1f     and   a,#$1f
0a57: 1c        asl   a
0a58: fd        mov   y,a
0a59: f6 63 0a  mov   a,$0a63+y
0a5c: 2d        push  a
0a5d: f6 62 0a  mov   a,$0a62+y
0a60: 2d        push  a
0a61: 6f        ret

0a62: dw $0b5e
0a64: dw $0a61
0a66: dw $0a61
0a68: dw $0a61
0a6a: dw $0a61
0a6c: dw $0a61
0a6e: dw $0a61
0a70: dw $0a61
0a72: dw $0a61
0a74: dw $0a61
0a76: dw $0a61
0a78: dw $0a61
0a7a: dw $0a61
0a7c: dw $0a61
0a7e: dw $0a61
0a80: dw $0a61
0a82: dw $0add
0a84: dw $0ae4
0a86: dw $0b86
0a88: dw $0af0
0a8a: dw $0b12
0a8c: dw $0b28
0a8e: dw $0ae8
0a90: dw $0aec
0a92: dw $0c9c
0a94: dw $0b9f
0a96: dw $0afc
0a98: dw $0b1d
0a9a: dw $0b32
0a9c: dw $0a61
0a9e: dw $0ab3
0aa0: dw $0aa2

0aa2: e8 ff     mov   a,#$ff
0aa4: 8d 5c     mov   y,#$5c
0aa6: cb f2     mov   $f2,y
0aa8: c4 f3     mov   $f3,a             ; set KOF
0aaa: 3f b9 0a  call  $0ab9
0aad: 3f 79 0d  call  $0d79
0ab0: 5f 28 0e  jmp   $0e28

0ab3: 3f b9 0a  call  $0ab9
0ab6: 5f 28 0e  jmp   $0e28

0ab9: 3f e7 0c  call  $0ce7
0abc: 3f f6 0c  call  $0cf6
0abf: e8 00     mov   a,#$00
0ac1: c4 0e     mov   $0e,a
0ac3: c4 26     mov   $26,a
0ac5: c4 27     mov   $27,a
0ac7: c4 22     mov   $22,a
0ac9: c4 23     mov   $23,a
0acb: c4 28     mov   $28,a
0acd: 3f 34 0e  call  $0e34
0ad0: 3f e4 0a  call  $0ae4
0ad3: 3f 83 03  call  $0383
0ad6: 3f 83 03  call  $0383
0ad9: 3f 83 03  call  $0383
0adc: 6f        ret

0add: 3f f6 0c  call  $0cf6
0ae0: 18 01 0f  or    $0f,#$01
0ae3: 6f        ret

0ae4: 38 fe 0f  and   $0f,#$fe
0ae7: 6f        ret

0ae8: 18 02 0f  or    $0f,#$02
0aeb: 6f        ret

0aec: 38 fd 0f  and   $0f,#$fd
0aef: 6f        ret

0af0: e8 00     mov   a,#$00
0af2: c4 26     mov   $26,a
0af4: c4 27     mov   $27,a
0af6: fa 3a 25  mov   ($25),($3a)
0af9: 5f 34 0e  jmp   $0e34

0afc: e8 00     mov   a,#$00
0afe: c4 22     mov   $22,a
0b00: c4 23     mov   $23,a
0b02: e4 3a     mov   a,$3a
0b04: 68 80     cmp   a,#$80
0b06: 90 02     bcc   $0b0a
0b08: e8 7f     mov   a,#$7f
0b0a: c4 21     mov   $21,a
0b0c: 8f ff 20  mov   $20,#$ff
0b0f: 5f 3c 0b  jmp   $0b3c

0b12: fa 3a 26  mov   ($26),($3a)
0b15: e8 00     mov   a,#$00
0b17: 0b 26     asl   $26
0b19: 3c        rol   a
0b1a: c4 27     mov   $27,a
0b1c: 6f        ret

0b1d: fa 3a 22  mov   ($22),($3a)
0b20: e8 00     mov   a,#$00
0b22: 0b 22     asl   $22
0b24: 3c        rol   a
0b25: c4 23     mov   $23,a
0b27: 6f        ret

0b28: 3f 12 0b  call  $0b12
0b2b: ba 00     movw  ya,$00
0b2d: 9a 26     subw  ya,$26
0b2f: da 26     movw  $26,ya
0b31: 6f        ret

0b32: 3f 1d 0b  call  $0b1d
0b35: ba 00     movw  ya,$00
0b37: 9a 22     subw  ya,$22
0b39: da 22     movw  $22,ya
0b3b: 6f        ret

0b3c: 4d        push  x
0b3d: 6d        push  y
0b3e: e4 1e     mov   a,$1e
0b40: 1c        asl   a
0b41: 90 02     bcc   $0b45
0b43: e8 ff     mov   a,#$ff
0b45: eb 21     mov   y,$21
0b47: fc        inc   y
0b48: cf        mul   ya
0b49: dd        mov   a,y
0b4a: 5c        lsr   a
0b4b: c5 1f 00  mov   $001f,a
0b4e: cd 00     mov   x,#$00
0b50: f4 96     mov   a,$96+x
0b52: 08 02     or    a,#$02
0b54: d4 96     mov   $96+x,a
0b56: 3d        inc   x
0b57: c8 0a     cmp   x,#$0a
0b59: d0 f5     bne   $0b50
0b5b: ee        pop   y
0b5c: ce        pop   x
0b5d: 6f        ret

0b5e: e4 39     mov   a,$39
0b60: 08 80     or    a,#$80
0b62: cd 00     mov   x,#$00
0b64: 8f 01 11  mov   $11,#$01
0b67: 75 1c 02  cmp   a,$021c+x
0b6a: d0 14     bne   $0b80
0b6c: 2d        push  a
0b6d: e5 3b 00  mov   a,$003b
0b70: d5 0a 02  mov   $020a+x,a
0b73: e5 3a 00  mov   a,$003a
0b76: d5 d4 00  mov   $00d4+x,a
0b79: f4 a0     mov   a,$a0+x
0b7b: 08 02     or    a,#$02
0b7d: d4 a0     mov   $a0+x,a
0b7f: ae        pop   a
0b80: 3d        inc   x
0b81: 0b 11     asl   $11
0b83: d0 e2     bne   $0b67
0b85: 6f        ret

0b86: e4 39     mov   a,$39
0b88: 08 80     or    a,#$80
0b8a: cd 00     mov   x,#$00
0b8c: 8f 01 11  mov   $11,#$01
0b8f: 75 1c 02  cmp   a,$021c+x
0b92: d0 05     bne   $0b99
0b94: 2d        push  a
0b95: 3f d0 06  call  $06d0
0b98: ae        pop   a
0b99: 3d        inc   x
0b9a: 0b 11     asl   $11
0b9c: d0 f1     bne   $0b8f
0b9e: 6f        ret

0b9f: ec 39 00  mov   y,$0039
0ba2: e4 3a     mov   a,$3a
0ba4: d6 dc 02  mov   $02dc+y,a
0ba7: e4 3b     mov   a,$3b
0ba9: d6 e6 02  mov   $02e6+y,a
0bac: 6f        ret

0bad: 1c        asl   a
0bae: fd        mov   y,a
0baf: f6 fe 11  mov   a,$11fe+y
0bb2: c4 04     mov   $04,a
0bb4: f6 ff 11  mov   a,$11ff+y
0bb7: c4 05     mov   $05,a
0bb9: 8d 00     mov   y,#$00
0bbb: f7 04     mov   a,($04)+y
0bbd: 10 05     bpl   $0bc4
0bbf: 68 ff     cmp   a,#$ff
0bc1: d0 14     bne   $0bd7
0bc3: 6f        ret

0bc4: 3f 66 0c  call  $0c66
0bc7: e8 04     mov   a,#$04
0bc9: 3f 96 0f  call  $0f96
0bcc: 8f 12 28  mov   $28,#$12
0bcf: 8f 50 18  mov   $18,#$50
0bd2: e8 02     mov   a,#$02
0bd4: 5f 68 0f  jmp   $0f68

0bd7: 28 7f     and   a,#$7f
0bd9: c4 08     mov   $08,a
0bdb: 3a 04     incw  $04
0bdd: 8f 00 06  mov   $06,#$00
0be0: 8d 00     mov   y,#$00
0be2: f7 04     mov   a,($04)+y
0be4: 10 16     bpl   $0bfc
0be6: 68 ff     cmp   a,#$ff
0be8: f0 6f     beq   $0c59
0bea: 3f d5 0c  call  $0cd5
0bed: 64 08     cmp   a,$08
0bef: 90 1b     bcc   $0c0c
0bf1: e4 35     mov   a,$35
0bf3: 08 80     or    a,#$80
0bf5: 3f be 0c  call  $0cbe
0bf8: 90 5f     bcc   $0c59
0bfa: 2f 10     bra   $0c0c
0bfc: e4 35     mov   a,$35
0bfe: 08 80     or    a,#$80
0c00: 3f be 0c  call  $0cbe
0c03: b0 07     bcs   $0c0c
0c05: 3f d5 0c  call  $0cd5
0c08: 64 08     cmp   a,$08
0c0a: b0 4d     bcs   $0c59
0c0c: 3a 04     incw  $04
0c0e: 6d        push  y
0c0f: ce        pop   x
0c10: 8d 00     mov   y,#$00
0c12: f7 04     mov   a,($04)+y
0c14: 2d        push  a
0c15: 3a 04     incw  $04
0c17: f7 04     mov   a,($04)+y
0c19: fd        mov   y,a
0c1a: ae        pop   a
0c1b: 3a 04     incw  $04
0c1d: 7a 04     addw  ya,$04
0c1f: d4 46     mov   $46+x,a
0c21: dd        mov   a,y
0c22: d4 58     mov   $58+x,a
0c24: e4 35     mov   a,$35
0c26: 08 80     or    a,#$80
0c28: d5 1c 02  mov   $021c+x,a
0c2b: e4 06     mov   a,$06
0c2d: d5 24 02  mov   $0224+x,a
0c30: ab 06     inc   $06
0c32: e4 08     mov   a,$08
0c34: d4 c2     mov   $c2+x,a
0c36: e8 00     mov   a,#$00
0c38: d5 88 02  mov   $0288+x,a
0c3b: 3f 5a 0c  call  $0c5a
0c3e: e5 3b 00  mov   a,$003b
0c41: d5 0a 02  mov   $020a+x,a
0c44: e5 3a 00  mov   a,$003a
0c47: d5 d4 00  mov   $00d4+x,a
0c4a: e8 04     mov   a,#$04
0c4c: d4 8e     mov   $8e+x,a
0c4e: f5 c5 01  mov   a,$01c5+x
0c51: 48 ff     eor   a,#$ff
0c53: 24 16     and   a,$16
0c55: c4 16     mov   $16,a
0c57: 2f 87     bra   $0be0
0c59: 6f        ret

0c5a: e8 80     mov   a,#$80
0c5c: d4 a0     mov   $a0+x,a
0c5e: f5 c5 01  mov   a,$01c5+x
0c61: 04 13     or    a,$13
0c63: c4 13     mov   $13,a
0c65: 6f        ret

0c66: fa 35 0e  mov   ($0e),($35)
0c69: 3f e4 0a  call  $0ae4
0c6c: 3f e7 0c  call  $0ce7
0c6f: 3f 1b 0d  call  $0d1b
0c72: 3f 83 03  call  $0383
0c75: e8 00     mov   a,#$00
0c77: c4 16     mov   $16,a
0c79: 8f f0 1e  mov   $1e,#$f0
0c7c: 3f 3c 0b  call  $0b3c
0c7f: 8f 20 1c  mov   $1c,#$20
0c82: 8f 00 38  mov   $38,#$00
0c85: 8f c0 36  mov   $36,#$c0
0c88: 8f 00 37  mov   $37,#$00
0c8b: 8d 00     mov   y,#$00
0c8d: f7 04     mov   a,($04)+y
0c8f: 68 ff     cmp   a,#$ff
0c91: f0 08     beq   $0c9b
0c93: 3a 04     incw  $04
0c95: 5d        mov   x,a
0c96: 3f 2e 0d  call  $0d2e
0c99: 2f f0     bra   $0c8b
0c9b: 6f        ret

0c9c: 5f 04 0d  jmp   $0d04

0c9f: c4 02     mov   $02,a
0ca1: e4 11     mov   a,$11
0ca3: 2d        push  a
0ca4: 4d        push  x
0ca5: cd 07     mov   x,#$07
0ca7: e4 02     mov   a,$02
0ca9: 75 d4 02  cmp   a,$02d4+x
0cac: d0 08     bne   $0cb6
0cae: f5 c5 01  mov   a,$01c5+x
0cb1: c4 11     mov   $11,a
0cb3: 3f d0 06  call  $06d0
0cb6: 1d        dec   x
0cb7: 10 ee     bpl   $0ca7
0cb9: ce        pop   x
0cba: ae        pop   a
0cbb: c4 11     mov   $11,a
0cbd: 6f        ret

0cbe: 8d 07     mov   y,#$07
0cc0: 76 1c 02  cmp   a,$021c+y
0cc3: d0 09     bne   $0cce
0cc5: 2d        push  a
0cc6: f6 24 02  mov   a,$0224+y
0cc9: 64 06     cmp   a,$06
0ccb: f0 06     beq   $0cd3
0ccd: ae        pop   a
0cce: dc        dec   y
0ccf: 10 ef     bpl   $0cc0
0cd1: 60        clrc
0cd2: 6f        ret

0cd3: ae        pop   a
0cd4: 6f        ret

0cd5: 4d        push  x
0cd6: cd 07     mov   x,#$07
0cd8: e8 ff     mov   a,#$ff
0cda: 74 c2     cmp   a,$c2+x
0cdc: 90 04     bcc   $0ce2
0cde: f4 c2     mov   a,$c2+x
0ce0: 4d        push  x
0ce1: ee        pop   y
0ce2: 1d        dec   x
0ce3: 10 f5     bpl   $0cda
0ce5: ce        pop   x
0ce6: 6f        ret

0ce7: cd 09     mov   x,#$09
0ce9: e8 ff     mov   a,#$ff
0ceb: d5 12 02  mov   $0212+x,a
0cee: e8 00     mov   a,#$00
0cf0: d4 b8     mov   $b8+x,a
0cf2: 1d        dec   x
0cf3: 10 f4     bpl   $0ce9
0cf5: 6f        ret

0cf6: cd 00     mov   x,#$00
0cf8: 8f 01 11  mov   $11,#$01
0cfb: 3f d0 06  call  $06d0
0cfe: 3d        inc   x
0cff: 0b 11     asl   $11
0d01: d0 f8     bne   $0cfb
0d03: 6f        ret

0d04: cd 00     mov   x,#$00
0d06: 8f 01 11  mov   $11,#$01
0d09: f5 1c 02  mov   a,$021c+x
0d0c: 10 07     bpl   $0d15
0d0e: 68 ff     cmp   a,#$ff
0d10: f0 03     beq   $0d15
0d12: 3f d0 06  call  $06d0
0d15: 3d        inc   x
0d16: 0b 11     asl   $11
0d18: d0 ef     bne   $0d09
0d1a: 6f        ret

0d1b: cd 00     mov   x,#$00
0d1d: 8f 01 11  mov   $11,#$01
0d20: f5 1c 02  mov   a,$021c+x
0d23: 30 03     bmi   $0d28
0d25: 3f d0 06  call  $06d0
0d28: 3d        inc   x
0d29: 0b 11     asl   $11
0d2b: d0 f3     bne   $0d20
0d2d: 6f        ret

0d2e: f7 04     mov   a,($04)+y
0d30: 2d        push  a
0d31: 3a 04     incw  $04
0d33: f7 04     mov   a,($04)+y
0d35: fd        mov   y,a
0d36: ae        pop   a
0d37: 3a 04     incw  $04
0d39: 7a 04     addw  ya,$04
0d3b: d4 3c     mov   $3c+x,a
0d3d: dd        mov   a,y
0d3e: d4 4e     mov   $4e+x,a
0d40: e4 35     mov   a,$35
0d42: d5 12 02  mov   $0212+x,a
0d45: e8 01     mov   a,#$01
0d47: d4 72     mov   $72+x,a
0d49: e8 00     mov   a,#$00
0d4b: d5 5a 02  mov   $025a+x,a
0d4e: d5 6c 02  mov   $026c+x,a
0d51: d5 7e 02  mov   $027e+x,a
0d54: d5 b6 02  mov   $02b6+x,a
0d57: d5 c0 02  mov   $02c0+x,a
0d5a: d4 96     mov   $96+x,a
0d5c: e8 08     mov   a,#$08
0d5e: d4 84     mov   $84+x,a
0d60: e8 0a     mov   a,#$0a
0d62: d5 00 02  mov   $0200+x,a
0d65: e8 c8     mov   a,#$c8
0d67: d5 90 02  mov   $0290+x,a
0d6a: e8 28     mov   a,#$28
0d6c: d5 ac 02  mov   $02ac+x,a
0d6f: e8 40     mov   a,#$40
0d71: d4 b8     mov   $b8+x,a
0d73: f5 e4 0f  mov   a,$0fe4+x
0d76: d4 60     mov   $60+x,a
0d78: 6f        ret

0d79: e8 aa     mov   a,#$aa
0d7b: c4 f4     mov   $f4,a
0d7d: e8 bb     mov   a,#$bb
0d7f: c4 f5     mov   $f5,a
0d81: e4 f4     mov   a,$f4
0d83: 68 cc     cmp   a,#$cc
0d85: d0 fa     bne   $0d81
0d87: 2f 1b     bra   $0da4
0d89: eb f4     mov   y,$f4
0d8b: d0 fc     bne   $0d89
0d8d: 7e f4     cmp   y,$f4
0d8f: 30 0f     bmi   $0da0
0d91: d0 fa     bne   $0d8d
0d93: e4 f5     mov   a,$f5
0d95: cb f4     mov   $f4,y
0d97: d7 06     mov   ($06)+y,a
0d99: fc        inc   y
0d9a: d0 f1     bne   $0d8d
0d9c: ab 07     inc   $07
0d9e: 2f ed     bra   $0d8d
0da0: 7e f4     cmp   y,$f4
0da2: 10 e9     bpl   $0d8d
0da4: e4 f6     mov   a,$f6
0da6: eb f7     mov   y,$f7
0da8: da 06     movw  $06,ya
0daa: eb f4     mov   y,$f4
0dac: e4 f5     mov   a,$f5
0dae: cb f4     mov   $f4,y
0db0: d0 d7     bne   $0d89
0db2: cd 31     mov   x,#$31
0db4: d8 f1     mov   $f1,x
0db6: 6f        ret

0db7: ba 26     movw  ya,$26
0db9: f0 22     beq   $0ddd
0dbb: 30 0f     bmi   $0dcc
0dbd: 7a 24     addw  ya,$24
0dbf: 10 16     bpl   $0dd7
0dc1: e8 00     mov   a,#$00
0dc3: c4 26     mov   $26,a
0dc5: c4 27     mov   $27,a
0dc7: 9c        dec   a
0dc8: 8d 7f     mov   y,#$7f
0dca: 2f 0b     bra   $0dd7
0dcc: 7a 24     addw  ya,$24
0dce: 10 07     bpl   $0dd7
0dd0: e8 00     mov   a,#$00
0dd2: c4 26     mov   $26,a
0dd4: c4 27     mov   $27,a
0dd6: fd        mov   y,a
0dd7: da 24     movw  $24,ya
0dd9: dd        mov   a,y
0dda: 5f 34 0e  jmp   $0e34

0ddd: 6f        ret

0dde: ba 22     movw  ya,$22
0de0: f0 21     beq   $0e03
0de2: 30 0f     bmi   $0df3
0de4: 7a 20     addw  ya,$20
0de6: 10 16     bpl   $0dfe
0de8: e8 00     mov   a,#$00
0dea: c4 22     mov   $22,a
0dec: c4 23     mov   $23,a
0dee: 9c        dec   a
0def: 8d 7f     mov   y,#$7f
0df1: 2f 0b     bra   $0dfe
0df3: 7a 20     addw  ya,$20
0df5: 10 07     bpl   $0dfe
0df7: e8 00     mov   a,#$00
0df9: c4 22     mov   $22,a
0dfb: c4 23     mov   $23,a
0dfd: fd        mov   y,a
0dfe: da 20     movw  $20,ya
0e00: 5f 3c 0b  jmp   $0b3c

0e03: 6f        ret

0e04: c4 04     mov   $04,a
0e06: ba 02     movw  ya,$02
0e08: 10 0e     bpl   $0e18
0e0a: ba 00     movw  ya,$00
0e0c: 9a 02     subw  ya,$02
0e0e: 3f 18 0e  call  $0e18
0e11: da 06     movw  $06,ya
0e13: ba 00     movw  ya,$00
0e15: 9a 06     subw  ya,$06
0e17: 6f        ret

0e18: 2d        push  a
0e19: e4 04     mov   a,$04
0e1b: cf        mul   ya
0e1c: da 06     movw  $06,ya
0e1e: ae        pop   a
0e1f: eb 04     mov   y,$04
0e21: cf        mul   ya
0e22: dd        mov   a,y
0e23: 8d 00     mov   y,#$00
0e25: 7a 06     addw  ya,$06
0e27: 6f        ret

0e28: e8 ff     mov   a,#$ff
0e2a: c4 24     mov   $24,a
0e2c: c4 20     mov   $20,a
0e2e: e8 7f     mov   a,#$7f
0e30: c4 25     mov   $25,a
0e32: c4 21     mov   $21,a
0e34: 8d 0c     mov   y,#$0c
0e36: cb f2     mov   $f2,y
0e38: c4 f3     mov   $f3,a             ; set MVOL(L)
0e3a: 8d 1c     mov   y,#$1c
0e3c: cb f2     mov   $f2,y
0e3e: c4 f3     mov   $f3,a             ; set MVOL(R)
0e40: e4 1a     mov   a,$1a
0e42: f0 04     beq   $0e48
0e44: e8 00     mov   a,#$00
0e46: 2f 13     bra   $0e5b
0e48: e4 28     mov   a,$28
0e4a: 10 03     bpl   $0e4f
0e4c: 48 ff     eor   a,#$ff
0e4e: bc        inc   a
0e4f: eb 25     mov   y,$25
0e51: cf        mul   ya
0e52: dd        mov   a,y
0e53: 1c        asl   a
0e54: eb 28     mov   y,$28
0e56: 10 03     bpl   $0e5b
0e58: 48 ff     eor   a,#$ff
0e5a: bc        inc   a
0e5b: 64 32     cmp   a,$32
0e5d: f0 0e     beq   $0e6d
0e5f: c4 32     mov   $32,a
0e61: 8d 3c     mov   y,#$3c
0e63: cb f2     mov   $f2,y
0e65: c4 f3     mov   $f3,a             ; set EVOL(R)
0e67: 8d 2c     mov   y,#$2c
0e69: cb f2     mov   $f2,y
0e6b: c4 f3     mov   $f3,a             ; set EVOL(L)
0e6d: 6f        ret

; flush waveform/envelopes
0e6e: 4d        push  x
0e6f: f5 40 02  mov   a,$0240+x         ; $0236+10+x
0e72: c4 2b     mov   $2b,a
0e74: f5 52 02  mov   a,$0252+x         ; $0248+10+x
0e77: c4 2c     mov   $2c,a
0e79: 7d        mov   a,x
0e7a: 9f        xcn   a
0e7b: 08 04     or    a,#$04
0e7d: 5d        mov   x,a
0e7e: 8d 00     mov   y,#$00
0e80: f7 2b     mov   a,($2b)+y
0e82: 10 06     bpl   $0e8a
0e84: 09 11 14  or    ($14),($11)
0e87: dd        mov   a,y
0e88: 2f 07     bra   $0e91
0e8a: e4 11     mov   a,$11
0e8c: 4e 14 00  tclr1 $0014
0e8f: f7 2b     mov   a,($2b)+y
0e91: d8 f2     mov   $f2,x
0e93: c4 f3     mov   $f3,a             ; set SRCN, ADSR(1), ADSR(2), GAIN
0e95: 3d        inc   x
0e96: fc        inc   y
0e97: ad 04     cmp   y,#$04
0e99: d0 f4     bne   $0e8f
0e9b: ce        pop   x
0e9c: f7 2b     mov   a,($2b)+y
0e9e: d4 b0     mov   $b0+x,a
0ea0: fc        inc   y
0ea1: f7 2b     mov   a,($2b)+y
0ea3: d5 d5 01  mov   $01d5+x,a
0ea6: fc        inc   y
0ea7: f7 2b     mov   a,($2b)+y
0ea9: d5 cd 01  mov   $01cd+x,a
0eac: 6f        ret

0ead: 33 0f 2b  bbc1  $0f,$0edb
0eb0: c4 31     mov   $31,a
0eb2: 7d        mov   a,x
0eb3: 9f        xcn   a
0eb4: 2d        push  a
0eb5: f5 0a 02  mov   a,$020a+x
0eb8: fd        mov   y,a
0eb9: f6 f0 02  mov   a,$02f0+y
0ebc: eb 31     mov   y,$31
0ebe: cf        mul   ya
0ebf: dd        mov   a,y
0ec0: ee        pop   y
0ec1: cb f2     mov   $f2,y
0ec3: c4 f3     mov   $f3,a             ; VOL(L)
0ec5: 6d        push  y
0ec6: e8 14     mov   a,#$14
0ec8: 80        setc
0ec9: b5 0a 02  sbc   a,$020a+x
0ecc: fd        mov   y,a
0ecd: f6 f0 02  mov   a,$02f0+y
0ed0: eb 31     mov   y,$31
0ed2: cf        mul   ya
0ed3: dd        mov   a,y
0ed4: ee        pop   y
0ed5: fc        inc   y
0ed6: cb f2     mov   $f2,y
0ed8: c4 f3     mov   $f3,a             ; VOL(R)
0eda: 6f        ret

0edb: ec fa 02  mov   y,$02fa
0ede: cf        mul   ya
0edf: 6d        push  y
0ee0: 7d        mov   a,x
0ee1: 9f        xcn   a
0ee2: fd        mov   y,a
0ee3: ae        pop   a
0ee4: cb f2     mov   $f2,y
0ee6: c4 f3     mov   $f3,a             ; VOL(L)
0ee8: fc        inc   y
0ee9: cb f2     mov   $f2,y
0eeb: c4 f3     mov   $f3,a             ; VOL(R)
0eed: 6f        ret

0eee: f5 d5 01  mov   a,$01d5+x
0ef1: 68 80     cmp   a,#$80
0ef3: f0 46     beq   $0f3b
0ef5: fd        mov   y,a
0ef6: f5 cd 01  mov   a,$01cd+x
0ef9: 7a 2d     addw  ya,$2d
0efb: da 2d     movw  $2d,ya
0efd: eb 2e     mov   y,$2e
0eff: f6 64 01  mov   a,$0164+y
0f02: c4 07     mov   $07,a
0f04: f6 03 01  mov   a,$0103+y
0f07: c4 06     mov   $06,a
0f09: f6 65 01  mov   a,$0165+y
0f0c: 2d        push  a
0f0d: f6 04 01  mov   a,$0104+y
0f10: ee        pop   y
0f11: 9a 06     subw  ya,$06
0f13: 6d        push  y
0f14: eb 2d     mov   y,$2d
0f16: cf        mul   ya
0f17: cb 08     mov   $08,y
0f19: 8f 00 09  mov   $09,#$00
0f1c: ee        pop   y
0f1d: e4 2d     mov   a,$2d
0f1f: cf        mul   ya
0f20: 7a 08     addw  ya,$08
0f22: 7a 06     addw  ya,$06
0f24: da 06     movw  $06,ya
0f26: da 08     movw  $08,ya
0f28: 7d        mov   a,x
0f29: 9f        xcn   a
0f2a: 08 02     or    a,#$02
0f2c: fd        mov   y,a
0f2d: e4 08     mov   a,$08
0f2f: cb f2     mov   $f2,y
0f31: c4 f3     mov   $f3,a             ; P(L)
0f33: fc        inc   y
0f34: e4 09     mov   a,$09
0f36: cb f2     mov   $f2,y
0f38: c4 f3     mov   $f3,a             ; P(H)
0f3a: 6f        ret

0f3b: 7d        mov   a,x
0f3c: 9f        xcn   a
0f3d: 08 02     or    a,#$02
0f3f: fd        mov   y,a
0f40: e4 2d     mov   a,$2d
0f42: cb f2     mov   $f2,y
0f44: c4 f3     mov   $f3,a             ; P(L)
0f46: fc        inc   y
0f47: e4 2e     mov   a,$2e
0f49: cb f2     mov   $f2,y
0f4b: c4 f3     mov   $f3,a             ; P(H)
0f4d: 6f        ret

0f4e: ba 0a     movw  ya,$0a
0f50: 0b 0a     asl   $0a
0f52: 2b 0b     rol   $0b
0f54: 0b 0a     asl   $0a
0f56: 2b 0b     rol   $0b
0f58: 7a 0a     addw  ya,$0a
0f5a: 7a 0c     addw  ya,$0c
0f5c: da 0a     movw  $0a,ya
0f5e: 6f        ret

0f5f: e8 3c     mov   a,#$3c
0f61: c4 fa     mov   $fa,a
0f63: e8 01     mov   a,#$01
0f65: c4 f1     mov   $f1,a
0f67: 6f        ret

0f68: 1c        asl   a
0f69: 1c        asl   a
0f6a: 1c        asl   a
0f6b: 5d        mov   x,a
0f6c: 8d 0f     mov   y,#$0f
0f6e: f5 7e 0f  mov   a,$0f7e+x
0f71: cb f2     mov   $f2,y
0f73: c4 f3     mov   $f3,a             ; set FIR C0-C7
0f75: 3d        inc   x
0f76: dd        mov   a,y
0f77: 60        clrc
0f78: 88 10     adc   a,#$10
0f7a: fd        mov   y,a
0f7b: 10 f1     bpl   $0f6e
0f7d: 6f        ret

0f7e: db $7f,$00,$00,$00,$00,$00,$00,$00
0f86: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0f8e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9

0f96: 68 05     cmp   a,#$05
0f98: 90 02     bcc   $0f9c
0f9a: e8 04     mov   a,#$04
0f9c: 64 19     cmp   a,$19
0f9e: f0 33     beq   $0fd3
0fa0: c4 19     mov   $19,a
0fa2: 8f 3c 1a  mov   $1a,#$3c
0fa5: a2 17     set5  $17
0fa7: e4 17     mov   a,$17
0fa9: 8d 6c     mov   y,#$6c
0fab: cb f2     mov   $f2,y
0fad: c4 f3     mov   $f3,a             ; set FLG
0faf: e4 19     mov   a,$19
0fb1: 8d 7d     mov   y,#$7d
0fb3: cb f2     mov   $f2,y
0fb5: c4 f3     mov   $f3,a             ; set EDL
0fb7: e8 00     mov   a,#$00
0fb9: 8d 4d     mov   y,#$4d
0fbb: cb f2     mov   $f2,y
0fbd: c4 f3     mov   $f3,a             ; set EON
0fbf: 8d 0d     mov   y,#$0d
0fc1: cb f2     mov   $f2,y
0fc3: c4 f3     mov   $f3,a             ; set EFB
0fc5: 8d 3c     mov   y,#$3c
0fc7: cb f2     mov   $f2,y
0fc9: c4 f3     mov   $f3,a             ; set EVOL(R)
0fcb: 8d 2c     mov   y,#$2c
0fcd: c4 32     mov   $32,a
0fcf: cb f2     mov   $f2,y
0fd1: c4 f3     mov   $f3,a             ; set EVOL(L)
0fd3: 6f        ret

0fd4: db $04,$05,$06,$07,$08,$09,$09,$0a
0fdc: db $0a,$0b,$0b,$0c,$0d,$0e,$0f,$10

0fe4: db $00,$0a,$14,$1e,$28,$32,$3c,$46
0fec: db $50,$5a,$64,$6e,$78,$82,$8c,$96
0ff4: db $a0,$aa
