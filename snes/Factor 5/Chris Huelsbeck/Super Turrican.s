0200: 8f 6c f2  mov   $f2,#$6c
0203: 8f 9f f3  mov   $f3,#$9f
0206: 3f c9 09  call  $09c9
0209: e8 00     mov   a,#$00
020b: 5d        mov   x,a
020c: d4 00     mov   $00+x,a
020e: 3d        inc   x
020f: 10 fb     bpl   $020c
0211: 3f c0 02  call  $02c0
0214: 8f 82 fa  mov   $fa,#$82
0217: e4 fd     mov   a,$fd
0219: 8f 01 f1  mov   $f1,#$01
021c: 8f 00 f4  mov   $f4,#$00
021f: f8 fd     mov   x,$fd
0221: d0 29     bne   $024c
0223: e4 f4     mov   a,$f4
0225: f0 f8     beq   $021f
0227: c4 f4     mov   $f4,a
0229: 68 05     cmp   a,#$05
022b: f0 2a     beq   $0257
022d: 68 01     cmp   a,#$01
022f: f0 52     beq   $0283
0231: 68 02     cmp   a,#$02
0233: f0 35     beq   $026a
0235: 68 03     cmp   a,#$03
0237: f0 2c     beq   $0265
0239: 68 04     cmp   a,#$04
023b: f0 1f     beq   $025c
023d: 68 06     cmp   a,#$06
023f: d0 db     bne   $021c
0241: fa f5 29  mov   ($29),($f5)
0244: fa f6 2a  mov   ($2a),($f6)
0247: 8f 00 2b  mov   $2b,#$00
024a: 2f d0     bra   $021c
024c: 3f 15 07  call  $0715
024f: 3f 22 0a  call  $0a22
0252: 3f cc 03  call  $03cc
0255: 2f c8     bra   $021f
0257: 3f 2c 03  call  $032c
025a: 2f c0     bra   $021c
025c: 64 f7     cmp   a,$f7
025e: d0 bc     bne   $021c
0260: 3f c0 02  call  $02c0
0263: 2f b7     bra   $021c
0265: 3f c9 09  call  $09c9
0268: 2f b2     bra   $021c
026a: 3f c9 09  call  $09c9
026d: 8f 01 26  mov   $26,#$01
0270: e4 f5     mov   a,$f5
0272: 1c        asl   a
0273: fd        mov   y,a
0274: fc        inc   y
0275: f7 36     mov   a,($36)+y
0277: c4 18     mov   $18,a
0279: 8d 10     mov   y,#$10
027b: cf        mul   ya
027c: da 18     movw  $18,ya
027e: 3f f8 08  call  $08f8
0281: 2f 99     bra   $021c
0283: 64 f4     cmp   a,$f4
0285: f0 fc     beq   $0283
0287: ba f6     movw  ya,$f6
0289: da 00     movw  $00,ya
028b: ba f4     movw  ya,$f4
028d: da f4     movw  $f4,ya
028f: 64 f4     cmp   a,$f4
0291: f0 fc     beq   $028f
0293: ba f6     movw  ya,$f6
0295: da 02     movw  $02,ya
0297: ba f4     movw  ya,$f4
0299: da f4     movw  $f4,ya
029b: cd 00     mov   x,#$00
029d: 64 f4     cmp   a,$f4
029f: f0 fc     beq   $029d
02a1: e4 f6     mov   a,$f6
02a3: c7 00     mov   ($00+x),a
02a5: 3a 00     incw  $00
02a7: ba f4     movw  ya,$f4
02a9: da f4     movw  $f4,ya
02ab: 64 f4     cmp   a,$f4
02ad: f0 fc     beq   $02ab
02af: e4 f6     mov   a,$f6
02b1: c7 00     mov   ($00+x),a
02b3: 3a 00     incw  $00
02b5: ba f4     movw  ya,$f4
02b7: da f4     movw  $f4,ya
02b9: 3a 02     incw  $02
02bb: d0 e0     bne   $029d
02bd: 5f 1c 02  jmp   $021c

02c0: fa f5 38  mov   ($38),($f5)
02c3: e8 00     mov   a,#$00
02c5: c4 06     mov   $06,a
02c7: e8 13     mov   a,#$13
02c9: c4 07     mov   $07,a
02cb: e8 00     mov   a,#$00
02cd: c4 10     mov   $10,a
02cf: e8 53     mov   a,#$53
02d1: c4 11     mov   $11,a
02d3: e8 00     mov   a,#$00
02d5: c4 06     mov   $06,a
02d7: e8 13     mov   a,#$13
02d9: c4 07     mov   $07,a
02db: 8d 00     mov   y,#$00
02dd: f7 06     mov   a,($06)+y
02df: fc        inc   y
02e0: 60        clrc
02e1: 84 06     adc   a,$06
02e3: c4 08     mov   $08,a
02e5: f7 06     mov   a,($06)+y
02e7: 84 07     adc   a,$07
02e9: c4 09     mov   $09,a
02eb: 8d 02     mov   y,#$02
02ed: f7 06     mov   a,($06)+y
02ef: fc        inc   y
02f0: 60        clrc
02f1: 84 06     adc   a,$06
02f3: c4 16     mov   $16,a
02f5: f7 06     mov   a,($06)+y
02f7: 84 07     adc   a,$07
02f9: c4 17     mov   $17,a
02fb: 8d 04     mov   y,#$04
02fd: f7 06     mov   a,($06)+y
02ff: fc        inc   y
0300: 60        clrc
0301: 84 06     adc   a,$06
0303: c4 24     mov   $24,a
0305: f7 06     mov   a,($06)+y
0307: 84 07     adc   a,$07
0309: c4 25     mov   $25,a
030b: 8d 06     mov   y,#$06
030d: f7 06     mov   a,($06)+y
030f: fc        inc   y
0310: 60        clrc
0311: 84 06     adc   a,$06
0313: c4 34     mov   $34,a
0315: f7 06     mov   a,($06)+y
0317: 84 07     adc   a,$07
0319: c4 35     mov   $35,a
031b: 8d 08     mov   y,#$08
031d: f7 06     mov   a,($06)+y
031f: fc        inc   y
0320: 60        clrc
0321: 84 06     adc   a,$06
0323: c4 36     mov   $36,a
0325: f7 06     mov   a,($06)+y
0327: 84 07     adc   a,$07
0329: c4 37     mov   $37,a
032b: 6f        ret

032c: e4 f5     mov   a,$f5
032e: 8d 08     mov   y,#$08
0330: cf        mul   ya
0331: 7a 34     addw  ya,$34
0333: da 0e     movw  $0e,ya
0335: 8d 02     mov   y,#$02
0337: f7 0e     mov   a,($0e)+y
0339: 28 07     and   a,#$07
033b: 9f        xcn   a
033c: 1c        asl   a
033d: 5d        mov   x,a
033e: 8d 05     mov   y,#$05
0340: f7 0e     mov   a,($0e)+y
0342: 28 7f     and   a,#$7f
0344: 75 c9 11  cmp   a,$11c9+x
0347: 90 20     bcc   $0369
0349: d0 21     bne   $036c
034b: f7 0e     mov   a,($0e)+y
034d: 10 1b     bpl   $036a
034f: e4 f6     mov   a,$f6
0351: 5c        lsr   a
0352: d5 bd 10  mov   $10bd+x,a
0355: 8f b6 04  mov   $04,#$b6
0358: 8f 10 05  mov   $05,#$10
035b: d8 0e     mov   $0e,x
035d: 8f 00 0f  mov   $0f,#$00
0360: ba 04     movw  ya,$04
0362: 7a 0e     addw  ya,$0e
0364: da 04     movw  $04,ya
0366: 5f df 0c  jmp   $0cdf

0369: 6f        ret

036a: 28 7f     and   a,#$7f
036c: d5 c9 11  mov   $11c9+x,a
036f: e4 f6     mov   a,$f6
0371: 5c        lsr   a
0372: d5 bd 10  mov   $10bd+x,a
0375: 8d 07     mov   y,#$07
0377: f7 0e     mov   a,($0e)+y
0379: d5 ca 11  mov   $11ca+x,a
037c: 8d 02     mov   y,#$02
037e: f7 0e     mov   a,($0e)+y
0380: 9f        xcn   a
0381: 28 0f     and   a,#$0f
0383: d5 b9 10  mov   $10b9+x,a
0386: 8d 01     mov   y,#$01
0388: f7 0e     mov   a,($0e)+y
038a: 1c        asl   a
038b: fd        mov   y,a
038c: f7 08     mov   a,($08)+y
038e: d5 cb 10  mov   $10cb+x,a
0391: fc        inc   y
0392: f7 08     mov   a,($08)+y
0394: d5 cc 10  mov   $10cc+x,a
0397: 8d 00     mov   y,#$00
0399: f7 0e     mov   a,($0e)+y
039b: 28 3f     and   a,#$3f
039d: d5 b7 10  mov   $10b7+x,a
03a0: e8 01     mov   a,#$01
03a2: d5 c8 10  mov   $10c8+x,a
03a5: e8 00     mov   a,#$00
03a7: d5 cd 10  mov   $10cd+x,a
03aa: d5 ce 10  mov   $10ce+x,a
03ad: d5 bc 10  mov   $10bc+x,a
03b0: d5 b6 10  mov   $10b6+x,a
03b3: d5 c2 10  mov   $10c2+x,a
03b6: d5 c3 10  mov   $10c3+x,a
03b9: d5 c4 10  mov   $10c4+x,a
03bc: d5 c5 10  mov   $10c5+x,a
03bf: d5 cf 10  mov   $10cf+x,a
03c2: d5 d0 10  mov   $10d0+x,a
03c5: d5 b6 11  mov   $11b6+x,a
03c8: d5 bb 11  mov   $11bb+x,a
03cb: 6f        ret

03cc: e8 b6     mov   a,#$b6
03ce: c4 04     mov   $04,a
03d0: e8 10     mov   a,#$10
03d2: c4 05     mov   $05,a
03d4: e8 b6     mov   a,#$b6
03d6: c4 27     mov   $27,a
03d8: e8 11     mov   a,#$11
03da: c4 28     mov   $28,a
03dc: 8f 08 12  mov   $12,#$08
03df: 8d 12     mov   y,#$12
03e1: f7 04     mov   a,($04)+y
03e3: 10 03     bpl   $03e8
03e5: 5f 28 06  jmp   $0628

