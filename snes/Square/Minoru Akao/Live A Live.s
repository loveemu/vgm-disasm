0200: 20        clrp                    ; set direct page to 0
0201: c0        di                      ; disable interrupts
0202: cd ff     mov   x,#$ff
0204: bd        mov   sp,x              ; set stack ptr to #$FF ($01FF)
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208             ; zero $00-$EF
020d: 1a c6     decw  $c6               ; set $c6 word to #$FFFF
020f: e8 00     mov   a,#$00
0211: 8d 2c     mov   y,#$2c
0213: 3f 14 06  call  $0614             ; zero echo vol left
0216: 8d 3c     mov   y,#$3c
0218: 3f 14 06  call  $0614             ; zero echo vol right
021b: 8d 5d     mov   y,#$5d
021d: e8 1b     mov   a,#$1b
021f: 3f 14 06  call  $0614             ; set sample dir to $1B00
0222: 8d 07     mov   y,#$07
0224: cd a0     mov   x,#$a0
0226: cb f2     mov   $f2,y
0228: d8 f3     mov   $f3,x             ; set exp decr gain mode...
022a: dd        mov   a,y
022b: 60        clrc
022c: 88 10     adc   a,#$10
022e: fd        mov   y,a
022f: 10 f5     bpl   $0226             ; for all voices
0231: 8f 30 f1  mov   $f1,#$30          ; clear ports
0234: 8f 24 fa  mov   $fa,#$24          ; set timer0 latch to #$24 (222.2 Hz, 4.5ms)
0237: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to #$80 (62.5 Hz, 16ms)
023a: 8f 05 fc  mov   $fc,#$05          ; set timer2 latch to #$05 (12.8 KHz, 78 us)
023d: 8f 07 f1  mov   $f1,#$07          ; start all timers
0240: 8f 05 8c  mov   $8c,#$05
0243: 3f 00 10  call  $1000             ; set echo delay to 80ms
0246: e8 3f     mov   a,#$3f
0248: c4 e1     mov   $e1,a
024a: 8b 24     dec   $24
024c: 8f 07 c8  mov   $c8,#$07
024f: 8b a8     dec   $a8
0251: 3f b3 09  call  $09b3             ; do
0254: eb fd     mov   y,$fd             ; process CPU cmds
0256: f0 f9     beq   $0251             ; until counter0 != 0
0258: 83 85 03  bbs4  $85,$025e
025b: d3 86 04  bbc6  $86,$0262
025e: 8d 08     mov   y,#$08
0260: 2f 02     bra   $0264
0262: 8d 0a     mov   y,#$0a            ; do all
0264: f6 b4 19  mov   a,$19b4+y         ; get DSP register
0267: c4 f2     mov   $f2,a             ; set latch for register
0269: f6 be 19  mov   a,$19be+y         ; get shadow register
026c: 5d        mov   x,a
026d: e6        mov   a,(x)
026e: c4 f3     mov   $f3,a             ; write DSP reg from shadow reg
0270: fe f2     dbnz  y,$0264           ; loop thru shadowed regs
0272: cb 24     mov   $24,y             ; clear key off shadow
0274: cb 22     mov   $22,y             ; clear key on shadow
0276: e3 86 28  bbs7  $86,$02a1
0279: 63 85 17  bbs3  $85,$0293
027c: e4 52     mov   a,$52
027e: 28 f0     and   a,#$f0
0280: 9f        xcn   a
0281: c4 98     mov   $98,a
0283: e4 52     mov   a,$52
0285: 28 0f     and   a,#$0f
0287: 04 98     or    a,$98
0289: c4 98     mov   $98,a
028b: e4 83     mov   a,$83
028d: 28 f0     and   a,#$f0
028f: 04 98     or    a,$98
0291: fd        mov   y,a
0292: e5 eb ad  mov   a,$adeb           ; pseudo op to skip instruction
0295: e4 dd     mov   a,$dd
0297: da f6     movw  $f6,ya
0299: eb 66     mov   y,$66
029b: e8 00     mov   a,#$00
029d: da f4     movw  $f4,ya            ; write #$00 and $66 to APU0/1
029f: 2f 03     bra   $02a4
02a1: 3f 92 11  call  $1192             ; read wave height regs, put in APU regs
02a4: ba d9     movw  ya,$d9
02a6: d0 48     bne   $02f0
02a8: 8b c8     dec   $c8
02aa: d0 06     bne   $02b2             ; --$c8 == 0 ?
02ac: 8f 07 c8  mov   $c8,#$07          ; reset $C8 counter
02af: 3f e9 11  call  $11e9
02b2: 3f f8 02  call  $02f8
02b5: cd 00     mov   x,#$00
02b7: 8f 01 8f  mov   $8f,#$01
02ba: e4 83     mov   a,$83
02bc: 04 84     or    a,$84
02be: 48 ff     eor   a,#$ff
02c0: 24 52     and   a,$52
02c2: 24 23     and   a,$23
02c4: c4 a0     mov   $a0,a
02c6: 4b a0     lsr   $a0
02c8: 90 05     bcc   $02cf
02ca: d8 a3     mov   $a3,x
02cc: 3f 11 07  call  $0711
02cf: 3d        inc   x
02d0: 3d        inc   x
02d1: 0b 8f     asl   $8f
02d3: d0 f1     bne   $02c6
02d5: cd 1e     mov   x,#$1e
02d7: 8f 80 8f  mov   $8f,#$80
02da: e4 83     mov   a,$83
02dc: 04 84     or    a,$84
02de: c4 a0     mov   $a0,a
02e0: 0b a0     asl   $a0
02e2: 90 05     bcc   $02e9
02e4: d8 a3     mov   $a3,x
02e6: 3f 11 07  call  $0711
02e9: 1d        dec   x
02ea: 1d        dec   x
02eb: 4b 8f     lsr   $8f
02ed: 73 8f f0  bbc3  $8f,$02e0
02f0: e8 00     mov   a,#$00
02f2: fd        mov   y,a
02f3: da db     movw  $db,ya            ; zero word $DB
02f5: 5f 51 02  jmp   $0251

02f8: a3 86 21  bbs5  $86,$031c
02fb: e4 46     mov   a,$46
02fd: eb b7     mov   y,$b7
02ff: f0 12     beq   $0313
0301: cf        mul   ya
0302: dd        mov   a,y
0303: e3 b7 0a  bbs7  $b7,$0310
0306: 1c        asl   a
0307: 60        clrc
0308: 84 46     adc   a,$46
030a: 90 07     bcc   $0313
030c: e8 ff     mov   a,#$ff
030e: 2f 03     bra   $0313
0310: d0 01     bne   $0313
0312: bc        inc   a
0313: 60        clrc
0314: 84 47     adc   a,$47
0316: c4 47     mov   $47,a
0318: b0 02     bcs   $031c
031a: 2f 53     bra   $036f
031c: cd 00     mov   x,#$00            ; loop over voices
031e: 8f 01 8f  mov   $8f,#$01
0321: fa 52 a0  mov   ($a0),($52)
0324: 2f 39     bra   $035f
0326: d8 a3     mov   $a3,x
0328: 9b 25     dec   $25+x
032a: d0 05     bne   $0331
032c: 3f a0 03  call  $03a0             ; do next vcmd
032f: 2f 27     bra   $0358
0331: 8d 00     mov   y,#$00
0333: c8 10     cmp   x,#$10
0335: b0 01     bcs   $0338
0337: e8 fc     mov   a,#$fc            ; pseudo-op skip
0339: e8 02     mov   a,#$02
033b: de 25 1a  cbne  $25+x,$0358
033e: f6 59 00  mov   a,$0059+y
0341: 24 8f     and   a,$8f
0343: d0 13     bne   $0358
0345: dd        mov   a,y
0346: d0 0d     bne   $0355
0348: e4 8f     mov   a,$8f
034a: 4e 23 00  tclr1 $0023
034d: e4 83     mov   a,$83
034f: 04 84     or    a,$84
0351: 24 8f     and   a,$8f
0353: d0 03     bne   $0358
0355: 09 8f 24  or    ($24),($8f)       ; key-off this voice
0358: 3f 20 06  call  $0620
035b: 3d        inc   x
035c: 3d        inc   x
035d: 0b 8f     asl   $8f
035f: 4b a0     lsr   $a0
0361: b0 c3     bcs   $0326             ; loop if this voice active
0363: d0 f6     bne   $035b
0365: c8 18     cmp   x,#$18
0367: b0 1d     bcs   $0386
0369: 3f 87 03  call  $0387
036c: 3f b3 09  call  $09b3
036f: e8 78     mov   a,#$78
0371: 60        clrc
0372: 84 48     adc   a,$48
0374: c4 48     mov   $48,a
0376: 90 0e     bcc   $0386
0378: cd 18     mov   x,#$18
037a: 8f 10 8f  mov   $8f,#$10
037d: e4 83     mov   a,$83
037f: 04 84     or    a,$84
0381: 9f        xcn   a
0382: c4 a0     mov   $a0,a
0384: 2f d9     bra   $035f
0386: 6f        ret

0387: e4 49     mov   a,$49
0389: f0 08     beq   $0393
038b: 8b 49     dec   $49
038d: ba 4a     movw  ya,$4a
038f: 7a 45     addw  ya,$45
0391: da 45     movw  $45,ya
0393: e4 50     mov   a,$50
0395: f0 08     beq   $039f
0397: 8b 50     dec   $50
0399: ba 4e     movw  ya,$4e
039b: 7a 4c     addw  ya,$4c
039d: da 4c     movw  $4c,ya
039f: 6f        ret

; process a command for voice X/2
03a0: 3f 90 05  call  $0590
03a3: 68 c4     cmp   a,#$c4
03a5: 90 05     bcc   $03ac
03a7: 3f 7c 05  call  $057c
03aa: 2f f4     bra   $03a0
03ac: fb 25     mov   y,$25+x
03ae: d0 0c     bne   $03bc             ; skip duration stuff if voice "busy"
03b0: 8d 00     mov   y,#$00
03b2: cd 0e     mov   x,#$0e
03b4: 9e        div   ya,x              ; A = AY / #$0E, Y = AY % #$0E
03b5: f8 a3     mov   x,$a3
03b7: f6 46 18  mov   a,$1846+y         ; get duration from table
03ba: d4 25     mov   $25+x,a
03bc: 78 a8 a2  cmp   $a2,#$a8
03bf: 90 09     bcc   $03ca             ; note less than 12
03c1: 78 b6 a2  cmp   $a2,#$b6
03c4: b0 03     bcs   $03c9             ; note >= 13
03c6: 5f 60 04  jmp   $0460

03c9: 6f        ret

03ca: e4 a2     mov   a,$a2
03cc: 8d 00     mov   y,#$00
03ce: cd 0e     mov   x,#$0e
03d0: 9e        div   ya,x              ; A = AY / #$0E, Y = AY % #$0E
03d1: c4 a2     mov   $a2,a             ; save note in A2
03d3: f8 a3     mov   x,$a3
03d5: f5 00 f6  mov   a,$f600+x         ; current octave
03d8: 8d 0c     mov   y,#$0c
03da: cf        mul   ya                ; multiply by 12
03db: 60        clrc
03dc: 84 a2     adc   a,$a2             ; + note value
03de: 60        clrc
03df: 95 21 f7  adc   a,$f721+x         ; + F721+x (transpose?)
03e2: 80        setc
03e3: a8 0a     sbc   a,#$0a
03e5: d5 61 f7  mov   $f761+x,a
03e8: 3f 1b 05  call  $051b             ; calculate pitch value
03eb: e4 c0     mov   a,$c0
03ed: d5 e0 f8  mov   $f8e0+x,a
03f0: e4 c1     mov   a,$c1
03f2: d5 e1 f8  mov   $f8e1+x,a
03f5: f5 41 01  mov   a,$0141+x
03f8: f0 05     beq   $03ff
03fa: c4 a2     mov   $a2,a
03fc: 3f 80 13  call  $1380
03ff: f5 60 01  mov   a,$0160+x
0402: f0 07     beq   $040b
0404: c4 a2     mov   $a2,a
0406: 3f 34 14  call  $1434
0409: e8 00     mov   a,#$00
040b: d5 c0 f8  mov   $f8c0+x,a
040e: d5 c1 f8  mov   $f8c1+x,a
0411: d5 60 f8  mov   $f860+x,a
0414: d5 61 f8  mov   $f861+x,a
0417: d5 80 f7  mov   $f780+x,a
041a: d5 81 f7  mov   $f781+x,a
041d: c8 10     cmp   x,#$10
041f: b0 20     bcs   $0441
0421: 09 8f 23  or    ($23),($8f)
0424: e4 83     mov   a,$83
0426: 04 84     or    a,$84
0428: 24 8f     and   a,$8f
042a: d0 34     bne   $0460
042c: e4 8f     mov   a,$8f
042e: 24 5f     and   a,$5f
0430: d0 22     bne   $0454
0432: e4 8f     mov   a,$8f
0434: 24 5b     and   a,$5b
0436: f0 1c     beq   $0454
0438: 24 5d     and   a,$5d
043a: d0 1b     bne   $0457
043c: 09 8f 5d  or    ($5d),($8f)
043f: 2f 13     bra   $0454
0441: e4 8f     mov   a,$8f
0443: 24 60     and   a,$60
0445: d0 0d     bne   $0454
0447: e4 8f     mov   a,$8f
0449: 24 5c     and   a,$5c
044b: f0 07     beq   $0454
044d: 24 5e     and   a,$5e
044f: d0 06     bne   $0457
0451: 09 8f 5e  or    ($5e),($8f)
0454: 09 8f 22  or    ($22),($8f)
0457: 09 8f db  or    ($db),($8f)
045a: 09 8f dc  or    ($dc),($8f)
045d: 3f b0 15  call  $15b0
0460: 3f 9b 05  call  $059b
0463: fd        mov   y,a
0464: e4 8f     mov   a,$8f
0466: c8 10     cmp   x,#$10
0468: b0 21     bcs   $048b
046a: ad b6     cmp   y,#$b6
046c: b0 09     bcs   $0477
046e: ad a8     cmp   y,#$a8
0470: 90 0b     bcc   $047d
0472: 0e 59 00  tset1 $0059
0475: 2f 33     bra   $04aa
0477: 4e 5b 00  tclr1 $005b
047a: 4e 5f 00  tclr1 $005f
047d: 4e 59 00  tclr1 $0059
0480: e4 5b     mov   a,$5b
0482: 04 5f     or    a,$5f
0484: 24 8f     and   a,$8f
0486: 0e 59 00  tset1 $0059
0489: 2f 1f     bra   $04aa
048b: ad b6     cmp   y,#$b6
048d: b0 09     bcs   $0498
048f: ad a8     cmp   y,#$a8
0491: 90 0b     bcc   $049e
0493: 0e 5a 00  tset1 $005a
0496: 2f 12     bra   $04aa
0498: 4e 5c 00  tclr1 $005c
049b: 4e 60 00  tclr1 $0060
049e: 4e 5a 00  tclr1 $005a
04a1: e4 5c     mov   a,$5c
04a3: 04 60     or    a,$60
04a5: 24 8f     and   a,$8f
04a7: 0e 5a 00  tset1 $005a
04aa: f5 40 01  mov   a,$0140+x
04ad: f0 6b     beq   $051a
04af: 60        clrc
04b0: 95 61 f7  adc   a,$f761+x
04b3: d5 61 f7  mov   $f761+x,a
04b6: 3f 1b 05  call  $051b
04b9: f5 e1 f8  mov   a,$f8e1+x
04bc: fd        mov   y,a
04bd: f5 e0 f8  mov   a,$f8e0+x
04c0: da 98     movw  $98,ya
04c2: ba c0     movw  ya,$c0
04c4: 80        setc
04c5: 9a 98     subw  ya,$98
04c7: da 98     movw  $98,ya
04c9: 0d        push  psw
04ca: b0 08     bcs   $04d4
04cc: 58 ff 98  eor   $98,#$ff
04cf: 58 ff 99  eor   $99,#$ff
04d2: 3a 98     incw  $98
04d4: f5 20 f7  mov   a,$f720+x
04d7: d0 05     bne   $04de
04d9: 8f 00 9a  mov   $9a,#$00
04dc: 2f 12     bra   $04f0
04de: 5d        mov   x,a
04df: e4 99     mov   a,$99
04e1: 8d 00     mov   y,#$00
04e3: 9e        div   ya,x
04e4: c4 9a     mov   $9a,a
04e6: e4 98     mov   a,$98
04e8: 9e        div   ya,x
04e9: c4 99     mov   $99,a
04eb: e8 00     mov   a,#$00
04ed: 9e        div   ya,x
04ee: c4 98     mov   $98,a
04f0: 8e        pop   psw
04f1: b0 0f     bcs   $0502
04f3: 58 ff 98  eor   $98,#$ff
04f6: 58 ff 99  eor   $99,#$ff
04f9: 58 ff 9a  eor   $9a,#$ff
04fc: 3a 98     incw  $98
04fe: d0 02     bne   $0502
0500: ab 9a     inc   $9a
0502: f8 a3     mov   x,$a3
0504: ba 99     movw  ya,$99
0506: d5 80 f7  mov   $f780+x,a
0509: dd        mov   a,y
050a: d5 81 f7  mov   $f781+x,a
050d: e4 98     mov   a,$98
050f: d5 a0 f8  mov   $f8a0+x,a
0512: e8 00     mov   a,#$00
0514: d5 40 01  mov   $0140+x,a
0517: d5 a1 f8  mov   $f8a1+x,a
051a: 6f        ret

