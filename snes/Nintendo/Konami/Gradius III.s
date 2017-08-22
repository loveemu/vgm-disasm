0400: 20        clrp                    ; set dpage to 0
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x              ; SP = $(01)CF
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 e0     cmp   x,#$e0
040a: d0 fb     bne   $0407             ; zero $00-DF
040c: 8d 02     mov   y,#$02
040e: da 14     movw  $14,ya            ; set $14 to #$0200
0410: fd        mov   y,a
0411: d7 14     mov   ($14)+y,a
0413: fc        inc   y
0414: d0 fb     bne   $0411
0416: ab 15     inc   $15
0418: f8 15     mov   x,$15
041a: c8 04     cmp   x,#$04
041c: d0 f3     bne   $0411             ; zero $0200-03FF
041e: a2 48     set5  $48
0420: e4 48     mov   a,$48
0422: 8d 6c     mov   y,#$6c
0424: 3f 1d 07  call  $071d             ; disable echo writes
0427: e8 00     mov   a,#$00
0429: 8d 6d     mov   y,#$6d
042b: 3f 1d 07  call  $071d             ; echo addr = $0000
042e: 8d 7d     mov   y,#$7d
0430: 3f 1d 07  call  $071d             ; zero echo delay
0433: 8d 4d     mov   y,#$4d
0435: 3f 1d 07  call  $071d             ; clear echo vbits
0438: 8d 0d     mov   y,#$0d
043a: 3f 1d 07  call  $071d             ; zero echo feedback
043d: 8d 2c     mov   y,#$2c
043f: 3f 1d 07  call  $071d             ; zero echo vol L
0442: 8d 3c     mov   y,#$3c
0444: 3f 1d 07  call  $071d             ; zero echo vol R
0447: 8d 71     mov   y,#$71
0449: e8 00     mov   a,#$00
044b: 3f 1d 07  call  $071d
044e: dc        dec   y
044f: 3f 1d 07  call  $071d
0452: dd        mov   a,y
0453: 80        setc
0454: a8 0f     sbc   a,#$0f
0456: fd        mov   y,a
0457: 10 f0     bpl   $0449             ; zero voice volumes
0459: e8 ff     mov   a,#$ff
045b: c4 46     mov   $46,a
045d: 8d 5c     mov   y,#$5c
045f: 3f 1d 07  call  $071d             ; key off all voices
0462: e8 7f     mov   a,#$7f
0464: 8d 0c     mov   y,#$0c
0466: 3f 1d 07  call  $071d             ; max master vol L
0469: 8d 1c     mov   y,#$1c
046b: 3f 1d 07  call  $071d             ; max master vol R
046e: e8 fe     mov   a,#$fe
0470: 8d 5d     mov   y,#$5d
0472: 3f 1d 07  call  $071d             ; source dir = $FE00
0475: 3f 6c 07  call  $076c             ; start timer0, clear ports 2/3, zero $06
0478: e8 f0     mov   a,#$f0
047a: c5 f1 00  mov   $00f1,a           ; clear ports 0-3, timers off
047d: e8 20     mov   a,#$20
047f: c5 fa 00  mov   $00fa,a           ; set timer0 latch to #$20 (4ms)
0482: e8 01     mov   a,#$01
0484: c5 f1 00  mov   $00f1,a           ; start timer0
; begin main loop
0487: 8d 06     mov   y,#$06
0489: f6 be 10  mov   a,$10be+y
048c: c5 f2 00  mov   $00f2,a
048f: f6 c4 10  mov   a,$10c4+y
0492: 5d        mov   x,a
0493: e6        mov   a,(x)
0494: c5 f3 00  mov   $00f3,a
0497: fe f0     dbnz  y,$0489           ; write DSP regs from shadows
0499: cb 45     mov   $45,y             ; clear key on shadow
049b: cb 46     mov   $46,y             ; clear key off shadow
049d: cb 1b     mov   $1b,y
049f: ec fd 00  mov   y,$00fd           ; get counter0 value
04a2: d0 53     bne   $04f7
04a4: e9 f7 00  mov   x,$00f7           ; read APU3
04a7: 1e f7 00  cmp   x,$00f7
04aa: d0 f8     bne   $04a4
04ac: 3e 07     cmp   x,$07             ; transfering data?
04ae: f0 13     beq   $04c3             ;  goto transfer routine
04b0: 3e 06     cmp   x,$06             ; same as last time?
04b2: f0 eb     beq   $049f             ;  restart counter loop
04b4: d8 06     mov   $06,x             ; save value in $06
04b6: 8f 80 07  mov   $07,#$80
04b9: ec f6 00  mov   y,$00f6           ; read APU2
04bc: 5e f6 00  cmp   y,$00f6
04bf: d0 f8     bne   $04b9             ; debounce
04c1: 2f 2c     bra   $04ef
04c3: ec f6 00  mov   y,$00f6           ; read APU2
04c6: 5e f6 00  cmp   y,$00f6
04c9: d0 f8     bne   $04c3             ; debounce
04cb: 7d        mov   a,x
04cc: c4 06     mov   $06,a             ; save APU3 value as previous in $06
04ce: 10 11     bpl   $04e1
04d0: 68 80     cmp   a,#$80
04d2: d0 05     bne   $04d9
04d4: cb 04     mov   $04,y             ; get low byte of xfer dest addr from APU2
04d6: bc        inc   a
04d7: 2f 04     bra   $04dd
04d9: cb 05     mov   $05,y             ; get hi byte of xfer dest addr from APU2
04db: e8 00     mov   a,#$00
04dd: c4 07     mov   $07,a
04df: 2f 0e     bra   $04ef
04e1: dd        mov   a,y
04e2: 8d 00     mov   y,#$00
04e4: d7 04     mov   ($04)+y,a         ; transfer byte to ($04/5) from APU2
04e6: fd        mov   y,a
04e7: 7d        mov   a,x
04e8: bc        inc   a
04e9: 28 7f     and   a,#$7f
04eb: c4 07     mov   $07,a
04ed: 3a 04     incw  $04
04ef: cc f6 00  mov   $00f6,y
04f2: c9 f7 00  mov   $00f7,x           ; write back APU2/3 values
04f5: 2f a8     bra   $049f             ; restart counter loop
04f7: cb 43     mov   $43,y             ; counter ticked, save # ticks in $43
04f9: cc f5 00  mov   $00f5,y           ;  and write ticks to APU1
04fc: 3f 76 07  call  $0776             ; read CPU cmd from APU0
04ff: f0 0c     beq   $050d
0501: 0e 46 00  tset1 $0046             ; key off vbit(s) in A
0504: 4e 1d 00  tclr1 $001d
0507: 0e 1b 00  tset1 $001b
050a: 4e 1f 00  tclr1 $001f
050d: e4 1a     mov   a,$1a
050f: f0 0a     beq   $051b
0511: 8f 00 5e  mov   $5e,#$00
0514: cd 0c     mov   x,#$0c
0516: 8f 40 47  mov   $47,#$40
0519: 2f 50     bra   $056b
051b: e4 4e     mov   a,$4e
051d: f0 1a     beq   $0539
051f: e4 4f     mov   a,$4f
0521: 80        setc
0522: a4 43     sbc   a,$43
0524: c4 4f     mov   $4f,a             ; $4F -= $43
0526: b0 11     bcs   $0539
0528: e8 46     mov   a,#$46
052a: 3f 94 07  call  $0794             ; do CPU cmd $46
052d: 0e 46 00  tset1 $0046             ; key off vbits in A
0530: 4e 1d 00  tclr1 $001d
0533: 0e 1b 00  tset1 $001b
0536: 4e 1f 00  tclr1 $001f
0539: 8f 01 47  mov   $47,#$01
053c: e4 0b     mov   a,$0b
053e: f0 25     beq   $0565
0540: cd 3f     mov   x,#$3f
0542: ab 0c     inc   $0c
0544: e4 0c     mov   a,$0c
0546: 68 04     cmp   a,#$04
0548: d0 1d     bne   $0567
054a: 8f 00 0c  mov   $0c,#$00
054d: ab 0d     inc   $0d
054f: e4 0d     mov   a,$0d
0551: d0 14     bne   $0567
0553: 3f 01 08  call  $0801             ; do CPU cmd $FD
0556: 0e 46 00  tset1 $0046             ; set key off shadow from A
0559: 4e 1d 00  tclr1 $001d
055c: 4e 1f 00  tclr1 $001f
055f: e8 00     mov   a,#$00
0561: c4 0b     mov   $0b,a
0563: c4 0d     mov   $0d,a
0565: cd 00     mov   x,#$00
0567: d8 5e     mov   $5e,x
0569: cd 00     mov   x,#$00
056b: f5 e1 02  mov   a,$02e1+x
056e: f0 1f     beq   $058f
0570: e4 47     mov   a,$47
0572: 24 1b     and   a,$1b
0574: d0 19     bne   $058f
0576: d8 44     mov   $44,x
0578: eb 43     mov   y,$43
057a: f4 d1     mov   a,$d1+x
057c: cf        mul   ya
057d: 60        clrc
057e: 94 d0     adc   a,$d0+x
0580: d4 d0     mov   $d0+x,a
0582: 90 08     bcc   $058c
0584: 3f c7 09  call  $09c7             ; process vcmds
0587: 3f 99 0d  call  $0d99
058a: 2f 03     bra   $058f
058c: 3f 06 10  call  $1006
058f: 3d        inc   x
0590: 3d        inc   x
0591: 0b 47     asl   $47
0593: d0 d6     bne   $056b
0595: 5f 87 04  jmp   $0487

