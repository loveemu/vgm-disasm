02dc: 20        clrp
02dd: cd ff     mov   x,#$ff
02df: bd        mov   sp,x
02e0: 8f ff f4  mov   $f4,#$ff
02e3: e8 00     mov   a,#$00
02e5: 5d        mov   x,a
02e6: af        mov   (x)+,a
02e7: c8 f0     cmp   x,#$f0
02e9: d0 fb     bne   $02e6
02eb: 8f 00 f1  mov   $f1,#$00
02ee: 8f 5d f2  mov   $f2,#$5d
02f1: 8f 11 f3  mov   $f3,#$11          ; set #$11 to DIR
02f4: 8f 6c f2  mov   $f2,#$6c
02f7: 8f e0 f3  mov   $f3,#$e0          ; set #$e0 to FLG
02fa: 8f 6d f2  mov   $f2,#$6d
02fd: 8f e0 f3  mov   $f3,#$e0          ; set #$e0 to ESA
0300: e8 ff     mov   a,#$f
0302: c4 19     mov   $19,a
0304: e8 04     mov   a,#$04
0306: 3f ee 0f  call  $0fee
0309: 3f b9 0f  call  $0fb9
030c: 8d 64     mov   y,#$64
030e: e4 fd     mov   a,$fd
0310: f0 fc     beq   $030e
0312: dc        dec   y
0313: d0 f9     bne   $030e
0315: 8f 35 0c  mov   $0c,#$35
0318: 8f ab 0d  mov   $0d,#$ab          ; set RNG constant
031b: 8f 20 17  mov   $17,#$20
031e: 3f 15 0b  call  $0b15
0321: 3f 6d 0b  call  $0b6d
0324: 8f 31 f1  mov   $f1,#$31
0327: 8f 31 f1  mov   $f1,#$31
032a: 3f b9 0f  call  $0fb9
032d: 3f 64 0e  call  $0e64
0330: e8 00     mov   a,#$00
0332: c4 f4     mov   $f4,a
0334: c4 f5     mov   $f5,a
0336: 3f a8 0f  call  $0fa8             ; step RNG
0339: 3f 73 09  call  $0973
033c: eb fd     mov   y,$fd
033e: f0 f6     beq   $0336
0340: 3f 45 03  call  $0345
0343: 2f f1     bra   $0336
0345: 3f ec 0d  call  $0dec
0348: 3f 16 0e  call  $0e16
034b: 3f 5f 03  call  $035f
034e: 3f 79 03  call  $0379
0351: 3f 87 03  call  $0387
0354: cd 00     mov   x,#$00
0356: 7d        mov   a,x
0357: d4 9f     mov   $9f+x,a
0359: 3d        inc   x
035a: c8 0a     cmp   x,#$0a
035c: d0 f9     bne   $0357
035e: 6f        ret

035f: 03 0f 16  bbs0  $0f,$0378
0362: e4 1c     mov   a,$1c
0364: 60        clrc
0365: 84 1d     adc   a,$1d
0367: c4 1d     mov   $1d,a
0369: e8 00     mov   a,#$00
036b: 3c        rol   a
036c: c4 10     mov   $10,a
036e: cd 00     mov   x,#$00
0370: 3f e1 03  call  $03e1
0373: 3d        inc   x
0374: c8 0a     cmp   x,#$0a
0376: d0 f8     bne   $0370
0378: 6f        ret

0379: cd 00     mov   x,#$00
037b: 8f 01 11  mov   $11,#$01
037e: 3f 73 05  call  $0573
0381: 3d        inc   x
0382: 0b 11     asl   $11
0384: d0 f8     bne   $037e
0386: 6f        ret

0387: 8f 5c f2  mov   $f2,#$5c
038a: fa 13 f3  mov   ($f3),($13)       ; set KOF
038d: cd 00     mov   x,#$00
038f: 8f 01 11  mov   $11,#$01
0392: 3f d7 05  call  $05d7             ; update hardware voice channel
0395: 3d        inc   x                 ; increment hardware voice channel #
0396: 0b 11     asl   $11               ; shift channel mask bit
0398: d0 f8     bne   $0392
039a: e4 1a     mov   a,$1a
039c: f0 06     beq   $03a4
039e: 8b 1a     dec   $1a
03a0: d0 02     bne   $03a4
03a2: b2 17     clr5  $17
03a4: 3f 7a 0e  call  $0e7a
03a7: 8f 2d f2  mov   $f2,#$2d
03aa: fa 15 f3  mov   ($f3),($15)       ; set PMON
03ad: 8f 3d f2  mov   $f2,#$3d
03b0: fa 14 f3  mov   ($f3),($14)       ; set NON
03b3: 8f 6c f2  mov   $f2,#$6c
03b6: fa 17 f3  mov   ($f3),($17)       ; set FLG
03b9: e4 12     mov   a,$12
03bb: 44 13     eor   a,$13
03bd: 24 13     and   a,$13
03bf: 8f 5c f2  mov   $f2,#$5c
03c2: c4 f3     mov   $f3,a             ; set KOF
03c4: e4 1a     mov   a,$1a
03c6: d0 0c     bne   $03d4
03c8: 8f 4d f2  mov   $f2,#$4d
03cb: fa 16 f3  mov   ($f3),($16)       ; set EON
03ce: 8f 0d f2  mov   $f2,#$0d
03d1: fa 18 f3  mov   ($f3),($18)       ; set EFB
03d4: 8f 4c f2  mov   $f2,#$4c
03d7: fa 12 f3  mov   ($f3),($12)       ; set KON
03da: e8 00     mov   a,#$00
03dc: c4 12     mov   $12,a
03de: c4 13     mov   $13,a
03e0: 6f        ret

03e1: f5 12 02  mov   a,$0212+x
03e4: 68 ff     cmp   a,#$ff
03e6: f0 0c     beq   $03f4
03e8: f4 8d     mov   a,$8d+x
03ea: 28 04     and   a,#$04
03ec: 04 10     or    a,$10             ; carry of tempo counter
03ee: f0 04     beq   $03f4
03f0: 9b 7b     dec   $7b+x             ; decrease wait counter (tick)
03f2: f0 01     beq   $03f5
03f4: 6f        ret

03f5: f4 45     mov   a,$45+x
03f7: c4 2d     mov   $2d,a
03f9: f4 57     mov   a,$57+x
03fb: c4 2e     mov   $2e,a             ; set vcmd read ptr (work)
03fd: 8d 00     mov   y,#$00
03ff: f7 2d     mov   a,($2d)+y
0401: 30 1d     bmi   $0420
0403: f0 03     beq   $0408             ; vcmd 00 - keep note length
; vcmd 00-7f - set note params
0405: d5 a2 02  mov   $02a2+x,a         ; set note length (vcmd itself)
0408: 3f 61 04  call  $0461             ; set wait counter
040b: fc        inc   y
040c: f7 2d     mov   a,($2d)+y
040e: 30 0e     bmi   $041e             ; arg1 must be in [00...7f]
0410: d5 2c 02  mov   $022c+x,a         ; arg1 - duration
0413: fc        inc   y
0414: f7 2d     mov   a,($2d)+y
0416: 30 06     bmi   $041e             ; arg2 must be in [00...7f]
0418: d5 d3 00  mov   $00d3+x,a         ; arg2 - velocity
041b: fc        inc   y
041c: f7 2d     mov   a,($2d)+y
041e: 2f 08     bra   $0428             ; dispatch next vcmd (must be 80-ff) with no wait
0420: 2d        push  a
0421: f5 a2 02  mov   a,$02a2+x         ; get last note length
0424: 3f 61 04  call  $0461             ; set wait counter
0427: ae        pop   a
0428: fc        inc   y
0429: 68 c0     cmp   a,#$c0
042b: b0 1c     bcs   $0449
042d: 68 a0     cmp   a,#$a0
042f: 90 11     bcc   $0442
0431: 2d        push  a
0432: f7 2d     mov   a,($2d)+y
0434: 10 07     bpl   $043d
0436: 28 7f     and   a,#$7f
0438: d5 d3 00  mov   $00d3+x,a         ; (80-ff) velocity
043b: 2f 03     bra   $0440
043d: d5 2c 02  mov   $022c+x,a         ; (00-7f) duration
0440: fc        inc   y
0441: ae        pop   a
; vcmd 80-9f - note
0442: 28 1f     and   a,#$1f            ; key (see vcmd d1-d3)
0444: 3f 68 04  call  $0468
0447: 2f 09     bra   $0452
; (c0-ff)
0449: 2d        push  a
044a: e8 00     mov   a,#$00
044c: d4 7b     mov   $7b+x,a
044e: ae        pop   a
044f: 3f 90 06  call  $0690             ; dispatch vcmd (c0-ff)
0452: f4 7b     mov   a,$7b+x
0454: f0 a9     beq   $03ff             ; continue if wait counter is not set
0456: dd        mov   a,y
0457: 8d 00     mov   y,#$00
0459: 7a 2d     addw  ya,$2d            ; skip Y bytes
045b: d4 45     mov   $45+x,a
045d: dd        mov   a,y
045e: d4 57     mov   $57+x,a           ; update voice ptr
0460: 6f        ret                     ; process next track

0461: 13 44 01  bbc0  $44,$0465
0464: 5c        lsr   a
0465: d4 7b     mov   $7b+x,a
0467: 6f        ret

