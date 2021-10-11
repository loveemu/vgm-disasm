; Fire Emblem: Monshou no Nazo SPC - loveemu labo
; Disassembler: spcdas v0.01

0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x              ; set SP to (01)cf
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 f0     cmp   x,#$f0
040a: d0 fb     bne   $0407             ; zero 00-ef
040c: 5d        mov   x,a
040d: d5 00 03  mov   $0300+x,a
0410: d5 00 02  mov   $0200+x,a
0413: d5 00 01  mov   $0100+x,a
0416: 3d        inc   x
0417: d0 f4     bne   $040d             ; zero 0100-03ff
0419: bc        inc   a
041a: 3f 2d 0b  call  $0b2d             ; set echo delay to 1 (16ms)
041d: a2 34     set5  $34               ; disable echo write
041f: e8 ff     mov   a,#$ff
0421: 8d 5c     mov   y,#$5c
0423: 3f f2 05  call  $05f2             ; key off all voices
0426: e8 60     mov   a,#$60
0428: 8d 0c     mov   y,#$0c
042a: 3f f2 05  call  $05f2             ; master vol L = $60
042d: 8d 1c     mov   y,#$1c
042f: 3f f2 05  call  $05f2             ; master vol R = $60
0432: e8 1b     mov   a,#$1b
0434: 8d 5d     mov   y,#$5d
0436: 3f f2 05  call  $05f2             ; source dir = $1b00
0439: e8 b0     mov   a,#$b0
043b: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
043e: e8 10     mov   a,#$10
0440: c5 fa 00  mov   $00fa,a           ; set timer0 latch to #$10 (500 Hz, 2ms)
0443: c4 3e     mov   $3e,a
0445: e8 81     mov   a,#$81
0447: c5 f1 00  mov   $00f1,a           ; start timer0
; main loop
044a: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
044c: ad 05     cmp   y,#$05
044e: f0 07     beq   $0457
0450: b0 08     bcs   $045a
0452: 69 39 38  cmp   ($38),($39)
0455: d0 11     bne   $0468
0457: e3 38 0e  bbs7  $38,$0468
045a: f6 ba 04  mov   a,$04ba+y
045d: c5 f2 00  mov   $00f2,a
0460: f6 c4 04  mov   a,$04c4+y
0463: 5d        mov   x,a
0464: e6        mov   a,(x)
0465: c5 f3 00  mov   $00f3,a           ; write to DSP reg
0468: fe e2     dbnz  y,$044c           ; loop for each reg
046a: cb 15     mov   $15,y             ; KON shadow
046c: cb 16     mov   $16,y             ; KOF shadow
046e: e4 12     mov   a,$12
0470: 44 13     eor   a,$13
0472: 5c        lsr   a
0473: 5c        lsr   a
0474: ed        notc
0475: 6b 12     ror   $12
0477: 6b 13     ror   $13
0479: ec fd 00  mov   y,$00fd
047c: f0 fb     beq   $0479             ; wait for counter0 increment
047e: 6d        push  y
047f: e8 20     mov   a,#$20
0481: cf        mul   ya
0482: 60        clrc
0483: 84 1e     adc   a,$1e
0485: c4 1e     mov   $1e,a
0487: 90 0a     bcc   $0493
0489: 3f bb 0e  call  $0ebb
048c: 69 39 38  cmp   ($38),($39)
048f: f0 02     beq   $0493
0491: ab 38     inc   $38
0493: ee        pop   y
0494: e4 3e     mov   a,$3e
0496: cf        mul   ya
0497: 60        clrc
0498: 84 3c     adc   a,$3c
049a: c4 3c     mov   $3c,a
049c: 90 05     bcc   $04a3
049e: 3f ab 06  call  $06ab
04a1: 2f a7     bra   $044a
04a3: e4 1d     mov   a,$1d
04a5: f0 fa     beq   $04a1
04a7: cd 00     mov   x,#$00
04a9: 8f 01 32  mov   $32,#$01          ; first voice
04ac: f4 23     mov   a,$23+x
04ae: f0 03     beq   $04b3             ; skip call if vptr == 0
04b0: 3f dd 0d  call  $0ddd             ; do per-voice fades/dsps
04b3: 3d        inc   x
04b4: 3d        inc   x
04b5: 0b 32     asl   $32
04b7: d0 f3     bne   $04ac             ; loop for each voice
04b9: 2f e6     bra   $04a1

; EVOL(L),EVOL(R),EFB,EON,FLG,KON,KOF,NON,PMON,KOF
; dsp shadow addrs ($04c4+1) for dsp regs ($04ba+1)
04bb: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
04c5: db $4c,$4e,$3a,$36,$34,$15,$08,$35,$37,$16

04cf: 6f        ret

; handle a note vcmd (80-d5)
04d0: ad ca     cmp   y,#$ca
04d2: 90 32     bcc   $0506
; vcmds ca-d5 - percussion note
04d4: 13 ca 07  bbc0  $ca,$04de
04d7: 3f 45 09  call  $0945             ; set sample
04da: 8d a4     mov   y,#$a4
04dc: 2f 28     bra   $0506             ; dispatch as note #$a4
; work different if ($ca & 1) != 0: use customized percussion table
04de: cb 0a     mov   $0a,y             ; y = perc note number
04e0: f6 a4 00  mov   a,$00a4+y         ; read percussion patch table
04e3: c4 0b     mov   $0b,a
04e5: 28 40     and   a,#$40            ; test bit 6 of $00a4
04e7: f0 05     beq   $04ee
; if ($00a4 & 0x40) != 0 then
04e9: 3f a3 0a  call  $0aa3             ; echo on
04ec: 2f 03     bra   $04f1
; else if ($00a4 & 0x40) == 0 then
04ee: 3f b3 0a  call  $0ab3             ; echo off
; end
04f1: e4 0b     mov   a,$0b
04f3: 28 bf     and   a,#$bf            ; excluding bit #$40 from patch #
04f5: 3f 45 09  call  $0945             ; set sample
04f8: eb 0a     mov   y,$0a
04fa: f6 bc 00  mov   a,$00bc+y         ; read percussion pan table
04fd: 30 03     bmi   $0502
04ff: 3f a5 09  call  $09a5             ; set pan
0502: f6 b0 00  mov   a,$00b0+y         ; read percussion note number table
0505: fd        mov   y,a
; vcmds 80-c7,c8,c9 - note/tie/rest
0506: ad c8     cmp   y,#$c8
0508: b0 c5     bcs   $04cf
050a: e4 14     mov   a,$14
050c: 24 32     and   a,$32
050e: d0 bf     bne   $04cf
0510: dd        mov   a,y
0511: 28 7f     and   a,#$7f            ; 80-c7 => 00-47
0513: 60        clrc
0514: 84 3b     adc   a,$3b             ; add global transpose
0516: 60        clrc
0517: 95 41 03  adc   a,$0341+x         ; add per-voice transpose
051a: d5 b1 02  mov   $02b1+x,a         ; save note number (integer)
051d: f5 d1 02  mov   a,$02d1+x         ; per-voice tuning
0520: d5 b0 02  mov   $02b0+x,a         ; save note number (fraction)
0523: f5 11 03  mov   a,$0311+x
0526: 5c        lsr   a
0527: e8 00     mov   a,#$00
0529: 7c        ror   a
052a: d5 00 03  mov   $0300+x,a
052d: e8 00     mov   a,#$00
052f: d4 96     mov   $96+x,a
0531: d5 67 00  mov   $0067+x,a
0534: d5 30 03  mov   $0330+x,a
0537: d4 a6     mov   $a6+x,a
0539: 09 32 49  or    ($49),($32)       ; set volume changed flg
053c: 09 32 15  or    ($15),($32)       ; set key on shadow bit
053f: f5 e0 02  mov   a,$02e0+x         ; pitch envelope counter
0542: d4 86     mov   $86+x,a           ; portamento counter
0544: f0 1e     beq   $0564
0546: f5 e1 02  mov   a,$02e1+x
0549: d4 87     mov   $87+x,a
054b: f5 f0 02  mov   a,$02f0+x         ; pitch envelope mode (0:attack / 1:release)
054e: d0 0a     bne   $055a
0550: f5 b1 02  mov   a,$02b1+x
0553: 80        setc
0554: b5 f1 02  sbc   a,$02f1+x
0557: d5 b1 02  mov   $02b1+x,a
055a: f5 f1 02  mov   a,$02f1+x
055d: 60        clrc
; set DSP pitch from $0a/b
055e: 95 b1 02  adc   a,$02b1+x
0561: 3f 96 0b  call  $0b96
0564: 3f ae 0b  call  $0bae
0567: 8d 00     mov   y,#$00
0569: e4 0b     mov   a,$0b
056b: 80        setc
056c: a8 34     sbc   a,#$34
056e: b0 09     bcs   $0579
0570: e4 0b     mov   a,$0b
0572: 80        setc
0573: a8 13     sbc   a,#$13
0575: b0 06     bcs   $057d
0577: dc        dec   y
0578: 1c        asl   a
0579: 7a 0a     addw  ya,$0a
057b: da 0a     movw  $0a,ya
057d: 4d        push  x
057e: e4 0b     mov   a,$0b
; get pitch from note number in A (with octave correction)
0580: 1c        asl   a
0581: 8d 00     mov   y,#$00
0583: cd 18     mov   x,#$18
0585: 9e        div   ya,x
0586: 5d        mov   x,a
0587: f6 fa 05  mov   a,$05fa+y
058a: c4 0f     mov   $0f,a
058c: f6 f9 05  mov   a,$05f9+y
058f: c4 0e     mov   $0e,a             ; set $0e/f from pitch table
0591: f6 fc 05  mov   a,$05fc+y
0594: 2d        push  a
0595: f6 fb 05  mov   a,$05fb+y
0598: ee        pop   y
0599: 9a 0e     subw  ya,$0e
059b: eb 0a     mov   y,$0a
059d: cf        mul   ya
059e: dd        mov   a,y
059f: 8d 00     mov   y,#$00
05a1: 7a 0e     addw  ya,$0e
05a3: cb 0f     mov   $0f,y
05a5: 1c        asl   a
05a6: 2b 0f     rol   $0f
05a8: c4 0e     mov   $0e,a
05aa: 2f 04     bra   $05b0
05ac: 4b 0f     lsr   $0f
05ae: 7c        ror   a
05af: 3d        inc   x
05b0: c8 06     cmp   x,#$06
05b2: d0 f8     bne   $05ac
05b4: c4 0e     mov   $0e,a
05b6: ce        pop   x
05b7: f5 20 02  mov   a,$0220+x
05ba: eb 0f     mov   y,$0f
05bc: cf        mul   ya
05bd: da 10     movw  $10,ya
05bf: f5 20 02  mov   a,$0220+x
05c2: eb 0e     mov   y,$0e
05c4: cf        mul   ya
05c5: 6d        push  y
05c6: f5 21 02  mov   a,$0221+x
05c9: eb 0e     mov   y,$0e
05cb: cf        mul   ya
05cc: 7a 10     addw  ya,$10
05ce: da 10     movw  $10,ya
05d0: f5 21 02  mov   a,$0221+x
05d3: eb 0f     mov   y,$0f
05d5: cf        mul   ya
05d6: fd        mov   y,a
05d7: ae        pop   a
05d8: 7a 10     addw  ya,$10
05da: da 10     movw  $10,ya
05dc: 7d        mov   a,x               ; set voice X pitch DSP reg from $10/1
05dd: 9f        xcn   a                 ;  (if vbit clear in $14)
05de: 5c        lsr   a
05df: 08 02     or    a,#$02
05e1: fd        mov   y,a               ; Y = voice X pitch DSP reg
05e2: e4 10     mov   a,$10
05e4: 3f ea 05  call  $05ea
05e7: fc        inc   y
05e8: e4 11     mov   a,$11
; write A to DSP reg Y if vbit clear in $14
05ea: 2d        push  a
05eb: e4 32     mov   a,$32
05ed: 24 14     and   a,$14
05ef: ae        pop   a
05f0: d0 06     bne   $05f8
; write A to DSP reg Y
05f2: cc f2 00  mov   $00f2,y
05f5: c5 f3 00  mov   $00f3,a
05f8: 6f        ret

