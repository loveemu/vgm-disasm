0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 f0     cmp   x,#$f0
040a: d0 fb     bne   $0407
040c: c5 ff 11  mov   $11ff,a           ; zero patch offset for BGM
040f: bc        inc   a
0410: 3f a9 09  call  $09a9
0413: a2 48     set5  $48
0415: e8 60     mov   a,#$60
0417: 8d 0c     mov   y,#$0c
0419: 3f b8 05  call  $05b8
041c: 8d 1c     mov   y,#$1c
041e: 3f b8 05  call  $05b8
0421: e8 2c     mov   a,#$2c
0423: 8d 5d     mov   y,#$5d
0425: 3f b8 05  call  $05b8             ; set DIR to $2c00
0428: e8 30     mov   a,#$30
042a: c4 f1     mov   $f1,a
042c: e8 10     mov   a,#$10
042e: c4 fa     mov   $fa,a
0430: c4 53     mov   $53,a
0432: e8 01     mov   a,#$01
0434: c4 f1     mov   $f1,a
0436: e4 36     mov   a,$36
0438: 48 ff     eor   a,#$ff
043a: 24 4a     and   a,$4a
043c: c4 38     mov   $38,a
043e: 8d 0a     mov   y,#$0a
0440: ad 05     cmp   y,#$05
0442: f0 07     beq   $044b
0444: b0 08     bcs   $044e
0446: 69 4d 4c  cmp   ($4c),($4d)
0449: d0 0f     bne   $045a
044b: e3 4c 0c  bbs7  $4c,$045a
044e: f6 5d 0d  mov   a,$0d5d+y
0451: c4 f2     mov   $f2,a
0453: f6 67 0d  mov   a,$0d67+y
0456: 5d        mov   x,a
0457: e6        mov   a,(x)
0458: c4 f3     mov   $f3,a
045a: fe e4     dbnz  y,$0440
045c: cb 45     mov   $45,y
045e: cb 46     mov   $46,y
0460: eb fd     mov   y,$fd
0462: f0 fc     beq   $0460
0464: 6d        push  y
0465: e8 40     mov   a,#$40
0467: cf        mul   ya
0468: 60        clrc
0469: 84 43     adc   a,$43
046b: c4 43     mov   $43,a
046d: 90 0a     bcc   $0479
046f: 3f a0 0d  call  $0da0
0472: 69 4d 4c  cmp   ($4c),($4d)
0475: f0 02     beq   $0479
0477: ab 4c     inc   $4c
0479: e4 53     mov   a,$53
047b: ee        pop   y
047c: cf        mul   ya
047d: 60        clrc
047e: 84 51     adc   a,$51
0480: c4 51     mov   $51,a
0482: 90 19     bcc   $049d
0484: 3f 83 06  call  $0683
0487: e4 30     mov   a,$30
0489: f0 0a     beq   $0495
048b: 8b 31     dec   $31
048d: d0 06     bne   $0495
048f: 8f 00 04  mov   $04,#$00
0492: 3f e8 05  call  $05e8
0495: cd 00     mov   x,#$00
0497: 3f b6 04  call  $04b6
049a: 5f 36 04  jmp   $0436

049d: e4 04     mov   a,$04
049f: f0 12     beq   $04b3
04a1: cd 00     mov   x,#$00
04a3: 8f 01 47  mov   $47,#$01
04a6: f4 d5     mov   a,$d5+x
04a8: f0 03     beq   $04ad
04aa: 3f 34 0c  call  $0c34
04ad: 3d        inc   x
04ae: 3d        inc   x
04af: 0b 47     asl   $47
04b1: d0 f3     bne   $04a6
04b3: 5f 36 04  jmp   $0436

04b6: f4 04     mov   a,$04+x
04b8: d4 f4     mov   $f4+x,a
04ba: f4 f4     mov   a,$f4+x
04bc: 74 f4     cmp   a,$f4+x
04be: d0 fa     bne   $04ba
04c0: d4 00     mov   $00+x,a
04c2: 6f        ret

; handle a note vcmd (80-df)
04c3: ad ca     cmp   y,#$ca
04c5: 90 05     bcc   $04cc
; vcmds ca-df - percussion note
04c7: 3f df 07  call  $07df             ; set instrument by note number
04ca: 8d a4     mov   y,#$a4            ; dispatch as note $a4
04cc: ad c8     cmp   y,#$c8
04ce: b0 f2     bcs   $04c2             ; quit if tie/rest
04d0: e4 1a     mov   a,$1a
04d2: 24 47     and   a,$47
04d4: d0 ec     bne   $04c2
; vcmds 80-c7 - note (note number in Y)
04d6: dd        mov   a,y
04d7: 28 7f     and   a,#$7f            ; 80-c7 => 00-47
04d9: 60        clrc
04da: 84 50     adc   a,$50             ; add global transpose
04dc: 60        clrc
04dd: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
04e0: d5 7d 03  mov   $037d+x,a         ; save note number (integer)
04e3: f5 a5 03  mov   a,$03a5+x
04e6: d5 7c 03  mov   $037c+x,a         ; save note number (fraction)
04e9: f5 a1 02  mov   a,$02a1+x
04ec: 5c        lsr   a
04ed: e8 00     mov   a,#$00
04ef: 7c        ror   a
04f0: d5 8c 02  mov   $028c+x,a
04f3: e8 00     mov   a,#$00
04f5: d4 ac     mov   $ac+x,a
04f7: d5 00 01  mov   $0100+x,a
04fa: d5 c8 02  mov   $02c8+x,a
04fd: d4 c0     mov   $c0+x,a
04ff: 09 47 5e  or    ($5e),($47)
0502: 09 47 45  or    ($45),($47)
0505: f5 64 02  mov   a,$0264+x
0508: d4 98     mov   $98+x,a
050a: f0 1e     beq   $052a
050c: f5 65 02  mov   a,$0265+x
050f: d4 99     mov   $99+x,a
0511: f5 78 02  mov   a,$0278+x
0514: d0 0a     bne   $0520
0516: f5 7d 03  mov   a,$037d+x
0519: 80        setc
051a: b5 79 02  sbc   a,$0279+x
051d: d5 7d 03  mov   $037d+x,a
0520: f5 79 02  mov   a,$0279+x
0523: 60        clrc
0524: 95 7d 03  adc   a,$037d+x
0527: 3f 15 0a  call  $0a15
052a: 3f 2d 0a  call  $0a2d
052d: 8d 00     mov   y,#$00
052f: e4 11     mov   a,$11
0531: 80        setc
0532: a8 34     sbc   a,#$34
0534: b0 09     bcs   $053f
0536: e4 11     mov   a,$11
0538: 80        setc
0539: a8 13     sbc   a,#$13
053b: b0 06     bcs   $0543
053d: dc        dec   y
053e: 1c        asl   a
053f: 7a 10     addw  ya,$10
0541: da 10     movw  $10,ya
0543: 4d        push  x
0544: e4 11     mov   a,$11
0546: 1c        asl   a
0547: 8d 00     mov   y,#$00
0549: cd 18     mov   x,#$18
054b: 9e        div   ya,x
054c: 5d        mov   x,a
054d: f6 73 0d  mov   a,$0d73+y
0550: c4 15     mov   $15,a
0552: f6 72 0d  mov   a,$0d72+y
0555: c4 14     mov   $14,a
0557: f6 75 0d  mov   a,$0d75+y
055a: 2d        push  a
055b: f6 74 0d  mov   a,$0d74+y
055e: ee        pop   y
055f: 9a 14     subw  ya,$14
0561: eb 10     mov   y,$10
0563: cf        mul   ya
0564: dd        mov   a,y
0565: 8d 00     mov   y,#$00
0567: 7a 14     addw  ya,$14
0569: cb 15     mov   $15,y
056b: 1c        asl   a
056c: 2b 15     rol   $15
056e: c4 14     mov   $14,a
0570: 2f 04     bra   $0576
0572: 4b 15     lsr   $15
0574: 7c        ror   a
0575: 3d        inc   x
0576: c8 06     cmp   x,#$06
0578: d0 f8     bne   $0572
057a: c4 14     mov   $14,a
057c: ce        pop   x
057d: f5 28 02  mov   a,$0228+x
0580: eb 15     mov   y,$15
0582: cf        mul   ya
0583: da 16     movw  $16,ya
0585: f5 28 02  mov   a,$0228+x
0588: eb 14     mov   y,$14
058a: cf        mul   ya
058b: 6d        push  y
058c: f5 29 02  mov   a,$0229+x
058f: eb 14     mov   y,$14
0591: cf        mul   ya
0592: 7a 16     addw  ya,$16
0594: da 16     movw  $16,ya
0596: f5 29 02  mov   a,$0229+x
0599: eb 15     mov   y,$15
059b: cf        mul   ya
059c: fd        mov   y,a
059d: ae        pop   a
059e: 7a 16     addw  ya,$16
05a0: da 16     movw  $16,ya
05a2: f5 8c 0d  mov   a,$0d8c+x
05a5: 08 02     or    a,#$02
05a7: fd        mov   y,a
05a8: e4 16     mov   a,$16
05aa: 3f b0 05  call  $05b0
05ad: fc        inc   y
05ae: e4 17     mov   a,$17
05b0: 2d        push  a
05b1: e4 47     mov   a,$47
05b3: 24 1a     and   a,$1a
05b5: ae        pop   a
05b6: d0 04     bne   $05bc
05b8: cb f2     mov   $f2,y
05ba: c4 f3     mov   $f3,a
05bc: 6f        ret