0468: 6d        push  y
0469: c4 33     mov   $33,a             ; key offset from note byte
046b: f4 8d     mov   a,$8d+x
046d: 28 01     and   a,#$01
046f: f0 28     beq   $0499             ; melody/rhythm?
; rhythm channel
0471: f5 36 02  mov   a,$0236+x
0474: c4 02     mov   $02,a
0476: f5 48 02  mov   a,$0248+x
0479: c4 03     mov   $03,a             ; instrument address
047b: e4 33     mov   a,$33
047d: 1c        asl   a
047e: 8d 00     mov   y,#$00
0480: 7a 02     addw  ya,$02
0482: da 02     movw  $02,ya            ; += (key_offset * 2)
0484: 8d 00     mov   y,#$00
0486: f7 02     mov   a,($02)+y
0488: 3a 02     incw  $02
048a: 2d        push  a
048b: c4 06     mov   $06,a
048d: f7 02     mov   a,($02)+y
048f: 3a 02     incw  $02
0491: fd        mov   y,a
0492: ae        pop   a                 ; read envelope procedure offset (2 bytes)
0493: 7a 02     addw  ya,$02            ; relative offset to absolute address
0495: da 06     movw  $06,ya
0497: 2f 0a     bra   $04a3
; melody channel
0499: f5 36 02  mov   a,$0236+x
049c: c4 06     mov   $06,a
049e: f5 48 02  mov   a,$0248+x
04a1: c4 07     mov   $07,a             ; envelope procedure address
04a3: e4 33     mov   a,$33             ; key offset
04a5: 60        clrc
04a6: 95 6c 02  adc   a,$026c+x         ; add coarse tuning
04a9: 60        clrc
04aa: 95 5a 02  adc   a,$025a+x         ; add base key (vcmd d1-d3)
04ad: 28 7f     and   a,#$7f
04af: c4 33     mov   $33,a             ; set adjusted key back
04b1: 3f 58 05  call  $0558
04b4: b0 73     bcs   $0529             ; slur/tie, update only duration
04b6: 3f 49 0d  call  $0d49             ; get lowest priority voice
04b9: 68 00     cmp   a,#$00
04bb: f0 1d     beq   $04da             ; no more tests for unused channel
04bd: c4 38     mov   $38,a             ; lowest priority value
04bf: cc 37 00  mov   $0037,y           ; lowest priority channel # (candidate for new voice)
04c2: e4 06     mov   a,$06
04c4: 2d        push  a                 ; push $06
04c5: 8f 00 06  mov   $06,#$00
04c8: 7d        mov   a,x               ; virtual channel # (track #)
04c9: 3f 32 0d  call  $0d32             ; y = $0224[0..7].index(0)
04cc: ae        pop   a
04cd: c4 06     mov   $06,a             ; pop $06
04cf: b0 09     bcs   $04da             ; branch if $0224[0..7].include?(0)
04d1: e4 38     mov   a,$38
04d3: 74 c1     cmp   a,$c1+x
04d5: b0 5f     bcs   $0536
04d7: ec 37 00  mov   y,$0037
; register a new note
04da: f4 c1     mov   a,$c1+x
04dc: d6 cb 00  mov   $00cb+y,a         ; priority
04df: 7d        mov   a,x
04e0: d6 1c 02  mov   $021c+y,a         ; virtual channel #
04e3: e8 00     mov   a,#$00
04e5: d6 24 02  mov   $0224+y,a
04e8: 3f 38 05  call  $0538             ; panpot
04eb: e4 06     mov   a,$06
04ed: d6 4f 00  mov   $004f+y,a         ; envelope procedure address (lo)
04f0: e4 07     mov   a,$07
04f2: d6 61 00  mov   $0061+y,a         ; envelope procedure address (hi)
04f5: f5 7e 02  mov   a,$027e+x
04f8: d6 88 02  mov   $0288+y,a         ; fine tuning
04fb: e4 33     mov   a,$33
04fd: d6 64 02  mov   $0264+y,a         ; key (base + coarse tuning)
0500: d6 76 02  mov   $0276+y,a         ; key (will be modified by fine tuning)
0503: f5 d3 00  mov   a,$00d3+x
0506: d6 dd 00  mov   $00dd+y,a         ; velocity (0-127)
0509: f4 8d     mov   a,$8d+x
050b: 28 04     and   a,#$04
050d: d6 97 00  mov   $0097+y,a
0510: 3f 4b 05  call  $054b
0513: f6 c5 01  mov   a,$01c5+y         ; $01c5 = 1, 2, 4, 8, ... ?
0516: 48 ff     eor   a,#$ff
0518: 24 16     and   a,$16
051a: c4 16     mov   $16,a
051c: f4 8d     mov   a,$8d+x
051e: 28 08     and   a,#$08
0520: f0 07     beq   $0529
0522: f6 c5 01  mov   a,$01c5+y
0525: 04 16     or    a,$16
0527: c4 16     mov   $16,a
0529: f5 2c 02  mov   a,$022c+x         ; set duration
052c: f0 05     beq   $0533
052e: 13 44 01  bbc0  $44,$0532         ; full resolution?
0531: 5c        lsr   a
0532: bc        inc   a
0533: d6 b1 00  mov   $00b1+y,a
0536: ee        pop   y
0537: 6f        ret

; set panpot for hardware channel
0538: f5 00 02  mov   a,$0200+x         ; panpot (virtual)
053b: 10 0a     bpl   $0547             ; negative = 16 steps random pan
053d: 4d        push  x
053e: e4 0a     mov   a,$0a
0540: 28 0f     and   a,#$0f
0542: 5d        mov   x,a
0543: f5 1e 10  mov   a,$101e+x
0546: ce        pop   x
0547: d6 0a 02  mov   $020a+y,a         ; panpot (hardware)
054a: 6f        ret

054b: e8 80     mov   a,#$80
054d: d6 a9 00  mov   $00a9+y,a
0550: f6 c5 01  mov   a,$01c5+y
0553: 04 13     or    a,$13
0555: c4 13     mov   $13,a
0557: 6f        ret

; determine if the next note needs to be tied
; returns carry flag (true or false)
0558: 8d 07     mov   y,#$07            ; process for ch7 to ch0
055a: 7d        mov   a,x
055b: 76 1c 02  cmp   a,$021c+y
055e: d0 0c     bne   $056c             ; next unless channel match
0560: f6 b1 00  mov   a,$00b1+y
0563: d0 07     bne   $056c             ; next if dutation != 0 (0 => full length => tie)
0565: f6 64 02  mov   a,$0264+y
0568: 64 33     cmp   a,$33
056a: f0 05     beq   $0571             ; break if key matches to the target one
056c: dc        dec   y
056d: 10 eb     bpl   $055a
056f: 60        clrc
0570: 6f        ret
0571: 80        setc
0572: 6f        ret

0573: f4 a9     mov   a,$a9+x
0575: 10 17     bpl   $058e
0577: e8 ff     mov   a,#$ff
0579: d5 9a 02  mov   $029a+x,a
057c: e8 01     mov   a,#$01
057e: d4 85     mov   $85+x,a
0580: f5 38 10  mov   a,$1038+x
0583: d4 73     mov   $73+x,a
0585: e8 00     mov   a,#$00
0587: d5 d4 02  mov   $02d4+x,a
058a: e8 03     mov   a,#$03
058c: d4 a9     mov   $a9+x,a
058e: f5 1c 02  mov   a,$021c+x
0591: 10 06     bpl   $0599
0593: 68 ff     cmp   a,#$ff
0595: f0 0e     beq   $05a5
0597: 2f 0d     bra   $05a6
0599: 3f 5e 06  call  $065e
059c: f5 1c 02  mov   a,$021c+x
059f: 68 ff     cmp   a,#$ff
05a1: f0 02     beq   $05a5
05a3: 2f 01     bra   $05a6
05a5: 6f        ret

; process envelope procedure
; envelope procedure is fired by key-on, and runs simultaneously with main score.
; used for SRCN/ADSR selection, volume/key adjusting, vibrato and such.
05a6: 4d        push  x
05a7: 7d        mov   a,x
05a8: 60        clrc
05a9: 88 0a     adc   a,#$0a            ; channel number x += 10 (number of virtual channels)
05ab: 5d        mov   x,a
05ac: 9b 7b     dec   $7b+x             ; decrease wait counter (tick)
05ae: d0 25     bne   $05d5
05b0: f4 45     mov   a,$45+x
05b2: c4 2d     mov   $2d,a
05b4: f4 57     mov   a,$57+x
05b6: c4 2e     mov   $2e,a             ; set vcmd read ptr (work)
05b8: 8d 00     mov   y,#$00
05ba: f7 2d     mov   a,($2d)+y         ; read vcmd byte
05bc: 30 05     bmi   $05c3
; 00-7f - wait
05be: d4 7b     mov   $7b+x,a
05c0: fc        inc   y
05c1: 2f 08     bra   $05cb
; 80-ff - vcmd (80-bf should not be used, probably)
05c3: fc        inc   y
05c4: 3f 90 06  call  $0690             ; dispatch vcmd (c0-ff)
05c7: f4 7b     mov   a,$7b+x
05c9: f0 ef     beq   $05ba
05cb: dd        mov   a,y
05cc: 8d 00     mov   y,#$00
05ce: 7a 2d     addw  ya,$2d
05d0: d4 45     mov   $45+x,a
05d2: dd        mov   a,y
05d3: d4 57     mov   $57+x,a
05d5: ce        pop   x
05d6: 6f        ret

; update hardware voice channel
05d7: f5 1c 02  mov   a,$021c+x         ; current virtual channel #
05da: 10 34     bpl   $0610
05dc: 68 ff     cmp   a,#$ff
05de: d0 01     bne   $05e1             ; process unless $ff (not used)
05e0: 6f        ret

05e1: f4 a9     mov   a,$a9+x
05e3: c4 34     mov   $34,a
05e5: e8 00     mov   a,#$00
05e7: d4 a9     mov   $a9+x,a
05e9: 53 34 03  bbc2  $34,$05ef
05ec: 3f a6 0e  call  $0ea6
05ef: 13 34 0d  bbc0  $34,$05ff
05f2: f5 88 02  mov   a,$0288+x         ; fine tuning (fraction part of key)
05f5: c4 31     mov   $31,a
05f7: f5 76 02  mov   a,$0276+x         ; key
05fa: c4 32     mov   $32,a
05fc: 3f 4e 0f  call  $0f4e
05ff: 33 34 0d  bbc1  $34,$060f
0602: f5 9a 02  mov   a,$029a+x
0605: fd        mov   y,a
0606: f5 dd 00  mov   a,$00dd+x
0609: 1c        asl   a
060a: cf        mul   ya
060b: dd        mov   a,y
060c: 5f e5 0e  jmp   $0ee5

060f: 6f        ret

