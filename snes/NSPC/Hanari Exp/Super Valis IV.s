0400: 2f 38     bra   $043a

0403: db "$Header: _KAN.ASv  1.1  91/12/02 18:10:24  hanari  Exp $"

043a: 20        clrp
043b: cd cf     mov   x,#$cf
043d: bd        mov   sp,x
043e: e8 00     mov   a,#$00
0440: 5d        mov   x,a
0441: af        mov   (x)+,a
0442: c8 e0     cmp   x,#$e0
0444: 90 fb     bcc   $0441
0446: e8 00     mov   a,#$00
0448: 8d 01     mov   y,#$01
044a: da 14     movw  $14,ya
044c: e8 aa     mov   a,#$aa
044e: 8d 00     mov   y,#$00
0450: d7 14     mov   ($14)+y,a
0452: fc        inc   y
0453: d0 fb     bne   $0450
0455: ab 15     inc   $15
0457: eb 15     mov   y,$15
0459: ad 04     cmp   y,#$04
045b: d0 f1     bne   $044e
045d: e8 00     mov   a,#$00
045f: fd        mov   y,a
0460: da 14     movw  $14,ya
0462: e8 01     mov   a,#$01
0464: 3f 48 0d  call  $0d48
0467: a2 48     set5  $48
0469: 3f 3c 0d  call  $0d3c
046c: e8 28     mov   a,#$28
046e: 8d 5d     mov   y,#$5d
0470: 3f 96 0d  call  $0d96
0473: e8 f0     mov   a,#$f0
0475: c4 f1     mov   $f1,a
0477: e8 10     mov   a,#$10
0479: c4 fa     mov   $fa,a
047b: c4 53     mov   $53,a
047d: e8 01     mov   a,#$01
047f: c4 f1     mov   $f1,a
0481: 3f b6 04  call  $04b6
0484: ec fd 00  mov   y,$00fd
0487: f0 fb     beq   $0484
0489: 3f fa 04  call  $04fa
048c: e4 53     mov   a,$53
048e: cf        mul   ya
048f: 60        clrc
0490: 84 51     adc   a,$51
0492: c4 51     mov   $51,a
0494: 90 08     bcc   $049e
0496: 3f 14 05  call  $0514
0499: 3f a0 09  call  $09a0
049c: 2f e3     bra   $0481
049e: e4 04     mov   a,$04
04a0: f0 12     beq   $04b4
04a2: cd 00     mov   x,#$00
04a4: 8f 01 47  mov   $47,#$01
04a7: f4 31     mov   a,$31+x
04a9: f0 03     beq   $04ae
04ab: 3f 84 06  call  $0684
04ae: 3d        inc   x
04af: 3d        inc   x
04b0: 0b 47     asl   $47
04b2: d0 f3     bne   $04a7
04b4: 2f cb     bra   $0481
04b6: e4 61     mov   a,$61
04b8: 3f f1 04  call  $04f1
04bb: c4 d0     mov   $d0,a
04bd: e4 63     mov   a,$63
04bf: 3f f1 04  call  $04f1
04c2: c4 d1     mov   $d1,a
04c4: e4 d3     mov   a,$d3
04c6: 48 ff     eor   a,#$ff
04c8: 24 4a     and   a,$4a
04ca: c4 d2     mov   $d2,a
04cc: 8d 0a     mov   y,#$0a
04ce: ad 05     cmp   y,#$05
04d0: f0 07     beq   $04d9
04d2: b0 08     bcs   $04dc
04d4: 69 4d 4c  cmp   ($4c),($4d)
04d7: d0 11     bne   $04ea
04d9: e3 4c 0e  bbs7  $4c,$04ea
04dc: f6 4b 0e  mov   a,$0e4b+y
04df: c5 f2 00  mov   $00f2,a
04e2: f6 55 0e  mov   a,$0e55+y
04e5: 5d        mov   x,a
04e6: e6        mov   a,(x)
04e7: c5 f3 00  mov   $00f3,a
04ea: fe e2     dbnz  y,$04ce
04ec: cb 45     mov   $45,y
04ee: cb 46     mov   $46,y
04f0: 6f        ret

04f1: 80        setc
04f2: a5 a1 03  sbc   a,$03a1
04f5: b0 02     bcs   $04f9
04f7: e8 00     mov   a,#$00
04f9: 6f        ret

04fa: 6d        push  y
04fb: e8 20     mov   a,#$20
04fd: cf        mul   ya
04fe: 60        clrc
04ff: 84 43     adc   a,$43
0501: c4 43     mov   $43,a
0503: 90 0d     bcc   $0512
0505: 3f 13 0d  call  $0d13
0508: 3f 7a 0e  call  $0e7a
050b: 69 4d 4c  cmp   ($4c),($4d)
050e: f0 02     beq   $0512
0510: ab 4c     inc   $4c
0512: ee        pop   y
0513: 6f        ret

0514: e4 04     mov   a,$04
0516: d0 01     bne   $0519
0518: 6f        ret

0519: e5 a2 03  mov   a,$03a2
051c: f0 03     beq   $0521
051e: 5f 37 0a  jmp   $0a37

0521: e4 0c     mov   a,$0c
0523: f0 16     beq   $053b
0525: 8b 0c     dec   $0c
0527: 3f b5 05  call  $05b5
052a: d0 0a     bne   $0536
052c: 8b 04     dec   $04
052e: d0 03     bne   $0533
0530: 5f 34 0a  jmp   $0a34

0533: 5f 1f 0a  jmp   $0a1f
0536: da 16     movw  $16,ya
0538: 3f dc 05  call  $05dc
053b: cd 00     mov   x,#$00
053d: d8 5e     mov   $5e,x
053f: 8f 01 47  mov   $47,#$01
0542: d8 44     mov   $44,x
0544: f4 31     mov   a,$31+x
0546: f0 64     beq   $05ac
0548: 9b 70     dec   $70+x
054a: d0 5a     bne   $05a6
054c: 3f 84 0a  call  $0a84
054f: d0 17     bne   $0568
; vcmd 00 - end repeat/return
0551: f4 80     mov   a,$80+x
0553: f0 d2     beq   $0527
; repeat / return from subroutine
0555: 3f 36 0c  call  $0c36
0558: 9b 80     dec   $80+x
055a: d0 f0     bne   $054c
055c: f5 30 02  mov   a,$0230+x
055f: d4 30     mov   $30+x,a
0561: f5 31 02  mov   a,$0231+x
0564: d4 31     mov   $31+x,a
0566: 2f e4     bra   $054c
; vcmd branches
0568: 30 1e     bmi   $0588		; vcmds 01-7f - note info:
056a: d5 00 02  mov   $0200+x,a		;   set cmd as duration
056d: 3f 84 0a  call  $0a84		;   read next byte
0570: 30 16     bmi   $0588		;   if not note then
0572: c4 11     mov   $11,a		;   get the dur% from the following byte
0574: 4b 11     lsr   $11		;   (not compatible with standard N-SPC!)
0576: 1c        asl   a
0577: 84 11     adc   a,$11
0579: d5 01 02  mov   $0201+x,a
057c: 3f 84 0a  call  $0a84
057f: 30 07     bmi   $0588
0581: 1c        asl   a
0582: d5 10 02  mov   $0210+x,a		;   set per-note vol
0585: 3f 84 0a  call  $0a84		;   read vcmd into A and Y
; vcmd branches 80-ff
0588: 68 e0     cmp   a,#$e0
058a: 90 05     bcc   $0591
058c: 3f 72 0a  call  $0a72
058f: 2f bb     bra   $054c
; vcmds 80-df - note
0591: 3f 0b 06  call  $060b
0594: f5 00 02  mov   a,$0200+x
0597: d4 70     mov   $70+x,a
0599: fd        mov   y,a
059a: f5 01 02  mov   a,$0201+x
059d: cf        mul   ya
059e: dd        mov   a,y
059f: d0 01     bne   $05a2
05a1: bc        inc   a
05a2: d4 71     mov   $71+x,a
05a4: 2f 03     bra   $05a9
05a6: 3f 27 08  call  $0827
05a9: 3f 9e 0c  call  $0c9e
05ac: 3d        inc   x
05ad: 3d        inc   x
05ae: 0b 47     asl   $47
05b0: d0 90     bne   $0542
05b2: 5f 11 07  jmp   $0711

