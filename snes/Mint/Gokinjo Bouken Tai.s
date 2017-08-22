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
0300: e8 ff     mov   a,#$ff
0302: c4 19     mov   $19,a
0304: e8 04     mov   a,#$04
0306: 3f f4 0f  call  $0ff4
0309: 3f bf 0f  call  $0fbf
030c: 8d 64     mov   y,#$64
030e: e4 fd     mov   a,$fd
0310: f0 fc     beq   $030e
0312: dc        dec   y
0313: d0 f9     bne   $030e
0315: 8f 35 0c  mov   $0c,#$35
0318: 8f ab 0d  mov   $0d,#$ab          ; set RNG constant
031b: 8f 20 17  mov   $17,#$20
031e: 3f 18 0b  call  $0b18
0321: 3f 70 0b  call  $0b70
0324: 8f 31 f1  mov   $f1,#$31
0327: 8f 31 f1  mov   $f1,#$31
032a: 3f bf 0f  call  $0fbf
032d: 3f 73 0e  call  $0e73
0330: e8 00     mov   a,#$00
0332: c4 f4     mov   $f4,a
0334: c4 f5     mov   $f5,a
0336: 3f ae 0f  call  $0fae             ; step RNG
0339: 3f 80 09  call  $0980
033c: eb fd     mov   y,$fd
033e: f0 f6     beq   $0336
0340: 6d        push  y
0341: 3f 4a 03  call  $034a
0344: ee        pop   y
0345: dc        dec   y
0346: d0 f8     bne   $0340
0348: 2f ec     bra   $0336
034a: 3f fb 0d  call  $0dfb
034d: 3f 25 0e  call  $0e25
0350: 3f 64 03  call  $0364
0353: 3f 7e 03  call  $037e
0356: 3f 8c 03  call  $038c
0359: cd 00     mov   x,#$00
035b: 7d        mov   a,x
035c: d4 9e     mov   $9e+x,a
035e: 3d        inc   x
035f: c8 0a     cmp   x,#$0a
0361: d0 f9     bne   $035c
0363: 6f        ret

0364: 03 0f 16  bbs0  $0f,$037d
0367: e4 1c     mov   a,$1c
0369: 60        clrc
036a: 84 1d     adc   a,$1d
036c: c4 1d     mov   $1d,a
036e: e8 00     mov   a,#$00
0370: 3c        rol   a
0371: c4 10     mov   $10,a
0373: cd 00     mov   x,#$00
0375: 3f e6 03  call  $03e6
0378: 3d        inc   x
0379: c8 0a     cmp   x,#$0a
037b: d0 f8     bne   $0375
037d: 6f        ret

037e: cd 00     mov   x,#$00
0380: 8f 01 11  mov   $11,#$01
0383: 3f 78 05  call  $0578
0386: 3d        inc   x
0387: 0b 11     asl   $11
0389: d0 f8     bne   $0383
038b: 6f        ret

038c: 8f 5c f2  mov   $f2,#$5c
038f: fa 13 f3  mov   ($f3),($13)       ; set KOF
0392: cd 00     mov   x,#$00
0394: 8f 01 11  mov   $11,#$01
0397: 3f dc 05  call  $05dc             ; update hardware voice channel
039a: 3d        inc   x                 ; increment hardware voice channel #
039b: 0b 11     asl   $11               ; shift channel mask bit
039d: d0 f8     bne   $0397
039f: e4 1a     mov   a,$1a
03a1: f0 06     beq   $03a9
03a3: 8b 1a     dec   $1a
03a5: d0 02     bne   $03a9
03a7: b2 17     clr5  $17
03a9: 3f 89 0e  call  $0e89
03ac: 8f 2d f2  mov   $f2,#$2d
03af: fa 15 f3  mov   ($f3),($15)       ; set PMON
03b2: 8f 3d f2  mov   $f2,#$3d
03b5: fa 14 f3  mov   ($f3),($14)       ; set NON
03b8: 8f 6c f2  mov   $f2,#$6c
03bb: fa 17 f3  mov   ($f3),($17)       ; set FLG
03be: e4 12     mov   a,$12
03c0: 44 13     eor   a,$13
03c2: 24 13     and   a,$13
03c4: 8f 5c f2  mov   $f2,#$5c
03c7: c4 f3     mov   $f3,a             ; set KOF
03c9: e4 1a     mov   a,$1a
03cb: d0 0c     bne   $03d9
03cd: 8f 4d f2  mov   $f2,#$4d
03d0: fa 16 f3  mov   ($f3),($16)       ; set EON
03d3: 8f 0d f2  mov   $f2,#$0d
03d6: fa 18 f3  mov   ($f3),($18)       ; set EFB
03d9: 8f 4c f2  mov   $f2,#$4c
03dc: fa 12 f3  mov   ($f3),($12)       ; set KON
03df: e8 00     mov   a,#$00
03e1: c4 12     mov   $12,a
03e3: c4 13     mov   $13,a
03e5: 6f        ret

03e6: f5 12 02  mov   a,$0212+x
03e9: 68 ff     cmp   a,#$ff
03eb: f0 0c     beq   $03f9
03ed: f4 8c     mov   a,$8c+x
03ef: 28 04     and   a,#$04
03f1: 04 10     or    a,$10             ; carry of tempo counter
03f3: f0 04     beq   $03f9
03f5: 9b 7a     dec   $7a+x             ; decrease wait counter (tick)
03f7: f0 01     beq   $03fa
03f9: 6f        ret

03fa: f4 44     mov   a,$44+x
03fc: c4 2d     mov   $2d,a
03fe: f4 56     mov   a,$56+x
0400: c4 2e     mov   $2e,a             ; set vcmd read ptr (work)
0402: 8d 00     mov   y,#$00
0404: f7 2d     mov   a,($2d)+y
0406: 30 1d     bmi   $0425
0408: f0 03     beq   $040d             ; vcmd 00 - keep note length
; vcmd 00-7f - set note params
040a: d5 a2 02  mov   $02a2+x,a         ; set note length (vcmd itself)
040d: 3f 66 04  call  $0466             ; set wait counter
0410: fc        inc   y
0411: f7 2d     mov   a,($2d)+y
0413: 30 0e     bmi   $0423             ; arg1 must be in [00...7f]
0415: d5 2c 02  mov   $022c+x,a         ; arg1 - duration
0418: fc        inc   y
0419: f7 2d     mov   a,($2d)+y
041b: 30 06     bmi   $0423             ; arg2 must be in [00...7f]
041d: d5 d2 00  mov   $00d2+x,a         ; arg2 - velocity
0420: fc        inc   y
0421: f7 2d     mov   a,($2d)+y
0423: 2f 08     bra   $042d             ; dispatch next vcmd (must be 80-ff) with no wait
; (80-ff)
0425: 2d        push  a
0426: f5 a2 02  mov   a,$02a2+x         ; get last note length
0429: 3f 66 04  call  $0466             ; set wait counter
042c: ae        pop   a
042d: fc        inc   y
042e: 68 c0     cmp   a,#$c0
0430: b0 1c     bcs   $044e
0432: 68 a0     cmp   a,#$a0
0434: 90 11     bcc   $0447
; vcmd a0-bf - note with param
0436: 2d        push  a
0437: f7 2d     mov   a,($2d)+y
0439: 10 07     bpl   $0442
043b: 28 7f     and   a,#$7f
043d: d5 d2 00  mov   $00d2+x,a         ; (80-ff) velocity
0440: 2f 03     bra   $0445
0442: d5 2c 02  mov   $022c+x,a         ; (00-7f) duration
0445: fc        inc   y
0446: ae        pop   a
; vcmd 80-9f - note
0447: 28 1f     and   a,#$1f            ; key (see vcmd d1-d3)
0449: 3f 6d 04  call  $046d
044c: 2f 09     bra   $0457
; (c0-ff)
044e: 2d        push  a
044f: e8 00     mov   a,#$00
0451: d4 7a     mov   $7a+x,a
0453: ae        pop   a
0454: 3f 9d 06  call  $069d             ; dispatch vcmd (c0-ff)
0457: f4 7a     mov   a,$7a+x
0459: f0 a9     beq   $0404             ; continue if wait counter is not set
045b: dd        mov   a,y
045c: 8d 00     mov   y,#$00
045e: 7a 2d     addw  ya,$2d            ; skip Y bytes
0460: d4 44     mov   $44+x,a
0462: dd        mov   a,y
0463: d4 56     mov   $56+x,a           ; update voice ptr
0465: 6f        ret                     ; process next track

0466: 13 43 01  bbc0  $43,$046a
0469: 5c        lsr   a
046a: d4 7a     mov   $7a+x,a
046c: 6f        ret