; calculate pitch value for note in A
051b: cd 0c     mov   x,#$0c
051d: 8d 00     mov   y,#$00
051f: 9e        div   ya,x
0520: f8 a3     mov   x,$a3
0522: c4 a1     mov   $a1,a             ; octave (corrected)
0524: dd        mov   a,y
0525: 1c        asl   a
0526: fd        mov   y,a               ; y = note value
0527: f6 0c 18  mov   a,$180c+y
052a: c4 c2     mov   $c2,a
052c: f6 0d 18  mov   a,$180d+y
052f: c4 c3     mov   $c3,a             ; pitch from table -> C2/C3
0531: fd        mov   y,a
0532: f5 40 f7  mov   a,$f740+x
0535: 60        clrc
0536: 95 60 f7  adc   a,$f760+x
0539: 0d        push  psw
053a: 2d        push  a
053b: cf        mul   ya
053c: da c0     movw  $c0,ya
053e: eb c2     mov   y,$c2
0540: ae        pop   a
0541: cf        mul   ya
0542: dd        mov   a,y
0543: 8d 00     mov   y,#$00
0545: 7a c0     addw  ya,$c0
0547: da c0     movw  $c0,ya
0549: f5 41 f7  mov   a,$f741+x
054c: f0 08     beq   $0556
054e: cf        mul   ya
054f: dd        mov   a,y
0550: 8d 00     mov   y,#$00
0552: 7a c0     addw  ya,$c0
0554: 2f 02     bra   $0558
0556: e4 c0     mov   a,$c0
0558: 8e        pop   psw
0559: 30 02     bmi   $055d
055b: 7a c2     addw  ya,$c2
055d: da c0     movw  $c0,ya
055f: e8 04     mov   a,#$04
0561: eb a1     mov   y,$a1
0563: 30 0e     bmi   $0573
0565: 64 a1     cmp   a,$a1
0567: b0 0f     bcs   $0578
0569: 0b c0     asl   $c0
056b: 2b c1     rol   $c1
056d: bc        inc   a
056e: 2e a1 f8  cbne  $a1,$0569
0571: 2f 08     bra   $057b
0573: 4b c1     lsr   $c1
0575: 6b c0     ror   $c0
0577: 9c        dec   a
0578: 2e a1 f8  cbne  $a1,$0573
057b: 6f        ret

; dispatch command in A, reading first operand if present
057c: a8 c4     sbc   a,#$c4
057e: 1c        asl   a
057f: fd        mov   y,a
0580: f6 a2 18  mov   a,$18a2+y
0583: 2d        push  a
0584: f6 a1 18  mov   a,$18a1+y
0587: 2d        push  a
0588: dd        mov   a,y
0589: 5c        lsr   a
058a: fd        mov   y,a
058b: f6 19 19  mov   a,$1919+y
058e: f0 0a     beq   $059a
; read next command for voice X/2 into $A2, A
0590: e7 02     mov   a,($02+x)
0592: c4 a2     mov   $a2,a
0594: bb 02     inc   $02+x
0596: d0 02     bne   $059a
0598: bb 03     inc   $03+x
059a: 6f        ret

; scan ahead to next note command
059b: f4 02     mov   a,$02+x
059d: fb 03     mov   y,$03+x
059f: da 90     movw  $90,ya
05a1: f4 26     mov   a,$26+x
05a3: c4 c5     mov   $c5,a
05a5: 8d 00     mov   y,#$00
05a7: f7 90     mov   a,($90)+y
05a9: 68 c4     cmp   a,#$c4
05ab: 90 66     bcc   $0613
05ad: 3a 90     incw  $90
05af: 68 eb     cmp   a,#$eb
05b1: f0 60     beq   $0613
05b3: 68 f7     cmp   a,#$f7
05b5: d0 05     bne   $05bc
05b7: 3f d8 16  call  $16d8
05ba: 2f e9     bra   $05a5
05bc: 68 e3     cmp   a,#$e3
05be: d0 05     bne   $05c5
05c0: 3f a5 17  call  $17a5
05c3: 2f e0     bra   $05a5
05c5: 68 f6     cmp   a,#$f6
05c7: d0 05     bne   $05ce
05c9: 3f 15 17  call  $1715
05cc: 2f d7     bra   $05a5
05ce: 68 e5     cmp   a,#$e5
05d0: d0 05     bne   $05d7
05d2: 3f 56 16  call  $1656
05d5: 2f ce     bra   $05a5
05d7: 68 e7     cmp   a,#$e7
05d9: d0 05     bne   $05e0
05db: 3f 7a 16  call  $167a
05de: 2f c5     bra   $05a5
05e0: 68 e9     cmp   a,#$e9
05e2: d0 05     bne   $05e9
05e4: 3f ba 16  call  $16ba
05e7: 2f 07     bra   $05f0
05e9: 68 ea     cmp   a,#$ea
05eb: d0 0a     bne   $05f7
05ed: 3f c0 16  call  $16c0
05f0: dd        mov   a,y
05f1: d0 b2     bne   $05a5
05f3: e8 eb     mov   a,#$eb
05f5: 2f 1c     bra   $0613
05f7: 68 dc     cmp   a,#$dc
05f9: d0 08     bne   $0603
05fb: 3f 56 16  call  $1656
05fe: 3f 7a 16  call  $167a
0601: 2f a2     bra   $05a5
0603: 80        setc
0604: a8 c4     sbc   a,#$c4
0606: fd        mov   y,a
0607: f6 19 19  mov   a,$1919+y
060a: f0 99     beq   $05a5
060c: fd        mov   y,a
060d: 3a 90     incw  $90
060f: fe fc     dbnz  y,$060d
0611: 2f 94     bra   $05a7
0613: 6f        ret

; set DSP register Y to A
0614: cb f2     mov   $f2,y
0616: c4 f3     mov   $f3,a
0618: 6f        ret

; clear f4/f5 read regs
0619: 8f 17 f1  mov   $f1,#$17
061c: 8f 07 f1  mov   $f1,#$07
061f: 6f        ret

0620: 40        setp                    ; direct page = 01
0621: f4 01     mov   a,$01+x
0623: f0 02     beq   $0627
0625: 9b 01     dec   $01+x             ; DEC $0101+X if not zero
0627: f4 21     mov   a,$21+x
0629: f0 02     beq   $062d
062b: 9b 21     dec   $21+x             ; DEC $0121+X if not zero
062d: 20        clrp                    ; direct page = 00
062e: f5 a0 f6  mov   a,$f6a0+x
0631: f0 26     beq   $0659             ; if F6A0+X != 0 then
0633: 9c        dec   a
0634: d5 a0 f6  mov   $f6a0+x,a         ; DEC F6A0+X
0637: f5 20 f6  mov   a,$f620+x
063a: c4 98     mov   $98,a
063c: f5 21 f6  mov   a,$f621+x
063f: c4 99     mov   $99,a
0641: f5 41 f6  mov   a,$f641+x
0644: fd        mov   y,a
0645: f5 40 f6  mov   a,$f640+x
0648: 7a 98     addw  ya,$98
064a: d5 20 f6  mov   $f620+x,a
064d: dd        mov   a,y               ; F620/1 += F640/1
064e: 75 21 f6  cmp   a,$f621+x         ; CMP old value high byte F621
0651: d5 21 f6  mov   $f621+x,a
0654: f0 03     beq   $0659
0656: 09 8f db  or    ($db),($8f)       ; if different, set vbit in $DB
0659: f5 a1 f6  mov   a,$f6a1+x
065c: f0 26     beq   $0684             ; if F6A1+X != 0 then
065e: 9c        dec   a
065f: d5 a1 f6  mov   $f6a1+x,a         ; DEC F6A1+X
0662: f5 60 f6  mov   a,$f660+x
0665: c4 98     mov   $98,a
0667: f5 61 f6  mov   a,$f661+x
066a: c4 99     mov   $99,a
066c: f5 81 f6  mov   a,$f681+x
066f: fd        mov   y,a
0670: f5 80 f6  mov   a,$f680+x
0673: 7a 98     addw  ya,$98
0675: d5 60 f6  mov   $f660+x,a
0678: dd        mov   a,y               ; F660/1 += F680/1
0679: 75 61 f6  cmp   a,$f661+x         ; CMP old value high byte F661
067c: d5 61 f6  mov   $f661+x,a
067f: f0 03     beq   $0684
0681: 09 8f db  or    ($db),($8f)       ; if different, set vbit in $DB
0684: f5 a0 f8  mov   a,$f8a0+x
0687: c4 98     mov   $98,a
0689: f5 80 f7  mov   a,$f780+x
068c: c4 99     mov   $99,a
068e: f5 81 f7  mov   a,$f781+x
0691: c4 9a     mov   $9a,a
0693: ba 98     movw  ya,$98
0695: d0 04     bne   $069b
0697: e4 9a     mov   a,$9a
0699: f0 2e     beq   $06c9
069b: f5 20 f7  mov   a,$f720+x
069e: 9c        dec   a
069f: d0 09     bne   $06aa
06a1: d5 80 f7  mov   $f780+x,a
06a4: d5 81 f7  mov   $f781+x,a
06a7: d5 a0 f8  mov   $f8a0+x,a
06aa: d5 20 f7  mov   $f720+x,a
06ad: 60        clrc
06ae: f5 e0 f8  mov   a,$f8e0+x
06b1: fd        mov   y,a
06b2: f5 a1 f8  mov   a,$f8a1+x
06b5: 7a 98     addw  ya,$98
06b7: d5 a1 f8  mov   $f8a1+x,a
06ba: dd        mov   a,y
06bb: d5 e0 f8  mov   $f8e0+x,a
06be: e4 9a     mov   a,$9a
06c0: 95 e1 f8  adc   a,$f8e1+x
06c3: d5 e1 f8  mov   $f8e1+x,a
06c6: 09 8f dc  or    ($dc),($8f)
06c9: f5 61 01  mov   a,$0161+x
06cc: f0 42     beq   $0710
06ce: f5 a0 f7  mov   a,$f7a0+x
06d1: c4 98     mov   $98,a
06d3: f5 a1 f7  mov   a,$f7a1+x
06d6: c4 99     mov   $99,a
06d8: f5 81 f8  mov   a,$f881+x
06db: fd        mov   y,a
06dc: c4 9a     mov   $9a,a
06de: f5 80 f8  mov   a,$f880+x
06e1: 7a 98     addw  ya,$98
06e3: d5 80 f8  mov   $f880+x,a
06e6: dd        mov   a,y
06e7: 75 81 f8  cmp   a,$f881+x
06ea: d5 81 f8  mov   $f881+x,a
06ed: f0 03     beq   $06f2
06ef: 09 8f db  or    ($db),($8f)
06f2: f5 01 f7  mov   a,$f701+x
06f5: 9c        dec   a
06f6: d0 15     bne   $070d
06f8: 58 ff 98  eor   $98,#$ff
06fb: 58 ff 99  eor   $99,#$ff
06fe: 3a 98     incw  $98
0700: e4 98     mov   a,$98
0702: d5 a0 f7  mov   $f7a0+x,a
0705: e4 99     mov   a,$99
0707: d5 a1 f7  mov   $f7a1+x,a
070a: f5 00 f7  mov   a,$f700+x
070d: d5 01 f7  mov   $f701+x,a
0710: 6f        ret

; set volume/pitch regs on DSP for voice X/2
0711: f5 41 01  mov   a,$0141+x
0714: f0 07     beq   $071d
0716: c4 a2     mov   $a2,a
0718: f5 01 01  mov   a,$0101+x
071b: f0 03     beq   $0720
071d: 5f c3 07  jmp   $07c3

0720: f5 e1 f7  mov   a,$f7e1+x
0723: fd        mov   y,a
0724: f5 e0 f7  mov   a,$f7e0+x
0727: da c0     movw  $c0,ya
0729: f5 41 f8  mov   a,$f841+x
072c: fd        mov   y,a
072d: f5 40 f8  mov   a,$f840+x
0730: 7a c0     addw  ya,$c0
0732: da c2     movw  $c2,ya
0734: d5 40 f8  mov   $f840+x,a
0737: dd        mov   a,y
0738: d5 41 f8  mov   $f841+x,a
073b: 0b c2     asl   $c2
073d: 2b c3     rol   $c3
073f: f5 e1 f8  mov   a,$f8e1+x
0742: 8d 0f     mov   y,#$0f
0744: cf        mul   ya
0745: da 98     movw  $98,ya
0747: f5 e0 f8  mov   a,$f8e0+x
074a: 8d 0f     mov   y,#$0f
074c: cf        mul   ya
074d: dd        mov   a,y
074e: 8d 00     mov   y,#$00
0750: 7a 98     addw  ya,$98
0752: da 98     movw  $98,ya
0754: e4 c3     mov   a,$c3
0756: cf        mul   ya
0757: da 9a     movw  $9a,ya
0759: eb 98     mov   y,$98
075b: e4 c3     mov   a,$c3
075d: cf        mul   ya
075e: dd        mov   a,y
075f: 8d 00     mov   y,#$00
0761: 7a 9a     addw  ya,$9a
0763: da 9a     movw  $9a,ya
0765: eb c2     mov   y,$c2
0767: e4 99     mov   a,$99
0769: cf        mul   ya
076a: dd        mov   a,y
076b: 8d 00     mov   y,#$00
076d: 7a 9a     addw  ya,$9a
076f: da 9a     movw  $9a,ya
0771: f3 c3 04  bbc7  $c3,$0778
0774: 9a 98     subw  ya,$98
0776: da 9a     movw  $9a,ya
0778: f5 c1 f8  mov   a,$f8c1+x
077b: fd        mov   y,a
077c: f5 c0 f8  mov   a,$f8c0+x
077f: 5a 9a     cmpw  ya,$9a
0781: f0 0c     beq   $078f
0783: ba 9a     movw  ya,$9a
0785: d5 c0 f8  mov   $f8c0+x,a
0788: dd        mov   a,y
0789: d5 c1 f8  mov   $f8c1+x,a
078c: 09 8f dc  or    ($dc),($8f)
078f: f5 c1 f6  mov   a,$f6c1+x
0792: 9c        dec   a
0793: d0 2b     bne   $07c0
0795: f5 c1 f7  mov   a,$f7c1+x
0798: fd        mov   y,a
0799: f5 c0 f7  mov   a,$f7c0+x
079c: da 98     movw  $98,ya
079e: e4 c1     mov   a,$c1
07a0: c4 c2     mov   $c2,a
07a2: f5 80 01  mov   a,$0180+x
07a5: c4 9b     mov   $9b,a
07a7: 38 70 9b  and   $9b,#$70
07aa: 28 07     and   a,#$07
07ac: 3f 33 09  call  $0933
07af: d5 e0 f7  mov   $f7e0+x,a
07b2: dd        mov   a,y
07b3: d5 e1 f7  mov   $f7e1+x,a
07b6: e4 9a     mov   a,$9a
07b8: 04 9b     or    a,$9b
07ba: d5 80 01  mov   $0180+x,a
07bd: f5 c0 f6  mov   a,$f6c0+x
07c0: d5 c1 f6  mov   $f6c1+x,a
07c3: f5 60 01  mov   a,$0160+x
07c6: f0 5c     beq   $0824
07c8: c4 a2     mov   $a2,a
07ca: f5 21 01  mov   a,$0121+x
07cd: d0 55     bne   $0824
07cf: f5 21 f8  mov   a,$f821+x
07d2: fd        mov   y,a
07d3: f5 20 f8  mov   a,$f820+x
07d6: da c0     movw  $c0,ya
07d8: cb c2     mov   $c2,y
07da: f5 61 f8  mov   a,$f861+x
07dd: fd        mov   y,a
07de: f5 60 f8  mov   a,$f860+x
07e1: 7a c0     addw  ya,$c0
07e3: d5 60 f8  mov   $f860+x,a
07e6: dd        mov   a,y
07e7: 75 61 f8  cmp   a,$f861+x
07ea: f0 06     beq   $07f2
07ec: d5 61 f8  mov   $f861+x,a
07ef: 09 8f db  or    ($db),($8f)
07f2: f5 e1 f6  mov   a,$f6e1+x
07f5: 9c        dec   a
07f6: d0 29     bne   $0821
07f8: f5 01 f8  mov   a,$f801+x
07fb: fd        mov   y,a
07fc: f5 00 f8  mov   a,$f800+x
07ff: da 98     movw  $98,ya
0801: f5 80 01  mov   a,$0180+x
0804: c4 9b     mov   $9b,a
0806: 38 07 9b  and   $9b,#$07
0809: 9f        xcn   a
080a: 28 07     and   a,#$07
080c: 3f 33 09  call  $0933
080f: d5 20 f8  mov   $f820+x,a
0812: dd        mov   a,y
0813: d5 21 f8  mov   $f821+x,a
0816: e4 9a     mov   a,$9a
0818: 9f        xcn   a
0819: 04 9b     or    a,$9b
081b: d5 80 01  mov   $0180+x,a
081e: f5 e0 f6  mov   a,$f6e0+x
0821: d5 e1 f6  mov   $f6e1+x,a
0824: ba db     movw  ya,$db
0826: d0 01     bne   $0829
0828: 6f        ret

