0300: 20        clrp			; clear sound ram
0301: 8f 6c f2  mov   $f2,#$6c		; dsp envelope
0304: 8f 38 f3  mov   $f3,#$38
0307: 8f 4d f2  mov   $f2,#$4d		; disable echo
030a: 8f 00 f3  mov   $f3,#$00
030d: 8f 6d f2  mov   $f2,#$6d		; echo buffer
0310: 8f 60 f3  mov   $f3,#$60
0313: 8f 7d f2  mov   $f2,#$7d		; echo delay
0316: 8f 00 f3  mov   $f3,#$00
0319: 8f 00 f4  mov   $f4,#$00		; port 0
031c: 8f e7 f5  mov   $f5,#$e7		; port 1
031f: cd 70     mov   x,#$70
0321: e8 00     mov   a,#$00
0323: d4 00     mov   $00+x,a
0325: 1d        dec   x
0326: c8 ff     cmp   x,#$ff
0328: d0 f9     bne   $0323
032a: cd 07     mov   x,#$07
032c: e8 00     mov   a,#$00
032e: d4 65     mov   $65+x,a
0330: 1d        dec   x
0331: 10 fb     bpl   $032e
0333: cd 7f     mov   x,#$7f
0335: e8 00     mov   a,#$00
0337: d5 bb 0f  mov   $0fbb+x,a
033a: 1d        dec   x
033b: 10 fa     bpl   $0337
033d: 8f 00 29  mov   $29,#$00
0340: 8f 3b 2b  mov   $2b,#$3b
0343: 8f 10 2c  mov   $2c,#$10
0346: 8f 00 6d  mov   $6d,#$00
0349: 8f 00 34  mov   $34,#$00
034c: 8f ff 23  mov   $23,#$ff
034f: 3f fd 07  call  $07fd
0352: 8f 7c f2  mov   $f2,#$7c
0355: 8f 00 f3  mov   $f3,#$00
0358: e8 46     mov   a,#$46
035a: c4 f7     mov   $f7,a
035c: e8 55     mov   a,#$55
035e: c4 f5     mov   $f5,a
0360: e8 43     mov   a,#$43
0362: c4 f6     mov   $f6,a
0364: e4 f4     mov   a,$f4
0366: 68 4b     cmp   a,#$4b
0368: d0 ee     bne   $0358
036a: c4 27     mov   $27,a
036c: c4 f7     mov   $f7,a
036e: 8d fa     mov   y,#$fa
0370: cd ff     mov   x,#$ff
0372: 1d        dec   x
0373: c8 00     cmp   x,#$00
0375: d0 fb     bne   $0372
0377: dc        dec   y
0378: ad 00     cmp   y,#$00
037a: d0 f4     bne   $0370

037c: 3f d5 0d  call  $0dd5
037f: 60        clrc
0380: 1c        asl   a
0381: 5d        mov   x,a
0382: 1f 54 04  jmp   ($0454+x)

0385: 3f 11 06  call  $0611
0388: 2f f2     bra   $037c

038a: 3f d5 0d  call  $0dd5
038d: 2d        push  a
038e: 3f d5 0d  call  $0dd5
0391: 2d        push  a
0392: e4 6d     mov   a,$6d
0394: d0 03     bne   $0399
0396: 3f 8a 07  call  $078a
0399: ae        pop   a
039a: 68 00     cmp   a,#$00
039c: f0 1a     beq   $03b8
039e: c4 34     mov   $34,a
03a0: 8f 3f 36  mov   $36,#$3f
03a3: 8f 02 35  mov   $35,#$02
03a6: 8f 00 32  mov   $32,#$00
03a9: 8f 00 31  mov   $31,#$00
03ac: 8f 0c f2  mov   $f2,#$0c
03af: 8f 00 f3  mov   $f3,#$00
03b2: 8f 1c f2  mov   $f2,#$1c
03b5: 8f 00 f3  mov   $f3,#$00
03b8: ae        pop   a
03b9: c4 05     mov   $05,a
03bb: 8f 01 17  mov   $17,#$01
03be: 2f bc     bra   $037c

03c0: 3f 63 08  call  $0863
03c3: 2f b7     bra   $037c

03c5: 8f 7c f2  mov   $f2,#$7c
03c8: e4 f3     mov   a,$f3
03ca: c4 f7     mov   $f7,a
03cc: 3f 7e 04  call  $047e
03cf: 3f 0a 07  call  $070a
03d2: e4 17     mov   a,$17
03d4: f0 11     beq   $03e7
03d6: 3f 70 08  call  $0870
03d9: e4 33     mov   a,$33
03db: f0 03     beq   $03e0
03dd: 3f 75 05  call  $0575
03e0: e4 34     mov   a,$34
03e2: f0 03     beq   $03e7
03e4: 3f 59 05  call  $0559
03e7: 2f 93     bra   $037c

03e9: 3f 93 06  call  $0693
03ec: 2f 8e     bra   $037c

03ee: 3f 3f 06  call  $063f
03f1: 2f 89     bra   $037c

03f3: 3f d3 06  call  $06d3
03f6: 2f 84     bra   $037c

03f8: e4 6d     mov   a,$6d
03fa: d0 09     bne   $0405

03fc: 8f 00 29  mov   $29,#$00
03ff: 8f 3b 2b  mov   $2b,#$3b
0402: 8f 10 2c  mov   $2c,#$10
0405: 2f b9     bra   $03c0

0407: 3f d5 0d  call  $0dd5
040a: 2d        push  a
040b: 5d        mov   x,a
040c: e8 00     mov   a,#$00
040e: d4 65     mov   $65+x,a
0410: ae        pop   a
0411: 48 ff     eor   a,#$ff
0413: 60        clrc
0414: 88 08     adc   a,#$08
0416: 3f 33 0d  call  $0d33
0419: 5f 7c 03  jmp   $037c

041c: 3f 62 07  call  $0762
041f: 5f 7c 03  jmp   $037c

0422: 3f 6d 07  call  $076d
0425: 5f 7c 03  jmp   $037c

0428: 3f d5 0d  call  $0dd5
042b: c4 33     mov   $33,a
042d: 5f 7c 03  jmp   $037c

0430: 3f 9e 05  call  $059e
0433: 5f 7c 03  jmp   $037c

0436: 3f d5 0d  call  $0dd5
0439: c4 15     mov   $15,a
043b: 3f d5 0d  call  $0dd5
043e: c4 16     mov   $16,a
0440: 3f 8a 07  call  $078a
0443: 5f 7c 03  jmp   $037c

0446: 3f b6 05  call  $05b6
0449: 5f 7c 03  jmp   $037c

044c: 3f d5 0d  call  $0dd5
044f: c4 23     mov   $23,a
0451: 5f 7c 03  jmp   $037c

0454: dw $037c
0456: dw $0385
0458: dw $038a
045a: dw $03c0
045c: dw $03c5
045e: dw $03e9
0460: dw $03f3
0462: dw $03f8
0464: dw $0407
0466: dw $041c
0468: dw $0422
046a: dw $0428
046c: dw $0430
046e: dw $0436
0470: dw $0446
0472: dw $0496
0474: dw $044c
0476: dw $04b6
0478: dw $053a
047a: dw $04d6
047c: dw $03ee

047e: cd 07     mov   x,#$07
0480: 8d 08     mov   y,#$08
0482: 3c        rol   a
0483: 90 0c     bcc   $0491
0485: 2d        push  a
0486: f4 65     mov   a,$65+x
0488: 68 00     cmp   a,#$00
048a: f0 04     beq   $0490
048c: e8 00     mov   a,#$00
048e: d4 65     mov   $65+x,a
0490: ae        pop   a
0491: 1d        dec   x
0492: dc        dec   y
0493: d0 ed     bne   $0482
0495: 6f        ret

0496: 3f d5 0d  call  $0dd5
0499: 2d        push  a
049a: 48 ff     eor   a,#$ff
049c: 60        clrc
049d: 88 08     adc   a,#$08
049f: 5d        mov   x,a
04a0: e8 01     mov   a,#$01
04a2: d4 5b     mov   $5b+x,a
04a4: ae        pop   a
04a5: 1c        asl   a
04a6: 1c        asl   a
04a7: 5d        mov   x,a
04a8: 8d 04     mov   y,#$04
04aa: 3f d5 0d  call  $0dd5
04ad: d4 3b     mov   $3b+x,a
04af: 3d        inc   x
04b0: dc        dec   y
04b1: d0 f7     bne   $04aa
04b3: 5f 7c 03  jmp   $037c

