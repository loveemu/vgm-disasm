0200: c0        di
0201: cd ff     mov   x,#$ff
0203: bd        mov   sp,x
0204: e8 00     mov   a,#$00
0206: 2d        push  a
0207: 8e        pop   psw
0208: 20        clrp
0209: 8f 37 f1  mov   $f1,#$37
020c: cd 00     mov   x,#$00
020e: f5 b0 05  mov   a,$05b0+x
0211: c4 f2     mov   $f2,a
0213: f5 b1 05  mov   a,$05b1+x
0216: c4 f3     mov   $f3,a
0218: 3d        inc   x
0219: 3d        inc   x
021a: c8 14     cmp   x,#$14
021c: d0 f0     bne   $020e
021e: cd 00     mov   x,#$00
0220: af        mov   (x)+,a
0221: c8 f0     cmp   x,#$f0
0223: d0 fb     bne   $0220
0225: 8f 00 08  mov   $08,#$00
0228: 8f 11 09  mov   $09,#$11
022b: e8 00     mov   a,#$00
022d: fd        mov   y,a
022e: d7 08     mov   ($08)+y,a
0230: cd 05     mov   x,#$05
0232: 1d        dec   x
0233: d0 fd     bne   $0232
0235: 3a 08     incw  $08
0237: 78 ff 09  cmp   $09,#$ff
023a: d0 f2     bne   $022e
023c: c4 f7     mov   $f7,a
023e: c4 f4     mov   $f4,a
0240: cd ff     mov   x,#$ff
0242: bd        mov   sp,x
0243: 8f 04 1e  mov   $1e,#$04
0246: e8 01     mov   a,#$01
0248: c4 1d     mov   $1d,a
024a: c4 3c     mov   $3c,a
024c: 3f ee 05  call  $05ee
024f: 8f 3f 48  mov   $48,#$3f
0252: 3f df 10  call  $10df
0255: cd ff     mov   x,#$ff
0257: bd        mov   sp,x
0258: 3f 70 02  call  $0270
025b: 3f b9 02  call  $02b9
025e: e4 3c     mov   a,$3c
0260: d0 f3     bne   $0255
0262: e4 fd     mov   a,$fd
0264: f0 ef     beq   $0255
0266: 2d        push  a
0267: 3f 7c 0e  call  $0e7c
026a: ae        pop   a
026b: 9c        dec   a
026c: d0 f8     bne   $0266
026e: 2f e5     bra   $0255
0270: e4 f6     mov   a,$f6
0272: c4 49     mov   $49,a
0274: 78 00 3a  cmp   $3a,#$00
0277: f0 02     beq   $027b
0279: e8 00     mov   a,#$00
027b: 68 80     cmp   a,#$80
027d: b0 1b     bcs   $029a
027f: 8f 0c f2  mov   $f2,#$0c
0282: c4 f3     mov   $f3,a
0284: 8f 1c f2  mov   $f2,#$1c
0287: c4 f3     mov   $f3,a
0289: 80        setc
028a: a8 22     sbc   a,#$22
028c: b0 02     bcs   $0290
028e: e8 00     mov   a,#$00
0290: 8f 2c f2  mov   $f2,#$2c
0293: c4 f3     mov   $f3,a
0295: 8f 3c f2  mov   $f2,#$3c
0298: c4 f3     mov   $f3,a
029a: e4 3b     mov   a,$3b
029c: 04 32     or    a,$32
029e: 04 33     or    a,$33
02a0: 04 34     or    a,$34
02a2: 04 35     or    a,$35
02a4: 04 3a     or    a,$3a
02a6: 08 20     or    a,#$20
02a8: 04 46     or    a,$46
02aa: c4 f4     mov   $f4,a
02ac: 3f 98 05  call  $0598
02af: 1c        asl   a
02b0: 5d        mov   x,a
02b1: 1f b4 02  jmp   ($02b4+x)

02b4: dw $02b8
02b6: dw $0345

02b8: ret

02b9: e4 f4	mov   a,$f4
02bb: 28 80	and   a,$80
02bd: 64 3b	cmp   a,$3b
02bf: f0 42     beq   $0303
02c1: e4 3b     mov   a,$3b
02c3: 48 80     eor   a,#$80
02c5: c4 3b     mov   $3b,a
02c7: f8 f4     mov   x,$f4
02c9: eb f5     mov   y,$f5
02cb: 04 32     or    a,$32
02cd: 04 33     or    a,$33
02cf: 04 34     or    a,$34
02d1: 04 35     or    a,$35
02d3: 04 3a     or    a,$3a
02d5: 08 20     or    a,#$20
02d7: 04 46     or    a,$46
02d9: c4 f4     mov   $f4,a
02db: 7d        mov   a,x
02dc: 28 7f     and   a,#$7f
02de: 1c        asl   a
02df: 30 23     bmi   $0304
02e1: 68 1a     cmp   a,#$1a
02e3: b0 1e     bcs   $0303
02e5: 5d        mov   x,a
02e6: 1f e9 02  jmp   ($02e9+x)

02e9: dw $0303
02eb: dw $0b15
02ed: dw $0a7c
02ef: dw $0ac7
02f1: dw $030a
02f3: dw $030e
02f5: dw $0312
02f7: dw $0318
02f9: dw $0323
02fb: dw $0307
02fd: dw $0a11
02ff: dw $0f17
0301: dw $0338

0303: 6f        ret

0304: 5f c5 0e  jmp   $0ec5
0307: cb 3f     mov   $3f,y
0309: 6f        ret

030a: 8f 10 3a  mov   $3a,#$10
030d: 6f        ret

030e: 8f 00 3a  mov   $3a,#$00
0311: 6f        ret

0312: 8f 00 32  mov   $32,#$00
0315: 5f 9e 03  jmp   $039e

0318: 78 00 35  cmp   $35,#$00
031b: d0 11     bne   $032e
031d: 8f 00 33  mov   $33,#$00
0320: 5f c2 03  jmp   $03c2

0323: 78 00 35  cmp   $35,#$00
0326: d0 06     bne   $032e
0328: 8f 00 34  mov   $34,#$00
032b: 5f c6 03  jmp   $03c6

032e: 3f 1d 03  call  $031d
0331: 3f 28 03  call  $0328
0334: 8f 00 35  mov   $35,#$00
0337: 6f        ret

0338: 8f 01 47  mov   $47,#$01
033b: 3f 7f 10  call  $107f
033e: e4 30     mov   a,$30
0340: 28 7f     and   a,#$7f
0342: c4 f6     mov   $f6,a
0344: 6f        ret

0345: 8d 00     mov   y,#$00
0347: dd        mov   a,y
0348: c4 32     mov   $32,a
034a: c4 33     mov   $33,a
034c: c4 34     mov   $34,a
034e: d6 84 12  mov   $1284+y,a
0351: d6 84 13  mov   $1384+y,a
0354: d6 84 15  mov   $1584+y,a
0357: fc        inc   y
0358: d0 f4     bne   $034e
035a: 3f 98 03  call  $0398
035d: 3f 67 04  call  $0467
0360: 8f 10 04  mov   $04,#$10
0363: 8f 00 05  mov   $05,#$00
0366: 8d 00     mov   y,#$00
0368: e8 02     mov   a,#$02
036a: 3f 65 05  call  $0565
036d: e4 10     mov   a,$10
036f: 3f d7 03  call  $03d7
0372: e4 11     mov   a,$11
0374: 3f e8 03  call  $03e8
0377: e4 10     mov   a,$10
0379: 30 03     bmi   $037e
037b: 3f 76 04  call  $0476
037e: e4 11     mov   a,$11
0380: 30 03     bmi   $0385
0382: 3f 6e 04  call  $046e
0385: 3f 9a 04  call  $049a
0388: e8 00     mov   a,#$00
038a: c4 3c     mov   $3c,a
038c: c4 3b     mov   $3b,a
038e: c4 f4     mov   $f4,a
0390: 78 00 f4  cmp   $f4,#$00
0393: d0 fb     bne   $0390
0395: e4 fd     mov   a,$fd
0397: 6f        ret

0398: 8f 08 0c  mov   $0c,#$08
039b: 5f a1 03  jmp   $03a1

039e: 8f 06 0c  mov   $0c,#$06
03a1: cd 00     mov   x,#$00
03a3: e8 00     mov   a,#$00
03a5: d4 7a     mov   $7a+x,a
03a7: d4 82     mov   $82+x,a
03a9: d5 57 06  mov   $0657+x,a
03ac: d4 52     mov   $52+x,a
03ae: d4 4a     mov   $4a+x,a
03b0: 3d        inc   x
03b1: 3e 0c     cmp   x,$0c
03b3: d0 f0     bne   $03a5
03b5: cd 00     mov   x,#$00
03b7: 4d        push  x
03b8: 3f c8 07  call  $07c8
03bb: ce        pop   x
03bc: 3d        inc   x
03bd: c8 08     cmp   x,#$08
03bf: d0 f6     bne   $03b7
03c1: 6f        ret