05b5: 3f ce 05  call  $05ce
05b8: d0 21     bne   $05db
05ba: fd        mov   y,a
05bb: f0 1e     beq   $05db
05bd: 8b 42     dec   $42
05bf: 10 02     bpl   $05c3
05c1: c4 42     mov   $42,a
05c3: 3f ce 05  call  $05ce
05c6: f8 42     mov   x,$42
05c8: f0 eb     beq   $05b5
05ca: da 40     movw  $40,ya
05cc: 2f e7     bra   $05b5
05ce: 8d 00     mov   y,#$00
05d0: f7 40     mov   a,($40)+y
05d2: 3a 40     incw  $40
05d4: 2d        push  a
05d5: f7 40     mov   a,($40)+y
05d7: 3a 40     incw  $40
05d9: fd        mov   y,a
05da: ae        pop   a
05db: 6f        ret

05dc: 8d 0f     mov   y,#$0f
05de: f7 16     mov   a,($16)+y
05e0: d6 30 00  mov   $0030+y,a
05e3: dc        dec   y
05e4: 10 f8     bpl   $05de
05e6: cd 00     mov   x,#$00
05e8: 8f 01 47  mov   $47,#$01
05eb: f4 31     mov   a,$31+x
05ed: f0 0a     beq   $05f9
05ef: f5 11 02  mov   a,$0211+x
05f2: d0 05     bne   $05f9
05f4: e8 00     mov   a,#$00
05f6: 3f ef 0a  call  $0aef
05f9: e8 00     mov   a,#$00
05fb: d4 80     mov   $80+x,a
05fd: d4 90     mov   $90+x,a
05ff: d4 91     mov   $91+x,a
0601: bc        inc   a
0602: d4 70     mov   $70+x,a
0604: 3d        inc   x
0605: 3d        inc   x
0606: 0b 47     asl   $47
0608: d0 e1     bne   $05eb
060a: 6f        ret

; handle a note vcmd (80-df)
060b: ad ca     cmp   y,#$ca
060d: 90 05     bcc   $0614
; vcmds ca-df - percussion note
060f: 3f ef 0a  call  $0aef
0612: 8d a4     mov   y,#$a4
; vcmds 80-c7,c8,c9 - note/tie/rest
0614: ad c8     cmp   y,#$c8
0616: b0 60     bcs   $0678
0618: e4 1a     mov   a,$1a
061a: 24 47     and   a,$47
061c: d0 5a     bne   $0678
; vcmds 80-c7 - note (note number in Y)
061e: dd        mov   a,y
061f: 28 7f     and   a,#$7f
0621: 60        clrc
0622: 84 50     adc   a,$50
0624: 60        clrc
0625: 95 f0 02  adc   a,$02f0+x
0628: d5 61 03  mov   $0361+x,a
062b: f5 81 03  mov   a,$0381+x
062e: d5 60 03  mov   $0360+x,a
0631: f5 b1 02  mov   a,$02b1+x
0634: 5c        lsr   a
0635: e8 00     mov   a,#$00
0637: 7c        ror   a
0638: d5 a0 02  mov   $02a0+x,a
063b: e8 00     mov   a,#$00
063d: d4 b0     mov   $b0+x,a
063f: d5 00 01  mov   $0100+x,a
0642: d5 d0 02  mov   $02d0+x,a
0645: d4 c0     mov   $c0+x,a
0647: 09 47 5e  or    ($5e),($47)
064a: 09 47 45  or    ($45),($47)
064d: f5 80 02  mov   a,$0280+x
0650: d4 a0     mov   $a0+x,a
0652: f0 1e     beq   $0672
0654: f5 81 02  mov   a,$0281+x
0657: d4 a1     mov   $a1+x,a
0659: f5 90 02  mov   a,$0290+x
065c: d0 0a     bne   $0668
065e: f5 61 03  mov   a,$0361+x
0661: 80        setc
0662: b5 91 02  sbc   a,$0291+x
0665: d5 61 03  mov   $0361+x,a
0668: f5 91 02  mov   a,$0291+x
066b: 60        clrc
066c: 95 61 03  adc   a,$0361+x
066f: 3f be 0c  call  $0cbe
0672: 3f 79 06  call  $0679
0675: 5f 1a 09  jmp   $091a

0678: 6f        ret

0679: f5 61 03  mov   a,$0361+x
067c: c4 11     mov   $11,a
067e: f5 60 03  mov   a,$0360+x
0681: c4 10     mov   $10,a
0683: 6f        ret

0684: f2 13     clr7  $13
0686: f4 c1     mov   a,$c1+x
0688: f0 09     beq   $0693
068a: f5 e0 02  mov   a,$02e0+x
068d: de c0 03  cbne  $c0+x,$0693
0690: 3f e7 06  call  $06e7
0693: f5 31 03  mov   a,$0331+x
0696: fd        mov   y,a
0697: f5 30 03  mov   a,$0330+x
069a: da 10     movw  $10,ya
069c: f4 91     mov   a,$91+x
069e: f0 0a     beq   $06aa
06a0: f5 41 03  mov   a,$0341+x
06a3: fd        mov   y,a
06a4: f5 40 03  mov   a,$0340+x
06a7: 3f d9 0c  call  $0cd9
06aa: f3 13 03  bbc7  $13,$06b0
06ad: 3f e9 07  call  $07e9
06b0: f2 13     clr7  $13
06b2: 3f 79 06  call  $0679
06b5: f4 a0     mov   a,$a0+x
06b7: f0 0e     beq   $06c7
06b9: f4 a1     mov   a,$a1+x
06bb: d0 0a     bne   $06c7
06bd: f5 71 03  mov   a,$0371+x
06c0: fd        mov   y,a
06c1: f5 70 03  mov   a,$0370+x
06c4: 3f d9 0c  call  $0cd9
06c7: f4 b1     mov   a,$b1+x
06c9: f0 0b     beq   $06d6
06cb: f5 b0 02  mov   a,$02b0+x
06ce: 74 b0     cmp   a,$b0+x
06d0: f0 04     beq   $06d6
06d2: e3 13 0f  bbs7  $13,$06e4
06d5: 6f        ret

06d6: eb 51     mov   y,$51
06d8: f5 a1 02  mov   a,$02a1+x
06db: cf        mul   ya
06dc: dd        mov   a,y
06dd: 60        clrc
06de: 95 a0 02  adc   a,$02a0+x
06e1: 5f fc 08  jmp   $08fc

06e4: 5f 1a 09  jmp   $091a