04b6: 3f d5 0d  call  $0dd5
04b9: c4 12     mov   $12,a
04bb: 3f d5 0d  call  $0dd5
04be: c4 13     mov   $13,a
04c0: 04 12     or    a,$12
04c2: f0 0d     beq   $04d1
04c4: 60        clrc
04c5: e4 12     mov   a,$12
04c7: 88 3b     adc   a,#$3b
04c9: c4 6e     mov   $6e,a
04cb: e4 13     mov   a,$13
04cd: 88 10     adc   a,#$10
04cf: c4 6f     mov   $6f,a
04d1: c4 6d     mov   $6d,a
04d3: 5f 7c 03  jmp   $037c

04d6: 3f d5 0d  call  $0dd5
04d9: c4 25     mov   $25,a
04db: 3f d5 0d  call  $0dd5
04de: c4 26     mov   $26,a
04e0: 60        clrc
04e1: e4 6e     mov   a,$6e
04e3: c4 12     mov   $12,a
04e5: c4 10     mov   $10,a
04e7: 84 25     adc   a,$25
04e9: c4 2b     mov   $2b,a
04eb: e4 6f     mov   a,$6f
04ed: c4 13     mov   $13,a
04ef: c4 11     mov   $11,a
04f1: 84 26     adc   a,$26
04f3: c4 2c     mov   $2c,a
04f5: 3f e4 0d  call  $0de4
04f8: 8d 00     mov   y,#$00
04fa: f7 10     mov   a,($10)+y
04fc: 5d        mov   x,a
04fd: c4 29     mov   $29,a
04ff: c4 2a     mov   $2a,a
0501: 60        clrc
0502: e4 10     mov   a,$10
0504: 88 01     adc   a,#$01
0506: c4 10     mov   $10,a
0508: e4 11     mov   a,$11
050a: 88 00     adc   a,#$00
050c: c4 11     mov   $11,a
050e: 8d 00     mov   y,#$00
0510: 8f 00 12  mov   $12,#$00
0513: 8f 02 13  mov   $13,#$02
0516: 60        clrc
0517: f7 10     mov   a,($10)+y
0519: 84 10     adc   a,$10
051b: d7 12     mov   ($12)+y,a
051d: fc        inc   y
051e: f7 10     mov   a,($10)+y
0520: 84 11     adc   a,$11
0522: d7 12     mov   ($12)+y,a
0524: fc        inc   y
0525: 60        clrc
0526: f7 10     mov   a,($10)+y
0528: 84 10     adc   a,$10
052a: d7 12     mov   ($12)+y,a
052c: fc        inc   y
052d: f7 10     mov   a,($10)+y
052f: 84 11     adc   a,$11
0531: d7 12     mov   ($12)+y,a
0533: fc        inc   y
0534: 1d        dec   x
0535: d0 df     bne   $0516
0537: 5f 7c 03  jmp   $037c

053a: 3f d5 0d  call  $0dd5
053d: c4 25     mov   $25,a
053f: 3f d5 0d  call  $0dd5
0542: c4 26     mov   $26,a
0544: e8 3b     mov   a,#$3b
0546: c4 12     mov   $12,a
0548: c4 15     mov   $15,a
054a: e8 10     mov   a,#$10
054c: c4 13     mov   $13,a
054e: c4 16     mov   $16,a
0550: 3f e4 0d  call  $0de4
0553: 3f 8a 07  call  $078a
0556: 5f 7c 03  jmp   $037c

0559: ab 31     inc   $31
055b: ab 31     inc   $31
055d: ab 32     inc   $32
055f: ab 32     inc   $32
0561: 8b 36     dec   $36
0563: 10 03     bpl   $0568
0565: 8f 00 34  mov   $34,#$00
0568: e4 31     mov   a,$31
056a: 8f 0c f2  mov   $f2,#$0c
056d: c4 f3     mov   $f3,a
056f: 8f 1c f2  mov   $f2,#$1c
0572: c4 f3     mov   $f3,a
0574: 6f        ret

0575: e4 31     mov   a,$31
0577: f0 09     beq   $0582
0579: 80        setc
057a: a4 33     sbc   a,$33
057c: b0 02     bcs   $0580
057e: e8 00     mov   a,#$00
0580: c4 31     mov   $31,a
0582: e4 32     mov   a,$32
0584: f0 09     beq   $058f
0586: 80        setc
0587: a4 33     sbc   a,$33
0589: b0 02     bcs   $058d
058b: e8 00     mov   a,#$00
058d: c4 32     mov   $32,a
058f: e4 31     mov   a,$31
0591: 8f 0c f2  mov   $f2,#$0c
0594: c4 f3     mov   $f3,a
0596: e4 32     mov   a,$32
0598: 8f 1c f2  mov   $f2,#$1c
059b: c4 f3     mov   $f3,a
059d: 6f        ret

059e: 3f d5 0d  call  $0dd5
05a1: c4 12     mov   $12,a
05a3: 3f d5 0d  call  $0dd5
05a6: c4 13     mov   $13,a
05a8: 3f d5 0d  call  $0dd5
05ab: c4 25     mov   $25,a
05ad: 3f d5 0d  call  $0dd5
05b0: c4 26     mov   $26,a
05b2: 3f e4 0d  call  $0de4
05b5: 6f        ret

05b6: 3f d5 0d  call  $0dd5
05b9: c4 37     mov   $37,a
05bb: 3f d5 0d  call  $0dd5
05be: c4 38     mov   $38,a
05c0: 3f d5 0d  call  $0dd5
05c3: c4 25     mov   $25,a
05c5: 3f d5 0d  call  $0dd5
05c8: c4 26     mov   $26,a
05ca: 3f d5 0d  call  $0dd5
05cd: c4 39     mov   $39,a
05cf: 3f d5 0d  call  $0dd5
05d2: c4 3a     mov   $3a,a
05d4: 8d 00     mov   y,#$00
05d6: 3f d5 0d  call  $0dd5
05d9: 68 01     cmp   a,#$01
05db: f0 19     beq   $05f6
05dd: f7 37     mov   a,($37)+y
05df: d7 39     mov   ($39)+y,a
05e1: fc        inc   y
05e2: d0 04     bne   $05e8
05e4: ab 38     inc   $38
05e6: ab 3a     inc   $3a
05e8: 80        setc
05e9: b8 01 25  sbc   $25,#$01
05ec: b8 00 26  sbc   $26,#$00
05ef: e4 25     mov   a,$25
05f1: 04 26     or    a,$26
05f3: d0 e8     bne   $05dd
05f5: 6f        ret

05f6: f7 37     mov   a,($37)+y
05f8: d7 39     mov   ($39)+y,a
05fa: dc        dec   y
05fb: ad ff     cmp   y,#$ff
05fd: d0 04     bne   $0603
05ff: 8b 38     dec   $38
0601: 8b 3a     dec   $3a
0603: 80        setc
0604: b8 01 25  sbc   $25,#$01
0607: b8 00 26  sbc   $26,#$00
060a: e4 25     mov   a,$25
060c: 04 26     or    a,$26
060e: d0 e6     bne   $05f6
0610: 6f        ret

0611: 3f d5 0d  call  $0dd5
0614: c4 25     mov   $25,a
0616: 3f d5 0d  call  $0dd5
0619: c4 26     mov   $26,a
061b: 60        clrc
061c: e8 3b     mov   a,#$3b
061e: 84 25     adc   a,$25
0620: c4 2b     mov   $2b,a
0622: c4 2d     mov   $2d,a
0624: e8 10     mov   a,#$10
0626: 84 26     adc   a,$26
0628: c4 2c     mov   $2c,a
062a: c4 2e     mov   $2e,a
062c: 8f 3b 12  mov   $12,#$3b
062f: 8f 10 13  mov   $13,#$10
0632: 3f e4 0d  call  $0de4
0635: 8f 3b 15  mov   $15,#$3b
0638: 8f 10 16  mov   $16,#$10
063b: 3f 8a 07  call  $078a
063e: 6f        ret