; percussion table
; pan, volume (decrease), note number (vcmd byte)
0598: db $0a,$00,$98
059b: db $0a,$18,$ae
059e: db $07,$4c,$ad
05a1: db $07,$42,$b1
05a4: db $0d,$20,$aa
05a7: db $0f,$18,$a6
05aa: db $0a,$24,$a9
05ad: db $05,$30,$ae
05b0: db $0a,$00,$a4
05b3: db $0a,$00,$a4
05b6: db $0a,$00,$a4
05b9: db $0a,$00,$a4
05bc: db $0a,$00,$a4
05bf: db $0a,$00,$a4
05c2: db $0a,$00,$a4
05c5: db $0a,$00,$a4

05c8: ad ca     cmp   y,#$ca
05ca: 90 31     bcc   $05fd
; vcmd ca-df - percussion note
05cc: 3f 9b 0a  call  $0a9b
05cf: f5 11 02  mov   a,$0211+x
05d2: 80        setc
05d3: a8 ca     sbc   a,#$ca
05d5: c4 1e     mov   $1e,a
05d7: 1c        asl   a
05d8: 84 1e     adc   a,$1e
05da: fd        mov   y,a
05db: e4 5f     mov   a,$5f
05dd: 24 47     and   a,$47
05df: f0 0e     beq   $05ef
05e1: f6 98 05  mov   a,$0598+y         ; offset +0: pan
05e4: d5 31 03  mov   $0331+x,a
05e7: d5 51 03  mov   $0351+x,a
05ea: e8 00     mov   a,#$00
05ec: d5 30 03  mov   $0330+x,a
05ef: fc        inc   y
05f0: f6 98 05  mov   a,$0598+y
05f3: d5 f1 02  mov   $02f1+x,a         ; offset +1: volume delta (subtract)
05f6: fc        inc   y
05f7: f6 98 05  mov   a,$0598+y         ; offset +2: note number
05fa: fd        mov   y,a
05fb: 2f 35     bra   $0632
;
05fd: e8 00     mov   a,#$00
05ff: d5 f1 02  mov   $02f1+x,a
0602: ad c8     cmp   y,#$c8
0604: 90 01     bcc   $0607
; vcmd c8-c9
0606: 6f        ret

; vcmd 80-c7 - note
0607: e4 49     mov   a,$49
0609: 24 47     and   a,$47
060b: f0 25     beq   $0632
060d: dd        mov   a,y
060e: 28 1f     and   a,#$1f
0610: 2d        push  a
0611: e4 48     mov   a,$48
0613: 28 e0     and   a,#$e0
0615: c4 48     mov   $48,a
0617: ae        pop   a
0618: 04 48     or    a,$48
061a: c4 48     mov   $48,a
061c: 09 47 5e  or    ($5e),($47)
061f: e4 47     mov   a,$47
0621: 24 1f     and   a,$1f
0623: d0 e1     bne   $0606
0625: e8 00     mov   a,#$00
0627: d5 d0 02  mov   $02d0+x,a
062a: 09 47 45  or    ($45),($47)
062d: 09 47 1d  or    ($1d),($47)
0630: 2f d4     bra   $0606
; dispatch note (note vbyte in Y)
0632: dd        mov   a,y
0633: 28 7f     and   a,#$7f            ; get note number
0635: 60        clrc
0636: 95 f0 02  adc   a,$02f0+x
0639: 60        clrc
063a: 95 90 03  adc   a,$0390+x         ; apply per-instrument tuning (coarse)
063d: d5 61 03  mov   $0361+x,a
0640: f5 81 03  mov   a,$0381+x
0643: 60        clrc
0644: 95 91 03  adc   a,$0391+x         ; apply per-instrument tuning (fine)
0647: d5 60 03  mov   $0360+x,a
064a: 90 07     bcc   $0653
064c: f5 61 03  mov   a,$0361+x
064f: bc        inc   a                 ; add carry bit
0650: d5 61 03  mov   $0361+x,a         ; write tuned note number
0653: f5 60 03  mov   a,$0360+x
0656: 60        clrc
0657: 95 50 02  adc   a,$0250+x
065a: d5 60 03  mov   $0360+x,a
065d: f5 61 03  mov   a,$0361+x
0660: 95 51 02  adc   a,$0251+x
0663: d5 61 03  mov   $0361+x,a
0666: 09 47 5e  or    ($5e),($47)
0669: e4 47     mov   a,$47
066b: 24 1f     and   a,$1f
066d: d0 1c     bne   $068b
066f: f5 b1 02  mov   a,$02b1+x
0672: 5c        lsr   a
0673: e8 00     mov   a,#$00
0675: 7c        ror   a
0676: d5 a0 02  mov   $02a0+x,a
0679: e8 00     mov   a,#$00
067b: d4 b0     mov   $b0+x,a
067d: d5 00 01  mov   $0100+x,a
0680: d5 d0 02  mov   $02d0+x,a
0683: d4 c0     mov   $c0+x,a
0685: 09 47 45  or    ($45),($47)
0688: 09 47 1d  or    ($1d),($47)
068b: f5 80 02  mov   a,$0280+x
068e: d4 a0     mov   $a0+x,a
0690: f0 1e     beq   $06b0
0692: f5 81 02  mov   a,$0281+x
0695: d4 a1     mov   $a1+x,a
0697: f5 90 02  mov   a,$0290+x
069a: d0 0a     bne   $06a6
069c: f5 61 03  mov   a,$0361+x
069f: 80        setc
06a0: b5 91 02  sbc   a,$0291+x
06a3: d5 61 03  mov   $0361+x,a
06a6: f5 91 02  mov   a,$0291+x
06a9: 60        clrc
06aa: 95 61 03  adc   a,$0361+x
06ad: 3f fd 0c  call  $0cfd
06b0: 3f 15 0d  call  $0d15             ; load note number $0360/1+x into $10/1
06b3: 8d 00     mov   y,#$00
06b5: e4 11     mov   a,$11
06b7: 80        setc
06b8: a8 34     sbc   a,#$34
06ba: b0 09     bcs   $06c5
06bc: e4 11     mov   a,$11
06be: 80        setc
06bf: a8 13     sbc   a,#$13
06c1: b0 06     bcs   $06c9
06c3: dc        dec   y
06c4: 1c        asl   a
06c5: 7a 10     addw  ya,$10
06c7: da 10     movw  $10,ya
06c9: 4d        push  x
06ca: e4 11     mov   a,$11             ; note number
06cc: 1c        asl   a
06cd: 8d 00     mov   y,#$00
06cf: cd 18     mov   x,#$18
06d1: 9e        div   ya,x
06d2: 5d        mov   x,a               ; save octave into X
06d3: f6 cc 10  mov   a,$10cc+y
06d6: c4 15     mov   $15,a
06d8: f6 cb 10  mov   a,$10cb+y         ; read pitch table
06db: c4 14     mov   $14,a
06dd: f6 ce 10  mov   a,$10ce+y
06e0: 2d        push  a
06e1: f6 cd 10  mov   a,$10cd+y         ; read next note too
06e4: ee        pop   y
06e5: 9a 14     subw  ya,$14            ; delta pitch
06e7: eb 10     mov   y,$10
06e9: cf        mul   ya
06ea: dd        mov   a,y
06eb: 8d 00     mov   y,#$00
06ed: 7a 14     addw  ya,$14            ; linear linter polation
06ef: cb 15     mov   $15,y
06f1: 1c        asl   a
06f2: 2b 15     rol   $15
06f4: c4 14     mov   $14,a
06f6: 2f 04     bra   $06fc
; halve pitch (decrease octave)
06f8: 4b 15     lsr   $15
06fa: 7c        ror   a
06fb: 3d        inc   x
06fc: c8 06     cmp   x,#$06
06fe: d0 f8     bne   $06f8             ; repeat for (6 - octave) times
0700: ce        pop   x
0701: c4 14     mov   $14,a
0703: 0b 14     asl   $14
0705: 2b 15     rol   $15
0707: 0b 14     asl   $14
0709: 2b 15     rol   $15
070b: ba 14     movw  ya,$14
070d: da 16     movw  $16,ya            ; final pitch
070f: 7d        mov   a,x
0710: 9f        xcn   a
0711: 5c        lsr   a
0712: 08 02     or    a,#$02            ; pitch DSP reg for voice X
0714: fd        mov   y,a
0715: e4 16     mov   a,$16
0717: 3f 1d 07  call  $071d
071a: fc        inc   y
071b: e4 17     mov   a,$17             ; set DSP pitch from $16/7
; set DSP reg Y to A
071d: cc f2 00  mov   $00f2,y
0720: c5 f3 00  mov   $00f3,a
0723: 6f        ret

0724: 8d 00     mov   y,#$00
0726: f7 40     mov   a,($40)+y
0728: 3a 40     incw  $40
072a: 2d        push  a
072b: f7 40     mov   a,($40)+y
072d: f0 08     beq   $0737
072f: 3a 40     incw  $40
0731: fd        mov   y,a
0732: ae        pop   a
0733: 7a 4b     addw  ya,$4b
0735: 2f 04     bra   $073b
0737: 3a 40     incw  $40
0739: fd        mov   y,a
073a: ae        pop   a
073b: 6f        ret

