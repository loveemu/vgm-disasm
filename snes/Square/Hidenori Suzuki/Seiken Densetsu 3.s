0200: e8 00     mov   a,#$00
0202: 40        setp
0203: 5d        mov   x,a
0204: c6        mov   (x),a
0205: 1d        dec   x
0206: d0 fc     bne   $0204             ; zero $0100-$01FF
0208: 20        clrp
0209: 5d        mov   x,a
020a: af        mov   (x)+,a
020b: c8 f0     cmp   x,#$f0
020d: d0 fb     bne   $020a             ; zero $00-$EF
020f: cd ff     mov   x,#$ff
0211: bd        mov   sp,x              ; set stack ptr to (01)FF
0212: 3f 0a 03  call  $030a             ; zero DSP regs
0215: 8f 00 f6  mov   $f6,#$00
0218: 8f 02 f7  mov   $f7,#$02          ; send $0200 to APU2/3
021b: c4 f4     mov   $f4,a
021d: c4 f5     mov   $f5,a             ; send $FFFF to APU0/1
021f: e4 f7     mov   a,$f7
0221: d0 fc     bne   $021f             ; wait for APU3 to go to zero
; begin main loop
0223: e8 00     mov   a,#$00
0225: 2e fd 1b  cbne  $fd,$0243
0228: 2e fe 4c  cbne  $fe,$0277
022b: 2e f4 0d  cbne  $f4,$023b
022e: 2e ff 68  cbne  $ff,$0299
0231: 3f ed 02  call  $02ed
0234: 2f ed     bra   $0223             ; restart main loop
; dead code
0236: 3f cb 02  call  $02cb
0239: 2f e8     bra   $0223             ; restart main loop
; APU0 not zero
023b: 3f f7 02  call  $02f7             ; dispatch CPU cmd
023e: 3f ed 02  call  $02ed             ; write APU1-3 from 52/54/5C
0241: 2f e0     bra   $0223             ; restart main loop
; counter0 not zero
0243: e4 5c     mov   a,$5c
0245: f0 2e     beq   $0275             ; restart main loop
0247: c4 2e     mov   $2e,a
0249: ba 5d     movw  ya,$5d
024b: da 2f     movw  $2f,ya
024d: e4 49     mov   a,$49
024f: 04 59     or    a,$59
0251: 48 ff     eor   a,#$ff
0253: c4 1d     mov   $1d,a
0255: e4 1a     mov   a,$1a
0257: 3f 7f 15  call  $157f
025a: ba 54     movw  ya,$54
025c: da 1e     movw  $1e,ya
025e: 8f 08 1b  mov   $1b,#$08          ; do 8 voices:
0261: 3f 78 0b  call  $0b78             ; process vcmds
0264: ba 1e     movw  ya,$1e
0266: da 54     movw  $54,ya
0268: e4 1e     mov   a,$1e
026a: f0 09     beq   $0275
026c: 64 62     cmp   a,$62
026e: d0 05     bne   $0275
0270: ab 63     inc   $63
0272: 8f 00 62  mov   $62,#$00
0275: 2f ac     bra   $0223             ; restart main loop
; counter1 not zero
0277: 8f ff 1d  mov   $1d,#$ff
027a: e8 14     mov   a,#$14
027c: 3f 7f 15  call  $157f
027f: 8f 04 1b  mov   $1b,#$04
0282: fa 4f 2e  mov   ($2e),($4f)
0285: fa 50 30  mov   ($30),($50)
0288: 8f 00 2f  mov   $2f,#$00
028b: ba 49     movw  ya,$49
028d: da 1e     movw  $1e,ya
028f: 3f 78 0b  call  $0b78
0292: ba 1e     movw  ya,$1e
0294: da 49     movw  $49,ya
0296: 5f 23 02  jmp   $0223             ; restart main loop

; counter2 not zero
0299: 03 36 2c  bbs0  $36,$02c8         ; restart main loop
029c: e4 38     mov   a,$38
029e: f0 0c     beq   $02ac
02a0: 6e 3b 09  dbnz  $3b,$02ac
02a3: 33 38 03  bbc1  $38,$02a9
02a6: 3f b5 0a  call  $0ab5
02a9: fa 3a 3b  mov   ($3b),($3a)
02ac: e4 39     mov   a,$39
02ae: f0 18     beq   $02c8             ; restart main loop
02b0: 6e 40 15  dbnz  $40,$02c8         ; restart main loop
02b3: 13 39 03  bbc0  $39,$02b9
02b6: 3f db 0a  call  $0adb
02b9: 33 39 03  bbc1  $39,$02bf
02bc: 3f ef 0a  call  $0aef
02bf: 73 39 03  bbc3  $39,$02c5
02c2: 3f 29 0b  call  $0b29
02c5: fa 3f 40  mov   ($40),($3f)
02c8: 5f 23 02  jmp   $0223             ; restart main loop

; dead code
02cb: 6e 33 1e  dbnz  $33,$02ec
02ce: a3 37 0e  bbs5  $37,$02df
02d1: 3f 56 16  call  $1656
02d4: e8 1b     mov   a,#$1b
02d6: c5 27 02  mov   $0227,a
02d9: fa 5a fa  mov   ($fa),($5a)
02dc: 12 36     clr0  $36
02de: 6f        ret

02df: fa 5f 33  mov   ($33),($5f)
02e2: ab 33     inc   $33
02e4: b2 37     clr5  $37
02e6: 8f 6c f2  mov   $f2,#$6c
02e9: fa 37 f3  mov   ($f3),($37)       ; turn ECEN bit off (enable)
02ec: 6f        ret

; idle routine - write 52/54/5C to APU1-3
02ed: fa 52 f5  mov   ($f5),($52)
02f0: fa 54 f6  mov   ($f6),($54)
02f3: fa 5c f7  mov   ($f7),($5c)
02f6: 6f        ret

; dispatch CPU cmd
02f7: e4 f4     mov   a,$f4
02f9: 64 f4     cmp   a,$f4
02fb: d0 fa     bne   $02f7
02fd: 68 31     cmp   a,#$31
02ff: b0 06     bcs   $0307
0301: 9c        dec   a
0302: 1c        asl   a
0303: 5d        mov   x,a
0304: 1f 8d 16  jmp   ($168d+x)         ; cpu cmd dispatch table

; cpu cmds 0a,20,24,27,31-FF  - reset SPC
0307: 5f 81 16  jmp   $1681             ; reset SPC

; clear DSP regs
030a: 8f 6c f2  mov   $f2,#$6c
030d: 8f e0 f3  mov   $f3,#$e0          ; reset DSP
0310: a2 37     set5  $37
0312: cd f3     mov   x,#$f3
0314: e8 00     mov   a,#$00
0316: 8f 4d f2  mov   $f2,#$4d
0319: c6        mov   (x),a             ; zero echo enable bits
031a: 8f 2c f2  mov   $f2,#$2c
031d: c6        mov   (x),a             ; zero echo vol L
031e: 8f 3c f2  mov   $f2,#$3c
0321: c6        mov   (x),a             ; zero echo vol R
0322: 8f 0d f2  mov   $f2,#$0d
0325: c6        mov   (x),a             ; zero echo feedback
0326: 8f 0c f2  mov   $f2,#$0c
0329: c6        mov   (x),a             ; zero master vol L
032a: 8f 1c f2  mov   $f2,#$1c
032d: c6        mov   (x),a             ; zero master vol R
032e: c4 f1     mov   $f1,a             ; stop all timers
0330: 8f 2d f2  mov   $f2,#$2d
0333: c6        mov   (x),a             ; clear pitchmod bits
0334: 8f 3d f2  mov   $f2,#$3d
0337: c6        mov   (x),a             ; clear noise bits
0338: c4 fa     mov   $fa,a             ; zero timer0 latch (512ms)
033a: c4 fb     mov   $fb,a             ; zero timer1 latch (512ms)
033c: 8f 00 fc  mov   $fc,#$00          ; zero timer2 latch (64ms)
033f: 8f 07 32  mov   $32,#$07
0342: 8f 07 f1  mov   $f1,#$07          ; start all timers
0345: 8f 5d f2  mov   $f2,#$5d
0348: 8f 5e f3  mov   $f3,#$5e          ; set source dir to $5E00
034b: 3f 9c 0a  call  $0a9c
034e: 6f        ret

; cpu cmd 01
034f: 8f 00 59  mov   $59,#$00
0352: 8f 20 03  mov   $03,#$20
0355: 8f 00 02  mov   $02,#$00
0358: 5f 79 09  jmp   $0979

; cpu cmd 02
035b: 58 08 1a  eor   $1a,#$08
035e: 8d 11     mov   y,#$11
0360: cd 00     mov   x,#$00
0362: f4 53     mov   a,$53+x
0364: d4 64     mov   $64+x,a
0366: 3d        inc   x
0367: fe f9     dbnz  y,$0362
0369: 5f 0f 0a  jmp   $0a0f

; cpu cmd 03
036c: 58 08 1a  eor   $1a,#$08
036f: 8d 11     mov   y,#$11
0371: cd 00     mov   x,#$00
0373: f4 64     mov   a,$64+x
0375: d4 53     mov   $53+x,a
0377: 3d        inc   x
0378: fe f9     dbnz  y,$0373
037a: 8f ff 55  mov   $55,#$ff
037d: 03 36 05  bbs0  $36,$0385
0380: fa 5a fa  mov   ($fa),($5a)       ; set timer0 latch from $5A
0383: a2 37     set5  $37
0385: 3f 9c 15  call  $159c
0388: 5f 0f 0a  jmp   $0a0f

; cpu cmd 04
038b: fa f5 5c  mov   ($5c),($f5)
038e: fa 5c f5  mov   ($f5),($5c)
0391: 3f 0f 0a  call  $0a0f
0394: cd 00     mov   x,#$00
0396: e4 1a     mov   a,$1a
0398: 1c        asl   a
0399: fd        mov   y,a
039a: f5 00 20  mov   a,$2000+x
039d: d6 79 1b  mov   $1b79+y,a
03a0: f5 01 20  mov   a,$2001+x
03a3: d6 7a 1b  mov   $1b7a+y,a
03a6: 3d        inc   x
03a7: 3d        inc   x
03a8: fc        inc   y
03a9: fc        inc   y
03aa: c8 10     cmp   x,#$10
03ac: d0 ec     bne   $039a
03ae: 3f 82 04  call  $0482
03b1: e8 00     mov   a,#$00
03b3: fd        mov   y,a
03b4: c4 39     mov   $39,a
03b6: c4 49     mov   $49,a
03b8: da 4b     movw  $4b,ya
03ba: c4 4d     mov   $4d,a
03bc: da 56     movw  $56,ya
03be: c4 58     mov   $58,a
03c0: da 5d     movw  $5d,ya
03c2: da 62     movw  $62,ya
03c4: c4 48     mov   $48,a
03c6: e4 1a     mov   a,$1a
03c8: 3f 7f 15  call  $157f
03cb: 8f 00 06  mov   $06,#$00
03ce: 8f 80 07  mov   $07,#$80
03d1: 8f 08 1b  mov   $1b,#$08
03d4: fa 5c 2e  mov   ($2e),($5c)
03d7: 3f 34 0a  call  $0a34
03da: fa 1e 54  mov   ($54),($1e)
03dd: fa 1e 55  mov   ($55),($1e)
03e0: e8 00     mov   a,#$00
03e2: cd f3     mov   x,#$f3
03e4: 8f 2d f2  mov   $f2,#$2d
03e7: c6        mov   (x),a             ; clear pitchmod bits
03e8: 8f 3d f2  mov   $f2,#$3d
03eb: c6        mov   (x),a             ; clear noise bits
03ec: 8f 4d f2  mov   $f2,#$4d
03ef: c6        mov   (x),a             ; clear echo bits
03f0: e8 60     mov   a,#$60
03f2: c4 5a     mov   $5a,a
03f4: c4 5b     mov   $5b,a
03f6: 03 36 02  bbs0  $36,$03fb
03f9: c4 fa     mov   $fa,a             ; set timer0 latch to 12ms
03fb: 6f        ret

; cpu cmd 05
03fc: 3f 0f 0a  call  $0a0f
03ff: 8f 5c f2  mov   $f2,#$5c          ; key off DSP
0402: e4 49     mov   a,$49
0404: 48 ff     eor   a,#$ff
0406: c4 f3     mov   $f3,a
0408: 8f 00 54  mov   $54,#$00
040b: 6f        ret

; cpu cmd 06
040c: 03 36 06  bbs0  $36,$0415
040f: 8f 6c f2  mov   $f2,#$6c
0412: fa 37 f3  mov   ($f3),($37)       ; set FLG from shadow
; cpu cmd 07
0415: e4 f5     mov   a,$f5
0417: c4 f5     mov   $f5,a
0419: c4 5c     mov   $5c,a
041b: c4 2e     mov   $2e,a
041d: 3f 0f 0a  call  $0a0f
0420: 3f 82 04  call  $0482
0423: 8f 5c f2  mov   $f2,#$5c
0426: 8f 00 f3  mov   $f3,#$00          ; clear key off DSP reg
0429: 3f 85 10  call  $1085
042c: 3f 53 10  call  $1053
042f: 3f e4 14  call  $14e4
0432: fa 5c 2e  mov   ($2e),($5c)
0435: ba 5d     movw  ya,$5d
0437: da 2f     movw  $2f,ya
0439: e4 49     mov   a,$49
043b: 04 59     or    a,$59
043d: 48 ff     eor   a,#$ff
043f: c4 1d     mov   $1d,a
0441: 8f 08 1b  mov   $1b,#$08
0444: e4 1a     mov   a,$1a
0446: 3f 7f 15  call  $157f
0449: 8f 00 1c  mov   $1c,#$00
044c: eb 23     mov   y,$23
044e: f6 7a 1b  mov   a,$1b7a+y
0451: f0 15     beq   $0468
0453: eb 22     mov   y,$22
0455: f6 00 01  mov   a,$0100+y
0458: 28 a2     and   a,#$a2
045a: d0 09     bne   $0465
045c: 09 20 1c  or    ($1c),($20)
045f: 3f f2 14  call  $14f2
0462: 3f 27 0f  call  $0f27
0465: 09 20 54  or    ($54),($20)
0468: 0b 20     asl   $20
046a: ab 22     inc   $22
046c: 98 02 23  adc   $23,#$02
046f: 98 04 24  adc   $24,#$04
0472: 98 10 21  adc   $21,#$10
0475: 6e 1b d4  dbnz  $1b,$044c
0478: 8f 4c f2  mov   $f2,#$4c          ; key on DSP reg
047b: 29 1d 1c  and   ($1c),($1d)
047e: fa 1c f3  mov   ($f3),($1c)
0481: 6f        ret

0482: 8d 10     mov   y,#$10
0484: f6 00 20  mov   a,$2000+y
0487: 30 1b     bmi   $04a4
0489: 1c        asl   a
048a: 1c        asl   a
048b: 88 75     adc   a,#$75
048d: 5d        mov   x,a
048e: f6 01 20  mov   a,$2001+y
0491: af        mov   (x)+,a
0492: f6 02 20  mov   a,$2002+y
0495: af        mov   (x)+,a
0496: f6 03 20  mov   a,$2003+y
0499: af        mov   (x)+,a
049a: f6 04 20  mov   a,$2004+y
049d: c6        mov   (x),a
049e: dd        mov   a,y
049f: 88 05     adc   a,#$05
04a1: fd        mov   y,a
04a2: 2f e0     bra   $0484
04a4: 6f        ret

; cpu cmd 09
04a5: 8f 14 47  mov   $47,#$14
04a8: 8f 30 06  mov   $06,#$30
04ab: 2f 17     bra   $04c4