063f: 3f d5 0d  call  $0dd5
0642: 2d        push  a
0643: 60        clrc
0644: 84 29     adc   a,$29
0646: c4 2a     mov   $2a,a
0648: ae        pop   a
0649: 1c        asl   a
064a: 5d        mov   x,a
064b: 3f d5 0d  call  $0dd5
064e: c4 25     mov   $25,a
0650: 3f d5 0d  call  $0dd5
0653: c4 26     mov   $26,a
0655: e4 29     mov   a,$29
0657: 1c        asl   a
0658: 1c        asl   a
0659: c4 12     mov   $12,a
065b: 8f 02 13  mov   $13,#$02
065e: 8d 00     mov   y,#$00
0660: 3f d5 0d  call  $0dd5
0663: c4 2f     mov   $2f,a
0665: 3f d5 0d  call  $0dd5
0668: c4 30     mov   $30,a
066a: 60        clrc
066b: e4 2f     mov   a,$2f
066d: 84 2b     adc   a,$2b
066f: d7 12     mov   ($12)+y,a
0671: fc        inc   y
0672: e4 30     mov   a,$30
0674: 84 2c     adc   a,$2c
0676: d7 12     mov   ($12)+y,a
0678: fc        inc   y
0679: 1d        dec   x
067a: d0 e4     bne   $0660
067c: 60        clrc
067d: e4 2b     mov   a,$2b
067f: 84 25     adc   a,$25
0681: c4 2d     mov   $2d,a
0683: e4 2c     mov   a,$2c
0685: 84 26     adc   a,$26
0687: c4 2e     mov   $2e,a
0689: fa 2b 12  mov   ($12),($2b)
068c: fa 2c 13  mov   ($13),($2c)
068f: 3f e4 0d  call  $0de4
0692: 6f        ret

0693: 3f d5 0d  call  $0dd5
0696: 1c        asl   a
0697: 5d        mov   x,a
0698: 3f d5 0d  call  $0dd5
069b: c4 25     mov   $25,a
069d: 3f d5 0d  call  $0dd5
06a0: c4 26     mov   $26,a
06a2: e4 2a     mov   a,$2a
06a4: 1c        asl   a
06a5: 1c        asl   a
06a6: c4 12     mov   $12,a
06a8: 8f 02 13  mov   $13,#$02
06ab: 8d 00     mov   y,#$00
06ad: 3f d5 0d  call  $0dd5
06b0: c4 2f     mov   $2f,a
06b2: 3f d5 0d  call  $0dd5
06b5: c4 30     mov   $30,a
06b7: 60        clrc
06b8: e4 2f     mov   a,$2f
06ba: 84 2d     adc   a,$2d
06bc: d7 12     mov   ($12)+y,a
06be: fc        inc   y
06bf: e4 30     mov   a,$30
06c1: 84 2e     adc   a,$2e
06c3: d7 12     mov   ($12)+y,a
06c5: fc        inc   y
06c6: 1d        dec   x
06c7: d0 e4     bne   $06ad
06c9: fa 2d 12  mov   ($12),($2d)
06cc: fa 2e 13  mov   ($13),($2e)
06cf: 3f e4 0d  call  $0de4
06d2: 6f        ret

06d3: 3f d5 0d  call  $0dd5
06d6: 9f        xcn   a
06d7: fd        mov   y,a
06d8: 3f d5 0d  call  $0dd5
06db: 76 bb 0f  cmp   a,$0fbb+y
06de: 30 1a     bmi   $06fa
06e0: d6 bb 0f  mov   $0fbb+y,a
06e3: fc        inc   y
06e4: cd 04     mov   x,#$04
06e6: 3f d5 0d  call  $0dd5
06e9: d6 bb 0f  mov   $0fbb+y,a
06ec: fc        inc   y
06ed: 1d        dec   x
06ee: d0 f6     bne   $06e6
06f0: 3f d5 0d  call  $0dd5
06f3: 60        clrc
06f4: 84 29     adc   a,$29
06f6: d6 bb 0f  mov   $0fbb+y,a
06f9: 6f        ret

06fa: 3f d5 0d  call  $0dd5
06fd: 3f d5 0d  call  $0dd5
0700: 3f d5 0d  call  $0dd5
0703: 3f d5 0d  call  $0dd5
0706: 3f d5 0d  call  $0dd5
0709: 6f        ret

070a: 8f 80 20  mov   $20,#$80
070d: 8d 70     mov   y,#$70
070f: f6 bb 0f  mov   a,$0fbb+y
0712: 68 00     cmp   a,#$00
0714: f0 3c     beq   $0752
0716: 6d        push  y
0717: 2d        push  a
0718: dd        mov   a,y
0719: 9f        xcn   a
071a: 5d        mov   x,a
071b: ae        pop   a
071c: 74 65     cmp   a,$65+x
071e: 30 3f     bmi   $075f
0720: d4 65     mov   $65+x,a
0722: e8 00     mov   a,#$00
0724: d6 bb 0f  mov   $0fbb+y,a
0727: 8f 5c f2  mov   $f2,#$5c
072a: fa 20 f3  mov   ($f3),($20)
072d: cd 05     mov   x,#$05
072f: f6 bc 0f  mov   a,$0fbc+y
0732: cb f2     mov   $f2,y
0734: c4 f3     mov   $f3,a
0736: fc        inc   y
0737: 1d        dec   x
0738: d0 f5     bne   $072f
073a: cb f2     mov   $f2,y
073c: 8f ff f3  mov   $f3,#$ff
073f: fc        inc   y
0740: cb f2     mov   $f2,y
0742: 8f e0 f3  mov   $f3,#$e0
0745: 8f 4c f2  mov   $f2,#$4c
0748: fa 20 f3  mov   ($f3),($20)
074b: 8f 5c f2  mov   $f2,#$5c
074e: 8f 00 f3  mov   $f3,#$00
0751: ee        pop   y
0752: 60        clrc
0753: 6b 20     ror   $20
0755: dd        mov   a,y
0756: 9f        xcn   a
0757: 9c        dec   a
0758: 30 04     bmi   $075e
075a: 9f        xcn   a
075b: fd        mov   y,a
075c: 2f b1     bra   $070f
075e: 6f        ret

075f: ee        pop   y
0760: 2f f0     bra   $0752
0762: 3f d5 0d  call  $0dd5
0765: 60        clrc
0766: 1c        asl   a
0767: 1c        asl   a
0768: 1c        asl   a
0769: 1c        asl   a
076a: 5d        mov   x,a
076b: 2f 0d     bra   $077a
076d: 3f d5 0d  call  $0dd5
0770: 60        clrc
0771: 1c        asl   a
0772: 1c        asl   a
0773: 1c        asl   a
0774: 1c        asl   a
0775: 5d        mov   x,a
0776: 3d        inc   x
0777: 3d        inc   x
0778: 2f 00     bra   $077a
077a: 3f d5 0d  call  $0dd5
077d: d8 f2     mov   $f2,x
077f: c4 f3     mov   $f3,a
0781: 3d        inc   x
0782: 3f d5 0d  call  $0dd5
0785: d8 f2     mov   $f2,x
0787: c4 f3     mov   $f3,a
0789: 6f        ret

