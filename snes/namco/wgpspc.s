0550: 20        clrp
0551: 8f 30 f1  mov   $f1,#$30
0554: 8f 86 fa  mov   $fa,#$86          ; timer 0 = 1.675 ms
0557: 8f 01 f1  mov   $f1,#$01
055a: e8 00     mov   a,#$00
055c: 5d        mov   x,a
055d: af        mov   (x)+,a
055e: c8 f0     cmp   x,#$f0
0560: d0 fb     bne   $055d
0562: cd cf     mov   x,#$cf
0564: bd        mov   sp,x
0565: e8 ff     mov   a,#$ff
0567: 8d 5c     mov   y,#$5c
0569: 3f f7 09  call  $09f7             ; set KOF
056c: cd 00     mov   x,#$00
056e: f5 d3 09  mov   a,$09d3+x
0571: fd        mov   y,a
0572: 3d        inc   x
0573: f5 d3 09  mov   a,$09d3+x
0576: 3f f7 09  call  $09f7             ; reset DSP
0579: 3d        inc   x
057a: c8 18     cmp   x,#$18
057c: d0 f0     bne   $056e
057e: 8f 02 e0  mov   $e0,#$02
0581: 3f fc 06  call  $06fc
0584: e4 f4     mov   a,$f4
0586: 64 f4     cmp   a,$f4
0588: d0 fa     bne   $0584
058a: 64 48     cmp   a,$48
058c: d0 0f     bne   $059d
058e: e5 fd 00  mov   a,$00fd
0591: f0 f1     beq   $0584
0593: e4 db     mov   a,$db
0595: 8d 4c     mov   y,#$4c
0597: 3f f7 09  call  $09f7             ; set KON
059a: 5f 03 07  jmp   $0703

059d: 8f 01 f4  mov   $f4,#$01
05a0: c4 f5     mov   $f5,a
05a2: c4 48     mov   $48,a
05a4: 1c        asl   a
05a5: 68 14     cmp   a,#$14
05a7: b0 d8     bcs   $0581
05a9: 5d        mov   x,a
05aa: 1f ad 05  jmp   ($05ad+x)

05ad: dw $0581
05af: dw $0623
05b1: dw $0667
05b3: dw $0581
05b5: dw $0604
05b7: dw $060d
05b9: dw $061a
05bb: dw $0614
05bd: dw $067d
05bf: dw $05ed
05c1: dw $05c3

05c3: 8d 00     mov   y,#$00
05c5: f7 f6     mov   a,($f6)+y
05c7: c4 f7     mov   $f7,a
05c9: 5f 81 05  jmp   $0581

; get song list and item index
05cc: 68 60     cmp   a,#$60
05ce: b0 0a     bcs   $05da
05d0: cd 18     mov   x,#$18
05d2: d8 3c     mov   $3c,x
05d4: cd dc     mov   x,#$dc
05d6: d8 3d     mov   $3d,x             ; $dc18 - song list
05d8: 2f 0a     bra   $05e4
05da: cd 00     mov   x,#$00
05dc: d8 3c     mov   $3c,x
05de: cd f4     mov   x,#$f4
05e0: d8 3d     mov   $3d,x             ; $f400 - song list (sfx?)
05e2: 28 1f     and   a,#$1f
05e4: 8d 03     mov   y,#$03
05e6: cf        mul   ya
05e7: fd        mov   y,a
05e8: f7 3c     mov   a,($3c)+y         ; read slot index (priority?)
05ea: 1c        asl   a
05eb: 5d        mov   x,a
05ec: 6f        ret

05ed: e4 f5     mov   a,$f5
05ef: 3f cc 05  call  $05cc
05f2: f5 48 05  mov   a,$0548+x
05f5: d0 8a     bne   $0581
05f7: f4 09     mov   a,$09+x
05f9: d5 48 05  mov   $0548+x,a
05fc: e8 00     mov   a,#$00
05fe: d5 49 05  mov   $0549+x,a
0601: 5f 81 05  jmp   $0581

0604: e4 f5     mov   a,$f5
0606: c4 d3     mov   $d3,a
0608: c4 d1     mov   $d1,a
060a: 5f 81 05  jmp   $0581

060d: e4 f5     mov   a,$f5
060f: c4 d4     mov   $d4,a
0611: 5f 81 05  jmp   $0581

0614: 8f 00 d5  mov   $d5,#$00
0617: 5f 81 05  jmp   $0581

061a: e8 ff     mov   a,#$ff
061c: c4 d5     mov   $d5,a
061e: 8d 5c     mov   y,#$5c
0620: 3f f7 09  call  $09f7             ; set KOF
0623: e4 f5     mov   a,$f5
0625: c4 38     mov   $38,a
0627: 3f fc 06  call  $06fc
062a: e4 d1     mov   a,$d1
062c: f0 03     beq   $0631
062e: 3f 42 10  call  $1042
0631: e4 38     mov   a,$38
0633: 3f cc 05  call  $05cc
0636: e4 38     mov   a,$38
0638: d4 49     mov   $49+x,a           ; song number
063a: fc        inc   y
063b: f7 3c     mov   a,($3c)+y
063d: d4 00     mov   $00+x,a
063f: fc        inc   y
0640: f7 3c     mov   a,($3c)+y
0642: d4 01     mov   $01+x,a           ; set vcmd read ptr
0644: e8 00     mov   a,#$00
0646: d4 19     mov   $19+x,a
0648: d4 20     mov   $20+x,a
064a: d4 21     mov   $21+x,a
064c: d4 30     mov   $30+x,a
064e: d4 29     mov   $29+x,a
0650: d4 28     mov   $28+x,a
0652: d5 48 05  mov   $0548+x,a
0655: d5 49 05  mov   $0549+x,a
0658: e8 60     mov   a,#$60
065a: 8d 0c     mov   y,#$0c
065c: 3f f7 09  call  $09f7             ; set MVOL(L)
065f: 8d 1c     mov   y,#$1c
0661: 3f f7 09  call  $09f7             ; set MVOL(R)
0664: 5f 84 05  jmp   $0584

0667: e4 f5     mov   a,$f5
0669: c4 f6     mov   $f6,a
066b: 30 0a     bmi   $0677
066d: 3f cc 05  call  $05cc
0670: e8 00     mov   a,#$00
0672: d4 49     mov   $49+x,a
0674: 5f 81 05  jmp   $0581

0677: 3f 45 10  call  $1045
067a: 5f 81 05  jmp   $0581

067d: 8f 01 f4  mov   $f4,#$01
0680: 78 01 f4  cmp   $f4,#$01
0683: d0 fb     bne   $0680
0685: fa f6 38  mov   ($38),($f6)
0688: fa f7 39  mov   ($39),($f7)
068b: 8f 81 f4  mov   $f4,#$81
068e: 78 81 f4  cmp   $f4,#$81
0691: d0 fb     bne   $068e
0693: fa f6 3c  mov   ($3c),($f6)
0696: fa f7 3d  mov   ($3d),($f7)
0699: 8f 01 f4  mov   $f4,#$01
069c: cd 00     mov   x,#$00
069e: e4 f4     mov   a,$f4
06a0: 30 fc     bmi   $069e
06a2: e4 f5     mov   a,$f5
06a4: c7 38     mov   ($38+x),a
06a6: ba f6     movw  ya,$f6
06a8: 8f 81 f4  mov   $f4,#$81
06ab: 1a 3c     decw  $3c
06ad: f0 37     beq   $06e6
06af: 3a 38     incw  $38
06b1: c7 38     mov   ($38+x),a
06b3: 1a 3c     decw  $3c
06b5: f0 2f     beq   $06e6
06b7: 3a 38     incw  $38
06b9: dd        mov   a,y
06ba: c7 38     mov   ($38+x),a
06bc: 1a 3c     decw  $3c
06be: f0 26     beq   $06e6
06c0: 3a 38     incw  $38
06c2: e4 f4     mov   a,$f4
06c4: 10 fc     bpl   $06c2
06c6: e4 f5     mov   a,$f5
06c8: c7 38     mov   ($38+x),a
06ca: ba f6     movw  ya,$f6
06cc: 8f 01 f4  mov   $f4,#$01
06cf: 1a 3c     decw  $3c
06d1: f0 13     beq   $06e6
06d3: 3a 38     incw  $38
06d5: c7 38     mov   ($38+x),a
06d7: 1a 3c     decw  $3c
06d9: f0 0b     beq   $06e6
06db: 3a 38     incw  $38
06dd: dd        mov   a,y
06de: c7 38     mov   ($38+x),a
06e0: 3a 38     incw  $38
06e2: 1a 3c     decw  $3c
06e4: d0 b8     bne   $069e
06e6: e4 f4     mov   a,$f4
06e8: d0 fc     bne   $06e6
06ea: c4 48     mov   $48,a
06ec: 3f fc 06  call  $06fc
06ef: e4 f4     mov   a,$f4
06f1: 64 f4     cmp   a,$f4
06f3: d0 fa     bne   $06ef
06f5: 64 48     cmp   a,$48
06f7: f0 f6     beq   $06ef
06f9: 5f 9d 05  jmp   $059d