; cpu cmd 08
04ad: 8f 16 47  mov   $47,#$16
04b0: 8f c0 06  mov   $06,#$c0
04b3: e4 f7     mov   a,$f7
04b5: 28 0f     and   a,#$0f
04b7: fd        mov   y,a
04b8: e4 49     mov   a,$49
04ba: 04 48     or    a,$48
04bc: 24 06     and   a,$06
04be: f0 04     beq   $04c4
04c0: 7e 51     cmp   y,$51
04c2: 30 1d     bmi   $04e1
04c4: cb 51     mov   $51,y
04c6: fa f6 46  mov   ($46),($f6)
04c9: fa 06 48  mov   ($48),($06)
04cc: f8 f5     mov   x,$f5
04ce: 3f e1 04  call  $04e1
04d1: 7d        mov   a,x
04d2: 3f f2 04  call  $04f2
04d5: da 44     movw  $44,ya
04d7: e4 fe     mov   a,$fe             ; clear counter1
04d9: 8f 60 fb  mov   $fb,#$60          ; set timer1 latch to 12ms
04dc: 8f 60 4e  mov   $4e,#$60
04df: 2f 1c     bra   $04fd
04e1: 82 32     set4  $32
04e3: fa 32 f1  mov   ($f1),($32)       ; reset APU0/1
04e6: 92 32     clr4  $32
04e8: e4 f7     mov   a,$f7
04ea: 9f        xcn   a
04eb: 28 0f     and   a,#$0f
04ed: c4 52     mov   $52,a
04ef: c4 f5     mov   $f5,a
04f1: 6f        ret

04f2: 8d 04     mov   y,#$04
04f4: cf        mul   ya
04f5: 2d        push  a
04f6: dd        mov   a,y
04f7: 60        clrc
04f8: 88 40     adc   a,#$40
04fa: fd        mov   y,a
04fb: ae        pop   a
04fc: 6f        ret

04fd: e4 47     mov   a,$47
04ff: 3f 7f 15  call  $157f
0502: e4 20     mov   a,$20
0504: 1c        asl   a
0505: 04 20     or    a,$20
0507: c4 08     mov   $08,a
0509: 8d 00     mov   y,#$00
050b: f8 23     mov   x,$23
050d: f7 44     mov   a,($44)+y
050f: d5 79 1b  mov   $1b79+x,a
0512: fc        inc   y
0513: 3d        inc   x
0514: ad 04     cmp   y,#$04
0516: d0 f5     bne   $050d
0518: fa 4f 2e  mov   ($2e),($4f)
051b: 8f 80 06  mov   $06,#$80
051e: fa 46 07  mov   ($07),($46)
0521: 8f 02 1b  mov   $1b,#$02
0524: 3f 34 0a  call  $0a34
0527: fa 1e 4a  mov   ($4a),($1e)
052a: 09 1e 55  or    ($55),($1e)
052d: 8f 5c f2  mov   $f2,#$5c          ; key off DSP reg
0530: e4 49     mov   a,$49
0532: 04 1e     or    a,$1e
0534: 24 08     and   a,$08
0536: c4 f3     mov   $f3,a
0538: e4 08     mov   a,$08
053a: 48 ff     eor   a,#$ff
053c: c4 0a     mov   $0a,a
053e: 24 49     and   a,$49
0540: 04 1e     or    a,$1e
0542: c4 49     mov   $49,a
0544: 29 0a 4c  and   ($4c),($0a)
0547: 29 0a 4b  and   ($4b),($0a)
054a: 29 0a 4d  and   ($4d),($0a)
054d: 3f 85 10  call  $1085
0550: 3f 53 10  call  $1053
0553: 3f e4 14  call  $14e4
0556: 22 32     set1  $32
0558: fa 32 f1  mov   ($f1),($32)       ; start timer1
055b: 8f 00 48  mov   $48,#$00
055e: 6f        ret

; cpu cmd 0b
055f: 3f 0f 0a  call  $0a0f
0562: 8f 5c f2  mov   $f2,#$5c
0565: fa 49 f3  mov   ($f3),($49)       ; set key off reg from $49
0568: e8 00     mov   a,#$00
056a: c4 49     mov   $49,a
056c: c4 4c     mov   $4c,a
056e: c4 4b     mov   $4b,a
0570: c4 4d     mov   $4d,a
0572: 3f 85 10  call  $1085
0575: 3f 53 10  call  $1053
0578: 3f e4 14  call  $14e4
057b: 6f        ret

; cpu cmd 0c
057c: 8f 40 03  mov   $03,#$40
057f: 8f 00 02  mov   $02,#$00
0582: 5f 79 09  jmp   $0979

; cpu cmd 0f
0585: 3f 0f 0a  call  $0a0f
0588: e8 00     mov   a,#$00
058a: 8f 5c f2  mov   $f2,#$5c
058d: 8f ff f3  mov   $f3,#$ff          ; key off all voices
0590: c4 54     mov   $54,a
0592: c4 49     mov   $49,a
0594: c4 4b     mov   $4b,a
0596: c4 4c     mov   $4c,a
0598: c4 4d     mov   $4d,a
059a: c4 48     mov   $48,a
059c: 6f        ret

; cpu cmd 18
059d: fa f6 fb  mov   ($fb),($f6)       ; set timer1 latch from APU2
05a0: 2f 0c     bra   $05ae

; cpu cmd 19
05a2: 12 39     clr0  $39
05a4: e4 f6     mov   a,$f6
05a6: d0 02     bne   $05aa
05a8: e4 5b     mov   a,$5b
05aa: c4 fa     mov   $fa,a             ; timer0 latch
05ac: c4 5a     mov   $5a,a
05ae: 5f 24 0a  jmp   $0a24

; cpu cmd 1a
05b1: 32 38     clr1  $38
05b3: e4 f6     mov   a,$f6
05b5: 30 29     bmi   $05e0
05b7: c4 4f     mov   $4f,a
05b9: c4 2e     mov   $2e,a
05bb: 3f 24 0a  call  $0a24
05be: fa 49 1d  mov   ($1d),($49)
05c1: e8 10     mov   a,#$10
05c3: 3f 0e 0b  call  $0b0e
05c6: 6f        ret

; cpu cmd 1b
05c7: 32 39     clr1  $39
05c9: e4 f6     mov   a,$f6
05cb: 30 13     bmi   $05e0
05cd: c4 5c     mov   $5c,a
05cf: c4 2e     mov   $2e,a
05d1: 3f 24 0a  call  $0a24
05d4: fa 49 1d  mov   ($1d),($49)
05d7: 58 ff 1d  eor   $1d,#$ff
05da: e4 1a     mov   a,$1a
05dc: 3f 0e 0b  call  $0b0e
05df: 6f        ret

05e0: 5f 24 0a  jmp   $0a24

; cpu cmd 1c
05e3: fa f5 50  mov   ($50),($f5)
05e6: fa 49 1d  mov   ($1d),($49)
05e9: 2f 0e     bra   $05f9

; cpu cmd 1d
05eb: 72 39     clr3  $39
05ed: fa f6 5e  mov   ($5e),($f6)
05f0: 8f 00 5d  mov   $5d,#$00
05f3: fa 49 1d  mov   ($1d),($49)
05f6: 58 ff 1d  eor   $1d,#$ff
05f9: c4 2f     mov   $2f,a
05fb: 3f 24 0a  call  $0a24
05fe: ba 5d     movw  ya,$5d
0600: da 2f     movw  $2f,ya
0602: e4 1a     mov   a,$1a
0604: 3f 5d 0b  call  $0b5d
0607: 6f        ret

; cpu cmds 10,1e,1f
0608: 5f 24 0a  jmp   $0a24

; cpu cmd 11
060b: 02 39     set0  $39
060d: e4 f6     mov   a,$f6
060f: d0 02     bne   $0613
0611: e4 5b     mov   a,$5b
0613: c4 41     mov   $41,a
0615: fa f5 3f  mov   ($3f),($f5)
0618: 8f 01 40  mov   $40,#$01
061b: 5f 24 0a  jmp   $0a24

; cpu cmd 12
061e: 22 38     set1  $38
0620: fa f6 3d  mov   ($3d),($f6)
0623: fa f5 3a  mov   ($3a),($f5)
0626: 8f 01 3b  mov   $3b,#$01
0629: 5f 24 0a  jmp   $0a24

; cpu cmd 13
062c: 22 39     set1  $39
062e: fa f6 42  mov   ($42),($f6)
0631: fa f5 3f  mov   ($3f),($f5)
0634: 8f 01 40  mov   $40,#$01
0637: 5f 24 0a  jmp   $0a24

; cpu cmd 14
063a: 5f 24 0a  jmp   $0a24

; cpu cmd 15
063d: 62 39     set3  $39
063f: fa f6 43  mov   ($43),($f6)
0642: 60        clrc
0643: 98 80 43  adc   $43,#$80
0646: fa f5 3f  mov   ($3f),($f5)
0649: 8f 01 40  mov   $40,#$01
064c: 5f 24 0a  jmp   $0a24

; cpu cmds 16,17,21
064f: 8f 00 f5  mov   $f5,#$00
0652: fa 5a f6  mov   ($f6),($5a)
0655: fa 63 f7  mov   ($f7),($63)
0658: 5f 01 0a  jmp   $0a01

; cpu cmd 22
065b: 38 07 36  and   $36,#$07
065e: 09 f5 36  or    ($36),($f5)
0661: 3f 0f 0a  call  $0a0f
0664: 3f fc 0a  call  $0afc
0667: 3f 30 16  call  $1630
066a: 5f 9c 15  jmp   $159c

; cpu cmd 23
066d: 13 f6 10  bbc0  $f6,$0680
0670: fa f5 59  mov   ($59),($f5)
0673: e4 49     mov   a,$49
0675: 48 ff     eor   a,#$ff
0677: 24 59     and   a,$59
0679: c4 1d     mov   $1d,a
067b: 8f 5c f2  mov   $f2,#$5c          ; key off DSP reg
067e: c4 f3     mov   $f3,a
0680: fa 59 f5  mov   ($f5),($59)
0683: 5f 01 0a  jmp   $0a01

; cpu cmd 25
0686: e4 f5     mov   a,$f5
0688: c4 06     mov   $06,a
068a: 28 0f     and   a,#$0f
068c: c4 5f     mov   $5f,a
068e: ba f6     movw  ya,$f6
0690: da 60     movw  $60,ya
0692: 3f 0f 0a  call  $0a0f
0695: 3f 9c 15  call  $159c
0698: cd 00     mov   x,#$00
069a: 8d 08     mov   y,#$08
069c: 7d        mov   a,x
069d: 9f        xcn   a
069e: 08 0f     or    a,#$0f
06a0: c4 f2     mov   $f2,a
06a2: f5 c9 17  mov   a,$17c9+x         ; echo filter coeffs
06a5: c4 f3     mov   $f3,a
06a7: 3d        inc   x
06a8: fe f2     dbnz  y,$069c
06aa: 6f        ret

; cpu cmd 26
06ab: fa 35 f7  mov   ($f7),($35)
06ae: e4 f5     mov   a,$f5
06b0: 30 0b     bmi   $06bd
06b2: c4 35     mov   $35,a
06b4: 3f 01 0a  call  $0a01
06b7: 3f 30 16  call  $1630
06ba: 5f 9c 15  jmp   $159c

06bd: 5f 01 0a  jmp   $0a01

; cpu cmd 0d
06c0: f8 f5     mov   x,$f5
06c2: f5 80 5e  mov   a,$5e80+x
06c5: c4 f5     mov   $f5,a
06c7: c4 06     mov   $06,a
06c9: 10 10     bpl   $06db
06cb: e4 19     mov   a,$19
06cd: d5 80 5e  mov   $5e80+x,a
06d0: 1c        asl   a
06d1: 5d        mov   x,a
06d2: 1c        asl   a
06d3: c4 02     mov   $02,a
06d5: ba 17     movw  ya,$17
06d7: da 00     movw  $00,ya
06d9: 2f 10     bra   $06eb
06db: 1c        asl   a
06dc: 5d        mov   x,a
06dd: 1c        asl   a
06de: c4 02     mov   $02,a
06e0: fd        mov   y,a
06e1: f6 00 5e  mov   a,$5e00+y
06e4: c4 00     mov   $00,a
06e6: f6 01 5e  mov   a,$5e01+y
06e9: c4 01     mov   $01,a
06eb: e4 f5     mov   a,$f5
06ed: d5 00 5f  mov   $5f00+x,a
06f0: e4 f6     mov   a,$f6
06f2: d5 01 5f  mov   $5f01+x,a
06f5: ba 00     movw  ya,$00
06f7: da f6     movw  $f6,ya
06f9: 3f ef 09  call  $09ef
06fc: eb 02     mov   y,$02
06fe: e4 00     mov   a,$00
0700: d6 00 5e  mov   $5e00+y,a
0703: e4 01     mov   a,$01
0705: d6 01 5e  mov   $5e01+y,a
0708: e4 f6     mov   a,$f6
070a: d6 02 5e  mov   $5e02+y,a
070d: e4 f7     mov   a,$f7
070f: d6 03 5e  mov   $5e03+y,a
0712: 3f ef 09  call  $09ef
0715: e4 f6     mov   a,$f6
0717: d5 41 5f  mov   $5f41+x,a
071a: e4 f7     mov   a,$f7
071c: d5 40 5f  mov   $5f40+x,a
071f: 3f ef 09  call  $09ef
0722: e4 f6     mov   a,$f6
0724: d5 80 5f  mov   $5f80+x,a
0727: e4 f7     mov   a,$f7
0729: d5 81 5f  mov   $5f81+x,a
072c: e4 06     mov   a,$06
072e: 30 03     bmi   $0733
0730: 5f 0f 0a  jmp   $0a0f

0733: 3f ef 09  call  $09ef
0736: ba f6     movw  ya,$f6
0738: da 06     movw  $06,ya
073a: da 0c     movw  $0c,ya
073c: d5 c0 5f  mov   $5fc0+x,a
073f: dd        mov   a,y
0740: d5 c1 5f  mov   $5fc1+x,a
0743: e4 f4     mov   a,$f4
0745: 30 78     bmi   $07bf
0747: 64 f4     cmp   a,$f4
0749: d0 f8     bne   $0743
074b: c4 f4     mov   $f4,a
074d: c4 16     mov   $16,a
074f: ba 00     movw  ya,$00
0751: c5 7c 07  mov   $077c,a
0754: cc 7d 07  mov   $077d,y
0757: bc        inc   a
0758: d0 01     bne   $075b
075a: fc        inc   y
075b: c5 81 07  mov   $0781,a
075e: cc 82 07  mov   $0782,y
0761: bc        inc   a
0762: d0 01     bne   $0765
0764: fc        inc   y
0765: c5 86 07  mov   $0786,a
0768: cc 87 07  mov   $0787,y
076b: eb 06     mov   y,$06
076d: d0 02     bne   $0771
076f: 8b 07     dec   $07
0771: cd 00     mov   x,#$00
0773: e4 16     mov   a,$16
0775: 64 f4     cmp   a,$f4
0777: f0 fc     beq   $0775
0779: e4 f5     mov   a,$f5
077b: d5 2f ce  mov   $ce2f+x,a
077e: e4 f6     mov   a,$f6
0780: d5 30 ce  mov   $ce30+x,a
0783: e4 f7     mov   a,$f7
0785: d5 31 ce  mov   $ce31+x,a
0788: e4 f4     mov   a,$f4
078a: 30 33     bmi   $07bf
078c: 64 f4     cmp   a,$f4
078e: d0 f8     bne   $0788
0790: c4 f4     mov   $f4,a
0792: c4 16     mov   $16,a
0794: 60        clrc
0795: 7d        mov   a,x
0796: 88 03     adc   a,#$03
0798: 90 09     bcc   $07a3
079a: ac 7d 07  inc   $077d
079d: ac 82 07  inc   $0782
07a0: ac 87 07  inc   $0787
07a3: 5d        mov   x,a
07a4: fe cd     dbnz  y,$0773
07a6: eb 07     mov   y,$07
07a8: f0 06     beq   $07b0
07aa: 8b 07     dec   $07
07ac: 8d 00     mov   y,#$00
07ae: 2f c3     bra   $0773
07b0: ba 17     movw  ya,$17
07b2: 7a 0c     addw  ya,$0c
07b4: 7a 0c     addw  ya,$0c
07b6: 7a 0c     addw  ya,$0c
07b8: da 17     movw  $17,ya
07ba: ab 19     inc   $19
07bc: 5f 0f 0a  jmp   $0a0f