05bd: 8d 00     mov   y,#$00
05bf: f7 40     mov   a,($40)+y
05c1: 3a 40     incw  $40
05c3: 2d        push  a
05c4: f7 40     mov   a,($40)+y
05c6: 3a 40     incw  $40
05c8: fd        mov   y,a
05c9: ae        pop   a
05ca: 6f        ret

05cb: 8f ff 30  mov   $30,#$ff
05ce: 8f 7f 31  mov   $31,#$7f
05d1: c4 04     mov   $04,a
05d3: 6f        ret

05d4: 2d        push  a
05d5: e5 fd 11  mov   a,$11fd
05d8: ec fe 11  mov   y,$11fe
05db: da 3b     movw  $3b,ya
05dd: e8 00     mov   a,#$00
05df: 5d        mov   x,a
05e0: c7 3b     mov   ($3b+x),a
05e2: 3a 3b     incw  $3b
05e4: d0 fa     bne   $05e0
05e6: ae        pop   a
05e7: 6f        ret

05e8: 8f ff 46  mov   $46,#$ff
05eb: 8f 00 04  mov   $04,#$00
05ee: a2 48     set5  $48
05f0: c2 48     set6  $48
05f2: e8 00     mov   a,#$00
05f4: c4 e5     mov   $e5,a
05f6: c4 e7     mov   $e7,a
05f8: e8 01     mov   a,#$01
05fa: 3f a9 09  call  $09a9
05fd: 6f        ret

05fe: c2 48     set6  $48
0600: 6f        ret

0601: 3f 0c 0f  call  $0f0c
0604: c4 08     mov   $08,a
0606: c4 04     mov   $04,a
0608: 6f        ret

0609: 68 f0     cmp   a,#$f0
060b: f0 db     beq   $05e8
060d: 68 f1     cmp   a,#$f1
060f: f0 ba     beq   $05cb
0611: 68 f2     cmp   a,#$f2
0613: f0 e9     beq   $05fe
0615: 68 ff     cmp   a,#$ff
0617: f0 e8     beq   $0601
0619: 6f        ret

; play song in A
061a: c4 04     mov   $04,a
061c: 1c        asl   a
061d: f0 26     beq   $0645
061f: 3f d4 05  call  $05d4
0622: 5d        mov   x,a
0623: f5 ff 11  mov   a,$11ff+x
0626: fd        mov   y,a
0627: f5 fe 11  mov   a,$11fe+x         ; song table (index 0 is not used, see $1200 for the first item)
062a: da 40     movw  $40,ya
062c: 8f 02 0c  mov   $0c,#$02
062f: e8 00     mov   a,#$00
0631: c4 30     mov   $30,a
0633: c4 5f     mov   $5f,a
0635: c4 39     mov   $39,a
0637: c4 35     mov   $35,a
0639: c4 36     mov   $36,a
063b: c4 e5     mov   $e5,a
063d: c4 e7     mov   $e7,a
063f: d2 48     clr6  $48
0641: e8 ff     mov   a,#$ff
0643: c4 f7     mov   $f7,a
0645: e4 1a     mov   a,$1a
0647: 48 ff     eor   a,#$ff
0649: 0e 46 00  tset1 $0046
064c: 6f        ret

064d: cd 0e     mov   x,#$0e
064f: 8f 80 47  mov   $47,#$80
0652: e8 ff     mov   a,#$ff
0654: d5 05 03  mov   $0305+x,a
0657: e8 0a     mov   a,#$0a
0659: 3f 49 08  call  $0849
065c: d5 15 02  mov   $0215+x,a
065f: d5 a5 03  mov   $03a5+x,a
0662: d5 f0 02  mov   $02f0+x,a
0665: d5 64 02  mov   $0264+x,a
0668: d4 ad     mov   $ad+x,a
066a: d4 c1     mov   $c1+x,a
066c: 1d        dec   x
066d: 1d        dec   x
066e: 4b 47     lsr   $47
0670: d0 e0     bne   $0652
0672: c4 5a     mov   $5a,a
0674: c4 68     mov   $68,a
0676: c4 54     mov   $54,a
0678: c4 50     mov   $50,a
067a: c4 42     mov   $42,a
067c: 8f c0 59  mov   $59,#$c0
067f: 8f 20 53  mov   $53,#$20
0682: 6f        ret

0683: eb 08     mov   y,$08
0685: e4 00     mov   a,$00
0687: 68 f0     cmp   a,#$f0
0689: 90 03     bcc   $068e
068b: 5f 09 06  jmp   $0609

068e: c4 08     mov   $08,a
0690: 7e 00     cmp   y,$00
0692: d0 86     bne   $061a
0694: e4 04     mov   a,$04
0696: f0 ea     beq   $0682
0698: d2 48     clr6  $48
069a: e4 0c     mov   a,$0c
069c: f0 52     beq   $06f0
069e: 6e 0c ac  dbnz  $0c,$064d
06a1: 3f bd 05  call  $05bd
06a4: d0 19     bne   $06bf
06a6: fd        mov   y,a
06a7: d0 05     bne   $06ae
06a9: c4 f7     mov   $f7,a
06ab: 5f 1a 06  jmp   $061a

