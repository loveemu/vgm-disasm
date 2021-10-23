0200: 5d        mov   x,a
0201: 3e f4     cmp   x,$f4
0203: f0 fc     beq   $0201
0205: f8 f4     mov   x,$f4
0207: 30 03     bmi   $020c
0209: 1f 85 03  jmp   ($0385+x)

020c: 1f 05 03  jmp   ($0305+x)

020f: ba f6     movw  ya,$f6
0211: d8 f4     mov   $f4,x
0213: c5 3f 02  mov   $023f,a
0216: c5 5b 02  mov   $025b,a
0219: cc 40 02  mov   $0240,y
021c: cc 5c 02  mov   $025c,y
021f: 2f e0     bra   $0201
0221: ba f6     movw  ya,$f6
0223: d8 f4     mov   $f4,x
0225: c5 42 02  mov   $0242,a
0228: c5 5e 02  mov   $025e,a
022b: cc 43 02  mov   $0243,y
022e: cc 5f 02  mov   $025f,y
0231: 2f ce     bra   $0201
0233: ba f6     movw  ya,$f6
0235: d8 f4     mov   $f4,x
0237: da ea     movw  $ea,ya
0239: dd        mov   a,y
023a: f0 1a     beq   $0256
023c: 8d 00     mov   y,#$00
023e: f6 00 00  mov   a,$0000+y
0241: d6 00 00  mov   $0000+y,a
0244: fc        inc   y
0245: d0 f7     bne   $023e
0247: ac 40 02  inc   $0240
024a: ac 5c 02  inc   $025c
024d: ac 43 02  inc   $0243
0250: ac 5f 02  inc   $025f
0253: 6e eb e8  dbnz  $eb,$023e
0256: e4 ea     mov   a,$ea
0258: f0 0a     beq   $0264
025a: f6 00 00  mov   a,$0000+y
025d: d6 00 00  mov   $0000+y,a
0260: fc        inc   y
0261: 6e ea f6  dbnz  $ea,$025a
0264: 2f 9b     bra   $0201
0266: ba f6     movw  ya,$f6
0268: d8 f4     mov   $f4,x
026a: bc        inc   a
026b: f0 01     beq   $026e
026d: dc        dec   y
026e: c5 ba 02  mov   $02ba,a
0271: c5 d6 02  mov   $02d6,a
0274: cc bb 02  mov   $02bb,y
0277: cc d7 02  mov   $02d7,y
027a: 2f 85     bra   $0201
027c: ba f6     movw  ya,$f6
027e: d8 f4     mov   $f4,x
0280: bc        inc   a
0281: f0 01     beq   $0284
0283: dc        dec   y
0284: c5 bd 02  mov   $02bd,a
0287: c5 d9 02  mov   $02d9,a
028a: cc be 02  mov   $02be,y
028d: cc da 02  mov   $02da,y
0290: 5f 01 02  jmp   $0201

0293: 3f 51 0d  call  $0d51
0296: 3f 21 11  call  $1121
0299: 4d        push  x
029a: 3f 9c 17  call  $179c
029d: e4 05     mov   a,$05
029f: d5 e0 ed  mov   $ede0+x,a
02a2: e4 04     mov   a,$04
02a4: d5 e1 ed  mov   $ede1+x,a
02a7: ce        pop   x
02a8: 5f 01 02  jmp   $0201

02ab: ba f6     movw  ya,$f6
02ad: d8 f4     mov   $f4,x
02af: da ea     movw  $ea,ya
02b1: 4d        push  x
02b2: cd ff     mov   x,#$ff
02b4: dd        mov   a,y
02b5: f0 1a     beq   $02d1
02b7: 8d 00     mov   y,#$00
02b9: f5 00 00  mov   a,$0000+x
02bc: d5 00 00  mov   $0000+x,a
02bf: 1d        dec   x
02c0: fe f7     dbnz  y,$02b9
02c2: 8c bb 02  dec   $02bb
02c5: 8c d7 02  dec   $02d7
02c8: 8c be 02  dec   $02be
02cb: 8c da 02  dec   $02da
02ce: 6e eb e8  dbnz  $eb,$02b9
02d1: eb ea     mov   y,$ea
02d3: f0 09     beq   $02de
02d5: f5 00 00  mov   a,$0000+x
02d8: d5 00 00  mov   $0000+x,a
02db: 1d        dec   x
02dc: fe f7     dbnz  y,$02d5
02de: d8 e8     mov   $e8,x
02e0: cb e9     mov   $e9,y
02e2: e5 d6 02  mov   a,$02d6
02e5: ec d7 02  mov   y,$02d7
02e8: 7a e8     addw  ya,$e8
02ea: da e6     movw  $e6,ya
02ec: e5 d9 02  mov   a,$02d9
02ef: ec da 02  mov   y,$02da
02f2: 7a e8     addw  ya,$e8
02f4: da e8     movw  $e8,ya
02f6: ce        pop   x
02f7: 5f 01 02  jmp   $0201

02fa: d8 f4     mov   $f4,x
02fc: 4d        push  x
02fd: ba e8     movw  ya,$e8
02ff: 9a e6     subw  ya,$e6
0301: da ea     movw  $ea,ya
0303: 3a e6     incw  $e6
0305: cd fe     mov   x,#$fe
0307: 3d        inc   x
0308: 3d        inc   x
0309: f5 81 ed  mov   a,$ed81+x
030c: fd        mov   y,a
030d: f5 80 ed  mov   a,$ed80+x
0310: 5a e6     cmpw  ya,$e6
0312: d0 f3     bne   $0307
0314: 3f a4 13  call  $13a4
0317: ce        pop   x
0318: 5f 01 02  jmp   $0201

031b: f8 a1     mov   x,$a1
031d: ba f6     movw  ya,$f6
031f: d5 80 ed  mov   $ed80+x,a
0322: dd        mov   a,y
0323: d5 81 ed  mov   $ed81+x,a
0326: ba f6     movw  ya,$f6
0328: f8 f4     mov   x,$f4
032a: d8 f4     mov   $f4,x
032c: da e8     movw  $e8,ya
032e: 8d 00     mov   y,#$00
0330: 3e f4     cmp   x,$f4
0332: f0 fc     beq   $0330
0334: f8 f4     mov   x,$f4
0336: 1f 6a 03  jmp   ($036a+x)

0339: e4 f6     mov   a,$f6
033b: d7 e8     mov   ($e8)+y,a
033d: fc        inc   y
033e: e4 f7     mov   a,$f7
0340: d7 e8     mov   ($e8)+y,a
0342: e4 f5     mov   a,$f5
0344: d8 f4     mov   $f4,x
0346: fc        inc   y
0347: d7 e8     mov   ($e8)+y,a
0349: fc        inc   y
034a: 10 e4     bpl   $0330
034c: dd        mov   a,y
034d: 8d 00     mov   y,#$00
034f: 7a e8     addw  ya,$e8
0351: da e8     movw  $e8,ya
0353: 8d 00     mov   y,#$00
0355: 2f d9     bra   $0330
0357: e4 f5     mov   a,$f5
0359: d7 e8     mov   ($e8)+y,a
035b: fc        inc   y
035c: e4 f6     mov   a,$f6
035e: d7 e8     mov   ($e8)+y,a
0360: fc        inc   y
0361: e4 f7     mov   a,$f7
0363: d7 e8     mov   ($e8)+y,a
0365: d8 f4     mov   $f4,x
0367: 5f 01 02  jmp   $0201

036a: dw $0339
036c: dw $0361
036e: dw $035c
0370: dw $0357
0372: dw $0339
0374: dw $0361
0376: dw $035c
0378: dw $0357

037a: 3f 83 03  call  $0383
037d: cd ff     mov   x,#$ff
037f: bd        mov   sp,x
0380: 5f ac 03  jmp   $03ac

0383: fa f4 f4  mov   ($f4),($f4)
0386: e4 f4     mov   a,$f4
0388: d0 fc     bne   $0386
038a: c4 f4     mov   $f4,a
038c: 6f        ret

038d: dw $0383
038f: dw $037a
0391: dw $0326
0393: dw $031b
0395: dw $0266
0397: dw $027c
0399: dw $02ab
039b: dw $020f
039d: dw $0221
039f: dw $0233
03a1: dw $0293
03a3: dw $02fa

03a5: e4 f4     mov   a,$f4
03a7: f0 08     beq   $03b1
03a9: 3f f5 0c  call  $0cf5
03ac: e8 ce     mov   a,#$ce
03ae: c5 80 1f  mov   $1f80,a
03b1: eb fd     mov   y,$fd
03b3: f0 0c     beq   $03c1
03b5: 6d        push  y
03b6: 3f d6 17  call  $17d6
03b9: ee        pop   y
03ba: 6d        push  y
03bb: 3f cc 03  call  $03cc
03be: ee        pop   y
03bf: fe f9     dbnz  y,$03ba
03c1: 4f b5     pcall $b5
03c3: e4 fe     mov   a,$fe
03c5: f0 de     beq   $03a5
03c7: 3f 8c 14  call  $148c
03ca: 2f d9     bra   $03a5
03cc: 8f 5c f2  mov   $f2,#$5c
03cf: e4 09     mov   a,$09
03d1: c4 f3     mov   $f3,a             ; set KOF
03d3: 8f 4c f2  mov   $f2,#$4c
03d6: fa 08 f3  mov   ($f3),($08)       ; set KON
03d9: 8f 6c f2  mov   $f2,#$6c
03dc: fa 0d f3  mov   ($f3),($0d)       ; set FLG
03df: 8f 2d f2  mov   $f2,#$2d
03e2: fa 0a f3  mov   ($f3),($0a)       ; set PMON
03e5: 8f 3d f2  mov   $f2,#$3d
03e8: fa 0b f3  mov   ($f3),($0b)       ; set NON
03eb: 8f 4d f2  mov   $f2,#$4d
03ee: fa 0c f3  mov   ($f3),($0c)       ; set EON
03f1: a3 0d 0c  bbs5  $0d,$0400         ; skip if echo is disabled
03f4: 8f 2c f2  mov   $f2,#$2c
03f7: fa 10 f3  mov   ($f3),($10)       ; set EVOL(L)
03fa: 8f 3c f2  mov   $f2,#$3c
03fd: fa 10 f3  mov   ($f3),($10)       ; set EVOL(R)
0400: 4e 19 00  tclr1 $0019
0403: 09 08 19  or    ($19),($08)
0406: 8f 00 08  mov   $08,#$00          ; clear KON shadow
0409: 8f 00 09  mov   $09,#$00          ; clear KOF shadow
040c: cd 0c     mov   x,#$0c
040e: f5 90 ed  mov   a,$ed90+x
0411: f0 1f     beq   $0432
0413: d8 a1     mov   $a1,x
0415: 7d        mov   a,x
0416: 9f        xcn   a
0417: 5c        lsr   a
0418: c4 a3     mov   $a3,a
041a: 31        tcall 3
041b: 3f 37 04  call  $0437
041e: e4 c8     mov   a,$c8
0420: 35 90 ed  and   a,$ed90+x
0423: f0 0d     beq   $0432
0425: c4 df     mov   $df,a
0427: 38 f0 a3  and   $a3,#$f0
042a: eb a3     mov   y,$a3
042c: 8f 01 c6  mov   $c6,#$01
042f: 3f 70 15  call  $1570
0432: 1d        dec   x
0433: 1d        dec   x
0434: 10 d8     bpl   $040e
0436: 6f        ret

0437: 40        setp
0438: f4 39     mov   a,$39+x           ; current tempo ($0139+x)
043a: fb 09     mov   y,$09+x
043c: f0 02     beq   $0440
043e: 4f e0     pcall $e0
0440: 60        clrc
0441: 94 29     adc   a,$29+x
0443: d4 29     mov   $29+x,a           ; increase tempo counter ($0129+x)
0445: 20        clrp
0446: 90 ee     bcc   $0436             ; return if not carried over
; tick
0448: f5 90 ed  mov   a,$ed90+x
044b: c4 df     mov   $df,a
044d: eb a3     mov   y,$a3
044f: 8f 01 c6  mov   $c6,#$01
0452: 4b df     lsr   $df
0454: b0 42     bcs   $0498
0456: fc        inc   y
0457: fc        inc   y
0458: 0b c6     asl   $c6
045a: d0 f6     bne   $0452
045c: f4 a5     mov   a,$a5+x
045e: f0 1e     beq   $047e
0460: 9b a5     dec   $a5+x
0462: 40        setp
0463: fb 49     mov   y,$49+x
0465: f4 48     mov   a,$48+x
0467: da 00     movw  $00,ya
0469: c5 00 00  mov   $0000,a
046c: cc 01 00  mov   $0001,y
046f: fb 39     mov   y,$39+x
0471: f4 38     mov   a,$38+x
0473: 4f 67     pcall $67
0475: d4 38     mov   $38+x,a
0477: dd        mov   a,y
0478: d0 01     bne   $047b
047a: bc        inc   a
047b: d4 39     mov   $39+x,a
047d: 20        clrp
047e: 6f        ret

047f: f6 81 f9  mov   a,$f981+y
0482: f0 03     beq   $0487
0484: f5 d0 ed  mov   a,$edd0+x
0487: 04 c7     or    a,$c7
0489: 15 b1 ed  or    a,$edb1+x
048c: 24 c6     and   a,$c6
048e: d0 22     bne   $04b2
0490: 09 c6 09  or    ($09),($c6)       ; set KOF shadow
0493: 2f c1     bra   $0456
; 
0495: 5f b2 05  jmp   $05b2             ; dispatch voice byte

0498: cb a3     mov   $a3,y
049a: cb a2     mov   $a2,y
049c: 38 0e a2  and   $a2,#$0e
049f: 4f b5     pcall $b5
04a1: f8 a1     mov   x,$a1
04a3: eb a3     mov   y,$a3
04a5: f6 00 ef  mov   a,$ef00+y
04a8: 9c        dec   a                 ; decrease the delta-time counter
04a9: f0 ea     beq   $0495             ; when it reaches 0, dispatch the next voice byte
04ab: d6 00 ef  mov   $ef00+y,a
04ae: 68 02     cmp   a,#$02
04b0: f0 cd     beq   $047f             ; when it reaches 2, key off the voice
04b2: f8 a3     mov   x,$a3
04b4: fa c6 02  mov   ($02),($c6)
04b7: 29 c8 02  and   ($02),($c8)
04ba: f5 00 f1  mov   a,$f100+x
04bd: f0 20     beq   $04df
04bf: 9c        dec   a
04c0: d5 00 f1  mov   $f100+x,a
04c3: f5 81 f0  mov   a,$f081+x
04c6: fd        mov   y,a
04c7: f5 80 f0  mov   a,$f080+x
04ca: da 00     movw  $00,ya
04cc: f5 01 f0  mov   a,$f001+x         ; volume
04cf: fd        mov   y,a
04d0: f5 00 f0  mov   a,$f000+x
04d3: 4f 67     pcall $67
04d5: d5 00 f0  mov   $f000+x,a
04d8: dd        mov   a,y
04d9: d5 01 f0  mov   $f001+x,a         ; volume
04dc: 09 02 1b  or    ($1b),($02)
04df: f5 01 f1  mov   a,$f101+x
04e2: f0 20     beq   $0504
04e4: 9c        dec   a
04e5: d5 01 f1  mov   $f101+x,a
04e8: f5 01 f2  mov   a,$f201+x
04eb: fd        mov   y,a
04ec: f5 00 f2  mov   a,$f200+x
04ef: da 00     movw  $00,ya
04f1: f5 81 f1  mov   a,$f181+x         ; pan
04f4: fd        mov   y,a
04f5: f5 80 f1  mov   a,$f180+x
04f8: 4f 67     pcall $67
04fa: d5 80 f1  mov   $f180+x,a
04fd: dd        mov   a,y
04fe: d5 81 f1  mov   $f181+x,a         ; pan
0501: 09 02 1b  or    ($1b),($02)
0504: f5 01 f7  mov   a,$f701+x
0507: f0 3a     beq   $0543
0509: f5 81 f7  mov   a,$f781+x
050c: fd        mov   y,a
050d: f5 80 f7  mov   a,$f780+x
0510: da 00     movw  $00,ya
0512: f5 81 f8  mov   a,$f881+x         ; pan LFO value
0515: fd        mov   y,a
0516: f5 80 f8  mov   a,$f880+x
0519: 4f 67     pcall $67
051b: d5 80 f8  mov   $f880+x,a
051e: dd        mov   a,y
051f: d5 81 f8  mov   $f881+x,a         ; pan LFO value
0522: 09 02 1b  or    ($1b),($02)
0525: f5 01 f8  mov   a,$f801+x
0528: 9c        dec   a
0529: d5 01 f8  mov   $f801+x,a
052c: d0 15     bne   $0543
052e: 80        setc
052f: b5 80 f7  sbc   a,$f780+x
0532: d5 80 f7  mov   $f780+x,a
0535: e8 00     mov   a,#$00
0537: b5 81 f7  sbc   a,$f781+x
053a: d5 81 f7  mov   $f781+x,a
053d: f5 00 f8  mov   a,$f800+x
0540: d5 01 f8  mov   $f801+x,a
0543: e4 02     mov   a,$02
0545: f0 64     beq   $05ab
0547: f5 01 f3  mov   a,$f301+x
054a: f0 04     beq   $0550
054c: 9c        dec   a
054d: d5 01 f3  mov   $f301+x,a
0550: f5 01 f5  mov   a,$f501+x
0553: f0 04     beq   $0559
0555: 9c        dec   a
0556: d5 01 f5  mov   $f501+x,a
0559: f5 80 f6  mov   a,$f680+x
055c: 15 81 f6  or    a,$f681+x
055f: f0 29     beq   $058a
0561: f5 81 f6  mov   a,$f681+x
0564: fd        mov   y,a
0565: f5 80 f6  mov   a,$f680+x
0568: da 00     movw  $00,ya
056a: f8 a2     mov   x,$a2
056c: f4 b4     mov   a,$b4+x
056e: fb b5     mov   y,$b5+x
0570: 4f 67     pcall $67
0572: d4 b4     mov   $b4+x,a
0574: db b5     mov   $b5+x,y
0576: 09 02 1c  or    ($1c),($02)
0579: f8 a3     mov   x,$a3
057b: f5 00 f7  mov   a,$f700+x
057e: 9c        dec   a
057f: d5 00 f7  mov   $f700+x,a
0582: d0 06     bne   $058a
0584: d5 80 f6  mov   $f680+x,a
0587: d5 81 f6  mov   $f681+x,a
058a: f5 00 fa  mov   a,$fa00+x
058d: f0 1c     beq   $05ab
058f: 9c        dec   a
0590: d5 00 fa  mov   $fa00+x,a
0593: f5 81 fa  mov   a,$fa81+x
0596: fd        mov   y,a
0597: f5 80 fa  mov   a,$fa80+x
059a: da 00     movw  $00,ya
059c: f8 a2     mov   x,$a2
059e: f4 b4     mov   a,$b4+x
05a0: fb b5     mov   y,$b5+x
05a2: 4f 67     pcall $67
05a4: d4 b4     mov   $b4+x,a
05a6: db b5     mov   $b5+x,y
05a8: 09 02 1c  or    ($1c),($02)
05ab: f8 a1     mov   x,$a1
05ad: eb a3     mov   y,$a3
05af: 5f 56 04  jmp   $0456