0829: 7d        mov   a,x
082a: 28 0f     and   a,#$0f
082c: c4 98     mov   $98,a
082e: e4 98     mov   a,$98
0830: 9f        xcn   a
0831: 5c        lsr   a
0832: c4 99     mov   $99,a
0834: e4 8f     mov   a,$8f
0836: 24 db     and   a,$db
0838: f0 06     beq   $0840
083a: 4e db 00  tclr1 $00db
083d: 3f 4f 08  call  $084f
0840: e4 8f     mov   a,$8f
0842: 24 dc     and   a,$dc
0844: f0 08     beq   $084e
0846: 4e dc 00  tclr1 $00dc
0849: 22 99     set1  $99
084b: 3f e6 08  call  $08e6
084e: 6f        ret

; set voice volume DSP regs
084f: 8f 80 9a  mov   $9a,#$80
0852: 03 85 20  bbs0  $85,$0875
0855: e4 8f     mov   a,$8f
0857: 24 84     and   a,$84
0859: d0 1a     bne   $0875
085b: f5 61 f6  mov   a,$f661+x
085e: fd        mov   y,a
085f: c8 10     cmp   x,#$10
0861: 90 08     bcc   $086b
0863: e4 b2     mov   a,$b2
0865: 48 80     eor   a,#$80
0867: 3f d2 0f  call  $0fd2
086a: fd        mov   y,a
086b: f5 81 f8  mov   a,$f881+x
086e: 3f d2 0f  call  $0fd2
0871: 48 ff     eor   a,#$ff
0873: c4 9a     mov   $9a,a
0875: f5 21 f6  mov   a,$f621+x
0878: fd        mov   y,a
0879: c4 9b     mov   $9b,a
087b: f5 61 f8  mov   a,$f861+x
087e: f0 0c     beq   $088c
0880: 1c        asl   a
0881: cf        mul   ya
0882: b0 08     bcs   $088c
0884: dd        mov   a,y
0885: 84 9b     adc   a,$9b
0887: 90 02     bcc   $088b
0889: e8 ff     mov   a,#$ff
088b: fd        mov   y,a
088c: c8 10     cmp   x,#$10
088e: b0 0d     bcs   $089d
0890: e4 a6     mov   a,$a6
0892: cf        mul   ya
0893: e4 8f     mov   a,$8f
0895: 24 61     and   a,$61
0897: d0 11     bne   $08aa
0899: e4 51     mov   a,$51
089b: 2f 0c     bra   $08a9
089d: e4 8f     mov   a,$8f
089f: 24 84     and   a,$84
08a1: f0 04     beq   $08a7
08a3: e8 ff     mov   a,#$ff
08a5: 2f 02     bra   $08a9
08a7: e4 a8     mov   a,$a8
08a9: cf        mul   ya
08aa: cb 9b     mov   $9b,y
08ac: e4 9a     mov   a,$9a
08ae: fd        mov   y,a
08af: e4 9b     mov   a,$9b
08b1: cf        mul   ya
08b2: c8 10     cmp   x,#$10
08b4: b0 08     bcs   $08be
08b6: e4 8f     mov   a,$8f
08b8: 24 a4     and   a,$a4
08ba: f0 02     beq   $08be
08bc: 8d 00     mov   y,#$00
08be: dd        mov   a,y
08bf: eb 98     mov   y,$98
08c1: d6 c9 00  mov   $00c9+y,a
08c4: 5c        lsr   a
08c5: fd        mov   y,a
08c6: e4 99     mov   a,$99
08c8: c8 10     cmp   x,#$10
08ca: 90 05     bcc   $08d1
08cc: 33 85 02  bbc1  $85,$08d1
08cf: 48 01     eor   a,#$01
08d1: c4 f2     mov   $f2,a
08d3: 7e f3     cmp   y,$f3
08d5: f0 02     beq   $08d9
08d7: cb f3     mov   $f3,y
08d9: e4 9a     mov   a,$9a
08db: 48 ff     eor   a,#$ff
08dd: ea 98 00  not1  $0013,0
08e0: ab 99     inc   $99
08e2: 33 99 c9  bbc1  $99,$08ae
08e5: 6f        ret

; set voice pitch DSP regs
08e6: f5 e1 f8  mov   a,$f8e1+x
08e9: fd        mov   y,a
08ea: f5 e0 f8  mov   a,$f8e0+x
08ed: da 9a     movw  $9a,ya
08ef: f5 c1 f8  mov   a,$f8c1+x
08f2: fd        mov   y,a
08f3: f5 c0 f8  mov   a,$f8c0+x
08f6: 7a 9a     addw  ya,$9a
08f8: da 9a     movw  $9a,ya            ; YA, $9A/B = F8E0/1+X + F8C0/1+X
08fa: c8 10     cmp   x,#$10
08fc: 90 04     bcc   $0902
08fe: ba 9a     movw  ya,$9a
0900: 2f 1b     bra   $091d
0902: e4 bc     mov   a,$bc
0904: 0d        push  psw
0905: 2d        push  a
0906: cf        mul   ya
0907: da 9c     movw  $9c,ya
0909: ae        pop   a
090a: eb 9a     mov   y,$9a
090c: cf        mul   ya
090d: dd        mov   a,y
090e: 8d 00     mov   y,#$00
0910: 7a 9c     addw  ya,$9c            ; YA = ($BC * $9A/B) >> 8
0912: 8e        pop   psw
0913: 30 08     bmi   $091d             ; branch if $BC negative
0915: 1c        asl   a
0916: 2d        push  a
0917: dd        mov   a,y
0918: 3c        rol   a
0919: fd        mov   y,a
091a: ae        pop   a                 ; ASL YA
091b: 7a 9a     addw  ya,$9a            ; final pitch value to write
091d: 4d        push  x
091e: f8 99     mov   x,$99
0920: d8 f2     mov   $f2,x
0922: 64 f3     cmp   a,$f3
0924: f0 02     beq   $0928
0926: c4 f3     mov   $f3,a             ; set DSP pitch lo from A if different
0928: 3d        inc   x
0929: d8 f2     mov   $f2,x
092b: 7e f3     cmp   y,$f3
092d: f0 02     beq   $0931
092f: cb f3     mov   $f3,y             ; set DSP pitch hi from Y if different
0931: ce        pop   x
0932: 6f        ret

0933: 8f 00 9a  mov   $9a,#$00
0936: 78 c0 a2  cmp   $a2,#$c0
0939: b0 4b     bcs   $0986
093b: 78 80 a2  cmp   $a2,#$80
093e: b0 1f     bcs   $095f
0940: 58 ff c0  eor   $c0,#$ff
0943: 58 ff c1  eor   $c1,#$ff
0946: 3a c0     incw  $c0
0948: fd        mov   y,a
0949: f0 65     beq   $09b0
094b: 9c        dec   a
094c: c4 9a     mov   $9a,a
094e: e3 c1 5f  bbs7  $c1,$09b0
0951: 4b 99     lsr   $99
0953: 6b 98     ror   $98
0955: 4b 99     lsr   $99
0957: 6b 98     ror   $98
0959: ba 98     movw  ya,$98
095b: 7a c0     addw  ya,$c0
095d: 2f 53     bra   $09b2
095f: 58 ff c0  eor   $c0,#$ff
0962: 58 ff c1  eor   $c1,#$ff
0965: 3a c0     incw  $c0
0967: fd        mov   y,a
0968: f0 46     beq   $09b0
096a: 9c        dec   a
096b: c4 9a     mov   $9a,a
096d: f3 c1 40  bbc7  $c1,$09b0
0970: 4b 99     lsr   $99
0972: 6b 98     ror   $98
0974: 4b 99     lsr   $99
0976: 6b 98     ror   $98
0978: 58 ff 98  eor   $98,#$ff
097b: 58 ff 99  eor   $99,#$ff
097e: 3a 98     incw  $98
0980: ba 98     movw  ya,$98
0982: 7a c0     addw  ya,$c0
0984: 2f 2c     bra   $09b2
0986: fd        mov   y,a
0987: f0 1f     beq   $09a8
0989: 9c        dec   a
098a: c4 9a     mov   $9a,a
098c: f3 c1 08  bbc7  $c1,$0997
098f: 58 ff c0  eor   $c0,#$ff
0992: 58 ff c1  eor   $c1,#$ff
0995: 3a c0     incw  $c0
0997: 4b 99     lsr   $99
0999: 6b 98     ror   $98
099b: 4b 99     lsr   $99
099d: 6b 98     ror   $98
099f: ba 98     movw  ya,$98
09a1: 7a c0     addw  ya,$c0
09a3: da c0     movw  $c0,ya
09a5: e3 c2 08  bbs7  $c2,$09b0
09a8: 58 ff c0  eor   $c0,#$ff
09ab: 58 ff c1  eor   $c1,#$ff
09ae: 3a c0     incw  $c0
09b0: ba c0     movw  ya,$c0
09b2: 6f        ret

; check for, process command from CPU
09b3: f8 f4     mov   x,$f4             ; check 2140
09b5: f0 35     beq   $09ec             ; return if zero
09b7: f8 f4     mov   x,$f4
09b9: 3e f4     cmp   x,$f4
09bb: d0 fa     bne   $09b7             ; wait for 2140 to go zero again
09bd: ba f6     movw  ya,$f6
09bf: da 8d     movw  $8d,ya
09c1: ba f4     movw  ya,$f4
09c3: da 8b     movw  $8b,ya            ; move 2140/1/2/3 to $8B/C/D/E
09c5: 3f 19 06  call  $0619             ; clear read regs 2140/1
09c8: c4 f4     mov   $f4,a
09ca: 5d        mov   x,a
09cb: 10 03     bpl   $09d0
09cd: 5f 2c 0c  jmp   $0c2c             ; if X >= 80, JMP 0C2C

09d0: c8 10     cmp   x,#$10
09d2: 90 18     bcc   $09ec
09d4: c8 20     cmp   x,#$20
09d6: b0 0d     bcs   $09e5
09d8: 28 0f     and   a,#$0f
09da: 1c        asl   a
09db: fd        mov   y,a
09dc: f6 56 19  mov   a,$1956+y
09df: 2d        push  a
09e0: f6 55 19  mov   a,$1955+y
09e3: 2d        push  a                 ; jmp via tbl at 1955
09e4: 6f        ret

09e5: c8 30     cmp   x,#$30
09e7: b0 03     bcs   $09ec
09e9: 5f c9 0b  jmp   $0bc9             ; 20 < X < 30 then JMP 0BC9

09ec: 6f        ret

; process CPU cmd $14
09ed: 3f 1a 11  call  $111a
; process CPU cmd $10
09f0: 8f 10 c4  mov   $c4,#$10
09f3: 2f 06     bra   $09fb
; process CPU cmd $15
09f5: 3f 1a 11  call  $111a
; process CPU cmd $11
09f8: 8f 20 c4  mov   $c4,#$20
09fb: e8 ff     mov   a,#$ff
09fd: 8d 5c     mov   y,#$5c
09ff: 3f 14 06  call  $0614             ; key off all voices
0a02: fa 8c c7  mov   ($c7),($8c)       ; store song # in C7
0a05: e4 8d     mov   a,$8d
0a07: c4 a6     mov   $a6,a
0a09: 8f 00 ad  mov   $ad,#$00
0a0c: 3f 22 0e  call  $0e22             ; download song info (like FE cmd)
0a0f: e8 00     mov   a,#$00
0a11: fd        mov   y,a
0a12: da 83     movw  $83,ya            ; zero $83
0a14: b2 86     clr5  $86               ; clear bit 5 of $86
0a16: 72 85     clr3  $85               ; clear bit 3 of $85
0a18: da d9     movw  $d9,ya            ; zero $D9
0a1a: c4 dd     mov   $dd,a             ; zero $DD
0a1c: 69 c7 c6  cmp   ($c6),($c7)
0a1f: d0 49     bne   $0a6a             ; is this the saved song?
0a21: 3f 56 11  call  $1156             ; restore saved state
0a24: e4 52     mov   a,$52
0a26: f0 42     beq   $0a6a
0a28: 38 e0 8a  and   $8a,#$e0
0a2b: 09 62 8a  or    ($8a),($62)
0a2e: cd 00     mov   x,#$00
0a30: 8f 01 8f  mov   $8f,#$01
0a33: bb 25     inc   $25+x
0a35: d8 a3     mov   $a3,x
0a37: 3f b0 15  call  $15b0
0a3a: 7d        mov   a,x
0a3b: 9f        xcn   a
0a3c: 5c        lsr   a
0a3d: fd        mov   y,a               ; get voice x/2 DSP addr to Y
0a3e: e8 00     mov   a,#$00
0a40: 3f 14 06  call  $0614             ; set voice volume L to 0
0a43: fc        inc   y
0a44: 3f 14 06  call  $0614             ; set voice volume R to 0
0a47: fc        inc   y
0a48: cb 99     mov   $99,y
0a4a: 3f e6 08  call  $08e6
0a4d: 3d        inc   x
0a4e: 3d        inc   x
0a4f: 0b 8f     asl   $8f
0a51: d0 e0     bne   $0a33
0a53: aa 85 80  mov1  c,$1010,5
0a56: b0 03     bcs   $0a5b
0a58: 3f 3f 13  call  $133f
0a5b: e8 00     mov   a,#$00
0a5d: c4 54     mov   $54,a
0a5f: c4 56     mov   $56,a
0a61: c4 58     mov   $58,a
0a63: fa 23 22  mov   ($22),($23)
0a66: c4 24     mov   $24,a
0a68: 2f 6a     bra   $0ad4
0a6a: e8 00     mov   a,#$00
0a6c: fd        mov   y,a
0a6d: c4 52     mov   $52,a
0a6f: da 53     movw  $53,ya
0a71: da 55     movw  $55,ya
0a73: da 57     movw  $57,ya
0a75: c4 22     mov   $22,a             ; zero key-on shadow
0a77: c4 24     mov   $24,a             ; zero key-off shadow
0a79: c4 23     mov   $23,a
0a7b: c4 59     mov   $59,a
0a7d: c4 5b     mov   $5b,a
0a7f: c4 5f     mov   $5f,a
0a81: c4 61     mov   $61,a
0a83: 8f 01 46  mov   $46,#$01
0a86: 8f ff 47  mov   $47,#$ff
0a89: 8f ff 51  mov   $51,#$ff
0a8c: c4 66     mov   $66,a
0a8e: eb c4     mov   y,$c4             ; #$10 or #$20 for cmd $10 or $11
0a90: cd 10     mov   x,#$10
0a92: f6 03 1c  mov   a,$1c03+y
0a95: d4 01     mov   $01+x,a
0a97: dc        dec   y
0a98: 1d        dec   x
0a99: d0 f7     bne   $0a92             ; copy 1C04 or 1C14-x to 02-11
0a9b: e5 00 1c  mov   a,$1c00
0a9e: c4 00     mov   $00,a
0aa0: e5 01 1c  mov   a,$1c01
0aa3: c4 01     mov   $01,a             ; copy 1C00/1 to 00/01
0aa5: e8 24     mov   a,#$24
0aa7: 8d 1c     mov   y,#$1c
0aa9: 9a 00     subw  ya,$00
0aab: da 00     movw  $00,ya            ; $00 = #$1C24 - $00
0aad: cd 0e     mov   x,#$0e
0aaf: 8f 80 8f  mov   $8f,#$80
0ab2: e5 02 1c  mov   a,$1c02
0ab5: ec 03 1c  mov   y,$1c03
0ab8: da 98     movw  $98,ya            ; $98/9 = $1C02/3
0aba: f4 02     mov   a,$02+x
0abc: fb 03     mov   y,$03+x
0abe: 5a 98     cmpw  ya,$98
0ac0: f0 0c     beq   $0ace
0ac2: 09 8f 52  or    ($52),($8f)       ; set bit in $52 if voice active
0ac5: 7a 00     addw  ya,$00
0ac7: d4 02     mov   $02+x,a
0ac9: db 03     mov   $03+x,y           ; add $00 to $02+X
0acb: 3f ea 0a  call  $0aea             ; init per-voice data
0ace: 1d        dec   x
0acf: 1d        dec   x
0ad0: 4b 8f     lsr   $8f
0ad2: d0 e6     bne   $0aba             ; loop for each voice
0ad4: fa 53 87  mov   ($87),($53)       ; DSP shadow for echo enable
0ad7: fa 55 88  mov   ($88),($55)       ; DSP shadow for noise enable
0ada: fa 57 89  mov   ($89),($57)       ; DSP shadow for pitchmod
0add: e8 00     mov   a,#$00
0adf: fd        mov   y,a
0ae0: da db     movw  $db,ya            ; zero word $DB
0ae2: cd ff     mov   x,#$ff
0ae4: bd        mov   sp,x              ; reset stack ptr to $01FF
0ae5: e4 fd     mov   a,$fd             ; clear counter0
0ae7: 5f 51 02  jmp   $0251             ; jump back to main loop