03c2: cd 06     mov   x,#$06
03c4: 2f 02     bra   $03c8
03c6: cd 07     mov   x,#$07
03c8: e8 00     mov   a,#$00
03ca: d4 7a     mov   $7a+x,a
03cc: d4 82     mov   $82+x,a
03ce: d5 57 06  mov   $0657+x,a
03d1: 6d        push  y
03d2: 3f c8 07  call  $07c8
03d5: ee        pop   y
03d6: 6f        ret

03d7: fa 16 12  mov   ($12),($16)
03da: fa 17 13  mov   ($13),($17)
03dd: 68 ff     cmp   a,#$ff
03df: f0 06     beq   $03e7
03e1: 3f 46 04  call  $0446
03e4: 3f 01 04  call  $0401
03e7: 6f        ret

03e8: fa 16 14  mov   ($14),($16)
03eb: fa 17 15  mov   ($15),($17)
03ee: 68 ff     cmp   a,#$ff
03f0: f0 06     beq   $03f8
03f2: 3f 46 04  call  $0446
03f5: 3f f9 03  call  $03f9
03f8: 6f        ret

03f9: fa 14 08  mov   ($08),($14)
03fc: fa 15 09  mov   ($09),($15)
03ff: 2f 06     bra   $0407
0401: fa 12 08  mov   ($08),($12)
0404: fa 13 09  mov   ($09),($13)
0407: 8d 51     mov   y,#$51
0409: 3f 36 04  call  $0436
040c: 8d 4d     mov   y,#$4d
040e: f7 08     mov   a,($08)+y
0410: f0 23     beq   $0435
0412: 5d        mov   x,a
0413: 8d 51     mov   y,#$51
0415: f7 08     mov   a,($08)+y
0417: c4 0a     mov   $0a,a
0419: fc        inc   y
041a: f7 08     mov   a,($08)+y
041c: c4 0b     mov   $0b,a
041e: 8d 00     mov   y,#$00
0420: f7 0a     mov   a,($0a)+y
0422: 60        clrc
0423: 84 08     adc   a,$08
0425: d7 0a     mov   ($0a)+y,a
0427: fc        inc   y
0428: f7 0a     mov   a,($0a)+y
042a: 84 09     adc   a,$09
042c: d7 0a     mov   ($0a)+y,a
042e: 3a 0a     incw  $0a
0430: 3a 0a     incw  $0a
0432: 1d        dec   x
0433: d0 e9     bne   $041e
0435: 6f        ret

0436: f7 08     mov   a,($08)+y
0438: 60        clrc
0439: 84 08     adc   a,$08
043b: d7 08     mov   ($08)+y,a
043d: fc        inc   y
043e: f7 08     mov   a,($08)+y
0440: 84 09     adc   a,$09
0442: d7 08     mov   ($08)+y,a
0444: dc        dec   y
0445: 6f        ret

0446: 8f 0c 04  mov   $04,#$0c
0449: 8f 00 05  mov   $05,#$00
044c: e8 02     mov   a,#$02
044e: 8d 00     mov   y,#$00
0450: 3f 65 05  call  $0565
0453: fa 16 04  mov   ($04),($16)
0456: fa 17 05  mov   ($05),($17)
0459: e4 0c     mov   a,$0c
045b: eb 0d     mov   y,$0d
045d: 3f 65 05  call  $0565
0460: fa 04 16  mov   ($16),($04)
0463: fa 05 17  mov   ($17),($05)
0466: 6f        ret

0467: 8f ec 16  mov   $16,#$ec
046a: 8f 17 17  mov   $17,#$17
046d: 6f        ret

046e: 8f 84 02  mov   $02,#$84
0471: 8f 12 03  mov   $03,#$12
0474: 2f 06     bra   $047c
0476: 8f 84 02  mov   $02,#$84
0479: 8f 14 03  mov   $03,#$14
047c: e8 1f     mov   a,#$1f
047e: 2d        push  a
047f: e4 02     mov   a,$02
0481: c4 04     mov   $04,a
0483: e4 03     mov   a,$03
0485: c4 05     mov   $05,a
0487: e8 10     mov   a,#$10
0489: 8d 00     mov   y,#$00
048b: 3f 65 05  call  $0565
048e: 60        clrc
048f: 98 10 02  adc   $02,#$10
0492: 98 00 03  adc   $03,#$00
0495: ae        pop   a
0496: 9c        dec   a
0497: d0 e5     bne   $047e
0499: 6f        ret

049a: 8f 84 0a  mov   $0a,#$84
049d: 8f 12 0b  mov   $0b,#$12
04a0: 8f 04 08  mov   $08,#$04
04a3: 8f 12 09  mov   $09,#$12
04a6: 8d 7f     mov   y,#$7f
04a8: e8 00     mov   a,#$00
04aa: d7 08     mov   ($08)+y,a
04ac: dc        dec   y
04ad: 10 fb     bpl   $04aa
04af: e8 3f     mov   a,#$3f
04b1: cd 00     mov   x,#$00
04b3: 2d        push  a
04b4: 8d 02     mov   y,#$02
04b6: f7 0a     mov   a,($0a)+y
04b8: 28 7f     and   a,#$7f
04ba: fd        mov   y,a
04bb: f7 08     mov   a,($08)+y
04bd: d0 1a     bne   $04d9
04bf: 7d        mov   a,x
04c0: 6d        push  y
04c1: 8d 0d     mov   y,#$0d
04c3: d7 0a     mov   ($0a)+y,a
04c5: 8d 02     mov   y,#$02
04c7: f7 0a     mov   a,($0a)+y
04c9: ee        pop   y
04ca: 2d        push  a
04cb: 7d        mov   a,x
04cc: 08 80     or    a,#$80
04ce: d7 08     mov   ($08)+y,a
04d0: ae        pop   a
04d1: 4d        push  x
04d2: 3f fe 04  call  $04fe
04d5: ce        pop   x
04d6: 3d        inc   x
04d7: 2f 06     bra   $04df
04d9: 28 7f     and   a,#$7f
04db: 8d 0d     mov   y,#$0d
04dd: d7 0a     mov   ($0a)+y,a
04df: 60        clrc
04e0: 98 10 0a  adc   $0a,#$10
04e3: 98 00 0b  adc   $0b,#$00
04e6: ae        pop   a
04e7: 9c        dec   a
04e8: d0 c9     bne   $04b3
04ea: e8 ff     mov   a,#$ff
04ec: c4 f4     mov   $f4,a
04ee: 3f f1 04  call  $04f1
04f1: e4 0f     mov   a,$0f
04f3: 64 f7     cmp   a,$f7
04f5: f0 fc     beq   $04f3
04f7: ab 0f     inc   $0f
04f9: e4 0f     mov   a,$0f
04fb: c4 f7     mov   $f7,a
04fd: 6f        ret

04fe: c4 f4     mov   $f4,a
0500: 7d        mov   a,x
0501: 1c        asl   a
0502: 1c        asl   a
0503: fd        mov   y,a
0504: e4 16     mov   a,$16
0506: d6 00 11  mov   $1100+y,a
0509: e4 17     mov   a,$17
050b: d6 01 11  mov   $1101+y,a
050e: e4 0f     mov   a,$0f
0510: 64 f7     cmp   a,$f7
0512: f0 fc     beq   $0510
0514: ab 0f     inc   $0f
0516: e4 0f     mov   a,$0f
0518: c4 f7     mov   $f7,a
051a: e4 0f     mov   a,$0f
051c: 64 f7     cmp   a,$f7
051e: f0 fc     beq   $051c
0520: e4 f5     mov   a,$f5
0522: c4 06     mov   $06,a
0524: e4 f6     mov   a,$f6
0526: c4 07     mov   $07,a
0528: ab 0f     inc   $0f
052a: e4 0f     mov   a,$0f
052c: c4 f7     mov   $f7,a
052e: e4 06     mov   a,$06
0530: 04 07     or    a,$07
0532: f0 30     beq   $0564
0534: 1a 06     decw  $06
0536: 1a 06     decw  $06
0538: e4 0f     mov   a,$0f
053a: 64 f7     cmp   a,$f7
053c: f0 fc     beq   $053a
053e: e4 f5     mov   a,$f5
0540: 60        clrc
0541: 84 16     adc   a,$16
0543: d6 02 11  mov   $1102+y,a
0546: e4 f6     mov   a,$f6
0548: 84 17     adc   a,$17
054a: d6 03 11  mov   $1103+y,a
054d: ab 0f     inc   $0f
054f: e4 0f     mov   a,$0f
0551: c4 f7     mov   $f7,a
0553: fa 16 04  mov   ($04),($16)
0556: fa 17 05  mov   ($05),($17)
0559: ba 16     movw  ya,$16
055b: 7a 06     addw  ya,$06
055d: da 16     movw  $16,ya
055f: ba 06     movw  ya,$06
0561: 3f 65 05  call  $0565
0564: 6f        ret

