; Earthbound SPC - loveemu labo
; Disassembler: spcdas v0.01
; 
; The game was also released as:
; * Mother 2 (J)

0500: 20        clrp
0501: cd cf     mov   x,#$cf
0503: bd        mov   sp,x              ; set SP to (01)cf
0504: e8 00     mov   a,#$00
0506: 5d        mov   x,a
0507: af        mov   (x)+,a
0508: c8 e0     cmp   x,#$e0
050a: d0 fb     bne   $0507             ; zero 00-e0
050c: 3f a5 16  call  $16a5
050f: e8 55     mov   a,#$55
0511: c4 18     mov   $18,a
0513: c4 19     mov   $19,a
0515: e8 00     mov   a,#$00
0517: bc        inc   a
0518: 3f 2c 0b  call  $0b2c             ; set echo delay to 1 (16ms)
051b: a2 48     set5  $48
051d: e8 70     mov   a,#$70
051f: 8d 0c     mov   y,#$0c
0521: 3f 49 07  call  $0749             ; master vol L = $70
0524: 8d 1c     mov   y,#$1c
0526: 3f 49 07  call  $0749             ; master vol R = $70
0529: e8 6c     mov   a,#$6c
052b: 8d 5d     mov   y,#$5d
052d: 3f 49 07  call  $0749             ; source dir = $6c00
0530: e8 f0     mov   a,#$f0
0532: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
0535: e8 10     mov   a,#$10
0537: c5 fa 00  mov   $00fa,a           ; set timer0 latch to #$10 (500 Hz, 2ms)
053a: c4 53     mov   $53,a
053c: e8 01     mov   a,#$01
053e: c5 f1 00  mov   $00f1,a           ; start timer0
0541: d0 03     bne   $0546
0543: 5f d8 05  jmp   $05d8

; main loop
0546: e4 1b     mov   a,$1b
0548: d0 f9     bne   $0543
054a: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
054c: ad 05     cmp   y,#$05
054e: f0 07     beq   $0557
0550: b0 08     bcs   $055a
0552: 69 4d 4c  cmp   ($4c),($4d)
0555: d0 11     bne   $0568
0557: e3 4c 0e  bbs7  $4c,$0568
055a: f6 a7 0e  mov   a,$0ea7+y
055d: c5 f2 00  mov   $00f2,a
0560: f6 b1 0e  mov   a,$0eb1+y
0563: 5d        mov   x,a
0564: e6        mov   a,(x)
0565: c5 f3 00  mov   $00f3,a           ; write to DSP reg
0568: fe e2     dbnz  y,$054c           ; loop for each reg
056a: cb 45     mov   $45,y
056c: cb 46     mov   $46,y
056e: e4 18     mov   a,$18
0570: 44 19     eor   a,$19
0572: 5c        lsr   a
0573: 5c        lsr   a
0574: ed        notc
0575: 6b 18     ror   $18
0577: 6b 19     ror   $19
0579: ec fd 00  mov   y,$00fd           ; wait for counter0 increment
057c: f0 fb     beq   $0579
057e: 6d        push  y
057f: e8 20     mov   a,#$20
0581: cf        mul   ya
0582: 60        clrc
0583: 84 43     adc   a,$43
0585: c4 43     mov   $43,a
0587: 90 44     bcc   $05cd
0589: 5f 96 05  jmp   $0596

058c: e5 b1 04  mov   a,$04b1
058f: 68 aa     cmp   a,#$aa
0591: d0 03     bne   $0596
0593: 3f fc 05  call  $05fc
0596: 3f 09 16  call  $1609
0599: 3f ab 2d  call  $2dab
059c: 3f f3 2d  call  $2df3
059f: 3f d5 2d  call  $2dd5
05a2: 3f dc 11  call  $11dc
05a5: cd 03     mov   x,#$03
05a7: 3f 35 06  call  $0635
05aa: c5 b3 04  mov   $04b3,a
05ad: 3f 1d 2e  call  $2e1d
05b0: 3f ba 11  call  $11ba
05b3: cd 02     mov   x,#$02
05b5: 3f 35 06  call  $0635
05b8: c5 b2 04  mov   $04b2,a
05bb: 3f 98 11  call  $1198
05be: cd 01     mov   x,#$01
05c0: 3f 35 06  call  $0635
05c3: c5 b1 04  mov   $04b1,a
05c6: 69 4d 4c  cmp   ($4c),($4d)
05c9: f0 02     beq   $05cd
05cb: ab 4c     inc   $4c
05cd: e4 53     mov   a,$53
05cf: ee        pop   y
05d0: cf        mul   ya
05d1: 60        clrc
05d2: 84 51     adc   a,$51
05d4: c4 51     mov   $51,a
05d6: 90 08     bcc   $05e0
05d8: 3f f9 07  call  $07f9
05db: 3f 25 06  call  $0625
05de: 2f 19     bra   $05f9
05e0: e4 04     mov   a,$04
05e2: f0 12     beq   $05f6
05e4: cd 00     mov   x,#$00
05e6: 8f 01 47  mov   $47,#$01
05e9: f4 31     mov   a,$31+x
05eb: f0 03     beq   $05f0
05ed: 3f d0 0d  call  $0dd0
05f0: 3d        inc   x
05f1: 3d        inc   x
05f2: 0b 47     asl   $47
05f4: d0 f3     bne   $05e9
05f6: 5f 46 05  jmp   $0546

05f9: 5f 46 05  jmp   $0546

05fc: e8 00     mov   a,#$00
05fe: 8d 2c     mov   y,#$2c
0600: 3f 49 07  call  $0749
0603: 8d 3c     mov   y,#$3c
0605: 3f 49 07  call  $0749
0608: e8 ff     mov   a,#$ff
060a: 8d 5c     mov   y,#$5c
060c: 3f 49 07  call  $0749
060f: e8 00     mov   a,#$00
0611: 8d 4d     mov   y,#$4d
0613: 3f 49 07  call  $0749
0616: e8 20     mov   a,#$20
0618: 8d 6c     mov   y,#$6c
061a: 3f 49 07  call  $0749
061d: e8 80     mov   a,#$80
061f: c5 f1 00  mov   $00f1,a
0622: 5f c0 ff  jmp   $ffc0

0625: e4 04     mov   a,$04
0627: c5 f4 00  mov   $00f4,a
062a: e5 f4 00  mov   a,$00f4
062d: 65 f4 00  cmp   a,$00f4
0630: d0 f8     bne   $062a
0632: c4 00     mov   $00,a
0634: 6f        ret

0635: f5 a4 04  mov   a,$04a4+x
0638: c4 20     mov   $20,a
063a: f5 f4 00  mov   a,$00f4+x
063d: 75 f4 00  cmp   a,$00f4+x
0640: d0 f8     bne   $063a
0642: d4 00     mov   $00+x,a
0644: d5 f4 00  mov   $00f4+x,a
0647: d5 a4 04  mov   $04a4+x,a
064a: 64 20     cmp   a,$20
064c: d0 02     bne   $0650
064e: e8 00     mov   a,#$00
0650: d5 a0 04  mov   $04a0+x,a
0653: 6f        ret

; handle a note vcmd (80-df)
0654: ad ca     cmp   y,#$ca
0656: 90 05     bcc   $065d
; vcmds ca-df - percussion note
0658: 3f 5f 09  call  $095f             ; set sample
065b: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
065d: ad c8     cmp   y,#$c8
065f: b0 f2     bcs   $0653             ; skip if tie/rest
0661: e4 1a     mov   a,$1a
0663: 24 47     and   a,$47
0665: d0 ec     bne   $0653
; vcmds 80-c7 - note (note number in Y)
0667: dd        mov   a,y
0668: 28 7f     and   a,#$7f
066a: 60        clrc
066b: 84 50     adc   a,$50             ; add global transpose
066d: 60        clrc
066e: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
0671: d5 61 03  mov   $0361+x,a
0674: f5 81 03  mov   a,$0381+x
0677: d5 60 03  mov   $0360+x,a
067a: f5 b1 02  mov   a,$02b1+x
067d: 5c        lsr   a
067e: e8 00     mov   a,#$00
0680: 7c        ror   a
0681: d5 a0 02  mov   $02a0+x,a
0684: e8 00     mov   a,#$00
0686: d4 b0     mov   $b0+x,a
0688: d5 00 01  mov   $0100+x,a
068b: d5 d0 02  mov   $02d0+x,a
068e: d4 c0     mov   $c0+x,a
0690: 09 47 5e  or    ($5e),($47)       ; set volume changed flg
0693: 09 47 45  or    ($45),($47)       ; set key on shadow bit
0696: f5 80 02  mov   a,$0280+x         ; pitch envelope counter
0699: d4 a0     mov   $a0+x,a           ; portamento counter
069b: f0 1e     beq   $06bb
069d: f5 81 02  mov   a,$0281+x
06a0: d4 a1     mov   $a1+x,a
06a2: f5 90 02  mov   a,$0290+x         ; pitch envelope mode (0:attack / 1:release)
06a5: d0 0a     bne   $06b1
06a7: f5 61 03  mov   a,$0361+x
06aa: 80        setc
06ab: b5 91 02  sbc   a,$0291+x
06ae: d5 61 03  mov   $0361+x,a
06b1: f5 91 02  mov   a,$0291+x
06b4: 60        clrc
; set DSP pitch from $10/1
06b5: 95 61 03  adc   a,$0361+x
06b8: 3f a4 0b  call  $0ba4
06bb: 3f bc 0b  call  $0bbc
06be: 8d 00     mov   y,#$00
06c0: e4 11     mov   a,$11
06c2: 80        setc
06c3: a8 34     sbc   a,#$34
06c5: b0 09     bcs   $06d0
06c7: e4 11     mov   a,$11
06c9: 80        setc
06ca: a8 13     sbc   a,#$13
06cc: b0 06     bcs   $06d4
06ce: dc        dec   y
06cf: 1c        asl   a
06d0: 7a 10     addw  ya,$10
06d2: da 10     movw  $10,ya
06d4: 4d        push  x
06d5: e4 11     mov   a,$11
; get pitch from note number in A (with octave correction)
06d7: 1c        asl   a
06d8: 8d 00     mov   y,#$00
06da: cd 18     mov   x,#$18
06dc: 9e        div   ya,x
06dd: 5d        mov   x,a
06de: f6 bd 0e  mov   a,$0ebd+y
06e1: c4 15     mov   $15,a
06e3: f6 bc 0e  mov   a,$0ebc+y
06e6: c4 14     mov   $14,a             ; set $14/5 from pitch table
06e8: f6 bf 0e  mov   a,$0ebf+y
06eb: 2d        push  a
06ec: f6 be 0e  mov   a,$0ebe+y
06ef: ee        pop   y
06f0: 9a 14     subw  ya,$14
06f2: eb 10     mov   y,$10
06f4: cf        mul   ya
06f5: dd        mov   a,y
06f6: 8d 00     mov   y,#$00
06f8: 7a 14     addw  ya,$14
06fa: cb 15     mov   $15,y
06fc: 1c        asl   a
06fd: 2b 15     rol   $15
06ff: c4 14     mov   $14,a
0701: 2f 04     bra   $0707
0703: 4b 15     lsr   $15
0705: 7c        ror   a
0706: 3d        inc   x
0707: c8 06     cmp   x,#$06
0709: d0 f8     bne   $0703
070b: c4 14     mov   $14,a
070d: ce        pop   x
070e: f5 20 02  mov   a,$0220+x
0711: eb 15     mov   y,$15
0713: cf        mul   ya
0714: da 16     movw  $16,ya
0716: f5 20 02  mov   a,$0220+x
0719: eb 14     mov   y,$14
071b: cf        mul   ya
071c: 6d        push  y
071d: f5 21 02  mov   a,$0221+x
0720: eb 14     mov   y,$14
0722: cf        mul   ya
0723: 7a 16     addw  ya,$16
0725: da 16     movw  $16,ya
0727: f5 21 02  mov   a,$0221+x
072a: eb 15     mov   y,$15
072c: cf        mul   ya
072d: fd        mov   y,a
072e: ae        pop   a
072f: 7a 16     addw  ya,$16
0731: da 16     movw  $16,ya
0733: 7d        mov   a,x               ; set voice X pitch DSP reg from $16/7
0734: 9f        xcn   a                 ;  (if vbit clear in $1a)
0735: 5c        lsr   a
0736: 08 02     or    a,#$02
0738: fd        mov   y,a               ; Y = voice X pitch DSP reg
0739: e4 16     mov   a,$16
073b: 3f 41 07  call  $0741
073e: fc        inc   y
073f: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1a
0741: 2d        push  a
0742: e4 47     mov   a,$47
0744: 24 1a     and   a,$1a
0746: ae        pop   a
0747: d0 06     bne   $074f
; write A to DSP reg Y
0749: cc f2 00  mov   $00f2,y
074c: c5 f3 00  mov   $00f3,a
074f: 6f        ret