073c: e8 20     mov   a,#$20
073e: d4 d1     mov   $d1+x,a
0740: f5 e1 02  mov   a,$02e1+x
0743: 68 80     cmp   a,#$80
0745: b0 02     bcs   $0749
0747: 2f 12     bra   $075b
0749: 68 a0     cmp   a,#$a0
074b: b0 07     bcs   $0754
074d: 4d        push  x
074e: 3f 01 08  call  $0801
0751: ce        pop   x
0752: 2f 0e     bra   $0762
0754: 4d        push  x
0755: 3f e8 07  call  $07e8
0758: ce        pop   x
0759: 2f 07     bra   $0762
075b: e8 00     mov   a,#$00
075d: d5 e1 02  mov   $02e1+x,a
0760: e4 47     mov   a,$47
0762: 0e 46 00  tset1 $0046
0765: 4e 1d 00  tclr1 $001d
0768: 4e 1f 00  tclr1 $001f
076b: 6f        ret

076c: e8 21     mov   a,#$21
076e: c5 f1 00  mov   $00f1,a           ; start timer0; clear ports 2/3
0771: e8 00     mov   a,#$00
0773: c4 06     mov   $06,a
0775: 6f        ret

; read CPU cmd from APU0
0776: e5 f4 00  mov   a,$00f4           ; read APU0
0779: 65 f4 00  cmp   a,$00f4
077c: d0 f8     bne   $0776             ; debounce
077e: 68 00     cmp   a,#$00
0780: d0 01     bne   $0783
0782: 6f        ret                     ; return if zero
0783: c5 f4 00  mov   $00f4,a           ; write APU0 back
0786: 8d 11     mov   y,#$11
0788: cc f1 00  mov   $00f1,y           ; clear ports 0/1, keep timer0 running
078b: 68 47     cmp   a,#$47
078d: d0 05     bne   $0794
078f: e8 00     mov   a,#$00            ; CPU cmd $47: zero $4E
0791: c4 4e     mov   $4e,a
0793: 6f        ret

0794: 68 46     cmp   a,#$46
0796: d0 08     bne   $07a0
0798: 8d 01     mov   y,#$01            ; CPU cmd $46: set $4E to 1, $4F to #$90
079a: cb 4e     mov   $4e,y
079c: 8d 90     mov   y,#$90
079e: cb 4f     mov   $4f,y
07a0: 68 7f     cmp   a,#$7f
07a2: f0 21     beq   $07c5             ; CPU cmd $7F: no-op
07a4: 68 f0     cmp   a,#$f0
07a6: d0 08     bne   $07b0
07a8: e8 3f     mov   a,#$3f            ; CPU cmd $F0: key off v0-6
07aa: c4 46     mov   $46,a
07ac: c4 1a     mov   $1a,a
07ae: e8 7f     mov   a,#$7f
07b0: 68 f1     cmp   a,#$f1
07b2: d0 14     bne   $07c8
07b4: e8 00     mov   a,#$00            ; CPU cmd $F1: 
07b6: c4 1a     mov   $1a,a
07b8: e4 1d     mov   a,$1d
07ba: ec e1 02  mov   y,$02e1
07bd: ad a0     cmp   y,#$a0
07bf: b0 02     bcs   $07c3
07c1: 28 3f     and   a,#$3f
07c3: c4 45     mov   $45,a
07c5: e8 00     mov   a,#$00
07c7: 6f        ret
07c8: 68 fa     cmp   a,#$fa
07ca: d0 03     bne   $07cf
07cc: c4 19     mov   $19,a             ; CPU cmd $FA: set $19 to #$FA
07ce: 6f        ret                     ; key off v1,3-7
07cf: 68 fb     cmp   a,#$fb
07d1: d0 05     bne   $07d8
07d3: e8 00     mov   a,#$00
07d5: c4 19     mov   $19,a             ; CPU cmd $FB: zero $19
07d7: 6f        ret
07d8: 68 fc     cmp   a,#$fc
07da: d0 08     bne   $07e4
07dc: e8 01     mov   a,#$01            ; CPU cmd $FC: set $0B/C to $0001
07de: c4 0b     mov   $0b,a
07e0: 9c        dec   a
07e1: c4 0c     mov   $0c,a
07e3: 6f        ret
07e4: 68 fe     cmp   a,#$fe
07e6: d0 15     bne   $07fd
07e8: e8 00     mov   a,#$00            ; CPU cmd $FE: zero $4E
07ea: c4 4e     mov   $4e,a
07ec: cd 0e     mov   x,#$0e
07ee: 8d ff     mov   y,#$ff
07f0: e8 00     mov   a,#$00
07f2: c4 1a     mov   $1a,a
07f4: d5 e1 02  mov   $02e1+x,a
07f7: 1d        dec   x
07f8: 1d        dec   x
07f9: 10 f9     bpl   $07f4
07fb: dd        mov   a,y               ; key off all voices on return
07fc: 6f        ret
07fd: 68 fd     cmp   a,#$fd
07ff: d0 06     bne   $0807
0801: cd 0a     mov   x,#$0a            ; CPU cmd $FD: like FE but key off v0-6
0803: 8d 3f     mov   y,#$3f
0805: 2f e9     bra   $07f0
0807: 68 60     cmp   a,#$60
0809: b0 3c     bcs   $0847
080b: cd 01     mov   x,#$01            ; CPU cmds < #$60
080d: 8d 0c     mov   y,#$0c
080f: 8f 40 47  mov   $47,#$40
0812: 76 e3 02  cmp   a,$02e3+y
0815: d0 0e     bne   $0825
0817: 68 06     cmp   a,#$06
0819: d0 1b     bne   $0836
081b: 2d        push  a
081c: 9c        dec   a
081d: 76 e1 02  cmp   a,$02e1+y
0820: ae        pop   a
0821: d0 13     bne   $0836
0823: 2f 1a     bra   $083f
0825: 76 e1 02  cmp   a,$02e1+y
0828: 90 0c     bcc   $0836
082a: 68 06     cmp   a,#$06
082c: d0 11     bne   $083f
082e: 2d        push  a
082f: 9c        dec   a
0830: 76 e3 02  cmp   a,$02e3+y
0833: ae        pop   a
0834: d0 09     bne   $083f
0836: fc        inc   y
0837: fc        inc   y
0838: 0b 47     asl   $47
083a: 76 e1 02  cmp   a,$02e1+y
083d: 90 6f     bcc   $08ae             ; ret
083f: 3f b1 08  call  $08b1
0842: f0 02     beq   $0846
0844: e4 47     mov   a,$47
0846: 6f        ret
0847: 68 80     cmp   a,#$80
0849: b0 22     bcs   $086d
084b: cd 02     mov   x,#$02            ; CPU cmds $60-$7E
084d: 8d 0c     mov   y,#$0c
084f: 76 e1 02  cmp   a,$02e1+y
0852: b0 11     bcs   $0865
0854: 68 65     cmp   a,#$65
0856: 90 56     bcc   $08ae             ; ret
0858: 68 7e     cmp   a,#$7e
085a: b0 52     bcs   $08ae             ; ret
085c: 2d        push  a
085d: f6 e1 02  mov   a,$02e1+y
0860: 68 7e     cmp   a,#$7e
0862: ae        pop   a
0863: b0 49     bcs   $08ae             ; ret
0865: 3f b1 08  call  $08b1
0868: f0 02     beq   $086c
086a: e8 c0     mov   a,#$c0
086c: 6f        ret
086d: 68 a0     cmp   a,#$a0
086f: b0 1d     bcs   $088e
0871: 68 87     cmp   a,#$87
0873: b0 39     bcs   $08ae             ; ret
0875: 8d 00     mov   y,#$00            ; CPU cmds $80-86
0877: 68 81     cmp   a,#$81
0879: d0 02     bne   $087d
087b: 8d 0c     mov   y,#$0c
087d: cb 4c     mov   $4c,y
087f: 8f 00 4b  mov   $4b,#$00
0882: cd 06     mov   x,#$06
0884: 8d 00     mov   y,#$00
0886: 3f b1 08  call  $08b1
0889: f0 02     beq   $088d
088b: e8 3f     mov   a,#$3f
088d: 6f        ret
088e: 68 a8     cmp   a,#$a8
0890: b0 1c     bcs   $08ae             ; ret
0892: 8d 00     mov   y,#$00            ; CPU cmds $A0-A7
0894: 68 a1     cmp   a,#$a1
0896: d0 02     bne   $089a
0898: 8d 0c     mov   y,#$0c
089a: cb 4c     mov   $4c,y
089c: 8f 00 4b  mov   $4b,#$00
089f: cd 08     mov   x,#$08
08a1: 8d 00     mov   y,#$00
08a3: 3f b1 08  call  $08b1
08a6: f0 02     beq   $08aa
08a8: e8 ff     mov   a,#$ff
08aa: 6f        ret
08ab: ce        pop   x
08ac: ee        pop   y
08ad: ae        pop   a
08ae: e8 00     mov   a,#$00
08b0: 6f        ret