0565: 2d        push  a			; copy data to SPC700
0566: 28 01     and   a,#$01
0568: ae        pop   a
0569: f0 09     beq   $0574
056b: 60        clrc
056c: 88 01     adc   a,#$01
056e: 2d        push  a
056f: dd        mov   a,y
0570: 88 00     adc   a,#$00
0572: fd        mov   y,a
0573: ae        pop   a
0574: da 06     movw  $06,ya
0576: 4b 07     lsr   $07
0578: 6b 06     ror   $06
057a: cd 00     mov   x,#$00
057c: e4 0f     mov   a,$0f
057e: 64 f7     cmp   a,$f7
0580: f0 fc     beq   $057e
0582: e4 f5     mov   a,$f5
0584: c7 04     mov   ($04+x),a
0586: 3a 04     incw  $04
0588: e4 f6     mov   a,$f6
058a: c7 04     mov   ($04+x),a
058c: 3a 04     incw  $04
058e: ab 0f     inc   $0f
0590: fa 0f f7  mov   ($f7),($0f)
0593: 1a 06     decw  $06
0595: d0 e5     bne   $057c
0597: 6f        ret

0598: e4 0f     mov   a,$0f
059a: 64 f7     cmp   a,$f7
059c: f0 0f     beq   $05ad
059e: 4d        push  x
059f: f8 f5     mov   x,$f5
05a1: f0 07     beq   $05aa
05a3: eb f6     mov   y,$f6
05a5: ab 0f     inc   $0f
05a7: bc        inc   a
05a8: c4 f7     mov   $f7,a
05aa: 7d        mov   a,x
05ab: ce        pop   x
05ac: 6f        ret

05ad: e8 00     mov   a,#$00
05af: 6f        ret

05b0: db $6c,$73,$6d,$df,$7d,$04,$0d,$00,$5c,$ff,$4d,$00,$0c,$00,$1c,$00,$2c,$00,$3c,$00,$5d,$11,$2d,$00,$3d,$00,$0f,$7f,$1f,$00,$2f,$00,$3f,$00,$4f,$00,$5f,$00,$6f,$00,$7f,$00,$5c,$00,$0c,$7f,$1c,$7f,$0c,$7f,$1c,$7f,$2c,$5a,$3c,$5a,$4d,$00,$0d,$28,$6c,$13,$cd,$00,$f5,$c4,$05,$c4,$f2,$f5,$c5,$05,$c4,$f3,$3d,$3d,$c8,$2a,$d0,$f0,$8f,$07,$f1,$8f,$00,$f1,$e4,$fd,$8f,$28,$fa,$8f,$01,$f1,$6f

060f: db $3a,$31,$12,$00,$00,$00,$69,$69

0617: db $27,$30,$17,$00,$00,$00,$64,$64,$01,$09,$02,$02,$02,$02,$02,$02,$8b,$dd,$9f,$ff,$ff,$ff,$8f,$8f,$a0,$ef,$17,$1f,$1f,$1f,$df,$df

0637: db $60,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00

064f: db $40,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$01,$01,$01,$01,$01,$01

067f: 8f 00 09  mov   $09,#$00
0682: 1c        asl   a			; restore original value
0683: 1c        asl   a
0684: 1c        asl   a
0685: c4 08     mov   $08,a
0687: 0b 08     asl   $08
0689: 2b 09     rol   $09
068b: 60        clrc
068c: 98 84 08  adc   $08,#$84		; copy instrument/DSP data to work space
068f: 98 12 09  adc   $09,#$12
0692: c8 06     cmp   x,#$06
0694: 90 07     bcc   $069d
0696: 60        clrc
0697: 98 00 08  adc   $08,#$00
069a: 98 02 09  adc   $09,#$02

06ae: f7 08     mov   a,($08)+y
06b0: d7 0a     mov   ($0a)+y,a
06b2: 3a 08     incw  $08
06b4: 98 08 0a  adc   $0a,#$08
06b7: 98 00 0b  adc   $0b,#$00
06ba: 6e 0d f1  dbnz  $0d,$06ae
06bd: f5 4f 06  mov   a,$064f+x
06c0: d4 d2     mov   $d2+x,a
06c2: f5 37 06  mov   a,$0637+x
06c5: d4 8a     mov   $8a+x,a
06c7: e8 00     mov   a,#$00
06c9: d4 92     mov   $92+x,a
06cb: d4 9a     mov   $9a+x,a
06cd: d4 4a     mov   $4a+x,a
06cf: d4 52     mov   $52+x,a
06d1: f4 ca     mov   a,$ca+x
06d3: f0 03     beq   $06d8
06d5: 3f 08 07  call  $0708
06d8: 78 00 3f  cmp   $3f,#$00
06db: f0 20     beq   $06fd
06dd: f5 0f 06  mov   a,$060f+x
06e0: 10 05     bpl   $06e7
06e2: 48 ff     eor   a,#$ff
06e4: 60        clrc
06e5: 88 01     adc   a,#$01
06e7: c4 0d     mov   $0d,a
06e9: f5 17 06  mov   a,$0617+x
06ec: 10 05     bpl   $06f3
06ee: 48 ff     eor   a,#$ff
06f0: 60        clrc
06f1: 88 01     adc   a,#$01
06f3: 60        clrc
06f4: 84 0d     adc   a,$0d
06f6: 5c        lsr   a
06f7: d5 0f 06  mov   $060f+x,a
06fa: d5 17 06  mov   $0617+x,a
06fd: f5 0f 06  mov   a,$060f+x
0700: d4 7a     mov   $7a+x,a
0702: f5 17 06  mov   a,$0617+x
0705: d4 82     mov   $82+x,a
0707: 6f        ret

0708: 78 00 3f  cmp   $3f,#$00
070b: f0 01     beq   $070e
070d: 6f        ret

070e: 2d        push  a
070f: f5 0f 06  mov   a,$060f+x
0712: 10 05     bpl   $0719
0714: 48 ff     eor   a,#$ff
0716: 60        clrc
0717: 88 01     adc   a,#$01
0719: c4 0c     mov   $0c,a
071b: f5 17 06  mov   a,$0617+x
071e: 10 05     bpl   $0725
0720: 48 ff     eor   a,#$ff
0722: 60        clrc
0723: 88 01     adc   a,#$01
0725: 60        clrc
0726: 84 0c     adc   a,$0c
0728: 5c        lsr   a
0729: c4 0c     mov   $0c,a
072b: ae        pop   a
072c: 6d        push  y
072d: 2d        push  a
072e: eb 0c     mov   y,$0c
0730: cf        mul   ya
0731: cb 0d     mov   $0d,y
0733: 1c        asl   a
0734: 2b 0d     rol   $0d
0736: e4 0d     mov   a,$0d
0738: d5 0f 06  mov   $060f+x,a
073b: ae        pop   a
073c: c4 0d     mov   $0d,a
073e: e8 80     mov   a,#$80
0740: 80        setc
0741: a4 0d     sbc   a,$0d
0743: eb 0c     mov   y,$0c
0745: cf        mul   ya
0746: cb 0d     mov   $0d,y
0748: 1c        asl   a
0749: 2b 0d     rol   $0d
074b: e4 0d     mov   a,$0d
074d: d5 17 06  mov   $0617+x,a
0750: ee        pop   y
0751: 6f        ret

0752: d4 c2     mov   $c2+x,a		; play note
0754: 5c        lsr   a
0755: 5c        lsr   a
0756: fd        mov   y,a
0757: f6 b9 0c  mov   a,$0cb9+y
075a: d4 da     mov   $da+x,a
075c: f4 c2     mov   a,$c2+x
075e: 9c        dec   a
075f: 1c        asl   a
0760: fd        mov   y,a
0761: f6 d4 0d  mov   a,$0dd4+y
0764: d4 5a     mov   $5a+x,a
0766: f6 d5 0d  mov   a,$0dd5+y
0769: d4 62     mov   $62+x,a
076b: f5 0f 06  mov   a,$060f+x
076e: d4 7a     mov   $7a+x,a
0770: f5 17 06  mov   a,$0617+x
0773: d4 82     mov   $82+x,a
0775: f5 4f 06  mov   a,$064f+x
0778: d4 d2     mov   $d2+x,a
077a: f5 37 06  mov   a,$0637+x
077d: d4 8a     mov   $8a+x,a
077f: e8 00     mov   a,#$00
0781: d4 92     mov   $92+x,a
0783: d4 9a     mov   $9a+x,a
0785: d4 4a     mov   $4a+x,a
0787: d4 52     mov   $52+x,a
0789: e8 ff     mov   a,#$ff
078b: d4 a2     mov   $a2+x,a
078d: c8 06     cmp   x,#$06
078f: 90 16     bcc   $07a7
0791: f5 67 06  mov   a,$0667+x
0794: 28 02     and   a,#$02
0796: f0 0f     beq   $07a7
0798: 8f 6c f2  mov   $f2,#$6c
079b: f4 c2     mov   a,$c2+x
079d: 9c        dec   a
079e: 28 1f     and   a,#$1f
07a0: c4 f3     mov   $f3,a
07a2: 1c        asl   a
07a3: 1c        asl   a
07a4: 1c        asl   a
07a5: c4 42     mov   $42,a
07a7: 6f        ret

07a8: f4 aa     mov   a,$aa+x
07aa: 30 0e     bmi   $07ba
07ac: 60        clrc
07ad: 84 42     adc   a,$42
07af: c4 42     mov   $42,a
07b1: 8f 6c f2  mov   $f2,#$6c
07b4: 5c        lsr   a
07b5: 5c        lsr   a
07b6: 5c        lsr   a
07b7: c4 f3     mov   $f3,a
07b9: 6f        ret