06ae: 8b 42     dec   $42
06b0: 10 02     bpl   $06b4
06b2: c4 42     mov   $42,a
06b4: 3f bd 05  call  $05bd
06b7: f8 42     mov   x,$42
06b9: f0 e6     beq   $06a1
06bb: da 40     movw  $40,ya
06bd: 2f e2     bra   $06a1
06bf: da 16     movw  $16,ya
06c1: 8d 0f     mov   y,#$0f
06c3: f7 16     mov   a,($16)+y
06c5: d6 d4 00  mov   $00d4+y,a
06c8: dc        dec   y
06c9: 10 f8     bpl   $06c3
06cb: cd 00     mov   x,#$00
06cd: 8f 01 47  mov   $47,#$01
06d0: f4 d5     mov   a,$d5+x
06d2: f0 0a     beq   $06de
06d4: f5 15 02  mov   a,$0215+x
06d7: d0 05     bne   $06de
06d9: e8 00     mov   a,#$00
06db: 3f df 07  call  $07df
06de: e8 00     mov   a,#$00
06e0: d5 b8 03  mov   $03b8+x,a
06e3: d4 84     mov   $84+x,a
06e5: d4 85     mov   $85+x,a
06e7: bc        inc   a
06e8: d4 70     mov   $70+x,a
06ea: 3d        inc   x
06eb: 3d        inc   x
06ec: 0b 47     asl   $47
06ee: d0 e0     bne   $06d0
06f0: cd 00     mov   x,#$00
06f2: d8 5e     mov   $5e,x
06f4: 8f 01 47  mov   $47,#$01
06f7: d8 44     mov   $44,x
06f9: f4 d5     mov   a,$d5+x
06fb: f0 6c     beq   $0769
06fd: 9b 70     dec   $70+x
06ff: d0 62     bne   $0763
0701: 3f d5 07  call  $07d5
0704: d0 1d     bne   $0723
0706: f5 b8 03  mov   a,$03b8+x
0709: f0 96     beq   $06a1
070b: 3f 41 09  call  $0941
070e: f5 b8 03  mov   a,$03b8+x
0711: 9c        dec   a
0712: d5 b8 03  mov   $03b8+x,a
0715: d0 ea     bne   $0701
0717: f5 3c 02  mov   a,$023c+x
071a: d4 d4     mov   $d4+x,a
071c: f5 3d 02  mov   a,$023d+x
071f: d4 d5     mov   $d5+x,a
0721: 2f de     bra   $0701
0723: 30 20     bmi   $0745
0725: d5 00 02  mov   $0200+x,a
0728: 3f d5 07  call  $07d5
072b: 30 18     bmi   $0745
072d: 2d        push  a
072e: 9f        xcn   a
072f: 28 07     and   a,#$07
0731: fd        mov   y,a
0732: f6 00 2f  mov   a,$2f00+y
0735: d5 01 02  mov   $0201+x,a
0738: ae        pop   a
0739: 28 0f     and   a,#$0f
073b: fd        mov   y,a
073c: f6 08 2f  mov   a,$2f08+y
073f: d5 14 02  mov   $0214+x,a
0742: 3f d5 07  call  $07d5
0745: 68 e0     cmp   a,#$e0
0747: 90 05     bcc   $074e
0749: 3f c3 07  call  $07c3
074c: 2f b3     bra   $0701
074e: 3f c3 04  call  $04c3
0751: f5 00 02  mov   a,$0200+x
0754: d4 70     mov   $70+x,a
0756: fd        mov   y,a
0757: f5 01 02  mov   a,$0201+x
075a: cf        mul   ya
075b: dd        mov   a,y
075c: d0 01     bne   $075f
075e: bc        inc   a
075f: d4 71     mov   $71+x,a
0761: 2f 03     bra   $0766
0763: 3f 5c 0b  call  $0b5c
0766: 3f f5 09  call  $09f5
0769: 3d        inc   x
076a: 3d        inc   x
076b: 0b 47     asl   $47
076d: d0 88     bne   $06f7
076f: e4 30     mov   a,$30
0771: f0 03     beq   $0776
0773: 8f ff 5e  mov   $5e,#$ff
0776: e4 54     mov   a,$54
0778: f0 0b     beq   $0785
077a: ba 56     movw  ya,$56
077c: 7a 52     addw  ya,$52
077e: 6e 54 02  dbnz  $54,$0783
0781: ba 54     movw  ya,$54
0783: da 52     movw  $52,ya
0785: e4 68     mov   a,$68
0787: f0 15     beq   $079e
0789: ba 64     movw  ya,$64
078b: 7a 60     addw  ya,$60
078d: da 60     movw  $60,ya
078f: ba 66     movw  ya,$66
0791: 7a 62     addw  ya,$62
0793: 6e 68 06  dbnz  $68,$079c
0796: ba 68     movw  ya,$68
0798: da 60     movw  $60,ya
079a: eb 6a     mov   y,$6a
079c: da 62     movw  $62,ya
079e: e4 5a     mov   a,$5a
07a0: f0 0e     beq   $07b0
07a2: ba 5c     movw  ya,$5c
07a4: 7a 58     addw  ya,$58
07a6: 6e 5a 02  dbnz  $5a,$07ab
07a9: ba 5a     movw  ya,$5a
07ab: da 58     movw  $58,ya
07ad: 8f ff 5e  mov   $5e,#$ff
07b0: cd 00     mov   x,#$00
07b2: 8f 01 47  mov   $47,#$01
07b5: f4 d5     mov   a,$d5+x
07b7: f0 03     beq   $07bc
07b9: 3f a5 0a  call  $0aa5
07bc: 3d        inc   x
07bd: 3d        inc   x
07be: 0b 47     asl   $47
07c0: d0 f3     bne   $07b5
07c2: 6f        ret

07c3: 1c        asl   a
07c4: fd        mov   y,a
07c5: f6 95 09  mov   a,$0995+y
07c8: 2d        push  a
07c9: f6 94 09  mov   a,$0994+y
07cc: 2d        push  a
07cd: dd        mov   a,y
07ce: 5c        lsr   a
07cf: fd        mov   y,a
07d0: f6 2a 0a  mov   a,$0a2a+y
07d3: f0 08     beq   $07dd
07d5: e7 d4     mov   a,($d4+x)
07d7: bb d4     inc   $d4+x
07d9: d0 02     bne   $07dd
07db: bb d5     inc   $d5+x
07dd: fd        mov   y,a
07de: 6f        ret

; vcmd e0 - set instrument
07df: d5 15 02  mov   $0215+x,a
07e2: eb 34     mov   y,$34
07e4: d0 0f     bne   $07f5
; BGM
07e6: fd        mov   y,a
07e7: 10 06     bpl   $07ef             ; if percussion note:
07e9: 80        setc
07ea: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
07ec: 60        clrc
07ed: 84 5f     adc   a,$5f             ;   add perc patch base
07ef: 60        clrc
07f0: 85 ff 11  adc   a,$11ff           ; add patch offset for BGM (constant value = 12?)
07f3: 2f 09     bra   $07fe
; SFX
07f5: fd        mov   y,a
07f6: 10 06     bpl   $07fe             ; if percussion note:
07f8: 80        setc
07f9: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
07fb: 60        clrc
07fc: 84 39     adc   a,$39             ; add perc patch base
;
07fe: 8d 06     mov   y,#$06
0800: cf        mul   ya
0801: da 14     movw  $14,ya
0803: 60        clrc
0804: 98 00 14  adc   $14,#$00
0807: 98 2e 15  adc   $15,#$2e          ; instrument table $2e00
080a: e4 1a     mov   a,$1a
080c: 24 47     and   a,$47
080e: d0 38     bne   $0848
0810: 4d        push  x
0811: f5 8c 0d  mov   a,$0d8c+x
0814: 08 04     or    a,#$04            ; voice X SRCN
0816: 5d        mov   x,a
0817: 8d 00     mov   y,#$00
0819: f7 14     mov   a,($14)+y
081b: 10 0e     bpl   $082b
081d: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
081f: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
0822: 0e 48 00  tset1 $0048             ;  OR in noise freq
0825: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
0828: dd        mov   a,y               ;  set SRCN to 0
0829: 2f 07     bra   $0832             ; else
082b: e4 47     mov   a,$47
082d: 4e 49 00  tclr1 $0049             ;  clear noise vbit
0830: f7 14     mov   a,($14)+y         ;  set SRCN from table
0832: d8 f2     mov   $f2,x
0834: c4 f3     mov   $f3,a
0836: 3d        inc   x
0837: fc        inc   y
0838: ad 04     cmp   y,#$04
083a: d0 f4     bne   $0830             ; set SRCN, ADSR1/2, GAIN from table
083c: ce        pop   x
083d: f7 14     mov   a,($14)+y
083f: d5 29 02  mov   $0229+x,a         ; set pitch multiplier
0842: fc        inc   y
0843: f7 14     mov   a,($14)+y
0845: d5 28 02  mov   $0228+x,a
0848: 6f        ret