; handle note byte
046d: 6d        push  y
046e: c4 33     mov   $33,a             ; key offset from note byte
0470: f4 8c     mov   a,$8c+x
0472: 28 01     and   a,#$01
0474: f0 28     beq   $049e             ; melody/rhythm?
; rhythm channel
0476: f5 36 02  mov   a,$0236+x
0479: c4 02     mov   $02,a
047b: f5 48 02  mov   a,$0248+x
047e: c4 03     mov   $03,a             ; instrument address
0480: e4 33     mov   a,$33
0482: 1c        asl   a
0483: 8d 00     mov   y,#$00
0485: 7a 02     addw  ya,$02
0487: da 02     movw  $02,ya            ; += (key_offset * 2)
0489: 8d 00     mov   y,#$00
048b: f7 02     mov   a,($02)+y
048d: 3a 02     incw  $02
048f: 2d        push  a
0490: c4 06     mov   $06,a
0492: f7 02     mov   a,($02)+y
0494: 3a 02     incw  $02
0496: fd        mov   y,a
0497: ae        pop   a                 ; read envelope procedure offset (2 bytes)
0498: 7a 02     addw  ya,$02            ; relative offset to absolute address
049a: da 06     movw  $06,ya
049c: 2f 0a     bra   $04a8
; melody channel
049e: f5 36 02  mov   a,$0236+x
04a1: c4 06     mov   $06,a
04a3: f5 48 02  mov   a,$0248+x
04a6: c4 07     mov   $07,a             ; envelope procedure address
;
04a8: e4 33     mov   a,$33             ; key offset
04aa: 60        clrc
04ab: 95 6c 02  adc   a,$026c+x         ; add coarse tuning
04ae: 60        clrc
04af: 95 5a 02  adc   a,$025a+x         ; add base key (vcmd d1-d3)
04b2: 28 7f     and   a,#$7f
04b4: c4 33     mov   $33,a             ; set adjusted key back
04b6: 3f 5d 05  call  $055d
04b9: b0 73     bcs   $052e             ; slur/tie, update only duration
04bb: 3f 58 0d  call  $0d58             ; get lowest priority voice
04be: 68 00     cmp   a,#$00
04c0: f0 1d     beq   $04df             ; no more tests for unused channel
04c2: c4 37     mov   $37,a             ; lowest priority value
04c4: cc 36 00  mov   $0036,y           ; lowest priority channel # (candidate for new voice)
04c7: e4 06     mov   a,$06
04c9: 2d        push  a                 ; push $06
04ca: 8f 00 06  mov   $06,#$00
04cd: 7d        mov   a,x               ; virtual channel # (track #)
04ce: 3f 41 0d  call  $0d41             ; y = $0224[0..7].index(0)
04d1: ae        pop   a
04d2: c4 06     mov   $06,a             ; pop $06
04d4: b0 09     bcs   $04df             ; branch if $0224[0..7].include?(0)
04d6: e4 37     mov   a,$37
04d8: 74 c0     cmp   a,$c0+x
04da: b0 5f     bcs   $053b
04dc: ec 36 00  mov   y,$0036
; register a new note
04df: f4 c0     mov   a,$c0+x
04e1: d6 ca 00  mov   $00ca+y,a         ; priority
04e4: 7d        mov   a,x
04e5: d6 1c 02  mov   $021c+y,a         ; virtual channel #
04e8: e8 00     mov   a,#$00
04ea: d6 24 02  mov   $0224+y,a
04ed: 3f 3d 05  call  $053d             ; panpot
04f0: e4 06     mov   a,$06
04f2: d6 4e 00  mov   $004e+y,a         ; envelope procedure address (lo)
04f5: e4 07     mov   a,$07
04f7: d6 60 00  mov   $0060+y,a         ; envelope procedure address (hi)
04fa: f5 7e 02  mov   a,$027e+x
04fd: d6 88 02  mov   $0288+y,a         ; fine tuning
0500: e4 33     mov   a,$33
0502: d6 64 02  mov   $0264+y,a         ; key (base + coarse tuning)
0505: d6 76 02  mov   $0276+y,a         ; key (will be modified by fine tuning)
0508: f5 d2 00  mov   a,$00d2+x
050b: d6 dc 00  mov   $00dc+y,a         ; velocity (0-127)
050e: f4 8c     mov   a,$8c+x
0510: 28 04     and   a,#$04
0512: d6 96 00  mov   $0096+y,a
0515: 3f 50 05  call  $0550
0518: f6 c5 01  mov   a,$01c5+y         ; $01c5 = 1, 2, 4, 8, ... ?
051b: 48 ff     eor   a,#$ff
051d: 24 16     and   a,$16
051f: c4 16     mov   $16,a
0521: f4 8c     mov   a,$8c+x
0523: 28 08     and   a,#$08
0525: f0 07     beq   $052e
0527: f6 c5 01  mov   a,$01c5+y
052a: 04 16     or    a,$16
052c: c4 16     mov   $16,a
052e: f5 2c 02  mov   a,$022c+x         ; set duration
0531: f0 05     beq   $0538
0533: 13 43 01  bbc0  $43,$0537         ; full resolution?
0536: 5c        lsr   a
0537: bc        inc   a
0538: d6 b0 00  mov   $00b0+y,a
053b: ee        pop   y
053c: 6f        ret

; set panpot for hardware channel
053d: f5 00 02  mov   a,$0200+x         ; panpot (virtual)
0540: 10 0a     bpl   $054c             ; negative = 16 steps random pan
0542: 4d        push  x
0543: e4 0a     mov   a,$0a
0545: 28 0f     and   a,#$0f
0547: 5d        mov   x,a
0548: f5 24 10  mov   a,$1024+x
054b: ce        pop   x
054c: d6 0a 02  mov   $020a+y,a         ; panpot (hardware)
054f: 6f        ret

0550: e8 80     mov   a,#$80
0552: d6 a8 00  mov   $00a8+y,a
0555: f6 c5 01  mov   a,$01c5+y
0558: 04 13     or    a,$13
055a: c4 13     mov   $13,a
055c: 6f        ret

; determine if the next note needs to be tied
; returns carry flag (true or false)
055d: 8d 07     mov   y,#$07            ; process for ch7 to ch0
055f: 7d        mov   a,x
0560: 76 1c 02  cmp   a,$021c+y
0563: d0 0c     bne   $0571             ; next unless channel match
0565: f6 b0 00  mov   a,$00b0+y
0568: d0 07     bne   $0571             ; next if dutation != 0 (0 => full length => tie)
056a: f6 64 02  mov   a,$0264+y
056d: 64 33     cmp   a,$33
056f: f0 05     beq   $0576             ; break if key matches to the target one
0571: dc        dec   y
0572: 10 eb     bpl   $055f
0574: 60        clrc
0575: 6f        ret
0576: 80        setc
0577: 6f        ret

0578: f4 a8     mov   a,$a8+x
057a: 10 17     bpl   $0593
057c: e8 ff     mov   a,#$ff
057e: d5 9a 02  mov   $029a+x,a
0581: e8 01     mov   a,#$01
0583: d4 84     mov   $84+x,a
0585: f5 3e 10  mov   a,$103e+x
0588: d4 72     mov   $72+x,a
058a: e8 00     mov   a,#$00
058c: d5 d4 02  mov   $02d4+x,a
058f: e8 03     mov   a,#$03
0591: d4 a8     mov   $a8+x,a
0593: f5 1c 02  mov   a,$021c+x
0596: 10 06     bpl   $059e
0598: 68 ff     cmp   a,#$ff
059a: f0 0e     beq   $05aa
059c: 2f 0d     bra   $05ab
059e: 3f 63 06  call  $0663
05a1: f5 1c 02  mov   a,$021c+x
05a4: 68 ff     cmp   a,#$ff
05a6: f0 02     beq   $05aa
05a8: 2f 01     bra   $05ab
05aa: 6f        ret

; process envelope procedure
; envelope procedure is fired by key-on, and runs simultaneously with main score.
; used for SRCN/ADSR selection, volume/key adjusting, vibrato and such.
05ab: 4d        push  x
05ac: 7d        mov   a,x
05ad: 60        clrc
05ae: 88 0a     adc   a,#$0a            ; channel number x += 10 (number of virtual channels)
05b0: 5d        mov   x,a
05b1: 9b 7a     dec   $7a+x             ; decrease wait counter (tick)
05b3: d0 25     bne   $05da
05b5: f4 44     mov   a,$44+x
05b7: c4 2d     mov   $2d,a
05b9: f4 56     mov   a,$56+x
05bb: c4 2e     mov   $2e,a             ; set vcmd read ptr (work)
05bd: 8d 00     mov   y,#$00
05bf: f7 2d     mov   a,($2d)+y         ; read vcmd byte
05c1: 30 05     bmi   $05c8
; 00-7f - wait
05c3: d4 7a     mov   $7a+x,a
05c5: fc        inc   y
05c6: 2f 08     bra   $05d0
; 80-ff - vcmd (80-bf should not be used, probably)
05c8: fc        inc   y
05c9: 3f 9d 06  call  $069d             ; dispatch vcmd (c0-ff)
05cc: f4 7a     mov   a,$7a+x
05ce: f0 ef     beq   $05bf
05d0: dd        mov   a,y
05d1: 8d 00     mov   y,#$00
05d3: 7a 2d     addw  ya,$2d
05d5: d4 44     mov   $44+x,a
05d7: dd        mov   a,y
05d8: d4 56     mov   $56+x,a
05da: ce        pop   x
05db: 6f        ret

; update hardware voice channel
05dc: f5 1c 02  mov   a,$021c+x         ; current virtual channel #
05df: 10 34     bpl   $0615
05e1: 68 ff     cmp   a,#$ff
05e3: d0 01     bne   $05e6             ; process unless $ff (not used)
05e5: 6f        ret

05e6: f4 a8     mov   a,$a8+x
05e8: c4 34     mov   $34,a
05ea: e8 00     mov   a,#$00
05ec: d4 a8     mov   $a8+x,a
05ee: 53 34 03  bbc2  $34,$05f4
05f1: 3f b5 0e  call  $0eb5
05f4: 13 34 0d  bbc0  $34,$0604
05f7: f5 88 02  mov   a,$0288+x         ; fine tuning (fraction part of key)
05fa: c4 31     mov   $31,a
05fc: f5 76 02  mov   a,$0276+x         ; key
05ff: c4 32     mov   $32,a
0601: 3f 59 0f  call  $0f59
0604: 33 34 0d  bbc1  $34,$0614
0607: f5 9a 02  mov   a,$029a+x
060a: fd        mov   y,a
060b: f5 dc 00  mov   a,$00dc+x
060e: 1c        asl   a
060f: cf        mul   ya
0610: dd        mov   a,y
0611: 5f f4 0e  jmp   $0ef4

0614: 6f        ret

0615: f5 1c 02  mov   a,$021c+x
0618: fd        mov   y,a
0619: f6 9e 00  mov   a,$009e+y
061c: 14 a8     or    a,$a8+x
061e: c4 34     mov   $34,a
0620: e8 00     mov   a,#$00
0622: d4 a8     mov   $a8+x,a
0624: 53 34 03  bbc2  $34,$062a
0627: 3f b5 0e  call  $0eb5
062a: 13 34 18  bbc0  $34,$0645
062d: f5 1c 02  mov   a,$021c+x
0630: fd        mov   y,a
0631: f5 88 02  mov   a,$0288+x         ; fine tuning (fraction part of key)
0634: 60        clrc
0635: 96 b6 02  adc   a,$02b6+y         ; scaled pitch bend (fraction)
0638: c4 31     mov   $31,a
063a: f5 76 02  mov   a,$0276+x         ; key
063d: 96 c0 02  adc   a,$02c0+y         ; scaled pitch bend (integer)
0640: c4 32     mov   $32,a
0642: 3f 59 0f  call  $0f59
0645: 33 34 1a  bbc1  $34,$0662
0648: f5 1c 02  mov   a,$021c+x
064b: fd        mov   y,a
064c: f6 90 02  mov   a,$0290+y         ; channel volume
064f: fd        mov   y,a
0650: f5 9a 02  mov   a,$029a+x         ; instrument volume
0653: cf        mul   ya
0654: f5 dc 00  mov   a,$00dc+x         ; velocity (0-127)
0657: 1c        asl   a
0658: cf        mul   ya
0659: e4 1f     mov   a,$1f             ; master volume (0-127)
065b: 1c        asl   a
065c: cf        mul   ya
065d: dd        mov   a,y
065e: 1c        asl   a
065f: 5f f4 0e  jmp   $0ef4