07bf: 5f 81 16  jmp   $1681             ; reset SPC

; cpu cmd 0e
07c2: e4 f5     mov   a,$f5
07c4: 30 14     bmi   $07da
07c6: fd        mov   y,a
07c7: f6 80 5e  mov   a,$5e80+y
07ca: 1c        asl   a
07cb: 5d        mov   x,a
07cc: e8 ff     mov   a,#$ff
07ce: d5 00 5f  mov   $5f00+x,a
07d1: d5 01 5f  mov   $5f01+x,a
07d4: d6 80 5e  mov   $5e80+y,a
07d7: 5f 0f 0a  jmp   $0a0f

07da: e8 00     mov   a,#$00
07dc: 8d 60     mov   y,#$60
07de: da 00     movw  $00,ya
07e0: fd        mov   y,a
07e1: c4 19     mov   $19,a
07e3: da 06     movw  $06,ya
07e5: da 08     movw  $08,ya
07e7: 8f 20 0c  mov   $0c,#$20
07ea: f8 06     mov   x,$06
07ec: f5 00 5f  mov   a,$5f00+x
07ef: 30 28     bmi   $0819
07f1: 69 08 06  cmp   ($06),($08)
07f4: f0 03     beq   $07f9
07f6: 3f 2b 08  call  $082b
07f9: f8 08     mov   x,$08
07fb: f5 c0 5f  mov   a,$5fc0+x
07fe: c4 0a     mov   $0a,a
0800: f5 c1 5f  mov   a,$5fc1+x
0803: c4 0b     mov   $0b,a
0805: ba 00     movw  ya,$00
0807: 60        clrc
0808: 7a 0a     addw  ya,$0a
080a: 7a 0a     addw  ya,$0a
080c: 7a 0a     addw  ya,$0a
080e: da 00     movw  $00,ya
0810: ab 19     inc   $19
0812: 60        clrc
0813: 98 02 08  adc   $08,#$02
0816: 98 04 09  adc   $09,#$04
0819: 60        clrc
081a: 98 02 06  adc   $06,#$02
081d: 98 04 07  adc   $07,#$04
0820: 8b 0c     dec   $0c
0822: d0 c6     bne   $07ea
0824: ba 00     movw  ya,$00
0826: da 17     movw  $17,ya
0828: 5f 0f 0a  jmp   $0a0f

082b: f8 06     mov   x,$06
082d: eb 08     mov   y,$08
082f: f5 c0 5f  mov   a,$5fc0+x
0832: d6 c0 5f  mov   $5fc0+y,a
0835: c4 0a     mov   $0a,a
0837: f5 c1 5f  mov   a,$5fc1+x
083a: d6 c1 5f  mov   $5fc1+y,a
083d: c4 0b     mov   $0b,a
083f: f5 00 5f  mov   a,$5f00+x
0842: fd        mov   y,a
0843: e4 19     mov   a,$19
0845: d6 80 5e  mov   $5e80+y,a
0848: e8 ff     mov   a,#$ff
084a: d5 00 5f  mov   $5f00+x,a
084d: d5 01 5f  mov   $5f01+x,a
0850: f8 09     mov   x,$09
0852: e4 01     mov   a,$01
0854: c4 03     mov   $03,a
0856: d5 01 5e  mov   $5e01+x,a
0859: e4 00     mov   a,$00
085b: c4 02     mov   $02,a
085d: d5 00 5e  mov   $5e00+x,a
0860: ba 00     movw  ya,$00
0862: c5 ac 08  mov   $08ac,a
0865: cc ad 08  mov   $08ad,y
0868: bc        inc   a
0869: d0 01     bne   $086c
086b: fc        inc   y
086c: c5 b2 08  mov   $08b2,a
086f: cc b3 08  mov   $08b3,y
0872: bc        inc   a
0873: d0 01     bne   $0876
0875: fc        inc   y
0876: c5 b8 08  mov   $08b8,a
0879: cc b9 08  mov   $08b9,y
087c: f8 07     mov   x,$07
087e: f5 01 5e  mov   a,$5e01+x
0881: fd        mov   y,a
0882: f5 00 5e  mov   a,$5e00+x
0885: c5 a9 08  mov   $08a9,a
0888: cc aa 08  mov   $08aa,y
088b: bc        inc   a
088c: d0 01     bne   $088f
088e: fc        inc   y
088f: c5 af 08  mov   $08af,a
0892: cc b0 08  mov   $08b0,y
0895: bc        inc   a
0896: d0 01     bne   $0899
0898: fc        inc   y
0899: c5 b5 08  mov   $08b5,a
089c: cc b6 08  mov   $08b6,y
089f: 60        clrc
08a0: cd 00     mov   x,#$00
08a2: eb 0a     mov   y,$0a
08a4: d0 02     bne   $08a8
08a6: 8b 0b     dec   $0b
08a8: f5 35 b4  mov   a,$b435+x
08ab: d5 4b 74  mov   $744b+x,a
08ae: f5 36 b4  mov   a,$b436+x
08b1: d5 4c 74  mov   $744c+x,a
08b4: f5 37 b4  mov   a,$b437+x
08b7: d5 4d 74  mov   $744d+x,a
08ba: 7d        mov   a,x
08bb: 88 03     adc   a,#$03
08bd: 90 13     bcc   $08d2
08bf: 60        clrc
08c0: ac aa 08  inc   $08aa
08c3: ac ad 08  inc   $08ad
08c6: ac b0 08  inc   $08b0
08c9: ac b3 08  inc   $08b3
08cc: ac b6 08  inc   $08b6
08cf: ac b9 08  inc   $08b9
08d2: 5d        mov   x,a
08d3: fe d3     dbnz  y,$08a8
08d5: e4 0b     mov   a,$0b
08d7: f0 04     beq   $08dd
08d9: 8b 0b     dec   $0b
08db: 2f cb     bra   $08a8
08dd: 6f        ret

; cpu cmd 2d
08de: 8f 0e 02  mov   $02,#$0e
08e1: 8f 00 03  mov   $03,#$00
08e4: 3f 79 09  call  $0979
08e7: eb 0e     mov   y,$0e
08e9: f6 80 5e  mov   a,$5e80+y
08ec: 1c        asl   a
08ed: fd        mov   y,a
08ee: cd 0f     mov   x,#$0f
08f0: bf        mov   a,(x)+
08f1: d6 01 5f  mov   $5f01+y,a
08f4: bf        mov   a,(x)+
08f5: d6 40 5f  mov   $5f40+y,a
08f8: bf        mov   a,(x)+
08f9: d6 41 5f  mov   $5f41+y,a
08fc: bf        mov   a,(x)+
08fd: d6 80 5f  mov   $5f80+y,a
0900: bf        mov   a,(x)+
0901: d6 81 5f  mov   $5f81+y,a
0904: 6f        ret

; cpu cmd 28 - read memory at APU1/2 to APU3
0905: cd 00     mov   x,#$00
0907: e7 f5     mov   a,($f5+x)
0909: c4 f7     mov   $f7,a
090b: 5f 01 0a  jmp   $0a01

; cpu cmd 29 - write memory at APU1/2 from APU3; set APU3 to orig value
090e: cd 00     mov   x,#$00
0910: e7 f5     mov   a,($f5+x)
0912: c4 f7     mov   $f7,a
0914: e4 f7     mov   a,$f7
0916: c7 f5     mov   ($f5+x),a
0918: 5f 01 0a  jmp   $0a01

; cpu cmd 2a - read DSP reg APU1 into APU3
091b: fa f5 f2  mov   ($f2),($f5)
091e: fa f3 f7  mov   ($f7),($f3)
0921: 5f 01 0a  jmp   $0a01

; cpu cmd 2b - set DSP reg APU1 to APU3
0924: fa f5 f2  mov   ($f2),($f5)
0927: fa f7 f3  mov   ($f3),($f7)
092a: 5f 0f 0a  jmp   $0a0f

; cpu cmd 2c
092d: 3f 85 05  call  $0585
0930: 3f 9c 0a  call  $0a9c
0933: 8f 00 52  mov   $52,#$00
0936: 6f        ret

; cpu cmd 2e
0937: cd 0e     mov   x,#$0e
0939: eb f5     mov   y,$f5
093b: f6 00 01  mov   a,$0100+y
093e: af        mov   (x)+,a
093f: f6 48 01  mov   a,$0148+y
0942: af        mov   (x)+,a
0943: f6 e9 17  mov   a,$17e9+y
0946: af        mov   (x)+,a
0947: dd        mov   a,y
0948: 1c        asl   a
0949: fd        mov   y,a
094a: f6 a2 1a  mov   a,$1aa2+y
094d: af        mov   (x)+,a
094e: dd        mov   a,y
094f: 1c        asl   a
0950: fd        mov   y,a
0951: f6 1a 18  mov   a,$181a+y
0954: c6        mov   (x),a
0955: 5f d3 09  jmp   $09d3

; cpu cmd 2f
0958: cd 07     mov   x,#$07
095a: 7d        mov   a,x
095b: 9f        xcn   a
095c: 04 f5     or    a,$f5
095e: c4 f2     mov   $f2,a
0960: e4 f3     mov   a,$f3
0962: d4 0e     mov   $0e+x,a
0964: 1d        dec   x
0965: 10 f3     bpl   $095a
0967: 5f d3 09  jmp   $09d3

; cpu cmd 30
096a: fa 18 0e  mov   ($0e),($18)
096d: 8f e0 0f  mov   $0f,#$e0
0970: 8f 05 10  mov   $10,#$05
0973: 8f ed 11  mov   $11,#$ed
0976: 5f d3 09  jmp   $09d3

0979: ba f6     movw  ya,$f6
097b: da 0c     movw  $0c,ya
097d: da f6     movw  $f6,ya
097f: f8 f4     mov   x,$f4
0981: 30 4d     bmi   $09d0
0983: 3e f4     cmp   x,$f4
0985: d0 f8     bne   $097f
0987: d8 f4     mov   $f4,x
0989: ba 02     movw  ya,$02
098b: c5 a7 09  mov   $09a7,a
098e: c5 ad 09  mov   $09ad,a
0991: cc a8 09  mov   $09a8,y
0994: cc ae 09  mov   $09ae,y
0997: 7d        mov   a,x
0998: eb 0c     mov   y,$0c
099a: d0 02     bne   $099e
099c: 8b 0d     dec   $0d
099e: cd 00     mov   x,#$00
09a0: 64 f4     cmp   a,$f4
09a2: f0 fc     beq   $09a0
09a4: e4 f6     mov   a,$f6
09a6: d5 00 23  mov   $2300+x,a
09a9: 3d        inc   x
09aa: e4 f7     mov   a,$f7
09ac: d5 00 23  mov   $2300+x,a
09af: e4 f4     mov   a,$f4
09b1: 30 1d     bmi   $09d0
09b3: 64 f4     cmp   a,$f4
09b5: d0 f8     bne   $09af
09b7: c4 f4     mov   $f4,a
09b9: 3d        inc   x
09ba: d0 06     bne   $09c2
09bc: ac a8 09  inc   $09a8
09bf: ac ae 09  inc   $09ae
09c2: fe dc     dbnz  y,$09a0
09c4: eb 0d     mov   y,$0d
09c6: f0 06     beq   $09ce
09c8: 8b 0d     dec   $0d
09ca: 8d 00     mov   y,#$00
09cc: 2f d2     bra   $09a0
09ce: 2f 3f     bra   $0a0f
09d0: 5f 81 16  jmp   $1681             ; reset SPC

09d3: cd 0e     mov   x,#$0e
09d5: 8d 04     mov   y,#$04
09d7: bf        mov   a,(x)+
09d8: c4 f6     mov   $f6,a
09da: bf        mov   a,(x)+
09db: c4 f7     mov   $f7,a
09dd: e4 f4     mov   a,$f4
09df: 30 1d     bmi   $09fe
09e1: 64 f4     cmp   a,$f4
09e3: d0 f8     bne   $09dd
09e5: c4 f4     mov   $f4,a
09e7: 64 f4     cmp   a,$f4
09e9: f0 fc     beq   $09e7
09eb: fe ea     dbnz  y,$09d7
09ed: 2f 20     bra   $0a0f
09ef: e4 f4     mov   a,$f4
09f1: 30 0b     bmi   $09fe
09f3: 64 f4     cmp   a,$f4
09f5: d0 f8     bne   $09ef
09f7: c4 f4     mov   $f4,a
09f9: 64 f4     cmp   a,$f4
09fb: f0 fc     beq   $09f9
09fd: 6f        ret

09fe: 5f 81 16  jmp   $1681             ; reset SPC

0a01: e4 f4     mov   a,$f4
0a03: 30 f9     bmi   $09fe
0a05: 64 f4     cmp   a,$f4
0a07: d0 f8     bne   $0a01
0a09: c4 f4     mov   $f4,a
0a0b: 64 f4     cmp   a,$f4
0a0d: f0 fa     beq   $0a09
0a0f: 8f ff f4  mov   $f4,#$ff
0a12: e4 f4     mov   a,$f4
0a14: 30 e8     bmi   $09fe
0a16: d0 fa     bne   $0a12
0a18: c4 f4     mov   $f4,a
0a1a: fa 52 f5  mov   ($f5),($52)
0a1d: fa 54 f6  mov   ($f6),($54)
0a20: fa 5c f7  mov   ($f7),($5c)
0a23: 6f        ret

0a24: 82 32     set4  $32
0a26: fa 32 f1  mov   ($f1),($32)       ; reset APU0/1
0a29: 92 32     clr4  $32
0a2b: e4 f7     mov   a,$f7
0a2d: 28 0f     and   a,#$0f
0a2f: c4 52     mov   $52,a
0a31: c4 f5     mov   $f5,a             ; set $52, APU1 to APU3 & $0F
0a33: 6f        ret