; dispatch voice byte
05b2: f8 a3     mov   x,$a3
05b4: e7 1f     mov   a,($1f+x)         ; read voice byte
05b6: bb 1f     inc   $1f+x             ; increase the voice pointer
05b8: d0 02     bne   $05bc
05ba: bb 20     inc   $20+x
05bc: 68 30     cmp   a,#$30
05be: b0 10     bcs   $05d0             ; branch if note (when >= $30)
05c0: 4f 89     pcall $89               ; otherwise, dispatch vcmd (when $00-$2f)
05c2: 13 13 ed  bbc0  $13,$05b2
05c5: 12 13     clr0  $13
05c7: f8 a1     mov   x,$a1
05c9: 5f 56 04  jmp   $0456

; read note length from voice stream (when note length index is 7)
05cc: 4f f4     pcall $f4               ; read next voice byte
05ce: 2f 19     bra   $05e9

; vcmds 30-ff - note
05d0: c4 db     mov   $db,a             ; save the note byte
05d2: 28 07     and   a,#$07            ; extract the lower 3 bit (note length index)
05d4: 68 07     cmp   a,#$07
05d6: f0 f4     beq   $05cc             ; if == 7: determine the duration from the next byte
; determine the length from predefined note length table (when note length index is in 0-6)
05d8: c4 02     mov   $02,a
05da: dd        mov   a,y               ; Y equals to $a3 (current track number * 2)
05db: 5c        lsr   a
05dc: 8d 07     mov   y,#$07
05de: cf        mul   ya                ; calcurate offset (current track * 7)
05df: 7a 9f     addw  ya,$9f            ; add the offset and the base of the note length tables
05e1: da 00     movw  $00,ya            ; save the determined address for the note length table of the current track
05e3: eb 02     mov   y,$02
05e5: f7 00     mov   a,($00)+y         ; read the note length from table
05e7: eb a3     mov   y,$a3
;
05e9: d6 00 ef  mov   $ef00+y,a         ; set delta-time counter
05ec: f6 1f 00  mov   a,$001f+y
05ef: c4 00     mov   $00,a
05f1: f6 20 00  mov   a,$0020+y
05f4: c4 01     mov   $01,a             ; copy the voice pointer to $00/1
05f6: 8d 00     mov   y,#$00
; readahead vcmds for slur/tie or something else
05f8: f7 00     mov   a,($00)+y         ; read voice byte
05fa: fc        inc   y
05fb: 68 30     cmp   a,#$30
05fd: b0 6d     bcs   $066c             ; break if the next note is found
05ff: 68 26     cmp   a,#$26
0601: f0 0e     beq   $0611
0603: 68 2c     cmp   a,#$2c
0605: b0 0e     bcs   $0615
0607: 5d        mov   x,a
0608: f0 62     beq   $066c
060a: dd        mov   a,y
060b: 95 93 19  adc   a,$1993+x         ; skip the vcmd (using vcmd length table)
060e: fd        mov   y,a
060f: 2f e7     bra   $05f8             ; continue
;
0611: e2 13     set7  $13
0613: 2f e3     bra   $05f8             ; continue
;
0615: f0 40     beq   $0657
0617: 68 2e     cmp   a,#$2e
0619: 90 33     bcc   $064e
061b: f0 0f     beq   $062c
061d: f7 00     mov   a,($00)+y
061f: 9c        dec   a
0620: fc        inc   y
0621: f8 a3     mov   x,$a3
0623: 75 00 f9  cmp   a,$f900+x
0626: f0 2f     beq   $0657
0628: fc        inc   y
0629: fc        inc   y
062a: 2f cc     bra   $05f8             ; continue
062c: f8 a3     mov   x,$a3
062e: 7d        mov   a,x
062f: 1c        asl   a
0630: 95 01 f9  adc   a,$f901+x
0633: 5d        mov   x,a
0634: f5 00 1a  mov   a,$1a00+x
0637: 9c        dec   a
0638: f0 be     beq   $05f8             ; continue
063a: 7d        mov   a,x
063b: 1c        asl   a
063c: c4 02     mov   $02,a
063e: e8 00     mov   a,#$00
0640: fd        mov   y,a
0641: 88 fb     adc   a,#$fb
0643: c4 03     mov   $03,a
0645: f7 02     mov   a,($02)+y
0647: c4 00     mov   $00,a
0649: fc        inc   y
064a: f7 02     mov   a,($02)+y
064c: 2f a6     bra   $05f4
064e: f8 a1     mov   x,$a1
0650: f5 58 01  mov   a,$0158+x
0653: 24 c6     and   a,$c6
0655: f0 d1     beq   $0628
0657: 60        clrc
0658: f8 a1     mov   x,$a1
065a: f7 00     mov   a,($00)+y
065c: 95 c0 ed  adc   a,$edc0+x
065f: c4 02     mov   $02,a
0661: fc        inc   y
0662: f7 00     mov   a,($00)+y
0664: 95 c1 ed  adc   a,$edc1+x
0667: fa 02 00  mov   ($00),($02)
066a: 2f 88     bra   $05f4
; continuing with note (current note: $db, next note: A)
066c: f8 a1     mov   x,$a1
066e: fd        mov   y,a
066f: e4 c6     mov   a,$c6
0671: ad f8     cmp   y,#$f8
0673: b0 08     bcs   $067d             ; branch if next note byte is rest
;
0675: e3 13 05  bbs7  $13,$067d
0678: 15 d0 ed  or    a,$edd0+x
067b: 2f 07     bra   $0684
;
067d: f2 13     clr7  $13
067f: 48 ff     eor   a,#$ff
0681: 35 d0 ed  and   a,$edd0+x
;
0684: d5 d0 ed  mov   $edd0+x,a
0687: e4 c6     mov   a,$c6
0689: b0 09     bcs   $0694
068b: ad f0     cmp   y,#$f0
068d: 90 05     bcc   $0694
068f: 15 b1 ed  or    a,$edb1+x
0692: 2f 05     bra   $0699
0694: 48 ff     eor   a,#$ff
0696: 35 b1 ed  and   a,$edb1+x
0699: d5 b1 ed  mov   $edb1+x,a
069c: eb a3     mov   y,$a3
069e: 78 f8 db  cmp   $db,#$f8
06a1: b0 4e     bcs   $06f1             ; branch if rest (vcmds f8-ff)
06a3: e4 c7     mov   a,$c7
06a5: 24 c6     and   a,$c6
06a7: d0 48     bne   $06f1
06a9: 78 f0 db  cmp   $db,#$f0
06ac: b0 03     bcs   $06b1             ; branch if tie (vcmds f0-f7)
06ae: 3f f4 06  call  $06f4
06b1: f6 01 f6  mov   a,$f601+y
06b4: f0 3b     beq   $06f1
06b6: 60        clrc
06b7: 30 0a     bmi   $06c3
06b9: f8 a2     mov   x,$a2
06bb: 94 a4     adc   a,$a4+x
06bd: 90 0c     bcc   $06cb
06bf: e8 ff     mov   a,#$ff
06c1: 2f 08     bra   $06cb
06c3: f8 a2     mov   x,$a2
06c5: 94 a4     adc   a,$a4+x
06c7: b0 02     bcs   $06cb
06c9: e8 00     mov   a,#$00
06cb: d4 a4     mov   $a4+x,a
06cd: f6 00 f7  mov   a,$f700+y
06d0: 2d        push  a
06d1: fb b5     mov   y,$b5+x
06d3: f4 b4     mov   a,$b4+x
06d5: da c4     movw  $c4,ya
06d7: 3f 07 08  call  $0807
06da: ce        pop   x
06db: 9a c4     subw  ya,$c4
06dd: 4f 26     pcall $26
06df: f8 a3     mov   x,$a3
06e1: d5 80 f6  mov   $f680+x,a
06e4: dd        mov   a,y
06e5: d5 81 f6  mov   $f681+x,a
06e8: e8 00     mov   a,#$00
06ea: d5 01 f6  mov   $f601+x,a
06ed: eb a3     mov   y,$a3
06ef: f8 a1     mov   x,$a1
06f1: 5f 56 04  jmp   $0456

06f4: f8 a2     mov   x,$a2
06f6: f4 b4     mov   a,$b4+x
06f8: c4 c4     mov   $c4,a
06fa: f4 b5     mov   a,$b5+x
06fc: c4 c5     mov   $c5,a
06fe: e4 db     mov   a,$db
0700: 5c        lsr   a
0701: 5c        lsr   a
0702: 5c        lsr   a                 ; extract higher 5 bits of note (key)
0703: 80        setc
0704: a8 06     sbc   a,#$06
0706: 60        clrc
0707: 96 80 f9  adc   a,$f980+y         ; add note number base (vcmd 0b)
070a: 30 3f     bmi   $074b
070c: 96 81 ee  adc   a,$ee81+y         ; per-voice transpose (vcmd 17, 18)
070f: 30 1f     bmi   $0730
0711: c4 00     mov   $00,a             ; save adjusted note number
0713: f6 01 fa  mov   a,$fa01+y
0716: f0 39     beq   $0751             ; no randomization
; randomize note number?
0718: 1c        asl   a
0719: 5d        mov   x,a
071a: 3d        inc   x
071b: 4f 8e     pcall $8e
071d: eb a3     mov   y,$a3
071f: 80        setc
0720: b6 01 fa  sbc   a,$fa01+y
0723: 60        clrc
0724: 84 00     adc   a,$00
0726: 5d        mov   x,a
0727: e4 0b     mov   a,$0b             ; NON shadow
0729: 24 c6     and   a,$c6
072b: d0 09     bne   $0736
072d: 7d        mov   a,x
072e: 10 1d     bpl   $074d
0730: 70 19     bvs   $074b
0732: e8 00     mov   a,#$00
0734: 2f 17     bra   $074d
0736: 38 e0 0d  and   $0d,#$e0          ; clear noise clock frequency
0739: 7d        mov   a,x
073a: 30 06     bmi   $0742
073c: 68 20     cmp   a,#$20
073e: 90 06     bcc   $0746
0740: 2f 02     bra   $0744
0742: 50 ee     bvc   $0732
0744: e8 1f     mov   a,#$1f
0746: 0e 0d 00  tset1 $000d             ; set FLG shadow
0749: 2f 02     bra   $074d
074b: e8 7f     mov   a,#$7f
074d: f8 a2     mov   x,$a2
074f: 2f 02     bra   $0753
;
0751: e4 00     mov   a,$00
0753: d4 a4     mov   $a4+x,a
0755: 3f 07 08  call  $0807
0758: f8 a2     mov   x,$a2
075a: d4 b4     mov   $b4+x,a
075c: db b5     mov   $b5+x,y
075e: eb a3     mov   y,$a3
0760: 3f c5 08  call  $08c5
0763: 09 c6 1b  or    ($1b),($c6)
0766: 09 c6 1c  or    ($1c),($c6)
0769: e4 c6     mov   a,$c6
076b: 24 19     and   a,$19
076d: f0 2a     beq   $0799
076f: f6 81 f9  mov   a,$f981+y
0772: f0 25     beq   $0799
0774: c4 00     mov   $00,a
0776: d6 00 fa  mov   $fa00+y,a
0779: fb b5     mov   y,$b5+x
077b: f4 b4     mov   a,$b4+x
077d: 9a c4     subw  ya,$c4
077f: f8 00     mov   x,$00
0781: 4f 26     pcall $26
0783: f8 a3     mov   x,$a3
0785: d5 80 fa  mov   $fa80+x,a
0788: dd        mov   a,y
0789: d5 81 fa  mov   $fa81+x,a
078c: f8 a2     mov   x,$a2
078e: ba c4     movw  ya,$c4
0790: d4 b4     mov   $b4+x,a
0792: db b5     mov   $b5+x,y
0794: eb a3     mov   y,$a3
0796: f8 a1     mov   x,$a1
0798: 6f        ret

0799: f8 a1     mov   x,$a1
079b: 09 c6 08  or    ($08),($c6)       ; set KON bits (key on)
079e: e4 a2     mov   a,$a2
07a0: 9f        xcn   a
07a1: 5c        lsr   a
07a2: 08 04     or    a,#$04
07a4: c4 f2     mov   $f2,a
07a6: f6 80 ee  mov   a,$ee80+y
07a9: c4 f3     mov   $f3,a             ; set SRCN
07ab: ab f2     inc   $f2
07ad: f6 00 ee  mov   a,$ee00+y
07b0: 08 80     or    a,#$80
07b2: c4 f3     mov   $f3,a             ; set ADSR(1)
07b4: ab f2     inc   $f2
07b6: f6 01 ee  mov   a,$ee01+y
07b9: c4 f3     mov   $f3,a             ; set ADSR(2)
07bb: 6f        ret

; vcmd 12 - attack rate
07bc: 4f 78     pcall $78               ; read next voice byte to A and $dc
07be: f6 00 ee  mov   a,$ee00+y
07c1: 28 f0     and   a,#$f0
07c3: 04 dc     or    a,$dc
07c5: d6 00 ee  mov   $ee00+y,a
07c8: 6f        ret

; vcmd 13 - decay rate
07c9: 4f f4     pcall $f4               ; read next voice byte
07cb: 9f        xcn   a
07cc: c4 dc     mov   $dc,a
07ce: f6 00 ee  mov   a,$ee00+y
07d1: 28 8f     and   a,#$8f
07d3: 2f ee     bra   $07c3

; vcmd 14 - sustain level
07d5: 4f f4     pcall $f4               ; read next voice byte
07d7: 9f        xcn   a
07d8: 1c        asl   a
07d9: c4 dc     mov   $dc,a
07db: f6 01 ee  mov   a,$ee01+y
07de: 28 1f     and   a,#$1f
07e0: 04 dc     or    a,$dc
07e2: d6 01 ee  mov   $ee01+y,a
07e5: 6f        ret

; vcmd 15 - sustain rate
07e6: 4f 78     pcall $78               ; read next voice byte to A and $dc
07e8: f6 01 ee  mov   a,$ee01+y
07eb: 28 e0     and   a,#$e0
07ed: 2f f1     bra   $07e0

; vcmd 16 - default ADSR
07ef: f6 80 ee  mov   a,$ee80+y         ; get current SRCN
07f2: 1c        asl   a
07f3: 5d        mov   x,a
07f4: ca fc 07  mov1  $07fc,0,c
07f7: ca 02 08  mov1  $0802,0,c
07fa: f5 60 1e  mov   a,$1e60+x
07fd: d6 00 ee  mov   $ee00+y,a
0800: f5 61 1e  mov   a,$1e61+x
0803: d6 01 ee  mov   $ee01+y,a
0806: 6f        ret

0807: f4 a4     mov   a,$a4+x
0809: 68 60     cmp   a,#$60
080b: b0 64     bcs   $0871
080d: 8d 00     mov   y,#$00
080f: cd 0c     mov   x,#$0c
0811: 9e        div   ya,x
0812: 1c        asl   a
0813: c4 00     mov   $00,a
0815: f6 04 19  mov   a,$1904+y         ; read pitch table (lo)
0818: c4 e2     mov   $e2,a
081a: f6 10 19  mov   a,$1910+y         ; read pitch table (hi)
081d: c4 e3     mov   $e3,a
081f: fd        mov   y,a
0820: f8 a3     mov   x,$a3
0822: f5 80 ef  mov   a,$ef80+x
0825: 3f a8 08  call  $08a8
0828: c8 80     cmp   x,#$80
082a: b0 06     bcs   $0832
082c: da e0     movw  $e0,ya
082e: 7a e0     addw  ya,$e0
0830: 7a e2     addw  ya,$e2
0832: da e2     movw  $e2,ya
0834: da e0     movw  $e0,ya
0836: f8 a3     mov   x,$a3
0838: f5 01 ef  mov   a,$ef01+x         ; tuning
083b: f0 1b     beq   $0858
083d: 30 09     bmi   $0848
; apply tuning (positive)
083f: 3f b6 08  call  $08b6
0842: eb e1     mov   y,$e1
0844: 7a e2     addw  ya,$e2
0846: 2f 0c     bra   $0854
; apply tuning (negative)
0848: 48 ff     eor   a,#$ff
084a: bc        inc   a
084b: 3f b6 08  call  $08b6
084e: c4 e0     mov   $e0,a
0850: ba e2     movw  ya,$e2
0852: 9a e0     subw  ya,$e0
0854: da e0     movw  $e0,ya
0856: f8 a3     mov   x,$a3
;
0858: f5 81 ef  mov   a,$ef81+x
085b: 3f af 08  call  $08af
085e: 2d        push  a
085f: f5 00 ee  mov   a,$ee00+x
0862: ae        pop   a
0863: 30 05     bmi   $086a
0865: 84 e1     adc   a,$e1
0867: 90 01     bcc   $086a
0869: fc        inc   y
086a: f8 00     mov   x,$00
086c: cb e1     mov   $e1,y
086e: 1f 98 08  jmp   ($0898+x)