0662: 6f        ret

0663: f4 96     mov   a,$96+x
0665: 04 10     or    a,$10
0667: f0 1b     beq   $0684
0669: f4 b0     mov   a,$b0+x
066b: f0 17     beq   $0684
066d: 30 11     bmi   $0680
066f: 9b b0     dec   $b0+x
0671: d0 11     bne   $0684
0673: e8 01     mov   a,#$01
0675: d4 ca     mov   $ca+x,a
0677: e8 ff     mov   a,#$ff
0679: d4 b0     mov   $b0+x,a
067b: f4 b8     mov   a,$b8+x
067d: f0 06     beq   $0685
067f: 6f        ret

0680: 9b b8     dec   $b8+x
0682: f0 01     beq   $0685
0684: 6f        ret

0685: 09 11 13  or    ($13),($11)
0688: e4 11     mov   a,$11
068a: 48 ff     eor   a,#$ff
068c: 24 12     and   a,$12
068e: c4 12     mov   $12,a
0690: e8 ff     mov   a,#$ff
0692: d5 1c 02  mov   $021c+x,a
0695: e8 00     mov   a,#$00
0697: d4 ca     mov   $ca+x,a
0699: d5 d4 02  mov   $02d4+x,a
069c: 6f        ret

; dispatch vcmd
069d: cb 02     mov   $02,y
069f: 80        setc
06a0: a8 c0     sbc   a,#$c0
06a2: 1c        asl   a
06a3: fd        mov   y,a
06a4: f6 b0 06  mov   a,$06b0+y
06a7: 2d        push  a
06a8: f6 af 06  mov   a,$06af+y
06ab: 2d        push  a
06ac: eb 02     mov   y,$02
06ae: 6f        ret

; vcmd dispatch table
; command with * can be used by envelope procedure
06af: dw $0704  ; c0 - set instrument
06b1: dw $0735  ; c1 - set panpot
06b3: dw $074c  ; c2
06b5: dw $0754  ; c3 - set tempo
06b7: dw $0763  ; c4 - transpose? (absolute)
06b9: dw $078f  ; c5 - set volume *
06bb: dw $075d  ; c6 - set priority
06bd: dw $08c7  ; c7 - fine tuning (absolute) *
06bf: dw $07a4  ; c8 - echo on
06c1: dw $07ab  ; c9 - echo off
06c3: dw $07b2  ; ca - set echo params
06c5: dw $07cd  ; cb - jump
06c7: dw $07e8  ; cc - call subroutine
06c9: dw $0814  ; cd - end subroutine
06cb: dw $0827  ; ce - repeat start
06cd: dw $084d  ; cf - repeat end
06cf: dw $0876  ; d0
06d1: dw $076a  ; d1 - set note key
06d3: dw $0771  ; d2 - octave up
06d5: dw $077b  ; d3 - octave down
06d7: dw $06fd  ; d4 - rest
06d9: dw $0884  ; d5
06db: dw $0892  ; d6 - pitch bend range
06dd: dw $0911  ; d7 - coarse tuning (absolute) *
06df: dw $08f9  ; d8 - coarse tuning (relative) *
06e1: dw $08ce  ; d9 - fine tuning (relative) *
06e3: dw $089d  ; da - key on
06e5: dw $0899  ; db - key off
06e7: dw $0793  ; dc - add volume
06e9: dw $08a1  ; dd - pitch bend
06eb: dw $091e  ; de - set waveform/envelope offset
06ed: dw $094a  ; df
06ef: dw $0958  ; e0
06f1: dw $095c  ; e1
06f3: dw $0901  ; e2
06f5: dw $0785  ; e3
06f7: dw $0739  ; e4 - set panpot from table
06f9: dw $096b  ; e5
06fb: dw $097a  ; e6 - set timebase
                ; e7-ff - undefined

; vcmd d4 - rest
06fd: f5 a2 02  mov   a,$02a2+x
0700: 3f 66 04  call  $0466
0703: 6f        ret

; vcmd c0 - set instrument
0704: dd        mov   a,y
0705: 8d 00     mov   y,#$00
0707: 7a 2d     addw  ya,$2d
0709: da 2d     movw  $2d,ya            ; skip vcmd itself
070b: 8d 00     mov   y,#$00
070d: f7 2d     mov   a,($2d)+y
070f: 3a 2d     incw  $2d
0711: 2d        push  a
0712: f7 2d     mov   a,($2d)+y
0714: 3a 2d     incw  $2d
0716: fd        mov   y,a
0717: ae        pop   a
0718: 7a 2d     addw  ya,$2d
071a: da 02     movw  $02,ya            ; address arg1/2 (relative)
071c: f4 8c     mov   a,$8c+x
071e: 28 fe     and   a,#$fe
0720: 8d 00     mov   y,#$00            ; read first byte of instrument
0722: 17 02     or    a,($02)+y         ; rhythm? (0: melody, 1: rhythm)
0724: d4 8c     mov   $8c+x,a
0726: 3a 02     incw  $02               ; point to next byte
0728: e4 02     mov   a,$02
072a: d5 36 02  mov   $0236+x,a         ; set instrument address (lo)
072d: e4 03     mov   a,$03
072f: d5 48 02  mov   $0248+x,a         ; set instrument address (hi)
0732: 8d 00     mov   y,#$00            ; prevent to skip more bytes
0734: 6f        ret

; vcmd c1 - set panpot
0735: f7 2d     mov   a,($2d)+y         ; 00-20, or negative value (random pan)
0737: 2f 08     bra   $0741
; vcmd e4 - set panpot from table
0739: 6d        push  y
073a: f7 2d     mov   a,($2d)+y
073c: fd        mov   y,a
073d: f6 dd 01  mov   a,$01dd+y
0740: ee        pop   y
; set panpot
0741: d5 00 02  mov   $0200+x,a
0744: f4 9e     mov   a,$9e+x
0746: 08 02     or    a,#$02
0748: d4 9e     mov   $9e+x,a
074a: fc        inc   y
074b: 6f        ret

; vcmd c2
074c: f7 2d     mov   a,($2d)+y
074e: c4 1e     mov   $1e,a
0750: fc        inc   y
0751: 5f cc 0b  jmp   $0bcc

; vcmd c3 - set tempo
0754: f7 2d     mov   a,($2d)+y
0756: c4 1c     mov   $1c,a
0758: 8f 00 1b  mov   $1b,#$00
075b: fc        inc   y
075c: 6f        ret

; vcmd c6 - set priority
075d: f7 2d     mov   a,($2d)+y
075f: d4 c0     mov   $c0+x,a
0761: fc        inc   y
0762: 6f        ret

; vcmd c4 - transpose? (absolute)
0763: f7 2d     mov   a,($2d)+y
0765: d5 6c 02  mov   $026c+x,a
0768: fc        inc   y
0769: 6f        ret

; vcmd d1 - set note key
076a: f7 2d     mov   a,($2d)+y
076c: fc        inc   y
076d: d5 5a 02  mov   $025a+x,a
0770: 6f        ret

; vcmd d2 - octave up
0771: f5 5a 02  mov   a,$025a+x
0774: 60        clrc
0775: 88 0c     adc   a,#$0c
0777: d5 5a 02  mov   $025a+x,a
077a: 6f        ret

; vcmd d3 - octave down
077b: f5 5a 02  mov   a,$025a+x
077e: 80        setc
077f: a8 0c     sbc   a,#$0c
0781: d5 5a 02  mov   $025a+x,a
0784: 6f        ret

; vcmd e3
0785: 6d        push  y
0786: f7 2d     mov   a,($2d)+y
0788: fd        mov   y,a
0789: f6 dd 01  mov   a,$01dd+y
078c: ee        pop   y
078d: 2f 0a     bra   $0799
; vcmd c5 - set volume
078f: f7 2d     mov   a,($2d)+y
0791: 2f 06     bra   $0799
; vcmd dc - add volume
0793: f7 2d     mov   a,($2d)+y
0795: 60        clrc
0796: 95 90 02  adc   a,$0290+x
0799: d5 90 02  mov   $0290+x,a
079c: f4 9e     mov   a,$9e+x
079e: 08 02     or    a,#$02
07a0: d4 9e     mov   $9e+x,a
07a2: fc        inc   y
07a3: 6f        ret

; vcmd c8 - echo on
07a4: f4 8c     mov   a,$8c+x
07a6: 08 08     or    a,#$08
07a8: d4 8c     mov   $8c+x,a
07aa: 6f        ret

; vcmd c9 - echo off
07ab: f4 8c     mov   a,$8c+x
07ad: 28 f7     and   a,#$f7
07af: d4 8c     mov   $8c+x,a
07b1: 6f        ret

; vcmd ca - set echo params
07b2: f7 2d     mov   a,($2d)+y         ; arg1 - echo delay
07b4: fc        inc   y
07b5: 3f f4 0f  call  $0ff4
07b8: f7 2d     mov   a,($2d)+y
07ba: fc        inc   y
07bb: c4 2c     mov   $2c,a             ; arg2 - echo volume
07bd: f7 2d     mov   a,($2d)+y
07bf: fc        inc   y
07c0: c4 18     mov   $18,a             ; arg3 - echo feedback
07c2: f7 2d     mov   a,($2d)+y         ; arg4 - echo FIR
07c4: fc        inc   y
07c5: 6d        push  y
07c6: 4d        push  x
07c7: 3f c6 0f  call  $0fc6
07ca: ce        pop   x
07cb: ee        pop   y
07cc: 6f        ret