; pitch table
05f9: dw $085f
05fb: dw $08de
05fd: dw $0965
05ff: dw $09f4
0601: dw $0a8c
0603: dw $0b2c
0605: dw $0bd6
0607: dw $0c8b
0609: dw $0d4a
060b: dw $0e14
060d: dw $0eea
060f: dw $0fcd
0611: dw $10be

; read dur%/vel info, then continue
0613: eb ca     mov   y,$ca
0615: 30 18     bmi   $062f             ; MSB=1 for new style
; compatible with usual music engine
0617: 2d        push  a
0618: 9f        xcn   a
0619: 28 07     and   a,#$07
061b: fd        mov   y,a
061c: f6 a3 0e  mov   a,$0ea3+y
061f: d5 01 02  mov   $0201+x,a         ; set dur% from high nybble
0622: ae        pop   a
0623: 28 0f     and   a,#$0f
0625: fd        mov   y,a
0626: f6 ab 0e  mov   a,$0eab+y
0629: d5 10 02  mov   $0210+x,a         ; set per-note vol from low nybble
062c: 5f 22 07  jmp   $0722
; intelligent style - set from larger table
062f: 68 40     cmp   a,#$40
0631: b0 0c     bcs   $063f
; 00-3f - set dur% from least 6 bits
0633: 28 3f     and   a,#$3f
0635: fd        mov   y,a
0636: f6 00 ff  mov   a,$ff00+y
0639: d5 01 02  mov   $0201+x,a
063c: 5f 43 07  jmp   $0743
; 40-7f - set per-note vol from least 6 bits
063f: 28 3f     and   a,#$3f
0641: fd        mov   y,a
0642: f6 00 ff  mov   a,$ff00+y
0645: d5 10 02  mov   $0210+x,a
0648: 5f 22 07  jmp   $0722

; read $1f/20 into YA with advancing the ptr
064b: 8d 00     mov   y,#$00
064d: f7 1f     mov   a,($1f)+y
064f: 3a 1f     incw  $1f
0651: 2d        push  a
0652: f7 1f     mov   a,($1f)+y
0654: 3a 1f     incw  $1f
0656: fd        mov   y,a
0657: ae        pop   a
0658: 6f        ret

; play song in A (zero for pause)
0659: 1c        asl   a
065a: f0 0d     beq   $0669             ; 0 = pause
065c: 5d        mov   x,a
065d: f5 5f 19  mov   a,$195f+x
0660: fd        mov   y,a
0661: f5 5e 19  mov   a,$195e+x
0664: da 1f     movw  $1f,ya
0666: 8f 02 1b  mov   $1b,#$02
0669: e4 14     mov   a,$14
066b: 48 ff     eor   a,#$ff
066d: 0e 16 00  tset1 $0016
0670: 6f        ret

; reset song params
0671: cd 0e     mov   x,#$0e
0673: 8f 80 32  mov   $32,#$80          ; last voice
0676: e8 ff     mov   a,#$ff
0678: d5 51 02  mov   $0251+x,a         ; voice volume = $ff
067b: e8 0a     mov   a,#$0a
067d: 3f a5 09  call  $09a5             ; pan = $0a.00
0680: d5 11 02  mov   $0211+x,a         ; zero instrument
0683: d5 d1 02  mov   $02d1+x,a         ; zero tuning
0686: d5 41 03  mov   $0341+x,a         ; zero per-voice transpose
0689: d5 e0 02  mov   $02e0+x,a
068c: d4 97     mov   $97+x,a
068e: d4 a7     mov   $a7+x,a
0690: d4 ba     mov   $ba+x,a
0692: 1d        dec   x
0693: 1d        dec   x
0694: 4b 32     lsr   $32
0696: d0 de     bne   $0676             ; loop for each voice
0698: c4 45     mov   $45,a             ; zero master vol fade counter
069a: c4 53     mov   $53,a             ; zero echo vol fade counter
069c: c4 3f     mov   $3f,a             ; zero tempo fade counter
069e: c4 3b     mov   $3b,a             ; zero global transpose
06a0: c4 21     mov   $21,a             ; zero block repeat count
06a2: c4 4a     mov   $4a,a             ; 
06a4: 8f c0 44  mov   $44,#$c0          ; master vol
06a7: 8f 20 3e  mov   $3e,#$20          ; tempo
06aa: 6f        ret