06fc: fa e0 f4  mov   ($f4),($e0)
06ff: 58 80 e0  eor   $e0,#$80
0702: 6f        ret

0703: cd 00     mov   x,#$00
0705: d8 df     mov   $df,x
0707: d8 da     mov   $da,x
0709: d8 db     mov   $db,x
070b: d8 dc     mov   $dc,x
;
070d: f4 49     mov   a,$49+x
070f: c4 d6     mov   $d6,a             ; song number
0711: d8 de     mov   $de,x             ; slot index (0~3?)
0713: f0 05     beq   $071a
0715: 10 4a     bpl   $0761
0717: 5f 0a 09  jmp   $090a

071a: 5f ea 0f  jmp   $0fea

071d: f8 de     mov   x,$de
071f: f4 09     mov   a,$09+x
0721: 04 da     or    a,$da
0723: c4 da     mov   $da,a
0725: f4 30     mov   a,$30+x
0727: 04 dc     or    a,$dc
0729: c4 dc     mov   $dc,a
072b: e4 d5     mov   a,$d5
072d: d0 0c     bne   $073b
072f: 3d        inc   x
0730: 3d        inc   x
0731: d8 df     mov   $df,x
0733: 0b df     asl   $df
0735: 0b df     asl   $df
0737: c8 08     cmp   x,#$08
0739: d0 d2     bne   $070d
073b: e8 00     mov   a,#$00
073d: 8d 5c     mov   y,#$5c
073f: 3f f7 09  call  $09f7             ; set KOF
0742: e4 d1     mov   a,$d1
0744: f0 03     beq   $0749
0746: 3f 12 10  call  $1012
0749: e4 d9     mov   a,$d9
074b: 8d 3d     mov   y,#$3d
074d: 3f f7 09  call  $09f7             ; set NON
0750: 8d 08     mov   y,#$08
0752: e8 00     mov   a,#$00
0754: 4b dc     lsr   $dc
0756: 3c        rol   a
0757: fe fb     dbnz  y,$0754
0759: 8d 4d     mov   y,#$4d
075b: 3f f7 09  call  $09f7             ; set EON
075e: 5f 84 05  jmp   $0584

; dispatch vcmd
0761: 3f eb 09  call  $09eb
0764: 68 18     cmp   a,#$18
0766: 10 05     bpl   $076d
0768: 1c        asl   a
0769: 5d        mov   x,a
076a: 1f 8c 07  jmp   ($078c+x)

; vcmd 20-2a (18-1f, 2b-ff unused)
; 20 - set SRCN ($0200+x)
; 21 - set volume ($0220+x)
; 22 - set volume balance ($0240+x)
; 23 - ($0260+x)
; 24 - ($0280+x)
; 25 - ($02a0+x)
; 26 - ($02c0+x)
; 27 - ($02e0+x)
; 28 - ($0300+x)
; 29 - ($0320+x)
; 2a - set ADSR pattern ($0340+x)
076d: c4 39     mov   $39,a             ; save vcmd to $39
076f: 28 0f     and   a,#$0f
0771: f8 df     mov   x,$df
0773: 8f 60 3a  mov   $3a,#$60
0776: 8f 03 3b  mov   $3b,#$03
0779: 8d 20     mov   y,#$20
077b: cf        mul   ya
077c: 7a 3a     addw  ya,$3a            ; YA = $0360 + (vcmd & 0x0f) * 32
077e: 3f 82 0f  call  $0f82
0781: 2f de     bra   $0761

; vcmd 0b
0783: e8 e0     mov   a,#$e0
0785: 8d 04     mov   y,#$04            ; YA = $04e0
0787: 3f 82 0f  call  $0f82
078a: 2f d5     bra   $0761

; vcmd dispatch table
078c: dw $07b6  ; 00 - set delta time
078e: dw $07be  ; 01 - set active voices
0790: dw $07dc  ; 02 - call subroutine
0792: dw $0fd7  ; 03 - end subroutine
0794: dw $085b  ; 04 - set timebase
0796: dw $0863  ; 05 - set master volume
0798: dw $0809  ; 06 - repeat until
079a: dw $0839  ; 07 - repeat break
079c: dw $07f9  ; 08 - goto
079e: dw $08ed  ; 09 - note (with wait)
07a0: dw $086b  ; 0a - set echo delay
07a2: dw $0783  ; 0b
07a4: dw $0876  ; 0c - unknown.1
07a6: dw $087e  ; 0d - set echo enable bit (not per-channel on/off)
07a8: dw $091e  ; 0e - wait
07aa: dw $081a  ; 0f - repeat until (alternate)
07ac: dw $084a  ; 10 - repeat break (alternate)
07ae: dw $089f  ; 11 - set echo feedback
07b0: dw $08c5  ; 12 - set echo filter
07b2: dw $08b5  ; 13 - set echo volume
07b4: dw $08aa  ; 14 - set echo start address
                ; 15-17 - undefined

; vcmd 00 - set delta time
07b6: 3f eb 09  call  $09eb             ; arg1
07b9: d4 08     mov   $08+x,a           ; set delta time
07bb: 5f 61 07  jmp   $0761

; vcmd 01 - set active voices
07be: f8 de     mov   x,$de
07c0: e4 da     mov   a,$da
07c2: 48 ff     eor   a,#$ff
07c4: c4 3c     mov   $3c,a
07c6: 34 09     and   a,$09+x
07c8: c4 41     mov   $41,a
07ca: 3f ee 09  call  $09ee             ; arg1 ($80 for channel 0, $01 for channel 7)
07cd: d4 09     mov   $09+x,a
07cf: 24 3c     and   a,$3c
07d1: 04 41     or    a,$41
07d3: 3f 00 10  call  $1000
07d6: 3f 9a 0f  call  $0f9a
07d9: 5f 61 07  jmp   $0761

; vcmd 02 - call subroutine
07dc: 3f eb 09  call  $09eb
07df: c4 38     mov   $38,a
07e1: 3f ee 09  call  $09ee
07e4: c4 39     mov   $39,a
07e6: f4 00     mov   a,$00+x
07e8: d4 18     mov   $18+x,a
07ea: f4 01     mov   a,$01+x
07ec: d4 19     mov   $19+x,a           ; save return address
07ee: e4 38     mov   a,$38
07f0: d4 00     mov   $00+x,a
07f2: e4 39     mov   a,$39
07f4: d4 01     mov   $01+x,a           ; goto arg1/2
07f6: 5f 61 07  jmp   $0761

; vcmd 08 - goto
07f9: 3f eb 09  call  $09eb
07fc: c4 38     mov   $38,a
07fe: e7 00     mov   a,($00+x)
0800: d4 01     mov   $01+x,a
0802: e4 38     mov   a,$38
0804: d4 00     mov   $00+x,a           ; goto arg1/2
0806: 5f 61 07  jmp   $0761

; vcmd 06 - repeat until
0809: f8 de     mov   x,$de
080b: bb 20     inc   $20+x
080d: 3f ee 09  call  $09ee
0810: 74 20     cmp   a,$20+x
0812: d0 e5     bne   $07f9             ; goto arg2/3 when ($20+x != arg1)
0814: e8 00     mov   a,#$00
0816: d4 20     mov   $20+x,a
0818: 2f 0f     bra   $0829

; vcmd 0f - repeat until (alternate)
081a: f8 de     mov   x,$de
081c: bb 21     inc   $21+x
081e: 3f ee 09  call  $09ee
0821: 74 21     cmp   a,$21+x
0823: d0 d4     bne   $07f9             ; goto arg2/3 when ($21+x != arg1)
0825: e8 00     mov   a,#$00
0827: d4 21     mov   $21+x,a
; skip next 2 bytes
0829: 60        clrc
082a: f4 00     mov   a,$00+x
082c: 88 02     adc   a,#$02
082e: d4 00     mov   $00+x,a
0830: f4 01     mov   a,$01+x
0832: 88 00     adc   a,#$00
0834: d4 01     mov   $01+x,a
0836: 5f 61 07  jmp   $0761