08b1: 2d        push  a
08b2: 6d        push  y
08b3: 4d        push  x
08b4: 1c        asl   a
08b5: 90 35     bcc   $08ec
08b7: 5d        mov   x,a
08b8: f5 fc 11  mov   a,$11fc+x
08bb: f0 ee     beq   $08ab
08bd: fd        mov   y,a
08be: f5 fb 11  mov   a,$11fb+x
08c1: da 40     movw  $40,ya            ; song metaindex ptr
08c3: 3f 24 07  call  $0724
08c6: da 16     movw  $16,ya
08c8: ce        pop   x
08c9: ee        pop   y
08ca: ae        pop   a
08cb: d6 e1 02  mov   $02e1+y,a
08ce: 2d        push  a
08cf: 3f 1d 09  call  $091d
08d2: 3f 69 09  call  $0969
08d5: ae        pop   a
08d6: 1d        dec   x
08d7: d0 f2     bne   $08cb
08d9: e4 19     mov   a,$19
08db: f0 02     beq   $08df
08dd: e8 00     mov   a,#$00
08df: c4 5f     mov   $5f,a
08e1: e8 00     mov   a,#$00
08e3: c4 42     mov   $42,a
08e5: c4 0b     mov   $0b,a
08e7: c4 0d     mov   $0d,a
08e9: 5f 66 09  jmp   $0966

08ec: cb 15     mov   $15,y
08ee: 5d        mov   x,a
08ef: f5 fc 10  mov   a,$10fc+x
08f2: f0 b7     beq   $08ab
08f4: fd        mov   y,a
08f5: f5 fb 10  mov   a,$10fb+x
08f8: 80        setc
08f9: a4 15     sbc   a,$15
08fb: b0 01     bcs   $08fe
08fd: dc        dec   y
08fe: da 16     movw  $16,ya
0900: ce        pop   x
0901: ee        pop   y
0902: ae        pop   a
0903: d6 e1 02  mov   $02e1+y,a
0906: 2d        push  a
0907: 3f 1d 09  call  $091d
090a: f7 16     mov   a,($16)+y
090c: d6 30 00  mov   $0030+y,a
090f: fc        inc   y
0910: f7 16     mov   a,($16)+y
0912: d6 30 00  mov   $0030+y,a
0915: fc        inc   y
0916: ae        pop   a
0917: 1d        dec   x
0918: d0 e9     bne   $0903
091a: 5f 66 09  jmp   $0966

091d: e8 ff     mov   a,#$ff
091f: d6 01 03  mov   $0301+y,a
0922: d6 d0 00  mov   $00d0+y,a
0925: e8 0a     mov   a,#$0a
0927: d6 51 03  mov   $0351+y,a
092a: d6 31 03  mov   $0331+y,a
092d: e8 00     mov   a,#$00
092f: d6 30 03  mov   $0330+y,a
0932: d6 81 03  mov   $0381+y,a
0935: d6 f0 02  mov   $02f0+y,a
0938: d6 80 02  mov   $0280+y,a
093b: d6 b1 00  mov   $00b1+y,a
093e: d6 c1 00  mov   $00c1+y,a
0941: d6 81 00  mov   $0081+y,a
0944: d6 01 01  mov   $0101+y,a
0947: d6 50 02  mov   $0250+y,a
094a: d6 51 02  mov   $0251+y,a
094d: d6 71 02  mov   $0271+y,a
0950: d6 80 00  mov   $0080+y,a
0953: d6 90 00  mov   $0090+y,a
0956: d6 91 00  mov   $0091+y,a
0959: bc        inc   a
095a: d6 70 00  mov   $0070+y,a
095d: d6 01 02  mov   $0201+y,a
0960: e8 20     mov   a,#$20
0962: d6 d1 00  mov   $00d1+y,a
0965: 6f        ret

0966: e8 01     mov   a,#$01
0968: 6f        ret

0969: f7 16     mov   a,($16)+y
096b: 60        clrc
096c: 84 4b     adc   a,$4b
096e: d6 30 00  mov   $0030+y,a
0971: fc        inc   y
0972: f7 16     mov   a,($16)+y
0974: 84 4c     adc   a,$4c
0976: d6 30 00  mov   $0030+y,a
0979: fc        inc   y
097a: 6f        ret

097b: 3f 24 07  call  $0724
097e: d0 19     bne   $0999
0980: fd        mov   y,a
0981: d0 03     bne   $0986
0983: 5f 3c 07  jmp   $073c

0986: 8b 42     dec   $42
0988: 10 02     bpl   $098c
098a: c4 42     mov   $42,a
098c: 3f 24 07  call  $0724
098f: 2d        push  a
0990: e4 42     mov   a,$42
0992: ae        pop   a
0993: f0 e6     beq   $097b
0995: da 40     movw  $40,ya
0997: 2f e2     bra   $097b
0999: da 16     movw  $16,ya
099b: 8d 00     mov   y,#$00
099d: e8 00     mov   a,#$00
099f: d6 80 00  mov   $0080+y,a
09a2: d6 90 00  mov   $0090+y,a
09a5: d6 91 00  mov   $0091+y,a
09a8: bc        inc   a
09a9: d6 70 00  mov   $0070+y,a
09ac: 3f 69 09  call  $0969
09af: f5 e1 02  mov   a,$02e1+x
09b2: 68 a0     cmp   a,#$a0
09b4: b0 06     bcs   $09bc
09b6: ad 0c     cmp   y,#$0c
09b8: d0 e3     bne   $099d
09ba: 2f 04     bra   $09c0
09bc: ad 10     cmp   y,#$10
09be: d0 dd     bne   $099d
09c0: cd 00     mov   x,#$00
09c2: d8 5e     mov   $5e,x
09c4: 8f 01 47  mov   $47,#$01
;
09c7: 9b 70     dec   $70+x             ; voice dur ctr
09c9: f0 03     beq   $09ce
09cb: 5f 50 0a  jmp   $0a50
09ce: 3f 69 0a  call  $0a69
09d1: d0 21     bne   $09f4
09d3: f4 80     mov   a,$80+x           ; end repeat
09d5: d0 0a     bne   $09e1
09d7: f5 e1 02  mov   a,$02e1+x
09da: 68 80     cmp   a,#$80
09dc: b0 9d     bcs   $097b
09de: 5f 3c 07  jmp   $073c
09e1: 3f 79 0c  call  $0c79
09e4: 9b 80     dec   $80+x
09e6: d0 e6     bne   $09ce
09e8: f5 30 02  mov   a,$0230+x
09eb: d4 30     mov   $30+x,a
09ed: f5 31 02  mov   a,$0231+x
09f0: d4 31     mov   $31+x,a
09f2: 2f da     bra   $09ce
; vcmd branches
09f4: 30 24     bmi   $0a1a             ; vcmds 01-7f - note info:
09f6: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
09f9: 3f 69 0a  call  $0a69             ;   read next byte
09fc: 30 1c     bmi   $0a1a             ;   if note note then
09fe: 2d        push  a
09ff: 9f        xcn   a
0a00: 28 07     and   a,#$07
0a02: fd        mov   y,a
0a03: f6 e5 10  mov   a,$10e5+y
0a06: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0a09: ae        pop   a
0a0a: 28 0f     and   a,#$0f
0a0c: fd        mov   y,a
0a0d: f6 ed 10  mov   a,$10ed+y
0a10: 60        clrc
0a11: 95 01 01  adc   a,$0101+x
0a14: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
0a17: 3f 69 0a  call  $0a69             ;   read vcmd into A and Y
; vcmd branches 80-ff
0a1a: 68 e0     cmp   a,#$e0
0a1c: 90 05     bcc   $0a23
0a1e: 3f 57 0a  call  $0a57             ; vcmds e0-ff
0a21: 2f ab     bra   $09ce
; vcmds 80-df - note
0a23: 3f c8 05  call  $05c8             ; dispatch note byte
0a26: f5 01 02  mov   a,$0201+x
0a29: d0 0b     bne   $0a36
0a2b: e4 1f     mov   a,$1f
0a2d: 24 47     and   a,$47
0a2f: d0 0d     bne   $0a3e
0a31: 09 47 1f  or    ($1f),($47)
0a34: 2f 08     bra   $0a3e
0a36: e4 47     mov   a,$47
0a38: 48 ff     eor   a,#$ff
0a3a: 24 1f     and   a,$1f
0a3c: c4 1f     mov   $1f,a
0a3e: f5 00 02  mov   a,$0200+x
0a41: d4 70     mov   $70+x,a
0a43: fd        mov   y,a
0a44: f5 01 02  mov   a,$0201+x
0a47: f0 01     beq   $0a4a
0a49: bc        inc   a
0a4a: cf        mul   ya
0a4b: dd        mov   a,y
0a4c: d4 71     mov   $71+x,a
0a4e: 2f 03     bra   $0a53
0a50: 3f 6c 0e  call  $0e6c
0a53: 3f df 0c  call  $0cdf
0a56: 6f        ret

; dispatch vcmd ($e0-fe)
0a57: 1c        asl   a
0a58: fd        mov   y,a
0a59: f6 7d 0c  mov   a,$0c7d+y
0a5c: 2d        push  a
0a5d: f6 7c 0c  mov   a,$0c7c+y         ; vcmd addr (effectively D3C/D+Y)
0a60: 2d        push  a
0a61: dd        mov   a,y
0a62: 5c        lsr   a
0a63: fd        mov   y,a
0a64: f6 1a 0d  mov   a,$0d1a+y         ; vcmd len (effectively D7A+Y)
0a67: f0 08     beq   $0a71
; get next vbyte into A, Y
0a69: e7 30     mov   a,($30+x)
0a6b: bb 30     inc   $30+x
0a6d: d0 02     bne   $0a71
0a6f: bb 31     inc   $31+x
0a71: fd        mov   y,a
0a72: 6f        ret