03e8: 8d 0a     mov   y,#$0a
03ea: f7 27     mov   a,($27)+y
03ec: f0 5c     beq   $044a
03ee: fc        inc   y
03ef: 60        clrc
03f0: 97 27     adc   a,($27)+y
03f2: d7 27     mov   ($27)+y,a
03f4: 9f        xcn   a
03f5: 28 0f     and   a,#$0f
03f7: f0 51     beq   $044a
03f9: c4 0e     mov   $0e,a
03fb: 8d 09     mov   y,#$09
03fd: f7 27     mov   a,($27)+y
03ff: 8d 1e     mov   y,#$1e
0401: 80        setc
0402: b7 04     sbc   a,($04)+y
0404: 30 1d     bmi   $0423
0406: f7 04     mov   a,($04)+y
0408: 60        clrc
0409: 84 0e     adc   a,$0e
040b: d7 04     mov   ($04)+y,a
040d: 8d 09     mov   y,#$09
040f: 77 27     cmp   a,($27)+y
0411: 90 2f     bcc   $0442
0413: f7 27     mov   a,($27)+y
0415: 5d        mov   x,a
0416: fc        inc   y
0417: e8 00     mov   a,#$00
0419: d7 27     mov   ($27)+y,a
041b: 7d        mov   a,x
041c: 8d 1e     mov   y,#$1e
041e: d7 04     mov   ($04)+y,a
0420: 5f 4a 04  jmp   $044a

0423: f7 04     mov   a,($04)+y
0425: 80        setc
0426: a4 0e     sbc   a,$0e
0428: 30 08     bmi   $0432
042a: d7 04     mov   ($04)+y,a
042c: 8d 09     mov   y,#$09
042e: 77 27     cmp   a,($27)+y
0430: b0 10     bcs   $0442
0432: f7 27     mov   a,($27)+y
0434: 5d        mov   x,a
0435: fc        inc   y
0436: e8 00     mov   a,#$00
0438: d7 27     mov   ($27)+y,a
043a: 7d        mov   a,x
043b: 8d 1e     mov   y,#$1e
043d: d7 04     mov   ($04)+y,a
043f: 5f 4a 04  jmp   $044a

0442: 8d 0b     mov   y,#$0b
0444: f7 27     mov   a,($27)+y
0446: 28 0f     and   a,#$0f
0448: d7 27     mov   ($27)+y,a
044a: 8d 14     mov   y,#$14
044c: f7 04     mov   a,($04)+y
044e: 60        clrc
044f: 88 07     adc   a,#$07
0451: c4 f2     mov   $f2,a
0453: 8d 1e     mov   y,#$1e
0455: f7 04     mov   a,($04)+y
0457: c4 f3     mov   $f3,a
0459: 8d 1d     mov   y,#$1d
045b: f7 04     mov   a,($04)+y
045d: f0 20     beq   $047f
045f: 8d 07     mov   y,#$07
0461: 60        clrc
0462: 97 04     adc   a,($04)+y
0464: d7 04     mov   ($04)+y,a
0466: 8d 1c     mov   y,#$1c
0468: f7 04     mov   a,($04)+y
046a: 9c        dec   a
046b: 10 0f     bpl   $047c
046d: dc        dec   y
046e: f7 04     mov   a,($04)+y
0470: fc        inc   y
0471: d7 04     mov   ($04)+y,a
0473: 8d 1d     mov   y,#$1d
0475: e8 00     mov   a,#$00
0477: 80        setc
0478: b7 04     sbc   a,($04)+y
047a: d7 04     mov   ($04)+y,a
047c: 3f df 0c  call  $0cdf
047f: 8d 08     mov   y,#$08
0481: f7 04     mov   a,($04)+y
0483: c4 0e     mov   $0e,a
0485: fc        inc   y
0486: f7 04     mov   a,($04)+y
0488: c4 0f     mov   $0f,a
048a: 8d 14     mov   y,#$14
048c: f7 04     mov   a,($04)+y
048e: 60        clrc
048f: 88 02     adc   a,#$02
0491: 5d        mov   x,a
0492: 8d 00     mov   y,#$00
0494: f7 27     mov   a,($27)+y
0496: f0 66     beq   $04fe
0498: 8d 1f     mov   y,#$1f
049a: f7 04     mov   a,($04)+y
049c: f0 60     beq   $04fe
049e: 8d 04     mov   y,#$04
04a0: f7 27     mov   a,($27)+y
04a2: 9c        dec   a
04a3: d7 27     mov   ($27)+y,a
04a5: d0 57     bne   $04fe
04a7: 8d 01     mov   y,#$01
04a9: f7 27     mov   a,($27)+y
04ab: 8d 04     mov   y,#$04
04ad: d7 27     mov   ($27)+y,a
04af: 8d 02     mov   y,#$02
04b1: f7 27     mov   a,($27)+y
04b3: 2d        push  a
04b4: fc        inc   y
04b5: f7 27     mov   a,($27)+y
04b7: fd        mov   y,a
04b8: ae        pop   a
04b9: da 1e     movw  $1e,ya
04bb: 8d 0f     mov   y,#$0f
04bd: f7 04     mov   a,($04)+y
04bf: 2d        push  a
04c0: dc        dec   y
04c1: f7 04     mov   a,($04)+y
04c3: ee        pop   y
04c4: 6d        push  y
04c5: 2d        push  a
04c6: 8d 1f     mov   y,#$1f
04c8: f7 04     mov   a,($04)+y
04ca: 30 09     bmi   $04d5
04cc: ae        pop   a
04cd: ee        pop   y
04ce: 7a 0e     addw  ya,$0e
04d0: da 0e     movw  $0e,ya
04d2: 5f df 04  jmp   $04df

04d5: ae        pop   a
04d6: ee        pop   y
04d7: da 20     movw  $20,ya
04d9: ba 0e     movw  ya,$0e
04db: 9a 20     subw  ya,$20
04dd: da 0e     movw  $0e,ya
04df: 8d 1f     mov   y,#$1f
04e1: f7 04     mov   a,($04)+y
04e3: 30 09     bmi   $04ee
04e5: ba 0e     movw  ya,$0e
04e7: 5a 1e     cmpw  ya,$1e
04e9: 90 13     bcc   $04fe
04eb: 5f f4 04  jmp   $04f4

04ee: ba 0e     movw  ya,$0e
04f0: 5a 1e     cmpw  ya,$1e
04f2: b0 0a     bcs   $04fe
04f4: ba 1e     movw  ya,$1e
04f6: da 0e     movw  $0e,ya
04f8: 8d 1f     mov   y,#$1f
04fa: e8 00     mov   a,#$00
04fc: d7 04     mov   ($04)+y,a
04fe: 8d 08     mov   y,#$08
0500: e4 0e     mov   a,$0e
0502: d7 04     mov   ($04)+y,a
0504: fc        inc   y
0505: e4 0f     mov   a,$0f
0507: d7 04     mov   ($04)+y,a
0509: 8d 19     mov   y,#$19
050b: f7 04     mov   a,($04)+y
050d: f0 4b     beq   $055a
050f: 9c        dec   a
0510: d7 04     mov   ($04)+y,a
0512: d0 23     bne   $0537
0514: fc        inc   y
0515: f7 04     mov   a,($04)+y
0517: dc        dec   y
0518: d7 04     mov   ($04)+y,a
051a: 8d 0a     mov   y,#$0a
051c: f7 04     mov   a,($04)+y
051e: c4 1e     mov   $1e,a
0520: fc        inc   y
0521: f7 04     mov   a,($04)+y
0523: c4 1f     mov   $1f,a
0525: e8 00     mov   a,#$00
0527: fd        mov   y,a
0528: 9a 1e     subw  ya,$1e
052a: da 1e     movw  $1e,ya
052c: 8d 0a     mov   y,#$0a
052e: e4 1e     mov   a,$1e
0530: d7 04     mov   ($04)+y,a
0532: e4 1f     mov   a,$1f
0534: fc        inc   y
0535: d7 04     mov   ($04)+y,a
0537: 8d 0a     mov   y,#$0a
0539: f7 04     mov   a,($04)+y
053b: 60        clrc
053c: 8d 0c     mov   y,#$0c
053e: 97 04     adc   a,($04)+y
0540: d7 04     mov   ($04)+y,a
0542: dc        dec   y
0543: f7 04     mov   a,($04)+y
0545: 8d 0d     mov   y,#$0d
0547: 97 04     adc   a,($04)+y
0549: d7 04     mov   ($04)+y,a
054b: 4d        push  x
054c: 8d 0c     mov   y,#$0c
054e: f7 04     mov   a,($04)+y
0550: 5d        mov   x,a
0551: fc        inc   y
0552: f7 04     mov   a,($04)+y
0554: fd        mov   y,a
0555: 7d        mov   a,x
0556: ce        pop   x
0557: 5f 5d 05  jmp   $055d