0aea: 7d        mov   a,x
0aeb: 1c        asl   a
0aec: d4 26     mov   $26+x,a
0aee: e8 00     mov   a,#$00
0af0: d5 40 01  mov   $0140+x,a
0af3: d5 80 f7  mov   $f780+x,a
0af6: d5 81 f7  mov   $f781+x,a
0af9: d5 a0 f8  mov   $f8a0+x,a
0afc: d5 41 01  mov   $0141+x,a
0aff: d5 60 01  mov   $0160+x,a
0b02: d5 61 01  mov   $0161+x,a
0b05: d5 80 f8  mov   $f880+x,a
0b08: d5 81 f8  mov   $f881+x,a
0b0b: d5 60 f7  mov   $f760+x,a
0b0e: d5 21 f7  mov   $f721+x,a
0b11: bc        inc   a
0b12: d4 25     mov   $25+x,a
0b14: 6f        ret

; process CPU cmd $18
0b15: ba d9     movw  ya,$d9
0b17: f0 01     beq   $0b1a
0b19: 6f        ret

0b1a: fa 8c 90  mov   ($90),($8c)
0b1d: 8f 00 91  mov   $91,#$00
0b20: 0b 90     asl   $90
0b22: 2b 91     rol   $91
0b24: 0b 90     asl   $90
0b26: 2b 91     rol   $91
0b28: e8 00     mov   a,#$00
0b2a: 8d 2c     mov   y,#$2c
0b2c: 7a 90     addw  ya,$90
0b2e: da 90     movw  $90,ya
0b30: cd 1e     mov   x,#$1e
0b32: 8f 80 8f  mov   $8f,#$80
0b35: e4 83     mov   a,$83
0b37: d0 04     bne   $0b3d
0b39: e4 84     mov   a,$84
0b3b: 48 f0     eor   a,#$f0
0b3d: c4 a1     mov   $a1,a
0b3f: e4 a1     mov   a,$a1
0b41: 24 8f     and   a,$8f
0b43: d0 07     bne   $0b4c
0b45: 4b 8f     lsr   $8f
0b47: 1d        dec   x
0b48: 1d        dec   x
0b49: b3 8f f3  bbc5  $8f,$0b3f
0b4c: 8d 03     mov   y,#$03
0b4e: 8f 00 a1  mov   $a1,#$00
0b51: f7 90     mov   a,($90)+y
0b53: f0 35     beq   $0b8a
0b55: d4 03     mov   $03+x,a
0b57: dc        dec   y
0b58: f7 90     mov   a,($90)+y
0b5a: d4 02     mov   $02+x,a
0b5c: 09 8f a1  or    ($a1),($8f)
0b5f: 3f ea 0a  call  $0aea
0b62: bb 25     inc   $25+x
0b64: e8 a0     mov   a,#$a0
0b66: d5 21 f6  mov   $f621+x,a
0b69: e8 80     mov   a,#$80
0b6b: d5 61 f6  mov   $f661+x,a
0b6e: e8 02     mov   a,#$02
0b70: d5 00 f6  mov   $f600+x,a
0b73: e8 00     mov   a,#$00
0b75: d5 a0 f6  mov   $f6a0+x,a
0b78: d5 a1 f6  mov   $f6a1+x,a
0b7b: 6d        push  y
0b7c: 3f ef 17  call  $17ef
0b7f: e8 05     mov   a,#$05
0b81: 3f 89 15  call  $1589
0b84: ee        pop   y
0b85: 1d        dec   x
0b86: 1d        dec   x
0b87: 4b 8f     lsr   $8f
0b89: e8 dc     mov   a,#$dc
0b8b: dc        dec   y
0b8c: 10 c3     bpl   $0b51
0b8e: e4 83     mov   a,$83
0b90: 04 a1     or    a,$a1
0b92: 4e 22 00  tclr1 $0022
0b95: 4e 5a 00  tclr1 $005a
0b98: 4e 5c 00  tclr1 $005c
0b9b: 4e 60 00  tclr1 $0060
0b9e: 0e 24 00  tset1 $0024
0ba1: fa 83 a2  mov   ($a2),($83)
0ba4: cd 1e     mov   x,#$1e
0ba6: 8f 80 8f  mov   $8f,#$80
0ba9: 0b a2     asl   $a2
0bab: 90 03     bcc   $0bb0
0bad: 3f ef 17  call  $17ef
0bb0: 1d        dec   x
0bb1: 1d        dec   x
0bb2: 4b 8f     lsr   $8f
0bb4: 73 8f f2  bbc3  $8f,$0ba9
0bb7: e4 a1     mov   a,$a1
0bb9: c4 83     mov   $83,a
0bbb: 4e 87 00  tclr1 $0087
0bbe: 4e 89 00  tclr1 $0089
0bc1: 4e 88 00  tclr1 $0088
0bc4: e4 8d     mov   a,$8d
0bc6: c4 b2     mov   $b2,a
0bc8: 6f        ret

; process CPU cmds $20-2F
0bc9: ba d9     movw  ya,$d9
0bcb: d0 5e     bne   $0c2b
0bcd: 7d        mov   a,x
0bce: 28 0f     and   a,#$0f
0bd0: 1c        asl   a
0bd1: fd        mov   y,a
0bd2: cd 20     mov   x,#$20
0bd4: e4 83     mov   a,$83
0bd6: 04 84     or    a,$84
0bd8: 28 f0     and   a,#$f0
0bda: 8f 80 8f  mov   $8f,#$80
0bdd: 68 f0     cmp   a,#$f0
0bdf: f0 0c     beq   $0bed
0be1: 1d        dec   x
0be2: 1d        dec   x
0be3: 1c        asl   a
0be4: 90 14     bcc   $0bfa
0be6: 4b 8f     lsr   $8f
0be8: 73 8f f6  bbc3  $8f,$0be1
0beb: 2f 0d     bra   $0bfa
0bed: 1d        dec   x
0bee: 1d        dec   x
0bef: e4 84     mov   a,$84
0bf1: 24 8f     and   a,$8f
0bf3: d0 05     bne   $0bfa
0bf5: 4b 8f     lsr   $8f
0bf7: 73 8f f3  bbc3  $8f,$0bed
0bfa: f6 56 18  mov   a,$1856+y
0bfd: f0 2c     beq   $0c2b
0bff: d4 03     mov   $03+x,a
0c01: f6 55 18  mov   a,$1855+y
0c04: d4 02     mov   $02+x,a
0c06: 3f ea 0a  call  $0aea
0c09: bb 25     inc   $25+x
0c0b: 3f ef 17  call  $17ef
0c0e: e4 8f     mov   a,$8f
0c10: 4e 5a 00  tclr1 $005a
0c13: 4e 5c 00  tclr1 $005c
0c16: 4e 60 00  tclr1 $0060
0c19: 0e 24 00  tset1 $0024
0c1c: 4e 22 00  tclr1 $0022
0c1f: 4e 87 00  tclr1 $0087
0c22: 4e 89 00  tclr1 $0089
0c25: 4e 88 00  tclr1 $0088
0c28: 09 8f 84  or    ($84),($8f)
0c2b: 6f        ret

; process CPU cmds >= $80
0c2c: c8 f0     cmp   x,#$f0
0c2e: b0 04     bcs   $0c34
0c30: c8 90     cmp   x,#$90
0c32: b0 0d     bcs   $0c41             ; return if 90 <= X < F0
0c34: 7d        mov   a,x
0c35: 28 1f     and   a,#$1f
0c37: 1c        asl   a
0c38: fd        mov   y,a
0c39: f6 76 19  mov   a,$1976+y
0c3c: 2d        push  a
0c3d: f6 75 19  mov   a,$1975+y
0c40: 2d        push  a                 ; jmp to tbl at 1975,X
0c41: 6f        ret

; process CPU cmds 80-82
0c42: e4 8b     mov   a,$8b
0c44: 68 82     cmp   a,#$82
0c46: b0 06     bcs   $0c4e
0c48: eb 8d     mov   y,$8d
0c4a: d0 02     bne   $0c4e
0c4c: 80        setc
0c4d: 8d 60     mov   y,#$60            ; "skip" next instruction
0c4f: ca 85 60  mov1  $0c10,5,c
0c52: cd 00     mov   x,#$00
0c54: 13 8b 03  bbc0  $8b,$0c5a
0c57: bc        inc   a
0c58: 2f 0d     bra   $0c67
0c5a: 33 8b 05  bbc1  $8b,$0c62
0c5d: bc        inc   a
0c5e: cd 02     mov   x,#$02
0c60: 2f 05     bra   $0c67
0c62: ab 8b     inc   $8b
0c64: 60        clrc
0c65: 88 03     adc   a,#$03
0c67: c4 98     mov   $98,a
0c69: eb 8d     mov   y,$8d
0c6b: e4 8c     mov   a,$8c
0c6d: d4 ad     mov   $ad+x,a
0c6f: d0 0a     bne   $0c7b
0c71: db a6     mov   $a6+x,y
0c73: d4 a5     mov   $a5+x,a
0c75: d4 aa     mov   $aa+x,a
0c77: d4 a9     mov   $a9+x,a
0c79: 2f 13     bra   $0c8e
0c7b: dd        mov   a,y
0c7c: 80        setc
0c7d: b4 a6     sbc   a,$a6+x
0c7f: f0 ec     beq   $0c6d
0c81: 4d        push  x
0c82: 3f 9d 0c  call  $0c9d
0c85: ce        pop   x
0c86: d4 a9     mov   $a9+x,a
0c88: db aa     mov   $aa+x,y
0c8a: e8 00     mov   a,#$00
0c8c: d4 a5     mov   $a5+x,a
0c8e: ab 8b     inc   $8b
0c90: 69 98 8b  cmp   ($8b),($98)
0c93: f0 04     beq   $0c99
0c95: 3d        inc   x
0c96: 3d        inc   x
0c97: 2f d0     bra   $0c69
0c99: 8f ff db  mov   $db,#$ff
0c9c: 6f        ret

; divide (deltas)
0c9d: 0d        push  psw
0c9e: b0 03     bcs   $0ca3
0ca0: 48 ff     eor   a,#$ff
0ca2: bc        inc   a
0ca3: f8 8c     mov   x,$8c
0ca5: 8d 00     mov   y,#$00
0ca7: 9e        div   ya,x
0ca8: c4 c1     mov   $c1,a
0caa: e8 00     mov   a,#$00
0cac: 9e        div   ya,x
0cad: c4 c0     mov   $c0,a
0caf: 8e        pop   psw
0cb0: b0 08     bcs   $0cba
0cb2: 58 ff c0  eor   $c0,#$ff
0cb5: 58 ff c1  eor   $c1,#$ff
0cb8: 3a c0     incw  $c0
0cba: ba c0     movw  ya,$c0
0cbc: 6f        ret

; process CPU cmd $83
0cbd: eb 8d     mov   y,$8d
0cbf: e4 8c     mov   a,$8c
0cc1: c4 b5     mov   $b5,a
0cc3: d0 0a     bne   $0ccf
0cc5: cb b2     mov   $b2,y
0cc7: c4 b1     mov   $b1,a
0cc9: c4 b4     mov   $b4,a
0ccb: c4 b3     mov   $b3,a
0ccd: 2f 10     bra   $0cdf
0ccf: dd        mov   a,y
0cd0: 80        setc
0cd1: a4 b2     sbc   a,$b2
0cd3: f0 ec     beq   $0cc1
0cd5: 3f 9d 0c  call  $0c9d
0cd8: c4 b3     mov   $b3,a
0cda: cb b4     mov   $b4,y
0cdc: 8f 00 b1  mov   $b1,#$00
0cdf: 8f ff db  mov   $db,#$ff
0ce2: 6f        ret

; process CPU cmd $86
0ce3: eb 8d     mov   y,$8d
0ce5: e4 8c     mov   a,$8c
0ce7: c4 ba     mov   $ba,a
0ce9: d0 0a     bne   $0cf5
0ceb: cb b7     mov   $b7,y
0ced: c4 b6     mov   $b6,a
0cef: c4 b9     mov   $b9,a
0cf1: c4 b8     mov   $b8,a
0cf3: 2f 18     bra   $0d0d
0cf5: fa b7 a2  mov   ($a2),($b7)
0cf8: 58 80 a2  eor   $a2,#$80
0cfb: dd        mov   a,y
0cfc: 48 80     eor   a,#$80
0cfe: 80        setc
0cff: a4 a2     sbc   a,$a2
0d01: f0 e4     beq   $0ce7
0d03: 3f 9d 0c  call  $0c9d
0d06: c4 b8     mov   $b8,a
0d08: cb b9     mov   $b9,y
0d0a: 8f 00 b6  mov   $b6,#$00
0d0d: 6f        ret

; process CPU cmd $89
0d0e: eb 8d     mov   y,$8d
0d10: e4 8c     mov   a,$8c
0d12: c4 bf     mov   $bf,a
0d14: d0 0a     bne   $0d20
0d16: cb bc     mov   $bc,y
0d18: c4 bb     mov   $bb,a
0d1a: c4 be     mov   $be,a
0d1c: c4 bd     mov   $bd,a
0d1e: 2f 18     bra   $0d38
0d20: fa bc a2  mov   ($a2),($bc)
0d23: 58 80 a2  eor   $a2,#$80
0d26: dd        mov   a,y
0d27: 48 80     eor   a,#$80
0d29: 80        setc
0d2a: a4 a2     sbc   a,$a2
0d2c: f0 e4     beq   $0d12
0d2e: 3f 9d 0c  call  $0c9d
0d31: c4 bd     mov   $bd,a
0d33: cb be     mov   $be,y
0d35: 8f 00 bb  mov   $bb,#$00
0d38: 6f        ret

; process CPU cmd $F3-F4
0d39: 13 8b 04  bbc0  $8b,$0d40
0d3c: 12 85     clr0  $85
0d3e: 2f 02     bra   $0d42
0d40: 02 85     set0  $85
0d42: 8f ff db  mov   $db,#$ff
0d45: 6f        ret

; process CPU cmd $F0-F2
0d46: 23 8b 2d  bbs1  $8b,$0d76
0d49: e4 83     mov   a,$83
0d4b: 04 84     or    a,$84
0d4d: 48 ff     eor   a,#$ff
0d4f: 0e 24 00  tset1 $0024
0d52: 4e 22 00  tclr1 $0022
0d55: 4e 87 00  tclr1 $0087
0d58: 4e 89 00  tclr1 $0089
0d5b: 4e 88 00  tclr1 $0088
0d5e: e8 00     mov   a,#$00
0d60: c4 52     mov   $52,a
0d62: c4 d9     mov   $d9,a
0d64: c4 53     mov   $53,a
0d66: c4 57     mov   $57,a
0d68: c4 55     mov   $55,a
0d6a: c4 a0     mov   $a0,a
0d6c: 9c        dec   a
0d6d: c4 c6     mov   $c6,a
0d6f: c4 c7     mov   $c7,a
0d71: 72 85     clr3  $85
0d73: 03 8b 2c  bbs0  $8b,$0da2
0d76: e4 83     mov   a,$83
0d78: 0e 24 00  tset1 $0024
0d7b: 4e 22 00  tclr1 $0022
0d7e: 4e db 00  tclr1 $00db
0d81: 4e dc 00  tclr1 $00dc
0d84: c4 a1     mov   $a1,a
0d86: cd 1e     mov   x,#$1e
0d88: 8f 80 8f  mov   $8f,#$80
0d8b: 0b a1     asl   $a1
0d8d: 90 0c     bcc   $0d9b
0d8f: e8 54     mov   a,#$54
0d91: d4 02     mov   $02+x,a
0d93: e8 18     mov   a,#$18
0d95: d4 03     mov   $03+x,a
0d97: e8 02     mov   a,#$02
0d99: d4 25     mov   $25+x,a
0d9b: 1d        dec   x
0d9c: 1d        dec   x
0d9d: 4b 8f     lsr   $8f
0d9f: 73 8f e9  bbc3  $8f,$0d8b
0da2: 6f        ret

; process CPU cmd $F5
0da3: fa 8c a4  mov   ($a4),($8c)
0da6: 8f ff db  mov   $db,#$ff
0da9: 6f        ret

; process CPU cmd $FA - stop all voices.
0daa: e4 8c     mov   a,$8c
0dac: 60        clrc
0dad: e8 ff     mov   a,#$ff
0daf: 84 8c     adc   a,$8c
0db1: ca 85 20  mov1  $0410,5,c
0db4: 6f        ret