; vcmd 07 - repeat break
0839: f8 de     mov   x,$de
083b: bb 20     inc   $20+x
083d: 3f ee 09  call  $09ee
0840: 74 20     cmp   a,$20+x
0842: d0 e5     bne   $0829             ; goto arg2/3 when ($20+x == arg1)
0844: e8 00     mov   a,#$00
0846: d4 20     mov   $20+x,a
0848: 2f af     bra   $07f9

; vcmd 10 - repeat break (alternate)
084a: f8 de     mov   x,$de
084c: bb 21     inc   $21+x
084e: 3f ee 09  call  $09ee
0851: 74 21     cmp   a,$21+x
0853: d0 d4     bne   $0829             ; goto arg2/3 when ($21+x == arg1)
0855: e8 00     mov   a,#$00
0857: d4 21     mov   $21+x,a
0859: 2f 9e     bra   $07f9

; vcmd 04 - set timebase
085b: 3f eb 09  call  $09eb             ; arg1
085e: d4 10     mov   $10+x,a
0860: 5f 61 07  jmp   $0761

; vcmd 05 - set master volume
0863: 3f eb 09  call  $09eb             ; arg1
0866: d4 11     mov   $11+x,a
0868: 5f 61 07  jmp   $0761

; vcmd 0a - set echo delay
086b: 3f eb 09  call  $09eb
086e: 8d 7d     mov   y,#$7d
0870: 3f f7 09  call  $09f7             ; set EDL
0873: 5f 61 07  jmp   $0761

; vcmd 0c
0876: 3f eb 09  call  $09eb             ; arg1
0879: d4 29     mov   $29+x,a
087b: 5f 61 07  jmp   $0761

; vcmd 0d - set echo enable bit (not per-channel on/off)
087e: e8 6c     mov   a,#$6c
0880: 3f fe 09  call  $09fe             ; get FLG
0883: fd        mov   y,a
0884: 3f eb 09  call  $09eb
0887: 68 00     cmp   a,#$00
0889: d0 07     bne   $0892
; arg1 == 0, disable echo
088b: d4 30     mov   $30+x,a
088d: dd        mov   a,y
088e: 08 20     or    a,#$20
0890: 2f 05     bra   $0897
; arg1 != 0, enable echo
0892: d4 30     mov   $30+x,a
0894: dd        mov   a,y
0895: 28 df     and   a,#$df
0897: 8d 6c     mov   y,#$6c
0899: 3f f7 09  call  $09f7             ; set FLG
089c: 5f 61 07  jmp   $0761

; vcmd 11 - set echo feedback
089f: 3f eb 09  call  $09eb
08a2: 8d 0d     mov   y,#$0d
08a4: 3f f7 09  call  $09f7             ; set EFB
08a7: 5f 61 07  jmp   $0761

; vcmd 14 - set echo start address
08aa: 3f eb 09  call  $09eb
08ad: 8d 6d     mov   y,#$6d
08af: 3f f7 09  call  $09f7             ; set ESA
08b2: 5f 61 07  jmp   $0761

; vcmd 13 - set echo volume
08b5: 3f eb 09  call  $09eb
08b8: 8d 2c     mov   y,#$2c
08ba: 3f f7 09  call  $09f7             ; set EVOL(L)
08bd: 8d 3c     mov   y,#$3c
08bf: 3f f7 09  call  $09f7             ; set EVOL(R)
08c2: 5f 61 07  jmp   $0761

; vcmd 12 - set echo filter
08c5: ec 17 dc  mov   y,$dc17
08c8: e5 16 dc  mov   a,$dc16
08cb: da 3a     movw  $3a,ya
08cd: 3f eb 09  call  $09eb             ; arg1
08d0: cd 0f     mov   x,#$0f
08d2: 1c        asl   a
08d3: 1c        asl   a
08d4: 1c        asl   a
08d5: fd        mov   y,a
08d6: f7 3a     mov   a,($3a)+y
08d8: c9 f2 00  mov   $00f2,x
08db: c5 f3 00  mov   $00f3,a           ; set FIR
08de: fc        inc   y
08df: 7d        mov   a,x
08e0: 60        clrc
08e1: 88 10     adc   a,#$10
08e3: 5d        mov   x,a
08e4: 68 8f     cmp   a,#$8f
08e6: d0 ee     bne   $08d6
08e8: f8 de     mov   x,$de
08ea: 5f 61 07  jmp   $0761

; vcmd 09 - note (with wait)
08ed: 3f eb 09  call  $09eb             ; arg1
08f0: eb df     mov   y,$df
08f2: c4 38     mov   $38,a             ; do {
08f4: 0b 38     asl   $38               ;   $38 <<= 1;
08f6: 90 0b     bcc   $0903             ;   if carry == 0 then continue
08f8: 3f ee 09  call  $09ee             ;   read next byte
08fb: d6 c0 04  mov   $04c0+y,a         ;   save note byte
08fe: e8 00     mov   a,#$00
0900: d6 70 00  mov   $0070+y,a
0903: fc        inc   y
0904: e4 38     mov   a,$38
0906: d0 ec     bne   $08f4             ; } while ($38 != 0);
0908: 2f 16     bra   $0920             ; wait

; calculate scaled delta-time
090a: f8 de     mov   x,$de
090c: f4 08     mov   a,$08+x           ; delta time
090e: fb 10     mov   y,$10+x           ; timebase (delta-time multiplier)
0910: cf        mul   ya
0911: c4 d0     mov   $d0,a
0913: 74 28     cmp   a,$28+x
0915: d0 09     bne   $0920
0917: e8 00     mov   a,#$00
0919: d4 28     mov   $28+x,a
091b: 5f 61 07  jmp   $0761

; vcmd 0e - wait
091e: f8 de     mov   x,$de
; prepare for waiting for the next timer clock
0920: f4 09     mov   a,$09+x
0922: c4 38     mov   $38,a
0924: e4 da     mov   a,$da
0926: 48 ff     eor   a,#$ff
0928: 24 38     and   a,$38
092a: c4 dd     mov   $dd,a
092c: f4 29     mov   a,$29+x
092e: c4 d8     mov   $d8,a
0930: f5 48 05  mov   a,$0548+x
0933: 24 dd     and   a,$dd
0935: c4 46     mov   $46,a
0937: f0 0d     beq   $0946
0939: f4 28     mov   a,$28+x
093b: 28 01     and   a,#$01
093d: f0 07     beq   $0946
093f: f5 49 05  mov   a,$0549+x
0942: bc        inc   a
0943: d5 49 05  mov   $0549+x,a
0946: 3f 0b 0e  call  $0e0b
0949: 0b 38     asl   $38
094b: 90 64     bcc   $09b1
094d: f8 df     mov   x,$df
094f: e4 dd     mov   a,$dd
0951: 10 7a     bpl   $09cd
0953: f4 70     mov   a,$70+x
0955: 68 ff     cmp   a,#$ff
0957: f0 58     beq   $09b1
0959: 75 e0 04  cmp   a,$04e0+x
095c: d0 44     bne   $09a2
095e: f5 c0 04  mov   a,$04c0+x
0961: 68 ff     cmp   a,#$ff
0963: f0 3d     beq   $09a2
0965: 8f 20 3c  mov   $3c,#$20
0968: 8f 00 3d  mov   $3d,#$00          ; step = $0020
096b: 8f 60 3e  mov   $3e,#$60
096e: 8f 03 3f  mov   $3f,#$03          ; src = $0360
0971: 8f 00 40  mov   $40,#$00
0974: 8f 02 41  mov   $41,#$02          ; dst = $0200
0977: 8f 0b 3b  mov   $3b,#$0b
097a: eb df     mov   y,$df
097c: f7 3e     mov   a,($3e)+y
097e: d7 40     mov   ($40)+y,a         ; *(dst + y) = *(src + y)
0980: ba 3c     movw  ya,$3c
0982: 7a 3e     addw  ya,$3e
0984: da 3e     movw  $3e,ya            ; src += step
0986: ba 3c     movw  ya,$3c
0988: 7a 40     addw  ya,$40
098a: da 40     movw  $40,ya            ; dst += step
098c: 6e 3b eb  dbnz  $3b,$097a         ; do above for 11 times
098f: 3f 05 0a  call  $0a05             ; dispatch note vcmd
0992: 3f a9 0d  call  $0da9             ; update volume regs
0995: e8 ff     mov   a,#$ff
0997: f8 df     mov   x,$df
0999: d5 c0 04  mov   $04c0+x,a
099c: e8 00     mov   a,#$00
099e: d4 b0     mov   $b0+x,a
09a0: 2f 05     bra   $09a7
09a2: 3f 0c 0b  call  $0b0c
09a5: f8 df     mov   x,$df
09a7: bb b0     inc   $b0+x
09a9: f4 70     mov   a,$70+x
09ab: 68 fe     cmp   a,#$fe
09ad: f0 02     beq   $09b1
09af: bb 70     inc   $70+x
09b1: 3f 13 0e  call  $0e13
09b4: 0b dd     asl   $dd
09b6: 0b d8     asl   $d8
09b8: 0b 46     asl   $46
09ba: ab df     inc   $df
09bc: e4 38     mov   a,$38
09be: d0 86     bne   $0946
09c0: f8 de     mov   x,$de
09c2: bb 28     inc   $28+x
09c4: e4 d6     mov   a,$d6
09c6: 08 80     or    a,#$80
09c8: d4 49     mov   $49+x,a
09ca: 5f 1d 07  jmp   $071d