078a: 8d 13     mov   y,#$13
078c: cd 0b     mov   x,#$0b
078e: f7 15     mov   a,($15)+y
0790: d4 06     mov   $06+x,a
0792: 1d        dec   x
0793: dc        dec   y
0794: 10 f8     bpl   $078e
0796: ba 15     movw  ya,$15
0798: 7a 06     addw  ya,$06
079a: da 06     movw  $06,ya
079c: ba 15     movw  ya,$15
079e: 7a 08     addw  ya,$08
07a0: da 08     movw  $08,ya
07a2: ba 15     movw  ya,$15
07a4: 7a 0a     addw  ya,$0a
07a6: da 0a     movw  $0a,ya
07a8: ba 15     movw  ya,$15
07aa: 7a 0c     addw  ya,$0c
07ac: da 0c     movw  $0c,ya
07ae: ba 15     movw  ya,$15
07b0: 7a 0e     addw  ya,$0e
07b2: da 0e     movw  $0e,ya
07b4: ba 15     movw  ya,$15
07b6: 7a 10     addw  ya,$10
07b8: da 10     movw  $10,ya
07ba: e4 6d     mov   a,$6d
07bc: d0 3f     bne   $07fd
07be: 8d 00     mov   y,#$00
07c0: f7 10     mov   a,($10)+y
07c2: 5d        mov   x,a
07c3: c4 29     mov   $29,a
07c5: c4 2a     mov   $2a,a
07c7: 60        clrc
07c8: e4 10     mov   a,$10
07ca: 88 01     adc   a,#$01
07cc: c4 10     mov   $10,a
07ce: e4 11     mov   a,$11
07d0: 88 00     adc   a,#$00
07d2: c4 11     mov   $11,a
07d4: 8d 00     mov   y,#$00
07d6: 8f 00 12  mov   $12,#$00
07d9: 8f 02 13  mov   $13,#$02
07dc: 60        clrc
07dd: f7 10     mov   a,($10)+y
07df: 84 10     adc   a,$10
07e1: d7 12     mov   ($12)+y,a
07e3: fc        inc   y
07e4: f7 10     mov   a,($10)+y
07e6: 84 11     adc   a,$11
07e8: d7 12     mov   ($12)+y,a
07ea: fc        inc   y
07eb: 60        clrc
07ec: f7 10     mov   a,($10)+y
07ee: 84 10     adc   a,$10
07f0: d7 12     mov   ($12)+y,a
07f2: fc        inc   y
07f3: f7 10     mov   a,($10)+y
07f5: 84 11     adc   a,$11
07f7: d7 12     mov   ($12)+y,a
07f9: fc        inc   y
07fa: 1d        dec   x
07fb: d0 df     bne   $07dc
07fd: 8f 00 05  mov   $05,#$00
0800: 8f 00 1c  mov   $1c,#$00
0803: 8f 06 01  mov   $01,#$06
0806: 8f 00 00  mov   $00,#$00
0809: 8f 00 02  mov   $02,#$00
080c: 8f 00 17  mov   $17,#$00
080f: 8f 18 24  mov   $24,#$18
0812: 8f 7f 31  mov   $31,#$7f
0815: 8f 7f 32  mov   $32,#$7f
0818: 8f 00 33  mov   $33,#$00
081b: 8f d6 12  mov   $12,#$d6
081e: 8f 0e 13  mov   $13,#$0e
0821: 3f 42 08  call  $0842
0824: e8 00     mov   a,#$00
0826: cd 07     mov   x,#$07
0828: d4 5b     mov   $5b+x,a
082a: 1d        dec   x
082b: 10 fb     bpl   $0828
082d: 6f        ret

082e: 8f 00 12  mov   $12,#$00
0831: 8f 60 13  mov   $13,#$60
0834: e8 00     mov   a,#$00
0836: 8d 00     mov   y,#$00
0838: d7 12     mov   ($12)+y,a
083a: fc        inc   y
083b: d0 fb     bne   $0838
083d: ab 13     inc   $13
083f: d0 f7     bne   $0838
0841: 6f        ret

0842: 6d        push  y
0843: 8d 00     mov   y,#$00
0845: f7 12     mov   a,($12)+y
0847: 68 ff     cmp   a,#$ff
0849: f0 16     beq   $0861
084b: c4 f2     mov   $f2,a
084d: 60        clrc
084e: 98 01 12  adc   $12,#$01
0851: 98 00 13  adc   $13,#$00
0854: f7 12     mov   a,($12)+y
0856: c4 f3     mov   $f3,a
0858: 60        clrc
0859: 98 01 12  adc   $12,#$01
085c: 98 00 13  adc   $13,#$00
085f: 2f e4     bra   $0845
0861: ee        pop   y
0862: 6f        ret

0863: 8f d6 12  mov   $12,#$d6
0866: 8f 0e 13  mov   $13,#$0e
0869: 3f 42 08  call  $0842
086c: 8f 00 17  mov   $17,#$00
086f: 6f        ret

0870: 8b 00     dec   $00
0872: 30 02     bmi   $0876
0874: d0 03     bne   $0879
0876: 3f 71 0a  call  $0a71
0879: 3f 7d 08  call  $087d
087c: 6f        ret

087d: 8f 33 1e  mov   $1e,#$33
0880: 8f 0f 1f  mov   $1f,#$0f
0883: 8f 00 14  mov   $14,#$00
0886: cd 05     mov   x,#$05
0888: 4d        push  x
0889: 8d 04     mov   y,#$04
088b: f7 1e     mov   a,($1e)+y
088d: 1c        asl   a
088e: 5d        mov   x,a
088f: 1f 51 0a  jmp   ($0a51+x)

0892: fc        inc   y			; effect 01 - portamento up
0893: f7 1e     mov   a,($1e)+y
0895: 1c        asl   a
0896: 8d 00     mov   y,#$00
0898: 60        clrc
0899: 97 1e     adc   a,($1e)+y
089b: d7 1e     mov   ($1e)+y,a
089d: fc        inc   y
089e: f7 1e     mov   a,($1e)+y
08a0: 88 00     adc   a,#$00
08a2: d7 1e     mov   ($1e)+y,a
08a4: 8f 01 22  mov   $22,#$01
08a7: 5f 10 0a  jmp   $0a10

08aa: fc        inc   y			; effect 02 - portamento down
08ab: f7 1e     mov   a,($1e)+y
08ad: 1c        asl   a
08ae: c4 20     mov   $20,a
08b0: 8d 00     mov   y,#$00
08b2: 80        setc
08b3: f7 1e     mov   a,($1e)+y
08b5: a4 20     sbc   a,$20
08b7: d7 1e     mov   ($1e)+y,a
08b9: fc        inc   y
08ba: f7 1e     mov   a,($1e)+y
08bc: a8 00     sbc   a,#$00
08be: d7 1e     mov   ($1e)+y,a
08c0: 8f 01 22  mov   $22,#$01
08c3: 5f 10 0a  jmp   $0a10

08c6: 8d 0f     mov   y,#$0f		; effect 03 - portamento to note
08c8: f7 1e     mov   a,($1e)+y
08ca: c4 20     mov   $20,a
08cc: fc        inc   y
08cd: f7 1e     mov   a,($1e)+y
08cf: c4 21     mov   $21,a
08d1: 8d 0c     mov   y,#$0c
08d3: f7 1e     mov   a,($1e)+y
08d5: f0 07     beq   $08de
08d7: 68 02     cmp   a,#$02
08d9: d0 2b     bne   $0906
08db: 5f 10 0a  jmp   $0a10

08de: 8d 00     mov   y,#$00
08e0: 60        clrc
08e1: f7 1e     mov   a,($1e)+y
08e3: 84 20     adc   a,$20
08e5: d7 1e     mov   ($1e)+y,a
08e7: c4 20     mov   $20,a
08e9: fc        inc   y
08ea: f7 1e     mov   a,($1e)+y
08ec: 84 21     adc   a,$21
08ee: d7 1e     mov   ($1e)+y,a
08f0: c4 21     mov   $21,a
08f2: 8d 0d     mov   y,#$0d
08f4: 80        setc
08f5: e4 20     mov   a,$20
08f7: b7 1e     sbc   a,($1e)+y
08f9: fc        inc   y
08fa: e4 21     mov   a,$21
08fc: b7 1e     sbc   a,($1e)+y
08fe: 10 28     bpl   $0928
0900: 8f 01 22  mov   $22,#$01
0903: 5f 10 0a  jmp   $0a10

0906: 8d 00     mov   y,#$00
0908: 80        setc
0909: f7 1e     mov   a,($1e)+y
090b: a4 20     sbc   a,$20
090d: d7 1e     mov   ($1e)+y,a
090f: c4 20     mov   $20,a
0911: fc        inc   y
0912: f7 1e     mov   a,($1e)+y
0914: a4 21     sbc   a,$21
0916: d7 1e     mov   ($1e)+y,a
0918: c4 21     mov   $21,a
091a: 8d 0d     mov   y,#$0d
091c: 80        setc
091d: e4 20     mov   a,$20
091f: b7 1e     sbc   a,($1e)+y
0921: fc        inc   y
0922: e4 21     mov   a,$21
0924: b7 1e     sbc   a,($1e)+y
0926: 10 d8     bpl   $0900
0928: 8d 0d     mov   y,#$0d
092a: f7 1e     mov   a,($1e)+y
092c: 8d 00     mov   y,#$00
092e: d7 1e     mov   ($1e)+y,a
0930: 8d 0e     mov   y,#$0e
0932: f7 1e     mov   a,($1e)+y
0934: 8d 01     mov   y,#$01
0936: d7 1e     mov   ($1e)+y,a
0938: 8d 0c     mov   y,#$0c
093a: e8 02     mov   a,#$02
093c: d7 1e     mov   ($1e)+y,a
093e: 8f 01 22  mov   $22,#$01
0941: 5f 10 0a  jmp   $0a10