0db5: 03 8b 48  bbs0  $8b,$0e00
0db8: 8d 05     mov   y,#$05
0dba: cb f2     mov   $f2,y
0dbc: e4 f3     mov   a,$f3
0dbe: 28 7f     and   a,#$7f
0dc0: c4 f3     mov   $f3,a
0dc2: dd        mov   a,y
0dc3: 60        clrc
0dc4: 88 10     adc   a,#$10
0dc6: fd        mov   y,a
0dc7: 10 f1     bpl   $0dba             ; set GAIN mode on all voices
0dc9: cd 00     mov   x,#$00
0dcb: 8d 00     mov   y,#$00
0dcd: cb f2     mov   $f2,y
0dcf: d8 f3     mov   $f3,x
0dd1: fc        inc   y
0dd2: cb f2     mov   $f2,y
0dd4: d8 f3     mov   $f3,x
0dd6: dd        mov   a,y
0dd7: 60        clrc
0dd8: 88 0f     adc   a,#$0f
0dda: fd        mov   y,a
0ddb: 10 f0     bpl   $0dcd             ; set all voice volumes to 0
0ddd: fa 52 98  mov   ($98),($52)
0de0: fa 83 99  mov   ($99),($83)
0de3: ba 98     movw  ya,$98
0de5: f0 0a     beq   $0df1
0de7: da d9     movw  $d9,ya
0de9: e8 00     mov   a,#$00
0deb: c4 52     mov   $52,a             ; no active voices
0ded: c4 83     mov   $83,a
0def: c4 db     mov   $db,a
0df1: c4 22     mov   $22,a             ; zero key-on shadow
0df3: 8d 10     mov   y,#$10
0df5: d6 c8 00  mov   $00c8+y,a
0df8: fe fb     dbnz  y,$0df5
0dfa: cd ff     mov   x,#$ff
0dfc: bd        mov   sp,x              ; set stack ptr to $01FF
0dfd: 5f 51 02  jmp   $0251             ; restart main loop

0e00: 8d 05     mov   y,#$05
0e02: cb f2     mov   $f2,y
0e04: e4 f3     mov   a,$f3
0e06: 08 80     or    a,#$80
0e08: c4 f3     mov   $f3,a
0e0a: dd        mov   a,y
0e0b: 60        clrc
0e0c: 88 10     adc   a,#$10
0e0e: fd        mov   y,a
0e0f: 10 f1     bpl   $0e02             ; set ADSR mode on all voices
0e11: ba d9     movw  ya,$d9
0e13: f0 0c     beq   $0e21
0e15: 8f ff db  mov   $db,#$ff
0e18: c4 52     mov   $52,a
0e1a: cb 83     mov   $83,y
0e1c: e8 00     mov   a,#$00
0e1e: fd        mov   y,a
0e1f: da d9     movw  $d9,ya
0e21: 6f        ret

; process CPU cmd $FE
0e22: 7d        mov   a,x
0e23: bc        inc   a
0e24: 28 7f     and   a,#$7f
0e26: c4 98     mov   $98,a
0e28: e4 f4     mov   a,$f4
0e2a: f0 fc     beq   $0e28
0e2c: 64 f4     cmp   a,$f4
0e2e: d0 f8     bne   $0e28
0e30: 3e f4     cmp   x,$f4
0e32: d0 07     bne   $0e3b
0e34: d8 f4     mov   $f4,x
0e36: 3f 19 06  call  $0619
0e39: 2f ed     bra   $0e28
0e3b: 64 98     cmp   a,$98
0e3d: d0 f7     bne   $0e36
0e3f: 5d        mov   x,a
0e40: e4 f5     mov   a,$f5             ; get subcmd from $F5
0e42: 68 f0     cmp   a,#$f0
0e44: f0 2b     beq   $0e71
0e46: c4 f5     mov   $f5,a             ; write it back
0e48: 28 07     and   a,#$07
0e4a: 1c        asl   a                 ; convert to tbl idx
0e4b: 2d        push  a
0e4c: ba f6     movw  ya,$f6
0e4e: da 90     movw  $90,ya            ; move $F6/7 to $90/1
0e50: ae        pop   a
0e51: ad 1a     cmp   y,#$1a
0e53: 90 04     bcc   $0e59
0e55: ad f5     cmp   y,#$f5
0e57: 90 02     bcc   $0e5b
0e59: e8 00     mov   a,#$00            ; set subcmd idx to 0 unless 1A <= Y < F5
0e5b: d8 f4     mov   $f4,x             ; write back $F4
0e5d: fd        mov   y,a
0e5e: f6 65 12  mov   a,$1265+y
0e61: 2d        push  a
0e62: f6 64 12  mov   a,$1264+y
0e65: 2d        push  a                 ; put subcmd addr on stack
0e66: 3e f4     cmp   x,$f4
0e68: f0 fc     beq   $0e66
0e6a: f8 f4     mov   x,$f4
0e6c: 3e f4     cmp   x,$f4
0e6e: d0 e9     bne   $0e59
0e70: 6f        ret

0e71: d8 f4     mov   $f4,x             ; write back $F4
0e73: 5f 19 06  jmp   $0619             ; clear f4/f5 read regs

; FE-03
0e76: 8d 00     mov   y,#$00
0e78: e4 f5     mov   a,$f5
0e7a: d7 90     mov   ($90)+y,a
0e7c: d8 f4     mov   $f4,x
0e7e: fc        inc   y
0e7f: e4 f6     mov   a,$f6
0e81: d7 90     mov   ($90)+y,a
0e83: fc        inc   y
0e84: e4 f7     mov   a,$f7
0e86: d7 90     mov   ($90)+y,a
0e88: 60        clrc
0e89: 98 03 90  adc   $90,#$03
0e8c: 98 00 91  adc   $91,#$00
0e8f: 78 f5 91  cmp   $91,#$f5
0e92: f0 7f     beq   $0f13
0e94: 3e f4     cmp   x,$f4
0e96: f0 fc     beq   $0e94
0e98: f8 f4     mov   x,$f4
0e9a: 3e f4     cmp   x,$f4
0e9c: d0 fa     bne   $0e98
0e9e: e8 ff     mov   a,#$ff
0ea0: 8d f0     mov   y,#$f0
0ea2: 7e f4     cmp   y,$f4
0ea4: f0 09     beq   $0eaf
0ea6: 5a f4     cmpw  ya,$f4
0ea8: d0 cc     bne   $0e76
0eaa: cb 8c     mov   $8c,y
0eac: 5f a1 0f  jmp   $0fa1
0eaf: 5f 40 0e  jmp   $0e40

; FE-02
0eb2: 8d 00     mov   y,#$00
0eb4: e4 f6     mov   a,$f6
0eb6: d7 90     mov   ($90)+y,a
0eb8: d8 f4     mov   $f4,x
0eba: fc        inc   y
0ebb: e4 f7     mov   a,$f7
0ebd: d7 90     mov   ($90)+y,a
0ebf: 3a 90     incw  $90
0ec1: 3a 90     incw  $90
0ec3: 78 f5 91  cmp   $91,#$f5
0ec6: f0 4b     beq   $0f13
0ec8: 3e f4     cmp   x,$f4
0eca: f0 fc     beq   $0ec8
0ecc: f8 f4     mov   x,$f4
0ece: 3e f4     cmp   x,$f4
0ed0: d0 fa     bne   $0ecc
0ed2: e8 ff     mov   a,#$ff
0ed4: 8d f0     mov   y,#$f0
0ed6: 7e f4     cmp   y,$f4
0ed8: f0 09     beq   $0ee3
0eda: 5a f4     cmpw  ya,$f4
0edc: d0 d4     bne   $0eb2
0ede: cb 8c     mov   $8c,y
0ee0: 5f a1 0f  jmp   $0fa1
0ee3: 5f 40 0e  jmp   $0e40

; FE-01
0ee6: 8d 00     mov   y,#$00
0ee8: d8 f4     mov   $f4,x
0eea: e4 f7     mov   a,$f7
0eec: d7 90     mov   ($90)+y,a
0eee: 3a 90     incw  $90
0ef0: 78 f5 91  cmp   $91,#$f5
0ef3: f0 1e     beq   $0f13
0ef5: 3e f4     cmp   x,$f4
0ef7: f0 fc     beq   $0ef5
0ef9: f8 f4     mov   x,$f4
0efb: 3e f4     cmp   x,$f4
0efd: d0 fa     bne   $0ef9
0eff: e8 ff     mov   a,#$ff
0f01: 8d f0     mov   y,#$f0
0f03: 7e f4     cmp   y,$f4
0f05: f0 09     beq   $0f10
0f07: 5a f4     cmpw  ya,$f4
0f09: d0 db     bne   $0ee6
0f0b: cb 8c     mov   $8c,y
0f0d: 5f a1 0f  jmp   $0fa1
0f10: 5f 40 0e  jmp   $0e40

; FE-00/04/05/06
0f13: 3e f4     cmp   x,$f4
0f15: f0 fc     beq   $0f13
0f17: f8 f4     mov   x,$f4
0f19: 3e f4     cmp   x,$f4
0f1b: d0 fa     bne   $0f17
0f1d: e8 ff     mov   a,#$ff
0f1f: 8d f0     mov   y,#$f0
0f21: 7e f4     cmp   y,$f4
0f23: f0 09     beq   $0f2e
0f25: 5a f4     cmpw  ya,$f4
0f27: d0 ea     bne   $0f13
0f29: cb 8c     mov   $8c,y
0f2b: 5f a1 0f  jmp   $0fa1
0f2e: 5f 40 0e  jmp   $0e40

; FE-07
0f31: ba f6     movw  ya,$f6
0f33: da 92     movw  $92,ya
0f35: d8 f4     mov   $f4,x
0f37: 3f 64 0f  call  $0f64
0f3a: ba f6     movw  ya,$f6
0f3c: da 98     movw  $98,ya
0f3e: d8 f4     mov   $f4,x
0f40: 8d 00     mov   y,#$00
0f42: f7 90     mov   a,($90)+y
0f44: d7 92     mov   ($92)+y,a
0f46: fc        inc   y
0f47: d0 04     bne   $0f4d
0f49: ab 91     inc   $91
0f4b: ab 93     inc   $93
0f4d: 1a 98     decw  $98
0f4f: d0 f1     bne   $0f42
0f51: 3f 64 0f  call  $0f64
0f54: b0 0b     bcs   $0f61
0f56: ba f6     movw  ya,$f6
0f58: da 90     movw  $90,ya
0f5a: d8 f4     mov   $f4,x
0f5c: 3f 64 0f  call  $0f64
0f5f: 2f d0     bra   $0f31
0f61: 5f 40 0e  jmp   $0e40

0f64: e8 ff     mov   a,#$ff
0f66: 8d f0     mov   y,#$f0
0f68: 3e f4     cmp   x,$f4
0f6a: f0 fc     beq   $0f68
0f6c: f8 f4     mov   x,$f4
0f6e: 3e f4     cmp   x,$f4
0f70: d0 fa     bne   $0f6c
0f72: 7e f4     cmp   y,$f4
0f74: f0 09     beq   $0f7f
0f76: 5a f4     cmpw  ya,$f4
0f78: d0 07     bne   $0f81
0f7a: cb 8c     mov   $8c,y
0f7c: 5f a1 0f  jmp   $0fa1

0f7f: 80        setc
0f80: 8d 60     mov   y,#$60
0f82: 6f        ret

; process CPU cmd $F8/F9
0f83: aa 8b 00  mov1  c,$0011,3
0f86: ca 86 a0  mov1  $1410,6,c
0f89: b0 04     bcs   $0f8f
0f8b: e8 24     mov   a,#$24
0f8d: 2f 02     bra   $0f91
0f8f: e8 01     mov   a,#$01
0f91: 8f 06 f1  mov   $f1,#$06
0f94: c4 fa     mov   $fa,a
0f96: 8f 07 f1  mov   $f1,#$07
0f99: 6f        ret

; process CPU cmd $FB
0f9a: fa 52 dd  mov   ($dd),($52)
0f9d: fa 52 f6  mov   ($f6),($52)
0fa0: 6f        ret

; process CPU cmd $FF - reset
0fa1: e4 8c     mov   a,$8c
0fa3: 68 01     cmp   a,#$01
0fa5: d0 0a     bne   $0fb1
0fa7: e4 8d     mov   a,$8d
0fa9: 60        clrc
0faa: 88 ff     adc   a,#$ff
0fac: ca 86 e0  mov1  $1c10,6,c
0faf: 2f 1f     bra   $0fd0
0fb1: 68 02     cmp   a,#$02
0fb3: d0 0a     bne   $0fbf
0fb5: e4 8d     mov   a,$8d
0fb7: 60        clrc
0fb8: 88 ff     adc   a,#$ff
0fba: ca 86 c0  mov1  $1810,6,c
0fbd: 2f 11     bra   $0fd0
0fbf: 68 f0     cmp   a,#$f0
0fc1: d0 0d     bne   $0fd0
0fc3: e8 e0     mov   a,#$e0
0fc5: 8d 6c     mov   y,#$6c
0fc7: 3f 14 06  call  $0614             ; do soft reset
0fca: 8f 80 f1  mov   $f1,#$80
0fcd: 5f c0 ff  jmp   $ffc0             ; jump back to master "OS" recv

0fd0: 6f        ret

0fd1: 6f        ret