09cd: e8 ff     mov   a,#$ff
09cf: d4 70     mov   $70+x,a
09d1: 2f de     bra   $09b1

; DSP reg:value pair
09d3: db $0c,$60      ; MVOL(L)
09d5: db $1c,$60      ; MVOL(R)
09d7: db $0d,$00      ; EFB
09d9: db $2c,$00      ; EVOL(L)
09db: db $2d,$00      ; PMON
09dd: db $3c,$00      ; EVOL(R)
09df: db $3d,$00      ; NON
09e1: db $4d,$00      ; EON
09e3: db $5d,$11      ; DIR
09e5: db $6d,$ac      ; ESA
09e7: db $7d,$01      ; EDL
09e9: db $6c,$20      ; FLG

; read from $00/1[$de] to A, increment ptr
09eb: e9 de 00  mov   x,$00de
09ee: e7 00     mov   a,($00+x)
09f0: bb 00     inc   $00+x
09f2: d0 02     bne   $09f6
09f4: bb 01     inc   $01+x
09f6: 6f        ret

; write A to dsp reg Y
09f7: cc f2 00  mov   $00f2,y
09fa: c5 f3 00  mov   $00f3,a
09fd: 6f        ret

; read dsp reg A
09fe: c5 f2 00  mov   $00f2,a
0a01: e5 f3 00  mov   a,$00f3
0a04: 6f        ret

; dispatch note vcmd
0a05: f8 df     mov   x,$df
0a07: f5 c0 04  mov   a,$04c0+x
0a0a: 68 54     cmp   a,#$54
0a0c: 90 03     bcc   $0a11
0a0e: 5f 83 0a  jmp   $0a83

; normal note (00-53)
0a11: c4 39     mov   $39,a             ; note number
0a13: 3f 32 0b  call  $0b32             ; save adjusted note number
0a16: 3f 80 0c  call  $0c80             ; load it to $3c/d
0a19: f5 e0 02  mov   a,$02e0+x         ; vcmd 27 param
0a1c: f0 12     beq   $0a30
0a1e: f4 50     mov   a,$50+x
0a20: 68 54     cmp   a,#$54
0a22: f0 0c     beq   $0a30
0a24: d5 a0 01  mov   $01a0+x,a
0a27: f5 05 0a  mov   a,$0a05+x
0a2a: d5 20 05  mov   $0520+x,a
0a2d: 3f 8b 0c  call  $0c8b
0a30: e4 d8     mov   a,$d8
0a32: 10 06     bpl   $0a3a             ; update key on/off etc.
0a34: 3f 42 0b  call  $0b42
0a37: 5f 54 0b  jmp   $0b54

0a3a: f5 80 02  mov   a,$0280+x
0a3d: f0 06     beq   $0a45
0a3f: 3f 71 0b  call  $0b71
0a42: 3f 8c 0b  call  $0b8c
0a45: e4 df     mov   a,$df
0a47: 28 07     and   a,#$07
0a49: 5d        mov   x,a
0a4a: fd        mov   y,a
0a4b: f6 57 10  mov   a,$1057+y
0a4e: 8d 5c     mov   y,#$5c
0a50: 3f f7 09  call  $09f7             ; set KOF
0a53: 7d        mov   a,x
0a54: 1c        asl   a
0a55: 9f        xcn   a
0a56: 08 02     or    a,#$02
0a58: c5 60 0a  mov   $0a60,a           ; self-modifying code
0a5b: 08 12     or    a,#$12
0a5d: c5 62 0a  mov   $0a62,a           ; self-modifying code
0a60: a2 db     set5  $db               ; set0-set7 KON shadow
0a62: b2 d9     clr5  $d9               ; clr0-clr7 NON shadow
0a64: 3f f2 0c  call  $0cf2
0a67: 3f 36 0e  call  $0e36             ; write pitch
0a6a: f5 40 03  mov   a,$0340+x         ; ADSR index
0a6d: d0 05     bne   $0a74
0a6f: e8 7f     mov   a,#$7f
0a71: 5f 9d 0e  jmp   $0e9d

; set ADSR/GAIN
0a74: 3f 50 0e  call  $0e50
0a77: cd 00     mov   x,#$00
0a79: e7 3a     mov   a,($3a+x)
0a7b: 10 03     bpl   $0a80
0a7d: 5f 69 0e  jmp   $0e69             ; ADSR mode
0a80: 5f 87 0e  jmp   $0e87             ; GAIN mode

0a83: f0 47     beq   $0acc             ; rest
0a85: 68 80     cmp   a,#$80
0a87: b0 51     bcs   $0ada

; noise note (60-7f, 59-5f unused mirror)
0a89: f8 df     mov   x,$df
0a8b: 28 1f     and   a,#$1f
0a8d: d4 50     mov   $50+x,a
0a8f: e8 6c     mov   a,#$6c
0a91: 3f fe 09  call  $09fe             ; get FLG
0a94: 28 e0     and   a,#$e0
0a96: 14 50     or    a,$50+x
0a98: 8d 6c     mov   y,#$6c
0a9a: 3f f7 09  call  $09f7             ; set FLG
0a9d: e4 d8     mov   a,$d8
0a9f: 10 03     bpl   $0aa4
0aa1: 5f 54 0b  jmp   $0b54

0aa4: e4 df     mov   a,$df
0aa6: 28 07     and   a,#$07
0aa8: 5d        mov   x,a
0aa9: fd        mov   y,a
0aaa: f6 57 10  mov   a,$1057+y
0aad: 8d 5c     mov   y,#$5c
0aaf: 3f f7 09  call  $09f7             ; set KOF
0ab2: 7d        mov   a,x
0ab3: 1c        asl   a
0ab4: 9f        xcn   a
0ab5: 08 02     or    a,#$02
0ab7: c5 bd 0a  mov   $0abd,a           ; self-modifying code
0aba: c5 bf 0a  mov   $0abf,a           ; self-modifying code
0abd: a2 d9     set5  $d9               ; set0-set7 NON shadow
0abf: a2 db     set5  $db               ; set0-set7 KON shadow
0ac1: e4 d2     mov   a,$d2
0ac3: 08 04     or    a,#$04
0ac5: fd        mov   y,a
0ac6: 3f 47 0e  call  $0e47             ; set SRCN from $0200+x
0ac9: 5f 6a 0a  jmp   $0a6a

; rest (54)
0acc: f8 df     mov   x,$df
0ace: 3f 80 0c  call  $0c80
0ad1: 3f 42 0b  call  $0b42
0ad4: f5 40 03  mov   a,$0340+x         ; ADSR index
0ad7: 5f 3e 0f  jmp   $0f3e

; percussion note (80-ff)
0ada: 28 7f     and   a,#$7f
0adc: 8d 05     mov   y,#$05
0ade: cf        mul   ya                ; 5 bytes / item
0adf: da 3a     movw  $3a,ya
0ae1: ec 15 dc  mov   y,$dc15
0ae4: e5 14 dc  mov   a,$dc14           ; percussion table address is in $dc14
0ae7: 7a 3a     addw  ya,$3a
0ae9: da 3a     movw  $3a,ya            ; $3a/b = [$dc14] + ((note & 0x7f) * 5)
0aeb: 8d 00     mov   y,#$00
0aed: f8 df     mov   x,$df
0aef: f7 3a     mov   a,($3a)+y         ; offset +0: SRCN
0af1: d5 00 02  mov   $0200+x,a
0af4: fc        inc   y
0af5: f7 3a     mov   a,($3a)+y         ; offset +1: ADSR index
0af7: d5 40 03  mov   $0340+x,a
0afa: fc        inc   y
0afb: f7 3a     mov   a,($3a)+y         ; offset +2: volume
0afd: d5 20 02  mov   $0220+x,a
0b00: fc        inc   y
0b01: f7 3a     mov   a,($3a)+y         ; offset +3: volume balance
0b03: d5 40 02  mov   $0240+x,a
0b06: fc        inc   y
0b07: f7 3a     mov   a,($3a)+y         ; offset +4: note number
0b09: 5f 0a 0a  jmp   $0a0a             ; dispatch it