055a: e8 00     mov   a,#$00
055c: fd        mov   y,a
055d: 7a 0e     addw  ya,$0e
055f: da 0e     movw  $0e,ya
0561: 8d 0d     mov   y,#$0d
0563: f7 27     mov   a,($27)+y
0565: f0 47     beq   $05ae
0567: 9c        dec   a
0568: d7 27     mov   ($27)+y,a
056a: d0 17     bne   $0583
056c: 8d 12     mov   y,#$12
056e: f7 27     mov   a,($27)+y
0570: 8d 0d     mov   y,#$0d
0572: d7 27     mov   ($27)+y,a
0574: 68 01     cmp   a,#$01
0576: f0 0b     beq   $0583
0578: e8 00     mov   a,#$00
057a: 8d 10     mov   y,#$10
057c: d7 27     mov   ($27)+y,a
057e: fc        inc   y
057f: d7 27     mov   ($27)+y,a
0581: 2f 2b     bra   $05ae
0583: 8d 0e     mov   y,#$0e
0585: f7 27     mov   a,($27)+y
0587: 60        clrc
0588: 8d 10     mov   y,#$10
058a: 97 27     adc   a,($27)+y
058c: d7 27     mov   ($27)+y,a
058e: 8d 0f     mov   y,#$0f
0590: f7 27     mov   a,($27)+y
0592: 8d 11     mov   y,#$11
0594: 97 27     adc   a,($27)+y
0596: d7 27     mov   ($27)+y,a
0598: 8d 11     mov   y,#$11
059a: f7 27     mov   a,($27)+y
059c: 8d 16     mov   y,#$16
059e: 37 27     and   a,($27)+y
05a0: 2d        push  a
05a1: 8d 10     mov   y,#$10
05a3: f7 27     mov   a,($27)+y
05a5: 8d 15     mov   y,#$15
05a7: 37 27     and   a,($27)+y
05a9: ee        pop   y
05aa: 7a 0e     addw  ya,$0e
05ac: da 0e     movw  $0e,ya
05ae: ba 0e     movw  ya,$0e
05b0: d8 f2     mov   $f2,x
05b2: c4 f3     mov   $f3,a
05b4: 3d        inc   x
05b5: d8 f2     mov   $f2,x
05b7: cb f3     mov   $f3,y
05b9: 8d 05     mov   y,#$05
05bb: f7 27     mov   a,($27)+y
05bd: f0 69     beq   $0628
05bf: 9c        dec   a
05c0: d7 27     mov   ($27)+y,a
05c2: d0 21     bne   $05e5
05c4: fc        inc   y
05c5: f7 27     mov   a,($27)+y
05c7: dc        dec   y
05c8: d7 27     mov   ($27)+y,a
05ca: 8d 11     mov   y,#$11
05cc: f7 04     mov   a,($04)+y
05ce: 2d        push  a
05cf: dc        dec   y
05d0: f7 04     mov   a,($04)+y
05d2: ee        pop   y
05d3: da 0e     movw  $0e,ya
05d5: e8 00     mov   a,#$00
05d7: fd        mov   y,a
05d8: 9a 0e     subw  ya,$0e
05da: da 0e     movw  $0e,ya
05dc: 8d 10     mov   y,#$10
05de: d7 04     mov   ($04)+y,a
05e0: e4 0f     mov   a,$0f
05e2: fc        inc   y
05e3: d7 04     mov   ($04)+y,a
05e5: 8d 10     mov   y,#$10
05e7: f7 04     mov   a,($04)+y
05e9: c4 0e     mov   $0e,a
05eb: fc        inc   y
05ec: f7 04     mov   a,($04)+y
05ee: c4 0f     mov   $0f,a
05f0: 8d 02     mov   y,#$02
05f2: f7 04     mov   a,($04)+y
05f4: 5d        mov   x,a
05f5: 8d 05     mov   y,#$05
05f7: f7 04     mov   a,($04)+y
05f9: 2d        push  a
05fa: dc        dec   y
05fb: f7 04     mov   a,($04)+y
05fd: ee        pop   y
05fe: 7a 0e     addw  ya,$0e
0600: d5 00 01  mov   $0100+x,a
0603: dd        mov   a,y
0604: d5 01 01  mov   $0101+x,a
0607: 8d 05     mov   y,#$05
0609: d7 04     mov   ($04)+y,a
060b: dc        dec   y
060c: f5 00 01  mov   a,$0100+x
060f: d7 04     mov   ($04)+y,a
0611: 8d 07     mov   y,#$07
0613: f7 27     mov   a,($27)+y
0615: 9c        dec   a
0616: d7 27     mov   ($27)+y,a
0618: d0 0e     bne   $0628
061a: fc        inc   y
061b: f7 27     mov   a,($27)+y
061d: dc        dec   y
061e: d7 27     mov   ($27)+y,a
0620: 8d 13     mov   y,#$13
0622: f7 04     mov   a,($04)+y
0624: 04 14     or    a,$14
0626: c4 14     mov   $14,a
0628: 8d 00     mov   y,#$00
062a: e8 20     mov   a,#$20
062c: 7a 04     addw  ya,$04
062e: da 04     movw  $04,ya
0630: 8d 00     mov   y,#$00
0632: e8 20     mov   a,#$20
0634: 7a 27     addw  ya,$27
0636: da 27     movw  $27,ya
0638: 8b 12     dec   $12
063a: f0 03     beq   $063f
063c: 5f df 03  jmp   $03df

063f: e4 2c     mov   a,$2c
0641: 64 2a     cmp   a,$2a
0643: f0 40     beq   $0685
0645: e4 29     mov   a,$29
0647: f0 34     beq   $067d
0649: 60        clrc
064a: 84 2b     adc   a,$2b
064c: c4 2b     mov   $2b,a
064e: 9f        xcn   a
064f: 28 0f     and   a,#$0f
0651: f0 32     beq   $0685
0653: c4 0e     mov   $0e,a
0655: e4 2a     mov   a,$2a
0657: 64 2c     cmp   a,$2c
0659: 90 0d     bcc   $0668
065b: e4 0e     mov   a,$0e
065d: 60        clrc
065e: 84 2c     adc   a,$2c
0660: c4 2c     mov   $2c,a
0662: 64 2a     cmp   a,$2a
0664: 90 0f     bcc   $0675
0666: 2f 1a     bra   $0682
0668: e4 2c     mov   a,$2c
066a: 80        setc
066b: a4 0e     sbc   a,$0e
066d: c4 2c     mov   $2c,a
066f: 30 11     bmi   $0682
0671: 64 2a     cmp   a,$2a
0673: 90 0d     bcc   $0682
0675: e4 2b     mov   a,$2b
0677: 28 0f     and   a,#$0f
0679: c4 2b     mov   $2b,a
067b: 2f 08     bra   $0685
067d: 8f 40 29  mov   $29,#$40
0680: 2f bd     bra   $063f
0682: fa 2a 2c  mov   ($2c),($2a)
0685: e4 2d     mov   a,$2d
0687: f0 1c     beq   $06a5
0689: 9c        dec   a
068a: c4 2d     mov   $2d,a
068c: 3f 92 06  call  $0692
068f: 5f e0 06  jmp   $06e0

0692: 8f 2c f2  mov   $f2,#$2c
0695: 8f 00 f3  mov   $f3,#$00
0698: 8f 3c f2  mov   $f2,#$3c
069b: 8f 00 f3  mov   $f3,#$00
069e: 8f 0d f2  mov   $f2,#$0d
06a1: 8f 00 f3  mov   $f3,#$00
06a4: 6f        ret

06a5: e4 2e     mov   a,$2e
06a7: 64 2f     cmp   a,$2f
06a9: f0 1f     beq   $06ca
06ab: 3f 92 06  call  $0692
06ae: f8 2e     mov   x,$2e
06b0: d8 2f     mov   $2f,x
06b2: f5 05 07  mov   a,$0705+x
06b5: 8f 6d f2  mov   $f2,#$6d
06b8: c4 f3     mov   $f3,a
06ba: c5 a3 10  mov   $10a3,a
06bd: 8f 7d f2  mov   $f2,#$7d
06c0: d8 f3     mov   $f3,x
06c2: f5 0d 07  mov   a,$070d+x
06c5: c4 2d     mov   $2d,a
06c7: 5f e0 06  jmp   $06e0

06ca: e4 2c     mov   a,$2c
06cc: eb 30     mov   y,$30
06ce: cf        mul   ya
06cf: dd        mov   a,y
06d0: 8f 2c f2  mov   $f2,#$2c
06d3: c4 f3     mov   $f3,a
06d5: 8f 3c f2  mov   $f2,#$3c
06d8: c4 f3     mov   $f3,a
06da: 8f 0d f2  mov   $f2,#$0d
06dd: fa 31 f3  mov   ($f3),($31)
06e0: 8f 4d f2  mov   $f2,#$4d
06e3: fa 33 f3  mov   ($f3),($33)
06e6: e4 2c     mov   a,$2c
06e8: 8f 0c f2  mov   $f2,#$0c
06eb: c4 f3     mov   $f3,a
06ed: 8f 1c f2  mov   $f2,#$1c
06f0: c4 f3     mov   $f3,a
06f2: 8f 5c f2  mov   $f2,#$5c
06f5: fa 15 f3  mov   ($f3),($15)
06f8: 8f 4c f2  mov   $f2,#$4c
06fb: fa 14 f3  mov   ($f3),($14)
06fe: 8f 00 14  mov   $14,#$00
0701: 8f 00 15  mov   $15,#$00
0704: 6f        ret

0705: db $ff,$f7,$ef,$e7,$df,$d7,$cf,$c7

070d: db $01,$01,$02,$03,$04,$04,$05,$06

0715: e4 26     mov   a,$26
0717: f0 eb     beq   $0704
0719: e8 b6     mov   a,#$b6
071b: c4 04     mov   $04,a
071d: e8 12     mov   a,#$12
071f: c4 05     mov   $05,a
0721: 8f 08 12  mov   $12,#$08
0724: 8d 07     mov   y,#$07
0726: f7 04     mov   a,($04)+y
0728: d0 03     bne   $072d
072a: 5f d4 07  jmp   $07d4

072d: 8d 00     mov   y,#$00
072f: f7 04     mov   a,($04)+y
0731: 9c        dec   a
0732: d7 04     mov   ($04)+y,a
0734: 68 ff     cmp   a,#$ff
0736: f0 03     beq   $073b
0738: 5f d4 07  jmp   $07d4

073b: 8d 02     mov   y,#$02
073d: f7 04     mov   a,($04)+y
073f: c4 0a     mov   $0a,a
0741: fc        inc   y
0742: f7 04     mov   a,($04)+y
0744: c4 0b     mov   $0b,a
0746: fc        inc   y
0747: f7 04     mov   a,($04)+y
0749: c4 0e     mov   $0e,a
074b: fc        inc   y
074c: f7 04     mov   a,($04)+y
074e: c4 0f     mov   $0f,a
0750: ba 06     movw  ya,$06
0752: 7a 0a     addw  ya,$0a
0754: 7a 0e     addw  ya,$0e
0756: da 0a     movw  $0a,ya
0758: 8d 00     mov   y,#$00
075a: f7 0a     mov   a,($0a)+y
075c: 68 f0     cmp   a,#$f0
075e: 90 03     bcc   $0763
0760: 5f e4 07  jmp   $07e4

0763: 68 40     cmp   a,#$40
0765: 90 05     bcc   $076c
0767: 28 3f     and   a,#$3f
0769: 5f 85 08  jmp   $0885