06ab: eb 17     mov   y,$17
06ad: e4 1d     mov   a,$1d
06af: c4 17     mov   $17,a
06b1: 7e 1d     cmp   y,$1d
06b3: d0 a4     bne   $0659
06b5: e4 1d     mov   a,$1d
06b7: f0 f1     beq   $06aa
06b9: e4 1b     mov   a,$1b
06bb: f0 54     beq   $0711
;
06bd: 6e 1b b1  dbnz  $1b,$0671
06c0: 3f 4b 06  call  $064b             ; read block addr from $1f/20, advance ptr
06c3: d0 1c     bne   $06e1             ; load start addresses, if hi-byte is non zero
06c5: fd        mov   y,a               ; refetch lo-byte
06c6: d0 08     bne   $06d0             ; key off, return if also zero:
; $0000 - song end
06c8: c4 1d     mov   $1d,a
06ca: c4 17     mov   $17,a
06cc: c4 b9     mov   $b9,a
06ce: 2f 89     bra   $0659
; $00xx - repeat/goto
06d0: 8b 21     dec   $21
06d2: 10 02     bpl   $06d6
06d4: c4 21     mov   $21,a
06d6: 3f 4b 06  call  $064b             ; read next word as well
06d9: f8 21     mov   x,$21
06db: f0 e3     beq   $06c0
06dd: da 1f     movw  $1f,ya            ;   "goto" that address
06df: 2f df     bra   $06c0             ; continue
; load start addresses - hi-byte not zero
06e1: da 10     movw  $10,ya
06e3: 8d 0f     mov   y,#$0f
06e5: f7 10     mov   a,($10)+y
06e7: d6 22 00  mov   $0022+y,a         ; set reading ptr
06ea: dc        dec   y
06eb: 10 f8     bpl   $06e5             ; loop for each voice
;
06ed: cd 00     mov   x,#$00
06ef: 8f 01 32  mov   $32,#$01          ; first voice
06f2: f4 23     mov   a,$23+x
06f4: f0 0a     beq   $0700             ; if vptr hi != 0
06f6: f5 11 02  mov   a,$0211+x
06f9: d0 05     bne   $0700
06fb: e8 00     mov   a,#$00
06fd: 3f 45 09  call  $0945             ; set instrument #0 if not set
0700: e8 00     mov   a,#$00
0702: d4 66     mov   $66+x,a           ; zero subroutine repeat counter
0704: d4 76     mov   $76+x,a           ; zero voice vol fade counter
0706: d4 77     mov   $77+x,a           ; zero pan fade counter
0708: bc        inc   a
0709: d4 56     mov   $56+x,a           ; set duration counter to 1
070b: 3d        inc   x
070c: 3d        inc   x
070d: 0b 32     asl   $32               ; next voice
070f: d0 e1     bne   $06f2             ; foreach voice
;
0711: cd 00     mov   x,#$00
0713: d8 49     mov   $49,x
0715: 8f 01 32  mov   $32,#$01          ; first voice
0718: d8 33     mov   $33,x
071a: f4 23     mov   a,$23+x
071c: f0 5c     beq   $077a             ; next if vptr hi zero
071e: 9b 56     dec   $56+x             ; dec duration counter
0720: d0 52     bne   $0774             ; if not zero, skip to voice readahead
0722: 3f 57 08  call  $0857             ; read vcmd into A and Y
0725: d0 17     bne   $073e
; vcmd 00 - end repeat/return
0727: f4 66     mov   a,$66+x
0729: f0 95     beq   $06c0             ; read next block if loop has been done
; repeat / return from subroutine
072b: 3f 98 0a  call  $0a98             ; jump to loop start addr
072e: 9b 66     dec   $66+x             ; dec repeat count
0730: d0 f0     bne   $0722             ; if the loop has been done
0732: f5 30 02  mov   a,$0230+x
0735: d4 22     mov   $22+x,a
0737: f5 31 02  mov   a,$0231+x
073a: d4 23     mov   $23+x,a           ; back to return addr instead
073c: 2f e4     bra   $0722             ; then continue
; vcmd branches
073e: 30 0b     bmi   $074b             ; vcmds 01-7f - note info:
0740: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
0743: 3f 57 08  call  $0857             ;   read next byte
0746: 30 03     bmi   $074b             ;   if note note then
0748: 5f 13 06  jmp   $0613             ;   read dur%/vel
; vcmd branches 80-ff
074b: 68 d6     cmp   a,#$d6
074d: 90 05     bcc   $0754
074f: 3f 45 08  call  $0845             ; vcmds d6-ff
0752: 2f ce     bra   $0722
; vcmds 80-d5 - note
0754: 3f d0 04  call  $04d0             ; handle note cmd if vbit $14 clear
0757: f5 00 02  mov   a,$0200+x
075a: d4 56     mov   $56+x,a           ; set duration counter from duration
075c: fd        mov   y,a
075d: 6d        push  y
075e: f5 01 02  mov   a,$0201+x
0761: cf        mul   ya
0762: dd        mov   a,y
0763: d0 01     bne   $0766
0765: bc        inc   a
0766: d4 57     mov   $57+x,a           ; set actual key-off dur counter
0768: ee        pop   y
0769: f4 ba     mov   a,$ba+x           ; apply duration rate
076b: cf        mul   ya
076c: dd        mov   a,y
076d: d0 01     bne   $0770
076f: bc        inc   a                 ; minimum duration = 1
0770: d4 bb     mov   $bb+x,a           ; save adjusted note duration
0772: 2f 03     bra   $0777
0774: 3f d3 0c  call  $0cd3             ; do readahead
0777: 3f 76 0b  call  $0b76
077a: 3d        inc   x
077b: 3d        inc   x
077c: 0b 32     asl   $32
077e: d0 98     bne   $0718             ; next voice
0780: e4 3f     mov   a,$3f             ; tempo fade counter
0782: f0 0b     beq   $078f
0784: ba 41     movw  ya,$41
0786: 7a 3d     addw  ya,$3d            ; add tempo fade to tempo
0788: 6e 3f 02  dbnz  $3f,$078d
078b: ba 3f     movw  ya,$3f            ; last time: move tempo target to tempo
078d: da 3d     movw  $3d,ya
078f: e4 53     mov   a,$53             ; echo vol fade counter
0791: f0 15     beq   $07a8
0793: ba 4f     movw  ya,$4f
0795: 7a 4b     addw  ya,$4b            ; add echo L delta to echo L vol
0797: da 4b     movw  $4b,ya
0799: ba 51     movw  ya,$51
079b: 7a 4d     addw  ya,$4d            ; add echo R delta to echo R vol
079d: 6e 53 06  dbnz  $53,$07a6
07a0: ba 53     movw  ya,$53
07a2: da 4b     movw  $4b,ya
07a4: eb 55     mov   y,$55
07a6: da 4d     movw  $4d,ya
07a8: e4 45     mov   a,$45             ; master vol fade counter
07aa: f0 0e     beq   $07ba
07ac: ba 47     movw  ya,$47
07ae: 7a 43     addw  ya,$43            ; add master vol delta to value
07b0: 6e 45 02  dbnz  $45,$07b5
07b3: ba 45     movw  ya,$45
07b5: da 43     movw  $43,ya
07b7: 8f ff 49  mov   $49,#$ff          ; set all vol chg flags
07ba: cd 00     mov   x,#$00
07bc: 8f 01 32  mov   $32,#$01          ; first voice
07bf: f4 23     mov   a,$23+x
07c1: f0 03     beq   $07c6
07c3: 3f f4 0b  call  $0bf4             ; do per-voice fades
07c6: 3d        inc   x
07c7: 3d        inc   x
07c8: 0b 32     asl   $32
07ca: d0 f3     bne   $07bf             ; loop for each voice
07cc: 6f        ret

; vcmd dispatch table ($0721)
07cd: dw $0945  ; d6 - set instrument
07cf: dw $09a5  ; d7 - pan
07d1: dw $09b3  ; d8 - pan fade
07d3: dw $09cc  ; d9 - vibrato on
07d5: dw $09d8  ; da - vibrato off
07d7: dw $09f3  ; db - master volume
07d9: dw $09f8  ; dc - master volume fade
07db: dw $0a0f  ; dd - tempo
07dd: dw $0a14  ; de - tempo fade
07df: dw $0a26  ; df - global transpose
07e1: dw $0a29  ; e0 - per-voice transpose
07e3: dw $0a2d  ; e1 - tremolo on
07e5: dw $0a39  ; e2 - tremolo off
07e7: dw $0a5a  ; e3 - volume
07e9: dw $0a63  ; e4 - volume fade
07eb: dw $0a80  ; e5 - call subroutine
07ed: dw $09e3  ; e6 - vibrato fade
07ef: dw $0a3c  ; e7 - pitch envelope (release)
07f1: dw $0a40  ; e8 - pitch envelope (attack)
07f3: dw $0a56  ; e9 - pitch envelope off
07f5: dw $0a7c  ; ea - tuning
07f7: dw $0ac5  ; eb - echo vbits/volume
07f9: dw $0b04  ; ec - disable echo
07fb: dw $0b0b  ; ed - set echo params
07fd: dw $0ae3  ; ee - echo volume fade
07ff: dw $0b86  ; ef - pitch slide
0801: dw $0b73  ; f0 - set perc base
0803: dw $0aa3  ; f1 - echo on
0805: dw $0ab3  ; f2 - echo off
0807: dw $0bb9  ; f3 - legato on
0809: dw $0bbf  ; f4 - legato off
080b: dw $08af  ; f5 - set/clear $ca bitflag, or wait for APU port #2
080d: dw $08d0  ; f6 - write to APU port #0
080f: dw $0bc5  ; f7 - relational jump (conditional)
0811: dw $0bce  ; f8 - relational jump
0813: dw $089b  ; f9 - unknown (copy 36 bytes data to unused area?)
0815: dw $0884  ; fa - define voice params
0817: dw $0905  ; fb - set voice params
0819: dw $08d4  ; fc - set ADSR
081b: dw $08ec  ; fd - set duration rate and GAIN
                ; fe-ff undefined

; vcmd lengths ($07c7)
081d: db                         $01,$01 ; d6-d7
081f: db $02,$03,$00,$01,$02,$01,$02,$01 ; d8-df
0827: db $01,$03,$00,$01,$02,$03,$01,$03 ; e0-e7
082f: db $03,$00,$01,$03,$00,$03,$03,$03 ; e8-ef
0837: db $01,$00,$00,$00,$00,$01,$01,$01 ; f0-f7
083f: db $01,$00,$01,$01,$02,$02         ; f8-fd

; dispatch vcmd in A (d6-ff)
0845: 1c        asl   a                 ; d6-ff => ac-fe (8 bit)
0846: fd        mov   y,a
0847: f6 22 07  mov   a,$0722+y
084a: 2d        push  a
084b: f6 21 07  mov   a,$0721+y
084e: 2d        push  a                 ; push jump address from table
084f: dd        mov   a,y
0850: 5c        lsr   a
0851: fd        mov   y,a
0852: f6 c7 07  mov   a,$07c7+y         ; vcmd length
0855: f0 06     beq   $085d             ; if non zero
; read new argument to A and Y
0857: e7 22     mov   a,($22+x)
; advance reading ptr
0859: bb 22     inc   $22+x             ; inc reading ptr
085b: f0 02     beq   $085f
085d: fd        mov   y,a
085e: 6f        ret
085f: bb 23     inc   $23+x
0861: fd        mov   y,a               ; refetch arg byte
0862: 6f        ret