0b0c: f8 df     mov   x,$df
0b0e: f4 50     mov   a,$50+x
0b10: 68 54     cmp   a,#$54
0b12: b0 16     bcs   $0b2a
0b14: 3f 80 0c  call  $0c80
0b17: f5 e0 02  mov   a,$02e0+x
0b1a: f0 08     beq   $0b24
0b1c: f5 a0 01  mov   a,$01a0+x
0b1f: f0 03     beq   $0b24
0b21: 3f 8b 0c  call  $0c8b
0b24: 3f 42 0b  call  $0b42
0b27: 5f 54 0b  jmp   $0b54

0b2a: d0 28     bne   $0b54
0b2c: 3f 42 0b  call  $0b42
0b2f: 5f 3e 0f  jmp   $0f3e

; set note number into $0120+x and $0100+x (fraction)
0b32: f8 df     mov   x,$df
0b34: 60        clrc
0b35: 95 a0 02  adc   a,$02a0+x         ; vcmd 25 param (transpose?)
0b38: d5 20 01  mov   $0120+x,a
0b3b: f5 c0 02  mov   a,$02c0+x         ; vcmd 26 param (tuning?)
0b3e: d5 00 01  mov   $0100+x,a
0b41: 6f        ret

0b42: f5 80 02  mov   a,$0280+x
0b45: f0 06     beq   $0b4d
0b47: 3f 71 0b  call  $0b71
0b4a: 3f c4 0b  call  $0bc4
0b4d: 3f f2 0c  call  $0cf2
0b50: 3f 36 0e  call  $0e36             ; write pitch
0b53: 6f        ret

0b54: f8 df     mov   x,$df
0b56: f5 60 02  mov   a,$0260+x
0b59: f0 0a     beq   $0b65
0b5b: 74 b0     cmp   a,$b0+x
0b5d: b0 06     bcs   $0b65
0b5f: f5 40 03  mov   a,$0340+x         ; ADSR index
0b62: 5f 3e 0f  jmp   $0f3e

0b65: f4 90     mov   a,$90+x
0b67: d0 01     bne   $0b6a
0b69: 6f        ret

0b6a: 3f 50 0e  call  $0e50
0b6d: 3f af 0e  call  $0eaf
0b70: 6f        ret

0b71: 1c        asl   a
0b72: fd        mov   y,a
0b73: e5 12 dc  mov   a,$dc12
0b76: c4 40     mov   $40,a
0b78: e5 13 dc  mov   a,$dc13
0b7b: c4 41     mov   $41,a
0b7d: f7 40     mov   a,($40)+y
0b7f: c4 3a     mov   $3a,a
0b81: fc        inc   y
0b82: f7 40     mov   a,($40)+y
0b84: c4 3b     mov   $3b,a
0b86: 6f        ret

0b87: f5 40 01  mov   a,$0140+x
0b8a: 2f 11     bra   $0b9d
0b8c: f5 00 03  mov   a,$0300+x
0b8f: d5 80 01  mov   $0180+x,a
0b92: e8 00     mov   a,#$00
0b94: d5 80 01  mov   $0180+x,a
0b97: d5 40 01  mov   $0140+x,a
0b9a: d5 60 01  mov   $0160+x,a
0b9d: fd        mov   y,a
0b9e: f7 3a     mov   a,($3a)+y
0ba0: 80        setc
0ba1: a8 64     sbc   a,#$64
0ba3: 90 0c     bcc   $0bb1
0ba5: fd        mov   y,a
0ba6: f5 20 03  mov   a,$0320+x
0ba9: f0 01     beq   $0bac
0bab: cf        mul   ya
0bac: 7a 3c     addw  ya,$3c
0bae: da 3c     movw  $3c,ya
0bb0: 6f        ret

0bb1: 48 ff     eor   a,#$ff
0bb3: bc        inc   a
0bb4: fd        mov   y,a
0bb5: f5 20 03  mov   a,$0320+x
0bb8: f0 01     beq   $0bbb
0bba: cf        mul   ya
0bbb: da 42     movw  $42,ya
0bbd: ba 3c     movw  ya,$3c
0bbf: 9a 42     subw  ya,$42
0bc1: da 3c     movw  $3c,ya
0bc3: 6f        ret

0bc4: f5 40 01  mov   a,$0140+x
0bc7: fd        mov   y,a
0bc8: f7 3a     mov   a,($3a)+y
0bca: c4 3e     mov   $3e,a
0bcc: fc        inc   y
0bcd: f7 3a     mov   a,($3a)+y
0bcf: c4 3f     mov   $3f,a
0bd1: f5 00 03  mov   a,$0300+x
0bd4: 60        clrc
0bd5: 95 80 01  adc   a,$0180+x
0bd8: 90 1a     bcc   $0bf4
0bda: f5 00 03  mov   a,$0300+x
0bdd: d5 80 01  mov   $0180+x,a
0be0: e4 3f     mov   a,$3f
0be2: 68 f0     cmp   a,#$f0
0be4: 90 05     bcc   $0beb
0be6: 3f 77 0c  call  $0c77
0be9: f7 3a     mov   a,($3a)+y
0beb: c4 3e     mov   $3e,a
0bed: dd        mov   a,y
0bee: d5 40 01  mov   $0140+x,a
0bf1: fc        inc   y
0bf2: 2f 0c     bra   $0c00
0bf4: d5 80 01  mov   $0180+x,a
0bf7: e4 3f     mov   a,$3f
0bf9: 68 f0     cmp   a,#$f0
0bfb: 90 09     bcc   $0c06
0bfd: 3f 77 0c  call  $0c77
0c00: f7 3a     mov   a,($3a)+y
0c02: c4 3f     mov   $3f,a
0c04: 2f f3     bra   $0bf9
0c06: 3f 87 0b  call  $0b87
0c09: f5 80 01  mov   a,$0180+x
0c0c: fd        mov   y,a
0c0d: f5 20 03  mov   a,$0320+x
0c10: f0 01     beq   $0c13
0c12: cf        mul   ya
0c13: da 40     movw  $40,ya
0c15: e4 3f     mov   a,$3f
0c17: 80        setc
0c18: a4 3e     sbc   a,$3e
0c1a: 90 2c     bcc   $0c48
0c1c: c4 3e     mov   $3e,a
0c1e: eb 40     mov   y,$40
0c20: cf        mul   ya
0c21: da 42     movw  $42,ya
0c23: e4 3e     mov   a,$3e
0c25: eb 41     mov   y,$41
0c27: cf        mul   ya
0c28: 60        clrc
0c29: 84 43     adc   a,$43
0c2b: c4 43     mov   $43,a
0c2d: dd        mov   a,y
0c2e: 88 00     adc   a,#$00
0c30: c4 44     mov   $44,a
0c32: 60        clrc
0c33: e4 42     mov   a,$42
0c35: 95 60 01  adc   a,$0160+x
0c38: d5 60 01  mov   $0160+x,a
0c3b: e4 43     mov   a,$43
0c3d: 84 3c     adc   a,$3c
0c3f: c4 3c     mov   $3c,a
0c41: e4 44     mov   a,$44
0c43: 84 3d     adc   a,$3d
0c45: c4 3d     mov   $3d,a
0c47: 6f        ret

0c48: 48 ff     eor   a,#$ff
0c4a: bc        inc   a
0c4b: c4 3e     mov   $3e,a
0c4d: eb 40     mov   y,$40
0c4f: cf        mul   ya
0c50: da 42     movw  $42,ya
0c52: e4 3e     mov   a,$3e
0c54: eb 41     mov   y,$41
0c56: cf        mul   ya
0c57: 60        clrc
0c58: 84 43     adc   a,$43
0c5a: c4 43     mov   $43,a
0c5c: dd        mov   a,y
0c5d: 88 00     adc   a,#$00
0c5f: c4 44     mov   $44,a
0c61: 80        setc
0c62: f5 60 01  mov   a,$0160+x
0c65: a4 42     sbc   a,$42
0c67: d5 60 01  mov   $0160+x,a
0c6a: e4 3c     mov   a,$3c
0c6c: a4 43     sbc   a,$43
0c6e: c4 3c     mov   $3c,a
0c70: e4 3d     mov   a,$3d
0c72: a4 44     sbc   a,$44
0c74: c4 3d     mov   $3d,a
0c76: 6f        ret