; vcmd e1 - pan
0849: d5 69 03  mov   $0369+x,a
084c: 28 1f     and   a,#$1f
084e: d5 41 03  mov   $0341+x,a
0851: e8 00     mov   a,#$00
0853: d5 40 03  mov   $0340+x,a
0856: 6f        ret

; vcmd e2 - pan fade
0857: d4 85     mov   $85+x,a
0859: 2d        push  a
085a: 3f d5 07  call  $07d5
085d: d5 68 03  mov   $0368+x,a
0860: 80        setc
0861: b5 41 03  sbc   a,$0341+x
0864: ce        pop   x
0865: 3f 38 0a  call  $0a38
0868: d5 54 03  mov   $0354+x,a
086b: dd        mov   a,y
086c: d5 55 03  mov   $0355+x,a
086f: 6f        ret

; vcmd e3 - vibrato on
0870: d5 a0 02  mov   $02a0+x,a
0873: 3f d5 07  call  $07d5
0876: d5 8d 02  mov   $028d+x,a
0879: 3f d5 07  call  $07d5
; vcmd e4 - vibrato off
087c: d4 ad     mov   $ad+x,a
087e: d5 b5 02  mov   $02b5+x,a
0881: e8 00     mov   a,#$00
0883: d5 a1 02  mov   $02a1+x,a
0886: 6f        ret

; vcmd f0 - vibrato fade
0887: d5 a1 02  mov   $02a1+x,a
088a: 2d        push  a
088b: 8d 00     mov   y,#$00
088d: f4 ad     mov   a,$ad+x
088f: ce        pop   x
0890: 9e        div   ya,x
0891: f8 44     mov   x,$44
0893: d5 b4 02  mov   $02b4+x,a
0896: 6f        ret

; vcmd e5 - master volume
0897: dd        mov   a,y
0898: 80        setc
0899: a8 00     sbc   a,#$00
089b: fd        mov   y,a
089c: e8 00     mov   a,#$00
089e: da 58     movw  $58,ya
08a0: 6f        ret

; vcmd e6 - master volume fade
08a1: c4 5a     mov   $5a,a
08a3: 3f d5 07  call  $07d5
08a6: c4 5b     mov   $5b,a
08a8: 80        setc
08a9: a4 59     sbc   a,$59
08ab: f8 5a     mov   x,$5a
08ad: 3f 38 0a  call  $0a38
08b0: da 5c     movw  $5c,ya
08b2: 6f        ret

; vcmd e7 - tempo
08b3: e4 34     mov   a,$34
08b5: d0 04     bne   $08bb
08b7: e8 00     mov   a,#$00
08b9: da 52     movw  $52,ya
08bb: 6f        ret

; vcmd e8 - tempo fade
08bc: c4 54     mov   $54,a
08be: 3f d5 07  call  $07d5
08c1: c4 55     mov   $55,a
08c3: 80        setc
08c4: a4 53     sbc   a,$53
08c6: f8 54     mov   x,$54
08c8: 3f 38 0a  call  $0a38
08cb: da 56     movw  $56,ya
08cd: 6f        ret

; vcmd e9 - global transpose
08ce: c4 50     mov   $50,a
08d0: 6f        ret

; vcmd ea - per-voice transpose
08d1: d5 f0 02  mov   $02f0+x,a
08d4: 6f        ret

; vcmd eb - tremolo on
08d5: d5 dc 02  mov   $02dc+x,a
08d8: 3f d5 07  call  $07d5
08db: d5 c9 02  mov   $02c9+x,a
08de: 3f d5 07  call  $07d5
; vcmd ec - tremolo off
08e1: d4 c1     mov   $c1+x,a
08e3: 6f        ret

; vcmd f1 - pitch envelope (release)
08e4: e8 01     mov   a,#$01
08e6: 2f 02     bra   $08ea
; vcmd f2 - pitch envelope (attack)
08e8: e8 00     mov   a,#$00
08ea: d5 78 02  mov   $0278+x,a
08ed: dd        mov   a,y
08ee: d5 65 02  mov   $0265+x,a
08f1: 3f d5 07  call  $07d5
08f4: d5 64 02  mov   $0264+x,a
08f7: 3f d5 07  call  $07d5
08fa: d5 79 02  mov   $0279+x,a
08fd: 6f        ret

; vcmd f3 - pitch envelope off
08fe: d5 64 02  mov   $0264+x,a
0901: 6f        ret

; vcmd ed - volume
0902: d5 05 03  mov   $0305+x,a
0905: e8 00     mov   a,#$00
0907: d5 04 03  mov   $0304+x,a
090a: 6f        ret

; vcmd ee - volume fade
090b: d4 84     mov   $84+x,a
090d: 2d        push  a
090e: 3f d5 07  call  $07d5
0911: d5 2c 03  mov   $032c+x,a
0914: 80        setc
0915: b5 05 03  sbc   a,$0305+x
0918: ce        pop   x
0919: 3f 38 0a  call  $0a38
091c: d5 18 03  mov   $0318+x,a
091f: dd        mov   a,y
0920: d5 19 03  mov   $0319+x,a
0923: 6f        ret

; vcmd f4 - tuning
0924: d5 a5 03  mov   $03a5+x,a
0927: 6f        ret

; vcmd ef - call subroutine
0928: d5 50 02  mov   $0250+x,a
092b: 3f d5 07  call  $07d5
092e: d5 51 02  mov   $0251+x,a
0931: 3f d5 07  call  $07d5
0934: d5 b8 03  mov   $03b8+x,a
0937: f4 d4     mov   a,$d4+x
0939: d5 3c 02  mov   $023c+x,a
093c: f4 d5     mov   a,$d5+x
093e: d5 3d 02  mov   $023d+x,a
0941: f5 50 02  mov   a,$0250+x
0944: d4 d4     mov   $d4+x,a
0946: f5 51 02  mov   a,$0251+x
0949: d4 d5     mov   $d5+x,a
094b: 6f        ret

; vcmd f5 - echo vbits/volume
094c: c4 4a     mov   $4a,a
094e: 3f d5 07  call  $07d5
0951: e8 00     mov   a,#$00
0953: da 60     movw  $60,ya
0955: 3f d5 07  call  $07d5
0958: e8 00     mov   a,#$00
095a: da 62     movw  $62,ya
095c: b2 48     clr5  $48
095e: 6f        ret

; vcmd f8 - echo volume fade
095f: c4 68     mov   $68,a
0961: 3f d5 07  call  $07d5
0964: c4 69     mov   $69,a
0966: 80        setc
0967: a4 61     sbc   a,$61
0969: f8 68     mov   x,$68
096b: 3f 38 0a  call  $0a38
096e: da 64     movw  $64,ya
0970: 3f d5 07  call  $07d5
0973: c4 6a     mov   $6a,a
0975: 80        setc
0976: a4 63     sbc   a,$63
0978: f8 68     mov   x,$68
097a: 3f 38 0a  call  $0a38
097d: da 66     movw  $66,ya
097f: 6f        ret

; vcmd f6 - disable echo
0980: da 60     movw  $60,ya
0982: da 62     movw  $62,ya
0984: a2 48     set5  $48
0986: 6f        ret