; (Y=balance, A=F881+X or $B2 ^ #$80)
0fd2: c4 c0     mov   $c0,a
0fd4: dd        mov   a,y
0fd5: 60        clrc
0fd6: 84 c0     adc   a,$c0
0fd8: e3 c0 06  bbs7  $c0,$0fe1         ; branch FE1 if C0 negative
0fdb: 90 08     bcc   $0fe5
0fdd: e8 ff     mov   a,#$ff
0fdf: 2f 04     bra   $0fe5
0fe1: b0 02     bcs   $0fe5
0fe3: e8 00     mov   a,#$00
0fe5: 6f        ret

; process CPU cmd $FD
; write $8D ($F6) to DSP register $8C ($F5)
0fe6: eb 8c     mov   y,$8c
0fe8: e4 8d     mov   a,$8d
0fea: 5f 14 06  jmp   $0614

; delay for (X) timer1 periods
0fed: 8f 05 f1  mov   $f1,#$05          ; stop timer1
0ff0: e4 fe     mov   a,$fe             ; clear counter1
0ff2: 8f 07 f1  mov   $f1,#$07          ; start timer1
0ff5: e8 00     mov   a,#$00
0ff7: eb fe     mov   y,$fe
0ff9: f0 fc     beq   $0ff7             ; wait for timer1 to increment
0ffb: bc        inc   a
0ffc: 66        cmp   a,(x)
0ffd: d0 f8     bne   $0ff7             ; loop (X) times
0fff: 6f        ret

; process CPU cmd $FC
; set echo delay/start from $8C low nybble, enable echo, $52->$4D if nonzero
1000: 38 0f 8c  and   $8c,#$0f
1003: fa 8c 80  mov   ($80),($8c)
1006: 3f 13 10  call  $1013             ; set echo delay time/start from $8C
1009: 3f 72 10  call  $1072             ; enable echo
100c: e4 52     mov   a,$52
100e: d0 02     bne   $1012
1010: c4 4d     mov   $4d,a             ; move $52 to $4D if nonzero
1012: 6f        ret

; set echo delay time/start addr from $80, delay till old echo done
1013: e8 ff     mov   a,#$ff
1015: 8d 5c     mov   y,#$5c
1017: 3f 14 06  call  $0614             ; key off all vocals
101a: bc        inc   a
101b: 8d 4d     mov   y,#$4d
101d: 3f 14 06  call  $0614             ; clear echo enable bits
1020: 8d 0d     mov   y,#$0d
1022: 3f 14 06  call  $0614             ; zero echo feedback
1025: 8d 2c     mov   y,#$2c
1027: 3f 14 06  call  $0614             ; zero echo vol left
102a: 8d 3c     mov   y,#$3c
102c: 3f 14 06  call  $0614             ; zero echo vol right
102f: 8f 6c f2  mov   $f2,#$6c
1032: e4 f3     mov   a,$f3
1034: 08 20     or    a,#$20
1036: c4 f3     mov   $f3,a             ; DSP FLG bit ECEN on (disable echo?)
1038: 8d 7d     mov   y,#$7d
103a: cb f2     mov   $f2,y
103c: e4 f3     mov   a,$f3
103e: 28 0f     and   a,#$0f
1040: c4 81     mov   $81,a             ; move DSP echo delay to $81
1042: e4 80     mov   a,$80
1044: 3f 14 06  call  $0614             ; set DSP echo delay from $80
1047: 1c        asl   a
1048: 1c        asl   a
1049: 1c        asl   a
104a: 48 ff     eor   a,#$ff
104c: bc        inc   a
104d: 60        clrc
104e: 88 f5     adc   a,#$f5
1050: c4 91     mov   $91,a             ; move DSP echo start addr to $91
1052: 8d 6d     mov   y,#$6d
1054: 3f 14 06  call  $0614             ; set echo start addr to #$F5 - ($80 * 8)
1057: cd 81     mov   x,#$81
1059: 3f ed 0f  call  $0fed             ; delay ($81) timer1 periods
105c: e4 80     mov   a,$80
105e: f0 11     beq   $1071
1060: e8 00     mov   a,#$00
1062: c4 90     mov   $90,a
1064: fd        mov   y,a
1065: d7 90     mov   ($90)+y,a
1067: fc        inc   y
1068: d0 fb     bne   $1065
106a: ab 91     inc   $91
106c: 78 f5 91  cmp   $91,#$f5
106f: d0 f4     bne   $1065
1071: 6f        ret

; enable echo after delaying $80 echo periods if nonzero
1072: e4 80     mov   a,$80
1074: f0 05     beq   $107b
1076: cd 80     mov   x,#$80
1078: 3f ed 0f  call  $0fed             ; delay $80 timer1 periods
107b: 8f 6c f2  mov   $f2,#$6c
107e: e4 f3     mov   a,$f3
1080: 28 df     and   a,#$df
1082: c4 f3     mov   $f3,a             ; enable echo
1084: 6f        ret

1085: e8 ff     mov   a,#$ff
1087: 60        clrc
1088: 84 8c     adc   a,$8c
108a: b0 2f     bcs   $10bb
108c: b3 85 53  bbc5  $85,$10e2
108f: b2 85     clr5  $85
1091: e8 f8     mov   a,#$f8
1093: c4 e2     mov   $e2,a
1095: e4 50     mov   a,$50
1097: d0 19     bne   $10b2
1099: e4 4d     mov   a,$4d
109b: 5c        lsr   a
109c: 8d 00     mov   y,#$00
109e: cd 08     mov   x,#$08
10a0: 9e        div   ya,x
10a1: 48 ff     eor   a,#$ff
10a3: c4 4f     mov   $4f,a
10a5: e8 00     mov   a,#$00
10a7: 9e        div   ya,x
10a8: 48 ff     eor   a,#$ff
10aa: c4 4e     mov   $4e,a
10ac: 3a 4e     incw  $4e
10ae: d8 50     mov   $50,x
10b0: 2f 30     bra   $10e2
10b2: 4b 4d     lsr   $4d
10b4: 6b 4c     ror   $4c
10b6: 4b 4f     lsr   $4f
10b8: 6b 4e     ror   $4e
10ba: 6f        ret

10bb: a3 85 24  bbs5  $85,$10e2
10be: a2 85     set5  $85
10c0: e8 08     mov   a,#$08
10c2: c4 e2     mov   $e2,a
10c4: e4 50     mov   a,$50
10c6: d0 12     bne   $10da
10c8: e4 4d     mov   a,$4d
10ca: 8d 00     mov   y,#$00
10cc: cd 08     mov   x,#$08
10ce: 9e        div   ya,x
10cf: c4 4f     mov   $4f,a
10d1: e8 00     mov   a,#$00
10d3: 9e        div   ya,x
10d4: c4 4e     mov   $4e,a
10d6: d8 50     mov   $50,x
10d8: 2f 08     bra   $10e2
10da: 0b 4c     asl   $4c
10dc: 2b 4d     rol   $4d
10de: 0b 4e     asl   $4e
10e0: 2b 4f     rol   $4f
10e2: 6f        ret

10e3: 82 85     set4  $85
10e5: fa 64 98  mov   ($98),($64)
10e8: fa 8d 64  mov   ($64),($8d)
10eb: fa 65 99  mov   ($99),($65)
10ee: fa 8e 65  mov   ($65),($8e)
10f1: 3f 3f 13  call  $133f
10f4: fa 98 64  mov   ($64),($98)
10f7: fa 99 65  mov   ($65),($99)
10fa: e4 8c     mov   a,$8c
10fc: 5c        lsr   a
10fd: 8d 2c     mov   y,#$2c
10ff: 3f 14 06  call  $0614
1102: 8d 3c     mov   y,#$3c
1104: 5f 14 06  jmp   $0614

1107: 6f        ret

1108: 92 85     clr4  $85
110a: 3f 3f 13  call  $133f
110d: e4 8c     mov   a,$8c
110f: 8d 2c     mov   y,#$2c
1111: 3f 14 06  call  $0614
1114: 8d 3c     mov   y,#$3c
1116: 5f 14 06  jmp   $0614

1119: 6f        ret

111a: fa c7 c6  mov   ($c6),($c7)
111d: e8 00     mov   a,#$00
111f: c4 90     mov   $90,a
1121: e8 f6     mov   a,#$f6
1123: c4 91     mov   $91,a
1125: e8 00     mov   a,#$00
1127: c4 92     mov   $92,a
1129: e8 fa     mov   a,#$fa
112b: c4 93     mov   $93,a
112d: 8d 00     mov   y,#$00
112f: f7 90     mov   a,($90)+y
1131: d7 92     mov   ($92)+y,a
1133: fc        inc   y
1134: d0 f9     bne   $112f
1136: ab 91     inc   $91
1138: ab 93     inc   $93
113a: 78 fa 91  cmp   $91,#$fa
113d: d0 f0     bne   $112f
113f: 1a 92     decw  $92
1141: 8d 80     mov   y,#$80
1143: f6 ff ff  mov   a,$ffff+y
1146: d7 92     mov   ($92)+y,a
1148: fe f9     dbnz  y,$1143
114a: ab 93     inc   $93
114c: 8d 90     mov   y,#$90
114e: f6 ff 00  mov   a,$00ff+y
1151: d7 92     mov   ($92)+y,a
1153: fe f9     dbnz  y,$114e
1155: 6f        ret

; restore some state?
1156: 8f ff c6  mov   $c6,#$ff
1159: e8 00     mov   a,#$00
115b: c4 90     mov   $90,a
115d: e8 f6     mov   a,#$f6
115f: c4 91     mov   $91,a
1161: e8 00     mov   a,#$00
1163: c4 92     mov   $92,a
1165: e8 fa     mov   a,#$fa
1167: c4 93     mov   $93,a
1169: 8d 00     mov   y,#$00
116b: f7 92     mov   a,($92)+y
116d: d7 90     mov   ($90)+y,a
116f: fc        inc   y
1170: d0 f9     bne   $116b
1172: ab 91     inc   $91
1174: ab 93     inc   $93
1176: 78 fa 91  cmp   $91,#$fa
1179: d0 f0     bne   $116b
117b: 1a 92     decw  $92
117d: 8d 80     mov   y,#$80
117f: f7 92     mov   a,($92)+y
1181: d6 ff ff  mov   $ffff+y,a
1184: fe f9     dbnz  y,$117f
1186: ab 93     inc   $93
1188: 8d 90     mov   y,#$90
118a: f7 92     mov   a,($92)+y
118c: d6 ff 00  mov   $00ff+y,a
118f: fe f9     dbnz  y,$118a
1191: 6f        ret

; read wave heights, put in APU regs
1192: e8 98     mov   a,#$98
1194: c4 9d     mov   $9d,a
1196: e8 c9     mov   a,#$c9
1198: 8f 00 a1  mov   $a1,#$00
119b: 83 86 05  bbs4  $86,$11a3
119e: 8f 09 8f  mov   $8f,#$09
11a1: 2f 08     bra   $11ab
11a3: 8f 49 8f  mov   $8f,#$49
11a6: 60        clrc
11a7: 88 08     adc   a,#$08
11a9: e2 a1     set7  $a1
11ab: c4 9e     mov   $9e,a
11ad: 60        clrc
11ae: 88 08     adc   a,#$08
11b0: c4 a0     mov   $a0,a
11b2: f8 9e     mov   x,$9e
11b4: eb 8f     mov   y,$8f
11b6: cb f2     mov   $f2,y
11b8: eb f3     mov   y,$f3             ; read wave height for voice 8F
11ba: 6d        push  y
11bb: bf        mov   a,(x)+
11bc: cf        mul   ya
11bd: dd        mov   a,y
11be: 28 70     and   a,#$70
11c0: c4 9c     mov   $9c,a
11c2: ee        pop   y
11c3: bf        mov   a,(x)+
11c4: cf        mul   ya
11c5: dd        mov   a,y
11c6: d8 9e     mov   $9e,x
11c8: f8 9d     mov   x,$9d
11ca: 9f        xcn   a
11cb: 28 07     and   a,#$07
11cd: 04 9c     or    a,$9c
11cf: 04 a1     or    a,$a1
11d1: af        mov   (x)+,a
11d2: d8 9d     mov   $9d,x
11d4: 60        clrc
11d5: 98 10 8f  adc   $8f,#$10
11d8: 69 a0 9e  cmp   ($9e),($a0)
11db: d0 d5     bne   $11b2
11dd: ba 98     movw  ya,$98
11df: da f4     movw  $f4,ya
11e1: ba 9a     movw  ya,$9a
11e3: da f6     movw  $f6,ya
11e5: ea 86 80  not1  $1010,6
11e8: 6f        ret

11e9: e4 ad     mov   a,$ad
11eb: f0 0f     beq   $11fc
11ed: 8b ad     dec   $ad
11ef: ba a9     movw  ya,$a9
11f1: 7a a5     addw  ya,$a5
11f3: 7e a6     cmp   y,$a6
11f5: da a5     movw  $a5,ya
11f7: f0 03     beq   $11fc
11f9: 09 52 db  or    ($db),($52)
11fc: e4 af     mov   a,$af
11fe: f0 1d     beq   $121d
1200: ba ab     movw  ya,$ab
1202: 7a a7     addw  ya,$a7
1204: 7e a8     cmp   y,$a8
1206: da a7     movw  $a7,ya
1208: f0 03     beq   $120d
120a: 09 83 db  or    ($db),($83)
120d: 8b af     dec   $af
120f: d0 0c     bne   $121d
1211: dd        mov   a,y
1212: d0 09     bne   $121d
1214: 8f ff a8  mov   $a8,#$ff
1217: 8f f2 8b  mov   $8b,#$f2
121a: 3f 46 0d  call  $0d46
121d: e4 b5     mov   a,$b5
121f: f0 0f     beq   $1230
1221: 8b b5     dec   $b5
1223: ba b3     movw  ya,$b3
1225: 7a b1     addw  ya,$b1
1227: 7e b2     cmp   y,$b2
1229: da b1     movw  $b1,ya
122b: f0 03     beq   $1230
122d: 09 83 db  or    ($db),($83)
1230: e4 ba     mov   a,$ba
1232: f0 08     beq   $123c
1234: 8b ba     dec   $ba
1236: ba b8     movw  ya,$b8
1238: 7a b6     addw  ya,$b6
123a: da b6     movw  $b6,ya
123c: e4 bf     mov   a,$bf
123e: f0 0f     beq   $124f
1240: 8b bf     dec   $bf
1242: ba bd     movw  ya,$bd
1244: 7a bb     addw  ya,$bb
1246: 7e bc     cmp   y,$bc
1248: da bb     movw  $bb,ya
124a: f0 17     beq   $1263
124c: 09 52 dc  or    ($dc),($52)
124f: e4 e2     mov   a,$e2
1251: f0 10     beq   $1263
1253: 60        clrc
1254: 84 e1     adc   a,$e1
1256: c4 e1     mov   $e1,a
1258: 68 3f     cmp   a,#$3f
125a: f0 04     beq   $1260
125c: 68 7f     cmp   a,#$7f
125e: d0 03     bne   $1263
1260: 8f 00 e2  mov   $e2,#$00
1263: 6f        ret

; table used by command fe
1264: dw $0f13  ; 00
1266: dw $0ee6  ; 01
1268: dw $0eb2  ; 02
126a: dw $0e76  ; 03
126c: dw $0f13  ; 04
126e: dw $0f13  ; 05
1270: dw $0f13  ; 06
1272: dw $0f31  ; 07

; vcmd f0 - set tempo
1274: c4 46     mov   $46,a
1276: e8 00     mov   a,#$00
1278: c4 45     mov   $45,a
127a: c4 49     mov   $49,a
127c: 6f        ret

; vcmd f1 - tempo "fade"
127d: c4 49     mov   $49,a
127f: c4 8c     mov   $8c,a
1281: 3f 90 05  call  $0590
1284: eb 8c     mov   y,$8c
1286: f0 ec     beq   $1274
1288: 80        setc
1289: a4 46     sbc   a,$46
128b: f0 ed     beq   $127a
128d: 3f 9d 0c  call  $0c9d
1290: f8 a3     mov   x,$a3
1292: da 4a     movw  $4a,ya
1294: 6f        ret

; vcmd f5 - set master volume
1295: c4 51     mov   $51,a
1297: 6f        ret

; vcmd c4 - set voice volume
1298: d5 21 f6  mov   $f621+x,a
129b: e8 00     mov   a,#$00
129d: d5 20 f6  mov   $f620+x,a
12a0: 09 8f db  or    ($db),($8f)
12a3: d5 a0 f6  mov   $f6a0+x,a
12a6: 6f        ret

; vcmd c5 - volume fade (steps, dest value)
12a7: d5 a0 f6  mov   $f6a0+x,a
12aa: c4 8c     mov   $8c,a
12ac: 3f 90 05  call  $0590
12af: eb 8c     mov   y,$8c
12b1: f0 e5     beq   $1298
12b3: 80        setc
12b4: b5 21 f6  sbc   a,$f621+x
12b7: f0 ea     beq   $12a3
12b9: 3f 9d 0c  call  $0c9d
12bc: f8 a3     mov   x,$a3
12be: d5 40 f6  mov   $f640+x,a
12c1: dd        mov   a,y
12c2: d5 41 f6  mov   $f641+x,a
12c5: 6f        ret

; vcmd f2 - set echo volume
12c6: 5c        lsr   a
12c7: a3 85 01  bbs5  $85,$12cb
12ca: 5c        lsr   a
12cb: c4 4d     mov   $4d,a             ; echo volume shadow
12cd: e8 00     mov   a,#$00
12cf: c4 4c     mov   $4c,a
12d1: c4 50     mov   $50,a
12d3: 6f        ret

; vcmd f3 - fade echo volume
12d4: c4 50     mov   $50,a
12d6: c4 8c     mov   $8c,a
12d8: 3f 90 05  call  $0590
12db: eb 8c     mov   y,$8c
12dd: f0 e7     beq   $12c6
12df: 5c        lsr   a
12e0: a3 85 01  bbs5  $85,$12e4
12e3: 5c        lsr   a
12e4: 80        setc
12e5: a4 4d     sbc   a,$4d
12e7: f0 e8     beq   $12d1
12e9: 3f 9d 0c  call  $0c9d
12ec: f8 a3     mov   x,$a3
12ee: da 4e     movw  $4e,ya
12f0: 6f        ret

; vcmd c6 - set balance
12f1: d5 61 f6  mov   $f661+x,a
12f4: e8 00     mov   a,#$00
12f6: d5 60 f6  mov   $f660+x,a
12f9: 09 8f db  or    ($db),($8f)
12fc: d5 a1 f6  mov   $f6a1+x,a
12ff: 6f        ret

; vcmd c7 - balance fade (pan)
1300: d5 a1 f6  mov   $f6a1+x,a
1303: c4 8c     mov   $8c,a
1305: 3f 90 05  call  $0590
1308: eb 8c     mov   y,$8c
130a: f0 e5     beq   $12f1
130c: 80        setc
130d: b5 61 f6  sbc   a,$f661+x
1310: f0 ea     beq   $12fc
1312: 3f 9d 0c  call  $0c9d
1315: f8 a3     mov   x,$a3
1317: d5 80 f6  mov   $f680+x,a
131a: dd        mov   a,y
131b: d5 81 f6  mov   $f681+x,a
131e: 6f        ret

; vcmd c8 - portamento
131f: bc        inc   a
1320: d5 20 f7  mov   $f720+x,a
1323: 3f 90 05  call  $0590
1326: d5 40 01  mov   $0140+x,a
1329: 6f        ret

; vcmd da - change (relative) transpose
132a: 60        clrc
132b: 95 21 f7  adc   a,$f721+x
; vcmd d9 - set transpose
132e: d5 21 f7  mov   $f721+x,a
1331: 6f        ret

; vcmd f4 - echo feedback, FIR filter
1332: c4 65     mov   $65,a
1334: 3f 90 05  call  $0590
1337: c4 64     mov   $64,a
1339: aa 85 80  mov1  c,$1010,5
133c: 90 01     bcc   $133f
133e: 6f        ret

133f: e4 64     mov   a,$64
1341: 28 03     and   a,#$03
1343: 1c        asl   a
1344: 1c        asl   a
1345: 1c        asl   a
1346: fd        mov   y,a
1347: cd 0f     mov   x,#$0f
1349: f6 26 18  mov   a,$1826+y
134c: d8 f2     mov   $f2,x
134e: c4 f3     mov   $f3,a
1350: fc        inc   y
1351: 7d        mov   a,x
1352: 60        clrc
1353: 88 10     adc   a,#$10
1355: 5d        mov   x,a
1356: 10 f1     bpl   $1349
1358: f8 a3     mov   x,$a3
135a: 8d 0d     mov   y,#$0d
135c: e4 65     mov   a,$65
135e: 5f 14 06  jmp   $0614

; vcmd c9 - vibrato
1361: d5 00 01  mov   $0100+x,a
1364: 3f 90 05  call  $0590
1367: d5 c0 f6  mov   $f6c0+x,a
136a: c4 98     mov   $98,a
136c: 3f 90 05  call  $0590
136f: d5 41 01  mov   $0141+x,a
1372: 3f c3 13  call  $13c3
1375: f8 a3     mov   x,$a3
1377: ba 98     movw  ya,$98
1379: d5 c0 f7  mov   $f7c0+x,a
137c: dd        mov   a,y
137d: d5 c1 f7  mov   $f7c1+x,a
1380: e8 00     mov   a,#$00
1382: d5 c0 f8  mov   $f8c0+x,a
1385: d5 c1 f8  mov   $f8c1+x,a
1388: d5 40 f8  mov   $f840+x,a
138b: d5 41 f8  mov   $f841+x,a
138e: f5 c0 f6  mov   a,$f6c0+x
1391: d5 c1 f6  mov   $f6c1+x,a
1394: f5 c1 f7  mov   a,$f7c1+x
1397: fd        mov   y,a
1398: f5 c0 f7  mov   a,$f7c0+x
139b: da 98     movw  $98,ya
139d: f5 80 01  mov   a,$0180+x
13a0: 28 70     and   a,#$70
13a2: fd        mov   y,a
13a3: f5 00 01  mov   a,$0100+x
13a6: d5 01 01  mov   $0101+x,a
13a9: 0d        push  psw
13aa: 3f ed 13  call  $13ed
13ad: 8e        pop   psw
13ae: f0 04     beq   $13b4
13b0: dd        mov   a,y
13b1: 08 07     or    a,#$07
13b3: 8d dd     mov   y,#$dd
13b5: d5 80 01  mov   $0180+x,a
13b8: e4 98     mov   a,$98
13ba: d5 e0 f7  mov   $f7e0+x,a
13bd: e4 99     mov   a,$99
13bf: d5 e1 f7  mov   $f7e1+x,a
13c2: 6f        ret

13c3: 28 3f     and   a,#$3f
13c5: bc        inc   a
13c6: 8d 00     mov   y,#$00
13c8: cb 99     mov   $99,y
13ca: f8 98     mov   x,$98
13cc: f0 06     beq   $13d4
13ce: 9e        div   ya,x
13cf: c4 99     mov   $99,a
13d1: e8 00     mov   a,#$00
13d3: 9e        div   ya,x
13d4: c4 98     mov   $98,a
13d6: 4b 99     lsr   $99
13d8: 6b 98     ror   $98
13da: 4b 99     lsr   $99
13dc: 6b 98     ror   $98
13de: ba 98     movw  ya,$98
13e0: d0 02     bne   $13e4
13e2: ab 98     inc   $98
13e4: 0b 98     asl   $98
13e6: 2b 99     rol   $99
13e8: 0b 98     asl   $98
13ea: 2b 99     rol   $99
13ec: 6f        ret

13ed: f0 08     beq   $13f7
13ef: 4b 99     lsr   $99
13f1: 6b 98     ror   $98
13f3: 4b 99     lsr   $99
13f5: 6b 98     ror   $98
13f7: 78 80 a2  cmp   $a2,#$80
13fa: 90 0d     bcc   $1409
13fc: 78 c0 a2  cmp   $a2,#$c0
13ff: b0 08     bcs   $1409
1401: 58 ff 98  eor   $98,#$ff
1404: 58 ff 99  eor   $99,#$ff
1407: 3a 98     incw  $98
1409: 6f        ret

; vcmd ca - vibrato off
140a: d5 41 01  mov   $0141+x,a
140d: d5 c0 f8  mov   $f8c0+x,a
1410: d5 c1 f8  mov   $f8c1+x,a
1413: 6f        ret

; vcmd cb - tremolo
1414: d5 20 01  mov   $0120+x,a
1417: 3f 90 05  call  $0590
141a: d5 e0 f6  mov   $f6e0+x,a
141d: c4 98     mov   $98,a
141f: 3f 90 05  call  $0590
1422: d5 60 01  mov   $0160+x,a
1425: 3f c3 13  call  $13c3
1428: f8 a3     mov   x,$a3
142a: e4 98     mov   a,$98
142c: d5 00 f8  mov   $f800+x,a
142f: e4 99     mov   a,$99
1431: d5 01 f8  mov   $f801+x,a
1434: e8 00     mov   a,#$00
1436: d5 60 f8  mov   $f860+x,a
1439: d5 61 f8  mov   $f861+x,a
143c: f5 e0 f6  mov   a,$f6e0+x
143f: d5 e1 f6  mov   $f6e1+x,a
1442: f5 01 f8  mov   a,$f801+x
1445: fd        mov   y,a
1446: f5 00 f8  mov   a,$f800+x
1449: da 98     movw  $98,ya
144b: f5 80 01  mov   a,$0180+x
144e: 28 07     and   a,#$07
1450: fd        mov   y,a
1451: f5 20 01  mov   a,$0120+x
1454: d5 21 01  mov   $0121+x,a
1457: 0d        push  psw
1458: 3f ed 13  call  $13ed
145b: 8e        pop   psw
145c: f0 04     beq   $1462
145e: dd        mov   a,y
145f: 08 70     or    a,#$70
1461: 8d dd     mov   y,#$dd
1463: d5 80 01  mov   $0180+x,a
1466: e4 98     mov   a,$98
1468: d5 20 f8  mov   $f820+x,a
146b: e4 99     mov   a,$99
146d: d5 21 f8  mov   $f821+x,a
1470: 6f        ret

; vcmd cc - tremolo off
1471: d5 60 01  mov   $0160+x,a
1474: d5 60 f8  mov   $f860+x,a
1477: d5 61 f8  mov   $f861+x,a
147a: 6f        ret

; vcmd cd - pan sweep
147b: 60        clrc
147c: bc        inc   a
147d: f0 08     beq   $1487
147f: 28 fe     and   a,#$fe
1481: d0 05     bne   $1488
1483: e8 02     mov   a,#$02
1485: 2f 01     bra   $1488
1487: 80        setc
1488: d5 00 f7  mov   $f700+x,a
148b: 7c        ror   a
148c: d5 01 f7  mov   $f701+x,a
148f: fd        mov   y,a
1490: 3f 90 05  call  $0590
1493: 1c        asl   a
1494: e4 a2     mov   a,$a2
1496: 28 7f     and   a,#$7f
1498: 90 02     bcc   $149c
149a: 48 7f     eor   a,#$7f
149c: c4 98     mov   $98,a
149e: dd        mov   a,y
149f: 10 05     bpl   $14a6
14a1: 8f 00 99  mov   $99,#$00
14a4: 2f 13     bra   $14b9
14a6: 5d        mov   x,a
14a7: 8d 00     mov   y,#$00
14a9: e4 98     mov   a,$98
14ab: 9e        div   ya,x
14ac: c4 99     mov   $99,a
14ae: e8 00     mov   a,#$00
14b0: 9e        div   ya,x
14b1: c4 98     mov   $98,a
14b3: ba 98     movw  ya,$98
14b5: d0 02     bne   $14b9
14b7: ab 98     inc   $98
14b9: 90 08     bcc   $14c3
14bb: 58 ff 98  eor   $98,#$ff
14be: 58 ff 99  eor   $99,#$ff
14c1: 3a 98     incw  $98
14c3: f8 a3     mov   x,$a3
14c5: e4 98     mov   a,$98
14c7: d5 a0 f7  mov   $f7a0+x,a
14ca: e4 99     mov   a,$99
14cc: d5 a1 f7  mov   $f7a1+x,a
14cf: e4 a2     mov   a,$a2
; vcmd ce - pan sweep off
14d1: d5 61 01  mov   $0161+x,a
14d4: e8 00     mov   a,#$00
14d6: d5 80 f8  mov   $f880+x,a
14d9: d5 81 f8  mov   $f881+x,a
14dc: 6f        ret

; vcmd d7 - inc octave
14dd: f5 00 f6  mov   a,$f600+x
14e0: bc        inc   a
14e1: 2f 04     bra   $14e7
; vcmd d8 - dec octave
14e3: f5 00 f6  mov   a,$f600+x
14e6: 9c        dec   a
; vcmd d6 - set octave
14e7: d5 00 f6  mov   $f600+x,a
14ea: 6f        ret

; vcmd d4 - enable echo
14eb: c8 10     cmp   x,#$10
14ed: b0 05     bcs   $14f4
14ef: 09 8f 53  or    ($53),($8f)
14f2: 2f 03     bra   $14f7
14f4: 09 8f 54  or    ($54),($8f)
14f7: e4 83     mov   a,$83
14f9: 04 84     or    a,$84
14fb: 48 ff     eor   a,#$ff
14fd: 24 53     and   a,$53
14ff: 04 54     or    a,$54
1501: c4 87     mov   $87,a             ; dsp shadow for echo table
1503: 6f        ret

; vcmd d5 - disable echo
1504: e4 8f     mov   a,$8f
1506: c8 10     cmp   x,#$10
1508: b0 05     bcs   $150f
150a: 4e 53 00  tclr1 $0053
150d: 2f e8     bra   $14f7
150f: 4e 54 00  tclr1 $0054
1512: 2f e3     bra   $14f7
; vcmd d0 - enable noise
1514: c8 10     cmp   x,#$10
1516: b0 05     bcs   $151d
1518: 09 8f 55  or    ($55),($8f)
151b: 2f 03     bra   $1520
151d: 09 8f 56  or    ($56),($8f)
1520: fa 56 98  mov   ($98),($56)
1523: 12 98     clr0  $98
1525: e4 8a     mov   a,$8a
1527: 28 e0     and   a,#$e0
1529: eb 56     mov   y,$56
152b: d0 04     bne   $1531
152d: 04 62     or    a,$62
152f: 2f 02     bra   $1533
1531: 04 63     or    a,$63
1533: c4 8a     mov   $8a,a             ; dsp shadow for FLG (6C)
1535: e4 83     mov   a,$83
1537: 04 84     or    a,$84
1539: 48 ff     eor   a,#$ff
153b: 24 55     and   a,$55
153d: 04 98     or    a,$98
153f: c4 88     mov   $88,a             ; dsp shadow for noise bits
1541: 6f        ret

; vcmd d1 - disable noise
1542: e4 8f     mov   a,$8f
1544: c8 10     cmp   x,#$10
1546: b0 05     bcs   $154d
1548: 4e 55 00  tclr1 $0055
154b: 2f d3     bra   $1520
154d: 4e 56 00  tclr1 $0056
1550: 2f ce     bra   $1520
; vcmd cf - set noise clock
1552: 28 1f     and   a,#$1f
1554: c8 10     cmp   x,#$10
1556: b0 04     bcs   $155c
1558: c4 62     mov   $62,a
155a: 2f c4     bra   $1520
155c: c4 63     mov   $63,a
155e: 2f c0     bra   $1520
; vcmd d2 - enable pitchmod
1560: c8 10     cmp   x,#$10
1562: b0 05     bcs   $1569
1564: 09 8f 57  or    ($57),($8f)
1567: 2f 03     bra   $156c
1569: 09 8f 58  or    ($58),($8f)
156c: e4 83     mov   a,$83
156e: 04 84     or    a,$84
1570: 48 ff     eor   a,#$ff
1572: 24 57     and   a,$57
1574: 04 58     or    a,$58
1576: c4 89     mov   $89,a
1578: 6f        ret

; vcmd d3 - disable pitchmod
1579: e4 8f     mov   a,$8f
157b: c8 10     cmp   x,#$10
157d: b0 05     bcs   $1584
157f: 4e 57 00  tclr1 $0057
1582: 2f e8     bra   $156c
1584: 4e 58 00  tclr1 $0058
1587: 2f e3     bra   $156c
; vcmd dc - set sample
1589: d5 01 f6  mov   $f601+x,a
158c: 1c        asl   a
158d: fd        mov   y,a               ; sample # as index in Y
158e: f6 00 1a  mov   a,$1a00+y
1591: d5 40 f7  mov   $f740+x,a
1594: f6 01 1a  mov   a,$1a01+y
1597: d5 41 f7  mov   $f741+x,a         ; set F740/1+X from 1A00/1+Y
159a: f6 80 1a  mov   a,$1a80+y
159d: d5 00 f9  mov   $f900+x,a
15a0: f6 81 1a  mov   a,$1a81+y
15a3: d5 01 f9  mov   $f901+x,a         ; set F900/1+X from 1A80/1+Y
15a6: c8 10     cmp   x,#$10
15a8: b0 05     bcs   $15af
15aa: e4 8f     mov   a,$8f
15ac: 4e 61 00  tclr1 $0061             ; clear vbit in $61
15af: 6f        ret

; set SRCN reg from F601+X
15b0: f5 01 f6  mov   a,$f601+x
15b3: fd        mov   y,a
15b4: 7d        mov   a,x
15b5: 9f        xcn   a
15b6: 5c        lsr   a
15b7: 08 04     or    a,#$04
15b9: c4 f2     mov   $f2,a
15bb: cb f3     mov   $f3,y             ; set SRCN reg from F601+X
15bd: 2f 10     bra   $15cf

; vcmd dd - set ADSR attack value
15bf: 28 0f     and   a,#$0f
15c1: c4 a2     mov   $a2,a
15c3: f5 00 f9  mov   a,$f900+x
15c6: 28 70     and   a,#$70            ; keep old decay value
15c8: 04 a2     or    a,$a2             ; set attack value
15ca: 08 80     or    a,#$80            ; ADSR mode, not GAIN mode
15cc: d5 00 f9  mov   $f900+x,a
15cf: c8 10     cmp   x,#$10
15d1: b0 09     bcs   $15dc
15d3: e4 83     mov   a,$83
15d5: 04 84     or    a,$84
15d7: 24 8f     and   a,$8f
15d9: f0 01     beq   $15dc
15db: 6f        ret

15dc: 7d        mov   a,x
15dd: 9f        xcn   a
15de: 5c        lsr   a
15df: 08 05     or    a,#$05
15e1: fd        mov   y,a
15e2: f5 00 f9  mov   a,$f900+x
15e5: 3f 14 06  call  $0614             ; set ADSR1 from F900+X
15e8: fc        inc   y
15e9: f5 01 f9  mov   a,$f901+x         ; set ADSR2 from F901+X
15ec: 5f 14 06  jmp   $0614

; vcmd de - set ADSR decay value
15ef: 28 07     and   a,#$07
15f1: 9f        xcn   a
15f2: c4 a2     mov   $a2,a
15f4: f5 00 f9  mov   a,$f900+x
15f7: 28 0f     and   a,#$0f            ; keep old attack value
15f9: 04 a2     or    a,$a2             ; add new decay value
15fb: 08 80     or    a,#$80            ; ADSR mode, not GAIN mode
15fd: d5 00 f9  mov   $f900+x,a

; vcmd df - set ADSR sustain level
1600: 2f cd     bra   $15cf
1602: 28 07     and   a,#$07
1604: 9f        xcn   a
1605: 1c        asl   a
1606: c4 a2     mov   $a2,a
1608: f5 01 f9  mov   a,$f901+x
160b: 28 1f     and   a,#$1f            ; keep old release value
160d: 04 a2     or    a,$a2             ; add new sustain value
160f: d5 01 f9  mov   $f901+x,a
1612: 2f bb     bra   $15cf

; vcmd e0 - set ADSR release level
1614: 28 1f     and   a,#$1f
1616: c4 a2     mov   $a2,a
1618: f5 01 f9  mov   a,$f901+x
161b: 28 e0     and   a,#$e0            ; keep old sustain value
161d: 04 a2     or    a,$a2             ; add new release value
161f: d5 01 f9  mov   $f901+x,a
1622: 2f ab     bra   $15cf

; vcmd e1 - set default ADSR parameters for sample
1624: f5 01 f6  mov   a,$f601+x
1627: 1c        asl   a
1628: fd        mov   y,a               ; sample # as index
1629: f6 80 1a  mov   a,$1a80+y
162c: d5 00 f9  mov   $f900+x,a
162f: f6 81 1a  mov   a,$1a81+y
1632: d5 01 f9  mov   $f901+x,a
1635: 2f 98     bra   $15cf
; vcmd fa - ignore master volume (per channel)
1637: 09 8f 61  or    ($61),($8f)
163a: 6f        ret

; vcmd e4 - begin slur
163b: e4 8f     mov   a,$8f
163d: c8 10     cmp   x,#$10
163f: b0 0b     bcs   $164c
1641: 0e 5b 00  tset1 $005b
1644: 4e 5d 00  tclr1 $005d
1647: 4e 5f 00  tclr1 $005f
164a: 2f 09     bra   $1655
164c: 0e 5c 00  tset1 $005c
164f: 4e 5e 00  tclr1 $005e
1652: 4e 60 00  tclr1 $0060
1655: 6f        ret

; simulate E5 for readahead/first half simulate DC
1656: e4 8f     mov   a,$8f
1658: c8 10     cmp   x,#$10
165a: b0 05     bcs   $1661
165c: 4e 5b 00  tclr1 $005b
165f: 2f 03     bra   $1664
1661: 4e 5c 00  tclr1 $005c
1664: 6f        ret

; vcmd e6 - begin legato
1665: e4 8f     mov   a,$8f
1667: c8 10     cmp   x,#$10
1669: b0 08     bcs   $1673
166b: 0e 5f 00  tset1 $005f
166e: 4e 5b 00  tclr1 $005b
1671: 2f 06     bra   $1679
1673: 0e 60 00  tset1 $0060
1676: 4e 5c 00  tclr1 $005c
1679: 6f        ret

; simulate E7 for readahead/second half simulate DC
167a: e4 8f     mov   a,$8f
167c: c8 10     cmp   x,#$10
167e: b0 05     bcs   $1685
1680: 4e 5f 00  tclr1 $005f
1683: 2f 03     bra   $1688
1685: 4e 60 00  tclr1 $0060
1688: 6f        ret

; vcmd e9 - goto address in $2C00+A*4 (play sfx)
1689: 8d 00     mov   y,#$00
168b: 2f 02     bra   $168f
; vcmd ea - goto address in $2C02+A*4 (play sfx)
168d: 8d 02     mov   y,#$02
168f: 3f 9d 16  call  $169d
1692: d4 02     mov   $02+x,a
1694: db 03     mov   $03+x,y
1696: dd        mov   a,y
1697: d0 03     bne   $169c
1699: 5f ed 17  jmp   $17ed

169c: 6f        ret

; get song ptr from table at 2C00, indexed by A width 4, Y selects 0 or 2
169d: 8f 00 93  mov   $93,#$00
16a0: 1c        asl   a
16a1: 2b 93     rol   $93
16a3: 1c        asl   a
16a4: 2b 93     rol   $93
16a6: c4 92     mov   $92,a             ; $92/3 = A * 4
16a8: dd        mov   a,y
16a9: 8d 2c     mov   y,#$2c
16ab: 7a 92     addw  ya,$92
16ad: da 92     movw  $92,ya            ; $92/3 += #$2C00 or #$2C02
16af: 8d 00     mov   y,#$00
16b1: f7 92     mov   a,($92)+y
16b3: 2d        push  a
16b4: fc        inc   y
16b5: f7 92     mov   a,($92)+y
16b7: fd        mov   y,a
16b8: ae        pop   a
16b9: 6f        ret

; simulate E9 for readahead
16ba: f7 90     mov   a,($90)+y
16bc: 8d 00     mov   y,#$00
16be: 2f 04     bra   $16c4
; simulate EA for readahead
16c0: f7 90     mov   a,($90)+y
16c2: 8d 02     mov   y,#$02
16c4: 3f 9d 16  call  $169d
16c7: da 90     movw  $90,ya
16c9: 6f        ret

; vcmd f7 - goto
16ca: fd        mov   y,a
16cb: 3f 90 05  call  $0590
16ce: dd        mov   a,y
16cf: eb a2     mov   y,$a2
16d1: 7a 00     addw  ya,$00
16d3: d4 02     mov   $02+x,a
16d5: db 03     mov   $03+x,y
16d7: 6f        ret

; simulate F6 for readahead
16d8: f7 90     mov   a,($90)+y
16da: 2d        push  a
16db: fc        inc   y
16dc: f7 90     mov   a,($90)+y
16de: fd        mov   y,a
16df: ae        pop   a
16e0: 7a 00     addw  ya,$00
16e2: da 90     movw  $90,ya
16e4: 6f        ret

; vcmd f6 - loop if repeat count matched (conditional loop)
16e5: c4 9a     mov   $9a,a
16e7: 3f 90 05  call  $0590
16ea: c4 98     mov   $98,a
16ec: 3f 90 05  call  $0590
16ef: c4 99     mov   $99,a
16f1: fb 26     mov   y,$26+x
16f3: f6 20 f9  mov   a,$f920+y
16f6: 2e 9a 1b  cbne  $9a,$1714         ; is this repeat #arg1?
16f9: f6 40 f9  mov   a,$f940+y
16fc: 9c        dec   a                 ; decrement repeat count
16fd: d0 0d     bne   $170c
16ff: 7d        mov   a,x
1700: 1c        asl   a
1701: 9c        dec   a
1702: 9b 26     dec   $26+x
1704: de 26 05  cbne  $26+x,$170c
1707: 60        clrc
1708: 88 04     adc   a,#$04
170a: d4 26     mov   $26+x,a           ; if done, remove repeat state
170c: ba 98     movw  ya,$98
170e: 7a 00     addw  ya,$00            ; correct offset
1710: d4 02     mov   $02+x,a
1712: db 03     mov   $03+x,y           ; set voice ptr to arg2/3
1714: 6f        ret

; simulate F5 for readahead
1715: eb c5     mov   y,$c5
1717: f6 20 f9  mov   a,$f920+y
171a: 8d 00     mov   y,#$00
171c: 77 90     cmp   a,($90)+y
171e: d0 19     bne   $1739
1720: eb c5     mov   y,$c5
1722: f6 40 f9  mov   a,$f940+y
1725: 9c        dec   a
1726: d0 0c     bne   $1734
1728: 7d        mov   a,x
1729: 1c        asl   a
172a: 9c        dec   a
172b: 8b c5     dec   $c5
172d: 2e c5 04  cbne  $c5,$1734
1730: 60        clrc
1731: 98 04 c5  adc   $c5,#$04
1734: 8d 01     mov   y,#$01
1736: 5f d8 16  jmp   $16d8

1739: 3a 90     incw  $90
173b: 3a 90     incw  $90
173d: 3a 90     incw  $90
173f: 6f        ret

; vcmd e2 - begin repeat
1740: bb 26     inc   $26+x
1742: 7d        mov   a,x
1743: 1c        asl   a
1744: 60        clrc
1745: 88 04     adc   a,#$04
1747: de 26 05  cbne  $26+x,$174f
174a: 80        setc
174b: a8 04     sbc   a,#$04
174d: d4 26     mov   $26+x,a
174f: fb 26     mov   y,$26+x           ; get rpt index into Y
1751: e4 a2     mov   a,$a2             ; get repeat count (E2 arg)
1753: f0 01     beq   $1756
1755: bc        inc   a                 ; inc unless 0
1756: d6 40 f9  mov   $f940+y,a         ; set repeat count in F490+Y
1759: c8 10     cmp   x,#$10
175b: b0 05     bcs   $1762
175d: e8 01     mov   a,#$01
175f: d6 20 f9  mov   $f920+y,a         ; for real voices: store 1 in F920+Y
1762: dd        mov   a,y
1763: 1c        asl   a
1764: fd        mov   y,a
1765: f4 02     mov   a,$02+x
1767: d6 80 f9  mov   $f980+y,a
176a: f4 03     mov   a,$03+x
176c: d6 81 f9  mov   $f981+y,a
176f: 6f        ret

; vcmd e3 - end repeat
1770: fb 26     mov   y,$26+x
1772: c8 10     cmp   x,#$10
1774: b0 07     bcs   $177d
1776: f6 20 f9  mov   a,$f920+y
1779: bc        inc   a
177a: d6 20 f9  mov   $f920+y,a         ; inc F920+Y
177d: f6 40 f9  mov   a,$f940+y         ; get repeats left
1780: f0 15     beq   $1797             ; if 0, repeat forever
1782: 9c        dec   a                 ; DEC repeats left
1783: d0 0f     bne   $1794             ; done?
1785: 7d        mov   a,x
1786: 1c        asl   a
1787: 9c        dec   a
1788: 9b 26     dec   $26+x
178a: de 26 17  cbne  $26+x,$17a4
178d: 60        clrc
178e: 88 04     adc   a,#$04
1790: d4 26     mov   $26+x,a           ; dec repeat index
1792: 2f 10     bra   $17a4
1794: d6 40 f9  mov   $f940+y,a         ; not done,
1797: dd        mov   a,y
1798: 1c        asl   a
1799: fd        mov   y,a
179a: f6 80 f9  mov   a,$f980+y
179d: d4 02     mov   $02+x,a
179f: f6 81 f9  mov   a,$f981+y
17a2: d4 03     mov   $03+x,a           ; goto stored repeat beginning
17a4: 6f        ret

; simulate E3 for readahead
17a5: eb c5     mov   y,$c5
17a7: f6 40 f9  mov   a,$f940+y
17aa: f0 11     beq   $17bd
17ac: 9c        dec   a
17ad: d0 0e     bne   $17bd
17af: 7d        mov   a,x
17b0: 1c        asl   a
17b1: 9c        dec   a
17b2: 8b c5     dec   $c5
17b4: 2e c5 13  cbne  $c5,$17ca
17b7: 60        clrc
17b8: 98 04 c5  adc   $c5,#$04
17bb: 2f 0d     bra   $17ca
17bd: dd        mov   a,y
17be: 1c        asl   a
17bf: fd        mov   y,a
17c0: f6 80 f9  mov   a,$f980+y
17c3: c4 90     mov   $90,a
17c5: f6 81 f9  mov   a,$f981+y
17c8: c4 91     mov   $91,a
17ca: 6f        ret

; vcmd e8 - utility rest
17cb: d4 25     mov   $25+x,a
17cd: 6f        ret

; vcmd db - detune
17ce: d5 60 f7  mov   $f760+x,a
17d1: 6f        ret

; vcmd f8 - increment cpu-shared counter
17d2: ab 66     inc   $66
17d4: 6f        ret

; vcmd f9 - zero cpu-shared counter
17d5: 8f 00 66  mov   $66,#$00
17d8: 6f        ret

; vcmd fb - branch if voice bit in $dd set
17d9: fd        mov   y,a
17da: 3f 90 05  call  $0590
17dd: e4 8f     mov   a,$8f
17df: 24 dd     and   a,$dd
17e1: f0 09     beq   $17ec
17e3: dd        mov   a,y
17e4: eb a2     mov   y,$a2
17e6: 7a 00     addw  ya,$00
17e8: d4 02     mov   $02+x,a
17ea: db 03     mov   $03+x,y
17ec: 6f        ret

; vcmd eb-ef, fc-ff - halt
17ed: ae        pop   a
17ee: ae        pop   a
17ef: e4 8f     mov   a,$8f
17f1: c8 10     cmp   x,#$10
17f3: b0 05     bcs   $17fa
17f5: 4e 52 00  tclr1 $0052
17f8: 2f 09     bra   $1803
17fa: 4e 83 00  tclr1 $0083
17fd: 4e 84 00  tclr1 $0084
1800: 4e 5d 00  tclr1 $005d
1803: 3f 42 15  call  $1542
1806: 3f 79 15  call  $1579
1809: 5f 04 15  jmp   $1504

; pitch table
180c: dw $0879  ; c
180e: dw $08fa  ; c#
1810: dw $0983  ; d
1812: dw $0a14  ; d#
1814: dw $0aad  ; e
1816: dw $0b50  ; f
1818: dw $0bfc  ; f#
181a: dw $0cb2  ; g
181c: dw $0d74  ; g#
181e: dw $0e41  ; a
1820: dw $0f1a  ; a#
1822: dw $1000  ; b
1824: dw $10f3  ; c'

; echo filter table
1826: db $7f,$00,$00,$00,$00,$00,$00,$00
182e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1836: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
183e: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
; duration table
1846: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03
;
1854: db $eb
; table to 02+x for cpu cmds $20-2f
1855: dw $1875  ; 20
1857: dw $1880  ; 21
1859: dw $188b  ; 22
185b: dw $1894  ; 23
185d: dw $0000  ; 24
185f: dw $0000  ; 25
1861: dw $0000  ; 26
1863: dw $0000  ; 27
1865: dw $0000  ; 28
1867: dw $0000  ; 29
1869: dw $0000  ; 2a
186b: dw $0000  ; 2b
186d: dw $0000  ; 2c
186f: dw $0000  ; 2d
1871: dw $0000  ; 2e
1873: dw $0000  ; 2f

; song data for CPU cmd $20
1875: db $c4,$c8,$dc,$02,$d6,$05,$c8,$04,$14,$43,$eb
; song data for CPU cmd $21
1880: db $c4,$c8,$dc,$06,$d6,$07,$c8,$06,$90,$0b,$eb
; song data for CPU cmd $22
188b: db $c4,$c8,$dc,$00,$d6,$04,$0b,$0c,$eb
; song data for CPU cmd $23
1894: db $c4,$c8,$dc,$0a,$d6,$05,$c8,$0c,$0c,$e0,$1b,$0a,$eb

; voice data command dispatch table
18a1: dw $1298  ; c4 - set voice volume
18a3: dw $12a7  ; c5 - volume fade (steps, dest value)
18a5: dw $12f1  ; c6 - set balance
18a7: dw $1300  ; c7 - balance fade (pan)
18a9: dw $131f  ; c8 - portamento
18ab: dw $1361  ; c9 - vibrato
18ad: dw $140a  ; ca - vibrato off
18af: dw $1414  ; cb - tremolo
18b1: dw $1471  ; cc - tremolo off
18b3: dw $147b  ; cd - pan sweep
18b5: dw $14d1  ; ce - pan sweep off
18b7: dw $1552  ; cf - set noise clock
18b9: dw $1514  ; d0 - enable noise
18bb: dw $1542  ; d1 - disable noise
18bd: dw $1560  ; d2 - enable pitchmod
18bf: dw $1579  ; d3 - disable pitchmod
18c1: dw $14eb  ; d4 - enable echo
18c3: dw $1504  ; d5 - disable echo
18c5: dw $14e7  ; d6 - set octave
18c7: dw $14dd  ; d7 - inc octave
18c9: dw $14e3  ; d8 - dec octave
18cb: dw $132e  ; d9 - set transpose
18cd: dw $132a  ; da - change (relative) transpose
18cf: dw $17ce  ; db - detune
18d1: dw $1589  ; dc - set sample
18d3: dw $15bf  ; dd - set ADSR attack value
18d5: dw $15ef  ; de - set ADSR decay value
18d7: dw $1602  ; df - set ADSR sustain level
18d9: dw $1614  ; e0 - set ADSR release value
18db: dw $1624  ; e1 - set default ADSR parameters for sample
18dd: dw $1740  ; e2 - begin repeat
18df: dw $1770  ; e3 - end repeat
18e1: dw $163b  ; e4 - begin slur
18e3: dw $0fd1  ; e5 - nop (end slur)
18e5: dw $1665  ; e6 - begin legato
18e7: dw $0fd1  ; e7 - nop (end legato)
18e9: dw $17cb  ; e8 - utility rest
18eb: dw $1689  ; e9 - goto address in 2C00+A*4 (play sfx)
18ed: dw $168d  ; ea - goto address in 2C02+A*4 (play sfx)
18ef: dw $17ed  ; eb - halt
18f1: dw $17ed  ; ec - (halt)
18f3: dw $17ed  ; ed - (halt)
18f5: dw $17ed  ; ee - (halt)
18f7: dw $17ed  ; ef - (halt)
18f9: dw $1274  ; f0 - tempo
18fb: dw $127d  ; f1 - tempo "fade"
18fd: dw $12c6  ; f2 - set echo volume
18ff: dw $12d4  ; f3 - fade echo volume
1901: dw $1332  ; f4 - echo feedback, FIR filter
1903: dw $1295  ; f5 - set master volume
1905: dw $16e5  ; f6 - loop if repeat count matched (conditional loop)
1907: dw $16ca  ; f7 - goto
1909: dw $17d2  ; f8 - increment cpu-shared counter
190b: dw $17d5  ; f9 - zero cpu-shared counter
190d: dw $1637  ; fa - ignore master volume
190f: dw $17d9  ; fb - branch if voice bit in $dd set
1911: dw $17ed  ; fc - (halt)
1913: dw $17ed  ; fd - (halt)
1915: dw $17ed  ; fe - (halt)
1917: dw $17ed  ; ff - (halt)

; music op lengths
1919: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
1925: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
1935: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00
1945: db $01,$02,$01,$02,$02,$01,$03,$02,$00,$00,$00,$02,$00,$00,$00,$00

; table for CPU commands 10-1f
1955: dw $09f0  ; 10
1957: dw $09f8  ; 11
1959: dw $0fd1  ; 12 - nop
195b: dw $0fd1  ; 13 - nop
195d: dw $09ed  ; 14
195f: dw $09f5  ; 15
1961: dw $0fd1  ; 16 - nop
1963: dw $0fd1  ; 17 - nop
1965: dw $0b15  ; 18
1967: dw $0fd1  ; 19 - nop
1969: dw $0fd1  ; 1a - nop
196b: dw $0fd1  ; 1b - nop
196d: dw $0fd1  ; 1c - nop
196f: dw $0fd1  ; 1d - nop
1971: dw $0fd1  ; 1e - nop
1973: dw $0fd1  ; 1f - nop

; table for CPU commands 80-8f, f0-ff
1975: dw $0c42  ; 80
1977: dw $0c42  ; 81
1979: dw $0c42  ; 82
197b: dw $0cbd  ; 83
197d: dw $0fd1  ; 84 - nop
197f: dw $0fd1  ; 85 - nop
1981: dw $0ce3  ; 86
1983: dw $0fd1  ; 87 - nop
1985: dw $0fd1  ; 88 - nop
1987: dw $0d0e  ; 89
1989: dw $0fd1  ; 8a - nop
198b: dw $0fd1  ; 8b - nop
198d: dw $1085  ; 8c
198f: dw $0fd1  ; 8d - nop
1991: dw $10e3  ; 8e
1993: dw $1108  ; 8f
1995: dw $0d46  ; f0
1997: dw $0d46  ; f1
1999: dw $0d46  ; f2
199b: dw $0d39  ; f3
199d: dw $0d39  ; f4
199f: dw $0da3  ; f5
19a1: dw $0db5  ; f6
19a3: dw $0db5  ; f7
19a5: dw $0f83  ; f8
19a7: dw $0f83  ; f9
19a9: dw $0daa  ; fa
19ab: dw $0f9a  ; fb
19ad: dw $1000  ; fc - set echo delay from $f5, enable echo, 52->4d unless 0
19af: dw $0fe6  ; fd - write $f6 to DSP register $f5
19b1: dw $0e22  ; fe
19b3: dw $0fa1  ; ff - reset

; DSP register to shadow mappings
19b5: db $4c,$2d,$3d,$6c,$5c,$0c,$1c,$4d,$2c,$3c

; shadows
19bf: db $22,$89,$88,$8a,$24,$e1,$e1,$87,$4d,$4d