0c77: d0 02     bne   $0c7b
0c79: dc        dec   y
0c7a: 6f        ret

0c7b: fc        inc   y
0c7c: f7 3a     mov   a,($3a)+y
0c7e: fd        mov   y,a
0c7f: 6f        ret

; load note number to $3c/d
0c80: f5 00 01  mov   a,$0100+x
0c83: c4 3c     mov   $3c,a
0c85: f5 20 01  mov   a,$0120+x
0c88: c4 3d     mov   $3d,a
0c8a: 6f        ret

0c8b: 80        setc
0c8c: f5 00 01  mov   a,$0100+x
0c8f: b5 20 05  sbc   a,$0520+x
0c92: f5 20 01  mov   a,$0120+x
0c95: b5 a0 01  sbc   a,$01a0+x
0c98: 30 23     bmi   $0cbd
0c9a: bc        inc   a
0c9b: fd        mov   y,a
0c9c: f5 e0 02  mov   a,$02e0+x
0c9f: cf        mul   ya
0ca0: da 3a     movw  $3a,ya
0ca2: 4b 3b     lsr   $3b
0ca4: 6b 3a     ror   $3a
0ca6: f5 a0 01  mov   a,$01a0+x
0ca9: fd        mov   y,a
0caa: f5 20 05  mov   a,$0520+x
0cad: 7a 3a     addw  ya,$3a
0caf: 5a 3c     cmpw  ya,$3c
0cb1: b0 30     bcs   $0ce3
0cb3: da 3c     movw  $3c,ya
0cb5: d5 20 05  mov   $0520+x,a
0cb8: dd        mov   a,y
0cb9: d5 a0 01  mov   $01a0+x,a
0cbc: 6f        ret

0cbd: 48 ff     eor   a,#$ff
0cbf: bc        inc   a
0cc0: bc        inc   a
0cc1: fd        mov   y,a
0cc2: f5 e0 02  mov   a,$02e0+x
0cc5: cf        mul   ya
0cc6: da 3a     movw  $3a,ya
0cc8: 4b 3b     lsr   $3b
0cca: 6b 3a     ror   $3a
0ccc: f5 a0 01  mov   a,$01a0+x
0ccf: fd        mov   y,a
0cd0: f5 20 05  mov   a,$0520+x
0cd3: 9a 3a     subw  ya,$3a
0cd5: 5a 3c     cmpw  ya,$3c
0cd7: 90 0a     bcc   $0ce3
0cd9: da 3c     movw  $3c,ya
0cdb: d5 20 05  mov   $0520+x,a
0cde: dd        mov   a,y
0cdf: d5 a0 01  mov   $01a0+x,a
0ce2: 6f        ret

0ce3: f5 20 01  mov   a,$0120+x
0ce6: fd        mov   y,a
0ce7: f5 00 01  mov   a,$0100+x
0cea: da 3c     movw  $3c,ya
0cec: e8 00     mov   a,#$00
0cee: d5 a0 01  mov   $01a0+x,a
0cf1: 6f        ret

; calculate pitch into $40/1
0cf2: f8 df     mov   x,$df
0cf4: e4 3d     mov   a,$3d             ; note key
0cf6: d4 50     mov   $50+x,a
0cf8: 8d 00     mov   y,#$00
0cfa: cd 0c     mov   x,#$0c
0cfc: 9e        div   ya,x
0cfd: 48 ff     eor   a,#$ff
0cff: 9c        dec   a
0d00: 28 07     and   a,#$07
0d02: 2d        push  a                 ; push octave
0d03: dd        mov   a,y               ; key
0d04: 1c        asl   a
0d05: fd        mov   y,a
0d06: f6 68 10  mov   a,$1068+y
0d09: c4 3b     mov   $3b,a
0d0b: f6 67 10  mov   a,$1067+y
0d0e: c4 3a     mov   $3a,a
0d10: f6 6a 10  mov   a,$106a+y
0d13: c4 39     mov   $39,a
0d15: f6 69 10  mov   a,$1069+y
0d18: eb 39     mov   y,$39             ; read pitch table
0d1a: 9a 3a     subw  ya,$3a
0d1c: da 42     movw  $42,ya            ; delta pitch
0d1e: f8 df     mov   x,$df
0d20: fd        mov   y,a
0d21: f5 60 01  mov   a,$0160+x         ; tuning?
0d24: cf        mul   ya
0d25: cb 3e     mov   $3e,y
0d27: e4 42     mov   a,$42
0d29: eb 3c     mov   y,$3c
0d2b: cf        mul   ya
0d2c: 60        clrc
0d2d: 84 3e     adc   a,$3e
0d2f: c4 3e     mov   $3e,a
0d31: dd        mov   a,y
0d32: 88 00     adc   a,#$00
0d34: c4 3f     mov   $3f,a
0d36: eb 43     mov   y,$43
0d38: d0 04     bne   $0d3e
0d3a: cb 40     mov   $40,y
0d3c: 2f 17     bra   $0d55
0d3e: f5 60 01  mov   a,$0160+x
0d41: cf        mul   ya
0d42: 7a 3e     addw  ya,$3e
0d44: da 3e     movw  $3e,ya
0d46: e4 3c     mov   a,$3c
0d48: eb 43     mov   y,$43
0d4a: cf        mul   ya
0d4b: 60        clrc
0d4c: 84 3f     adc   a,$3f
0d4e: c4 3f     mov   $3f,a
0d50: dd        mov   a,y
0d51: 88 00     adc   a,#$00
0d53: c4 40     mov   $40,a
0d55: f3 3e 02  bbc7  $3e,$0d5a
0d58: 3a 3f     incw  $3f
0d5a: ba 3a     movw  ya,$3a
0d5c: 7a 3f     addw  ya,$3f
0d5e: cb 3b     mov   $3b,y
0d60: ce        pop   x                 ; pop octave
0d61: c8 00     cmp   x,#$00
0d63: f0 06     beq   $0d6b
0d65: 4b 3b     lsr   $3b
0d67: 7c        ror   a
0d68: 1d        dec   x
0d69: d0 fa     bne   $0d65
0d6b: c4 3a     mov   $3a,a
0d6d: f8 df     mov   x,$df
0d6f: f5 00 02  mov   a,$0200+x         ; SRCN index
0d72: 1c        asl   a
0d73: 60        clrc
0d74: 88 e0     adc   a,#$e0
0d76: c4 3c     mov   $3c,a
0d78: e8 11     mov   a,#$11
0d7a: 88 00     adc   a,#$00
0d7c: c4 3d     mov   $3d,a             ; $3c/d = $11e0 + (srcn * 2)
0d7e: 8d 00     mov   y,#$00
0d80: f7 3c     mov   a,($3c)+y
0d82: c4 3e     mov   $3e,a
0d84: fc        inc   y
0d85: f7 3c     mov   a,($3c)+y
0d87: c4 3d     mov   $3d,a             ; read per-instrument tuning
0d89: eb 3b     mov   y,$3b
0d8b: cf        mul   ya
0d8c: da 40     movw  $40,ya
0d8e: e4 3d     mov   a,$3d
0d90: eb 3a     mov   y,$3a
0d92: cf        mul   ya
0d93: 6d        push  y
0d94: e4 3e     mov   a,$3e
0d96: eb 3a     mov   y,$3a
0d98: cf        mul   ya
0d99: 7a 40     addw  ya,$40
0d9b: da 40     movw  $40,ya
0d9d: e4 3e     mov   a,$3e
0d9f: eb 3b     mov   y,$3b
0da1: cf        mul   ya
0da2: fd        mov   y,a
0da3: ae        pop   a
0da4: 7a 40     addw  ya,$40
0da6: da 40     movw  $40,ya
0da8: 6f        ret