07ba: 48 ff     eor   a,#$ff
07bc: 60        clrc
07bd: 88 01     adc   a,#$01
07bf: c4 0a     mov   $0a,a
07c1: e4 42     mov   a,$42
07c3: 80        setc
07c4: a4 0a     sbc   a,$0a
07c6: 2f e7     bra   $07af
07c8: f4 d2     mov   a,$d2+x
07ca: f0 05     beq   $07d1
07cc: 9c        dec   a
07cd: d4 d2     mov   $d2+x,a
07cf: 2f 37     bra   $0808
07d1: f5 57 06  mov   a,$0657+x
07d4: f0 32     beq   $0808
07d6: f5 5f 06  mov   a,$065f+x
07d9: 60        clrc
07da: 94 92     adc   a,$92+x
07dc: d4 92     mov   $92+x,a
07de: 2d        push  a
07df: f5 57 06  mov   a,$0657+x
07e2: 28 07     and   a,#$07
07e4: 48 ff     eor   a,#$ff
07e6: bc        inc   a
07e7: 28 07     and   a,#$07
07e9: fd        mov   y,a
07ea: ae        pop   a
07eb: f0 0c     beq   $07f9
07ed: 2d        push  a
07ee: 28 80     and   a,#$80
07f0: c4 0c     mov   $0c,a
07f2: ae        pop   a
07f3: 5c        lsr   a
07f4: 04 0c     or    a,$0c
07f6: dc        dec   y
07f7: d0 fa     bne   $07f3
07f9: 3f 3b 09  call  $093b
07fc: 4d        push  x
07fd: 2d        push  a
07fe: 7d        mov   a,x
07ff: 60        clrc
0800: 88 08     adc   a,#$08
0802: 5d        mov   x,a
0803: ae        pop   a
0804: 3f 3b 09  call  $093b
0807: ce        pop   x
0808: f4 4a     mov   a,$4a+x
080a: c4 0a     mov   $0a,a
080c: f4 52     mov   a,$52+x
080e: c4 0b     mov   $0b,a
0810: 04 0a     or    a,$0a
0812: f0 22     beq   $0836
0814: f5 67 06  mov   a,$0667+x
0817: 28 02     and   a,#$02
0819: f0 03     beq   $081e
081b: 3f a8 07  call  $07a8
081e: f4 62     mov   a,$62+x
0820: 5c        lsr   a
0821: 5c        lsr   a
0822: 5c        lsr   a
0823: f0 07     beq   $082c
0825: 0b 0a     asl   $0a
0827: 2b 0b     rol   $0b
0829: 9c        dec   a
082a: d0 f9     bne   $0825
082c: fb 62     mov   y,$62+x
082e: f4 5a     mov   a,$5a+x
0830: 7a 0a     addw  ya,$0a
0832: d4 5a     mov   $5a+x,a
0834: db 62     mov   $62+x,y
0836: f4 5a     mov   a,$5a+x
0838: d4 6a     mov   $6a+x,a
083a: f4 62     mov   a,$62+x
083c: d4 72     mov   $72+x,a
083e: f5 3f 06  mov   a,$063f+x
0841: f0 49     beq   $088c
0843: f4 8a     mov   a,$8a+x
0845: f0 05     beq   $084c
0847: 9c        dec   a
0848: d4 8a     mov   $8a+x,a
084a: 2f 40     bra   $088c
084c: f5 47 06  mov   a,$0647+x
084f: 60        clrc
0850: 94 9a     adc   a,$9a+x
0852: d4 9a     mov   $9a+x,a
0854: fd        mov   y,a
0855: f6 d4 0c  mov   a,$0cd4+y
0858: 0d        push  psw
0859: 10 03     bpl   $085e
085b: 48 ff     eor   a,#$ff
085d: bc        inc   a
085e: fd        mov   y,a
085f: f5 3f 06  mov   a,$063f+x
0862: cf        mul   ya
0863: da 0c     movw  $0c,ya
0865: 4b 0d     lsr   $0d
0867: 6b 0c     ror   $0c
0869: f4 da     mov   a,$da+x
086b: f0 07     beq   $0874
086d: 4b 0d     lsr   $0d
086f: 6b 0c     ror   $0c
0871: 9c        dec   a
0872: d0 f9     bne   $086d
0874: 8e        pop   psw
0875: 10 08     bpl   $087f
0877: 58 ff 0c  eor   $0c,#$ff
087a: 58 ff 0d  eor   $0d,#$ff
087d: 3a 0c     incw  $0c
087f: e4 0c     mov   a,$0c
0881: 60        clrc
0882: 94 6a     adc   a,$6a+x
0884: d4 6a     mov   $6a+x,a
0886: e4 0d     mov   a,$0d
0888: 94 72     adc   a,$72+x
088a: d4 72     mov   $72+x,a
088c: 78 00 47  cmp   $47,#$00
088f: f0 0c     beq   $089d
0891: c8 04     cmp   x,#$04
0893: d0 08     bne   $089d
0895: 38 ef 41  and   $41,#$ef
0898: e8 00     mov   a,#$00
089a: d4 a2     mov   $a2+x,a
089c: 6f        ret

089d: f5 2b 09  mov   a,$092b+x
08a0: c4 0d     mov   $0d,a
08a2: 48 ff     eor   a,#$ff
08a4: c4 43     mov   $43,a
08a6: f5 33 09  mov   a,$0933+x
08a9: fd        mov   y,a
08aa: dd        mov   a,y
08ab: 08 00     or    a,#$00
08ad: c4 f2     mov   $f2,a
08af: f4 7a     mov   a,$7a+x
08b1: c4 f3     mov   $f3,a
08b3: dd        mov   a,y
08b4: 08 01     or    a,#$01
08b6: c4 f2     mov   $f2,a
08b8: f4 82     mov   a,$82+x
08ba: c4 f3     mov   $f3,a
08bc: dd        mov   a,y
08bd: 08 02     or    a,#$02
08bf: c4 f2     mov   $f2,a
08c1: f4 6a     mov   a,$6a+x
08c3: c4 f3     mov   $f3,a
08c5: dd        mov   a,y
08c6: 08 03     or    a,#$03
08c8: c4 f2     mov   $f2,a
08ca: f4 72     mov   a,$72+x
08cc: c4 f3     mov   $f3,a
08ce: dd        mov   a,y
08cf: 08 05     or    a,#$05
08d1: c4 f2     mov   $f2,a
08d3: f5 27 06  mov   a,$0627+x
08d6: c4 f3     mov   $f3,a
08d8: dd        mov   a,y
08d9: 08 06     or    a,#$06
08db: c4 f2     mov   $f2,a
08dd: f5 2f 06  mov   a,$062f+x
08e0: c4 f3     mov   $f3,a
08e2: dd        mov   a,y
08e3: 08 07     or    a,#$07
08e5: c4 f2     mov   $f2,a
08e7: f5 6f 06  mov   a,$066f+x
08ea: c4 f3     mov   $f3,a
08ec: dd        mov   a,y
08ed: 08 04     or    a,#$04
08ef: c4 f2     mov   $f2,a
08f1: f5 77 06  mov   a,$0677+x
08f4: c4 f3     mov   $f3,a
08f6: f5 67 06  mov   a,$0667+x
08f9: 29 43 40  and   ($40),($43)
08fc: 29 43 41  and   ($41),($43)
08ff: 28 02     and   a,#$02
0901: f0 03     beq   $0906
0903: 09 0d 40  or    ($40),($0d)
0906: f5 67 06  mov   a,$0667+x
0909: 28 01     and   a,#$01
090b: f0 03     beq   $0910
090d: 09 0d 41  or    ($41),($0d)
0910: 8f 3d f2  mov   $f2,#$3d
0913: fa 40 f3  mov   ($f3),($40)
0916: 8f 4d f2  mov   $f2,#$4d
0919: fa 41 f3  mov   ($f3),($41)
091c: f4 a2     mov   a,$a2+x
091e: f0 0a     beq   $092a
0920: 8f 4c f2  mov   $f2,#$4c
0923: fa 0d f3  mov   ($f3),($0d)
0926: e8 00     mov   a,#$00
0928: d4 a2     mov   $a2+x,a
092a: 6f        ret

092b: db $01,$02,$04,$08,$10,$20,$40,$80,$00,$10,$20,$30,$40,$50,$60,$70

093b: 2d        push  a
093c: 60        clrc
093d: 08 00     or    a,#$00
093f: 30 09     bmi   $094a
0941: 95 0f 06  adc   a,$060f+x
0944: 10 02     bpl   $0948
0946: e8 7f     mov   a,#$7f
0948: 2f 11     bra   $095b
094a: 60        clrc
094b: 48 ff     eor   a,#$ff
094d: 88 01     adc   a,#$01
094f: c4 0c     mov   $0c,a
0951: f5 0f 06  mov   a,$060f+x
0954: 80        setc
0955: a4 0c     sbc   a,$0c
0957: 10 02     bpl   $095b
0959: e8 00     mov   a,#$00
095b: d4 7a     mov   $7a+x,a
095d: ae        pop   a
095e: 6f        ret