0a34: 8f 00 1e  mov   $1e,#$00
0a37: f8 23     mov   x,$23
0a39: f5 7a 1b  mov   a,$1b7a+x
0a3c: f0 50     beq   $0a8e
0a3e: eb 22     mov   y,$22
0a40: e8 ff     mov   a,#$ff
0a42: d6 d9 1b  mov   $1bd9+y,a
0a45: d6 e9 17  mov   $17e9+y,a
0a48: e4 06     mov   a,$06
0a4a: d6 00 01  mov   $0100+y,a
0a4d: e8 00     mov   a,#$00
0a4f: d6 18 01  mov   $0118+y,a
0a52: d6 30 01  mov   $0130+y,a
0a55: d6 01 18  mov   $1801+y,a
0a58: d5 aa 1b  mov   $1baa+x,a
0a5b: d5 81 19  mov   $1981+x,a
0a5e: d5 82 19  mov   $1982+x,a
0a61: d5 b1 19  mov   $19b1+x,a
0a64: d5 a1 1a  mov   $1aa1+x,a
0a67: e8 3c     mov   a,#$3c
0a69: d5 b2 19  mov   $19b2+x,a
0a6c: e4 07     mov   a,$07
0a6e: d5 a2 1a  mov   $1aa2+x,a
0a71: e8 06     mov   a,#$06
0a73: d6 d1 17  mov   $17d1+y,a
0a76: e8 05     mov   a,#$05
0a78: d6 48 01  mov   $0148+y,a
0a7b: 3f 69 12  call  $1269
0a7e: e4 23     mov   a,$23
0a80: 28 0f     and   a,#$0f
0a82: 5d        mov   x,a
0a83: e8 00     mov   a,#$00
0a85: d5 a2 1d  mov   $1da2+x,a
0a88: d5 a4 1d  mov   $1da4+x,a
0a8b: 09 20 1e  or    ($1e),($20)
0a8e: 0b 20     asl   $20
0a90: ab 22     inc   $22
0a92: 98 02 23  adc   $23,#$02
0a95: 98 10 21  adc   $21,#$10
0a98: 6e 1b 9c  dbnz  $1b,$0a37
0a9b: 6f        ret

0a9c: e8 00     mov   a,#$00
0a9e: c4 19     mov   $19,a
0aa0: 8d 60     mov   y,#$60
0aa2: da 17     movw  $17,ya
0aa4: e8 ff     mov   a,#$ff
0aa6: 8d 80     mov   y,#$80
0aa8: d6 7f 5e  mov   $5e7f+y,a
0aab: fe fb     dbnz  y,$0aa8
0aad: 8d 40     mov   y,#$40
0aaf: d6 ff 5e  mov   $5eff+y,a
0ab2: fe fb     dbnz  y,$0aaf
0ab4: 6f        ret

0ab5: 69 3d 4f  cmp   ($4f),($3d)
0ab8: f0 14     beq   $0ace
0aba: 90 04     bcc   $0ac0
0abc: 8b 4f     dec   $4f
0abe: 2f 02     bra   $0ac2
0ac0: ab 4f     inc   $4f
0ac2: fa 4f 2e  mov   ($2e),($4f)
0ac5: fa 49 1d  mov   ($1d),($49)
0ac8: e8 10     mov   a,#$10
0aca: 3f 0e 0b  call  $0b0e
0acd: 6f        ret

0ace: 32 38     clr1  $38
0ad0: e4 4f     mov   a,$4f
0ad2: d0 06     bne   $0ada
0ad4: 3f 62 05  call  $0562
0ad7: 8f 7f 4f  mov   $4f,#$7f
0ada: 6f        ret

0adb: 69 41 5a  cmp   ($5a),($41)
0ade: f0 0c     beq   $0aec
0ae0: 90 04     bcc   $0ae6
0ae2: 8b 5a     dec   $5a
0ae4: 2f 02     bra   $0ae8
0ae6: ab 5a     inc   $5a
0ae8: fa 5a fa  mov   ($fa),($5a)       ; set timer0 latch from $5A
0aeb: 6f        ret

0aec: 12 39     clr0  $39
0aee: 6f        ret

0aef: 69 42 5c  cmp   ($5c),($42)
0af2: f0 17     beq   $0b0b
0af4: 90 04     bcc   $0afa
0af6: 8b 5c     dec   $5c
0af8: 2f 02     bra   $0afc
0afa: ab 5c     inc   $5c
0afc: fa 5c 2e  mov   ($2e),($5c)
0aff: fa 49 1d  mov   ($1d),($49)
0b02: 58 ff 1d  eor   $1d,#$ff
0b05: e4 1a     mov   a,$1a
0b07: 3f 0e 0b  call  $0b0e
0b0a: 6f        ret

0b0b: 32 39     clr1  $39
0b0d: 6f        ret

0b0e: 3f 7f 15  call  $157f
0b11: 8f 08 1b  mov   $1b,#$08
0b14: f8 22     mov   x,$22
0b16: f4 a5     mov   a,$a5+x
0b18: 3f 2f 15  call  $152f
0b1b: 0b 20     asl   $20
0b1d: ab 22     inc   $22
0b1f: 98 02 23  adc   $23,#$02
0b22: 98 10 21  adc   $21,#$10
0b25: 6e 1b ec  dbnz  $1b,$0b14
0b28: 6f        ret

0b29: e4 5e     mov   a,$5e
0b2b: 60        clrc
0b2c: 88 80     adc   a,#$80
0b2e: 64 43     cmp   a,$43
0b30: f0 16     beq   $0b48
0b32: 90 0a     bcc   $0b3e
0b34: 8d ff     mov   y,#$ff
0b36: e8 e0     mov   a,#$e0
0b38: 7a 5d     addw  ya,$5d
0b3a: da 5d     movw  $5d,ya
0b3c: 2f 11     bra   $0b4f
0b3e: 8d 00     mov   y,#$00
0b40: e8 20     mov   a,#$20
0b42: 7a 5d     addw  ya,$5d
0b44: da 5d     movw  $5d,ya
0b46: 2f 07     bra   $0b4f
0b48: 72 39     clr3  $39
0b4a: e8 00     mov   a,#$00
0b4c: fd        mov   y,a
0b4d: c4 5d     mov   $5d,a
0b4f: da 2f     movw  $2f,ya
0b51: fa 49 1d  mov   ($1d),($49)
0b54: 58 ff 1d  eor   $1d,#$ff
0b57: e4 1a     mov   a,$1a
0b59: 3f 5d 0b  call  $0b5d
0b5c: 6f        ret

0b5d: 3f 7f 15  call  $157f
0b60: 8f 08 1b  mov   $1b,#$08
0b63: 3f 27 0f  call  $0f27
0b66: 0b 20     asl   $20
0b68: ab 22     inc   $22
0b6a: 98 02 23  adc   $23,#$02
0b6d: 98 04 24  adc   $24,#$04
0b70: 98 10 21  adc   $21,#$10
0b73: 6e 1b ed  dbnz  $1b,$0b63
0b76: 6f        ret

0b77: 6f        ret

; process vcmds?
0b78: 8f 5c f2  mov   $f2,#$5c
0b7b: 8f 00 f3  mov   $f3,#$00          ; zero key off DSP reg
0b7e: 8f 00 1c  mov   $1c,#$00
0b81: e4 1e     mov   a,$1e
0b83: 24 20     and   a,$20
0b85: f0 35     beq   $0bbc
0b87: 3f d9 0b  call  $0bd9
0b8a: 03 25 46  bbs0  $25,$0bd3
0b8d: f8 23     mov   x,$23
0b8f: f5 7a 1b  mov   a,$1b7a+x
0b92: fd        mov   y,a
0b93: f5 79 1b  mov   a,$1b79+x
0b96: da 2c     movw  $2c,ya
0b98: eb 22     mov   y,$22
0b9a: cd 00     mov   x,#$00
0b9c: e7 2c     mov   a,($2c+x)
0b9e: 3a 2c     incw  $2c
0ba0: 68 c4     cmp   a,#$c4
0ba2: 90 32     bcc   $0bd6             ; note, JMP 0DDF
0ba4: 3f ec 0f  call  $0fec             ; dispatch vcmd
0ba7: e4 1e     mov   a,$1e
0ba9: 24 20     and   a,$20
0bab: d0 eb     bne   $0b98
0bad: f8 23     mov   x,$23
0baf: e4 2c     mov   a,$2c
0bb1: d5 79 1b  mov   $1b79+x,a
0bb4: e4 2d     mov   a,$2d
0bb6: d5 7a 1b  mov   $1b7a+x,a
0bb9: 3f fe 0b  call  $0bfe
0bbc: 0b 20     asl   $20
0bbe: ab 22     inc   $22
0bc0: 98 02 23  adc   $23,#$02
0bc3: 98 04 24  adc   $24,#$04
0bc6: 98 10 21  adc   $21,#$10
0bc9: 6e 1b b5  dbnz  $1b,$0b81         ; do next voice
0bcc: 8f 4c f2  mov   $f2,#$4c
0bcf: fa 1c f3  mov   ($f3),($1c)       ; set DSP key on from $1C
0bd2: 6f        ret

0bd3: 5f 26 0c  jmp   $0c26

0bd6: 5f df 0d  jmp   $0ddf             ; process note cmd

0bd9: f8 22     mov   x,$22
0bdb: f5 00 01  mov   a,$0100+x
0bde: c4 25     mov   $25,a
0be0: f5 30 01  mov   a,$0130+x
0be3: fd        mov   y,a
0be4: f5 18 01  mov   a,$0118+x
0be7: da 26     movw  $26,ya
0be9: f8 24     mov   x,$24
0beb: f5 1a 18  mov   a,$181a+x
0bee: fd        mov   y,a
0bef: f5 19 18  mov   a,$1819+x
0bf2: da 28     movw  $28,ya
0bf4: f5 1c 18  mov   a,$181c+x
0bf7: fd        mov   y,a
0bf8: f5 1b 18  mov   a,$181b+x
0bfb: da 2a     movw  $2a,ya
0bfd: 6f        ret

0bfe: f8 24     mov   x,$24
0c00: e4 28     mov   a,$28
0c02: d5 19 18  mov   $1819+x,a
0c05: e4 29     mov   a,$29
0c07: d5 1a 18  mov   $181a+x,a
0c0a: e4 2a     mov   a,$2a
0c0c: d5 1b 18  mov   $181b+x,a
0c0f: e4 2b     mov   a,$2b
0c11: d5 1c 18  mov   $181c+x,a
0c14: f8 22     mov   x,$22
0c16: e4 25     mov   a,$25
0c18: d5 00 01  mov   $0100+x,a
0c1b: e4 26     mov   a,$26
0c1d: d5 18 01  mov   $0118+x,a
0c20: e4 27     mov   a,$27
0c22: d5 30 01  mov   $0130+x,a
0c25: 6f        ret

0c26: e4 26     mov   a,$26
0c28: 28 09     and   a,#$09
0c2a: f0 37     beq   $0c63
0c2c: 13 26 12  bbc0  $26,$0c41
0c2f: f8 22     mov   x,$22
0c31: f5 51 19  mov   a,$1951+x
0c34: f0 06     beq   $0c3c
0c36: 9c        dec   a
0c37: d5 51 19  mov   $1951+x,a
0c3a: 2f 05     bra   $0c41
0c3c: 3f 17 0d  call  $0d17
0c3f: e2 26     set7  $26
0c41: 73 26 17  bbc3  $26,$0c5b
0c44: f8 22     mov   x,$22
0c46: f5 d9 18  mov   a,$18d9+x
0c49: d0 07     bne   $0c52
0c4b: a3 26 04  bbs5  $26,$0c52
0c4e: 72 26     clr3  $26
0c50: 2f 09     bra   $0c5b
0c52: 9c        dec   a
0c53: d5 d9 18  mov   $18d9+x,a
0c56: 3f 4b 0d  call  $0d4b
0c59: e2 26     set7  $26
0c5b: f3 26 05  bbc7  $26,$0c63
0c5e: f2 26     clr7  $26
0c60: 3f 33 0f  call  $0f33
0c63: e4 27     mov   a,$27
0c65: 28 59     and   a,#$59
0c67: f0 7d     beq   $0ce6
0c69: 13 27 12  bbc0  $27,$0c7e
0c6c: f8 22     mov   x,$22
0c6e: f5 71 1a  mov   a,$1a71+x
0c71: f0 06     beq   $0c79
0c73: 9c        dec   a
0c74: d5 71 1a  mov   $1a71+x,a
0c77: 2f 05     bra   $0c7e
0c79: 3f 8e 0d  call  $0d8e
0c7c: e2 27     set7  $27
0c7e: 73 27 28  bbc3  $27,$0ca9
0c81: f8 22     mov   x,$22
0c83: f5 11 1a  mov   a,$1a11+x
0c86: f0 1f     beq   $0ca7
0c88: 9c        dec   a
0c89: d5 11 1a  mov   $1a11+x,a
0c8c: f8 23     mov   x,$23
0c8e: 60        clrc
0c8f: f5 b1 19  mov   a,$19b1+x
0c92: 95 e1 19  adc   a,$19e1+x
0c95: d5 b1 19  mov   $19b1+x,a
0c98: f5 b2 19  mov   a,$19b2+x
0c9b: 95 e2 19  adc   a,$19e2+x
0c9e: 28 7f     and   a,#$7f
0ca0: d5 b2 19  mov   $19b2+x,a
0ca3: e2 27     set7  $27
0ca5: 2f 02     bra   $0ca9
0ca7: 72 27     clr3  $27
0ca9: d3 27 26  bbc6  $27,$0cd2
0cac: f8 22     mov   x,$22
0cae: f5 01 1b  mov   a,$1b01+x
0cb1: f0 1d     beq   $0cd0
0cb3: 9c        dec   a
0cb4: d5 01 1b  mov   $1b01+x,a
0cb7: f8 23     mov   x,$23
0cb9: 60        clrc
0cba: f5 a1 1a  mov   a,$1aa1+x
0cbd: 95 d1 1a  adc   a,$1ad1+x
0cc0: d5 a1 1a  mov   $1aa1+x,a
0cc3: f5 a2 1a  mov   a,$1aa2+x
0cc6: 95 d2 1a  adc   a,$1ad2+x
0cc9: d5 a2 1a  mov   $1aa2+x,a
0ccc: e2 27     set7  $27
0cce: 2f 0a     bra   $0cda
0cd0: d2 27     clr6  $27
0cd2: 93 27 05  bbc4  $27,$0cda
0cd5: 3f af 0d  call  $0daf
0cd8: e2 27     set7  $27
0cda: f3 27 09  bbc7  $27,$0ce6
0cdd: f2 27     clr7  $27
0cdf: f8 22     mov   x,$22
0ce1: f4 a5     mov   a,$a5+x
0ce3: 3f 2f 15  call  $152f
0ce6: f8 22     mov   x,$22
0ce8: 43 25 22  bbs2  $25,$0d0d
0ceb: 9b d5     dec   $d5+x
0ced: d0 0b     bne   $0cfa
0cef: 22 25     set1  $25
0cf1: e4 20     mov   a,$20
0cf3: 24 1d     and   a,$1d
0cf5: 8f 5c f2  mov   $f2,#$5c          ; key off reg
0cf8: c4 f3     mov   $f3,a
0cfa: 9b bd     dec   $bd+x
0cfc: d0 16     bne   $0d14
0cfe: 38 fc 25  and   $25,#$fc
0d01: e4 20     mov   a,$20
0d03: 24 1d     and   a,$1d
0d05: 8f 5c f2  mov   $f2,#$5c          ; key off reg
0d08: c4 f3     mov   $f3,a
0d0a: 5f b9 0b  jmp   $0bb9

0d0d: 9b bd     dec   $bd+x
0d0f: d0 03     bne   $0d14
0d11: 38 fc 25  and   $25,#$fc
0d14: 5f b9 0b  jmp   $0bb9

0d17: f8 23     mov   x,$23
0d19: 43 26 0d  bbs2  $26,$0d29
0d1c: f5 f2 18  mov   a,$18f2+x
0d1f: fd        mov   y,a
0d20: f5 f1 18  mov   a,$18f1+x
0d23: 7a 28     addw  ya,$28
0d25: da 28     movw  $28,ya
0d27: 2f 0f     bra   $0d38
0d29: 80        setc
0d2a: e4 28     mov   a,$28
0d2c: b5 f1 18  sbc   a,$18f1+x
0d2f: c4 28     mov   $28,a
0d31: e4 29     mov   a,$29
0d33: b5 f2 18  sbc   a,$18f2+x
0d36: c4 29     mov   $29,a
0d38: f8 22     mov   x,$22
0d3a: f5 21 19  mov   a,$1921+x
0d3d: 9c        dec   a
0d3e: d0 07     bne   $0d47
0d40: ea 26 40  not1  $0026,2
0d43: f5 39 19  mov   a,$1939+x
0d46: 1c        asl   a
0d47: d5 21 19  mov   $1921+x,a
0d4a: 6f        ret