076c: 2d        push  a
076d: 8d 02     mov   y,#$02
076f: f7 0a     mov   a,($0a)+y
0771: 28 0f     and   a,#$0f
0773: 9f        xcn   a
0774: 1c        asl   a
0775: 5d        mov   x,a
0776: f5 c9 11  mov   a,$11c9+x
0779: d0 4c     bne   $07c7
077b: 8d 02     mov   y,#$02
077d: f7 0a     mov   a,($0a)+y
077f: 9f        xcn   a
0780: 28 0f     and   a,#$0f
0782: d5 b9 10  mov   $10b9+x,a
0785: 8d 01     mov   y,#$01
0787: f7 0a     mov   a,($0a)+y
0789: 1c        asl   a
078a: fd        mov   y,a
078b: f7 08     mov   a,($08)+y
078d: d5 cb 10  mov   $10cb+x,a
0790: fc        inc   y
0791: f7 08     mov   a,($08)+y
0793: d5 cc 10  mov   $10cc+x,a
0796: f5 b7 10  mov   a,$10b7+x
0799: d5 c2 11  mov   $11c2+x,a
079c: ae        pop   a
079d: 8d 06     mov   y,#$06
079f: 60        clrc
07a0: 97 04     adc   a,($04)+y
07a2: d5 b7 10  mov   $10b7+x,a
07a5: e8 01     mov   a,#$01
07a7: d5 c8 10  mov   $10c8+x,a
07aa: e8 00     mov   a,#$00
07ac: d5 cd 10  mov   $10cd+x,a
07af: d5 ce 10  mov   $10ce+x,a
07b2: d5 bc 10  mov   $10bc+x,a
07b5: d5 b6 10  mov   $10b6+x,a
07b8: d5 c2 10  mov   $10c2+x,a
07bb: d5 c3 10  mov   $10c3+x,a
07be: d5 cf 10  mov   $10cf+x,a
07c1: d5 d0 10  mov   $10d0+x,a
07c4: 5f cb 07  jmp   $07cb

07c7: ae        pop   a
07c8: 5f cb 07  jmp   $07cb

07cb: 3f 17 08  call  $0817
07ce: 5f 3b 07  jmp   $073b

07d1: 3f 17 08  call  $0817
07d4: 8d 00     mov   y,#$00
07d6: e8 08     mov   a,#$08
07d8: 7a 04     addw  ya,$04
07da: da 04     movw  $04,ya
07dc: 8b 12     dec   $12
07de: f0 03     beq   $07e3
07e0: 5f 24 07  jmp   $0724

07e3: 6f        ret

07e4: 28 0f     and   a,#$0f
07e6: 1c        asl   a
07e7: 5d        mov   x,a
07e8: 1f eb 07  jmp   ($07eb+x)

07eb: dw $0828  ; f0
07ed: dw $0834  ; f1
07ef: dw $080b  ; f2
07f1: dw $085d  ; f3
07f3: dw $0868  ; f4
07f5: dw $0871  ; f5
07f7: dw $080b  ; f6
07f9: dw $080b  ; f7
07fb: dw $080b  ; f8
07fd: dw $080b  ; f9
07ff: dw $080b  ; fa
0801: dw $080b  ; fb
0803: dw $080b  ; fc
0805: dw $080b  ; fd
0807: dw $080b  ; fe
0809: dw $080b  ; ff

080b: 3f 17 08  call  $173f
080e: 8d 00     mov   y,#$00
0810: e8 01     mov   a,#$01
0812: d7 04     mov   ($04)+y,a
0814: 5f d4 07  jmp   $07d4

0817: e8 04     mov   a,#$04
0819: 8d 04     mov   y,#$04
081b: 60        clrc
081c: 97 04     adc   a,($04)+y
081e: d7 04     mov   ($04)+y,a
0820: fc        inc   y
0821: e8 00     mov   a,#$00
0823: 97 04     adc   a,($04)+y
0825: d7 04     mov   ($04)+y,a
0827: 6f        ret

0828: 8d 00     mov   y,#$00
082a: e8 ff     mov   a,#$ff
082c: d7 04     mov   ($04)+y,a
082e: 3f ec 08  call  $08ec
0831: 5f 15 07  jmp   $0715

0834: 8d 01     mov   y,#$01
0836: f7 04     mov   a,($04)+y
0838: f0 1a     beq   $0854
083a: 9c        dec   a
083b: d7 04     mov   ($04)+y,a
083d: d0 03     bne   $0842
083f: 5f cb 07  jmp   $07cb

0842: 8d 02     mov   y,#$02
0844: f7 0a     mov   a,($0a)+y
0846: 5d        mov   x,a
0847: fc        inc   y
0848: f7 0a     mov   a,($0a)+y
084a: fc        inc   y
084b: d7 04     mov   ($04)+y,a
084d: 7d        mov   a,x
084e: fc        inc   y
084f: d7 04     mov   ($04)+y,a
0851: 5f 3b 07  jmp   $073b

0854: 8d 01     mov   y,#$01
0856: f7 0a     mov   a,($0a)+y
0858: d7 04     mov   ($04)+y,a
085a: 5f 42 08  jmp   $0842

085d: 8d 01     mov   y,#$01
085f: f7 0a     mov   a,($0a)+y
0861: 8d 00     mov   y,#$00
0863: d7 04     mov   ($04)+y,a
0865: 5f d1 07  jmp   $07d1

0868: 8d 07     mov   y,#$07
086a: e8 00     mov   a,#$00
086c: d7 04     mov   ($04)+y,a
086e: 5f d4 07  jmp   $07d4

0871: 8d 02     mov   y,#$02
0873: f7 0a     mov   a,($0a)+y
0875: 28 0f     and   a,#$0f
0877: 9f        xcn   a
0878: 1c        asl   a
0879: 5d        mov   x,a
087a: e8 10     mov   a,#$10
087c: 15 b9 10  or    a,$10b9+x
087f: d5 b9 10  mov   $10b9+x,a
0882: 5f cb 07  jmp   $07cb

0885: 2d        push  a
0886: 8d 02     mov   y,#$02
0888: f7 0a     mov   a,($0a)+y
088a: 28 07     and   a,#$07
088c: 9f        xcn   a
088d: 1c        asl   a
088e: 5d        mov   x,a
088f: f5 c9 11  mov   a,$11c9+x
0892: d0 54     bne   $08e8
0894: 8d 02     mov   y,#$02
0896: f7 0a     mov   a,($0a)+y
0898: 9f        xcn   a
0899: 28 0f     and   a,#$0f
089b: d5 b9 10  mov   $10b9+x,a
089e: 8d 01     mov   y,#$01
08a0: f7 0a     mov   a,($0a)+y
08a2: 1c        asl   a
08a3: fd        mov   y,a
08a4: f7 08     mov   a,($08)+y
08a6: d5 cb 10  mov   $10cb+x,a
08a9: fc        inc   y
08aa: f7 08     mov   a,($08)+y
08ac: d5 cc 10  mov   $10cc+x,a
08af: f5 b7 10  mov   a,$10b7+x
08b2: d5 c2 11  mov   $11c2+x,a
08b5: ae        pop   a
08b6: 8d 06     mov   y,#$06
08b8: 60        clrc
08b9: 97 04     adc   a,($04)+y
08bb: d5 b7 10  mov   $10b7+x,a
08be: e8 01     mov   a,#$01
08c0: d5 c8 10  mov   $10c8+x,a
08c3: e8 00     mov   a,#$00
08c5: d5 cd 10  mov   $10cd+x,a
08c8: d5 ce 10  mov   $10ce+x,a
08cb: d5 bc 10  mov   $10bc+x,a
08ce: d5 b6 10  mov   $10b6+x,a
08d1: d5 c2 10  mov   $10c2+x,a
08d4: d5 c3 10  mov   $10c3+x,a
08d7: d5 cf 10  mov   $10cf+x,a
08da: d5 d0 10  mov   $10d0+x,a
08dd: 8d 03     mov   y,#$03
08df: f7 0a     mov   a,($0a)+y
08e1: 8d 00     mov   y,#$00
08e3: d7 04     mov   ($04)+y,a
08e5: 5f d1 07  jmp   $07d1

08e8: ae        pop   a
08e9: 5f dd 08  jmp   $08dd

08ec: e8 10     mov   a,#$10
08ee: 8d 00     mov   y,#$00
08f0: 7a 18     addw  ya,$18
08f2: da 18     movw  $18,ya
08f4: 3f f8 08  call  $08f8
08f7: 6f        ret

08f8: ba 18     movw  ya,$18
08fa: 7a 24     addw  ya,$24
08fc: c4 1a     mov   $1a,a
08fe: cb 1b     mov   $1b,y
0900: e8 b6     mov   a,#$b6
0902: c4 1c     mov   $1c,a
0904: e8 12     mov   a,#$12
0906: c4 1d     mov   $1d,a
0908: 8f 08 13  mov   $13,#$08
090b: 8d 00     mov   y,#$00
090d: f7 1a     mov   a,($1a)+y
090f: 68 fe     cmp   a,#$fe
0911: d0 21     bne   $0934
0913: fc        inc   y
0914: f7 1a     mov   a,($1a)+y
0916: 68 ef     cmp   a,#$ef
0918: d0 1a     bne   $0934
091a: fc        inc   y
091b: f7 1a     mov   a,($1a)+y
091d: 28 07     and   a,#$07
091f: 1c        asl   a
0920: 5d        mov   x,a
0921: 1f 24 09  jmp   ($0924+x)

0924: dw $09a8
0926: dw $09a9
0928: dw $0990
092a: dw $099b
092c: dw $0990
092e: dw $0990
0930: dw $0990
0932: dw $0990

0934: 8d 01     mov   y,#$01
0936: f7 1a     mov   a,($1a)+y
0938: 68 ff     cmp   a,#$ff
093a: d0 08     bne   $0944
093c: 8d 07     mov   y,#$07
093e: e8 00     mov   a,#$00
0940: d7 1c     mov   ($1c)+y,a
0942: 2f 37     bra   $097b
0944: 68 80     cmp   a,#$80
0946: f0 33     beq   $097b
0948: 28 7f     and   a,#$7f
094a: 1c        asl   a
094b: fd        mov   y,a
094c: f7 16     mov   a,($16)+y
094e: 5d        mov   x,a
094f: fc        inc   y
0950: f7 16     mov   a,($16)+y
0952: 8d 03     mov   y,#$03
0954: d7 1c     mov   ($1c)+y,a
0956: 7d        mov   a,x
0957: dc        dec   y
0958: d7 1c     mov   ($1c)+y,a
095a: 8d 00     mov   y,#$00
095c: f7 1a     mov   a,($1a)+y
095e: 8d 06     mov   y,#$06
0960: d7 1c     mov   ($1c)+y,a
0962: e8 00     mov   a,#$00
0964: 8d 01     mov   y,#$01
0966: d7 1c     mov   ($1c)+y,a
0968: 8d 04     mov   y,#$04
096a: d7 1c     mov   ($1c)+y,a
096c: fc        inc   y
096d: d7 1c     mov   ($1c)+y,a
096f: 8d 00     mov   y,#$00
0971: e8 00     mov   a,#$00
0973: d7 1c     mov   ($1c)+y,a
0975: 8d 07     mov   y,#$07
0977: e8 01     mov   a,#$01
0979: d7 1c     mov   ($1c)+y,a
097b: e8 02     mov   a,#$02
097d: 8d 00     mov   y,#$00
097f: 7a 1a     addw  ya,$1a
0981: da 1a     movw  $1a,ya
0983: e8 08     mov   a,#$08
0985: 8d 00     mov   y,#$00
0987: 7a 1c     addw  ya,$1c
0989: da 1c     movw  $1c,ya
098b: 8b 13     dec   $13
098d: d0 a5     bne   $0934
098f: 6f        ret