; vcmd cb - jump
07cd: dd        mov   a,y
07ce: 8d 00     mov   y,#$00
07d0: 7a 2d     addw  ya,$2d
07d2: da 2d     movw  $2d,ya            ; skip vcmd itself
07d4: 8d 00     mov   y,#$00
07d6: f7 2d     mov   a,($2d)+y
07d8: 3a 2d     incw  $2d
07da: 2d        push  a
07db: f7 2d     mov   a,($2d)+y
07dd: 3a 2d     incw  $2d
07df: fd        mov   y,a
07e0: ae        pop   a
07e1: 7a 2d     addw  ya,$2d
07e3: da 2d     movw  $2d,ya            ; jump to arg1/2 (relative)
07e5: 8d 00     mov   y,#$00            ; prevent to skip more bytes
07e7: 6f        ret

; vcmd cc - call subroutine
07e8: dd        mov   a,y
07e9: 8d 00     mov   y,#$00
07eb: 7a 2d     addw  ya,$2d
07ed: da 2d     movw  $2d,ya            ; skip vcmd itself
07ef: 8d 00     mov   y,#$00
07f1: f7 2d     mov   a,($2d)+y
07f3: 3a 2d     incw  $2d
07f5: 2d        push  a
07f6: f7 2d     mov   a,($2d)+y
07f8: 3a 2d     incw  $2d
07fa: 2d        push  a
07fb: fb 68     mov   y,$68+x
07fd: e4 2d     mov   a,$2d
07ff: d6 46 10  mov   $1046+y,a
0802: fc        inc   y
0803: e4 2e     mov   a,$2e
0805: d6 46 10  mov   $1046+y,a         ; save return address
0808: fc        inc   y
0809: db 68     mov   $68+x,y
080b: ee        pop   y
080c: ae        pop   a
080d: 7a 2d     addw  ya,$2d
080f: da 2d     movw  $2d,ya            ; jump to arg1/2 (relative)
0811: 8d 00     mov   y,#$00
0813: 6f        ret

; vcmd cd - end subroutine
0814: fb 68     mov   y,$68+x
0816: dc        dec   y
0817: f6 46 10  mov   a,$1046+y
081a: c4 2e     mov   $2e,a
081c: dc        dec   y
081d: f6 46 10  mov   a,$1046+y
0820: c4 2d     mov   $2d,a
0822: db 68     mov   $68+x,y
0824: 8d 00     mov   y,#$00
0826: 6f        ret

; vcmd ce - repeat start
0827: dd        mov   a,y
0828: 8d 00     mov   y,#$00
082a: 7a 2d     addw  ya,$2d
082c: da 2d     movw  $2d,ya            ; skip vcmd itself
082e: 8d 00     mov   y,#$00
0830: f7 2d     mov   a,($2d)+y         ; arg1 - repeat count
0832: 3a 2d     incw  $2d
0834: 2d        push  a
0835: fb 68     mov   y,$68+x
0837: e4 2d     mov   a,$2d
0839: d6 46 10  mov   $1046+y,a
083c: fc        inc   y
083d: e4 2e     mov   a,$2e
083f: d6 46 10  mov   $1046+y,a         ; save return address
0842: fc        inc   y
0843: ae        pop   a
0844: d6 46 10  mov   $1046+y,a         ; save repeat count
0847: fc        inc   y
0848: db 68     mov   $68+x,y
084a: 8d 00     mov   y,#$00
084c: 6f        ret

; vcmd cf - repeat end
084d: dd        mov   a,y
084e: 8d 00     mov   y,#$00
0850: 7a 2d     addw  ya,$2d
0852: da 2d     movw  $2d,ya
0854: fb 68     mov   y,$68+x
0856: dc        dec   y
0857: f6 46 10  mov   a,$1046+y
085a: 9c        dec   a
085b: f0 12     beq   $086f
; repeat continue
085d: d6 46 10  mov   $1046+y,a
0860: dc        dec   y
0861: f6 46 10  mov   a,$1046+y
0864: c4 2e     mov   $2e,a
0866: dc        dec   y
0867: f6 46 10  mov   a,$1046+y
086a: c4 2d     mov   $2d,a
086c: 8d 00     mov   y,#$00
086e: 6f        ret
; repeat end
086f: dc        dec   y
0870: dc        dec   y
0871: db 68     mov   $68+x,y
0873: 8d 00     mov   y,#$00
0875: 6f        ret

; vcmd d0
0876: e8 ff     mov   a,#$ff
0878: d5 12 02  mov   $0212+x,a
087b: e8 00     mov   a,#$00
087d: d4 c0     mov   $c0+x,a
087f: e8 01     mov   a,#$01
0881: d4 7a     mov   $7a+x,a
0883: 6f        ret

; vcmd d5
0884: f4 8c     mov   a,$8c+x
0886: 28 fd     and   a,#$fd
0888: d4 8c     mov   $8c+x,a
088a: f7 2d     mov   a,($2d)+y
088c: fc        inc   y
088d: 14 8c     or    a,$8c+x
088f: d4 8c     mov   $8c+x,a
0891: 6f        ret

; vcmd d6 - pitch bend range
0892: f7 2d     mov   a,($2d)+y
0894: fc        inc   y
0895: d5 ac 02  mov   $02ac+x,a
0898: 6f        ret

; vcmd db - key off
0899: 09 11 13  or    ($13),($11)
089c: 6f        ret

; vcmd da - key on
089d: 09 11 12  or    ($12),($11)
08a0: 6f        ret

; vcmd dd - pitch bend
08a1: f7 2d     mov   a,($2d)+y
08a3: 6d        push  y
08a4: c4 03     mov   $03,a
08a6: 10 04     bpl   $08ac
08a8: e8 03     mov   a,#$03
08aa: 2f 02     bra   $08ae
08ac: e8 00     mov   a,#$00
08ae: 5c        lsr   a
08af: 6b 03     ror   $03
08b1: 7c        ror   a
08b2: 6b 03     ror   $03
08b4: 7c        ror   a
08b5: c4 02     mov   $02,a             ; $02 = pitch (-128..127 => -8192..8191)
08b7: f5 ac 02  mov   a,$02ac+x         ; pitch bend range
08ba: 3f 4f 0e  call  $0e4f
08bd: d5 b6 02  mov   $02b6+x,a         ; scaled pitch bend (fraction)
08c0: dd        mov   a,y
08c1: d5 c0 02  mov   $02c0+x,a         ; scaled pitch bend (integer)
08c4: ee        pop   y
08c5: 2f 4f     bra   $0916
; vcmd c7 - fine tuning (absolute)
08c7: f7 2d     mov   a,($2d)+y
08c9: d5 7e 02  mov   $027e+x,a         ; unsigned, 1/256 semitones
08cc: 2f 48     bra   $0916
; vcmd d9 - fine tuning (relative)
08ce: f7 2d     mov   a,($2d)+y
08d0: 30 10     bmi   $08e2
; arg1 >= 0
08d2: 60        clrc
08d3: 95 7e 02  adc   a,$027e+x
08d6: d5 7e 02  mov   $027e+x,a
08d9: 90 3b     bcc   $0916
08db: f5 6c 02  mov   a,$026c+x
08de: 88 00     adc   a,#$00
08e0: 2f 31     bra   $0913
; arg1 < 0
08e2: 60        clrc
08e3: 95 7e 02  adc   a,$027e+x
08e6: d5 7e 02  mov   $027e+x,a
08e9: b0 2b     bcs   $0916
08eb: f5 6c 02  mov   a,$026c+x
08ee: a8 00     sbc   a,#$00
08f0: 10 21     bpl   $0913
08f2: e8 00     mov   a,#$00
08f4: d5 7e 02  mov   $027e+x,a
08f7: 2f 1a     bra   $0913
; vcmd d8 - coarse tuning (relative)
08f9: f7 2d     mov   a,($2d)+y
08fb: 60        clrc
08fc: 95 6c 02  adc   a,$026c+x
08ff: 2f 12     bra   $0913
; vcmd e2
0901: 6d        push  y
0902: f7 2d     mov   a,($2d)+y
0904: fd        mov   y,a
0905: f6 dd 01  mov   a,$01dd+y
0908: d5 7e 02  mov   $027e+x,a
090b: f6 e1 01  mov   a,$01e1+y
090e: ee        pop   y
090f: 2f 02     bra   $0913
; vcmd d7 - coarse tuning (absolute)
0911: f7 2d     mov   a,($2d)+y
0913: d5 6c 02  mov   $026c+x,a         ; coarse tuning (semitones, signed)
0916: f4 9e     mov   a,$9e+x
0918: 08 01     or    a,#$01
091a: d4 9e     mov   $9e+x,a
091c: fc        inc   y
091d: 6f        ret

; vcmd de - set waveform/envelope offset
091e: 8f 5c f2  mov   $f2,#$5c
0921: fa 11 f3  mov   ($f3),($11)       ; set KOF
0924: dd        mov   a,y
0925: 8d 00     mov   y,#$00
0927: 7a 2d     addw  ya,$2d
0929: da 2d     movw  $2d,ya            ; flush vcmd ptr
092b: 8d 00     mov   y,#$00
092d: f7 2d     mov   a,($2d)+y
092f: 3a 2d     incw  $2d
0931: 2d        push  a
0932: f7 2d     mov   a,($2d)+y
0934: 3a 2d     incw  $2d
0936: fd        mov   y,a
0937: ae        pop   a                 ; read waveform/envelope offset (2 bytes)
0938: 7a 2d     addw  ya,$2d            ; offset to absolute address
093a: d5 36 02  mov   $0236+x,a         ; $0240-10+x
093d: dd        mov   a,y
093e: d5 48 02  mov   $0248+x,a         ; $0252-10+x
0941: f4 9e     mov   a,$9e+x
0943: 08 04     or    a,#$04
0945: d4 9e     mov   $9e+x,a
0947: 8d 00     mov   y,#$00
0949: 6f        ret

; vcmd df
094a: f7 2d     mov   a,($2d)+y
094c: f0 05     beq   $0953
094e: 2d        push  a
094f: 3f 22 0d  call  $0d22
0952: ae        pop   a
0953: d5 ca 02  mov   $02ca+x,a
0956: fc        inc   y
0957: 6f        ret