0871: 8d 3f     mov   y,#$3f
0873: e8 ff     mov   a,#$ff
0875: 6f        ret

0876: 1c        asl   a
0877: 2b e1     rol   $e1
0879: 1c        asl   a
087a: 2b e1     rol   $e1
087c: 1c        asl   a
087d: 2b e1     rol   $e1
087f: 1c        asl   a
0880: 2b e1     rol   $e1
0882: b0 ed     bcs   $0871
0884: 30 eb     bmi   $0871
0886: c3 e1 e8  bbs6  $e1,$0871
0889: eb e1     mov   y,$e1
088b: 6f        ret

088c: 4b e1     lsr   $e1
088e: 7c        ror   a
088f: 4b e1     lsr   $e1
0891: 7c        ror   a
0892: 4b e1     lsr   $e1
0894: 7c        ror   a
0895: eb e1     mov   y,$e1
0897: 6f        ret

0898: dw $088c
089a: dw $088f
089c: dw $0892
089e: dw $0875
08a0: dw $087f
08a2: dw $087c
08a4: dw $0879
08a6: dw $0876

08a8: 5d        mov   x,a
08a9: cf        mul   ya
08aa: da e0     movw  $e0,ya
08ac: 7d        mov   a,x
08ad: eb e2     mov   y,$e2
08af: cf        mul   ya
08b0: dd        mov   a,y
08b1: 8d 00     mov   y,#$00
08b3: 7a e0     addw  ya,$e0
08b5: 6f        ret

08b6: 3f a8 08  call  $08a8
08b9: cb e1     mov   $e1,y
08bb: 4b e1     lsr   $e1
08bd: 7c        ror   a
08be: 4b e1     lsr   $e1
08c0: 7c        ror   a
08c1: 4b e1     lsr   $e1
08c3: 7c        ror   a
08c4: 6f        ret

08c5: f6 80 f2  mov   a,$f280+y
08c8: d0 0f     bne   $08d9
08ca: d6 00 f4  mov   $f400+y,a
08cd: d6 01 f4  mov   $f401+y,a
08d0: f6 80 f4  mov   a,$f480+y
08d3: d0 09     bne   $08de
08d5: d6 00 f6  mov   $f600+y,a
08d8: 6f        ret

08d9: 3f ff 08  call  $08ff
08dc: 2f f2     bra   $08d0
08de: 83 13 1d  bbs4  $13,$08fe
08e1: f6 00 f5  mov   a,$f500+y
08e4: d6 01 f5  mov   $f501+y,a
08e7: e8 01     mov   a,#$01
08e9: d6 81 f5  mov   $f581+y,a
08ec: 9c        dec   a
08ed: d6 00 f6  mov   $f600+y,a
08f0: e8 30     mov   a,#$30
08f2: 36 81 f4  and   a,$f481+y
08f5: 68 30     cmp   a,#$30
08f7: d0 02     bne   $08fb
08f9: e8 20     mov   a,#$20
08fb: d6 81 f4  mov   $f481+y,a
08fe: 6f        ret

08ff: 83 13 20  bbs4  $13,$0922
0902: f6 00 f3  mov   a,$f300+y
0905: d6 01 f3  mov   $f301+y,a
0908: e8 01     mov   a,#$01
090a: d6 81 f3  mov   $f381+y,a
090d: 9c        dec   a
090e: d6 00 f4  mov   $f400+y,a
0911: d6 01 f4  mov   $f401+y,a
0914: e8 30     mov   a,#$30
0916: 36 81 f2  and   a,$f281+y
0919: 68 30     cmp   a,#$30
091b: d0 02     bne   $091f
091d: e8 20     mov   a,#$20
091f: d6 81 f2  mov   $f281+y,a
0922: 6f        ret

; vcmd 05
0923: f8 a1     mov   x,$a1
0925: e4 c6     mov   a,$c6
0927: 15 d1 ed  or    a,$edd1+x
092a: d5 d1 ed  mov   $edd1+x,a         ; not used at all?
092d: 6f        ret

; vcmd 06 - tempo
092e: 4f 78     pcall $78               ; read next voice byte to A and $dc
0930: d5 39 01  mov   $0139+x,a         ; update tempo
0933: e8 00     mov   a,#$00
0935: d4 a5     mov   $a5+x,a
0937: 6f        ret

; vcmd 07 - tempo fade
0938: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
093a: 80        setc
093b: b5 39 01  sbc   a,$0139+x
093e: f0 f5     beq   $0935
0940: 4f 1d     pcall $1d
0942: f8 a1     mov   x,$a1
0944: 40        setp
0945: d4 48     mov   $48+x,a
0947: db 49     mov   $49+x,y
0949: e8 80     mov   a,#$80
094b: d4 38     mov   $38+x,a
094d: 20        clrp
094e: eb a3     mov   y,$a3
0950: e4 dc     mov   a,$dc
0952: 2f e1     bra   $0935

; vcmd 01 - master volume
0954: 4f 78     pcall $78               ; read next voice byte to A and $dc
0956: d5 01 ed  mov   $ed01+x,a         ; master volume (8-bit, unsigned)
0959: e8 00     mov   a,#$00
095b: d5 59 01  mov   $0159+x,a
095e: 6f        ret

; vcmd 0c - volume
095f: 4f f4     pcall $f4               ; read next voice byte
0961: d6 01 f0  mov   $f001+y,a         ; set volume
0964: e8 00     mov   a,#$00
0966: d6 00 f1  mov   $f100+y,a
0969: 6f        ret

; vcmd 0d - volume fade
096a: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
096c: 80        setc
096d: b6 01 f0  sbc   a,$f001+y
0970: f0 f4     beq   $0966
0972: 4f 1d     pcall $1d
0974: f8 a3     mov   x,$a3
0976: d5 80 f0  mov   $f080+x,a
0979: dd        mov   a,y
097a: d5 81 f0  mov   $f081+x,a
097d: e8 00     mov   a,#$00
097f: d5 00 f0  mov   $f000+x,a
0982: e4 dc     mov   a,$dc
0984: eb a3     mov   y,$a3
0986: 2f de     bra   $0966

; vcmd 02 - echo volume
0988: 4f f4     pcall $f4               ; read next voice byte
098a: f8 a1     mov   x,$a1
098c: d0 02     bne   $0990
098e: c4 10     mov   $10,a             ; set EVOL shadow
0990: 6f        ret

; vcmd 03 - channel master volume
0991: dd        mov   a,y
0992: 5c        lsr   a
0993: fd        mov   y,a
0994: 4f f4     pcall $f4               ; read next voice byte
0996: d6 c0 fe  mov   $fec0+y,a         ; set channel master volume (8-bit, unsigned)
0999: eb a3     mov   y,$a3
099b: 6f        ret

; vcmd 0e - pan
099c: 4f f4     pcall $f4               ; read next voice byte (pan, 8-bit unsigned)
099e: d6 81 f1  mov   $f181+y,a         ; set pan
09a1: e8 00     mov   a,#$00
09a3: d6 01 f1  mov   $f101+y,a
09a6: 6f        ret

; vcmd 0f - pan fade
09a7: 4f 00     pcall $00               ; read next voice word to $dc/dd and A (fade length, target value)
09a9: 80        setc
09aa: b6 81 f1  sbc   a,$f181+y
09ad: f0 f4     beq   $09a3
09af: 4f 1d     pcall $1d
09b1: f8 a3     mov   x,$a3
09b3: d5 00 f2  mov   $f200+x,a
09b6: dd        mov   a,y
09b7: d5 01 f2  mov   $f201+x,a
09ba: e8 00     mov   a,#$00
09bc: d5 80 f1  mov   $f180+x,a
09bf: e4 dc     mov   a,$dc
09c1: eb a3     mov   y,$a3
09c3: 2f de     bra   $09a3

; vcmd 29 - pitch slide
09c5: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
09c7: d6 01 f6  mov   $f601+y,a
09ca: e4 dc     mov   a,$dc
09cc: d6 00 f7  mov   $f700+y,a
09cf: 6f        ret

; vcmd 18 - transpose (relative)
09d0: 4f f4     pcall $f4               ; read next voice byte
09d2: 60        clrc
09d3: 96 81 ee  adc   a,$ee81+y
09d6: 50 0c     bvc   $09e4
09d8: 10 04     bpl   $09de
09da: e8 7f     mov   a,#$7f
09dc: 2f 06     bra   $09e4
09de: e8 80     mov   a,#$80
09e0: 2f 02     bra   $09e4

; vcmd 17 - transpose (absolute)
09e2: 4f f4     pcall $f4               ; read next voice byte
09e4: d6 81 ee  mov   $ee81+y,a
09e7: 6f        ret

; vcmd 04 - echo feedback & filter
09e8: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
09ea: d0 1c     bne   $0a08
09ec: fa dc 0e  mov   ($0e),($dc)       ; set EFB shadow from arg1
09ef: c4 11     mov   $11,a
09f1: 9f        xcn   a
09f2: 5c        lsr   a                 ; calculate FIR offset: arg2 * 8
09f3: 5d        mov   x,a
09f4: 8f 0f f2  mov   $f2,#$0f
09f7: f5 c3 19  mov   a,$19c3+x
09fa: c4 f3     mov   $f3,a             ; set FIR
09fc: 3d        inc   x
09fd: 98 10 f2  adc   $f2,#$10
0a00: 10 f5     bpl   $09f7
0a02: 8f 0d f2  mov   $f2,#$0d
0a05: fa 0e f3  mov   ($f3),($0e)       ; set EFB
0a08: 6f        ret

; vcmd 19 - vibrato on
0a09: 4f 00     pcall $00               ; read next voice word to $dc/dd and A (arg1, arg2: vibrato delay and vibrato rate)
0a0b: d6 80 f3  mov   $f380+y,a         ; set vibrato delay
0a0e: e4 dc     mov   a,$dc
0a10: d6 00 f3  mov   $f300+y,a         ; set vibrato rate
0a13: 4f 78     pcall $78               ; read next voice byte to A and $dc  (arg3: vibrato depth)
0a15: 28 3f     and   a,#$3f
0a17: d6 80 f2  mov   $f280+y,a         ; set vibrato depth
0a1a: e4 dc     mov   a,$dc
0a1c: 28 c0     and   a,#$c0
0a1e: 5c        lsr   a
0a1f: 5c        lsr   a                 ; extract higher 2 bits of arg2
0a20: d6 81 f2  mov   $f281+y,a         ; ?
0a23: 5f ff 08  jmp   $08ff

; vcmd 1a - vibrato off
0a26: e8 00     mov   a,#$00
0a28: d6 80 f2  mov   $f280+y,a         ; set vibrato depth to 0
0a2b: 6f        ret

; vcmd 1b - tremolo on
0a2c: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
0a2e: d6 80 f5  mov   $f580+y,a
0a31: e4 dc     mov   a,$dc
0a33: d6 00 f5  mov   $f500+y,a
0a36: 4f 78     pcall $78               ; read next voice byte to A and $dc
0a38: 28 3f     and   a,#$3f
0a3a: d6 80 f4  mov   $f480+y,a
0a3d: e4 dc     mov   a,$dc
0a3f: 28 c0     and   a,#$c0
0a41: 5c        lsr   a
0a42: 5c        lsr   a
0a43: d6 81 f4  mov   $f481+y,a
0a46: 5f de 08  jmp   $08de

; vcmd 1c - tremolo off
0a49: e8 00     mov   a,#$00
0a4b: d6 80 f4  mov   $f480+y,a
0a4e: 6f        ret

; vcmd 1d - pan LFO on
0a4f: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
0a51: d6 01 f7  mov   $f701+y,a
0a54: 80        setc
0a55: 4f 1d     pcall $1d
0a57: f8 a3     mov   x,$a3
0a59: d5 80 f7  mov   $f780+x,a
0a5c: dd        mov   a,y
0a5d: d5 81 f7  mov   $f781+x,a
0a60: e4 dc     mov   a,$dc
0a62: d5 01 f8  mov   $f801+x,a
0a65: 1c        asl   a
0a66: d5 00 f8  mov   $f800+x,a
0a69: e8 00     mov   a,#$00
0a6b: eb a3     mov   y,$a3
0a6d: 2f 05     bra   $0a74

; vcmd 1e - pan LFO off
0a6f: e8 00     mov   a,#$00
0a71: d6 01 f7  mov   $f701+y,a
0a74: d6 80 f8  mov   $f880+y,a
0a77: e8 80     mov   a,#$80
0a79: d6 81 f8  mov   $f881+y,a         ; pan LFO value
0a7c: 6f        ret

; vcmd 0b - note number base
0a7d: 4f f4     pcall $f4               ; read next voice byte
0a7f: d6 80 f9  mov   $f980+y,a
0a82: 6f        ret

; vcmd 09 - set note length pattern
0a83: dd        mov   a,y
0a84: 5c        lsr   a
0a85: 8d 07     mov   y,#$07
0a87: cf        mul   ya
0a88: 7a 9f     addw  ya,$9f
0a8a: da 00     movw  $00,ya            ; $00 is set to note length table address
0a8c: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
0a8e: 8d 00     mov   y,#$00
0a90: cd 00     mov   x,#$00
0a92: 3f 9f 0a  call  $0a9f
0a95: e4 dc     mov   a,$dc
0a97: cd 08     mov   x,#$08
0a99: 3f 9f 0a  call  $0a9f
0a9c: eb a3     mov   y,$a3
0a9e: 6f        ret

; @in A: bitflags
; @in X: offset for note length table master
; @in/out Y: offset for the note length table to be changed
; @in/out $00/1: note length table pointer
0a9f: c4 02     mov   $02,a
0aa1: 08 00     or    a,#$00
0aa3: 10 06     bpl   $0aab
;
0aa5: f5 1c 19  mov   a,$191c+x
0aa8: d7 00     mov   ($00)+y,a
0aaa: fc        inc   y
;
0aab: 3d        inc   x
0aac: 0b 02     asl   $02
0aae: d0 f3     bne   $0aa3
0ab0: 6f        ret

; vcmd 0a - custom note length pattern
0ab1: dd        mov   a,y
0ab2: 5c        lsr   a
0ab3: 8d 07     mov   y,#$07            ; argument length: 7 bytes
0ab5: cb db     mov   $db,y
0ab7: cf        mul   ya
0ab8: 7a 9f     addw  ya,$9f
0aba: da e4     movw  $e4,ya            ; $e4 is set to note length table address
0abc: 8d 00     mov   y,#$00
0abe: 4f f4     pcall $f4               ; read next voice byte
0ac0: d7 e4     mov   ($e4)+y,a
0ac2: fc        inc   y
0ac3: 6e db f8  dbnz  $db,$0abe
0ac6: eb a3     mov   y,$a3
0ac8: 6f        ret

; vcmd 25 - portamento
0ac9: 4f f4     pcall $f4               ; read next voice byte (portamento speed in ticks)
0acb: 2f 02     bra   $0acf

; vcmd 26 - portamento off
0acd: e8 00     mov   a,#$00
0acf: d6 81 f9  mov   $f981+y,a
0ad2: 6f        ret

; vcmd 27
0ad3: 4f f4     pcall $f4               ; read next voice byte
0ad5: 5d        mov   x,a
0ad6: 30 04     bmi   $0adc
; vcmd 27, 00-7f - note randomization on
0ad8: d6 01 fa  mov   $fa01+y,a         ; randomization range (in semitones)
0adb: 6f        ret
;
0adc: 09 c6 1b  or    ($1b),($c6)
0adf: 68 82     cmp   a,#$82
0ae1: 90 0d     bcc   $0af0
;
0ae3: 5c        lsr   a
0ae4: 28 01     and   a,#$01
0ae6: f0 04     beq   $0aec
; vcmd 27, 83 - alternate volume mode?
0ae8: ca 13 60  mov1  $0013,3,c
0aeb: 6f        ret
; vcmd 27, 82 - global pitch LFO on?
0aec: ca 13 80  mov1  $0013,4,c
0aef: 6f        ret
; vcmd 27, 80-81
0af0: 78 00 a1  cmp   $a1,#$00
0af3: d0 fa     bne   $0aef
0af5: 5c        lsr   a
0af6: 90 06     bcc   $0afe
0af8: c2 13     set6  $13
0afa: e8 00     mov   a,#$00
0afc: 2f 04     bra   $0b02
0afe: d2 13     clr6  $13
0b00: e8 7f     mov   a,#$7f
0b02: 8f 0c f2  mov   $f2,#$0c
0b05: c4 f3     mov   $f3,a             ; set MVOL(L)
0b07: 8f 1c f2  mov   $f2,#$1c
0b0a: c4 f3     mov   $f3,a             ; set MVOL(R)
0b0c: 6f        ret

; vcmd 28 - note randomization off
0b0d: e8 00     mov   a,#$00
0b0f: 2f c7     bra   $0ad8

; vcmd 1f - noise on
0b11: f8 a1     mov   x,$a1
0b13: f5 a0 ed  mov   a,$eda0+x
0b16: 04 c6     or    a,$c6
0b18: d5 a0 ed  mov   $eda0+x,a
; update noise
0b1b: 8f 00 0b  mov   $0b,#$00
0b1e: 8d 0e     mov   y,#$0e
0b20: f6 8e ed  mov   a,$ed8e+y
0b23: 36 9e ed  and   a,$ed9e+y
0b26: d0 05     bne   $0b2d
;
0b28: dc        dec   y
0b29: fe f5     dbnz  y,$0b20
0b2b: 2f 22     bra   $0b4f
;
0b2d: f6 9f ed  mov   a,$ed9f+y         ; noise clock frequency
0b30: 28 1f     and   a,#$1f
0b32: 38 e0 0d  and   $0d,#$e0          ; clear noise clock frequency
0b35: 0e 0d 00  tset1 $000d             ; set frequency to FLG shadow
0b38: 8f ff 00  mov   $00,#$ff
0b3b: f6 8e ed  mov   a,$ed8e+y
0b3e: 36 9e ed  and   a,$ed9e+y
0b41: 24 00     and   a,$00
0b43: 0e 0b 00  tset1 $000b             ; set NON shadow
0b46: f6 8e ed  mov   a,$ed8e+y
0b49: 4e 00 00  tclr1 $0000
0b4c: dc        dec   y
0b4d: fe ec     dbnz  y,$0b3b
;
0b4f: eb a3     mov   y,$a3
0b51: 6f        ret