06e7: e2 13     set7  $13
06e9: eb 51     mov   y,$51
06eb: f5 d1 02  mov   a,$02d1+x
06ee: cf        mul   ya
06ef: dd        mov   a,y
06f0: 60        clrc
06f1: 95 d0 02  adc   a,$02d0+x
06f4: 1c        asl   a
06f5: 90 02     bcc   $06f9
06f7: 48 ff     eor   a,#$ff
06f9: fb c1     mov   y,$c1+x
06fb: cf        mul   ya
06fc: dd        mov   a,y
06fd: 48 ff     eor   a,#$ff
06ff: eb 59     mov   y,$59
0701: cf        mul   ya
0702: f5 10 02  mov   a,$0210+x
0705: cf        mul   ya
0706: f5 01 03  mov   a,$0301+x
0709: cf        mul   ya
070a: dd        mov   a,y
070b: cf        mul   ya
070c: dd        mov   a,y
070d: d5 21 03  mov   $0321+x,a
0710: 6f        ret

0711: e4 54     mov   a,$54
0713: f0 0b     beq   $0720
0715: ba 56     movw  ya,$56
0717: 7a 52     addw  ya,$52
0719: 6e 54 02  dbnz  $54,$071e
071c: ba 54     movw  ya,$54
071e: da 52     movw  $52,ya
0720: e4 68     mov   a,$68
0722: f0 15     beq   $0739
0724: ba 64     movw  ya,$64
0726: 7a 60     addw  ya,$60
0728: da 60     movw  $60,ya
072a: ba 66     movw  ya,$66
072c: 7a 62     addw  ya,$62
072e: 6e 68 06  dbnz  $68,$0737
0731: ba 68     movw  ya,$68
0733: da 60     movw  $60,ya
0735: eb 6a     mov   y,$6a
0737: da 62     movw  $62,ya
0739: e4 5a     mov   a,$5a
073b: f0 0e     beq   $074b
073d: ba 5c     movw  ya,$5c
073f: 7a 58     addw  ya,$58
0741: 6e 5a 02  dbnz  $5a,$0746
0744: ba 5a     movw  ya,$5a
0746: da 58     movw  $58,ya
0748: 8f ff 5e  mov   $5e,#$ff
074b: cd 00     mov   x,#$00
074d: 8f 01 47  mov   $47,#$01
0750: f4 31     mov   a,$31+x
0752: f0 03     beq   $0757
0754: 3f 5e 07  call  $075e
0757: 3d        inc   x
0758: 3d        inc   x
0759: 0b 47     asl   $47
075b: d0 f3     bne   $0750
075d: 6f        ret

075e: f4 90     mov   a,$90+x
0760: f0 24     beq   $0786
0762: 09 47 5e  or    ($5e),($47)
0765: 9b 90     dec   $90+x
0767: d0 0a     bne   $0773
0769: e8 00     mov   a,#$00
076b: d5 00 03  mov   $0300+x,a
076e: f5 20 03  mov   a,$0320+x
0771: 2f 10     bra   $0783
0773: 60        clrc
0774: f5 00 03  mov   a,$0300+x
0777: 95 10 03  adc   a,$0310+x
077a: d5 00 03  mov   $0300+x,a
077d: f5 01 03  mov   a,$0301+x
0780: 95 11 03  adc   a,$0311+x
0783: d5 01 03  mov   $0301+x,a
0786: fb c1     mov   y,$c1+x
0788: f0 23     beq   $07ad
078a: f5 e0 02  mov   a,$02e0+x
078d: de c0 1b  cbne  $c0+x,$07ab
0790: 09 47 5e  or    ($5e),($47)
0793: f5 d0 02  mov   a,$02d0+x
0796: 10 07     bpl   $079f
0798: fc        inc   y
0799: d0 04     bne   $079f
079b: e8 80     mov   a,#$80
079d: 2f 04     bra   $07a3
079f: 60        clrc
07a0: 95 d1 02  adc   a,$02d1+x
07a3: d5 d0 02  mov   $02d0+x,a
07a6: 3f f4 06  call  $06f4
07a9: 2f 07     bra   $07b2
07ab: bb c0     inc   $c0+x
07ad: e8 ff     mov   a,#$ff
07af: 3f ff 06  call  $06ff
07b2: f4 91     mov   a,$91+x
07b4: f0 24     beq   $07da
07b6: 09 47 5e  or    ($5e),($47)
07b9: 9b 91     dec   $91+x
07bb: d0 0a     bne   $07c7
07bd: e8 00     mov   a,#$00
07bf: d5 30 03  mov   $0330+x,a
07c2: f5 50 03  mov   a,$0350+x
07c5: 2f 10     bra   $07d7
07c7: 60        clrc
07c8: f5 30 03  mov   a,$0330+x
07cb: 95 40 03  adc   a,$0340+x
07ce: d5 30 03  mov   $0330+x,a
07d1: f5 31 03  mov   a,$0331+x
07d4: 95 41 03  adc   a,$0341+x
07d7: d5 31 03  mov   $0331+x,a
07da: e4 47     mov   a,$47
07dc: 24 5e     and   a,$5e
07de: f0 46     beq   $0826
07e0: f5 31 03  mov   a,$0331+x
07e3: fd        mov   y,a
07e4: f5 30 03  mov   a,$0330+x
07e7: da 10     movw  $10,ya
07e9: 7d        mov   a,x
07ea: 9f        xcn   a
07eb: 5c        lsr   a
07ec: c4 12     mov   $12,a
07ee: eb 11     mov   y,$11
07f0: f6 18 0e  mov   a,$0e18+y
07f3: 80        setc
07f4: b6 17 0e  sbc   a,$0e17+y
07f7: eb 10     mov   y,$10
07f9: cf        mul   ya
07fa: dd        mov   a,y
07fb: eb 11     mov   y,$11
07fd: 60        clrc
07fe: 96 17 0e  adc   a,$0e17+y
0801: fd        mov   y,a
0802: f5 21 03  mov   a,$0321+x
0805: cf        mul   ya
0806: f5 51 03  mov   a,$0351+x
0809: 1c        asl   a
080a: 13 12 01  bbc0  $12,$080e
080d: 1c        asl   a
080e: dd        mov   a,y
080f: 90 03     bcc   $0814
0811: 48 ff     eor   a,#$ff
0813: bc        inc   a
0814: eb 12     mov   y,$12
0816: 3f 8e 0d  call  $0d8e
0819: 8d 14     mov   y,#$14
081b: e8 00     mov   a,#$00
081d: 9a 10     subw  ya,$10
081f: da 10     movw  $10,ya
0821: ab 12     inc   $12
0823: 33 12 c8  bbc1  $12,$07ee
0826: 6f        ret