; update voice volume regs
0da9: f8 de     mov   x,$de
0dab: f4 11     mov   a,$11+x           ; master volume
0dad: fd        mov   y,a
0dae: f8 df     mov   x,$df
0db0: f5 20 02  mov   a,$0220+x         ; voice volume
0db3: cf        mul   ya
0db4: e4 d4     mov   a,$d4
0db6: f0 1a     beq   $0dd2
; mono
0db8: f5 40 02  mov   a,$0240+x
0dbb: 28 0f     and   a,#$0f
0dbd: c4 42     mov   $42,a
0dbf: f5 40 02  mov   a,$0240+x
0dc2: 9f        xcn   a
0dc3: 28 0f     and   a,#$0f
0dc5: 60        clrc
0dc6: 84 42     adc   a,$42
0dc8: 1c        asl   a
0dc9: 1c        asl   a
0dca: 1c        asl   a
0dcb: cf        mul   ya
0dcc: cb 3d     mov   $3d,y
0dce: cb 3c     mov   $3c,y
0dd0: 2f 15     bra   $0de7
; stereo
0dd2: cb 3c     mov   $3c,y
0dd4: f5 40 02  mov   a,$0240+x
0dd7: 28 f0     and   a,#$f0
0dd9: cf        mul   ya
0dda: cb 3d     mov   $3d,y             ; volL = y * ($0240+x & 0xf0)
0ddc: f5 40 02  mov   a,$0240+x
0ddf: 28 0f     and   a,#$0f
0de1: 9f        xcn   a
0de2: eb 3c     mov   y,$3c
0de4: cf        mul   ya
0de5: cb 3c     mov   $3c,y             ; volR = y * ($0240+x << 4)
;
0de7: eb d2     mov   y,$d2
0de9: e4 3d     mov   a,$3d
0deb: 5c        lsr   a                 ; 8 bits -> 7 bits
0dec: f8 de     mov   x,$de
0dee: 80        setc
0def: b5 49 05  sbc   a,$0549+x         ; apply linear fader
0df2: b0 02     bcs   $0df6
0df4: e8 00     mov   a,#$00
0df6: 3f f7 09  call  $09f7             ; set VOL(L)
0df9: c4 47     mov   $47,a
0dfb: fc        inc   y
0dfc: e4 3c     mov   a,$3c
0dfe: 5c        lsr   a                 ; 8 bits -> 7 bits
0dff: 80        setc
0e00: b5 49 05  sbc   a,$0549+x         ; apply linear fader
0e03: b0 02     bcs   $0e07
0e05: e8 00     mov   a,#$00
0e07: 3f f7 09  call  $09f7             ; set VOL(R)
0e0a: 6f        ret

; set dsp reg base for channel $df to $d2
0e0b: e4 df     mov   a,$df
0e0d: 28 07     and   a,#$07
0e0f: 9f        xcn   a
0e10: c4 d2     mov   $d2,a
0e12: 6f        ret

0e13: e4 46     mov   a,$46
0e15: 30 01     bmi   $0e18
0e17: 6f        ret

0e18: 3f a9 0d  call  $0da9
0e1b: 04 47     or    a,$47
0e1d: f0 01     beq   $0e20
0e1f: 6f        ret

0e20: e4 df     mov   a,$df
0e22: 28 07     and   a,#$07
0e24: fd        mov   y,a
0e25: f6 5f 10  mov   a,$105f+y
0e28: 35 48 05  and   a,$0548+x
0e2b: d5 48 05  mov   $0548+x,a
0e2e: f0 01     beq   $0e31
0e30: 6f        ret

0e31: ee        pop   y
0e32: ee        pop   y
0e33: 5f ea 0f  jmp   $0fea

; write pitch $40/1 to dsp
0e36: e4 d2     mov   a,$d2
0e38: 08 02     or    a,#$02
0e3a: fd        mov   y,a
0e3b: e4 40     mov   a,$40
0e3d: 3f f7 09  call  $09f7             ; set P(L)
0e40: fc        inc   y
0e41: e4 41     mov   a,$41
0e43: 3f f7 09  call  $09f7             ; set P(H)
0e46: fc        inc   y
0e47: f8 df     mov   x,$df
0e49: f5 00 02  mov   a,$0200+x
0e4c: 3f f7 09  call  $09f7             ; set SRCN
0e4f: 6f        ret

0e50: e5 10 dc  mov   a,$dc10
0e53: c4 42     mov   $42,a
0e55: e5 11 dc  mov   a,$dc11
0e58: c4 43     mov   $43,a             ; ADSR envelope pointer table 
0e5a: f5 40 03  mov   a,$0340+x         ; envelope index
0e5d: 1c        asl   a
0e5e: fd        mov   y,a
0e5f: f7 42     mov   a,($42)+y
0e61: c4 3a     mov   $3a,a
0e63: fc        inc   y
0e64: f7 42     mov   a,($42)+y
0e66: c4 3b     mov   $3b,a             ; set envelope pointer
0e68: 6f        ret

0e69: c4 39     mov   $39,a
0e6b: e4 d2     mov   a,$d2
0e6d: 08 05     or    a,#$05
0e6f: fd        mov   y,a
0e70: e4 39     mov   a,$39
0e72: 3f f7 09  call  $09f7             ; set ADSR(1)
0e75: 3a 3a     incw  $3a
0e77: e7 3a     mov   a,($3a+x)
0e79: fc        inc   y
0e7a: 3f f7 09  call  $09f7             ; set ADSR(2)
0e7d: f8 df     mov   x,$df
0e7f: e8 00     mov   a,#$00
0e81: d4 90     mov   $90+x,a
0e83: d5 00 05  mov   $0500+x,a
0e86: 6f        ret

0e87: 8d 00     mov   y,#$00
0e89: fd        mov   y,a
0e8a: cf        mul   ya
0e8b: f8 df     mov   x,$df
0e8d: d5 00 05  mov   $0500+x,a
0e90: dd        mov   a,y
0e91: 8d 01     mov   y,#$01
0e93: db 90     mov   $90+x,y
0e95: 77 3a     cmp   a,($3a)+y
0e97: 90 04     bcc   $0e9d
0e99: f7 3a     mov   a,($3a)+y
0e9b: bb 90     inc   $90+x
0e9d: c4 39     mov   $39,a
0e9f: e4 d2     mov   a,$d2
0ea1: 08 05     or    a,#$05
0ea3: fd        mov   y,a
0ea4: e4 39     mov   a,$39
0ea6: 3f f7 09  call  $09f7             ; set ADSR(1)
0ea9: fc        inc   y
0eaa: fc        inc   y
0eab: 3f f7 09  call  $09f7             ; set GAIN
0eae: 6f        ret

0eaf: f5 00 05  mov   a,$0500+x
0eb2: c4 3c     mov   $3c,a
0eb4: e4 d2     mov   a,$d2
0eb6: 08 08     or    a,#$08
0eb8: 3f fe 09  call  $09fe             ; get ENVX
0ebb: c4 3d     mov   $3d,a
0ebd: fb 90     mov   y,$90+x
0ebf: dc        dec   y
0ec0: f7 3a     mov   a,($3a)+y
0ec2: 68 f0     cmp   a,#$f0
0ec4: b0 4a     bcs   $0f10
0ec6: fd        mov   y,a
0ec7: cf        mul   ya
0ec8: da 3e     movw  $3e,ya
0eca: fb 90     mov   y,$90+x
0ecc: f7 3a     mov   a,($3a)+y
0ece: c4 39     mov   $39,a
0ed0: ba 3c     movw  ya,$3c
0ed2: 7e 39     cmp   y,$39
0ed4: f0 23     beq   $0ef9
0ed6: b0 0a     bcs   $0ee2
0ed8: 7a 3e     addw  ya,$3e
0eda: 30 12     bmi   $0eee
0edc: 7e 39     cmp   y,$39
0ede: b0 0e     bcs   $0eee
0ee0: 2f 17     bra   $0ef9
0ee2: 9a 3e     subw  ya,$3e
0ee4: 30 08     bmi   $0eee
0ee6: 7e 39     cmp   y,$39
0ee8: f0 04     beq   $0eee
0eea: 90 02     bcc   $0eee
0eec: 2f 0b     bra   $0ef9
0eee: e8 00     mov   a,#$00
0ef0: d5 00 05  mov   $0500+x,a
0ef3: bb 90     inc   $90+x
0ef5: bb 90     inc   $90+x
0ef7: 2f 05     bra   $0efe
0ef9: d5 00 05  mov   $0500+x,a
0efc: cb 39     mov   $39,y
0efe: e4 d2     mov   a,$d2
0f00: 08 07     or    a,#$07
0f02: fd        mov   y,a
0f03: e4 39     mov   a,$39
0f05: 3f f7 09  call  $09f7             ; set GAIN
0f08: dc        dec   y
0f09: dc        dec   y
0f0a: e8 7f     mov   a,#$7f
0f0c: 3f f7 09  call  $09f7             ; set ADSR(1)
0f0f: 6f        ret