0d4b: f8 24     mov   x,$24
0d4d: 83 26 1b  bbs4  $26,$0d6b
0d50: f5 7c 18  mov   a,$187c+x
0d53: fd        mov   y,a
0d54: f5 7b 18  mov   a,$187b+x
0d57: 7a 2a     addw  ya,$2a
0d59: 90 02     bcc   $0d5d
0d5b: 3a 28     incw  $28
0d5d: da 2a     movw  $2a,ya
0d5f: f5 7a 18  mov   a,$187a+x
0d62: fd        mov   y,a
0d63: f5 79 18  mov   a,$1879+x
0d66: 7a 28     addw  ya,$28
0d68: da 28     movw  $28,ya
0d6a: 6f        ret

0d6b: f5 7c 18  mov   a,$187c+x
0d6e: fd        mov   y,a
0d6f: f5 7b 18  mov   a,$187b+x
0d72: da 0c     movw  $0c,ya
0d74: ba 2a     movw  ya,$2a
0d76: 9a 0c     subw  ya,$0c
0d78: b0 02     bcs   $0d7c
0d7a: 1a 28     decw  $28
0d7c: da 2a     movw  $2a,ya
0d7e: f5 7a 18  mov   a,$187a+x
0d81: fd        mov   y,a
0d82: f5 79 18  mov   a,$1879+x
0d85: da 0c     movw  $0c,ya
0d87: ba 28     movw  ya,$28
0d89: 9a 0c     subw  ya,$0c
0d8b: da 28     movw  $28,ya
0d8d: 6f        ret

0d8e: f4 a5     mov   a,$a5+x
0d90: 53 27 06  bbc2  $27,$0d99
0d93: 60        clrc
0d94: 95 29 1a  adc   a,$1a29+x
0d97: 2f 04     bra   $0d9d
0d99: 80        setc
0d9a: b5 29 1a  sbc   a,$1a29+x
0d9d: d4 a5     mov   $a5+x,a
0d9f: f5 41 1a  mov   a,$1a41+x
0da2: 9c        dec   a
0da3: d0 06     bne   $0dab
0da5: ea 27 40  not1  $0027,2
0da8: f5 59 1a  mov   a,$1a59+x
0dab: d5 41 1a  mov   $1a41+x,a
0dae: 6f        ret

0daf: eb 22     mov   y,$22
0db1: f8 23     mov   x,$23
0db3: f5 a2 1a  mov   a,$1aa2+x
0db6: a3 27 0a  bbs5  $27,$0dc3
0db9: 60        clrc
0dba: 96 61 1b  adc   a,$1b61+y
0dbd: 90 0c     bcc   $0dcb
0dbf: e8 ff     mov   a,#$ff
0dc1: 2f 08     bra   $0dcb
0dc3: 80        setc
0dc4: b6 61 1b  sbc   a,$1b61+y
0dc7: b0 02     bcs   $0dcb
0dc9: e8 00     mov   a,#$00
0dcb: d5 a2 1a  mov   $1aa2+x,a
0dce: f6 31 1b  mov   a,$1b31+y
0dd1: 9c        dec   a
0dd2: d0 07     bne   $0ddb
0dd4: ea 27 a0  not1  $0027,5
0dd7: f6 49 1b  mov   a,$1b49+y
0dda: 1c        asl   a
0ddb: d6 31 1b  mov   $1b31+y,a
0dde: 6f        ret

; process note cmd
0ddf: 8d 00     mov   y,#$00
0de1: cb 08     mov   $08,y
0de3: cd 0e     mov   x,#$0e
0de5: 9e        div   ya,x
0de6: c4 06     mov   $06,a
0de8: cb 09     mov   $09,y
0dea: ad 0d     cmp   y,#$0d
0dec: f0 06     beq   $0df4
0dee: ad 0c     cmp   y,#$0c
0df0: f0 07     beq   $0df9
0df2: 2f 0b     bra   $0dff
0df4: 02 25     set0  $25
0df6: 5f 84 0e  jmp   $0e84

0df9: 18 03 25  or    $25,#$03
0dfc: 5f 84 0e  jmp   $0e84

0dff: 02 25     set0  $25
0e01: eb 22     mov   y,$22
0e03: b3 25 05  bbc5  $25,$0e0b
0e06: 3f a9 0f  call  $0fa9
0e09: 2f 18     bra   $0e23
0e0b: f6 d1 17  mov   a,$17d1+y
0e0e: 8d 0c     mov   y,#$0c
0e10: cf        mul   ya
0e11: 60        clrc
0e12: 84 09     adc   a,$09
0e14: c4 09     mov   $09,a
0e16: eb 22     mov   y,$22
0e18: 76 e9 17  cmp   a,$17e9+y
0e1b: d0 03     bne   $0e20
0e1d: 43 25 5b  bbs2  $25,$0e7b
0e20: d6 e9 17  mov   $17e9+y,a
0e23: f8 23     mov   x,$23
0e25: f5 a9 01  mov   a,$01a9+x
0e28: fd        mov   y,a
0e29: f5 a8 01  mov   a,$01a8+x
0e2c: 7a 08     addw  ya,$08            ; add per-instrument tuning
0e2e: da 08     movw  $08,ya
0e30: f5 82 19  mov   a,$1982+x
0e33: fd        mov   y,a
0e34: f5 81 19  mov   a,$1981+x
0e37: 7a 08     addw  ya,$08            ; add channel transpose/tuning
0e39: da 28     movw  $28,ya
0e3b: 3f 33 0f  call  $0f33             ; update pitch reg value
0e3e: f8 22     mov   x,$22
0e40: 43 25 38  bbs2  $25,$0e7b
0e43: e4 20     mov   a,$20
0e45: 24 1d     and   a,$1d
0e47: 04 1c     or    a,$1c
0e49: c4 1c     mov   $1c,a
0e4b: f5 60 01  mov   a,$0160+x
0e4e: d4 a5     mov   $a5+x,a
0e50: 13 26 12  bbc0  $26,$0e65
0e53: aa 26 20  mov1  c,$0026,1
0e56: ca 26 40  mov1  $0026,2,c
0e59: f5 39 19  mov   a,$1939+x
0e5c: d5 21 19  mov   $1921+x,a
0e5f: f5 69 19  mov   a,$1969+x
0e62: d5 51 19  mov   $1951+x,a
0e65: 13 27 13  bbc0  $27,$0e7b
0e68: 52 27     clr2  $27
0e6a: f5 59 1a  mov   a,$1a59+x
0e6d: d5 41 1a  mov   $1a41+x,a
0e70: f5 89 1a  mov   a,$1a89+x
0e73: d5 71 1a  mov   $1a71+x,a
0e76: f4 a5     mov   a,$a5+x
0e78: 3f 2f 15  call  $152f
0e7b: e4 1f     mov   a,$1f
0e7d: 24 20     and   a,$20
0e7f: f0 03     beq   $0e84
0e81: 3f f2 14  call  $14f2
0e84: f8 22     mov   x,$22
0e86: 78 0d 06  cmp   $06,#$0d
0e89: f0 0b     beq   $0e96
0e8b: eb 06     mov   y,$06
0e8d: f6 a1 17  mov   a,$17a1+y
0e90: c4 06     mov   $06,a
0e92: d4 bd     mov   $bd+x,a
0e94: 2f 0a     bra   $0ea0
0e96: 8d 00     mov   y,#$00
0e98: f7 2c     mov   a,($2c)+y
0e9a: 3a 2c     incw  $2c
0e9c: c4 06     mov   $06,a
0e9e: d4 bd     mov   $bd+x,a
0ea0: f5 01 18  mov   a,$1801+x
0ea3: f0 06     beq   $0eab
0ea5: 9f        xcn   a
0ea6: eb 06     mov   y,$06
0ea8: cf        mul   ya
0ea9: dd        mov   a,y
0eaa: bc        inc   a
0eab: d4 d5     mov   $d5+x,a
0ead: 23 25 21  bbs1  $25,$0ed1
0eb0: f5 d9 1b  mov   a,$1bd9+x
0eb3: c4 06     mov   $06,a
0eb5: ba 2c     movw  ya,$2c            ; readahead
0eb7: da 00     movw  $00,ya
0eb9: 8d 00     mov   y,#$00
0ebb: f7 00     mov   a,($00)+y
0ebd: 68 c4     cmp   a,#$c4
0ebf: b0 1a     bcs   $0edb
0ec1: cd 0e     mov   x,#$0e
0ec3: 8d 00     mov   y,#$00
0ec5: 9e        div   ya,x
0ec6: ad 0d     cmp   y,#$0d
0ec8: f0 0c     beq   $0ed6
0eca: ad 0c     cmp   y,#$0c
0ecc: f0 03     beq   $0ed1
0ece: 63 25 05  bbs3  $25,$0ed6
0ed1: 52 25     clr2  $25
0ed3: 5f ad 0b  jmp   $0bad

0ed6: 42 25     set2  $25
0ed8: 5f ad 0b  jmp   $0bad

0edb: 68 d5     cmp   a,#$d5
0edd: f0 17     beq   $0ef6
0edf: 68 d6     cmp   a,#$d6
0ee1: f0 28     beq   $0f0b
0ee3: 80        setc
0ee4: a8 c4     sbc   a,#$c4
0ee6: 5d        mov   x,a
0ee7: f5 65 17  mov   a,$1765+x         ; oplen table
0eea: 30 e5     bmi   $0ed1
0eec: f0 e8     beq   $0ed6
0eee: 60        clrc
0eef: dd        mov   a,y
0ef0: 95 65 17  adc   a,$1765+x         ; oplen table
0ef3: fd        mov   y,a
0ef4: 2f c5     bra   $0ebb
0ef6: e4 06     mov   a,$06
0ef8: 3f 28 16  call  $1628
0efb: f5 f1 1b  mov   a,$1bf1+x
0efe: f0 22     beq   $0f22
0f00: f5 82 1c  mov   a,$1c82+x
0f03: fd        mov   y,a
0f04: f5 81 1c  mov   a,$1c81+x
0f07: da 00     movw  $00,ya
0f09: 2f ae     bra   $0eb9
0f0b: e4 06     mov   a,$06
0f0d: 3f 28 16  call  $1628
0f10: f5 f1 1b  mov   a,$1bf1+x
0f13: d0 0d     bne   $0f22
0f15: f5 12 1d  mov   a,$1d12+x
0f18: fd        mov   y,a
0f19: f5 11 1d  mov   a,$1d11+x
0f1c: da 00     movw  $00,ya
0f1e: 8b 06     dec   $06
0f20: 2f 97     bra   $0eb9
0f22: 8b 06     dec   $06
0f24: fc        inc   y
0f25: 2f 94     bra   $0ebb
0f27: f8 24     mov   x,$24
0f29: f5 19 18  mov   a,$1819+x
0f2c: c4 28     mov   $28,a
0f2e: f5 1a 18  mov   a,$181a+x
0f31: c4 29     mov   $29,a
; calculate final pitch reg value ($2b = note number)
0f33: e4 20     mov   a,$20
0f35: 24 1d     and   a,$1d
0f37: f0 6f     beq   $0fa8             ; skip if not changed
0f39: ba 28     movw  ya,$28
0f3b: 7a 2f     addw  ya,$2f            ; add global tuning?
0f3d: da 02     movw  $02,ya            ; $03 = note number, $02 = fraction
0f3f: cd 0c     mov   x,#$0c
0f41: 8d 00     mov   y,#$00
0f43: e4 03     mov   a,$03
0f45: 60        clrc
0f46: 9e        div   ya,x
0f47: c4 08     mov   $08,a             ; octave
0f49: dd        mov   a,y               ; key
0f4a: 1c        asl   a
0f4b: 5d        mov   x,a
0f4c: f5 b0 17  mov   a,$17b0+x
0f4f: fd        mov   y,a
0f50: f5 af 17  mov   a,$17af+x         ; pitch table
0f53: da 0a     movw  $0a,ya
0f55: da 04     movw  $04,ya
0f57: f5 b2 17  mov   a,$17b2+x
0f5a: fd        mov   y,a
0f5b: f5 b1 17  mov   a,$17b1+x
0f5e: 9a 0a     subw  ya,$0a
0f60: cb 0b     mov   $0b,y
0f62: eb 02     mov   y,$02
0f64: cf        mul   ya                ; interpolate by note number fraction
0f65: 8f 00 0d  mov   $0d,#$00
0f68: cb 0c     mov   $0c,y
0f6a: eb 02     mov   y,$02
0f6c: e4 0b     mov   a,$0b
0f6e: cf        mul   ya
0f6f: 7a 0c     addw  ya,$0c
0f71: 7a 04     addw  ya,$04
0f73: da 0c     movw  $0c,ya
0f75: e4 08     mov   a,$08             ; octave
0f77: 28 07     and   a,#$07
0f79: c4 0a     mov   $0a,a
0f7b: 1c        asl   a
0f7c: 84 0a     adc   a,$0a             ; $0a *= 3 (lsr + ror = 3 bytes)
0f7e: c5 83 0f  mov   $0f83,a           ; self-modifying code!
0f81: dd        mov   a,y
0f82: 2f 09     bra   $0f8d             ; note: destination changes dynamically by the code above!
0f84: 5c        lsr   a
0f85: 6b 0c     ror   $0c
0f87: 5c        lsr   a
0f88: 6b 0c     ror   $0c
0f8a: 5c        lsr   a
0f8b: 6b 0c     ror   $0c
0f8d: 5c        lsr   a
0f8e: 6b 0c     ror   $0c
0f90: 5c        lsr   a
0f91: 6b 0c     ror   $0c
0f93: 5c        lsr   a
0f94: 6b 0c     ror   $0c
0f96: 5c        lsr   a
0f97: 6b 0c     ror   $0c
0f99: fd        mov   y,a
0f9a: e4 21     mov   a,$21
0f9c: 08 02     or    a,#$02
0f9e: c4 f2     mov   $f2,a
0fa0: fa 0c f3  mov   ($f3),($0c)
0fa3: bc        inc   a
0fa4: c4 f2     mov   $f2,a
0fa6: cb f3     mov   $f3,y             ; set voice $21 pitch from $0C/Y
0fa8: 6f        ret

0fa9: e4 09     mov   a,$09
0fab: d6 e9 17  mov   $17e9+y,a
0fae: 1c        asl   a
0faf: 1c        asl   a
0fb0: 5d        mov   x,a
0fb1: f4 76     mov   a,$76+x
0fb3: c4 09     mov   $09,a
0fb5: f4 77     mov   a,$77+x
0fb7: d6 60 01  mov   $0160+y,a
0fba: eb 23     mov   y,$23
0fbc: f4 78     mov   a,$78+x
0fbe: d6 a2 1a  mov   $1aa2+y,a
0fc1: eb 22     mov   y,$22
0fc3: f4 75     mov   a,$75+x
0fc5: d6 48 01  mov   $0148+y,a
0fc8: 5d        mov   x,a
0fc9: f5 80 5e  mov   a,$5e80+x
0fcc: 1c        asl   a
0fcd: 5d        mov   x,a
0fce: eb 23     mov   y,$23
0fd0: f5 40 5f  mov   a,$5f40+x
0fd3: d6 78 01  mov   $0178+y,a
0fd6: f5 41 5f  mov   a,$5f41+x
0fd9: d6 79 01  mov   $0179+y,a
0fdc: f5 80 5f  mov   a,$5f80+x
0fdf: d6 a8 01  mov   $01a8+y,a
0fe2: f5 81 5f  mov   a,$5f81+x
0fe5: d6 a9 01  mov   $01a9+y,a
0fe8: 09 20 1f  or    ($1f),($20)
0feb: 6f        ret