; for $0390+x - per-instrument tuning (semitones)
0a73: db $fe,$00,$ff,$07,$0b,$ff,$0a,$fb,$fb,$fd,$fb,$09,$fd,$09,$fd,$e8,$f2,$f7,$03,$f4
; for $0391+x - per-instrument tuning (1/256 semitones)
0a87: db $f0,$0a,$1e,$0a,$5a,$64,$e8,$0a,$0a,$b4,$0a,$b2,$be,$ba,$ba,$00,$96,$e1,$e1,$dc

; vcmd e0 - instrument
0a9b: d5 11 02  mov   $0211+x,a
0a9e: fd        mov   y,a
0a9f: 30 15     bmi   $0ab6
; set sample
0aa1: 2d        push  a
0aa2: 4d        push  x
0aa3: 5d        mov   x,a
0aa4: f5 73 0a  mov   a,$0a73+x
0aa7: fd        mov   y,a
0aa8: f5 87 0a  mov   a,$0a87+x
0aab: ce        pop   x
0aac: d5 91 03  mov   $0391+x,a
0aaf: dd        mov   a,y
0ab0: d5 90 03  mov   $0390+x,a         ; save per-instrument tuning
0ab3: ae        pop   a
0ab4: 2f 10     bra   $0ac6
; set sample (percussion)
0ab6: 2d        push  a
0ab7: e8 00     mov   a,#$00
0ab9: d5 91 03  mov   $0391+x,a
0abc: d5 90 03  mov   $0390+x,a         ; nullify per-instrument tuning
0abf: ae        pop   a
0ac0: 80        setc
0ac1: a8 ca     sbc   a,#$ca            ; subtract percussion offset
0ac3: 60        clrc
0ac4: 88 14     adc   a,#$14            ; add percussion patch base
; load instrument table
0ac6: 8d 06     mov   y,#$06
0ac8: cf        mul   ya
0ac9: da 14     movw  $14,ya
0acb: 60        clrc
0acc: 98 4b 14  adc   $14,#$4b
0acf: 98 12 15  adc   $15,#$12
0ad2: 4d        push  x
0ad3: 7d        mov   a,x
0ad4: 9f        xcn   a
0ad5: 5c        lsr   a
0ad6: 08 04     or    a,#$04
0ad8: 5d        mov   x,a
0ad9: 8d 00     mov   y,#$00
0adb: f7 14     mov   a,($14)+y         ; offset +0: SRCN
0add: 10 0e     bpl   $0aed
; when SRCN >= 0x80:
0adf: 28 1f     and   a,#$1f
0ae1: 38 20 48  and   $48,#$20
0ae4: 0e 48 00  tset1 $0048
0ae7: 09 47 49  or    ($49),($47)
0aea: dd        mov   a,y
0aeb: 2f 07     bra   $0af4
; when SRCN < 0x80:
0aed: e4 47     mov   a,$47
0aef: 4e 49 00  tclr1 $0049
0af2: f7 14     mov   a,($14)+y         ; SRCN, ADSR(1), ADSR(2), GAIN
0af4: c9 f2 00  mov   $00f2,x
0af7: c5 f3 00  mov   $00f3,a
0afa: 3d        inc   x
0afb: fc        inc   y
0afc: ad 04     cmp   y,#$04
0afe: d0 f2     bne   $0af2
0b00: ce        pop   x
0b01: f7 14     mov   a,($14)+y
0b03: d5 21 02  mov   $0221+x,a
0b06: fc        inc   y
0b07: f7 14     mov   a,($14)+y
0b09: d5 20 02  mov   $0220+x,a         ; save traditional N-SPC tuning
0b0c: 6f        ret

; vcmd e1 - pan
0b0d: eb 19     mov   y,$19
0b0f: d0 23     bne   $0b34
0b11: 68 ff     cmp   a,#$ff
0b13: f0 04     beq   $0b19
0b15: 30 09     bmi   $0b20
0b17: 2f 0e     bra   $0b27
0b19: e4 47     mov   a,$47
0b1b: 0e 5f 00  tset1 $005f
0b1e: 2f 05     bra   $0b25
0b20: e4 47     mov   a,$47
0b22: 4e 5f 00  tclr1 $005f
0b25: e8 0a     mov   a,#$0a
0b27: d5 51 03  mov   $0351+x,a
0b2a: 28 1f     and   a,#$1f
0b2c: d5 31 03  mov   $0331+x,a
0b2f: e8 00     mov   a,#$00
0b31: d5 30 03  mov   $0330+x,a
0b34: 6f        ret

; vcmd e2 - pan fade
0b35: eb 19     mov   y,$19
0b37: f0 03     beq   $0b3c
0b39: 5f 69 0a  jmp   $0a69
0b3c: d4 91     mov   $91+x,a
0b3e: 2d        push  a
0b3f: 3f 69 0a  call  $0a69
0b42: d5 50 03  mov   $0350+x,a
0b45: 80        setc
0b46: b5 31 03  sbc   a,$0331+x
0b49: ce        pop   x
0b4a: 3f 20 0d  call  $0d20
0b4d: d5 40 03  mov   $0340+x,a
0b50: dd        mov   a,y
0b51: d5 41 03  mov   $0341+x,a
0b54: 6f        ret

; vcmd e3 - vibrato
0b55: d5 b0 02  mov   $02b0+x,a
0b58: 3f 69 0a  call  $0a69
0b5b: d5 a1 02  mov   $02a1+x,a
0b5e: 3f 69 0a  call  $0a69
0b61: d4 b1     mov   $b1+x,a
0b63: d5 c1 02  mov   $02c1+x,a
0b66: e8 00     mov   a,#$00
0b68: d5 b1 02  mov   $02b1+x,a
0b6b: 6f        ret

; vcmd f0 - vibrato fade
0b6c: d5 b1 02  mov   $02b1+x,a
0b6f: 2d        push  a
0b70: 8d 00     mov   y,#$00
0b72: f4 b1     mov   a,$b1+x
0b74: ce        pop   x
0b75: 9e        div   ya,x
0b76: f8 44     mov   x,$44
0b78: d5 c0 02  mov   $02c0+x,a
0b7b: 6f        ret

; vcmd e4 - strange pitch envelope
0b7c: d5 70 02  mov   $0270+x,a         ; pitch envelope speed
0b7f: 3f 69 0a  call  $0a69
0b82: d5 71 02  mov   $0271+x,a         ; pitch envelope depth
0b85: e8 00     mov   a,#$00
0b87: d4 20     mov   $20+x,a
0b89: d4 21     mov   $21+x,a
0b8b: 6f        ret

; vcmd e5 - repeat start
0b8c: f4 30     mov   a,$30+x
0b8e: d5 60 02  mov   $0260+x,a
0b91: f4 31     mov   a,$31+x
0b93: d5 61 02  mov   $0261+x,a         ; save the repeat start address
0b96: e8 00     mov   a,#$00
0b98: d4 81     mov   $81+x,a           ; zero repeat counter
0b9a: 6f        ret

; vcmd e6 - repeat end
0b9b: bb 81     inc   $81+x             ; increment repeat counter
0b9d: 74 81     cmp   a,$81+x
0b9f: f0 39     beq   $0bda             ; test if arg1 == repeat counter
; repeat continue
0ba1: 3f 69 0a  call  $0a69             ; arg2 - per-note volume increment amount (decrement, if negative)
0ba4: 60        clrc
0ba5: 95 01 01  adc   a,$0101+x
0ba8: d5 01 01  mov   $0101+x,a
0bab: 3f 69 0a  call  $0a69             ; arg3 - tuning increment amount (decrement, if negative. $10 = semitone)
0bae: 8d 00     mov   y,#$00
0bb0: 1c        asl   a
0bb1: 90 01     bcc   $0bb4
0bb3: dc        dec   y
0bb4: cb 1e     mov   $1e,y
0bb6: 1c        asl   a
0bb7: 2b 1e     rol   $1e
0bb9: 1c        asl   a
0bba: 2b 1e     rol   $1e
0bbc: 1c        asl   a
0bbd: 2b 1e     rol   $1e
0bbf: eb 1e     mov   y,$1e             ; y/a = (signed int) arg3 * 16;
0bc1: 60        clrc
0bc2: 95 50 02  adc   a,$0250+x
0bc5: d5 50 02  mov   $0250+x,a
0bc8: dd        mov   a,y
0bc9: 95 51 02  adc   a,$0251+x
0bcc: d5 51 02  mov   $0251+x,a
0bcf: f5 60 02  mov   a,$0260+x
0bd2: d4 30     mov   $30+x,a
0bd4: f5 61 02  mov   a,$0261+x
0bd7: d4 31     mov   $31+x,a
0bd9: 6f        ret
; repeat end
0bda: e8 00     mov   a,#$00
0bdc: d4 81     mov   $81+x,a
0bde: d5 01 01  mov   $0101+x,a
0be1: d5 50 02  mov   $0250+x,a
0be4: d5 51 02  mov   $0251+x,a
0be7: 3f 6b 0a  call  $0a6b
0bea: 5f 6b 0a  jmp   $0a6b             ; skip next 2 bytes

; vcmd e7 - tempo
0bed: 1c        asl   a
0bee: d5 d1 00  mov   $00d1+x,a
; vcmd e8
0bf1: 6f        ret

; vcmd e9
0bf2: 6f        ret