; overwrite instrument table by sequence
0863: 28 3f     and   a,#$3f
0865: 8d 06     mov   y,#$06
0867: cf        mul   ya                ; index: (arg1 & 0x3f) * 6
0868: da 0e     movw  $0e,ya
086a: 60        clrc
086b: 98 80 0e  adc   $0e,#$80
086e: 98 19 0f  adc   $0f,#$19          ; instrument table $1980
0871: fb 23     mov   y,$23+x
0873: f4 22     mov   a,$22+x
0875: da 0a     movw  $0a,ya
0877: 8d 05     mov   y,#$05
0879: f7 0a     mov   a,($0a)+y
087b: d7 0e     mov   ($0e)+y,a
087d: dc        dec   y
087e: 10 f9     bpl   $0879             ; overwrite instrument definition (6 bytes)
0880: e8 06     mov   a,#$06
0882: 2f 0d     bra   $0891             ; skip 6 byte arguments
; vcmd fa - define voice params
0884: 30 dd     bmi   $0863             ; overwrite instrument table if arg1 < 0
0886: f4 22     mov   a,$22+x
0888: c4 b6     mov   $b6,a
088a: f4 23     mov   a,$23+x
088c: c4 b7     mov   $b7,a             ; save current address into $b6/7 (predefined voice param table, see vcmd fb)
088e: e8 04     mov   a,#$04
0890: cf        mul   ya                ; skip arg1 (number of items) * 4 bytes
; add A to reading ptr
0891: 60        clrc
0892: 94 22     adc   a,$22+x
0894: d4 22     mov   $22+x,a
0896: 90 02     bcc   $089a
0898: bb 23     inc   $23+x
089a: 6f        ret

; vcmd f9
089b: fb 23     mov   y,$23+x
089d: f4 22     mov   a,$22+x
089f: da 0a     movw  $0a,ya
08a1: 8d 23     mov   y,#$23
08a3: f7 0a     mov   a,($0a)+y
08a5: d6 6e 01  mov   $016e+y,a         ; copy args to $016e+y ($016e-$0191; unused area?)
08a8: dc        dec   y
08a9: 10 f8     bpl   $08a3             ; 36 bytes
08ab: e8 24     mov   a,#$24
08ad: 2f e2     bra   $0891