0610: f5 1c 02  mov   a,$021c+x
0613: fd        mov   y,a
0614: f6 9f 00  mov   a,$009f+y
0617: 14 a9     or    a,$a9+x
0619: c4 34     mov   $34,a
061b: e8 00     mov   a,#$00
061d: d4 a9     mov   $a9+x,a
061f: 53 34 03  bbc2  $34,$0625
0622: 3f a6 0e  call  $0ea6
0625: 13 34 18  bbc0  $34,$0640
0628: f5 1c 02  mov   a,$021c+x
062b: fd        mov   y,a
062c: f5 88 02  mov   a,$0288+x         ; fine tuning (fraction part of key)
062f: 60        clrc
0630: 96 b6 02  adc   a,$02b6+y         ; scaled pitch bend (fraction)
0633: c4 31     mov   $31,a
0635: f5 76 02  mov   a,$0276+x         ; key
0638: 96 c0 02  adc   a,$02c0+y         ; scaled pitch bend (integer)
063b: c4 32     mov   $32,a
063d: 3f 4e 0f  call  $0f4e
0640: 33 34 1a  bbc1  $34,$065d
0643: f5 1c 02  mov   a,$021c+x
0646: fd        mov   y,a
0647: f6 90 02  mov   a,$0290+y         ; channel volume
064a: fd        mov   y,a
064b: f5 9a 02  mov   a,$029a+x         ; instrument volume
064e: cf        mul   ya
064f: f5 dd 00  mov   a,$00dd+x         ; velocity (0-127)
0652: 1c        asl   a
0653: cf        mul   ya
0654: e4 1f     mov   a,$1f             ; master volume (0-127)
0656: 1c        asl   a
0657: cf        mul   ya
0658: dd        mov   a,y
0659: 1c        asl   a
065a: 5f e5 0e  jmp   $0ee5

065d: 6f        ret

065e: f4 97     mov   a,$97+x
0660: 04 10     or    a,$10
0662: f0 1b     beq   $067f
0664: f4 b1     mov   a,$b1+x
0666: f0 17     beq   $067f
0668: 30 11     bmi   $067b
066a: 9b b1     dec   $b1+x
066c: d0 11     bne   $067f
066e: e8 01     mov   a,#$01
0670: d4 cb     mov   $cb+x,a
0672: e8 ff     mov   a,#$ff
0674: d4 b1     mov   $b1+x,a
0676: f4 b9     mov   a,$b9+x
0678: f0 06     beq   $0680
067a: 6f        ret

067b: 9b b9     dec   $b9+x
067d: f0 01     beq   $0680
067f: 6f        ret

0680: 09 11 13  or    ($13),($11)
0683: e8 ff     mov   a,#$ff
0685: d5 1c 02  mov   $021c+x,a
0688: e8 00     mov   a,#$00
068a: d4 cb     mov   $cb+x,a
068c: d5 d4 02  mov   $02d4+x,a
068f: 6f        ret

; dispatch vcmd
0690: cb 02     mov   $02,y
0692: 80        setc
0693: a8 c0     sbc   a,#$c0
0695: 1c        asl   a
0696: fd        mov   y,a
0697: f6 a3 06  mov   a,$06a3+y
069a: 2d        push  a
069b: f6 a2 06  mov   a,$06a2+y
069e: 2d        push  a
069f: eb 02     mov   y,$02
06a1: 6f        ret

; vcmd dispatch table
; command with * can be used by envelope procedure
06af: dw $06f7  ; c0 - set instrument
06b1: dw $0728  ; c1 - set panpot
06b3: dw $073f  ; c2 - tempo fade
06b5: dw $0747  ; c3 - set tempo
06b7: dw $0756  ; c4 - transpose (absolute)
06b9: dw $0782  ; c5 - set volume *
06bb: dw $0750  ; c6 - set priority
06bd: dw $08ba  ; c7 - fine tuning (absolute) *
06bf: dw $0797  ; c8 - echo on
06c1: dw $079e  ; c9 - echo off
06c3: dw $07a5  ; ca - set echo params
06c5: dw $07c0  ; cb - jump
06c7: dw $07db  ; cc - call subroutine
06c9: dw $0807  ; cd - end subroutine
06cb: dw $081a  ; ce - repeat start (not $08a1)
06cd: dw $0840  ; cf - repeat end
06cf: dw $0869  ; d0 - end track
06d1: dw $075d  ; d1 - set base key
06d3: dw $0764  ; d2 - octave up (not $075d)
06d5: dw $076e  ; d3 - octave down
06d7: dw $06f0  ; d4 - rest
06d9: dw $0877  ; d5 - channel settings
06db: dw $0885  ; d6 - pitch bend range
06dd: dw $0904  ; d7 - coarse tuning (absolute) *
06df: dw $08ec  ; d8 - coarse tuning (relative) *
06e1: dw $08c1  ; d9 - fine tuning (relative) *
06e3: dw $0890  ; da - key on
06e5: dw $088c  ; db - key off
06e7: dw $0786  ; dc - add volume
06e9: dw $0894  ; dd - pitch bend
06eb: dw $0911  ; de - set waveform/envelope offset
06ed: dw $093d  ; df - reset voice
06ef: dw $094b  ; e0 - set DSP register
06f1: dw $094f  ; e1 - add DSP register
06f3: dw $08f4  ; e2 - tuning from table *
06f5: dw $0778  ; e3 - volume from table
06f7: dw $072c  ; e4 - set panpot from table
06f9: dw $095e  ; e5 - set duration from table
06fb: dw $096d  ; e6 - set timebase
                ; e7-ff - undefined

; vcmd d4 - rest
06f0: f5 a2 02  mov   a,$02a2+x
06f3: 3f 61 04  call  $0461
06f6: 6f        ret

; vcmd c0 - set instrument
06f7: dd        mov   a,y
06f8: 8d 00     mov   y,#$00
06fa: 7a 2d     addw  ya,$2d
06fc: da 2d     movw  $2d,ya
06fe: 8d 00     mov   y,#$00
0700: f7 2d     mov   a,($2d)+y
0702: 3a 2d     incw  $2d
0704: 2d        push  a
0705: f7 2d     mov   a,($2d)+y
0707: 3a 2d     incw  $2d
0709: fd        mov   y,a
070a: ae        pop   a
070b: 7a 2d     addw  ya,$2d
070d: da 02     movw  $02,ya
070f: f4 8d     mov   a,$8d+x
0711: 28 fe     and   a,#$fe
0713: 8d 00     mov   y,#$00
0715: 17 02     or    a,($02)+y
0717: d4 8d     mov   $8d+x,a
0719: 3a 02     incw  $02
071b: e4 02     mov   a,$02
071d: d5 36 02  mov   $0236+x,a
0720: e4 03     mov   a,$03
0722: d5 48 02  mov   $0248+x,a
0725: 8d 00     mov   y,#$00
0727: 6f        ret

; vcmd c1 - set panpot
0728: f7 2d     mov   a,($2d)+y
072a: 2f 08     bra   $0734
; vcmd e4 - set panpot from table
072c: 6d        push  y
072d: f7 2d     mov   a,($2d)+y
072f: fd        mov   y,a
0730: f6 dd 01  mov   a,$01dd+y
0733: ee        pop   y
; set panpot
0734: d5 00 02  mov   $0200+x,a
0737: f4 9f     mov   a,$9f+x
0739: 08 02     or    a,#$02
073b: d4 9f     mov   $9f+x,a
073d: fc        inc   y
073e: 6f        ret

; vcmd c2
073f: f7 2d     mov   a,($2d)+y
0741: c4 1e     mov   $1e,a
0743: fc        inc   y
0744: 5f c7 0b  jmp   $0bc7

; vcmd c3 - set tempo
0747: f7 2d     mov   a,($2d)+y
0749: c4 1c     mov   $1c,a
074b: 8f 00 1b  mov   $1b,#$00
074e: fc        inc   y
074f: 6f        ret

; vcmd c6 - set priority
0750: f7 2d     mov   a,($2d)+y
0752: d4 c1     mov   $c1+x,a
0754: fc        inc   y
0755: 6f        ret

; vcmd c4 - transpose? (absolute)
0756: f7 2d     mov   a,($2d)+y
0758: d5 6c 02  mov   $026c+x,a
075b: fc        inc   y
075c: 6f        ret

; vcmd d1 - set note key
075d: f7 2d     mov   a,($2d)+y
075f: fc        inc   y
0760: d5 5a 02  mov   $025a+x,a
0763: 6f        ret

; vcmd d2 - octave up
0764: f5 5a 02  mov   a,$025a+x
0767: 60        clrc
0768: 88 0c     adc   a,#$0c
076a: d5 5a 02  mov   $025a+x,a
076d: 6f        ret

; vcmd d3 - octave down
076e: f5 5a 02  mov   a,$025a+x
0771: 80        setc
0772: a8 0c     sbc   a,#$0c
0774: d5 5a 02  mov   $025a+x,a
0777: 6f        ret

; vcmd e3
0778: 6d        push  y
0779: f7 2d     mov   a,($2d)+y
077b: fd        mov   y,a
077c: f6 dd 01  mov   a,$01dd+y
077f: ee        pop   y
0780: 2f 0a     bra   $078c
; vcmd c5 - set volume
0782: f7 2d     mov   a,($2d)+y
0784: 2f 06     bra   $078c
; vcmd dc - add volume
0786: f7 2d     mov   a,($2d)+y
0788: 60        clrc
0789: 95 90 02  adc   a,$0290+x
078c: d5 90 02  mov   $0290+x,a
078f: f4 9f     mov   a,$9f+x
0791: 08 02     or    a,#$02
0793: d4 9f     mov   $9f+x,a
0795: fc        inc   y
0796: 6f        ret

; vcmd c8 - echo on
0797: f4 8d     mov   a,$8d+x
0799: 08 08     or    a,#$08
079b: d4 8d     mov   $8d+x,a
079d: 6f        ret

; vcmd c9 - echo off
079e: f4 8d     mov   a,$8d+x
07a0: 28 f7     and   a,#$f7
07a2: d4 8d     mov   $8d+x,a
07a4: 6f        ret

; vcmd ca - set echo params
07a5: f7 2d     mov   a,($2d)+y
07a7: fc        inc   y
07a8: 3f ee 0f  call  $0fee
07ab: f7 2d     mov   a,($2d)+y
07ad: fc        inc   y
07ae: c4 2c     mov   $2c,a
07b0: f7 2d     mov   a,($2d)+y
07b2: fc        inc   y
07b3: c4 18     mov   $18,a
07b5: f7 2d     mov   a,($2d)+y
07b7: fc        inc   y
07b8: 6d        push  y
07b9: 4d        push  x
07ba: 3f c0 0f  call  $0fc0
07bd: ce        pop   x
07be: ee        pop   y
07bf: 6f        ret