0990: e8 10     mov   a,#$10
0992: 8d 00     mov   y,#$00
0994: 7a 18     addw  ya,$18
0996: da 18     movw  $18,ya
0998: 5f f8 08  jmp   $08f8

099b: 8d 0e     mov   y,#$0e
099d: f7 1a     mov   a,($1a)+y
099f: d0 02     bne   $09a3
09a1: e8 82     mov   a,#$82
09a3: c4 fa     mov   $fa,a
09a5: 5f 90 09  jmp   $0990

09a8: 6f        ret

09a9: 8d 04     mov   y,#$04
09ab: f7 1a     mov   a,($1a)+y
09ad: c4 18     mov   $18,a
09af: fc        inc   y
09b0: f7 1a     mov   a,($1a)+y
09b2: c4 19     mov   $19,a
09b4: ba 18     movw  ya,$18
09b6: 7a 18     addw  ya,$18
09b8: da 18     movw  $18,ya
09ba: 7a 18     addw  ya,$18
09bc: da 18     movw  $18,ya
09be: 7a 18     addw  ya,$18
09c0: da 18     movw  $18,ya
09c2: 7a 18     addw  ya,$18
09c4: da 18     movw  $18,ya
09c6: 5f f8 08  jmp   $08f8

09c9: 8f 00 26  mov   $26,#$00
09cc: 8f 5c f2  mov   $f2,#$5c
09cf: 8f ff f3  mov   $f3,#$ff
09d2: cd 00     mov   x,#$00
09d4: f5 36 10  mov   a,$1036+x
09d7: 68 44     cmp   a,#$44
09d9: f0 04     beq   $09df
09db: d8 f2     mov   $f2,x
09dd: c4 f3     mov   $f3,a
09df: 3d        inc   x
09e0: c8 80     cmp   x,#$80
09e2: d0 f0     bne   $09d4
09e4: 8f 00 2e  mov   $2e,#$00
09e7: 8f 01 2d  mov   $2d,#$01
09ea: 8f 00 30  mov   $30,#$00
09ed: 8f 40 32  mov   $32,#$40
09f0: 8f 00 33  mov   $33,#$00
09f3: 8f 00 2f  mov   $2f,#$00
09f6: cd 00     mov   x,#$00
09f8: e8 00     mov   a,#$00
09fa: d5 cf 10  mov   $10cf+x,a
09fd: d5 d3 10  mov   $10d3+x,a
0a00: d5 b6 11  mov   $11b6+x,a
0a03: d5 bb 11  mov   $11bb+x,a
0a06: d5 c0 11  mov   $11c0+x,a
0a09: d5 c3 11  mov   $11c3+x,a
0a0c: d5 c9 11  mov   $11c9+x,a
0a0f: e8 ff     mov   a,#$ff
0a11: d5 c8 10  mov   $10c8+x,a
0a14: d5 cb 11  mov   $11cb+x,a
0a17: d5 cc 11  mov   $11cc+x,a
0a1a: 7d        mov   a,x
0a1b: 60        clrc
0a1c: 88 20     adc   a,#$20
0a1e: 5d        mov   x,a
0a1f: d0 d7     bne   $09f8
0a21: 6f        ret

0a22: e8 b6     mov   a,#$b6
0a24: c4 04     mov   $04,a
0a26: e8 10     mov   a,#$10
0a28: c4 05     mov   $05,a
0a2a: e8 b6     mov   a,#$b6
0a2c: c4 27     mov   $27,a
0a2e: e8 11     mov   a,#$11
0a30: c4 28     mov   $28,a
0a32: 8f 08 12  mov   $12,#$08
0a35: 8d 14     mov   y,#$14
0a37: f7 27     mov   a,($27)+y
0a39: f0 0a     beq   $0a45
0a3b: 9c        dec   a
0a3c: d7 27     mov   ($27)+y,a
0a3e: d0 05     bne   $0a45
0a40: e8 00     mov   a,#$00
0a42: dc        dec   y
0a43: d7 27     mov   ($27)+y,a
0a45: 8d 12     mov   y,#$12
0a47: f7 04     mov   a,($04)+y
0a49: 30 7b     bmi   $0ac6
0a4b: 9c        dec   a
0a4c: d7 04     mov   ($04)+y,a
0a4e: 10 76     bpl   $0ac6
0a50: cd 00     mov   x,#$00
0a52: 8d 15     mov   y,#$15
0a54: f7 04     mov   a,($04)+y
0a56: c4 0a     mov   $0a,a
0a58: fc        inc   y
0a59: f7 04     mov   a,($04)+y
0a5b: c4 0b     mov   $0b,a
0a5d: fc        inc   y
0a5e: f7 04     mov   a,($04)+y
0a60: c4 0e     mov   $0e,a
0a62: fc        inc   y
0a63: f7 04     mov   a,($04)+y
0a65: c4 0f     mov   $0f,a
0a67: ba 06     movw  ya,$06
0a69: 7a 0a     addw  ya,$0a
0a6b: 7a 0e     addw  ya,$0e
0a6d: da 0a     movw  $0a,ya
0a6f: 8d 00     mov   y,#$00
0a71: f7 0a     mov   a,($0a)+y
0a73: 1c        asl   a
0a74: 5d        mov   x,a
0a75: 1f 78 0a  jmp   ($0a78+x)

0a78: dw $0f9d  ; 00
0a7a: dw $0f5f  ; 01
0a7c: dw $0ddc  ; 02
0a7e: dw $0cd2  ; 03
0a80: dw $0f53  ; 04
0a82: dw $0f2b  ; 05
0a84: dw $0bc5  ; 06
0a86: dw $0fa6  ; 07
0a88: dw $0e85  ; 08
0a8a: dw $0e76  ; 09
0a8c: dw $0b9f  ; 0a
0a8e: dw $0d2d  ; 0b
0a90: dw $0d4e  ; 0c
0a92: dw $0e42  ; 0d
0a94: dw $0e6b  ; 0e
0a96: dw $0c5d  ; 0f
0a98: dw $0dac  ; 10
0a9a: dw $0c81  ; 11
0a9c: dw $0b60  ; 12
0a9e: dw $0cbc  ; 13
0aa0: dw $0d84  ; 14
0aa2: dw $0b77  ; 15
0aa4: dw $0b8a  ; 16
0aa6: dw $0e7b  ; 17
0aa8: dw $0e0b  ; 18
0aaa: dw $0e31  ; 19
0aac: dw $0bee  ; 1a
0aae: dw $0c49  ; 1b
0ab0: dw $0b39  ; 1c
0ab2: dw $0b0a  ; 1d
0ab4: dw $0b26  ; 1e
0ab6: dw $0af5  ; 1f
0ab8: dw $0af5  ; 20

0aba: 3f e4 0a  call  $0ae4
0abd: 5f c6 0a  jmp   $0ac6

0ac0: e8 01     mov   a,#$01
0ac2: 8d 12     mov   y,#$12
0ac4: d7 04     mov   ($04)+y,a
0ac6: 8d 00     mov   y,#$00
0ac8: e8 20     mov   a,#$20
0aca: 7a 04     addw  ya,$04
0acc: da 04     movw  $04,ya
0ace: 8d 00     mov   y,#$00
0ad0: e8 20     mov   a,#$20
0ad2: 7a 27     addw  ya,$27
0ad4: da 27     movw  $27,ya
0ad6: 8b 12     dec   $12
0ad8: f0 03     beq   $0add
0ada: 5f 35 0a  jmp   $0a35

0add: 6f        ret

0ade: 3f e4 0a  call  $0ae4
0ae1: 5f 50 0a  jmp   $0a50

0ae4: e8 04     mov   a,#$04
0ae6: 8d 17     mov   y,#$17
0ae8: 60        clrc
0ae9: 97 04     adc   a,($04)+y
0aeb: d7 04     mov   ($04)+y,a
0aed: fc        inc   y
0aee: e8 00     mov   a,#$00
0af0: 97 04     adc   a,($04)+y
0af2: d7 04     mov   ($04)+y,a
0af4: 6f        ret

0af5: 8d 02     mov   y,#$02
0af7: f7 0a     mov   a,($0a)+y
0af9: 9f        xcn   a
0afa: 1c        asl   a
0afb: 5d        mov   x,a
0afc: fc        inc   y
0afd: f7 0a     mov   a,($0a)+y
0aff: d5 c9 11  mov   $11c9+x,a
0b02: e8 00     mov   a,#$00
0b04: d5 ca 11  mov   $11ca+x,a
0b07: 5f de 0a  jmp   $0ade

0b0a: 8d 04     mov   y,#$04
0b0c: cd 0f     mov   x,#$0f
0b0e: d8 f2     mov   $f2,x
0b10: f7 0a     mov   a,($0a)+y
0b12: c4 f3     mov   $f3,a
0b14: 7d        mov   a,x
0b15: 60        clrc
0b16: 88 10     adc   a,#$10
0b18: 5d        mov   x,a
0b19: fc        inc   y
0b1a: ad 0c     cmp   y,#$0c
0b1c: d0 f0     bne   $0b0e
0b1e: e8 0c     mov   a,#$0c
0b20: 3f e6 0a  call  $0ae6
0b23: 5f 50 0a  jmp   $0a50