0827: f4 71     mov   a,$71+x
0829: f0 65     beq   $0890
082b: 9b 71     dec   $71+x
082d: f0 05     beq   $0834
082f: e8 02     mov   a,#$02
0831: de 70 5c  cbne  $70+x,$0890
0834: f4 80     mov   a,$80+x
0836: c4 17     mov   $17,a
0838: f4 30     mov   a,$30+x
083a: fb 31     mov   y,$31+x
083c: da 14     movw  $14,ya
083e: 8d 00     mov   y,#$00
0840: f7 14     mov   a,($14)+y
0842: f0 1e     beq   $0862
0844: 30 07     bmi   $084d
0846: fc        inc   y
0847: 30 40     bmi   $0889
0849: f7 14     mov   a,($14)+y
084b: 10 f9     bpl   $0846
084d: 68 c8     cmp   a,#$c8
084f: f0 3f     beq   $0890
0851: 68 ef     cmp   a,#$ef
0853: f0 29     beq   $087e
0855: 68 e0     cmp   a,#$e0
0857: 90 30     bcc   $0889
0859: 6d        push  y
085a: fd        mov   y,a
085b: ae        pop   a
085c: 96 ec 09  adc   a,$09ec+y
085f: fd        mov   y,a
0860: 2f de     bra   $0840
0862: e4 17     mov   a,$17
0864: f0 23     beq   $0889
0866: 8b 17     dec   $17
0868: d0 0a     bne   $0874
086a: f5 31 02  mov   a,$0231+x
086d: 2d        push  a
086e: f5 30 02  mov   a,$0230+x
0871: ee        pop   y
0872: 2f c8     bra   $083c
0874: f5 41 02  mov   a,$0241+x
0877: 2d        push  a
0878: f5 40 02  mov   a,$0240+x
087b: ee        pop   y
087c: 2f be     bra   $083c
087e: fc        inc   y
087f: f7 14     mov   a,($14)+y
0881: 2d        push  a
0882: fc        inc   y
0883: f7 14     mov   a,($14)+y
0885: fd        mov   y,a
0886: ae        pop   a
0887: 2f b3     bra   $083c
0889: e4 47     mov   a,$47
088b: 8d 5c     mov   y,#$5c
088d: 3f 8e 0d  call  $0d8e
0890: f2 13     clr7  $13
0892: f4 a0     mov   a,$a0+x
0894: f0 2c     beq   $08c2
0896: f4 a1     mov   a,$a1+x
0898: f0 04     beq   $089e
089a: 9b a1     dec   $a1+x
089c: 2f 24     bra   $08c2
089e: e2 13     set7  $13
08a0: 9b a0     dec   $a0+x
08a2: d0 0b     bne   $08af
08a4: f5 81 03  mov   a,$0381+x
08a7: d5 60 03  mov   $0360+x,a
08aa: f5 80 03  mov   a,$0380+x
08ad: 2f 10     bra   $08bf
08af: 60        clrc
08b0: f5 60 03  mov   a,$0360+x
08b3: 95 70 03  adc   a,$0370+x
08b6: d5 60 03  mov   $0360+x,a
08b9: f5 61 03  mov   a,$0361+x
08bc: 95 71 03  adc   a,$0371+x
08bf: d5 61 03  mov   $0361+x,a
08c2: 3f 79 06  call  $0679
08c5: f4 b1     mov   a,$b1+x
08c7: f0 09     beq   $08d2
08c9: f5 b0 02  mov   a,$02b0+x
08cc: 74 b0     cmp   a,$b0+x
08ce: f0 06     beq   $08d6
08d0: bb b0     inc   $b0+x
08d2: e3 13 42  bbs7  $13,$0917
08d5: 6f        ret

08d6: f5 00 01  mov   a,$0100+x
08d9: 75 b1 02  cmp   a,$02b1+x
08dc: d0 05     bne   $08e3
08de: f5 c1 02  mov   a,$02c1+x
08e1: 2f 0d     bra   $08f0
08e3: 40        setp
08e4: bb 00     inc   $00+x
08e6: 20        clrp
08e7: fd        mov   y,a
08e8: f0 02     beq   $08ec
08ea: f4 b1     mov   a,$b1+x
08ec: 60        clrc
08ed: 95 c0 02  adc   a,$02c0+x
08f0: d4 b1     mov   $b1+x,a
08f2: f5 a0 02  mov   a,$02a0+x
08f5: 60        clrc
08f6: 95 a1 02  adc   a,$02a1+x
08f9: d5 a0 02  mov   $02a0+x,a
08fc: c4 12     mov   $12,a
08fe: 1c        asl   a
08ff: 1c        asl   a
0900: 90 02     bcc   $0904
0902: 48 ff     eor   a,#$ff
0904: fd        mov   y,a
0905: f4 b1     mov   a,$b1+x
0907: 68 f1     cmp   a,#$f1
0909: 90 05     bcc   $0910
090b: 28 0f     and   a,#$0f
090d: cf        mul   ya
090e: 2f 04     bra   $0914
0910: cf        mul   ya
0911: dd        mov   a,y
0912: 8d 00     mov   y,#$00
0914: 3f ef 0c  call  $0cef
0917: 5f 1a 09  jmp   $091a

091a: 8d 00     mov   y,#$00
091c: e4 11     mov   a,$11
091e: 80        setc
091f: a8 34     sbc   a,#$34
0921: b0 09     bcs   $092c
0923: e4 11     mov   a,$11
0925: 80        setc
0926: a8 13     sbc   a,#$13
0928: b0 06     bcs   $0930
092a: dc        dec   y
092b: 1c        asl   a
092c: 7a 10     addw  ya,$10
092e: da 10     movw  $10,ya
0930: 4d        push  x
0931: e4 11     mov   a,$11
0933: 1c        asl   a
0934: 8d 00     mov   y,#$00
0936: cd 18     mov   x,#$18
0938: 9e        div   ya,x
0939: 5d        mov   x,a
093a: f6 61 0e  mov   a,$0e61+y
093d: c4 15     mov   $15,a
093f: f6 60 0e  mov   a,$0e60+y
0942: c4 14     mov   $14,a
0944: f6 63 0e  mov   a,$0e63+y
0947: 2d        push  a
0948: f6 62 0e  mov   a,$0e62+y
094b: ee        pop   y
094c: 9a 14     subw  ya,$14
094e: eb 10     mov   y,$10
0950: cf        mul   ya
0951: dd        mov   a,y
0952: 8d 00     mov   y,#$00
0954: 7a 14     addw  ya,$14
0956: cb 15     mov   $15,y
0958: 1c        asl   a
0959: 2b 15     rol   $15
095b: c4 14     mov   $14,a
095d: 2f 04     bra   $0963
095f: 4b 15     lsr   $15
0961: 7c        ror   a
0962: 3d        inc   x
0963: c8 06     cmp   x,#$06
0965: d0 f8     bne   $095f
0967: c4 14     mov   $14,a
0969: ce        pop   x
096a: f5 20 02  mov   a,$0220+x
096d: eb 15     mov   y,$15
096f: cf        mul   ya
0970: da 16     movw  $16,ya
0972: f5 20 02  mov   a,$0220+x
0975: eb 14     mov   y,$14
0977: cf        mul   ya
0978: 6d        push  y
0979: f5 21 02  mov   a,$0221+x
097c: eb 14     mov   y,$14
097e: cf        mul   ya
097f: 7a 16     addw  ya,$16
0981: da 16     movw  $16,ya
0983: f5 21 02  mov   a,$0221+x
0986: eb 15     mov   y,$15
0988: cf        mul   ya
0989: fd        mov   y,a
098a: ae        pop   a
098b: 7a 16     addw  ya,$16
098d: da 16     movw  $16,ya
098f: 7d        mov   a,x
0990: 9f        xcn   a
0991: 5c        lsr   a
0992: 08 02     or    a,#$02
0994: fd        mov   y,a
0995: e4 16     mov   a,$16
0997: 3f 8e 0d  call  $0d8e
099a: fc        inc   y
099b: e4 17     mov   a,$17
099d: 5f 8e 0d  jmp   $0d8e

09a0: 3f 9d 0d  call  $0d9d
09a3: 9c        dec   a
09a4: 68 0f     cmp   a,#$0f
09a6: 90 01     bcc   $09a9
09a8: 6f        ret

09a9: 1c        asl   a
09aa: fd        mov   y,a
09ab: f6 b5 09  mov   a,$09b5+y
09ae: 2d        push  a
09af: f6 b4 09  mov   a,$09b4+y
09b2: 2d        push  a
09b3: 6f        ret