; read $40/1 into YA with advancing the ptr
0750: 8d 00     mov   y,#$00
0752: f7 40     mov   a,($40)+y
0754: 3a 40     incw  $40
0756: 2d        push  a
0757: f7 40     mov   a,($40)+y
0759: 3a 40     incw  $40
075b: fd        mov   y,a
075c: ae        pop   a
075d: 6f        ret

; play song in A
075e: e8 ff     mov   a,#$ff
0760: 8d 5c     mov   y,#$5c
0762: 3f 49 07  call  $0749
0765: 3f 1a 14  call  $141a
0768: 3f 53 14  call  $1453
076b: 3f e1 0e  call  $0ee1
076e: e8 00     mov   a,#$00
0770: c4 08     mov   $08,a
0772: c4 04     mov   $04,a
0774: 60        clrc
0775: 88 00     adc   a,#$00
0777: 30 21     bmi   $079a
0779: 1c        asl   a
077a: 5d        mov   x,a
077b: f5 49 2e  mov   a,$2e49+x
077e: fd        mov   y,a
077f: f5 48 2e  mov   a,$2e48+x
0782: da 40     movw  $40,ya
0784: 8f 02 0c  mov   $0c,#$02
0787: e8 00     mov   a,#$00
0789: c5 91 04  mov   $0491,a
078c: c5 b1 04  mov   $04b1,a
078f: c5 b5 04  mov   $04b5,a
0792: e4 1a     mov   a,$1a
0794: 48 ff     eor   a,#$ff
0796: 0e 46 00  tset1 $0046
0799: 6f        ret

079a: 28 7f     and   a,#$7f
079c: bc        inc   a
079d: 1c        asl   a
079e: 5d        mov   x,a
079f: f5 47 2f  mov   a,$2f47+x
07a2: fd        mov   y,a
07a3: f5 46 2f  mov   a,$2f46+x
07a6: 5f 82 07  jmp   $0782

; reset song params
07a9: cd 0e     mov   x,#$0e
07ab: 8f 80 47  mov   $47,#$80          ; last voice
07ae: e8 ff     mov   a,#$ff
07b0: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
07b3: e8 0a     mov   a,#$0a
07b5: 3f b8 09  call  $09b8             ; pan = $0a.00
07b8: d5 11 02  mov   $0211+x,a         ; zero instrument
07bb: d5 81 03  mov   $0381+x,a
07be: d5 f0 02  mov   $02f0+x,a
07c1: d5 80 02  mov   $0280+x,a
07c4: d5 00 04  mov   $0400+x,a
07c7: d4 b1     mov   $b1+x,a
07c9: d4 c1     mov   $c1+x,a
07cb: 1d        dec   x
07cc: 1d        dec   x
07cd: 4b 47     lsr   $47
07cf: d0 dd     bne   $07ae             ; loop for each voice
07d1: c4 5a     mov   $5a,a             ; zero master vol fade counter
07d3: c4 68     mov   $68,a             ; zero echo vol fade counter
07d5: c4 54     mov   $54,a             ; zero tempo fade counter
07d7: c4 50     mov   $50,a             ; zero global transpose
07d9: c4 42     mov   $42,a             ; zero block repeat count
07db: c4 5f     mov   $5f,a             ; 
07dd: 8f c0 59  mov   $59,#$c0          ; master vol
07e0: 8f 20 53  mov   $53,#$20          ; tempo
07e3: 6f        ret

07e4: 5f 5e 07  jmp   $075e

07e7: 5f 72 07  jmp   $0772

07ea: e8 00     mov   a,#$00
07ec: c5 f4 00  mov   $00f4,a
07ef: e8 00     mov   a,#$00
07f1: 5f 72 07  jmp   $0772

07f4: e4 08     mov   a,$08
07f6: 30 07     bmi   $07ff
07f8: 6f        ret

07f9: eb 08     mov   y,$08
07fb: e4 00     mov   a,$00
07fd: c4 08     mov   $08,a
07ff: 68 f0     cmp   a,#$f0
0801: f0 84     beq   $0787
0803: 68 f1     cmp   a,#$f1
0805: f0 08     beq   $080f
0807: 68 ff     cmp   a,#$ff
0809: f0 d9     beq   $07e4
080b: 7e 00     cmp   y,$00
080d: d0 d8     bne   $07e7
080f: e4 04     mov   a,$04
0811: f0 d0     beq   $07e3
0813: e4 0c     mov   a,$0c
0815: f0 5a     beq   $0871
;
0817: 6e 0c 8f  dbnz  $0c,$07a9
081a: 3f 50 07  call  $0750             ; read block addr from $40/1, advance ptr
081d: d0 22     bne   $0841             ; load start addresses, if hi-byte is non zero
081f: fd        mov   y,a               ; refetch lo-byte
0820: f0 c8     beq   $07ea             ; key off, return if also zero
0822: 68 80     cmp   a,#$80
0824: f0 06     beq   $082c
0826: 68 81     cmp   a,#$81
0828: d0 06     bne   $0830
082a: e8 00     mov   a,#$00
082c: c4 1b     mov   $1b,a
082e: 2f ea     bra   $081a
0830: 8b 42     dec   $42
0832: 10 02     bpl   $0836
0834: c4 42     mov   $42,a
0836: 3f 50 07  call  $0750             ; read next word as well
0839: f8 42     mov   x,$42
083b: f0 dd     beq   $081a
083d: da 40     movw  $40,ya            ;   "goto" that address
083f: 2f d9     bra   $081a             ; continue
; load start addresses - hi-byte not zero
0841: da 16     movw  $16,ya
0843: 8d 0f     mov   y,#$0f
0845: f7 16     mov   a,($16)+y
0847: d6 30 00  mov   $0030+y,a
084a: dc        dec   y
084b: 10 f8     bpl   $0845             ; set all reading ptrs
084d: cd 00     mov   x,#$00
084f: 8f 01 47  mov   $47,#$01          ; first voice
0852: f4 31     mov   a,$31+x
0854: f0 0a     beq   $0860             ; if vptr hi != 0
0856: f5 11 02  mov   a,$0211+x
0859: d0 05     bne   $0860
085b: e8 00     mov   a,#$00
085d: 3f 5f 09  call  $095f             ; set instrument #0 if not set
0860: e8 00     mov   a,#$00
0862: d4 80     mov   $80+x,a           ; zero subroutine repeat counter
0864: d4 90     mov   $90+x,a           ; zero voice vol fade counter
0866: d4 91     mov   $91+x,a           ; zero pan fade counter
0868: bc        inc   a
0869: d4 70     mov   $70+x,a           ; set duration counter to 1
086b: 3d        inc   x
086c: 3d        inc   x
086d: 0b 47     asl   $47               ; next voice
086f: d0 e1     bne   $0852             ; foreach voice
;
0871: cd 00     mov   x,#$00
0873: d8 5e     mov   $5e,x
0875: 8f 01 47  mov   $47,#$01          ; first voice
0878: d8 44     mov   $44,x
087a: f4 31     mov   a,$31+x
087c: f0 72     beq   $08f0             ; next if vptr hi zero
087e: 9b 70     dec   $70+x             ; dec duration counter
0880: d0 64     bne   $08e6             ; if not zero, skip to voice readahead
0882: 3f 55 09  call  $0955             ; read vcmd into A and Y
0885: d0 17     bne   $089e
; vcmd 00 - end repeat/return
0887: f4 80     mov   a,$80+x
0889: f0 8f     beq   $081a             ; read next block if loop has been done
; repeat / return from subroutine
088b: 3f c4 0a  call  $0ac4             ; jump to loop start addr
088e: 9b 80     dec   $80+x             ; dec repeat count
0890: d0 f0     bne   $0882             ; if the loop has been done
0892: f5 30 02  mov   a,$0230+x
0895: d4 30     mov   $30+x,a
0897: f5 31 02  mov   a,$0231+x
089a: d4 31     mov   $31+x,a           ; back to return addr instead
089c: 2f e4     bra   $0882             ; then continue
; vcmd branches
089e: 30 20     bmi   $08c0             ; vcmds 01-7f - note info:
08a0: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
08a3: 3f 55 09  call  $0955             ;   read next byte
08a6: 30 18     bmi   $08c0             ;   if note note then
08a8: 2d        push  a
08a9: 9f        xcn   a
08aa: 28 07     and   a,#$07
08ac: fd        mov   y,a
08ad: f6 80 6f  mov   a,$6f80+y
08b0: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
08b3: ae        pop   a
08b4: 28 0f     and   a,#$0f
08b6: fd        mov   y,a
08b7: f6 88 6f  mov   a,$6f88+y
08ba: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
08bd: 3f 55 09  call  $0955             ;   read vcmd into A and Y
; vcmd branches 80-ff
08c0: 68 e0     cmp   a,#$e0
08c2: 90 05     bcc   $08c9
08c4: 3f 43 09  call  $0943             ; vcmds e0-ff
08c7: 2f b9     bra   $0882
; vcmds 80-df - note
08c9: f5 00 04  mov   a,$0400+x
08cc: 04 1b     or    a,$1b
08ce: d0 04     bne   $08d4
08d0: dd        mov   a,y
08d1: 3f 54 06  call  $0654             ; handle note cmd if vbit $1a clear
08d4: f5 00 02  mov   a,$0200+x
08d7: d4 70     mov   $70+x,a
08d9: fd        mov   y,a
08da: f5 01 02  mov   a,$0201+x
08dd: cf        mul   ya
08de: dd        mov   a,y
08df: d0 01     bne   $08e2
08e1: bc        inc   a
08e2: d4 71     mov   $71+x,a           ; set actual key-off dur counter
08e4: 2f 07     bra   $08ed
08e6: e4 1b     mov   a,$1b
08e8: d0 06     bne   $08f0
08ea: 3f f7 0c  call  $0cf7             ; do readahead
08ed: 3f 84 0b  call  $0b84
08f0: 3d        inc   x
08f1: 3d        inc   x
08f2: 0b 47     asl   $47
08f4: d0 82     bne   $0878
;
08f6: e4 54     mov   a,$54             ; tempo fade counter
08f8: f0 0b     beq   $0905
08fa: ba 56     movw  ya,$56
08fc: 7a 52     addw  ya,$52            ; add tempo fade to tempo
08fe: 6e 54 02  dbnz  $54,$0903
0901: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
0903: da 52     movw  $52,ya
0905: e4 68     mov   a,$68             ; echo vol fade counter
0907: f0 15     beq   $091e
0909: ba 64     movw  ya,$64
090b: 7a 60     addw  ya,$60            ; add echo L delta to echo L vol
090d: da 60     movw  $60,ya
090f: ba 66     movw  ya,$66
0911: 7a 62     addw  ya,$62            ; add echo R delta to echo R vol
0913: 6e 68 06  dbnz  $68,$091c
0916: ba 68     movw  ya,$68
0918: da 60     movw  $60,ya
091a: eb 6a     mov   y,$6a
091c: da 62     movw  $62,ya
091e: e4 5a     mov   a,$5a             ; master vol fade counter
0920: f0 0e     beq   $0930
0922: ba 5c     movw  ya,$5c
0924: 7a 58     addw  ya,$58            ; add master vol delta to value
0926: 6e 5a 02  dbnz  $5a,$092b
0929: ba 5a     movw  ya,$5a
092b: da 58     movw  $58,ya
092d: 8f ff 5e  mov   $5e,#$ff          ; set all vol chg flags
0930: cd 00     mov   x,#$00
0932: 8f 01 47  mov   $47,#$01
0935: f4 31     mov   a,$31+x
0937: f0 03     beq   $093c
0939: 3f 40 0c  call  $0c40             ; do per-voice fades
093c: 3d        inc   x
093d: 3d        inc   x
093e: 0b 47     asl   $47
0940: d0 f3     bne   $0935
0942: 6f        ret