095f: 78 00 47  cmp   $47,#$00		; get next pattern byte
0962: f0 1a     beq   $097e
0964: 3f 7f 10  call  $107f
0967: e4 f4     mov   a,$f4
0969: 28 80     and   a,#$80
096b: 64 3b     cmp   a,$3b
096d: f0 0f     beq   $097e
096f: e4 f4     mov   a,$f4
0971: 28 7f     and   a,#$7f
0973: 68 0b     cmp   a,#$0b
0975: d0 07     bne   $097e
0977: 4d        push  x
0978: 6d        push  y
0979: 3f b9 02  call  $02b9
097c: ee        pop   y
097d: ce        pop   x
097e: f6 23 00  mov   a,$0023+y
0981: c4 08     mov   $08,a
0983: f6 24 00  mov   a,$0024+y
0986: c4 09     mov   $09,a
0988: 68 ff     cmp   a,#$ff		; check for "empty rows" flag
098a: d0 05     bne   $0991
098c: e4 08     mov   a,$08
098e: d4 ba     mov   $ba+x,a
0990: 6f        ret

0991: 5c        lsr   a			; get the "final" command value - divide by 2...
0992: 28 7f     and   a,#$7f		; ...and mask out bit 1
0994: 68 6d     cmp   a,#$6d		; is it 6d?
0996: b0 57     bcs   $09ef		; if not, then...
0998: f6 23 00  mov   a,$0023+y
099b: 16 24 00  or    a,$0024+y
099e: d0 01     bne   $09a1		; is it a note?
09a0: 6f        ret

09a1: 4b 09     lsr   $09
09a3: 6b 08     ror   $08
09a5: e4 08     mov   a,$08
09a7: 5c        lsr   a
09a8: 5c        lsr   a
09a9: 5c        lsr   a
09aa: 28 1f     and   a,#$1f
09ac: f0 06     beq   $09b4
09ae: 9c        dec   a			; set instrument/sample
09af: 6d        push  y
09b0: 3f 7f 06  call  $067f
09b3: ee        pop   y
09b4: f6 24 00  mov   a,$0024+y
09b7: 5c        lsr   a
09b8: f0 07     beq   $09c1
09ba: 6d        push  y
09bb: 4d        push  x
09bc: 3f 52 07  call  $0752
09bf: ce        pop   x
09c0: ee        pop   y
09c1: f6 23 00  mov   a,$0023+y
09c4: 28 0f     and   a,#$0f
09c6: f0 26     beq   $09ee
09c8: c4 09     mov   $09,a
09ca: 28 07     and   a,#$07
09cc: 2d        push  a
09cd: e4 09     mov   a,$09
09cf: 28 08     and   a,#$08
09d1: ae        pop   a
09d2: f0 03     beq   $09d7
09d4: 48 ff     eor   a,#$ff
09d6: bc        inc   a
09d7: d4 aa     mov   $aa+x,a
09d9: 1c        asl   a
09da: c4 08     mov   $08,a
09dc: 8f 00 09  mov   $09,#$00
09df: 28 80     and   a,#$80
09e1: f0 03     beq   $09e6
09e3: 8f ff 09  mov   $09,#$ff
09e6: e4 08     mov   a,$08
09e8: d4 4a     mov   $4a+x,a
09ea: e4 09     mov   a,$09
09ec: d4 52     mov   $52+x,a
09ee: 6f        ret

09ef: 68 7d     cmp   a,#$7d		; vcmd ff (7d) - empty rows
09f1: d0 4f     bne   $0a42		; if 7d, then...
09f3: e4 08     mov   a,$08		; check for these values
09f5: c8 06     cmp   x,#$06
09f7: f0 0e     beq   $0a07
09f9: c8 07     cmp   x,#$07
09fb: f0 0f     beq   $0a0c
09fd: c4 3e     mov   $3e,a		; otherwise, check for other commands
09ff: 3f 1c 0a  call  $0a1c
0a02: c4 1e     mov   $1e,a
0a04: c4 1d     mov   $1d,a
0a06: 6f        ret

0a07: c4 20     mov   $20,a
0a09: c4 1f     mov   $1f,a
0a0b: 6f        ret

0a0c: c4 22     mov   $22,a
0a0e: c4 21     mov   $21,a
0a10: 6f        ret

0a11: cb 3d     mov   $3d,y
0a13: fa 3e 08  mov   ($08),($3e)
0a16: 3f 1c 0a  call  $0a1c
0a19: c4 1e     mov   $1e,a
0a1b: 6f        ret

0a1c: e4 3d     mov   a,$3d
0a1e: 30 0b     bmi   $0a2b
0a20: 60        clrc
0a21: 84 08     adc   a,$08
0a23: b0 02     bcs   $0a27
0a25: d0 14     bne   $0a3b
0a27: e8 ff     mov   a,#$ff
0a29: 2f 10     bra   $0a3b
0a2b: 48 ff     eor   a,#$ff
0a2d: 60        clrc
0a2e: 88 01     adc   a,#$01
0a30: c4 09     mov   $09,a
0a32: e4 08     mov   a,$08
0a34: 80        setc
0a35: a4 09     sbc   a,$09
0a37: b0 02     bcs   $0a3b
0a39: e8 01     mov   a,#$01
0a3b: 68 04     cmp   a,#$04
0a3d: b0 02     bcs   $0a41
0a3f: e8 04     mov   a,#$04
0a41: 6f        ret

0a42: c8 07     cmp   x,#$07
0a44: d0 06     bne   $0a4c
0a46: 78 00 35  cmp   $35,#$00
0a49: f0 01     beq   $0a4c
0a4b: 1d        dec   x
0a4c: 68 7e     cmp   a,#$7e		; vcmd fc (7e) - jump to position
0a4e: f0 0f     beq   $0a5f
0a50: 68 7f     cmp   a,#$7f		; vcmd fe (7f) - pattern break
0a52: f0 01     beq   $0a55
0a54: 6f        ret

0a55: c8 06     cmp   x,#$06
0a57: f0 19     beq   $0a72
0a59: c8 07     cmp   x,#$07
0a5b: f0 1b     beq   $0a78
0a5d: 2f 0d     bra   $0a6c
0a5f: e4 08     mov   a,$08
0a61: 9c        dec   a
0a62: c8 06     cmp   x,#$06
0a64: f0 0a     beq   $0a70
0a66: c8 07     cmp   x,#$07
0a68: f0 0c     beq   $0a76
0a6a: c4 2f     mov   $2f,a
0a6c: 8f 3f 30  mov   $30,#$3f
0a6f: 6f        ret

0a70: c4 36     mov   $36,a
0a72: 8f 3f 37  mov   $37,#$3f
0a75: 6f        ret

0a76: c4 38     mov   $38,a
0a78: 8f 3f 39  mov   $39,#$3f
0a7b: 6f        ret

0a7c: 78 00 35  cmp   $35,#$00
0a7f: f0 06     beq   $0a87
0a81: 3f c6 03  call  $03c6
0a84: 8f 00 34  mov   $34,#$00
0a87: 8f 00 35  mov   $35,#$00
0a8a: 3f c2 03  call  $03c2
0a8d: cd 06     mov   x,#$06
0a8f: 3f 05 0b  call  $0b05
0a92: dd        mov   a,y
0a93: c4 36     mov   $36,a
0a95: e8 00     mov   a,#$00
0a97: c4 b8     mov   $b8,a
0a99: c4 c0     mov   $c0,a
0a9b: 8f 00 37  mov   $37,#$00
0a9e: 8f 02 33  mov   $33,#$02
0aa1: cb 0c     mov   $0c,y
0aa3: 3f 3a 0b  call  $0b3a
0aa6: 8d 01     mov   y,#$01
0aa8: f7 0c     mov   a,($0c)+y
0aaa: f0 14     beq   $0ac0
0aac: 8f 08 35  mov   $35,#$08
0aaf: e8 00     mov   a,#$00
0ab1: c4 b9     mov   $b9,a
0ab3: c4 c1     mov   $c1,a
0ab5: 3f c6 03  call  $03c6
0ab8: cd 07     mov   x,#$07
0aba: 3f 05 0b  call  $0b05
0abd: 8f 00 34  mov   $34,#$00
0ac0: 8f 01 1f  mov   $1f,#$01
0ac3: 8f 02 20  mov   $20,#$02
0ac6: 6f        ret

0ac7: 78 00 35  cmp   $35,#$00
0aca: f0 06     beq   $0ad2
0acc: 3f c2 03  call  $03c2
0acf: 8f 00 33  mov   $33,#$00
0ad2: 3f c6 03  call  $03c6
0ad5: e8 00     mov   a,#$00
0ad7: c4 b9     mov   $b9,a
0ad9: c4 c1     mov   $c1,a
0adb: cb 0c     mov   $0c,y
0add: 3f 3a 0b  call  $0b3a
0ae0: 6d        push  y
0ae1: 8d 01     mov   y,#$01
0ae3: f7 0c     mov   a,($0c)+y
0ae5: ee        pop   y
0ae6: f0 05     beq   $0aed
0ae8: 8f 08 35  mov   $35,#$08
0aeb: 2f 9d     bra   $0a8a
0aed: 8f 00 35  mov   $35,#$00
0af0: dd        mov   a,y
0af1: c4 38     mov   $38,a
0af3: 8f 00 39  mov   $39,#$00
0af6: 8f 04 34  mov   $34,#$04
0af9: 8f 01 21  mov   $21,#$01
0afc: 8f 02 22  mov   $22,#$02
0aff: cd 07     mov   x,#$07
0b01: 3f 05 0b  call  $0b05
0b04: 6f        ret