; vcmd e0
0958: f7 2d     mov   a,($2d)+y
095a: 2f 07     bra   $0963
; vcmd e1
095c: f7 2d     mov   a,($2d)+y
095e: 60        clrc
095f: 84 17     adc   a,$17
0961: 28 1f     and   a,#$1f
0963: 38 e0 17  and   $17,#$e0
0966: 0e 17 00  tset1 $0017
0969: fc        inc   y
096a: 6f        ret

; vcmd e5
096b: 6d        push  y
096c: f7 2d     mov   a,($2d)+y
096e: fd        mov   y,a
096f: f6 dd 01  mov   a,$01dd+y
0972: d0 01     bne   $0975
0974: bc        inc   a
0975: d4 7a     mov   $7a+x,a
0977: ee        pop   y
0978: fc        inc   y
0979: 6f        ret

; vcmd e6 - set timebase
097a: f7 2d     mov   a,($2d)+y
097c: c4 43     mov   $43,a
097e: fc        inc   y
097f: 6f        ret

0980: e4 f4     mov   a,$f4
0982: 64 f4     cmp   a,$f4
0984: d0 fa     bne   $0980
0986: c4 38     mov   $38,a
0988: 28 ff     and   a,#$ff
098a: f0 1f     beq   $09ab
098c: e8 00     mov   a,#$00
098e: c4 f4     mov   $f4,a
0990: c4 41     mov   $41,a
0992: fa f5 39  mov   ($39),($f5)
0995: fa f6 3a  mov   ($3a),($f6)
0998: fa f7 3b  mov   ($3b),($f7)
099b: 8f 31 f1  mov   $f1,#$31
099e: 8f 31 f1  mov   $f1,#$31
09a1: ab 3c     inc   $3c
09a3: fa 3c f5  mov   ($f5),($3c)
09a6: 3f ef 09  call  $09ef
09a9: 2f d5     bra   $0980
09ab: e4 41     mov   a,$41
09ad: 68 01     cmp   a,#$01
09af: f0 05     beq   $09b6
09b1: 68 02     cmp   a,#$02
09b3: f0 0b     beq   $09c0
09b5: 6f        ret

09b6: fa 3d f6  mov   ($f6),($3d)
09b9: fa 3e f7  mov   ($f7),($3e)
09bc: 8f 01 f4  mov   $f4,#$01
09bf: 6f        ret

09c0: cd 09     mov   x,#$09
09c2: e4 42     mov   a,$42
09c4: 75 12 02  cmp   a,$0212+x
09c7: f0 16     beq   $09df
09c9: 1d        dec   x
09ca: 10 f8     bpl   $09c4
09cc: cd 07     mov   x,#$07
09ce: 08 80     or    a,#$80
09d0: 75 1c 02  cmp   a,$021c+x
09d3: f0 0a     beq   $09df
09d5: 1d        dec   x
09d6: 10 f8     bpl   $09d0
09d8: 8f 00 f6  mov   $f6,#$00
09db: 8f 02 f4  mov   $f4,#$02
09de: 6f        ret

09df: 8f ff f6  mov   $f6,#$ff
09e2: 8f 02 f4  mov   $f4,#$02
09e5: 6f        ret

09e6: e4 f4     mov   a,$f4
09e8: f0 fc     beq   $09e6
09ea: 64 f4     cmp   a,$f4
09ec: d0 f8     bne   $09e6
09ee: 6f        ret

09ef: e4 38     mov   a,$38
09f1: 30 03     bmi   $09f6
09f3: 5f 3c 0c  jmp   $0c3c

09f6: 28 1f     and   a,#$1f
09f8: 1c        asl   a
09f9: fd        mov   y,a
09fa: f6 04 0a  mov   a,$0a04+y
09fd: 2d        push  a
09fe: f6 03 0a  mov   a,$0a03+y
0a01: 2d        push  a
0a02: 6f        ret

0a03: dw $0a97  ; 00
0a05: dw $0a9e  ; 01
0a07: dw $0aad  ; 02
0a09: dw $0ab6  ; 03
0a0b: dw $0ac3  ; 04
0a0d: dw $0a63  ; 05
0a0f: dw $0a67  ; 06
0a11: dw $0a4a  ; 07
0a13: dw $0a4e  ; 08
0a15: dw $0a43  ; 09
0a17: dw $0a02  ; 0a
0a19: dw $0a02  ; 0b
0a1b: dw $0a02  ; 0c
0a1d: dw $0a02  ; 0d
0a1f: dw $0a02  ; 0e
0a21: dw $0c25  ; 0f
0a23: dw $0b3c  ; 10
0a25: dw $0b56  ; 11
0a27: dw $0c0c  ; 12
0a29: dw $0b78  ; 13
0a2b: dw $0b92  ; 14
0a2d: dw $0bb4  ; 15
0a2f: dw $0b70  ; 16
0a31: dw $0b74  ; 17
0a33: dw $0d1f  ; 18
0a35: dw $0c2f  ; 19
0a37: dw $0b86  ; 1a
0a39: dw $0ba3  ; 1b
0a3b: dw $0bc0  ; 1c
0a3d: dw $0be6  ; 1d
0a3f: dw $0b12  ; 1e
0a41: dw $0a02  ; 1f

0a42: fa 39 41  mov   ($41),($39)
0a46: fa 3a 42  mov   ($42),($3a)
0a49: 6f        ret

0a4a: fa 3a 40  mov   ($40),($3a)
0a4d: 6f        ret

0a4e: e4 40     mov   a,$40
0a50: 9c        dec   a
0a51: 1c        asl   a
0a52: 5d        mov   x,a
0a53: e4 3a     mov   a,$3a
0a55: eb 3b     mov   y,$3b
0a57: 7a 3d     addw  ya,$3d
0a59: d5 00 12  mov   $1200+x,a
0a5c: dd        mov   a,y
0a5d: d5 01 12  mov   $1201+x,a
0a60: ab 40     inc   $40
0a62: 6f        ret

0a63: fa 3a 3f  mov   ($3f),($3a)
0a66: 6f        ret

0a67: e4 3f     mov   a,$3f
0a69: 1c        asl   a
0a6a: 1c        asl   a
0a6b: 5d        mov   x,a
0a6c: e4 3a     mov   a,$3a
0a6e: eb 3b     mov   y,$3b
0a70: 7a 3d     addw  ya,$3d
0a72: d5 00 11  mov   $1100+x,a
0a75: dd        mov   a,y
0a76: d5 01 11  mov   $1101+x,a
0a79: 3f e6 09  call  $09e6
0a7c: e4 f6     mov   a,$f6
0a7e: eb f7     mov   y,$f7
0a80: 7a 3d     addw  ya,$3d
0a82: d5 02 11  mov   $1102+x,a
0a85: dd        mov   a,y
0a86: d5 03 11  mov   $1103+x,a
0a89: 8f 31 f1  mov   $f1,#$31
0a8c: 8f 31 f1  mov   $f1,#$31
0a8f: ab 3c     inc   $3c
0a91: fa 3c f5  mov   ($f5),($3c)
0a94: ab 3f     inc   $3f
0a96: 6f        ret

0a97: fa 3a 3d  mov   ($3d),($3a)
0a9a: fa 3b 3e  mov   ($3e),($3b)
0a9d: 6f        ret

0a9e: 8d 00     mov   y,#$00
0aa0: e4 3a     mov   a,$3a
0aa2: d7 3d     mov   ($3d)+y,a
0aa4: 3a 3d     incw  $3d
0aa6: e4 3b     mov   a,$3b
0aa8: d7 3d     mov   ($3d)+y,a
0aaa: 3a 3d     incw  $3d
0aac: 6f        ret

0aad: 8d 00     mov   y,#$00
0aaf: e4 3a     mov   a,$3a
0ab1: d7 3d     mov   ($3d)+y,a
0ab3: 3a 3d     incw  $3d
0ab5: 6f        ret

0ab6: fa 3a 06  mov   ($06),($3a)
0ab9: fa 3b 07  mov   ($07),($3b)
0abc: e4 39     mov   a,$39
0abe: 8d 00     mov   y,#$00
0ac0: d7 06     mov   ($06)+y,a
0ac2: 6f        ret

0ac3: fa 3a 02  mov   ($02),($3a)
0ac6: fa 3b 03  mov   ($03),($3b)
0ac9: 4b 03     lsr   $03
0acb: 6b 02     ror   $02
0acd: 6b 04     ror   $04
0acf: 8d 00     mov   y,#$00
0ad1: 1a 02     decw  $02
0ad3: 30 22     bmi   $0af7
0ad5: e4 f4     mov   a,$f4
0ad7: f0 fc     beq   $0ad5
0ad9: 64 f4     cmp   a,$f4
0adb: d0 f8     bne   $0ad5
0add: e4 f6     mov   a,$f6
0adf: f8 f7     mov   x,$f7
0ae1: 8f 31 f1  mov   $f1,#$31
0ae4: 8f 31 f1  mov   $f1,#$31
0ae7: ab 3c     inc   $3c
0ae9: fa 3c f5  mov   ($f5),($3c)
0aec: d7 3d     mov   ($3d)+y,a
0aee: 3a 3d     incw  $3d
0af0: 7d        mov   a,x
0af1: d7 3d     mov   ($3d)+y,a
0af3: 3a 3d     incw  $3d
0af5: 2f da     bra   $0ad1
0af7: e4 04     mov   a,$04
0af9: 10 14     bpl   $0b0f
0afb: 3f e6 09  call  $09e6
0afe: e4 f6     mov   a,$f6
0b00: d7 3d     mov   ($3d)+y,a
0b02: 3a 3d     incw  $3d
0b04: 8f 31 f1  mov   $f1,#$31
0b07: 8f 31 f1  mov   $f1,#$31
0b0a: ab 3c     inc   $3c
0b0c: fa 3c f5  mov   ($f5),($3c)
0b0f: eb fd     mov   y,$fd
0b11: 6f        ret

0b12: 3f 18 0b  call  $0b18
0b15: 5f 73 0e  jmp   $0e73