; dispatch vcmd in A (e0-ff)
0943: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0944: fd        mov   y,a
0945: f6 24 0b  mov   a,$0b24+y
0948: 2d        push  a
0949: f6 23 0b  mov   a,$0b23+y
094c: 2d        push  a                 ; push jump address from table
094d: dd        mov   a,y
094e: 5c        lsr   a
094f: fd        mov   y,a
0950: f6 c1 0b  mov   a,$0bc1+y         ; vcmd length
0953: f0 08     beq   $095d             ; if non zero
; read new argument to A and Y
0955: e7 30     mov   a,($30+x)
; advance reading ptr
0957: bb 30     inc   $30+x
0959: d0 02     bne   $095d
095b: bb 31     inc   $31+x             ; inc reading ptr
095d: fd        mov   y,a
095e: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
095f: d5 11 02  mov   $0211+x,a
0962: fd        mov   y,a
0963: 10 06     bpl   $096b             ; if percussion note:
0965: 80        setc
0966: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0968: 60        clrc
0969: 84 5f     adc   a,$5f             ; add perc patch base
096b: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
096d: cf        mul   ya
096e: da 14     movw  $14,ya
0970: 60        clrc
0971: 98 00 14  adc   $14,#$00
0974: 98 6e 15  adc   $15,#$6e
0977: e4 1a     mov   a,$1a
0979: 24 47     and   a,$47
097b: d0 3a     bne   $09b7
097d: 4d        push  x
097e: 7d        mov   a,x
097f: 9f        xcn   a
0980: 5c        lsr   a
0981: 08 04     or    a,#$04            ; voice X SRCN
0983: 5d        mov   x,a
0984: 8d 00     mov   y,#$00
0986: f7 14     mov   a,($14)+y
0988: 10 0e     bpl   $0998
098a: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
098c: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
098f: 0e 48 00  tset1 $0048             ;  OR in noise freq
0992: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
0995: dd        mov   a,y               ;  set SRCN to 0
0996: 2f 07     bra   $099f             ; else
0998: e4 47     mov   a,$47
099a: 4e 49 00  tclr1 $0049             ;  clear noise vbit
099d: f7 14     mov   a,($14)+y         ;  set SRCN from table
099f: c9 f2 00  mov   $00f2,x
09a2: c5 f3 00  mov   $00f3,a
09a5: 3d        inc   x
09a6: fc        inc   y
09a7: ad 04     cmp   y,#$04
09a9: d0 f2     bne   $099d             ; set SRCN, ADSR1/2, GAIN from table
09ab: ce        pop   x
09ac: f7 14     mov   a,($14)+y
09ae: d5 21 02  mov   $0221+x,a         ; set pitch multiplier
09b1: fc        inc   y
09b2: f7 14     mov   a,($14)+y
09b4: d5 20 02  mov   $0220+x,a
09b7: 6f        ret

; vcmd e1 - pan
09b8: c4 20     mov   $20,a
09ba: e5 31 04  mov   a,$0431
09bd: 68 00     cmp   a,#$00
09bf: f0 05     beq   $09c6
09c1: e8 0a     mov   a,#$0a            ; $0a = center
09c3: 5f c8 09  jmp   $09c8
09c6: e4 20     mov   a,$20
09c8: d5 51 03  mov   $0351+x,a
09cb: 28 1f     and   a,#$1f
09cd: d5 31 03  mov   $0331+x,a         ; voice pan value
09d0: e8 00     mov   a,#$00
09d2: d5 30 03  mov   $0330+x,a
09d5: 6f        ret

; vcmd e2 - pan fade
09d6: d4 91     mov   $91+x,a
09d8: 2d        push  a
09d9: 3f 55 09  call  $0955
09dc: c4 20     mov   $20,a
09de: e5 31 04  mov   a,$0431
09e1: 68 00     cmp   a,#$00
09e3: f0 03     beq   $09e8
09e5: 8f 0a 20  mov   $20,#$0a          ; $0a = center
09e8: e4 20     mov   a,$20
09ea: d5 50 03  mov   $0350+x,a
09ed: 80        setc
09ee: b5 31 03  sbc   a,$0331+x         ; current pan value
09f1: ce        pop   x
09f2: 3f c7 0b  call  $0bc7             ; delta = pan value / steps
09f5: d5 40 03  mov   $0340+x,a
09f8: dd        mov   a,y
09f9: d5 41 03  mov   $0341+x,a
09fc: 6f        ret

; vcmd e3 - vibrato on
09fd: d5 b0 02  mov   $02b0+x,a
0a00: 3f 55 09  call  $0955
0a03: d5 a1 02  mov   $02a1+x,a
0a06: 3f 55 09  call  $0955
; vcmd e4 - vibrato off
0a09: d4 b1     mov   $b1+x,a
0a0b: d5 c1 02  mov   $02c1+x,a
0a0e: e8 00     mov   a,#$00
0a10: d5 b1 02  mov   $02b1+x,a
0a13: 6f        ret

; vcmd f0 - vibrato fade
0a14: d5 b1 02  mov   $02b1+x,a
0a17: 2d        push  a
0a18: 8d 00     mov   y,#$00
0a1a: f4 b1     mov   a,$b1+x
0a1c: ce        pop   x
0a1d: 9e        div   ya,x
0a1e: f8 44     mov   x,$44
0a20: d5 c0 02  mov   $02c0+x,a
0a23: 6f        ret

; vcmd e5 - master volume
0a24: e8 00     mov   a,#$00
0a26: da 58     movw  $58,ya
0a28: 6f        ret

; vcmd e6 - master volume fade
0a29: c4 5a     mov   $5a,a
0a2b: 3f 55 09  call  $0955
0a2e: c4 5b     mov   $5b,a
0a30: 80        setc
0a31: a4 59     sbc   a,$59
0a33: f8 5a     mov   x,$5a
0a35: 3f c7 0b  call  $0bc7
0a38: da 5c     movw  $5c,ya
0a3a: 6f        ret

; vcmd e7 - tempo
0a3b: e8 00     mov   a,#$00
0a3d: da 52     movw  $52,ya
0a3f: 6f        ret

; vcmd e8 - tempo fade
0a40: c4 54     mov   $54,a
0a42: 3f 55 09  call  $0955
0a45: c4 55     mov   $55,a
0a47: 80        setc
0a48: a4 53     sbc   a,$53
0a4a: f8 54     mov   x,$54
0a4c: 3f c7 0b  call  $0bc7
0a4f: da 56     movw  $56,ya
0a51: 6f        ret

; vcmd e9 - global transpose
0a52: c4 50     mov   $50,a
0a54: 6f        ret

; vcmd ea - per-voice transpose
0a55: d5 f0 02  mov   $02f0+x,a
0a58: 6f        ret

; vcmd eb - tremolo on
0a59: d5 e0 02  mov   $02e0+x,a
0a5c: 3f 55 09  call  $0955
0a5f: d5 d1 02  mov   $02d1+x,a
0a62: 3f 55 09  call  $0955
; vcmd ec - tremolo off
0a65: d4 c1     mov   $c1+x,a
0a67: 6f        ret

; vcmd f1 - pitch envelope (release)
0a68: e8 01     mov   a,#$01
0a6a: 2f 02     bra   $0a6e
; vcmd f2 - pitch envelope (attack)
0a6c: e8 00     mov   a,#$00
0a6e: d5 90 02  mov   $0290+x,a
0a71: dd        mov   a,y
0a72: d5 81 02  mov   $0281+x,a
0a75: 3f 55 09  call  $0955
0a78: d5 80 02  mov   $0280+x,a
0a7b: 3f 55 09  call  $0955
0a7e: d5 91 02  mov   $0291+x,a
0a81: 6f        ret

; vcmd f3 - pitch envelope off
0a82: d5 80 02  mov   $0280+x,a
0a85: 6f        ret

; vcmd ed - volume
0a86: d5 01 03  mov   $0301+x,a
0a89: e8 00     mov   a,#$00
0a8b: d5 00 03  mov   $0300+x,a
0a8e: 6f        ret

; vcmd ee - volume fade
0a8f: d4 90     mov   $90+x,a
0a91: 2d        push  a
0a92: 3f 55 09  call  $0955
0a95: d5 20 03  mov   $0320+x,a
0a98: 80        setc
0a99: b5 01 03  sbc   a,$0301+x
0a9c: ce        pop   x
0a9d: 3f c7 0b  call  $0bc7
0aa0: d5 10 03  mov   $0310+x,a
0aa3: dd        mov   a,y
0aa4: d5 11 03  mov   $0311+x,a
0aa7: 6f        ret

; vcmd f4 - tuning
0aa8: d5 81 03  mov   $0381+x,a
0aab: 6f        ret

; vcmd ef - call subroutine
0aac: d5 40 02  mov   $0240+x,a
0aaf: 3f 55 09  call  $0955
0ab2: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0ab5: 3f 55 09  call  $0955
0ab8: d4 80     mov   $80+x,a           ; repeat count from arg3
0aba: f4 30     mov   a,$30+x
0abc: d5 30 02  mov   $0230+x,a
0abf: f4 31     mov   a,$31+x
0ac1: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0ac4: f5 40 02  mov   a,$0240+x
0ac7: d4 30     mov   $30+x,a
0ac9: f5 41 02  mov   a,$0241+x
0acc: d4 31     mov   $31+x,a
0ace: 6f        ret

; vcmd f5 - echo vbits/volume
0acf: c4 4a     mov   $4a,a
0ad1: 3f 55 09  call  $0955             ; echo vbit shadow = arg1
0ad4: e8 00     mov   a,#$00
0ad6: da 60     movw  $60,ya            ; echo vol L shadow = arg2
0ad8: 3f 55 09  call  $0955
0adb: e8 00     mov   a,#$00
0add: da 62     movw  $62,ya            ; echo vol R shadow = arg3
0adf: b2 48     clr5  $48
0ae1: 6f        ret

; vcmd f8 - echo volume fade
0ae2: c4 68     mov   $68,a
0ae4: 3f 55 09  call  $0955
0ae7: c4 69     mov   $69,a
0ae9: 80        setc
0aea: a4 61     sbc   a,$61
0aec: f8 68     mov   x,$68
0aee: 3f c7 0b  call  $0bc7
0af1: da 64     movw  $64,ya
0af3: 3f 55 09  call  $0955
0af6: c4 6a     mov   $6a,a
0af8: 80        setc
0af9: a4 63     sbc   a,$63
0afb: f8 68     mov   x,$68
0afd: 3f c7 0b  call  $0bc7
0b00: da 66     movw  $66,ya
0b02: 6f        ret

; vcmd f6 - disable echo
0b03: da 60     movw  $60,ya            ; zero echo vol L shadow
0b05: da 62     movw  $62,ya            ; zero echo vol R shadow
0b07: a2 48     set5  $48               ; disable echo write
0b09: 6f        ret