0b05: e4 f6     mov   a,$f6
0b07: 68 81     cmp   a,#$81
0b09: 90 05     bcc   $0b10
0b0b: 28 7f     and   a,#$7f
0b0d: d4 ca     mov   $ca+x,a
0b0f: 6f        ret

0b10: e8 00     mov   a,#$00
0b12: d4 ca     mov   $ca+x,a
0b14: 6f        ret

0b15: cb 2f     mov   $2f,y
0b17: 3f 9e 03  call  $039e
0b1a: 8f 00 30  mov   $30,#$00
0b1d: 8f 01 32  mov   $32,#$01
0b20: 3f 2d 0b  call  $0b2d
0b23: 8f 01 32  mov   $32,#$01
0b26: 8f 02 1d  mov   $1d,#$02
0b29: 8f 0a 1e  mov   $1e,#$0a
0b2c: 6f        ret

0b2d: cd 00     mov   x,#$00
0b2f: 7d        mov   a,x
0b30: d4 b2     mov   $b2+x,a
0b32: d4 ba     mov   $ba+x,a
0b34: 3d        inc   x
0b35: c8 06     cmp   x,#$06
0b37: d0 f7     bne   $0b30
0b39: 6f        ret

0b3a: fa 12 08  mov   ($08),($12)
0b3d: fa 13 09  mov   ($09),($13)
0b40: 60        clrc
0b41: 98 53 08  adc   $08,#$53
0b44: 98 00 09  adc   $09,#$00
0b47: 8f 00 0d  mov   $0d,#$00
0b4a: 0b 0c     asl   $0c
0b4c: 2b 0d     rol   $0d
0b4e: 60        clrc
0b4f: 89 08 0c  adc   ($0c),($08)
0b52: 89 09 0d  adc   ($0d),($09)
0b55: 6f        ret

0b56: 78 00 34  cmp   $34,#$00
0b59: f0 fa     beq   $0b55
0b5b: fa 38 0c  mov   ($0c),($38)
0b5e: fa 39 31  mov   ($31),($39)
0b61: cd 07     mov   x,#$07
0b63: 2f 0d     bra   $0b72
0b65: 78 00 33  cmp   $33,#$00
0b68: f0 71     beq   $0bdb
0b6a: fa 36 0c  mov   ($0c),($36)
0b6d: fa 37 31  mov   ($31),($37)
0b70: cd 06     mov   x,#$06
0b72: 3f 3a 0b  call  $0b3a
0b75: c8 06     cmp   x,#$06
0b77: d0 1d     bne   $0b96
0b79: 78 00 35  cmp   $35,#$00
0b7c: f0 18     beq   $0b96
0b7e: e4 0c     mov   a,$0c
0b80: 2d        push  a
0b81: e4 0d     mov   a,$0d
0b83: 2d        push  a
0b84: 3f 4a 0c  call  $0c4a
0b87: ae        pop   a
0b88: c4 0d     mov   $0d,a
0b8a: ae        pop   a
0b8b: c4 0c     mov   $0c,a
0b8d: 3a 0c     incw  $0c
0b8f: 3d        inc   x
0b90: 3f 4a 0c  call  $0c4a
0b93: 1d        dec   x
0b94: 2f 03     bra   $0b99
0b96: 3f 4a 0c  call  $0c4a
0b99: c8 06     cmp   x,#$06
0b9b: f0 27     beq   $0bc4
0b9d: ab 39     inc   $39
0b9f: 78 40 39  cmp   $39,#$40
0ba2: d0 37     bne   $0bdb
0ba4: 8f 00 39  mov   $39,#$00
0ba7: ab 38     inc   $38
0ba9: d0 03     bne   $0bae
0bab: 8f 00 34  mov   $34,#$00
0bae: 3f b2 0b  call  $0bb2
0bb1: 6f        ret

0bb2: e8 00     mov   a,#$00
0bb4: d4 ba     mov   $ba+x,a
0bb6: d4 b2     mov   $b2+x,a
0bb8: c8 06     cmp   x,#$06
0bba: d0 1f     bne   $0bdb
0bbc: 78 00 35  cmp   $35,#$00
0bbf: f0 1a     beq   $0bdb
0bc1: 3d        inc   x
0bc2: 2f f0     bra   $0bb4
0bc4: ab 37     inc   $37
0bc6: 78 40 37  cmp   $37,#$40
0bc9: d0 10     bne   $0bdb
0bcb: 8f 00 37  mov   $37,#$00
0bce: ab 36     inc   $36
0bd0: d0 06     bne   $0bd8
0bd2: 8f 00 33  mov   $33,#$00
0bd5: 8f 00 35  mov   $35,#$00
0bd8: 3f b2 0b  call  $0bb2
0bdb: 6f        ret

0bdc: 78 00 32  cmp   $32,#$00
0bdf: d0 01     bne   $0be2
0be1: 6f        ret

0be2: fa 30 31  mov   ($31),($30)
0be5: fa 14 08  mov   ($08),($14)
0be8: fa 15 09  mov   ($09),($15)
0beb: 60        clrc
0bec: 98 53 08  adc   $08,#$53
0bef: 98 00 09  adc   $09,#$00
0bf2: fa 2f 0c  mov   ($0c),($2f)
0bf5: 8f 00 0d  mov   $0d,#$00
0bf8: 0b 0c     asl   $0c
0bfa: 2b 0d     rol   $0d
0bfc: fa 0c 0a  mov   ($0a),($0c)
0bff: fa 0d 0b  mov   ($0b),($0d)
0c02: 0b 0c     asl   $0c
0c04: 2b 0d     rol   $0d
0c06: 60        clrc
0c07: e4 0c     mov   a,$0c
0c09: 84 0a     adc   a,$0a
0c0b: c4 0c     mov   $0c,a
0c0d: e4 0d     mov   a,$0d
0c0f: 84 0b     adc   a,$0b
0c11: c4 0d     mov   $0d,a
0c13: 60        clrc
0c14: 89 08 0c  adc   ($0c),($08)
0c17: 89 09 0d  adc   ($0d),($09)
0c1a: cd 00     mov   x,#$00
0c1c: e4 0c     mov   a,$0c
0c1e: 2d        push  a
0c1f: e4 0d     mov   a,$0d
0c21: 2d        push  a
0c22: 3f 4a 0c  call  $0c4a
0c25: ae        pop   a
0c26: c4 0d     mov   $0d,a
0c28: ae        pop   a
0c29: c4 0c     mov   $0c,a
0c2b: 3a 0c     incw  $0c
0c2d: 3d        inc   x
0c2e: c8 06     cmp   x,#$06
0c30: d0 ea     bne   $0c1c
0c32: ab 30     inc   $30
0c34: 78 40 30  cmp   $30,#$40
0c37: d0 10     bne   $0c49
0c39: 8f 00 30  mov   $30,#$00
0c3c: ab 2f     inc   $2f
0c3e: d0 06     bne   $0c46
0c40: 8f 00 32  mov   $32,#$00
0c43: 3f 9e 03  call  $039e
0c46: 3f 2d 0b  call  $0b2d
0c49: 6f        ret

0c4a: f4 ba     mov   a,$ba+x		; load music and sound effects data
0c4c: d0 60     bne   $0cae
0c4e: 8d 00     mov   y,#$00
0c50: f7 0c     mov   a,($0c)+y
0c52: c4 0a     mov   $0a,a
0c54: 8f 00 0b  mov   $0b,#$00
0c57: 0b 0a     asl   $0a
0c59: 2b 0b     rol   $0b
0c5b: fa 12 08  mov   ($08),($12)	; sound effects pointer
0c5e: fa 13 09  mov   ($09),($13)
0c61: c8 06     cmp   x,#$06
0c63: f0 0a     beq   $0c6f
0c65: c8 07     cmp   x,#$07
0c67: f0 06     beq   $0c6f
0c69: fa 14 08  mov   ($08),($14)	; music pointer
0c6c: fa 15 09  mov   ($09),($15)
0c6f: 60        clrc
0c70: 98 51 08  adc   $08,#$51		; get start of channel patterns
0c73: 98 00 09  adc   $09,#$00
0c76: f7 08     mov   a,($08)+y
0c78: 60        clrc
0c79: 84 0a     adc   a,$0a		; store current channel pattern pointer
0c7b: c4 0a     mov   $0a,a
0c7d: fc        inc   y
0c7e: f7 08     mov   a,($08)+y
0c80: 84 0b     adc   a,$0b
0c82: c4 0b     mov   $0b,a
0c84: dc        dec   y
0c85: f7 0a     mov   a,($0a)+y
0c87: c4 08     mov   $08,a
0c89: fc        inc   y
0c8a: f7 0a     mov   a,($0a)+y
0c8c: c4 09     mov   $09,a
0c8e: f4 b2     mov   a,$b2+x
0c90: c4 0a     mov   $0a,a
0c92: e4 31     mov   a,$31
0c94: 80        setc
0c95: a4 0a     sbc   a,$0a
0c97: 1c        asl   a
0c98: 60        clrc
0c99: 84 08     adc   a,$08		; get current pattern bytes
0c9b: c4 08     mov   $08,a
0c9d: 98 00 09  adc   $09,#$00
0ca0: 8d 01     mov   y,#$01
0ca2: f7 08     mov   a,($08)+y
0ca4: c4 24     mov   $24,a
0ca6: dc        dec   y
0ca7: f7 08     mov   a,($08)+y
0ca9: c4 23     mov   $23,a
0cab: 5f 5f 09  jmp   $095f