; vcmd cb - jump
07c0: dd        mov   a,y
07c1: 8d 00     mov   y,#$00
07c3: 7a 2d     addw  ya,$2d
07c5: da 2d     movw  $2d,ya
07c7: 8d 00     mov   y,#$00
07c9: f7 2d     mov   a,($2d)+y
07cb: 3a 2d     incw  $2d
07cd: 2d        push  a
07ce: f7 2d     mov   a,($2d)+y
07d0: 3a 2d     incw  $2d
07d2: fd        mov   y,a
07d3: ae        pop   a
07d4: 7a 2d     addw  ya,$2d
07d6: da 2d     movw  $2d,ya
07d8: 8d 00     mov   y,#$00
07da: 6f        ret

; vcmd cc - call subroutine
07db: dd        mov   a,y
07dc: 8d 00     mov   y,#$00
07de: 7a 2d     addw  ya,$2d
07e0: da 2d     movw  $2d,ya
07e2: 8d 00     mov   y,#$00
07e4: f7 2d     mov   a,($2d)+y
07e6: 3a 2d     incw  $2d
07e8: 2d        push  a
07e9: f7 2d     mov   a,($2d)+y
07eb: 3a 2d     incw  $2d
07ed: 2d        push  a
07ee: fb 69     mov   y,$69+x
07f0: e4 2d     mov   a,$2d
07f2: d6 40 10  mov   $1040+y,a
07f5: fc        inc   y
07f6: e4 2e     mov   a,$2e
07f8: d6 40 10  mov   $1040+y,a
07fb: fc        inc   y
07fc: db 69     mov   $69+x,y
07fe: ee        pop   y
07ff: ae        pop   a
0800: 7a 2d     addw  ya,$2d
0802: da 2d     movw  $2d,ya
0804: 8d 00     mov   y,#$00
0806: 6f        ret

; vcmd cd - end subroutine
0807: fb 69     mov   y,$69+x
0809: dc        dec   y
080a: f6 40 10  mov   a,$1040+y
080d: c4 2e     mov   $2e,a
080f: dc        dec   y
0810: f6 40 10  mov   a,$1040+y
0813: c4 2d     mov   $2d,a
0815: db 69     mov   $69+x,y
0817: 8d 00     mov   y,#$00
0819: 6f        ret

; vcmd ce - repeat start
081a: dd        mov   a,y
081b: 8d 00     mov   y,#$00
081d: 7a 2d     addw  ya,$2d
081f: da 2d     movw  $2d,ya
0821: 8d 00     mov   y,#$00
0823: f7 2d     mov   a,($2d)+y
0825: 3a 2d     incw  $2d
0827: 2d        push  a
0828: fb 69     mov   y,$69+x
082a: e4 2d     mov   a,$2d
082c: d6 40 10  mov   $1040+y,a
082f: fc        inc   y
0830: e4 2e     mov   a,$2e
0832: d6 40 10  mov   $1040+y,a
0835: fc        inc   y
0836: ae        pop   a
0837: d6 40 10  mov   $1040+y,a
083a: fc        inc   y
083b: db 69     mov   $69+x,y
083d: 8d 00     mov   y,#$00
083f: 6f        ret

; vcmd cf - repeat end
0840: dd        mov   a,y
0841: 8d 00     mov   y,#$00
0843: 7a 2d     addw  ya,$2d
0845: da 2d     movw  $2d,ya
0847: fb 69     mov   y,$69+x
0849: dc        dec   y
084a: f6 40 10  mov   a,$1040+y
084d: 9c        dec   a
084e: f0 12     beq   $0862
; repeat continue
0850: d6 40 10  mov   $1040+y,a
0853: dc        dec   y
0854: f6 40 10  mov   a,$1040+y
0857: c4 2e     mov   $2e,a
0859: dc        dec   y
085a: f6 40 10  mov   a,$1040+y
085d: c4 2d     mov   $2d,a
085f: 8d 00     mov   y,#$00
0861: 6f        ret
; repeat end
0862: dc        dec   y
0863: dc        dec   y
0864: db 69     mov   $69+x,y
0866: 8d 00     mov   y,#$00
0868: 6f        ret

; vcmd d0
0869: e8 ff     mov   a,#$ff
086b: d5 12 02  mov   $0212+x,a
086e: e8 00     mov   a,#$00
0870: d4 c1     mov   $c1+x,a
0872: e8 01     mov   a,#$01
0874: d4 7b     mov   $7b+x,a
0876: 6f        ret

; vcmd d5
0877: f4 8d     mov   a,$8d+x
0879: 28 fd     and   a,#$fd
087b: d4 8d     mov   $8d+x,a
087d: f7 2d     mov   a,($2d)+y
087f: fc        inc   y
0880: 14 8d     or    a,$8d+x
0882: d4 8d     mov   $8d+x,a
0884: 6f        ret

; vcmd d6 - pitch bend range
0885: f7 2d     mov   a,($2d)+y
0887: fc        inc   y
0888: d5 ac 02  mov   $02ac+x,a
088b: 6f        ret

; vcmd db - key off
088c: 09 11 13  or    ($13),($11)
088f: 6f        ret

; vcmd da - key on
0890: 09 11 12  or    ($12),($11)
0893: 6f        ret

; vcmd dd - pitch bend
0894: f7 2d     mov   a,($2d)+y
0896: 6d        push  y
0897: c4 03     mov   $03,a
0899: 10 04     bpl   $089f
089b: e8 03     mov   a,#$03
089d: 2f 02     bra   $08a1
089f: e8 00     mov   a,#$00
08a1: 5c        lsr   a
08a2: 6b 03     ror   $03
08a4: 7c        ror   a
08a5: 6b 03     ror   $03
08a7: 7c        ror   a
08a8: c4 02     mov   $02,a
08aa: f5 ac 02  mov   a,$02ac+x
08ad: 3f 40 0e  call  $0e40
08b0: d5 b6 02  mov   $02b6+x,a
08b3: dd        mov   a,y
08b4: d5 c0 02  mov   $02c0+x,a
08b7: ee        pop   y
08b8: 2f 4f     bra   $0909
; vcmd c7 - fine tuning (absolute)
08ba: f7 2d     mov   a,($2d)+y
08bc: d5 7e 02  mov   $027e+x,a
08bf: 2f 48     bra   $0909
; vcmd d9 - fine tuning (relative)
08c1: f7 2d     mov   a,($2d)+y
08c3: 30 10     bmi   $08d5
; arg1 >= 0
08c5: 60        clrc
08c6: 95 7e 02  adc   a,$027e+x
08c9: d5 7e 02  mov   $027e+x,a
08cc: 90 3b     bcc   $0909
08ce: f5 6c 02  mov   a,$026c+x
08d1: 88 00     adc   a,#$00
08d3: 2f 31     bra   $0906
; arg1 < 0
08d5: 60        clrc
08d6: 95 7e 02  adc   a,$027e+x
08d9: d5 7e 02  mov   $027e+x,a
08dc: b0 2b     bcs   $0909
08de: f5 6c 02  mov   a,$026c+x
08e1: a8 00     sbc   a,#$00
08e3: 10 21     bpl   $0906
08e5: e8 00     mov   a,#$00
08e7: d5 7e 02  mov   $027e+x,a
08ea: 2f 1a     bra   $0906
; vcmd d8 - coarse tuning (relative)
08ec: f7 2d     mov   a,($2d)+y
08ee: 60        clrc
08ef: 95 6c 02  adc   a,$026c+x
08f2: 2f 12     bra   $0906
; vcmd e2
08f4: 6d        push  y
08f5: f7 2d     mov   a,($2d)+y
08f7: fd        mov   y,a
08f8: f6 dd 01  mov   a,$01dd+y
08fb: d5 7e 02  mov   $027e+x,a
08fe: f6 e1 01  mov   a,$01e1+y
0901: ee        pop   y
0902: 2f 02     bra   $0906
; vcmd d7 - coarse tuning (absolute)
0904: f7 2d     mov   a,($2d)+y
0906: d5 6c 02  mov   $026c+x,a
0909: f4 9f     mov   a,$9f+x
090b: 08 01     or    a,#$01
090d: d4 9f     mov   $9f+x,a
090f: fc        inc   y
0910: 6f        ret

; vcmd de - set waveform/envelope offset
0911: 8f 5c f2  mov   $f2,#$5c
0914: fa 11 f3  mov   ($f3),($11)
0917: dd        mov   a,y
0918: 8d 00     mov   y,#$00
091a: 7a 2d     addw  ya,$2d
091c: da 2d     movw  $2d,ya
091e: 8d 00     mov   y,#$00
0920: f7 2d     mov   a,($2d)+y
0922: 3a 2d     incw  $2d
0924: 2d        push  a
0925: f7 2d     mov   a,($2d)+y
0927: 3a 2d     incw  $2d
0929: fd        mov   y,a
092a: ae        pop   a
092b: 7a 2d     addw  ya,$2d
092d: d5 36 02  mov   $0236+x,a
0930: dd        mov   a,y
0931: d5 48 02  mov   $0248+x,a
0934: f4 9f     mov   a,$9f+x
0936: 08 04     or    a,#$04
0938: d4 9f     mov   $9f+x,a
093a: 8d 00     mov   y,#$00
093c: 6f        ret

; vcmd df
093d: f7 2d     mov   a,($2d)+y
093f: f0 05     beq   $0946
0941: 2d        push  a
0942: 3f 13 0d  call  $0d13
0945: ae        pop   a
0946: d5 ca 02  mov   $02ca+x,a
0949: fc        inc   y
094a: 6f        ret

; vcmd e0
094b: f7 2d     mov   a,($2d)+y
094d: 2f 07     bra   $0956
; vcmd e1
094f: f7 2d     mov   a,($2d)+y
0951: 60        clrc
0952: 84 17     adc   a,$17
0954: 28 1f     and   a,#$1f
0956: 38 e0 17  and   $17,#$e0
0959: 0e 17 00  tset1 $0017
095c: fc        inc   y
095d: 6f        ret