; vcmd ea - voice transpose
0bf3: d5 f0 02  mov   $02f0+x,a
0bf6: 6f        ret

; vcmd eb - tremolo on
0bf7: d5 e0 02  mov   $02e0+x,a
0bfa: 3f 69 0a  call  $0a69
0bfd: d5 d1 02  mov   $02d1+x,a
0c00: 3f 69 0a  call  $0a69
; vcmd ec - tremolo off
0c03: d4 c1     mov   $c1+x,a
0c05: 6f        ret

; vcmd f1 - pitch envelope (release)
0c06: e8 01     mov   a,#$01
0c08: 2f 02     bra   $0c0c
; vcmd f2 - pitch envelope (attack)
0c0a: e8 00     mov   a,#$00
0c0c: d5 90 02  mov   $0290+x,a
0c0f: dd        mov   a,y
0c10: d5 81 02  mov   $0281+x,a
0c13: 3f 69 0a  call  $0a69
0c16: d5 80 02  mov   $0280+x,a
0c19: 3f 69 0a  call  $0a69
0c1c: d5 91 02  mov   $0291+x,a
0c1f: 6f        ret

; vcmd f3 - pitch envelope off
0c20: d5 80 02  mov   $0280+x,a
0c23: 6f        ret

; vcmd ed - voice volume
0c24: d5 01 03  mov   $0301+x,a
0c27: e8 00     mov   a,#$00
0c29: d5 00 03  mov   $0300+x,a
0c2c: 6f        ret

; vcmd ee - voice volume fade
0c2d: d4 90     mov   $90+x,a
0c2f: 2d        push  a
0c30: 3f 69 0a  call  $0a69
0c33: d5 20 03  mov   $0320+x,a
0c36: 80        setc
0c37: b5 01 03  sbc   a,$0301+x
0c3a: ce        pop   x
0c3b: 3f 20 0d  call  $0d20
0c3e: d5 10 03  mov   $0310+x,a
0c41: dd        mov   a,y
0c42: d5 11 03  mov   $0311+x,a
0c45: 6f        ret

; vcmd f4 - tuning
0c46: d5 81 03  mov   $0381+x,a
0c49: 6f        ret

; vcmd ef - call subroutine (n times)
0c4a: d5 40 02  mov   $0240+x,a
0c4d: 3f 69 0a  call  $0a69
0c50: d5 41 02  mov   $0241+x,a         ; arg1/2 - destination address
0c53: f5 e1 02  mov   a,$02e1+x
0c56: 68 80     cmp   a,#$80
0c58: 90 10     bcc   $0c6a
;
0c5a: f5 41 02  mov   a,$0241+x
0c5d: fd        mov   y,a
0c5e: f5 40 02  mov   a,$0240+x
0c61: 7a 4b     addw  ya,$4b            ; add address base
0c63: d5 40 02  mov   $0240+x,a
0c66: dd        mov   a,y
0c67: d5 41 02  mov   $0241+x,a
;
0c6a: 3f 69 0a  call  $0a69
0c6d: d4 80     mov   $80+x,a           ; arg3 - repeat count
0c6f: f4 30     mov   a,$30+x
0c71: d5 30 02  mov   $0230+x,a
0c74: f4 31     mov   a,$31+x
0c76: d5 31 02  mov   $0231+x,a         ; save the return address
; jump to $0240/1
0c79: f5 40 02  mov   a,$0240+x
0c7c: d4 30     mov   $30+x,a
0c7e: f5 41 02  mov   a,$0241+x
0c81: d4 31     mov   $31+x,a           ; jump to the destination address
0c83: 6f        ret

; vcmd f5-f8 - disable echo write
0c84: a2 48     set5  $48               ; disable echo write (FLG shadow)
0c86: 6f        ret

; vcmd fa
0c87: 6f        ret

; vcmd fb - set envelope (ADSR/GAIN) parameters
0c88: 8d 00     mov   y,#$00
0c8a: 68 a0     cmp   a,#$a0
0c8c: b0 10     bcs   $0c9e
0c8e: 4d        push  x
0c8f: cd 0a     mov   x,#$0a
0c91: 9e        div   ya,x
0c92: c4 1e     mov   $1e,a
0c94: dd        mov   a,y
0c95: 28 07     and   a,#$07
0c97: 9f        xcn   a
0c98: 04 1e     or    a,$1e
0c9a: 08 80     or    a,#$80
0c9c: fd        mov   y,a
0c9d: ce        pop   x
0c9e: 4d        push  x
0c9f: 7d        mov   a,x
0ca0: 9f        xcn   a
0ca1: 5c        lsr   a
0ca2: 08 05     or    a,#$05            ; voice ADSR(1) DSP reg
0ca4: 5d        mov   x,a
0ca5: dd        mov   a,y
0ca6: c9 f2 00  mov   $00f2,x
0ca9: c5 f3 00  mov   $00f3,a
0cac: 4d        push  x
0cad: ee        pop   y
0cae: ce        pop   x
0caf: fc        inc   y
0cb0: 3f d5 0c  call  $0cd5
0cb3: cc f2 00  mov   $00f2,y           ; voice ADSR(2) DSP reg
0cb6: 4d        push  x
0cb7: 6d        push  y
0cb8: 8d 00     mov   y,#$00
0cba: cd 1e     mov   x,#$1e
0cbc: 9e        div   ya,x
0cbd: fc        inc   y
0cbe: fc        inc   y
0cbf: cb 1e     mov   $1e,y
0cc1: 9f        xcn   a
0cc2: 1c        asl   a
0cc3: 04 1e     or    a,$1e
0cc5: ee        pop   y
0cc6: ce        pop   x
0cc7: c5 f3 00  mov   $00f3,a
0cca: fc        inc   y
0ccb: 3f d5 0c  call  $0cd5
0cce: cc f2 00  mov   $00f2,y           ; voice GAIN DSP reg
0cd1: c5 f3 00  mov   $00f3,a
0cd4: 6f        ret

; get next vbyte into A; don't touch Y
0cd5: e7 30     mov   a,($30+x)
0cd7: bb 30     inc   $30+x
0cd9: d0 02     bne   $0cdd
0cdb: bb 31     inc   $31+x
0cdd: 6f        ret

; vcmd fc-fe
0cde: 6f        ret

0cdf: f4 a0     mov   a,$a0+x
0ce1: d0 31     bne   $0d14
0ce3: e7 30     mov   a,($30+x)
0ce5: 68 f9     cmp   a,#$f9
0ce7: d0 2b     bne   $0d14
0ce9: 3f 6b 0a  call  $0a6b
0cec: 3f 69 0a  call  $0a69
; vcmd f9 - pitch slide
0cef: d4 a1     mov   $a1+x,a
0cf1: 3f 69 0a  call  $0a69
0cf4: d4 a0     mov   $a0+x,a
0cf6: 3f 69 0a  call  $0a69
0cf9: 60        clrc
0cfa: 95 f0 02  adc   a,$02f0+x
; calc portamento delta?
0cfd: 28 7f     and   a,#$7f
0cff: d5 80 03  mov   $0380+x,a
0d02: 80        setc
0d03: b5 61 03  sbc   a,$0361+x
0d06: fb a0     mov   y,$a0+x
0d08: 6d        push  y
0d09: ce        pop   x
0d0a: 3f 20 0d  call  $0d20
0d0d: d5 70 03  mov   $0370+x,a
0d10: dd        mov   a,y
0d11: d5 71 03  mov   $0371+x,a
0d14: 6f        ret

; load note number $0360/1+X into $10/1
0d15: f5 61 03  mov   a,$0361+x
0d18: c4 11     mov   $11,a
0d1a: f5 60 03  mov   a,$0360+x
0d1d: c4 10     mov   $10,a
0d1f: 6f        ret

; correct for negative difference
0d20: ed        notc
0d21: 6b 12     ror   $12
0d23: 10 03     bpl   $0d28
0d25: 48 ff     eor   a,#$ff
0d27: bc        inc   a
0d28: 8d 00     mov   y,#$00
0d2a: 9e        div   ya,x
0d2b: 2d        push  a
0d2c: e8 00     mov   a,#$00
0d2e: 9e        div   ya,x
0d2f: ee        pop   y
0d30: f8 44     mov   x,$44
0d32: f3 12 06  bbc7  $12,$0d3b
0d35: da 14     movw  $14,ya
0d37: ba 0e     movw  ya,$0e
0d39: 9a 14     subw  ya,$14
0d3b: 6f        ret

; vcmd dispatch table ($0a57)
0d3c: dw $0a9b  ; e0 - instrument
0d3e: dw $0b0d  ; e1 - pan
0d40: dw $0b35  ; e2 - pan fade
0d42: dw $0b55  ; e3 - vibrato
0d44: dw $0b7c  ; e4 - strange pitch envelope
0d46: dw $0b8c  ; e5 - repeat start
0d48: dw $0b9b  ; e6 - repeat end
0d4a: dw $0bed  ; e7 - tempo
0d4c: dw $0bf1  ; e8 - nop
0d4e: dw $0bf2  ; e9 - nop
0d50: dw $0bf3  ; ea - voice transpose
0d52: dw $0bf7  ; eb - tremolo
0d54: dw $0c03  ; ec - tremolo off
0d56: dw $0c24  ; ed - voice volume
0d58: dw $0c2d  ; ee - voice volume fade
0d5a: dw $0c4a  ; ef - call subroutine (n times)
0d5c: dw $0b6c  ; f0 - vibrato fade
0d5e: dw $0c06  ; f1 - pitch envelope (release)
0d60: dw $0c0a  ; f2 - pitch envelope (attack)
0d62: dw $0c20  ; f3 - pitch envelope off
0d64: dw $0c46  ; f4 - tuning
0d66: dw $0c84  ; f5 - disable echo write
0d68: dw $0c84  ; f6 - disable echo write
0d6a: dw $0c84  ; f7 - disable echo write
0d6c: dw $0c84  ; f8 - disable echo write
0d6e: dw $0cef  ; f9 - pitch slide
0d70: dw $0c87  ; fa - set perc base (NYI)
0d72: dw $0c88  ; fb - set envelope (ADSR/GAIN)
0d74: dw $0cde  ; fc - nop
0d76: dw $0cde  ; fd - nop
0d78: dw $0cde  ; fe - nop