0944: 8d 07     mov   y,#$07		; effect 04 - vibrato
0946: f7 1e     mov   a,($1e)+y
0948: 10 17     bpl   $0961
094a: 48 ff     eor   a,#$ff
094c: bc        inc   a
094d: c4 20     mov   $20,a
094f: 8d 00     mov   y,#$00
0951: 80        setc
0952: f7 1e     mov   a,($1e)+y
0954: a4 20     sbc   a,$20
0956: d7 1e     mov   ($1e)+y,a
0958: fc        inc   y
0959: f7 1e     mov   a,($1e)+y
095b: a8 00     sbc   a,#$00
095d: d7 1e     mov   ($1e)+y,a
095f: 2f 0e     bra   $096f
0961: 8d 00     mov   y,#$00
0963: 60        clrc
0964: 97 1e     adc   a,($1e)+y
0966: d7 1e     mov   ($1e)+y,a
0968: fc        inc   y
0969: f7 1e     mov   a,($1e)+y
096b: 88 00     adc   a,#$00
096d: d7 1e     mov   ($1e)+y,a
096f: 8f 01 22  mov   $22,#$01
0972: 8d 06     mov   y,#$06
0974: f7 1e     mov   a,($1e)+y
0976: 9c        dec   a
0977: d7 1e     mov   ($1e)+y,a
0979: d0 14     bne   $098f
097b: 8d 07     mov   y,#$07
097d: f7 1e     mov   a,($1e)+y
097f: 48 ff     eor   a,#$ff
0981: bc        inc   a
0982: d7 1e     mov   ($1e)+y,a
0984: 8d 05     mov   y,#$05
0986: f7 1e     mov   a,($1e)+y
0988: 9f        xcn   a
0989: 28 0f     and   a,#$0f
098b: 8d 06     mov   y,#$06
098d: d7 1e     mov   ($1e)+y,a
098f: 2f 7f     bra   $0a10

0991: fc        inc   y			; effect 06 - vibrato with volume slide
0992: f7 1e     mov   a,($1e)+y
0994: fd        mov   y,a
0995: 28 f0     and   a,#$f0
0997: d0 10     bne   $09a9
0999: dd        mov   a,y
099a: c4 20     mov   $20,a
099c: 8d 02     mov   y,#$02
099e: f7 1e     mov   a,($1e)+y
09a0: 80        setc
09a1: a4 20     sbc   a,$20
09a3: 10 11     bpl   $09b6
09a5: e8 00     mov   a,#$00
09a7: 2f 0d     bra   $09b6
09a9: 5c        lsr   a
09aa: 5c        lsr   a
09ab: 5c        lsr   a
09ac: 5c        lsr   a
09ad: 8d 02     mov   y,#$02
09af: 60        clrc
09b0: 97 1e     adc   a,($1e)+y
09b2: 10 02     bpl   $09b6
09b4: e8 7f     mov   a,#$7f
09b6: d7 1e     mov   ($1e)+y,a
09b8: 8f 02 22  mov   $22,#$02
09bb: 2f 53     bra   $0a10

09bd: fc        inc   y			; effect 08 - panning
09be: f7 1e     mov   a,($1e)+y
09c0: 10 22     bpl   $09e4
09c2: 48 ff     eor   a,#$ff
09c4: bc        inc   a
09c5: c4 20     mov   $20,a
09c7: 8d 08     mov   y,#$08
09c9: f7 1e     mov   a,($1e)+y
09cb: 60        clrc
09cc: 84 20     adc   a,$20
09ce: 30 2b     bmi   $09fb
09d0: 2d        push  a
09d1: fc        inc   y
09d2: f7 1e     mov   a,($1e)+y
09d4: 80        setc
09d5: a4 20     sbc   a,$20
09d7: 10 21     bpl   $09fa
09d9: d7 1e     mov   ($1e)+y,a
09db: dc        dec   y
09dc: ae        pop   a
09dd: d7 1e     mov   ($1e)+y,a
09df: 8f 02 22  mov   $22,#$02
09e2: 2f 2c     bra   $0a10
09e4: c4 20     mov   $20,a
09e6: 8d 08     mov   y,#$08
09e8: f7 1e     mov   a,($1e)+y
09ea: 80        setc
09eb: a4 20     sbc   a,$20
09ed: 10 0c     bpl   $09fb
09ef: 2d        push  a
09f0: fc        inc   y
09f1: f7 1e     mov   a,($1e)+y
09f3: 60        clrc
09f4: 84 20     adc   a,$20
09f6: 30 02     bmi   $09fa
09f8: 2f df     bra   $09d9
09fa: ae        pop   a
09fb: 2f 13     bra   $0a10

09fd: fc        inc   y			; effect 0c - set volume
09fe: f7 1e     mov   a,($1e)+y
0a00: 8d 02     mov   y,#$02
0a02: d7 1e     mov   ($1e)+y,a
0a04: e8 00     mov   a,#$00
0a06: 8d 04     mov   y,#$04
0a08: d7 1e     mov   ($1e)+y,a
0a0a: fc        inc   y
0a0b: d7 1e     mov   ($1e)+y,a
0a0d: 8f 02 22  mov   $22,#$02
0a10: 6b 22     ror   $22
0a12: 90 14     bcc   $0a28
0a14: 8d 00     mov   y,#$00
0a16: f8 14     mov   x,$14
0a18: 3d        inc   x
0a19: 3d        inc   x
0a1a: f7 1e     mov   a,($1e)+y
0a1c: d8 f2     mov   $f2,x
0a1e: c4 f3     mov   $f3,a
0a20: 3d        inc   x
0a21: fc        inc   y
0a22: f7 1e     mov   a,($1e)+y
0a24: d8 f2     mov   $f2,x
0a26: c4 f3     mov   $f3,a
0a28: 6b 22     ror   $22
0a2a: 90 11     bcc   $0a3d
0a2c: 8d 08     mov   y,#$08
0a2e: f7 1e     mov   a,($1e)+y
0a30: 5d        mov   x,a
0a31: fc        inc   y
0a32: f7 1e     mov   a,($1e)+y
0a34: 2d        push  a
0a35: 8d 02     mov   y,#$02
0a37: f7 1e     mov   a,($1e)+y
0a39: ee        pop   y
0a3a: 3f 11 0d  call  $0d11

0a3d: e8 11     mov   a,#$11		; effect 0f - set speed
0a3f: 8d 00     mov   y,#$00
0a41: 7a 1e     addw  ya,$1e
0a43: da 1e     movw  $1e,ya
0a45: 60        clrc
0a46: 98 10 14  adc   $14,#$10
0a49: ce        pop   x
0a4a: 1d        dec   x
0a4b: 30 03     bmi   $0a50
0a4d: 5f 88 08  jmp   $0888
0a50: 6f        ret

; effect table (00-0f) - secondary
; (effects are based on ProTracker format)
0a51: dw $0a3d		; 00 - (same as 0f)
0a53: dw $0892		; 01 - portamento up
0a55: dw $08aa		; 02 - portamento down
0a57: dw $08c6		; 03 - portamento to note
0a59: dw $0944		; 04 - vibrato
0a5b: dw $0a3d		; 05 - (same as 0f)
0a5d: dw $0991		; 06 - vibrato with volume slide
0a5f: dw $0a3d		; 07 - (same as 0f)
0a61: dw $09bd		; 08 - set panning
0a63: dw $0a3d		; 09 - (same as 0f)
0a65: dw $0991		; 0a - volume slide
0a67: dw $0a3d		; 0b - (same as 0f - see primary table)
0a69: dw $09fd		; 0c - set volume
0a6b: dw $0a3d		; 0d - (same as 0f)
0a6d: dw $0a3d		; 0e - (same as 0f - see primary table)
0a6f: dw $0a3d		; 0f - set speed