; vcmd f7 - set echo params
0b0a: 3f 2c 0b  call  $0b2c             ; set echo delay from arg1
0b0d: 3f 55 09  call  $0955
0b10: c4 4e     mov   $4e,a             ; set echo feedback shadow from arg2
0b12: 3f 55 09  call  $0955
0b15: 8d 08     mov   y,#$08
0b17: cf        mul   ya
0b18: 5d        mov   x,a
0b19: 8d 0f     mov   y,#$0f
0b1b: f5 88 0e  mov   a,$0e88+x         ; filter table
0b1e: 3f 49 07  call  $0749
0b21: 3d        inc   x
0b22: dd        mov   a,y
0b23: 60        clrc
0b24: 88 10     adc   a,#$10
0b26: fd        mov   y,a
0b27: 10 f2     bpl   $0b1b             ; set echo filter from table index arg3
0b29: f8 44     mov   x,$44
0b2b: 6f        ret
; set echo delay to A
0b2c: c4 4d     mov   $4d,a
0b2e: 8d 7d     mov   y,#$7d
0b30: cc f2 00  mov   $00f2,y
0b33: e5 f3 00  mov   a,$00f3           ; set echo delay
0b36: 64 4d     cmp   a,$4d
0b38: f0 2b     beq   $0b65             ; same as $4d?
0b3a: 28 0f     and   a,#$0f
0b3c: 48 ff     eor   a,#$ff
0b3e: f3 4c 03  bbc7  $4c,$0b44
0b41: 60        clrc
0b42: 84 4c     adc   a,$4c
0b44: c4 4c     mov   $4c,a
0b46: 8d 04     mov   y,#$04
0b48: f6 a7 0e  mov   a,$0ea7+y         ; shadow reg DSP reg table
0b4b: c5 f2 00  mov   $00f2,a
0b4e: e8 00     mov   a,#$00
0b50: c5 f3 00  mov   $00f3,a
0b53: fe f3     dbnz  y,$0b48           ; zero echo vol, feedback, vbit DSP regs
0b55: e4 48     mov   a,$48
0b57: 08 20     or    a,#$20
0b59: 8d 6c     mov   y,#$6c
0b5b: 3f 49 07  call  $0749             ; set FLG from shadow but disable echo
0b5e: e4 4d     mov   a,$4d
0b60: 8d 7d     mov   y,#$7d
0b62: 3f 49 07  call  $0749             ; set echo delay from $4d
0b65: 1c        asl   a
0b66: 1c        asl   a
0b67: 1c        asl   a
0b68: 48 ff     eor   a,#$ff
0b6a: 80        setc
0b6b: 88 ff     adc   a,#$ff
0b6d: 8d 6d     mov   y,#$6d
0b6f: 5f 49 07  jmp   $0749             ; set echo region to $ff00-8*delay

; vcmd fa - set perc patch base
0b72: c4 5f     mov   $5f,a
0b74: 6f        ret

; vcmd fb - skip 2 bytes
0b75: 3f 57 09  call  $0957
0b78: 6f        ret

; vcmd fc
0b79: bc        inc   a
0b7a: d5 00 04  mov   $0400+x,a
0b7d: 6f        ret

; vcmd fd
0b7e: bc        inc   a
; vcmd fe
0b7f: c4 1b     mov   $1b,a
0b81: 5f 87 07  jmp   $0787

0b84: f4 a0     mov   a,$a0+x
0b86: d0 33     bne   $0bbb
0b88: e7 30     mov   a,($30+x)
0b8a: 68 f9     cmp   a,#$f9
0b8c: d0 2d     bne   $0bbb
0b8e: 3f 57 09  call  $0957
0b91: 3f 55 09  call  $0955
; vcmd f9 - pitch slide
0b94: d4 a1     mov   $a1+x,a
0b96: 3f 55 09  call  $0955
0b99: d4 a0     mov   $a0+x,a
0b9b: 3f 55 09  call  $0955
0b9e: 60        clrc
0b9f: 84 50     adc   a,$50             ; add global transpose
0ba1: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
; calculate portamento delta
0ba4: 28 7f     and   a,#$7f
0ba6: d5 80 03  mov   $0380+x,a         ; final portamento value
0ba9: 80        setc
0baa: b5 61 03  sbc   a,$0361+x         ; note number
0bad: fb a0     mov   y,$a0+x           ; portamento steps
0baf: 6d        push  y
0bb0: ce        pop   x
0bb1: 3f c7 0b  call  $0bc7
0bb4: d5 70 03  mov   $0370+x,a
0bb7: dd        mov   a,y
0bb8: d5 71 03  mov   $0371+x,a         ; portamento delta
0bbb: 6f        ret

0bbc: f5 61 03  mov   a,$0361+x
0bbf: c4 11     mov   $11,a
0bc1: f5 60 03  mov   a,$0360+x
0bc4: c4 10     mov   $10,a
0bc6: 6f        ret

0bc7: ed        notc
0bc8: 6b 12     ror   $12
0bca: 10 03     bpl   $0bcf
0bcc: 48 ff     eor   a,#$ff
0bce: bc        inc   a
0bcf: 8d 00     mov   y,#$00
0bd1: 9e        div   ya,x
0bd2: 2d        push  a
0bd3: e8 00     mov   a,#$00
0bd5: 9e        div   ya,x
0bd6: ee        pop   y
0bd7: f8 44     mov   x,$44
0bd9: f3 12 06  bbc7  $12,$0be2
0bdc: da 14     movw  $14,ya
0bde: ba 0e     movw  ya,$0e
0be0: 9a 14     subw  ya,$14
0be2: 6f        ret


; vcmd dispatch table ($0b23)
0be3: dw $095f  ; e0 - set instrument
0be5: dw $09b8  ; e1 - pan
0be7: dw $09d6  ; e2 - pan fade
0be9: dw $09fd  ; e3 - vibrato on
0beb: dw $0a09  ; e4 - vibrato off
0bed: dw $0a24  ; e5 - master volume
0bef: dw $0a29  ; e6 - master volume fade
0bf1: dw $0a3b  ; e7 - tempo
0bf3: dw $0a40  ; e8 - tempo fade
0bf5: dw $0a52  ; e9 - global transpose
0bf7: dw $0a55  ; ea - per-voice transpose
0bf9: dw $0a59  ; eb - tremolo on
0bfb: dw $0a65  ; ec - tremolo off
0bfd: dw $0a86  ; ed - volume
0bff: dw $0a8f  ; ee - volume fade
0c01: dw $0aac  ; ef - call subroutine
0c03: dw $0a14  ; f0 - vibrato fade
0c05: dw $0a68  ; f1 - pitch envelope (release)
0c07: dw $0a6c  ; f2 - pitch envelope (attack)
0c09: dw $0a82  ; f3 - pitch envelope off
0c0b: dw $0aa8  ; f4 - tuning
0c0d: dw $0acf  ; f5 - echo vbits/volume
0c0f: dw $0b03  ; f6 - disable echo
0c11: dw $0b0a  ; f7 - set echo params
0c13: dw $0ae2  ; f8 - echo volume fade
0c15: dw $0b94  ; f9 - pitch slide
0c17: dw $0b72  ; fa - set perc patch base
0c19: dw $0b75  ; fb - skip 2 bytes
0c1b: dw $0b79  ; fc
0c1d: dw $0b7e  ; fd
0c1f: dw $0b7f  ; fe
                ; ff - undefined

; vcmd lengths ($0bc1)
0c21: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0c29: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0c31: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0c39: db $03,$03,$01,$02,$00,$00,$00     ; f8-fe

; do voice fades
0c40: f4 90     mov   a,$90+x           ; voice volume fade counter
0c42: f0 09     beq   $0c4d
0c44: e8 00     mov   a,#$00
0c46: 8d 03     mov   y,#$03
0c48: 9b 90     dec   $90+x             ; dec voice vol fade counter
0c4a: 3f d3 0c  call  $0cd3
0c4d: fb c1     mov   y,$c1+x
0c4f: f0 23     beq   $0c74
0c51: f5 e0 02  mov   a,$02e0+x
0c54: de c0 1b  cbne  $c0+x,$0c72
0c57: 09 47 5e  or    ($5e),($47)
0c5a: f5 d0 02  mov   a,$02d0+x
0c5d: 10 07     bpl   $0c66
0c5f: fc        inc   y
0c60: d0 04     bne   $0c66
0c62: e8 80     mov   a,#$80
0c64: 2f 04     bra   $0c6a
0c66: 60        clrc
0c67: 95 d1 02  adc   a,$02d1+x
0c6a: d5 d0 02  mov   $02d0+x,a
0c6d: 3f 56 0e  call  $0e56
0c70: 2f 07     bra   $0c79
0c72: bb c0     inc   $c0+x
0c74: e8 ff     mov   a,#$ff
0c76: 3f 61 0e  call  $0e61
0c79: f4 91     mov   a,$91+x
0c7b: f0 09     beq   $0c86
0c7d: e8 30     mov   a,#$30
0c7f: 8d 03     mov   y,#$03
0c81: 9b 91     dec   $91+x
0c83: 3f d3 0c  call  $0cd3
0c86: e4 47     mov   a,$47
0c88: 24 5e     and   a,$5e
0c8a: f0 46     beq   $0cd2
0c8c: f5 31 03  mov   a,$0331+x
0c8f: fd        mov   y,a
0c90: f5 30 03  mov   a,$0330+x
0c93: da 10     movw  $10,ya
0c95: 7d        mov   a,x
0c96: 9f        xcn   a
0c97: 5c        lsr   a
0c98: c4 12     mov   $12,a
;
0c9a: eb 11     mov   y,$11
0c9c: f6 74 0e  mov   a,$0e74+y         ; next pan val from table
0c9f: 80        setc
0ca0: b6 73 0e  sbc   a,$0e73+y         ; pan val
0ca3: eb 10     mov   y,$10
0ca5: cf        mul   ya
0ca6: dd        mov   a,y
0ca7: eb 11     mov   y,$11
0ca9: 60        clrc
0caa: 96 73 0e  adc   a,$0e73+y         ; add integer part to pan val
0cad: fd        mov   y,a
0cae: f5 21 03  mov   a,$0321+x         ; volume
0cb1: cf        mul   ya
0cb2: f5 51 03  mov   a,$0351+x         ; bits 7/6 will negate volume L/R
0cb5: 1c        asl   a
0cb6: 13 12 01  bbc0  $12,$0cba
0cb9: 1c        asl   a
0cba: dd        mov   a,y
0cbb: 90 03     bcc   $0cc0
0cbd: 48 ff     eor   a,#$ff
0cbf: bc        inc   a
0cc0: eb 12     mov   y,$12
0cc2: 3f 41 07  call  $0741
0cc5: 8d 14     mov   y,#$14
0cc7: e8 00     mov   a,#$00
0cc9: 9a 10     subw  ya,$10
0ccb: da 10     movw  $10,ya
0ccd: ab 12     inc   $12
0ccf: 33 12 c8  bbc1  $12,$0c9a
0cd2: 6f        ret

0cd3: 09 47 5e  or    ($5e),($47)
0cd6: da 14     movw  $14,ya
0cd8: da 16     movw  $16,ya
0cda: 4d        push  x
0cdb: ee        pop   y
0cdc: 60        clrc
0cdd: d0 0a     bne   $0ce9
0cdf: 98 1f 16  adc   $16,#$1f
0ce2: e8 00     mov   a,#$00
0ce4: d7 14     mov   ($14)+y,a
0ce6: fc        inc   y
0ce7: 2f 09     bra   $0cf2
0ce9: 98 10 16  adc   $16,#$10
0cec: 3f f0 0c  call  $0cf0
0cef: fc        inc   y
0cf0: f7 14     mov   a,($14)+y
0cf2: 97 16     adc   a,($16)+y
0cf4: d7 14     mov   ($14)+y,a
0cf6: 6f        ret