; vcmd 20 - noise off
0b52: f8 a1     mov   x,$a1
0b54: e4 c6     mov   a,$c6
0b56: 48 ff     eor   a,#$ff
0b58: 35 a0 ed  and   a,$eda0+x
0b5b: d5 a0 ed  mov   $eda0+x,a
0b5e: 2f bb     bra   $0b1b             ; update noise

; vcmd 08 - set noise frequency (buggy)
0b60: 4f 78     pcall $78               ; read next voice byte to A and $dc (noise frequency)
0b62: d5 a1 ed  mov   $eda1+x,a         ; $ed9f+x+2? (bug: manipulating the frequency of the next voice?)
0b65: 2f b4     bra   $0b1b             ; update noise

; vcmd 21 - pitchmod on
0b67: f8 a1     mov   x,$a1
0b69: e4 c6     mov   a,$c6
0b6b: 15 b0 ed  or    a,$edb0+x
0b6e: d5 b0 ed  mov   $edb0+x,a
; update PMON
0b71: 8f ff 00  mov   $00,#$ff
0b74: 8f 00 0a  mov   $0a,#$00          ; clear PMON shadow
0b77: 8d 0e     mov   y,#$0e
0b79: f6 ae ed  mov   a,$edae+y
0b7c: 36 8e ed  and   a,$ed8e+y
0b7f: 24 00     and   a,$00
0b81: 0e 0a 00  tset1 $000a             ; set PMON shadow
0b84: f6 8e ed  mov   a,$ed8e+y
0b87: 4e 00 00  tclr1 $0000
0b8a: dc        dec   y
0b8b: fe ec     dbnz  y,$0b79
0b8d: eb a3     mov   y,$a3
0b8f: 6f        ret

; vcmd 22 - pitchmod off
0b90: f8 a1     mov   x,$a1
0b92: e4 c6     mov   a,$c6
0b94: 48 ff     eor   a,#$ff
0b96: 35 b0 ed  and   a,$edb0+x
0b99: d5 b0 ed  mov   $edb0+x,a
0b9c: 2f d3     bra   $0b71

; vcmd 10 - instrument
0b9e: 4f 78     pcall $78               ; read next voice byte to A and $dc (instrument number, SRCN)
0ba0: b3 dc 05  bbc5  $dc,$0ba8         ; bit 5: ?
0ba3: 7d        mov   a,x
0ba4: 9f        xcn   a
0ba5: 5c        lsr   a
0ba6: 84 dc     adc   a,$dc
;
0ba8: d6 80 ee  mov   $ee80+y,a         ; set SRCN shadow
0bab: 1c        asl   a
0bac: 5d        mov   x,a
0bad: b0 1e     bcs   $0bcd
0baf: d0 05     bne   $0bb6
;
0bb1: e8 ba     mov   a,#$ba
0bb3: c5 b5 ff  mov   $ffb5,a           ; restore `pcall $b5` to `movw ya`
;
0bb6: f5 40 1d  mov   a,$1d40+x         ; $1d40/1+x: ADSR for instruments
0bb9: d6 80 ef  mov   $ef80+y,a
0bbc: f5 41 1d  mov   a,$1d41+x
0bbf: d6 81 ef  mov   $ef81+y,a
0bc2: f5 60 1e  mov   a,$1e60+x
0bc5: d6 00 ee  mov   $ee00+y,a         ; set ADSR(1) shadow
0bc8: f5 61 1e  mov   a,$1e61+x
0bcb: 2f 15     bra   $0be2
;
0bcd: f5 40 1e  mov   a,$1e40+x         ; $1e40/1+x: ADSR for instruments
0bd0: d6 80 ef  mov   $ef80+y,a
0bd3: f5 41 1e  mov   a,$1e41+x
0bd6: d6 81 ef  mov   $ef81+y,a
0bd9: f5 60 1f  mov   a,$1f60+x
0bdc: d6 00 ee  mov   $ee00+y,a         ; set ADSR(1) shadow
0bdf: f5 61 1f  mov   a,$1f61+x
0be2: d6 01 ee  mov   $ee01+y,a         ; set ADSR(2) shadow
0be5: 6f        ret

; vcmd 2f - conditional jump in repeat (break out)
0be6: 4f 78     pcall $78               ; read next voice byte to A and $dc (count)
0be8: f6 00 f9  mov   a,$f900+y
0beb: bc        inc   a
0bec: d6 00 f9  mov   $f900+y,a         ; increment the counter
0bef: 2e dc 25  cbne  $dc,$0c17         ; jump to the specified address when the value reaches the given count (fall through)
; vcmd 2c - goto
0bf2: 4f 00     pcall $00               ; read next voice word to $dc/dd and A (destination in virtual offset)
0bf4: f5 c1 ed  mov   a,$edc1+x
0bf7: fd        mov   y,a
0bf8: f5 c0 ed  mov   a,$edc0+x
0bfb: 7a dc     addw  ya,$dc            ; convert the virtual offset to RAM address
0bfd: f8 a3     mov   x,$a3
0bff: d4 1f     mov   $1f+x,a
0c01: db 20     mov   $20+x,y
0c03: eb a3     mov   y,$a3
0c05: 6f        ret

0c06: 55 58 01  eor   a,$0158+x         ; clear the bit
0c09: d5 58 01  mov   $0158+x,a
0c0c: 2f e4     bra   $0bf2             ; perform goto

; vcmd 2d
0c0e: f8 a1     mov   x,$a1
0c10: f5 58 01  mov   a,$0158+x
0c13: 24 c6     and   a,$c6             ; test the channel bit
0c15: d0 ef     bne   $0c06             ; jump if the bit is on
0c17: 5f 00 ff  jmp   $ff00             ; otherwise, skip the destination address

; vcmd 23 - echo on
0c1a: f8 a1     mov   x,$a1
0c1c: f5 f0 ed  mov   a,$edf0+x
0c1f: 04 c6     or    a,$c6
0c21: d5 f0 ed  mov   $edf0+x,a
; update echo on bits
0c24: 8f ff 00  mov   $00,#$ff
0c27: 8f 00 0c  mov   $0c,#$00          ; zero EON shadow
0c2a: 8d 0e     mov   y,#$0e
0c2c: f6 ee ed  mov   a,$edee+y
0c2f: 36 8e ed  and   a,$ed8e+y
0c32: 24 00     and   a,$00
0c34: 0e 0c 00  tset1 $000c             ; set EON shadow
0c37: f6 8e ed  mov   a,$ed8e+y
0c3a: 4e 00 00  tclr1 $0000
0c3d: dc        dec   y
0c3e: fe ec     dbnz  y,$0c2c
0c40: eb a3     mov   y,$a3
0c42: 6f        ret

; vcmd 00 - end of track
0c43: f8 a1     mov   x,$a1
0c45: 02 13     set0  $13
0c47: e4 c6     mov   a,$c6
0c49: 48 ff     eor   a,#$ff
0c4b: 35 90 ed  and   a,$ed90+x
0c4e: d5 90 ed  mov   $ed90+x,a
0c51: e4 c6     mov   a,$c6
0c53: 48 ff     eor   a,#$ff
0c55: 35 91 ed  and   a,$ed91+x
0c58: d5 91 ed  mov   $ed91+x,a
0c5b: e4 c8     mov   a,$c8
0c5d: 24 c6     and   a,$c6
0c5f: 0e 09 00  tset1 $0009             ; clear KOF shadow
0c62: 3f 52 0b  call  $0b52
0c65: 3f 90 0b  call  $0b90
; vcmd 24 - echo off
0c68: f8 a1     mov   x,$a1
0c6a: e4 c6     mov   a,$c6
0c6c: 48 ff     eor   a,#$ff
0c6e: 35 f0 ed  and   a,$edf0+x
0c71: d5 f0 ed  mov   $edf0+x,a
0c74: 2f ae     bra   $0c24

; vcmd 2e - repeat end
0c76: dd        mov   a,y
0c77: 1c        asl   a
0c78: 16 01 f9  or    a,$f901+y         ; nesting level
0c7b: 5d        mov   x,a
0c7c: f5 00 1a  mov   a,$1a00+x         ; get current repeat count
0c7f: f0 06     beq   $0c87             ; repeat again if 0
0c81: 9c        dec   a
0c82: d5 00 1a  mov   $1a00+x,a         ; otherwise, decrease the count
0c85: f0 1f     beq   $0ca6             ; and 
; repeat again
0c87: 7d        mov   a,x
0c88: 1c        asl   a
0c89: 5d        mov   x,a
0c8a: b0 0d     bcs   $0c99
;
0c8c: f5 00 fb  mov   a,$fb00+x
0c8f: d6 1f 00  mov   $001f+y,a
0c92: f5 01 fb  mov   a,$fb01+x
0c95: d6 20 00  mov   $0020+y,a         ; jump to repeat start address
0c98: 6f        ret
;
0c99: f5 00 fc  mov   a,$fc00+x
0c9c: d6 1f 00  mov   $001f+y,a
0c9f: f5 01 fc  mov   a,$fc01+x
0ca2: d6 20 00  mov   $0020+y,a
0ca5: 6f        ret
; repeat is over
0ca6: f6 01 f9  mov   a,$f901+y
0ca9: 9c        dec   a
0caa: d6 01 f9  mov   $f901+y,a         ; decrease the nesting level
0cad: 6f        ret

; vcmd 2a - repeat start
0cae: 4f 78     pcall $78               ; read next voice byte to A and $dc (repeat count - 1)
0cb0: f6 01 f9  mov   a,$f901+y
0cb3: bc        inc   a                 ; increase the nesting level
0cb4: 68 04     cmp   a,#$04
0cb6: b0 8b     bcs   $0c43             ; halt: nesting level is too much
0cb8: d6 01 f9  mov   $f901+y,a         ; save increased nesting level
0cbb: dd        mov   a,y
0cbc: 1c        asl   a
0cbd: 16 01 f9  or    a,$f901+y
0cc0: 5d        mov   x,a
0cc1: e4 dc     mov   a,$dc
0cc3: f0 01     beq   $0cc6             ; repeat count 0 = infinite loop
0cc5: bc        inc   a
0cc6: d5 00 1a  mov   $1a00+x,a         ; save repeat count
0cc9: 7d        mov   a,x
0cca: 1c        asl   a
0ccb: 5d        mov   x,a
0ccc: f6 1f 00  mov   a,$001f+y
0ccf: b0 0b     bcs   $0cdc
;
0cd1: d5 00 fb  mov   $fb00+x,a         ; save repeat start address (lo)
0cd4: f6 20 00  mov   a,$0020+y
0cd7: d5 01 fb  mov   $fb01+x,a         ; save repeat start address (hi)
0cda: 2f 09     bra   $0ce5
;
0cdc: d5 00 fc  mov   $fc00+x,a
0cdf: f6 20 00  mov   a,$0020+y
0ce2: d5 01 fc  mov   $fc01+x,a
;
0ce5: e8 00     mov   a,#$00
0ce7: d6 00 f9  mov   $f900+y,a         ; reset alternative incremental counter
0cea: 6f        ret

; vcmd 11 - tuning
0ceb: 4f f4     pcall $f4               ; read next voice byte (tuning, signed, 1 semitone at maximum)
0ced: d6 01 ef  mov   $ef01+y,a
0cf0: 6f        ret

0cf1: c4 f4     mov   $f4,a
0cf3: e4 f4     mov   a,$f4
0cf5: 64 f4     cmp   a,$f4
0cf7: d0 fa     bne   $0cf3
0cf9: 68 ff     cmp   a,#$ff
0cfb: f0 f4     beq   $0cf1
0cfd: c4 04     mov   $04,a
0cff: fa f5 05  mov   ($05),($f5)
0d02: fa f6 06  mov   ($06),($f6)
0d05: fa f7 07  mov   ($07),($f7)
0d08: 38 03 04  and   $04,#$03
0d0b: 28 fc     and   a,#$fc
0d0d: 5c        lsr   a
0d0e: 5d        mov   x,a
0d0f: 68 22     cmp   a,#$22
0d11: f0 04     beq   $0d17
0d13: 68 24     cmp   a,#$24
0d15: d0 12     bne   $0d29
0d17: 8d 10     mov   y,#$10
0d19: f6 8e ed  mov   a,$ed8e+y
0d1c: 16 8f ed  or    a,$ed8f+y
0d1f: f0 05     beq   $0d26
0d21: f6 57 01  mov   a,$0157+y
0d24: d0 ca     bne   $0cf0
0d26: dc        dec   y
0d27: fe f0     dbnz  y,$0d19
0d29: e8 03     mov   a,#$03
0d2b: c5 80 1f  mov   $1f80,a
0d2e: c8 40     cmp   x,#$40
0d30: 90 0d     bcc   $0d3f
0d32: fa f4 f4  mov   ($f4),($f4)
0d35: e8 00     mov   a,#$00
0d37: 2e f4 fd  cbne  $f4,$0d37
0d3a: c4 f4     mov   $f4,a
0d3c: 1f a5 19  jmp   ($19a5+x)

0d3f: c8 20     cmp   x,#$20
0d41: 90 0b     bcc   $0d4e
0d43: e4 f4     mov   a,$f4
0d45: c4 f4     mov   $f4,a
0d47: 64 f4     cmp   a,$f4
0d49: f0 fc     beq   $0d47
0d4b: 1f bf 19  jmp   ($19bf+x)

0d4e: 1f d9 19  jmp   ($19d9+x)

0d51: 8d 00     mov   y,#$00
0d53: f6 90 ed  mov   a,$ed90+y
0d56: 16 91 ed  or    a,$ed91+y
0d59: d0 1d     bne   $0d78
0d5b: dd        mov   a,y
0d5c: 5d        mov   x,a
0d5d: 3d        inc   x
0d5e: 3d        inc   x
0d5f: c8 0e     cmp   x,#$0e
0d61: f0 1b     beq   $0d7e
0d63: f5 90 ed  mov   a,$ed90+x
0d66: 15 91 ed  or    a,$ed91+x
0d69: f0 f2     beq   $0d5d
0d6b: 6d        push  y
0d6c: 3f 05 18  call  $1805
0d6f: ee        pop   y
0d70: e8 00     mov   a,#$00
0d72: d5 90 ed  mov   $ed90+x,a
0d75: d5 91 ed  mov   $ed91+x,a
0d78: fc        inc   y
0d79: fc        inc   y
0d7a: ad 0e     cmp   y,#$0e
0d7c: d0 d5     bne   $0d53
0d7e: 6f        ret

0d7f: e4 05     mov   a,$05
0d81: f0 23     beq   $0da6
0d83: e5 90 ed  mov   a,$ed90
0d86: 05 91 ed  or    a,$ed91
0d89: f0 1b     beq   $0da6
0d8b: e5 e1 ed  mov   a,$ede1
0d8e: d0 16     bne   $0da6
0d90: 8d 06     mov   y,#$06
0d92: f6 0d 00  mov   a,$000d+y
0d95: d6 a9 0d  mov   $0da9+y,a
0d98: fe f8     dbnz  y,$0d92
0d9a: cd 00     mov   x,#$00
0d9c: e5 e0 ed  mov   a,$ede0
0d9f: c4 1d     mov   $1d,a
0da1: 8d 0e     mov   y,#$0e
0da3: 5f 05 18  jmp   $1805

0da6: 8f 00 1d  mov   $1d,#$00
0da9: 6f        ret

0daa: db $00,$00,$00,$00,$00,$00

0db0: 32 13     clr1  $13
0db2: e4 04     mov   a,$04
0db4: d0 0f     bne   $0dc5
0db6: 69 1d 05  cmp   ($05),($1d)
0db9: d0 0a     bne   $0dc5
0dbb: 8f 00 1d  mov   $1d,#$00
0dbe: e9 90 ed  mov   x,$ed90
0dc1: d0 02     bne   $0dc5
0dc3: 22 13     set1  $13
0dc5: 3f 76 10  call  $1076
0dc8: e4 06     mov   a,$06
0dca: 28 0f     and   a,#$0f
0dcc: f0 04     beq   $0dd2
0dce: 9f        xcn   a
0dcf: d5 31 ed  mov   $ed31+x,a
0dd2: e4 07     mov   a,$07
0dd4: 28 f0     and   a,#$f0
0dd6: 9f        xcn   a
0dd7: 8d 11     mov   y,#$11
0dd9: cf        mul   ya
0dda: d5 61 ed  mov   $ed61+x,a
0ddd: 38 f0 06  and   $06,#$f0
0de0: 38 0f 07  and   $07,#$0f
0de3: 09 07 06  or    ($06),($07)
0de6: e4 06     mov   a,$06
0de8: 28 0f     and   a,#$0f
0dea: 8d 11     mov   y,#$11
0dec: cf        mul   ya
0ded: c4 07     mov   $07,a
0def: 38 f0 06  and   $06,#$f0
0df2: e4 05     mov   a,$05
0df4: d0 0f     bne   $0e05
0df6: 8f ff 1b  mov   $1b,#$ff
0df9: cd 0c     mov   x,#$0c
0dfb: d8 a1     mov   $a1,x
0dfd: 3f 11 0e  call  $0e11
0e00: 1d        dec   x
0e01: 1d        dec   x
0e02: 10 f7     bpl   $0dfb
0e04: 6f        ret