0a71: e4 23     mov   a,$23
0a73: c4 28     mov   $28,a
0a75: 8b 02     dec   $02
0a77: 10 25     bpl   $0a9e
0a79: 8f 00 1c  mov   $1c,#$00
0a7c: eb 05     mov   y,$05
0a7e: f7 06     mov   a,($06)+y
0a80: 68 ff     cmp   a,#$ff
0a82: d0 04     bne   $0a88
0a84: 8d 00     mov   y,#$00
0a86: f7 06     mov   a,($06)+y
0a88: fc        inc   y
0a89: cb 05     mov   $05,y
0a8b: 1c        asl   a
0a8c: fd        mov   y,a
0a8d: 60        clrc
0a8e: f7 08     mov   a,($08)+y
0a90: 84 08     adc   a,$08
0a92: c4 03     mov   $03,a
0a94: fc        inc   y
0a95: f7 08     mov   a,($08)+y
0a97: 84 09     adc   a,$09
0a99: c4 04     mov   $04,a
0a9b: 8f 3f 02  mov   $02,#$3f
0a9e: fa 01 00  mov   ($00),($01)
0aa1: 8f 33 1e  mov   $1e,#$33
0aa4: 8f 0f 1f  mov   $1f,#$0f
0aa7: 8f 00 14  mov   $14,#$00
0aaa: 8f 3b 63  mov   $63,#$3b
0aad: 8f 00 64  mov   $64,#$00
0ab0: cd 08     mov   x,#$08
0ab2: 4d        push  x
0ab3: e4 1c     mov   a,$1c		; check skip ahead value
0ab5: f0 10     beq   $0ac7		; if not 0, then decrease
0ab7: 8b 1c     dec   $1c		; otherwise, then proceed and decrement it
0ab9: 8f 00 18  mov   $18,#$00
0abc: 8f 00 19  mov   $19,#$00
0abf: 8f 00 1a  mov   $1a,#$00
0ac2: 8f 00 1b  mov   $1b,#$00
0ac5: 2f 29     bra   $0af0
0ac7: 8d 00     mov   y,#$00
0ac9: f7 03     mov   a,($03)+y
0acb: 68 ff     cmp   a,#$ff		; check for end of row
0acd: d0 0e     bne   $0add
0acf: fc        inc   y
0ad0: f7 03     mov   a,($03)+y		; if so, then get skip ahead value
0ad2: c4 1c     mov   $1c,a
0ad4: 60        clrc
0ad5: 98 02 03  adc   $03,#$02
0ad8: 98 00 04  adc   $04,#$00
0adb: 2f da     bra   $0ab7
0add: 8d 03     mov   y,#$03		; otherwise, load the remaining 3 bytes
0adf: cd 03     mov   x,#$03
0ae1: f7 03     mov   a,($03)+y
0ae3: d4 18     mov   $18+x,a
0ae5: dc        dec   y
0ae6: 1d        dec   x
0ae7: 10 f8     bpl   $0ae1
0ae9: 60        clrc
0aea: 98 04 03  adc   $03,#$04		; advance the current pointer
0aed: 98 00 04  adc   $04,#$00
0af0: 60        clrc
0af1: 0b 28     asl   $28		; number of channels to go?
0af3: 90 68     bcc   $0b5d
0af5: ce        pop   x
0af6: 4d        push  x
0af7: 1d        dec   x
0af8: f4 5b     mov   a,$5b+x
0afa: f0 10     beq   $0b0c
0afc: e8 00     mov   a,#$00
0afe: d4 5b     mov   $5b+x,a
0b00: 8d 03     mov   y,#$03
0b02: cd 03     mov   x,#$03
0b04: f7 63     mov   a,($63)+y
0b06: d4 18     mov   $18+x,a
0b08: dc        dec   y
0b09: 1d        dec   x
0b0a: 10 f8     bpl   $0b04
0b0c: e4 19     mov   a,$19
0b0e: d0 08     bne   $0b18
0b10: e4 18     mov   a,$18
0b12: f0 1e     beq   $0b32
0b14: 8d 0a     mov   y,#$0a
0b16: f7 1e     mov   a,($1e)+y
0b18: fd        mov   y,a
0b19: e4 1a     mov   a,$1a
0b1b: 68 03     cmp   a,#$03
0b1d: f0 0a     beq   $0b29
0b1f: e4 18     mov   a,$18
0b21: f0 06     beq   $0b29
0b23: ae        pop   a
0b24: 2d        push  a
0b25: 9c        dec   a
0b26: 3f 33 0d  call  $0d33
0b29: dd        mov   a,y
0b2a: 8d 0a     mov   y,#$0a
0b2c: d7 1e     mov   ($1e)+y,a
0b2e: 9c        dec   a
0b2f: 3f 50 0c  call  $0c50
0b32: e4 18     mov   a,$18
0b34: f0 19     beq   $0b4f
0b36: 60        clrc
0b37: 84 24     adc   a,$24
0b39: 9c        dec   a
0b3a: 3f d8 0c  call  $0cd8
0b3d: e4 1a     mov   a,$1a
0b3f: 68 03     cmp   a,#$03
0b41: f0 0c     beq   $0b4f
0b43: ae        pop   a
0b44: 2d        push  a
0b45: 9c        dec   a
0b46: 3f 25 0d  call  $0d25
0b49: 8f 5c f2  mov   $f2,#$5c		; disable key off
0b4c: 8f 00 f3  mov   $f3,#$00
0b4f: 8d 04     mov   y,#$04
0b51: e4 1a     mov   a,$1a
0b53: d7 1e     mov   ($1e)+y,a
0b55: fc        inc   y
0b56: e4 1b     mov   a,$1b
0b58: d7 1e     mov   ($1e)+y,a
0b5a: 3f 77 0b  call  $0b77
0b5d: ce        pop   x
0b5e: 60        clrc
0b5f: 98 11 1e  adc   $1e,#$11
0b62: 98 00 1f  adc   $1f,#$00
0b65: 60        clrc
0b66: 98 04 63  adc   $63,#$04
0b69: 98 00 64  adc   $64,#$00
0b6c: 60        clrc
0b6d: 98 10 14  adc   $14,#$10
0b70: 1d        dec   x
0b71: f0 03     beq   $0b76
0b73: 5f b2 0a  jmp   $0ab2
0b76: 6f        ret

0b77: e4 1a     mov   a,$1a
0b79: 1c        asl   a
0b7a: 5d        mov   x,a
0b7b: 1f 30 0c  jmp   ($0c30+x)

; effect 03
0b7e: 8d 0f     mov   y,#$0f
0b80: e4 1b     mov   a,$1b
0b82: 60        clrc
0b83: 1c        asl   a
0b84: d7 1e     mov   ($1e)+y,a
0b86: e8 00     mov   a,#$00
0b88: 3c        rol   a
0b89: fc        inc   y
0b8a: d7 1e     mov   ($1e)+y,a
0b8c: e4 18     mov   a,$18
0b8e: d0 03     bne   $0b93
0b90: 5f 2f 0c  jmp   $0c2f

0b93: 8d 0d     mov   y,#$0d
0b95: f7 1e     mov   a,($1e)+y
0b97: c4 20     mov   $20,a
0b99: fc        inc   y
0b9a: f7 1e     mov   a,($1e)+y
0b9c: c4 21     mov   $21,a
0b9e: 8d 00     mov   y,#$00
0ba0: 80        setc
0ba1: e4 20     mov   a,$20
0ba3: b7 1e     sbc   a,($1e)+y
0ba5: fc        inc   y
0ba6: e4 21     mov   a,$21
0ba8: b7 1e     sbc   a,($1e)+y
0baa: 30 09     bmi   $0bb5
0bac: 8d 0c     mov   y,#$0c
0bae: e8 00     mov   a,#$00
0bb0: d7 1e     mov   ($1e)+y,a
0bb2: 5f 2f 0c  jmp   $0c2f

0bb5: 8d 0c     mov   y,#$0c
0bb7: e8 01     mov   a,#$01
0bb9: d7 1e     mov   ($1e)+y,a
0bbb: 5f 2f 0c  jmp   $0c2f

; effect 04 - set vibrato
0bbe: e4 1b     mov   a,$1b
0bc0: 28 0f     and   a,#$0f
0bc2: 8d 07     mov   y,#$07
0bc4: d7 1e     mov   ($1e)+y,a
0bc6: e4 1b     mov   a,$1b
0bc8: 9f        xcn   a
0bc9: 28 0f     and   a,#$0f
0bcb: 5c        lsr   a
0bcc: dc        dec   y
0bcd: d7 1e     mov   ($1e)+y,a
0bcf: 5f 2f 0c  jmp   $0c2f

; effect 09
0bd2: e4 1b     mov   a,$1b
0bd4: cd 00     mov   x,#$00
0bd6: 3f 41 0d  call  $0d41
0bd9: 2f 54     bra   $0c2f

; effect 0d - pattern break
0bdb: 8f 00 02  mov   $02,#$00
0bde: 2f 4f     bra   $0c2f