; do readahead
0cf7: f4 71     mov   a,$71+x
0cf9: f0 65     beq   $0d60
0cfb: 9b 71     dec   $71+x
0cfd: f0 05     beq   $0d04
0cff: e8 02     mov   a,#$02
0d01: de 70 5c  cbne  $70+x,$0d60
0d04: f4 80     mov   a,$80+x
0d06: c4 17     mov   $17,a
0d08: f4 30     mov   a,$30+x
0d0a: fb 31     mov   y,$31+x
0d0c: da 14     movw  $14,ya
0d0e: 8d 00     mov   y,#$00
0d10: f7 14     mov   a,($14)+y
0d12: f0 1e     beq   $0d32
0d14: 30 07     bmi   $0d1d
0d16: fc        inc   y
0d17: 30 40     bmi   $0d59
0d19: f7 14     mov   a,($14)+y
0d1b: 10 f9     bpl   $0d16
0d1d: 68 c8     cmp   a,#$c8
0d1f: f0 3f     beq   $0d60
0d21: 68 ef     cmp   a,#$ef
0d23: f0 29     beq   $0d4e
0d25: 68 e0     cmp   a,#$e0
0d27: 90 30     bcc   $0d59
0d29: 6d        push  y
0d2a: fd        mov   y,a
0d2b: ae        pop   a
0d2c: 96 41 0b  adc   a,$0b41+y         ; vcmd lengths
0d2f: fd        mov   y,a
0d30: 2f de     bra   $0d10
0d32: e4 17     mov   a,$17
0d34: f0 23     beq   $0d59
0d36: 8b 17     dec   $17
0d38: d0 0a     bne   $0d44
; read $0230/1+X into YA
0d3a: f5 31 02  mov   a,$0231+x
0d3d: 2d        push  a
0d3e: f5 30 02  mov   a,$0230+x
0d41: ee        pop   y
0d42: 2f c8     bra   $0d0c
; read $0240/1+X into YA
0d44: f5 41 02  mov   a,$0241+x
0d47: 2d        push  a
0d48: f5 40 02  mov   a,$0240+x
0d4b: ee        pop   y
0d4c: 2f be     bra   $0d0c
;
0d4e: fc        inc   y
0d4f: f7 14     mov   a,($14)+y
0d51: 2d        push  a
0d52: fc        inc   y
0d53: f7 14     mov   a,($14)+y
0d55: fd        mov   y,a
0d56: ae        pop   a
0d57: 2f b3     bra   $0d0c
0d59: e4 47     mov   a,$47
0d5b: 8d 5c     mov   y,#$5c
0d5d: 3f 41 07  call  $0741
0d60: f2 13     clr7  $13
0d62: f4 a0     mov   a,$a0+x
0d64: f0 13     beq   $0d79
0d66: f4 a1     mov   a,$a1+x
0d68: f0 04     beq   $0d6e
0d6a: 9b a1     dec   $a1+x
0d6c: 2f 0b     bra   $0d79
0d6e: e2 13     set7  $13
0d70: e8 60     mov   a,#$60
0d72: 8d 03     mov   y,#$03
0d74: 9b a0     dec   $a0+x
0d76: 3f d6 0c  call  $0cd6
0d79: 3f bc 0b  call  $0bbc
0d7c: f4 b1     mov   a,$b1+x
0d7e: f0 4c     beq   $0dcc
0d80: f5 b0 02  mov   a,$02b0+x
0d83: de b0 44  cbne  $b0+x,$0dca
0d86: f5 00 01  mov   a,$0100+x
0d89: 75 b1 02  cmp   a,$02b1+x
0d8c: d0 05     bne   $0d93
0d8e: f5 c1 02  mov   a,$02c1+x
0d91: 2f 0d     bra   $0da0
0d93: 40        setp
0d94: bb 00     inc   $00+x
0d96: 20        clrp
0d97: fd        mov   y,a
0d98: f0 02     beq   $0d9c
0d9a: f4 b1     mov   a,$b1+x
0d9c: 60        clrc
0d9d: 95 c0 02  adc   a,$02c0+x
0da0: d4 b1     mov   $b1+x,a
0da2: f5 a0 02  mov   a,$02a0+x
0da5: 60        clrc
0da6: 95 a1 02  adc   a,$02a1+x
0da9: d5 a0 02  mov   $02a0+x,a
0dac: c4 12     mov   $12,a
0dae: 1c        asl   a
0daf: 1c        asl   a
0db0: 90 02     bcc   $0db4
0db2: 48 ff     eor   a,#$ff
0db4: fd        mov   y,a
0db5: f4 b1     mov   a,$b1+x
0db7: 68 f1     cmp   a,#$f1
0db9: 90 05     bcc   $0dc0
0dbb: 28 0f     and   a,#$0f
0dbd: cf        mul   ya
0dbe: 2f 04     bra   $0dc4
0dc0: cf        mul   ya
0dc1: dd        mov   a,y
0dc2: 8d 00     mov   y,#$00
0dc4: 3f 41 0e  call  $0e41
0dc7: 5f be 06  jmp   $06be

0dca: bb b0     inc   $b0+x
0dcc: e3 13 f8  bbs7  $13,$0dc7
0dcf: 6f        ret

; per-voice fades/dsps
0dd0: f2 13     clr7  $13
0dd2: f4 c1     mov   a,$c1+x
0dd4: f0 09     beq   $0ddf
0dd6: f5 e0 02  mov   a,$02e0+x
0dd9: de c0 03  cbne  $c0+x,$0ddf
0ddc: 3f 49 0e  call  $0e49             ; voice vol calculations
0ddf: f5 31 03  mov   a,$0331+x
0de2: fd        mov   y,a
0de3: f5 30 03  mov   a,$0330+x
0de6: da 10     movw  $10,ya            ; $10/1 = voice pan value
0de8: f4 91     mov   a,$91+x           ; voice pan fade counter
0dea: f0 0a     beq   $0df6
0dec: f5 41 03  mov   a,$0341+x
0def: fd        mov   y,a
0df0: f5 40 03  mov   a,$0340+x         ; pan fade delta
0df3: 3f 2b 0e  call  $0e2b             ; add delta (with mutations)?
0df6: f3 13 03  bbc7  $13,$0dfc
0df9: 3f 95 0c  call  $0c95
0dfc: f2 13     clr7  $13
0dfe: 3f bc 0b  call  $0bbc
0e01: f4 a0     mov   a,$a0+x
0e03: f0 0e     beq   $0e13
0e05: f4 a1     mov   a,$a1+x
0e07: d0 0a     bne   $0e13
0e09: f5 71 03  mov   a,$0371+x
0e0c: fd        mov   y,a
0e0d: f5 70 03  mov   a,$0370+x
0e10: 3f 2b 0e  call  $0e2b
0e13: f4 b1     mov   a,$b1+x
0e15: f0 b5     beq   $0dcc
0e17: f5 b0 02  mov   a,$02b0+x
0e1a: de b0 af  cbne  $b0+x,$0dcc
0e1d: eb 51     mov   y,$51
0e1f: f5 a1 02  mov   a,$02a1+x
0e22: cf        mul   ya
0e23: dd        mov   a,y
0e24: 60        clrc
0e25: 95 a0 02  adc   a,$02a0+x
0e28: 5f ac 0d  jmp   $0dac

0e2b: e2 13     set7  $13
0e2d: cb 12     mov   $12,y
0e2f: 3f d9 0b  call  $0bd9
0e32: 6d        push  y
0e33: eb 51     mov   y,$51
0e35: cf        mul   ya
0e36: cb 14     mov   $14,y
0e38: 8f 00 15  mov   $15,#$00
0e3b: eb 51     mov   y,$51
0e3d: ae        pop   a
0e3e: cf        mul   ya
0e3f: 7a 14     addw  ya,$14
0e41: 3f d9 0b  call  $0bd9
0e44: 7a 10     addw  ya,$10
0e46: da 10     movw  $10,ya
0e48: 6f        ret

0e49: e2 13     set7  $13
0e4b: eb 51     mov   y,$51
0e4d: f5 d1 02  mov   a,$02d1+x
0e50: cf        mul   ya
0e51: dd        mov   a,y
0e52: 60        clrc
0e53: 95 d0 02  adc   a,$02d0+x
0e56: 1c        asl   a
0e57: 90 02     bcc   $0e5b
0e59: 48 ff     eor   a,#$ff
0e5b: fb c1     mov   y,$c1+x
0e5d: cf        mul   ya
0e5e: dd        mov   a,y
0e5f: 48 ff     eor   a,#$ff
0e61: eb 59     mov   y,$59
0e63: cf        mul   ya
0e64: f5 10 02  mov   a,$0210+x
0e67: cf        mul   ya
0e68: f5 01 03  mov   a,$0301+x
0e6b: cf        mul   ya
0e6c: dd        mov   a,y
0e6d: cf        mul   ya
0e6e: dd        mov   a,y
0e6f: d5 21 03  mov   $0321+x,a
0e72: 6f        ret

; pan table
0e73: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e7b: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e83: db $7a,$7c,$7d,$7e,$7f

; echo fir preset
0e88: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0e90: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0e98: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0ea0: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($1107+1) for dsp regs ($10fd+1)
0ea8: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0eb2: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
0ebc: dw $085f
0ebe: dw $08de
0ec0: dw $0965
0ec2: dw $09f4
0ec4: dw $0a8c
0ec6: dw $0b2c
0ec8: dw $0bd6
0eca: dw $0c8b
0ecc: dw $0d4a
0ece: dw $0e14
0ed0: dw $0eea
0ed2: dw $0fcd
0ed4: dw $10be

0ed5: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

0ee1: e8 aa     mov   a,#$aa
0ee3: c5 f4 00  mov   $00f4,a
0ee6: e8 bb     mov   a,#$bb
0ee8: c5 f5 00  mov   $00f5,a
0eeb: e5 f4 00  mov   a,$00f4
0eee: 68 cc     cmp   a,#$cc
0ef0: d0 f9     bne   $0eeb
0ef2: 2f 20     bra   $0f14
0ef4: ec f4 00  mov   y,$00f4
0ef7: d0 fb     bne   $0ef4
0ef9: 5e f4 00  cmp   y,$00f4
0efc: d0 0f     bne   $0f0d
0efe: e5 f5 00  mov   a,$00f5
0f01: cc f4 00  mov   $00f4,y
0f04: d7 14     mov   ($14)+y,a
0f06: fc        inc   y
0f07: d0 f0     bne   $0ef9
0f09: ab 15     inc   $15
0f0b: 2f ec     bra   $0ef9
0f0d: 10 ea     bpl   $0ef9
0f0f: 5e f4 00  cmp   y,$00f4
0f12: 10 e5     bpl   $0ef9
0f14: e5 f6 00  mov   a,$00f6
0f17: ec f7 00  mov   y,$00f7
0f1a: da 14     movw  $14,ya
0f1c: ec f4 00  mov   y,$00f4
0f1f: e5 f5 00  mov   a,$00f5
0f22: cc f4 00  mov   $00f4,y
0f25: d0 cd     bne   $0ef4
0f27: cd 31     mov   x,#$31
0f29: c9 f1 00  mov   $00f1,x
0f2c: 6f        ret

0f2d: da 20     movw  $20,ya
0f2f: 8d 00     mov   y,#$00
0f31: f7 20     mov   a,($20)+y
0f33: d6 d8 04  mov   $04d8+y,a
0f36: fc        inc   y
0f37: ad 07     cmp   y,#$07
0f39: d0 f6     bne   $0f31
0f3b: 6f        ret

0f3c: da 20     movw  $20,ya
0f3e: 8d 00     mov   y,#$00
0f40: f7 20     mov   a,($20)+y
0f42: d6 da 04  mov   $04da+y,a
0f45: fc        inc   y
0f46: ad 03     cmp   y,#$03
0f48: d0 f6     bne   $0f40
0f4a: 6f        ret

0f4b: 3f 56 0f  call  $0f56
0f4e: f8 2e     mov   x,$2e
0f50: e8 01     mov   a,#$01
0f52: 3f 94 13  call  $1394
0f55: 6f        ret

0f56: 3f 3c 0f  call  $0f3c
0f59: f7 20     mov   a,($20)+y
0f5b: c5 de 04  mov   $04de,a
0f5e: f8 2f     mov   x,$2f
0f60: e4 20     mov   a,$20
0f62: d5 80 04  mov   $0480+x,a
0f65: e4 21     mov   a,$21
0f67: 3d        inc   x
0f68: d5 80 04  mov   $0480+x,a
0f6b: f8 2e     mov   x,$2e
0f6d: e8 00     mov   a,#$00
0f6f: d5 c8 04  mov   $04c8+x,a
0f72: 8d 04     mov   y,#$04
0f74: f7 20     mov   a,($20)+y
0f76: c4 22     mov   $22,a
0f78: fc        inc   y
0f79: f7 20     mov   a,($20)+y
0f7b: c5 dd 04  mov   $04dd,a
0f7e: 68 c9     cmp   a,#$c9
0f80: d0 03     bne   $0f85
0f82: d5 c8 04  mov   $04c8+x,a
0f85: 3f a1 0f  call  $0fa1
0f88: e8 d8     mov   a,#$d8
0f8a: 8d 04     mov   y,#$04
0f8c: 5f fc 14  jmp   $14fc

0f8f: e4 46     mov   a,$46
0f91: 05 d7 04  or    a,$04d7
0f94: c4 46     mov   $46,a
0f96: e8 04     mov   a,#$04
0f98: c5 d8 04  mov   $04d8,a
0f9b: e8 02     mov   a,#$02
0f9d: c5 d9 04  mov   $04d9,a
0fa0: 6f        ret