; vcmd e5
095e: 6d        push  y
095f: f7 2d     mov   a,($2d)+y
0961: fd        mov   y,a
0962: f6 dd 01  mov   a,$01dd+y
0965: d0 01     bne   $0968
0967: bc        inc   a
0968: d4 7b     mov   $7b+x,a
096a: ee        pop   y
096b: fc        inc   y
096c: 6f        ret

; vcmd e6 - set timebase
096d: f7 2d     mov   a,($2d)+y
096f: c4 44     mov   $44,a
0971: fc        inc   y
0972: 6f        ret

0973: e4 f4     mov   a,$f4
0975: 64 f4     cmp   a,$f4
0977: d0 fa     bne   $0973
0979: c4 39     mov   $39,a
097b: 28 ff     and   a,#$ff
097d: f0 19     beq   $0998
097f: e8 00     mov   a,#$00
0981: c4 f4     mov   $f4,a
0983: c4 42     mov   $42,a
0985: 3f de 09  call  $09de
0988: 8f 31 f1  mov   $f1,#$31
098b: 8f 31 f1  mov   $f1,#$31
098e: ab 3d     inc   $3d
0990: fa 3d f5  mov   ($f5),($3d)
0993: 3f e8 09  call  $09e8
0996: 2f db     bra   $0973
0998: e4 42     mov   a,$42
099a: 68 01     cmp   a,#$01
099c: f0 05     beq   $09a3
099e: 68 02     cmp   a,#$02
09a0: f0 0b     beq   $09ad
09a2: 6f        ret

09a3: fa 3e f6  mov   ($f6),($3e)
09a6: fa 3f f7  mov   ($f7),($3f)
09a9: 8f 01 f4  mov   $f4,#$01
09ac: 6f        ret

09ad: cd 09     mov   x,#$09
09af: e4 43     mov   a,$43
09b1: 75 12 02  cmp   a,$0212+x
09b4: f0 16     beq   $09cc
09b6: 1d        dec   x
09b7: 10 f8     bpl   $09b1
09b9: cd 07     mov   x,#$07
09bb: 08 80     or    a,#$80
09bd: 75 1c 02  cmp   a,$021c+x
09c0: f0 0a     beq   $09cc
09c2: 1d        dec   x
09c3: 10 f8     bpl   $09bd
09c5: 8f 00 f6  mov   $f6,#$00
09c8: 8f 02 f4  mov   $f4,#$02
09cb: 6f        ret

09cc: 8f ff f6  mov   $f6,#$ff
09cf: 8f 02 f4  mov   $f4,#$02
09d2: 6f        ret

09d3: e4 f4     mov   a,$f4
09d5: 64 f4     cmp   a,$f4
09d7: d0 fa     bne   $09d3
09d9: 28 ff     and   a,#$ff
09db: f0 f6     beq   $09d3
09dd: 6f        ret

09de: fa f5 3a  mov   ($3a),($f5)
09e1: fa f6 3b  mov   ($3b),($f6)
09e4: fa f7 3c  mov   ($3c),($f7)
09e7: 6f        ret

09e8: e4 39     mov   a,$39
09ea: 30 03     bmi   $09ef
09ec: 5f 2d 0c  jmp   $0c2d

09ef: 28 1f     and   a,#$1f
09f1: 1c        asl   a
09f2: fd        mov   y,a
09f3: f6 fd 09  mov   a,$09fd+y
09f6: 2d        push  a
09f7: f6 fc 09  mov   a,$09fc+y
09fa: 2d        push  a
09fb: 6f        ret

09fc: dw $0a93  ; 00
09fe: dw $0a9a  ; 01
0a00: dw $0aa9  ; 02
0a02: dw $0ab2  ; 03
0a04: dw $0abf  ; 04
0a06: dw $0a5c  ; 05
0a08: dw $0a60  ; 06
0a0a: dw $0a3c  ; 07
0a0c: dw $0a47  ; 08
0a0e: dw $0a40  ; 09
0a10: dw $09fb  ; 0a
0a12: dw $09fb  ; 0b
0a14: dw $09fb  ; 0c
0a16: dw $09fb  ; 0d
0a18: dw $09fb  ; 0e
0a1a: dw $09fb  ; 0f
0a1c: dw $0b39  ; 10
0a1e: dw $0b53  ; 11
0a20: dw $0c07  ; 12
0a22: dw $0b75  ; 13
0a24: dw $0b8d  ; 14
0a26: dw $0baf  ; 15
0a28: dw $0b6d  ; 16
0a2a: dw $0b71  ; 17
0a2c: dw $0d10  ; 18
0a2e: dw $0c20  ; 19
0a30: dw $0b81  ; 1a
0a32: dw $0b9e  ; 1b
0a34: dw $0bbb  ; 1c
0a36: dw $0be1  ; 1d
0a38: dw $0b0f  ; 1e
0a3a: dw $09fb  ; 1f

0a40: fa 3a 42  mov   ($42),($3a)
0a43: fa 3b 43  mov   ($43),($3b)
0a46: 6f        ret

0a47: e4 41     mov   a,$41
0a49: 9c        dec   a
0a4a: 1c        asl   a
0a4b: 5d        mov   x,a
0a4c: e4 3b     mov   a,$3b
0a4e: eb 3c     mov   y,$3c
0a50: 7a 3e     addw  ya,$3e
0a52: d5 00 12  mov   $1200+x,a
0a55: dd        mov   a,y
0a56: d5 01 12  mov   $1201+x,a
0a59: ab 41     inc   $41
0a5b: 6f        ret

0a5c: fa 3b 40  mov   ($40),($3b)
0a5f: 6f        ret

0a60: e4 40     mov   a,$40
0a62: 1c        asl   a
0a63: 1c        asl   a
0a64: 5d        mov   x,a
0a65: e4 3b     mov   a,$3b
0a67: eb 3c     mov   y,$3c
0a69: 7a 3e     addw  ya,$3e
0a6b: d5 00 11  mov   $1100+x,a
0a6e: dd        mov   a,y
0a6f: d5 01 11  mov   $1101+x,a
0a72: 3f d3 09  call  $09d3
0a75: 3f de 09  call  $09de
0a78: e4 3b     mov   a,$3b
0a7a: eb 3c     mov   y,$3c
0a7c: 7a 3e     addw  ya,$3e
0a7e: d5 02 11  mov   $1102+x,a
0a81: dd        mov   a,y
0a82: d5 03 11  mov   $1103+x,a
0a85: 8f 31 f1  mov   $f1,#$31
0a88: 8f 31 f1  mov   $f1,#$31
0a8b: ab 3d     inc   $3d
0a8d: fa 3d f5  mov   ($f5),($3d)
0a90: ab 40     inc   $40
0a92: 6f        ret

0a93: fa 3b 3e  mov   ($3e),($3b)
0a96: fa 3c 3f  mov   ($3f),($3c)
0a99: 6f        ret

0a9a: 8d 00     mov   y,#$00
0a9c: e4 3b     mov   a,$3b
0a9e: d7 3e     mov   ($3e)+y,a
0aa0: 3a 3e     incw  $3e
0aa2: e4 3c     mov   a,$3c
0aa4: d7 3e     mov   ($3e)+y,a
0aa6: 3a 3e     incw  $3e
0aa8: 6f        ret

0aa9: 8d 00     mov   y,#$00
0aab: e4 3b     mov   a,$3b
0aad: d7 3e     mov   ($3e)+y,a
0aaf: 3a 3e     incw  $3e
0ab1: 6f        ret

0ab2: fa 3b 06  mov   ($06),($3b)
0ab5: fa 3c 07  mov   ($07),($3c)
0ab8: e4 3a     mov   a,$3a
0aba: 8d 00     mov   y,#$00
0abc: d7 06     mov   ($06)+y,a
0abe: 6f        ret

0abf: fa 3b 02  mov   ($02),($3b)
0ac2: fa 3c 03  mov   ($03),($3c)
0ac5: 4b 03     lsr   $03
0ac7: 6b 02     ror   $02
0ac9: 6b 04     ror   $04
0acb: 8d 00     mov   y,#$00
0acd: 1a 02     decw  $02
0acf: 30 1f     bmi   $0af0
0ad1: 3f d3 09  call  $09d3
0ad4: 3f de 09  call  $09de
0ad7: e4 3b     mov   a,$3b
0ad9: d7 3e     mov   ($3e)+y,a
0adb: 3a 3e     incw  $3e
0add: e4 3c     mov   a,$3c
0adf: d7 3e     mov   ($3e)+y,a
0ae1: 3a 3e     incw  $3e
0ae3: 8f 31 f1  mov   $f1,#$31
0ae6: 8f 31 f1  mov   $f1,#$31
0ae9: ab 3d     inc   $3d
0aeb: fa 3d f5  mov   ($f5),($3d)
0aee: 2f dd     bra   $0acd
0af0: e4 04     mov   a,$04
0af2: 10 17     bpl   $0b0b
0af4: 3f d3 09  call  $09d3
0af7: 3f de 09  call  $09de
0afa: e4 3b     mov   a,$3b
0afc: d7 3e     mov   ($3e)+y,a
0afe: 3a 3e     incw  $3e
0b00: 8f 31 f1  mov   $f1,#$31
0b03: 8f 31 f1  mov   $f1,#$31
0b06: ab 3d     inc   $3d
0b08: fa 3d f5  mov   ($f5),($3d)
0b0b: 3f b9 0f  call  $0fb9
0b0e: 6f        ret

0b0f: 3f 15 0b  call  $0b15
0b12: 5f 64 0e  jmp   $0e64

0b15: 3f 5b 0d  call  $0d5b
0b18: 3f 6a 0d  call  $0d6a
0b1b: e8 00     mov   a,#$00
0b1d: c4 0e     mov   $0e,a
0b1f: c4 2a     mov   $2a,a
0b21: c4 2b     mov   $2b,a
0b23: c4 24     mov   $24,a
0b25: c4 25     mov   $25,a
0b27: c4 2c     mov   $2c,a
0b29: 3f 70 0e  call  $0e70
0b2c: 3f 53 0b  call  $0b53
0b2f: 3f 45 03  call  $0345
0b32: 3f 45 03  call  $0345
0b35: 3f 45 03  call  $0345
0b38: 6f        ret

