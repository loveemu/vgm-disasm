0200: 20        clrp                    ; set direct page to 0
0201: c0        di                      ; disable interrupts
0202: cd ff     mov   x,#$ff
0204: bd        mov   sp,x              ; set stack ptr to $(01)FF
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208             ; zero $00-$EF
020d: 8b 80     dec   $80               ; set $80 to $FF
020f: 1a bb     decw  $bb               ; set $BB/C to $FFFF
0211: 8d 2c     mov   y,#$2c
0213: 3f a3 07  call  $07a3             ; zero echo vol L
0216: 8d 3c     mov   y,#$3c
0218: 3f a3 07  call  $07a3             ; zero echo vol R
021b: cd 40     mov   x,#$40
021d: d5 6e f1  mov   $f16e+x,a
0220: 1d        dec   x
0221: 1d        dec   x
0222: 1d        dec   x
0223: 1d        dec   x
0224: d0 f7     bne   $021d             ; zero $f172-ae step 4
0226: e8 1e     mov   a,#$1e
0228: 8d 5d     mov   y,#$5d
022a: 3f a3 07  call  $07a3             ; set sample dir to $1E00
022d: 8d 07     mov   y,#$07
022f: cd a0     mov   x,#$a0
0231: cb f2     mov   $f2,y
0233: d8 f3     mov   $f3,x             ; set exp decr gain mode...
0235: dd        mov   a,y
0236: 60        clrc
0237: 88 10     adc   a,#$10
0239: fd        mov   y,a
023a: 10 f5     bpl   $0231             ; ...for all voices
023c: 8f 30 f1  mov   $f1,#$30          ; clear ports
023f: 8f 2a fa  mov   $fa,#$2a          ; set timer0 latch to 5.25ms
0242: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to 16ms
0245: 8f 03 f1  mov   $f1,#$03          ; start timers 0/1
0248: 8f 05 8e  mov   $8e,#$05
024b: 3f 2e 13  call  $132e             ; set echo delay to 80ms
024e: 8b 23     dec   $23               ; set $23 to #$FF
0250: 8f 07 bd  mov   $bd,#$07          ; set $BD to #$07
0253: cd 06     mov   x,#$06
0255: e8 ff     mov   a,#$ff
0257: d5 5f f1  mov   $f15f+x,a
025a: bc        inc   a
025b: d5 64 f1  mov   $f164+x,a
025e: 1d        dec   x
025f: 1d        dec   x
0260: d0 f3     bne   $0255
0262: e8 c2     mov   a,#$c2
0264: c5 40 1e  mov   $1e40,a
0267: e8 1d     mov   a,#$1d
0269: c5 41 1e  mov   $1e41,a           ; sample $10 start = $1dc2
026c: e8 cb     mov   a,#$cb
026e: c5 42 1e  mov   $1e42,a
0271: e8 1d     mov   a,#$1d
0273: c5 43 1e  mov   $1e43,a           ; sample $10 loop = $1dcb
0276: e8 ff     mov   a,#$ff
0278: c5 a0 1f  mov   $1fa0,a
027b: e8 e0     mov   a,#$e0
027d: c5 a1 1f  mov   $1fa1,a
0280: e8 e1     mov   a,#$e1
0282: c5 20 1f  mov   $1f20,a
0285: e8 00     mov   a,#$00
0287: c5 21 1f  mov   $1f21,a
028a: e8 40     mov   a,#$40
028c: 8d 0c     mov   y,#$0c
028e: 3f a3 07  call  $07a3
0291: 8d 1c     mov   y,#$1c
0293: 3f a3 07  call  $07a3             ; set master volume L/R to 50% (#$40)
0296: 8f 02 d8  mov   $d8,#$02
; begin main loop
0299: 3f 96 0b  call  $0b96             ; do
029c: eb fd     mov   y,$fd             ;   process CPU cmds
029e: f0 f9     beq   $0299             ; until counter0 tick
02a0: 8d 11     mov   y,#$11
02a2: e4 4f     mov   a,$4f
02a4: 73 87 07  bbc3  $87,$02ae
02a7: 1c        asl   a
02a8: 90 04     bcc   $02ae
02aa: e8 7f     mov   a,#$7f
02ac: 2f 00     bra   $02ae
02ae: c4 d9     mov   $d9,a
02b0: f6 ff 16  mov   a,$16ff+y         ; DSP reg
02b3: c4 f2     mov   $f2,a
02b5: f6 10 17  mov   a,$1710+y         ; shadow
02b8: 5d        mov   x,a
02b9: e6        mov   a,(x)
02ba: c4 f3     mov   $f3,a
02bc: fe f2     dbnz  y,$02b0           ; set DSP regs from shadow
02be: cb 23     mov   $23,y             ; clear key off shadow
02c0: cb 22     mov   $22,y             ; clear key on shadow
02c2: e3 88 1a  bbs7  $88,$02df
02c5: e4 53     mov   a,$53
02c7: 9f        xcn   a
02c8: 04 53     or    a,$53
02ca: 28 0f     and   a,#$0f
02cc: 04 86     or    a,$86
02ce: fd        mov   y,a
02cf: e4 d3     mov   a,$d3
02d1: 9f        xcn   a
02d2: 04 7b     or    a,$7b
02d4: da f6     movw  $f6,ya
02d6: ec 66 f1  mov   y,$f166
02d9: e8 00     mov   a,#$00
02db: da f4     movw  $f4,ya
02dd: 2f 03     bra   $02e2
02df: 3f 38 14  call  $1438             ; read wave height regs
02e2: 83 87 b4  bbs4  $87,$0299
02e5: 8b bd     dec   $bd
02e7: d0 06     bne   $02ef
02e9: 8f 07 bd  mov   $bd,#$07
02ec: 3f 92 14  call  $1492             ; do global fades
02ef: 3f 77 03  call  $0377             ; do tempo adds, process vcmds
02f2: 3f cd 08  call  $08cd             ; process queued CPU cmds
02f5: 83 87 a1  bbs4  $87,$0299
02f8: cd 00     mov   x,#$00
02fa: 8f 01 91  mov   $91,#$01
02fd: e4 86     mov   a,$86
02ff: 48 ff     eor   a,#$ff
0301: 24 53     and   a,$53
0303: 24 24     and   a,$24
0305: c4 a3     mov   $a3,a
0307: e5 61 f1  mov   a,$f161
030a: c4 a8     mov   $a8,a
030c: 2f 15     bra   $0323
030e: d8 a6     mov   $a6,x
0310: e4 86     mov   a,$86
0312: d0 05     bne   $0319
0314: 3f 03 09  call  $0903             ; set voice vol/pitch DSP regs w/vib,trem
0317: 2f 03     bra   $031c
0319: 3f f6 09  call  $09f6             ; set voice vol/pitch DSP regs
031c: 3f 92 08  call  $0892             ; queue CPU cmds
031f: 3d        inc   x
0320: 3d        inc   x
0321: 0b 91     asl   $91
0323: 4b a3     lsr   $a3
0325: b0 e7     bcs   $030e
0327: d0 f6     bne   $031f
0329: cd 1e     mov   x,#$1e
032b: 8f 80 91  mov   $91,#$80
032e: e4 86     mov   a,$86
0330: 24 25     and   a,$25
0332: c4 a3     mov   $a3,a
0334: e5 63 f1  mov   a,$f163
0337: c4 a8     mov   $a8,a
0339: 2f 0f     bra   $034a
033b: d8 a6     mov   $a6,x
033d: 3f 03 09  call  $0903             ; set voice vol/pitch DSP regs w/vib,trem
0340: 3f 92 08  call  $0892             ; queue CPU cmds
0343: 1d        dec   x
0344: 1d        dec   x
0345: 4b 91     lsr   $91
0347: a3 91 06  bbs5  $91,$0350
034a: 0b a3     asl   $a3
034c: b0 ed     bcs   $033b
034e: 2f f3     bra   $0343
0350: e5 65 f1  mov   a,$f165
0353: c4 a8     mov   $a8,a
0355: 2f 0c     bra   $0363
0357: d8 a6     mov   $a6,x
0359: 3f 03 09  call  $0903             ; set voice vol/pitch DSP regs w/vib,trem
035c: 3f 92 08  call  $0892             ; queue CPU cmds
035f: 1d        dec   x
0360: 1d        dec   x
0361: 4b 91     lsr   $91
0363: 0b a3     asl   $a3
0365: b0 f0     bcs   $0357
0367: d0 f6     bne   $035f
0369: e8 00     mov   a,#$00
036b: fd        mov   y,a
036c: da d0     movw  $d0,ya            ; clear vol/pitch DSP change flags
036e: 3f cd 08  call  $08cd             ; process queued CPU cmds
0371: 3f 5c 0b  call  $0b5c
0374: 5f 99 02  jmp   $0299

0377: a3 88 1f  bbs5  $88,$0399
037a: e4 47     mov   a,$47
037c: eb aa     mov   y,$aa
037e: f0 12     beq   $0392
0380: cf        mul   ya
0381: dd        mov   a,y
0382: e3 aa 0a  bbs7  $aa,$038f
0385: 1c        asl   a
0386: 60        clrc
0387: 84 47     adc   a,$47
0389: 90 07     bcc   $0392
038b: e8 ff     mov   a,#$ff
038d: 2f 03     bra   $0392
038f: d0 01     bne   $0392
0391: bc        inc   a
0392: 60        clrc
0393: 84 48     adc   a,$48
0395: c4 48     mov   $48,a
0397: 90 63     bcc   $03fc
0399: cd 00     mov   x,#$00
039b: 8f 01 91  mov   $91,#$01
039e: fa 53 a3  mov   ($a3),($53)
03a1: 2f 44     bra   $03e7
03a3: d8 a6     mov   $a6,x
03a5: 9b 26     dec   $26+x
03a7: d0 0a     bne   $03b3
03a9: 72 88     clr3  $88
03ab: 3f 07 05  call  $0507             ; process vcmds
03ae: 73 88 2c  bbc3  $88,$03dd
03b1: 2f 30     bra   $03e3
03b3: 8d 00     mov   y,#$00
03b5: c8 10     cmp   x,#$10
03b7: b0 01     bcs   $03ba
03b9: e8 fc     mov   a,#$fc
03bb: e8 02     mov   a,#$02
03bd: de 26 1d  cbne  $26+x,$03dd
03c0: f6 5a 00  mov   a,$005a+y
03c3: 24 91     and   a,$91
03c5: d0 16     bne   $03dd
03c7: e4 91     mov   a,$91
03c9: 48 ff     eor   a,#$ff
03cb: 36 24 00  and   a,$0024+y
03ce: d6 24 00  mov   $0024+y,a
03d1: dd        mov   a,y
03d2: d0 06     bne   $03da
03d4: e4 86     mov   a,$86
03d6: 24 91     and   a,$91
03d8: d0 03     bne   $03dd
03da: 09 91 23  or    ($23),($91)
03dd: 3f af 07  call  $07af
03e0: 3f 92 08  call  $0892
03e3: 3d        inc   x
03e4: 3d        inc   x
03e5: 0b 91     asl   $91
03e7: 4b a3     lsr   $a3
03e9: b0 b8     bcs   $03a3
03eb: d0 f6     bne   $03e3
03ed: c8 18     cmp   x,#$18
03ef: b0 23     bcs   $0414
03f1: 3f c7 04  call  $04c7
03f4: e4 86     mov   a,$86
03f6: 4e d0 00  tclr1 $00d0
03f9: 4e d1 00  tclr1 $00d1
03fc: a3 88 09  bbs5  $88,$0408
03ff: e8 81     mov   a,#$81
0401: 60        clrc
0402: 84 49     adc   a,$49
0404: c4 49     mov   $49,a
0406: 90 0c     bcc   $0414
0408: cd 18     mov   x,#$18
040a: 8f 10 91  mov   $91,#$10
040d: e4 86     mov   a,$86
040f: 9f        xcn   a
0410: c4 a3     mov   $a3,a
0412: 2f d3     bra   $03e7
0414: 6f        ret

0415: 83 87 4b  bbs4  $87,$0463
0418: 8d 11     mov   y,#$11
041a: f6 ff 16  mov   a,$16ff+y
041d: c4 f2     mov   $f2,a
041f: f6 10 17  mov   a,$1710+y
0422: 5d        mov   x,a
0423: e6        mov   a,(x)
0424: c4 f3     mov   $f3,a
0426: fe f2     dbnz  y,$041a
0428: cb 23     mov   $23,y
042a: cb 22     mov   $22,y
042c: 8b bd     dec   $bd
042e: d0 06     bne   $0436
0430: 8f 07 bd  mov   $bd,#$07
0433: 3f 92 14  call  $1492
0436: 3f 64 04  call  $0464
0439: cd 00     mov   x,#$00
043b: 8f 01 91  mov   $91,#$01
043e: e4 86     mov   a,$86
0440: 48 ff     eor   a,#$ff
0442: 24 53     and   a,$53
0444: 24 24     and   a,$24
0446: c4 a3     mov   $a3,a
0448: e5 61 f1  mov   a,$f161
044b: c4 a8     mov   $a8,a
044d: 2f 09     bra   $0458
044f: d8 a6     mov   $a6,x
0451: 3f 03 09  call  $0903
0454: 3d        inc   x
0455: 3d        inc   x
0456: 0b 91     asl   $91
0458: 4b a3     lsr   $a3
045a: b0 f3     bcs   $044f
045c: d0 f6     bne   $0454
045e: e8 00     mov   a,#$00
0460: fd        mov   y,a
0461: da d0     movw  $d0,ya
0463: 6f        ret

0464: e4 47     mov   a,$47
0466: eb aa     mov   y,$aa
0468: f0 12     beq   $047c
046a: cf        mul   ya
046b: dd        mov   a,y
046c: e3 aa 0a  bbs7  $aa,$0479
046f: 1c        asl   a
0470: 60        clrc
0471: 84 47     adc   a,$47
0473: 90 07     bcc   $047c
0475: e8 ff     mov   a,#$ff
0477: 2f 03     bra   $047c
0479: d0 01     bne   $047c
047b: bc        inc   a
047c: 60        clrc
047d: 84 48     adc   a,$48
047f: c4 48     mov   $48,a
0481: 90 43     bcc   $04c6
0483: cd 00     mov   x,#$00
0485: 8f 01 91  mov   $91,#$01
0488: fa 53 a3  mov   ($a3),($53)
048b: 2f 30     bra   $04bd
048d: d8 a6     mov   $a6,x
048f: 9b 26     dec   $26+x
0491: d0 0a     bne   $049d
0493: 72 88     clr3  $88
0495: 3f 07 05  call  $0507
0498: 73 88 1b  bbc3  $88,$04b6
049b: 2f 1c     bra   $04b9
049d: e8 02     mov   a,#$02
049f: de 26 14  cbne  $26+x,$04b6
04a2: e4 5a     mov   a,$5a
04a4: 24 91     and   a,$91
04a6: d0 0e     bne   $04b6
04a8: e4 91     mov   a,$91
04aa: 4e 24 00  tclr1 $0024
04ad: e4 86     mov   a,$86
04af: 24 91     and   a,$91
04b1: d0 03     bne   $04b6
04b3: 09 91 23  or    ($23),($91)
04b6: 3f af 07  call  $07af
04b9: 3d        inc   x
04ba: 3d        inc   x
04bb: 0b 91     asl   $91
04bd: 4b a3     lsr   $a3
04bf: b0 cc     bcs   $048d
04c1: d0 f6     bne   $04b9
04c3: 3f c7 04  call  $04c7
04c6: 6f        ret

04c7: e4 4a     mov   a,$4a
04c9: f0 08     beq   $04d3
04cb: 8b 4a     dec   $4a
04cd: ba 4b     movw  ya,$4b
04cf: 7a 46     addw  ya,$46
04d1: da 46     movw  $46,ya
04d3: e4 52     mov   a,$52
04d5: f0 08     beq   $04df
04d7: 8b 52     dec   $52
04d9: ba 50     movw  ya,$50
04db: 7a 4e     addw  ya,$4e
04dd: da 4e     movw  $4e,ya
04df: e4 78     mov   a,$78
04e1: f0 08     beq   $04eb
04e3: 8b 78     dec   $78
04e5: ba 79     movw  ya,$79
04e7: 7a 75     addw  ya,$75
04e9: da 75     movw  $75,ya
04eb: e4 77     mov   a,$77
04ed: f0 17     beq   $0506
04ef: 8b 77     dec   $77
04f1: cd 10     mov   x,#$10
04f3: f4 63     mov   a,$63+x
04f5: 60        clrc
04f6: 95 fe 00  adc   a,$00fe+x
04f9: d4 63     mov   $63+x,a
04fb: f4 64     mov   a,$64+x
04fd: 95 ff 00  adc   a,$00ff+x
0500: d4 64     mov   $64+x,a
0502: 1d        dec   x
0503: 1d        dec   x
0504: d0 ed     bne   $04f3
0506: 6f        ret

; process vcmds
0507: 3f 53 07  call  $0753
050a: 68 c4     cmp   a,#$c4
050c: 90 05     bcc   $0513             ; if command then
050e: 3f 3d 07  call  $073d             ;   dispatch it
0511: 2f f4     bra   $0507             ;   and do next
0513: fb 26     mov   y,$26+x
0515: d0 0a     bne   $0521
0517: cd 0e     mov   x,#$0e
0519: 9e        div   ya,x
051a: f8 a6     mov   x,$a6
051c: f6 b3 1d  mov   a,$1db3+y         ; dur tbl
051f: d4 26     mov   $26+x,a
0521: e4 a5     mov   a,$a5
0523: 68 a8     cmp   a,#$a8
0525: 90 08     bcc   $052f
0527: 68 b6     cmp   a,#$b6
0529: 90 01     bcc   $052c
052b: 6f        ret

052c: 5f 01 06  jmp   $0601

052f: 8d 00     mov   y,#$00
0531: cd 0e     mov   x,#$0e
0533: 9e        div   ya,x
0534: c4 a5     mov   $a5,a
0536: f8 a6     mov   x,$a6
0538: c8 10     cmp   x,#$10
053a: b0 0b     bcs   $0547
053c: e4 91     mov   a,$91
053e: 24 7c     and   a,$7c
0540: f0 05     beq   $0547
0542: 3f 20 07  call  $0720
0545: 2f 06     bra   $054d
0547: f5 00 f2  mov   a,$f200+x
054a: 60        clrc
054b: 84 a5     adc   a,$a5
054d: 60        clrc
054e: 95 61 f3  adc   a,$f361+x
0551: 80        setc
0552: a8 0a     sbc   a,#$0a
0554: d5 a1 f3  mov   $f3a1+x,a
0557: 3f bd 06  call  $06bd
055a: e4 b5     mov   a,$b5
055c: d5 20 f5  mov   $f520+x,a
055f: e4 b6     mov   a,$b6
0561: d5 21 f5  mov   $f521+x,a
0564: f5 51 01  mov   a,$0151+x
0567: f0 33     beq   $059c
0569: c4 a5     mov   $a5,a
056b: 3f a2 18  call  $18a2
056e: c8 10     cmp   x,#$10
0570: b0 04     bcs   $0576
0572: 8d 00     mov   y,#$00
0574: 2f 04     bra   $057a
0576: f5 10 01  mov   a,$0110+x
0579: fd        mov   y,a
057a: f6 87 1d  mov   a,$1d87+y
057d: fd        mov   y,a
057e: d0 04     bne   $0584
0580: ba b5     movw  ya,$b5
0582: 2f 11     bra   $0595
0584: cb 9d     mov   $9d,y
0586: e4 b6     mov   a,$b6
0588: cf        mul   ya
0589: da 9b     movw  $9b,ya
058b: e4 b5     mov   a,$b5
058d: eb 9d     mov   y,$9d
058f: cf        mul   ya
0590: dd        mov   a,y
0591: 8d 00     mov   y,#$00
0593: 7a 9b     addw  ya,$9b
0595: d5 00 f3  mov   $f300+x,a
0598: dd        mov   a,y
0599: d5 01 f3  mov   $f301+x,a
059c: f5 70 01  mov   a,$0170+x
059f: f0 07     beq   $05a8
05a1: c4 a5     mov   $a5,a
05a3: 3f 60 19  call  $1960
05a6: e8 00     mov   a,#$00
05a8: d5 00 f5  mov   $f500+x,a
05ab: d5 01 f5  mov   $f501+x,a
05ae: d5 a0 f4  mov   $f4a0+x,a
05b1: d5 a1 f4  mov   $f4a1+x,a
05b4: d5 c0 f3  mov   $f3c0+x,a
05b7: d5 c1 f3  mov   $f3c1+x,a
05ba: d5 e0 f4  mov   $f4e0+x,a
05bd: c8 10     cmp   x,#$10
05bf: b0 1e     bcs   $05df
05c1: 09 91 24  or    ($24),($91)
05c4: e4 86     mov   a,$86
05c6: 24 91     and   a,$91
05c8: d0 37     bne   $0601
05ca: e4 91     mov   a,$91
05cc: 24 60     and   a,$60
05ce: d0 25     bne   $05f5
05d0: e4 91     mov   a,$91
05d2: 24 5c     and   a,$5c
05d4: f0 1f     beq   $05f5
05d6: 24 5e     and   a,$5e
05d8: d0 1e     bne   $05f8
05da: 09 91 5e  or    ($5e),($91)
05dd: 2f 16     bra   $05f5
05df: 09 91 25  or    ($25),($91)
05e2: e4 91     mov   a,$91
05e4: 24 61     and   a,$61
05e6: d0 0d     bne   $05f5
05e8: e4 91     mov   a,$91
05ea: 24 5d     and   a,$5d
05ec: f0 07     beq   $05f5
05ee: 24 5f     and   a,$5f
05f0: d0 06     bne   $05f8
05f2: 09 91 5f  or    ($5f),($91)
05f5: 09 91 22  or    ($22),($91)
05f8: 09 91 d0  or    ($d0),($91)
05fb: 09 91 d1  or    ($d1),($91)
05fe: 3f ed 1a  call  $1aed
0601: 3f 5e 07  call  $075e
0604: fd        mov   y,a
0605: e4 91     mov   a,$91
0607: c8 10     cmp   x,#$10
0609: b0 21     bcs   $062c
060b: ad b6     cmp   y,#$b6
060d: b0 09     bcs   $0618
060f: ad a8     cmp   y,#$a8
0611: 90 0b     bcc   $061e
0613: 0e 5a 00  tset1 $005a
0616: 2f 33     bra   $064b
0618: 4e 5c 00  tclr1 $005c
061b: 4e 60 00  tclr1 $0060
061e: 4e 5a 00  tclr1 $005a
0621: e4 5c     mov   a,$5c
0623: 04 60     or    a,$60
0625: 24 91     and   a,$91
0627: 0e 5a 00  tset1 $005a
062a: 2f 1f     bra   $064b
062c: ad b6     cmp   y,#$b6
062e: b0 09     bcs   $0639
0630: ad a8     cmp   y,#$a8
0632: 90 0b     bcc   $063f
0634: 0e 5b 00  tset1 $005b
0637: 2f 12     bra   $064b
0639: 4e 5d 00  tclr1 $005d
063c: 4e 61 00  tclr1 $0061
063f: 4e 5b 00  tclr1 $005b
0642: e4 5d     mov   a,$5d
0644: 04 61     or    a,$61
0646: 24 91     and   a,$91
0648: 0e 5b 00  tset1 $005b
064b: f5 50 01  mov   a,$0150+x
064e: f0 6c     beq   $06bc
0650: 60        clrc
0651: 95 a1 f3  adc   a,$f3a1+x
0654: d5 a1 f3  mov   $f3a1+x,a
0657: 3f bd 06  call  $06bd
065a: f5 21 f5  mov   a,$f521+x
065d: fd        mov   y,a
065e: f5 20 f5  mov   a,$f520+x
0661: da 9b     movw  $9b,ya
0663: ba b5     movw  ya,$b5
0665: 80        setc
0666: 9a 9b     subw  ya,$9b
0668: da 9b     movw  $9b,ya
066a: 0d        push  psw
066b: b0 08     bcs   $0675
066d: 58 ff 9b  eor   $9b,#$ff
0670: 58 ff 9c  eor   $9c,#$ff
0673: 3a 9b     incw  $9b
0675: f5 60 f3  mov   a,$f360+x
0678: d0 05     bne   $067f
067a: 8f 00 9d  mov   $9d,#$00
067d: 2f 12     bra   $0691
067f: 5d        mov   x,a
0680: e4 9c     mov   a,$9c
0682: 8d 00     mov   y,#$00
0684: 9e        div   ya,x
0685: c4 9d     mov   $9d,a
0687: e4 9b     mov   a,$9b
0689: 9e        div   ya,x
068a: c4 9c     mov   $9c,a
068c: e8 00     mov   a,#$00
068e: 9e        div   ya,x
068f: c4 9b     mov   $9b,a
0691: 8e        pop   psw
0692: b0 0f     bcs   $06a3
0694: 58 ff 9b  eor   $9b,#$ff
0697: 58 ff 9c  eor   $9c,#$ff
069a: 58 ff 9d  eor   $9d,#$ff
069d: 3a 9b     incw  $9b
069f: d0 02     bne   $06a3
06a1: ab 9d     inc   $9d
06a3: f8 a6     mov   x,$a6
06a5: e4 9b     mov   a,$9b
06a7: d5 e0 f4  mov   $f4e0+x,a
06aa: e4 9c     mov   a,$9c
06ac: d5 c0 f3  mov   $f3c0+x,a
06af: e4 9d     mov   a,$9d
06b1: d5 c1 f3  mov   $f3c1+x,a
06b4: e8 00     mov   a,#$00
06b6: d5 50 01  mov   $0150+x,a
06b9: d5 e1 f4  mov   $f4e1+x,a
06bc: 6f        ret

06bd: cd 0c     mov   x,#$0c
06bf: 8d 00     mov   y,#$00
06c1: 9e        div   ya,x
06c2: f8 a6     mov   x,$a6
06c4: c4 a4     mov   $a4,a
06c6: dd        mov   a,y
06c7: 1c        asl   a
06c8: fd        mov   y,a
06c9: f6 6d 1d  mov   a,$1d6d+y
06cc: c4 b7     mov   $b7,a
06ce: f6 6e 1d  mov   a,$1d6e+y
06d1: c4 b8     mov   $b8,a
06d3: fd        mov   y,a
06d4: f5 80 f3  mov   a,$f380+x
06d7: 60        clrc
06d8: 95 a0 f3  adc   a,$f3a0+x
06db: c4 9b     mov   $9b,a
06dd: cf        mul   ya
06de: da b5     movw  $b5,ya
06e0: eb b7     mov   y,$b7
06e2: e4 9b     mov   a,$9b
06e4: cf        mul   ya
06e5: dd        mov   a,y
06e6: 8d 00     mov   y,#$00
06e8: 7a b5     addw  ya,$b5
06ea: da b5     movw  $b5,ya
06ec: f5 81 f3  mov   a,$f381+x
06ef: f0 08     beq   $06f9
06f1: cf        mul   ya
06f2: dd        mov   a,y
06f3: 8d 00     mov   y,#$00
06f5: 7a b5     addw  ya,$b5
06f7: 2f 02     bra   $06fb
06f9: e4 b5     mov   a,$b5
06fb: e3 9b 02  bbs7  $9b,$0700
06fe: 7a b7     addw  ya,$b7
0700: da b5     movw  $b5,ya
0702: e8 04     mov   a,#$04
0704: eb a4     mov   y,$a4
0706: 30 0f     bmi   $0717
0708: f0 0d     beq   $0717
070a: 64 a4     cmp   a,$a4
070c: b0 0e     bcs   $071c
070e: 0b b5     asl   $b5
0710: 2b b6     rol   $b6
0712: bc        inc   a
0713: 2e a4 f8  cbne  $a4,$070e
0716: 6f        ret

0717: 4b b6     lsr   $b6
0719: 6b b5     ror   $b5
071b: 9c        dec   a
071c: 2e a4 f8  cbne  $a4,$0717
071f: 6f        ret

0720: e4 a5     mov   a,$a5
0722: 8d 03     mov   y,#$03
0724: cf        mul   ya
0725: fd        mov   y,a
0726: f6 22 f1  mov   a,$f122+y
0729: 30 04     bmi   $072f
072b: 1c        asl   a
072c: d5 81 f2  mov   $f281+x,a
072f: f6 21 f1  mov   a,$f121+y
0732: c4 a5     mov   $a5,a
0734: f6 20 f1  mov   a,$f120+y
0737: 3f cf 1a  call  $1acf
073a: e4 a5     mov   a,$a5
073c: 6f        ret

; dispatch vcmd
073d: a8 c4     sbc   a,#$c4
073f: c4 a5     mov   $a5,a
0741: 1c        asl   a
0742: fd        mov   y,a
0743: f6 55 15  mov   a,$1555+y
0746: 2d        push  a
0747: f6 54 15  mov   a,$1554+y
074a: 2d        push  a
074b: eb a5     mov   y,$a5
074d: f6 cc 15  mov   a,$15cc+y
0750: d0 01     bne   $0753
0752: 6f        ret

; get next vbyte
0753: e7 02     mov   a,($02+x)
0755: c4 a5     mov   $a5,a
0757: bb 02     inc   $02+x
0759: d0 02     bne   $075d
075b: bb 03     inc   $03+x
075d: 6f        ret

; readahead?
075e: f4 02     mov   a,$02+x
0760: fb 03     mov   y,$03+x
0762: da 93     movw  $93,ya
0764: f4 27     mov   a,$27+x
0766: c4 ba     mov   $ba,a
0768: 8d 00     mov   y,#$00
076a: f7 93     mov   a,($93)+y
076c: 68 c4     cmp   a,#$c4
076e: 90 32     bcc   $07a2
0770: 3a 93     incw  $93
0772: 68 eb     cmp   a,#$eb
0774: f0 2c     beq   $07a2
0776: 80        setc
0777: a8 c4     sbc   a,#$c4
0779: c4 92     mov   $92,a
077b: 1c        asl   a
077c: fd        mov   y,a
077d: f6 09 16  mov   a,$1609+y
0780: f0 12     beq   $0794
0782: c4 9b     mov   $9b,a
0784: e8 07     mov   a,#$07
0786: 2d        push  a
0787: e8 68     mov   a,#$68
0789: 2d        push  a
078a: e4 9b     mov   a,$9b
078c: 2d        push  a
078d: f6 08 16  mov   a,$1608+y
0790: 2d        push  a
0791: 8d 00     mov   y,#$00
0793: 6f        ret

0794: eb 92     mov   y,$92
0796: f6 cc 15  mov   a,$15cc+y
0799: f0 cd     beq   $0768
079b: fd        mov   y,a
079c: 3a 93     incw  $93
079e: fe fc     dbnz  y,$079c
07a0: 2f c8     bra   $076a
07a2: 6f        ret

; write A to DSP reg Y
07a3: cb f2     mov   $f2,y
07a5: c4 f3     mov   $f3,a
07a7: 6f        ret

; reset APU0/1
07a8: 8f 13 f1  mov   $f1,#$13
07ab: 8f 03 f1  mov   $f1,#$03
07ae: 6f        ret

07af: 40        setp
07b0: f4 11     mov   a,$11+x
07b2: f0 02     beq   $07b6
07b4: 9b 11     dec   $11+x
07b6: f4 31     mov   a,$31+x
07b8: f0 02     beq   $07bc
07ba: 9b 31     dec   $31+x
07bc: 20        clrp
07bd: f5 c0 f2  mov   a,$f2c0+x
07c0: f0 1f     beq   $07e1
07c2: 9c        dec   a
07c3: d5 c0 f2  mov   $f2c0+x,a
07c6: f5 40 f2  mov   a,$f240+x
07c9: 60        clrc
07ca: 95 60 f2  adc   a,$f260+x
07cd: d5 40 f2  mov   $f240+x,a
07d0: f5 41 f2  mov   a,$f241+x
07d3: 95 61 f2  adc   a,$f261+x
07d6: 75 41 f2  cmp   a,$f241+x
07d9: d5 41 f2  mov   $f241+x,a
07dc: f0 03     beq   $07e1
07de: 09 91 d0  or    ($d0),($91)
07e1: f5 c1 f2  mov   a,$f2c1+x
07e4: f0 1f     beq   $0805
07e6: 9c        dec   a
07e7: d5 c1 f2  mov   $f2c1+x,a
07ea: f5 80 f2  mov   a,$f280+x
07ed: 60        clrc
07ee: 95 a0 f2  adc   a,$f2a0+x
07f1: d5 80 f2  mov   $f280+x,a
07f4: f5 81 f2  mov   a,$f281+x
07f7: 95 a1 f2  adc   a,$f2a1+x
07fa: 75 81 f2  cmp   a,$f281+x
07fd: d5 81 f2  mov   $f281+x,a
0800: f0 03     beq   $0805
0802: 09 91 d0  or    ($d0),($91)
0805: f5 e0 f4  mov   a,$f4e0+x
0808: c4 9b     mov   $9b,a
080a: f5 c0 f3  mov   a,$f3c0+x
080d: c4 9c     mov   $9c,a
080f: f5 c1 f3  mov   a,$f3c1+x
0812: c4 9d     mov   $9d,a
0814: ba 9b     movw  ya,$9b
0816: d0 04     bne   $081c
0818: e4 9d     mov   a,$9d
081a: f0 2e     beq   $084a
081c: f5 60 f3  mov   a,$f360+x
081f: 9c        dec   a
0820: d0 09     bne   $082b
0822: d5 c0 f3  mov   $f3c0+x,a
0825: d5 c1 f3  mov   $f3c1+x,a
0828: d5 e0 f4  mov   $f4e0+x,a
082b: d5 60 f3  mov   $f360+x,a
082e: 60        clrc
082f: f5 20 f5  mov   a,$f520+x
0832: fd        mov   y,a
0833: f5 e1 f4  mov   a,$f4e1+x
0836: 7a 9b     addw  ya,$9b
0838: d5 e1 f4  mov   $f4e1+x,a
083b: dd        mov   a,y
083c: d5 20 f5  mov   $f520+x,a
083f: e4 9d     mov   a,$9d
0841: 95 21 f5  adc   a,$f521+x
0844: d5 21 f5  mov   $f521+x,a
0847: 09 91 d1  or    ($d1),($91)
084a: f5 71 01  mov   a,$0171+x
084d: f0 42     beq   $0891
084f: f5 e0 f3  mov   a,$f3e0+x
0852: c4 9b     mov   $9b,a
0854: f5 e1 f3  mov   a,$f3e1+x
0857: c4 9c     mov   $9c,a
0859: f5 c1 f4  mov   a,$f4c1+x
085c: fd        mov   y,a
085d: c4 9d     mov   $9d,a
085f: f5 c0 f4  mov   a,$f4c0+x
0862: 7a 9b     addw  ya,$9b
0864: d5 c0 f4  mov   $f4c0+x,a
0867: dd        mov   a,y
0868: 75 c1 f4  cmp   a,$f4c1+x
086b: d5 c1 f4  mov   $f4c1+x,a
086e: f0 03     beq   $0873
0870: 09 91 d0  or    ($d0),($91)
0873: f5 41 f3  mov   a,$f341+x
0876: 9c        dec   a
0877: d0 15     bne   $088e
0879: 58 ff 9b  eor   $9b,#$ff
087c: 58 ff 9c  eor   $9c,#$ff
087f: 3a 9b     incw  $9b
0881: e4 9b     mov   a,$9b
0883: d5 e0 f3  mov   $f3e0+x,a
0886: e4 9c     mov   a,$9c
0888: d5 e1 f3  mov   $f3e1+x,a
088b: f5 40 f3  mov   a,$f340+x
088e: d5 41 f3  mov   $f341+x,a
0891: 6f        ret

; queue incoming CPU cmds
0892: e4 f4     mov   a,$f4
0894: f0 36     beq   $08cc
0896: 64 f4     cmp   a,$f4
0898: d0 f8     bne   $0892
089a: 68 fe     cmp   a,#$fe
089c: f0 2e     beq   $08cc
089e: 68 10     cmp   a,#$10
08a0: 90 04     bcc   $08a6
08a2: 68 18     cmp   a,#$18
08a4: 90 26     bcc   $08cc
08a6: 4d        push  x
08a7: f8 d7     mov   x,$d7
08a9: d5 72 f1  mov   $f172+x,a
08ac: fd        mov   y,a
08ad: e4 f5     mov   a,$f5
08af: d5 73 f1  mov   $f173+x,a
08b2: e4 f6     mov   a,$f6
08b4: d5 74 f1  mov   $f174+x,a
08b7: e4 f7     mov   a,$f7
08b9: d5 75 f1  mov   $f175+x,a
08bc: 7d        mov   a,x
08bd: 60        clrc
08be: 88 04     adc   a,#$04
08c0: 68 40     cmp   a,#$40
08c2: b0 02     bcs   $08c6
08c4: c4 d7     mov   $d7,a
08c6: ce        pop   x
08c7: 3f a8 07  call  $07a8
08ca: cb f4     mov   $f4,y
08cc: 6f        ret

; process queued CPU cmds
08cd: cd 00     mov   x,#$00
08cf: f5 72 f1  mov   a,$f172+x
08d2: f0 1e     beq   $08f2
08d4: c4 8d     mov   $8d,a
08d6: f5 73 f1  mov   a,$f173+x
08d9: c4 8e     mov   $8e,a
08db: f5 74 f1  mov   a,$f174+x
08de: c4 8f     mov   $8f,a
08e0: f5 75 f1  mov   a,$f175+x
08e3: c4 90     mov   $90,a
08e5: 4d        push  x
08e6: 3f ac 0b  call  $0bac
08e9: ae        pop   a
08ea: 60        clrc
08eb: 88 04     adc   a,#$04
08ed: 5d        mov   x,a
08ee: c8 40     cmp   x,#$40
08f0: d0 dd     bne   $08cf
08f2: 7d        mov   a,x
08f3: f0 0b     beq   $0900
08f5: e8 00     mov   a,#$00
08f7: d5 6e f1  mov   $f16e+x,a
08fa: 1d        dec   x
08fb: 1d        dec   x
08fc: 1d        dec   x
08fd: 1d        dec   x
08fe: d0 f7     bne   $08f7
0900: c4 d7     mov   $d7,a
0902: 6f        ret

0903: f5 51 01  mov   a,$0151+x
0906: f0 0b     beq   $0913
0908: c4 a5     mov   $a5,a
090a: c8 10     cmp   x,#$10
090c: b0 08     bcs   $0916
090e: f5 11 01  mov   a,$0111+x
0911: f0 03     beq   $0916
0913: 5f 95 09  jmp   $0995

0916: f5 21 f4  mov   a,$f421+x
0919: fd        mov   y,a
091a: f5 20 f4  mov   a,$f420+x
091d: da b5     movw  $b5,ya
091f: f5 81 f4  mov   a,$f481+x
0922: fd        mov   y,a
0923: f5 80 f4  mov   a,$f480+x
0926: 7a b5     addw  ya,$b5
0928: da b7     movw  $b7,ya
092a: d5 80 f4  mov   $f480+x,a
092d: dd        mov   a,y
092e: 75 81 f4  cmp   a,$f481+x
0931: f0 2e     beq   $0961
0933: d5 81 f4  mov   $f481+x,a
0936: 0b b7     asl   $b7
0938: 2b b8     rol   $b8
093a: f5 01 f3  mov   a,$f301+x
093d: fd        mov   y,a
093e: f5 00 f3  mov   a,$f300+x
0941: da 9b     movw  $9b,ya
0943: e4 b8     mov   a,$b8
0945: cf        mul   ya
0946: da 9d     movw  $9d,ya
0948: eb 9b     mov   y,$9b
094a: e4 b8     mov   a,$b8
094c: cf        mul   ya
094d: dd        mov   a,y
094e: 8d 00     mov   y,#$00
0950: 7a 9d     addw  ya,$9d
0952: f3 b8 02  bbc7  $b8,$0957
0955: 9a 9b     subw  ya,$9b
0957: d5 00 f5  mov   $f500+x,a
095a: dd        mov   a,y
095b: d5 01 f5  mov   $f501+x,a
095e: 09 91 d1  or    ($d1),($91)
0961: f5 e1 f2  mov   a,$f2e1+x
0964: 9c        dec   a
0965: d0 2b     bne   $0992
0967: f5 01 f4  mov   a,$f401+x
096a: fd        mov   y,a
096b: f5 00 f4  mov   a,$f400+x
096e: da 9b     movw  $9b,ya
0970: e4 b6     mov   a,$b6
0972: c4 b7     mov   $b7,a
0974: f5 21 f2  mov   a,$f221+x
0977: c4 9e     mov   $9e,a
0979: 38 70 9e  and   $9e,#$70
097c: 28 07     and   a,#$07
097e: 3f de 0a  call  $0ade
0981: d5 20 f4  mov   $f420+x,a
0984: dd        mov   a,y
0985: d5 21 f4  mov   $f421+x,a
0988: e4 9d     mov   a,$9d
098a: 04 9e     or    a,$9e
098c: d5 21 f2  mov   $f221+x,a
098f: f5 e0 f2  mov   a,$f2e0+x
0992: d5 e1 f2  mov   $f2e1+x,a
0995: f5 70 01  mov   a,$0170+x
0998: f0 5c     beq   $09f6
099a: c4 a5     mov   $a5,a
099c: f5 31 01  mov   a,$0131+x
099f: d0 55     bne   $09f6
09a1: f5 61 f4  mov   a,$f461+x
09a4: fd        mov   y,a
09a5: f5 60 f4  mov   a,$f460+x
09a8: da b5     movw  $b5,ya
09aa: cb b7     mov   $b7,y
09ac: f5 a1 f4  mov   a,$f4a1+x
09af: fd        mov   y,a
09b0: f5 a0 f4  mov   a,$f4a0+x
09b3: 7a b5     addw  ya,$b5
09b5: d5 a0 f4  mov   $f4a0+x,a
09b8: dd        mov   a,y
09b9: 75 a1 f4  cmp   a,$f4a1+x
09bc: f0 06     beq   $09c4
09be: d5 a1 f4  mov   $f4a1+x,a
09c1: 09 91 d0  or    ($d0),($91)
09c4: f5 21 f3  mov   a,$f321+x
09c7: 9c        dec   a
09c8: d0 29     bne   $09f3
09ca: f5 41 f4  mov   a,$f441+x
09cd: fd        mov   y,a
09ce: f5 40 f4  mov   a,$f440+x
09d1: da 9b     movw  $9b,ya
09d3: f5 21 f2  mov   a,$f221+x
09d6: c4 9e     mov   $9e,a
09d8: 38 07 9e  and   $9e,#$07
09db: 9f        xcn   a
09dc: 28 07     and   a,#$07
09de: 3f de 0a  call  $0ade
09e1: d5 60 f4  mov   $f460+x,a
09e4: dd        mov   a,y
09e5: d5 61 f4  mov   $f461+x,a
09e8: e4 9d     mov   a,$9d
09ea: 9f        xcn   a
09eb: 04 9e     or    a,$9e
09ed: d5 21 f2  mov   $f221+x,a
09f0: f5 20 f3  mov   a,$f320+x
09f3: d5 21 f3  mov   $f321+x,a
; set voice vol/pitch DSP regs if changed
09f6: ba d0     movw  ya,$d0
09f8: d0 01     bne   $09fb
09fa: 6f        ret

; set DSP voice volume
09fb: 7d        mov   a,x
09fc: 28 0f     and   a,#$0f
09fe: c4 9b     mov   $9b,a             ; 9B = voice # * 2
0a00: 9f        xcn   a
0a01: 5c        lsr   a
0a02: c4 9c     mov   $9c,a             ; 9C = voice DSP volume reg
0a04: e4 91     mov   a,$91
0a06: 24 d0     and   a,$d0
0a08: f0 66     beq   $0a70             ; skip to pitch if vol not changed
0a0a: 8f 80 9d  mov   $9d,#$80          ; default pan = $80 (center)
0a0d: 03 87 0e  bbs0  $87,$0a1e         ; skip pan calcs if mono mode
0a10: f5 81 f2  mov   a,$f281+x
0a13: fd        mov   y,a
0a14: f5 c1 f4  mov   a,$f4c1+x
0a17: 3f de 12  call  $12de             ; A=A+Y, bounding to 00/FF
0a1a: 48 ff     eor   a,#$ff
0a1c: c4 9d     mov   $9d,a             ; save final pan value in 9D
0a1e: f5 41 f2  mov   a,$f241+x
0a21: fd        mov   y,a
0a22: c4 9e     mov   $9e,a
0a24: f5 a1 f4  mov   a,$f4a1+x
0a27: f0 0e     beq   $0a37
0a29: 1c        asl   a
0a2a: cf        mul   ya
0a2b: b0 0a     bcs   $0a37
0a2d: dd        mov   a,y
0a2e: 84 9e     adc   a,$9e
0a30: 10 04     bpl   $0a36
0a32: 90 02     bcc   $0a36
0a34: e8 7f     mov   a,#$7f
0a36: fd        mov   y,a
0a37: e4 a8     mov   a,$a8
0a39: cf        mul   ya
0a3a: c8 10     cmp   x,#$10
0a3c: b0 11     bcs   $0a4f
0a3e: e4 91     mov   a,$91
0a40: 24 a7     and   a,$a7
0a42: f0 04     beq   $0a48
0a44: 8d 00     mov   y,#$00
0a46: 2f 07     bra   $0a4f
0a48: f5 20 f2  mov   a,$f220+x
0a4b: cf        mul   ya
0a4c: e4 4d     mov   a,$4d
0a4e: cf        mul   ya
0a4f: cb 9e     mov   $9e,y
0a51: e4 9d     mov   a,$9d             ; pan value
0a53: cf        mul   ya
0a54: dd        mov   a,y
0a55: eb 9b     mov   y,$9b
0a57: d6 be 00  mov   $00be+y,a
0a5a: eb 9c     mov   y,$9c             ; DSP reg
0a5c: cb f2     mov   $f2,y
0a5e: c4 f3     mov   $f3,a
0a60: ea 9b 00  not1  $0013,3
0a63: ab 9c     inc   $9c
0a65: 23 9c 08  bbs1  $9c,$0a70
0a68: e4 9d     mov   a,$9d
0a6a: 48 ff     eor   a,#$ff
0a6c: eb 9e     mov   y,$9e
0a6e: 2f e3     bra   $0a53
0a70: e4 91     mov   a,$91
0a72: 24 d1     and   a,$d1
0a74: f0 67     beq   $0add             ; return unless pitch changed
0a76: 22 9c     set1  $9c               ; be sure 9C points at pitch lo DSP reg
0a78: f5 20 f5  mov   a,$f520+x
0a7b: 60        clrc
0a7c: 95 00 f5  adc   a,$f500+x
0a7f: c4 9d     mov   $9d,a
0a81: f5 21 f5  mov   a,$f521+x
0a84: 95 01 f5  adc   a,$f501+x
0a87: c4 9e     mov   $9e,a
0a89: c8 10     cmp   x,#$10
0a8b: 90 25     bcc   $0ab2
0a8d: c8 1c     cmp   x,#$1c
0a8f: b0 04     bcs   $0a95
0a91: ba 9d     movw  ya,$9d
0a93: 2f 39     bra   $0ace
0a95: eb b1     mov   y,$b1
0a97: f0 f8     beq   $0a91
0a99: cf        mul   ya
0a9a: da 9f     movw  $9f,ya
0a9c: eb b1     mov   y,$b1
0a9e: e4 9d     mov   a,$9d
0aa0: cf        mul   ya
0aa1: dd        mov   a,y
0aa2: 8d 00     mov   y,#$00
0aa4: 7a 9f     addw  ya,$9f
0aa6: 1c        asl   a
0aa7: c4 a1     mov   $a1,a
0aa9: dd        mov   a,y
0aaa: 3c        rol   a
0aab: fd        mov   y,a
0aac: e4 a1     mov   a,$a1
0aae: 7a 9d     addw  ya,$9d
0ab0: 2f 1c     bra   $0ace
0ab2: eb af     mov   y,$af
0ab4: cf        mul   ya
0ab5: da 9f     movw  $9f,ya
0ab7: eb af     mov   y,$af
0ab9: e4 9d     mov   a,$9d
0abb: cf        mul   ya
0abc: dd        mov   a,y
0abd: 8d 00     mov   y,#$00
0abf: 7a 9f     addw  ya,$9f
0ac1: e3 af 0a  bbs7  $af,$0ace
0ac4: 1c        asl   a
0ac5: c4 a1     mov   $a1,a
0ac7: dd        mov   a,y
0ac8: 3c        rol   a
0ac9: fd        mov   y,a
0aca: e4 a1     mov   a,$a1
0acc: 7a 9d     addw  ya,$9d
0ace: d8 9b     mov   $9b,x
0ad0: f8 9c     mov   x,$9c             ; DSP reg for pitch lo
0ad2: d8 f2     mov   $f2,x
0ad4: c4 f3     mov   $f3,a
0ad6: 3d        inc   x
0ad7: d8 f2     mov   $f2,x
0ad9: cb f3     mov   $f3,y             ; set pitch DSP from YA
0adb: f8 9b     mov   x,$9b
0add: 6f        ret

0ade: 8f 00 9d  mov   $9d,#$00
0ae1: 78 c0 a5  cmp   $a5,#$c0
0ae4: b0 49     bcs   $0b2f
0ae6: 78 80 a5  cmp   $a5,#$80
0ae9: b0 1e     bcs   $0b09
0aeb: 58 ff b5  eor   $b5,#$ff
0aee: 58 ff b6  eor   $b6,#$ff
0af1: 3a b5     incw  $b5
0af3: fd        mov   y,a
0af4: f0 63     beq   $0b59
0af6: 9c        dec   a
0af7: c4 9d     mov   $9d,a
0af9: e3 b6 5d  bbs7  $b6,$0b59
0afc: 4b 9c     lsr   $9c
0afe: 6b 9b     ror   $9b
0b00: 4b 9c     lsr   $9c
0b02: 6b 9b     ror   $9b
0b04: ba 9b     movw  ya,$9b
0b06: 7a b5     addw  ya,$b5
0b08: 6f        ret

0b09: 58 ff b5  eor   $b5,#$ff
0b0c: 58 ff b6  eor   $b6,#$ff
0b0f: 3a b5     incw  $b5
0b11: fd        mov   y,a
0b12: f0 45     beq   $0b59
0b14: 9c        dec   a
0b15: c4 9d     mov   $9d,a
0b17: f3 b6 3f  bbc7  $b6,$0b59
0b1a: 4b 9c     lsr   $9c
0b1c: 6b 9b     ror   $9b
0b1e: 4b 9c     lsr   $9c
0b20: 6b 9b     ror   $9b
0b22: 58 ff 9b  eor   $9b,#$ff
0b25: 58 ff 9c  eor   $9c,#$ff
0b28: 3a 9b     incw  $9b
0b2a: ba 9b     movw  ya,$9b
0b2c: 7a b5     addw  ya,$b5
0b2e: 6f        ret

0b2f: fd        mov   y,a
0b30: f0 1f     beq   $0b51
0b32: 9c        dec   a
0b33: c4 9d     mov   $9d,a
0b35: f3 b6 08  bbc7  $b6,$0b40
0b38: 58 ff b5  eor   $b5,#$ff
0b3b: 58 ff b6  eor   $b6,#$ff
0b3e: 3a b5     incw  $b5
0b40: 4b 9c     lsr   $9c
0b42: 6b 9b     ror   $9b
0b44: 4b 9c     lsr   $9c
0b46: 6b 9b     ror   $9b
0b48: ba 9b     movw  ya,$9b
0b4a: 7a b5     addw  ya,$b5
0b4c: da b5     movw  $b5,ya
0b4e: e3 b7 08  bbs7  $b7,$0b59
0b51: 58 ff b5  eor   $b5,#$ff
0b54: 58 ff b6  eor   $b6,#$ff
0b57: 3a b5     incw  $b5
0b59: ba b5     movw  ya,$b5
0b5b: 6f        ret

0b5c: e4 d8     mov   a,$d8
0b5e: 68 23     cmp   a,#$23
0b60: f0 28     beq   $0b8a
0b62: 5c        lsr   a
0b63: fd        mov   y,a
0b64: e8 70     mov   a,#$70
0b66: 90 01     bcc   $0b69
0b68: 9f        xcn   a
0b69: 56 cb 1d  eor   a,$1dcb+y
0b6c: d6 cb 1d  mov   $1dcb+y,a
0b6f: e4 d8     mov   a,$d8
0b71: bc        inc   a
0b72: 68 24     cmp   a,#$24
0b74: f0 0f     beq   $0b85
0b76: 2d        push  a
0b77: 5c        lsr   a
0b78: 8d 00     mov   y,#$00
0b7a: cd 09     mov   x,#$09
0b7c: 9e        div   ya,x
0b7d: dd        mov   a,y
0b7e: ae        pop   a
0b7f: d0 06     bne   $0b87
0b81: bc        inc   a
0b82: bc        inc   a
0b83: 2f 02     bra   $0b87
0b85: e8 03     mov   a,#$03
0b87: c4 d8     mov   $d8,a
0b89: 6f        ret

0b8a: e8 70     mov   a,#$70
0b8c: 45 cc 1d  eor   a,$1dcc
0b8f: c5 cc 1d  mov   $1dcc,a
0b92: e4 d8     mov   a,$d8
0b94: 2f cc     bra   $0b62
; dispatch vcmd if not 0
0b96: f8 f4     mov   x,$f4
0b98: d0 03     bne   $0b9d
0b9a: 6f        ret

; dispatch vcmd
0b9b: f8 f4     mov   x,$f4
0b9d: 3e f4     cmp   x,$f4
0b9f: d0 fa     bne   $0b9b
0ba1: ba f6     movw  ya,$f6
0ba3: da 8f     movw  $8f,ya
0ba5: ba f4     movw  ya,$f4
0ba7: da 8d     movw  $8d,ya
0ba9: 3f a8 07  call  $07a8
; dispatch (queued) vcmd
0bac: f8 8d     mov   x,$8d
0bae: 7d        mov   a,x
0baf: 10 05     bpl   $0bb6
0bb1: d8 f4     mov   $f4,x
0bb3: 5f fb 0d  jmp   $0dfb

0bb6: c8 10     cmp   x,#$10
0bb8: 90 1b     bcc   $0bd5
0bba: c8 20     cmp   x,#$20
0bbc: b0 17     bcs   $0bd5
0bbe: 28 0f     and   a,#$0f
0bc0: 1c        asl   a
0bc1: fd        mov   y,a
0bc2: f6 81 16  mov   a,$1681+y
0bc5: 2d        push  a
0bc6: f6 80 16  mov   a,$1680+y
0bc9: 2d        push  a
0bca: f6 a1 16  mov   a,$16a1+y
0bcd: f0 05     beq   $0bd4
0bcf: 2d        push  a
0bd0: f6 a0 16  mov   a,$16a0+y
0bd3: 2d        push  a
0bd4: 6f        ret

0bd5: d8 f4     mov   $f4,x
0bd7: 6f        ret

; CPU cmd 14
0bd8: 3f a9 13  call  $13a9
; CPU cmd 10
0bdb: 8f 10 b9  mov   $b9,#$10
0bde: 2f 06     bra   $0be6
; CPU cmd 15
0be0: 3f a9 13  call  $13a9
; CPU cmd 11
0be3: 8f 20 b9  mov   $b9,#$20
0be6: e8 ff     mov   a,#$ff
0be8: 8d 5c     mov   y,#$5c
0bea: 3f a3 07  call  $07a3
0bed: fa 8e bc  mov   ($bc),($8e)
0bf0: e4 8f     mov   a,$8f
0bf2: c4 4d     mov   $4d,a
0bf4: e4 90     mov   a,$90
0bf6: 28 0f     and   a,#$0f
0bf8: 64 81     cmp   a,$81
0bfa: f0 09     beq   $0c05
0bfc: c4 81     mov   $81,a
0bfe: 02 88     set0  $88
0c00: 22 88     set1  $88
0c02: 3f 16 13  call  $1316
0c05: 3f 0e 10  call  $100e
0c08: e8 00     mov   a,#$00
0c0a: fd        mov   y,a
0c0b: c4 86     mov   $86,a
0c0d: b2 88     clr5  $88
0c0f: da d2     movw  $d2,ya
0c11: c4 d1     mov   $d1,a
0c13: 69 bc bb  cmp   ($bb),($bc)
0c16: d0 46     bne   $0c5e
0c18: 3f e5 13  call  $13e5
0c1b: e4 53     mov   a,$53
0c1d: f0 3f     beq   $0c5e
0c1f: 38 e0 8c  and   $8c,#$e0
0c22: 09 62 8c  or    ($8c),($62)
0c25: cd 00     mov   x,#$00
0c27: 8f 01 91  mov   $91,#$01
0c2a: bb 26     inc   $26+x
0c2c: d8 a6     mov   $a6,x
0c2e: 3f ed 1a  call  $1aed
0c31: 7d        mov   a,x
0c32: 9f        xcn   a
0c33: 5c        lsr   a
0c34: fd        mov   y,a
0c35: e8 00     mov   a,#$00
0c37: 3f a3 07  call  $07a3
0c3a: fc        inc   y
0c3b: 3f a3 07  call  $07a3
0c3e: fc        inc   y
0c3f: cb 9c     mov   $9c,y
0c41: 3f 78 0a  call  $0a78
0c44: 3d        inc   x
0c45: 3d        inc   x
0c46: 0b 91     asl   $91
0c48: d0 e0     bne   $0c2a
0c4a: e8 00     mov   a,#$00
0c4c: c4 55     mov   $55,a
0c4e: c4 57     mov   $57,a
0c50: c4 59     mov   $59,a
0c52: fa 24 22  mov   ($22),($24)
0c55: c4 23     mov   $23,a
0c57: c4 25     mov   $25,a
0c59: fa 53 d0  mov   ($d0),($53)
0c5c: 2f 6f     bra   $0ccd
0c5e: e8 00     mov   a,#$00
0c60: fd        mov   y,a
0c61: c4 53     mov   $53,a
0c63: da 54     movw  $54,ya
0c65: da 56     movw  $56,ya
0c67: da 58     movw  $58,ya
0c69: c4 22     mov   $22,a
0c6b: c4 23     mov   $23,a
0c6d: da 24     movw  $24,ya
0c6f: c4 5a     mov   $5a,a
0c71: c4 5c     mov   $5c,a
0c73: c4 60     mov   $60,a
0c75: c4 7c     mov   $7c,a
0c77: c4 7b     mov   $7b,a
0c79: 8f 01 47  mov   $47,#$01
0c7c: 8f ff 48  mov   $48,#$ff
0c7f: eb b9     mov   y,$b9
0c81: cd 10     mov   x,#$10
0c83: f6 03 20  mov   a,$2003+y
0c86: d4 01     mov   $01+x,a
0c88: dc        dec   y
0c89: 1d        dec   x
0c8a: d0 f7     bne   $0c83
0c8c: e5 00 20  mov   a,$2000
0c8f: c4 00     mov   $00,a
0c91: e5 01 20  mov   a,$2001
0c94: c4 01     mov   $01,a
0c96: e8 24     mov   a,#$24
0c98: 8d 20     mov   y,#$20
0c9a: 9a 00     subw  ya,$00
0c9c: da 00     movw  $00,ya
0c9e: cd 0e     mov   x,#$0e
0ca0: 8f 80 91  mov   $91,#$80
0ca3: e5 02 20  mov   a,$2002
0ca6: ec 03 20  mov   y,$2003
0ca9: da 9b     movw  $9b,ya
0cab: f4 02     mov   a,$02+x
0cad: fb 03     mov   y,$03+x
0caf: 5a 9b     cmpw  ya,$9b
0cb1: f0 11     beq   $0cc4
0cb3: 09 91 53  or    ($53),($91)
0cb6: 7a 00     addw  ya,$00
0cb8: d4 02     mov   $02+x,a
0cba: db 03     mov   $03+x,y
0cbc: 3f f6 0c  call  $0cf6
0cbf: e8 ff     mov   a,#$ff
0cc1: d5 20 f2  mov   $f220+x,a
0cc4: 1d        dec   x
0cc5: 1d        dec   x
0cc6: 4b 91     lsr   $91               ; add voice offset
0cc8: d0 e1     bne   $0cab
0cca: 8f 00 d0  mov   $d0,#$00
0ccd: 13 88 15  bbc0  $88,$0ce5         ; reset voice
0cd0: 33 88 0b  bbc1  $88,$0cde
0cd3: cd 82     mov   x,#$82
0cd5: 3f f9 12  call  $12f9             ; delay for (X)-83 timer1 periods
0cd8: 8f 00 83  mov   $83,#$00
0cdb: 3f 97 13  call  $1397             ; enable FLG echo write
0cde: cd 81     mov   x,#$81
0ce0: 3f f9 12  call  $12f9             ; delay for (X)-83 timer1 periods
0ce3: 12 88     clr0  $88
0ce5: fa 54 89  mov   ($89),($54)
0ce8: fa 56 8a  mov   ($8a),($56)
0ceb: fa 58 8b  mov   ($8b),($58)
0cee: cd ff     mov   x,#$ff
0cf0: bd        mov   sp,x              ; reset stack ptr to $(01)FF
0cf1: e4 fd     mov   a,$fd             ; clear counter0
0cf3: 5f 99 02  jmp   $0299             ; restart main loop

; prep voice for playing
0cf6: 7d        mov   a,x
0cf7: 1c        asl   a
0cf8: d4 27     mov   $27+x,a
0cfa: e8 00     mov   a,#$00
0cfc: d5 50 01  mov   $0150+x,a
0cff: d5 c0 f3  mov   $f3c0+x,a
0d02: d5 c1 f3  mov   $f3c1+x,a
0d05: d5 e0 f4  mov   $f4e0+x,a
0d08: d5 51 01  mov   $0151+x,a
0d0b: d5 70 01  mov   $0170+x,a
0d0e: d5 71 01  mov   $0171+x,a
0d11: d5 c0 f4  mov   $f4c0+x,a
0d14: d5 c1 f4  mov   $f4c1+x,a
0d17: d5 a0 f3  mov   $f3a0+x,a
0d1a: d5 61 f3  mov   $f361+x,a
0d1d: d5 00 f3  mov   $f300+x,a
0d20: bc        inc   a
0d21: d4 26     mov   $26+x,a
0d23: e8 10     mov   a,#$10
0d25: d5 01 f3  mov   $f301+x,a
0d28: 6f        ret

; CPU cmds 10,11,14,15 part 1
0d29: e4 8e     mov   a,$8e
0d2b: 64 80     cmp   a,$80
0d2d: c4 80     mov   $80,a
0d2f: f0 05     beq   $0d36
0d31: c4 f5     mov   $f5,a
0d33: d8 f4     mov   $f4,x
0d35: 6f        ret

0d36: ae        pop   a
0d37: ae        pop   a
0d38: e8 ff     mov   a,#$ff
0d3a: c4 f5     mov   $f5,a
0d3c: d8 f4     mov   $f4,x
0d3e: e4 f4     mov   a,$f4
0d40: f0 fc     beq   $0d3e
0d42: 5f a8 07  jmp   $07a8

; CPU cmd 18
0d45: d8 f4     mov   $f4,x
0d47: cd 1e     mov   x,#$1e
0d49: 8f 80 91  mov   $91,#$80
0d4c: 8f c0 90  mov   $90,#$c0
0d4f: 2f 0a     bra   $0d5b
; CPU cmd 19
0d51: d8 f4     mov   $f4,x
0d53: cd 1a     mov   x,#$1a
0d55: 8f 20 91  mov   $91,#$20
0d58: 8f 30 90  mov   $90,#$30
0d5b: 93 87 01  bbc4  $87,$0d5f
0d5e: 6f        ret

0d5f: fa 8e 93  mov   ($93),($8e)
0d62: 8f 00 94  mov   $94,#$00
0d65: 0b 93     asl   $93
0d67: 2b 94     rol   $94
0d69: 0b 93     asl   $93
0d6b: 2b 94     rol   $94
0d6d: e8 00     mov   a,#$00
0d6f: 8d 2f     mov   y,#$2f
0d71: 7a 93     addw  ya,$93
0d73: da 93     movw  $93,ya            ; $93/4 = #$2F00 + 4 * APU1
0d75: 8d 03     mov   y,#$03
0d77: 8f 00 a4  mov   $a4,#$00
0d7a: f7 93     mov   a,($93)+y
0d7c: f0 34     beq   $0db2
0d7e: d4 03     mov   $03+x,a
0d80: dc        dec   y
0d81: f7 93     mov   a,($93)+y
0d83: d4 02     mov   $02+x,a
0d85: 09 91 a4  or    ($a4),($91)
0d88: 3f f6 0c  call  $0cf6
0d8b: bb 26     inc   $26+x
0d8d: e8 46     mov   a,#$46
0d8f: d5 41 f2  mov   $f241+x,a
0d92: e4 8f     mov   a,$8f
0d94: d5 81 f2  mov   $f281+x,a
0d97: e8 48     mov   a,#$48
0d99: d5 00 f2  mov   $f200+x,a
0d9c: e8 00     mov   a,#$00
0d9e: d5 c0 f2  mov   $f2c0+x,a
0da1: d5 c1 f2  mov   $f2c1+x,a
0da4: cb 9b     mov   $9b,y
0da6: e8 02     mov   a,#$02
0da8: 3f cf 1a  call  $1acf
0dab: eb 9b     mov   y,$9b
0dad: 1d        dec   x
0dae: 1d        dec   x
0daf: 4b 91     lsr   $91
0db1: e8 dc     mov   a,#$dc
0db3: dc        dec   y
0db4: 10 c4     bpl   $0d7a
0db6: e4 86     mov   a,$86
0db8: 24 90     and   a,$90
0dba: 04 a4     or    a,$a4
0dbc: 4e 22 00  tclr1 $0022
0dbf: 4e 5b 00  tclr1 $005b
0dc2: 4e 5d 00  tclr1 $005d
0dc5: 4e 61 00  tclr1 $0061
0dc8: 4e d0 00  tclr1 $00d0
0dcb: 4e d1 00  tclr1 $00d1
0dce: 0e 23 00  tset1 $0023
0dd1: 4e 25 00  tclr1 $0025
0dd4: c4 a5     mov   $a5,a
0dd6: cd 1e     mov   x,#$1e
0dd8: 8f 80 91  mov   $91,#$80
0ddb: 0b a5     asl   $a5
0ddd: 90 03     bcc   $0de2
0ddf: 3f 4c 1d  call  $1d4c
0de2: 1d        dec   x
0de3: 1d        dec   x
0de4: 4b 91     lsr   $91
0de6: 73 91 f2  bbc3  $91,$0ddb
0de9: e4 a4     mov   a,$a4
0deb: 0e 86 00  tset1 $0086
0dee: 4e 89 00  tclr1 $0089
0df1: 4e 8b 00  tclr1 $008b
0df4: 4e 8a 00  tclr1 $008a
0df7: 4e 24 00  tclr1 $0024
0dfa: 6f        ret

; CPU cmd >= $80
0dfb: c8 f0     cmp   x,#$f0
0dfd: b0 04     bcs   $0e03
0dff: c8 90     cmp   x,#$90
0e01: b0 0d     bcs   $0e10
0e03: 7d        mov   a,x
0e04: 28 1f     and   a,#$1f
0e06: 1c        asl   a
0e07: fd        mov   y,a
0e08: f6 c1 16  mov   a,$16c1+y
0e0b: 2d        push  a
0e0c: f6 c0 16  mov   a,$16c0+y
0e0f: 2d        push  a
0e10: 6f        ret

; CPU cmd 80
0e11: 3f 1a 0e  call  $0e1a             ; cmd 81
0e14: 3f 22 0e  call  $0e22             ; cmd 82
0e17: 5f 2a 0e  jmp   $0e2a             ; cmd 83

; CPU cmd 81
0e1a: 18 7f d0  or    $d0,#$7f
0e1d: cd 00     mov   x,#$00
0e1f: 5f 2f 0e  jmp   $0e2f

; CPU cmd 82
0e22: 18 c0 d0  or    $d0,#$c0
0e25: cd 02     mov   x,#$02
0e27: 5f 2f 0e  jmp   $0e2f

; CPU cmd 83
0e2a: 18 30 d0  or    $d0,#$30
0e2d: cd 04     mov   x,#$04
0e2f: eb 8f     mov   y,$8f
0e31: e4 8e     mov   a,$8e
0e33: d5 66 f1  mov   $f166+x,a
0e36: d0 0e     bne   $0e46
0e38: d5 60 f1  mov   $f160+x,a
0e3b: d5 6c f1  mov   $f16c+x,a
0e3e: d5 6d f1  mov   $f16d+x,a
0e41: dd        mov   a,y
0e42: d5 61 f1  mov   $f161+x,a
0e45: 6f        ret

0e46: dd        mov   a,y
0e47: 80        setc
0e48: b5 61 f1  sbc   a,$f161+x
0e4b: f0 e6     beq   $0e33
0e4d: 4d        push  x
0e4e: 3f 5f 0e  call  $0e5f
0e51: ce        pop   x
0e52: d5 6c f1  mov   $f16c+x,a
0e55: dd        mov   a,y
0e56: d5 6d f1  mov   $f16d+x,a
0e59: e8 00     mov   a,#$00
0e5b: d5 60 f1  mov   $f160+x,a
0e5e: 6f        ret

0e5f: 0d        push  psw
0e60: b0 03     bcs   $0e65
0e62: 48 ff     eor   a,#$ff
0e64: bc        inc   a
0e65: f8 8e     mov   x,$8e
0e67: 8d 00     mov   y,#$00
0e69: 9e        div   ya,x
0e6a: c4 b6     mov   $b6,a
0e6c: e8 00     mov   a,#$00
0e6e: 9e        div   ya,x
0e6f: c4 b5     mov   $b5,a
0e71: 8e        pop   psw
0e72: b0 08     bcs   $0e7c
0e74: 58 ff b5  eor   $b5,#$ff
0e77: 58 ff b6  eor   $b6,#$ff
0e7a: 3a b5     incw  $b5
0e7c: ba b5     movw  ya,$b5
0e7e: 6f        ret

; CPU cmd 85
0e7f: 3f aa 0e  call  $0eaa             ; cmd 87
; CPU cmd 86
0e82: eb 8f     mov   y,$8f
0e84: e4 8e     mov   a,$8e
0e86: c4 ad     mov   $ad,a
0e88: d0 09     bne   $0e93
0e8a: cb aa     mov   $aa,y
0e8c: c4 a9     mov   $a9,a
0e8e: c4 ac     mov   $ac,a
0e90: c4 ab     mov   $ab,a
0e92: 6f        ret

0e93: fa aa a5  mov   ($a5),($aa)
0e96: 58 80 a5  eor   $a5,#$80
0e99: dd        mov   a,y
0e9a: 48 80     eor   a,#$80
0e9c: 80        setc
0e9d: a4 a5     sbc   a,$a5
0e9f: f0 e5     beq   $0e86
0ea1: 3f 5f 0e  call  $0e5f
0ea4: da ab     movw  $ab,ya
0ea6: 8f 00 a9  mov   $a9,#$00
0ea9: 6f        ret

; CPU cmd 87
0eaa: eb 8f     mov   y,$8f
0eac: e4 8e     mov   a,$8e
0eae: c4 b4     mov   $b4,a
0eb0: d0 0a     bne   $0ebc
0eb2: cb af     mov   $af,y
0eb4: c4 ae     mov   $ae,a
0eb6: c4 b3     mov   $b3,a
0eb8: c4 b2     mov   $b2,a
0eba: 2f 16     bra   $0ed2
0ebc: fa af a5  mov   ($a5),($af)
0ebf: 58 80 a5  eor   $a5,#$80
0ec2: dd        mov   a,y
0ec3: 48 80     eor   a,#$80
0ec5: 80        setc
0ec6: a4 a5     sbc   a,$a5
0ec8: f0 e4     beq   $0eae
0eca: 3f 5f 0e  call  $0e5f
0ecd: da b2     movw  $b2,ya
0ecf: 8f 00 ae  mov   $ae,#$00
0ed2: 8f ff d1  mov   $d1,#$ff
0ed5: 6f        ret

; CPU cmd 89
0ed6: e4 8e     mov   a,$8e
0ed8: 64 b1     cmp   a,$b1
0eda: c4 b1     mov   $b1,a
0edc: f0 07     beq   $0ee5
0ede: e8 c0     mov   a,#$c0
0ee0: 24 86     and   a,$86
0ee2: 0e d1 00  tset1 $00d1
0ee5: 6f        ret

; CPU cmd 8E
0ee6: e8 ff     mov   a,#$ff
0ee8: 60        clrc
0ee9: 84 8e     adc   a,$8e
0eeb: ca 87 60  mov1  $0c10,7,c
0eee: b0 04     bcs   $0ef4
0ef0: e8 40     mov   a,#$40
0ef2: 2f 02     bra   $0ef6
0ef4: e8 7f     mov   a,#$7f
0ef6: 8d 0c     mov   y,#$0c
0ef8: 3f a3 07  call  $07a3
0efb: 8d 1c     mov   y,#$1c
0efd: 5f a3 07  jmp   $07a3             ; set master vol L/R to max (7F)

; CPU cmd F3 - stereo/mono mode
0f00: e4 8e     mov   a,$8e
0f02: d0 04     bne   $0f08             ; if APU1 == 0 then
0f04: 12 87     clr0  $87               ;   stereo mode
0f06: 2f 02     bra   $0f0a             ; else
0f08: 02 87     set0  $87               ;   mono mode
0f0a: 8f ff d0  mov   $d0,#$ff          ; all voices volumes changed
0f0d: 6f        ret

; CPU cmd F0
0f0e: 3f 17 0f  call  $0f17             ; cmd F1
0f11: 3f 3f 0f  call  $0f3f
0f14: 5f 71 0f  jmp   $0f71

; CPU cmd F1 - stop everything
0f17: e4 86     mov   a,$86
0f19: 48 ff     eor   a,#$ff
0f1b: 0e 23 00  tset1 $0023
0f1e: 4e 22 00  tclr1 $0022
0f21: 4e 89 00  tclr1 $0089
0f24: 4e 8b 00  tclr1 $008b
0f27: 4e 8a 00  tclr1 $008a
0f2a: e8 00     mov   a,#$00
0f2c: c4 53     mov   $53,a
0f2e: c4 54     mov   $54,a
0f30: c4 58     mov   $58,a
0f32: c4 56     mov   $56,a
0f34: 9c        dec   a
0f35: c4 80     mov   $80,a
0f37: c4 bb     mov   $bb,a
0f39: c4 bc     mov   $bc,a
0f3b: 6f        ret

; CPU cmd F2
0f3c: 03 8e 32  bbs0  $8e,$0f71
0f3f: e4 86     mov   a,$86
0f41: 28 c0     and   a,#$c0
0f43: 0e 23 00  tset1 $0023
0f46: 4e 22 00  tclr1 $0022
0f49: 4e 25 00  tclr1 $0025
0f4c: 4e d0 00  tclr1 $00d0
0f4f: 4e d1 00  tclr1 $00d1
0f52: c4 a4     mov   $a4,a
0f54: cd 1e     mov   x,#$1e
0f56: 8f 80 91  mov   $91,#$80
0f59: 0b a4     asl   $a4
0f5b: 90 0c     bcc   $0f69
0f5d: e8 c1     mov   a,#$c1
0f5f: d4 02     mov   $02+x,a
0f61: e8 1d     mov   a,#$1d
0f63: d4 03     mov   $03+x,a
0f65: e8 02     mov   a,#$02
0f67: d4 26     mov   $26+x,a
0f69: 1d        dec   x
0f6a: 1d        dec   x
0f6b: 4b 91     lsr   $91
0f6d: b3 91 e9  bbc5  $91,$0f59
0f70: 6f        ret

0f71: e4 86     mov   a,$86
0f73: 28 30     and   a,#$30
0f75: 0e 23 00  tset1 $0023
0f78: 4e 22 00  tclr1 $0022
0f7b: 4e 25 00  tclr1 $0025
0f7e: 4e d0 00  tclr1 $00d0
0f81: 4e d1 00  tclr1 $00d1
0f84: 1c        asl   a
0f85: 1c        asl   a
0f86: c4 a4     mov   $a4,a
0f88: cd 1a     mov   x,#$1a
0f8a: 8f 20 91  mov   $91,#$20
0f8d: 0b a4     asl   $a4
0f8f: 90 0c     bcc   $0f9d
0f91: e8 c1     mov   a,#$c1
0f93: d4 02     mov   $02+x,a
0f95: e8 1d     mov   a,#$1d
0f97: d4 03     mov   $03+x,a
0f99: e8 02     mov   a,#$02
0f9b: d4 26     mov   $26+x,a
0f9d: 1d        dec   x
0f9e: 1d        dec   x
0f9f: 4b 91     lsr   $91
0fa1: 73 91 e9  bbc3  $91,$0f8d
0fa4: 6f        ret

; CPU cmd F4
0fa5: fa 8e a7  mov   ($a7),($8e)
0fa8: 8f ff d0  mov   $d0,#$ff          ; all voices vol chgd
0fab: 6f        ret

; CPU cmd F8
0fac: e4 8e     mov   a,$8e
0fae: 4e a7 00  tclr1 $00a7
0fb1: 0e d0 00  tset1 $00d0             ; vol chgd
0fb4: 6f        ret

; CPU cmd F9
0fb5: e4 8e     mov   a,$8e
0fb7: 0e a7 00  tset1 $00a7
0fba: 0e d0 00  tset1 $00d0             ; vol chgd
0fbd: 6f        ret

; CPU cmd F5 - APU1 ? pause : resume
0fbe: e4 8e     mov   a,$8e
0fc0: f0 35     beq   $0ff7
0fc2: 8d 05     mov   y,#$05
0fc4: cb f2     mov   $f2,y
0fc6: e4 f3     mov   a,$f3
0fc8: 28 7f     and   a,#$7f
0fca: c4 f3     mov   $f3,a             ; set GAIN mode...
0fcc: dd        mov   a,y
0fcd: 60        clrc
0fce: 88 10     adc   a,#$10
0fd0: fd        mov   y,a
0fd1: 10 f1     bpl   $0fc4             ; ...foreach voice
0fd3: cd 00     mov   x,#$00
0fd5: 8d 00     mov   y,#$00
0fd7: cb f2     mov   $f2,y
0fd9: d8 f3     mov   $f3,x
0fdb: fc        inc   y
0fdc: cb f2     mov   $f2,y
0fde: d8 f3     mov   $f3,x             ; zero voice vol L/R...
0fe0: dd        mov   a,y
0fe1: 60        clrc
0fe2: 88 0f     adc   a,#$0f
0fe4: fd        mov   y,a
0fe5: 10 f0     bpl   $0fd7             ; ...foreach voice
0fe7: 82 87     set4  $87
0fe9: e8 00     mov   a,#$00
0feb: c4 d0     mov   $d0,a
0fed: c4 22     mov   $22,a
0fef: 8d 10     mov   y,#$10
0ff1: d6 bd 00  mov   $00bd+y,a
0ff4: fe fb     dbnz  y,$0ff1
0ff6: 6f        ret

0ff7: 8d 05     mov   y,#$05
0ff9: cb f2     mov   $f2,y
0ffb: e4 f3     mov   a,$f3
0ffd: 08 80     or    a,#$80
0fff: c4 f3     mov   $f3,a             ; set ADSR mode...
1001: dd        mov   a,y
1002: 60        clrc
1003: 88 10     adc   a,#$10
1005: fd        mov   y,a
1006: 10 f1     bpl   $0ff9             ; ...foreach voice
1008: 92 87     clr4  $87
100a: 8f ff d0  mov   $d0,#$ff          ; all voices vol chgd
100d: 6f        ret

; CPU cmd FE
100e: 7d        mov   a,x
100f: bc        inc   a
1010: 28 7f     and   a,#$7f
1012: c4 9b     mov   $9b,a
1014: e4 f4     mov   a,$f4
1016: f0 fc     beq   $1014
1018: 64 f4     cmp   a,$f4
101a: d0 f8     bne   $1014
101c: 3e f4     cmp   x,$f4
101e: d0 04     bne   $1024
1020: d8 f4     mov   $f4,x
1022: 2f f0     bra   $1014
1024: 64 9b     cmp   a,$9b
1026: d0 ec     bne   $1014
1028: 5d        mov   x,a
1029: 13 88 03  bbc0  $88,$102f
102c: 3f 26 13  call  $1326
102f: ba f6     movw  ya,$f6
1031: da 97     movw  $97,ya
1033: e4 f5     mov   a,$f5
1035: 68 e0     cmp   a,#$e0
1037: f0 3b     beq   $1074
1039: c4 f5     mov   $f5,a
103b: d8 f4     mov   $f4,x
103d: 28 07     and   a,#$07
103f: 1c        asl   a
1040: ad 1e     cmp   y,#$1e
1042: 90 10     bcc   $1054
1044: ad 2f     cmp   y,#$2f
1046: d0 0e     bne   $1056
1048: 4d        push  x
1049: 2d        push  a
104a: 3f 3f 0f  call  $0f3f
104d: 3f 71 0f  call  $0f71
1050: ae        pop   a
1051: ce        pop   x
1052: 2f 02     bra   $1056
1054: e8 00     mov   a,#$00
1056: fd        mov   y,a
1057: e8 10     mov   a,#$10
1059: 2d        push  a
105a: e8 29     mov   a,#$29
105c: 2d        push  a
105d: f6 45 15  mov   a,$1545+y
1060: 2d        push  a
1061: f6 44 15  mov   a,$1544+y
1064: 2d        push  a
1065: 3e f4     cmp   x,$f4
1067: f0 fc     beq   $1065
1069: f8 f4     mov   x,$f4
106b: 3e f4     cmp   x,$f4
106d: d0 fa     bne   $1069
106f: e8 ee     mov   a,#$ee
1071: c4 f5     mov   $f5,a
1073: 6f        ret

1074: 8f 00 f5  mov   $f5,#$00
1077: d8 f4     mov   $f4,x
1079: 5f a8 07  jmp   $07a8

; CPU cmd FE-03
107c: ba 97     movw  ya,$97
107e: c5 9b 10  mov   $109b,a
1081: cc 9c 10  mov   $109c,y
1084: c5 a3 10  mov   $10a3,a
1087: cc a4 10  mov   $10a4,y
108a: c5 a9 10  mov   $10a9,a
108d: cc aa 10  mov   $10aa,y
1090: 8d 00     mov   y,#$00
1092: 2f 04     bra   $1098
1094: 3e f4     cmp   x,$f4
1096: d0 1a     bne   $10b2
1098: e4 f5     mov   a,$f5
109a: d6 20 f1  mov   $f120+y,a
109d: fc        inc   y
109e: d8 f4     mov   $f4,x
10a0: e4 f6     mov   a,$f6
10a2: d6 20 f1  mov   $f120+y,a
10a5: fc        inc   y
10a6: e4 f7     mov   a,$f7
10a8: d6 20 f1  mov   $f120+y,a
10ab: fc        inc   y
10ac: 30 1e     bmi   $10cc
10ae: 3e f4     cmp   x,$f4
10b0: f0 fc     beq   $10ae
10b2: f8 f4     mov   x,$f4
10b4: 10 de     bpl   $1094
10b6: 3e f4     cmp   x,$f4
10b8: d0 f8     bne   $10b2
10ba: c8 e0     cmp   x,#$e0
10bc: f0 2d     beq   $10eb
10be: c8 ff     cmp   x,#$ff
10c0: d0 ec     bne   $10ae
10c2: e8 f0     mov   a,#$f0
10c4: 2e f5 e7  cbne  $f5,$10ae
10c7: c4 8e     mov   $8e,a
10c9: 5f bd 12  jmp   $12bd

10cc: dd        mov   a,y
10cd: 28 7f     and   a,#$7f
10cf: fd        mov   y,a
10d0: e5 9b 10  mov   a,$109b
10d3: 48 80     eor   a,#$80
10d5: 30 09     bmi   $10e0
10d7: ac 9c 10  inc   $109c
10da: ac a4 10  inc   $10a4
10dd: ac aa 10  inc   $10aa
10e0: c5 9b 10  mov   $109b,a
10e3: c5 a3 10  mov   $10a3,a
10e6: c5 a9 10  mov   $10a9,a
10e9: 2f c3     bra   $10ae
10eb: 6f        ret

; CPU cmd FE-05
10ec: ba 97     movw  ya,$97
10ee: c5 0b 11  mov   $110b,a
10f1: cc 0c 11  mov   $110c,y
10f4: c5 13 11  mov   $1113,a
10f7: cc 14 11  mov   $1114,y
10fa: c5 19 11  mov   $1119,a
10fd: cc 1a 11  mov   $111a,y
1100: 8d 00     mov   y,#$00
1102: 2f 04     bra   $1108
1104: 3e f4     cmp   x,$f4
1106: d0 25     bne   $112d
1108: e4 f5     mov   a,$f5
110a: d6 00 47  mov   $4700+y,a
110d: fc        inc   y
110e: d8 f4     mov   $f4,x
1110: e4 f6     mov   a,$f6
1112: d6 00 47  mov   $4700+y,a
1115: fc        inc   y
1116: e4 f7     mov   a,$f7
1118: d6 00 47  mov   $4700+y,a
111b: fc        inc   y
111c: 30 29     bmi   $1147
111e: e4 fd     mov   a,$fd
1120: f0 07     beq   $1129
1122: 4d        push  x
1123: 6d        push  y
1124: 3f 15 04  call  $0415
1127: ee        pop   y
1128: ce        pop   x
1129: 3e f4     cmp   x,$f4
112b: f0 f1     beq   $111e
112d: f8 f4     mov   x,$f4
112f: 10 d3     bpl   $1104
1131: 3e f4     cmp   x,$f4
1133: d0 f8     bne   $112d
1135: c8 e0     cmp   x,#$e0
1137: f0 2d     beq   $1166
1139: c8 ff     cmp   x,#$ff
113b: d0 e1     bne   $111e
113d: e8 f0     mov   a,#$f0
113f: 2e f5 dc  cbne  $f5,$111e
1142: c4 8e     mov   $8e,a
1144: 5f bd 12  jmp   $12bd

1147: dd        mov   a,y
1148: 28 7f     and   a,#$7f
114a: fd        mov   y,a
114b: e5 0b 11  mov   a,$110b
114e: 48 80     eor   a,#$80
1150: 30 09     bmi   $115b
1152: ac 0c 11  inc   $110c
1155: ac 14 11  inc   $1114
1158: ac 1a 11  inc   $111a
115b: c5 0b 11  mov   $110b,a
115e: c5 13 11  mov   $1113,a
1161: c5 19 11  mov   $1119,a
1164: 2f b8     bra   $111e
1166: 6f        ret

; CPU cmd FE-02
1167: ba 97     movw  ya,$97
1169: c5 80 11  mov   $1180,a
116c: cc 81 11  mov   $1181,y
116f: c5 88 11  mov   $1188,a
1172: cc 89 11  mov   $1189,y
1175: 8d 00     mov   y,#$00
1177: 2f 04     bra   $117d
1179: 3e f4     cmp   x,$f4
117b: d0 1a     bne   $1197
117d: e4 f5     mov   a,$f5
117f: d6 c0 1f  mov   $1fc0+y,a
1182: fc        inc   y
1183: e4 f6     mov   a,$f6
1185: d8 f4     mov   $f4,x
1187: d6 c0 1f  mov   $1fc0+y,a
118a: fc        inc   y
118b: d0 06     bne   $1193
118d: ac 81 11  inc   $1181
1190: ac 89 11  inc   $1189
1193: 3e f4     cmp   x,$f4
1195: f0 fc     beq   $1193
1197: f8 f4     mov   x,$f4
1199: 10 de     bpl   $1179
119b: 3e f4     cmp   x,$f4
119d: d0 f8     bne   $1197
119f: c8 e0     cmp   x,#$e0
11a1: f0 0e     beq   $11b1
11a3: c8 ff     cmp   x,#$ff
11a5: d0 ec     bne   $1193
11a7: e8 f0     mov   a,#$f0
11a9: 2e f5 e7  cbne  $f5,$1193
11ac: c4 8e     mov   $8e,a
11ae: 5f bd 12  jmp   $12bd

11b1: 6f        ret

; CPU cmd FE-01
11b2: 8d 00     mov   y,#$00
11b4: 2f 04     bra   $11ba
11b6: 3e f4     cmp   x,$f4
11b8: d0 0f     bne   $11c9
11ba: d8 f4     mov   $f4,x
11bc: e4 f5     mov   a,$f5
11be: d7 97     mov   ($97)+y,a
11c0: fc        inc   y
11c1: d0 02     bne   $11c5
11c3: ab 98     inc   $98
11c5: 3e f4     cmp   x,$f4
11c7: f0 fc     beq   $11c5
11c9: f8 f4     mov   x,$f4
11cb: 10 e9     bpl   $11b6
11cd: 3e f4     cmp   x,$f4
11cf: d0 f8     bne   $11c9
11d1: c8 e0     cmp   x,#$e0
11d3: f0 0e     beq   $11e3
11d5: c8 ff     cmp   x,#$ff
11d7: d0 ec     bne   $11c5
11d9: e8 f0     mov   a,#$f0
11db: 2e f5 e7  cbne  $f5,$11c5
11de: c4 8e     mov   $8e,a
11e0: 5f bd 12  jmp   $12bd

11e3: 6f        ret

; CPU cmd FE-00,04,06
11e4: d8 f4     mov   $f4,x
11e6: 3e f4     cmp   x,$f4
11e8: f0 fc     beq   $11e6
11ea: f8 f4     mov   x,$f4
11ec: 3e f4     cmp   x,$f4
11ee: d0 fa     bne   $11ea
11f0: 7d        mov   a,x
11f1: 10 f1     bpl   $11e4
11f3: c8 e0     cmp   x,#$e0
11f5: f0 0e     beq   $1205
11f7: c8 ff     cmp   x,#$ff
11f9: d0 e9     bne   $11e4
11fb: e8 f0     mov   a,#$f0
11fd: 2e f5 e4  cbne  $f5,$11e4
1200: c4 8e     mov   $8e,a
1202: 5f bd 12  jmp   $12bd

1205: 6f        ret

; CPU cmd FE-07
1206: ba f6     movw  ya,$f6
1208: da 99     movw  $99,ya
120a: d8 f4     mov   $f4,x
120c: 3f 75 12  call  $1275
120f: b0 63     bcs   $1274
1211: ba f6     movw  ya,$f6
1213: da 9b     movw  $9b,ya
1215: d8 f4     mov   $f4,x
1217: dd        mov   a,y
1218: f0 28     beq   $1242
121a: ba 97     movw  ya,$97
121c: c5 2d 12  mov   $122d,a
121f: cc 2e 12  mov   $122e,y
1222: ba 99     movw  ya,$99
1224: c5 30 12  mov   $1230,a
1227: cc 31 12  mov   $1231,y
122a: 8d 00     mov   y,#$00
122c: f6 84 99  mov   a,$9984+y
122f: d6 1a 82  mov   $821a+y,a
1232: fc        inc   y
1233: d0 f7     bne   $122c
1235: ab 98     inc   $98
1237: ab 9a     inc   $9a
1239: ac 2e 12  inc   $122e
123c: ac 31 12  inc   $1231
123f: 6e 9c ea  dbnz  $9c,$122c
1242: 1a 97     decw  $97
1244: 1a 99     decw  $99
1246: ba 97     movw  ya,$97
1248: c5 5b 12  mov   $125b,a
124b: cc 5c 12  mov   $125c,y
124e: ba 99     movw  ya,$99
1250: c5 5e 12  mov   $125e,a
1253: cc 5f 12  mov   $125f,y
1256: eb 9b     mov   y,$9b
1258: f0 08     beq   $1262
125a: f6 83 99  mov   a,$9983+y
125d: d6 19 82  mov   $8219+y,a
1260: fe f8     dbnz  y,$125a
1262: 3f 75 12  call  $1275
1265: b0 0d     bcs   $1274
1267: ba f6     movw  ya,$f6
1269: da 97     movw  $97,ya
126b: d8 f4     mov   $f4,x
126d: 3f 75 12  call  $1275
1270: b0 02     bcs   $1274
1272: 2f 92     bra   $1206
1274: 6f        ret

1275: 3e f4     cmp   x,$f4
1277: f0 fc     beq   $1275
1279: f8 f4     mov   x,$f4
127b: 10 16     bpl   $1293
127d: 3e f4     cmp   x,$f4
127f: d0 f8     bne   $1279
1281: c8 e0     cmp   x,#$e0
1283: f0 14     beq   $1299
1285: c8 ff     cmp   x,#$ff
1287: d0 ec     bne   $1275
1289: e8 f0     mov   a,#$f0
128b: 2e f5 e7  cbne  $f5,$1275
128e: c4 8e     mov   $8e,a
1290: 5f bd 12  jmp   $12bd

1293: 3e f4     cmp   x,$f4
1295: f0 04     beq   $129b
1297: 2f dc     bra   $1275
1299: 80        setc
129a: 8d 60     mov   y,#$60
129c: 6f        ret

; CPU cmd F6
129d: e4 8e     mov   a,$8e
129f: 60        clrc
12a0: 88 ff     adc   a,#$ff
12a2: ca 88 a0  mov1  $1411,0,c
12a5: b0 04     bcs   $12ab
12a7: e8 2a     mov   a,#$2a
12a9: 2f 02     bra   $12ad
12ab: e8 01     mov   a,#$01
12ad: 8f 02 f1  mov   $f1,#$02
12b0: c4 fa     mov   $fa,a
12b2: 8f 03 f1  mov   $f1,#$03
12b5: 6f        ret

; CPU cmd 88
12b6: e4 8e     mov   a,$8e
12b8: 28 0f     and   a,#$0f
12ba: c4 d2     mov   $d2,a
12bc: 6f        ret

; CPU cmd FF
12bd: e4 8e     mov   a,$8e
12bf: 68 01     cmp   a,#$01
12c1: d0 09     bne   $12cc
12c3: e4 8f     mov   a,$8f
12c5: 60        clrc
12c6: 88 ff     adc   a,#$ff
12c8: ca 88 e0  mov1  $1c11,0,c
12cb: 6f        ret

12cc: 68 f0     cmp   a,#$f0
12ce: d0 fb     bne   $12cb
12d0: e8 e0     mov   a,#$e0
12d2: 8d 6c     mov   y,#$6c
12d4: 3f a3 07  call  $07a3
12d7: 8f 80 f1  mov   $f1,#$80
12da: 5f c0 ff  jmp   $ffc0

; NOP vcmds/CPU cmds
12dd: 6f        ret

; add A and Y, bounding to 00/FF, result in A
12de: cb b5     mov   $b5,y
12e0: 60        clrc
12e1: fd        mov   y,a
12e2: 30 07     bmi   $12eb
12e4: 84 b5     adc   a,$b5
12e6: 90 09     bcc   $12f1
12e8: e8 ff     mov   a,#$ff
12ea: 6f        ret

12eb: 84 b5     adc   a,$b5
12ed: b0 02     bcs   $12f1
12ef: e8 00     mov   a,#$00
12f1: 6f        ret

; CPU cmd FD
12f2: eb 8e     mov   y,$8e
12f4: e4 8f     mov   a,$8f
12f6: 5f a3 07  jmp   $07a3

; delay for (X) - $83 timer1 periods
12f9: 8f 00 d7  mov   $d7,#$00          ; reset CPU command queue ptr
12fc: e6        mov   a,(x)
12fd: f0 16     beq   $1315
12ff: e4 83     mov   a,$83
1301: 2f 0c     bra   $130f
1303: eb fe     mov   y,$fe             ; wait for timer1 tick
1305: d0 07     bne   $130e
1307: 2d        push  a
1308: 3f 92 08  call  $0892             ; queue CPU commands while waiting
130b: ae        pop   a
130c: 2f f5     bra   $1303
130e: bc        inc   a
130f: 66        cmp   a,(x)
1310: 90 f1     bcc   $1303             ; waited (X) periods?
1312: 3f cd 08  call  $08cd             ; process queued CPU cmds
1315: 6f        ret

1316: 3f 52 13  call  $1352             ; set new echo delay from $81
1319: 8f 00 83  mov   $83,#$00
131c: e4 82     mov   a,$82
131e: f0 01     beq   $1321
1320: 6f        ret

1321: 32 88     clr1  $88
1323: 5f 97 13  jmp   $1397             ; enable echo write

1326: e4 fe     mov   a,$fe
1328: 60        clrc
1329: 84 83     adc   a,$83
132b: c4 83     mov   $83,a
132d: 6f        ret

; CPU cmd FC
; set echo delay from $8E & $0F and delay
132e: e4 8e     mov   a,$8e
1330: 28 0f     and   a,#$0f
1332: 64 81     cmp   a,$81
1334: f0 1b     beq   $1351
1336: 8f 00 83  mov   $83,#$00
1339: c4 81     mov   $81,a
133b: 3f 52 13  call  $1352             ; set new echo delay from $81
133e: cd 82     mov   x,#$82
1340: 3f f9 12  call  $12f9             ; delay for (X)-$83 timer1 periods
1343: 3f 97 13  call  $1397             ; enable FLG echo write
1346: cd 81     mov   x,#$81
1348: 3f f9 12  call  $12f9             ; delay for (X)-$83 timer1 periods
134b: e4 53     mov   a,$53
134d: d0 02     bne   $1351
134f: c4 4f     mov   $4f,a
1351: 6f        ret

; set new echo delay from $81
1352: 8f 6c f2  mov   $f2,#$6c
1355: e4 f3     mov   a,$f3
1357: 08 20     or    a,#$20
1359: c4 f3     mov   $f3,a             ; disable FLG echo write
135b: e8 00     mov   a,#$00
135d: 8d 4d     mov   y,#$4d
135f: 3f a3 07  call  $07a3             ; all echo vbits off
1362: 8d 0d     mov   y,#$0d
1364: 3f a3 07  call  $07a3             ; zero echo feedback
1367: 8d 2c     mov   y,#$2c
1369: 3f a3 07  call  $07a3             ; zero echo vol L
136c: 8d 3c     mov   y,#$3c
136e: 3f a3 07  call  $07a3             ; zero echo vol R
1371: 8d 7d     mov   y,#$7d
1373: cb f2     mov   $f2,y
1375: e4 f3     mov   a,$f3
1377: 28 0f     and   a,#$0f
1379: c4 82     mov   $82,a             ; save old DSP echo delay in $82
137b: e4 81     mov   a,$81
137d: 3f a3 07  call  $07a3             ; set new DSP echo delay from $81
1380: 1c        asl   a
1381: 1c        asl   a
1382: 1c        asl   a
1383: 48 ff     eor   a,#$ff
1385: bc        inc   a
1386: 60        clrc
1387: 88 f1     adc   a,#$f1
1389: 8d 6d     mov   y,#$6d
138b: 3f a3 07  call  $07a3             ; set echo start addr to $F100 - delay * 8
138e: 8f 01 f1  mov   $f1,#$01          ; stop timer1
1391: eb fe     mov   y,$fe             ; clear counter1
1393: 8f 03 f1  mov   $f1,#$03          ; start timer1
1396: 6f        ret

; enable FLG echo write
1397: 8f 01 f1  mov   $f1,#$01          ; stop timer1
139a: eb fe     mov   y,$fe             ; clear counter1
139c: 8f 03 f1  mov   $f1,#$03          ; start timer1
139f: 8f 6c f2  mov   $f2,#$6c
13a2: e4 f3     mov   a,$f3
13a4: 28 df     and   a,#$df
13a6: c4 f3     mov   $f3,a             ; enable FLG echo write
13a8: 6f        ret

; save song state
13a9: fa bc bb  mov   ($bb),($bc)
13ac: e8 00     mov   a,#$00
13ae: c4 93     mov   $93,a
13b0: e8 f2     mov   a,#$f2
13b2: c4 94     mov   $94,a
13b4: e8 00     mov   a,#$00
13b6: c4 95     mov   $95,a
13b8: e8 f8     mov   a,#$f8
13ba: c4 96     mov   $96,a
13bc: 8d 00     mov   y,#$00
13be: f7 93     mov   a,($93)+y
13c0: d7 95     mov   ($95)+y,a
13c2: fc        inc   y
13c3: d0 f9     bne   $13be
13c5: ab 94     inc   $94
13c7: ab 96     inc   $96
13c9: 78 f8 94  cmp   $94,#$f8
13cc: d0 f0     bne   $13be
13ce: 1a 95     decw  $95
13d0: 8d 80     mov   y,#$80
13d2: f6 ff ff  mov   a,$ffff+y
13d5: d7 95     mov   ($95)+y,a
13d7: fe f9     dbnz  y,$13d2
13d9: ab 96     inc   $96
13db: 8d 90     mov   y,#$90
13dd: f6 ff 00  mov   a,$00ff+y
13e0: d7 95     mov   ($95)+y,a
13e2: fe f9     dbnz  y,$13dd
13e4: 6f        ret

; restore song state
13e5: 8f ff bb  mov   $bb,#$ff
13e8: e8 00     mov   a,#$00
13ea: c4 93     mov   $93,a
13ec: e8 f2     mov   a,#$f2
13ee: c4 94     mov   $94,a
13f0: e8 00     mov   a,#$00
13f2: c4 95     mov   $95,a
13f4: e8 f8     mov   a,#$f8
13f6: c4 96     mov   $96,a
13f8: 8d 00     mov   y,#$00
13fa: f7 95     mov   a,($95)+y
13fc: d7 93     mov   ($93)+y,a
13fe: fc        inc   y
13ff: d0 f9     bne   $13fa
1401: ab 94     inc   $94
1403: ab 96     inc   $96
1405: 78 f8 94  cmp   $94,#$f8
1408: d0 f0     bne   $13fa
140a: 1a 95     decw  $95
140c: 8d 80     mov   y,#$80
140e: f7 95     mov   a,($95)+y
1410: d6 ff ff  mov   $ffff+y,a
1413: fe f9     dbnz  y,$140e
1415: ab 96     inc   $96
1417: 8d 90     mov   y,#$90
1419: f7 95     mov   a,($95)+y
141b: d6 ff 00  mov   $00ff+y,a
141e: fe f9     dbnz  y,$1419
1420: e8 10     mov   a,#$10
1422: c5 66 f1  mov   $f166,a
1425: cc 60 f1  mov   $f160,y
1428: 8d f0     mov   y,#$f0
142a: cc 6c f1  mov   $f16c,y
142d: 8d 0e     mov   y,#$0e
142f: cc 6d f1  mov   $f16d,y
1432: e8 10     mov   a,#$10
1434: c5 61 f1  mov   $f161,a
1437: 6f        ret

; read wave height regs
1438: e8 9b     mov   a,#$9b
143a: c4 a0     mov   $a0,a
143c: e8 be     mov   a,#$be
143e: 8f 00 a4  mov   $a4,#$00
1441: 60        clrc
1442: 8f 09 91  mov   $91,#$09
1445: 83 88 02  bbs4  $88,$144a
1448: 2f 06     bra   $1450
144a: 88 08     adc   a,#$08
144c: c2 91     set6  $91
144e: e2 a4     set7  $a4
1450: c4 a1     mov   $a1,a
1452: 88 08     adc   a,#$08
1454: c4 a3     mov   $a3,a
1456: f8 a1     mov   x,$a1
1458: eb 91     mov   y,$91
145a: cb f2     mov   $f2,y
145c: eb f3     mov   y,$f3
145e: cb a2     mov   $a2,y
1460: bf        mov   a,(x)+
1461: 1c        asl   a
1462: cf        mul   ya
1463: dd        mov   a,y
1464: 28 70     and   a,#$70
1466: c4 9f     mov   $9f,a
1468: eb a2     mov   y,$a2
146a: bf        mov   a,(x)+
146b: 1c        asl   a
146c: cf        mul   ya
146d: dd        mov   a,y
146e: d8 a1     mov   $a1,x
1470: f8 a0     mov   x,$a0
1472: 9f        xcn   a
1473: 28 07     and   a,#$07
1475: 04 9f     or    a,$9f
1477: 04 a4     or    a,$a4
1479: af        mov   (x)+,a
147a: d8 a0     mov   $a0,x
147c: 60        clrc
147d: 98 10 91  adc   $91,#$10
1480: f8 a1     mov   x,$a1
1482: 3e a3     cmp   x,$a3
1484: d0 d2     bne   $1458
1486: ba 9b     movw  ya,$9b
1488: da f4     movw  $f4,ya
148a: ba 9d     movw  ya,$9d
148c: da f6     movw  $f6,ya
148e: ea 88 80  not1  $1011,0
1491: 6f        ret

; do global fades
1492: e5 66 f1  mov   a,$f166
1495: f0 31     beq   $14c8
1497: 9c        dec   a
1498: c5 66 f1  mov   $f166,a
149b: 5d        mov   x,a
149c: e5 60 f1  mov   a,$f160
149f: 60        clrc
14a0: 85 6c f1  adc   a,$f16c
14a3: c5 60 f1  mov   $f160,a
14a6: e5 61 f1  mov   a,$f161
14a9: 85 6d f1  adc   a,$f16d
14ac: 65 61 f1  cmp   a,$f161
14af: c5 61 f1  mov   $f161,a
14b2: f0 03     beq   $14b7
14b4: 09 53 d0  or    ($d0),($53)
14b7: fd        mov   y,a
14b8: d0 0e     bne   $14c8
14ba: 7d        mov   a,x
14bb: d0 0b     bne   $14c8
14bd: ba bb     movw  ya,$bb
14bf: 2d        push  a
14c0: 6d        push  y
14c1: 3f 17 0f  call  $0f17
14c4: ee        pop   y
14c5: ae        pop   a
14c6: da bb     movw  $bb,ya
14c8: e5 68 f1  mov   a,$f168
14cb: f0 29     beq   $14f6
14cd: 9c        dec   a
14ce: c5 68 f1  mov   $f168,a
14d1: 5d        mov   x,a
14d2: e5 62 f1  mov   a,$f162
14d5: 60        clrc
14d6: 85 6e f1  adc   a,$f16e
14d9: c5 62 f1  mov   $f162,a
14dc: e5 63 f1  mov   a,$f163
14df: 85 6f f1  adc   a,$f16f
14e2: 65 63 f1  cmp   a,$f163
14e5: c5 63 f1  mov   $f163,a
14e8: f0 03     beq   $14ed
14ea: 18 c0 d0  or    $d0,#$c0
14ed: fd        mov   y,a
14ee: d0 06     bne   $14f6
14f0: 7d        mov   a,x
14f1: d0 03     bne   $14f6
14f3: 3f 3f 0f  call  $0f3f
14f6: e5 6a f1  mov   a,$f16a
14f9: f0 29     beq   $1524
14fb: 9c        dec   a
14fc: c5 6a f1  mov   $f16a,a
14ff: 5d        mov   x,a
1500: e5 64 f1  mov   a,$f164
1503: 60        clrc
1504: 85 70 f1  adc   a,$f170
1507: c5 64 f1  mov   $f164,a
150a: e5 65 f1  mov   a,$f165
150d: 85 71 f1  adc   a,$f171
1510: 65 65 f1  cmp   a,$f165
1513: c5 65 f1  mov   $f165,a
1516: f0 03     beq   $151b
1518: 18 30 d0  or    $d0,#$30
151b: fd        mov   y,a
151c: d0 06     bne   $1524
151e: 7d        mov   a,x
151f: d0 03     bne   $1524
1521: 3f 71 0f  call  $0f71
1524: e4 ad     mov   a,$ad
1526: f0 08     beq   $1530
1528: 8b ad     dec   $ad
152a: ba ab     movw  ya,$ab
152c: 7a a9     addw  ya,$a9
152e: da a9     movw  $a9,ya
1530: e4 b4     mov   a,$b4
1532: f0 0f     beq   $1543
1534: 8b b4     dec   $b4
1536: ba b2     movw  ya,$b2
1538: 7a ae     addw  ya,$ae
153a: 7e af     cmp   y,$af
153c: da ae     movw  $ae,ya
153e: f0 03     beq   $1543
1540: 09 53 d1  or    ($d1),($53)
1543: 6f        ret

; CPU FE dispatch table
1544: dw $11e4  ; 0
1546: dw $11b2  ; 1
1548: dw $1167  ; 2
154a: dw $107c  ; 3
154c: dw $11e4  ; 4
154e: dw $10ec  ; 5
1550: dw $11e4  ; 6
1552: dw $1206  ; 7

; vcmd dispatch table
1554: dw $175f  ; c4
1556: dw $1770  ; c5
1558: dw $17ba  ; c6
155a: dw $17ce  ; c7
155c: dw $17f2  ; c8
155e: dw $186e  ; c9
1560: dw $192e  ; ca
1562: dw $1938  ; cb
1564: dw $198e  ; cc
1566: dw $1998  ; cd
1568: dw $19ee  ; ce
156a: dw $1a78  ; cf - set/change noise freq
156c: dw $1a3c  ; d0 - noise on
156e: dw $1a68  ; d1 - noise off
1570: dw $1a98  ; d2 - pitchmod on
1572: dw $1ab5  ; d3 - pitchmod off
1574: dw $1a15  ; d4 - echo on
1576: dw $1a2c  ; d5 - echo off
1578: dw $1a0e  ; d6
157a: dw $19fa  ; d7
157c: dw $1a04  ; d8
157e: dw $1801  ; d9
1580: dw $17fd  ; da
1582: dw $1cf2  ; db
1584: dw $1acf  ; dc - patch change
1586: dw $1afc  ; dd - ADSR attack
1588: dw $1b2a  ; de - ADSR decay
158a: dw $1b3d  ; df - ADSR sustain
158c: dw $1b4f  ; e0 - ADSR release
158e: dw $1b5f  ; e1 - default ADSR for patch
1590: dw $1c64  ; e2
1592: dw $1c94  ; e3
1594: dw $1b72  ; e4
1596: dw $12dd  ; e5 - nop
1598: dw $1b9a  ; e6
159a: dw $12dd  ; e7 - nop
159c: dw $1cef  ; e8
159e: dw $1ba8  ; e9
15a0: dw $1bac  ; ea
15a2: dw $1d4a  ; eb - halt
15a4: dw $1d4a  ; ec - halt
15a6: dw $1d4a  ; ed - halt
15a8: dw $1d4a  ; ee - halt
15aa: dw $1d4a  ; ef - halt
15ac: dw $1722  ; f0 - set tempo
15ae: dw $1732  ; f1 - fade tempo
15b0: dw $1791  ; f2
15b2: dw $179a  ; f3
15b4: dw $1751  ; f4
15b6: dw $1c09  ; f5
15b8: dw $1bee  ; f6
15ba: dw $1805  ; f7 - set/fade echo feedback
15bc: dw $1826  ; f8 - set/fade echo filter
15be: dw $1cf6  ; f9
15c0: dw $1cfb  ; fa
15c2: dw $1ac5  ; fb
15c4: dw $1ac9  ; fc
15c6: dw $1757  ; fd - expression
15c8: dw $1d4a  ; fe - halt
15ca: dw $1d4a  ; ff - halt

; vcmd oplens
15cc: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
15d8: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
15e8: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00
15f8: db $01,$02,$01,$02,$01,$03,$02,$02,$02,$01,$03,$00,$00,$01,$00,$00

; readahead dispatch tbl?
1608:                            $0000,$0000,$0000,$0000  ; c4
1610: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000  ; c8
1620: dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000  ; d0
1630: dw $0000,$0000,$0000,$0000,$1b86,$0000,$0000,$0000  ; d8
1640: dw $0000,$0000,$0000,$1cc9,$1b86,$1b86,$1b86,$1b86  ; e0
1650: dw $0000,$1bd9,$1bdd,$0000,$0000,$0000,$0000,$0000  ; e8
1660: dw $0000,$0000,$0000,$0000,$0000,$1c39,$1bfc,$0000  ; f0
1670: dw $0000,$0000,$1d2a,$0000,$0000,$0000,$0000,$0000  ; f8

; CPU cmds $10-$1F
1680: dw $0bdb  ; 10
1682: dw $0be3  ; 11
1684: dw $12dd  ; 12 - nop
1686: dw $12dd  ; 13 - nop
1688: dw $0bd8  ; 14
168a: dw $0be0  ; 15
168c: dw $12dd  ; 16 - nop
168e: dw $12dd  ; 17 - nop
1690: dw $0d45  ; 18
1692: dw $0d51  ; 19
1694: dw $12dd  ; 1a - nop
1696: dw $12dd  ; 1b - nop
1698: dw $12dd  ; 1c - nop
169a: dw $12dd  ; 1d - nop
169c: dw $12dd  ; 1e - nop
169e: dw $12dd  ; 1f - nop

; CPU cmds $10-1F dispatch tbl
16a0: dw $0d29  ; 10
16a2: dw $0d29  ; 11
16a4: dw $0000  ; 12
16a6: dw $0000  ; 13
16a8: dw $0d29  ; 14
16aa: dw $0d29  ; 15
16ac: dw $0000  ; 16
16ae: dw $0000  ; 17
16b0: dw $0000  ; 18
16b2: dw $0000  ; 19
16b4: dw $0000  ; 1a
16b6: dw $0000  ; 1b
16b8: dw $0000  ; 1c
16ba: dw $0000  ; 1d
16bc: dw $0000  ; 1e
16be: dw $0000  ; 1f
; CPU cmd dispatch tbl
16c0: dw $0e11  ; 80
16c2: dw $0e1a  ; 81
16c4: dw $0e22  ; 82
16c6: dw $0e2a  ; 83
16c8: dw $12dd  ; 84 - nop
16ca: dw $0e7f  ; 85
16cc: dw $0e82  ; 86
16ce: dw $0eaa  ; 87
16d0: dw $12b6  ; 88
16d2: dw $0ed6  ; 89
16d4: dw $12dd  ; 8a - nop
16d6: dw $12dd  ; 8b - nop
16d8: dw $12dd  ; 8c - nop
16da: dw $12dd  ; 8d - nop
16dc: dw $0ee6  ; 8e
16de: dw $12dd  ; 8f - nop
16e0: dw $0f0e  ; f0
16e2: dw $0f17  ; f1
16e4: dw $0f3c  ; f2
16e6: dw $0f00  ; f3
16e8: dw $0fa5  ; f4
16ea: dw $0fbe  ; f5
16ec: dw $129d  ; f6
16ee: dw $12dd  ; f7 - nop
16f0: dw $0fac  ; f8
16f2: dw $0fb5  ; f9
16f4: dw $12dd  ; fa - nop
16f6: dw $12dd  ; fb - nop
16f8: dw $132e  ; fc
16fa: dw $12f2  ; fd
16fc: dw $100e  ; fe
16fe: dw $12bd  ; ff

; shadow reg table
1700: db $4c,$2d,$3d,$6c,$5c,$4d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f
1711: db $22,$8b,$8a,$8c,$23,$89,$d9,$d9,$76,$66,$68,$6a,$6c,$6e,$70,$72,$74
;; 22 - 4c - key on
;; 8b - 2d - pitchmod vbits (from 58/9)
;; 8a - 3d - noise vbits (from 56/7)
;; 8c - 6c - FLG (noise freq from 62/3)
;; 23 - 5c - key off
;; 89 - 4d - echo vbits (from 54/5)
;; d9 - 2c,3c - echo vol L/R
;; 76 - 0d - echo feedback
;; 66-75 - 0f-7f - echo filter

; vcmd f0 - set tempo
1722: 8d 14     mov   y,#$14
1723: cf        mul   ya
1725: dd        mov   a,y
1726: 60        clrc
1727: 84 a5     adc   a,$a5
1729: c4 47     mov   $47,a
172b: e8 00     mov   a,#$00
172d: c4 46     mov   $46,a
172f: c4 4a     mov   $4a,a
1731: 6f        ret

; vcmd f1 - fade tempo
1732: c4 4a     mov   $4a,a
1734: c4 8e     mov   $8e,a
1736: 3f 53 07  call  $0753
1739: eb 8e     mov   y,$8e
173b: f0 e5     beq   $1722
173d: 8d 14     mov   y,#$14
173f: cf        mul   ya
1740: dd        mov   a,y
1741: 60        clrc
1742: 84 a5     adc   a,$a5
1744: 80        setc
1745: a4 47     sbc   a,$47
1747: f0 e6     beq   $172f
1749: 3f 5f 0e  call  $0e5f
174c: f8 a6     mov   x,$a6
174e: da 4b     movw  $4b,ya
1750: 6f        ret

; vcmd f4
1751: c4 4d     mov   $4d,a
1753: 09 53 d0  or    ($d0),($53)
1756: 6f        ret

; vcmd fd - expression
1757: 1c        asl   a
1758: d5 20 f2  mov   $f220+x,a
175b: 09 91 d0  or    ($d0),($91)
175e: 6f        ret

; vcmd c4
175f: 28 7f     and   a,#$7f
1761: d5 41 f2  mov   $f241+x,a
1764: e8 00     mov   a,#$00
1766: d5 40 f2  mov   $f240+x,a
1769: 09 91 d0  or    ($d0),($91)
176c: d5 c0 f2  mov   $f2c0+x,a
176f: 6f        ret

; vcmd c5
1770: d5 c0 f2  mov   $f2c0+x,a
1773: c4 8e     mov   $8e,a
1775: 3f 53 07  call  $0753
1778: 28 7f     and   a,#$7f
177a: eb 8e     mov   y,$8e
177c: f0 e1     beq   $175f
177e: 80        setc
177f: b5 41 f2  sbc   a,$f241+x
1782: f0 e8     beq   $176c
1784: 3f 5f 0e  call  $0e5f
1787: f8 a6     mov   x,$a6
1789: d5 60 f2  mov   $f260+x,a
178c: dd        mov   a,y
178d: d5 61 f2  mov   $f261+x,a
1790: 6f        ret

; vcmd f2
1791: c4 4f     mov   $4f,a
1793: e8 00     mov   a,#$00
1795: c4 4e     mov   $4e,a
1797: c4 52     mov   $52,a
1799: 6f        ret

; vcmd f3
179a: c4 52     mov   $52,a
179c: c4 8e     mov   $8e,a
179e: 3f 53 07  call  $0753
17a1: eb 8e     mov   y,$8e
17a3: f0 ec     beq   $1791
17a5: 48 80     eor   a,#$80
17a7: ea 4f e0  not1  $1c09,7
17aa: 80        setc
17ab: a4 4f     sbc   a,$4f
17ad: ea 4f e0  not1  $1c09,7
17b0: f0 e5     beq   $1797
17b2: 3f 5f 0e  call  $0e5f
17b5: f8 a6     mov   x,$a6
17b7: da 50     movw  $50,ya
17b9: 6f        ret

; vcmd c6
17ba: c8 10     cmp   x,#$10
17bc: b0 0f     bcs   $17cd
17be: 1c        asl   a
17bf: d5 81 f2  mov   $f281+x,a
17c2: e8 00     mov   a,#$00
17c4: d5 80 f2  mov   $f280+x,a
17c7: 09 91 d0  or    ($d0),($91)
17ca: d5 c1 f2  mov   $f2c1+x,a
17cd: 6f        ret

; vcmd c7
17ce: d5 c1 f2  mov   $f2c1+x,a
17d1: c4 8e     mov   $8e,a
17d3: 3f 53 07  call  $0753
17d6: c8 10     cmp   x,#$10
17d8: b0 17     bcs   $17f1
17da: eb 8e     mov   y,$8e
17dc: f0 dc     beq   $17ba
17de: 1c        asl   a
17df: 80        setc
17e0: b5 81 f2  sbc   a,$f281+x
17e3: f0 e5     beq   $17ca
17e5: 3f 5f 0e  call  $0e5f
17e8: f8 a6     mov   x,$a6
17ea: d5 a0 f2  mov   $f2a0+x,a
17ed: dd        mov   a,y
17ee: d5 a1 f2  mov   $f2a1+x,a
17f1: 6f        ret

; vcmd c8
17f2: bc        inc   a
17f3: d5 60 f3  mov   $f360+x,a
17f6: 3f 53 07  call  $0753
17f9: d5 50 01  mov   $0150+x,a
17fc: 6f        ret

; vcmd da
17fd: 60        clrc
17fe: 95 61 f3  adc   a,$f361+x
; vcmd d9
1801: d5 61 f3  mov   $f361+x,a
1804: 6f        ret

; vcmd f7 - set/fade echo feedback
1805: c4 78     mov   $78,a
1807: c4 8e     mov   $8e,a
1809: 3f 53 07  call  $0753
180c: eb 8e     mov   y,$8e
180e: f0 13     beq   $1823
1810: 48 80     eor   a,#$80
1812: ea 76 e0  not1  $1c0e,6
1815: 80        setc
1816: a4 76     sbc   a,$76
1818: ea 76 e0  not1  $1c0e,6
181b: 3f 5f 0e  call  $0e5f
181e: f8 a6     mov   x,$a6
1820: da 79     movw  $79,ya
1822: 6f        ret

1823: c4 76     mov   $76,a
1825: 6f        ret

; vcmd f8 - set/fade filter
1826: c4 77     mov   $77,a
1828: c4 8e     mov   $8e,a
182a: 3f 53 07  call  $0753
182d: 28 03     and   a,#$03
182f: bc        inc   a
1830: 1c        asl   a
1831: 1c        asl   a
1832: 1c        asl   a
1833: fd        mov   y,a
1834: cd 10     mov   x,#$10
1836: e4 8e     mov   a,$8e
1838: f0 27     beq   $1861
183a: e8 00     mov   a,#$00
183c: d4 63     mov   $63+x,a
183e: f4 64     mov   a,$64+x
1840: 48 80     eor   a,#$80
1842: c4 9b     mov   $9b,a
1844: f6 92 1d  mov   a,$1d92+y         ; filter coeff table
1847: 48 80     eor   a,#$80
1849: 80        setc
184a: a4 9b     sbc   a,$9b
184c: 6d        push  y
184d: 4d        push  x
184e: 3f 5f 0e  call  $0e5f
1851: ce        pop   x
1852: d5 fe 00  mov   $00fe+x,a
1855: dd        mov   a,y
1856: d5 ff 00  mov   $00ff+x,a
1859: ee        pop   y
185a: dc        dec   y
185b: 1d        dec   x
185c: 1d        dec   x
185d: d0 db     bne   $183a
185f: 2f 0a     bra   $186b
1861: f6 92 1d  mov   a,$1d92+y         ; filter coeff table
1864: d4 64     mov   $64+x,a
1866: dc        dec   y
1867: 1d        dec   x
1868: 1d        dec   x
1869: d0 f6     bne   $1861
186b: f8 a6     mov   x,$a6
186d: 6f        ret

; vcmd c9
186e: c8 10     cmp   x,#$10
1870: 90 08     bcc   $187a
1872: 8d 00     mov   y,#$00
1874: cd 0c     mov   x,#$0c
1876: 9e        div   ya,x
1877: f8 a6     mov   x,$a6
1879: dd        mov   a,y
187a: d5 10 01  mov   $0110+x,a
187d: 3f 53 07  call  $0753
1880: d5 e0 f2  mov   $f2e0+x,a
1883: c4 9b     mov   $9b,a
1885: 3f 53 07  call  $0753
1888: d5 51 01  mov   $0151+x,a
188b: 3f de 18  call  $18de
188e: f8 a6     mov   x,$a6
1890: e4 9b     mov   a,$9b
1892: d5 00 f4  mov   $f400+x,a
1895: e4 9c     mov   a,$9c
1897: d5 01 f4  mov   $f401+x,a
189a: e8 00     mov   a,#$00
189c: d5 00 f5  mov   $f500+x,a
189f: d5 01 f5  mov   $f501+x,a
18a2: e8 00     mov   a,#$00
18a4: d5 80 f4  mov   $f480+x,a
18a7: d5 81 f4  mov   $f481+x,a
18aa: f5 e0 f2  mov   a,$f2e0+x
18ad: d5 e1 f2  mov   $f2e1+x,a
18b0: f5 01 f4  mov   a,$f401+x
18b3: fd        mov   y,a
18b4: f5 00 f4  mov   a,$f400+x
18b7: da 9b     movw  $9b,ya
18b9: f5 21 f2  mov   a,$f221+x
18bc: 28 70     and   a,#$70
18be: fd        mov   y,a
18bf: c8 10     cmp   x,#$10
18c1: 90 04     bcc   $18c7
18c3: e8 00     mov   a,#$00
18c5: 2f 03     bra   $18ca
18c7: f5 10 01  mov   a,$0110+x
18ca: d5 11 01  mov   $0111+x,a
18cd: 3f 08 19  call  $1908
18d0: d5 21 f2  mov   $f221+x,a
18d3: e4 9b     mov   a,$9b
18d5: d5 20 f4  mov   $f420+x,a
18d8: e4 9c     mov   a,$9c
18da: d5 21 f4  mov   $f421+x,a
18dd: 6f        ret

18de: 28 3f     and   a,#$3f
18e0: bc        inc   a
18e1: 8d 00     mov   y,#$00
18e3: cb 9c     mov   $9c,y
18e5: f8 9b     mov   x,$9b
18e7: f0 06     beq   $18ef
18e9: 9e        div   ya,x
18ea: c4 9c     mov   $9c,a
18ec: e8 00     mov   a,#$00
18ee: 9e        div   ya,x
18ef: c4 9b     mov   $9b,a
18f1: 4b 9c     lsr   $9c
18f3: 6b 9b     ror   $9b
18f5: 4b 9c     lsr   $9c
18f7: 6b 9b     ror   $9b
18f9: ba 9b     movw  ya,$9b
18fb: d0 02     bne   $18ff
18fd: ab 9b     inc   $9b
18ff: 0b 9b     asl   $9b
1901: 2b 9c     rol   $9c
1903: 0b 9b     asl   $9b
1905: 2b 9c     rol   $9c
1907: 6f        ret

1908: 0d        push  psw
1909: f0 08     beq   $1913
190b: 4b 9c     lsr   $9c
190d: 6b 9b     ror   $9b
190f: 4b 9c     lsr   $9c
1911: 6b 9b     ror   $9b
1913: 78 80 a5  cmp   $a5,#$80
1916: 90 0d     bcc   $1925
1918: 78 c0 a5  cmp   $a5,#$c0
191b: b0 08     bcs   $1925
191d: 58 ff 9b  eor   $9b,#$ff
1920: 58 ff 9c  eor   $9c,#$ff
1923: 3a 9b     incw  $9b
1925: 8e        pop   psw
1926: f0 04     beq   $192c
1928: dd        mov   a,y
1929: 08 07     or    a,#$07
192b: 8d dd     mov   y,#$dd
192d: 6f        ret

; vcmd ca
192e: d5 51 01  mov   $0151+x,a
1931: d5 00 f5  mov   $f500+x,a
1934: d5 01 f5  mov   $f501+x,a
1937: 6f        ret

; vcmd cb
1938: d5 30 01  mov   $0130+x,a
193b: 3f 53 07  call  $0753
193e: d5 20 f3  mov   $f320+x,a
1941: c4 9b     mov   $9b,a
1943: 3f 53 07  call  $0753
1946: d5 70 01  mov   $0170+x,a
1949: 3f de 18  call  $18de
194c: f8 a6     mov   x,$a6
194e: e4 9b     mov   a,$9b
1950: d5 40 f4  mov   $f440+x,a
1953: e4 9c     mov   a,$9c
1955: d5 41 f4  mov   $f441+x,a
1958: e8 00     mov   a,#$00
195a: d5 a0 f4  mov   $f4a0+x,a
195d: d5 a1 f4  mov   $f4a1+x,a
1960: f5 20 f3  mov   a,$f320+x
1963: d5 21 f3  mov   $f321+x,a
1966: f5 41 f4  mov   a,$f441+x
1969: fd        mov   y,a
196a: f5 40 f4  mov   a,$f440+x
196d: da 9b     movw  $9b,ya
196f: f5 21 f2  mov   a,$f221+x
1972: 28 07     and   a,#$07
1974: 9f        xcn   a
1975: fd        mov   y,a
1976: f5 30 01  mov   a,$0130+x
1979: d5 31 01  mov   $0131+x,a
197c: 3f 08 19  call  $1908
197f: 9f        xcn   a
1980: d5 21 f2  mov   $f221+x,a
1983: e4 9b     mov   a,$9b
1985: d5 60 f4  mov   $f460+x,a
1988: e4 9c     mov   a,$9c
198a: d5 61 f4  mov   $f461+x,a
198d: 6f        ret

; vcmd cc
198e: d5 70 01  mov   $0170+x,a
1991: d5 a0 f4  mov   $f4a0+x,a
1994: d5 a1 f4  mov   $f4a1+x,a
1997: 6f        ret

; vcmd cd
1998: 60        clrc
1999: bc        inc   a
199a: f0 08     beq   $19a4
199c: 28 fe     and   a,#$fe
199e: d0 05     bne   $19a5
19a0: e8 02     mov   a,#$02
19a2: 2f 01     bra   $19a5
19a4: 80        setc
19a5: d5 40 f3  mov   $f340+x,a
19a8: 7c        ror   a
19a9: d5 41 f3  mov   $f341+x,a
19ac: fd        mov   y,a
19ad: 3f 53 07  call  $0753
19b0: 1c        asl   a
19b1: e4 a5     mov   a,$a5
19b3: 28 7f     and   a,#$7f
19b5: 90 02     bcc   $19b9
19b7: 48 7f     eor   a,#$7f
19b9: c4 9b     mov   $9b,a
19bb: dd        mov   a,y
19bc: 10 05     bpl   $19c3
19be: 8f 00 9c  mov   $9c,#$00
19c1: 2f 13     bra   $19d6
19c3: 5d        mov   x,a
19c4: 8d 00     mov   y,#$00
19c6: e4 9b     mov   a,$9b
19c8: 9e        div   ya,x
19c9: c4 9c     mov   $9c,a
19cb: e8 00     mov   a,#$00
19cd: 9e        div   ya,x
19ce: c4 9b     mov   $9b,a
19d0: ba 9b     movw  ya,$9b
19d2: d0 02     bne   $19d6
19d4: ab 9b     inc   $9b
19d6: 90 08     bcc   $19e0
19d8: 58 ff 9b  eor   $9b,#$ff
19db: 58 ff 9c  eor   $9c,#$ff
19de: 3a 9b     incw  $9b
19e0: f8 a6     mov   x,$a6
19e2: e4 9b     mov   a,$9b
19e4: d5 e0 f3  mov   $f3e0+x,a
19e7: e4 9c     mov   a,$9c
19e9: d5 e1 f3  mov   $f3e1+x,a
19ec: e4 a5     mov   a,$a5
; vcmd ce
19ee: d5 71 01  mov   $0171+x,a
19f1: e8 00     mov   a,#$00
19f3: d5 c0 f4  mov   $f4c0+x,a
19f6: d5 c1 f4  mov   $f4c1+x,a
19f9: 6f        ret

; vcmd d7
19fa: f5 00 f2  mov   a,$f200+x
19fd: 60        clrc
19fe: 88 0c     adc   a,#$0c
1a00: d5 00 f2  mov   $f200+x,a
1a03: 6f        ret

; vcmd d8
1a04: f5 00 f2  mov   a,$f200+x
1a07: 80        setc
1a08: a8 0c     sbc   a,#$0c
1a0a: d5 00 f2  mov   $f200+x,a
1a0d: 6f        ret

; vcmd d6
1a0e: 8d 0c     mov   y,#$0c
1a10: cf        mul   ya
1a11: d5 00 f2  mov   $f200+x,a
1a14: 6f        ret

; vcmd d4 - echo on
1a15: c8 10     cmp   x,#$10
1a17: b0 05     bcs   $1a1e
1a19: 09 91 54  or    ($54),($91)
1a1c: 2f 03     bra   $1a21
1a1e: 09 91 55  or    ($55),($91)
1a21: e4 86     mov   a,$86
1a23: 48 ff     eor   a,#$ff
1a25: 24 54     and   a,$54
1a27: 04 55     or    a,$55
1a29: c4 89     mov   $89,a             ; echo vbits shadow
1a2b: 6f        ret

; vcmd d5 - echo off
1a2c: e4 91     mov   a,$91
1a2e: c8 10     cmp   x,#$10
1a30: b0 05     bcs   $1a37
1a32: 4e 54 00  tclr1 $0054
1a35: 2f ea     bra   $1a21
1a37: 4e 55 00  tclr1 $0055
1a3a: 2f e5     bra   $1a21

; vcmd d0 - noise on
1a3c: c8 10     cmp   x,#$10
1a3e: b0 05     bcs   $1a45
1a40: 09 91 56  or    ($56),($91)
1a43: 2f 03     bra   $1a48
1a45: 09 91 57  or    ($57),($91)
1a48: fa 57 9b  mov   ($9b),($57)
1a4b: 12 9b     clr0  $9b
1a4d: e4 8c     mov   a,$8c
1a4f: 28 e0     and   a,#$e0
1a51: eb 57     mov   y,$57
1a53: d0 04     bne   $1a59
1a55: 04 62     or    a,$62
1a57: 2f 02     bra   $1a5b
1a59: 04 63     or    a,$63
1a5b: c4 8c     mov   $8c,a             ; FLG shadow
1a5d: e4 86     mov   a,$86
1a5f: 48 ff     eor   a,#$ff
1a61: 24 56     and   a,$56
1a63: 04 9b     or    a,$9b
1a65: c4 8a     mov   $8a,a             ; noise vbits shadow
1a67: 6f        ret

; vcmd d1 - noise off
1a68: e4 91     mov   a,$91
1a6a: c8 10     cmp   x,#$10
1a6c: b0 05     bcs   $1a73
1a6e: 4e 56 00  tclr1 $0056
1a71: 2f d5     bra   $1a48
1a73: 4e 57 00  tclr1 $0057
1a76: 2f d0     bra   $1a48

; vcmd cf - set/change noise freq
1a78: 28 1f     and   a,#$1f
1a7a: c8 10     cmp   x,#$10
1a7c: b0 0d     bcs   $1a8b
1a7e: 64 a5     cmp   a,$a5
1a80: f0 05     beq   $1a87
1a82: 60        clrc
1a83: 84 62     adc   a,$62
1a85: 28 1f     and   a,#$1f
1a87: c4 62     mov   $62,a
1a89: 2f bd     bra   $1a48
1a8b: 64 a5     cmp   a,$a5
1a8d: f0 05     beq   $1a94
1a8f: 60        clrc
1a90: 84 63     adc   a,$63
1a92: 28 1f     and   a,#$1f
1a94: c4 63     mov   $63,a
1a96: 2f b0     bra   $1a48

; vcmd d2 - pitchmod on
1a98: c8 10     cmp   x,#$10
1a9a: b0 05     bcs   $1aa1
1a9c: 09 91 58  or    ($58),($91)
1a9f: 2f 09     bra   $1aaa
1aa1: e4 91     mov   a,$91
1aa3: 28 50     and   a,#$50
1aa5: d0 03     bne   $1aaa
1aa7: 09 91 59  or    ($59),($91)
1aaa: e4 86     mov   a,$86
1aac: 48 ff     eor   a,#$ff
1aae: 24 58     and   a,$58
1ab0: 04 59     or    a,$59
1ab2: c4 8b     mov   $8b,a             ; pitchmod vbits shadow
1ab4: 6f        ret

; vcmd d3 - pitchmod off
1ab5: e4 91     mov   a,$91
1ab7: c8 10     cmp   x,#$10
1ab9: b0 05     bcs   $1ac0
1abb: 4e 58 00  tclr1 $0058
1abe: 2f ea     bra   $1aaa
1ac0: 4e 59 00  tclr1 $0059
1ac3: 2f e5     bra   $1aaa
; vcmd fb
1ac5: 09 91 7c  or    ($7c),($91)
1ac8: 6f        ret

; vcmd fc
1ac9: e4 91     mov   a,$91
1acb: 4e 7c 00  tclr1 $007c
1ace: 6f        ret

; vcmd dc - patch change
1acf: d5 01 f2  mov   $f201+x,a
1ad2: 1c        asl   a
1ad3: fd        mov   y,a
1ad4: f6 00 1f  mov   a,$1f00+y
1ad7: d5 80 f3  mov   $f380+x,a
1ada: f6 01 1f  mov   a,$1f01+y
1add: d5 81 f3  mov   $f381+x,a
1ae0: f6 80 1f  mov   a,$1f80+y
1ae3: d5 40 f5  mov   $f540+x,a
1ae6: f6 81 1f  mov   a,$1f81+y
1ae9: d5 41 f5  mov   $f541+x,a
1aec: 6f        ret

; set SRCN, ADSR1/2 from shadows
1aed: f5 01 f2  mov   a,$f201+x
1af0: fd        mov   y,a
1af1: 7d        mov   a,x
1af2: 9f        xcn   a
1af3: 5c        lsr   a
1af4: 08 04     or    a,#$04
1af6: c4 f2     mov   $f2,a
1af8: cb f3     mov   $f3,y
1afa: 2f 10     bra   $1b0c

; vcmd dd - ADSR attack
1afc: 28 0f     and   a,#$0f
1afe: c4 a5     mov   $a5,a
1b00: f5 40 f5  mov   a,$f540+x
1b03: 28 70     and   a,#$70
1b05: 04 a5     or    a,$a5
1b07: 08 80     or    a,#$80
1b09: d5 40 f5  mov   $f540+x,a
1b0c: c8 10     cmp   x,#$10
1b0e: b0 07     bcs   $1b17
1b10: e4 86     mov   a,$86
1b12: 24 91     and   a,$91
1b14: f0 01     beq   $1b17
1b16: 6f        ret

1b17: 7d        mov   a,x
1b18: 9f        xcn   a
1b19: 5c        lsr   a
1b1a: 08 05     or    a,#$05
1b1c: fd        mov   y,a
1b1d: f5 40 f5  mov   a,$f540+x
1b20: 3f a3 07  call  $07a3
1b23: fc        inc   y
1b24: f5 41 f5  mov   a,$f541+x
1b27: 5f a3 07  jmp   $07a3

; vcmd de - ADSR decay
1b2a: 28 07     and   a,#$07
1b2c: 9f        xcn   a
1b2d: c4 a5     mov   $a5,a
1b2f: f5 40 f5  mov   a,$f540+x
1b32: 28 0f     and   a,#$0f
1b34: 04 a5     or    a,$a5
1b36: 08 80     or    a,#$80
1b38: d5 40 f5  mov   $f540+x,a
1b3b: 2f cf     bra   $1b0c

; vcmd df - ADSR sustain
1b3d: 28 07     and   a,#$07
1b3f: 9f        xcn   a
1b40: 1c        asl   a
1b41: c4 a5     mov   $a5,a
1b43: f5 41 f5  mov   a,$f541+x
1b46: 28 1f     and   a,#$1f
1b48: 04 a5     or    a,$a5
1b4a: d5 41 f5  mov   $f541+x,a
1b4d: 2f bd     bra   $1b0c

; vcmd e0 - ADSR release
1b4f: 28 1f     and   a,#$1f
1b51: c4 a5     mov   $a5,a
1b53: f5 41 f5  mov   a,$f541+x
1b56: 28 e0     and   a,#$e0
1b58: 04 a5     or    a,$a5
1b5a: d5 41 f5  mov   $f541+x,a
1b5d: 2f ad     bra   $1b0c

; vcmd e1 - default ADSR
1b5f: f5 01 f2  mov   a,$f201+x
1b62: 1c        asl   a
1b63: fd        mov   y,a
1b64: f6 80 1f  mov   a,$1f80+y
1b67: d5 40 f5  mov   $f540+x,a
1b6a: f6 81 1f  mov   a,$1f81+y
1b6d: d5 41 f5  mov   $f541+x,a
1b70: 2f 9a     bra   $1b0c

; vcmd e4
1b72: e4 91     mov   a,$91
1b74: c8 10     cmp   x,#$10
1b76: b0 07     bcs   $1b7f
1b78: 0e 5c 00  tset1 $005c
1b7b: 4e 5e 00  tclr1 $005e
1b7e: 6f        ret

1b7f: 0e 5d 00  tset1 $005d
1b82: 4e 5f 00  tclr1 $005f
1b85: 6f        ret

; readahead for vcmd dc,e4-e7
1b86: e4 91     mov   a,$91
1b88: c8 10     cmp   x,#$10
1b8a: b0 07     bcs   $1b93
1b8c: 4e 5c 00  tclr1 $005c
1b8f: 4e 60 00  tclr1 $0060
1b92: 6f        ret

1b93: 4e 5d 00  tclr1 $005d
1b96: 4e 61 00  tclr1 $0061
1b99: 6f        ret

; vcmd e6
1b9a: e4 91     mov   a,$91
1b9c: c8 10     cmp   x,#$10
1b9e: b0 04     bcs   $1ba4
1ba0: 0e 60 00  tset1 $0060
1ba3: 6f        ret

1ba4: 0e 61 00  tset1 $0061
1ba7: 6f        ret

; vcmd e9
1ba8: 8d 00     mov   y,#$00
1baa: 2f 02     bra   $1bae
; vcmd ea
1bac: 8d 02     mov   y,#$02
1bae: 3f bc 1b  call  $1bbc
1bb1: d4 02     mov   $02+x,a
1bb3: db 03     mov   $03+x,y
1bb5: dd        mov   a,y
1bb6: d0 03     bne   $1bbb
1bb8: 5f 4a 1d  jmp   $1d4a

1bbb: 6f        ret

1bbc: 8f 00 96  mov   $96,#$00
1bbf: 1c        asl   a
1bc0: 2b 96     rol   $96
1bc2: 1c        asl   a
1bc3: 2b 96     rol   $96
1bc5: c4 95     mov   $95,a
1bc7: dd        mov   a,y
1bc8: 8d 2f     mov   y,#$2f
1bca: 7a 95     addw  ya,$95
1bcc: da 95     movw  $95,ya
1bce: 8d 00     mov   y,#$00
1bd0: f7 95     mov   a,($95)+y
1bd2: 2d        push  a
1bd3: fc        inc   y
1bd4: f7 95     mov   a,($95)+y
1bd6: fd        mov   y,a
1bd7: ae        pop   a
1bd8: 6f        ret

; readahead for vcmd e9
1bd9: f7 93     mov   a,($93)+y
1bdb: 2f 04     bra   $1be1

; readahead for vcmd ea
1bdd: f7 93     mov   a,($93)+y
1bdf: 8d 02     mov   y,#$02
1be1: 3f bc 1b  call  $1bbc
1be4: da 93     movw  $93,ya
1be6: dd        mov   a,y
1be7: d0 04     bne   $1bed
1be9: ae        pop   a
1bea: ae        pop   a
1beb: e8 eb     mov   a,#$eb
1bed: 6f        ret

; vcmd f6
1bee: fd        mov   y,a
1bef: 3f 53 07  call  $0753
1bf2: dd        mov   a,y
1bf3: eb a5     mov   y,$a5
1bf5: 7a 00     addw  ya,$00
1bf7: d4 02     mov   $02+x,a
1bf9: db 03     mov   $03+x,y
1bfb: 6f        ret

; readahead for vcmd f6
1bfc: f7 93     mov   a,($93)+y
1bfe: 2d        push  a
1bff: fc        inc   y
1c00: f7 93     mov   a,($93)+y
1c02: fd        mov   y,a
1c03: ae        pop   a
1c04: 7a 00     addw  ya,$00
1c06: da 93     movw  $93,ya
1c08: 6f        ret

; vcmd f5
1c09: c4 9d     mov   $9d,a
1c0b: 3f 53 07  call  $0753
1c0e: c4 9b     mov   $9b,a
1c10: 3f 53 07  call  $0753
1c13: c4 9c     mov   $9c,a
1c15: fb 27     mov   y,$27+x
1c17: f6 60 f5  mov   a,$f560+y
1c1a: 2e 9d 1b  cbne  $9d,$1c38
1c1d: f6 80 f5  mov   a,$f580+y
1c20: 9c        dec   a
1c21: d0 0d     bne   $1c30
1c23: 7d        mov   a,x
1c24: 1c        asl   a
1c25: 9c        dec   a
1c26: 9b 27     dec   $27+x
1c28: de 27 05  cbne  $27+x,$1c30
1c2b: 60        clrc
1c2c: 88 04     adc   a,#$04
1c2e: d4 27     mov   $27+x,a
1c30: ba 9b     movw  ya,$9b
1c32: 7a 00     addw  ya,$00
1c34: d4 02     mov   $02+x,a
1c36: db 03     mov   $03+x,y
1c38: 6f        ret

; readahead for vcmd f5
1c39: eb ba     mov   y,$ba
1c3b: f6 60 f5  mov   a,$f560+y
1c3e: 8d 00     mov   y,#$00
1c40: 77 93     cmp   a,($93)+y
1c42: d0 19     bne   $1c5d
1c44: eb ba     mov   y,$ba
1c46: f6 80 f5  mov   a,$f580+y
1c49: 9c        dec   a
1c4a: d0 0c     bne   $1c58
1c4c: 7d        mov   a,x
1c4d: 1c        asl   a
1c4e: 9c        dec   a
1c4f: 8b ba     dec   $ba
1c51: 2e ba 04  cbne  $ba,$1c58
1c54: 60        clrc
1c55: 98 04 ba  adc   $ba,#$04
1c58: 8d 01     mov   y,#$01
1c5a: 5f fc 1b  jmp   $1bfc

1c5d: 3a 93     incw  $93
1c5f: 3a 93     incw  $93
1c61: 3a 93     incw  $93
1c63: 6f        ret

; vcmd e2
1c64: 7d        mov   a,x
1c65: 1c        asl   a
1c66: 60        clrc
1c67: 88 04     adc   a,#$04
1c69: bb 27     inc   $27+x
1c6b: de 27 05  cbne  $27+x,$1c73
1c6e: 80        setc
1c6f: a8 04     sbc   a,#$04
1c71: d4 27     mov   $27+x,a
1c73: fb 27     mov   y,$27+x
1c75: e4 a5     mov   a,$a5
1c77: f0 01     beq   $1c7a
1c79: bc        inc   a
1c7a: d6 80 f5  mov   $f580+y,a
1c7d: c8 10     cmp   x,#$10
1c7f: b0 05     bcs   $1c86
1c81: e8 01     mov   a,#$01
1c83: d6 60 f5  mov   $f560+y,a
1c86: dd        mov   a,y
1c87: 1c        asl   a
1c88: fd        mov   y,a
1c89: f4 02     mov   a,$02+x
1c8b: d6 c0 f5  mov   $f5c0+y,a
1c8e: f4 03     mov   a,$03+x
1c90: d6 c1 f5  mov   $f5c1+y,a
1c93: 6f        ret

; vcmd e3
1c94: fb 27     mov   y,$27+x
1c96: c8 10     cmp   x,#$10
1c98: b0 07     bcs   $1ca1
1c9a: f6 60 f5  mov   a,$f560+y
1c9d: bc        inc   a
1c9e: d6 60 f5  mov   $f560+y,a
1ca1: f6 80 f5  mov   a,$f580+y
1ca4: f0 15     beq   $1cbb
1ca6: 9c        dec   a
1ca7: d0 0f     bne   $1cb8
1ca9: 7d        mov   a,x
1caa: 1c        asl   a
1cab: 9c        dec   a
1cac: 9b 27     dec   $27+x
1cae: de 27 17  cbne  $27+x,$1cc8
1cb1: 60        clrc
1cb2: 88 04     adc   a,#$04
1cb4: d4 27     mov   $27+x,a
1cb6: 2f 10     bra   $1cc8
1cb8: d6 80 f5  mov   $f580+y,a
1cbb: dd        mov   a,y
1cbc: 1c        asl   a
1cbd: fd        mov   y,a
1cbe: f6 c0 f5  mov   a,$f5c0+y
1cc1: d4 02     mov   $02+x,a
1cc3: f6 c1 f5  mov   a,$f5c1+y
1cc6: d4 03     mov   $03+x,a
1cc8: 6f        ret

; readahead for vcmd e3
1cc9: eb ba     mov   y,$ba
1ccb: f6 80 f5  mov   a,$f580+y
1cce: f0 11     beq   $1ce1
1cd0: 9c        dec   a
1cd1: d0 0e     bne   $1ce1
1cd3: 7d        mov   a,x
1cd4: 1c        asl   a
1cd5: 9c        dec   a
1cd6: 8b ba     dec   $ba
1cd8: 2e ba 13  cbne  $ba,$1cee
1cdb: 60        clrc
1cdc: 98 04 ba  adc   $ba,#$04
1cdf: 2f 0d     bra   $1cee
1ce1: dd        mov   a,y
1ce2: 1c        asl   a
1ce3: fd        mov   y,a
1ce4: f6 c0 f5  mov   a,$f5c0+y
1ce7: c4 93     mov   $93,a
1ce9: f6 c1 f5  mov   a,$f5c1+y
1cec: c4 94     mov   $94,a
1cee: 6f        ret

; vcmd e8
1cef: d4 26     mov   $26+x,a
1cf1: 6f        ret

; vcmd db
1cf2: d5 a0 f3  mov   $f3a0+x,a
1cf5: 6f        ret

; vcmd f9
1cf6: 28 0f     and   a,#$0f
1cf8: c4 7b     mov   $7b,a
1cfa: 6f        ret

; vcmd fa
1cfb: 28 0f     and   a,#$0f
1cfd: c4 a5     mov   $a5,a
1cff: 64 d3     cmp   a,$d3
1d01: 90 02     bcc   $1d05
1d03: c4 d3     mov   $d3,a
1d05: e4 d2     mov   a,$d2
1d07: 64 a5     cmp   a,$a5
1d09: b0 0e     bcs   $1d19
1d0b: bb 02     inc   $02+x
1d0d: d0 02     bne   $1d11
1d0f: bb 03     inc   $03+x
1d11: bb 02     inc   $02+x
1d13: d0 14     bne   $1d29
1d15: bb 03     inc   $03+x
1d17: 2f 10     bra   $1d29
1d19: 3f 53 07  call  $0753
1d1c: fd        mov   y,a
1d1d: 3f 53 07  call  $0753
1d20: dd        mov   a,y
1d21: eb a5     mov   y,$a5
1d23: 7a 00     addw  ya,$00
1d25: d4 02     mov   $02+x,a
1d27: db 03     mov   $03+x,y
1d29: 6f        ret

; readahead for vcmd fa
1d2a: f7 93     mov   a,($93)+y
1d2c: c4 a5     mov   $a5,a
1d2e: e4 d2     mov   a,$d2
1d30: 64 a5     cmp   a,$a5
1d32: b0 08     bcs   $1d3c
1d34: 3a 93     incw  $93
1d36: 3a 93     incw  $93
1d38: 3a 93     incw  $93
1d3a: 2f 0d     bra   $1d49
1d3c: fc        inc   y
1d3d: f7 93     mov   a,($93)+y
1d3f: 2d        push  a
1d40: fc        inc   y
1d41: f7 93     mov   a,($93)+y
1d43: fd        mov   y,a
1d44: ae        pop   a
1d45: 7a 00     addw  ya,$00
1d47: da 93     movw  $93,ya
1d49: 6f        ret

; vcmd eb-ef,fe,ff - halt
1d4a: ae        pop   a
1d4b: ae        pop   a
1d4c: 62 88     set3  $88
1d4e: e4 91     mov   a,$91
1d50: c8 10     cmp   x,#$10
1d52: b0 0a     bcs   $1d5e
1d54: 4e 53 00  tclr1 $0053
1d57: d0 0b     bne   $1d64
1d59: 8f ff 80  mov   $80,#$ff
1d5c: 2f 06     bra   $1d64
1d5e: 4e 86 00  tclr1 $0086
1d61: 4e 5e 00  tclr1 $005e
1d64: 3f 68 1a  call  $1a68
1d67: 3f b5 1a  call  $1ab5
1d6a: 5f 2c 1a  jmp   $1a2c

; pitch table
1d6d: dw $0879  ; c
1d6f: dw $08fa  ; c#
1d71: dw $0983  ; d
1d73: dw $0a14  ; d#
1d75: dw $0aad  ; e
1d77: dw $0b50  ; f
1d79: dw $0bfc  ; f#
1d7b: dw $0cb2  ; g
1d7d: dw $0d74  ; g#
1d7f: dw $0e41  ; a
1d81: dw $0f1a  ; a#
1d83: dw $1000  ; b
1d85: dw $10f3  ; c

;
1d87: db $0f,$1f,$1f,$30,$42,$55,$6a,$7f,$96,$ae,$c8,$e3,$00

; echo filter coeff table
1d93: db $7f,$00,$00,$00,$00,$00,$00,$00
1d9b: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1da3: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1dab: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; duration table
1db3: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

;
1dc1: db $eb

; sample $10
1dc2: db $02,$00,$00,$00,$00,$00,$00,$00,$00  ; loop pt here
1dcb: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1dd4: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1ddd: db $c2,$77,$77,$77,$77,$77,$77,$77,$77
1de6: db $c3,$77,$77,$77,$77,$77,$77,$77,$77