0fa1: e4 22     mov   a,$22
0fa3: 68 7f     cmp   a,#$7f
0fa5: f0 e8     beq   $0f8f
0fa7: 9c        dec   a
0fa8: fd        mov   y,a
0fa9: f6 68 10  mov   a,$1068+y
0fac: c5 d8 04  mov   $04d8,a
0faf: fc        inc   y
0fb0: f6 68 10  mov   a,$1068+y
0fb3: c5 d9 04  mov   $04d9,a
0fb6: 6f        ret

0fb7: 3f a0 13  call  $13a0
0fba: d0 fa     bne   $0fb6
0fbc: e4 2a     mov   a,$2a
0fbe: bc        inc   a
0fbf: bc        inc   a
0fc0: eb 2b     mov   y,$2b
0fc2: 3f 3c 0f  call  $0f3c
0fc5: fc        inc   y
0fc6: f7 20     mov   a,($20)+y
0fc8: c5 de 04  mov   $04de,a
0fcb: f4 d0     mov   a,$d0+x
0fcd: 60        clrc
0fce: 88 06     adc   a,#$06
0fd0: fd        mov   y,a
0fd1: bb d0     inc   $d0+x
0fd3: f8 2f     mov   x,$2f
0fd5: f5 80 04  mov   a,$0480+x
0fd8: c4 20     mov   $20,a
0fda: 3d        inc   x
0fdb: f5 80 04  mov   a,$0480+x
0fde: c4 21     mov   $21,a
0fe0: f7 20     mov   a,($20)+y
0fe2: c4 22     mov   $22,a
0fe4: f0 25     beq   $100b
0fe6: f8 2e     mov   x,$2e
0fe8: 28 80     and   a,#$80
0fea: f0 22     beq   $100e
0fec: e4 22     mov   a,$22
0fee: 68 e0     cmp   a,#$e0
0ff0: f0 2e     beq   $1020
0ff2: 68 c9     cmp   a,#$c9
0ff4: f0 6e     beq   $1064
0ff6: 68 e1     cmp   a,#$e1
0ff8: f0 32     beq   $102c
0ffa: 68 ed     cmp   a,#$ed
0ffc: f0 5a     beq   $1058
0ffe: eb 22     mov   y,$22
1000: e8 00     mov   a,#$00
1002: d5 c8 04  mov   $04c8+x,a
1005: e5 de 04  mov   a,$04de
1008: 5f e7 10  jmp   $10e7

100b: 5f 91 14  jmp   $1491

100e: 3f a1 0f  call  $0fa1
1011: e5 d8 04  mov   a,$04d8
1014: d5 bc 04  mov   $04bc+x,a
1017: e5 d9 04  mov   a,$04d9
101a: d5 c0 04  mov   $04c0+x,a
101d: 5f cb 0f  jmp   $0fcb

1020: fc        inc   y
1021: f7 20     mov   a,($20)+y
1023: 3f 30 11  call  $1130
1026: f8 2e     mov   x,$2e
1028: bb d0     inc   $d0+x
102a: d0 9f     bne   $0fcb
102c: fc        inc   y
102d: f7 20     mov   a,($20)+y
102f: c4 23     mov   $23,a
1031: e5 db 04  mov   a,$04db
1034: c4 22     mov   $22,a
1036: e5 df 04  mov   a,$04df
1039: 5d        mov   x,a
103a: 3f b6 10  call  $10b6
103d: eb 2e     mov   y,$2e
103f: e8 08     mov   a,#$08
1041: cf        mul   ya
1042: 5d        mov   x,a
1043: e4 23     mov   a,$23
1045: d5 64 04  mov   $0464+x,a
1048: c5 dc 04  mov   $04dc,a
104b: e4 22     mov   a,$22
104d: d5 63 04  mov   $0463+x,a
1050: c5 db 04  mov   $04db,a
1053: f8 2e     mov   x,$2e
1055: 5f 28 10  jmp   $1028

1058: fc        inc   y
1059: f7 20     mov   a,($20)+y
105b: c4 22     mov   $22,a
105d: e5 dc 04  mov   a,$04dc
1060: c4 23     mov   $23,a
1062: d0 d2     bne   $1036
1064: d5 c8 04  mov   $04c8+x,a
1067: 6f        ret

1068: 03 01 03  bbs0  $01,$106e
106b: 02 06     set0  $06
106d: 02 06     set0  $06
106f: 05 0c 02  or    a,$020c
1072: 0c 0a 18  asl   $180a
1075: 02 18     set0  $18
1077: 16 30 02  or    a,$0230+y
107a: 30 2e     bmi   $10aa
107c: 60        clrc
107d: 02 60     set0  $60
107f: 5e 12 02  cmp   y,$0212
1082: 12 10     clr0  $10
1084: 24 02     and   a,$02
1086: 24 22     and   a,$22
1088: 09 02 09  or    ($09),($02)
108b: 07 01     or    a,($01+x)
108d: 02 02     set0  $02
108f: 02 03     set0  $03
1091: 02 04     set0  $04
1093: 02 05     set0  $05
1095: 02 06     set0  $06
1097: 02 03     set0  $03
1099: 03 06 03  bbs0  $06,$109f
109c: 0c 06 18  asl   $1806
109f: 0c 30 18  asl   $1830
10a2: 60        clrc
10a3: 30 12     bmi   $10b7
10a5: 09 24 12  or    ($12),($24)
10a8: 04 02     or    a,$02
10aa: 04 02     or    a,$02
10ac: 04 03     or    a,$03
10ae: 05 03 05  or    a,$0503
10b1: 02 05     set0  $05
10b3: 04 02     or    a,$02
10b5: 01        tcall 0
10b6: e4 22     mov   a,$22
10b8: d5 21 03  mov   $0321+x,a
10bb: e4 23     mov   a,$23
10bd: 28 c0     and   a,#$c0
10bf: d5 51 03  mov   $0351+x,a
10c2: e4 23     mov   a,$23
10c4: 28 3f     and   a,#$3f
10c6: c5 33 04  mov   $0433,a
10c9: e5 31 04  mov   a,$0431
10cc: 68 00     cmp   a,#$00
10ce: f0 05     beq   $10d5
10d0: e8 0a     mov   a,#$0a
10d2: c5 33 04  mov   $0433,a
10d5: e5 33 04  mov   a,$0433
10d8: c4 11     mov   $11,a
10da: 8f 00 10  mov   $10,#$00
10dd: e4 47     mov   a,$47
10df: 25 d6 04  and   a,$04d6
10e2: c4 47     mov   $47,a
10e4: 5f 95 0c  jmp   $0c95

10e7: 4d        push  x
10e8: 2d        push  a
10e9: e4 47     mov   a,$47
10eb: 25 d6 04  and   a,$04d6
10ee: c4 47     mov   $47,a
10f0: e5 df 04  mov   a,$04df
10f3: 5d        mov   x,a
10f4: ae        pop   a
10f5: da 10     movw  $10,ya
10f7: 3f d4 06  call  $06d4
10fa: ce        pop   x
10fb: 6f        ret

10fc: f8 2f     mov   x,$2f
10fe: d5 58 04  mov   $0458+x,a
1101: dd        mov   a,y
1102: d5 59 04  mov   $0459+x,a
1105: f8 2e     mov   x,$2e
1107: e8 01     mov   a,#$01
1109: d5 54 04  mov   $0454+x,a
110c: 6f        ret

110d: 6d        push  y
110e: 2d        push  a
110f: e5 d5 04  mov   a,$04d5
1112: 60        clrc
1113: 88 05     adc   a,#$05
1115: fd        mov   y,a
1116: c4 20     mov   $20,a
1118: ae        pop   a
1119: 3f 49 07  call  $0749
111c: ee        pop   y
111d: dd        mov   a,y
111e: eb 20     mov   y,$20
1120: fc        inc   y
1121: 5f 49 07  jmp   $0749

1124: 2d        push  a
1125: e5 d5 04  mov   a,$04d5
1128: 60        clrc
1129: 88 07     adc   a,#$07
112b: fd        mov   y,a
112c: ae        pop   a
112d: 5f 49 07  jmp   $0749

1130: 2d        push  a
1131: e4 49     mov   a,$49
1133: 25 d6 04  and   a,$04d6
1136: c4 49     mov   $49,a
1138: e5 df 04  mov   a,$04df
113b: 5d        mov   x,a
113c: ae        pop   a
113d: 8f 00 47  mov   $47,#$00
1140: 3f 62 09  call  $0962
1143: 6f        ret

1144: 2d        push  a
1145: e5 d5 04  mov   a,$04d5
1148: fd        mov   y,a
1149: ae        pop   a
114a: 3f 49 07  call  $0749
114d: fc        inc   y
114e: 3f 49 07  call  $0749
1151: 6f        ret

1152: cd 00     mov   x,#$00
1154: 1a 20     decw  $20
1156: 1a 20     decw  $20
1158: e7 20     mov   a,($20+x)
115a: c5 c6 17  mov   $17c6,a
115d: 1a 20     decw  $20
115f: e7 20     mov   a,($20+x)
1161: c5 c5 17  mov   $17c5,a
1164: e8 01     mov   a,#$01
1166: c5 b2 04  mov   $04b2,a
1169: 3a 20     incw  $20
116b: 3a 20     incw  $20
116d: 3a 20     incw  $20
116f: 6f        ret

1170: 3f 52 11  call  $1152
1173: 5f 78 12  jmp   $1278

1176: 3f 52 11  call  $1152
1179: 5f 70 12  jmp   $1270

117c: 0e 00 02  tset1 $0200
117f: 04 06     or    a,$06
1181: 08 0a     or    a,#$0a
1183: 0c 8f 60  asl   $608f
1186: 2a 8f 04  or1   c,!($0091,7)
1189: 2b cd     rol   $cd
118b: 00        nop
118c: e8 ef     mov   a,#$ef
118e: 8d 10     mov   y,#$10
1190: 8f 08 20  mov   $20,#$08
1193: 8f 40 21  mov   $21,#$40
1196: d0 6f     bne   $1207
1198: e5 b1 04  mov   a,$04b1
119b: 28 7f     and   a,#$7f
119d: c5 b1 04  mov   $04b1,a
11a0: 8f d5 24  mov   $24,#$d5
11a3: 8f 17 25  mov   $25,#$17
11a6: 8f 68 2a  mov   $2a,#$68
11a9: 8f 04 2b  mov   $2b,#$04
11ac: cd 01     mov   x,#$01
11ae: e8 df     mov   a,#$df
11b0: 8d 20     mov   y,#$20
11b2: 8f 0a 20  mov   $20,#$0a
11b5: 8f 50 21  mov   $21,#$50
11b8: d0 4d     bne   $1207
11ba: e5 b2 04  mov   a,$04b2
11bd: 28 7f     and   a,#$7f
11bf: c5 b2 04  mov   $04b2,a
11c2: 8f c5 24  mov   $24,#$c5
11c5: 8f 17 25  mov   $25,#$17
11c8: 8f 70 2a  mov   $2a,#$70
11cb: 8f 04 2b  mov   $2b,#$04
11ce: cd 02     mov   x,#$02
11d0: e8 bf     mov   a,#$bf
11d2: 8d 40     mov   y,#$40
11d4: 8f 0c 20  mov   $20,#$0c
11d7: 8f 60 21  mov   $21,#$60
11da: d0 2b     bne   $1207
11dc: e5 b3 04  mov   a,$04b3
11df: 28 7f     and   a,#$7f
11e1: c5 b3 04  mov   $04b3,a
11e4: 8f c7 24  mov   $24,#$c7
11e7: 8f 16 25  mov   $25,#$16
11ea: e4 19     mov   a,$19
11ec: c5 ef 18  mov   $18ef,a
11ef: c5 f7 18  mov   $18f7,a
11f2: c5 ff 18  mov   $18ff,a
11f5: 8f 78 2a  mov   $2a,#$78
11f8: 8f 04 2b  mov   $2b,#$04
11fb: cd 03     mov   x,#$03
11fd: e8 7f     mov   a,#$7f
11ff: 8d 80     mov   y,#$80
1201: 8f 0e 20  mov   $20,#$0e
1204: 8f 70 21  mov   $21,#$70
1207: c5 d6 04  mov   $04d6,a
120a: cc d7 04  mov   $04d7,y
120d: e4 20     mov   a,$20
120f: c5 df 04  mov   $04df,a
1212: e4 21     mov   a,$21
1214: c5 d5 04  mov   $04d5,a
1217: 7d        mov   a,x
1218: c4 2e     mov   $2e,a
121a: 1c        asl   a
121b: c4 2f     mov   $2f,a
121d: f5 b0 04  mov   a,$04b0+x
1220: c4 20     mov   $20,a
1222: c4 2d     mov   $2d,a
1224: f0 47     beq   $126d
1226: 75 d0 04  cmp   a,$04d0+x
1229: b0 42     bcs   $126d
122b: 28 07     and   a,#$07
122d: fd        mov   y,a
122e: f6 7c 11  mov   a,$117c+y
1231: 8b 20     dec   $20
1233: 38 f8 20  and   $20,#$f8
1236: 0b 20     asl   $20
1238: 04 20     or    a,$20
123a: 5d        mov   x,a
123b: e4 2e     mov   a,$2e
123d: 7d        mov   a,x
123e: fd        mov   y,a
123f: f7 24     mov   a,($24)+y
1241: c4 20     mov   $20,a
1243: 3a 24     incw  $24
1245: f7 24     mov   a,($24)+y
1247: c4 21     mov   $21,a
1249: 4d        push  x
124a: 1a 20     decw  $20
124c: cd 00     mov   x,#$00
124e: e7 20     mov   a,($20+x)
1250: f8 2e     mov   x,$2e
1252: d5 8c 04  mov   $048c+x,a
1255: 3a 20     incw  $20
1257: 5d        mov   x,a
1258: 1f 5b 12  jmp   ($125b+x)