; vcmd length table
0d7a: db $01,$01,$02,$03,$02,$00,$03,$01
0d82: db $02,$01,$01,$03,$00,$01,$02,$03
0d8a: db $01,$03,$03,$00,$01,$03,$00,$03
0d92: db $03,$03,$01,$03,$00,$00,$00

; voice volume fade
0d99: f4 90     mov   a,$90+x
0d9b: f0 09     beq   $0da6
0d9d: e8 00     mov   a,#$00
0d9f: 8d 03     mov   y,#$03
0da1: 9b 90     dec   $90+x
0da3: 3f 48 0e  call  $0e48
0da6: fb c1     mov   y,$c1+x
0da8: f0 23     beq   $0dcd
0daa: f5 e0 02  mov   a,$02e0+x
0dad: de c0 1b  cbne  $c0+x,$0dcb
0db0: 09 47 5e  or    ($5e),($47)
0db3: f5 d0 02  mov   a,$02d0+x
0db6: 10 07     bpl   $0dbf
0db8: fc        inc   y
0db9: d0 04     bne   $0dbf
0dbb: e8 80     mov   a,#$80
0dbd: 2f 04     bra   $0dc3
0dbf: 60        clrc
0dc0: 95 d1 02  adc   a,$02d1+x
0dc3: d5 d0 02  mov   $02d0+x,a
0dc6: 3f 8f 10  call  $108f
0dc9: 2f 07     bra   $0dd2
0dcb: bb c0     inc   $c0+x
0dcd: e8 ff     mov   a,#$ff
0dcf: 3f 9a 10  call  $109a
0dd2: f4 91     mov   a,$91+x
0dd4: f0 09     beq   $0ddf
0dd6: e8 30     mov   a,#$30
0dd8: 8d 03     mov   y,#$03
0dda: 9b 91     dec   $91+x
0ddc: 3f 48 0e  call  $0e48
0ddf: e4 47     mov   a,$47
0de1: 24 5e     and   a,$5e
0de3: f0 62     beq   $0e47
0de5: f5 31 03  mov   a,$0331+x
0de8: fd        mov   y,a
0de9: f5 30 03  mov   a,$0330+x
0dec: da 10     movw  $10,ya
; set voice volume DSP from $10/1
0dee: 7d        mov   a,x
0def: 9f        xcn   a
0df0: 5c        lsr   a
0df1: c4 12     mov   $12,a             ; $12 = DSP reg voice volume L
0df3: eb 11     mov   y,$11
0df5: f6 ab 10  mov   a,$10ab+y
0df8: 80        setc
0df9: b6 aa 10  sbc   a,$10aa+y
0dfc: eb 10     mov   y,$10
0dfe: cf        mul   ya
0dff: dd        mov   a,y
0e00: eb 11     mov   y,$11
0e02: 60        clrc
0e03: 96 aa 10  adc   a,$10aa+y
0e06: fd        mov   y,a
0e07: f5 21 03  mov   a,$0321+x
0e0a: cf        mul   ya
0e0b: f5 51 03  mov   a,$0351+x
0e0e: 1c        asl   a
0e0f: 13 12 01  bbc0  $12,$0e13
0e12: 1c        asl   a
0e13: dd        mov   a,y
0e14: 90 03     bcc   $0e19
0e16: 48 ff     eor   a,#$ff
0e18: bc        inc   a
0e19: fd        mov   y,a
0e1a: f5 e1 02  mov   a,$02e1+x
0e1d: 10 15     bpl   $0e34
0e1f: dd        mov   a,y
0e20: 80        setc
0e21: b5 f1 02  sbc   a,$02f1+x
0e24: 90 0c     bcc   $0e32
0e26: 2d        push  a
0e27: eb 0d     mov   y,$0d
0e29: cf        mul   ya
0e2a: cb 1e     mov   $1e,y
0e2c: ae        pop   a
0e2d: 80        setc
0e2e: a4 1e     sbc   a,$1e
0e30: b0 03     bcs   $0e35
0e32: 8d 00     mov   y,#$00
0e34: dd        mov   a,y
0e35: eb 12     mov   y,$12
0e37: 3f 1d 07  call  $071d             ; set volume DSP reg
0e3a: 8d 14     mov   y,#$14
0e3c: e8 00     mov   a,#$00
0e3e: 9a 10     subw  ya,$10
0e40: da 10     movw  $10,ya
0e42: ab 12     inc   $12               ; do volume R
0e44: 33 12 ac  bbc1  $12,$0df3
0e47: 6f        ret

; add delta in [YA+10]
0e48: 09 47 5e  or    ($5e),($47)
0e4b: da 14     movw  $14,ya
0e4d: da 16     movw  $16,ya
0e4f: 4d        push  x
0e50: ee        pop   y
0e51: 60        clrc
0e52: d0 0a     bne   $0e5e
0e54: 98 1f 16  adc   $16,#$1f
0e57: e8 00     mov   a,#$00
0e59: d7 14     mov   ($14)+y,a
0e5b: fc        inc   y
0e5c: 2f 09     bra   $0e67
0e5e: 98 10 16  adc   $16,#$10
0e61: 3f 65 0e  call  $0e65
0e64: fc        inc   y
0e65: f7 14     mov   a,($14)+y
0e67: 97 16     adc   a,($16)+y
0e69: d7 14     mov   ($14)+y,a
0e6b: 6f        ret

; voice lookahead?
0e6c: f4 71     mov   a,$71+x
0e6e: f0 6c     beq   $0edc
0e70: 9b 71     dec   $71+x
0e72: f0 05     beq   $0e79
0e74: e8 02     mov   a,#$02
0e76: de 70 63  cbne  $70+x,$0edc
0e79: f4 80     mov   a,$80+x
0e7b: c4 17     mov   $17,a
0e7d: f4 30     mov   a,$30+x
0e7f: fb 31     mov   y,$31+x
0e81: da 14     movw  $14,ya
0e83: 8d 00     mov   y,#$00
0e85: f7 14     mov   a,($14)+y
0e87: f0 1c     beq   $0ea5
0e89: 30 05     bmi   $0e90
0e8b: fc        inc   y
0e8c: f7 14     mov   a,($14)+y
0e8e: 10 fb     bpl   $0e8b
0e90: 68 c8     cmp   a,#$c8            ; tie
0e92: f0 48     beq   $0edc
0e94: 68 ef     cmp   a,#$ef            ; goto
0e96: f0 2d     beq   $0ec5
0e98: 68 e0     cmp   a,#$e0
0e9a: 90 36     bcc   $0ed2
0e9c: 6d        push  y
0e9d: fd        mov   y,a
0e9e: ae        pop   a
0e9f: 96 9a 0c  adc   a,$0c9a+y
0ea2: fd        mov   y,a
0ea3: 2f e0     bra   $0e85
0ea5: e4 17     mov   a,$17
0ea7: f0 29     beq   $0ed2
0ea9: 8b 17     dec   $17
0eab: d0 0e     bne   $0ebb
0ead: c8 0c     cmp   x,#$0c
0eaf: b0 21     bcs   $0ed2
0eb1: f5 31 02  mov   a,$0231+x
0eb4: 2d        push  a
0eb5: f5 30 02  mov   a,$0230+x
0eb8: ee        pop   y
0eb9: 2f c6     bra   $0e81
0ebb: f5 41 02  mov   a,$0241+x
0ebe: 2d        push  a
0ebf: f5 40 02  mov   a,$0240+x
0ec2: ee        pop   y
0ec3: 2f bc     bra   $0e81
0ec5: fc        inc   y
0ec6: f7 14     mov   a,($14)+y
0ec8: 2d        push  a
0ec9: fc        inc   y
0eca: f7 14     mov   a,($14)+y
0ecc: fd        mov   y,a
0ecd: ae        pop   a
0ece: 7a 4b     addw  ya,$4b
0ed0: 2f af     bra   $0e81
0ed2: e4 47     mov   a,$47
0ed4: 4e 1d 00  tclr1 $001d
0ed7: 8d 5c     mov   y,#$5c
0ed9: 3f 1d 07  call  $071d             ; key off voice NOW
0edc: f2 13     clr7  $13
0ede: f4 a0     mov   a,$a0+x           ; add portamento delta
0ee0: f0 13     beq   $0ef5
0ee2: f4 a1     mov   a,$a1+x
0ee4: f0 04     beq   $0eea
0ee6: 9b a1     dec   $a1+x
0ee8: 2f 0b     bra   $0ef5
0eea: e2 13     set7  $13
0eec: e8 60     mov   a,#$60
0eee: 8d 03     mov   y,#$03
0ef0: 9b a0     dec   $a0+x
0ef2: 3f 4b 0e  call  $0e4b
0ef5: 3f 15 0d  call  $0d15             ; $10/1 = $360/1+X
0ef8: f4 b1     mov   a,$b1+x
0efa: f0 78     beq   $0f74
0efc: f5 b0 02  mov   a,$02b0+x
0eff: de b0 70  cbne  $b0+x,$0f72
0f02: f5 00 01  mov   a,$0100+x
0f05: 75 b1 02  cmp   a,$02b1+x
0f08: d0 05     bne   $0f0f
0f0a: f5 c1 02  mov   a,$02c1+x
0f0d: 2f 0d     bra   $0f1c
0f0f: 40        setp
0f10: bb 00     inc   $00+x
0f12: 20        clrp
0f13: fd        mov   y,a
0f14: f0 02     beq   $0f18
0f16: f4 b1     mov   a,$b1+x
0f18: 60        clrc
0f19: 95 c0 02  adc   a,$02c0+x
0f1c: d4 b1     mov   $b1+x,a
0f1e: f5 a0 02  mov   a,$02a0+x
0f21: 60        clrc
0f22: 95 a1 02  adc   a,$02a1+x
0f25: d5 a0 02  mov   $02a0+x,a
;?
0f28: c4 12     mov   $12,a
0f2a: 1c        asl   a
0f2b: 1c        asl   a
0f2c: 90 02     bcc   $0f30
0f2e: 48 ff     eor   a,#$ff
0f30: fd        mov   y,a
0f31: f4 b1     mov   a,$b1+x
0f33: 68 f1     cmp   a,#$f1
0f35: 90 05     bcc   $0f3c
0f37: 28 0f     and   a,#$0f
0f39: cf        mul   ya
0f3a: 2f 04     bra   $0f40
0f3c: cf        mul   ya
0f3d: dd        mov   a,y
0f3e: 8d 00     mov   y,#$00
0f40: 3f 7a 10  call  $107a
0f43: f5 71 02  mov   a,$0271+x
0f46: f0 27     beq   $0f6f
0f48: bb 20     inc   $20+x
0f4a: f4 20     mov   a,$20+x
0f4c: 75 70 02  cmp   a,$0270+x
0f4f: d0 1e     bne   $0f6f
0f51: e8 00     mov   a,#$00
0f53: d4 20     mov   $20+x,a
0f55: f4 21     mov   a,$21+x
0f57: 28 7f     and   a,#$7f
0f59: 4d        push  x
0f5a: 5d        mov   x,a
0f5b: f5 86 0f  mov   a,$0f86+x
0f5e: c4 12     mov   $12,a
0f60: fd        mov   y,a
0f61: ce        pop   x
0f62: bb 21     inc   $21+x
0f64: f5 71 02  mov   a,$0271+x
0f67: 10 02     bpl   $0f6b
0f69: 48 ff     eor   a,#$ff
0f6b: cf        mul   ya
0f6c: 3f 7a 10  call  $107a
0f6f: 5f b3 06  jmp   $06b3