09b4: dw $09d2
09b6: dw $0a1b
09b8: dw $0a1f
09ba: dw $0a34
09bc: dw $0a3f
09be: dw $0a43
09c0: dw $09b3
09c2: dw $09b3
09c4: dw $09b3
09c6: dw $0a49
09c8: dw $09b3
09ca: dw $09b3
09cc: dw $09b3
09ce: dw $09b3
09d0: dw $0a5a

; reset song params
09d2: cd 0e     mov   x,#$0e
09d4: 8f 80 47  mov   $47,#$80
09d7: e8 0a     mov   a,#$0a
09d9: 3f 48 0b  call  $0b48
09dc: e8 ff     mov   a,#$ff
09de: d5 01 03  mov   $0301+x,a
09e1: bc        inc   a
09e2: d5 11 02  mov   $0211+x,a
09e5: d5 81 03  mov   $0381+x,a
09e8: d5 f0 02  mov   $02f0+x,a
09eb: d5 80 02  mov   $0280+x,a
09ee: d4 b1     mov   $b1+x,a
09f0: d4 c1     mov   $c1+x,a
09f2: 1d        dec   x
09f3: 1d        dec   x
09f4: 4b 47     lsr   $47
09f6: d0 df     bne   $09d7
09f8: c4 5a     mov   $5a,a
09fa: c4 68     mov   $68,a
09fc: c4 54     mov   $54,a
09fe: c4 50     mov   $50,a
0a00: c4 42     mov   $42,a
0a02: c4 5f     mov   $5f,a
0a04: c4 d3     mov   $d3,a
0a06: c4 4a     mov   $4a,a
0a08: c4 60     mov   $60,a
0a0a: c4 61     mov   $61,a
0a0c: c5 a0 03  mov   $03a0,a
0a0f: c5 a1 03  mov   $03a1,a
0a12: 3f 48 0d  call  $0d48
0a15: 8f c0 59  mov   $59,#$c0
0a18: 5f 3c 0d  jmp   $0d3c

; play song
0a1b: e8 01     mov   a,#$01
0a1d: 2f 02     bra   $0a21
0a1f: e8 02     mov   a,#$02
0a21: c4 04     mov   $04,a
0a23: 3f d2 09  call  $09d2
0a26: 3f 43 0a  call  $0a43
0a29: e8 00     mov   a,#$00	; $1400
0a2b: 8d 14     mov   y,#$14
0a2d: da 40     movw  $40,ya
0a2f: 8f 01 0c  mov   $0c,#$01
0a32: 2f 03     bra   $0a37
0a34: 8f 00 04  mov   $04,#$00
0a37: e4 1a     mov   a,$1a
0a39: 48 ff     eor   a,#$ff
0a3b: 0e 46 00  tset1 $0046
0a3e: 6f        ret

0a3f: e8 01     mov   a,#$01
0a41: 2f 02     bra   $0a45
0a43: e8 00     mov   a,#$00
0a45: c5 a2 03  mov   $03a2,a
0a48: 6f        ret

0a49: e4 04     mov   a,$04
0a4b: f0 0c     beq   $0a59
0a4d: e5 a1 03  mov   a,$03a1
0a50: d0 07     bne   $0a59
0a52: c5 a0 03  mov   $03a0,a
0a55: bc        inc   a
0a56: c5 a1 03  mov   $03a1,a
0a59: 6f        ret

0a5a: e8 00     mov   a,#$00
0a5c: 8d d0     mov   y,#$d0
0a5e: 3f 96 0d  call  $0d96
0a61: 8d d1     mov   y,#$d1
0a63: 3f 96 0d  call  $0d96
0a66: 3f 3e 0d  call  $0d3e
0a69: 3f 48 0d  call  $0d48
0a6c: 3f cb 0d  call  $0dcb
0a6f: 5f 34 0a  jmp   $0a34

; dispatch vcmd in A (e0-ff)
0a72: 1c        asl   a
0a73: fd        mov   y,a
0a74: f6 cf 09  mov   a,$09cf+y
0a77: 2d        push  a
0a78: f6 ce 09  mov   a,$09ce+y
0a7b: 2d        push  a
0a7c: dd        mov   a,y
0a7d: 5c        lsr   a
0a7e: fd        mov   y,a
0a7f: f6 6c 0a  mov   a,$0a6c+y
0a82: f0 08     beq   $0a8c
; read new argument to A and Y
0a84: e7 30     mov   a,($30+x)
; advance reading ptr
0a86: bb 30     inc   $30+x
0a88: d0 02     bne   $0a8c
0a8a: bb 31     inc   $31+x
0a8c: fd        mov   y,a
0a8d: 6f        ret

; vcmd dispatch table
0a8f: dw $0aef	; e0 - set instrument
0a91: dw $0b48	; e1 - pan
0a93: dw $0b56	; e2 - pan fade
0a95: dw $0b6f	; e3 - vibrato on
0a97: dw $0b7b	; e4 - vibrato off
0a99: dw $0b96	; e5 - master volume
0a9b: dw $0b9b	; e6 - master volume fade
0a9d: dw $0bad	; e7 - tempo
0a9f: dw $0bb2	; e8 - tempo fade
0aa1: dw $0bc4	; e9 - global transpose
0aa3: dw $0bc7	; ea - per-voice transpose
0aa5: dw $0bcb	; eb - tremolo on
0aa7: dw $0bd7	; ec - tremolo off
0aa9: dw $0bf8	; ed - volume
0aab: dw $0c01	; ee - volume fade
0aad: dw $0c1e	; ef - call subroutine
0aaf: dw $0b86	; f0 - vibrato fade
0ab1: dw $0bda	; f1 - pitch envelope (release)
0ab3: dw $0bde	; f2 - pitch envelope (attack)
0ab5: dw $0bf4	; f3 - pitch envelope off
0ab7: dw $0c1a	; f4 - tuning
0ab9: dw $0c41	; f5 - echo vbits/volume
0abb: dw $0c75	; f6 - disable echo
0abd: dw $0c7c	; f7 - set echo params
0abf: dw $0c54	; f8 - echo volume fade
0ac1: dw $0cae	; f9 - pitch slide
0ac3: dw $0cd6	; fa - set perc patch base
0ac5: dw $0aeb	; fb - skip to next byte
0ac7: dw $0aee	; fc - nop
0ac9: dw $0aee	; fd - nop
0aca: dw $0aee	; fe - nop

; vcmd lengths
0acc: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0ad4: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0adc: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0ae4: db $03,$03,$01,$02,$00,$00,$00	 ; f8-fe

; vcmd fb - skip to next byte
0aeb: 3f 86 0a  call  $0a86
; vcmd fc-fe - nop
0aee: 6f        ret