125b: 80        setc
125c: 12 80     clr0  $80
125e: 12 70     clr0  $70
1260: 12 78     clr0  $78
1262: 12 c7     clr0  $c7
1264: 12 76     clr0  $76
1266: 11        tcall 1
1267: 70 11     bvs   $127a
1269: 88 12     adc   a,#$12
126b: 88 12     adc   a,#$12
126d: 5f 1a 13  jmp   $131a

1270: ce        pop   x
1271: e4 20     mov   a,$20
1273: eb 21     mov   y,$21
1275: 5f 56 0f  jmp   $0f56

1278: ce        pop   x
1279: e4 20     mov   a,$20
127b: eb 21     mov   y,$21
127d: 5f 4b 0f  jmp   $0f4b

1280: ce        pop   x
1281: e4 20     mov   a,$20
1283: eb 21     mov   y,$21
1285: 5f df 14  jmp   $14df

1288: ce        pop   x
1289: cd 00     mov   x,#$00
128b: 1a 20     decw  $20
128d: 1a 20     decw  $20
128f: e7 20     mov   a,($20+x)
1291: c4 27     mov   $27,a
1293: 1a 20     decw  $20
1295: e7 20     mov   a,($20+x)
1297: c4 26     mov   $26,a
1299: 1a 20     decw  $20
129b: e7 20     mov   a,($20+x)
129d: c4 29     mov   $29,a
129f: 1a 20     decw  $20
12a1: e7 20     mov   a,($20+x)
12a3: c4 28     mov   $28,a
12a5: 3a 20     incw  $20
12a7: 3a 20     incw  $20
12a9: 3a 20     incw  $20
12ab: 3a 20     incw  $20
12ad: 3a 20     incw  $20
12af: 8d 05     mov   y,#$05
12b1: f7 20     mov   a,($20)+y
12b3: 5d        mov   x,a
12b4: fc        inc   y
12b5: f7 20     mov   a,($20)+y
12b7: c4 2c     mov   $2c,a
12b9: e4 20     mov   a,$20
12bb: eb 21     mov   y,$21
12bd: 3f ee 14  call  $14ee
12c0: e8 00     mov   a,#$00
12c2: 8d 00     mov   y,#$00
12c4: 5f fc 10  jmp   $10fc

12c7: cd 00     mov   x,#$00
12c9: 1a 20     decw  $20
12cb: 1a 20     decw  $20
12cd: e7 20     mov   a,($20+x)
12cf: c4 23     mov   $23,a
12d1: 1a 20     decw  $20
12d3: e7 20     mov   a,($20+x)
12d5: c4 22     mov   $22,a
12d7: ce        pop   x
12d8: e4 2e     mov   a,$2e
12da: 68 03     cmp   a,#$03
12dc: f0 15     beq   $12f3
12de: 68 02     cmp   a,#$02
12e0: f0 1e     beq   $1300
12e2: 68 01     cmp   a,#$01
12e4: f0 27     beq   $130d
12e6: e4 22     mov   a,$22
12e8: c5 40 04  mov   $0440,a
12eb: e4 23     mov   a,$23
12ed: c5 41 04  mov   $0441,a
12f0: 1f 0d 18  jmp   ($180d+x)

12f3: e4 22     mov   a,$22
12f5: c5 46 04  mov   $0446,a
12f8: e4 23     mov   a,$23
12fa: c5 47 04  mov   $0447,a
12fd: 1f c7 16  jmp   ($16c7+x)

1300: e4 22     mov   a,$22
1302: c5 44 04  mov   $0444,a
1305: e4 23     mov   a,$23
1307: c5 45 04  mov   $0445,a
130a: 1f c5 17  jmp   ($17c5+x)

130d: e4 22     mov   a,$22
130f: c5 42 04  mov   $0442,a
1312: e4 23     mov   a,$23
1314: c5 43 04  mov   $0443,a
1317: 1f d5 17  jmp   ($17d5+x)

131a: f5 b4 04  mov   a,$04b4+x
131d: c4 20     mov   $20,a
131f: f0 0c     beq   $132d
1321: 75 d0 04  cmp   a,$04d0+x
1324: b0 07     bcs   $132d
1326: f5 8c 04  mov   a,$048c+x
1329: 5d        mov   x,a
132a: 1f 2e 13  jmp   ($132e+x)

132d: 6f        ret

132e: 48 13     eor   a,#$13
1330: 48 13     eor   a,#$13
1332: 4b 13     lsr   $13
1334: 4b 13     lsr   $13
1336: 43 13 4b  bbs2  $13,$1384
1339: 13 4b 13  bbc0  $4b,$134f
133c: 40        setp
133d: 13 40 13  bbc0  $40,$1353
1340: 5f 4e 13  jmp   $134e

1343: f8 2f     mov   x,$2f
1345: 1f 40 04  jmp   ($0440+x)

1348: 5f 8b 14  jmp   $148b

134b: 5f b7 0f  jmp   $0fb7

134e: 3f a0 13  call  $13a0
1351: f0 3e     beq   $1391
1353: bb d4     inc   $d4+x
1355: f4 d4     mov   a,$d4+x
1357: 64 2c     cmp   a,$2c
1359: d0 29     bne   $1384
135b: e8 00     mov   a,#$00
135d: d4 d4     mov   $d4+x,a
135f: f4 d0     mov   a,$d0+x
1361: fd        mov   y,a
1362: bb d0     inc   $d0+x
1364: f7 26     mov   a,($26)+y
1366: 68 00     cmp   a,#$00
1368: f0 27     beq   $1391
136a: 68 7f     cmp   a,#$7f
136c: f0 17     beq   $1385
136e: 6d        push  y
136f: 3f 24 11  call  $1124
1372: ee        pop   y
1373: e4 29     mov   a,$29
1375: f0 0d     beq   $1384
1377: f7 28     mov   a,($28)+y
1379: 28 1f     and   a,#$1f
137b: c4 48     mov   $48,a
137d: e4 49     mov   a,$49
137f: 05 d7 04  or    a,$04d7
1382: c4 49     mov   $49,a
1384: 6f        ret

1385: e4 46     mov   a,$46
1387: 05 d7 04  or    a,$04d7
138a: c4 46     mov   $46,a
138c: e8 00     mov   a,#$00
138e: 5f 44 11  jmp   $1144

1391: 5f 91 14  jmp   $1491

1394: d5 9c 04  mov   $049c+x,a
1397: 6f        ret

1398: d5 bc 04  mov   $04bc+x,a
139b: dd        mov   a,y
139c: d5 c0 04  mov   $04c0+x,a
139f: 6f        ret

13a0: f8 2e     mov   x,$2e
13a2: f5 b8 04  mov   a,$04b8+x
13a5: bc        inc   a
13a6: d5 b8 04  mov   $04b8+x,a
13a9: 68 01     cmp   a,#$01
13ab: f0 32     beq   $13df
13ad: 75 bc 04  cmp   a,$04bc+x
13b0: f0 15     beq   $13c7
13b2: 75 c0 04  cmp   a,$04c0+x
13b5: d0 1d     bne   $13d4
13b7: f5 9c 04  mov   a,$049c+x
13ba: 28 01     and   a,#$01
13bc: d0 16     bne   $13d4
13be: e4 46     mov   a,$46
13c0: 05 d7 04  or    a,$04d7
13c3: c4 46     mov   $46,a
13c5: d0 0d     bne   $13d4
13c7: 68 ff     cmp   a,#$ff
13c9: d0 04     bne   $13cf
13cb: e8 fe     mov   a,#$fe
13cd: d0 02     bne   $13d1
13cf: e8 00     mov   a,#$00
13d1: d5 b8 04  mov   $04b8+x,a
13d4: f5 b8 04  mov   a,$04b8+x
13d7: 6f        ret

13d8: e8 81     mov   a,#$81
13da: d5 9c 04  mov   $049c+x,a
13dd: d0 0b     bne   $13ea
13df: f5 9c 04  mov   a,$049c+x
13e2: 68 01     cmp   a,#$01
13e4: f0 f2     beq   $13d8
13e6: 68 81     cmp   a,#$81
13e8: f0 ea     beq   $13d4
13ea: f5 50 04  mov   a,$0450+x
13ed: d0 1a     bne   $1409
13ef: bc        inc   a
13f0: d5 50 04  mov   $0450+x,a
13f3: 3f 57 15  call  $1557
13f6: f8 2e     mov   x,$2e
13f8: f5 54 04  mov   a,$0454+x
13fb: f0 0c     beq   $1409
13fd: f8 2f     mov   x,$2f
13ff: f5 59 04  mov   a,$0459+x
1402: fd        mov   y,a
1403: f5 58 04  mov   a,$0458+x
1406: 3f 0d 11  call  $110d
1409: f8 2e     mov   x,$2e
140b: f5 c8 04  mov   a,$04c8+x
140e: d0 c4     bne   $13d4
1410: e4 45     mov   a,$45
1412: 05 d7 04  or    a,$04d7
1415: c4 45     mov   $45,a
1417: 5f d4 13  jmp   $13d4

141a: 3f 38 14  call  $1438
141d: e8 00     mov   a,#$00
141f: c5 91 04  mov   $0491,a
1422: c5 38 04  mov   $0438,a
1425: c5 39 04  mov   $0439,a
1428: c5 3a 04  mov   $043a,a
142b: c5 c8 04  mov   $04c8,a
142e: c5 c9 04  mov   $04c9,a
1431: c5 ca 04  mov   $04ca,a
1434: c5 cb 04  mov   $04cb,a
1437: 6f        ret

1438: e8 00     mov   a,#$00
143a: c5 b4 04  mov   $04b4,a
143d: c5 b5 04  mov   $04b5,a
1440: c5 b6 04  mov   $04b6,a
1443: c5 b7 04  mov   $04b7,a
1446: c5 b0 04  mov   $04b0,a
1449: c5 b1 04  mov   $04b1,a
144c: c5 b2 04  mov   $04b2,a
144f: c5 b3 04  mov   $04b3,a
1452: 6f        ret

1453: 3f 5d 14  call  $145d
1456: 3f 6b 14  call  $146b
1459: 3f 79 14  call  $1479
145c: 6f        ret

145d: b2 1a     clr5  $1a
145f: a2 46     set5  $46
1461: a2 47     set5  $47
1463: a2 5e     set5  $5e
1465: e8 00     mov   a,#$00
1467: c5 b5 04  mov   $04b5,a
146a: 6f        ret