0e05: 21        tcall 2
0e06: 30 fc     bmi   $0e04
0e08: 31        tcall 3
0e09: e4 c8     mov   a,$c8
0e0b: 35 90 ed  and   a,$ed90+x
0e0e: 0e 1b 00  tset1 $001b
0e11: e4 06     mov   a,$06
0e13: d5 51 ed  mov   $ed51+x,a
0e16: f0 0d     beq   $0e25
0e18: e4 07     mov   a,$07
0e1a: 75 61 ed  cmp   a,$ed61+x
0e1d: d0 0c     bne   $0e2b
0e1f: e8 00     mov   a,#$00
0e21: d5 51 ed  mov   $ed51+x,a
0e24: 6f        ret

0e25: e4 07     mov   a,$07
0e27: d5 61 ed  mov   $ed61+x,a
0e2a: 6f        ret

0e2b: 80        setc
0e2c: b5 61 ed  sbc   a,$ed61+x
0e2f: 4f 21     pcall $21
0e31: f8 a1     mov   x,$a1
0e33: d5 70 ed  mov   $ed70+x,a
0e36: dd        mov   a,y
0e37: d5 71 ed  mov   $ed71+x,a
0e3a: e8 00     mov   a,#$00
0e3c: d5 60 ed  mov   $ed60+x,a
0e3f: 6f        ret

0e40: e8 00     mov   a,#$00
0e42: c4 e0     mov   $e0,a
0e44: c4 e1     mov   $e1,a
0e46: c4 e2     mov   $e2,a
0e48: c4 e3     mov   $e3,a
0e4a: c4 ef     mov   $ef,a
0e4c: c4 ed     mov   $ed,a
0e4e: c4 01     mov   $01,a
0e50: c4 de     mov   $de,a
0e52: c4 dd     mov   $dd,a
0e54: 7d        mov   a,x
0e55: f0 10     beq   $0e67
0e57: f5 8e ed  mov   a,$ed8e+x
0e5a: 0e e0 00  tset1 $00e0
0e5d: 35 cf ed  and   a,$edcf+x
0e60: 0e e1 00  tset1 $00e1
0e63: 1d        dec   x
0e64: 1d        dec   x
0e65: d0 f0     bne   $0e57
0e67: 8f 01 c6  mov   $c6,#$01
0e6a: e4 c6     mov   a,$c6
0e6c: 24 e0     and   a,$e0
0e6e: d0 04     bne   $0e74
0e70: ab e2     inc   $e2
0e72: 2f 12     bra   $0e86
0e74: 69 e2 ed  cmp   ($ed),($e2)
0e77: b0 09     bcs   $0e82
0e79: fa e2 ed  mov   ($ed),($e2)
0e7c: fa c6 dd  mov   ($dd),($c6)
0e7f: 8f 00 e2  mov   $e2,#$00
0e82: 24 e1     and   a,$e1
0e84: d0 04     bne   $0e8a
0e86: ab e3     inc   $e3
0e88: 2f 0e     bra   $0e98
0e8a: 69 e3 ef  cmp   ($ef),($e3)
0e8d: b0 09     bcs   $0e98
0e8f: fa e3 ef  mov   ($ef),($e3)
0e92: fa c6 de  mov   ($de),($c6)
0e95: 8f 00 e3  mov   $e3,#$00
0e98: 0b c6     asl   $c6
0e9a: d0 ce     bne   $0e6a
0e9c: 69 e2 ed  cmp   ($ed),($e2)
0e9f: b0 06     bcs   $0ea7
0ea1: fa e2 ed  mov   ($ed),($e2)
0ea4: 8f 00 dd  mov   $dd,#$00
0ea7: ed        notc
0ea8: 6b dd     ror   $dd
0eaa: 69 e3 ef  cmp   ($ef),($e3)
0ead: b0 06     bcs   $0eb5
0eaf: fa e3 ef  mov   ($ef),($e3)
0eb2: 8f 00 de  mov   $de,#$00
0eb5: ed        notc
0eb6: 6b de     ror   $de
0eb8: f8 a1     mov   x,$a1
0eba: f5 80 ed  mov   a,$ed80+x
0ebd: c4 02     mov   $02,a
0ebf: f5 81 ed  mov   a,$ed81+x
0ec2: c4 03     mov   $03,a             ; obtain song header address from $ed80+x (destructive? points to the end of the header after loading is complete...)
0ec4: 8d 01     mov   y,#$01
0ec6: e4 ef     mov   a,$ef
0ec8: 77 02     cmp   a,($02)+y
0eca: b0 01     bcs   $0ecd
0ecc: 6f        ret

; parse song header
0ecd: f7 02     mov   a,($02)+y         ; offset 1: channel count
0ecf: fd        mov   y,a
0ed0: c4 00     mov   $00,a
0ed2: e4 dd     mov   a,$dd
0ed4: 69 00 ed  cmp   ($ed),($00)
0ed7: b0 02     bcs   $0edb
0ed9: e4 de     mov   a,$de
0edb: 1c        asl   a
0edc: 7c        ror   a
0edd: fe fd     dbnz  y,$0edc
0edf: c4 c6     mov   $c6,a             ; channel bit
0ee1: 7d        mov   a,x
0ee2: d0 08     bne   $0eec
;
0ee4: e7 02     mov   a,($02+x)
0ee6: c4 12     mov   $12,a
0ee8: f0 02     beq   $0eec
0eea: b2 0d     clr5  $0d               ; echo will be enabled
;
0eec: 8d 02     mov   y,#$02
0eee: f8 a3     mov   x,$a3
0ef0: f7 02     mov   a,($02)+y         ; ?
0ef2: d4 1f     mov   $1f+x,a
0ef4: fc        inc   y
0ef5: f7 02     mov   a,($02)+y         ; ?
0ef7: d4 20     mov   $20+x,a
0ef9: dc        dec   y
0efa: 03 c6 08  bbs0  $c6,$0f05
0efd: e8 01     mov   a,#$01
;
0eff: 3d        inc   x
0f00: 3d        inc   x                 ; next channel
0f01: 1c        asl   a
0f02: 2e c6 fa  cbne  $c6,$0eff
; read voice offsets from header
0f05: 8b 00     dec   $00               ; decrease channel count
0f07: 30 13     bmi   $0f1c             ; repeat for each channels
0f09: f7 02     mov   a,($02)+y         ; offset 2 + (2*channel): offset to voice bytes (lo)
0f0b: d4 1f     mov   $1f+x,a
0f0d: fc        inc   y
0f0e: f7 02     mov   a,($02)+y         ; offset 3 + (2*channel): offset to voice bytes (hi)
0f10: d4 20     mov   $20+x,a
0f12: fc        inc   y
0f13: 09 c6 01  or    ($01),($c6)       ; activate channel
0f16: 3d        inc   x
0f17: 3d        inc   x                 ; next channel
0f18: 0b c6     asl   $c6
0f1a: 2f e9     bra   $0f05             ; continue
;
0f1c: f8 a1     mov   x,$a1
0f1e: dd        mov   a,y
0f1f: 8d 00     mov   y,#$00
0f21: 7a 02     addw  ya,$02
0f23: da 02     movw  $02,ya            ; seek to the end of the offset list
0f25: d5 80 ed  mov   $ed80+x,a
0f28: dd        mov   a,y
0f29: d5 81 ed  mov   $ed81+x,a
0f2c: 80        setc
0f2d: eb a3     mov   y,$a3
0f2f: e4 02     mov   a,$02
0f31: b6 1f 00  sbc   a,$001f+y
0f34: d5 c0 ed  mov   $edc0+x,a
0f37: e4 03     mov   a,$03
0f39: b6 20 00  sbc   a,$0020+y
0f3c: d5 c1 ed  mov   $edc1+x,a         ; base offset ($edc0/1+x) = song header end - first voice offset
0f3f: e4 01     mov   a,$01
0f41: d5 90 ed  mov   $ed90+x,a
0f44: c4 02     mov   $02,a             ; load channel bits
0f46: 04 09     or    a,$09             ; KOF shadow
0f48: 8f 5c f2  mov   $f2,#$5c
0f4b: c4 f3     mov   $f3,a             ; set KOF
0f4d: 4e 08 00  tclr1 $0008             ; clear KON shadow
0f50: 4e 19 00  tclr1 $0019
0f53: 8f 00 09  mov   $09,#$00          ; clear KOF shadow
; convert voice data offsets to absolute address
0f56: 13 02 16  bbc0  $02,$0f6f
0f59: 60        clrc
0f5a: f5 c0 ed  mov   a,$edc0+x
0f5d: 96 1f 00  adc   a,$001f+y
0f60: d6 1f 00  mov   $001f+y,a
0f63: f5 c1 ed  mov   a,$edc1+x
0f66: 96 20 00  adc   a,$0020+y
0f69: d6 20 00  mov   $0020+y,a         ; add base offset ($edc0+x)
0f6c: 3f 3b 17  call  $173b
0f6f: fc        inc   y
0f70: fc        inc   y                 ; next channel
0f71: 4b 02     lsr   $02
0f73: d0 e1     bne   $0f56
0f75: 6f        ret

0f76: 32 13     clr1  $13
0f78: e4 04     mov   a,$04
0f7a: d0 0f     bne   $0f8b
0f7c: 69 1d 05  cmp   ($05),($1d)
0f7f: d0 0a     bne   $0f8b
0f81: 8f 00 1d  mov   $1d,#$00
0f84: e9 90 ed  mov   x,$ed90
0f87: d0 02     bne   $0f8b
0f89: 22 13     set1  $13
0f8b: 3f 76 10  call  $1076
0f8e: e4 07     mov   a,$07
0f90: d0 01     bne   $0f93
0f92: 6f        ret

0f93: 28 f0     and   a,#$f0
0f95: f0 03     beq   $0f9a
0f97: d5 31 ed  mov   $ed31+x,a
0f9a: e4 06     mov   a,$06
0f9c: 28 0f     and   a,#$0f
0f9e: 8d 11     mov   y,#$11
0fa0: cf        mul   ya
0fa1: d5 61 ed  mov   $ed61+x,a
0fa4: 38 f0 06  and   $06,#$f0
0fa7: 38 0f 07  and   $07,#$0f
0faa: 09 07 06  or    ($06),($07)
0fad: e4 06     mov   a,$06
0faf: 28 0f     and   a,#$0f
0fb1: f0 18     beq   $0fcb
0fb3: 9f        xcn   a
0fb4: c4 07     mov   $07,a
0fb6: 38 f0 06  and   $06,#$f0
0fb9: e4 05     mov   a,$05
0fbb: d0 0f     bne   $0fcc
0fbd: 8f ff 1b  mov   $1b,#$ff
0fc0: cd 0c     mov   x,#$0c
0fc2: d8 a1     mov   $a1,x
0fc4: 3f d8 0f  call  $0fd8
0fc7: 1d        dec   x
0fc8: 1d        dec   x
0fc9: 10 f7     bpl   $0fc2
0fcb: 6f        ret

0fcc: 21        tcall 2
0fcd: 30 fc     bmi   $0fcb
0fcf: 31        tcall 3
0fd0: e4 c8     mov   a,$c8
0fd2: 35 90 ed  and   a,$ed90+x
0fd5: 0e 1b 00  tset1 $001b
0fd8: e4 06     mov   a,$06
0fda: d5 50 ed  mov   $ed50+x,a
0fdd: f0 0d     beq   $0fec
0fdf: e4 07     mov   a,$07
0fe1: 75 31 ed  cmp   a,$ed31+x
0fe4: d0 0c     bne   $0ff2
0fe6: e8 00     mov   a,#$00
0fe8: d5 50 ed  mov   $ed50+x,a
0feb: 6f        ret

0fec: e4 07     mov   a,$07
0fee: d5 31 ed  mov   $ed31+x,a
0ff1: 6f        ret

0ff2: 80        setc
0ff3: b5 31 ed  sbc   a,$ed31+x
0ff6: 4f 21     pcall $21
0ff8: f8 a1     mov   x,$a1
0ffa: d5 40 ed  mov   $ed40+x,a
0ffd: dd        mov   a,y
0ffe: d5 41 ed  mov   $ed41+x,a
1001: e8 00     mov   a,#$00
1003: d5 30 ed  mov   $ed30+x,a
1006: 6f        ret

; initialize sequence global variables
1007: e8 00     mov   a,#$00
1009: d5 58 01  mov   $0158+x,a
100c: d5 f0 ed  mov   $edf0+x,a
100f: d5 a0 ed  mov   $eda0+x,a
1012: d5 b0 ed  mov   $edb0+x,a
1015: d5 b1 ed  mov   $edb1+x,a
1018: d5 11 ed  mov   $ed11+x,a
101b: d5 00 ed  mov   $ed00+x,a
101e: d5 d1 ed  mov   $edd1+x,a
1021: d5 d0 ed  mov   $edd0+x,a
1024: d5 50 ed  mov   $ed50+x,a
1027: d5 51 ed  mov   $ed51+x,a
102a: d5 f1 ed  mov   $edf1+x,a
102d: d4 a5     mov   $a5+x,a
102f: 40        setp
1030: d4 09     mov   $09+x,a
1032: d4 28     mov   $28+x,a
1034: 9c        dec   a
1035: d4 29     mov   $29+x,a
1037: e8 80     mov   a,#$80
1039: d4 39     mov   $39+x,a           ; default tempo
103b: 20        clrp
103c: d5 31 ed  mov   $ed31+x,a         ; default master pan = 0x80 (center)
103f: d5 61 ed  mov   $ed61+x,a
1042: d5 59 01  mov   $0159+x,a
1045: e8 18     mov   a,#$18
1047: d5 01 ed  mov   $ed01+x,a         ; default master volume = 0x18
104a: 6f        ret

104b: f5 90 ed  mov   a,$ed90+x
104e: 2d        push  a
104f: eb a3     mov   y,$a3
1051: 8f 01 c6  mov   $c6,#$01
1054: f5 90 ed  mov   a,$ed90+x
1057: 24 c6     and   a,$c6
1059: f0 01     beq   $105c
105b: 41        tcall 4
105c: fc        inc   y
105d: fc        inc   y
105e: 0b c6     asl   $c6
1060: d0 f2     bne   $1054
1062: ae        pop   a
1063: d5 90 ed  mov   $ed90+x,a
1066: 4e 0c 00  tclr1 $000c             ; clear EON shadow
1069: 4e 0b 00  tclr1 $000b             ; clear NON shadow
106c: 4e 0a 00  tclr1 $000a             ; clear PMON shadow
106f: 4e 08 00  tclr1 $0008             ; clear KON shadow
1072: 0e 09 00  tset1 $0009             ; set KOF shadow
1075: 6f        ret

1076: 3f 9c 17  call  $179c
1079: 7d        mov   a,x
107a: d0 15     bne   $1091
107c: 8f 2c f2  mov   $f2,#$2c
107f: d8 f3     mov   $f3,x             ; set EVOL(L)
1081: 8f 3c f2  mov   $f2,#$3c
1084: d8 f3     mov   $f3,x             ; set EVOL(R)
1086: a2 0d     set5  $0d               ; echo off
1088: 8f 6c f2  mov   $f2,#$6c
108b: fa 0d f3  mov   ($f3),($0d)       ; set FLG and disable echo
108e: 3f fe 0a  call  $0afe
1091: e4 05     mov   a,$05
1093: d5 e0 ed  mov   $ede0+x,a
1096: e4 04     mov   a,$04
1098: d5 e1 ed  mov   $ede1+x,a
109b: 3f 00 02  call  $0200
109e: f8 a1     mov   x,$a1
10a0: 23 13 08  bbs1  $13,$10ab
10a3: 3f 40 0e  call  $0e40             ; load the song
10a6: 3f 07 10  call  $1007             ; initialize globals such as tempo
10a9: 2f 03     bra   $10ae
10ab: 3f 37 14  call  $1437
10ae: 7d        mov   a,x
10af: d0 9a     bne   $104b
10b1: c4 1b     mov   $1b,a
10b3: c4 1c     mov   $1c,a
10b5: c4 0b     mov   $0b,a             ; clear NON shadow
10b7: c4 0a     mov   $0a,a             ; clear PMON shadow
10b9: c4 08     mov   $08,a             ; clear KON shadow
10bb: 9c        dec   a
10bc: c4 09     mov   $09,a             ; set KOF shadow
10be: 23 13 b4  bbs1  $13,$1075
10c1: e8 00     mov   a,#$00
10c3: 8f 4d f2  mov   $f2,#$4d
10c6: c4 f3     mov   $f3,a             ; zero EON
10c8: 8f 2c f2  mov   $f2,#$2c
10cb: c4 f3     mov   $f3,a             ; zero EVOL(L)
10cd: 8f 3c f2  mov   $f2,#$3c
10d0: c4 f3     mov   $f3,a             ; zero EVOL(R)
10d2: c4 0c     mov   $0c,a             ; zero EON shadow
10d4: c4 10     mov   $10,a             ; zero EVOL shadow
10d6: e4 12     mov   a,$12
10d8: f0 39     beq   $1113
10da: 1c        asl   a
10db: 1c        asl   a
10dc: 1c        asl   a
10dd: c4 ea     mov   $ea,a
10df: 48 ff     eor   a,#$ff
10e1: 88 ee     adc   a,#$ee
10e3: 8f 6d f2  mov   $f2,#$6d
10e6: c4 f3     mov   $f3,a             ; set ESA
10e8: 8f 7d f2  mov   $f2,#$7d
10eb: fa 12 f3  mov   ($f3),($12)       ; set EDL
10ee: c4 18     mov   $18,a
10f0: eb fd     mov   y,$fd
10f2: cd 32     mov   x,#$32
10f4: 80        setc
10f5: c5 fd 10  mov   $10fd,a
10f8: 8d 00     mov   y,#$00
10fa: dd        mov   a,y
10fb: d6 00 ed  mov   $ed00+y,a         ; this line is dynamically patched ($10fd)
10fe: fe fb     dbnz  y,$10fb           ; zero memory for 256 bytes ($xx00-xxff)
1100: 7d        mov   a,x
1101: f0 03     beq   $1106
1103: a4 fd     sbc   a,$fd
1105: 5d        mov   x,a
1106: ac fd 10  inc   $10fd             ; patch `mov`
1109: 6e ea ee  dbnz  $ea,$10fa         ; clear next page if necessary
110c: 7d        mov   a,x
110d: f0 04     beq   $1113
110f: a4 fd     sbc   a,$fd
1111: d0 fc     bne   $110f
1113: f8 a1     mov   x,$a1
1115: 6f        ret