; dispatch vcmd
0fec: 80        setc
0fed: a8 c4     sbc   a,#$c4
0fef: 1c        asl   a
0ff0: 5d        mov   x,a
0ff1: 60        clrc
0ff2: e8 00     mov   a,#$00
0ff4: 1f ed 16  jmp   ($16ed+x)

; vcmd c4,f6,fe,ff - octave up
0ff7: f6 d1 17  mov   a,$17d1+y
0ffa: bc        inc   a
0ffb: 2f 0b     bra   $1008

; vcmd c5 - octave down
0ffd: f6 d1 17  mov   a,$17d1+y
1000: 9c        dec   a
1001: 2f 05     bra   $1008

; vcmd c6 - set octave
1003: 5d        mov   x,a
1004: e7 2c     mov   a,($2c+x)
1006: 3a 2c     incw  $2c
1008: 28 0f     and   a,#$0f
100a: c4 06     mov   $06,a
100c: f6 d1 17  mov   a,$17d1+y
100f: 28 f0     and   a,#$f0
1011: 04 06     or    a,$06
1013: d6 d1 17  mov   $17d1+y,a
1016: 6f        ret

; vcmd c7 - nop
1017: 6f        ret

; vcmd c8 - set noise freq
1018: 5d        mov   x,a
1019: e7 2c     mov   a,($2c+x)
101b: 3a 2c     incw  $2c
101d: 2f 08     bra   $1027

; vcmd df - change noise freq
101f: 5d        mov   x,a
1020: e7 2c     mov   a,($2c+x)
1022: 3a 2c     incw  $2c
1024: 60        clrc
1025: 84 37     adc   a,$37
1027: 28 1f     and   a,#$1f
1029: 38 e0 37  and   $37,#$e0
102c: 04 37     or    a,$37
102e: c4 37     mov   $37,a
1030: 8f 6c f2  mov   $f2,#$6c          ; set FLG noise freq bits
1033: c4 f3     mov   $f3,a
; vcmd c9 - noise on
1035: e3 25 05  bbs7  $25,$103d
1038: 09 20 56  or    ($56),($20)
103b: 2f 16     bra   $1053
103d: 09 20 4b  or    ($4b),($20)
1040: 2f 11     bra   $1053
; vcmd ca - noise off
1042: e4 20     mov   a,$20
1044: 48 ff     eor   a,#$ff
1046: e3 25 06  bbs7  $25,$104f
1049: 24 56     and   a,$56
104b: c4 56     mov   $56,a
104d: 2f 04     bra   $1053
104f: 24 4b     and   a,$4b
1051: c4 4b     mov   $4b,a
1053: 8f 3d f2  mov   $f2,#$3d          ; noise bits
1056: e4 49     mov   a,$49
1058: 48 ff     eor   a,#$ff
105a: 24 56     and   a,$56
105c: 04 4b     or    a,$4b
105e: c4 f3     mov   $f3,a
1060: 6f        ret

; vcmd cb - pitchmod on
1061: e3 25 05  bbs7  $25,$1069
1064: 09 20 57  or    ($57),($20)
1067: 2f 1c     bra   $1085
1069: 13 22 26  bbc0  $22,$1092
106c: 09 20 4c  or    ($4c),($20)
106f: 2f 14     bra   $1085

; vcmd cc - pitchmod off
1071: e4 20     mov   a,$20
1073: 48 ff     eor   a,#$ff
1075: e3 25 06  bbs7  $25,$107e
1078: 24 57     and   a,$57
107a: c4 57     mov   $57,a
107c: 2f 07     bra   $1085
107e: 13 22 11  bbc0  $22,$1092
1081: 24 4c     and   a,$4c
1083: c4 4c     mov   $4c,a
1085: 8f 2d f2  mov   $f2,#$2d          ; pitchmod bits
1088: e4 49     mov   a,$49
108a: 48 ff     eor   a,#$ff
108c: 24 57     and   a,$57
108e: 04 4c     or    a,$4c
1090: c4 f3     mov   $f3,a
1092: 6f        ret

; vcmd fc
1093: 3f bb 10  call  $10bb
1096: e8 00     mov   a,#$00
; vcmd cd - jump to $4000+x*2 (sfx lo)
1098: 5d        mov   x,a
1099: e7 2c     mov   a,($2c+x)
109b: 3f f2 04  call  $04f2
109e: 2f 0d     bra   $10ad

; vcmd fd
10a0: 3f bb 10  call  $10bb
10a3: e8 00     mov   a,#$00
; vcmd ce - jump to $4002+x*2 (sfx hi)
10a5: 5d        mov   x,a
10a6: e7 2c     mov   a,($2c+x)
10a8: 3f f2 04  call  $04f2
10ab: bc        inc   a
10ac: bc        inc   a
; jump to ($00/1)
10ad: da 00     movw  $00,ya
10af: 8d 00     mov   y,#$00
10b1: f7 00     mov   a,($00)+y
10b3: c4 2c     mov   $2c,a
10b5: fc        inc   y
10b6: f7 00     mov   a,($00)+y
10b8: c4 2d     mov   $2d,a
10ba: 6f        ret
; save return address for sfx call
10bb: e4 23     mov   a,$23
10bd: 28 0f     and   a,#$0f
10bf: 5d        mov   x,a
10c0: e4 2c     mov   a,$2c
10c2: d5 a1 1d  mov   $1da1+x,a
10c5: e4 2d     mov   a,$2d
10c7: d5 a2 1d  mov   $1da2+x,a
10ca: 6f        ret

; vcmd cf - transpose (absolute, signed, 16 = 1 semitone)
10cb: 5d        mov   x,a
10cc: e7 2c     mov   a,($2c+x)
10ce: 30 05     bmi   $10d5
10d0: 9f        xcn   a
10d1: 28 0f     and   a,#$0f
10d3: 2f 03     bra   $10d8
10d5: 9f        xcn   a
10d6: 08 f0     or    a,#$f0
10d8: eb 23     mov   y,$23
10da: d6 82 19  mov   $1982+y,a
10dd: e7 2c     mov   a,($2c+x)
10df: 9f        xcn   a
10e0: 28 f0     and   a,#$f0
10e2: d6 81 19  mov   $1981+y,a
10e5: 3a 2c     incw  $2c
10e7: 6f        ret

; vcmd d0 - end/return
10e8: f8 23     mov   x,$23
10ea: f5 aa 1b  mov   a,$1baa+x
10ed: c4 2d     mov   $2d,a
10ef: f0 0c     beq   $10fd
; back to loop point
10f1: f5 a9 1b  mov   a,$1ba9+x
10f4: c4 2c     mov   $2c,a
10f6: e3 25 03  bbs7  $25,$10fc
10f9: 09 20 62  or    ($62),($20)
10fc: 6f        ret
; if loop point is not set
10fd: f3 25 17  bbc7  $25,$1117
1100: 7d        mov   a,x
1101: 28 0f     and   a,#$0f
1103: 5d        mov   x,a
1104: f5 a2 1d  mov   a,$1da2+x
1107: f0 0e     beq   $1117
; return from sfx
1109: fd        mov   y,a
110a: f5 a1 1d  mov   a,$1da1+x
110d: da 2c     movw  $2c,ya
110f: 3a 2c     incw  $2c
1111: e8 00     mov   a,#$00
1113: d5 a2 1d  mov   $1da2+x,a
1116: 6f        ret
; halt
1117: e4 20     mov   a,$20
1119: 48 ff     eor   a,#$ff
111b: 24 1e     and   a,$1e
111d: c4 1e     mov   $1e,a
111f: 8f 5c f2  mov   $f2,#$5c
1122: fa 20 f3  mov   ($f3),($20)       ; set key off reg from $20
1125: 3f 71 10  call  $1071
1128: 3f 42 10  call  $1042
112b: 3f d3 14  call  $14d3
112e: 6f        ret

; vcmd d1 - tempo
112f: 5d        mov   x,a
1130: e7 2c     mov   a,($2c+x)
1132: 3a 2c     incw  $2c
1134: e3 25 07  bbs7  $25,$113e
1137: c4 fa     mov   $fa,a             ; set timer0 latch
1139: c4 5a     mov   $5a,a
113b: c4 5b     mov   $5b,a
113d: 6f        ret

113e: c4 fb     mov   $fb,a             ; set timer1 latch
1140: c4 4e     mov   $4e,a
1142: 6f        ret

; vcmd d2,d3,d4 - repeat start
1143: f6 d1 17  mov   a,$17d1+y
1146: c4 06     mov   $06,a
1148: f6 d9 1b  mov   a,$1bd9+y
114b: bc        inc   a
114c: d6 d9 1b  mov   $1bd9+y,a         ; increment nest level
114f: 3f 25 16  call  $1625
1152: 8d 00     mov   y,#$00
1154: f7 2c     mov   a,($2c)+y
1156: 3a 2c     incw  $2c
1158: 9c        dec   a
1159: d5 f1 1b  mov   $1bf1+x,a         ; push repeat count
115c: e4 06     mov   a,$06
115e: d5 f2 1b  mov   $1bf2+x,a         ; push octave
1161: e4 2c     mov   a,$2c
1163: d5 81 1c  mov   $1c81+x,a
1166: e4 2d     mov   a,$2d
1168: d5 82 1c  mov   $1c82+x,a         ; push vcmd ptr
116b: 6f        ret

; vcmd d5 - repeat end
116c: 3f 25 16  call  $1625
116f: f5 f1 1b  mov   a,$1bf1+x
1172: f0 32     beq   $11a6
1174: 9c        dec   a
1175: d5 f1 1b  mov   $1bf1+x,a         ; decrement repeat count
1178: f5 f2 1b  mov   a,$1bf2+x
117b: d6 d1 17  mov   $17d1+y,a         ; reload octave
117e: e4 2c     mov   a,$2c
1180: d5 11 1d  mov   $1d11+x,a
1183: e4 2d     mov   a,$2d
1185: d5 12 1d  mov   $1d12+x,a         ; save loop end point
1188: f5 82 1c  mov   a,$1c82+x
118b: fd        mov   y,a
118c: f5 81 1c  mov   a,$1c81+x
118f: da 2c     movw  $2c,ya            ; reload vcmd ptr
1191: 6f        ret

; vcmd d6 - repeat break
1192: 3f 25 16  call  $1625
1195: f5 f1 1b  mov   a,$1bf1+x
1198: f0 01     beq   $119b             ; only work at the last time
119a: 6f        ret
; break the loop
119b: f5 12 1d  mov   a,$1d12+x
119e: fd        mov   y,a
119f: f5 11 1d  mov   a,$1d11+x
11a2: da 2c     movw  $2c,ya            ; jump to loop end
11a4: eb 22     mov   y,$22
; decrement nest level
11a6: f6 d9 1b  mov   a,$1bd9+y
11a9: 9c        dec   a
11aa: d6 d9 1b  mov   $1bd9+y,a
11ad: 6f        ret

; vcmd d7 - set loop point
11ae: f8 23     mov   x,$23
11b0: e4 2c     mov   a,$2c
11b2: d5 a9 1b  mov   $1ba9+x,a
11b5: e4 2d     mov   a,$2d
11b7: d5 aa 1b  mov   $1baa+x,a
11ba: 6f        ret

; vcmd d8 - default ADSR
11bb: f6 48 01  mov   a,$0148+y
11be: 5d        mov   x,a
11bf: f5 80 5e  mov   a,$5e80+x
11c2: 1c        asl   a
11c3: 5d        mov   x,a
11c4: eb 23     mov   y,$23
11c6: f5 40 5f  mov   a,$5f40+x
11c9: d6 78 01  mov   $0178+y,a
11cc: f5 41 5f  mov   a,$5f41+x
11cf: d6 79 01  mov   $0179+y,a
11d2: e4 20     mov   a,$20
11d4: 24 1d     and   a,$1d
11d6: f0 15     beq   $11ed
11d8: cd f2     mov   x,#$f2
11da: e4 21     mov   a,$21
11dc: 08 05     or    a,#$05            ; voice $21 ADSR1 reg
11de: af        mov   (x)+,a
11df: f6 78 01  mov   a,$0178+y
11e2: c6        mov   (x),a
11e3: e4 21     mov   a,$21
11e5: 08 06     or    a,#$06            ; voice $21 ADSR2 reg
11e7: 1d        dec   x
11e8: af        mov   (x)+,a
11e9: f6 79 01  mov   a,$0179+y
11ec: c6        mov   (x),a
11ed: 6f        ret

; vcmd d9 - set attack rate (AR)
11ee: 5d        mov   x,a
11ef: e4 21     mov   a,$21
11f1: 08 05     or    a,#$05            ; voice $21 ADSR1 reg
11f3: c4 f2     mov   $f2,a
11f5: eb 23     mov   y,$23
11f7: f6 78 01  mov   a,$0178+y
11fa: 28 f0     and   a,#$f0
11fc: 07 2c     or    a,($2c+x)
11fe: 3a 2c     incw  $2c
1200: 2f 49     bra   $124b

; vcmd da - set decay rate (DR)
1202: 5d        mov   x,a
1203: e4 21     mov   a,$21
1205: 08 05     or    a,#$05            ; voice $21 ADSR1 reg
1207: c4 f2     mov   $f2,a
1209: eb 23     mov   y,$23
120b: f6 78 01  mov   a,$0178+y
120e: 28 8f     and   a,#$8f
1210: 9f        xcn   a
1211: 07 2c     or    a,($2c+x)
1213: 3a 2c     incw  $2c
1215: 9f        xcn   a
1216: 2f 33     bra   $124b

; vcmd db - set sustain level (SL)
1218: 5d        mov   x,a
1219: e4 21     mov   a,$21
121b: 08 06     or    a,#$06            ; voice $21 ADSR2 reg
121d: c4 f2     mov   $f2,a
121f: eb 23     mov   y,$23
1221: fc        inc   y
1222: f6 78 01  mov   a,$0178+y
1225: 28 1f     and   a,#$1f
1227: c4 06     mov   $06,a
1229: e7 2c     mov   a,($2c+x)
122b: 3a 2c     incw  $2c
122d: 38 1f 06  and   $06,#$1f
1230: 9f        xcn   a
1231: 1c        asl   a
1232: 04 06     or    a,$06
1234: 2f 15     bra   $124b

; vcmd dc - set sustain rate (SR)
1236: 5d        mov   x,a
1237: e4 21     mov   a,$21
1239: 08 06     or    a,#$06            ; voice $21 ADSR2 reg
123b: c4 f2     mov   $f2,a
123d: eb 23     mov   y,$23
123f: fc        inc   y
1240: f6 78 01  mov   a,$0178+y
1243: 28 e0     and   a,#$e0
1245: 07 2c     or    a,($2c+x)
1247: 3a 2c     incw  $2c
1249: 2f 00     bra   $124b
124b: d6 78 01  mov   $0178+y,a
124e: fd        mov   y,a
124f: e4 20     mov   a,$20
1251: 24 1d     and   a,$1d
1253: f0 02     beq   $1257
1255: cb f3     mov   $f3,y
1257: 6f        ret

; vcmd dd - duration rate
1258: 5d        mov   x,a
1259: e7 2c     mov   a,($2c+x)
125b: 3a 2c     incw  $2c
125d: d6 01 18  mov   $1801+y,a         ; duration rate
1260: 6f        ret