0cae: f4 ba     mov   a,$ba+x
0cb0: 9c        dec   a
0cb1: d4 ba     mov   $ba+x,a
0cb3: f4 b2     mov   a,$b2+x
0cb5: bc        inc   a
0cb6: d4 b2     mov   $b2+x,a
0cb8: 6f        ret

0cb9: db $07,$07,$07,$06,$06,$06,$05,$05,$05,$04,$04,$04,$03,$03,$03,$02,$02,$02,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$2e,$2f,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$3a,$3b,$3c,$3d,$3e,$3f,$3f,$3e,$3d,$3c,$3b,$3a,$39,$38,$37,$36,$35,$34,$33,$32,$31,$30,$2f,$2e,$2d,$2c,$2b,$2a,$29,$28,$27,$26,$25,$24,$23,$22,$21,$20,$1f,$1e,$1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0b,$0a,$09,$08,$07,$06,$05,$04,$03,$02,$01,$00,$00,$ff,$fe,$fd,$fc,$fb,$fa,$f9,$f8,$f7,$f6,$f5,$f4,$f3,$f2,$f1,$f0,$ef,$ee,$ed,$ec,$eb,$ea,$e9,$e8,$e7,$e6,$e5,$e4,$e3,$e2,$e1,$e0,$df,$de,$dd,$dc,$db,$da,$d9,$d8,$d7,$d6,$d5,$d4,$d3,$d2,$d1,$d0,$cf,$ce,$cd,$cc,$cb,$ca,$c9,$c8,$c7,$c6,$c5,$c4,$c3,$c2,$c1,$c1,$c2,$c3,$c4,$c5,$c6,$c7,$c8,$c9,$ca,$cb,$cc,$cd,$ce,$cf,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$d9,$da,$db,$dc,$dd,$de,$df,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$ea,$eb,$ec,$ed,$ee,$ef,$f0,$f1,$f2,$f3,$f4,$f5,$f6,$f7,$f8,$f9,$fa,$fb,$fc,$fd,$fe,$ff,$00

0dd4: db $84,$00,$8c,$00,$95,$00,$9d,$00,$a6,$00,$b1,$00,$bb,$00,$c6,$00,$d1,$00,$de,$00,$eb,$00,$fa,$00,$08,$01,$18,$01,$2a,$01,$3a,$01,$4d,$01,$62,$01,$77,$01,$8c,$01,$a3,$01,$bd,$01,$d7,$01,$f5,$01,$10,$02,$30,$02,$54,$02,$75,$02,$9a,$02,$c4,$02,$ee,$02,$18,$03,$47,$03,$7b,$03,$af,$03,$ea,$03,$20,$04,$60,$04,$a8,$04,$ea,$04,$34,$05,$88,$05,$dc,$05,$30,$06,$8e,$06,$f7,$06,$5f,$07,$d4,$07,$40,$08,$c0,$08,$50,$09,$d4,$09,$68,$0a,$10,$0b,$b8,$0b,$60,$0c,$1c,$0d,$ef,$0d,$bf,$0e,$a8,$0f,$80,$10,$80,$11,$a0,$12,$a8,$13,$d0,$14,$20,$16,$70,$17,$c0,$18,$38,$1a,$de,$1b,$7e,$1d,$50,$1f,$00,$21,$00,$23,$40,$25,$50,$27,$a0,$29,$40,$2c,$e0,$2e,$80,$31,$70,$34,$bc,$37,$fc,$3a,$a0,$3e

0e7c: 78 00 3a  cmp   $3a,#$00
0e7f: f0 01     beq   $0e82
0e81: 6f        ret

0e82: cd 00     mov   x,#$00
0e84: 4d        push  x
0e85: e4 47     mov   a,$47
0e87: f0 03     beq   $0e8c
0e89: 3f 7f 10  call  $107f
0e8c: 3f c8 07  call  $07c8
0e8f: 3f b9 02  call  $02b9
0e92: ce        pop   x
0e93: 3d        inc   x
0e94: c8 08     cmp   x,#$08
0e96: d0 ec     bne   $0e84
0e98: 8b 1d     dec   $1d
0e9a: d0 14     bne   $0eb0
0e9c: fa 1e 1d  mov   ($1d),($1e)
0e9f: fa 2f f5  mov   ($f5),($2f)
0ea2: e4 30     mov   a,$30
0ea4: 78 00 47  cmp   $47,#$00
0ea7: f0 02     beq   $0eab
0ea9: 08 80     or    a,#$80
0eab: c4 f6     mov   $f6,a
0ead: 3f dc 0b  call  $0bdc
0eb0: 8b 1f     dec   $1f
0eb2: d0 06     bne   $0eba
0eb4: fa 20 1f  mov   ($1f),($20)
0eb7: 3f 65 0b  call  $0b65
0eba: 8b 21     dec   $21
0ebc: d0 06     bne   $0ec4
0ebe: fa 22 21  mov   ($21),($22)
0ec1: 3f 56 0b  call  $0b56
0ec4: 6f        ret

0ec5: 5c        lsr   a
0ec6: 28 3f     and   a,#$3f
0ec8: c4 45     mov   $45,a
0eca: cb 44     mov   $44,y
0ecc: cd 00     mov   x,#$00
0ece: e8 00     mov   a,#$00
0ed0: 78 3f 48  cmp   $48,#$3f
0ed3: f0 14     beq   $0ee9
0ed5: e8 00     mov   a,#$00
0ed7: d6 84 16  mov   $1684+y,a
0eda: d6 85 16  mov   $1685+y,a
0edd: d6 86 16  mov   $1686+y,a
0ee0: fc        inc   y
0ee1: fc        inc   y
0ee2: fc        inc   y
0ee3: ad b4     cmp   y,#$b4
0ee5: d0 f0     bne   $0ed7
0ee7: 2f 12     bra   $0efb
0ee9: e8 00     mov   a,#$00
0eeb: d6 38 17  mov   $1738+y,a
0eee: d6 39 17  mov   $1739+y,a
0ef1: d6 3a 17  mov   $173a+y,a
0ef4: fc        inc   y
0ef5: fc        inc   y
0ef6: fc        inc   y
0ef7: ad b4     cmp   y,#$b4
0ef9: d0 f0     bne   $0eeb
0efb: e8 03     mov   a,#$03
0efd: c4 47     mov   $47,a
0eff: c5 2f 17  mov   $172f,a
0f02: c5 e3 17  mov   $17e3,a
0f05: e8 00     mov   a,#$00
0f07: c5 8d 16  mov   $168d,a
0f0a: c5 41 17  mov   $1741,a
0f0d: 8f 44 f2  mov   $f2,#$44
0f10: fa 48 f3  mov   ($f3),($48)
0f13: 8f 40 46  mov   $46,#$40
0f16: 6f        ret

0f17: 8f 01 f4  mov   $f4,#$01
0f1a: 8f 01 f5  mov   $f5,#$01
0f1d: fa 49 f6  mov   ($f6),($49)
0f20: 8f 84 04  mov   $04,#$84
0f23: 8f 16 05  mov   $05,#$16
0f26: e8 b1     mov   a,#$b1
0f28: c5 54 0f  mov   $0f54,a
0f2b: e8 0f     mov   a,#$0f
0f2d: c5 55 0f  mov   $0f55,a
0f30: 78 3f 48  cmp   $48,#$3f
0f33: d0 10     bne   $0f45
0f35: e8 fe     mov   a,#$fe
0f37: c5 54 0f  mov   $0f54,a
0f3a: e8 0f     mov   a,#$0f
0f3c: c5 55 0f  mov   $0f55,a
0f3f: 8f 38 04  mov   $04,#$38
0f42: 8f 17 05  mov   $05,#$17
0f45: 8d 00     mov   y,#$00
0f47: cd 11     mov   x,#$11
0f49: 69 0f f7  cmp   ($f7),($0f)
0f4c: f0 fb     beq   $0f49
0f4e: ab 0f     inc   $0f
0f50: fa 0f f7  mov   ($f7),($0f)
0f53: 3f b1 0f  call  $0fb1
0f56: f0 4b     beq   $0fa3
0f58: 1d        dec   x
0f59: d0 f8     bne   $0f53
0f5b: dd        mov   a,y
0f5c: 80        setc
0f5d: a8 09     sbc   a,#$09
0f5f: fd        mov   y,a
0f60: f7 04     mov   a,($04)+y
0f62: 08 03     or    a,#$03
0f64: d7 04     mov   ($04)+y,a
0f66: 8f 00 46  mov   $46,#$00
0f69: 78 03 47  cmp   $47,#$03
0f6c: d0 11     bne   $0f7f
0f6e: 8b 47     dec   $47
0f70: 3f a8 10  call  $10a8
0f73: 8f 4c f2  mov   $f2,#$4c
0f76: 8f 10 f3  mov   $f3,#$10
0f79: 8f 44 f2  mov   $f2,#$44
0f7c: fa 48 f3  mov   ($f3),($48)
0f7f: e4 3b     mov   a,$3b
0f81: 04 32     or    a,$32
0f83: 04 33     or    a,$33
0f85: 04 34     or    a,$34
0f87: 04 35     or    a,$35
0f89: 04 3a     or    a,$3a
0f8b: 08 20     or    a,#$20
0f8d: c4 f4     mov   $f4,a
0f8f: fa 2f f5  mov   ($f5),($2f)
0f92: e4 30     mov   a,$30
0f94: 08 80     or    a,#$80
0f96: c4 f6     mov   $f6,a
0f98: 69 f7 0f  cmp   ($0f),($f7)
0f9b: f0 fb     beq   $0f98
0f9d: ab 0f     inc   $0f
0f9f: fa 0f f7  mov   ($f7),($0f)
0fa2: 6f        ret