; vcmd f7 - set echo params
0987: 3f a9 09  call  $09a9
098a: 3f d5 07  call  $07d5
098d: c4 4e     mov   $4e,a
098f: 3f d5 07  call  $07d5
0992: 8d 08     mov   y,#$08
0994: cf        mul   ya
0995: 5d        mov   x,a
0996: 8d 0f     mov   y,#$0f
0998: f5 3e 0d  mov   a,$0d3e+x
099b: 3f b8 05  call  $05b8
099e: 3d        inc   x
099f: dd        mov   a,y
09a0: 60        clrc
09a1: 88 10     adc   a,#$10
09a3: fd        mov   y,a
09a4: 10 f2     bpl   $0998
09a6: f8 44     mov   x,$44
09a8: 6f        ret

09a9: c4 4d     mov   $4d,a
09ab: 8d 7d     mov   y,#$7d
09ad: cb f2     mov   $f2,y
09af: e4 f3     mov   a,$f3
09b1: 64 4d     cmp   a,$4d
09b3: f0 29     beq   $09de
09b5: 28 0f     and   a,#$0f
09b7: 48 ff     eor   a,#$ff
09b9: f3 4c 03  bbc7  $4c,$09bf
09bc: 60        clrc
09bd: 84 4c     adc   a,$4c
09bf: c4 4c     mov   $4c,a
09c1: 8d 04     mov   y,#$04
09c3: f6 5d 0d  mov   a,$0d5d+y
09c6: c4 f2     mov   $f2,a
09c8: e8 00     mov   a,#$00
09ca: c4 f3     mov   $f3,a
09cc: fe f5     dbnz  y,$09c3
09ce: e4 48     mov   a,$48
09d0: 08 20     or    a,#$20
09d2: 8d 6c     mov   y,#$6c
09d4: 3f b8 05  call  $05b8
09d7: e4 4d     mov   a,$4d
09d9: 8d 7d     mov   y,#$7d
09db: 3f b8 05  call  $05b8
09de: 1c        asl   a
09df: 1c        asl   a
09e0: 1c        asl   a
09e1: 48 ff     eor   a,#$ff
09e3: 80        setc
09e4: 88 ff     adc   a,#$ff
09e6: 8d 6d     mov   y,#$6d
09e8: 5f b8 05  jmp   $05b8

; vcmd fa - set perc patch base
09eb: eb 34     mov   y,$34
09ed: d0 03     bne   $09f2
09ef: c4 5f     mov   $5f,a
09f1: 6f        ret

09f2: c4 39     mov   $39,a
09f4: 6f        ret

09f5: f4 98     mov   a,$98+x
09f7: d0 33     bne   $0a2c
09f9: e7 d4     mov   a,($d4+x)
09fb: 68 f9     cmp   a,#$f9
09fd: d0 2d     bne   $0a2c
09ff: 3f d7 07  call  $07d7
0a02: 3f d5 07  call  $07d5
; vcmd f9 - pitch slide
0a05: d4 99     mov   $99+x,a
0a07: 3f d5 07  call  $07d5
0a0a: d4 98     mov   $98+x,a
0a0c: 3f d5 07  call  $07d5
0a0f: 60        clrc
0a10: 84 50     adc   a,$50
0a12: 95 f0 02  adc   a,$02f0+x
0a15: 28 7f     and   a,#$7f
0a17: d5 a4 03  mov   $03a4+x,a
0a1a: 80        setc
0a1b: b5 7d 03  sbc   a,$037d+x
0a1e: fb 98     mov   y,$98+x
0a20: 6d        push  y
0a21: ce        pop   x
0a22: 3f 38 0a  call  $0a38
0a25: d5 90 03  mov   $0390+x,a
0a28: dd        mov   a,y
0a29: d5 91 03  mov   $0391+x,a
0a2c: 6f        ret

0a2d: f5 7d 03  mov   a,$037d+x
0a30: c4 11     mov   $11,a
0a32: f5 7c 03  mov   a,$037c+x
0a35: c4 10     mov   $10,a
0a37: 6f        ret

0a38: ed        notc
0a39: 6b 12     ror   $12
0a3b: 10 03     bpl   $0a40
0a3d: 48 ff     eor   a,#$ff
0a3f: bc        inc   a
0a40: 8d 00     mov   y,#$00
0a42: 9e        div   ya,x
0a43: 2d        push  a
0a44: e8 00     mov   a,#$00
0a46: 9e        div   ya,x
0a47: ee        pop   y
0a48: f8 44     mov   x,$44
0a4a: f3 12 06  bbc7  $12,$0a53
0a4d: da 14     movw  $14,ya
0a4f: ba 0e     movw  ya,$0e
0a51: 9a 14     subw  ya,$14
0a53: 6f        ret

; vcmd dispatch table
0a54: dw $07df  ; e0 - set instrument
0a56: dw $0849  ; e1 - pan
0a58: dw $0857  ; e2 - pan fade
0a5a: dw $0870  ; e3 - vibrato on
0a5c: dw $087c  ; e4 - vibrato off
0a5e: dw $0897  ; e5 - master volume
0a60: dw $08a1  ; e6 - master volume fade
0a62: dw $08b3  ; e7 - tempo
0a64: dw $08bc  ; e8 - tempo fade
0a66: dw $08ce  ; e9 - global transpose
0a68: dw $08d1  ; ea - per-voice transpose
0a6a: dw $08d5  ; eb - tremolo on
0a6c: dw $08e1  ; ec - tremolo off
0a6e: dw $0902  ; ed - volume
0a70: dw $090b  ; ee - volume fade
0a72: dw $0928  ; ef - call subroutine
0a74: dw $0887  ; f0 - vibrato fade
0a76: dw $08e4  ; f1 - pitch envelope (release)
0a78: dw $08e8  ; f2 - pitch envelope (attack)
0a7a: dw $08fe  ; f3 - pitch envelope off
0a7c: dw $0924  ; f4 - tuning
0a7e: dw $094c  ; f5 - echo vbits/volume
0a80: dw $0980  ; f6 - disable echo
0a82: dw $0987  ; f7 - set echo params
0a84: dw $095f  ; f8 - echo volume fade
0a86: dw $0a05  ; f9 - pitch slide
0a88: dw $09eb  ; fa - set perc patch base

; vcmd lengths
0a8a: db $01,$01,$02,$03,$00,$01,$02,$01
0a92: db $02,$01,$01,$03,$00,$01,$02,$03
0a9a: db $01,$03,$03,$00,$01,$03,$00,$03
0aa2: db $03,$03,$01