0b26: 8d 03     mov   y,#$03
0b28: f7 0a     mov   a,($0a)+y
0b2a: 5d        mov   x,a
0b2b: dc        dec   y
0b2c: f7 0a     mov   a,($0a)+y
0b2e: 8d 16     mov   y,#$16
0b30: d7 27     mov   ($27)+y,a
0b32: dc        dec   y
0b33: 7d        mov   a,x
0b34: d7 27     mov   ($27)+y,a
0b36: 5f de 0a  jmp   $0ade

0b39: 8d 01     mov   y,#$01
0b3b: f7 0a     mov   a,($0a)+y
0b3d: 8d 0d     mov   y,#$0d
0b3f: d7 27     mov   ($27)+y,a
0b41: 8d 12     mov   y,#$12
0b43: d7 27     mov   ($27)+y,a
0b45: 8d 03     mov   y,#$03
0b47: f7 0a     mov   a,($0a)+y
0b49: 8d 0e     mov   y,#$0e
0b4b: d7 27     mov   ($27)+y,a
0b4d: 8d 02     mov   y,#$02
0b4f: f7 0a     mov   a,($0a)+y
0b51: 8d 0f     mov   y,#$0f
0b53: d7 27     mov   ($27)+y,a
0b55: e8 00     mov   a,#$00
0b57: fc        inc   y
0b58: d7 27     mov   ($27)+y,a
0b5a: fc        inc   y
0b5b: d7 27     mov   ($27)+y,a
0b5d: 5f de 0a  jmp   $0ade

0b60: 8d 01     mov   y,#$01
0b62: f7 0a     mov   a,($0a)+y
0b64: 28 07     and   a,#$07
0b66: c4 2e     mov   $2e,a
0b68: 3f 6e 0b  call  $0b6e
0b6b: 5f de 0a  jmp   $0ade

0b6e: 8d 13     mov   y,#$13
0b70: f7 04     mov   a,($04)+y
0b72: 04 33     or    a,$33
0b74: c4 33     mov   $33,a
0b76: 6f        ret

0b77: 8d 01     mov   y,#$01
0b79: f7 0a     mov   a,($0a)+y
0b7b: f0 02     beq   $0b7f
0b7d: c4 31     mov   $31,a
0b7f: 8d 03     mov   y,#$03
0b81: f7 0a     mov   a,($0a)+y
0b83: f0 e3     beq   $0b68
0b85: c4 30     mov   $30,a
0b87: 5f 68 0b  jmp   $0b68

0b8a: 3f 90 0b  call  $0b90
0b8d: 5f de 0a  jmp   $0ade

0b90: 8d 13     mov   y,#$13
0b92: f7 04     mov   a,($04)+y
0b94: 48 ff     eor   a,#$ff
0b96: c4 0e     mov   $0e,a
0b98: e4 33     mov   a,$33
0b9a: 24 0e     and   a,$0e
0b9c: c4 33     mov   $33,a
0b9e: 6f        ret

0b9f: e8 00     mov   a,#$00
0ba1: 8d 19     mov   y,#$19
0ba3: d7 04     mov   ($04)+y,a
0ba5: 8d 1d     mov   y,#$1d
0ba7: d7 04     mov   ($04)+y,a
0ba9: 8d 00     mov   y,#$00
0bab: d7 27     mov   ($27)+y,a
0bad: 8d 0a     mov   y,#$0a
0baf: d7 27     mov   ($27)+y,a
0bb1: 8d 05     mov   y,#$05
0bb3: d7 27     mov   ($27)+y,a
0bb5: 8d 0d     mov   y,#$0d
0bb7: d7 27     mov   ($27)+y,a
0bb9: 8d 15     mov   y,#$15
0bbb: e8 ff     mov   a,#$ff
0bbd: d7 27     mov   ($27)+y,a
0bbf: fc        inc   y
0bc0: d7 27     mov   ($27)+y,a
0bc2: 5f de 0a  jmp   $0ade

0bc5: 8d 01     mov   y,#$01
0bc7: f7 0a     mov   a,($0a)+y
0bc9: 1c        asl   a
0bca: fd        mov   y,a
0bcb: f7 08     mov   a,($08)+y
0bcd: c4 0e     mov   $0e,a
0bcf: fc        inc   y
0bd0: f7 08     mov   a,($08)+y
0bd2: 8d 16     mov   y,#$16
0bd4: d7 04     mov   ($04)+y,a
0bd6: dc        dec   y
0bd7: e4 0e     mov   a,$0e
0bd9: d7 04     mov   ($04)+y,a
0bdb: 8d 02     mov   y,#$02
0bdd: f7 0a     mov   a,($0a)+y
0bdf: 8d 18     mov   y,#$18
0be1: d7 04     mov   ($04)+y,a
0be3: 8d 03     mov   y,#$03
0be5: f7 0a     mov   a,($0a)+y
0be7: 8d 17     mov   y,#$17
0be9: d7 04     mov   ($04)+y,a
0beb: 5f 50 0a  jmp   $0a50

0bee: 8d 02     mov   y,#$02
0bf0: f7 0a     mov   a,($0a)+y
0bf2: 28 0f     and   a,#$0f
0bf4: 9f        xcn   a
0bf5: 1c        asl   a
0bf6: 5d        mov   x,a
0bf7: f5 c9 11  mov   a,$11c9+x
0bfa: f0 03     beq   $0bff
0bfc: 5f de 0a  jmp   $0ade

0bff: 8d 02     mov   y,#$02
0c01: f7 0a     mov   a,($0a)+y
0c03: 9f        xcn   a
0c04: 28 0f     and   a,#$0f
0c06: d5 b9 10  mov   $10b9+x,a
0c09: 8d 01     mov   y,#$01
0c0b: f7 0a     mov   a,($0a)+y
0c0d: 1c        asl   a
0c0e: fd        mov   y,a
0c0f: f7 08     mov   a,($08)+y
0c11: d5 cb 10  mov   $10cb+x,a
0c14: fc        inc   y
0c15: f7 08     mov   a,($08)+y
0c17: d5 cc 10  mov   $10cc+x,a
0c1a: f5 b7 10  mov   a,$10b7+x
0c1d: d5 c2 11  mov   $11c2+x,a
0c20: 8d 01     mov   y,#$01
0c22: f7 04     mov   a,($04)+y
0c24: d5 b7 10  mov   $10b7+x,a
0c27: e8 01     mov   a,#$01
0c29: d5 c8 10  mov   $10c8+x,a
0c2c: e8 00     mov   a,#$00
0c2e: d5 cd 10  mov   $10cd+x,a
0c31: d5 ce 10  mov   $10ce+x,a
0c34: d5 bc 10  mov   $10bc+x,a
0c37: d5 b6 10  mov   $10b6+x,a
0c3a: d5 c2 10  mov   $10c2+x,a
0c3d: d5 c3 10  mov   $10c3+x,a
0c40: d5 cf 10  mov   $10cf+x,a
0c43: d5 d0 10  mov   $10d0+x,a
0c46: 5f de 0a  jmp   $0ade

0c49: 8d 02     mov   y,#$02
0c4b: f7 0a     mov   a,($0a)+y
0c4d: 28 0f     and   a,#$0f
0c4f: 9f        xcn   a
0c50: 1c        asl   a
0c51: 5d        mov   x,a
0c52: f5 b9 10  mov   a,$10b9+x
0c55: 08 10     or    a,#$10
0c57: d5 b9 10  mov   $10b9+x,a
0c5a: 5f de 0a  jmp   $0ade

0c5d: 8d 02     mov   y,#$02
0c5f: f7 0a     mov   a,($0a)+y
0c61: 5d        mov   x,a
0c62: 8d 03     mov   y,#$03
0c64: f7 0a     mov   a,($0a)+y
0c66: c8 00     cmp   x,#$00
0c68: f0 03     beq   $0c6d
0c6a: 3f 51 0e  call  $0e51
0c6d: 8d 09     mov   y,#$09
0c6f: d7 27     mov   ($27)+y,a
0c71: 8d 01     mov   y,#$01
0c73: f7 0a     mov   a,($0a)+y
0c75: 8d 0a     mov   y,#$0a
0c77: d7 27     mov   ($27)+y,a
0c79: e8 00     mov   a,#$00
0c7b: fc        inc   y
0c7c: d7 27     mov   ($27)+y,a
0c7e: 5f de 0a  jmp   $0ade

0c81: 8d 01     mov   y,#$01
0c83: f7 0a     mov   a,($0a)+y
0c85: 8d 05     mov   y,#$05
0c87: d7 27     mov   ($27)+y,a
0c89: fc        inc   y
0c8a: d7 27     mov   ($27)+y,a
0c8c: 8d 02     mov   y,#$02
0c8e: f7 0a     mov   a,($0a)+y
0c90: 8d 07     mov   y,#$07
0c92: d7 27     mov   ($27)+y,a
0c94: fc        inc   y
0c95: d7 27     mov   ($27)+y,a
0c97: 8d 03     mov   y,#$03
0c99: f7 0a     mov   a,($0a)+y
0c9b: 30 0f     bmi   $0cac
0c9d: 8d 09     mov   y,#$09
0c9f: cf        mul   ya
0ca0: 6d        push  y
0ca1: 8d 10     mov   y,#$10
0ca3: d7 04     mov   ($04)+y,a
0ca5: ae        pop   a
0ca6: fc        inc   y
0ca7: d7 04     mov   ($04)+y,a
0ca9: 5f de 0a  jmp   $0ade

0cac: 48 ff     eor   a,#$ff
0cae: bc        inc   a
0caf: 8d 09     mov   y,#$09
0cb1: cf        mul   ya
0cb2: da 0e     movw  $0e,ya
0cb4: e8 00     mov   a,#$00
0cb6: fd        mov   y,a
0cb7: 9a 0e     subw  ya,$0e
0cb9: 5f a0 0c  jmp   $0ca0

0cbc: fc        inc   y
0cbd: f7 0a     mov   a,($0a)+y
0cbf: 5d        mov   x,a
0cc0: fc        inc   y
0cc1: fc        inc   y
0cc2: f7 0a     mov   a,($0a)+y
0cc4: 8d 1d     mov   y,#$1d
0cc6: d7 04     mov   ($04)+y,a
0cc8: 7d        mov   a,x
0cc9: dc        dec   y
0cca: d7 04     mov   ($04)+y,a
0ccc: dc        dec   y
0ccd: d7 04     mov   ($04)+y,a
0ccf: 5f de 0a  jmp   $0ade