; effect 0b - jump to song position
0be0: e4 1b     mov   a,$1b
0be2: c4 05     mov   $05,a
0be4: 2f f5     bra   $0bdb

; effect 0e
0be6: e4 1b     mov   a,$1b
0be8: 28 f0     and   a,#$f0
0bea: d0 43     bne   $0c2f
0bec: e4 1b     mov   a,$1b
0bee: 1c        asl   a
0bef: c4 20     mov   $20,a
0bf1: 1c        asl   a
0bf2: 60        clrc
0bf3: 84 20     adc   a,$20
0bf5: fd        mov   y,a
0bf6: f7 0e     mov   a,($0e)+y
0bf8: 8f 7d f2  mov   $f2,#$7d
0bfb: c4 f3     mov   $f3,a
0bfd: fc        inc   y
0bfe: f7 0e     mov   a,($0e)+y
0c00: 8f 0d f2  mov   $f2,#$0d
0c03: c4 f3     mov   $f3,a
0c05: fc        inc   y
0c06: f7 0e     mov   a,($0e)+y
0c08: 8f 4d f2  mov   $f2,#$4d
0c0b: c4 f3     mov   $f3,a
0c0d: fc        inc   y
0c0e: f7 0e     mov   a,($0e)+y
0c10: 8f 2c f2  mov   $f2,#$2c
0c13: c4 f3     mov   $f3,a
0c15: fc        inc   y
0c16: f7 0e     mov   a,($0e)+y
0c18: 8f 3c f2  mov   $f2,#$3c
0c1b: c4 f3     mov   $f3,a
0c1d: fc        inc   y
0c1e: f7 0e     mov   a,($0e)+y
0c20: cd 01     mov   x,#$01
0c22: 3f 41 0d  call  $0d41
0c25: 2f 08     bra   $0c2f

; effect 0f - set speed
0c27: e4 1b     mov   a,$1b		; set the current amount of ticks (tempo)
0c29: c4 01     mov   $01,a		; current tempo
0c2b: c4 00     mov   $00,a		; number of ticks left
0c2d: 2f 00     bra   $0c2f

; effect 00 - nop
0c2f: 6f        ret

; effect table (00-0f) - primary
; (effects are based on ProTracker format)
0c30: dw $0c2f				; 00 - nop
0c32: dw $0c2f				; 01 - nop (see secondary table)
0c34: dw $0c2f				; 02 - nop (see secondary table)
0c36: dw $0b7e				; 03 - portamento to note
0c38: dw $0bbe				; 04 - set vibrato
0c3a: dw $0c2f				; 05 - nop
0c3c: dw $0c2f				; 06 - nop (see secondary table)
0c3e: dw $0c2f				; 07 - nop
0c40: dw $0c2f				; 08 - nop (see secondary table)
0c42: dw $0bd2				; 09
0c44: dw $0c2f				; 0a - nop (see secondary table)
0c46: dw $0be0				; 0b - jump to song position
0c48: dw $0c2f				; 0c - nop (see secondary table)
0c4a: dw $0bdb				; 0d - pattern break
0c4c: dw $0be6				; 0e
0x4e: dw $0c27				; 0f - set speed

0c50: c4 12     mov   $12,a
0c52: e8 00     mov   a,#$00
0c54: c4 13     mov   $13,a
0c56: 0b 12     asl   $12
0c58: ba 12     movw  ya,$12
0c5a: 0b 12     asl   $12
0c5c: 7a 12     addw  ya,$12
0c5e: 7a 0a     addw  ya,$0a
0c60: da 12     movw  $12,ya
0c62: 8d 00     mov   y,#$00
0c64: f7 12     mov   a,($12)+y
0c66: 5d        mov   x,a
0c67: fc        inc   y
0c68: f7 12     mov   a,($12)+y
0c6a: 2d        push  a
0c6b: e4 1a     mov   a,$1a
0c6d: 68 0c     cmp   a,#$0c
0c6f: d0 0e     bne   $0c7f
0c71: e4 1b     mov   a,$1b
0c73: 8d 0b     mov   y,#$0b
0c75: d7 1e     mov   ($1e)+y,a
0c77: 8f 00 1a  mov   $1a,#$00
0c7a: 8f 00 1b  mov   $1b,#$00
0c7d: 2f 12     bra   $0c91
0c7f: e4 19     mov   a,$19
0c81: d0 06     bne   $0c89
0c83: 8d 0b     mov   y,#$0b
0c85: f7 1e     mov   a,($1e)+y
0c87: 2f 08     bra   $0c91
0c89: 8d 05     mov   y,#$05
0c8b: f7 12     mov   a,($12)+y
0c8d: 8d 0b     mov   y,#$0b
0c8f: d7 1e     mov   ($1e)+y,a
0c91: ee        pop   y
0c92: 2d        push  a
0c93: 4d        push  x
0c94: 6d        push  y
0c95: 3f 11 0d  call  $0d11
0c98: e4 18     mov   a,$18
0c9a: f0 2d     beq   $0cc9
0c9c: 8d 02     mov   y,#$02
0c9e: e4 14     mov   a,$14
0ca0: 08 05     or    a,#$05
0ca2: 5d        mov   x,a
0ca3: f7 12     mov   a,($12)+y
0ca5: d8 f2     mov   $f2,x
0ca7: c4 f3     mov   $f3,a
0ca9: fc        inc   y
0caa: 3d        inc   x
0cab: 28 80     and   a,#$80
0cad: d0 0b     bne   $0cba
0caf: 3d        inc   x
0cb0: f7 12     mov   a,($12)+y
0cb2: d8 f2     mov   $f2,x
0cb4: c4 f3     mov   $f3,a
0cb6: fc        inc   y
0cb7: 1d        dec   x
0cb8: 2f 07     bra   $0cc1
0cba: f7 12     mov   a,($12)+y
0cbc: d8 f2     mov   $f2,x
0cbe: c4 f3     mov   $f3,a
0cc0: fc        inc   y
0cc1: 1d        dec   x
0cc2: 1d        dec   x
0cc3: f7 12     mov   a,($12)+y
0cc5: d8 f2     mov   $f2,x
0cc7: c4 f3     mov   $f3,a
0cc9: 8d 08     mov   y,#$08
0ccb: ae        pop   a
0ccc: d7 1e     mov   ($1e)+y,a
0cce: fc        inc   y
0ccf: ae        pop   a
0cd0: d7 1e     mov   ($1e)+y,a
0cd2: 8d 02     mov   y,#$02
0cd4: ae        pop   a
0cd5: d7 1e     mov   ($1e)+y,a
0cd7: 6f        ret

0cd8: 1c        asl   a		; get note frequency
0cd9: fd        mov   y,a
0cda: e4 1a     mov   a,$1a
0cdc: 68 03     cmp   a,#$03
0cde: d0 11     bne   $0cf1
0ce0: 6d        push  y
0ce1: ce        pop   x
0ce2: 8d 0d     mov   y,#$0d
0ce4: f5 16 0e  mov   a,$0e16+x
0ce7: d7 1e     mov   ($1e)+y,a
0ce9: 3d        inc   x
0cea: fc        inc   y
0ceb: f5 16 0e  mov   a,$0e16+x
0cee: d7 1e     mov   ($1e)+y,a
0cf0: 6f        ret

0cf1: f8 14     mov   x,$14
0cf3: 3d        inc   x
0cf4: 3d        inc   x
0cf5: f6 16 0e  mov   a,$0e16+y
0cf8: 2d        push  a
0cf9: d8 f2     mov   $f2,x
0cfb: c4 f3     mov   $f3,a
0cfd: 3d        inc   x
0cfe: fc        inc   y
0cff: f6 16 0e  mov   a,$0e16+y
0d02: 2d        push  a
0d03: d8 f2     mov   $f2,x
0d05: c4 f3     mov   $f3,a
0d07: 8d 01     mov   y,#$01
0d09: ae        pop   a
0d0a: d7 1e     mov   ($1e)+y,a
0d0c: dc        dec   y
0d0d: ae        pop   a
0d0e: d7 1e     mov   ($1e)+y,a
0d10: 6f        ret

0d11: 2d        push  a
0d12: 4d        push  x
0d13: cf        mul   ya
0d14: f8 14     mov   x,$14
0d16: 3d        inc   x
0d17: d8 f2     mov   $f2,x
0d19: cb f3     mov   $f3,y
0d1b: ee        pop   y
0d1c: ae        pop   a
0d1d: cf        mul   ya
0d1e: f8 14     mov   x,$14
0d20: d8 f2     mov   $f2,x
0d22: cb f3     mov   $f3,y
0d24: 6f        ret