1116: 3f 21 11  call  $1121
1119: 3e f4     cmp   x,$f4
111b: f0 fc     beq   $1119
111d: 8f 00 f4  mov   $f4,#$00
1120: 6f        ret

1121: 8d 0e     mov   y,#$0e
1123: f6 8f ed  mov   a,$ed8f+y
1126: 16 8e ed  or    a,$ed8e+y
1129: d0 07     bne   $1132
112b: 9c        dec   a
112c: d6 de ed  mov   $edde+y,a
112f: d6 df ed  mov   $eddf+y,a
1132: dc        dec   y
1133: fe ee     dbnz  y,$1123
1135: e5 e0 ed  mov   a,$ede0
1138: ec e1 ed  mov   y,$ede1
113b: da f5     movw  $f5,ya
113d: e5 e2 ed  mov   a,$ede2
1140: c4 f7     mov   $f7,a
1142: f8 f4     mov   x,$f4
1144: d8 f4     mov   $f4,x
1146: 3e f4     cmp   x,$f4
1148: f0 fc     beq   $1146
114a: e5 e3 ed  mov   a,$ede3
114d: c4 f5     mov   $f5,a
114f: e5 e4 ed  mov   a,$ede4
1152: ec e5 ed  mov   y,$ede5
1155: da f6     movw  $f6,ya
1157: f8 f4     mov   x,$f4
1159: d8 f4     mov   $f4,x
115b: 3e f4     cmp   x,$f4
115d: f0 fc     beq   $115b
115f: e5 e6 ed  mov   a,$ede6
1162: ec e7 ed  mov   y,$ede7
1165: da f5     movw  $f5,ya
1167: e5 e8 ed  mov   a,$ede8
116a: c4 f7     mov   $f7,a
116c: f8 f4     mov   x,$f4
116e: d8 f4     mov   $f4,x
1170: 3e f4     cmp   x,$f4
1172: f0 fc     beq   $1170
1174: e5 e9 ed  mov   a,$ede9
1177: c4 f5     mov   $f5,a
1179: e5 ea ed  mov   a,$edea
117c: ec eb ed  mov   y,$edeb
117f: da f6     movw  $f6,ya
1181: f8 f4     mov   x,$f4
1183: d8 f4     mov   $f4,x
1185: 3e f4     cmp   x,$f4
1187: f0 fc     beq   $1185
1189: e5 ec ed  mov   a,$edec
118c: ec ed ed  mov   y,$eded
118f: da f5     movw  $f5,ya
1191: f8 f4     mov   x,$f4
1193: d8 f4     mov   $f4,x
1195: 6f        ret

1196: e4 06     mov   a,$06
1198: 28 07     and   a,#$07
119a: 8d 12     mov   y,#$12
119c: cf        mul   ya
119d: 73 06 03  bbc3  $06,$11a3
11a0: 60        clrc
11a1: 88 70     adc   a,#$70
11a3: c4 07     mov   $07,a
11a5: 38 f0 06  and   $06,#$f0
11a8: 6f        ret

11a9: 48 80     eor   a,#$80
11ab: c4 00     mov   $00,a
11ad: e4 07     mov   a,$07
11af: 48 80     eor   a,#$80
11b1: 80        setc
11b2: a4 00     sbc   a,$00
11b4: 4d        push  x
11b5: 4f 21     pcall $21
11b7: ce        pop   x
11b8: 6f        ret

11b9: 3f 96 11  call  $1196
11bc: ba 06     movw  ya,$06
11be: 40        setp
11bf: da 06     movw  $06,ya
11c1: 20        clrp
11c2: e4 05     mov   a,$05
11c4: d0 0b     bne   $11d1
11c6: cd 0c     mov   x,#$0c
11c8: 3f d4 11  call  $11d4
11cb: 1d        dec   x
11cc: 1d        dec   x
11cd: 10 f9     bpl   $11c8
11cf: 20        clrp
11d0: 6f        ret

11d1: 21        tcall 2
11d2: 30 fc     bmi   $11d0
11d4: 40        setp
11d5: eb 07     mov   y,$07
11d7: e4 06     mov   a,$06
11d9: d4 28     mov   $28+x,a
11db: f0 0b     beq   $11e8
11dd: dd        mov   a,y
11de: 74 09     cmp   a,$09+x
11e0: d0 0a     bne   $11ec
11e2: e8 00     mov   a,#$00
11e4: d4 28     mov   $28+x,a
11e6: 20        clrp
11e7: 6f        ret

11e8: db 09     mov   $09+x,y
11ea: 20        clrp
11eb: 6f        ret

11ec: f4 09     mov   a,$09+x
11ee: 3f a9 11  call  $11a9
11f1: d4 18     mov   $18+x,a
11f3: db 19     mov   $19+x,y
11f5: e8 00     mov   a,#$00
11f7: d4 08     mov   $08+x,a
11f9: 20        clrp
11fa: 6f        ret

11fb: 3f 96 11  call  $1196
11fe: e4 05     mov   a,$05
1200: d0 0f     bne   $1211
1202: 8f ff 1c  mov   $1c,#$ff
1205: cd 0c     mov   x,#$0c
1207: d8 a1     mov   $a1,x
1209: 3f 1d 12  call  $121d
120c: 1d        dec   x
120d: 1d        dec   x
120e: 10 f7     bpl   $1207
1210: 6f        ret

1211: 21        tcall 2
1212: 30 fc     bmi   $1210
1214: 31        tcall 3
1215: e4 c8     mov   a,$c8
1217: 35 90 ed  and   a,$ed90+x
121a: 0e 1c 00  tset1 $001c
121d: e4 06     mov   a,$06
121f: d5 00 ed  mov   $ed00+x,a
1222: f0 0c     beq   $1230
1224: f5 11 ed  mov   a,$ed11+x
1227: 2e 07 0c  cbne  $07,$1236
122a: e8 00     mov   a,#$00
122c: d5 00 ed  mov   $ed00+x,a
122f: 6f        ret

1230: e4 07     mov   a,$07
1232: d5 11 ed  mov   $ed11+x,a
1235: 6f        ret

1236: f5 11 ed  mov   a,$ed11+x
1239: 3f a9 11  call  $11a9
123c: d5 20 ed  mov   $ed20+x,a
123f: dd        mov   a,y
1240: d5 21 ed  mov   $ed21+x,a
1243: e8 00     mov   a,#$00
1245: d5 10 ed  mov   $ed10+x,a
1248: 6f        ret

1249: 3f e6 0d  call  $0de6
124c: e4 06     mov   a,$06
124e: f0 43     beq   $1293
1250: e4 05     mov   a,$05
1252: d0 2c     bne   $1280
1254: e8 6f     mov   a,#$6f
1256: c5 b5 ff  mov   $ffb5,a           ; patch `pcall $b5` to `ret`
1259: 8d 0e     mov   y,#$0e
125b: f6 8e ed  mov   a,$ed8e+y
125e: f0 0e     beq   $126e
1260: f6 5f ed  mov   a,$ed5f+y
1263: f0 0d     beq   $1272
1265: e8 ff     mov   a,#$ff
1267: d6 ef ed  mov   $edef+y,a
126a: bc        inc   a
126b: d6 8f ed  mov   $ed8f+y,a
126e: dc        dec   y
126f: fe ea     dbnz  y,$125b
1271: 6f        ret

1272: dc        dec   y
1273: dc        dec   y
1274: cb a1     mov   $a1,y
1276: f8 a1     mov   x,$a1
1278: 3f be 12  call  $12be
127b: eb a1     mov   y,$a1
127d: d0 dc     bne   $125b
127f: 6f        ret

1280: c8 0e     cmp   x,#$0e
1282: b0 0e     bcs   $1292
1284: f5 61 ed  mov   a,$ed61+x
1287: f0 35     beq   $12be
1289: e8 00     mov   a,#$00
128b: d5 91 ed  mov   $ed91+x,a
128e: 9c        dec   a
128f: d5 f1 ed  mov   $edf1+x,a
1292: 6f        ret

1293: e4 05     mov   a,$05
1295: d0 21     bne   $12b8
1297: c4 10     mov   $10,a             ; set EVOL shadow
1299: 8d 0e     mov   y,#$0e
129b: 5d        mov   x,a
129c: 43 13 07  bbs2  $13,$12a6
129f: d6 8f ed  mov   $ed8f+y,a
12a2: fe fb     dbnz  y,$129f
12a4: 2f 06     bra   $12ac
12a6: d6 8e ed  mov   $ed8e+y,a
12a9: dc        dec   y
12aa: fe fa     dbnz  y,$12a6
12ac: 9c        dec   a
12ad: c4 ec     mov   $ec,a
12af: c4 ed     mov   $ed,a
12b1: e8 6f     mov   a,#$6f
12b3: c5 b5 ff  mov   $ffb5,a           ; patch `pcall $b5` to `ret`
12b6: 2f 1b     bra   $12d3
12b8: 21        tcall 2
12b9: 10 03     bpl   $12be
12bb: 52 13     clr2  $13
12bd: 6f        ret

12be: 31        tcall 3
12bf: f5 90 ed  mov   a,$ed90+x
12c2: c4 ed     mov   $ed,a
12c4: 24 c8     and   a,$c8
12c6: c4 ec     mov   $ec,a
12c8: e8 00     mov   a,#$00
12ca: d5 90 ed  mov   $ed90+x,a
12cd: 43 13 03  bbs2  $13,$12d3
12d0: d5 91 ed  mov   $ed91+x,a
12d3: e4 ec     mov   a,$ec
12d5: 0e 09 00  tset1 $0009             ; set KOF shadow
12d8: 4e 08 00  tclr1 $0008             ; clear KON shadow
12db: 7d        mov   a,x
12dc: 9f        xcn   a
12dd: 5c        lsr   a
12de: fd        mov   y,a
12df: 8f 01 c6  mov   $c6,#$01
12e2: 4b ed     lsr   $ed
12e4: 90 0d     bcc   $12f3
12e6: cb a3     mov   $a3,y
12e8: 43 13 03  bbs2  $13,$12ee
12eb: 41        tcall 4
12ec: 2f 05     bra   $12f3
12ee: 11        tcall 1
12ef: 01        tcall 0
12f0: 3f 24 0c  call  $0c24
12f3: fc        inc   y
12f4: fc        inc   y
12f5: 0b c6     asl   $c6
12f7: d0 e9     bne   $12e2
12f9: 52 13     clr2  $13
12fb: 6f        ret

12fc: fa 05 1a  mov   ($1a),($05)
12ff: 8f ff 1b  mov   $1b,#$ff
1302: 6f        ret

1303: e4 05     mov   a,$05
1305: f0 0d     beq   $1314
1307: 21        tcall 2
1308: 30 09     bmi   $1313
130a: f5 90 ed  mov   a,$ed90+x
130d: 15 91 ed  or    a,$ed91+x
1310: d5 58 01  mov   $0158+x,a
1313: 6f        ret

1314: 8d 0e     mov   y,#$0e
1316: f6 8e ed  mov   a,$ed8e+y
1319: 16 8f ed  or    a,$ed8f+y
131c: d6 56 01  mov   $0156+y,a
131f: dc        dec   y
1320: fe f4     dbnz  y,$1316
1322: 6f        ret

1323: 21        tcall 2
1324: 30 16     bmi   $133c
1326: f5 f1 ed  mov   a,$edf1+x
1329: f0 13     beq   $133e
132b: f5 51 ed  mov   a,$ed51+x
132e: f0 0c     beq   $133c
1330: e8 00     mov   a,#$00
1332: d5 f1 ed  mov   $edf1+x,a
1335: c4 06     mov   $06,a
1337: 3f 3e 13  call  $133e
133a: 2f 10     bra   $134c
133c: e8 ff     mov   a,#$ff
133e: c4 f5     mov   $f5,a
1340: e4 f4     mov   a,$f4
1342: c4 f4     mov   $f4,a
1344: 64 f4     cmp   a,$f4
1346: f0 fc     beq   $1344
1348: 8f 00 f4  mov   $f4,#$00
134b: 6f        ret

134c: e4 06     mov   a,$06
134e: f0 22     beq   $1372
1350: e4 05     mov   a,$05
1352: d0 10     bne   $1364
1354: cd 0c     mov   x,#$0c
1356: f5 90 ed  mov   a,$ed90+x
1359: f0 03     beq   $135e
135b: d5 91 ed  mov   $ed91+x,a
135e: 1d        dec   x
135f: 1d        dec   x
1360: 10 f4     bpl   $1356
1362: 2f 09     bra   $136d
1364: 21        tcall 2
1365: f5 90 ed  mov   a,$ed90+x
1368: f0 03     beq   $136d
136a: d5 91 ed  mov   $ed91+x,a
136d: 42 13     set2  $13
136f: 5f 93 12  jmp   $1293

1372: e4 05     mov   a,$05
1374: d0 18     bne   $138e
1376: cd 0c     mov   x,#$0c
1378: f5 91 ed  mov   a,$ed91+x
137b: f0 08     beq   $1385
137d: d5 90 ed  mov   $ed90+x,a
1380: e8 00     mov   a,#$00
1382: d5 91 ed  mov   $ed91+x,a
1385: 1d        dec   x
1386: 1d        dec   x
1387: 10 ef     bpl   $1378
1389: 8f ff 1b  mov   $1b,#$ff
138c: 2f 11     bra   $139f
138e: 21        tcall 2
138f: f5 91 ed  mov   a,$ed91+x
1392: f0 0b     beq   $139f
1394: d5 90 ed  mov   $ed90+x,a
1397: 0e 1b 00  tset1 $001b
139a: e8 00     mov   a,#$00
139c: d5 91 ed  mov   $ed91+x,a
139f: 11        tcall 1
13a0: 01        tcall 0
13a1: 5f 24 0c  jmp   $0c24

13a4: 7a ea     addw  ya,$ea
13a6: d5 80 ed  mov   $ed80+x,a
13a9: dd        mov   a,y
13aa: d5 81 ed  mov   $ed81+x,a
13ad: f5 c1 ed  mov   a,$edc1+x
13b0: fd        mov   y,a
13b1: f5 c0 ed  mov   a,$edc0+x
13b4: 7a ea     addw  ya,$ea
13b6: d5 c0 ed  mov   $edc0+x,a
13b9: dd        mov   a,y
13ba: d5 c1 ed  mov   $edc1+x,a
13bd: 7d        mov   a,x
13be: 9f        xcn   a
13bf: 5c        lsr   a
13c0: fd        mov   y,a
13c1: 8f 00 03  mov   $03,#$00
13c4: 1c        asl   a
13c5: 1c        asl   a
13c6: 2b 03     rol   $03
13c8: 88 00     adc   a,#$00
13ca: c4 02     mov   $02,a
13cc: 98 fb 03  adc   $03,#$fb
13cf: 8f 08 00  mov   $00,#$08
13d2: 60        clrc
13d3: f6 1f 00  mov   a,$001f+y
13d6: 84 ea     adc   a,$ea
13d8: d6 1f 00  mov   $001f+y,a
13db: f6 20 00  mov   a,$0020+y
13de: 84 eb     adc   a,$eb
13e0: d6 20 00  mov   $0020+y,a
13e3: fc        inc   y
13e4: fc        inc   y
13e5: 6e 00 ea  dbnz  $00,$13d2
13e8: 8d 00     mov   y,#$00
13ea: 8f 20 00  mov   $00,#$20
13ed: 60        clrc
13ee: f7 02     mov   a,($02)+y
13f0: 84 ea     adc   a,$ea
13f2: d7 02     mov   ($02)+y,a
13f4: fc        inc   y
13f5: f7 02     mov   a,($02)+y
13f7: 84 eb     adc   a,$eb
13f9: d7 02     mov   ($02)+y,a
13fb: fc        inc   y
13fc: 6e 00 ee  dbnz  $00,$13ed
13ff: 6f        ret

1400: e4 05     mov   a,$05
1402: f0 1e     beq   $1422
1404: 4c 01 ed  lsr   $ed01
1407: e8 48     mov   a,#$48
1409: c5 1c 04  mov   $041c,a
140c: e8 00     mov   a,#$00
140e: c4 07     mov   $07,a
1410: 2e 07 03  cbne  $07,$1416
1413: 3f cc 03  call  $03cc
1416: e4 f4     mov   a,$f4
1418: f0 f6     beq   $1410
141a: e8 37     mov   a,#$37
141c: c5 1c 04  mov   $041c,a
141f: 0c 01 ed  asl   $ed01
1422: 6f        ret

; vcmd 2b
1423: 4f 00     pcall $00               ; read next voice word to $dc/dd and A
1425: ab dc     inc   $dc
1427: d0 02     bne   $142b
1429: ab 07     inc   $07
142b: 6f        ret

142c: e8 68     mov   a,#$68
142e: 8d 01     mov   y,#$01
1430: c5 b7 03  mov   $03b7,a
1433: cc b8 03  mov   $03b8,y
1436: 6f        ret