0b39: cd 00     mov   x,#$00
0b3b: 8f 01 11  mov   $11,#$01
0b3e: f4 97     mov   a,$97+x
0b40: 08 10     or    a,#$10
0b42: d4 97     mov   $97+x,a
0b44: f4 a9     mov   a,$a9+x
0b46: 08 02     or    a,#$02
0b48: d4 a9     mov   $a9+x,a
0b4a: 3d        inc   x
0b4b: 0b 11     asl   $11
0b4d: d0 ef     bne   $0b3e
0b4f: 18 01 0f  or    $0f,#$01
0b52: 6f        ret

0b53: cd 00     mov   x,#$00
0b55: 8f 01 11  mov   $11,#$01
0b58: f4 97     mov   a,$97+x
0b5a: 28 ef     and   a,#$ef
0b5c: d4 97     mov   $97+x,a
0b5e: f4 a9     mov   a,$a9+x
0b60: 08 02     or    a,#$02
0b62: d4 a9     mov   $a9+x,a
0b64: 3d        inc   x
0b65: 0b 11     asl   $11
0b67: d0 ef     bne   $0b58
0b69: 38 fe 0f  and   $0f,#$fe
0b6c: 6f        ret

0b6d: 18 02 0f  or    $0f,#$02
0b70: 6f        ret

0b71: 38 fd 0f  and   $0f,#$fd
0b74: 6f        ret

0b75: e8 00     mov   a,#$00
0b77: c4 2a     mov   $2a,a
0b79: c4 2b     mov   $2b,a
0b7b: fa 3b 27  mov   ($27),($3b)
0b7e: 5f 70 0e  jmp   $0e70

0b81: e8 00     mov   a,#$00
0b83: c4 24     mov   $24,a
0b85: c4 25     mov   $25,a
0b87: fa 3b 21  mov   ($21),($3b)
0b8a: 5f c7 0b  jmp   $0bc7

0b8d: fa 3b 2a  mov   ($2a),($3b)
0b90: e8 00     mov   a,#$00
0b92: 0b 2a     asl   $2a
0b94: 3c        rol   a
0b95: c4 2b     mov   $2b,a
0b97: fa 3c 29  mov   ($29),($3c)
0b9a: 8f ff 28  mov   $28,#$ff
0b9d: 6f        ret

0b9e: fa 3b 24  mov   ($24),($3b)
0ba1: e8 00     mov   a,#$00
0ba3: 0b 24     asl   $24
0ba5: 3c        rol   a
0ba6: c4 25     mov   $25,a
0ba8: fa 3c 23  mov   ($23),($3c)
0bab: 8f ff 22  mov   $22,#$ff
0bae: 6f        ret

0baf: 3f 8d 0b  call  $0b8d
0bb2: ba 00     movw  ya,$00
0bb4: 9a 2a     subw  ya,$2a
0bb6: da 2a     movw  $2a,ya
0bb8: ab 28     inc   $28
0bba: 6f        ret

0bbb: 3f 9e 0b  call  $0b9e
0bbe: ba 00     movw  ya,$00
0bc0: 9a 24     subw  ya,$24
0bc2: da 24     movw  $24,ya
0bc4: ab 22     inc   $22
0bc6: 6f        ret

0bc7: 4d        push  x
0bc8: 6d        push  y
0bc9: e4 1e     mov   a,$1e
0bcb: eb 21     mov   y,$21
0bcd: cf        mul   ya
0bce: cc 1f 00  mov   $001f,y
0bd1: cd 00     mov   x,#$00
0bd3: f4 9f     mov   a,$9f+x
0bd5: 08 02     or    a,#$02
0bd7: d4 9f     mov   $9f+x,a
0bd9: 3d        inc   x
0bda: c8 0a     cmp   x,#$0a
0bdc: d0 f5     bne   $0bd3
0bde: ee        pop   y
0bdf: ce        pop   x
0be0: 6f        ret

0be1: e4 3a     mov   a,$3a
0be3: 08 80     or    a,#$80
0be5: cd 00     mov   x,#$00
0be7: 8f 01 11  mov   $11,#$01
0bea: 75 1c 02  cmp   a,$021c+x
0bed: d0 12     bne   $0c01
0bef: 2d        push  a
0bf0: e4 3c     mov   a,$3c
0bf2: d5 0a 02  mov   $020a+x,a
0bf5: e4 3b     mov   a,$3b
0bf7: d5 dd 00  mov   $00dd+x,a
0bfa: f4 a9     mov   a,$a9+x
0bfc: 08 02     or    a,#$02
0bfe: d4 a9     mov   $a9+x,a
0c00: ae        pop   a
0c01: 3d        inc   x
0c02: 0b 11     asl   $11
0c04: d0 e4     bne   $0bea
0c06: 6f        ret

0c07: e4 3a     mov   a,$3a
0c09: 08 80     or    a,#$80
0c0b: cd 00     mov   x,#$00
0c0d: 8f 01 11  mov   $11,#$01
0c10: 75 1c 02  cmp   a,$021c+x
0c13: d0 05     bne   $0c1a
0c15: 2d        push  a
0c16: 3f 80 06  call  $0680
0c19: ae        pop   a
0c1a: 3d        inc   x
0c1b: 0b 11     asl   $11
0c1d: d0 f1     bne   $0c10
0c1f: 6f        ret

0c20: eb 3a     mov   y,$3a
0c22: e4 3b     mov   a,$3b
0c24: d6 dd 01  mov   $01dd+y,a
0c27: e4 3c     mov   a,$3c
0c29: d6 e1 01  mov   $01e1+y,a
0c2c: 6f        ret

0c2d: 1c        asl   a
0c2e: fd        mov   y,a
0c2f: f6 fe 11  mov   a,$11fe+y
0c32: c4 04     mov   $04,a
0c34: f6 ff 11  mov   a,$11ff+y
0c37: c4 05     mov   $05,a
; set song header ptr
0c39: 8d 00     mov   y,#$00
0c3b: f7 04     mov   a,($04)+y
; read first byte
0c3d: 10 05     bpl   $0c44
0c3f: 68 ff     cmp   a,#$ff
0c41: d0 14     bne   $0c57
0c43: 6f        ret

0c44: 3f e4 0c  call  $0ce4
0c47: e8 04     mov   a,#$04
0c49: 3f ee 0f  call  $0fee
0c4c: 8f 12 2c  mov   $2c,#$12
0c4f: 8f 50 18  mov   $18,#$50
0c52: e8 02     mov   a,#$02
0c54: 5f c0 0f  jmp   $0fc0

0c57: 28 7f     and   a,#$7f
0c59: c4 08     mov   $08,a
0c5b: 3a 04     incw  $04
0c5d: 8f 00 06  mov   $06,#$00
0c60: 8d 00     mov   y,#$00
0c62: f7 04     mov   a,($04)+y
0c64: 10 16     bpl   $0c7c
0c66: 68 ff     cmp   a,#$ff
0c68: f0 6d     beq   $0cd7
0c6a: 3f 49 0d  call  $0d49
0c6d: 64 08     cmp   a,$08
0c6f: 90 1b     bcc   $0c8c
0c71: e4 39     mov   a,$39
0c73: 08 80     or    a,#$80
0c75: 3f 32 0d  call  $0d32
0c78: 90 5d     bcc   $0cd7
0c7a: 2f 10     bra   $0c8c
0c7c: e4 39     mov   a,$39
0c7e: 08 80     or    a,#$80
0c80: 3f 32 0d  call  $0d32
0c83: b0 07     bcs   $0c8c
0c85: 3f 49 0d  call  $0d49
0c88: 64 08     cmp   a,$08
0c8a: b0 4b     bcs   $0cd7
0c8c: 3a 04     incw  $04
0c8e: 6d        push  y
0c8f: ce        pop   x
0c90: 8d 00     mov   y,#$00
0c92: f7 04     mov   a,($04)+y
0c94: 2d        push  a
0c95: 3a 04     incw  $04
0c97: f7 04     mov   a,($04)+y
0c99: fd        mov   y,a
0c9a: ae        pop   a
0c9b: 3a 04     incw  $04
0c9d: 7a 04     addw  ya,$04
0c9f: d4 4f     mov   $4f+x,a
0ca1: dd        mov   a,y
0ca2: d4 61     mov   $61+x,a
0ca4: e4 39     mov   a,$39
0ca6: 08 80     or    a,#$80
0ca8: d5 1c 02  mov   $021c+x,a
0cab: e4 06     mov   a,$06
0cad: d5 24 02  mov   $0224+x,a
0cb0: ab 06     inc   $06
0cb2: e4 08     mov   a,$08
0cb4: d4 cb     mov   $cb+x,a
0cb6: e8 00     mov   a,#$00
0cb8: d5 88 02  mov   $0288+x,a
0cbb: 3f d8 0c  call  $0cd8
0cbe: e4 3c     mov   a,$3c
0cc0: d5 0a 02  mov   $020a+x,a
0cc3: e4 3b     mov   a,$3b
0cc5: d5 dd 00  mov   $00dd+x,a
0cc8: e8 04     mov   a,#$04
0cca: d4 97     mov   $97+x,a
0ccc: f5 c5 01  mov   a,$01c5+x
0ccf: 48 ff     eor   a,#$ff
0cd1: 24 16     and   a,$16
0cd3: c4 16     mov   $16,a
0cd5: 2f 89     bra   $0c60
0cd7: 6f        ret

0cd8: e8 80     mov   a,#$80
0cda: d4 a9     mov   $a9+x,a
0cdc: f5 c5 01  mov   a,$01c5+x
0cdf: 04 13     or    a,$13
0ce1: c4 13     mov   $13,a
0ce3: 6f        ret