; vcmd de - set instrument
1261: 5d        mov   x,a
1262: e7 2c     mov   a,($2c+x)
1264: 3a 2c     incw  $2c
1266: d6 48 01  mov   $0148+y,a         ; save instrument #
1269: 5d        mov   x,a
126a: f5 80 5e  mov   a,$5e80+x         ; SRCN table
126d: 1c        asl   a
126e: 5d        mov   x,a
126f: f5 01 5f  mov   a,$5f01+x
1272: d6 60 01  mov   $0160+y,a         ; volume
1275: eb 23     mov   y,$23
1277: f5 40 5f  mov   a,$5f40+x         ; ADSR(1)
127a: d6 78 01  mov   $0178+y,a
127d: f5 41 5f  mov   a,$5f41+x         ; ADSR(2)
1280: d6 79 01  mov   $0179+y,a
1283: f5 80 5f  mov   a,$5f80+x         ; coarse tuning
1286: d6 a8 01  mov   $01a8+y,a
1289: f5 81 5f  mov   a,$5f81+x         ; fine tuning
128c: d6 a9 01  mov   $01a9+y,a
128f: 09 20 1f  or    ($1f),($20)
1292: 6f        ret

; vcmd e0,e2 - volume
1293: 5d        mov   x,a
1294: e7 2c     mov   a,($2c+x)
1296: 3a 2c     incw  $2c
1298: f8 23     mov   x,$23
129a: d5 b2 19  mov   $19b2+x,a
129d: f6 60 01  mov   a,$0160+y         ; per-instrument volume
12a0: 5f 2f 15  jmp   $152f

; vcmd e3 - change volume
12a3: 5d        mov   x,a
12a4: e7 2c     mov   a,($2c+x)
12a6: 3a 2c     incw  $2c
12a8: f8 23     mov   x,$23
12aa: 95 b2 19  adc   a,$19b2+x
12ad: 28 7f     and   a,#$7f
12af: d5 b2 19  mov   $19b2+x,a
12b2: f6 60 01  mov   a,$0160+y
12b5: 5f 2f 15  jmp   $152f

; vcmd e4 - volume fade
12b8: 5d        mov   x,a
12b9: e7 2c     mov   a,($2c+x)
12bb: 3a 2c     incw  $2c
12bd: c4 06     mov   $06,a
12bf: d6 11 1a  mov   $1a11+y,a
12c2: e7 2c     mov   a,($2c+x)
12c4: 3a 2c     incw  $2c
12c6: f8 23     mov   x,$23
12c8: 80        setc
12c9: b5 b2 19  sbc   a,$19b2+x
12cc: b0 03     bcs   $12d1
12ce: 48 ff     eor   a,#$ff
12d0: bc        inc   a
12d1: 8d 00     mov   y,#$00
12d3: f8 06     mov   x,$06
12d5: f0 25     beq   $12fc
12d7: 9e        div   ya,x
12d8: c4 07     mov   $07,a
12da: e8 00     mov   a,#$00
12dc: 9e        div   ya,x
12dd: b0 11     bcs   $12f0
12df: 48 ff     eor   a,#$ff
12e1: 80        setc
12e2: 88 00     adc   a,#$00
12e4: c4 06     mov   $06,a
12e6: e4 07     mov   a,$07
12e8: 48 ff     eor   a,#$ff
12ea: 88 00     adc   a,#$00
12ec: c4 07     mov   $07,a
12ee: e4 06     mov   a,$06
12f0: f8 23     mov   x,$23
12f2: d5 e1 19  mov   $19e1+x,a
12f5: e4 07     mov   a,$07
12f7: d5 e2 19  mov   $19e2+x,a
12fa: 62 27     set3  $27
12fc: 6f        ret

; vcmd e5 - portamento
12fd: 92 26     clr4  $26
12ff: 5d        mov   x,a
1300: e7 2c     mov   a,($2c+x)
1302: 3a 2c     incw  $2c
1304: 9c        dec   a
1305: c4 06     mov   $06,a
1307: d6 d9 18  mov   $18d9+y,a
130a: e7 2c     mov   a,($2c+x)
130c: 10 05     bpl   $1313
130e: 48 ff     eor   a,#$ff
1310: bc        inc   a
1311: 82 26     set4  $26
1313: 3a 2c     incw  $2c
1315: 8d 00     mov   y,#$00
1317: f8 06     mov   x,$06
1319: f0 26     beq   $1341
131b: 9e        div   ya,x
131c: c4 07     mov   $07,a
131e: e8 00     mov   a,#$00
1320: 9e        div   ya,x
1321: c4 06     mov   $06,a
1323: e8 00     mov   a,#$00
1325: 9e        div   ya,x
1326: c4 09     mov   $09,a
1328: e8 00     mov   a,#$00
132a: 9e        div   ya,x
132b: f8 24     mov   x,$24
132d: d5 7b 18  mov   $187b+x,a
1330: e4 09     mov   a,$09
1332: d5 7c 18  mov   $187c+x,a
1335: e4 06     mov   a,$06
1337: d5 79 18  mov   $1879+x,a
133a: e4 07     mov   a,$07
133c: d5 7a 18  mov   $187a+x,a
133f: 62 26     set3  $26
1341: 6f        ret

; vcmd e6 - portamento toggle
1342: a3 26 03  bbs5  $26,$1348
1345: a2 26     set5  $26
1347: 6f        ret

1348: b2 26     clr5  $26
134a: 72 26     clr3  $26
134c: 6f        ret

; vcmd e7 - panpot
134d: 92 27     clr4  $27
134f: 5d        mov   x,a
1350: e7 2c     mov   a,($2c+x)
1352: 3a 2c     incw  $2c
1354: f8 23     mov   x,$23
1356: d5 a2 1a  mov   $1aa2+x,a
1359: f6 60 01  mov   a,$0160+y
135c: 5f 2f 15  jmp   $152f

; vcmd e8 - panpot fade
135f: 5d        mov   x,a
1360: e7 2c     mov   a,($2c+x)
1362: 3a 2c     incw  $2c
1364: c4 06     mov   $06,a
1366: d6 01 1b  mov   $1b01+y,a
1369: e7 2c     mov   a,($2c+x)
136b: 3a 2c     incw  $2c
136d: f8 23     mov   x,$23
136f: 80        setc
1370: b5 a2 1a  sbc   a,$1aa2+x
1373: f0 35     beq   $13aa
1375: b0 03     bcs   $137a
1377: 48 ff     eor   a,#$ff
1379: bc        inc   a
137a: 8d 00     mov   y,#$00
137c: f8 06     mov   x,$06
137e: f0 2a     beq   $13aa
1380: 9e        div   ya,x
1381: c4 07     mov   $07,a
1383: e8 00     mov   a,#$00
1385: 9e        div   ya,x
1386: b0 11     bcs   $1399
1388: 48 ff     eor   a,#$ff
138a: 80        setc
138b: 88 00     adc   a,#$00
138d: c4 06     mov   $06,a
138f: e4 07     mov   a,$07
1391: 48 ff     eor   a,#$ff
1393: 88 00     adc   a,#$00
1395: c4 07     mov   $07,a
1397: e4 06     mov   a,$06
1399: f8 23     mov   x,$23
139b: d5 d1 1a  mov   $1ad1+x,a
139e: e4 07     mov   a,$07
13a0: d5 d2 1a  mov   $1ad2+x,a
13a3: e8 80     mov   a,#$80
13a5: d5 a1 1a  mov   $1aa1+x,a
13a8: c2 27     set6  $27
13aa: 6f        ret

; vcmd e9 - panpot LFO on
13ab: b2 27     clr5  $27
13ad: 5d        mov   x,a
13ae: e7 2c     mov   a,($2c+x)
13b0: 3a 2c     incw  $2c
13b2: d6 31 1b  mov   $1b31+y,a
13b5: d6 49 1b  mov   $1b49+y,a
13b8: e7 2c     mov   a,($2c+x)
13ba: 10 05     bpl   $13c1
13bc: 48 ff     eor   a,#$ff
13be: bc        inc   a
13bf: a2 27     set5  $27
13c1: 3a 2c     incw  $2c
13c3: d6 61 1b  mov   $1b61+y,a
13c6: f8 23     mov   x,$23
13c8: f5 a2 1a  mov   a,$1aa2+x
13cb: d6 19 1b  mov   $1b19+y,a
13ce: 82 27     set4  $27
13d0: 6f        ret

; vcmd ea - restart panpot LFO
13d1: 82 27     set4  $27
13d3: f8 23     mov   x,$23
13d5: f5 a2 1a  mov   a,$1aa2+x
13d8: d6 19 1b  mov   $1b19+y,a
13db: 6f        ret

; vcmd eb - panpot LFO off
13dc: 92 27     clr4  $27
13de: f8 23     mov   x,$23
13e0: f6 19 1b  mov   a,$1b19+y
13e3: d5 a2 1a  mov   $1aa2+x,a
13e6: f6 60 01  mov   a,$0160+y
13e9: 5f 2f 15  jmp   $152f

; vcmd ec - transpose (absolute, signed, 4 = 1 semitone)
13ec: 3f 17 14  call  $1417
13ef: f8 23     mov   x,$23
13f1: e4 06     mov   a,$06
13f3: d5 81 19  mov   $1981+x,a
13f6: e4 07     mov   a,$07
13f8: d5 82 19  mov   $1982+x,a
13fb: 6f        ret

; vcmd ec - transpose (relative, signed, 4 = 1 semitone)
13fc: 3f 17 14  call  $1417
13ff: e8 ff     mov   a,#$ff
1401: d6 e9 17  mov   $17e9+y,a
1404: f8 23     mov   x,$23
1406: f5 82 19  mov   a,$1982+x
1409: fd        mov   y,a
140a: f5 81 19  mov   a,$1981+x
140d: 7a 06     addw  ya,$06
140f: d5 81 19  mov   $1981+x,a
1412: dd        mov   a,y
1413: d5 82 19  mov   $1982+x,a
1416: 6f        ret

; divide the 1st argument by 4 (arithmetic, set results into $06/7)
1417: 5d        mov   x,a
1418: c4 06     mov   $06,a
141a: e7 2c     mov   a,($2c+x)
141c: 30 08     bmi   $1426
141e: 5c        lsr   a
141f: 6b 06     ror   $06
1421: 5c        lsr   a
1422: 6b 06     ror   $06
1424: 2f 08     bra   $142e
1426: 80        setc
1427: 7c        ror   a
1428: 6b 06     ror   $06
142a: 80        setc
142b: 7c        ror   a
142c: 6b 06     ror   $06
142e: c4 07     mov   $07,a
1430: 3a 2c     incw  $2c
1432: 6f        ret

; vcmd ee - rhythm kit on
1433: a2 25     set5  $25
1435: 6f        ret

; vcmd ef - rhythm kit off
1436: b2 25     clr5  $25
1438: 6f        ret

; vcmd f0 - vibrato on
1439: 32 26     clr1  $26
143b: 5d        mov   x,a
143c: e7 2c     mov   a,($2c+x)
143e: 3a 2c     incw  $2c
1440: d6 39 19  mov   $1939+y,a
1443: d6 21 19  mov   $1921+y,a
1446: 8f 00 07  mov   $07,#$00
1449: e7 2c     mov   a,($2c+x)
144b: 10 05     bpl   $1452
144d: 48 ff     eor   a,#$ff
144f: bc        inc   a
1450: 22 26     set1  $26
1452: 3a 2c     incw  $2c
1454: 1c        asl   a
1455: 2b 07     rol   $07
1457: 1c        asl   a
1458: 2b 07     rol   $07
145a: f8 23     mov   x,$23
145c: d5 f1 18  mov   $18f1+x,a
145f: e4 07     mov   a,$07
1461: d5 f2 18  mov   $18f2+x,a
1464: 02 26     set0  $26
1466: e8 00     mov   a,#$00
1468: d6 69 19  mov   $1969+y,a
146b: 6f        ret

; vcmd f1 - vibrato on (w/delay)
146c: 3f 39 14  call  $1439
146f: 5d        mov   x,a
1470: e7 2c     mov   a,($2c+x)
1472: 3a 2c     incw  $2c
1474: d6 69 19  mov   $1969+y,a
1477: 6f        ret

; vcmd f2 - change tempo
1478: 5d        mov   x,a
1479: e7 2c     mov   a,($2c+x)
147b: 3a 2c     incw  $2c
147d: e3 25 09  bbs7  $25,$1489
1480: 84 5a     adc   a,$5a
1482: c4 5a     mov   $5a,a
1484: c4 5b     mov   $5b,a
1486: c4 fa     mov   $fa,a             ; set timer0 latch
1488: 6f        ret

1489: 84 4e     adc   a,$4e
148b: c4 4e     mov   $4e,a
148d: c4 fb     mov   $fb,a             ; set timer1 latch
148f: 6f        ret

; vcmd f3 - vibrato off
1490: 12 26     clr0  $26
1492: 6f        ret

; vcmd f4 - tremolo on
1493: 5d        mov   x,a
1494: e7 2c     mov   a,($2c+x)
1496: 3a 2c     incw  $2c
1498: d6 59 1a  mov   $1a59+y,a
149b: d6 41 1a  mov   $1a41+y,a
149e: e7 2c     mov   a,($2c+x)
14a0: 3a 2c     incw  $2c
14a2: d6 29 1a  mov   $1a29+y,a
14a5: e8 00     mov   a,#$00
14a7: d6 89 1a  mov   $1a89+y,a
14aa: 02 27     set0  $27
14ac: 6f        ret

; vcmd f5 - tremolo on (w/delay)
14ad: 3f 93 14  call  $1493
14b0: e7 2c     mov   a,($2c+x)
14b2: 3a 2c     incw  $2c
14b4: d6 89 1a  mov   $1a89+y,a
14b7: 6f        ret

14b8: 02 27     set0  $27
14ba: 6f        ret

; vcmd f7 - tremolo off
14bb: 12 27     clr0  $27
14bd: 6f        ret

; vcmd f8 - slur on
14be: 62 25     set3  $25
14c0: 6f        ret

; vcmd f9 - slur off
14c1: 72 25     clr3  $25
14c3: 52 25     clr2  $25
14c5: 6f        ret

; vcmd fa - echo on
14c6: e3 25 05  bbs7  $25,$14ce
14c9: 09 20 58  or    ($58),($20)
14cc: 2f 16     bra   $14e4
14ce: 09 20 4d  or    ($4d),($20)
14d1: 2f 11     bra   $14e4

; vcmd fb - echo off
14d3: e4 20     mov   a,$20
14d5: 48 ff     eor   a,#$ff
14d7: e3 25 06  bbs7  $25,$14e0
14da: 24 58     and   a,$58
14dc: c4 58     mov   $58,a
14de: 2f 04     bra   $14e4
14e0: 24 4d     and   a,$4d
14e2: c4 4d     mov   $4d,a
14e4: 8f 4d f2  mov   $f2,#$4d
14e7: e4 49     mov   a,$49
14e9: 48 ff     eor   a,#$ff
14eb: 24 58     and   a,$58
14ed: 04 4d     or    a,$4d
14ef: c4 f3     mov   $f3,a
14f1: 6f        ret