; vcmd e0 - set instrument
0aef: d5 11 02  mov   $0211+x,a
0af2: fd        mov   y,a
0af3: 10 06     bpl   $0afb
0af5: 80        setc
0af6: a8 ca     sbc   a,#$ca
0af8: 60        clrc
0af9: 84 5f     adc   a,$5f
0afb: 8d 06     mov   y,#$06
0afd: cf        mul   ya
0afe: da 14     movw  $14,ya
0b00: 60        clrc
0b01: 98 00 14  adc   $14,#$00
0b04: 98 29 15  adc   $15,#$29
0b07: e4 1a     mov   a,$1a
0b09: 24 47     and   a,$47
0b0b: d0 3a     bne   $0b47
0b0d: 4d        push  x
0b0e: 7d        mov   a,x
0b0f: 9f        xcn   a
0b10: 5c        lsr   a
0b11: 08 04     or    a,#$04
0b13: 5d        mov   x,a
0b14: 8d 00     mov   y,#$00
0b16: f7 14     mov   a,($14)+y
0b18: 10 0e     bpl   $0b28
0b1a: 28 1f     and   a,#$1f
0b1c: 38 20 48  and   $48,#$20
0b1f: 0e 48 00  tset1 $0048
0b22: 09 47 49  or    ($49),($47)
0b25: dd        mov   a,y
0b26: 2f 07     bra   $0b2f
0b28: e4 47     mov   a,$47
0b2a: 4e 49 00  tclr1 $0049
0b2d: f7 14     mov   a,($14)+y
0b2f: c9 f2 00  mov   $00f2,x
0b32: c5 f3 00  mov   $00f3,a
0b35: 3d        inc   x
0b36: fc        inc   y
0b37: ad 04     cmp   y,#$04
0b39: d0 f2     bne   $0b2d
0b3b: ce        pop   x
0b3c: f7 14     mov   a,($14)+y
0b3e: d5 21 02  mov   $0221+x,a
0b41: fc        inc   y
0b42: f7 14     mov   a,($14)+y
0b44: d5 20 02  mov   $0220+x,a
0b47: 6f        ret

; vcmd e1 - pan
0b48: d5 51 03  mov   $0351+x,a
0b4b: 28 1f     and   a,#$1f
0b4d: d5 31 03  mov   $0331+x,a
0b50: e8 00     mov   a,#$00
0b52: d5 30 03  mov   $0330+x,a
0b55: 6f        ret

; vcmd e2 - pan fade
0b56: d4 91     mov   $91+x,a
0b58: 2d        push  a
0b59: 3f 84 0a  call  $0a84
0b5c: d5 50 03  mov   $0350+x,a
0b5f: 80        setc
0b60: b5 31 03  sbc   a,$0331+x
0b63: ce        pop   x
0b64: 3f f7 0c  call  $0cf7
0b67: d5 40 03  mov   $0340+x,a
0b6a: dd        mov   a,y
0b6b: d5 41 03  mov   $0341+x,a
0b6e: 6f        ret

; vcmd e3 - vibrato on
0b6f: d5 b0 02  mov   $02b0+x,a
0b72: 3f 84 0a  call  $0a84
0b75: d5 a1 02  mov   $02a1+x,a
0b78: 3f 84 0a  call  $0a84
; vcmd e4 - vibrato off
0b7b: d4 b1     mov   $b1+x,a
0b7d: d5 c1 02  mov   $02c1+x,a
0b80: e8 00     mov   a,#$00
0b82: d5 b1 02  mov   $02b1+x,a
0b85: 6f        ret

; vcmd f0 - vibrato fade
0b86: d5 b1 02  mov   $02b1+x,a
0b89: 2d        push  a
0b8a: 8d 00     mov   y,#$00
0b8c: f4 b1     mov   a,$b1+x
0b8e: ce        pop   x
0b8f: 9e        div   ya,x
0b90: f8 44     mov   x,$44
0b92: d5 c0 02  mov   $02c0+x,a
0b95: 6f        ret

; vcmd e5 - master volume
0b96: e8 00     mov   a,#$00
0b98: da 58     movw  $58,ya
0b9a: 6f        ret

; vcmd e6 - master volume fade
0b9b: c4 5a     mov   $5a,a
0b9d: 3f 84 0a  call  $0a84
0ba0: c4 5b     mov   $5b,a
0ba2: 80        setc
0ba3: a4 59     sbc   a,$59
0ba5: f8 5a     mov   x,$5a
0ba7: 3f f7 0c  call  $0cf7
0baa: da 5c     movw  $5c,ya
0bac: 6f        ret

; vcmd e7 - tempo
0bad: e8 00     mov   a,#$00
0baf: da 52     movw  $52,ya
0bb1: 6f        ret

; vcmd e8 - tempo fade
0bb2: c4 54     mov   $54,a
0bb4: 3f 84 0a  call  $0a84
0bb7: c4 55     mov   $55,a
0bb9: 80        setc
0bba: a4 53     sbc   a,$53
0bbc: f8 54     mov   x,$54
0bbe: 3f f7 0c  call  $0cf7
0bc1: da 56     movw  $56,ya
0bc3: 6f        ret

; vcmd e9 - global transpose
0bc4: c4 50     mov   $50,a
0bc6: 6f        ret

; vcmd ea - per-voice transpose
0bc7: d5 f0 02  mov   $02f0+x,a
0bca: 6f        ret

; vcmd eb - tremolo on
0bcb: d5 e0 02  mov   $02e0+x,a
0bce: 3f 84 0a  call  $0a84
0bd1: d5 d1 02  mov   $02d1+x,a
0bd4: 3f 84 0a  call  $0a84
; vcmd ec - tremolo off
0bd7: d4 c1     mov   $c1+x,a
0bd9: 6f        ret

; vcmd f1 - pitch envelope (release)
0bda: e8 01     mov   a,#$01
0bdc: 2f 02     bra   $0be0
; vcmd f2 - pitch envelope (attack)
0bde: e8 00     mov   a,#$00
0be0: d5 90 02  mov   $0290+x,a
0be3: dd        mov   a,y
0be4: d5 81 02  mov   $0281+x,a
0be7: 3f 84 0a  call  $0a84
0bea: d5 80 02  mov   $0280+x,a
0bed: 3f 84 0a  call  $0a84
0bf0: d5 91 02  mov   $0291+x,a
0bf3: 6f        ret

; vcmd f3 - pitch envelope off
0bf4: d5 80 02  mov   $0280+x,a
0bf7: 6f        ret

; vcmd ed - volume
0bf8: d5 01 03  mov   $0301+x,a
0bfb: e8 00     mov   a,#$00
0bfd: d5 00 03  mov   $0300+x,a
0c00: 6f        ret

; vcmd ee - volume fade
0c01: d4 90     mov   $90+x,a
0c03: 2d        push  a
0c04: 3f 84 0a  call  $0a84
0c07: d5 20 03  mov   $0320+x,a
0c0a: 80        setc
0c0b: b5 01 03  sbc   a,$0301+x
0c0e: ce        pop   x
0c0f: 3f f7 0c  call  $0cf7
0c12: d5 10 03  mov   $0310+x,a
0c15: dd        mov   a,y
0c16: d5 11 03  mov   $0311+x,a
0c19: 6f        ret

; vcmd f4 - tuning
0c1a: d5 81 03  mov   $0381+x,a
0c1d: 6f        ret

; vcmd ef - call subroutine
0c1e: d5 40 02  mov   $0240+x,a
0c21: 3f 84 0a  call  $0a84
0c24: d5 41 02  mov   $0241+x,a
0c27: 3f 84 0a  call  $0a84
0c2a: d4 80     mov   $80+x,a
0c2c: f4 30     mov   a,$30+x
0c2e: d5 30 02  mov   $0230+x,a
0c31: f4 31     mov   a,$31+x
0c33: d5 31 02  mov   $0231+x,a
0c36: f5 40 02  mov   a,$0240+x
0c39: d4 30     mov   $30+x,a
0c3b: f5 41 02  mov   a,$0241+x
0c3e: d4 31     mov   $31+x,a
0c40: 6f        ret

; vcmd f5 - echo vbits/volume
0c41: c4 4a     mov   $4a,a
0c43: 3f 84 0a  call  $0a84
0c46: e8 00     mov   a,#$00
0c48: da 60     movw  $60,ya
0c4a: 3f 84 0a  call  $0a84
0c4d: e8 00     mov   a,#$00
0c4f: da 62     movw  $62,ya
0c51: b2 48     clr5  $48
0c53: 6f        ret