0aa5: f4 84     mov   a,$84+x
0aa7: f0 09     beq   $0ab2
0aa9: e8 04     mov   a,#$04
0aab: 8d 03     mov   y,#$03
0aad: 9b 84     dec   $84+x
0aaf: 3f 38 0b  call  $0b38
0ab2: fb c1     mov   y,$c1+x
0ab4: f0 23     beq   $0ad9
0ab6: f5 dc 02  mov   a,$02dc+x
0ab9: de c0 1b  cbne  $c0+x,$0ad7
0abc: 09 47 5e  or    ($5e),($47)
0abf: f5 c8 02  mov   a,$02c8+x
0ac2: 10 07     bpl   $0acb
0ac4: fc        inc   y
0ac5: d0 04     bne   $0acb
0ac7: e8 80     mov   a,#$80
0ac9: 2f 04     bra   $0acf
0acb: 60        clrc
0acc: 95 c9 02  adc   a,$02c9+x
0acf: d5 c8 02  mov   $02c8+x,a
0ad2: 3f c0 0c  call  $0cc0
0ad5: 2f 07     bra   $0ade
0ad7: bb c0     inc   $c0+x
0ad9: e8 ff     mov   a,#$ff
0adb: 3f cb 0c  call  $0ccb
0ade: f4 85     mov   a,$85+x
0ae0: f0 09     beq   $0aeb
0ae2: e8 40     mov   a,#$40
0ae4: 8d 03     mov   y,#$03
0ae6: 9b 85     dec   $85+x
0ae8: 3f 38 0b  call  $0b38
0aeb: e4 47     mov   a,$47
0aed: 24 5e     and   a,$5e
0aef: f0 46     beq   $0b37
0af1: f5 41 03  mov   a,$0341+x
0af4: fd        mov   y,a
0af5: f5 40 03  mov   a,$0340+x
0af8: da 10     movw  $10,ya
0afa: f5 8c 0d  mov   a,$0d8c+x
0afd: c4 12     mov   $12,a
0aff: eb 11     mov   y,$11
0b01: f6 ea 0c  mov   a,$0cea+y
0b04: 80        setc
0b05: b6 e9 0c  sbc   a,$0ce9+y
0b08: eb 10     mov   y,$10
0b0a: cf        mul   ya
0b0b: dd        mov   a,y
0b0c: eb 11     mov   y,$11
0b0e: 60        clrc
0b0f: 96 e9 0c  adc   a,$0ce9+y
0b12: fd        mov   y,a
0b13: f5 2d 03  mov   a,$032d+x
0b16: cf        mul   ya
0b17: f5 69 03  mov   a,$0369+x
0b1a: 1c        asl   a
0b1b: 13 12 01  bbc0  $12,$0b1f
0b1e: 1c        asl   a
0b1f: dd        mov   a,y
0b20: 90 03     bcc   $0b25
0b22: 48 ff     eor   a,#$ff
0b24: bc        inc   a
0b25: eb 12     mov   y,$12
0b27: 3f b0 05  call  $05b0
0b2a: 8d 14     mov   y,#$14
0b2c: e8 00     mov   a,#$00
0b2e: 9a 10     subw  ya,$10
0b30: da 10     movw  $10,ya
0b32: ab 12     inc   $12
0b34: 33 12 c8  bbc1  $12,$0aff
0b37: 6f        ret

0b38: 09 47 5e  or    ($5e),($47)
0b3b: da 14     movw  $14,ya
0b3d: da 16     movw  $16,ya
0b3f: 4d        push  x
0b40: ee        pop   y
0b41: 60        clrc
0b42: d0 0a     bne   $0b4e
0b44: 98 27 16  adc   $16,#$27
0b47: e8 00     mov   a,#$00
0b49: d7 14     mov   ($14)+y,a
0b4b: fc        inc   y
0b4c: 2f 09     bra   $0b57
0b4e: 98 14 16  adc   $16,#$14
0b51: 3f 55 0b  call  $0b55
0b54: fc        inc   y
0b55: f7 14     mov   a,($14)+y
0b57: 97 16     adc   a,($16)+y
0b59: d7 14     mov   ($14)+y,a
0b5b: 6f        ret

0b5c: f4 71     mov   a,$71+x
0b5e: f0 64     beq   $0bc4
0b60: 9b 71     dec   $71+x
0b62: f0 05     beq   $0b69
0b64: e8 02     mov   a,#$02
0b66: de 70 5b  cbne  $70+x,$0bc4
0b69: f5 b8 03  mov   a,$03b8+x
0b6c: c4 17     mov   $17,a
0b6e: f4 d4     mov   a,$d4+x
0b70: fb d5     mov   y,$d5+x
0b72: da 14     movw  $14,ya
0b74: 8d 00     mov   y,#$00
0b76: f7 14     mov   a,($14)+y
0b78: f0 1c     beq   $0b96
0b7a: 30 05     bmi   $0b81
0b7c: fc        inc   y
0b7d: f7 14     mov   a,($14)+y
0b7f: 10 fb     bpl   $0b7c
0b81: 68 c8     cmp   a,#$c8
0b83: f0 3f     beq   $0bc4
0b85: 68 ef     cmp   a,#$ef
0b87: f0 29     beq   $0bb2
0b89: 68 e0     cmp   a,#$e0
0b8b: 90 30     bcc   $0bbd
0b8d: 6d        push  y
0b8e: fd        mov   y,a
0b8f: ae        pop   a
0b90: 96 aa 09  adc   a,$09aa+y
0b93: fd        mov   y,a
0b94: 2f e0     bra   $0b76
0b96: e4 17     mov   a,$17
0b98: f0 23     beq   $0bbd
0b9a: 8b 17     dec   $17
0b9c: d0 0a     bne   $0ba8
0b9e: f5 3d 02  mov   a,$023d+x
0ba1: 2d        push  a
0ba2: f5 3c 02  mov   a,$023c+x
0ba5: ee        pop   y
0ba6: 2f ca     bra   $0b72
0ba8: f5 51 02  mov   a,$0251+x
0bab: 2d        push  a
0bac: f5 50 02  mov   a,$0250+x
0baf: ee        pop   y
0bb0: 2f c0     bra   $0b72
0bb2: fc        inc   y
0bb3: f7 14     mov   a,($14)+y
0bb5: 2d        push  a
0bb6: fc        inc   y
0bb7: f7 14     mov   a,($14)+y
0bb9: fd        mov   y,a
0bba: ae        pop   a
0bbb: 2f b5     bra   $0b72
0bbd: e4 47     mov   a,$47
0bbf: 8d 5c     mov   y,#$5c
0bc1: 3f b0 05  call  $05b0
0bc4: f2 13     clr7  $13
0bc6: f4 98     mov   a,$98+x
0bc8: f0 13     beq   $0bdd
0bca: f4 99     mov   a,$99+x
0bcc: f0 04     beq   $0bd2
0bce: 9b 99     dec   $99+x
0bd0: 2f 0b     bra   $0bdd
0bd2: e2 13     set7  $13
0bd4: e8 7c     mov   a,#$7c
0bd6: 8d 03     mov   y,#$03
0bd8: 9b 98     dec   $98+x
0bda: 3f 3b 0b  call  $0b3b
0bdd: 3f 2d 0a  call  $0a2d
0be0: f4 ad     mov   a,$ad+x
0be2: f0 4c     beq   $0c30
0be4: f5 a0 02  mov   a,$02a0+x
0be7: de ac 44  cbne  $ac+x,$0c2e
0bea: f5 00 01  mov   a,$0100+x
0bed: 75 a1 02  cmp   a,$02a1+x
0bf0: d0 05     bne   $0bf7
0bf2: f5 b5 02  mov   a,$02b5+x
0bf5: 2f 0d     bra   $0c04
0bf7: 40        setp
0bf8: bb 00     inc   $00+x
0bfa: 20        clrp
0bfb: fd        mov   y,a
0bfc: f0 02     beq   $0c00
0bfe: f4 ad     mov   a,$ad+x
0c00: 60        clrc
0c01: 95 b4 02  adc   a,$02b4+x
0c04: d4 ad     mov   $ad+x,a
0c06: f5 8c 02  mov   a,$028c+x
0c09: 60        clrc
0c0a: 95 8d 02  adc   a,$028d+x
0c0d: d5 8c 02  mov   $028c+x,a
0c10: c4 12     mov   $12,a
0c12: 1c        asl   a
0c13: 1c        asl   a
0c14: 90 02     bcc   $0c18
0c16: 48 ff     eor   a,#$ff
0c18: fd        mov   y,a
0c19: f4 ad     mov   a,$ad+x
0c1b: 68 f1     cmp   a,#$f1
0c1d: 90 05     bcc   $0c24
0c1f: 28 0f     and   a,#$0f
0c21: cf        mul   ya
0c22: 2f 04     bra   $0c28
0c24: cf        mul   ya
0c25: dd        mov   a,y
0c26: 8d 00     mov   y,#$00
0c28: 3f ab 0c  call  $0cab
0c2b: 5f 2d 05  jmp   $052d