14f2: e4 20     mov   a,$20
14f4: 24 1d     and   a,$1d
14f6: f0 36     beq   $152e
14f8: e4 20     mov   a,$20
14fa: 48 ff     eor   a,#$ff
14fc: 24 1f     and   a,$1f
14fe: c4 1f     mov   $1f,a
1500: eb 22     mov   y,$22
1502: e4 21     mov   a,$21
1504: 08 04     or    a,#$04            ; voice $21 SRCN reg
1506: c4 f2     mov   $f2,a
1508: f6 48 01  mov   a,$0148+y
150b: 5d        mov   x,a
150c: f5 80 5e  mov   a,$5e80+x
150f: c4 f3     mov   $f3,a
1511: f8 23     mov   x,$23
1513: e4 21     mov   a,$21
1515: 08 05     or    a,#$05            ; voice $21 ADSR1 reg
1517: c4 f2     mov   $f2,a
1519: f5 78 01  mov   a,$0178+x
151c: c4 f3     mov   $f3,a
151e: e4 21     mov   a,$21
1520: 08 06     or    a,#$06            ; voice $21 ADSR2 reg
1522: c4 f2     mov   $f2,a
1524: f5 79 01  mov   a,$0179+x
1527: c4 f3     mov   $f3,a
1529: f6 60 01  mov   a,$0160+y
152c: 2f 01     bra   $152f
152e: 6f        ret

; calculate volume reg value
152f: fd        mov   y,a               ; y = per-instrument volume
1530: e4 20     mov   a,$20
1532: 24 1d     and   a,$1d
1534: f0 48     beq   $157e             ; skip if not changed
1536: f8 23     mov   x,$23
1538: f5 b2 19  mov   a,$19b2+x         ; channel volume
153b: 1c        asl   a                 ; convert from 7 bits to 8 bits
153c: cf        mul   ya
153d: e4 2e     mov   a,$2e             ; master volume?
153f: 1c        asl   a                 ; convert from 7 bits to 8 bits
1540: cf        mul   ya
1541: 63 36 2f  bbs3  $36,$1573         ; branch if mono
1544: f5 a2 1a  mov   a,$1aa2+x         ; pan
1547: 68 80     cmp   a,#$80
1549: f0 28     beq   $1573
154b: 90 15     bcc   $1562
; left pan (pan < 128)
154d: e4 21     mov   a,$21
154f: bc        inc   a
1550: c4 f2     mov   $f2,a
1552: cb f3     mov   $f3,y             ; VOL(R)
1554: fa 21 f2  mov   ($f2),($21)
1557: f5 a2 1a  mov   a,$1aa2+x
155a: 48 ff     eor   a,#$ff
155c: bc        inc   a
155d: 1c        asl   a
155e: cf        mul   ya
155f: cb f3     mov   $f3,y             ; VOL(L)
1561: 6f        ret
; right pan (pan > 128)
1562: e4 21     mov   a,$21
1564: c4 f2     mov   $f2,a
1566: cb f3     mov   $f3,y
1568: bc        inc   a
1569: c4 f2     mov   $f2,a
156b: f5 a2 1a  mov   a,$1aa2+x
156e: 1c        asl   a
156f: cf        mul   ya
1570: cb f3     mov   $f3,y
1572: 6f        ret
; center (pan == 128)
1573: e4 21     mov   a,$21
1575: c4 f2     mov   $f2,a
1577: cb f3     mov   $f3,y
1579: bc        inc   a
157a: c4 f2     mov   $f2,a
157c: cb f3     mov   $f3,y
157e: 6f        ret

157f: c4 06     mov   $06,a
1581: c4 22     mov   $22,a
1583: 1c        asl   a
1584: c4 23     mov   $23,a
1586: 1c        asl   a
1587: c4 24     mov   $24,a
1589: e4 06     mov   a,$06
158b: 28 07     and   a,#$07
158d: 9f        xcn   a
158e: c4 21     mov   $21,a
1590: 1c        asl   a
1591: 08 02     or    a,#$02
1593: c5 99 15  mov   $1599,a
1596: 8f 00 20  mov   $20,#$00
1599: 02 20     set0  $20
159b: 6f        ret

159c: eb 35     mov   y,$35
159e: e4 61     mov   a,$61
15a0: 0d        push  psw
15a1: 10 03     bpl   $15a6
15a3: 48 ff     eor   a,#$ff
15a5: bc        inc   a
15a6: cf        mul   ya
15a7: cd 40     mov   x,#$40
15a9: 9e        div   ya,x
15aa: 8e        pop   psw
15ab: 10 03     bpl   $15b0
15ad: 48 ff     eor   a,#$ff
15af: bc        inc   a
15b0: c4 34     mov   $34,a
15b2: cd f3     mov   x,#$f3
15b4: e4 5f     mov   a,$5f
15b6: f0 51     beq   $1609
15b8: a3 37 17  bbs5  $37,$15d2
15bb: 8f 7d f2  mov   $f2,#$7d          ; echo delay
15be: 2e f3 0f  cbne  $f3,$15d0
15c1: 03 36 0b  bbs0  $36,$15cf
15c4: b2 37     clr5  $37
15c6: 8f 6c f2  mov   $f2,#$6c
15c9: fa 37 f3  mov   ($f3),($37)       ; enable echo write
15cc: 3f 56 16  call  $1656
15cf: 6f        ret

15d0: a2 37     set5  $37
15d2: 8f 6c f2  mov   $f2,#$6c
15d5: fa 37 f3  mov   ($f3),($37)       ; disable echo write
15d8: e8 00     mov   a,#$00
15da: 8f 2c f2  mov   $f2,#$2c          ; echo vol L
15dd: c6        mov   (x),a
15de: 8f 3c f2  mov   $f2,#$3c          ; echo vol R
15e1: c6        mov   (x),a
15e2: 8f 0d f2  mov   $f2,#$0d          ; echo feedback
15e5: c6        mov   (x),a
15e6: 8f 7d f2  mov   $f2,#$7d          ; echo delay
15e9: fa f3 33  mov   ($33),($f3)
15ec: ab 33     inc   $33
15ee: e4 5f     mov   a,$5f
15f0: c6        mov   (x),a
15f1: 9f        xcn   a
15f2: 5c        lsr   a
15f3: c4 0c     mov   $0c,a
15f5: e8 00     mov   a,#$00
15f7: 80        setc
15f8: a4 0c     sbc   a,$0c
15fa: 8f 6d f2  mov   $f2,#$6d          ; echo region addr
15fd: c6        mov   (x),a
15fe: 02 36     set0  $36
1600: e8 0e     mov   a,#$0e
1602: c5 27 02  mov   $0227,a
1605: 8f 82 fa  mov   $fa,#$82          ; set timer0 to 16.25ms
1608: 6f        ret

1609: a2 37     set5  $37
160b: 8f 6c f2  mov   $f2,#$6c
160e: fa 37 f3  mov   ($f3),($37)       ; set FLG bit ECEN (disable echo)
1611: 8f 7d f2  mov   $f2,#$7d          ; echo delay
1614: c6        mov   (x),a
1615: 8f 6d f2  mov   $f2,#$6d
1618: 8f ff f3  mov   $f3,#$ff          ; set echo region to $FF00
161b: c4 34     mov   $34,a
161d: c4 60     mov   $60,a
161f: 3f 56 16  call  $1656
1622: 12 36     clr0  $36
1624: 6f        ret

1625: f6 d9 1b  mov   a,$1bd9+y
1628: 1c        asl   a
1629: 60        clrc
162a: 84 23     adc   a,$23
162c: 84 24     adc   a,$24
162e: 5d        mov   x,a
162f: 6f        ret

1630: 8f 0c f2  mov   $f2,#$0c          ; master vol L
1633: e4 35     mov   a,$35
1635: 63 36 16  bbs3  $36,$164e
1638: 93 36 03  bbc4  $36,$163e
163b: 48 ff     eor   a,#$ff
163d: bc        inc   a
163e: c4 f3     mov   $f3,a
1640: 8f 1c f2  mov   $f2,#$1c          ; master vol R
1643: e4 35     mov   a,$35
1645: b3 36 03  bbc5  $36,$164b
1648: 48 ff     eor   a,#$ff
164a: bc        inc   a
164b: c4 f3     mov   $f3,a
164d: 6f        ret

164e: c4 f3     mov   $f3,a
1650: 8f 1c f2  mov   $f2,#$1c          ; master vol R
1653: c4 f3     mov   $f3,a
1655: 6f        ret

1656: 8f 0d f2  mov   $f2,#$0d
1659: fa 60 f3  mov   ($f3),($60)       ; set echo feedback from $60
165c: 8f 2c f2  mov   $f2,#$2c          ; echo vol L
165f: e4 34     mov   a,$34
1661: 63 36 15  bbs3  $36,$1679
1664: d3 36 03  bbc6  $36,$166a
1667: 48 ff     eor   a,#$ff
1669: bc        inc   a
166a: c4 f3     mov   $f3,a
166c: 8f 3c f2  mov   $f2,#$3c          ; echo vol R
166f: e4 34     mov   a,$34
1671: f3 36 03  bbc7  $36,$1677
1674: 48 ff     eor   a,#$ff
1676: bc        inc   a
1677: c4 f3     mov   $f3,a
1679: c4 f3     mov   $f3,a
167b: 8f 3c f2  mov   $f2,#$3c          ; echo vol R
167e: c4 f3     mov   $f3,a
1680: 6f        ret

; reset
1681: 8f 6c f2  mov   $f2,#$6c
1684: 8f e0 f3  mov   $f3,#$e0          ; reset DSP
1687: 8f b0 f1  mov   $f1,#$b0          ; reset APUs
168a: 5f c0 ff  jmp   $ffc0             ; goto boot ROM

168d: dw $034f  ; 01
168f: dw $035b  ; 02
1691: dw $036c  ; 03
1693: dw $038b  ; 04
1695: dw $03fc  ; 05
1697: dw $040c  ; 06
1699: dw $0415  ; 07
169b: dw $04ad  ; 08
169d: dw $04a5  ; 09
169f: dw $0307  ; 0a
16a1: dw $055f  ; 0b
16a3: dw $057c  ; 0c
16a5: dw $06c0  ; 0d
16a7: dw $07c2  ; 0e
16a9: dw $0585  ; 0f
16ab: dw $0608  ; 10
16ad: dw $060b  ; 11
16af: dw $061e  ; 12
16b1: dw $062c  ; 13
16b3: dw $063a  ; 14
16b5: dw $063d  ; 15
16b7: dw $064f  ; 16
16b9: dw $064f  ; 17
16bb: dw $059d  ; 18
16bd: dw $05a2  ; 19
16bf: dw $05b1  ; 1a
16c1: dw $05c7  ; 1b
16c3: dw $05e3  ; 1c
16c5: dw $0805  ; 1d
16c7: dw $0608  ; 1e
16c9: dw $0608  ; 1f
16cb: dw $0307  ; 20
16cd: dw $064f  ; 21
16cf: dw $065b  ; 22
16d1: dw $066d  ; 23
16d3: dw $0307  ; 24
16d5: dw $0686  ; 25
16d7: dw $06ab  ; 26
16d9: dw $0307  ; 27
16db: dw $0905  ; 28
16dd: dw $090e  ; 29
16df: dw $091b  ; 2a
16e1: dw $0924  ; 2b
16e3: dw $092d  ; 2c
16e5: dw $08de  ; 2d
16e7: dw $0937  ; 2e
16e9: dw $0958  ; 2f
16eb: dw $096a  ; 30

; vcmd dispatch table (c4-??)
16ed: dw $0ff7  ; c4 - octave up
16ef: dw $0ffd  ; c5 - octave down
16f1: dw $1003  ; c6 - set octave
16f3: dw $1017  ; c7 - nop
16f5: dw $1018  ; c8 - set noise freq
16f7: dw $1035  ; c9 - noise on
16f9: dw $1042  ; ca - noise off
16fb: dw $1061  ; cb - pitchmod on
16fd: dw $1071  ; cc - pitchmod off
16ff: dw $1098  ; cd - jump to $4000+x*2 (sfx lo)
1701: dw $10a5  ; ce - jump to $4002+x*2 (sfx hi)
1703: dw $10cb  ; cf - transpose (absolute, signed, 16 = 1 semitone)
1705: dw $10e8  ; d0 - end/return
1707: dw $112f  ; d1 - tempo
1709: dw $1143  ; d2 - repeat start (duplicated)
170b: dw $1143  ; d3 - repeat start (duplicated)
170d: dw $1143  ; d4 - repeat start
170f: dw $116c  ; d5 - repeat end
1711: dw $1192  ; d6 - repeat break
1713: dw $11ae  ; d7 - set loop point
1715: dw $11bb  ; d8 - default ADSR
1717: dw $11ee  ; d9 - set attack rate (AR)
1719: dw $1202  ; da - set decay rate (DR)
171b: dw $1218  ; db - set sustain level (SL)
171d: dw $1236  ; dc - set sustain rate (SR)
171f: dw $1258  ; dd - duration rate
1721: dw $1261  ; de - set instrument
1723: dw $101f  ; df - change noise freq
1725: dw $1293  ; e0 - volume
1727: dw $0000  ; e1 - unused
1729: dw $1293  ; e2 - volume (duplicated)
172b: dw $12a3  ; e3 - change volume
172d: dw $12b8  ; e4 - volume fade
172f: dw $12fd  ; e5 - portamento
1731: dw $1342  ; e6 - portamento toggle
1733: dw $134d  ; e7 - panpot
1735: dw $135f  ; e8 - panpot fade
1737: dw $13ab  ; e9 - panpot LFO on
1739: dw $13d1  ; ea - restart panpot LFO
173b: dw $13dc  ; eb - panpot LFO off
173d: dw $13ec  ; ec - transpose (absolute, signed, 4 = 1 semitone)
173f: dw $13fc  ; ed - transpose (relative, signed, 4 = 1 semitone)
1741: dw $1433  ; ee - rhythm kit on
1743: dw $1436  ; ef - rhythm kit off
1745: dw $1439  ; f0 - vibrato on
1747: dw $146c  ; f1 - vibrato on (w/delay)
1749: dw $1478  ; f2 - change tempo
174b: dw $1490  ; f3 - vibrato off
174d: dw $1493  ; f4 - tremolo on
174f: dw $14ad  ; f5 - tremolo on (w/delay)
1751: dw $0ff7  ; f6 - octave up (duplicated)
1753: dw $14bb  ; f7 - tremolo off
1755: dw $14be  ; f8 - slur on
1757: dw $14c1  ; f9 - slur off
1759: dw $14c6  ; fa - echo on
175b: dw $14d3  ; fb - echo off
175d: dw $1093  ; fc - call sfx (lo)
175f: dw $10a0  ; fd - call sfx (hi)
1761: dw $0ff7  ; fe - octave up (duplicated)
1763: dw $0ff7  ; ff - octave up (duplicated)

; oplens
1765: db                 $01,$01,$02,$00,$02,$01,$01,$01,$01,$02,$02,$02
1771: db $ff,$02,$02,$02,$02,$01,$01,$01,$01,$02,$02,$02,$02,$02,$02,$02
1781: db $02,$02,$02,$02,$03,$03,$01,$02,$03,$03,$01,$01,$02,$02,$01,$01
1791: db $03,$04,$02,$01,$03,$04,$01,$01,$01,$ff,$01,$01,$01,$01,$01,$01

; durations (-1)
17a1: db $bf,$8f,$5f,$47,$2f,$23,$1f,$17,$0f,$0b,$07,$05,$02,$00

; pitch table
17af: dw $260e
17b1: dw $2851
17b3: dw $2ab7
17b5: dw $2d41
17b7: dw $2ff2
17b9: dw $32cc
17bb: dw $35d1
17bd: dw $3904
17bf: dw $3c68
17c1: dw $4000
17c3: dw $43ce
17c5: dw $47d6
17c7: dw $4c1b

; echo filter settings
17c9: db $20,$0c,$10,$0c,$20,$0c,$0c,$0c