0b18: 3f 6a 0d  call  $0d6a
0b1b: 3f 79 0d  call  $0d79
0b1e: e8 00     mov   a,#$00
0b20: c4 0e     mov   $0e,a
0b22: c4 2a     mov   $2a,a
0b24: c4 2b     mov   $2b,a
0b26: c4 24     mov   $24,a
0b28: c4 25     mov   $25,a
0b2a: c4 2c     mov   $2c,a
0b2c: 3f 7f 0e  call  $0e7f
0b2f: 3f 56 0b  call  $0b56
0b32: 3f 4a 03  call  $034a
0b35: 3f 4a 03  call  $034a
0b38: 3f 4a 03  call  $034a
0b3b: 6f        ret

0b3c: cd 00     mov   x,#$00
0b3e: 8f 01 11  mov   $11,#$01
0b41: f4 96     mov   a,$96+x
0b43: 08 10     or    a,#$10
0b45: d4 96     mov   $96+x,a
0b47: f4 a8     mov   a,$a8+x
0b49: 08 02     or    a,#$02
0b4b: d4 a8     mov   $a8+x,a
0b4d: 3d        inc   x
0b4e: 0b 11     asl   $11
0b50: d0 ef     bne   $0b41
0b52: 18 01 0f  or    $0f,#$01
0b55: 6f        ret

0b56: cd 00     mov   x,#$00
0b58: 8f 01 11  mov   $11,#$01
0b5b: f4 96     mov   a,$96+x
0b5d: 28 ef     and   a,#$ef
0b5f: d4 96     mov   $96+x,a
0b61: f4 a8     mov   a,$a8+x
0b63: 08 02     or    a,#$02
0b65: d4 a8     mov   $a8+x,a
0b67: 3d        inc   x
0b68: 0b 11     asl   $11
0b6a: d0 ef     bne   $0b5b
0b6c: 38 fe 0f  and   $0f,#$fe
0b6f: 6f        ret

0b70: 18 02 0f  or    $0f,#$02
0b73: 6f        ret

0b74: 38 fd 0f  and   $0f,#$fd
0b77: 6f        ret

0b78: e8 00     mov   a,#$00
0b7a: c4 2a     mov   $2a,a
0b7c: c4 2b     mov   $2b,a
0b7e: fa 3a 27  mov   ($27),($3a)
0b81: e4 27     mov   a,$27
0b83: 5f 7f 0e  jmp   $0e7f

0b86: e8 00     mov   a,#$00
0b88: c4 24     mov   $24,a
0b8a: c4 25     mov   $25,a
0b8c: fa 3a 21  mov   ($21),($3a)
0b8f: 5f cc 0b  jmp   $0bcc

0b92: fa 3a 2a  mov   ($2a),($3a)
0b95: e8 00     mov   a,#$00
0b97: 0b 2a     asl   $2a
0b99: 3c        rol   a
0b9a: c4 2b     mov   $2b,a
0b9c: fa 3b 29  mov   ($29),($3b)
0b9f: 8f ff 28  mov   $28,#$ff
0ba2: 6f        ret

0ba3: fa 3a 24  mov   ($24),($3a)
0ba6: e8 00     mov   a,#$00
0ba8: 0b 24     asl   $24
0baa: 3c        rol   a
0bab: c4 25     mov   $25,a
0bad: fa 3b 23  mov   ($23),($3b)
0bb0: 8f ff 22  mov   $22,#$ff
0bb3: 6f        ret

0bb4: 3f 92 0b  call  $0b92
0bb7: ba 00     movw  ya,$00
0bb9: 9a 2a     subw  ya,$2a
0bbb: da 2a     movw  $2a,ya
0bbd: ab 28     inc   $28
0bbf: 6f        ret

0bc0: 3f a3 0b  call  $0ba3
0bc3: ba 00     movw  ya,$00
0bc5: 9a 24     subw  ya,$24
0bc7: da 24     movw  $24,ya
0bc9: ab 22     inc   $22
0bcb: 6f        ret

0bcc: 4d        push  x
0bcd: 6d        push  y
0bce: e4 1e     mov   a,$1e
0bd0: eb 21     mov   y,$21
0bd2: cf        mul   ya
0bd3: cc 1f 00  mov   $001f,y
0bd6: cd 00     mov   x,#$00
0bd8: f4 9e     mov   a,$9e+x
0bda: 08 02     or    a,#$02
0bdc: d4 9e     mov   $9e+x,a
0bde: 3d        inc   x
0bdf: c8 0a     cmp   x,#$0a
0be1: d0 f5     bne   $0bd8
0be3: ee        pop   y
0be4: ce        pop   x
0be5: 6f        ret

0be6: e4 39     mov   a,$39
0be8: 08 80     or    a,#$80
0bea: cd 00     mov   x,#$00
0bec: 8f 01 11  mov   $11,#$01
0bef: 75 1c 02  cmp   a,$021c+x
0bf2: d0 12     bne   $0c06
0bf4: 2d        push  a
0bf5: e4 3b     mov   a,$3b
0bf7: d5 0a 02  mov   $020a+x,a
0bfa: e4 3a     mov   a,$3a
0bfc: d5 dc 00  mov   $00dc+x,a
0bff: f4 a8     mov   a,$a8+x
0c01: 08 02     or    a,#$02
0c03: d4 a8     mov   $a8+x,a
0c05: ae        pop   a
0c06: 3d        inc   x
0c07: 0b 11     asl   $11
0c09: d0 e4     bne   $0bef
0c0b: 6f        ret

0c0c: e4 39     mov   a,$39
0c0e: 08 80     or    a,#$80
0c10: cd 00     mov   x,#$00
0c12: 8f 01 11  mov   $11,#$01
0c15: 75 1c 02  cmp   a,$021c+x
0c18: d0 05     bne   $0c1f
0c1a: 2d        push  a
0c1b: 3f 85 06  call  $0685
0c1e: ae        pop   a
0c1f: 3d        inc   x
0c20: 0b 11     asl   $11
0c22: d0 f1     bne   $0c15
0c24: 6f        ret

0c25: 8f 00 0e  mov   $0e,#$00
0c28: 3f 6a 0d  call  $0d6a
0c2b: 3f 9e 0d  call  $0d9e
0c2e: 6f        ret

0c2f: eb 39     mov   y,$39
0c31: e4 3a     mov   a,$3a
0c33: d6 dd 01  mov   $01dd+y,a
0c36: e4 3b     mov   a,$3b
0c38: d6 e1 01  mov   $01e1+y,a
0c3b: 6f        ret

0c3c: 1c        asl   a
0c3d: fd        mov   y,a
0c3e: f6 fe 11  mov   a,$11fe+y
0c41: c4 04     mov   $04,a
0c43: f6 ff 11  mov   a,$11ff+y
0c46: c4 05     mov   $05,a             ; set song header ptr
0c48: 8d 00     mov   y,#$00
0c4a: f7 04     mov   a,($04)+y         ; read first byte
0c4c: 10 05     bpl   $0c53
0c4e: 68 ff     cmp   a,#$ff
0c50: d0 14     bne   $0c66
0c52: 6f        ret

0c53: 3f f3 0c  call  $0cf3
0c56: e8 04     mov   a,#$04
0c58: 3f f4 0f  call  $0ff4
0c5b: 8f 12 2c  mov   $2c,#$12
0c5e: 8f 50 18  mov   $18,#$50
0c61: e8 02     mov   a,#$02
0c63: 5f c6 0f  jmp   $0fc6

0c66: 28 7f     and   a,#$7f
0c68: c4 08     mov   $08,a
0c6a: 3a 04     incw  $04
0c6c: 8f 00 06  mov   $06,#$00
0c6f: 8d 00     mov   y,#$00
0c71: f7 04     mov   a,($04)+y
0c73: 10 16     bpl   $0c8b
0c75: 68 ff     cmp   a,#$ff
0c77: f0 6d     beq   $0ce6
0c79: 3f 58 0d  call  $0d58
0c7c: 64 08     cmp   a,$08
0c7e: 90 1b     bcc   $0c9b
0c80: e4 38     mov   a,$38
0c82: 08 80     or    a,#$80
0c84: 3f 41 0d  call  $0d41
0c87: 90 5d     bcc   $0ce6
0c89: 2f 10     bra   $0c9b
0c8b: e4 38     mov   a,$38
0c8d: 08 80     or    a,#$80
0c8f: 3f 41 0d  call  $0d41
0c92: b0 07     bcs   $0c9b
0c94: 3f 58 0d  call  $0d58
0c97: 64 08     cmp   a,$08
0c99: b0 4b     bcs   $0ce6
0c9b: 3a 04     incw  $04
0c9d: 6d        push  y
0c9e: ce        pop   x
0c9f: 8d 00     mov   y,#$00
0ca1: f7 04     mov   a,($04)+y
0ca3: 2d        push  a
0ca4: 3a 04     incw  $04
0ca6: f7 04     mov   a,($04)+y
0ca8: fd        mov   y,a
0ca9: ae        pop   a
0caa: 3a 04     incw  $04
0cac: 7a 04     addw  ya,$04
0cae: d4 4e     mov   $4e+x,a
0cb0: dd        mov   a,y
0cb1: d4 60     mov   $60+x,a
0cb3: e4 38     mov   a,$38
0cb5: 08 80     or    a,#$80
0cb7: d5 1c 02  mov   $021c+x,a
0cba: e4 06     mov   a,$06
0cbc: d5 24 02  mov   $0224+x,a
0cbf: ab 06     inc   $06
0cc1: e4 08     mov   a,$08
0cc3: d4 ca     mov   $ca+x,a
0cc5: e8 00     mov   a,#$00
0cc7: d5 88 02  mov   $0288+x,a
0cca: 3f e7 0c  call  $0ce7
0ccd: e4 3b     mov   a,$3b
0ccf: d5 0a 02  mov   $020a+x,a
0cd2: e4 3a     mov   a,$3a
0cd4: d5 dc 00  mov   $00dc+x,a
0cd7: e8 04     mov   a,#$04
0cd9: d4 96     mov   $96+x,a
0cdb: f5 c5 01  mov   a,$01c5+x
0cde: 48 ff     eor   a,#$ff
0ce0: 24 16     and   a,$16
0ce2: c4 16     mov   $16,a
0ce4: 2f 89     bra   $0c6f
0ce6: 6f        ret