0cd2: fc        inc   y
0cd3: f7 0a     mov   a,($0a)+y
0cd5: 8d 07     mov   y,#$07
0cd7: d7 04     mov   ($04)+y,a
0cd9: 3f df 0c  call  $0cdf
0cdc: 5f de 0a  jmp   $0ade

0cdf: 8d 14     mov   y,#$14
0ce1: f7 04     mov   a,($04)+y
0ce3: 5d        mov   x,a
0ce4: e4 38     mov   a,$38
0ce6: d0 23     bne   $0d0b
0ce8: 8d 07     mov   y,#$07
0cea: f7 04     mov   a,($04)+y
0cec: 30 35     bmi   $0d23
0cee: 8d 7f     mov   y,#$7f
0cf0: 68 40     cmp   a,#$40
0cf2: 90 23     bcc   $0d17
0cf4: f0 15     beq   $0d0b
0cf6: 80        setc
0cf7: a8 40     sbc   a,#$40
0cf9: c4 0e     mov   $0e,a
0cfb: e8 3f     mov   a,#$3f
0cfd: 80        setc
0cfe: a4 0e     sbc   a,$0e
0d00: 1c        asl   a
0d01: d8 f2     mov   $f2,x
0d03: c4 f3     mov   $f3,a
0d05: 3d        inc   x
0d06: d8 f2     mov   $f2,x
0d08: cb f3     mov   $f3,y
0d0a: 6f        ret

0d0b: d8 f2     mov   $f2,x
0d0d: 8f 7f f3  mov   $f3,#$7f
0d10: 3d        inc   x
0d11: d8 f2     mov   $f2,x
0d13: 8f 7f f3  mov   $f3,#$7f
0d16: 6f        ret

0d17: 1c        asl   a
0d18: 3d        inc   x
0d19: d8 f2     mov   $f2,x
0d1b: c4 f3     mov   $f3,a
0d1d: 1d        dec   x
0d1e: d8 f2     mov   $f2,x
0d20: cb f3     mov   $f3,y
0d22: 6f        ret

0d23: 48 ff     eor   a,#$ff
0d25: 60        clrc
0d26: 88 01     adc   a,#$01
0d28: 8d 81     mov   y,#$81
0d2a: 5f f0 0c  jmp   $0cf0

0d2d: 8d 03     mov   y,#$03
0d2f: f7 0a     mov   a,($0a)+y
0d31: 8d 0e     mov   y,#$0e
0d33: d7 04     mov   ($04)+y,a
0d35: 8d 02     mov   y,#$02
0d37: f7 0a     mov   a,($0a)+y
0d39: 8d 0f     mov   y,#$0f
0d3b: d7 04     mov   ($04)+y,a
0d3d: 8d 00     mov   y,#$00
0d3f: e8 01     mov   a,#$01
0d41: d7 27     mov   ($27)+y,a
0d43: 8d 01     mov   y,#$01
0d45: f7 0a     mov   a,($0a)+y
0d47: 8d 01     mov   y,#$01
0d49: d7 27     mov   ($27)+y,a
0d4b: 5f de 0a  jmp   $0ade

0d4e: e8 00     mov   a,#$00
0d50: 8d 0c     mov   y,#$0c
0d52: d7 04     mov   ($04)+y,a
0d54: fc        inc   y
0d55: d7 04     mov   ($04)+y,a
0d57: 8d 08     mov   y,#$08
0d59: f7 04     mov   a,($04)+y
0d5b: c4 1e     mov   $1e,a
0d5d: fc        inc   y
0d5e: f7 04     mov   a,($04)+y
0d60: c4 1f     mov   $1f,a
0d62: 8d 03     mov   y,#$03
0d64: f7 0a     mov   a,($0a)+y
0d66: 3f 05 0f  call  $0f05
0d69: 8d 0a     mov   y,#$0a
0d6b: e4 1e     mov   a,$1e
0d6d: d7 04     mov   ($04)+y,a
0d6f: fc        inc   y
0d70: e4 1f     mov   a,$1f
0d72: d7 04     mov   ($04)+y,a
0d74: 8d 01     mov   y,#$01
0d76: f7 0a     mov   a,($0a)+y
0d78: 8d 1a     mov   y,#$1a
0d7a: d7 04     mov   ($04)+y,a
0d7c: dc        dec   y
0d7d: 5c        lsr   a
0d7e: bc        inc   a
0d7f: d7 04     mov   ($04)+y,a
0d81: 5f de 0a  jmp   $0ade

0d84: 8d 03     mov   y,#$03
0d86: f7 04     mov   a,($04)+y
0d88: 28 10     and   a,#$10
0d8a: d0 11     bne   $0d9d
0d8c: f7 0a     mov   a,($0a)+y
0d8e: 5d        mov   x,a
0d8f: 8d 06     mov   y,#$06
0d91: f7 04     mov   a,($04)+y
0d93: f0 11     beq   $0da6
0d95: 9c        dec   a
0d96: d7 04     mov   ($04)+y,a
0d98: d0 0f     bne   $0da9
0d9a: 7d        mov   a,x
0d9b: f0 0c     beq   $0da9
0d9d: e8 00     mov   a,#$00
0d9f: 8d 06     mov   y,#$06
0da1: d7 04     mov   ($04)+y,a
0da3: 5f de 0a  jmp   $0ade

0da6: 7d        mov   a,x
0da7: d7 04     mov   ($04)+y,a
0da9: 5f c0 0a  jmp   $0ac0

0dac: 8d 03     mov   y,#$03
0dae: f7 04     mov   a,($04)+y
0db0: 28 10     and   a,#$10
0db2: d0 09     bne   $0dbd
0db4: 8d 00     mov   y,#$00
0db6: f7 04     mov   a,($04)+y
0db8: f0 19     beq   $0dd3
0dba: 9c        dec   a
0dbb: d0 03     bne   $0dc0
0dbd: 5f de 0a  jmp   $0ade

0dc0: 8d 02     mov   y,#$02
0dc2: f7 0a     mov   a,($0a)+y
0dc4: 5d        mov   x,a
0dc5: fc        inc   y
0dc6: f7 0a     mov   a,($0a)+y
0dc8: 8d 17     mov   y,#$17
0dca: d7 04     mov   ($04)+y,a
0dcc: 7d        mov   a,x
0dcd: fc        inc   y
0dce: d7 04     mov   ($04)+y,a
0dd0: 5f 50 0a  jmp   $0a50

0dd3: fc        inc   y
0dd4: f7 0a     mov   a,($0a)+y
0dd6: dc        dec   y
0dd7: d7 04     mov   ($04)+y,a
0dd9: 5f c0 0d  jmp   $0dc0

0ddc: 8d 02     mov   y,#$02
0dde: f7 04     mov   a,($04)+y
0de0: 5d        mov   x,a
0de1: f7 0a     mov   a,($0a)+y
0de3: c4 0f     mov   $0f,a
0de5: fc        inc   y
0de6: f7 0a     mov   a,($0a)+y
0de8: c4 0e     mov   $0e,a
0dea: ba 0e     movw  ya,$0e
0dec: 7a 10     addw  ya,$10
0dee: d5 00 01  mov   $0100+x,a
0df1: dd        mov   a,y
0df2: d5 01 01  mov   $0101+x,a
0df5: 8d 05     mov   y,#$05
0df7: d7 04     mov   ($04)+y,a
0df9: dc        dec   y
0dfa: f5 00 01  mov   a,$0100+x
0dfd: d7 04     mov   ($04)+y,a
0dff: 8d 01     mov   y,#$01
0e01: f7 0a     mov   a,($0a)+y
0e03: d0 2c     bne   $0e31
0e05: c4 0e     mov   $0e,a
0e07: c4 0f     mov   $0f,a
0e09: 2f 0e     bra   $0e19
0e0b: 8d 02     mov   y,#$02
0e0d: f7 04     mov   a,($04)+y
0e0f: 5d        mov   x,a
0e10: f7 0a     mov   a,($0a)+y
0e12: c4 0f     mov   $0f,a
0e14: fc        inc   y
0e15: f7 0a     mov   a,($0a)+y
0e17: c4 0e     mov   $0e,a
0e19: 4d        push  x
0e1a: 8d 04     mov   y,#$04
0e1c: f7 04     mov   a,($04)+y
0e1e: 5d        mov   x,a
0e1f: fc        inc   y
0e20: f7 04     mov   a,($04)+y
0e22: fd        mov   y,a
0e23: 7d        mov   a,x
0e24: 7a 0e     addw  ya,$0e
0e26: ce        pop   x
0e27: d5 02 01  mov   $0102+x,a
0e2a: dd        mov   a,y
0e2b: d5 03 01  mov   $0103+x,a
0e2e: 5f de 0a  jmp   $0ade

0e31: 8d 02     mov   y,#$02
0e33: f7 04     mov   a,($04)+y
0e35: 5d        mov   x,a
0e36: ba 10     movw  ya,$10
0e38: d5 02 01  mov   $0102+x,a
0e3b: dd        mov   a,y
0e3c: d5 03 01  mov   $0103+x,a
0e3f: 5f de 0a  jmp   $0ade

0e42: 8d 01     mov   y,#$01
0e44: f7 0a     mov   a,($0a)+y
0e46: 5d        mov   x,a
0e47: 3f 51 0e  call  $0e51
0e4a: 8d 1e     mov   y,#$1e
0e4c: d7 04     mov   ($04)+y,a
0e4e: 5f de 0a  jmp   $0ade

0e51: 8d 03     mov   y,#$03
0e53: f7 04     mov   a,($04)+y
0e55: 28 0f     and   a,#$0f
0e57: 2d        push  a
0e58: 8d 01     mov   y,#$01
0e5a: 7d        mov   a,x
0e5b: fd        mov   y,a
0e5c: ae        pop   a
0e5d: cf        mul   ya
0e5e: cd 10     mov   x,#$10
0e60: 9e        div   ya,x
0e61: 8d 03     mov   y,#$03
0e63: 60        clrc
0e64: 97 0a     adc   a,($0a)+y
0e66: 10 02     bpl   $0e6a
0e68: e8 7f     mov   a,#$7f
0e6a: 6f        ret

0e6b: 8d 03     mov   y,#$03
0e6d: f7 0a     mov   a,($0a)+y
0e6f: 8d 1e     mov   y,#$1e
0e71: d7 04     mov   ($04)+y,a
0e73: 5f de 0a  jmp   $0ade