; vcmd f8 - echo volume fade
0c54: c4 68     mov   $68,a
0c56: 3f 84 0a  call  $0a84
0c59: c4 69     mov   $69,a
0c5b: 80        setc
0c5c: a4 61     sbc   a,$61
0c5e: f8 68     mov   x,$68
0c60: 3f f7 0c  call  $0cf7
0c63: da 64     movw  $64,ya
0c65: 3f 84 0a  call  $0a84
0c68: c4 6a     mov   $6a,a
0c6a: 80        setc
0c6b: a4 63     sbc   a,$63
0c6d: f8 68     mov   x,$68
0c6f: 3f f7 0c  call  $0cf7
0c72: da 66     movw  $66,ya
0c74: 6f        ret

; vcmd f6 - disable echo
0c75: da 60     movw  $60,ya
0c77: da 62     movw  $62,ya
0c79: a2 48     set5  $48
0c7b: 6f        ret

; vcmd f7 - set echo params
0c7c: 3f 48 0d  call  $0d48
0c7f: 3f 84 0a  call  $0a84
0c82: c4 4e     mov   $4e,a
0c84: 3f 84 0a  call  $0a84
0c87: 8d 08     mov   y,#$08
0c89: cf        mul   ya
0c8a: 5d        mov   x,a
0c8b: 8d 0f     mov   y,#$0f
0c8d: f5 2c 0e  mov   a,$0e2c+x
0c90: 3f 96 0d  call  $0d96
0c93: 3d        inc   x
0c94: dd        mov   a,y
0c95: 60        clrc
0c96: 88 10     adc   a,#$10
0c98: fd        mov   y,a
0c99: 10 f2     bpl   $0c8d
0c9b: f8 44     mov   x,$44
0c9d: 6f        ret

0c9e: f4 a0     mov   a,$a0+x
0ca0: d0 33     bne   $0cd5
0ca2: e7 30     mov   a,($30+x)
0ca4: 68 f9     cmp   a,#$f9
0ca6: d0 2d     bne   $0cd5
0ca8: 3f 86 0a  call  $0a86
0cab: 3f 84 0a  call  $0a84
; vcmd f9 - pitch slide
0cae: d4 a1     mov   $a1+x,a
0cb0: 3f 84 0a  call  $0a84
0cb3: d4 a0     mov   $a0+x,a
0cb5: 3f 84 0a  call  $0a84
0cb8: 60        clrc
0cb9: 84 50     adc   a,$50
0cbb: 95 f0 02  adc   a,$02f0+x
0cbe: 28 7f     and   a,#$7f
0cc0: d5 80 03  mov   $0380+x,a
0cc3: 80        setc
0cc4: b5 61 03  sbc   a,$0361+x
0cc7: fb a0     mov   y,$a0+x
0cc9: 6d        push  y
0cca: ce        pop   x
0ccb: 3f f7 0c  call  $0cf7
0cce: d5 70 03  mov   $0370+x,a
0cd1: dd        mov   a,y
0cd2: d5 71 03  mov   $0371+x,a
0cd5: 6f        ret

; vcmd fa - set perc patch base
0cd6: c4 5f     mov   $5f,a
0cd8: 6f        ret

0cd9: e2 13     set7  $13
0cdb: cb 12     mov   $12,y
0cdd: 3f 09 0d  call  $0d09
0ce0: 6d        push  y
0ce1: eb 51     mov   y,$51
0ce3: cf        mul   ya
0ce4: cb 14     mov   $14,y
0ce6: 8f 00 15  mov   $15,#$00
0ce9: eb 51     mov   y,$51
0ceb: ae        pop   a
0cec: cf        mul   ya
0ced: 7a 14     addw  ya,$14
0cef: 3f 09 0d  call  $0d09
0cf2: 7a 10     addw  ya,$10
0cf4: da 10     movw  $10,ya
0cf6: 6f        ret

0cf7: ed        notc
0cf8: 6b 12     ror   $12
0cfa: 10 03     bpl   $0cff
0cfc: 48 ff     eor   a,#$ff
0cfe: bc        inc   a
0cff: 8d 00     mov   y,#$00
0d01: 9e        div   ya,x
0d02: 2d        push  a
0d03: e8 00     mov   a,#$00
0d05: 9e        div   ya,x
0d06: ee        pop   y
0d07: f8 44     mov   x,$44
0d09: f3 12 06  bbc7  $12,$0d12
0d0c: da 14     movw  $14,ya
0d0e: ba 0e     movw  ya,$0e
0d10: 9a 14     subw  ya,$14
0d12: 6f        ret

0d13: e5 a1 03  mov   a,$03a1
0d16: d0 01     bne   $0d19
0d18: 6f        ret

0d19: 60        clrc
0d1a: e8 96     mov   a,#$96
0d1c: 85 a0 03  adc   a,$03a0
0d1f: c5 a0 03  mov   $03a0,a
0d22: e8 01     mov   a,#$01
0d24: 85 a1 03  adc   a,$03a1
0d27: c5 a1 03  mov   $03a1,a
0d2a: 80        setc
0d2b: e8 60     mov   a,#$60
0d2d: a5 a1 03  sbc   a,$03a1
0d30: b0 08     bcs   $0d3a
0d32: 3f 34 0a  call  $0a34
0d35: e8 00     mov   a,#$00
0d37: c5 a0 03  mov   $03a0,a
0d3a: 2f 02     bra   $0d3e
0d3c: e8 60     mov   a,#$60
0d3e: 8d 0c     mov   y,#$0c
0d40: 3f 96 0d  call  $0d96
0d43: 8d 1c     mov   y,#$1c
0d45: 5f 96 0d  jmp   $0d96

0d48: c4 4d     mov   $4d,a
0d4a: 8d 7d     mov   y,#$7d
0d4c: cc f2 00  mov   $00f2,y
0d4f: e5 f3 00  mov   a,$00f3
0d52: 64 4d     cmp   a,$4d
0d54: f0 2b     beq   $0d81
0d56: 28 0f     and   a,#$0f
0d58: 48 ff     eor   a,#$ff
0d5a: f3 4c 03  bbc7  $4c,$0d60
0d5d: 60        clrc
0d5e: 84 4c     adc   a,$4c
0d60: c4 4c     mov   $4c,a
0d62: 8d 04     mov   y,#$04
0d64: f6 4b 0e  mov   a,$0e4b+y
0d67: c5 f2 00  mov   $00f2,a
0d6a: e8 00     mov   a,#$00
0d6c: c5 f3 00  mov   $00f3,a
0d6f: fe f3     dbnz  y,$0d64
0d71: e4 48     mov   a,$48
0d73: 08 20     or    a,#$20
0d75: 8d 6c     mov   y,#$6c
0d77: 3f 96 0d  call  $0d96
0d7a: e4 4d     mov   a,$4d
0d7c: 8d 7d     mov   y,#$7d
0d7e: 3f 96 0d  call  $0d96
0d81: 1c        asl   a
0d82: 1c        asl   a
0d83: 1c        asl   a
0d84: 48 ff     eor   a,#$ff
0d86: 80        setc
0d87: 88 ff     adc   a,#$ff
0d89: 8d 6d     mov   y,#$6d
0d8b: 5f 96 0d  jmp   $0d96

0d8e: 2d        push  a
0d8f: e4 47     mov   a,$47
0d91: 24 1a     and   a,$1a
0d93: ae        pop   a
0d94: d0 06     bne   $0d9c
0d96: cc f2 00  mov   $00f2,y
0d99: c5 f3 00  mov   $00f3,a
0d9c: 6f        ret