0ce7: e8 80     mov   a,#$80
0ce9: d4 a8     mov   $a8+x,a
0ceb: f5 c5 01  mov   a,$01c5+x
0cee: 04 13     or    a,$13
0cf0: c4 13     mov   $13,a
0cf2: 6f        ret

0cf3: fa 38 0e  mov   ($0e),($38)
0cf6: 3f 56 0b  call  $0b56
0cf9: 3f 6a 0d  call  $0d6a
0cfc: 3f 9e 0d  call  $0d9e
0cff: 3f 4a 03  call  $034a
0d02: 8f 00 16  mov   $16,#$00
0d05: 8f f0 1e  mov   $1e,#$f0
0d08: 3f cc 0b  call  $0bcc
0d0b: 8f 20 1c  mov   $1c,#$20          ; set default tempo
0d0e: 8d 00     mov   y,#$00
0d10: f7 04     mov   a,($04)+y
0d12: 68 ff     cmp   a,#$ff
0d14: f0 08     beq   $0d1e             ; read score ptr until $ff appears
0d16: 3a 04     incw  $04
0d18: 5d        mov   x,a               ; save channel index to X
0d19: 3f b1 0d  call  $0db1             ; read score ptr for channel X
0d1c: 2f f0     bra   $0d0e
0d1e: 6f        ret

0d1f: 5f 87 0d  jmp   $0d87

0d22: c4 02     mov   $02,a
0d24: e4 11     mov   a,$11
0d26: 2d        push  a
0d27: 4d        push  x
0d28: cd 07     mov   x,#$07
0d2a: e4 02     mov   a,$02
0d2c: 75 d4 02  cmp   a,$02d4+x
0d2f: d0 08     bne   $0d39
0d31: f5 c5 01  mov   a,$01c5+x
0d34: c4 11     mov   $11,a
0d36: 3f 85 06  call  $0685
0d39: 1d        dec   x
0d3a: 10 ee     bpl   $0d2a
0d3c: ce        pop   x
0d3d: ae        pop   a
0d3e: c4 11     mov   $11,a
0d40: 6f        ret

0d41: 8d 07     mov   y,#$07
0d43: 76 1c 02  cmp   a,$021c+y
0d46: d0 09     bne   $0d51             ; next unless channel == A
0d48: 2d        push  a
0d49: f6 24 02  mov   a,$0224+y
0d4c: 64 06     cmp   a,$06
0d4e: f0 06     beq   $0d56             ; break if $0224+y == $06
0d50: ae        pop   a
0d51: dc        dec   y
0d52: 10 ef     bpl   $0d43
0d54: 60        clrc
0d55: 6f        ret
0d56: ae        pop   a
0d57: 6f        ret