0ce4: fa 39 0e  mov   ($0e),($39)
0ce7: 3f 53 0b  call  $0b53
0cea: 3f 5b 0d  call  $0d5b
0ced: 3f 8f 0d  call  $0d8f
0cf0: 3f 45 03  call  $0345
0cf3: 8f 00 16  mov   $16,#$00
0cf6: 8f f0 1e  mov   $1e,#$f0
0cf9: 3f c7 0b  call  $0bc7
0cfc: 8f 20 1c  mov   $1c,#$20
; set default tempo
0cff: 8d 00     mov   y,#$00
0d01: f7 04     mov   a,($04)+y
0d03: 68 ff     cmp   a,#$ff
0d05: f0 08     beq   $0d0f
; read score ptr until $ff appears
0d07: 3a 04     incw  $04
0d09: 5d        mov   x,a
; save channel index to X
0d0a: 3f a2 0d  call  $0da2
; read score ptr for channel X
0d0d: 2f f0     bra   $0cff
0d0f: 6f        ret

0d10: 5f 78 0d  jmp   $0d78

0d13: c4 02     mov   $02,a
0d15: e4 11     mov   a,$11
0d17: 2d        push  a
0d18: 4d        push  x
0d19: cd 07     mov   x,#$07
0d1b: e4 02     mov   a,$02
0d1d: 75 d4 02  cmp   a,$02d4+x
0d20: d0 08     bne   $0d2a
0d22: f5 c5 01  mov   a,$01c5+x
0d25: c4 11     mov   $11,a
0d27: 3f 80 06  call  $0680
0d2a: 1d        dec   x
0d2b: 10 ee     bpl   $0d1b
0d2d: ce        pop   x
0d2e: ae        pop   a
0d2f: c4 11     mov   $11,a
0d31: 6f        ret

0d32: 8d 07     mov   y,#$07
0d34: 76 1c 02  cmp   a,$021c+y
0d37: d0 09     bne   $0d42
; next unless channel == A
0d39: 2d        push  a
0d3a: f6 24 02  mov   a,$0224+y
0d3d: 64 06     cmp   a,$06
0d3f: f0 06     beq   $0d47
; break if $0224+y == $06
0d41: ae        pop   a
0d42: dc        dec   y
0d43: 10 ef     bpl   $0d34
0d45: 60        clrc
0d46: 6f        ret
0d47: ae        pop   a
0d48: 6f        ret