0d9d: e5 f4 00  mov   a,$00f4
0da0: 65 f4 00  cmp   a,$00f4
0da3: d0 f8     bne   $0d9d
0da5: 68 00     cmp   a,#$00
0da7: f0 0a     beq   $0db3
0da9: 2d        push  a
0daa: e8 11     mov   a,#$11
0dac: c5 f1 00  mov   $00f1,a
0daf: ae        pop   a
0db0: c5 f4 00  mov   $00f4,a
0db3: 6f        ret

0db4: e5 f6 00  mov   a,$00f6
0db7: 65 f6 00  cmp   a,$00f6
0dba: d0 f8     bne   $0db4
0dbc: 68 00     cmp   a,#$00
0dbe: f0 0a     beq   $0dca
0dc0: 2d        push  a
0dc1: e8 21     mov   a,#$21
0dc3: c5 f1 00  mov   $00f1,a
0dc6: ae        pop   a
0dc7: c5 f6 00  mov   $00f6,a
0dca: 6f        ret

0dcb: e8 aa     mov   a,#$aa
0dcd: c5 f4 00  mov   $00f4,a
0dd0: e8 bb     mov   a,#$bb
0dd2: c5 f5 00  mov   $00f5,a
0dd5: e5 f4 00  mov   a,$00f4
0dd8: 68 cc     cmp   a,#$cc
0dda: d0 f9     bne   $0dd5
0ddc: 2f 20     bra   $0dfe
0dde: ec f4 00  mov   y,$00f4
0de1: d0 fb     bne   $0dde
0de3: 5e f4 00  cmp   y,$00f4
0de6: d0 0f     bne   $0df7
0de8: e5 f5 00  mov   a,$00f5
0deb: cc f4 00  mov   $00f4,y
0dee: d7 14     mov   ($14)+y,a
0df0: fc        inc   y
0df1: d0 f0     bne   $0de3
0df3: ab 15     inc   $15
0df5: 2f ec     bra   $0de3
0df7: 10 ea     bpl   $0de3
0df9: 5e f4 00  cmp   y,$00f4
0dfc: 10 e5     bpl   $0de3
0dfe: e5 f6 00  mov   a,$00f6
0e01: ec f7 00  mov   y,$00f7
0e04: da 14     movw  $14,ya
0e06: ec f4 00  mov   y,$00f4
0e09: e5 f5 00  mov   a,$00f5
0e0c: cc f4 00  mov   $00f4,y
0e0f: d0 cd     bne   $0dde
0e11: cd 31     mov   x,#$31
0e13: c9 f1 00  mov   $00f1,x
0e16: 6f        ret

; pan table
0e17: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e1f: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e27: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0e2c: db $7f,$00,$00,$00,$00,$00,$00,$00
0e34: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0e3c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0e44: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs for dsp regs
0e4c: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0e56: db $d0,$d1,$4e,$d2,$48,$45,$0e,$49,$4b,$46

; pitch table
0e60: dw $085f
0e62: dw $08de
0e64: dw $0965
0e66: dw $09f4
0e68: dw $0a8c
0e6a: dw $0b2c
0e6c: dw $0bd6
0e6e: dw $0c8b
0e70: dw $0d4a
0e72: dw $0e14
0e74: dw $0eea
0e76: dw $0fcd
0e78: dw $10be

0e7a: e5 90 03  mov   a,$0390
0e7d: f0 25     beq   $0ea4
0e7f: 8c 90 03  dec   $0390
0e82: f0 0d     beq   $0e91
0e84: 68 03     cmp   a,#$03
0e86: d0 1c     bne   $0ea4
0e88: e8 40     mov   a,#$40
0e8a: 8d 5c     mov   y,#$5c
0e8c: 3f 96 0d  call  $0d96
0e8f: 2f 13     bra   $0ea4
0e91: e5 1d 02  mov   a,$021d
0e94: 68 07     cmp   a,#$07
0e96: b0 03     bcs   $0e9b
0e98: e5 91 03  mov   a,$0391
0e9b: cd 0c     mov   x,#$0c
0e9d: 3f ef 0a  call  $0aef
0ea0: d2 1a     clr6  $1a
0ea2: d2 d3     clr6  $d3
0ea4: 3f b4 0d  call  $0db4
0ea7: 9c        dec   a
0ea8: 68 15     cmp   a,#$15
0eaa: 90 01     bcc   $0ead
0eac: 6f        ret

0ead: c5 94 03  mov   $0394,a
0eb0: 1c        asl   a
0eb1: 85 94 03  adc   a,$0394
0eb4: 5d        mov   x,a
0eb5: f5 24 0f  mov   a,$0f24+x
0eb8: 30 0a     bmi   $0ec4
0eba: e2 1a     set7  $1a
0ebc: e2 d3     set7  $d3
0ebe: e8 80     mov   a,#$80
0ec0: 8d 0e     mov   y,#$0e
0ec2: 2f 24     bra   $0ee8
0ec4: e5 90 03  mov   a,$0390
0ec7: d0 15     bne   $0ede
0ec9: e5 1d 02  mov   a,$021d
0ecc: c5 91 03  mov   $0391,a
0ecf: c2 1a     set6  $1a
0ed1: c2 d3     set6  $d3
0ed3: e4 d3     mov   a,$d3
0ed5: 48 ff     eor   a,#$ff
0ed7: 24 4a     and   a,$4a
0ed9: 8d 4d     mov   y,#$4d
0edb: 3f 96 0d  call  $0d96
0ede: f5 23 0f  mov   a,$0f23+x
0ee1: c5 90 03  mov   $0390,a
0ee4: e8 40     mov   a,#$40
0ee6: 8d 0c     mov   y,#$0c
0ee8: c5 92 03  mov   $0392,a
0eeb: cc 93 03  mov   $0393,y
0eee: 4d        push  x
0eef: f5 24 0f  mov   a,$0f24+x
0ef2: 28 7f     and   a,#$7f
0ef4: e9 93 03  mov   x,$0393
0ef7: 3f ef 0a  call  $0aef
0efa: ce        pop   x
0efb: e5 93 03  mov   a,$0393
0efe: 9f        xcn   a
0eff: 5c        lsr   a
0f00: fd        mov   y,a
0f01: e8 7f     mov   a,#$7f
0f03: 3f 96 0d  call  $0d96
0f06: fc        inc   y
0f07: 3f 96 0d  call  $0d96
0f0a: f5 22 0f  mov   a,$0f22+x
0f0d: 28 7f     and   a,#$7f
0f0f: c4 11     mov   $11,a
0f11: 8f 00 10  mov   $10,#$00
0f14: e9 93 03  mov   x,$0393
0f17: 3f 1a 09  call  $091a
0f1a: e5 92 03  mov   a,$0392
0f1d: 8d 4c     mov   y,#$4c
0f1f: 5f 96 0d  jmp   $0d96

0f22: db $8c,$50,$00,$8c,$50,$01,$bc,$50
0f2a: db $01,$a4,$05,$01,$85,$05,$01,$98
0f32: db $05,$01,$b0,$50,$82,$98,$50,$83
0f3a: db $a4,$50,$83,$87,$08,$84,$a4,$05
0f42: db $85,$b0,$05,$85,$b7,$05,$85,$9c
0f4a: db $80,$82,$87,$48,$84,$a9,$05,$00
0452: db $c3,$04,$82,$96,$20,$81,$bc,$18

045a: db $81,$85,$80,$86,$8d,$08,$84