1437: e8 58     mov   a,#$58
1439: 4e 13 00  tclr1 $0013
143c: 25 af 0d  and   a,$0daf
143f: 0e 13 00  tset1 $0013
1442: d3 13 03  bbc6  $13,$1448
1445: 3f fa 0a  call  $0afa
1448: e5 ae 0d  mov   a,$0dae
144b: c4 12     mov   $12,a
144d: f0 02     beq   $1451
144f: b2 0d     clr5  $0d               ; echo will be enabled
1451: 3f c1 10  call  $10c1
1454: e5 80 ed  mov   a,$ed80
1457: c4 00     mov   $00,a
1459: e5 81 ed  mov   a,$ed81
145c: c4 01     mov   $01,a
145e: 8d 01     mov   y,#$01
1460: f7 00     mov   a,($00)+y
1462: 1c        asl   a
1463: 88 02     adc   a,#$02
1465: 8d 00     mov   y,#$00
1467: 7a 00     addw  ya,$00
1469: c5 80 ed  mov   $ed80,a
146c: cc 81 ed  mov   $ed81,y
146f: cd 0e     mov   x,#$0e
1471: 8d 00     mov   y,#$00
1473: 3f 05 18  call  $1805
1476: 8d 04     mov   y,#$04
1478: f6 a9 0d  mov   a,$0da9+y
147b: d6 0d 00  mov   $000d+y,a
147e: fe f8     dbnz  y,$1478
1480: e4 11     mov   a,$11
1482: 3f f1 09  call  $09f1
1485: cd 00     mov   x,#$00
1487: 11        tcall 1
1488: 01        tcall 0
1489: 5f 24 0c  jmp   $0c24

148c: cd 0c     mov   x,#$0c
148e: f5 90 ed  mov   a,$ed90+x
1491: d0 05     bne   $1498
1493: 1d        dec   x
1494: 1d        dec   x
1495: 10 f7     bpl   $148e
1497: 6f        ret

1498: 31        tcall 3
1499: f5 28 01  mov   a,$0128+x
149c: d0 67     bne   $1505
149e: f5 50 ed  mov   a,$ed50+x
14a1: d0 3b     bne   $14de
14a3: f5 51 ed  mov   a,$ed51+x
14a6: d0 7e     bne   $1526
14a8: f5 00 ed  mov   a,$ed00+x
14ab: f0 e6     beq   $1493
14ad: 9c        dec   a
14ae: d5 00 ed  mov   $ed00+x,a
14b1: f5 21 ed  mov   a,$ed21+x
14b4: fd        mov   y,a
14b5: f5 20 ed  mov   a,$ed20+x
14b8: da 00     movw  $00,ya
14ba: f5 11 ed  mov   a,$ed11+x
14bd: fd        mov   y,a
14be: f5 10 ed  mov   a,$ed10+x
14c1: 7a 00     addw  ya,$00
14c3: 50 08     bvc   $14cd
14c5: 30 04     bmi   $14cb
14c7: 8d 81     mov   y,#$81
14c9: 2f 02     bra   $14cd
14cb: 8d 7f     mov   y,#$7f
14cd: d5 10 ed  mov   $ed10+x,a
14d0: dd        mov   a,y
14d1: d5 11 ed  mov   $ed11+x,a
14d4: e4 c8     mov   a,$c8
14d6: 35 90 ed  and   a,$ed90+x
14d9: 0e 1c 00  tset1 $001c
14dc: 2f b5     bra   $1493
14de: 9c        dec   a
14df: d5 50 ed  mov   $ed50+x,a
14e2: f5 41 ed  mov   a,$ed41+x
14e5: fd        mov   y,a
14e6: f5 40 ed  mov   a,$ed40+x
14e9: da 00     movw  $00,ya
14eb: f5 31 ed  mov   a,$ed31+x         ; master pan
14ee: fd        mov   y,a
14ef: f5 30 ed  mov   a,$ed30+x
14f2: 4f 67     pcall $67
14f4: d5 30 ed  mov   $ed30+x,a
14f7: dd        mov   a,y
14f8: d5 31 ed  mov   $ed31+x,a         ; master pan
14fb: e4 c8     mov   a,$c8
14fd: 35 90 ed  and   a,$ed90+x
1500: 0e 1b 00  tset1 $001b
1503: 2f 9e     bra   $14a3
1505: 40        setp
1506: 9b 28     dec   $28+x
1508: fb 19     mov   y,$19+x
150a: f4 18     mov   a,$18+x
150c: da 00     movw  $00,ya
150e: fb 09     mov   y,$09+x
1510: f4 08     mov   a,$08+x
1512: 7a 00     addw  ya,$00
1514: 50 08     bvc   $151e
1516: 30 04     bmi   $151c
1518: 8d 81     mov   y,#$81
151a: 2f 02     bra   $151e
151c: 8d 7f     mov   y,#$7f
151e: d4 08     mov   $08+x,a
1520: db 09     mov   $09+x,y
1522: 20        clrp
1523: 5f 9e 14  jmp   $149e

1526: 9c        dec   a
1527: d5 51 ed  mov   $ed51+x,a
152a: d0 20     bne   $154c
152c: f5 f1 ed  mov   a,$edf1+x
152f: f0 1b     beq   $154c
1531: 4d        push  x
1532: 7d        mov   a,x
1533: 9f        xcn   a
1534: 5c        lsr   a
1535: 5d        mov   x,a
1536: 8d 19     mov   y,#$19
1538: 8f 08 00  mov   $00,#$08
153b: e8 01     mov   a,#$01
153d: d5 00 ef  mov   $ef00+x,a
1540: e8 ff     mov   a,#$ff
1542: d4 1f     mov   $1f+x,a
1544: db 20     mov   $20+x,y
1546: 3d        inc   x
1547: 3d        inc   x
1548: 6e 00 f0  dbnz  $00,$153b
154b: ce        pop   x
154c: f5 71 ed  mov   a,$ed71+x
154f: fd        mov   y,a
1550: f5 70 ed  mov   a,$ed70+x
1553: da 00     movw  $00,ya
1555: f5 61 ed  mov   a,$ed61+x
1558: fd        mov   y,a
1559: f5 60 ed  mov   a,$ed60+x
155c: 4f 67     pcall $67
155e: d5 60 ed  mov   $ed60+x,a
1561: dd        mov   a,y
1562: d5 61 ed  mov   $ed61+x,a
1565: e4 c8     mov   a,$c8
1567: 35 90 ed  and   a,$ed90+x
156a: 0e 1b 00  tset1 $001b
156d: 5f a8 14  jmp   $14a8

1570: 4b df     lsr   $df
1572: b0 09     bcs   $157d
1574: fc        inc   y
1575: fc        inc   y
1576: 0b c6     asl   $c6
1578: d0 f6     bne   $1570
157a: f8 a1     mov   x,$a1
157c: 6f        ret

157d: cb a3     mov   $a3,y
157f: cb a2     mov   $a2,y
1581: 38 0e a2  and   $a2,#$0e
1584: f6 80 f2  mov   a,$f280+y
1587: f0 54     beq   $15dd
1589: f6 01 f3  mov   a,$f301+y
158c: d0 4f     bne   $15dd
158e: f6 81 f3  mov   a,$f381+y
1591: 9c        dec   a
1592: d6 81 f3  mov   $f381+y,a
1595: d0 46     bne   $15dd
1597: f6 80 f2  mov   a,$f280+y
159a: c4 e8     mov   $e8,a
159c: f6 81 f2  mov   a,$f281+y
159f: 3f ea 16  call  $16ea
15a2: d6 81 f2  mov   $f281+y,a
15a5: f8 a2     mov   x,$a2
15a7: f4 b5     mov   a,$b5+x
15a9: eb e8     mov   y,$e8
15ab: cf        mul   ya
15ac: da 00     movw  $00,ya
15ae: f4 b4     mov   a,$b4+x
15b0: eb e8     mov   y,$e8
15b2: cf        mul   ya
15b3: dd        mov   a,y
15b4: 8d 00     mov   y,#$00
15b6: 7a 00     addw  ya,$00
15b8: e3 e8 07  bbs7  $e8,$15c2
15bb: 1c        asl   a
15bc: c4 00     mov   $00,a
15be: dd        mov   a,y
15bf: 3c        rol   a
15c0: 2f 08     bra   $15ca
15c2: 80        setc
15c3: b4 b4     sbc   a,$b4+x
15c5: c4 00     mov   $00,a
15c7: dd        mov   a,y
15c8: b4 b5     sbc   a,$b5+x
15ca: eb a3     mov   y,$a3
15cc: d6 01 f4  mov   $f401+y,a
15cf: e4 00     mov   a,$00
15d1: d6 00 f4  mov   $f400+y,a
15d4: 09 c6 1c  or    ($1c),($c6)
15d7: f6 80 f3  mov   a,$f380+y
15da: d6 81 f3  mov   $f381+y,a
15dd: f6 80 f4  mov   a,$f480+y
15e0: f0 2a     beq   $160c
15e2: f6 01 f5  mov   a,$f501+y
15e5: d0 25     bne   $160c
15e7: f6 81 f5  mov   a,$f581+y
15ea: 9c        dec   a
15eb: d6 81 f5  mov   $f581+y,a
15ee: d0 1c     bne   $160c
15f0: f6 80 f4  mov   a,$f480+y
15f3: c4 e8     mov   $e8,a
15f5: f6 81 f4  mov   a,$f481+y
15f8: 3f ea 16  call  $16ea
15fb: d6 81 f4  mov   $f481+y,a
15fe: e4 e8     mov   a,$e8
1600: d6 00 f6  mov   $f600+y,a
1603: 09 c6 1b  or    ($1b),($c6)
1606: f6 80 f5  mov   a,$f580+y
1609: d6 81 f5  mov   $f581+y,a
160c: e4 c6     mov   a,$c6
160e: 24 1c     and   a,$1c
1610: f0 4e     beq   $1660
1612: f8 a2     mov   x,$a2
1614: 7d        mov   a,x
1615: 9f        xcn   a
1616: 5c        lsr   a
1617: 08 02     or    a,#$02
1619: c4 f2     mov   $f2,a             ; P(L)
161b: f6 00 f4  mov   a,$f400+y
161e: 94 b4     adc   a,$b4+x
1620: c4 00     mov   $00,a
1622: f6 01 f4  mov   a,$f401+y
1625: 94 b5     adc   a,$b5+x
1627: fd        mov   y,a
1628: f8 a1     mov   x,$a1
162a: f5 11 ed  mov   a,$ed11+x
162d: f0 24     beq   $1653
162f: cb 01     mov   $01,y
1631: cf        mul   ya
1632: da e6     movw  $e6,ya
1634: eb 00     mov   y,$00
1636: f5 11 ed  mov   a,$ed11+x
1639: 0d        push  psw
163a: cf        mul   ya
163b: dd        mov   a,y
163c: 8d 00     mov   y,#$00
163e: 7a e6     addw  ya,$e6
1640: 8e        pop   psw
1641: 30 06     bmi   $1649
1643: da e6     movw  $e6,ya
1645: 7a e6     addw  ya,$e6
1647: 7a 00     addw  ya,$00
1649: ad 40     cmp   y,#$40
164b: 90 08     bcc   $1655
164d: e8 ff     mov   a,#$ff
164f: 8d 3f     mov   y,#$3f
1651: 2f 02     bra   $1655
1653: e4 00     mov   a,$00
1655: c4 f3     mov   $f3,a             ; set P(L)
1657: ab f2     inc   $f2
1659: cb f3     mov   $f3,y             ; set P(H)
165b: 49 c6 1c  eor   ($1c),($c6)
165e: eb a3     mov   y,$a3
1660: e4 c6     mov   a,$c6
1662: 24 1b     and   a,$1b
1664: f0 79     beq   $16df
1666: 8f 00 e6  mov   $e6,#$00
1669: 24 1a     and   a,$1a
166b: d0 4f     bne   $16bc
166d: 60        clrc
166e: f8 a1     mov   x,$a1
1670: f5 31 ed  mov   a,$ed31+x         ; master pan
1673: 96 81 f1  adc   a,$f181+y         ; pan
1676: 2b e6     rol   $e6
1678: 96 81 f8  adc   a,$f881+y         ; pan LFO value
167b: 98 00 e6  adc   $e6,#$00
167e: f0 07     beq   $1687
1680: 6e e6 08  dbnz  $e6,$168b
1683: 08 00     or    a,#$00
1685: d0 06     bne   $168d
1687: e8 01     mov   a,#$01
1689: 2f 02     bra   $168d
168b: e8 ff     mov   a,#$ff
168d: c4 e6     mov   $e6,a
168f: f5 61 ed  mov   a,$ed61+x
1692: fd        mov   y,a
1693: f5 01 ed  mov   a,$ed01+x         ; master volume
1696: cf        mul   ya
1697: f8 a3     mov   x,$a3
1699: f5 01 f0  mov   a,$f001+x         ; volume
169c: cf        mul   ya
169d: f5 00 f6  mov   a,$f600+x
16a0: f0 11     beq   $16b3
16a2: 30 0e     bmi   $16b2
16a4: cb 00     mov   $00,y
16a6: cf        mul   ya
16a7: dd        mov   a,y
16a8: 1c        asl   a
16a9: 84 00     adc   a,$00
16ab: fd        mov   y,a
16ac: 90 05     bcc   $16b3
16ae: 8d ff     mov   y,#$ff
16b0: 2f 01     bra   $16b3
16b2: cf        mul   ya
16b3: 7d        mov   a,x
16b4: 5c        lsr   a
16b5: 5d        mov   x,a
16b6: f5 c0 fe  mov   a,$fec0+x         ; channel master volume
16b9: cf        mul   ya
16ba: cb 00     mov   $00,y
16bc: f8 a2     mov   x,$a2
16be: 7d        mov   a,x
16bf: 9f        xcn   a
16c0: 5c        lsr   a
16c1: c4 f2     mov   $f2,a             ; VOL(L)
16c3: e4 e6     mov   a,$e6
16c5: 48 ff     eor   a,#$ff
16c7: bc        inc   a
16c8: 4f a6     pcall $a6
16ca: db cb     mov   $cb+x,y
16cc: cb f3     mov   $f3,y             ; set VOL(L)
16ce: ab f2     inc   $f2
16d0: eb 00     mov   y,$00
16d2: e4 e6     mov   a,$e6
16d4: 4f a6     pcall $a6
16d6: db cc     mov   $cc+x,y
16d8: cb f3     mov   $f3,y             ; set VOL(R)
16da: 49 c6 1b  eor   ($1b),($c6)
16dd: eb a3     mov   y,$a3
16df: 5f 74 15  jmp   $1574

16e2: db $00,$32,$62,$8e,$b5,$d5,$ed,$fb

16ea: c4 e6     mov   $e6,a
16ec: eb e8     mov   y,$e8
16ee: 28 0f     and   a,#$0f
16f0: 5d        mov   x,a
16f1: c8 08     cmp   x,#$08
16f3: b0 04     bcs   $16f9
16f5: f5 e2 16  mov   a,$16e2+x
16f8: cf        mul   ya
16f9: dd        mov   a,y
16fa: 93 e6 03  bbc4  $e6,$1700
16fd: 48 ff     eor   a,#$ff
16ff: bc        inc   a
1700: c4 e8     mov   $e8,a
1702: e3 e6 07  bbs7  $e6,$170c
1705: 3d        inc   x
1706: 90 12     bcc   $171a
1708: cd 07     mov   x,#$07
170a: 2f 0b     bra   $1717
170c: 1d        dec   x
170d: 10 0b     bpl   $171a
170f: cd 01     mov   x,#$01
1711: b3 e6 03  bbc5  $e6,$1717
1714: ea e6 80  not1  $00e6,4
1717: ea e6 e0  not1  $00e6,7
171a: 38 f0 e6  and   $e6,#$f0
171d: 7d        mov   a,x
171e: 04 e6     or    a,$e6
1720: eb a3     mov   y,$a3
1722: 6f        ret

1723: e8 00     mov   a,#$00
1725: d8 c7     mov   $c7,x
1727: 2f 03     bra   $172c
1729: 15 90 ed  or    a,$ed90+x
172c: 3d        inc   x
172d: 3d        inc   x
172e: c8 0e     cmp   x,#$0e
1730: d0 f7     bne   $1729
1732: f8 c7     mov   x,$c7
1734: c4 c7     mov   $c7,a
1736: 48 ff     eor   a,#$ff
1738: c4 c8     mov   $c8,a
173a: 6f        ret

; initialization for channel
173b: 6d        push  y
173c: e8 00     mov   a,#$00
173e: d6 01 f6  mov   $f601+y,a
1741: d6 80 f6  mov   $f680+y,a
1744: d6 81 f6  mov   $f681+y,a
1747: d6 80 f2  mov   $f280+y,a
174a: d6 80 f4  mov   $f480+y,a
174d: d6 80 f8  mov   $f880+y,a
1750: d6 01 f7  mov   $f701+y,a
1753: d6 01 ef  mov   $ef01+y,a
1756: d6 81 ee  mov   $ee81+y,a
1759: d6 81 f9  mov   $f981+y,a
175c: d6 00 fa  mov   $fa00+y,a
175f: d6 01 fa  mov   $fa01+y,a
1762: d6 00 f1  mov   $f100+y,a
1765: d6 01 f1  mov   $f101+y,a
1768: 9c        dec   a
1769: d6 01 f0  mov   $f001+y,a         ; default volume = 0xff (maximum)
176c: d6 01 f9  mov   $f901+y,a
176f: e8 80     mov   a,#$80
1771: d6 81 f8  mov   $f881+y,a         ; reset pan LFO value
1774: d6 81 f1  mov   $f181+y,a         ; default pan = 0x80 (center)
1777: e8 03     mov   a,#$03
1779: d6 00 ef  mov   $ef00+y,a
177c: 8f ff 00  mov   $00,#$ff
177f: 8f fc 01  mov   $01,#$fc
1782: dd        mov   a,y
1783: 5c        lsr   a
1784: fd        mov   y,a
1785: e8 ff     mov   a,#$ff
1787: d6 c0 fe  mov   $fec0+y,a         ; default channel master volume = 0xff (maximum)
178a: e8 07     mov   a,#$07
178c: cf        mul   ya
178d: 7a 00     addw  ya,$00
178f: da 00     movw  $00,ya
1791: 8d 07     mov   y,#$07
1793: f6 2b 19  mov   a,$192b+y
1796: d7 00     mov   ($00)+y,a
1798: fe f9     dbnz  y,$1793
179a: ee        pop   y
179b: 6f        ret