0e76: e8 00     mov   a,#$00
0e78: fc        inc   y
0e79: 2f 0d     bra   $0e88
0e7b: fc        inc   y
0e7c: f7 04     mov   a,($04)+y
0e7e: 8d 0c     mov   y,#$0c
0e80: 60        clrc
0e81: 97 0a     adc   a,($0a)+y
0e83: 2f 06     bra   $0e8b
0e85: fc        inc   y
0e86: f7 04     mov   a,($04)+y
0e88: 60        clrc
0e89: 97 0a     adc   a,($0a)+y
0e8b: 1c        asl   a
0e8c: 5d        mov   x,a
0e8d: f5 a6 0f  mov   a,$0fa6+x
0e90: c4 0e     mov   $0e,a
0e92: f5 a7 0f  mov   a,$0fa7+x
0e95: c4 0f     mov   $0f,a
0e97: 8d 02     mov   y,#$02
0e99: f7 0a     mov   a,($0a)+y
0e9b: fc        inc   y
0e9c: 17 0a     or    a,($0a)+y
0e9e: f0 11     beq   $0eb1
0ea0: ba 0e     movw  ya,$0e
0ea2: da 1e     movw  $1e,ya
0ea4: 8d 03     mov   y,#$03
0ea6: f7 0a     mov   a,($0a)+y
0ea8: 3f 05 0f  call  $0f05
0eab: ba 1e     movw  ya,$1e
0ead: 7a 0e     addw  ya,$0e
0eaf: da 0e     movw  $0e,ya
0eb1: 8d 00     mov   y,#$00
0eb3: f7 27     mov   a,($27)+y
0eb5: d0 14     bne   $0ecb
0eb7: 8d 08     mov   y,#$08
0eb9: e4 0e     mov   a,$0e
0ebb: d7 04     mov   ($04)+y,a
0ebd: fc        inc   y
0ebe: e4 0f     mov   a,$0f
0ec0: d7 04     mov   ($04)+y,a
0ec2: e8 01     mov   a,#$01
0ec4: 8d 12     mov   y,#$12
0ec6: d7 04     mov   ($04)+y,a
0ec8: 5f ba 0a  jmp   $0aba

0ecb: 8d 02     mov   y,#$02
0ecd: e4 0e     mov   a,$0e
0ecf: d7 27     mov   ($27)+y,a
0ed1: e4 0f     mov   a,$0f
0ed3: fc        inc   y
0ed4: d7 27     mov   ($27)+y,a
0ed6: 8d 08     mov   y,#$08
0ed8: f7 04     mov   a,($04)+y
0eda: c4 1e     mov   $1e,a
0edc: fc        inc   y
0edd: f7 04     mov   a,($04)+y
0edf: c4 1f     mov   $1f,a
0ee1: ba 0e     movw  ya,$0e
0ee3: 9a 1e     subw  ya,$1e
0ee5: da 1e     movw  $1e,ya
0ee7: 30 17     bmi   $0f00
0ee9: e8 01     mov   a,#$01
0eeb: 8d 1f     mov   y,#$1f
0eed: d7 04     mov   ($04)+y,a
0eef: 8d 01     mov   y,#$01
0ef1: f7 27     mov   a,($27)+y
0ef3: 8d 04     mov   y,#$04
0ef5: d7 27     mov   ($27)+y,a
0ef7: e8 01     mov   a,#$01
0ef9: 8d 12     mov   y,#$12
0efb: d7 04     mov   ($04)+y,a
0efd: 5f ba 0a  jmp   $0aba

0f00: e8 ff     mov   a,#$ff
0f02: 5f eb 0e  jmp   $0eeb

0f05: 5d        mov   x,a
0f06: eb 1e     mov   y,$1e
0f08: 7d        mov   a,x
0f09: cf        mul   ya
0f0a: cb 20     mov   $20,y
0f0c: eb 1f     mov   y,$1f
0f0e: 7d        mov   a,x
0f0f: cf        mul   ya
0f10: da 21     movw  $21,ya
0f12: 8d 00     mov   y,#$00
0f14: 7d        mov   a,x
0f15: cf        mul   ya
0f16: c4 23     mov   $23,a
0f18: e4 20     mov   a,$20
0f1a: 60        clrc
0f1b: 84 21     adc   a,$21
0f1d: c4 1e     mov   $1e,a
0f1f: e4 22     mov   a,$22
0f21: 84 23     adc   a,$23
0f23: c4 1f     mov   $1f,a
0f25: 60        clrc
0f26: 4b 1f     lsr   $1f
0f28: 4b 1e     lsr   $1e
0f2a: 6f        ret

0f2b: f7 04     mov   a,($04)+y
0f2d: f0 1b     beq   $0f4a
0f2f: 9c        dec   a
0f30: d7 04     mov   ($04)+y,a
0f32: d0 03     bne   $0f37
0f34: 5f de 0a  jmp   $0ade

0f37: 8d 02     mov   y,#$02
0f39: f7 0a     mov   a,($0a)+y
0f3b: 5d        mov   x,a
0f3c: fc        inc   y
0f3d: f7 0a     mov   a,($0a)+y
0f3f: 8d 17     mov   y,#$17
0f41: d7 04     mov   ($04)+y,a
0f43: 7d        mov   a,x
0f44: fc        inc   y
0f45: d7 04     mov   ($04)+y,a
0f47: 5f 50 0a  jmp   $0a50

0f4a: fc        inc   y
0f4b: f7 0a     mov   a,($0a)+y
0f4d: dc        dec   y
0f4e: d7 04     mov   ($04)+y,a
0f50: 5f 37 0f  jmp   $0f37

0f53: 8d 03     mov   y,#$03
0f55: f7 0a     mov   a,($0a)+y
0f57: bc        inc   a
0f58: 8d 12     mov   y,#$12
0f5a: d7 04     mov   ($04)+y,a
0f5c: 5f ba 0a  jmp   $0aba

0f5f: 8d 02     mov   y,#$02
0f61: f7 0a     mov   a,($0a)+y
0f63: 30 0a     bmi   $0f6f
0f65: f0 05     beq   $0f6c
0f67: 3f 6e 0b  call  $0b6e
0f6a: 2f 03     bra   $0f6f
0f6c: 3f 90 0b  call  $0b90
0f6f: 8d 01     mov   y,#$01
0f71: f7 0a     mov   a,($0a)+y
0f73: f0 14     beq   $0f89
0f75: 3f df 0c  call  $0cdf
0f78: 8d 13     mov   y,#$13
0f7a: f7 04     mov   a,($04)+y
0f7c: 04 14     or    a,$14
0f7e: c4 14     mov   $14,a
0f80: 8d 03     mov   y,#$03
0f82: f7 0a     mov   a,($0a)+y
0f84: d0 14     bne   $0f9a
0f86: 5f 9f 0b  jmp   $0b9f

0f89: 8d 13     mov   y,#$13
0f8b: f7 04     mov   a,($04)+y
0f8d: 04 15     or    a,$15
0f8f: c4 15     mov   $15,a
0f91: 8d 03     mov   y,#$03
0f93: f7 0a     mov   a,($0a)+y
0f95: d0 03     bne   $0f9a
0f97: 5f 9f 0b  jmp   $0b9f

0f9a: 5f de 0a  jmp   $0ade

0f9d: 8d 12     mov   y,#$12
0f9f: e8 7f     mov   a,#$7f
0fa1: d7 04     mov   ($04)+y,a
0fa3: 5f c6 0a  jmp   $0ac6

0fa6: dw $0100
0fa8: dw $010f
0faa: dw $011f
0fac: dw $0130
0fae: dw $0142
0fb0: dw $0155
0fb2: dw $0169
0fb4: dw $017f
0fb6: dw $0196
0fb8: dw $01ae
0fba: dw $01c8
0fbc: dw $01e3
0fbe: dw $0200
0fc0: dw $021e
0fc2: dw $023e
0fc4: dw $0260
0fc6: dw $0285
0fc8: dw $02ab
0fca: dw $02d3
0fcc: dw $02fe
0fce: dw $032c
0fd0: dw $035c
0fd2: dw $0390
0fd4: dw $03c6
0fd6: dw $0400
0fd8: dw $043c
0fda: dw $047d
0fdc: dw $04c1
0fde: dw $050a
0fe0: dw $0556
0fe2: dw $05a7
0fe4: dw $05fd
0fe6: dw $0659
0fe8: dw $06b9
0fea: dw $0720
0fec: dw $078c
0fee: dw $0800
0ff0: dw $0879
0ff2: dw $08fa
0ff4: dw $0983
0ff6: dw $0a14
0ff8: dw $0aad
0ffa: dw $0b4f
0ffc: dw $0bfb
0ffe: dw $0cb2
1000: dw $0d73
1002: dw $0e40
1004: dw $0f19
1006: dw $1000
1008: dw $10f3
100a: dw $11f5
100c: dw $1307
100e: dw $1428
1010: dw $155b
1012: dw $169f
1014: dw $17f7
1016: dw $1964
1018: dw $1ae7
101a: dw $1c81
101c: dw $1e32
101e: dw $2000
1020: dw $21e6
1022: dw $23ea
1024: dw $260e
1026: dw $2850
1028: dw $2ab6
102a: dw $2d3e
102c: dw $2fee
102e: dw $32c8
1030: dw $35ce
1032: dw $3902
1034: dw $3c64

1036: db $00,$00,$00,$00,$00,$00,$00,$44,$44,$44,$00,$00,$44,$00,$00,$7f
1046: db $00,$00,$00,$00,$01,$00,$00,$44,$44,$44,$00,$00,$44,$00,$00,$00
1056: db $00,$00,$00,$00,$02,$00,$00,$44,$44,$44,$00,$00,$44,$00,$00,$00
1066: db $00,$00,$00,$00,$03,$00,$00,$44,$44,$44,$00,$00,$44,$00,$00,$00
1076: db $00,$00,$00,$00,$04,$00,$00,$44,$44,$44,$00,$00,$00,$00,$00,$00
1086: db $00,$00,$00,$00,$05,$00,$00,$44,$44,$44,$00,$00,$00,$01,$00,$00
1096: db $00,$00,$00,$00,$06,$00,$00,$44,$44,$44,$00,$00,$1f,$c7,$00,$00
10a6: db $00,$00,$00,$00,$07,$00,$00,$44,$44,$00,$00,$00,$00,$00,$00,$00
