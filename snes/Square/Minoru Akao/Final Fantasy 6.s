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
0211: 8d 0c     mov   y,#$0c
0213: 3f 48 06  call  $0648             ; zero master vol left
0216: 8d 1c     mov   y,#$1c
0218: 3f 48 06  call  $0648             ; zero master vol right
021b: 8d 2c     mov   y,#$2c
021d: 3f 48 06  call  $0648             ; zero echo vol left
0220: 8d 3c     mov   y,#$3c
0222: 3f 48 06  call  $0648             ; zero echo vol right
0225: 8d 2d     mov   y,#$2d
0227: 3f 48 06  call  $0648             ; clear all pitch mod
022a: 8d 3d     mov   y,#$3d
022c: 3f 48 06  call  $0648             ; clear noise enable bits
022f: 8d 4d     mov   y,#$4d
0231: 3f 48 06  call  $0648             ; clear echo enable bits
0234: 8d 5d     mov   y,#$5d
0236: e8 1b     mov   a,#$1b
0238: 3f 48 06  call  $0648             ; set sample dir to $1B00
023b: 8d 07     mov   y,#$07
023d: cd a0     mov   x,#$a0
023f: cb f2     mov   $f2,y
0241: d8 f3     mov   $f3,x             ; set exp decr gain mode...
0243: dd        mov   a,y
0244: 60        clrc
0245: 88 10     adc   a,#$10
0247: fd        mov   y,a
0248: 10 f5     bpl   $023f             ; ...for all voices
024a: 8f 30 f1  mov   $f1,#$30          ; clear ports
024d: 8f 27 fa  mov   $fa,#$27          ; set timer0 latch to #$27 (205 Hz, 4.875ms)
0250: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to #$80 (62.5 Hz, 16ms)
0253: 8f 05 fc  mov   $fc,#$05          ; set timer2 latch to #$05 (12.8 KHz, 78 us)
0256: 8f 07 f1  mov   $f1,#$07          ; start all timers
0259: 8f 05 8c  mov   $8c,#$05
025c: 3f 02 10  call  $1002             ; set echo delay to 80ms
025f: e8 3f     mov   a,#$3f
0261: 8d 0c     mov   y,#$0c
0263: 3f 48 06  call  $0648
0266: 8d 1c     mov   y,#$1c
0268: 3f 48 06  call  $0648             ; set master volume L/R to 50% (#$3F)
026b: 8b 24     dec   $24               ; set key-off shadow to #$FF
026d: 8f 07 c8  mov   $c8,#$07          ; set $C8 to 7
0270: 8b a8     dec   $a8               ; set $A8 to #$FF
; begin main loop
0272: 3f e1 09  call  $09e1             ; do
0275: eb fd     mov   y,$fd             ;   process CPU cmds
0277: f0 f9     beq   $0272             ; until counter0 != 0
0279: 43 85 03  bbs2  $85,$027f
027c: d3 86 04  bbc6  $86,$0283
027f: 8d 05     mov   y,#$05            ; do up thru reg 5C (no echo regs)
0281: 2f 02     bra   $0285
0283: 8d 11     mov   y,#$11            ; do all
0285: f6 94 19  mov   a,$1994+y         ; get DSP register
0288: c4 f2     mov   $f2,a             ; set latch for register
028a: f6 a5 19  mov   a,$19a5+y         ; get shadow register
028d: 5d        mov   x,a
028e: e6        mov   a,(x)
028f: c4 f3     mov   $f3,a             ; write DSP reg from shadow reg
0291: fe f2     dbnz  y,$0285           ; loop thru shadowed regs
0293: cb 24     mov   $24,y             ; clear key off shadow
0295: cb 22     mov   $22,y             ; clear key on shadow
0297: e3 86 14  bbs7  $86,$02ae
029a: 63 85 03  bbs3  $85,$02a0
029d: eb 52     mov   y,$52
029f: e5 eb ad  mov   a,$adeb           ; pseudo op to skip instruction
02a2: e4 dd     mov   a,$dd
02a4: da f6     movw  $f6,ya
02a6: eb 7b     mov   y,$7b             ; write $DD and $52 or $AD to APU2/3
02a8: e8 00     mov   a,#$00
02aa: da f4     movw  $f4,ya
02ac: 2f 03     bra   $02b1             ; write #$00 and $7B to APU0/1
02ae: 3f df 10  call  $10df
02b1: ba d9     movw  ya,$d9            ; read wave height regs, put in APU regs
02b3: d0 4b     bne   $0300
02b5: 8b c8     dec   $c8
02b7: d0 06     bne   $02bf             ; --$c8 == 0 ?
02b9: 8f 07 c8  mov   $c8,#$07          ;   reset $C8 counter
02bc: 3f 38 11  call  $1138             ;   1138
02bf: 3f 08 03  call  $0308
02c2: cd 00     mov   x,#$00
02c4: 8f 01 8f  mov   $8f,#$01
02c7: e4 83     mov   a,$83
02c9: 04 84     or    a,$84
02cb: 48 ff     eor   a,#$ff
02cd: 24 52     and   a,$52
02cf: 24 23     and   a,$23
02d1: c4 a0     mov   $a0,a
02d3: 2f 09     bra   $02de
02d5: d8 a3     mov   $a3,x
02d7: 3f 45 07  call  $0745
02da: 3d        inc   x
02db: 3d        inc   x
02dc: 0b 8f     asl   $8f
02de: 4b a0     lsr   $a0
02e0: b0 f3     bcs   $02d5
02e2: d0 f6     bne   $02da
02e4: cd 1e     mov   x,#$1e
02e6: 8f 80 8f  mov   $8f,#$80
02e9: e4 83     mov   a,$83
02eb: 04 84     or    a,$84
02ed: c4 a0     mov   $a0,a
02ef: 2f 09     bra   $02fa
02f1: d8 a3     mov   $a3,x
02f3: 3f 45 07  call  $0745
02f6: 1d        dec   x
02f7: 1d        dec   x
02f8: 4b 8f     lsr   $8f
02fa: 0b a0     asl   $a0
02fc: b0 f3     bcs   $02f1
02fe: d0 f6     bne   $02f6
0300: e8 00     mov   a,#$00
0302: fd        mov   y,a
0303: da db     movw  $db,ya            ; zero word $DB
0305: 5f 72 02  jmp   $0272

0308: a3 86 1f  bbs5  $86,$032a
030b: e4 46     mov   a,$46
030d: eb b7     mov   y,$b7
030f: f0 12     beq   $0323
0311: cf        mul   ya
0312: dd        mov   a,y
0313: e3 b7 0a  bbs7  $b7,$0320
0316: 1c        asl   a
0317: 60        clrc
0318: 84 46     adc   a,$46
031a: 90 07     bcc   $0323
031c: e8 ff     mov   a,#$ff
031e: 2f 03     bra   $0323
0320: d0 01     bne   $0323
0322: bc        inc   a
0323: 60        clrc
0324: 84 47     adc   a,$47
0326: c4 47     mov   $47,a
0328: 90 53     bcc   $037d
032a: cd 00     mov   x,#$00            ; loop over voices
032c: 8f 01 8f  mov   $8f,#$01
032f: fa 52 a0  mov   ($a0),($52)
0332: 2f 39     bra   $036d
0334: d8 a3     mov   $a3,x
0336: 9b 25     dec   $25+x
0338: d0 05     bne   $033f
033a: 3f d9 03  call  $03d9             ; do next vcmd
033d: 2f 27     bra   $0366
033f: 8d 00     mov   y,#$00
0341: c8 10     cmp   x,#$10
0343: b0 01     bcs   $0346
0345: e8 fc     mov   a,#$fc            ; pseudo-op skip
0347: e8 02     mov   a,#$02
0349: de 25 1a  cbne  $25+x,$0366
034c: f6 59 00  mov   a,$0059+y
034f: 24 8f     and   a,$8f
0351: d0 13     bne   $0366
0353: dd        mov   a,y
0354: d0 0d     bne   $0363
0356: e4 8f     mov   a,$8f
0358: 4e 23 00  tclr1 $0023
035b: e4 83     mov   a,$83
035d: 04 84     or    a,$84
035f: 24 8f     and   a,$8f
0361: d0 03     bne   $0366
0363: 09 8f 24  or    ($24),($8f)       ; key-off this voice
0366: 3f 54 06  call  $0654
0369: 3d        inc   x
036a: 3d        inc   x
036b: 0b 8f     asl   $8f
036d: 4b a0     lsr   $a0
036f: b0 c3     bcs   $0334             ; loop if this voice active
0371: d0 f6     bne   $0369
0373: c8 18     cmp   x,#$18
0375: b0 1d     bcs   $0394
0377: 3f 95 03  call  $0395
037a: 3f e1 09  call  $09e1
037d: e8 78     mov   a,#$78
037f: 60        clrc
0380: 84 48     adc   a,$48
0382: c4 48     mov   $48,a
0384: 90 0e     bcc   $0394
0386: cd 18     mov   x,#$18
0388: 8f 10 8f  mov   $8f,#$10
038b: e4 83     mov   a,$83
038d: 04 84     or    a,$84
038f: 9f        xcn   a
0390: c4 a0     mov   $a0,a
0392: 2f d9     bra   $036d
0394: 6f        ret

0395: e4 49     mov   a,$49
0397: f0 08     beq   $03a1
0399: 8b 49     dec   $49
039b: ba 4a     movw  ya,$4a
039d: 7a 45     addw  ya,$45
039f: da 45     movw  $45,ya
03a1: e4 50     mov   a,$50
03a3: f0 08     beq   $03ad
03a5: 8b 50     dec   $50
03a7: ba 4e     movw  ya,$4e
03a9: 7a 4c     addw  ya,$4c
03ab: da 4c     movw  $4c,ya
03ad: e4 78     mov   a,$78
03af: f0 08     beq   $03b9
03b1: 8b 78     dec   $78
03b3: ba 79     movw  ya,$79
03b5: 7a 75     addw  ya,$75
03b7: da 75     movw  $75,ya
03b9: e4 77     mov   a,$77
03bb: f0 1b     beq   $03d8
03bd: 8b 77     dec   $77
03bf: cd 10     mov   x,#$10
03c1: f5 ff 00  mov   a,$00ff+x
03c4: fd        mov   y,a
03c5: f5 fe 00  mov   a,$00fe+x
03c8: da 98     movw  $98,ya
03ca: f4 63     mov   a,$63+x
03cc: fb 64     mov   y,$64+x
03ce: 7a 98     addw  ya,$98
03d0: d4 63     mov   $63+x,a
03d2: db 64     mov   $64+x,y
03d4: 1d        dec   x
03d5: 1d        dec   x
03d6: d0 e9     bne   $03c1
03d8: 6f        ret

; process a command for voice X/2
03d9: 3f c9 05  call  $05c9
03dc: 68 c4     cmp   a,#$c4
03de: 90 05     bcc   $03e5
03e0: 3f b5 05  call  $05b5
03e3: 2f f4     bra   $03d9
03e5: fb 25     mov   y,$25+x
03e7: d0 0c     bne   $03f5             ; skip duration stuff if voice "busy"
03e9: 8d 00     mov   y,#$00
03eb: cd 0e     mov   x,#$0e
03ed: 9e        div   ya,x              ; A = AY / #$0E, Y = AY % #$0E
03ee: f8 a3     mov   x,$a3
03f0: f6 d1 17  mov   a,$17d1+y         ; get duration from table
03f3: d4 25     mov   $25+x,a
03f5: 78 a8 a2  cmp   $a2,#$a8
03f8: 90 09     bcc   $0403             ; note less than 12
03fa: 78 b6 a2  cmp   $a2,#$b6
03fd: b0 03     bcs   $0402             ; note >= 13
03ff: 5f 99 04  jmp   $0499

0402: 6f        ret

0403: e4 a2     mov   a,$a2
0405: 8d 00     mov   y,#$00
0407: cd 0e     mov   x,#$0e
0409: 9e        div   ya,x              ; A = AY / #$0E, Y = AY % #$0E
040a: c4 a2     mov   $a2,a             ; save note in A2
040c: f8 a3     mov   x,$a3
040e: f5 00 f6  mov   a,$f600+x         ; current octave
0411: 8d 0c     mov   y,#$0c
0413: cf        mul   ya                ; multiply by 12
0414: 60        clrc
0415: 84 a2     adc   a,$a2             ; + note value
0417: 60        clrc
0418: 95 21 f7  adc   a,$f721+x         ; + F721+x (transpose?)
041b: 80        setc
041c: a8 0a     sbc   a,#$0a
041e: d5 61 f7  mov   $f761+x,a
0421: 3f 54 05  call  $0554             ; calculate pitch value
0424: e4 c0     mov   a,$c0
0426: d5 e0 f8  mov   $f8e0+x,a
0429: e4 c1     mov   a,$c1
042b: d5 e1 f8  mov   $f8e1+x,a
042e: f5 51 01  mov   a,$0151+x
0431: f0 05     beq   $0438
0433: c4 a2     mov   $a2,a
0435: 3f 02 13  call  $1302
0438: f5 70 01  mov   a,$0170+x
043b: f0 07     beq   $0444
043d: c4 a2     mov   $a2,a
043f: 3f b6 13  call  $13b6
0442: e8 00     mov   a,#$00
0444: d5 c0 f8  mov   $f8c0+x,a
0447: d5 c1 f8  mov   $f8c1+x,a
044a: d5 60 f8  mov   $f860+x,a
044d: d5 61 f8  mov   $f861+x,a
0450: d5 80 f7  mov   $f780+x,a
0453: d5 81 f7  mov   $f781+x,a
0456: c8 10     cmp   x,#$10
0458: b0 20     bcs   $047a
045a: 09 8f 23  or    ($23),($8f)
045d: e4 83     mov   a,$83
045f: 04 84     or    a,$84
0461: 24 8f     and   a,$8f
0463: d0 34     bne   $0499
0465: e4 8f     mov   a,$8f
0467: 24 5f     and   a,$5f
0469: d0 22     bne   $048d
046b: e4 8f     mov   a,$8f
046d: 24 5b     and   a,$5b
046f: f0 1c     beq   $048d
0471: 24 5d     and   a,$5d
0473: d0 1b     bne   $0490
0475: 09 8f 5d  or    ($5d),($8f)
0478: 2f 13     bra   $048d
047a: e4 8f     mov   a,$8f
047c: 24 60     and   a,$60
047e: d0 0d     bne   $048d
0480: e4 8f     mov   a,$8f
0482: 24 5c     and   a,$5c
0484: f0 07     beq   $048d
0486: 24 5e     and   a,$5e
0488: d0 06     bne   $0490
048a: 09 8f 5e  or    ($5e),($8f)
048d: 09 8f 22  or    ($22),($8f)
0490: 09 8f db  or    ($db),($8f)
0493: 09 8f dc  or    ($dc),($8f)
0496: 3f 29 15  call  $1529
0499: 3f d4 05  call  $05d4
049c: fd        mov   y,a
049d: e4 8f     mov   a,$8f
049f: c8 10     cmp   x,#$10
04a1: b0 21     bcs   $04c4
04a3: ad b6     cmp   y,#$b6
04a5: b0 09     bcs   $04b0
04a7: ad a8     cmp   y,#$a8
04a9: 90 0b     bcc   $04b6
04ab: 0e 59 00  tset1 $0059
04ae: 2f 33     bra   $04e3
04b0: 4e 5b 00  tclr1 $005b
04b3: 4e 5f 00  tclr1 $005f
04b6: 4e 59 00  tclr1 $0059
04b9: e4 5b     mov   a,$5b
04bb: 04 5f     or    a,$5f
04bd: 24 8f     and   a,$8f
04bf: 0e 59 00  tset1 $0059
04c2: 2f 1f     bra   $04e3
04c4: ad b6     cmp   y,#$b6
04c6: b0 09     bcs   $04d1
04c8: ad a8     cmp   y,#$a8
04ca: 90 0b     bcc   $04d7
04cc: 0e 5a 00  tset1 $005a
04cf: 2f 12     bra   $04e3
04d1: 4e 5c 00  tclr1 $005c
04d4: 4e 60 00  tclr1 $0060
04d7: 4e 5a 00  tclr1 $005a
04da: e4 5c     mov   a,$5c
04dc: 04 60     or    a,$60
04de: 24 8f     and   a,$8f
04e0: 0e 5a 00  tset1 $005a
04e3: f5 50 01  mov   a,$0150+x
04e6: f0 6b     beq   $0553
04e8: 60        clrc
04e9: 95 61 f7  adc   a,$f761+x
04ec: d5 61 f7  mov   $f761+x,a
04ef: 3f 54 05  call  $0554
04f2: f5 e1 f8  mov   a,$f8e1+x
04f5: fd        mov   y,a
04f6: f5 e0 f8  mov   a,$f8e0+x
04f9: da 98     movw  $98,ya
04fb: ba c0     movw  ya,$c0
04fd: 80        setc
04fe: 9a 98     subw  ya,$98
0500: da 98     movw  $98,ya
0502: 0d        push  psw
0503: b0 08     bcs   $050d
0505: 58 ff 98  eor   $98,#$ff
0508: 58 ff 99  eor   $99,#$ff
050b: 3a 98     incw  $98
050d: f5 20 f7  mov   a,$f720+x
0510: d0 05     bne   $0517
0512: 8f 00 9a  mov   $9a,#$00
0515: 2f 12     bra   $0529
0517: 5d        mov   x,a
0518: e4 99     mov   a,$99
051a: 8d 00     mov   y,#$00
051c: 9e        div   ya,x
051d: c4 9a     mov   $9a,a
051f: e4 98     mov   a,$98
0521: 9e        div   ya,x
0522: c4 99     mov   $99,a
0524: e8 00     mov   a,#$00
0526: 9e        div   ya,x
0527: c4 98     mov   $98,a
0529: 8e        pop   psw
052a: b0 0f     bcs   $053b
052c: 58 ff 98  eor   $98,#$ff
052f: 58 ff 99  eor   $99,#$ff
0532: 58 ff 9a  eor   $9a,#$ff
0535: 3a 98     incw  $98
0537: d0 02     bne   $053b
0539: ab 9a     inc   $9a
053b: f8 a3     mov   x,$a3
053d: ba 99     movw  ya,$99
053f: d5 80 f7  mov   $f780+x,a
0542: dd        mov   a,y
0543: d5 81 f7  mov   $f781+x,a
0546: e4 98     mov   a,$98
0548: d5 a0 f8  mov   $f8a0+x,a
054b: e8 00     mov   a,#$00
054d: d5 50 01  mov   $0150+x,a
0550: d5 a1 f8  mov   $f8a1+x,a
0553: 6f        ret

; calculate pitch value for note in A
0554: cd 0c     mov   x,#$0c
0556: 8d 00     mov   y,#$00
0558: 9e        div   ya,x
0559: f8 a3     mov   x,$a3
055b: c4 a1     mov   $a1,a             ; octave (corrected)
055d: dd        mov   a,y
055e: 1c        asl   a
055f: fd        mov   y,a               ; note value is index into tbl
0560: f6 8f 17  mov   a,$178f+y
0563: c4 c2     mov   $c2,a
0565: f6 90 17  mov   a,$1790+y
0568: c4 c3     mov   $c3,a             ; pitch from table -> C2/C3
056a: fd        mov   y,a
056b: f5 40 f7  mov   a,$f740+x
056e: 60        clrc
056f: 95 60 f7  adc   a,$f760+x
0572: 0d        push  psw
0573: 2d        push  a
0574: cf        mul   ya
0575: da c0     movw  $c0,ya
0577: eb c2     mov   y,$c2
0579: ae        pop   a
057a: cf        mul   ya
057b: dd        mov   a,y
057c: 8d 00     mov   y,#$00
057e: 7a c0     addw  ya,$c0
0580: da c0     movw  $c0,ya
0582: f5 41 f7  mov   a,$f741+x
0585: f0 08     beq   $058f
0587: cf        mul   ya
0588: dd        mov   a,y
0589: 8d 00     mov   y,#$00
058b: 7a c0     addw  ya,$c0
058d: 2f 02     bra   $0591
058f: e4 c0     mov   a,$c0
0591: 8e        pop   psw
0592: 30 02     bmi   $0596
0594: 7a c2     addw  ya,$c2
0596: da c0     movw  $c0,ya
0598: e8 04     mov   a,#$04
059a: eb a1     mov   y,$a1
059c: 30 0e     bmi   $05ac
059e: 64 a1     cmp   a,$a1
05a0: b0 0f     bcs   $05b1
05a2: 0b c0     asl   $c0
05a4: 2b c1     rol   $c1
05a6: bc        inc   a
05a7: 2e a1 f8  cbne  $a1,$05a2
05aa: 2f 08     bra   $05b4
05ac: 4b c1     lsr   $c1
05ae: 6b c0     ror   $c0
05b0: 9c        dec   a
05b1: 2e a1 f8  cbne  $a1,$05ac
05b4: 6f        ret

; dispatch command in A, reading first operand if present
05b5: a8 c4     sbc   a,#$c4
05b7: 1c        asl   a
05b8: fd        mov   y,a
; read next command for voice X/2 into $A2, A
05b9: f6 82 18  mov   a,$1882+y
05bc: 2d        push  a
05bd: f6 81 18  mov   a,$1881+y
05c0: 2d        push  a
05c1: dd        mov   a,y
05c2: 5c        lsr   a
05c3: fd        mov   y,a
; scan ahead to next note command
05c4: f6 f9 18  mov   a,$18f9+y
05c7: f0 0a     beq   $05d3
05c9: e7 02     mov   a,($02+x)
05cb: c4 a2     mov   $a2,a
05cd: bb 02     inc   $02+x
05cf: d0 02     bne   $05d3
05d1: bb 03     inc   $03+x
05d3: 6f        ret

05d4: f4 02     mov   a,$02+x
05d6: fb 03     mov   y,$03+x
05d8: da 90     movw  $90,ya
05da: f4 26     mov   a,$26+x
05dc: c4 c5     mov   $c5,a
05de: 8d 00     mov   y,#$00
05e0: f7 90     mov   a,($90)+y
05e2: 68 c4     cmp   a,#$c4
05e4: 90 61     bcc   $0647
05e6: 3a 90     incw  $90
05e8: 68 eb     cmp   a,#$eb
05ea: f0 5b     beq   $0647
05ec: 68 f6     cmp   a,#$f6
05ee: d0 05     bne   $05f5
05f0: 3f 58 16  call  $1658
05f3: 2f e9     bra   $05de
05f5: 68 e3     cmp   a,#$e3
05f7: d0 05     bne   $05fe
05f9: 3f 25 17  call  $1725
05fc: 2f e0     bra   $05de
05fe: 68 f5     cmp   a,#$f5
0600: d0 05     bne   $0607
0602: 3f 95 16  call  $1695
0605: 2f d7     bra   $05de
0607: 68 e5     cmp   a,#$e5
0609: d0 05     bne   $0610
060b: 3f cf 15  call  $15cf
060e: 2f ce     bra   $05de
0610: 68 e7     cmp   a,#$e7
0612: d0 05     bne   $0619
0614: 3f f3 15  call  $15f3
0617: 2f c5     bra   $05de
0619: 68 e9     cmp   a,#$e9
061b: d0 05     bne   $0622
061d: 3f 33 16  call  $1633
0620: 2f bc     bra   $05de
0622: 68 ea     cmp   a,#$ea
0624: d0 05     bne   $062b
0626: 3f 39 16  call  $1639
0629: 2f b3     bra   $05de
062b: 68 dc     cmp   a,#$dc
062d: d0 08     bne   $0637
062f: 3f cf 15  call  $15cf
0632: 3f f3 15  call  $15f3
0635: 2f a7     bra   $05de
0637: 80        setc
0638: a8 c4     sbc   a,#$c4
063a: fd        mov   y,a
063b: f6 f9 18  mov   a,$18f9+y
063e: f0 9e     beq   $05de
0640: fd        mov   y,a
0641: 3a 90     incw  $90
0643: fe fc     dbnz  y,$0641
0645: 2f 99     bra   $05e0
0647: 6f        ret

; set DSP register Y to A
0648: cb f2     mov   $f2,y
064a: c4 f3     mov   $f3,a
064c: 6f        ret

; clear f4/f5 read regs
064d: 8f 17 f1  mov   $f1,#$17
0650: 8f 07 f1  mov   $f1,#$07
0653: 6f        ret

0654: 40        setp                    ; direct page = 01
0655: f4 11     mov   a,$11+x
0657: f0 02     beq   $065b
0659: 9b 11     dec   $11+x             ; DEC $0111+X if not zero
065b: f4 31     mov   a,$31+x
065d: f0 02     beq   $0661
065f: 9b 31     dec   $31+x             ; DEC $0131+x if not zero
0661: 20        clrp                    ; direct page = 00
0662: f5 a0 f6  mov   a,$f6a0+x
0665: f0 26     beq   $068d             ; if F6A0+X != 0 then
0667: 9c        dec   a
0668: d5 a0 f6  mov   $f6a0+x,a         ;   DEC F6A0+X
066b: f5 20 f6  mov   a,$f620+x
066e: c4 98     mov   $98,a
0670: f5 21 f6  mov   a,$f621+x
0673: c4 99     mov   $99,a
0675: f5 41 f6  mov   a,$f641+x
0678: fd        mov   y,a
0679: f5 40 f6  mov   a,$f640+x
067c: 7a 98     addw  ya,$98
067e: d5 20 f6  mov   $f620+x,a
0681: dd        mov   a,y               ;   F620/1 += F640/1
0682: 75 21 f6  cmp   a,$f621+x         ;   CMP old value high byte F621
0685: d5 21 f6  mov   $f621+x,a
0688: f0 03     beq   $068d
068a: 09 8f db  or    ($db),($8f)       ;   if different, set vbit in $DB
068d: f5 a1 f6  mov   a,$f6a1+x
0690: f0 26     beq   $06b8             ; if F6A1+X != 0 then
0692: 9c        dec   a
0693: d5 a1 f6  mov   $f6a1+x,a         ;   DEC F6A1+X
0696: f5 60 f6  mov   a,$f660+x
0699: c4 98     mov   $98,a
069b: f5 61 f6  mov   a,$f661+x
069e: c4 99     mov   $99,a
06a0: f5 81 f6  mov   a,$f681+x
06a3: fd        mov   y,a
06a4: f5 80 f6  mov   a,$f680+x
06a7: 7a 98     addw  ya,$98
06a9: d5 60 f6  mov   $f660+x,a
06ac: dd        mov   a,y               ;   F660/1 += F680/1
06ad: 75 61 f6  cmp   a,$f661+x         ;   CMP old value high byte F661
06b0: d5 61 f6  mov   $f661+x,a
06b3: f0 03     beq   $06b8
06b5: 09 8f db  or    ($db),($8f)       ;   if different, set vbit in $DB
06b8: f5 a0 f8  mov   a,$f8a0+x
06bb: c4 98     mov   $98,a
06bd: f5 80 f7  mov   a,$f780+x
06c0: c4 99     mov   $99,a
06c2: f5 81 f7  mov   a,$f781+x
06c5: c4 9a     mov   $9a,a
06c7: ba 98     movw  ya,$98
06c9: d0 04     bne   $06cf
06cb: e4 9a     mov   a,$9a
06cd: f0 2e     beq   $06fd
06cf: f5 20 f7  mov   a,$f720+x
06d2: 9c        dec   a
06d3: d0 09     bne   $06de
06d5: d5 80 f7  mov   $f780+x,a
06d8: d5 81 f7  mov   $f781+x,a
06db: d5 a0 f8  mov   $f8a0+x,a
06de: d5 20 f7  mov   $f720+x,a
06e1: 60        clrc
06e2: f5 e0 f8  mov   a,$f8e0+x
06e5: fd        mov   y,a
06e6: f5 a1 f8  mov   a,$f8a1+x
06e9: 7a 98     addw  ya,$98
06eb: d5 a1 f8  mov   $f8a1+x,a
06ee: dd        mov   a,y
06ef: d5 e0 f8  mov   $f8e0+x,a
06f2: e4 9a     mov   a,$9a
06f4: 95 e1 f8  adc   a,$f8e1+x
06f7: d5 e1 f8  mov   $f8e1+x,a
06fa: 09 8f dc  or    ($dc),($8f)
06fd: f5 71 01  mov   a,$0171+x
0700: f0 42     beq   $0744
0702: f5 a0 f7  mov   a,$f7a0+x
0705: c4 98     mov   $98,a
0707: f5 a1 f7  mov   a,$f7a1+x
070a: c4 99     mov   $99,a
070c: f5 81 f8  mov   a,$f881+x
070f: fd        mov   y,a
0710: c4 9a     mov   $9a,a
0712: f5 80 f8  mov   a,$f880+x
0715: 7a 98     addw  ya,$98
0717: d5 80 f8  mov   $f880+x,a
071a: dd        mov   a,y
071b: 75 81 f8  cmp   a,$f881+x
071e: d5 81 f8  mov   $f881+x,a
0721: f0 03     beq   $0726
0723: 09 8f db  or    ($db),($8f)
0726: f5 01 f7  mov   a,$f701+x
0729: 9c        dec   a
072a: d0 15     bne   $0741
072c: 58 ff 98  eor   $98,#$ff
072f: 58 ff 99  eor   $99,#$ff
0732: 3a 98     incw  $98
0734: e4 98     mov   a,$98
0736: d5 a0 f7  mov   $f7a0+x,a
0739: e4 99     mov   a,$99
073b: d5 a1 f7  mov   $f7a1+x,a
073e: f5 00 f7  mov   a,$f700+x
0741: d5 01 f7  mov   $f701+x,a
0744: 6f        ret

; set volume/pitch regs on DSP for voice X/2
0745: f5 51 01  mov   a,$0151+x
0748: f0 07     beq   $0751
074a: c4 a2     mov   $a2,a
074c: f5 11 01  mov   a,$0111+x
074f: f0 03     beq   $0754
0751: 5f fc 07  jmp   $07fc

0754: f5 e1 f7  mov   a,$f7e1+x
0757: fd        mov   y,a
0758: f5 e0 f7  mov   a,$f7e0+x
075b: da c0     movw  $c0,ya
075d: f5 41 f8  mov   a,$f841+x
0760: fd        mov   y,a
0761: f5 40 f8  mov   a,$f840+x
0764: 7a c0     addw  ya,$c0
0766: da c2     movw  $c2,ya
0768: d5 40 f8  mov   $f840+x,a
076b: dd        mov   a,y
076c: 75 41 f8  cmp   a,$f841+x
076f: f0 57     beq   $07c8
0771: d5 41 f8  mov   $f841+x,a
0774: 0b c2     asl   $c2
0776: 2b c3     rol   $c3
0778: f5 e1 f8  mov   a,$f8e1+x
077b: 8d 0f     mov   y,#$0f
077d: cf        mul   ya
077e: da 98     movw  $98,ya
0780: f5 e0 f8  mov   a,$f8e0+x
0783: 8d 0f     mov   y,#$0f
0785: cf        mul   ya
0786: dd        mov   a,y
0787: 8d 00     mov   y,#$00
0789: 7a 98     addw  ya,$98
078b: da 98     movw  $98,ya
078d: e4 c3     mov   a,$c3
078f: cf        mul   ya
0790: da 9a     movw  $9a,ya
0792: eb 98     mov   y,$98
0794: e4 c3     mov   a,$c3
0796: cf        mul   ya
0797: dd        mov   a,y
0798: 8d 00     mov   y,#$00
079a: 7a 9a     addw  ya,$9a
079c: da 9a     movw  $9a,ya
079e: eb c2     mov   y,$c2
07a0: e4 99     mov   a,$99
07a2: cf        mul   ya
07a3: dd        mov   a,y
07a4: 8d 00     mov   y,#$00
07a6: 7a 9a     addw  ya,$9a
07a8: da 9a     movw  $9a,ya
07aa: f3 c3 04  bbc7  $c3,$07b1
07ad: 9a 98     subw  ya,$98
07af: da 9a     movw  $9a,ya
07b1: f5 c1 f8  mov   a,$f8c1+x
07b4: fd        mov   y,a
07b5: f5 c0 f8  mov   a,$f8c0+x
07b8: 5a 9a     cmpw  ya,$9a
07ba: f0 0c     beq   $07c8
07bc: ba 9a     movw  ya,$9a
07be: d5 c0 f8  mov   $f8c0+x,a
07c1: dd        mov   a,y
07c2: d5 c1 f8  mov   $f8c1+x,a
07c5: 09 8f dc  or    ($dc),($8f)
07c8: f5 c1 f6  mov   a,$f6c1+x
07cb: 9c        dec   a
07cc: d0 2b     bne   $07f9
07ce: f5 c1 f7  mov   a,$f7c1+x
07d1: fd        mov   y,a
07d2: f5 c0 f7  mov   a,$f7c0+x
07d5: da 98     movw  $98,ya
07d7: e4 c1     mov   a,$c1
07d9: c4 c2     mov   $c2,a
07db: f5 90 01  mov   a,$0190+x
07de: c4 9b     mov   $9b,a
07e0: 38 70 9b  and   $9b,#$70
07e3: 28 07     and   a,#$07
07e5: 3f 61 09  call  $0961
07e8: d5 e0 f7  mov   $f7e0+x,a
07eb: dd        mov   a,y
07ec: d5 e1 f7  mov   $f7e1+x,a
07ef: e4 9a     mov   a,$9a
07f1: 04 9b     or    a,$9b
07f3: d5 90 01  mov   $0190+x,a
07f6: f5 c0 f6  mov   a,$f6c0+x
07f9: d5 c1 f6  mov   $f6c1+x,a
07fc: f5 70 01  mov   a,$0170+x
07ff: f0 5c     beq   $085d
0801: c4 a2     mov   $a2,a
0803: f5 31 01  mov   a,$0131+x
0806: d0 55     bne   $085d
0808: f5 21 f8  mov   a,$f821+x
080b: fd        mov   y,a
080c: f5 20 f8  mov   a,$f820+x
080f: da c0     movw  $c0,ya
0811: cb c2     mov   $c2,y
0813: f5 61 f8  mov   a,$f861+x
0816: fd        mov   y,a
0817: f5 60 f8  mov   a,$f860+x
081a: 7a c0     addw  ya,$c0
081c: d5 60 f8  mov   $f860+x,a
081f: dd        mov   a,y
0820: 75 61 f8  cmp   a,$f861+x
0823: f0 06     beq   $082b
0825: d5 61 f8  mov   $f861+x,a
0828: 09 8f db  or    ($db),($8f)
082b: f5 e1 f6  mov   a,$f6e1+x
082e: 9c        dec   a
082f: d0 29     bne   $085a
0831: f5 01 f8  mov   a,$f801+x
0834: fd        mov   y,a
0835: f5 00 f8  mov   a,$f800+x
0838: da 98     movw  $98,ya
083a: f5 90 01  mov   a,$0190+x
083d: c4 9b     mov   $9b,a
083f: 38 07 9b  and   $9b,#$07
0842: 9f        xcn   a
0843: 28 07     and   a,#$07
0845: 3f 61 09  call  $0961
0848: d5 20 f8  mov   $f820+x,a
084b: dd        mov   a,y
084c: d5 21 f8  mov   $f821+x,a
084f: e4 9a     mov   a,$9a
0851: 9f        xcn   a
0852: 04 9b     or    a,$9b
0854: d5 90 01  mov   $0190+x,a
0857: f5 e0 f6  mov   a,$f6e0+x
085a: d5 e1 f6  mov   $f6e1+x,a
085d: ba db     movw  ya,$db
085f: d0 01     bne   $0862
0861: 6f        ret

0862: 7d        mov   a,x
0863: 28 0f     and   a,#$0f
0865: c4 98     mov   $98,a
0867: e4 98     mov   a,$98
0869: 9f        xcn   a
086a: 5c        lsr   a
086b: c4 99     mov   $99,a
086d: e4 8f     mov   a,$8f
086f: 24 db     and   a,$db
0871: f0 06     beq   $0879
0873: 4e db 00  tclr1 $00db
0876: 3f 88 08  call  $0888
0879: e4 8f     mov   a,$8f
087b: 24 dc     and   a,$dc
087d: f0 08     beq   $0887
087f: 4e dc 00  tclr1 $00dc
0882: 22 99     set1  $99
0884: 3f 14 09  call  $0914
0887: 6f        ret

; set voice volume DSP regs
0888: 8f 80 9a  mov   $9a,#$80
088b: 03 85 23  bbs0  $85,$08b1
088e: 43 85 20  bbs2  $85,$08b1
0891: e4 8f     mov   a,$8f
0893: 24 84     and   a,$84
0895: d0 1a     bne   $08b1
0897: f5 61 f6  mov   a,$f661+x
089a: fd        mov   y,a
089b: c8 10     cmp   x,#$10
089d: 90 08     bcc   $08a7
089f: e4 b2     mov   a,$b2
08a1: 48 80     eor   a,#$80
08a3: 3f d4 0f  call  $0fd4
08a6: fd        mov   y,a
08a7: f5 81 f8  mov   a,$f881+x
08aa: 3f d4 0f  call  $0fd4
08ad: 48 ff     eor   a,#$ff
08af: c4 9a     mov   $9a,a
08b1: f5 21 f6  mov   a,$f621+x
08b4: fd        mov   y,a
08b5: c4 9b     mov   $9b,a
08b7: f5 61 f8  mov   a,$f861+x
08ba: f0 0c     beq   $08c8
08bc: 1c        asl   a
08bd: cf        mul   ya
08be: b0 08     bcs   $08c8
08c0: dd        mov   a,y
08c1: 84 9b     adc   a,$9b
08c3: 10 02     bpl   $08c7
08c5: e8 7f     mov   a,#$7f
08c7: fd        mov   y,a
08c8: c8 10     cmp   x,#$10
08ca: b0 0d     bcs   $08d9
08cc: e4 a6     mov   a,$a6
08ce: cf        mul   ya
08cf: e4 8f     mov   a,$8f
08d1: 24 61     and   a,$61
08d3: d0 11     bne   $08e6
08d5: e4 51     mov   a,$51
08d7: 2f 0c     bra   $08e5
08d9: e4 8f     mov   a,$8f
08db: 24 84     and   a,$84
08dd: f0 04     beq   $08e3
08df: e8 ff     mov   a,#$ff
08e1: 2f 02     bra   $08e5
08e3: e4 a8     mov   a,$a8
08e5: cf        mul   ya
08e6: cb 9b     mov   $9b,y
08e8: e4 9a     mov   a,$9a
08ea: fd        mov   y,a
08eb: e4 9b     mov   a,$9b
08ed: cf        mul   ya
08ee: e4 8f     mov   a,$8f
08f0: 24 a4     and   a,$a4
08f2: f0 02     beq   $08f6
08f4: 8d 00     mov   y,#$00
08f6: dd        mov   a,y
08f7: eb 98     mov   y,$98
08f9: d6 c9 00  mov   $00c9+y,a
08fc: fd        mov   y,a
08fd: e4 99     mov   a,$99
08ff: c4 f2     mov   $f2,a
0901: 7e f3     cmp   y,$f3
0903: f0 02     beq   $0907
0905: cb f3     mov   $f3,y
0907: e4 9a     mov   a,$9a
0909: 48 ff     eor   a,#$ff
090b: ea 98 00  not1  $0013,0
090e: ab 99     inc   $99
0910: 33 99 d7  bbc1  $99,$08ea
0913: 6f        ret

; set voice pitch DSP regs
0914: f5 e1 f8  mov   a,$f8e1+x
0917: fd        mov   y,a
0918: f5 e0 f8  mov   a,$f8e0+x
091b: da 9a     movw  $9a,ya
091d: f5 c1 f8  mov   a,$f8c1+x
0920: fd        mov   y,a
0921: f5 c0 f8  mov   a,$f8c0+x
0924: 7a 9a     addw  ya,$9a
0926: da 9a     movw  $9a,ya            ; YA, $9A/B = F8E0/1+X + F8C0/1+X
0928: c8 10     cmp   x,#$10
092a: 90 04     bcc   $0930
092c: ba 9a     movw  ya,$9a
092e: 2f 1b     bra   $094b
0930: e4 bc     mov   a,$bc
0932: 0d        push  psw
0933: 2d        push  a
0934: cf        mul   ya
0935: da 9c     movw  $9c,ya
0937: ae        pop   a
0938: eb 9a     mov   y,$9a
093a: cf        mul   ya
093b: dd        mov   a,y
093c: 8d 00     mov   y,#$00
093e: 7a 9c     addw  ya,$9c            ; YA = ($BC * $9A/B) >> 8
0940: 8e        pop   psw
0941: 30 08     bmi   $094b             ; branch if $BC negative
0943: 1c        asl   a
0944: 2d        push  a
0945: dd        mov   a,y
0946: 3c        rol   a
0947: fd        mov   y,a
0948: ae        pop   a                 ; ASL YA
0949: 7a 9a     addw  ya,$9a            ; final pitch value to write
094b: 4d        push  x
094c: f8 99     mov   x,$99
094e: d8 f2     mov   $f2,x
0950: 64 f3     cmp   a,$f3
0952: f0 02     beq   $0956
0954: c4 f3     mov   $f3,a             ; set DSP pitch lo from A if different
0956: 3d        inc   x
0957: d8 f2     mov   $f2,x
0959: 7e f3     cmp   y,$f3
095b: f0 02     beq   $095f
095d: cb f3     mov   $f3,y             ; set DSP pitch hi from Y if different
095f: ce        pop   x
0960: 6f        ret

0961: 8f 00 9a  mov   $9a,#$00
0964: 78 c0 a2  cmp   $a2,#$c0
0967: b0 4b     bcs   $09b4
0969: 78 80 a2  cmp   $a2,#$80
096c: b0 1f     bcs   $098d
096e: 58 ff c0  eor   $c0,#$ff
0971: 58 ff c1  eor   $c1,#$ff
0974: 3a c0     incw  $c0
0976: fd        mov   y,a
0977: f0 65     beq   $09de
0979: 9c        dec   a
097a: c4 9a     mov   $9a,a
097c: e3 c1 5f  bbs7  $c1,$09de
097f: 4b 99     lsr   $99
0981: 6b 98     ror   $98
0983: 4b 99     lsr   $99
0985: 6b 98     ror   $98
0987: ba 98     movw  ya,$98
0989: 7a c0     addw  ya,$c0
098b: 2f 53     bra   $09e0
098d: 58 ff c0  eor   $c0,#$ff
0990: 58 ff c1  eor   $c1,#$ff
0993: 3a c0     incw  $c0
0995: fd        mov   y,a
0996: f0 46     beq   $09de
0998: 9c        dec   a
0999: c4 9a     mov   $9a,a
099b: f3 c1 40  bbc7  $c1,$09de
099e: 4b 99     lsr   $99
09a0: 6b 98     ror   $98
09a2: 4b 99     lsr   $99
09a4: 6b 98     ror   $98
09a6: 58 ff 98  eor   $98,#$ff
09a9: 58 ff 99  eor   $99,#$ff
09ac: 3a 98     incw  $98
09ae: ba 98     movw  ya,$98
09b0: 7a c0     addw  ya,$c0
09b2: 2f 2c     bra   $09e0
09b4: fd        mov   y,a
09b5: f0 1f     beq   $09d6
09b7: 9c        dec   a
09b8: c4 9a     mov   $9a,a
09ba: f3 c1 08  bbc7  $c1,$09c5
09bd: 58 ff c0  eor   $c0,#$ff
09c0: 58 ff c1  eor   $c1,#$ff
09c3: 3a c0     incw  $c0
09c5: 4b 99     lsr   $99
09c7: 6b 98     ror   $98
09c9: 4b 99     lsr   $99
09cb: 6b 98     ror   $98
09cd: ba 98     movw  ya,$98
09cf: 7a c0     addw  ya,$c0
09d1: da c0     movw  $c0,ya
09d3: e3 c2 08  bbs7  $c2,$09de
09d6: 58 ff c0  eor   $c0,#$ff
09d9: 58 ff c1  eor   $c1,#$ff
09dc: 3a c0     incw  $c0
09de: ba c0     movw  ya,$c0
09e0: 6f        ret

; check for, process command from CPU
09e1: f8 f4     mov   x,$f4             ; check 2140
09e3: f0 35     beq   $0a1a             ; return if zero
09e5: f8 f4     mov   x,$f4
09e7: 3e f4     cmp   x,$f4
09e9: d0 fa     bne   $09e5             ; wait for 2140 to go zero again
09eb: ba f6     movw  ya,$f6
09ed: da 8d     movw  $8d,ya
09ef: ba f4     movw  ya,$f4
09f1: da 8b     movw  $8b,ya            ; move 2140/1/2/3 to $8B/C/D/E
09f3: 3f 4d 06  call  $064d             ; clear read regs 2140/1
09f6: c4 f4     mov   $f4,a
09f8: 5d        mov   x,a
09f9: 10 03     bpl   $09fe
09fb: 5f 54 0c  jmp   $0c54             ; if X >= 80, JMP 0C54

09fe: c8 10     cmp   x,#$10
0a00: 90 18     bcc   $0a1a
0a02: c8 20     cmp   x,#$20
0a04: b0 0d     bcs   $0a13
0a06: 28 0f     and   a,#$0f            ; if 10 < X < 20,
0a08: 1c        asl   a
0a09: fd        mov   y,a
0a0a: f6 36 19  mov   a,$1936+y
0a0d: 2d        push  a
0a0e: f6 35 19  mov   a,$1935+y
0a11: 2d        push  a
0a12: 6f        ret                     ; jmp via tbl at 1935

0a13: c8 30     cmp   x,#$30
0a15: b0 03     bcs   $0a1a
0a17: 5f f1 0b  jmp   $0bf1             ; 20 < X < 30 then JMP 0BF1

0a1a: 6f        ret

; process CPU cmd $14
0a1b: 3f 54 10  call  $1054
; process CPU cmd $10
0a1e: 8f 10 c4  mov   $c4,#$10
0a21: 2f 06     bra   $0a29
; process CPU cmd $15
0a23: 3f 54 10  call  $1054
; process CPU cmd $11
0a26: 8f 20 c4  mov   $c4,#$20
0a29: e8 ff     mov   a,#$ff
0a2b: 8d 5c     mov   y,#$5c
0a2d: 3f 48 06  call  $0648             ; key off all voices
0a30: e4 76     mov   a,$76
0a32: fa 8c c7  mov   ($c7),($8c)       ; store song # in C7
0a35: e4 8d     mov   a,$8d
0a37: c4 a6     mov   $a6,a
0a39: 8f 00 ad  mov   $ad,#$00
0a3c: 3f 38 0e  call  $0e38             ; download song info (like FE cmd)
0a3f: e8 00     mov   a,#$00
0a41: fd        mov   y,a
0a42: da 83     movw  $83,ya            ; zero $83
0a44: b2 86     clr5  $86               ; clear bit 5 of $86
0a46: 72 85     clr3  $85               ; clear bit 3 of $85
0a48: da d9     movw  $d9,ya            ; zero $D9
0a4a: c4 dd     mov   $dd,a             ; zero $DD
0a4c: 69 c7 c6  cmp   ($c6),($c7)
0a4f: d0 41     bne   $0a92             ; is this the saved song?
0a51: 3f 95 10  call  $1095             ; restore saved state
0a54: e4 52     mov   a,$52
0a56: f0 3a     beq   $0a92
0a58: 38 e0 8a  and   $8a,#$e0
0a5b: 09 62 8a  or    ($8a),($62)
0a5e: cd 00     mov   x,#$00
0a60: 8f 01 8f  mov   $8f,#$01
0a63: bb 25     inc   $25+x
0a65: d8 a3     mov   $a3,x
0a67: 3f 29 15  call  $1529
0a6a: 7d        mov   a,x
0a6b: 9f        xcn   a
0a6c: 5c        lsr   a
0a6d: fd        mov   y,a               ; get voice x/2 DSP addr to Y
0a6e: e8 00     mov   a,#$00
0a70: 3f 48 06  call  $0648             ; set voice volume L to 0
0a73: fc        inc   y
0a74: 3f 48 06  call  $0648             ; set voice volume R to 0
0a77: fc        inc   y
0a78: cb 99     mov   $99,y
0a7a: 3f 14 09  call  $0914
0a7d: 3d        inc   x
0a7e: 3d        inc   x
0a7f: 0b 8f     asl   $8f
0a81: d0 e0     bne   $0a63
0a83: e8 00     mov   a,#$00
0a85: c4 54     mov   $54,a
0a87: c4 56     mov   $56,a
0a89: c4 58     mov   $58,a
0a8b: fa 23 22  mov   ($22),($23)
0a8e: c4 24     mov   $24,a
0a90: 2f 6a     bra   $0afc
0a92: e8 00     mov   a,#$00
0a94: fd        mov   y,a
0a95: c4 52     mov   $52,a
0a97: da 53     movw  $53,ya
0a99: da 55     movw  $55,ya
0a9b: da 57     movw  $57,ya
0a9d: c4 22     mov   $22,a             ; zero key-on shadow
0a9f: c4 24     mov   $24,a             ; zero key-off shadow
0aa1: c4 23     mov   $23,a
0aa3: c4 59     mov   $59,a
0aa5: c4 5b     mov   $5b,a
0aa7: c4 5f     mov   $5f,a
0aa9: c4 61     mov   $61,a
0aab: 8f 01 46  mov   $46,#$01
0aae: 8f ff 47  mov   $47,#$ff
0ab1: 8f ff 51  mov   $51,#$ff
0ab4: c4 7b     mov   $7b,a
0ab6: eb c4     mov   y,$c4             ; #$10 or #$20 for cmd $10 or $11
0ab8: cd 10     mov   x,#$10
0aba: f6 03 1c  mov   a,$1c03+y
0abd: d4 01     mov   $01+x,a
0abf: dc        dec   y
0ac0: 1d        dec   x
0ac1: d0 f7     bne   $0aba             ; copy 1C04 or 1C14-x to 02-11
0ac3: e5 00 1c  mov   a,$1c00
0ac6: c4 00     mov   $00,a
0ac8: e5 01 1c  mov   a,$1c01
0acb: c4 01     mov   $01,a             ; copy 1C00/1 to 00/01
0acd: e8 24     mov   a,#$24
0acf: 8d 1c     mov   y,#$1c
0ad1: 9a 00     subw  ya,$00
0ad3: da 00     movw  $00,ya            ; $00 = #$1C24 - $00
0ad5: cd 0e     mov   x,#$0e
0ad7: 8f 80 8f  mov   $8f,#$80
0ada: e5 02 1c  mov   a,$1c02
0add: ec 03 1c  mov   y,$1c03
0ae0: da 98     movw  $98,ya            ; $98/9 = $1C02/3
0ae2: f4 02     mov   a,$02+x
0ae4: fb 03     mov   y,$03+x
0ae6: 5a 98     cmpw  ya,$98
0ae8: f0 0c     beq   $0af6
0aea: 09 8f 52  or    ($52),($8f)       ; set bit in $52 if voice active
0aed: 7a 00     addw  ya,$00
0aef: d4 02     mov   $02+x,a
0af1: db 03     mov   $03+x,y           ; add $00 to $02+X
0af3: 3f 12 0b  call  $0b12             ; init per-voice data
0af6: 1d        dec   x
0af7: 1d        dec   x
0af8: 4b 8f     lsr   $8f
0afa: d0 e6     bne   $0ae2             ; loop for each voice
0afc: fa 53 87  mov   ($87),($53)       ; DSP shadow for echo enable
0aff: fa 55 88  mov   ($88),($55)       ; DSP shadow for noise enable
0b02: fa 57 89  mov   ($89),($57)       ; DSP shadow for pitchmod
0b05: e8 00     mov   a,#$00
0b07: fd        mov   y,a
0b08: da db     movw  $db,ya            ; zero word $DB
0b0a: cd ff     mov   x,#$ff
0b0c: bd        mov   sp,x              ; reset stack ptr to $01FF
0b0d: e4 fd     mov   a,$fd             ; clear counter0
0b0f: 5f 72 02  jmp   $0272             ; jump back to main loop

0b12: 7d        mov   a,x
0b13: 1c        asl   a
0b14: d4 26     mov   $26+x,a
0b16: e8 00     mov   a,#$00
0b18: d5 50 01  mov   $0150+x,a
0b1b: d5 80 f7  mov   $f780+x,a
0b1e: d5 81 f7  mov   $f781+x,a
0b21: d5 a0 f8  mov   $f8a0+x,a
0b24: d5 51 01  mov   $0151+x,a
0b27: d5 70 01  mov   $0170+x,a
0b2a: d5 71 01  mov   $0171+x,a
0b2d: d5 80 f8  mov   $f880+x,a
0b30: d5 81 f8  mov   $f881+x,a
0b33: d5 60 f7  mov   $f760+x,a
0b36: d5 21 f7  mov   $f721+x,a
0b39: bc        inc   a
0b3a: d4 25     mov   $25+x,a
0b3c: 6f        ret

; process CPU cmd $18
0b3d: ba d9     movw  ya,$d9
0b3f: f0 01     beq   $0b42
0b41: 6f        ret

0b42: fa 8c 90  mov   ($90),($8c)
0b45: 8f 00 91  mov   $91,#$00
0b48: 0b 90     asl   $90
0b4a: 2b 91     rol   $91
0b4c: 0b 90     asl   $90
0b4e: 2b 91     rol   $91
0b50: e8 00     mov   a,#$00
0b52: 8d 2c     mov   y,#$2c
0b54: 7a 90     addw  ya,$90
0b56: da 90     movw  $90,ya
0b58: cd 1e     mov   x,#$1e
0b5a: 8f 80 8f  mov   $8f,#$80
0b5d: e4 83     mov   a,$83
0b5f: d0 04     bne   $0b65
0b61: e4 84     mov   a,$84
0b63: 48 f0     eor   a,#$f0
0b65: c4 a1     mov   $a1,a
0b67: e4 a1     mov   a,$a1
0b69: 24 8f     and   a,$8f
0b6b: d0 07     bne   $0b74
0b6d: 4b 8f     lsr   $8f
0b6f: 1d        dec   x
0b70: 1d        dec   x
0b71: b3 8f f3  bbc5  $8f,$0b67
0b74: 8d 03     mov   y,#$03
0b76: 8f 00 a1  mov   $a1,#$00
0b79: f7 90     mov   a,($90)+y
0b7b: f0 35     beq   $0bb2
0b7d: d4 03     mov   $03+x,a
0b7f: dc        dec   y
0b80: f7 90     mov   a,($90)+y
0b82: d4 02     mov   $02+x,a
0b84: 09 8f a1  or    ($a1),($8f)
0b87: 3f 12 0b  call  $0b12
0b8a: bb 25     inc   $25+x
0b8c: e8 41     mov   a,#$41
0b8e: d5 21 f6  mov   $f621+x,a
0b91: e8 80     mov   a,#$80
0b93: d5 61 f6  mov   $f661+x,a
0b96: e8 03     mov   a,#$03
0b98: d5 00 f6  mov   $f600+x,a
0b9b: e8 00     mov   a,#$00
0b9d: d5 a0 f6  mov   $f6a0+x,a
0ba0: d5 a1 f6  mov   $f6a1+x,a
0ba3: 6d        push  y
0ba4: 3f 72 17  call  $1772
0ba7: e8 04     mov   a,#$04
0ba9: 3f 02 15  call  $1502
0bac: ee        pop   y
0bad: 1d        dec   x
0bae: 1d        dec   x
0baf: 4b 8f     lsr   $8f
0bb1: e8 dc     mov   a,#$dc
0bb3: dc        dec   y
0bb4: 10 c3     bpl   $0b79
0bb6: e4 83     mov   a,$83
0bb8: 04 a1     or    a,$a1
0bba: 4e 22 00  tclr1 $0022
0bbd: 4e 5a 00  tclr1 $005a
0bc0: 4e 5c 00  tclr1 $005c
0bc3: 4e 60 00  tclr1 $0060
0bc6: 0e 24 00  tset1 $0024
0bc9: fa 83 a2  mov   ($a2),($83)
0bcc: cd 1e     mov   x,#$1e
0bce: 8f 80 8f  mov   $8f,#$80
0bd1: 0b a2     asl   $a2
0bd3: 90 03     bcc   $0bd8
0bd5: 3f 72 17  call  $1772
0bd8: 1d        dec   x
0bd9: 1d        dec   x
0bda: 4b 8f     lsr   $8f
0bdc: 73 8f f2  bbc3  $8f,$0bd1
0bdf: e4 a1     mov   a,$a1
0be1: c4 83     mov   $83,a
0be3: 4e 87 00  tclr1 $0087
0be6: 4e 89 00  tclr1 $0089
0be9: 4e 88 00  tclr1 $0088
0bec: e4 8d     mov   a,$8d
0bee: c4 b2     mov   $b2,a
0bf0: 6f        ret

; process CPU cmds $20-2F
0bf1: ba d9     movw  ya,$d9
0bf3: d0 5e     bne   $0c53
0bf5: 7d        mov   a,x
0bf6: 28 0f     and   a,#$0f
0bf8: 1c        asl   a
0bf9: fd        mov   y,a
0bfa: cd 20     mov   x,#$20
0bfc: e4 83     mov   a,$83
0bfe: 04 84     or    a,$84
0c00: 28 f0     and   a,#$f0
0c02: 8f 80 8f  mov   $8f,#$80
0c05: 68 f0     cmp   a,#$f0
0c07: f0 0c     beq   $0c15
0c09: 1d        dec   x
0c0a: 1d        dec   x
0c0b: 1c        asl   a
0c0c: 90 14     bcc   $0c22
0c0e: 4b 8f     lsr   $8f
0c10: 73 8f f6  bbc3  $8f,$0c09
0c13: 2f 0d     bra   $0c22
0c15: 1d        dec   x
0c16: 1d        dec   x
0c17: e4 84     mov   a,$84
0c19: 24 8f     and   a,$8f
0c1b: d0 05     bne   $0c22
0c1d: 4b 8f     lsr   $8f
0c1f: 73 8f f3  bbc3  $8f,$0c15
0c22: f6 e0 17  mov   a,$17e0+y
0c25: f0 2c     beq   $0c53
0c27: d4 03     mov   $03+x,a
0c29: f6 df 17  mov   a,$17df+y
0c2c: d4 02     mov   $02+x,a
0c2e: 3f 12 0b  call  $0b12
0c31: bb 25     inc   $25+x
0c33: 3f 72 17  call  $1772
0c36: e4 8f     mov   a,$8f
0c38: 4e 5a 00  tclr1 $005a
0c3b: 4e 5c 00  tclr1 $005c
0c3e: 4e 60 00  tclr1 $0060
0c41: 0e 24 00  tset1 $0024
0c44: 4e 22 00  tclr1 $0022
0c47: 4e 87 00  tclr1 $0087
0c4a: 4e 89 00  tclr1 $0089
0c4d: 4e 88 00  tclr1 $0088
0c50: 09 8f 84  or    ($84),($8f)
0c53: 6f        ret

; process CPU cmds >= $80
0c54: c8 f0     cmp   x,#$f0
0c56: b0 04     bcs   $0c5c
0c58: c8 90     cmp   x,#$90
0c5a: b0 0d     bcs   $0c69             ; return if 90 <= X < F0
0c5c: 7d        mov   a,x
0c5d: 28 1f     and   a,#$1f
0c5f: 1c        asl   a
0c60: fd        mov   y,a
0c61: f6 56 19  mov   a,$1956+y
0c64: 2d        push  a
0c65: f6 55 19  mov   a,$1955+y
0c68: 2d        push  a                 ; jmp to tbl at 1955,X
0c69: 6f        ret

; process CPU cmds 80-82
0c6a: e4 8b     mov   a,$8b
0c6c: 68 82     cmp   a,#$82
0c6e: b0 06     bcs   $0c76
0c70: eb 8d     mov   y,$8d
0c72: d0 02     bne   $0c76
0c74: 80        setc
0c75: 8d 60     mov   y,#$60            ; "skip" next instruction
0c77: ca 85 60  mov1  $0c10,5,c
0c7a: cd 00     mov   x,#$00
0c7c: 13 8b 03  bbc0  $8b,$0c82
0c7f: bc        inc   a
0c80: 2f 0d     bra   $0c8f
0c82: 33 8b 05  bbc1  $8b,$0c8a
0c85: bc        inc   a
0c86: cd 02     mov   x,#$02
0c88: 2f 05     bra   $0c8f
0c8a: ab 8b     inc   $8b
0c8c: 60        clrc
0c8d: 88 03     adc   a,#$03
0c8f: c4 98     mov   $98,a
0c91: eb 8d     mov   y,$8d
0c93: e4 8c     mov   a,$8c
0c95: d4 ad     mov   $ad+x,a
0c97: d0 0a     bne   $0ca3
0c99: db a6     mov   $a6+x,y
0c9b: d4 a5     mov   $a5+x,a
0c9d: d4 aa     mov   $aa+x,a
0c9f: d4 a9     mov   $a9+x,a
0ca1: 2f 13     bra   $0cb6
0ca3: dd        mov   a,y
0ca4: 80        setc
0ca5: b4 a6     sbc   a,$a6+x
0ca7: f0 ec     beq   $0c95
0ca9: 4d        push  x
0caa: 3f c5 0c  call  $0cc5
0cad: ce        pop   x
0cae: d4 a9     mov   $a9+x,a
0cb0: db aa     mov   $aa+x,y
0cb2: e8 00     mov   a,#$00
0cb4: d4 a5     mov   $a5+x,a
0cb6: ab 8b     inc   $8b
0cb8: 69 98 8b  cmp   ($8b),($98)
0cbb: f0 04     beq   $0cc1
0cbd: 3d        inc   x
0cbe: 3d        inc   x
0cbf: 2f d0     bra   $0c91
0cc1: 8f ff db  mov   $db,#$ff
0cc4: 6f        ret

; divide (deltas)
0cc5: 0d        push  psw
0cc6: b0 03     bcs   $0ccb
0cc8: 48 ff     eor   a,#$ff
0cca: bc        inc   a
0ccb: f8 8c     mov   x,$8c
0ccd: 8d 00     mov   y,#$00
0ccf: 9e        div   ya,x
0cd0: c4 c1     mov   $c1,a
0cd2: e8 00     mov   a,#$00
0cd4: 9e        div   ya,x
0cd5: c4 c0     mov   $c0,a
0cd7: 8e        pop   psw
0cd8: b0 08     bcs   $0ce2
0cda: 58 ff c0  eor   $c0,#$ff
0cdd: 58 ff c1  eor   $c1,#$ff
0ce0: 3a c0     incw  $c0
0ce2: ba c0     movw  ya,$c0
0ce4: 6f        ret

; process CPU cmd $83
0ce5: eb 8d     mov   y,$8d
0ce7: e4 8c     mov   a,$8c
0ce9: c4 b5     mov   $b5,a
0ceb: d0 0a     bne   $0cf7
0ced: cb b2     mov   $b2,y
0cef: c4 b1     mov   $b1,a
0cf1: c4 b4     mov   $b4,a
0cf3: c4 b3     mov   $b3,a
0cf5: 2f 0e     bra   $0d05
0cf7: dd        mov   a,y
0cf8: 80        setc
0cf9: a4 b2     sbc   a,$b2
0cfb: f0 ec     beq   $0ce9
0cfd: 3f c5 0c  call  $0cc5
0d00: da b3     movw  $b3,ya
0d02: 8f 00 b1  mov   $b1,#$00
0d05: 8f ff db  mov   $db,#$ff
0d08: 6f        ret

; process CPU cmd $84
0d09: eb 8d     mov   y,$8d
0d0b: e4 8c     mov   a,$8c
0d0d: c4 ba     mov   $ba,a
0d0f: d0 0a     bne   $0d1b
0d11: cb b7     mov   $b7,y
0d13: c4 b6     mov   $b6,a
0d15: c4 b9     mov   $b9,a
0d17: c4 b8     mov   $b8,a
0d19: 2f 16     bra   $0d31
0d1b: fa b7 a2  mov   ($a2),($b7)
0d1e: 58 80 a2  eor   $a2,#$80
0d21: dd        mov   a,y
0d22: 48 80     eor   a,#$80
0d24: 80        setc
0d25: a4 a2     sbc   a,$a2
0d27: f0 e4     beq   $0d0d
0d29: 3f c5 0c  call  $0cc5
0d2c: da b8     movw  $b8,ya
0d2e: 8f 00 b6  mov   $b6,#$00
0d31: 8f ff dc  mov   $dc,#$ff
0d34: 6f        ret

; process CPU cmd $85
0d35: eb 8d     mov   y,$8d
0d37: e4 8c     mov   a,$8c
0d39: c4 bf     mov   $bf,a
0d3b: d0 0a     bne   $0d47
0d3d: cb bc     mov   $bc,y
0d3f: c4 bb     mov   $bb,a
0d41: c4 be     mov   $be,a
0d43: c4 bd     mov   $bd,a
0d45: 2f 16     bra   $0d5d
0d47: fa bc a2  mov   ($a2),($bc)
0d4a: 58 80 a2  eor   $a2,#$80
0d4d: dd        mov   a,y
0d4e: 48 80     eor   a,#$80
0d50: 80        setc
0d51: a4 a2     sbc   a,$a2
0d53: f0 e4     beq   $0d39
0d55: 3f c5 0c  call  $0cc5
0d58: da bd     movw  $bd,ya
0d5a: 8f 00 bb  mov   $bb,#$00
0d5d: 8f ff dc  mov   $dc,#$ff
0d60: 6f        ret

; process CPU cmd $F3
0d61: e4 8c     mov   a,$8c
0d63: d0 04     bne   $0d69
0d65: 12 85     clr0  $85
0d67: 2f 02     bra   $0d6b
0d69: 02 85     set0  $85
0d6b: 8f ff db  mov   $db,#$ff
0d6e: 6f        ret

; process CPU cmd $F0-F2
0d6f: 23 8b 2d  bbs1  $8b,$0d9f
0d72: e4 83     mov   a,$83
0d74: 04 84     or    a,$84
0d76: 48 ff     eor   a,#$ff
0d78: 0e 24 00  tset1 $0024
0d7b: 4e 22 00  tclr1 $0022
0d7e: 4e 87 00  tclr1 $0087
0d81: 4e 89 00  tclr1 $0089
0d84: 4e 88 00  tclr1 $0088
0d87: e8 00     mov   a,#$00
0d89: c4 52     mov   $52,a
0d8b: c4 d9     mov   $d9,a
0d8d: c4 53     mov   $53,a
0d8f: c4 57     mov   $57,a
0d91: c4 55     mov   $55,a
0d93: c4 a0     mov   $a0,a
0d95: 9c        dec   a
0d96: c4 c6     mov   $c6,a
0d98: c4 c7     mov   $c7,a
0d9a: 72 85     clr3  $85
0d9c: 03 8b 23  bbs0  $8b,$0dc2
0d9f: e4 83     mov   a,$83
0da1: 0e 24 00  tset1 $0024
0da4: 4e 22 00  tclr1 $0022
0da7: 4e db 00  tclr1 $00db
0daa: 4e dc 00  tclr1 $00dc
0dad: c4 a1     mov   $a1,a
0daf: cd 1e     mov   x,#$1e
0db1: 8f 80 8f  mov   $8f,#$80
0db4: 0b a1     asl   $a1
0db6: 90 03     bcc   $0dbb
0db8: 3f 72 17  call  $1772
0dbb: 1d        dec   x
0dbc: 1d        dec   x
0dbd: 4b 8f     lsr   $8f
0dbf: 73 8f f2  bbc3  $8f,$0db4
0dc2: 6f        ret

; process CPU cmd $F4
0dc3: fa 8c a4  mov   ($a4),($8c)
0dc6: 8f ff db  mov   $db,#$ff
0dc9: 6f        ret

; process CPU cmd $F5 - stop all voices.
0dca: e4 8c     mov   a,$8c
0dcc: f0 48     beq   $0e16
0dce: 8d 05     mov   y,#$05
0dd0: cb f2     mov   $f2,y
0dd2: e4 f3     mov   a,$f3
0dd4: 28 7f     and   a,#$7f
0dd6: c4 f3     mov   $f3,a
0dd8: dd        mov   a,y
0dd9: 60        clrc
0dda: 88 10     adc   a,#$10
0ddc: fd        mov   y,a
0ddd: 10 f1     bpl   $0dd0             ; set GAIN mode on all voices
0ddf: cd 00     mov   x,#$00
0de1: 8d 00     mov   y,#$00
0de3: cb f2     mov   $f2,y
0de5: d8 f3     mov   $f3,x
0de7: fc        inc   y
0de8: cb f2     mov   $f2,y
0dea: d8 f3     mov   $f3,x
0dec: dd        mov   a,y
0ded: 60        clrc
0dee: 88 0f     adc   a,#$0f
0df0: fd        mov   y,a
0df1: 10 f0     bpl   $0de3             ; set all voice volumes to 0
0df3: fa 52 98  mov   ($98),($52)
0df6: fa 83 99  mov   ($99),($83)
0df9: ba 98     movw  ya,$98
0dfb: f0 0a     beq   $0e07
0dfd: da d9     movw  $d9,ya
0dff: e8 00     mov   a,#$00
0e01: c4 52     mov   $52,a             ; no active voices
0e03: c4 83     mov   $83,a
0e05: c4 db     mov   $db,a
0e07: c4 22     mov   $22,a             ; zero key-on shadow
0e09: 8d 10     mov   y,#$10
0e0b: d6 c8 00  mov   $00c8+y,a
0e0e: fe fb     dbnz  y,$0e0b
0e10: cd ff     mov   x,#$ff
0e12: bd        mov   sp,x              ; set stack ptr to $01FF
0e13: 5f 72 02  jmp   $0272             ; restart main loop

0e16: 8d 05     mov   y,#$05
0e18: cb f2     mov   $f2,y
0e1a: e4 f3     mov   a,$f3
0e1c: 08 80     or    a,#$80
0e1e: c4 f3     mov   $f3,a
0e20: dd        mov   a,y
0e21: 60        clrc
0e22: 88 10     adc   a,#$10
0e24: fd        mov   y,a
0e25: 10 f1     bpl   $0e18             ; set ADSR mode on all voices
0e27: ba d9     movw  ya,$d9
0e29: f0 0c     beq   $0e37
0e2b: 8f ff db  mov   $db,#$ff
0e2e: c4 52     mov   $52,a
0e30: cb 83     mov   $83,y
0e32: e8 00     mov   a,#$00
0e34: fd        mov   y,a
0e35: da d9     movw  $d9,ya
0e37: 6f        ret

; process CPU cmd $FE
0e38: f8 f4     mov   x,$f4
0e3a: f0 fc     beq   $0e38
0e3c: 3e f4     cmp   x,$f4
0e3e: d0 f8     bne   $0e38
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
0e5e: f6 a0 11  mov   a,$11a0+y
0e61: 2d        push  a
0e62: f6 9f 11  mov   a,$119f+y
0e65: 2d        push  a                 ; put subcmd addr on stack
0e66: 3e f4     cmp   x,$f4
0e68: f0 fc     beq   $0e66
0e6a: f8 f4     mov   x,$f4
0e6c: 3e f4     cmp   x,$f4
0e6e: d0 fa     bne   $0e6a
0e70: 6f        ret

0e71: d8 f4     mov   $f4,x             ; write back $F4
0e73: 5f 4d 06  jmp   $064d             ; clear f4/f5 read regs

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
0eac: 5f a3 0f  jmp   $0fa3

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
0ee0: 5f a3 0f  jmp   $0fa3

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
0f0d: 5f a3 0f  jmp   $0fa3

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
0f2b: 5f a3 0f  jmp   $0fa3

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
0f7c: 5f a3 0f  jmp   $0fa3

0f7f: 80        setc
0f80: 8d 60     mov   y,#$60
0f82: 6f        ret

; process CPU cmd $F6
0f83: e4 8c     mov   a,$8c
0f85: 60        clrc
0f86: 88 ff     adc   a,#$ff
0f88: ca 86 a0  mov1  $1410,6,c
0f8b: b0 04     bcs   $0f91
0f8d: e8 27     mov   a,#$27
0f8f: 2f 02     bra   $0f93
0f91: e8 01     mov   a,#$01
0f93: 8f 06 f1  mov   $f1,#$06
0f96: c4 fa     mov   $fa,a
0f98: 8f 07 f1  mov   $f1,#$07
0f9b: 6f        ret

; process CPU cmd $89
0f9c: fa 52 dd  mov   ($dd),($52)
0f9f: fa 52 f6  mov   ($f6),($52)
0fa2: 6f        ret

; process CPU cmd $FF - reset
0fa3: e4 8c     mov   a,$8c
0fa5: 68 01     cmp   a,#$01
0fa7: d0 0a     bne   $0fb3
0fa9: e4 8d     mov   a,$8d
0fab: 60        clrc
0fac: 88 ff     adc   a,#$ff
0fae: ca 86 e0  mov1  $1c10,6,c
0fb1: 2f 1f     bra   $0fd2
0fb3: 68 02     cmp   a,#$02
0fb5: d0 0a     bne   $0fc1
0fb7: e4 8d     mov   a,$8d
0fb9: 60        clrc
0fba: 88 ff     adc   a,#$ff
0fbc: ca 86 c0  mov1  $1810,6,c
0fbf: 2f 11     bra   $0fd2
0fc1: 68 f0     cmp   a,#$f0
0fc3: d0 0d     bne   $0fd2
0fc5: e8 e0     mov   a,#$e0
0fc7: 8d 6c     mov   y,#$6c
0fc9: 3f 48 06  call  $0648             ; do soft reset
0fcc: 8f 80 f1  mov   $f1,#$80
0fcf: 5f c0 ff  jmp   $ffc0             ; jump back to master "OS" recv

0fd2: 6f        ret

0fd3: 6f        ret

; (Y=balance, A=F881+X or $B2 ^ #$80)
0fd4: c4 c0     mov   $c0,a
0fd6: dd        mov   a,y
0fd7: 60        clrc
0fd8: 84 c0     adc   a,$c0
0fda: e3 c0 06  bbs7  $c0,$0fe3         ; branch FE3 if C0 negative
0fdd: 90 08     bcc   $0fe7
0fdf: e8 ff     mov   a,#$ff
0fe1: 2f 04     bra   $0fe7
0fe3: b0 02     bcs   $0fe7
0fe5: e8 00     mov   a,#$00
0fe7: 6f        ret

; process CPU cmd $FD
; write $8D ($F6) to DSP register $8C ($F5)
0fe8: eb 8c     mov   y,$8c
0fea: e4 8d     mov   a,$8d
0fec: 5f 48 06  jmp   $0648

; delay for (X) timer1 periods
0fef: 8f 05 f1  mov   $f1,#$05          ; stop timer1
0ff2: e4 fe     mov   a,$fe             ; clear counter1
0ff4: 8f 07 f1  mov   $f1,#$07          ; start timer1
0ff7: e8 00     mov   a,#$00
0ff9: eb fe     mov   y,$fe
0ffb: f0 fc     beq   $0ff9             ; wait for timer1 to increment
0ffd: bc        inc   a
0ffe: 66        cmp   a,(x)
0fff: d0 f8     bne   $0ff9             ; loop (X) times
1001: 6f        ret

; process CPU cmd $FC
; set echo delay/start from $8C low nybble, enable echo, $52->$4D if nonzero
1002: 38 0f 8c  and   $8c,#$0f
1005: fa 8c 80  mov   ($80),($8c)
1008: 3f 15 10  call  $1015             ; set echo delay time/start from $8C
100b: 3f 41 10  call  $1041             ; enable echo
100e: e4 52     mov   a,$52
1010: d0 02     bne   $1014
1012: c4 4d     mov   $4d,a             ; move $52 to $4D if nonzero
1014: 6f        ret

; set echo delay time/start addr from $80, delay till old echo done
1015: 8f 6c f2  mov   $f2,#$6c
1018: e4 f3     mov   a,$f3
101a: 08 20     or    a,#$20
101c: c4 f3     mov   $f3,a             ; DSP FLG bit ECEN on (disable echo?)
101e: 8d 7d     mov   y,#$7d
1020: cb f2     mov   $f2,y
1022: e4 f3     mov   a,$f3
1024: 28 0f     and   a,#$0f
1026: c4 81     mov   $81,a             ; move DSP echo delay to $81
1028: e4 80     mov   a,$80
102a: 3f 48 06  call  $0648             ; set DSP echo delay from $80
102d: 1c        asl   a
102e: 1c        asl   a
102f: 1c        asl   a
1030: 48 ff     eor   a,#$ff
1032: bc        inc   a
1033: 60        clrc
1034: 88 f5     adc   a,#$f5
1036: 8d 6d     mov   y,#$6d
1038: 3f 48 06  call  $0648             ; set echo start addr to #$F5 - ($80 * 8)
103b: cd 81     mov   x,#$81
103d: 3f ef 0f  call  $0fef             ; delay ($81) timer1 periods
1040: 6f        ret

; enable echo after delaying $80 echo periods if nonzero
1041: e4 80     mov   a,$80
1043: f0 05     beq   $104a
1045: cd 80     mov   x,#$80
1047: 3f ef 0f  call  $0fef             ; delay $80 timer1 periods
104a: 8f 6c f2  mov   $f2,#$6c
104d: e4 f3     mov   a,$f3
104f: 28 df     and   a,#$df
1051: c4 f3     mov   $f3,a             ; enable echo
1053: 6f        ret

; save some state?
1054: 78 2f c7  cmp   $c7,#$2f
1057: f0 3b     beq   $1094             ; don't do it for song $2F
1059: fa c7 c6  mov   ($c6),($c7)       ; save song #
105c: e8 00     mov   a,#$00
105e: c4 90     mov   $90,a
1060: e8 f6     mov   a,#$f6
1062: c4 91     mov   $91,a
1064: e8 00     mov   a,#$00            ; set $90 to #$F600
1066: c4 92     mov   $92,a
1068: e8 fa     mov   a,#$fa
106a: c4 93     mov   $93,a             ; set $92 to #$FA00
106c: 8d 00     mov   y,#$00
106e: f7 90     mov   a,($90)+y
1070: d7 92     mov   ($92)+y,a
1072: fc        inc   y
1073: d0 f9     bne   $106e
1075: ab 91     inc   $91
1077: ab 93     inc   $93
1079: 78 fa 91  cmp   $91,#$fa
107c: d0 f0     bne   $106e             ; move $F600-F9FF to $FA00-FDFF
107e: 1a 92     decw  $92
1080: 8d 80     mov   y,#$80
1082: f6 ff ff  mov   a,$ffff+y
1085: d7 92     mov   ($92)+y,a
1087: fe f9     dbnz  y,$1082
1089: ab 93     inc   $93
108b: 8d a0     mov   y,#$a0
108d: f6 ff 00  mov   a,$00ff+y
1090: d7 92     mov   ($92)+y,a
1092: fe f9     dbnz  y,$108d
1094: 6f        ret

; restore some state?
1095: 8f ff c6  mov   $c6,#$ff
1098: e8 00     mov   a,#$00
109a: c4 90     mov   $90,a
109c: e8 f6     mov   a,#$f6
109e: c4 91     mov   $91,a
10a0: e8 00     mov   a,#$00
10a2: c4 92     mov   $92,a
10a4: e8 fa     mov   a,#$fa
10a6: c4 93     mov   $93,a
10a8: 8d 00     mov   y,#$00
10aa: f7 92     mov   a,($92)+y
10ac: d7 90     mov   ($90)+y,a
10ae: fc        inc   y
10af: d0 f9     bne   $10aa
10b1: ab 91     inc   $91
10b3: ab 93     inc   $93
10b5: 78 fa 91  cmp   $91,#$fa
10b8: d0 f0     bne   $10aa
10ba: 1a 92     decw  $92
10bc: 8d 80     mov   y,#$80
10be: f7 92     mov   a,($92)+y
10c0: d6 ff ff  mov   $ffff+y,a
10c3: fe f9     dbnz  y,$10be
10c5: ab 93     inc   $93
10c7: 8d a0     mov   y,#$a0
10c9: f7 92     mov   a,($92)+y
10cb: d6 ff 00  mov   $00ff+y,a
10ce: fe f9     dbnz  y,$10c9
10d0: 8f 81 8b  mov   $8b,#$81
10d3: 8f 10 8c  mov   $8c,#$10
10d6: 8f ff 8d  mov   $8d,#$ff
10d9: 8f 20 a6  mov   $a6,#$20
10dc: 5f 6a 0c  jmp   $0c6a             ; simulate $81 cmd

; read wave heights, put in APU regs
10df: e8 98     mov   a,#$98
10e1: c4 9d     mov   $9d,a
10e3: e8 c9     mov   a,#$c9
10e5: 8f 00 a1  mov   $a1,#$00
10e8: 83 86 05  bbs4  $86,$10f0
10eb: 8f 09 8f  mov   $8f,#$09
10ee: 2f 08     bra   $10f8
10f0: 8f 49 8f  mov   $8f,#$49
10f3: 60        clrc
10f4: 88 08     adc   a,#$08
10f6: e2 a1     set7  $a1
10f8: c4 9e     mov   $9e,a
10fa: 60        clrc
10fb: 88 08     adc   a,#$08
10fd: c4 a0     mov   $a0,a
10ff: f8 9e     mov   x,$9e
1101: eb 8f     mov   y,$8f
1103: cb f2     mov   $f2,y
1105: eb f3     mov   y,$f3             ; read wave height for voice 8F
1107: 6d        push  y
1108: bf        mov   a,(x)+
1109: 1c        asl   a
110a: cf        mul   ya
110b: dd        mov   a,y
110c: 28 70     and   a,#$70
110e: c4 9c     mov   $9c,a
1110: ee        pop   y
1111: bf        mov   a,(x)+
1112: 1c        asl   a
1113: cf        mul   ya
1114: dd        mov   a,y
1115: d8 9e     mov   $9e,x
1117: f8 9d     mov   x,$9d
1119: 9f        xcn   a
111a: 28 07     and   a,#$07
111c: 04 9c     or    a,$9c
111e: 04 a1     or    a,$a1
1120: af        mov   (x)+,a
1121: d8 9d     mov   $9d,x
1123: 60        clrc
1124: 98 10 8f  adc   $8f,#$10
1127: 69 a0 9e  cmp   ($9e),($a0)
112a: d0 d3     bne   $10ff
112c: ba 98     movw  ya,$98
112e: da f4     movw  $f4,ya
1130: ba 9a     movw  ya,$9a
1132: da f6     movw  $f6,ya
1134: ea 86 80  not1  $1010,6
1137: 6f        ret

1138: e4 ad     mov   a,$ad
113a: f0 0f     beq   $114b
113c: 8b ad     dec   $ad
113e: ba a9     movw  ya,$a9
1140: 7a a5     addw  ya,$a5
1142: 7e a6     cmp   y,$a6
1144: da a5     movw  $a5,ya
1146: f0 03     beq   $114b
1148: 09 52 db  or    ($db),($52)
114b: e4 af     mov   a,$af
114d: f0 1d     beq   $116c
114f: ba ab     movw  ya,$ab
1151: 7a a7     addw  ya,$a7
1153: 7e a8     cmp   y,$a8
1155: da a7     movw  $a7,ya
1157: f0 03     beq   $115c
1159: 09 83 db  or    ($db),($83)
115c: 8b af     dec   $af
115e: d0 0c     bne   $116c
1160: dd        mov   a,y
1161: d0 09     bne   $116c
1163: 8f ff a8  mov   $a8,#$ff
1166: 8f f2 8b  mov   $8b,#$f2
1169: 3f 6f 0d  call  $0d6f
116c: e4 b5     mov   a,$b5
116e: f0 0f     beq   $117f
1170: 8b b5     dec   $b5
1172: ba b3     movw  ya,$b3
1174: 7a b1     addw  ya,$b1
1176: 7e b2     cmp   y,$b2
1178: da b1     movw  $b1,ya
117a: f0 03     beq   $117f
117c: 09 83 db  or    ($db),($83)
117f: e4 ba     mov   a,$ba
1181: f0 08     beq   $118b
1183: 8b ba     dec   $ba
1185: ba b8     movw  ya,$b8
1187: 7a b6     addw  ya,$b6
1189: da b6     movw  $b6,ya
118b: e4 bf     mov   a,$bf
118d: f0 0f     beq   $119e
118f: 8b bf     dec   $bf
1191: ba bd     movw  ya,$bd
1193: 7a bb     addw  ya,$bb
1195: 7e bc     cmp   y,$bc
1197: da bb     movw  $bb,ya
1199: f0 03     beq   $119e
119b: 09 52 dc  or    ($dc),($52)
119e: 6f        ret

; table used by command FE
119f: dw $0f13  ; 00
11a1: dw $0ee6  ; 01
11a3: dw $0eb2  ; 02
11a5: dw $0e76  ; 03
11a7: dw $0f13  ; 04
11a9: dw $0f13  ; 05
11ab: dw $0f13  ; 06
11ad: dw $0f31  ; 07

; vcmd f0 - set tempo
11af: c4 46     mov   $46,a
11b1: e8 00     mov   a,#$00
11b3: c4 45     mov   $45,a
11b5: c4 49     mov   $49,a
11b7: 6f        ret

; vcmd f1 - tempo "fade"
11b8: c4 49     mov   $49,a
11ba: c4 8c     mov   $8c,a
11bc: 3f c9 05  call  $05c9
11bf: eb 8c     mov   y,$8c
11c1: f0 ec     beq   $11af
11c3: 80        setc
11c4: a4 46     sbc   a,$46
11c6: f0 ed     beq   $11b5
11c8: 3f c5 0c  call  $0cc5
11cb: f8 a3     mov   x,$a3
11cd: da 4a     movw  $4a,ya
11cf: 6f        ret

; vcmd f4
11d0: c4 51     mov   $51,a
11d2: 6f        ret

; vcmd c4 - set voice volume
11d3: 28 7f     and   a,#$7f
11d5: d5 21 f6  mov   $f621+x,a
11d8: e8 00     mov   a,#$00
11da: d5 20 f6  mov   $f620+x,a
11dd: 09 8f db  or    ($db),($8f)
11e0: d5 a0 f6  mov   $f6a0+x,a
11e3: 6f        ret

; vcmd c5 - volume fade (steps, dest value)
11e4: d5 a0 f6  mov   $f6a0+x,a
11e7: c4 8c     mov   $8c,a
11e9: 3f c9 05  call  $05c9
11ec: 28 7f     and   a,#$7f
11ee: eb 8c     mov   y,$8c
11f0: f0 e1     beq   $11d3
11f2: 80        setc
11f3: b5 21 f6  sbc   a,$f621+x
11f6: f0 e8     beq   $11e0
11f8: 3f c5 0c  call  $0cc5
11fb: f8 a3     mov   x,$a3
11fd: d5 40 f6  mov   $f640+x,a
1200: dd        mov   a,y
1201: d5 41 f6  mov   $f641+x,a
1204: 6f        ret

; vcmd f2 - set echo volume
1205: aa a2 e0  mov1  c,$1c14,2
1208: 7c        ror   a                 ; keep sign, div by 2
1209: c4 4d     mov   $4d,a             ; echo volume shadow
120b: e8 00     mov   a,#$00
120d: c4 4c     mov   $4c,a
120f: c4 50     mov   $50,a
1211: 6f        ret

; vcmd f3 - fade echo volume
1212: c4 50     mov   $50,a
1214: c4 8c     mov   $8c,a
1216: 3f c9 05  call  $05c9
1219: eb 8c     mov   y,$8c
121b: f0 e8     beq   $1205
121d: aa a2 e0  mov1  c,$1c14,2
1220: 7c        ror   a
1221: 48 80     eor   a,#$80
1223: ea 4d e0  not1  $1c09,5
1226: 80        setc
1227: a4 4d     sbc   a,$4d
1229: ea 4d e0  not1  $1c09,5
122c: f0 e1     beq   $120f
122e: 3f c5 0c  call  $0cc5
1231: f8 a3     mov   x,$a3
1233: da 4e     movw  $4e,ya
1235: 6f        ret

; vcmd c6 - set balance
1236: 1c        asl   a
1237: d5 61 f6  mov   $f661+x,a
123a: e8 00     mov   a,#$00
123c: d5 60 f6  mov   $f660+x,a
123f: 09 8f db  or    ($db),($8f)
1242: d5 a1 f6  mov   $f6a1+x,a
1245: 6f        ret

; vcmd c7 - balance fade (pan)
1246: d5 a1 f6  mov   $f6a1+x,a
1249: c4 8c     mov   $8c,a
124b: 3f c9 05  call  $05c9
124e: eb 8c     mov   y,$8c
1250: f0 e4     beq   $1236
1252: 1c        asl   a
1253: 80        setc
1254: b5 61 f6  sbc   a,$f661+x
1257: f0 e9     beq   $1242
1259: 3f c5 0c  call  $0cc5
125c: f8 a3     mov   x,$a3
125e: d5 80 f6  mov   $f680+x,a
1261: dd        mov   a,y
1262: d5 81 f6  mov   $f681+x,a
1265: 6f        ret

; vcmd c8
1266: bc        inc   a
1267: d5 20 f7  mov   $f720+x,a
126a: 3f c9 05  call  $05c9
126d: d5 50 01  mov   $0150+x,a
1270: 6f        ret

; vcmd da - change (relative) transpose?
1271: 60        clrc
1272: 95 21 f7  adc   a,$f721+x
; vcmd d9 - set transpose?
1275: d5 21 f7  mov   $f721+x,a
1278: 6f        ret

; vcmd f7 - set/fade echo feedback
1279: c4 78     mov   $78,a
127b: c4 8c     mov   $8c,a
127d: 3f c9 05  call  $05c9
1280: eb 8c     mov   y,$8c
1282: f0 14     beq   $1298
1284: 48 80     eor   a,#$80
1286: ea 76 e0  not1  $1c0e,6
1289: 80        setc
128a: a4 76     sbc   a,$76             ; echo feedback shadow
128c: ea 76 e0  not1  $1c0e,6
128f: 3f c5 0c  call  $0cc5
1292: f8 a3     mov   x,$a3
1294: da 79     movw  $79,ya
1296: 2f 02     bra   $129a
1298: c4 76     mov   $76,a
129a: 6f        ret

; vcmd f8 - set/fade echo FIR filter
129b: c4 77     mov   $77,a
129d: c4 8c     mov   $8c,a
129f: 3f c9 05  call  $05c9
12a2: 28 03     and   a,#$03
12a4: bc        inc   a
12a5: 1c        asl   a
12a6: 1c        asl   a
12a7: 1c        asl   a
12a8: fd        mov   y,a
12a9: cd 10     mov   x,#$10
12ab: e4 8c     mov   a,$8c
12ad: f0 27     beq   $12d6
12af: e8 00     mov   a,#$00
12b1: d4 63     mov   $63+x,a
12b3: f4 64     mov   a,$64+x
12b5: 48 80     eor   a,#$80
12b7: c4 98     mov   $98,a
12b9: f6 a8 17  mov   a,$17a8+y
12bc: 48 80     eor   a,#$80
12be: 80        setc
12bf: a4 98     sbc   a,$98
12c1: 6d        push  y
12c2: 4d        push  x
12c3: 3f c5 0c  call  $0cc5
12c6: ce        pop   x
12c7: d5 fe 00  mov   $00fe+x,a
12ca: dd        mov   a,y
12cb: d5 ff 00  mov   $00ff+x,a
12ce: ee        pop   y
12cf: dc        dec   y
12d0: 1d        dec   x
12d1: 1d        dec   x
12d2: d0 db     bne   $12af
12d4: 2f 0a     bra   $12e0
12d6: f6 a8 17  mov   a,$17a8+y
12d9: d4 64     mov   $64+x,a
12db: dc        dec   y
12dc: 1d        dec   x
12dd: 1d        dec   x
12de: d0 f6     bne   $12d6
12e0: f8 a3     mov   x,$a3
12e2: 6f        ret

; vcmd c9
12e3: d5 10 01  mov   $0110+x,a
12e6: 3f c9 05  call  $05c9
12e9: d5 c0 f6  mov   $f6c0+x,a
12ec: c4 98     mov   $98,a
12ee: 3f c9 05  call  $05c9
12f1: d5 51 01  mov   $0151+x,a
12f4: 3f 3c 13  call  $133c
12f7: f8 a3     mov   x,$a3
12f9: ba 98     movw  ya,$98
12fb: d5 c0 f7  mov   $f7c0+x,a
12fe: dd        mov   a,y
12ff: d5 c1 f7  mov   $f7c1+x,a
1302: e8 00     mov   a,#$00
1304: d5 c0 f8  mov   $f8c0+x,a
1307: d5 c1 f8  mov   $f8c1+x,a
130a: d5 40 f8  mov   $f840+x,a
130d: d5 41 f8  mov   $f841+x,a
1310: f5 c0 f6  mov   a,$f6c0+x
1313: d5 c1 f6  mov   $f6c1+x,a
1316: f5 c1 f7  mov   a,$f7c1+x
1319: fd        mov   y,a
131a: f5 c0 f7  mov   a,$f7c0+x
131d: da 98     movw  $98,ya
131f: f5 90 01  mov   a,$0190+x
1322: 28 70     and   a,#$70
1324: fd        mov   y,a
1325: f5 10 01  mov   a,$0110+x
1328: d5 11 01  mov   $0111+x,a
132b: 3f 66 13  call  $1366
132e: d5 90 01  mov   $0190+x,a
1331: e4 98     mov   a,$98
1333: d5 e0 f7  mov   $f7e0+x,a
1336: e4 99     mov   a,$99
1338: d5 e1 f7  mov   $f7e1+x,a
133b: 6f        ret

133c: 28 3f     and   a,#$3f
133e: bc        inc   a
133f: 8d 00     mov   y,#$00
1341: cb 99     mov   $99,y
1343: f8 98     mov   x,$98
1345: f0 06     beq   $134d
1347: 9e        div   ya,x
1348: c4 99     mov   $99,a
134a: e8 00     mov   a,#$00
134c: 9e        div   ya,x
134d: c4 98     mov   $98,a
134f: 4b 99     lsr   $99
1351: 6b 98     ror   $98
1353: 4b 99     lsr   $99
1355: 6b 98     ror   $98
1357: ba 98     movw  ya,$98
1359: d0 02     bne   $135d
135b: ab 98     inc   $98
135d: 0b 98     asl   $98
135f: 2b 99     rol   $99
1361: 0b 98     asl   $98
1363: 2b 99     rol   $99
1365: 6f        ret

1366: 0d        push  psw
1367: f0 08     beq   $1371
1369: 4b 99     lsr   $99
136b: 6b 98     ror   $98
136d: 4b 99     lsr   $99
136f: 6b 98     ror   $98
1371: 78 80 a2  cmp   $a2,#$80
1374: 90 0d     bcc   $1383
1376: 78 c0 a2  cmp   $a2,#$c0
1379: b0 08     bcs   $1383
137b: 58 ff 98  eor   $98,#$ff
137e: 58 ff 99  eor   $99,#$ff
1381: 3a 98     incw  $98
1383: 8e        pop   psw
1384: f0 04     beq   $138a
1386: dd        mov   a,y
1387: 08 07     or    a,#$07
1389: 8d dd     mov   y,#$dd
138b: 6f        ret

; vcmd ca
138c: d5 51 01  mov   $0151+x,a
138f: d5 c0 f8  mov   $f8c0+x,a
1392: d5 c1 f8  mov   $f8c1+x,a
1395: 6f        ret

; vcmd cb
1396: d5 30 01  mov   $0130+x,a
1399: 3f c9 05  call  $05c9
139c: d5 e0 f6  mov   $f6e0+x,a
139f: c4 98     mov   $98,a
13a1: 3f c9 05  call  $05c9
13a4: d5 70 01  mov   $0170+x,a
13a7: 3f 3c 13  call  $133c
13aa: f8 a3     mov   x,$a3
13ac: e4 98     mov   a,$98
13ae: d5 00 f8  mov   $f800+x,a
13b1: e4 99     mov   a,$99
13b3: d5 01 f8  mov   $f801+x,a
13b6: e8 00     mov   a,#$00
13b8: d5 60 f8  mov   $f860+x,a
13bb: d5 61 f8  mov   $f861+x,a
13be: f5 e0 f6  mov   a,$f6e0+x
13c1: d5 e1 f6  mov   $f6e1+x,a
13c4: f5 01 f8  mov   a,$f801+x
13c7: fd        mov   y,a
13c8: f5 00 f8  mov   a,$f800+x
13cb: da 98     movw  $98,ya
13cd: f5 90 01  mov   a,$0190+x
13d0: 28 70     and   a,#$70
13d2: fd        mov   y,a
13d3: f5 30 01  mov   a,$0130+x
13d6: d5 31 01  mov   $0131+x,a
13d9: 3f 66 13  call  $1366
13dc: d5 90 01  mov   $0190+x,a
13df: e4 98     mov   a,$98
13e1: d5 20 f8  mov   $f820+x,a
13e4: e4 99     mov   a,$99
13e6: d5 21 f8  mov   $f821+x,a
13e9: 6f        ret

; vcmd cc
13ea: d5 70 01  mov   $0170+x,a
13ed: d5 60 f8  mov   $f860+x,a
13f0: d5 61 f8  mov   $f861+x,a
13f3: 6f        ret

; vcmd cd
13f4: 60        clrc
13f5: bc        inc   a
13f6: f0 08     beq   $1400
13f8: 28 fe     and   a,#$fe
13fa: d0 05     bne   $1401
13fc: e8 02     mov   a,#$02
13fe: 2f 01     bra   $1401
1400: 80        setc
1401: d5 00 f7  mov   $f700+x,a
1404: 7c        ror   a
1405: d5 01 f7  mov   $f701+x,a
1408: fd        mov   y,a
1409: 3f c9 05  call  $05c9
140c: 1c        asl   a
140d: e4 a2     mov   a,$a2
140f: 28 7f     and   a,#$7f
1411: 90 02     bcc   $1415
1413: 48 7f     eor   a,#$7f
1415: c4 98     mov   $98,a
1417: dd        mov   a,y
1418: 10 05     bpl   $141f
141a: 8f 00 99  mov   $99,#$00
141d: 2f 13     bra   $1432
141f: 5d        mov   x,a
1420: 8d 00     mov   y,#$00
1422: e4 98     mov   a,$98
1424: 9e        div   ya,x
1425: c4 99     mov   $99,a
1427: e8 00     mov   a,#$00
1429: 9e        div   ya,x
142a: c4 98     mov   $98,a
142c: ba 98     movw  ya,$98
142e: d0 02     bne   $1432
1430: ab 98     inc   $98
1432: 90 08     bcc   $143c
1434: 58 ff 98  eor   $98,#$ff
1437: 58 ff 99  eor   $99,#$ff
143a: 3a 98     incw  $98
143c: f8 a3     mov   x,$a3
143e: e4 98     mov   a,$98
1440: d5 a0 f7  mov   $f7a0+x,a
1443: e4 99     mov   a,$99
1445: d5 a1 f7  mov   $f7a1+x,a
1448: e4 a2     mov   a,$a2
; vcmd ce
144a: d5 71 01  mov   $0171+x,a
144d: e8 00     mov   a,#$00
144f: d5 80 f8  mov   $f880+x,a
1452: d5 81 f8  mov   $f881+x,a
1455: 6f        ret

; vcmd d7 - inc octave
1456: f5 00 f6  mov   a,$f600+x
1459: bc        inc   a
145a: 2f 04     bra   $1460
; vcmd d8 - dec octave
145c: f5 00 f6  mov   a,$f600+x
145f: 9c        dec   a
; vcmd d6 - set octave
1460: d5 00 f6  mov   $f600+x,a
1463: 6f        ret

; vcmd d4 - enable echo
1464: c8 10     cmp   x,#$10
1466: b0 05     bcs   $146d
1468: 09 8f 53  or    ($53),($8f)
146b: 2f 03     bra   $1470
146d: 09 8f 54  or    ($54),($8f)
1470: e4 83     mov   a,$83
1472: 04 84     or    a,$84
1474: 48 ff     eor   a,#$ff
1476: 24 53     and   a,$53
1478: 04 54     or    a,$54
147a: c4 87     mov   $87,a             ; dsp shadow for echo enable
147c: 6f        ret

; vcmd d5 - disable echo
147d: e4 8f     mov   a,$8f
147f: c8 10     cmp   x,#$10
1481: b0 05     bcs   $1488
1483: 4e 53 00  tclr1 $0053
1486: 2f e8     bra   $1470
1488: 4e 54 00  tclr1 $0054
148b: 2f e3     bra   $1470

; vcmd d0 - enable noise
148d: c8 10     cmp   x,#$10
148f: b0 05     bcs   $1496
1491: 09 8f 55  or    ($55),($8f)
1494: 2f 03     bra   $1499
1496: 09 8f 56  or    ($56),($8f)
1499: fa 56 98  mov   ($98),($56)
149c: 12 98     clr0  $98
149e: e4 8a     mov   a,$8a
14a0: 28 e0     and   a,#$e0
14a2: eb 56     mov   y,$56
14a4: d0 04     bne   $14aa
14a6: 04 62     or    a,$62
14a8: 2f 02     bra   $14ac
14aa: 04 63     or    a,$63
14ac: c4 8a     mov   $8a,a             ; dsp shadow for FLG (6C)
14ae: e4 83     mov   a,$83
14b0: 04 84     or    a,$84
14b2: 48 ff     eor   a,#$ff
14b4: 24 55     and   a,$55
14b6: 04 98     or    a,$98
14b8: c4 88     mov   $88,a             ; dsp shadow for noise bits
14ba: 6f        ret

; vcmd d1 - disable noise
14bb: e4 8f     mov   a,$8f
14bd: c8 10     cmp   x,#$10
14bf: b0 05     bcs   $14c6
14c1: 4e 55 00  tclr1 $0055
14c4: 2f d3     bra   $1499
14c6: 4e 56 00  tclr1 $0056
14c9: 2f ce     bra   $1499
; vcmd cf - set noise clock
14cb: 28 1f     and   a,#$1f
14cd: c8 10     cmp   x,#$10
14cf: b0 04     bcs   $14d5
14d1: c4 62     mov   $62,a
14d3: 2f c4     bra   $1499
14d5: c4 63     mov   $63,a
14d7: 2f c0     bra   $1499
; vcmd d2 - enable pitchmod
14d9: c8 10     cmp   x,#$10
14db: b0 05     bcs   $14e2
14dd: 09 8f 57  or    ($57),($8f)
14e0: 2f 03     bra   $14e5
14e2: 09 8f 58  or    ($58),($8f)
14e5: e4 83     mov   a,$83
14e7: 04 84     or    a,$84
14e9: 48 ff     eor   a,#$ff
14eb: 24 57     and   a,$57
14ed: 04 58     or    a,$58
14ef: c4 89     mov   $89,a             ; dsp shadow for pitchmod
14f1: 6f        ret

; vcmd d3 - disable pitchmod
14f2: e4 8f     mov   a,$8f
14f4: c8 10     cmp   x,#$10
14f6: b0 05     bcs   $14fd
14f8: 4e 57 00  tclr1 $0057
14fb: 2f e8     bra   $14e5
14fd: 4e 58 00  tclr1 $0058
1500: 2f e3     bra   $14e5

; vcmd dc - set sample
1502: d5 01 f6  mov   $f601+x,a
1505: 1c        asl   a
1506: fd        mov   y,a               ; sample # as index in Y
1507: f6 00 1a  mov   a,$1a00+y
150a: d5 40 f7  mov   $f740+x,a
150d: f6 01 1a  mov   a,$1a01+y
1510: d5 41 f7  mov   $f741+x,a         ; set F740/1+X from 1A00/1+Y
1513: f6 80 1a  mov   a,$1a80+y
1516: d5 00 f9  mov   $f900+x,a
1519: f6 81 1a  mov   a,$1a81+y
151c: d5 01 f9  mov   $f901+x,a         ; set F900/1+X from 1A80/1+Y
151f: c8 10     cmp   x,#$10
1521: b0 05     bcs   $1528
1523: e4 8f     mov   a,$8f
1525: 4e 61 00  tclr1 $0061             ; clear vbit in $61
1528: 6f        ret

; set SRCN reg from F601+X
1529: f5 01 f6  mov   a,$f601+x
152c: fd        mov   y,a
152d: 7d        mov   a,x
152e: 9f        xcn   a
152f: 5c        lsr   a
1530: 08 04     or    a,#$04
1532: c4 f2     mov   $f2,a
1534: cb f3     mov   $f3,y             ; set SRCN reg from F601+X
1536: 2f 10     bra   $1548

; vcmd dd  - set ADSR attack value
1538: 28 0f     and   a,#$0f
153a: c4 a2     mov   $a2,a
153c: f5 00 f9  mov   a,$f900+x
153f: 28 70     and   a,#$70            ; keep old decay value
1541: 04 a2     or    a,$a2             ; set attack value
1543: 08 80     or    a,#$80            ; ADSR mode, not GAIN mode
1545: d5 00 f9  mov   $f900+x,a
1548: c8 10     cmp   x,#$10
154a: b0 09     bcs   $1555
154c: e4 83     mov   a,$83
154e: 04 84     or    a,$84
1550: 24 8f     and   a,$8f
1552: f0 01     beq   $1555
1554: 6f        ret

1555: 7d        mov   a,x
1556: 9f        xcn   a
1557: 5c        lsr   a
1558: 08 05     or    a,#$05
155a: fd        mov   y,a
155b: f5 00 f9  mov   a,$f900+x
155e: 3f 48 06  call  $0648             ; set ADSR1 from F900+X
1561: fc        inc   y
1562: f5 01 f9  mov   a,$f901+x         ; set ADSR2 from F901+X
1565: 5f 48 06  jmp   $0648

; vcmd de - set ADSR decay value
1568: 28 07     and   a,#$07
156a: 9f        xcn   a
156b: c4 a2     mov   $a2,a
156d: f5 00 f9  mov   a,$f900+x
1570: 28 0f     and   a,#$0f            ; keep old attack value
1572: 04 a2     or    a,$a2             ; add new decay value
1574: 08 80     or    a,#$80            ; ADSR mode, not GAIN mode
1576: d5 00 f9  mov   $f900+x,a
1579: 2f cd     bra   $1548

; vcmd df - set ADSR sustain level
157b: 28 07     and   a,#$07
157d: 9f        xcn   a
157e: 1c        asl   a
157f: c4 a2     mov   $a2,a
1581: f5 01 f9  mov   a,$f901+x
1584: 28 1f     and   a,#$1f            ; keep old release value
1586: 04 a2     or    a,$a2             ; add new sustain value
1588: d5 01 f9  mov   $f901+x,a
158b: 2f bb     bra   $1548

; vcmd e0 - set ADSR release level
158d: 28 1f     and   a,#$1f
158f: c4 a2     mov   $a2,a
1591: f5 01 f9  mov   a,$f901+x
1594: 28 e0     and   a,#$e0            ; keep old sustain value
1596: 04 a2     or    a,$a2             ; add new release value
1598: d5 01 f9  mov   $f901+x,a
159b: 2f ab     bra   $1548

; vcmd e1 - set default ADSR paramaters for sample
159d: f5 01 f6  mov   a,$f601+x
15a0: 1c        asl   a
15a1: fd        mov   y,a               ; sample # as index
15a2: f6 80 1a  mov   a,$1a80+y
15a5: d5 00 f9  mov   $f900+x,a
15a8: f6 81 1a  mov   a,$1a81+y
15ab: d5 01 f9  mov   $f901+x,a
15ae: 2f 98     bra   $1548

; vcmd fb
15b0: 09 8f 61  or    ($61),($8f)
15b3: 6f        ret

; vcmd e4
15b4: e4 8f     mov   a,$8f
15b6: c8 10     cmp   x,#$10
15b8: b0 0b     bcs   $15c5
15ba: 0e 5b 00  tset1 $005b
15bd: 4e 5d 00  tclr1 $005d
15c0: 4e 5f 00  tclr1 $005f
15c3: 2f 09     bra   $15ce
15c5: 0e 5c 00  tset1 $005c
15c8: 4e 5e 00  tclr1 $005e
15cb: 4e 60 00  tclr1 $0060
15ce: 6f        ret

; simulate e5 for readahead/first half simulate dc
15cf: e4 8f     mov   a,$8f
15d1: c8 10     cmp   x,#$10
15d3: b0 05     bcs   $15da
15d5: 4e 5b 00  tclr1 $005b
15d8: 2f 03     bra   $15dd
15da: 4e 5c 00  tclr1 $005c
15dd: 6f        ret

; vcmd e6
15de: e4 8f     mov   a,$8f
15e0: c8 10     cmp   x,#$10
15e2: b0 08     bcs   $15ec
15e4: 0e 5f 00  tset1 $005f
15e7: 4e 5b 00  tclr1 $005b
15ea: 2f 06     bra   $15f2
15ec: 0e 60 00  tset1 $0060
15ef: 4e 5c 00  tclr1 $005c
15f2: 6f        ret

; simulate e7 for readahead/second half simulate dc
15f3: e4 8f     mov   a,$8f
15f5: c8 10     cmp   x,#$10
15f7: b0 05     bcs   $15fe
15f9: 4e 5f 00  tclr1 $005f
15fc: 2f 03     bra   $1601
15fe: 4e 60 00  tclr1 $0060
1601: 6f        ret

; vcmd e9 - goto address in $2c00+A*4
1602: 8d 00     mov   y,#$00
1604: 2f 02     bra   $1608
; vcmd ea - goto address in $2c02+A*4
1606: 8d 02     mov   y,#$02
1608: 3f 16 16  call  $1616
160b: d4 02     mov   $02+x,a
160d: db 03     mov   $03+x,y
160f: dd        mov   a,y
1610: d0 03     bne   $1615
1612: 5f 70 17  jmp   $1770             ; halt if 03+x = 0

1615: 6f        ret

; get song ptr from table at 2C00, indexed by A width 4, Y selects 0 or 2
1616: 8f 00 93  mov   $93,#$00
1619: 1c        asl   a
161a: 2b 93     rol   $93
161c: 1c        asl   a
161d: 2b 93     rol   $93
161f: c4 92     mov   $92,a             ; $92/3 = A * 4
1621: dd        mov   a,y
1622: 8d 2c     mov   y,#$2c
1624: 7a 92     addw  ya,$92
1626: da 92     movw  $92,ya            ; $92/3 += #$2C00 or #$2C02
1628: 8d 00     mov   y,#$00
162a: f7 92     mov   a,($92)+y
162c: 2d        push  a
162d: fc        inc   y
162e: f7 92     mov   a,($92)+y
1630: fd        mov   y,a
1631: ae        pop   a
1632: 6f        ret

; simulate e9 for readahead
1633: f7 90     mov   a,($90)+y
1635: 8d 00     mov   y,#$00
1637: 2f 04     bra   $163d

; simulate ea for readahead
1639: f7 90     mov   a,($90)+y
163b: 8d 02     mov   y,#$02
163d: 3f 16 16  call  $1616
1640: da 90     movw  $90,ya
1642: dd        mov   a,y
1643: f0 04     beq   $1649
1645: ae        pop   a
1646: ae        pop   a
1647: e8 eb     mov   a,#$eb
1649: 6f        ret

; f6 - goto
164a: fd        mov   y,a
164b: 3f c9 05  call  $05c9
164e: dd        mov   a,y
164f: eb a2     mov   y,$a2
1651: 7a 00     addw  ya,$00
1653: d4 02     mov   $02+x,a
1655: db 03     mov   $03+x,y
1657: 6f        ret

; simulate f6 for readahead
1658: f7 90     mov   a,($90)+y
165a: 2d        push  a
165b: fc        inc   y
165c: f7 90     mov   a,($90)+y
165e: fd        mov   y,a
165f: ae        pop   a
1660: 7a 00     addw  ya,$00
1662: da 90     movw  $90,ya
1664: 6f        ret

; vcmd f5
1665: c4 9a     mov   $9a,a
1667: 3f c9 05  call  $05c9
166a: c4 98     mov   $98,a
166c: 3f c9 05  call  $05c9
166f: c4 99     mov   $99,a
1671: fb 26     mov   y,$26+x
1673: f6 20 f9  mov   a,$f920+y
1676: 2e 9a 1b  cbne  $9a,$1694         ; is this repeat #arg1?
1679: f6 40 f9  mov   a,$f940+y
167c: 9c        dec   a                 ; decrement repeat count
167d: d0 0d     bne   $168c
167f: 7d        mov   a,x
1680: 1c        asl   a
1681: 9c        dec   a
1682: 9b 26     dec   $26+x
1684: de 26 05  cbne  $26+x,$168c
1687: 60        clrc
1688: 88 04     adc   a,#$04
168a: d4 26     mov   $26+x,a           ; if done, remove repeat state
168c: ba 98     movw  ya,$98
168e: 7a 00     addw  ya,$00            ; correct offset
1690: d4 02     mov   $02+x,a
1692: db 03     mov   $03+x,y           ; set voice ptr to arg2/3
1694: 6f        ret

; simulate f5 for readahead
1695: eb c5     mov   y,$c5
1697: f6 20 f9  mov   a,$f920+y
169a: 8d 00     mov   y,#$00
169c: 77 90     cmp   a,($90)+y
169e: d0 19     bne   $16b9
16a0: eb c5     mov   y,$c5
16a2: f6 40 f9  mov   a,$f940+y
16a5: 9c        dec   a
16a6: d0 0c     bne   $16b4
16a8: 7d        mov   a,x
16a9: 1c        asl   a
16aa: 9c        dec   a
16ab: 8b c5     dec   $c5
16ad: 2e c5 04  cbne  $c5,$16b4
16b0: 60        clrc
16b1: 98 04 c5  adc   $c5,#$04
16b4: 8d 01     mov   y,#$01
16b6: 5f 58 16  jmp   $1658

16b9: 3a 90     incw  $90
16bb: 3a 90     incw  $90
16bd: 3a 90     incw  $90
16bf: 6f        ret

; vcmd e2 - begin repeat
16c0: bb 26     inc   $26+x
16c2: 7d        mov   a,x
16c3: 1c        asl   a
16c4: 60        clrc
16c5: 88 04     adc   a,#$04            ; A = X * 2 + 4
16c7: de 26 05  cbne  $26+x,$16cf
16ca: 80        setc
16cb: a8 04     sbc   a,#$04
16cd: d4 26     mov   $26+x,a
16cf: fb 26     mov   y,$26+x           ; get rpt index into Y
16d1: e4 a2     mov   a,$a2             ; get repeat count (E2 arg)
16d3: f0 01     beq   $16d6
16d5: bc        inc   a                 ; inc unless 0
16d6: d6 40 f9  mov   $f940+y,a         ; save repeat count in F940+Y
16d9: c8 10     cmp   x,#$10
16db: b0 05     bcs   $16e2
16dd: e8 01     mov   a,#$01
16df: d6 20 f9  mov   $f920+y,a         ; for real voices: store 1 in F920+Y
16e2: dd        mov   a,y
16e3: 1c        asl   a
16e4: fd        mov   y,a
16e5: f4 02     mov   a,$02+x
16e7: d6 80 f9  mov   $f980+y,a
16ea: f4 03     mov   a,$03+x
16ec: d6 81 f9  mov   $f981+y,a
16ef: 6f        ret

; vcmd e3 - end repeat
16f0: fb 26     mov   y,$26+x
16f2: c8 10     cmp   x,#$10
16f4: b0 07     bcs   $16fd
16f6: f6 20 f9  mov   a,$f920+y
16f9: bc        inc   a
16fa: d6 20 f9  mov   $f920+y,a         ; inc F920+Y
16fd: f6 40 f9  mov   a,$f940+y         ; get repeats left
1700: f0 15     beq   $1717             ; if 0, repeat forever
1702: 9c        dec   a                 ; DEC repeats left
1703: d0 0f     bne   $1714             ; done?
1705: 7d        mov   a,x
1706: 1c        asl   a
1707: 9c        dec   a
1708: 9b 26     dec   $26+x
170a: de 26 17  cbne  $26+x,$1724
170d: 60        clrc
170e: 88 04     adc   a,#$04
1710: d4 26     mov   $26+x,a           ; dec repeat index
1712: 2f 10     bra   $1724
1714: d6 40 f9  mov   $f940+y,a         ; not done,
1717: dd        mov   a,y
1718: 1c        asl   a
1719: fd        mov   y,a
171a: f6 80 f9  mov   a,$f980+y
171d: d4 02     mov   $02+x,a
171f: f6 81 f9  mov   a,$f981+y
1722: d4 03     mov   $03+x,a           ; goto stored repeat beginning
1724: 6f        ret

; simulate e3 for readahead
1725: eb c5     mov   y,$c5
1727: f6 40 f9  mov   a,$f940+y
172a: f0 11     beq   $173d
172c: 9c        dec   a
172d: d0 0e     bne   $173d
172f: 7d        mov   a,x
1730: 1c        asl   a
1731: 9c        dec   a
1732: 8b c5     dec   $c5
1734: 2e c5 13  cbne  $c5,$174a
1737: 60        clrc
1738: 98 04 c5  adc   $c5,#$04
173b: 2f 0d     bra   $174a
173d: dd        mov   a,y
173e: 1c        asl   a
173f: fd        mov   y,a
1740: f6 80 f9  mov   a,$f980+y
1743: c4 90     mov   $90,a
1745: f6 81 f9  mov   a,$f981+y
1748: c4 91     mov   $91,a
174a: 6f        ret

; vcmd e8 - utility rest
174b: d4 25     mov   $25+x,a
174d: 6f        ret

; vcmd db
174e: d5 60 f7  mov   $f760+x,a
1751: 6f        ret

; vcmd f9
1752: ab 7b     inc   $7b
1754: 6f        ret

; vcmd fa
1755: 8f 00 7b  mov   $7b,#$00
1758: 6f        ret

; vcmd fc - branch if voice bit in $dd set
1759: fd        mov   y,a
175a: 3f c9 05  call  $05c9
175d: e4 8f     mov   a,$8f
175f: 24 dd     and   a,$dd
1761: f0 0c     beq   $176f
1763: 4e dd 00  tclr1 $00dd
1766: dd        mov   a,y
1767: eb a2     mov   y,$a2
1769: 7a 00     addw  ya,$00
176b: d4 02     mov   $02+x,a
176d: db 03     mov   $03+x,y
176f: 6f        ret

; vcmd eb-ef, fd-ff - halt
1770: ae        pop   a
1771: ae        pop   a
1772: e4 8f     mov   a,$8f
1774: c8 10     cmp   x,#$10
1776: b0 05     bcs   $177d
1778: 4e 52 00  tclr1 $0052
177b: 2f 09     bra   $1786
177d: 4e 83 00  tclr1 $0083
1780: 4e 84 00  tclr1 $0084
1783: 4e 5d 00  tclr1 $005d
1786: 3f bb 14  call  $14bb             ; d1 - disable noise
1789: 3f f2 14  call  $14f2             ; d3 - disable pitchmod
178c: 5f 7d 14  jmp   $147d             ; d5 - disable echo

; pitch table
178f: dw $0879  ; c
1791: dw $08fa  ; c#
1793: dw $0983  ; d
1795: dw $0a14  ; d#
1797: dw $0aad  ; e
1799: dw $0b50  ; f
179b: dw $0bfc  ; f#
179d: dw $0cb2  ; g
179f: dw $0d74  ; g#
17a1: dw $0e41  ; a
17a3: dw $0f1a  ; a#
17a5: dw $1000  ; b
17a7: dw $10f3  ; c'

; echo filter table
17a9: db $7f,$00,$00,$00,$00,$00,$00,$00
17b1: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
17b9: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
17c1: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
17c9: db $80,$80,$80,$80,$7f,$7f,$7f,$7f

; duration table
17d1: db $c0,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

; table to 02+X for CPU cmds $20-2F
17df: dw $17ff  ; 20
17e1: dw $180a  ; 21
17e3: dw $1815  ; 22
17e5: dw $1820  ; 23
17e7: dw $1832  ; 24
17e9: dw $0000  ; 25
17eb: dw $0000  ; 26
17ed: dw $0000  ; 27
17ef: dw $183e  ; 28
17f1: dw $1857  ; 29
17f3: dw $0000  ; 2a
17f5: dw $0000  ; 2b
17f7: dw $186f  ; 2c
17f9: dw $0000  ; 2d
17fb: dw $0000  ; 2e
17fd: dw $0000  ; 2f

; song data for CPU cmd $20
17ff: db $c4,$46,$dc,$05,$c8,$06,$0c,$d6,$06,$6c,$eb

; song data for CPU cmd $21
180a: db $c4,$46,$dc,$05,$c8,$06,$0c,$d6,$06,$96,$eb

; song data for CPU cmd $22
1815: db $c4,$6e,$d6,$04,$dc,$06,$e2,$04,$37,$e3,$eb

; song data for CPU cmd $23
1820: db $c4,$46,$dc,$03,$dd,$0e,$d6,$07,$e4,$28,$37,$53,$6e,$7c,$e0,$16
1830: db $90,$eb

; song data for CPU cmd $24
1832: db $c4,$46,$dc,$07,$d6,$07,$dd,$06,$e0,$16,$6c,$eb

; song data for CPU cmd $28
183e: db $c4,$6e,$c9,$00,$0c,$7f,$dc,$06,$d6,$05,$88,$d7,$c4,$64,$42,$c4
184e: db $50,$42,$c4,$3c,$42,$c4,$28,$42,$eb

; song data for CPU cmd $29
1857: db $c4,$6e,$c9,$00,$0c,$7f,$dc,$06,$d6,$05,$42,$c4,$64,$a4,$c4,$50
1867: db $a4,$c4,$3c,$a4,$c4,$28,$a4,$eb

; song data for CPU cmd $2C
186f: db $c4,$41,$dc,$05,$d6,$07,$e0,$18,$99,$cb,$00,$06,$bf,$e0,$12,$d4
187f: db $9d,$eb

; voice data command dispatch table
1881: dw $11d3  ; c4 - set voice volume
1883: dw $11e4  ; c5 - volume fade (steps, dest value)
1885: dw $1236  ; c6 - set balance
1887: dw $1246  ; c7 - balance fade (pan)
1889: dw $1266  ; c8
188b: dw $12e3  ; c9
188d: dw $138c  ; ca
188f: dw $1396  ; cb
1891: dw $13ea  ; cc
1893: dw $13f4  ; cd
1895: dw $144a  ; ce
1897: dw $14cb  ; cf - set noise clock
1899: dw $148d  ; d0 - enable noise
189b: dw $14bb  ; d1 - disable noise
189d: dw $14d9  ; d2 - enable pitchmod
189f: dw $14f2  ; d3 - disable pitchmod
18a1: dw $1464  ; d4 - enable echo
18a3: dw $147d  ; d5 - disable echo
18a5: dw $1460  ; d6 - set octave
18a7: dw $1456  ; d7 - inc octave
18a9: dw $145c  ; d8 - dec octave
18ab: dw $1275  ; d9 - set transpose?
18ad: dw $1271  ; da - change (relative) transpose?
18af: dw $174e  ; db - (set F760+x)
18b1: dw $1502  ; dc - set sample
18b3: dw $1538  ; dd - set ADSR attack value
18b5: dw $1568  ; de - set ADSR decay value
18b7: dw $157b  ; df - set ADSR sustain level
18b9: dw $158d  ; e0 - set ADSR release value
18bb: dw $159d  ; e1 - set default ADSR parameters for sample
18bd: dw $16c0  ; e2 - begin repeat
18bf: dw $16f0  ; e3 - end repeat
18c1: dw $15b4  ; e4
18c3: dw $0fd3  ; e5 -  nop
18c5: dw $15de  ; e6
18c7: dw $0fd3  ; e7 -  nop
18c9: dw $174b  ; e8 -  utility rest
18cb: dw $1602  ; e9 - goto address in 2C00+A*4
18cd: dw $1606  ; ea - goto address in 2C02+A*4
18cf: dw $1770  ; eb - (halt?)
18d1: dw $1770  ; ec - (halt?)
18d3: dw $1770  ; ed - (halt?)
18d5: dw $1770  ; ee - (halt?)
18d7: dw $1770  ; ef - (halt?)
18d9: dw $11af  ; f0 - set tempo
18db: dw $11b8  ; f1 - tempo "fade"
18dd: dw $1205  ; f2 - set echo volume
18df: dw $1212  ; f3 - fade echo volume
18e1: dw $11d0  ; f4
18e3: dw $1665  ; f5 - loop if repeat count matched
18e5: dw $164a  ; f6 - goto
18e7: dw $1279  ; f7 - set/fade echo feedback
18e9: dw $129b  ; f8 - set/fade echo FIR filter
18eb: dw $1752  ; f9 - (inc $7B)
18ed: dw $1755  ; fa - (zero $7B)
18ef: dw $15b0  ; fb
18f1: dw $1759  ; fc - branch if voice bit in $DD set
18f3: dw $1770  ; fd - (halt?)
18f5: dw $1770  ; fe - (halt?)
18f7: dw $1770  ; ff - (halt?)

; music op lengths
18f9: db                 $01,$02,$01,$02,$02,$03,$00,$03,$00,$02,$00,$01
1905: db $00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$01,$01,$01,$01,$01
1915: db $01,$00,$01,$00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00
1925: db $01,$02,$01,$02,$01,$03,$02,$02,$02,$00,$00,$00,$02,$00,$00,$00

; table for CPU commands 10-1F
1935: dw $0a1e  ; 10
1937: dw $0a26  ; 11
1939: dw $0fd3  ; 12 - nop
193b: dw $0fd3  ; 13 - nop
193d: dw $0a1b  ; 14
193f: dw $0a23  ; 15
1941: dw $0fd3  ; 16 - nop
1943: dw $0fd3  ; 17 - nop
1945: dw $0b3d  ; 18
1947: dw $0fd3  ; 19 - nop
1949: dw $0fd3  ; 1a - nop
194b: dw $0fd3  ; 1b - nop
194d: dw $0fd3  ; 1c - nop
194f: dw $0fd3  ; 1d - nop
1951: dw $0fd3  ; 1e - nop
1953: dw $0fd3  ; 1f - nop

; table for CPU commands 80-8F, F0-FF
1955: dw $0c6a  ; 80
1957: dw $0c6a  ; 81
1959: dw $0c6a  ; 82
195b: dw $0ce5  ; 83
195d: dw $0d09  ; 84
195f: dw $0d35  ; 85
1961: dw $0fd3  ; 86 - nop
1963: dw $0fd3  ; 87 - nop
1965: dw $0fd3  ; 88 - nop
1967: dw $0f9c  ; 89
1969: dw $0fd3  ; 8a - nop
196b: dw $0fd3  ; 8b - nop
196d: dw $0fd3  ; 8c - nop
196f: dw $0fd3  ; 8d - nop
1971: dw $0fd3  ; 8e - nop
1973: dw $0fd3  ; 8f - nop
1975: dw $0d6f  ; f0
1977: dw $0d6f  ; f1
1979: dw $0d6f  ; f2
197b: dw $0d61  ; f3
197d: dw $0dc3  ; f4
197f: dw $0dca  ; f5
1981: dw $0f83  ; f6
1983: dw $0fd3  ; f7 - nop
1985: dw $0fd3  ; f8 - nop
1987: dw $0fd3  ; f9 - nop
1989: dw $0fd3  ; fa - nop
198b: dw $0fd3  ; fb - nop
198d: dw $1002  ; fc - set echo delay from $F5, enable echo, 52->4D unless 0
198f: dw $0fe8  ; fd - write $F6 to DSP register $F5
1991: dw $0e38  ; fe
1993: dw $0fa3  ; ff - reset

; DSP register to shadow mappings
1995: db $4c,$2d,$3d,$6c,$5c,$4d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

; shadows
19a6: db $22,$89,$88,$8a,$24,$87,$4d,$4d,$76,$66,$68,$6a,$6c,$6e,$70,$72,$74