; get lowest priority voice
; return { a: priority, y: channel # }
0d58: 4d        push  x
0d59: cd 07     mov   x,#$07
0d5b: e8 ff     mov   a,#$ff
0d5d: 74 ca     cmp   a,$ca+x
0d5f: 90 04     bcc   $0d65
0d61: f4 ca     mov   a,$ca+x
0d63: 4d        push  x
0d64: ee        pop   y
0d65: 1d        dec   x
0d66: 10 f5     bpl   $0d5d
0d68: ce        pop   x
0d69: 6f        ret

0d6a: cd 09     mov   x,#$09
0d6c: e8 ff     mov   a,#$ff
0d6e: d5 12 02  mov   $0212+x,a
0d71: e8 00     mov   a,#$00
0d73: d4 c0     mov   $c0+x,a
0d75: 1d        dec   x
0d76: 10 f4     bpl   $0d6c
0d78: 6f        ret

0d79: cd 00     mov   x,#$00
0d7b: 8f 01 11  mov   $11,#$01
0d7e: 3f 85 06  call  $0685
0d81: 3d        inc   x
0d82: 0b 11     asl   $11
0d84: d0 f8     bne   $0d7e
0d86: 6f        ret

; find unused hardware channel from ch0 to ch7
; return { x: channel #, $11: channel mask }
0d87: cd 00     mov   x,#$00
0d89: 8f 01 11  mov   $11,#$01
0d8c: f5 1c 02  mov   a,$021c+x
0d8f: 10 07     bpl   $0d98
0d91: 68 ff     cmp   a,#$ff
0d93: f0 03     beq   $0d98
0d95: 3f 85 06  call  $0685
0d98: 3d        inc   x
0d99: 0b 11     asl   $11
0d9b: d0 ef     bne   $0d8c
0d9d: 6f        ret

0d9e: cd 00     mov   x,#$00
0da0: 8f 01 11  mov   $11,#$01
0da3: f5 1c 02  mov   a,$021c+x
0da6: 30 03     bmi   $0dab
0da8: 3f 85 06  call  $0685
0dab: 3d        inc   x
0dac: 0b 11     asl   $11
0dae: d0 f3     bne   $0da3
0db0: 6f        ret

0db1: f7 04     mov   a,($04)+y
0db3: 2d        push  a
0db4: 3a 04     incw  $04
0db6: f7 04     mov   a,($04)+y
0db8: fd        mov   y,a
0db9: ae        pop   a
0dba: 3a 04     incw  $04
0dbc: 7a 04     addw  ya,$04            ; offset to address
0dbe: d4 44     mov   $44+x,a           ; read vcmd read ptr (lo)
0dc0: dd        mov   a,y
0dc1: d4 56     mov   $56+x,a           ; read vcmd read ptr (hi)
0dc3: e4 38     mov   a,$38
0dc5: d5 12 02  mov   $0212+x,a
0dc8: e8 00     mov   a,#$00
0dca: d5 5a 02  mov   $025a+x,a
0dcd: d5 6c 02  mov   $026c+x,a
0dd0: d5 7e 02  mov   $027e+x,a
0dd3: d5 b6 02  mov   $02b6+x,a
0dd6: d5 c0 02  mov   $02c0+x,a
0dd9: d4 9e     mov   $9e+x,a
0ddb: bc        inc   a
0ddc: d4 7a     mov   $7a+x,a
0dde: e8 08     mov   a,#$08
0de0: d4 8c     mov   $8c+x,a
0de2: e8 10     mov   a,#$10
0de4: d5 00 02  mov   $0200+x,a
0de7: e8 c8     mov   a,#$c8
0de9: d5 90 02  mov   $0290+x,a
0dec: e8 20     mov   a,#$20
0dee: d5 ac 02  mov   $02ac+x,a
0df1: e8 40     mov   a,#$40
0df3: d4 c0     mov   $c0+x,a
0df5: f5 34 10  mov   a,$1034+x
0df8: d4 68     mov   $68+x,a
0dfa: 6f        ret

0dfb: ba 2a     movw  ya,$2a
0dfd: f0 25     beq   $0e24
0dff: 30 0c     bmi   $0e0d
0e01: 7a 26     addw  ya,$26
0e03: da 26     movw  $26,ya
0e05: 30 10     bmi   $0e17
0e07: 9a 28     subw  ya,$28
0e09: 30 14     bmi   $0e1f
0e0b: 2f 0a     bra   $0e17
0e0d: 7a 26     addw  ya,$26
0e0f: da 26     movw  $26,ya
0e11: 30 04     bmi   $0e17
0e13: 9a 28     subw  ya,$28
0e15: 10 08     bpl   $0e1f
0e17: ba 28     movw  ya,$28
0e19: da 26     movw  $26,ya
0e1b: ba 00     movw  ya,$00
0e1d: da 2a     movw  $2a,ya
0e1f: e4 27     mov   a,$27
0e21: 5f 7f 0e  jmp   $0e7f

0e24: 6f        ret

0e25: ba 24     movw  ya,$24
0e27: f0 25     beq   $0e4e
0e29: 30 0c     bmi   $0e37
0e2b: 7a 20     addw  ya,$20
0e2d: da 20     movw  $20,ya
0e2f: 30 10     bmi   $0e41
0e31: 9a 22     subw  ya,$22
0e33: 30 14     bmi   $0e49
0e35: 2f 0a     bra   $0e41
0e37: 7a 20     addw  ya,$20
0e39: da 20     movw  $20,ya
0e3b: 30 04     bmi   $0e41
0e3d: 9a 22     subw  ya,$22
0e3f: 10 08     bpl   $0e49
0e41: ba 22     movw  ya,$22
0e43: da 20     movw  $20,ya
0e45: ba 00     movw  ya,$00
0e47: da 24     movw  $24,ya
0e49: e4 21     mov   a,$21
0e4b: 5f cc 0b  jmp   $0bcc

0e4e: 6f        ret

; s16 ($02) * u8 (a) multiplier
0e4f: c4 04     mov   $04,a
0e51: ba 02     movw  ya,$02
0e53: 10 0e     bpl   $0e63
0e55: ba 00     movw  ya,$00
0e57: 9a 02     subw  ya,$02
0e59: 3f 63 0e  call  $0e63
0e5c: da 06     movw  $06,ya
0e5e: ba 00     movw  ya,$00
0e60: 9a 06     subw  ya,$06
0e62: 6f        ret

; u16 (ya) * u8 ($04) multiplier
0e63: 2d        push  a
0e64: e4 04     mov   a,$04
0e66: cf        mul   ya
0e67: da 06     movw  $06,ya
0e69: ae        pop   a
0e6a: eb 04     mov   y,$04
0e6c: cf        mul   ya
0e6d: dd        mov   a,y
0e6e: 8d 00     mov   y,#$00
0e70: 7a 06     addw  ya,$06            ; ya = (ya * $04) >> 8
0e72: 6f        ret

0e73: e8 ff     mov   a,#$ff
0e75: c4 26     mov   $26,a
0e77: c4 20     mov   $20,a
0e79: e8 7f     mov   a,#$7f
0e7b: c4 27     mov   $27,a
0e7d: c4 21     mov   $21,a
0e7f: 8f 0c f2  mov   $f2,#$0c
0e82: c4 f3     mov   $f3,a             ; set MVOL(L)
0e84: 8f 1c f2  mov   $f2,#$1c
0e87: c4 f3     mov   $f3,a             ; set MVOL(R)
0e89: e4 1a     mov   a,$1a
0e8b: f0 04     beq   $0e91
0e8d: e8 00     mov   a,#$00
0e8f: 2f 13     bra   $0ea4
0e91: e4 2c     mov   a,$2c
0e93: 10 03     bpl   $0e98
0e95: 48 ff     eor   a,#$ff
0e97: bc        inc   a
0e98: eb 27     mov   y,$27
0e9a: cf        mul   ya
0e9b: dd        mov   a,y
0e9c: 1c        asl   a
0e9d: eb 2c     mov   y,$2c
0e9f: 10 03     bpl   $0ea4
0ea1: 48 ff     eor   a,#$ff
0ea3: bc        inc   a
0ea4: 64 35     cmp   a,$35
0ea6: f0 0c     beq   $0eb4
0ea8: c4 35     mov   $35,a
0eaa: 8f 3c f2  mov   $f2,#$3c
0ead: c4 f3     mov   $f3,a             ; set EVOL(R)
0eaf: 8f 2c f2  mov   $f2,#$2c
0eb2: c4 f3     mov   $f3,a             ; set EVOL(L)
0eb4: 6f        ret

; flush waveform/envelopes
0eb5: 4d        push  x
0eb6: f5 40 02  mov   a,$0240+x         ; $0236+10+x
0eb9: c4 2f     mov   $2f,a
0ebb: f5 52 02  mov   a,$0252+x         ; $0248+10+x
0ebe: c4 30     mov   $30,a
0ec0: 7d        mov   a,x
0ec1: 9f        xcn   a
0ec2: 08 04     or    a,#$04
0ec4: 5d        mov   x,a
0ec5: 8d 00     mov   y,#$00
0ec7: f7 2f     mov   a,($2f)+y
0ec9: 10 06     bpl   $0ed1
0ecb: 09 11 14  or    ($14),($11)
0ece: dd        mov   a,y
0ecf: 2f 07     bra   $0ed8
0ed1: e4 11     mov   a,$11
0ed3: 4e 14 00  tclr1 $0014
0ed6: f7 2f     mov   a,($2f)+y
0ed8: d8 f2     mov   $f2,x
0eda: c4 f3     mov   $f3,a             ; set SRCN, ADSR(1), ADSR(2), GAIN
0edc: 3d        inc   x
0edd: fc        inc   y
0ede: ad 04     cmp   y,#$04
0ee0: d0 f4     bne   $0ed6
0ee2: ce        pop   x
0ee3: f7 2f     mov   a,($2f)+y
0ee5: d4 b8     mov   $b8+x,a           ; key-off delay (ticks)
0ee7: fc        inc   y
0ee8: f7 2f     mov   a,($2f)+y
0eea: d5 d5 01  mov   $01d5+x,a         ; per-instrument coarse tuning
0eed: fc        inc   y
0eee: f7 2f     mov   a,($2f)+y
0ef0: d5 cd 01  mov   $01cd+x,a         ; per-instrument fine tuning
0ef3: 6f        ret

; calculate hardware volume for channel x
0ef4: 2d        push  a
0ef5: f4 96     mov   a,$96+x
0ef7: 28 10     and   a,#$10
0ef9: f0 05     beq   $0f00
0efb: ae        pop   a
0efc: 8d 00     mov   y,#$00
0efe: 2f 2c     bra   $0f2c
0f00: 33 0f 24  bbc1  $0f,$0f27         ; mono?
; stereo
0f03: f5 0a 02  mov   a,$020a+x         ; panpot
0f06: fd        mov   y,a
0f07: f6 38 0f  mov   a,$0f38+y         ; convert to volume
0f0a: ee        pop   y
0f0b: 6d        push  y
0f0c: cf        mul   ya                ; multiple given rate
0f0d: 7d        mov   a,x
0f0e: 9f        xcn   a
0f0f: c4 f2     mov   $f2,a
0f11: cb f3     mov   $f3,y             ; VOL(L)
0f13: e8 20     mov   a,#$20
0f15: 80        setc
0f16: b5 0a 02  sbc   a,$020a+x         ; panpot (inverted)
0f19: fd        mov   y,a
0f1a: f6 38 0f  mov   a,$0f38+y         ; convert to volume
0f1d: ee        pop   y
0f1e: cf        mul   ya                ; multiple given rate
0f1f: 7d        mov   a,x
0f20: 9f        xcn   a
0f21: bc        inc   a
0f22: c4 f2     mov   $f2,a
0f24: cb f3     mov   $f3,y             ; VOL(R)
0f26: 6f        ret
; mono
0f27: ae        pop   a
0f28: ec 48 0f  mov   y,$0f48           ; volume rate for center
0f2b: cf        mul   ya
0f2c: 7d        mov   a,x
0f2d: 9f        xcn   a
0f2e: c4 f2     mov   $f2,a
0f30: cb f3     mov   $f3,y             ; VOL(L)
0f32: bc        inc   a
0f33: c4 f2     mov   $f2,a
0f35: cb f3     mov   $f3,y             ; VOL(R)
0f37: 6f        ret

; panpot to volume table
; (*almost* approx of sine curve = SMF compatible)
0f38: db $80,$80,$7f,$7f,$7e,$7d,$7c,$7a
0f40: db $78,$76,$74,$71,$64,$6b,$68,$64
;                        ~~~ this should be $6e!
0f48: db $60,$5c,$57,$53,$4e,$49,$43,$3e
0f50: db $38,$32,$2b,$25,$1e,$17,$10,$08
0f58: db $00

; flush channel pitch
; $31/32 = key (integer + fraction)
0f59: f5 d5 01  mov   a,$01d5+x
0f5c: 68 80     cmp   a,#$80
0f5e: f0 3e     beq   $0f9e
0f60: fd        mov   y,a
0f61: f5 cd 01  mov   a,$01cd+x
0f64: 7a 31     addw  ya,$31
0f66: da 31     movw  $31,ya
0f68: f6 03 01  mov   a,$0103+y
0f6b: c4 08     mov   $08,a
0f6d: f6 64 01  mov   a,$0164+y
0f70: c4 09     mov   $09,a
0f72: f6 65 01  mov   a,$0165+y
0f75: 2d        push  a
0f76: f6 04 01  mov   a,$0104+y
0f79: ee        pop   y
0f7a: 9a 08     subw  ya,$08
0f7c: 6d        push  y
0f7d: eb 31     mov   y,$31
0f7f: cf        mul   ya
0f80: cb 06     mov   $06,y
0f82: 8f 00 07  mov   $07,#$00
0f85: ee        pop   y
0f86: e4 31     mov   a,$31
0f88: cf        mul   ya
0f89: 7a 06     addw  ya,$06
0f8b: 7a 08     addw  ya,$08
0f8d: c4 08     mov   $08,a
0f8f: 7d        mov   a,x
0f90: 9f        xcn   a
0f91: 08 02     or    a,#$02
0f93: c4 f2     mov   $f2,a
0f95: fa 08 f3  mov   ($f3),($08)       ; set P(L)
0f98: bc        inc   a
0f99: c4 f2     mov   $f2,a
0f9b: cb f3     mov   $f3,y             ; set P(H)
0f9d: 6f        ret

0f9e: 7d        mov   a,x
0f9f: 9f        xcn   a
0fa0: 08 02     or    a,#$02
0fa2: c4 f2     mov   $f2,a
0fa4: fa 31 f3  mov   ($f3),($31)       ; set P(L)
0fa7: bc        inc   a
0fa8: c4 f2     mov   $f2,a
0faa: fa 32 f3  mov   ($f3),($32)       ; set P(H)
0fad: 6f        ret

; step 16-bit RNG
0fae: ba 0a     movw  ya,$0a
0fb0: 0b 0a     asl   $0a
0fb2: 2b 0b     rol   $0b
0fb4: 0b 0a     asl   $0a
0fb6: 2b 0b     rol   $0b
0fb8: 7a 0a     addw  ya,$0a
0fba: 7a 0c     addw  ya,$0c
0fbc: da 0a     movw  $0a,ya
0fbe: 6f        ret

0fbf: 8f 4f fa  mov   $fa,#$4f
0fc2: 8f 01 f1  mov   $f1,#$01
0fc5: 6f        ret

; set echo FIR filter
0fc6: 1c        asl   a
0fc7: 1c        asl   a
0fc8: 1c        asl   a
0fc9: 5d        mov   x,a
0fca: 8d 0f     mov   y,#$0f
0fcc: f5 dc 0f  mov   a,$0fdc+x
0fcf: cb f2     mov   $f2,y
0fd1: c4 f3     mov   $f3,a             ; set FIR
0fd3: 3d        inc   x
0fd4: dd        mov   a,y
0fd5: 60        clrc
0fd6: 88 10     adc   a,#$10
0fd8: fd        mov   y,a
0fd9: 10 f1     bpl   $0fcc
0fdb: 6f        ret

0fdc: db $7f,$00,$00,$00,$00,$00,$00,$00
0fe4: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0fec: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9

; set initial echo params and enable echo
0ff4: 64 19     cmp   a,$19
0ff6: f0 2b     beq   $1023
0ff8: c4 19     mov   $19,a
0ffa: 8f 3c 1a  mov   $1a,#$3c
0ffd: a2 17     set5  $17
0fff: 8f 6c f2  mov   $f2,#$6c
1002: fa 17 f3  mov   ($f3),($17)       ; set FLG
1005: 8f 7d f2  mov   $f2,#$7d
1008: fa 19 f3  mov   ($f3),($19)       ; set EDL
100b: e8 00     mov   a,#$00
100d: 8f 4d f2  mov   $f2,#$4d
1010: c4 f3     mov   $f3,a             ; set EON
1012: 8f 0d f2  mov   $f2,#$0d
1015: c4 f3     mov   $f3,a             ; set EFB
1017: 8f 3c f2  mov   $f2,#$3c
101a: c4 f3     mov   $f3,a             ; set EVOL(R)
101c: 8f 2c f2  mov   $f2,#$2c
101f: c4 f3     mov   $f3,a             ; set EVOL(L)
1021: c4 35     mov   $35,a
1023: 6f        ret

; random panpot table
1024: db $06,$08,$0a,$0c,$0d,$0e,$0f,$10
102c: db $10,$11,$12,$13,$14,$16,$18,$1a

1034: db $00,$0a,$14,$1e,$28,$32,$3c,$46
103c: db $50,$5a,$64,$6e,$78,$82,$8c,$96
1044: db $a0,$aa