0f10: 28 0f     and   a,#$0f
0f12: f0 0d     beq   $0f21
0f14: 68 04     cmp   a,#$04
0f16: f0 0a     beq   $0f22
0f18: f5 60 02  mov   a,$0260+x
0f1b: f0 04     beq   $0f21
0f1d: 74 b0     cmp   a,$b0+x
0f1f: 90 0a     bcc   $0f2b
0f21: 6f        ret

0f22: fc        inc   y
0f23: f7 3a     mov   a,($3a)+y
0f25: fd        mov   y,a
0f26: bc        inc   a
0f27: d4 90     mov   $90+x,a
0f29: 2f 95     bra   $0ec0
0f2b: fc        inc   y
0f2c: fc        inc   y
0f2d: f7 3a     mov   a,($3a)+y
0f2f: c4 39     mov   $39,a
0f31: db 90     mov   $90+x,y
0f33: f7 3a     mov   a,($3a)+y
0f35: fd        mov   y,a
0f36: cf        mul   ya
0f37: da 3e     movw  $3e,ya
0f39: ba 3c     movw  ya,$3c
0f3b: 5f e2 0e  jmp   $0ee2

0f3e: e4 d2     mov   a,$d2
0f40: 08 08     or    a,#$08
0f42: 3f fe 09  call  $09fe             ; get ENVX
0f45: d0 01     bne   $0f48
0f47: 6f        ret

; case ENVX=0
0f48: f8 df     mov   x,$df
0f4a: c4 39     mov   $39,a
0f4c: f4 90     mov   a,$90+x
0f4e: f0 17     beq   $0f67
0f50: 3f 50 0e  call  $0e50
0f53: f4 90     mov   a,$90+x
0f55: fd        mov   y,a
0f56: dc        dec   y
0f57: fc        inc   y
0f58: f7 3a     mov   a,($3a)+y
0f5a: 68 f2     cmp   a,#$f2
0f5c: d0 f9     bne   $0f57
0f5e: db 90     mov   $90+x,y
0f60: fc        inc   y
0f61: e8 00     mov   a,#$00
0f63: d4 90     mov   $90+x,a
0f65: 2f 05     bra   $0f6c
0f67: 3f 50 0e  call  $0e50
0f6a: 8d 02     mov   y,#$02
0f6c: f7 3a     mov   a,($3a)+y
0f6e: 08 a0     or    a,#$a0
0f70: 5d        mov   x,a
0f71: e4 d2     mov   a,$d2
0f73: 08 07     or    a,#$07
0f75: fd        mov   y,a
0f76: 7d        mov   a,x
0f77: 3f f7 09  call  $09f7             ; set GAIN
0f7a: dc        dec   y
0f7b: dc        dec   y
0f7c: e8 00     mov   a,#$00
0f7e: 3f f7 09  call  $09f7             ; set ADSR(1)
0f81: 6f        ret

0f82: da 3a     movw  $3a,ya
0f84: eb df     mov   y,$df
0f86: 3f eb 09  call  $09eb
0f89: c4 38     mov   $38,a             ; for i = 0, 7 do
0f8b: 0b 38     asl   $38
0f8d: 90 05     bcc   $0f94             ;   if arg1 & (0x80 >> i) then
0f8f: 3f ee 09  call  $09ee             ;     read next byte, save it to ($3a)+y
0f92: d7 3a     mov   ($3a)+y,a         ;   end
0f94: fc        inc   y                 ;   y = y + 1
0f95: e4 38     mov   a,$38
0f97: d0 f2     bne   $0f8b             ; repeat for all '1' bits
0f99: 6f        ret

0f9a: f4 09     mov   a,$09+x
0f9c: c4 dd     mov   $dd,a
0f9e: f8 df     mov   x,$df
0fa0: 0b dd     asl   $dd
0fa2: 90 2d     bcc   $0fd1
0fa4: e8 00     mov   a,#$00
0fa6: d5 e0 04  mov   $04e0+x,a
0fa9: d5 c0 03  mov   $03c0+x,a
0fac: d5 a0 04  mov   $04a0+x,a
0faf: d5 e0 03  mov   $03e0+x,a
0fb2: d5 00 04  mov   $0400+x,a
0fb5: d5 20 04  mov   $0420+x,a
0fb8: d5 40 04  mov   $0440+x,a
0fbb: d5 a0 01  mov   $01a0+x,a
0fbe: d4 70     mov   $70+x,a
0fc0: d4 90     mov   $90+x,a
0fc2: e8 88     mov   a,#$88
0fc4: d5 a0 03  mov   $03a0+x,a
0fc7: d5 80 03  mov   $0380+x,a
0fca: e8 54     mov   a,#$54
0fcc: d5 c0 04  mov   $04c0+x,a
0fcf: d4 50     mov   $50+x,a
0fd1: 3d        inc   x
0fd2: e4 dd     mov   a,$dd
0fd4: d0 ca     bne   $0fa0
0fd6: 6f        ret

; vcmd 03 - end subroutine
0fd7: f8 de     mov   x,$de
0fd9: f4 19     mov   a,$19+x           ; check the higher byte of return address
0fdb: f0 0d     beq   $0fea
; if return address is set, return from subroutine
0fdd: d4 01     mov   $01+x,a
0fdf: f4 18     mov   a,$18+x
0fe1: d4 00     mov   $00+x,a
0fe3: e8 00     mov   a,#$00
0fe5: d4 19     mov   $19+x,a
0fe7: 5f 61 07  jmp   $0761
; if return address is not set, end of track
0fea: 3f f8 0f  call  $0ff8
0fed: e8 00     mov   a,#$00
0fef: d4 09     mov   $09+x,a
0ff1: d4 49     mov   $49+x,a
0ff3: d4 30     mov   $30+x,a
0ff5: 5f 1d 07  jmp   $071d

0ff8: f8 de     mov   x,$de
0ffa: e4 da     mov   a,$da
0ffc: 48 ff     eor   a,#$ff
0ffe: 34 09     and   a,$09+x
1000: 8f 00 dd  mov   $dd,#$00
1003: 8d 08     mov   y,#$08
1005: 5c        lsr   a
1006: 2b dd     rol   $dd
1008: fe fb     dbnz  y,$1005
100a: 8d 5c     mov   y,#$5c
100c: e4 dd     mov   a,$dd
100e: 3f f7 09  call  $09f7             ; set KOF
1011: 6f        ret

1012: 5d        mov   x,a
1013: e8 0c     mov   a,#$0c
1015: 3f fe 09  call  $09fe             ; get MVOL(L)
1018: f0 28     beq   $1042
101a: c4 3b     mov   $3b,a
101c: 7d        mov   a,x
101d: 10 0e     bpl   $102d
101f: 28 7f     and   a,#$7f
1021: bc        inc   a
1022: c4 3c     mov   $3c,a
1024: e4 3b     mov   a,$3b
1026: 80        setc
1027: a4 3c     sbc   a,$3c
1029: b0 0d     bcs   $1038
102b: 2f 15     bra   $1042
102d: 60        clrc
102e: 84 d3     adc   a,$d3
1030: c4 d3     mov   $d3,a
1032: b0 01     bcs   $1035
1034: 6f        ret

1035: e4 3b     mov   a,$3b
1037: 9c        dec   a
1038: 8d 0c     mov   y,#$0c
103a: 3f f7 09  call  $09f7             ; set MVOL(L)
103d: 8d 1c     mov   y,#$1c
103f: 5f f7 09  jmp   $09f7             ; set MVOL(R)

1042: 8f 00 d1  mov   $d1,#$00
1045: e8 ff     mov   a,#$ff
1047: 8d 5c     mov   y,#$5c
1049: 3f f7 09  call  $09f7             ; set KOF
104c: e8 00     mov   a,#$00
104e: c4 49     mov   $49,a
1050: c4 4b     mov   $4b,a
1052: c4 4d     mov   $4d,a
1054: c4 4f     mov   $4f,a
1056: 6f        ret

1057: db $01,$02,$04,$08,$10,$20,$40,$80
105f: db $7f,$bf,$df,$ef,$f7,$fb,$fd,$fe

; pitch table
1067: dw $10b0  ; c
1068: dw $11ae  ; c#
106b: dw $12bb  ; d
106d: dw $13d8  ; d#
106f: dw $1506  ; e
1071: dw $1646  ; f
1073: dw $179a  ; f#
1075: dw $1901  ; g
1077: dw $1a7d  ; g#
1079: dw $1c11  ; a
107b: dw $1dbc  ; a#
107d: dw $1f80  ; b
107f: dw $2160  ; c'

dc10: dw $dd17