146b: d2 1a     clr6  $1a
146d: c2 46     set6  $46
146f: c2 47     set6  $47
1471: c2 5e     set6  $5e
1473: e8 00     mov   a,#$00
1475: c5 b6 04  mov   $04b6,a
1478: 6f        ret

1479: f2 1a     clr7  $1a
147b: e2 46     set7  $46
147d: e2 47     set7  $47
147f: e2 5e     set7  $5e
1481: e8 00     mov   a,#$00
1483: c5 b7 04  mov   $04b7,a
1486: 6f        ret

1487: 8a 14 08  eor1  c,$0102,4
148a: 6f        ret

148b: 3f a0 13  call  $13a0
148e: f0 01     beq   $1491
1490: 6f        ret

1491: e5 df 04  mov   a,$04df
1494: 5d        mov   x,a
1495: e4 1a     mov   a,$1a
1497: 25 d6 04  and   a,$04d6
149a: c4 1a     mov   $1a,a
149c: e4 47     mov   a,$47
149e: 05 d7 04  or    a,$04d7
14a1: c4 47     mov   $47,a
14a3: e4 5e     mov   a,$5e
14a5: 05 d7 04  or    a,$04d7
14a8: c4 5e     mov   $5e,a
14aa: f5 e0 04  mov   a,$04e0+x
14ad: d5 21 03  mov   $0321+x,a
14b0: f5 f0 04  mov   a,$04f0+x
14b3: d5 51 03  mov   $0351+x,a
14b6: 3f 86 0c  call  $0c86
14b9: e5 df 04  mov   a,$04df
14bc: 5d        mov   x,a
14bd: e4 1a     mov   a,$1a
14bf: 25 d6 04  and   a,$04d6
14c2: c4 1a     mov   $1a,a
14c4: f5 11 02  mov   a,$0211+x
14c7: 3f 62 09  call  $0962
14ca: f8 2e     mov   x,$2e
14cc: e8 00     mov   a,#$00
14ce: d5 b4 04  mov   $04b4+x,a
14d1: d5 c8 04  mov   $04c8+x,a
14d4: d5 8c 04  mov   $048c+x,a
14d7: e4 46     mov   a,$46
14d9: 05 d7 04  or    a,$04d7
14dc: c4 46     mov   $46,a
14de: 6f        ret

14df: da 22     movw  $22,ya
14e1: e8 00     mov   a,#$00
14e3: f8 2e     mov   x,$2e
14e5: d5 cc 04  mov   $04cc+x,a
14e8: d5 c8 04  mov   $04c8+x,a
14eb: 5f 05 15  jmp   $1505

14ee: da 22     movw  $22,ya
14f0: d8 24     mov   $24,x
14f2: e4 48     mov   a,$48
14f4: 28 e0     and   a,#$e0
14f6: 04 24     or    a,$24
14f8: c4 48     mov   $48,a
14fa: d0 04     bne   $1500
14fc: da 22     movw  $22,ya
14fe: e8 00     mov   a,#$00
1500: f8 2e     mov   x,$2e
1502: d5 cc 04  mov   $04cc+x,a
1505: 3f 47 15  call  $1547
1508: fa 2a 20  mov   ($20),($2a)
150b: fa 2b 21  mov   ($21),($2b)
150e: 8d 00     mov   y,#$00
1510: f7 22     mov   a,($22)+y
1512: d7 20     mov   ($20)+y,a
1514: fc        inc   y
1515: ad 07     cmp   y,#$07
1517: d0 f7     bne   $1510
1519: e4 1a     mov   a,$1a
151b: 05 d7 04  or    a,$04d7
151e: c4 1a     mov   $1a,a
1520: e4 46     mov   a,$46
1522: 05 d7 04  or    a,$04d7
1525: c4 46     mov   $46,a
1527: e5 d7 04  mov   a,$04d7
152a: e8 00     mov   a,#$00
152c: d5 b8 04  mov   $04b8+x,a
152f: d4 d0     mov   $d0+x,a
1531: d4 d4     mov   $d4+x,a
1533: d4 d8     mov   $d8+x,a
1535: d5 9c 04  mov   $049c+x,a
1538: d5 b0 04  mov   $04b0+x,a
153b: d5 50 04  mov   $0450+x,a
153e: d5 54 04  mov   $0454+x,a
1541: e4 2d     mov   a,$2d
1543: d5 b4 04  mov   $04b4+x,a
1546: 6f        ret

1547: 8d 00     mov   y,#$00
1549: f7 22     mov   a,($22)+y
154b: d5 bc 04  mov   $04bc+x,a
154e: fc        inc   y
154f: f7 22     mov   a,($22)+y
1551: c4 21     mov   $21,a
1553: d5 c0 04  mov   $04c0+x,a
1556: 6f        ret

1557: e4 2a     mov   a,$2a
1559: bc        inc   a
155a: bc        inc   a
155b: eb 2b     mov   y,$2b
155d: da 22     movw  $22,ya
155f: 8d 00     mov   y,#$00
1561: f5 cc 04  mov   a,$04cc+x
1564: f0 09     beq   $156f
1566: e4 49     mov   a,$49
1568: 05 d7 04  or    a,$04d7
156b: c4 49     mov   $49,a
156d: d0 07     bne   $1576
156f: e4 49     mov   a,$49
1571: 25 d6 04  and   a,$04d6
1574: c4 49     mov   $49,a
1576: e9 df 04  mov   x,$04df
1579: f5 21 03  mov   a,$0321+x
157c: d5 e0 04  mov   $04e0+x,a
157f: f5 51 03  mov   a,$0351+x
1582: d5 f0 04  mov   $04f0+x,a
1585: 8f 00 47  mov   $47,#$00
1588: f7 22     mov   a,($22)+y
158a: 6d        push  y
158b: 3f 62 09  call  $0962
158e: ee        pop   y
158f: fc        inc   y
1590: f7 22     mov   a,($22)+y
1592: fc        inc   y
1593: d5 21 03  mov   $0321+x,a
1596: f7 22     mov   a,($22)+y
1598: 28 c0     and   a,#$c0
159a: d5 51 03  mov   $0351+x,a
159d: f7 22     mov   a,($22)+y
159f: fc        inc   y
15a0: 28 3f     and   a,#$3f
15a2: c5 33 04  mov   $0433,a
15a5: e5 31 04  mov   a,$0431
15a8: 68 00     cmp   a,#$00
15aa: f0 05     beq   $15b1
15ac: e8 0a     mov   a,#$0a
15ae: c5 33 04  mov   $0433,a
15b1: e5 33 04  mov   a,$0433
15b4: c4 11     mov   $11,a
15b6: 8f 00 10  mov   $10,#$00
15b9: e4 47     mov   a,$47
15bb: 25 d6 04  and   a,$04d6
15be: c4 47     mov   $47,a
15c0: 6d        push  y
15c1: 3f 95 0c  call  $0c95
15c4: ee        pop   y
15c5: f7 22     mov   a,($22)+y
15c7: fc        inc   y
15c8: c4 11     mov   $11,a
15ca: f7 22     mov   a,($22)+y
15cc: c4 10     mov   $10,a
15ce: e4 47     mov   a,$47
15d0: 25 d6 04  and   a,$04d6
15d3: c4 47     mov   $47,a
15d5: 5f d4 06  jmp   $06d4

15d8: 8a 14 08  eor1  c,$0102,4
15db: e8 00     mov   a,#$00
15dd: c5 b5 04  mov   $04b5,a
15e0: c5 91 04  mov   $0491,a
15e3: 6f        ret

15e4: 8a 14 08  eor1  c,$0102,4
15e7: e8 02     mov   a,#$02
15e9: c5 92 04  mov   $0492,a
15ec: e8 70     mov   a,#$70
15ee: c5 91 04  mov   $0491,a
15f1: d0 0d     bne   $1600
15f3: 8a 14 08  eor1  c,$0102,4
15f6: e8 01     mov   a,#$01
15f8: c5 92 04  mov   $0492,a
15fb: e8 18     mov   a,#$18
15fd: c5 91 04  mov   $0491,a
1600: c4 5a     mov   $5a,a
1602: e8 10     mov   a,#$10
1604: c4 5b     mov   $5b,a
1606: 5f 30 0a  jmp   $0a30

1609: e5 91 04  mov   a,$0491
160c: 68 00     cmp   a,#$00
160e: f0 17     beq   $1627
1610: 68 ff     cmp   a,#$ff
1612: f0 14     beq   $1628
1614: 9c        dec   a
1615: c5 91 04  mov   $0491,a
1618: 68 00     cmp   a,#$00
161a: d0 0b     bne   $1627
161c: e8 31     mov   a,#$31
161e: c5 f1 00  mov   $00f1,a
1621: 3f 38 14  call  $1438
1624: 3f 53 14  call  $1453
1627: 6f        ret

1628: e8 00     mov   a,#$00
162a: c5 91 04  mov   $0491,a
162d: 6f        ret

162e: fd        mov   y,a
162f: 5f 24 0a  jmp   $0a24

1632: fd        mov   y,a
1633: e4 53     mov   a,$53
1635: c5 93 04  mov   $0493,a
1638: 5f 3b 0a  jmp   $0a3b

163b: e5 93 04  mov   a,$0493
163e: fd        mov   y,a
163f: d0 f7     bne   $1638
1641: c4 54     mov   $54,a
1643: e4 20     mov   a,$20
1645: c4 55     mov   $55,a
1647: 5f 47 0a  jmp   $0a47

164a: d5 b0 02  mov   $02b0+x,a
164d: e4 20     mov   a,$20
164f: d5 a1 02  mov   $02a1+x,a
1652: e4 21     mov   a,$21
1654: d4 b1     mov   $b1+x,a
1656: d5 c1 02  mov   $02c1+x,a
1659: e8 00     mov   a,#$00
165b: d5 b1 02  mov   $02b1+x,a
165e: 6f        ret

165f: e8 00     mov   a,#$00
1661: f0 f1     beq   $1654
1663: c4 50     mov   $50,a
1665: 6f        ret

1666: d5 f0 02  mov   $02f0+x,a
1669: 6f        ret

166a: 3f 86 0a  call  $0a86
166d: 6f        ret

166e: d8 44     mov   $44,x
1670: d4 90     mov   $90+x,a
1672: 2d        push  a
1673: e4 20     mov   a,$20
1675: 5f 95 0a  jmp   $0a95

1678: 2d        push  a
1679: e8 01     mov   a,#$01
167b: 2f 03     bra   $1680
167d: 2d        push  a
167e: e8 00     mov   a,#$00
1680: d5 90 02  mov   $0290+x,a
1683: ae        pop   a
1684: d5 81 02  mov   $0281+x,a
1687: e4 20     mov   a,$20
1689: d5 80 02  mov   $0280+x,a
168c: e4 21     mov   a,$21
168e: d5 91 02  mov   $0291+x,a
1691: 6f        ret

1692: e8 00     mov   a,#$00
1694: d5 80 02  mov   $0280+x,a
1697: 6f        ret

1698: 5f c8 09  jmp   $09c8

169b: d8 44     mov   $44,x
169d: d4 91     mov   $91+x,a
169f: 2d        push  a
16a0: e4 20     mov   a,$20
16a2: 5f dc 09  jmp   $09dc

16a5: cd 20     mov   x,#$20
16a7: d5 00 04  mov   $0400+x,a
16aa: 3d        inc   x
16ab: c8 00     cmp   x,#$00
16ad: d0 f8     bne   $16a7
16af: fd        mov   y,a
16b0: 8f 00 24  mov   $24,#$00
16b3: 8f e8 25  mov   $25,#$e8
16b6: d7 24     mov   ($24)+y,a
16b8: fc        inc   y
16b9: ad 00     cmp   y,#$00
16bb: d0 f9     bne   $16b6
16bd: ab 25     inc   $25
16bf: 78 ff 25  cmp   $25,#$ff
16c2: d0 f2     bne   $16b6
16c4: 5f c8 2f  jmp   $2fc8

; note dur%'s
6f80: db $33,$66,$7f,$99,$b2,$cc,$e5,$fc
; per-note velocity values
6f88: db $19,$33,$4c,$66,$72,$7f,$8c,$99
6f90: db $a5,$b2,$bf,$cc,$d8,$e5,$f2,$fc