0c2e: bb ac     inc   $ac+x
0c30: e3 13 f8  bbs7  $13,$0c2b
0c33: 6f        ret

0c34: f2 13     clr7  $13
0c36: f4 c1     mov   a,$c1+x
0c38: f0 09     beq   $0c43
0c3a: f5 dc 02  mov   a,$02dc+x
0c3d: de c0 03  cbne  $c0+x,$0c43
0c40: 3f b3 0c  call  $0cb3
0c43: f5 41 03  mov   a,$0341+x
0c46: fd        mov   y,a
0c47: f5 40 03  mov   a,$0340+x
0c4a: da 10     movw  $10,ya
0c4c: f4 85     mov   a,$85+x
0c4e: f0 0a     beq   $0c5a
0c50: f5 55 03  mov   a,$0355+x
0c53: fd        mov   y,a
0c54: f5 54 03  mov   a,$0354+x
0c57: 3f 95 0c  call  $0c95
0c5a: f3 13 03  bbc7  $13,$0c60
0c5d: 3f fa 0a  call  $0afa
0c60: f2 13     clr7  $13
0c62: f5 7d 03  mov   a,$037d+x
0c65: fd        mov   y,a
0c66: f5 7c 03  mov   a,$037c+x
0c69: da 10     movw  $10,ya
0c6b: f4 98     mov   a,$98+x
0c6d: f0 0e     beq   $0c7d
0c6f: f4 99     mov   a,$99+x
0c71: d0 0a     bne   $0c7d
0c73: f5 91 03  mov   a,$0391+x
0c76: fd        mov   y,a
0c77: f5 90 03  mov   a,$0390+x
0c7a: 3f 95 0c  call  $0c95
0c7d: f4 ad     mov   a,$ad+x
0c7f: f0 af     beq   $0c30
0c81: f5 a0 02  mov   a,$02a0+x
0c84: de ac a9  cbne  $ac+x,$0c30
0c87: eb 51     mov   y,$51
0c89: f5 8d 02  mov   a,$028d+x
0c8c: cf        mul   ya
0c8d: dd        mov   a,y
0c8e: 60        clrc
0c8f: 95 8c 02  adc   a,$028c+x
0c92: 5f 10 0c  jmp   $0c10

0c95: e2 13     set7  $13
0c97: cb 12     mov   $12,y
0c99: 3f 4a 0a  call  $0a4a
0c9c: 6d        push  y
0c9d: eb 51     mov   y,$51
0c9f: cf        mul   ya
0ca0: cb 14     mov   $14,y
0ca2: 8f 00 15  mov   $15,#$00
0ca5: eb 51     mov   y,$51
0ca7: ae        pop   a
0ca8: cf        mul   ya
0ca9: 7a 14     addw  ya,$14
0cab: 3f 4a 0a  call  $0a4a
0cae: 7a 10     addw  ya,$10
0cb0: da 10     movw  $10,ya
0cb2: 6f        ret

0cb3: e2 13     set7  $13
0cb5: eb 51     mov   y,$51
0cb7: f5 c9 02  mov   a,$02c9+x
0cba: cf        mul   ya
0cbb: dd        mov   a,y
0cbc: 60        clrc
0cbd: 95 c8 02  adc   a,$02c8+x
0cc0: 1c        asl   a
0cc1: 90 02     bcc   $0cc5
0cc3: 48 ff     eor   a,#$ff
0cc5: fb c1     mov   y,$c1+x
0cc7: cf        mul   ya
0cc8: dd        mov   a,y
0cc9: 48 ff     eor   a,#$ff
0ccb: eb 34     mov   y,$34
0ccd: d0 03     bne   $0cd2
0ccf: eb 59     mov   y,$59
0cd1: cf        mul   ya
0cd2: f5 14 02  mov   a,$0214+x
0cd5: cf        mul   ya
0cd6: f5 05 03  mov   a,$0305+x
0cd9: cf        mul   ya
0cda: e4 30     mov   a,$30
0cdc: f0 04     beq   $0ce2
0cde: e4 31     mov   a,$31
0ce0: 1c        asl   a
0ce1: cf        mul   ya
0ce2: dd        mov   a,y
0ce3: cf        mul   ya
0ce4: dd        mov   a,y
0ce5: d5 2d 03  mov   $032d+x,a
0ce8: 6f        ret

0ce9: db $00,$01,$03,$07,$0d,$15,$1e,$29
0cf1: db $34,$42,$51,$5e,$67,$6e,$73,$77
0cf9: db $7a,$7c,$7d,$7e,$7f

0cfe: db $0a,$0b,$0c,$0d,$0e,$0f,$10,$11
0c06: db $11,$12,$12,$13,$13,$13,$14,$14
0c0e: db $14,$14,$14,$13,$13,$13,$12,$12
0c16: db $11,$11,$10,$0f,$0e,$0d,$0c,$0b
0c1e: db $0a,$09,$08,$07,$06,$05,$04,$03
0c26: db $03,$02,$02,$01,$01,$01,$00,$00
0c2e: db $00,$00,$00,$01,$01,$01,$02,$02
0c36: db $03,$03,$04,$05,$06,$07,$08,$09

0d3e: db $7f,$00,$00,$00,$00,$00,$00,$00
0d46: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0d4e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0d56: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0d5e: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0d68: db $61,$63,$4e,$38,$48,$45,$0e,$49,$4b,$46

0d72: dw $085f
0d74: dw $08de
0d76: dw $0965
0d78: dw $09f4
0d7a: dw $0a8c
0d7c: dw $0b2c
0d7e: dw $0bd6
0d80: dw $0c8b
0d82: dw $0d4a
0d84: dw $0e14
0d86: dw $0eea
0d88: dw $0fcd
0d8a: dw $10be

0d8c: dw $0000
0d8e: dw $0010
0d90: dw $0020
0d92: dw $0030
0d94: dw $0040
0d96: dw $0050
0d98: dw $0060
0d9a: dw $0070
0d9c: dw $0060
0d9e: dw $0070

0da0: fa 1a 37  mov   ($37),($1a)
0da3: 38 3f 1a  and   $1a,#$3f
0da6: 8f ff 34  mov   $34,#$ff
0da9: 8f 00 5e  mov   $5e,#$00
0dac: 8f 40 47  mov   $47,#$40
0daf: cd 10     mov   x,#$10
0db1: e4 f6     mov   a,$f6
0db3: f0 39     beq   $0dee
0db5: 30 04     bmi   $0dbb
0db7: eb 35     mov   y,$35
0db9: d0 33     bne   $0dee
0dbb: 2d        push  a
0dbc: 0d        push  psw
0dbd: 09 47 46  or    ($46),($47)
0dc0: 09 47 37  or    ($37),($47)
0dc3: 09 47 36  or    ($36),($47)
0dc6: 3f 14 0e  call  $0e14
0dc9: 8e        pop   psw
0dca: 10 21     bpl   $0ded
0dcc: 3f 7f 0e  call  $0e7f
0dcf: 8f ff 35  mov   $35,#$ff
0dd2: 8f 00 3f  mov   $3f,#$00
0dd5: 8f 80 47  mov   $47,#$80
0dd8: cd 12     mov   x,#$12
0dda: ae        pop   a
0ddb: 09 47 46  or    ($46),($47)
0dde: 09 47 37  or    ($37),($47)
0de1: 09 47 36  or    ($36),($47)
0de4: 3f 14 0e  call  $0e14
0de7: e8 03     mov   a,#$03
0de9: d4 70     mov   $70+x,a
0deb: 2f 1d     bra   $0e0a
0ded: ae        pop   a
0dee: 3f 7f 0e  call  $0e7f
0df1: 8f 80 47  mov   $47,#$80
0df4: cd 12     mov   x,#$12
0df6: e4 35     mov   a,$35
0df8: d0 10     bne   $0e0a
0dfa: e4 f7     mov   a,$f7
0dfc: f0 0c     beq   $0e0a
0dfe: 09 47 46  or    ($46),($47)
0e01: 09 47 37  or    ($37),($47)
0e04: 09 47 36  or    ($36),($47)
0e07: 3f 14 0e  call  $0e14
0e0a: 3f 7f 0e  call  $0e7f
0e0d: 8f 00 34  mov   $34,#$00
0e10: fa 37 1a  mov   ($1a),($37)
0e13: 6f        ret