179c: cd 0c     mov   x,#$0c
179e: f5 8e ed  mov   a,$ed8e+x
17a1: 15 8f ed  or    a,$ed8f+x
17a4: d0 04     bne   $17aa
17a6: 1d        dec   x
17a7: 1d        dec   x
17a8: d0 f4     bne   $179e
17aa: 2f 21     bra   $17cd
17ac: cd 00     mov   x,#$00
17ae: f5 e0 ed  mov   a,$ede0+x
17b1: 2e 05 0e  cbne  $05,$17c2
17b4: f5 e1 ed  mov   a,$ede1+x
17b7: 2e 04 08  cbne  $04,$17c2
17ba: f5 90 ed  mov   a,$ed90+x
17bd: 15 91 ed  or    a,$ed91+x
17c0: d0 0b     bne   $17cd
17c2: 3d        inc   x
17c3: 3d        inc   x
17c4: c8 0e     cmp   x,#$0e
17c6: d0 e6     bne   $17ae
17c8: cd ff     mov   x,#$ff
17ca: d8 a1     mov   $a1,x
17cc: 6f        ret

17cd: d8 a1     mov   $a1,x
17cf: 7d        mov   a,x
17d0: 9f        xcn   a
17d1: 5c        lsr   a
17d2: fd        mov   y,a
17d3: c4 a3     mov   $a3,a
17d5: 6f        ret

17d6: e8 00     mov   a,#$00
17d8: cd e6     mov   x,#$e6
17da: af        mov   (x)+,a
17db: af        mov   (x)+,a
17dc: af        mov   (x)+,a
17dd: 8d 0e     mov   y,#$0e
17df: f6 df ed  mov   a,$eddf+y
17e2: d0 08     bne   $17ec
17e4: f6 8e ed  mov   a,$ed8e+y
17e7: 0e e6 00  tset1 $00e6
17ea: 2f 06     bra   $17f2
17ec: f6 8e ed  mov   a,$ed8e+y
17ef: 0e e8 00  tset1 $00e8
17f2: 36 56 01  and   a,$0156+y
17f5: 0e e7 00  tset1 $00e7
17f8: dc        dec   y
17f9: fe e4     dbnz  y,$17df
17fb: fa e7 f5  mov   ($f5),($e7)
17fe: fa e6 f6  mov   ($f6),($e6)
1801: fa e8 f7  mov   ($f7),($e8)
1804: 6f        ret

1805: d8 dd     mov   $dd,x
1807: cb de     mov   $de,y
1809: 4b dd     lsr   $dd
180b: 4b de     lsr   $de
180d: f4 a5     mov   a,$a5+x
180f: d6 a5 00  mov   $00a5+y,a
1812: 8d 00     mov   y,#$00
1814: 3f 47 18  call  $1847
1817: 78 07 de  cmp   $de,#$07
181a: f0 2a     beq   $1846
181c: 78 07 dd  cmp   $dd,#$07
181f: f0 04     beq   $1825
1821: fc        inc   y
1822: 3f 47 18  call  $1847
1825: e4 de     mov   a,$de
1827: bc        inc   a
1828: bc        inc   a
1829: 9f        xcn   a
182a: c4 e6     mov   $e6,a
182c: 8f 08 e7  mov   $e7,#$08
182f: 80        setc
1830: a8 20     sbc   a,#$20
1832: fd        mov   y,a
1833: f6 80 ee  mov   a,$ee80+y         ; get current SRCN
1836: 68 20     cmp   a,#$20
1838: 90 07     bcc   $1841
183a: 28 0f     and   a,#$0f
183c: 04 e6     or    a,$e6
183e: d6 80 ee  mov   $ee80+y,a         ; set SRCN shadow
1841: fc        inc   y
1842: fc        inc   y
1843: 6e e7 ed  dbnz  $e7,$1833
1846: 6f        ret

1847: f6 a1 18  mov   a,$18a1+y
184a: f0 fa     beq   $1846
184c: c4 00     mov   $00,a
184e: f6 a2 18  mov   a,$18a2+y
1851: c4 01     mov   $01,a
1853: f6 a4 18  mov   a,$18a4+y
1856: c4 e7     mov   $e7,a
1858: f6 a3 18  mov   a,$18a3+y
185b: 6d        push  y
185c: 3f 66 18  call  $1866
185f: ae        pop   a
1860: 60        clrc
1861: 88 04     adc   a,#$04
1863: fd        mov   y,a
1864: 2f e1     bra   $1847
1866: c4 e6     mov   $e6,a
1868: eb e7     mov   y,$e7
186a: da e8     movw  $e8,ya
186c: e4 de     mov   a,$de
186e: eb 01     mov   y,$01
1870: cf        mul   ya
1871: 7a e8     addw  ya,$e8
1873: da e8     movw  $e8,ya
1875: e4 dd     mov   a,$dd
1877: eb 01     mov   y,$01
1879: cf        mul   ya
187a: 7a e6     addw  ya,$e6
187c: da e6     movw  $e6,ya
187e: e8 08     mov   a,#$08
1880: eb 01     mov   y,$01
1882: cf        mul   ya
1883: da 02     movw  $02,ya
1885: 1a e6     decw  $e6
1887: 1a e8     decw  $e8
1889: eb 01     mov   y,$01
188b: f7 e6     mov   a,($e6)+y
188d: d7 e8     mov   ($e8)+y,a
188f: fe fa     dbnz  y,$188b
1891: ba 02     movw  ya,$02
1893: 7a e6     addw  ya,$e6
1895: da e6     movw  $e6,ya
1897: ba 02     movw  ya,$02
1899: 7a e8     addw  ya,$e8
189b: da e8     movw  $e8,ya
189d: 6e 00 e9  dbnz  $00,$1889
18a0: 6f        ret

18a1: 06 02 08 01
18a5: 10 02 00 ed
18a9: 01 08 c0 fe
18ad: 1a 10 00 ee
18b1: 01 10 1f 00
18b5: 01 40 00 fb
18b9: 01 20 00 1a
18bd: 01 38 00 fd
18c1: 00
18c2: 01
18c3: 40
18c4: 80
18c5: 1b 01
18c7: 20
18c8: 80
18c9: 1d
18ca: 01
18cb: 20
18cc: a0
18cd: 1e 00 00
18d0: 00
18d1: 00
18d2: 00
18d3: 00
18d4: 00
18d5: 00
18d6: 00
18d7: 00
18d8: 00
18d9: 00
18da: 00
18db: 00
18dc: 00
18dd: 00
18de: 00
18df: 00
18e0: 00
18e1: 00
18e2: 00
18e3: 00
18e4: 00
18e5: 00
18e6: 00
18e7: 00
18e8: 00
18e9: 00
18ea: 00
18eb: 00
18ec: 00
18ed: 00
18ee: 00
18ef: 00
18f0: 00
18f1: 00
18f2: 00
18f3: 00
18f4: 00
18f5: 00
18f6: 00
18f7: 00
18f8: 00
18f9: 00
18fa: 00
18fb: 00
18fc: 00
18fd: 00
18fe: 00
18ff: 00
1900: 00
1901: 00
1902: 00
1903: 00

; pitch table
; $0800,$0879,$08fa,$0983,$0a14,$0aad,$0b50,$0bfc,$0cb2,$0d74,$0e41,$0f1a
1904: db $00,$79,$fa,$83,$14,$ad,$50,$fc,$b2,$74,$41,$1a
1910: db $08,$08,$08,$09,$0a,$0a,$0b,$0b,$0c,$0d,$0e,$0f

; note length table master
191c: db $c0,$90,$60,$48,$40,$30,$24,$20,$18,$12,$10,$0c,$08,$06,$04,$03

; default note length table
192c: db $c0,$60,$48,$30,$24,$18,$0c

; vcmd dispatch table
1933: dw $0c43  ; 00 - end of track
1935: dw $0954  ; 01 - master volume
1937: dw $0988  ; 02 - echo volume
1939: dw $0991  ; 03 - channel master volume
193b: dw $09e8  ; 04 - echo feedback & filter
193d: dw $0923  ; 05 - (no effect?)
193f: dw $092e  ; 06 - tempo
1941: dw $0938  ; 07 - tempo fade
1943: dw $0b60  ; 08 - set noise frequency (buggy)
1945: dw $0a83  ; 09 - set note length pattern
1947: dw $0ab1  ; 0a - custom note length pattern
1949: dw $0a7d  ; 0b - note number base
194b: dw $095f  ; 0c - volume
194d: dw $096a  ; 0d - volume fade
194f: dw $099c  ; 0e - pan
1951: dw $09a7  ; 0f - pan fade
1953: dw $0b9e  ; 10 - instrument
1955: dw $0ceb  ; 11 - tuning
1957: dw $07bc  ; 12 - attack rate
1959: dw $07c9  ; 13 - decay rate
195b: dw $07d5  ; 14 - sustain level
195d: dw $07e6  ; 15 - sustain rate
195f: dw $07ef  ; 16 - default ADSR
1961: dw $09e2  ; 17 - transpose (absolute)
1963: dw $09d0  ; 18 - transpose (relative)
1965: dw $0a09  ; 19 - vibrato on
1967: dw $0a26  ; 1a - vibrato off
1969: dw $0a2c  ; 1b - tremolo on
196b: dw $0a49  ; 1c - tremolo off
196d: dw $0a4f  ; 1d - pan LFO on
196f: dw $0a6f  ; 1e - pan LFO off
1971: dw $0b11  ; 1f - noise on
1973: dw $0b52  ; 20 - noise off
1975: dw $0b67  ; 21 - pitchmod on
1977: dw $0b90  ; 22 - pitchmod off
1979: dw $0c1a  ; 23 - echo on
197b: dw $0c68  ; 24 - echo off
197d: dw $0ac9  ; 25 - portamento
197f: dw $0acd  ; 26 - portamento off
1981: dw $0ad3  ; 27 - note randomization on, etc.
1983: dw $0b0d  ; 28 - note randomization off
1985: dw $09c5  ; 29 - pitch slide
1987: dw $0cae  ; 2a - repeat start
1989: dw $1423  ; 2b - (command for output to main CPU?)
198b: dw $0bf2  ; 2c - goto
198d: dw $0c0e  ; 2d
198f: dw $0c76  ; 2e - repeat end
1991: dw $0be6  ; 2f - conditional jump in repeat (break out)

; vcmd length table (00-2f)
1993: db $00,$01,$01,$01,$02,$00,$01,$02,$01,$02,$07,$01,$01,$02,$01,$02
19a3: db $01,$01,$01,$01,$01,$01,$00,$01,$01,$03,$00,$03,$00,$02,$00,$00
19b3: db $00,$00,$00,$00,$00,$01,$00,$01,$00,$02,$01,$02,$02,$02,$00,$03

; echo FIR filter table
19c3: db $7f,$00,$00,$00,$00,$00,$00,$00
19cb: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
19d3: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c

19db: dw $1116
19dd: dw $1323
19df: dw $0200
19e1: dw $0db0
19e3: dw $0f76
19e5: dw $0d7f
19e7: dw $0d51
19e9: dw $0de6
19eb: dw $0fad
19ed: dw $11b9
19ef: dw $11fb
19f1: dw $1249
19f3: dw $134c
19f5: dw $1303
19f7: dw $142c
19f9: dw $12fc
19fb: dw $1400
19fd: dw $0db0

; pcall $00 - get voice word to $dc/d, increase voice ptr by 2
ff00: f8 a3     mov   x,$a3
ff02: e7 1f     mov   a,($1f+x)
ff04: bb 1f     inc   $1f+x
ff06: f0 0d     beq   $ff15
ff08: c4 dc     mov   $dc,a
ff0a: e7 1f     mov   a,($1f+x)
ff0c: bb 1f     inc   $1f+x
ff0e: f0 09     beq   $ff19
ff10: c4 dd     mov   $dd,a
ff12: f8 a1     mov   x,$a1
ff14: 6f        ret
;
ff15: bb 20     inc   $20+x
ff17: 2f ef     bra   $ff08
;
ff19: bb 20     inc   $20+x
ff1b: 2f f3     bra   $ff10

; pcall $1d - division
ff1d: f8 dc     mov   x,$dc
ff1f: 2f 02     bra   $ff23
; pcall $21 - division
ff21: f8 06     mov   x,$06
ff23: fd        mov   y,a
ff24: e8 00     mov   a,#$00
ff26: da 00     movw  $00,ya
ff28: b0 2e     bcs   $ff58
ff2a: e8 00     mov   a,#$00
ff2c: fd        mov   y,a
ff2d: 9a 00     subw  ya,$00
ff2f: b0 0b     bcs   $ff3c
ff31: 9e        div   ya,x
ff32: 8d 00     mov   y,#$00
ff34: 70 07     bvs   $ff3d
ff36: 48 ff     eor   a,#$ff
ff38: bc        inc   a
ff39: f0 01     beq   $ff3c
ff3b: dc        dec   y
ff3c: 6f        ret
;
ff3d: 58 ff 00  eor   $00,#$ff
ff40: 58 ff 01  eor   $01,#$ff
ff43: 3a 00     incw  $00
ff45: c4 00     mov   $00,a
ff47: e4 01     mov   a,$01
ff49: 9e        div   ya,x
ff4a: 48 ff     eor   a,#$ff
ff4c: 58 ff 00  eor   $00,#$ff
ff4f: 98 01 00  adc   $00,#$01
ff52: 88 00     adc   a,#$00
ff54: fd        mov   y,a
ff55: e4 00     mov   a,$00
ff57: 6f        ret
;
ff58: 9e        div   ya,x
ff59: 8d 00     mov   y,#$00
ff5b: 70 01     bvs   $ff5e
ff5d: 6f        ret
;
ff5e: c4 00     mov   $00,a
ff60: e4 01     mov   a,$01
ff62: 9e        div   ya,x
ff63: fd        mov   y,a
ff64: e4 00     mov   a,$00
ff66: 6f        ret

; pcall $67
ff67: 7a 00     addw  ya,$00
ff69: 8a 01 e0  eor1  c,$0001,7
ff6c: b0 01     bcs   $ff6f
ff6e: 6f        ret
;
ff6f: aa 01 e0  mov1  c,$0001,7
ff72: e8 00     mov   a,#$00
ff74: a8 00     sbc   a,#$00
ff76: fd        mov   y,a
ff77: 6f        ret

; pcall $78 - get voice byte to A and $dc, increase voice ptr
ff78: f8 a3     mov   x,$a3
ff7a: e7 1f     mov   a,($1f+x)
ff7c: bb 1f     inc   $1f+x
ff7e: f0 05     beq   $ff85
ff80: f8 a1     mov   x,$a1
ff82: c4 dc     mov   $dc,a
ff84: 6f        ret
;
ff85: bb 20     inc   $20+x
ff87: 2f f7     bra   $ff80

; pcall $89 - dispatch vcmd A
ff89: 1c        asl   a
ff8a: 5d        mov   x,a
ff8b: 1f 33 19  jmp   ($1933+x)

; pcall $8e
ff8e: ba c9     movw  ya,$c9
ff90: 0b c9     asl   $c9
ff92: 2b ca     rol   $ca
ff94: 7a c9     addw  ya,$c9
ff96: 7a c9     addw  ya,$c9
ff98: 88 11     adc   a,#$11
ff9a: c4 c9     mov   $c9,a
ff9c: dd        mov   a,y
ff9d: 88 37     adc   a,#$37
ff9f: c4 ca     mov   $ca,a
ffa1: 8d 00     mov   y,#$00
ffa3: 9e        div   ya,x
ffa4: dd        mov   a,y
ffa5: 6f        ret

; pcall $a6
ffa6: 10 07     bpl   $ffaf
ffa8: 73 13 04  bbc3  $13,$ffaf
ffab: dd        mov   a,y
ffac: 5c        lsr   a
ffad: fd        mov   y,a
ffae: 6f        ret
;
ffaf: cf        mul   ya
ffb0: 10 02     bpl   $ffb4
ffb2: 8d 7f     mov   y,#$7f
ffb4: 6f        ret

; pcall $b5
ffb5: ba 15     movw  ya,$15            ; this line can be dynamically patched to `ret`
ffb7: d6 80 1f  mov   $1f80+y,a
ffba: 9f        xcn   a
ffbb: d6 89 1f  mov   $1f89+y,a
ffbe: 88 00     adc   a,#$00
ffc0: c4 15     mov   $15,a
ffc2: 6e 16 0b  dbnz  $16,$ffd0
ffc5: cd fe     mov   x,#$fe
ffc7: 4f 8e     pcall $8e
ffc9: bc        inc   a
ffca: c5 bf ff  mov   $ffbf,a
ffcd: 8f 08 16  mov   $16,#$08
ffd0: 6f        ret

ffd1: db $00

ffd2: dw $0000
ffd4: dw $0000
ffd6: dw $0c47
ffd8: dw $1723
ffda: dw $17ac
ffdc: dw $0b71
ffde: dw $0b1b

; pcall $e0
ffe0: da 00     movw  $00,ya
ffe2: cf        mul   ya
ffe3: dd        mov   a,y
ffe4: e3 01 08  bbs7  $01,$ffef
ffe7: 1c        asl   a
ffe8: 84 00     adc   a,$00
ffea: b0 01     bcs   $ffed
ffec: 6f        ret
;
ffed: e8 ff     mov   a,#$ff
ffef: f0 01     beq   $fff2
fff1: 6f        ret
;
fff2: bc        inc   a
fff3: 6f        ret

; pcall $f4 - get voice byte to A, increase voice pointer
fff4: f8 a3     mov   x,$a3
fff6: e7 1f     mov   a,($1f+x)
fff8: bb 1f     inc   $1f+x
fffa: f0 01     beq   $fffd
fffc: 6f        ret
fffd: bb 20     inc   $20+x
ffff: 6f        ret