0fa3: 8f 01 47  mov   $47,#$01
0fa6: 1d        dec   x
0fa7: f0 b2     beq   $0f5b
0fa9: 3f 4b 10  call  $104b
0fac: 1d        dec   x
0fad: d0 fa     bne   $0fa9
0faf: 2f aa     bra   $0f5b
0fb1: 8f 00 f4  mov   $f4,#$00
0fb4: 8f 00 f5  mov   $f5,#$00
0fb7: 69 f7 0f  cmp   ($0f),($f7)
0fba: f0 fb     beq   $0fb7
0fbc: ab 0f     inc   $0f
0fbe: e4 f4     mov   a,$f4
0fc0: 28 fc     and   a,#$fc
0fc2: d6 84 16  mov   $1684+y,a
0fc5: e4 f5     mov   a,$f5
0fc7: d6 85 16  mov   $1685+y,a
0fca: fa 0f f7  mov   ($f7),($0f)
0fcd: e4 f6     mov   a,$f6
0fcf: d6 86 16  mov   $1686+y,a
0fd2: e4 f4     mov   a,$f4
0fd4: d6 87 16  mov   $1687+y,a
0fd7: e4 f5     mov   a,$f5
0fd9: d6 88 16  mov   $1688+y,a
0fdc: 8f 01 f4  mov   $f4,#$01
0fdf: e4 f6     mov   a,$f6
0fe1: d6 89 16  mov   $1689+y,a
0fe4: e4 f4     mov   a,$f4
0fe6: d6 8a 16  mov   $168a+y,a
0fe9: e4 f5     mov   a,$f5
0feb: d6 8b 16  mov   $168b+y,a
0fee: 8f 01 f5  mov   $f5,#$01
0ff1: e4 f6     mov   a,$f6
0ff3: d6 8c 16  mov   $168c+y,a
0ff6: dd        mov   a,y
0ff7: 60        clrc
0ff8: 88 09     adc   a,#$09
0ffa: fd        mov   y,a
0ffb: 1a 44     decw  $44
0ffd: 6f        ret

0ffe: 8f 00 f4  mov   $f4,#$00
1001: 8f 00 f5  mov   $f5,#$00
1004: 69 f7 0f  cmp   ($0f),($f7)
1007: f0 fb     beq   $1004
1009: ab 0f     inc   $0f
100b: e4 f4     mov   a,$f4
100d: 28 fc     and   a,#$fc
100f: d6 38 17  mov   $1738+y,a
1012: e4 f5     mov   a,$f5
1014: d6 39 17  mov   $1739+y,a
1017: fa 0f f7  mov   ($f7),($0f)
101a: e4 f6     mov   a,$f6
101c: d6 3a 17  mov   $173a+y,a
101f: e4 f4     mov   a,$f4
1021: d6 3b 17  mov   $173b+y,a
1024: e4 f5     mov   a,$f5
1026: d6 3c 17  mov   $173c+y,a
1029: 8f 01 f4  mov   $f4,#$01
102c: e4 f6     mov   a,$f6
102e: d6 3d 17  mov   $173d+y,a
1031: e4 f4     mov   a,$f4
1033: d6 3e 17  mov   $173e+y,a
1036: e4 f5     mov   a,$f5
1038: d6 3f 17  mov   $173f+y,a
103b: 8f 01 f5  mov   $f5,#$01
103e: e4 f6     mov   a,$f6
1040: d6 40 17  mov   $1740+y,a
1043: dd        mov   a,y
1044: 60        clrc
1045: 88 09     adc   a,#$09
1047: fd        mov   y,a
1048: 1a 44     decw  $44
104a: 6f        ret

104b: 8f 00 f4  mov   $f4,#$00
104e: 8f 00 f5  mov   $f5,#$00
1051: 69 f7 0f  cmp   ($0f),($f7)
1054: f0 fb     beq   $1051
1056: e8 00     mov   a,#$00
1058: d7 04     mov   ($04)+y,a
105a: fc        inc   y
105b: d7 04     mov   ($04)+y,a
105d: fc        inc   y
105e: d7 04     mov   ($04)+y,a
1060: fc        inc   y
1061: ab 0f     inc   $0f
1063: fa 0f f7  mov   ($f7),($0f)
1066: d7 04     mov   ($04)+y,a
1068: fc        inc   y
1069: d7 04     mov   ($04)+y,a
106b: fc        inc   y
106c: d7 04     mov   ($04)+y,a
106e: fc        inc   y
106f: 8f 01 f4  mov   $f4,#$01
1072: d7 04     mov   ($04)+y,a
1074: fc        inc   y
1075: d7 04     mov   ($04)+y,a
1077: fc        inc   y
1078: d7 04     mov   ($04)+y,a
107a: fc        inc   y
107b: 8f 01 f5  mov   $f5,#$01
107e: 6f        ret

107f: 78 01 47  cmp   $47,#$01
1082: f0 18     beq   $109c
1084: 8f 7c f2  mov   $f2,#$7c
1087: e4 f3     mov   a,$f3
1089: 28 10     and   a,#$10
108b: f0 0e     beq   $109b
108d: c4 f3     mov   $f3,a
108f: 8f 44 f2  mov   $f2,#$44
1092: 58 7f 48  eor   $48,#$7f
1095: fa 48 f3  mov   ($f3),($48)
1098: 8f 40 46  mov   $46,#$40
109b: 6f        ret

109c: 8f 00 47  mov   $47,#$00
109f: e8 01     mov   a,#$01
10a1: c5 8d 16  mov   $168d,a
10a4: c5 41 17  mov   $1741,a
10a7: 6f        ret

10a8: 8f 40 f2  mov   $f2,#$40
10ab: 8f 3f f3  mov   $f3,#$3f
10ae: 8f 41 f2  mov   $f2,#$41
10b1: 8f 3f f3  mov   $f3,#$3f
10b4: 8f 45 f2  mov   $f2,#$45
10b7: 8f 00 f3  mov   $f3,#$00
10ba: 8f 47 f2  mov   $f2,#$47
10bd: 8f 7f f3  mov   $f3,#$7f
10c0: 8f 42 f2  mov   $f2,#$42
10c3: 8f 30 f3  mov   $f3,#$30
10c6: 8f 43 f2  mov   $f2,#$43
10c9: 8f 05 f3  mov   $f3,#$05
10cc: 8f 4d f2  mov   $f2,#$4d
10cf: 38 ef 41  and   $41,#$ef
10d2: e4 f3     mov   a,$f3
10d4: 28 ef     and   a,#$ef
10d6: c4 f3     mov   $f3,a
10d8: 8f 4c f2  mov   $f2,#$4c
10db: 8f 10 f3  mov   $f3,#$10
10de: 6f        ret

10df: e8 84     mov   a,#$84
10e1: c5 fc 11  mov   $11fc,a
10e4: c5 02 12  mov   $1202,a
10e7: e8 16     mov   a,#$16
10e9: c5 fd 11  mov   $11fd,a
10ec: c5 03 12  mov   $1203,a
10ef: e8 38     mov   a,#$38
10f1: c5 00 12  mov   $1200,a
10f4: c5 fe 11  mov   $11fe,a
10f7: e8 17     mov   a,#$17
10f9: c5 01 12  mov   $1201,a
10fc: c5 ff 11  mov   $11ff,a
10ff: 6f        ret

; sample pointer table
1100: dw $2056
1102: dw $21d9
1104: dw $26c5
1106: dw $28d8
1108: dw $298c
110a: dw $298c
110c: dw $2d19
110e: dw $2d19
1110: dw $31cf
1112: dw $31cf
1114: dw $363d
1116: dw $3742
1118: dw $3a12
111a: dw $3d57
111c: dw $4078
111e: dw $4078
1120: dw $488e
1122: dw $4a7d
1124: dw $4c09
1126: dw $4fb1
1128: dw $5509
112a: dw $5509
112c: dw $599b
112e: dw $5bc9
1130: dw $6616
1132: dw $68c2
1134: dw $68c2
1136: dw $6b2f
1138: dw $6b2f
113a: dw $7195
113c: dw $7195
113e: dw $772c
1140: dw $772c
1142: dw $7da4
1144: dw $7da4
1146: dw $8329

1148: dw $8329