0f72: bb b0     inc   $b0+x
0f74: e3 13 cc  bbs7  $13,$0f43
0f77: f5 71 02  mov   a,$0271+x
0f7a: f0 09     beq   $0f85
0f7c: bb 20     inc   $20+x
0f7e: f4 20     mov   a,$20+x
0f80: 75 70 02  cmp   a,$0270+x
0f83: f0 cc     beq   $0f51
0f85: 6f        ret
; pitch envelope table for vcmd e4 (-9~9)
0f86: db $fe,$04,$fd,$fc,$fe,$01,$fb,$ff,$fa,$02,$01,$01,$fd,$01,$07,$02
0f96: db $07,$02,$04,$02,$08,$07,$02,$fd,$00,$04,$01,$05,$06,$07,$03,$00
0fa6: db $fb,$03,$02,$02,$fe,$02,$08,$03,$01,$07,$00,$ff,$01,$04,$fe,$02
0fb6: db $07,$03,$04,$02,$08,$07,$03,$fe,$01,$05,$02,$06,$07,$08,$03,$00
0fc6: db $fb,$03,$02,$03,$fe,$02,$08,$03,$08,$04,$05,$03,$09,$05,$01,$fc
0fd6: db $fa,$00,$f9,$f8,$fa,$fd,$f7,$fb,$fe,$02,$ff,$03,$04,$05,$fe,$00
0fe6: db $fb,$03,$02,$02,$fe,$01,$03,$ff,$04,$ff,$01,$ff,$05,$04,$00,$fb
0ff6: db $fe,$02,$ff,$03,$04,$05,$00,$fd,$fb,$01,$fa,$f9,$fb,$fe,$fa,$00

1006: f2 13     clr7  $13
1008: f4 c1     mov   a,$c1+x
100a: f0 09     beq   $1015
100c: f5 e0 02  mov   a,$02e0+x
100f: de c0 03  cbne  $c0+x,$1015
1012: 3f 82 10  call  $1082
1015: f5 31 03  mov   a,$0331+x
1018: fd        mov   y,a
1019: f5 30 03  mov   a,$0330+x
101c: da 10     movw  $10,ya
101e: f4 91     mov   a,$91+x
1020: f0 0a     beq   $102c
1022: f5 41 03  mov   a,$0341+x
1025: fd        mov   y,a
1026: f5 40 03  mov   a,$0340+x
1029: 3f 64 10  call  $1064
102c: f3 13 03  bbc7  $13,$1032
102f: 3f ee 0d  call  $0dee             ; set voice DSP vol from $10/11?
1032: f2 13     clr7  $13
1034: 3f 15 0d  call  $0d15
1037: f4 a0     mov   a,$a0+x
1039: f0 0e     beq   $1049
103b: f4 a1     mov   a,$a1+x
103d: d0 0a     bne   $1049
103f: f5 71 03  mov   a,$0371+x
1042: fd        mov   y,a
1043: f5 70 03  mov   a,$0370+x
1046: 3f 64 10  call  $1064
1049: f4 b1     mov   a,$b1+x
104b: d0 03     bne   $1050
104d: 5f 74 0f  jmp   $0f74

1050: f5 b0 02  mov   a,$02b0+x
1053: de b0 f7  cbne  $b0+x,$104d
1056: fb d0     mov   y,$d0+x
1058: f5 a1 02  mov   a,$02a1+x
105b: cf        mul   ya
105c: dd        mov   a,y
105d: 60        clrc
105e: 95 a0 02  adc   a,$02a0+x
1061: 5f 28 0f  jmp   $0f28

1064: e2 13     set7  $13
1066: cb 12     mov   $12,y
1068: 3f 32 0d  call  $0d32
106b: 6d        push  y
106c: fb d0     mov   y,$d0+x
106e: cf        mul   ya
106f: cb 14     mov   $14,y
1071: 8f 00 15  mov   $15,#$00
1074: fb d0     mov   y,$d0+x
1076: ae        pop   a
1077: cf        mul   ya
1078: 7a 14     addw  ya,$14
107a: 3f 32 0d  call  $0d32
107d: 7a 10     addw  ya,$10
107f: da 10     movw  $10,ya
1081: 6f        ret

1082: e2 13     set7  $13
1084: fb d0     mov   y,$d0+x
1086: f5 d1 02  mov   a,$02d1+x
1089: cf        mul   ya
108a: dd        mov   a,y
108b: 60        clrc
108c: 95 d0 02  adc   a,$02d0+x
108f: 1c        asl   a
1090: 90 02     bcc   $1094
1092: 48 ff     eor   a,#$ff
1094: fb c1     mov   y,$c1+x
1096: cf        mul   ya
1097: dd        mov   a,y
1098: 48 ff     eor   a,#$ff
109a: fd        mov   y,a
109b: f5 10 02  mov   a,$0210+x
109e: cf        mul   ya
109f: f5 01 03  mov   a,$0301+x
10a2: cf        mul   ya
10a3: dd        mov   a,y
10a4: cf        mul   ya
10a5: dd        mov   a,y
10a6: d5 21 03  mov   $0321+x,a
10a9: 6f        ret

; log volume table?
10aa: db $00,$01,$03,$07,$0d,$15,$1e,$29
10b2: db $34,$42,$51,$5e,$67,$6e,$73,$77
10ba: db $7a,$7c,$7d,$7e,$7f
; shadow reg map
10bf: db $6c,$4c,$5c,$3d,$2d,$5c
10c5: db $48,$45,$0e,$49,$4a,$46
;    || || || || || \\ 46 = 5c key off
;    || || || || \\=== 4a = 2d pitchmod vbits
;    || || || \\====== 49 = 3d noise vbits
;    || || \\========= 0e = 5c key off
;    || \\============ 45 = 4c key on
;    \\=============== 48 = 6c FLG
;
; pitch table
10cb: dw $085f
10cd: dw $08de
10cf: dw $0965
10d1: dw $09f4
10d3: dw $0a8c
10d5: dw $0b2c
10d7: dw $0bd6
10d9: dw $0c8b
10db: dw $0d4a
10dd: dw $0e14
10df: dw $0eea
10e1: dw $0fcd
10e3: dw $10be

; (0a03) for 0201+X (dur%)
10e5: db $00,$e6,$f0,$f5,$fa,$fc,$fe,$ff
; (0a0d) for 0210+X
10ed: db $19,$32,$4c,$65,$72,$7f,$8c,$98
10f5: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