0e14: 1c        asl   a
0e15: 68 4e     cmp   a,#$4e
0e17: 90 02     bcc   $0e1b
0e19: e8 0e     mov   a,#$0e
0e1b: 4d        push  x
0e1c: 5d        mov   x,a
0e1d: f5 01 24  mov   a,$2401+x
0e20: fd        mov   y,a
0e21: f5 00 24  mov   a,$2400+x
0e24: ce        pop   x
0e25: d4 d4     mov   $d4+x,a
0e27: db d5     mov   $d5+x,y
0e29: e8 dc     mov   a,#$dc
0e2b: d5 05 03  mov   $0305+x,a
0e2e: e8 0a     mov   a,#$0a
0e30: 3f 49 08  call  $0849
0e33: e8 00     mov   a,#$00
0e35: d5 15 02  mov   $0215+x,a
0e38: d5 a5 03  mov   $03a5+x,a
0e3b: d5 f0 02  mov   $02f0+x,a
0e3e: d5 64 02  mov   $0264+x,a
0e41: d4 ad     mov   $ad+x,a
0e43: d4 c1     mov   $c1+x,a
0e45: d5 b8 03  mov   $03b8+x,a
0e48: d4 84     mov   $84+x,a
0e4a: d4 85     mov   $85+x,a
0e4c: e8 02     mov   a,#$02
0e4e: d4 70     mov   $70+x,a
0e50: 6f        ret

0e51: e4 47     mov   a,$47
0e53: 48 ff     eor   a,#$ff
0e55: fd        mov   y,a
0e56: 24 37     and   a,$37
0e58: c4 37     mov   $37,a
0e5a: dd        mov   a,y
0e5b: 24 36     and   a,$36
0e5d: c4 36     mov   $36,a
0e5f: 09 47 5e  or    ($5e),($47)
0e62: fa 47 5c  mov   ($5c),($47)
0e65: 8f 00 34  mov   $34,#$00
0e68: 4d        push  x
0e69: 7d        mov   a,x
0e6a: 80        setc
0e6b: a8 04     sbc   a,#$04
0e6d: 5d        mov   x,a
0e6e: f5 15 02  mov   a,$0215+x
0e71: 3f df 07  call  $07df
0e74: ce        pop   x
0e75: 8f ff 34  mov   $34,#$ff
0e78: e8 00     mov   a,#$00
0e7a: d4 d5     mov   $d5+x,a
0e7c: c4 35     mov   $35,a
0e7e: 6f        ret

0e7f: f4 d5     mov   a,$d5+x
0e81: d0 01     bne   $0e84
0e83: 6f        ret

0e84: e4 35     mov   a,$35
0e86: f0 28     beq   $0eb0
0e88: 09 47 5e  or    ($5e),($47)
0e8b: c8 12     cmp   x,#$12
0e8d: d0 12     bne   $0ea1
0e8f: e4 3f     mov   a,$3f
0e91: ab 3f     inc   $3f
0e93: 5c        lsr   a
0e94: 28 3f     and   a,#$3f
0e96: fd        mov   y,a
0e97: f6 fe 0c  mov   a,$0cfe+y
0e9a: 08 c0     or    a,#$c0
0e9c: 3f 49 08  call  $0849
0e9f: 2f 0f     bra   $0eb0
0ea1: e4 3f     mov   a,$3f
0ea3: 48 ff     eor   a,#$ff
0ea5: bc        inc   a
0ea6: 5c        lsr   a
0ea7: 28 3f     and   a,#$3f
0ea9: fd        mov   y,a
0eaa: f6 fe 0c  mov   a,$0cfe+y
0ead: 3f 49 08  call  $0849
0eb0: d8 44     mov   $44,x
0eb2: 9b 70     dec   $70+x
0eb4: d0 45     bne   $0efb
0eb6: 3f d5 07  call  $07d5
0eb9: f0 96     beq   $0e51
0ebb: 30 20     bmi   $0edd
0ebd: d5 00 02  mov   $0200+x,a
0ec0: 3f d5 07  call  $07d5
0ec3: 30 18     bmi   $0edd
0ec5: 2d        push  a
0ec6: 9f        xcn   a
0ec7: 28 07     and   a,#$07
0ec9: fd        mov   y,a
0eca: f6 00 2f  mov   a,$2f00+y
0ecd: d5 01 02  mov   $0201+x,a
0ed0: ae        pop   a
0ed1: 28 0f     and   a,#$0f
0ed3: fd        mov   y,a
0ed4: f6 08 2f  mov   a,$2f08+y
0ed7: d5 14 02  mov   $0214+x,a
0eda: 3f d5 07  call  $07d5
0edd: 68 e0     cmp   a,#$e0
0edf: 90 05     bcc   $0ee6
0ee1: 3f c3 07  call  $07c3
0ee4: 2f d0     bra   $0eb6
0ee6: 3f c3 04  call  $04c3
0ee9: f5 00 02  mov   a,$0200+x
0eec: d4 70     mov   $70+x,a
0eee: fd        mov   y,a
0eef: f5 01 02  mov   a,$0201+x
0ef2: cf        mul   ya
0ef3: dd        mov   a,y
0ef4: d0 01     bne   $0ef7
0ef6: bc        inc   a
0ef7: d4 71     mov   $71+x,a
0ef9: 2f 03     bra   $0efe
0efb: 3f 5c 0b  call  $0b5c
0efe: 3f f5 09  call  $09f5
0f01: e4 30     mov   a,$30
0f03: f0 03     beq   $0f08
0f05: 09 47 5e  or    ($5e),($47)
0f08: 3f a5 0a  call  $0aa5
0f0b: 6f        ret

0f0c: 8d bb     mov   y,#$bb
0f0e: e8 aa     mov   a,#$aa
0f10: da f4     movw  $f4,ya
0f12: e4 f4     mov   a,$f4
0f14: 68 cc     cmp   a,#$cc
0f16: d0 fa     bne   $0f12
0f18: 2f 1e     bra   $0f38
0f1a: eb f4     mov   y,$f4
0f1c: d0 fc     bne   $0f1a
0f1e: 7e f4     cmp   y,$f4
0f20: d0 10     bne   $0f32
0f22: cb f4     mov   $f4,y
0f24: e4 f5     mov   a,$f5
0f26: d6 48 a5  mov   $a548+y,a
0f29: fc        inc   y
0f2a: d0 f2     bne   $0f1e
0f2c: ac 28 0f  inc   $0f28
0f2f: 5f 1e 0f  jmp   $0f1e

0f32: 10 ea     bpl   $0f1e
0f34: 7e f4     cmp   y,$f4
0f36: 10 e6     bpl   $0f1e
0f38: ba f6     movw  ya,$f6
0f3a: c5 27 0f  mov   $0f27,a
0f3d: cc 28 0f  mov   $0f28,y
0f40: eb f4     mov   y,$f4
0f42: e4 f5     mov   a,$f5
0f44: cb f4     mov   $f4,y
0f46: d0 d2     bne   $0f1a
0f48: cd 31     mov   x,#$31
0f4a: d8 f1     mov   $f1,x
0f4c: 6f        ret