0d25: 4d        push  x		; set key on
0d26: 2d        push  a
0d27: 5d        mov   x,a
0d28: f5 0e 0e  mov   a,$0e0e+x
0d2b: 8f 4c f2  mov   $f2,#$4c
0d2e: c4 f3     mov   $f3,a
0d30: ae        pop   a
0d31: ce        pop   x
0d32: 6f        ret

0d33: 4d        push  x		; set key off
0d34: 2d        push  a
0d35: 5d        mov   x,a
0d36: f5 0e 0e  mov   a,$0e0e+x
0d39: 8f 5c f2  mov   $f2,#$5c
0d3c: c4 f3     mov   $f3,a
0d3e: ae        pop   a
0d3f: ce        pop   x
0d40: 6f        ret

0d41: 1c        asl   a
0d42: 1c        asl   a
0d43: 1c        asl   a
0d44: fd        mov   y,a
0d45: c8 00     cmp   x,#$00
0d47: d0 08     bne   $0d51
0d49: 8f fe 12  mov   $12,#$fe
0d4c: 8f 0d 13  mov   $13,#$0d
0d4f: 2f 06     bra   $0d57
0d51: 8f 06 12  mov   $12,#$06
0d54: 8f 0e 13  mov   $13,#$0e
0d57: 2d        push  a
0d58: 28 0f     and   a,#$0f
0d5a: fd        mov   y,a
0d5b: f7 12     mov   a,($12)+y
0d5d: 5d        mov   x,a
0d5e: ae        pop   a
0d5f: f7 0c     mov   a,($0c)+y
0d61: d8 f2     mov   $f2,x
0d63: c4 f3     mov   $f3,a
0d65: fc        inc   y
0d66: 2d        push  a
0d67: 28 0f     and   a,#$0f
0d69: fd        mov   y,a
0d6a: f7 12     mov   a,($12)+y
0d6c: 5d        mov   x,a
0d6d: ae        pop   a
0d6e: f7 0c     mov   a,($0c)+y
0d70: d8 f2     mov   $f2,x
0d72: c4 f3     mov   $f3,a
0d74: fc        inc   y
0d75: 2d        push  a
0d76: 28 0f     and   a,#$0f
0d78: fd        mov   y,a
0d79: f7 12     mov   a,($12)+y
0d7b: 5d        mov   x,a
0d7c: ae        pop   a
0d7d: f7 0c     mov   a,($0c)+y
0d7f: d8 f2     mov   $f2,x
0d81: c4 f3     mov   $f3,a
0d83: fc        inc   y
0d84: 2d        push  a
0d85: 28 0f     and   a,#$0f
0d87: fd        mov   y,a
0d88: f7 12     mov   a,($12)+y
0d8a: 5d        mov   x,a
0d8b: ae        pop   a
0d8c: f7 0c     mov   a,($0c)+y
0d8e: d8 f2     mov   $f2,x
0d90: c4 f3     mov   $f3,a
0d92: fc        inc   y
0d93: 2d        push  a
0d94: 28 0f     and   a,#$0f
0d96: fd        mov   y,a
0d97: f7 12     mov   a,($12)+y
0d99: 5d        mov   x,a
0d9a: ae        pop   a
0d9b: f7 0c     mov   a,($0c)+y
0d9d: d8 f2     mov   $f2,x
0d9f: c4 f3     mov   $f3,a
0da1: fc        inc   y
0da2: 2d        push  a
0da3: 28 0f     and   a,#$0f
0da5: fd        mov   y,a
0da6: f7 12     mov   a,($12)+y
0da8: 5d        mov   x,a
0da9: ae        pop   a
0daa: f7 0c     mov   a,($0c)+y
0dac: d8 f2     mov   $f2,x
0dae: c4 f3     mov   $f3,a
0db0: fc        inc   y
0db1: 2d        push  a
0db2: 28 0f     and   a,#$0f
0db4: fd        mov   y,a
0db5: f7 12     mov   a,($12)+y
0db7: 5d        mov   x,a
0db8: ae        pop   a
0db9: f7 0c     mov   a,($0c)+y
0dbb: d8 f2     mov   $f2,x
0dbd: c4 f3     mov   $f3,a
0dbf: fc        inc   y
0dc0: 2d        push  a
0dc1: 28 0f     and   a,#$0f
0dc3: fd        mov   y,a
0dc4: f7 12     mov   a,($12)+y
0dc6: 5d        mov   x,a
0dc7: ae        pop   a
0dc8: f7 0c     mov   a,($0c)+y
0dca: d8 f2     mov   $f2,x
0dcc: c4 f3     mov   $f3,a
0dce: fc        inc   y
0dcf: 6f        ret

0dd0: e4 f4     mov   a,$f4
0dd2: 64 27     cmp   a,$27
0dd4: 6f        ret

0dd5: ec fd 00  mov   y,$00fd
0dd8: f0 fb     beq   $0dd5
0dda: 00        nop
0ddb: fa f4 27  mov   ($27),($f4)
0dde: e4 f6     mov   a,$f6
0de0: fa 27 f5  mov   ($f5),($27)
0de3: 6f        ret

0de4: 8d 00     mov   y,#$00
0de6: 3f d5 0d  call  $0dd5
0de9: d7 12     mov   ($12)+y,a
0deb: fc        inc   y
0dec: d0 02     bne   $0df0
0dee: ab 13     inc   $13
0df0: 80        setc
0df1: b8 01 25  sbc   $25,#$01
0df4: b8 00 26  sbc   $26,#$00
0df7: e4 26     mov   a,$26
0df9: 04 25     or    a,$25
0dfb: d0 e9     bne   $0de6
0dfd: 6f        ret

0dfe: db $0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f,$c0,$c1,$c2,$c3,$c4,$c5,$c6,$c7

; channel/voice parameters for DSP
0e0e: db $80,$40,$20,$10,$08,$04,$02,$01

; note frequency table
0e16: dw $3f,$00,$43,$00,$47,$00,$4b,$00,$50,$00,$55,$00,$5a,$00,$5f,$00,$65,$00,$6b,$00,$72,$00,$78,$00,$7f,$00,$87,$00,$8f,$00,$98,$00,$a1,$00,$aa,$00,$b4,$00,$bf,$00,$ca,$00,$d7,$00,$e4,$00,$f1,$00,$ff,$00,$0f,$01,$1f,$01,$30,$01,$42,$01,$55,$01,$69,$01,$7f,$01,$96,$01,$ae,$01,$c8,$01,$e3,$01,$ff,$01,$1e,$02,$3e,$02,$60,$02,$85,$02,$ab,$02,$d3,$02,$fe,$02,$2c,$03,$5c,$03,$90,$03,$c6,$03,$00,$04,$3c,$04,$7d,$04,$c1,$04,$0a,$05,$56,$05,$a8,$05,$fe,$05,$59,$06,$b9,$06,$20,$07,$8c,$07,$00,$08,$79,$08,$fa,$08,$83,$09,$14,$0a,$ad,$0a,$50,$0b,$fc,$0b,$b2,$0c,$74,$0d,$41,$0e,$1a,$0f,$00,$10,$f3,$10,$f5,$11,$06,$13,$28,$14,$5b,$15,$a0,$16,$f9,$17,$65,$19,$e8,$1a,$82,$1c,$34,$1e,$00,$20,$e7,$21,$eb,$23,$0e,$26,$51,$28,$b7,$2a,$41,$2d,$f2,$2f,$cc,$32,$d1,$35,$04,$39,$68,$3c


0ed6:,$00,$00,$01,$00,$10,$00,$11,$00,$20,$00,$21,$00,$30,$00,$31,$00,$40,$00,$41,$00,$50,$00,$51,$00,$60,$00,$61,$00,$70,$00,$71,$00,$4c,$00,$5c,$ff,$6c,$38,$0d,$00,$2d,$00,$3d,$00,$4d,$00,$5d,$02,$6d,$60,$7d,$00,$0f,$7f,$1f,$00,$2f,$00,$3f,$00,$4f,$00,$5f,$00,$6f,$00,$7f,$00,$c0,$7f,$c1,$00,$c2,$00,$c3,$00,$c4,$00,$c5,$00,$c6,$00,$c7,$00,$0c,$7f,$1c,$7f,$2c,$00,$3c,$00,$ff