; vcmd f5 - set/clear $ca bitflag, or wait for APU port #2
08af: ad f0     cmp   y,#$f0
08b1: 90 19     bcc   $08cc
; when arg1 >= 0xf0:
08b3: 12 0a     clr0  $0a
08b5: 9f        xcn   a
08b6: 30 02     bmi   $08ba             ; if (arg1 & 0x08) != 0 then
08b8: 02 0a     set0  $0a               ;   $0a |= 1
08ba: 9f        xcn   a
08bb: 28 07     and   a,#$07
08bd: fd        mov   y,a
08be: f6 39 11  mov   a,$1139+y         ; a = 1 << (arg1 & 0x07)
08c1: 13 0a 04  bbc0  $0a,$08c8
; when (arg1 & 0x08) == 0:
08c4: 0e ca 00  tset1 $00ca             ; $ca |= a;
08c7: 6f        ret
; when (arg1 & 0x08) != 0:
08c8: 4e ca 00  tclr1 $00ca             ; $ca &= ~a;
08cb: 6f        ret
; when arg1 < 0xf0:
; wait for APU port #2
08cc: cc 6c 01  mov   $016c,y           ; arg1: zero or non-zero (wait for APU port #2 later, if non-zero)
08cf: 6f        ret

; $ca:
; bit 0 ($01) - use customized percussion tables
; bit 7 ($80) - use customized note duration/velocity format

; vcmd f6 - write to APU port #0
08d0: cc 6d 01  mov   $016d,y
08d3: 6f        ret

; vcmd fc - set ADSR
08d4: d5 51 03  mov   $0351+x,a         ; arg1: ADSR(1)
08d7: 7d        mov   a,x
08d8: 9f        xcn   a
08d9: 5c        lsr   a
08da: 08 05     or    a,#$05
08dc: fd        mov   y,a
08dd: f5 51 03  mov   a,$0351+x
08e0: 3f ea 05  call  $05ea             ; set ADSR(1)
08e3: 6d        push  y
08e4: 3f 57 08  call  $0857             ; arg2: ADSR(2)
08e7: ee        pop   y
08e8: fc        inc   y
08e9: 5f ea 05  jmp   $05ea             ; set ADSR(2)

; vcmd fd - set duration rate and GAIN
08ec: d4 ba     mov   $ba+x,a           ; arg1: duration rate
08ee: 7d        mov   a,x
08ef: 9f        xcn   a
08f0: 5c        lsr   a
08f1: 08 07     or    a,#$07
08f3: 2d        push  a
08f4: 3f 57 08  call  $0857
08f7: d5 50 03  mov   $0350+x,a         ; arg2: GAIN
08fa: ee        pop   y
08fb: 5f ea 05  jmp   $05ea             ; set GAIN

; transpose table used by vcmd fb ($08fd+y)
; -2oct,-1oct,-1,0,+1,+1oct,+2oct
; -24, -12, -1, 0, 1, 12, 24
08fe: db $e8,$f4,$ff,$00,$01,$0c,$18

; vcmd fb - set voice params
0905: 1c        asl   a
0906: 1c        asl   a
0907: fd        mov   y,a               ; index: arg1 (voice param index) * 4
0908: f7 b6     mov   a,($b6)+y         ; $b6/7: predefined voice param table (set by vcmd fa)
090a: fc        inc   y
090b: 2d        push  a                 ; offset +0, instrument #
090c: f7 b6     mov   a,($b6)+y
090e: fc        inc   y
090f: d5 51 02  mov   $0251+x,a         ; offset +1, volume
0912: f7 b6     mov   a,($b6)+y
0914: fc        inc   y
0915: d5 a1 02  mov   $02a1+x,a         ; offset +2, pan
0918: 28 1f     and   a,#$1f
091a: d5 81 02  mov   $0281+x,a
091d: e8 00     mov   a,#$00
091f: d5 80 02  mov   $0280+x,a
0922: d5 50 02  mov   $0250+x,a
0925: d4 ba     mov   $ba+x,a           ; zero duration rate
0927: f7 b6     mov   a,($b6)+y         ; offset +3: transpose/tuning
0929: c4 0a     mov   $0a,a
092b: 28 0f     and   a,#$0f
092d: f0 07     beq   $0936
; lower 4 bits: tuning (skip if 0)
092f: 9c        dec   a                 ; ((value & 15) - 1) * 5 => 0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70
0930: 8d 05     mov   y,#$05
0932: cf        mul   ya
0933: d5 d1 02  mov   $02d1+x,a         ; tuning
;
0936: e4 0a     mov   a,$0a
0938: 28 70     and   a,#$70
093a: f0 08     beq   $0944
; higher 3 bits: transpose (skip if 0)
093c: 9f        xcn   a
093d: fd        mov   y,a
093e: f6 fd 08  mov   a,$08fd+y         ; get transpose amount from lookup table
0941: d5 41 03  mov   $0341+x,a         ; transpose
0944: ae        pop   a
; vcmd d6 - set instrument
0945: d5 11 02  mov   $0211+x,a
0948: fd        mov   y,a
0949: 10 06     bpl   $0951             ; if percussion note:
094b: 80        setc
094c: a8 ca     sbc   a,#$ca            ;   ca-d5 => 00-0b
094e: 60        clrc
094f: 84 4a     adc   a,$4a             ; add perc patch base
0951: 8d 06     mov   y,#$06
; set sample A in bank at $0e/f width Y
0953: cf        mul   ya
0954: da 0e     movw  $0e,ya
0956: 60        clrc
0957: 98 80 0e  adc   $0e,#$80
095a: 98 19 0f  adc   $0f,#$19          ; instrument table $1980
095d: e4 14     mov   a,$14
095f: 24 32     and   a,$32
0961: d0 41     bne   $09a4
0963: 4d        push  x
0964: 7d        mov   a,x
0965: 9f        xcn   a
0966: 5c        lsr   a
0967: 08 04     or    a,#$04            ; voice X SRCN
0969: 5d        mov   x,a
096a: 8d 00     mov   y,#$00
096c: f7 0e     mov   a,($0e)+y         ; offset +0: SRCN
096e: 10 0e     bpl   $097e
0970: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0972: 38 20 34  and   $34,#$20          ;  keep echo bit from FLG
0975: 0e 34 00  tset1 $0034             ;  OR in noise freq
0978: 09 32 35  or    ($35),($32)       ;  set vbit in noise enable
097b: dd        mov   a,y               ;  set SRCN to 0
097c: 2f 07     bra   $0985             ; else
097e: e4 32     mov   a,$32
0980: 4e 35 00  tclr1 $0035             ;  clear noise vbit
0983: f7 0e     mov   a,($0e)+y         ;  set SRCN from table
0985: c9 f2 00  mov   $00f2,x
0988: c5 f3 00  mov   $00f3,a
098b: 3d        inc   x
098c: fc        inc   y
098d: ad 04     cmp   y,#$04
098f: d0 f2     bne   $0983             ; set SRCN, ADSR(1), ADSR(2), GAIN from table
0991: ce        pop   x
0992: f7 0e     mov   a,($0e)+y
0994: d5 21 02  mov   $0221+x,a         ; offset +4: pitch multiplier
0997: fc        inc   y
0998: f7 0e     mov   a,($0e)+y
099a: d5 20 02  mov   $0220+x,a         ; offset +5: set pitch multiplier
099d: 8d 01     mov   y,#$01
099f: f7 0e     mov   a,($0e)+y
09a1: d5 51 03  mov   $0351+x,a         ; offset +1: ADSR(1)
09a4: 6f        ret

; vcmd d7 - pan
09a5: d5 a1 02  mov   $02a1+x,a
09a8: 28 1f     and   a,#$1f
09aa: d5 81 02  mov   $0281+x,a         ; voice pan value
09ad: e8 00     mov   a,#$00
09af: d5 80 02  mov   $0280+x,a
09b2: 6f        ret

; vcmd d8 - pan fade
09b3: d4 77     mov   $77+x,a
09b5: 2d        push  a
09b6: 3f 57 08  call  $0857
09b9: d5 a0 02  mov   $02a0+x,a
09bc: 80        setc
09bd: b5 81 02  sbc   a,$0281+x         ; current pan value
09c0: ce        pop   x
09c1: 3f d8 0b  call  $0bd8             ; delta = pan value / steps
09c4: d5 90 02  mov   $0290+x,a
09c7: dd        mov   a,y
09c8: d5 91 02  mov   $0291+x,a
09cb: 6f        ret

; vcmd d9 - vibrato on
09cc: d5 10 03  mov   $0310+x,a
09cf: 3f 57 08  call  $0857
09d2: d5 01 03  mov   $0301+x,a
09d5: 3f 57 08  call  $0857
; vcmd da - vibrato off
09d8: d4 97     mov   $97+x,a
09da: d5 21 03  mov   $0321+x,a
09dd: e8 00     mov   a,#$00
09df: d5 11 03  mov   $0311+x,a
09e2: 6f        ret

; vcmd e6 - vibrato fade
09e3: d5 11 03  mov   $0311+x,a
09e6: 2d        push  a
09e7: 8d 00     mov   y,#$00
09e9: f4 97     mov   a,$97+x
09eb: ce        pop   x
09ec: 9e        div   ya,x
09ed: f8 33     mov   x,$33
09ef: d5 20 03  mov   $0320+x,a
09f2: 6f        ret

; vcmd db - master volume
09f3: e8 00     mov   a,#$00
09f5: da 43     movw  $43,ya
09f7: 6f        ret

; vcmd dc - master volume fade
09f8: ec 6a 01  mov   y,$016a
09fb: d0 11     bne   $0a0e
09fd: c4 45     mov   $45,a
09ff: 3f 57 08  call  $0857
0a02: c4 46     mov   $46,a
0a04: 80        setc
0a05: a4 44     sbc   a,$44
0a07: f8 45     mov   x,$45
0a09: 3f d8 0b  call  $0bd8
0a0c: da 47     movw  $47,ya
0a0e: 6f        ret

; vcmd dd - tempo
0a0f: e8 00     mov   a,#$00
0a11: da 3d     movw  $3d,ya
0a13: 6f        ret

; vcmd de - tempo fade
0a14: c4 3f     mov   $3f,a
0a16: 3f 57 08  call  $0857
0a19: c4 40     mov   $40,a
0a1b: 80        setc
0a1c: a4 3e     sbc   a,$3e
0a1e: f8 3f     mov   x,$3f
0a20: 3f d8 0b  call  $0bd8
0a23: da 41     movw  $41,ya
0a25: 6f        ret

; vcmd df - global transpose
0a26: c4 3b     mov   $3b,a
0a28: 6f        ret

; vcmd e0 - per-voice transpose
0a29: d5 41 03  mov   $0341+x,a
0a2c: 6f        ret

; vcmd e1 - tremolo on
0a2d: d5 40 03  mov   $0340+x,a
0a30: 3f 57 08  call  $0857
0a33: d5 31 03  mov   $0331+x,a
0a36: 3f 57 08  call  $0857
; vcmd e2 - tremolo off
0a39: d4 a7     mov   $a7+x,a
0a3b: 6f        ret

; vcmd e7 - pitch envelope (release)
0a3c: e8 01     mov   a,#$01
0a3e: 2f 02     bra   $0a42
; vcmd e8 - pitch envelope (attack)
0a40: e8 00     mov   a,#$00
0a42: d5 f0 02  mov   $02f0+x,a
0a45: dd        mov   a,y
0a46: d5 e1 02  mov   $02e1+x,a
0a49: 3f 57 08  call  $0857
0a4c: d5 e0 02  mov   $02e0+x,a
0a4f: 3f 57 08  call  $0857
0a52: d5 f1 02  mov   $02f1+x,a
0a55: 6f        ret

; vcmd e9 - pitch envelope off
0a56: d5 e0 02  mov   $02e0+x,a
0a59: 6f        ret

; vcmd e3 - volume
0a5a: d5 51 02  mov   $0251+x,a
0a5d: e8 00     mov   a,#$00
0a5f: d5 50 02  mov   $0250+x,a
0a62: 6f        ret

; vcmd e4 - volume fade
0a63: d4 76     mov   $76+x,a
0a65: 2d        push  a
0a66: 3f 57 08  call  $0857
0a69: d5 70 02  mov   $0270+x,a
0a6c: 80        setc
0a6d: b5 51 02  sbc   a,$0251+x
0a70: ce        pop   x
0a71: 3f d8 0b  call  $0bd8
0a74: d5 60 02  mov   $0260+x,a
0a77: dd        mov   a,y
0a78: d5 61 02  mov   $0261+x,a
0a7b: 6f        ret

; vcmd ea - tuning
0a7c: d5 d1 02  mov   $02d1+x,a
0a7f: 6f        ret

; vcmd e5 - call subroutine (n times)
0a80: d5 40 02  mov   $0240+x,a
0a83: 3f 57 08  call  $0857
0a86: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0a89: 3f 57 08  call  $0857
0a8c: d4 66     mov   $66+x,a           ; repeat count from arg3
0a8e: f4 22     mov   a,$22+x
0a90: d5 30 02  mov   $0230+x,a
0a93: f4 23     mov   a,$23+x
0a95: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0a98: f5 40 02  mov   a,$0240+x
0a9b: d4 22     mov   $22+x,a
0a9d: f5 41 02  mov   a,$0241+x
0aa0: d4 23     mov   $23+x,a
0aa2: 6f        ret

; vcmd f1 - echo on
0aa3: e4 14     mov   a,$14
0aa5: 24 32     and   a,$32
0aa7: f0 06     beq   $0aaf
; set channel bit of $0192 (another EON shadow, not in use?)
0aa9: e4 32     mov   a,$32             ; channel bitmask
0aab: 0e 92 01  tset1 $0192
0aae: 6f        ret
; turn echo on
0aaf: 09 32 36  or    ($36),($32)       ; set channel bit of EON shadow
0ab2: 6f        ret

; vcmd f2 - echo off
0ab3: e4 14     mov   a,$14
0ab5: 24 32     and   a,$32
0ab7: f0 06     beq   $0abf
; clear channel bit of $0192 (another EON shadow, not in use?)
0ab9: e4 32     mov   a,$32             ; channel bitmask
0abb: 4e 92 01  tclr1 $0192
0abe: 6f        ret
; turn echo off
0abf: e4 32     mov   a,$32
0ac1: 4e 36 00  tclr1 $0036             ; clear channel bit of EON shadow
0ac4: 6f        ret

; vcmd eb - set echo vbits/volume
0ac5: c4 0a     mov   $0a,a
0ac7: c5 92 01  mov   $0192,a
0aca: e4 14     mov   a,$14
0acc: 48 ff     eor   a,#$ff
0ace: 24 0a     and   a,$0a
0ad0: c4 36     mov   $36,a             ; echo vbit shadow from arg1
0ad2: 3f 57 08  call  $0857
0ad5: e8 00     mov   a,#$00
0ad7: da 4b     movw  $4b,ya            ; echo vol L shadow = arg2
0ad9: 3f 57 08  call  $0857
0adc: e8 00     mov   a,#$00
0ade: da 4d     movw  $4d,ya            ; echo vol R shadow = arg3
0ae0: b2 34     clr5  $34               ; enable echo write
0ae2: 6f        ret

; vcmd ee - echo volume fade
0ae3: c4 53     mov   $53,a
0ae5: 3f 57 08  call  $0857
0ae8: c4 54     mov   $54,a
0aea: 80        setc
0aeb: a4 4c     sbc   a,$4c             ; EVOL(L)
0aed: f8 53     mov   x,$53
0aef: 3f d8 0b  call  $0bd8
0af2: da 4f     movw  $4f,ya
0af4: 3f 57 08  call  $0857
0af7: c4 55     mov   $55,a
0af9: 80        setc
0afa: a4 4e     sbc   a,$4e             ; EVOL(R)
0afc: f8 53     mov   x,$53
0afe: 3f d8 0b  call  $0bd8
0b01: da 51     movw  $51,ya
0b03: 6f        ret

; vcmd ec - disable echo
0b04: da 4b     movw  $4b,ya            ; zero echo vol L shadow
0b06: da 4d     movw  $4d,ya            ; zero echo vol R shadow
0b08: a2 34     set5  $34               ; disable echo write
0b0a: 6f        ret

; vcmd ed - set echo delay, feedback, filter
0b0b: 3f 2d 0b  call  $0b2d             ; set echo delay from arg1
0b0e: 3f 57 08  call  $0857
0b11: c4 3a     mov   $3a,a             ; set echo feedback shadow from arg2
0b13: 3f 57 08  call  $0857
0b16: 8d 08     mov   y,#$08
0b18: cf        mul   ya
0b19: 5d        mov   x,a
0b1a: 8d 0f     mov   y,#$0f
0b1c: f5 83 0e  mov   a,$0e83+x         ; filter table
0b1f: 3f f2 05  call  $05f2
0b22: 3d        inc   x
0b23: dd        mov   a,y
0b24: 60        clrc
0b25: 88 10     adc   a,#$10
0b27: fd        mov   y,a
0b28: 10 f2     bpl   $0b1c             ; set echo filter from table index arg3
0b2a: f8 33     mov   x,$33
0b2c: 6f        ret
; set echo delay to A
0b2d: c4 39     mov   $39,a
0b2f: 8d 7d     mov   y,#$7d
0b31: cc f2 00  mov   $00f2,y
0b34: e5 f3 00  mov   a,$00f3           ; set echo delay
0b37: 64 39     cmp   a,$39
0b39: f0 2b     beq   $0b66             ; same as $39?
0b3b: 28 0f     and   a,#$0f
0b3d: 48 ff     eor   a,#$ff
0b3f: f3 38 03  bbc7  $38,$0b45
0b42: 60        clrc
0b43: 84 38     adc   a,$38
0b45: c4 38     mov   $38,a
0b47: 8d 04     mov   y,#$04
0b49: f6 ba 04  mov   a,$04ba+y         ; shadow reg DSP reg table
0b4c: c5 f2 00  mov   $00f2,a
0b4f: e8 00     mov   a,#$00
0b51: c5 f3 00  mov   $00f3,a
0b54: fe f3     dbnz  y,$0b49           ; zero echo vol, feedback, vbit DSP regs
0b56: e4 34     mov   a,$34
0b58: 08 20     or    a,#$20
0b5a: 8d 6c     mov   y,#$6c
0b5c: 3f f2 05  call  $05f2             ; set FLG from shadow but disable echo
0b5f: e4 39     mov   a,$39
0b61: 8d 7d     mov   y,#$7d
0b63: 3f f2 05  call  $05f2             ; set echo delay from $39
0b66: 1c        asl   a
0b67: 1c        asl   a
0b68: 1c        asl   a
0b69: 48 ff     eor   a,#$ff
0b6b: 80        setc
0b6c: 88 ff     adc   a,#$ff
0b6e: 8d 6d     mov   y,#$6d            ; set echo region to $ff00-8*delay
0b70: 5f f2 05  jmp   $05f2

; vcmd f0 - set perc base
0b73: c4 4a     mov   $4a,a
0b75: 6f        ret

0b76: f4 86     mov   a,$86+x
0b78: d0 33     bne   $0bad
0b7a: e7 22     mov   a,($22+x)
0b7c: 68 ef     cmp   a,#$ef
0b7e: d0 2d     bne   $0bad
0b80: 3f 59 08  call  $0859
0b83: 3f 57 08  call  $0857
; vcmd ef - pitch slide
0b86: d4 87     mov   $87+x,a
0b88: 3f 57 08  call  $0857
0b8b: d4 86     mov   $86+x,a
0b8d: 3f 57 08  call  $0857
0b90: 60        clrc
0b91: 84 3b     adc   a,$3b             ; add global transpose
0b93: 95 41 03  adc   a,$0341+x         ; per-voice transpose
; calculate portamento delta
0b96: 28 7f     and   a,#$7f
0b98: d5 d0 02  mov   $02d0+x,a         ; final portamento value
0b9b: 80        setc
0b9c: b5 b1 02  sbc   a,$02b1+x         ; note number
0b9f: fb 86     mov   y,$86+x           ; portamento steps
0ba1: 6d        push  y
0ba2: ce        pop   x
0ba3: 3f d8 0b  call  $0bd8
0ba6: d5 c0 02  mov   $02c0+x,a
0ba9: dd        mov   a,y
0baa: d5 c1 02  mov   $02c1+x,a         ; portamento delta
0bad: 6f        ret

0bae: f5 b1 02  mov   a,$02b1+x
0bb1: c4 0b     mov   $0b,a
0bb3: f5 b0 02  mov   a,$02b0+x
0bb6: c4 0a     mov   $0a,a
0bb8: 6f        ret

; vcmd f3 - legato on
0bb9: e4 32     mov   a,$32             ; channel bitmask
0bbb: 0e b8 00  tset1 $00b8
0bbe: 6f        ret

; vcmd f4 - legato off
0bbf: e4 32     mov   a,$32             ; channel bitmask
0bc1: 4e b8 00  tclr1 $00b8
0bc4: 6f        ret

; vcmd f7 - relational jump (conditional)
0bc5: 2d        push  a
0bc6: e4 b9     mov   a,$b9
0bc8: 24 32     and   a,$32             ; channel bitmask
0bca: ae        pop   a
0bcb: f0 01     beq   $0bce
0bcd: 6f        ret

; vcmd f8 - relational jump
0bce: 60        clrc
0bcf: 94 22     adc   a,$22+x           ; (forward only)
0bd1: d4 22     mov   $22+x,a
0bd3: 90 02     bcc   $0bd7
0bd5: bb 23     inc   $23+x             ; add A to reading ptr
0bd7: 6f        ret

; signed 16 bit division
0bd8: ed        notc
0bd9: 6b 0c     ror   $0c
0bdb: 10 03     bpl   $0be0
0bdd: 48 ff     eor   a,#$ff
0bdf: bc        inc   a
0be0: 8d 00     mov   y,#$00
0be2: 9e        div   ya,x
0be3: 2d        push  a
0be4: e8 00     mov   a,#$00
0be6: 9e        div   ya,x
0be7: ee        pop   y
0be8: f8 33     mov   x,$33
0bea: f3 0c 06  bbc7  $0c,$0bf3
0bed: da 0e     movw  $0e,ya
0bef: ba 08     movw  ya,$08
0bf1: 9a 0e     subw  ya,$0e
0bf3: 6f        ret

; do voice fades
0bf4: f4 76     mov   a,$76+x           ; voice volume fade counter
0bf6: f0 09     beq   $0c01
0bf8: e8 50     mov   a,#$50
0bfa: 8d 02     mov   y,#$02
0bfc: 9b 76     dec   $76+x             ; dec voice vol fade counter
0bfe: 3f af 0c  call  $0caf
0c01: fb a7     mov   y,$a7+x
0c03: f0 23     beq   $0c28
0c05: f5 40 03  mov   a,$0340+x
0c08: de a6 1b  cbne  $a6+x,$0c26
0c0b: 09 32 49  or    ($49),($32)
0c0e: f5 30 03  mov   a,$0330+x
0c11: 10 07     bpl   $0c1a
0c13: fc        inc   y
0c14: d0 04     bne   $0c1a
0c16: e8 80     mov   a,#$80
0c18: 2f 04     bra   $0c1e
0c1a: 60        clrc
0c1b: 95 31 03  adc   a,$0331+x
0c1e: d5 30 03  mov   $0330+x,a
0c21: 3f 63 0e  call  $0e63
0c24: 2f 07     bra   $0c2d
0c26: bb a6     inc   $a6+x
0c28: e8 ff     mov   a,#$ff
0c2a: 3f 6e 0e  call  $0e6e
0c2d: f4 77     mov   a,$77+x
0c2f: f0 09     beq   $0c3a
0c31: e8 80     mov   a,#$80
0c33: 8d 02     mov   y,#$02
0c35: 9b 77     dec   $77+x
0c37: 3f af 0c  call  $0caf
0c3a: e4 32     mov   a,$32
0c3c: 24 49     and   a,$49
0c3e: f0 59     beq   $0c99
0c40: f5 81 02  mov   a,$0281+x
0c43: fd        mov   y,a
0c44: f5 80 02  mov   a,$0280+x
0c47: da 0a     movw  $0a,ya
0c49: e4 32     mov   a,$32
0c4b: 24 14     and   a,$14
0c4d: d0 4a     bne   $0c99
0c4f: e5 61 03  mov   a,$0361
0c52: 28 02     and   a,#$02
0c54: f0 06     beq   $0c5c
0c56: 8f 0a 0b  mov   $0b,#$0a
0c59: 8f 00 0a  mov   $0a,#$00
0c5c: 7d        mov   a,x
0c5d: 9f        xcn   a
0c5e: 5c        lsr   a
0c5f: c4 0c     mov   $0c,a
0c61: eb 0b     mov   y,$0b
0c63: f6 9b 0c  mov   a,$0c9b+y         ; next pan val from table
0c66: 80        setc
0c67: b6 9a 0c  sbc   a,$0c9a+y         ; pan val
0c6a: eb 0a     mov   y,$0a
0c6c: cf        mul   ya
0c6d: dd        mov   a,y
0c6e: eb 0b     mov   y,$0b
0c70: 60        clrc
0c71: 96 9a 0c  adc   a,$0c9a+y         ; add integer part to pan val
0c74: fd        mov   y,a
0c75: f5 71 02  mov   a,$0271+x         ; volume
0c78: cf        mul   ya
0c79: f5 a1 02  mov   a,$02a1+x         ; bits 7/6 will negate volume L/R
0c7c: 1c        asl   a
0c7d: 13 0c 01  bbc0  $0c,$0c81
0c80: 1c        asl   a
0c81: dd        mov   a,y
0c82: 90 03     bcc   $0c87
0c84: 48 ff     eor   a,#$ff
0c86: bc        inc   a
0c87: eb 0c     mov   y,$0c
0c89: 3f ea 05  call  $05ea
0c8c: 8d 14     mov   y,#$14
0c8e: e8 00     mov   a,#$00
0c90: 9a 0a     subw  ya,$0a
0c92: da 0a     movw  $0a,ya
0c94: ab 0c     inc   $0c
0c96: 33 0c c8  bbc1  $0c,$0c61
0c99: 6f        ret

; pan table
0c9a: db $00,$01,$03,$07,$0d,$15,$1e,$29
0ca2: db $34,$42,$51,$5e,$67,$6e,$73,$77
0caa: db $7a,$7c,$7d,$7e,$7f

0caf: 09 32 49  or    ($49),($32)
0cb2: da 0e     movw  $0e,ya
0cb4: da 10     movw  $10,ya
0cb6: 4d        push  x
0cb7: ee        pop   y
0cb8: 60        clrc
0cb9: d0 0a     bne   $0cc5
0cbb: 98 1f 10  adc   $10,#$1f
0cbe: e8 00     mov   a,#$00
0cc0: d7 0e     mov   ($0e)+y,a
0cc2: fc        inc   y
0cc3: 2f 09     bra   $0cce
0cc5: 98 10 10  adc   $10,#$10
0cc8: 3f cc 0c  call  $0ccc
0ccb: fc        inc   y
0ccc: f7 0e     mov   a,($0e)+y
0cce: 97 10     adc   a,($10)+y
0cd0: d7 0e     mov   ($0e)+y,a
0cd2: 6f        ret

; do readahead
0cd3: f4 57     mov   a,$57+x
0cd5: d0 03     bne   $0cda
0cd7: 5f 69 0d  jmp   $0d69

0cda: 9b 57     dec   $57+x
0cdc: f0 1b     beq   $0cf9
0cde: f4 ba     mov   a,$ba+x
0ce0: f0 12     beq   $0cf4
0ce2: 9b bb     dec   $bb+x
0ce4: d0 0e     bne   $0cf4
0ce6: 7d        mov   a,x
0ce7: 9f        xcn   a
0ce8: 5c        lsr   a
0ce9: 08 05     or    a,#$05
0ceb: fd        mov   y,a
0cec: f5 51 03  mov   a,$0351+x
0cef: 28 7f     and   a,#$7f
0cf1: 3f ea 05  call  $05ea
0cf4: e8 02     mov   a,#$02
0cf6: de 56 70  cbne  $56+x,$0d69
0cf9: f4 66     mov   a,$66+x
0cfb: c4 11     mov   $11,a
0cfd: f4 22     mov   a,$22+x
0cff: fb 23     mov   y,$23+x
0d01: da 0e     movw  $0e,ya            ; set current voice ptr to $0e/f
0d03: 8d 00     mov   y,#$00
0d05: f7 0e     mov   a,($0e)+y         ; readahead
0d07: f0 1c     beq   $0d25
0d09: 30 05     bmi   $0d10
; vcmd readahead 01-7f - note param
0d0b: fc        inc   y
0d0c: f7 0e     mov   a,($0e)+y
0d0e: 10 fb     bpl   $0d0b             ; skip while byte <= 0x7f
; 80-ff
0d10: 68 c8     cmp   a,#$c8
0d12: f0 55     beq   $0d69
0d14: 68 e5     cmp   a,#$e5
0d16: f0 29     beq   $0d41
0d18: 68 d6     cmp   a,#$d6
0d1a: 90 30     bcc   $0d4c
; vcmd readahead d6-ff (excluding e5)
0d1c: 6d        push  y
0d1d: fd        mov   y,a
0d1e: ae        pop   a
0d1f: 96 47 07  adc   a,$0747+y         ; vcmd lengths
0d22: fd        mov   y,a
0d23: 2f e0     bra   $0d05
; vcmd readahead 00 - end/return
0d25: e4 11     mov   a,$11
0d27: f0 23     beq   $0d4c
0d29: 8b 11     dec   $11
0d2b: d0 0a     bne   $0d37
; read $0230/1+X into YA
0d2d: f5 31 02  mov   a,$0231+x
0d30: 2d        push  a
0d31: f5 30 02  mov   a,$0230+x
0d34: ee        pop   y
0d35: 2f ca     bra   $0d01
; read $0240/1+X into YA
0d37: f5 41 02  mov   a,$0241+x
0d3a: 2d        push  a
0d3b: f5 40 02  mov   a,$0240+x
0d3e: ee        pop   y
0d3f: 2f c0     bra   $0d01
; vcmd readahead e5 - call subroutine
0d41: fc        inc   y
0d42: f7 0e     mov   a,($0e)+y
0d44: 2d        push  a
0d45: fc        inc   y
0d46: f7 0e     mov   a,($0e)+y
0d48: fd        mov   y,a
0d49: ae        pop   a
0d4a: 2f b5     bra   $0d01
; vcmd readahead 80-d5 (excluding c8) - note
0d4c: e4 b8     mov   a,$b8
0d4e: 24 32     and   a,$32             ; test channel bit of $b8
0d50: d0 17     bne   $0d69             ; skip keyoff if it's set
0d52: e4 32     mov   a,$32
0d54: 8d 5c     mov   y,#$5c
0d56: 3f ea 05  call  $05ea             ; set KOF
0d59: f4 ba     mov   a,$ba+x
0d5b: f0 0c     beq   $0d69
0d5d: 7d        mov   a,x
0d5e: 9f        xcn   a
0d5f: 5c        lsr   a
0d60: 08 05     or    a,#$05
0d62: fd        mov   y,a
0d63: f5 51 03  mov   a,$0351+x
0d66: 3f ea 05  call  $05ea             ; set ADSR(1)
; vcmd readahead c8 - tie
0d69: f2 0d     clr7  $0d
0d6b: f4 86     mov   a,$86+x
0d6d: f0 13     beq   $0d82
0d6f: f4 87     mov   a,$87+x
0d71: f0 04     beq   $0d77
0d73: 9b 87     dec   $87+x
0d75: 2f 0b     bra   $0d82
0d77: e2 0d     set7  $0d
0d79: e8 b0     mov   a,#$b0
0d7b: 8d 02     mov   y,#$02
0d7d: 9b 86     dec   $86+x
0d7f: 3f b2 0c  call  $0cb2
0d82: 3f ae 0b  call  $0bae
0d85: f4 97     mov   a,$97+x
0d87: f0 50     beq   $0dd9
0d89: e4 32     mov   a,$32
0d8b: 24 14     and   a,$14
0d8d: d0 4a     bne   $0dd9
0d8f: f5 10 03  mov   a,$0310+x
0d92: de 96 42  cbne  $96+x,$0dd7
0d95: f5 67 00  mov   a,$0067+x
0d98: 75 11 03  cmp   a,$0311+x
0d9b: d0 05     bne   $0da2
0d9d: f5 21 03  mov   a,$0321+x
0da0: 2f 0b     bra   $0dad
0da2: bb 67     inc   $67+x
0da4: fd        mov   y,a
0da5: f0 02     beq   $0da9
0da7: f4 97     mov   a,$97+x
0da9: 60        clrc
0daa: 95 20 03  adc   a,$0320+x
0dad: d4 97     mov   $97+x,a
0daf: f5 00 03  mov   a,$0300+x
0db2: 60        clrc
0db3: 95 01 03  adc   a,$0301+x
0db6: d5 00 03  mov   $0300+x,a
0db9: c4 0c     mov   $0c,a
0dbb: 1c        asl   a
0dbc: 1c        asl   a
0dbd: 90 02     bcc   $0dc1
0dbf: 48 ff     eor   a,#$ff
0dc1: fd        mov   y,a
0dc2: f4 97     mov   a,$97+x
0dc4: 68 f1     cmp   a,#$f1
0dc6: 90 05     bcc   $0dcd
0dc8: 28 0f     and   a,#$0f
0dca: cf        mul   ya
0dcb: 2f 04     bra   $0dd1
0dcd: cf        mul   ya
0dce: dd        mov   a,y
0dcf: 8d 00     mov   y,#$00
0dd1: 3f 4e 0e  call  $0e4e
0dd4: 5f 67 05  jmp   $0567

0dd7: bb 96     inc   $96+x
0dd9: e3 0d f8  bbs7  $0d,$0dd4
0ddc: 6f        ret

; per-voice fades/dsps
0ddd: f2 0d     clr7  $0d
0ddf: f4 a7     mov   a,$a7+x
0de1: f0 09     beq   $0dec
0de3: f5 40 03  mov   a,$0340+x
0de6: de a6 03  cbne  $a6+x,$0dec
0de9: 3f 56 0e  call  $0e56             ; voice vol calculations
0dec: f5 81 02  mov   a,$0281+x
0def: fd        mov   y,a
0df0: f5 80 02  mov   a,$0280+x
0df3: da 0a     movw  $0a,ya            ; $0a/b = voice pan value
0df5: f4 77     mov   a,$77+x           ; voice pan fade counter
0df7: f0 0a     beq   $0e03
0df9: f5 91 02  mov   a,$0291+x
0dfc: fd        mov   y,a
0dfd: f5 90 02  mov   a,$0290+x         ; pan fade delta
0e00: 3f 38 0e  call  $0e38             ; add delta (with mutations)?
0e03: f3 0d 03  bbc7  $0d,$0e09
0e06: 3f 4f 0c  call  $0c4f
0e09: f2 0d     clr7  $0d
0e0b: 3f ae 0b  call  $0bae
0e0e: f4 86     mov   a,$86+x
0e10: f0 0e     beq   $0e20
0e12: f4 87     mov   a,$87+x
0e14: d0 0a     bne   $0e20
0e16: f5 c1 02  mov   a,$02c1+x
0e19: fd        mov   y,a
0e1a: f5 c0 02  mov   a,$02c0+x
0e1d: 3f 38 0e  call  $0e38
0e20: f4 97     mov   a,$97+x
0e22: f0 b5     beq   $0dd9
0e24: f5 10 03  mov   a,$0310+x
0e27: de 96 af  cbne  $96+x,$0dd9
0e2a: eb 3c     mov   y,$3c
0e2c: f5 01 03  mov   a,$0301+x
0e2f: cf        mul   ya
0e30: dd        mov   a,y
0e31: 60        clrc
0e32: 95 00 03  adc   a,$0300+x
0e35: 5f b9 0d  jmp   $0db9

0e38: e2 0d     set7  $0d
0e3a: cb 0c     mov   $0c,y
0e3c: 3f ea 0b  call  $0bea
0e3f: 6d        push  y
0e40: eb 3c     mov   y,$3c
0e42: cf        mul   ya
0e43: cb 0e     mov   $0e,y
0e45: 8f 00 0f  mov   $0f,#$00
0e48: eb 3c     mov   y,$3c
0e4a: ae        pop   a
0e4b: cf        mul   ya
0e4c: 7a 0e     addw  ya,$0e
0e4e: 3f ea 0b  call  $0bea
0e51: 7a 0a     addw  ya,$0a
0e53: da 0a     movw  $0a,ya
0e55: 6f        ret

0e56: e2 0d     set7  $0d
0e58: eb 3c     mov   y,$3c
0e5a: f5 31 03  mov   a,$0331+x
0e5d: cf        mul   ya
0e5e: dd        mov   a,y
0e5f: 60        clrc
0e60: 95 30 03  adc   a,$0330+x
0e63: 1c        asl   a
0e64: 90 02     bcc   $0e68
0e66: 48 ff     eor   a,#$ff
0e68: fb a7     mov   y,$a7+x
0e6a: cf        mul   ya
0e6b: dd        mov   a,y
0e6c: 48 ff     eor   a,#$ff
0e6e: eb 44     mov   y,$44
0e70: cf        mul   ya
0e71: f5 10 02  mov   a,$0210+x
0e74: cf        mul   ya
0e75: f5 51 02  mov   a,$0251+x
0e78: cf        mul   ya
0e79: dd        mov   a,y
0e7a: cf        mul   ya
0e7b: e4 e7     mov   a,$e7
0e7d: cf        mul   ya
0e7e: dd        mov   a,y
0e7f: d5 71 02  mov   $0271+x,a
0e82: 6f        ret

; echo FIR presets
0e83: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0e8b: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0e93: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0e9b: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; note dur%'s
0ea3: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
0eab: db $19,$32,$4c,$65,$72,$7f,$8c,$98
0eb3: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

0ebb: e8 ff     mov   a,#$ff
0ebd: f8 cc     mov   x,$cc
0ebf: d5 00 01  mov   $0100+x,a
0ec2: c5 60 03  mov   $0360,a
0ec5: 3f ff 11  call  $11ff
0ec8: e5 fd 03  mov   a,$03fd
0ecb: c5 fc 03  mov   $03fc,a
0ece: 3f dd 0f  call  $0fdd
0ed1: e8 00     mov   a,#$00
0ed3: c5 fd 03  mov   $03fd,a
0ed6: e4 00     mov   a,$00
0ed8: 3f 41 15  call  $1541
0edb: 3f 37 10  call  $1037
0ede: 3f 37 12  call  $1237
0ee1: e8 02     mov   a,#$02
0ee3: c5 ee 03  mov   $03ee,a
0ee6: 3f 37 0f  call  $0f37
0ee9: e8 00     mov   a,#$00
0eeb: c5 ee 03  mov   $03ee,a
0eee: 3f 37 0f  call  $0f37
0ef1: ba e8     movw  ya,$e8
0ef3: 7a e6     addw  ya,$e6
0ef5: da e6     movw  $e6,ya
0ef7: e5 6a 01  mov   a,$016a
0efa: f0 03     beq   $0eff
0efc: 3f eb 18  call  $18eb
0eff: e8 00     mov   a,#$00
0f01: c5 fc 03  mov   $03fc,a
0f04: eb 1d     mov   y,$1d
0f06: f0 02     beq   $0f0a
0f08: 08 02     or    a,#$02
0f0a: ec 6a 01  mov   y,$016a
0f0d: f0 02     beq   $0f11
0f0f: 08 04     or    a,#$04
0f11: ec 68 01  mov   y,$0168
0f14: f0 02     beq   $0f18
0f16: 08 08     or    a,#$08
0f18: ec 65 01  mov   y,$0165
0f1b: f0 02     beq   $0f1f
0f1d: 08 10     or    a,#$10
0f1f: ec a0 03  mov   y,$03a0
0f22: f0 02     beq   $0f26
0f24: 08 01     or    a,#$01
0f26: c4 07     mov   $07,a
0f28: f8 cc     mov   x,$cc
0f2a: c8 60     cmp   x,#$60
0f2c: b0 f8     bcs   $0f26
0f2e: e5 f9 03  mov   a,$03f9
0f31: d0 01     bne   $0f34
0f33: 6f        ret

0f34: 5f 48 ff  jmp   $ff48

0f37: 5d        mov   x,a
0f38: f4 01     mov   a,$01+x
0f3a: 30 6c     bmi   $0fa8
0f3c: f4 00     mov   a,$00+x
0f3e: f0 5a     beq   $0f9a
0f40: 74 04     cmp   a,$04+x
0f42: f0 5e     beq   $0fa2
0f44: e9 ee 03  mov   x,$03ee
0f47: d0 04     bne   $0f4d
0f49: 68 e0     cmp   a,#$e0
0f4b: b0 55     bcs   $0fa2
0f4d: c5 62 03  mov   $0362,a
0f50: f4 01     mov   a,$01+x
0f52: 28 20     and   a,#$20
0f54: c5 fa 03  mov   $03fa,a
0f57: e5 62 03  mov   a,$0362
0f5a: 9c        dec   a
0f5b: 9f        xcn   a
0f5c: 28 0f     and   a,#$0f
0f5e: c5 f8 03  mov   $03f8,a
0f61: 5d        mov   x,a
0f62: f5 60 9a  mov   a,$9a60+x
0f65: 5d        mov   x,a
0f66: f5 78 03  mov   a,$0378+x
0f69: f0 0a     beq   $0f75
0f6b: e5 62 03  mov   a,$0362
0f6e: 75 78 03  cmp   a,$0378+x
0f71: 90 27     bcc   $0f9a
0f73: b0 1f     bcs   $0f94
0f75: 3f 16 11  call  $1116
0f78: e4 df     mov   a,$df
0f7a: 0e a0 03  tset1 $03a0
0f7d: 0e 14 00  tset1 $0014
0f80: 4e 92 01  tclr1 $0192
0f83: 4e 93 01  tclr1 $0193
0f86: 24 36     and   a,$36
0f88: 0e 92 01  tset1 $0192
0f8b: e4 df     mov   a,$df
0f8d: 24 35     and   a,$35             ; NON shadow
0f8f: 0e 93 01  tset1 $0193
0f92: 2f 03     bra   $0f97
0f94: 3f 16 11  call  $1116
0f97: 3f 41 11  call  $1141
0f9a: e9 ee 03  mov   x,$03ee
0f9d: e5 62 03  mov   a,$0362
0fa0: d4 04     mov   $04+x,a
0fa2: e8 00     mov   a,#$00
0fa4: c5 62 03  mov   $0362,a
0fa7: 6f        ret

0fa8: c4 0e     mov   $0e,a
0faa: 28 1f     and   a,#$1f
0fac: c4 0a     mov   $0a,a
0fae: 8d 03     mov   y,#$03
0fb0: f4 00     mov   a,$00+x
0fb2: 76 78 03  cmp   a,$0378+y
0fb5: f0 05     beq   $0fbc
0fb7: dc        dec   y
0fb8: 30 e6     bmi   $0fa0
0fba: 2f f6     bra   $0fb2
0fbc: c4 0b     mov   $0b,a
0fbe: d6 e3 03  mov   $03e3+y,a
0fc1: e4 0e     mov   a,$0e
0fc3: d6 60 01  mov   $0160+y,a
0fc6: e4 0a     mov   a,$0a
0fc8: d0 04     bne   $0fce
0fca: e8 ff     mov   a,#$ff
0fcc: 2f 04     bra   $0fd2
0fce: 48 1f     eor   a,#$1f
0fd0: 28 1f     and   a,#$1f
0fd2: d6 e7 03  mov   $03e7+y,a
0fd5: e4 0b     mov   a,$0b
0fd7: 2f c7     bra   $0fa0
0fd9: 20        clrp
0fda: 40        setp
0fdb: 20        clrp
0fdc: 60        clrc
0fdd: e5 6d 01  mov   a,$016d
0fe0: c4 05     mov   $05,a
0fe2: ba 04     movw  ya,$04
0fe4: da f4     movw  $f4,ya
0fe6: ec c2 03  mov   y,$03c2
0fe9: e5 fd 03  mov   a,$03fd
0fec: d0 0b     bne   $0ff9
0fee: e5 bd 03  mov   a,$03bd
0ff1: d0 06     bne   $0ff9
0ff3: ba f4     movw  ya,$f4
0ff5: 5a f4     cmpw  ya,$f4
0ff7: d0 fa     bne   $0ff3             ; wait until APU port #0 changes
0ff9: da 00     movw  $00,ya
0ffb: ba 06     movw  ya,$06
0ffd: da f6     movw  $f6,ya
0fff: 8d 00     mov   y,#$00
1001: e5 6c 01  mov   a,$016c
1004: d0 06     bne   $100c             ; skip if ($016c) == 0
1006: ba f6     movw  ya,$f6
1008: 5a f6     cmpw  ya,$f6
100a: d0 fa     bne   $1006             ; wait until APU port #2 changes
100c: da 02     movw  $02,ya
100e: e8 00     mov   a,#$00
1010: c5 bd 03  mov   $03bd,a
1013: c5 6c 01  mov   $016c,a
1016: 6f        ret

1139: db $01,$02,$04,$08,$10,$20,$40,$80