; get lowest priority voice
; return { a: priority, y: channel # }

0d49: 4d        push  x
0d4a: cd 07     mov   x,#$07
0d4c: e8 ff     mov   a,#$ff
0d4e: 74 cb     cmp   a,$cb+x
0d50: 90 04     bcc   $0d56
0d52: f4 cb     mov   a,$cb+x
0d54: 4d        push  x
0d55: ee        pop   y
0d56: 1d        dec   x
0d57: 10 f5     bpl   $0d4e
0d59: ce        pop   x
0d5a: 6f        ret

0d5b: cd 09     mov   x,#$09
0d5d: e8 ff     mov   a,#$ff
0d5f: d5 12 02  mov   $0212+x,a
0d62: e8 00     mov   a,#$00
0d64: d4 c1     mov   $c1+x,a
0d66: 1d        dec   x
0d67: 10 f4     bpl   $0d5d
0d69: 6f        ret

0d6a: cd 00     mov   x,#$00
0d6c: 8f 01 11  mov   $11,#$01
0d6f: 3f 80 06  call  $0680
0d72: 3d        inc   x
0d73: 0b 11     asl   $11
0d75: d0 f8     bne   $0d6f
0d77: 6f        ret

; get lowest priority voice
; return { a: priority, y: channel # }
0d78: cd 00     mov   x,#$00
0d7a: 8f 01 11  mov   $11,#$01
0d7d: f5 1c 02  mov   a,$021c+x
0d80: 10 07     bpl   $0d89
0d82: 68 ff     cmp   a,#$ff
0d84: f0 03     beq   $0d89
0d86: 3f 80 06  call  $0680
0d89: 3d        inc   x
0d8a: 0b 11     asl   $11
0d8c: d0 ef     bne   $0d7d
0d8e: 6f        ret

0d8f: cd 00     mov   x,#$00
0d91: 8f 01 11  mov   $11,#$01
0d94: f5 1c 02  mov   a,$021c+x
0d97: 30 03     bmi   $0d9c
0d99: 3f 80 06  call  $0680
0d9c: 3d        inc   x
0d9d: 0b 11     asl   $11
0d9f: d0 f3     bne   $0d94
0da1: 6f        ret

0da2: f7 04     mov   a,($04)+y
0da4: 2d        push  a
0da5: 3a 04     incw  $04
0da7: f7 04     mov   a,($04)+y
0da9: fd        mov   y,a
0daa: ae        pop   a
0dab: 3a 04     incw  $04
0dad: 7a 04     addw  ya,$04
; offset to address
0daf: d4 45     mov   $45+x,a
; read vcmd read ptr (lo)
0db1: dd        mov   a,y
0db2: d4 57     mov   $57+x,a
; read vcmd read ptr (hi)
0db4: e4 39     mov   a,$39
0db6: d5 12 02  mov   $0212+x,a
0db9: e8 00     mov   a,#$00
0dbb: d5 5a 02  mov   $025a+x,a
0dbe: d5 6c 02  mov   $026c+x,a
0dc1: d5 7e 02  mov   $027e+x,a
0dc4: d5 b6 02  mov   $02b6+x,a
0dc7: d5 c0 02  mov   $02c0+x,a
0dca: d4 9f     mov   $9f+x,a
0dcc: bc        inc   a
0dcd: d4 7b     mov   $7b+x,a
0dcf: e8 08     mov   a,#$08
0dd1: d4 8d     mov   $8d+x,a
0dd3: e8 10     mov   a,#$10
0dd5: d5 00 02  mov   $0200+x,a
0dd8: e8 c8     mov   a,#$c8
0dda: d5 90 02  mov   $0290+x,a
0ddd: e8 20     mov   a,#$20
0ddf: d5 ac 02  mov   $02ac+x,a
0de2: e8 40     mov   a,#$40
0de4: d4 c1     mov   $c1+x,a
0de6: f5 2e 10  mov   a,$102e+x
0de9: d4 69     mov   $69+x,a
0deb: 6f        ret

0dec: ba 2a     movw  ya,$2a
0dee: f0 25     beq   $0e15
0df0: 30 0c     bmi   $0dfe
0df2: 7a 26     addw  ya,$26
0df4: da 26     movw  $26,ya
0df6: 30 10     bmi   $0e08
0df8: 9a 28     subw  ya,$28
0dfa: 30 14     bmi   $0e10
0dfc: 2f 0a     bra   $0e08
0dfe: 7a 26     addw  ya,$26
0e00: da 26     movw  $26,ya
0e02: 30 04     bmi   $0e08
0e04: 9a 28     subw  ya,$28
0e06: 10 08     bpl   $0e10
0e08: ba 28     movw  ya,$28
0e0a: da 26     movw  $26,ya
0e0c: ba 00     movw  ya,$00
0e0e: da 2a     movw  $2a,ya
0e10: e4 27     mov   a,$27
0e12: 5f 70 0e  jmp   $0e70

0e15: 6f        ret

0e16: ba 24     movw  ya,$24
0e18: f0 25     beq   $0e3f
0e1a: 30 0c     bmi   $0e28
0e1c: 7a 20     addw  ya,$20
0e1e: da 20     movw  $20,ya
0e20: 30 10     bmi   $0e32
0e22: 9a 22     subw  ya,$22
0e24: 30 14     bmi   $0e3a
0e26: 2f 0a     bra   $0e32
0e28: 7a 20     addw  ya,$20
0e2a: da 20     movw  $20,ya
0e2c: 30 04     bmi   $0e32
0e2e: 9a 22     subw  ya,$22
0e30: 10 08     bpl   $0e3a
0e32: ba 22     movw  ya,$22
0e34: da 20     movw  $20,ya
0e36: ba 00     movw  ya,$00
0e38: da 24     movw  $24,ya
0e3a: e4 21     mov   a,$21
0e3c: 5f c7 0b  jmp   $0bc7

0e3f: 6f        ret

; s16 ($02) * u8 (a) multiplier
0e40: c4 04     mov   $04,a
0e42: ba 02     movw  ya,$02
0e44: 10 0e     bpl   $0e54
0e46: ba 00     movw  ya,$00
0e48: 9a 02     subw  ya,$02
0e4a: 3f 54 0e  call  $0e54
0e4d: da 06     movw  $06,ya
0e4f: ba 00     movw  ya,$00
0e51: 9a 06     subw  ya,$06
0e53: 6f        ret

; u16 (ya) * u8 ($04) multiplier
0e54: 2d        push  a
0e55: e4 04     mov   a,$04
0e57: cf        mul   ya
0e58: da 06     movw  $06,ya
0e5a: ae        pop   a
0e5b: eb 04     mov   y,$04
0e5d: cf        mul   ya
0e5e: dd        mov   a,y
0e5f: 8d 00     mov   y,#$00
0e61: 7a 06     addw  ya,$06
; ya = (ya * $04) >> 8
0e63: 6f        ret

0e64: e8 ff     mov   a,#$ff
0e66: c4 26     mov   $26,a
0e68: c4 20     mov   $20,a
0e6a: e8 7f     mov   a,#$7f
0e6c: c4 27     mov   $27,a
0e6e: c4 21     mov   $21,a
0e70: 8f 0c f2  mov   $f2,#$0c
0e73: c4 f3     mov   $f3,a
0e75: 8f 1c f2  mov   $f2,#$1c
0e78: c4 f3     mov   $f3,a
; set MVOL(L)
0e7a: e4 1a     mov   a,$1a
0e7c: f0 04     beq   $0e82
; set MVOL(R)
0e7e: e8 00     mov   a,#$00
0e80: 2f 13     bra   $0e95
0e82: e4 2c     mov   a,$2c
0e84: 10 03     bpl   $0e89
0e86: 48 ff     eor   a,#$ff
0e88: bc        inc   a
0e89: eb 27     mov   y,$27
0e8b: cf        mul   ya
0e8c: dd        mov   a,y
0e8d: 1c        asl   a
0e8e: eb 2c     mov   y,$2c
0e90: 10 03     bpl   $0e95
0e92: 48 ff     eor   a,#$ff
0e94: bc        inc   a
0e95: 64 36     cmp   a,$36
0e97: f0 0c     beq   $0ea5
0e99: c4 36     mov   $36,a
0e9b: 8f 3c f2  mov   $f2,#$3c
0e9e: c4 f3     mov   $f3,a
; set EVOL(R)
0ea0: 8f 2c f2  mov   $f2,#$2c
0ea3: c4 f3     mov   $f3,a
; set EVOL(L)
0ea5: 6f        ret

; flush waveform/envelopes
0ea6: 4d        push  x
0ea7: f5 40 02  mov   a,$0240+x
; $0236+10+x
0eaa: c4 2f     mov   $2f,a
0eac: f5 52 02  mov   a,$0252+x
; $0248+10+x
0eaf: c4 30     mov   $30,a
0eb1: 7d        mov   a,x
0eb2: 9f        xcn   a
0eb3: 08 04     or    a,#$04
0eb5: 5d        mov   x,a
0eb6: 8d 00     mov   y,#$00
0eb8: f7 2f     mov   a,($2f)+y
0eba: 10 06     bpl   $0ec2
0ebc: 09 11 14  or    ($14),($11)
0ebf: dd        mov   a,y
0ec0: 2f 07     bra   $0ec9
0ec2: e4 11     mov   a,$11
0ec4: 4e 14 00  tclr1 $0014
0ec7: f7 2f     mov   a,($2f)+y
0ec9: d8 f2     mov   $f2,x
0ecb: c4 f3     mov   $f3,a
; set SRCN, ADSR(1), ADSR(2), GAIN
0ecd: 3d        inc   x
0ece: fc        inc   y
0ecf: ad 04     cmp   y,#$04
0ed1: d0 f4     bne   $0ec7
0ed3: ce        pop   x
0ed4: f7 2f     mov   a,($2f)+y
0ed6: d4 b9     mov   $b9+x,a
; key-off delay (ticks)
0ed8: fc        inc   y
0ed9: f7 2f     mov   a,($2f)+y
0edb: d5 d5 01  mov   $01d5+x,a
; per-instrument coarse tuning
0ede: fc        inc   y
0edf: f7 2f     mov   a,($2f)+y
0ee1: d5 cd 01  mov   $01cd+x,a
; per-instrument fine tuning
0ee4: 6f        ret

; calculate hardware volume for channel x
0ee5: 2d        push  a
0ee6: f4 97     mov   a,$97+x
0ee8: 28 10     and   a,#$10
0eea: f0 05     beq   $0ef1
0eec: ae        pop   a
0eed: 8d 00     mov   y,#$00
0eef: 2f 30     bra   $0f21
0ef1: 33 0f 28  bbc1  $0f,$0f1c
0ef4: ae        pop   a
0ef5: c4 35     mov   $35,a
0ef7: f5 0a 02  mov   a,$020a+x
; panpot
0efa: fd        mov   y,a
0efb: f6 2d 0f  mov   a,$0f2d+y
0efe: eb 35     mov   y,$35
0f00: cf        mul   ya
0f01: 7d        mov   a,x
0f02: 9f        xcn   a
0f03: c4 f2     mov   $f2,a
0f05: cb f3     mov   $f3,y
0f07: 2d        push  a
0f08: e8 20     mov   a,#$20
0f0a: 80        setc
0f0b: b5 0a 02  sbc   a,$020a+x
0f0e: fd        mov   y,a
0f0f: f6 2d 0f  mov   a,$0f2d+y
0f12: eb 35     mov   y,$35
0f14: cf        mul   ya
0f15: ae        pop   a
0f16: bc        inc   a
0f17: c4 f2     mov   $f2,a
0f19: cb f3     mov   $f3,y
0f1b: 6f        ret

0f1c: ae        pop   a
0f1d: ec 3d 0f  mov   y,$0f3d
0f20: cf        mul   ya
0f21: 7d        mov   a,x
0f22: 9f        xcn   a
0f23: c4 f2     mov   $f2,a
0f25: cb f3     mov   $f3,y
0f27: bc        inc   a
0f28: c4 f2     mov   $f2,a
0f2a: cb f3     mov   $f3,y
0f2c: 6f        ret

0f2d: 80        setc
0f2e: 80        setc
0f2f: 7f        reti
0f30: 7f        reti
0f31: 7e 7d     cmp   y,$7d
0f33: 7c        ror   a
0f34: 7a 78     addw  ya,$78
0f36: 76 74 71  cmp   a,$7174+y
0f39: 64 6b     cmp   a,$6b
0f3b: 68 64     cmp   a,#$64
0f3d: 60        clrc
0f3e: 5c        lsr   a
0f3f: 57 53     eor   a,($53)+y
0f41: 4e 49 43  tclr1 $4349
0f44: 3e 38     cmp   x,$38
0f46: 32 2b     clr1  $2b
0f48: 25 1e 17  and   a,$171e
0f4b: 10 08     bpl   $0f55
0f4d: 00        nop
0f4e: f5 d5 01  mov   a,$01d5+x
0f51: 68 80     cmp   a,#$80
0f53: f0 43     beq   $0f98
0f55: fd        mov   y,a
0f56: f5 cd 01  mov   a,$01cd+x
0f59: 7a 31     addw  ya,$31
0f5b: da 31     movw  $31,ya
0f5d: eb 32     mov   y,$32
0f5f: f6 64 01  mov   a,$0164+y
0f62: c4 07     mov   $07,a
0f64: f6 03 01  mov   a,$0103+y
0f67: c4 06     mov   $06,a
0f69: f6 65 01  mov   a,$0165+y
0f6c: 2d        push  a
0f6d: f6 04 01  mov   a,$0104+y
0f70: ee        pop   y
0f71: 9a 06     subw  ya,$06
0f73: 6d        push  y
0f74: eb 31     mov   y,$31
0f76: cf        mul   ya
0f77: cb 08     mov   $08,y
0f79: 8f 00 09  mov   $09,#$00
0f7c: ee        pop   y
0f7d: e4 31     mov   a,$31
0f7f: cf        mul   ya
0f80: 7a 08     addw  ya,$08
0f82: 7a 06     addw  ya,$06
0f84: da 06     movw  $06,ya
0f86: da 08     movw  $08,ya
0f88: 7d        mov   a,x
0f89: 9f        xcn   a
0f8a: 08 02     or    a,#$02
0f8c: c4 f2     mov   $f2,a
0f8e: fa 08 f3  mov   ($f3),($08)
0f91: bc        inc   a
0f92: c4 f2     mov   $f2,a
0f94: fa 09 f3  mov   ($f3),($09)
0f97: 6f        ret

0f98: 7d        mov   a,x
0f99: 9f        xcn   a
0f9a: 08 02     or    a,#$02
0f9c: c4 f2     mov   $f2,a
0f9e: fa 31 f3  mov   ($f3),($31)
0fa1: bc        inc   a
0fa2: c4 f2     mov   $f2,a
0fa4: fa 32 f3  mov   ($f3),($32)
0fa7: 6f        ret

0fa8: ba 0a     movw  ya,$0a
0faa: 0b 0a     asl   $0a
0fac: 2b 0b     rol   $0b
0fae: 0b 0a     asl   $0a
0fb0: 2b 0b     rol   $0b
0fb2: 7a 0a     addw  ya,$0a
0fb4: 7a 0c     addw  ya,$0c
0fb6: da 0a     movw  $0a,ya
0fb8: 6f        ret

0fb9: 8f 4f fa  mov   $fa,#$4f
0fbc: 8f 01 f1  mov   $f1,#$01
0fbf: 6f        ret

0fc0: 1c        asl   a
0fc1: 1c        asl   a
0fc2: 1c        asl   a
0fc3: 5d        mov   x,a
0fc4: 8d 0f     mov   y,#$0f
0fc6: f5 d6 0f  mov   a,$0fd6+x
0fc9: cb f2     mov   $f2,y
0fcb: c4 f3     mov   $f3,a
0fcd: 3d        inc   x
0fce: dd        mov   a,y
0fcf: 60        clrc
0fd0: 88 10     adc   a,#$10
0fd2: fd        mov   y,a
0fd3: 10 f1     bpl   $0fc6
0fd5: 6f        ret

0fd6: 7f        reti
0fd7: 00        nop
0fd8: 00        nop
0fd9: 00        nop
0fda: 00        nop
0fdb: 00        nop
0fdc: 00        nop
0fdd: 00        nop
0fde: 58 bf db  eor   $db,#$bf
0fe1: f0 fe     beq   $0fe1
0fe3: 07 0c     or    a,($0c+x)
0fe5: 0c 0c 21  asl   $210c
0fe8: 2b 2b     rol   $2b
0fea: 13 fe f3  bbc0  $fe,$0fe0
0fed: f9 64     mov   x,$64+y
0fef: 19        or    (x),(y)
0ff0: f0 2b     beq   $101d
0ff2: c4 19     mov   $19,a
0ff4: 8f 3c 1a  mov   $1a,#$3c
0ff7: a2 17     set5  $17
0ff9: 8f 6c f2  mov   $f2,#$6c
0ffc: fa 17 f3  mov   ($f3),($17)
0fff: 8f 7d f2  mov   $f2,#$7d
1002: fa 19 f3  mov   ($f3),($19)
1005: e8 00     mov   a,#$00
1007: 8f 4d f2  mov   $f2,#$4d
100a: c4 f3     mov   $f3,a
100c: 8f 0d f2  mov   $f2,#$0d
100f: c4 f3     mov   $f3,a
1011: 8f 3c f2  mov   $f2,#$3c
1014: c4 f3     mov   $f3,a
1016: 8f 2c f2  mov   $f2,#$2c
1019: c4 f3     mov   $f3,a
101b: c4 36     mov   $36,a
101d: 6f        ret

101e: 06        or    a,(x)
101f: 08 0a     or    a,#$0a
1021: 0c 0d 0e  asl   $0e0d
1024: 0f        brk
1025: 10 10     bpl   $1037
1027: 11        tcall 1
1028: 12 13     clr0  $13
102a: 14 16     or    a,$16+x
102c: 18 1a 00  or    $00,#$1a
102f: 0a 14 1e  or1   c,$1e14,0
1032: 28 32     and   a,#$32
1034: 3c        rol   a
1035: 46        eor   a,(x)
1036: 50 5a     bvc   $1092
1038: 64 6e     cmp   a,$6e
103a: 78 82 8c  cmp   $8c,#$82
103d: 96 a0 aa  adc   a,$aaa0+y
