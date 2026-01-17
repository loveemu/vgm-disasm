0440: 20        clrp
0441: cd cf     mov   x,#$cf
0443: bd        mov   sp,x
0444: e8 e0     mov   a,#$e0
0446: 8d 6c     mov   y,#$6c
0448: 3f 3a 10  call  $103a
044b: e8 28     mov   a,#$28
044d: 8d 5d     mov   y,#$5d
044f: 3f 3a 10  call  $103a
0452: e8 00     mov   a,#$00
0454: 5d        mov   x,a
0455: af        mov   (x)+,a
0456: c8 e0     cmp   x,#$e0
0458: d0 fb     bne   $0455
045a: e8 20     mov   a,#$20
045c: c4 13     mov   $13,a
045e: 8d 6c     mov   y,#$6c
0460: 3f 3a 10  call  $103a
0463: 3f 65 0c  call  $0c65
0466: e8 20     mov   a,#$20
0468: c5 fa 00  mov   $00fa,a
046b: e8 01     mov   a,#$01
046d: c5 f1 00  mov   $00f1,a
0470: 8d 50     mov   y,#$50
0472: e5 fd 00  mov   a,$00fd
0475: f0 fb     beq   $0472
0477: dc        dec   y
0478: d0 f8     bne   $0472
047a: 3f 23 0d  call  $0d23
047d: 3f 57 0d  call  $0d57
0480: e8 30     mov   a,#$30
0482: c5 f1 00  mov   $00f1,a
0485: e8 20     mov   a,#$20
0487: c5 fa 00  mov   $00fa,a
048a: e8 01     mov   a,#$01
048c: c5 f1 00  mov   $00f1,a
048f: ec fd 00  mov   y,$00fd
0492: f0 fb     beq   $048f
0494: 6d        push  y
0495: 3f c9 0c  call  $0cc9
0498: 3f cd 04  call  $04cd
049b: e4 18     mov   a,$18
049d: 48 ff     eor   a,#$ff
049f: 24 15     and   a,$15
04a1: 04 17     or    a,$17
04a3: 8d 5c     mov   y,#$5c
04a5: 3f 3a 10  call  $103a
04a8: e8 00     mov   a,#$00
04aa: c4 15     mov   $15,a
04ac: c4 17     mov   $17,a
04ae: 3f bd 0c  call  $0cbd
04b1: 3f db 0f  call  $0fdb
04b4: e4 18     mov   a,$18
04b6: 48 ff     eor   a,#$ff
04b8: 24 14     and   a,$14
04ba: 04 16     or    a,$16
04bc: 8d 4c     mov   y,#$4c
04be: 3f 3a 10  call  $103a
04c1: e8 00     mov   a,#$00
04c3: c4 14     mov   $14,a
04c5: c4 16     mov   $16,a
04c7: ee        pop   y
04c8: dc        dec   y
04c9: d0 c9     bne   $0494
04cb: 2f c2     bra   $048f
04cd: 3f 52 0f  call  $0f52
04d0: e4 0c     mov   a,$0c
04d2: f0 1c     beq   $04f0
04d4: e4 24     mov   a,$24
04d6: 60        clrc
04d7: 84 25     adc   a,$25
04d9: c4 25     mov   $25,a
04db: 90 13     bcc   $04f0
04dd: 03 0f 10  bbs0  $0f,$04f0
04e0: cd 00     mov   x,#$00
04e2: 8f 01 12  mov   $12,#$01
04e5: 3f 41 05  call  $0541
04e8: 3d        inc   x
04e9: 0b 12     asl   $12
04eb: d0 f8     bne   $04e5
04ed: 3f 0c 0a  call  $0a0c
04f0: cd 08     mov   x,#$08
04f2: 8f 01 12  mov   $12,#$01
04f5: 3f 11 05  call  $0511
04f8: 3d        inc   x
04f9: 0b 12     asl   $12
04fb: d0 f8     bne   $04f5
04fd: cd 00     mov   x,#$00
04ff: 8f 01 12  mov   $12,#$01
0502: 3f 18 07  call  $0718
0505: 3d        inc   x
0506: 0b 12     asl   $12
0508: d0 f8     bne   $0502
050a: e8 00     mov   a,#$00
050c: c4 1a     mov   $1a,a
050e: c4 19     mov   $19,a
0510: 6f        ret

0511: f5 00 02  mov   a,$0200+x
0514: f0 08     beq   $051e
0516: f4 80     mov   a,$80+x
0518: 30 05     bmi   $051f
051a: 9b 80     dec   $80+x
051c: f0 47     beq   $0565
051e: 6f        ret

051f: e8 7c     mov   a,#$7c
0521: c5 f2 00  mov   $00f2,a
0524: e5 f3 00  mov   a,$00f3
0527: 24 12     and   a,$12
0529: f0 15     beq   $0540
052b: 09 12 17  or    ($17),($12)
052e: e4 12     mov   a,$12
0530: 4e 18 00  tclr1 $0018
0533: e8 00     mov   a,#$00
0535: d5 20 02  mov   $0220+x,a
0538: d5 00 02  mov   $0200+x,a
053b: e8 ff     mov   a,#$ff
053d: d5 30 02  mov   $0230+x,a
0540: 6f        ret

0541: f5 00 02  mov   a,$0200+x
0544: f0 1e     beq   $0564
0546: f4 a8     mov   a,$a8+x
0548: f0 07     beq   $0551
054a: 9b a8     dec   $a8+x
054c: d0 03     bne   $0551
054e: 09 12 15  or    ($15),($12)
0551: 9b 80     dec   $80+x
0553: d0 03     bne   $0558
0555: 3f 65 05  call  $0565
0558: 3f 8a 0a  call  $0a8a
055b: 3f be 0a  call  $0abe
055e: 3f 32 0a  call  $0a32
0561: 3f 5e 0a  call  $0a5e
0564: 6f        ret

0565: f5 60 00  mov   a,$0060+x
0568: c4 0a     mov   $0a,a
056a: f5 70 00  mov   a,$0070+x
056d: c4 0b     mov   $0b,a
056f: 3f 5e 07  call  $075e
0572: d0 13     bne   $0587
0574: f4 90     mov   a,$90+x
0576: d0 03     bne   $057b
0578: 5f 00 07  jmp   $0700

057b: 3f 11 09  call  $0911
057e: c4 0b     mov   $0b,a
0580: 3f 11 09  call  $0911
0583: c4 0a     mov   $0a,a
0585: 2f e8     bra   $056f
0587: 30 27     bmi   $05b0
0589: c8 08     cmp   x,#$08
058b: 90 04     bcc   $0591
058d: d4 80     mov   $80+x,a
058f: 2f 62     bra   $05f3
0591: d5 a0 02  mov   $02a0+x,a
0594: 3f 5e 07  call  $075e
0597: 30 17     bmi   $05b0
0599: 2d        push  a
059a: 9f        xcn   a
059b: 28 07     and   a,#$07
059d: fd        mov   y,a
059e: f6 08 11  mov   a,$1108+y
05a1: d5 a8 02  mov   $02a8+x,a		;   set dur% from high nybble
05a4: ae        pop   a
05a5: 28 0f     and   a,#$0f
05a7: fd        mov   y,a
05a8: f6 10 11  mov   a,$1110+y
05ab: d5 38 03  mov   $0338+x,a		;   set per-note vol from low nybble
05ae: 2f bf     bra   $056f
; vcmd branches 80-ff
05b0: 68 d0     cmp   a,#$d0
05b2: 90 05     bcc   $05b9
05b4: 3f 49 07  call  $0749
05b7: 2f b6     bra   $056f
05b9: c8 08     cmp   x,#$08
05bb: 90 0a     bcc   $05c7
05bd: 28 7f     and   a,#$7f
05bf: d5 40 02  mov   $0240+x,a
05c2: 09 12 19  or    ($19),($12)
05c5: 2f a8     bra   $056f
05c7: 2d        push  a
05c8: f5 a0 02  mov   a,$02a0+x
05cb: d4 80     mov   $80+x,a
05cd: fd        mov   y,a
05ce: f5 a8 02  mov   a,$02a8+x
05d1: cf        mul   ya
05d2: dd        mov   a,y
05d3: d0 01     bne   $05d6
05d5: bc        inc   a
05d6: d4 a8     mov   $a8+x,a
05d8: 3f a6 06  call  $06a6
05db: ae        pop   a
05dc: 68 be     cmp   a,#$be
05de: f0 10     beq   $05f0
05e0: 68 bf     cmp   a,#$bf
05e2: f0 0c     beq   $05f0
05e4: 3f fc 05  call  $05fc
05e7: 3f b2 06  call  $06b2
05ea: 3f ca 06  call  $06ca
05ed: 09 12 14  or    ($14),($12)
05f0: 3f 92 06  call  $0692
05f3: e4 0a     mov   a,$0a
05f5: d4 60     mov   $60+x,a
05f7: e4 0b     mov   a,$0b
05f9: d4 70     mov   $70+x,a
05fb: 6f        ret

; handle a note vcmd (80-bf)
05fc: 68 c0     cmp   a,#$c0
05fe: 90 0d     bcc   $060d
0600: 80        setc
0601: a8 c0     sbc   a,#$c0
0603: 60        clrc
0604: 84 21     adc   a,$21
0606: 3f 45 0b  call  $0b45
0609: e8 24     mov   a,#$24
060b: 2f 08     bra   $0615
060d: 2d        push  a
060e: f5 30 02  mov   a,$0230+x
0611: 3f 45 0b  call  $0b45
0614: ae        pop   a
0615: 28 7f     and   a,#$7f
0617: 60        clrc
0618: 84 22     adc   a,$22
061a: 60        clrc
061b: 95 b8 02  adc   a,$02b8+x
061e: d5 40 02  mov   $0240+x,a
0621: f5 b0 02  mov   a,$02b0+x
0624: d5 50 02  mov   $0250+x,a
0627: e8 00     mov   a,#$00
0629: d5 08 03  mov   $0308+x,a
062c: d5 10 03  mov   $0310+x,a
062f: d4 d0     mov   $d0+x,a
0631: d4 a0     mov   $a0+x,a
0633: d4 d8     mov   $d8+x,a
0635: d4 c0     mov   $c0+x,a
0637: 8d 00     mov   y,#$00
0639: f7 0a     mov   a,($0a)+y
063b: 68 ea     cmp   a,#$ea
063d: d0 07     bne   $0646
063f: 3a 0a     incw  $0a
0641: f5 d0 02  mov   a,$02d0+x
0644: 2f 05     bra   $064b
0646: f5 d0 02  mov   a,$02d0+x
0649: 10 46     bpl   $0691
064b: 28 7f     and   a,#$7f
064d: f0 0e     beq   $065d
064f: f5 40 02  mov   a,$0240+x
0652: 2d        push  a
0653: 60        clrc
0654: 95 d8 02  adc   a,$02d8+x
0657: d5 40 02  mov   $0240+x,a
065a: ae        pop   a
065b: 2f 07     bra   $0664
065d: f5 d8 02  mov   a,$02d8+x
0660: 60        clrc
0661: 95 40 02  adc   a,$0240+x
0664: fd        mov   y,a
0665: f5 c0 02  mov   a,$02c0+x
0668: d4 c0     mov   $c0+x,a
066a: f5 c8 02  mov   a,$02c8+x
066d: d4 c8     mov   $c8+x,a
066f: f5 b0 02  mov   a,$02b0+x
0672: d5 e8 02  mov   $02e8+x,a
0675: 75 50 02  cmp   a,$0250+x
0678: dd        mov   a,y
0679: 28 7f     and   a,#$7f
067b: d5 e0 02  mov   $02e0+x,a
067e: b5 40 02  sbc   a,$0240+x
0681: 4d        push  x
0682: fb c0     mov   y,$c0+x
0684: 6d        push  y
0685: ce        pop   x
0686: 3f c3 0f  call  $0fc3
0689: ce        pop   x
068a: d5 f0 02  mov   $02f0+x,a
068d: dd        mov   a,y
068e: d5 f8 02  mov   $02f8+x,a
0691: 6f        ret

0692: 8d 00     mov   y,#$00
0694: f7 0a     mov   a,($0a)+y
0696: f0 0d     beq   $06a5
0698: 30 03     bmi   $069d
069a: fc        inc   y
069b: 2f f7     bra   $0694
069d: 68 be     cmp   a,#$be
069f: d0 04     bne   $06a5
06a1: e8 ff     mov   a,#$ff
06a3: d4 a8     mov   $a8+x,a
06a5: 6f        ret

06a6: f5 20 02  mov   a,$0220+x
06a9: 75 28 02  cmp   a,$0228+x
06ac: 90 03     bcc   $06b1
06ae: d5 28 02  mov   $0228+x,a
06b1: 6f        ret

06b2: f5 20 02  mov   a,$0220+x
06b5: 75 28 02  cmp   a,$0228+x
06b8: d0 0f     bne   $06c9
06ba: f5 40 02  mov   a,$0240+x
06bd: d5 48 02  mov   $0248+x,a
06c0: f5 50 02  mov   a,$0250+x
06c3: d5 58 02  mov   $0258+x,a
06c6: 09 12 1a  or    ($1a),($12)
06c9: 6f        ret

06ca: f5 20 02  mov   a,$0220+x
06cd: 75 28 02  cmp   a,$0228+x
06d0: d0 2d     bne   $06ff
06d2: eb 2b     mov   y,$2b
06d4: f5 90 02  mov   a,$0290+x
06d7: cf        mul   ya
06d8: f5 38 03  mov   a,$0338+x
06db: cf        mul   ya
06dc: dd        mov   a,y
06dd: cf        mul   ya
06de: dd        mov   a,y
06df: d5 98 02  mov   $0298+x,a
06e2: f5 20 02  mov   a,$0220+x
06e5: 75 28 02  cmp   a,$0228+x
06e8: d0 15     bne   $06ff
06ea: f5 60 02  mov   a,$0260+x
06ed: d5 68 02  mov   $0268+x,a
06f0: f5 70 02  mov   a,$0270+x
06f3: d5 78 02  mov   $0278+x,a
06f6: f5 10 02  mov   a,$0210+x
06f9: d5 18 02  mov   $0218+x,a
06fc: 09 12 19  or    ($19),($12)
06ff: 6f        ret

0700: c8 08     cmp   x,#$08
0702: b0 0f     bcs   $0713
0704: 09 12 15  or    ($15),($12)
0707: e8 00     mov   a,#$00
0709: d5 00 02  mov   $0200+x,a
070c: d5 20 02  mov   $0220+x,a
070f: 3f 8a 0f  call  $0f8a
0712: 6f        ret

0713: e8 ff     mov   a,#$ff
0715: d4 80     mov   $80+x,a
0717: 6f        ret

0718: 8f 00 07  mov   $07,#$00
071b: f5 00 03  mov   a,$0300+x
071e: 1c        asl   a
071f: 2b 07     rol   $07
0721: 1c        asl   a
0722: 2b 07     rol   $07
0724: 1c        asl   a
0725: 2b 07     rol   $07
0727: 60        clrc
0728: 95 08 03  adc   a,$0308+x
072b: d5 08 03  mov   $0308+x,a
072e: e4 07     mov   a,$07
0730: 95 10 03  adc   a,$0310+x
0733: d5 10 03  mov   $0310+x,a
0736: e4 12     mov   a,$12
0738: 24 19     and   a,$19
073a: f0 03     beq   $073f
073c: 3f a4 0b  call  $0ba4
073f: e4 12     mov   a,$12
0741: 24 1a     and   a,$1a
0743: f0 03     beq   $0748
0745: 3f 01 0c  call  $0c01
0748: 6f        ret

; dispatch vcmd in A (d0-ff)
0749: 80        setc
074a: a8 d0     sbc   a,#$d0
074c: 1c        asl   a
074d: fd        mov   y,a
074e: f6 98 09  mov   a,$0998+y
0751: 2d        push  a
0752: f6 97 09  mov   a,$0997+y
0755: 2d        push  a
0756: dd        mov   a,y
0757: 5c        lsr   a
0758: fd        mov   y,a
0759: f6 e5 09  mov   a,$09e5+y
075c: f0 06     beq   $0764
075e: 8d 00     mov   y,#$00
0760: f7 0a     mov   a,($0a)+y
0762: 3a 0a     incw  $0a
0764: fd        mov   y,a
0765: 6f        ret

; vcmd d1 - set instrument
0766: d5 30 02  mov   $0230+x,a
0769: 6f        ret

; vcmd d2 - pan (1)
076a: d5 10 02  mov   $0210+x,a
076d: 28 1f     and   a,#$1f
; vcmd d3 - pan (2)
076f: d5 70 02  mov   $0270+x,a
0772: e8 00     mov   a,#$00
0774: d5 60 02  mov   $0260+x,a
0777: 6f        ret

; vcmd d4 - pan fade
0778: 4d        push  x
0779: d4 b8     mov   $b8+x,a
077b: 2d        push  a
077c: 3f 5e 07  call  $075e
077f: d5 40 03  mov   $0340+x,a
0782: 80        setc
0783: b5 70 02  sbc   a,$0270+x
0786: ce        pop   x
0787: 3f c3 0f  call  $0fc3
078a: ce        pop   x
078b: d5 48 03  mov   $0348+x,a
078e: dd        mov   a,y
078f: d5 50 03  mov   $0350+x,a
0792: 6f        ret

0793: 4d        push  x
0794: 1c        asl   a
0795: d5 18 03  mov   $0318+x,a
0798: 3f 5e 07  call  $075e
079b: 1c        asl   a
079c: d5 20 03  mov   $0320+x,a
079f: 2d        push  a
07a0: 3f 5e 07  call  $075e
07a3: 1c        asl   a
07a4: d5 00 03  mov   $0300+x,a
07a7: 3f 5e 07  call  $075e
07aa: d5 28 03  mov   $0328+x,a
07ad: d4 d8     mov   $d8+x,a
07af: 8d 00     mov   y,#$00
07b1: ce        pop   x
07b2: 9e        div   ya,x
07b3: ce        pop   x
07b4: d5 30 03  mov   $0330+x,a
07b7: 6f        ret

; vcmd d5 - vibrato
07b8: d4 d8     mov   $d8+x,a
07ba: d5 28 03  mov   $0328+x,a
07bd: d5 20 03  mov   $0320+x,a
07c0: 6f        ret

; vcmd d6 - master volume
07c1: e8 00     mov   a,#$00
07c3: da 2a     movw  $2a,ya
07c5: 6f        ret

; vcmd d7 - master volume fade
07c6: 4d        push  x
07c7: c4 2c     mov   $2c,a
07c9: 2d        push  a
07ca: 3f 5e 07  call  $075e
07cd: c4 2d     mov   $2d,a
07cf: 80        setc
07d0: a4 2b     sbc   a,$2b
07d2: ce        pop   x
07d3: 3f c3 0f  call  $0fc3
07d6: ce        pop   x
07d7: da 2e     movw  $2e,ya
07d9: 6f        ret

; vcmd d8 - tempo
07da: dd        mov   a,y
07db: 1c        asl   a
07dc: fd        mov   y,a
07dd: e8 00     mov   a,#$00
07df: da 23     movw  $23,ya
07e1: 6f        ret

; vcmd e0 - vibrato fade
07e2: d5 20 02  mov   $0220+x,a
07e5: 3f a6 06  call  $06a6
07e8: 6f        ret

; vcmd d9 - tempo fade
07e9: 4d        push  x
07ea: c4 26     mov   $26,a
07ec: 2d        push  a
07ed: 3f 5e 07  call  $075e
07f0: c4 27     mov   $27,a
07f2: 80        setc
07f3: a4 24     sbc   a,$24
07f5: ce        pop   x
07f6: 3f c3 0f  call  $0fc3
07f9: ce        pop   x
07fa: da 28     movw  $28,ya
07fc: 6f        ret

; vcmd da - global transpose
07fd: c4 22     mov   $22,a
07ff: 6f        ret

; vcmd db - per-voice transpose
0800: d5 b8 02  mov   $02b8+x,a
0803: 6f        ret

; vcmd dc - tremolo on
0804: 3f 5e 07  call  $075e
0807: 3f 5e 07  call  $075e
; vcmd dd - tremolo off
080a: e8 00     mov   a,#$00
080c: 6f        ret

; vcmd e1 - pitch envelope (release)
080d: f5 d0 02  mov   a,$02d0+x
0810: 28 80     and   a,#$80
0812: 2f 07     bra   $081b
; vcmd e2 - pitch envelope (attack)
0814: f5 d0 02  mov   a,$02d0+x
0817: 28 80     and   a,#$80
0819: 08 01     or    a,#$01
081b: d5 d0 02  mov   $02d0+x,a
081e: dd        mov   a,y
081f: d5 c8 02  mov   $02c8+x,a
0822: 3f 5e 07  call  $075e
0825: d5 c0 02  mov   $02c0+x,a
0828: 3f 5e 07  call  $075e
082b: d5 d8 02  mov   $02d8+x,a
082e: 6f        ret

; vcmd e3/ea - pitch envelope off
082f: f5 d0 02  mov   a,$02d0+x
0832: 08 80     or    a,#$80
0834: d5 d0 02  mov   $02d0+x,a
0837: 6f        ret

; vcmd e4 - pitch envelope off (2)
0838: f5 d0 02  mov   a,$02d0+x
083b: 28 7f     and   a,#$7f
083d: d5 d0 02  mov   $02d0+x,a
0840: 6f        ret

; vcmd de - volume
0841: d5 90 02  mov   $0290+x,a
0844: e8 00     mov   a,#$00
0846: d5 80 02  mov   $0280+x,a
0849: c8 08     cmp   x,#$08
084b: 90 03     bcc   $0850
084d: 09 12 19  or    ($19),($12)
0850: 6f        ret

; vcmd df - volume fade
0851: 4d        push  x
0852: d4 b0     mov   $b0+x,a
0854: 2d        push  a
0855: 3f 5e 07  call  $075e
0858: d5 58 03  mov   $0358+x,a
085b: 80        setc
085c: b5 90 02  sbc   a,$0290+x
085f: ce        pop   x
0860: 3f c3 0f  call  $0fc3
0863: ce        pop   x
0864: d5 60 03  mov   $0360+x,a
0867: dd        mov   a,y
0868: d5 68 03  mov   $0368+x,a
086b: 6f        ret

; vcmd e5 - tuning
086c: d5 b0 02  mov   $02b0+x,a
086f: 6f        ret

; vcmd e6 - echo volume
0870: 09 12 1c  or    ($1c),($12)
0873: 6f        ret

; vcmd e7 - disable echo
0874: e4 12     mov   a,$12
0876: 4e 1c 00  tclr1 $001c
0879: 6f        ret

; vcmd e8 - set echo params
087a: 4d        push  x
087b: 3f 74 0c  call  $0c74
087e: 3f 5e 07  call  $075e
0881: c4 34     mov   $34,a
0883: 3f 15 10  call  $1015
0886: 3f 5e 07  call  $075e
0889: c4 1e     mov   $1e,a
088b: 3f 5e 07  call  $075e
088e: 1c        asl   a
088f: 1c        asl   a
0890: 1c        asl   a
0891: 5d        mov   x,a
0892: 8d 0f     mov   y,#$0f
0894: f5 e8 10  mov   a,$10e8+x
0897: 3f 3a 10  call  $103a
089a: 3d        inc   x
089b: dd        mov   a,y
089c: 60        clrc
089d: 88 10     adc   a,#$10
089f: fd        mov   y,a
08a0: 10 f2     bpl   $0894
08a2: ce        pop   x
08a3: b2 13     clr5  $13
08a5: 6f        ret

; vcmd eb - set perc patch base
08a6: c4 21     mov   $21,a
08a8: 6f        ret

; vcmd ed - echo (1)
08a9: 2d        push  a
08aa: 3f 5e 07  call  $075e
08ad: ae        pop   a
08ae: 60        clrc
08af: 84 0a     adc   a,$0a
08b1: c4 0a     mov   $0a,a
08b3: dd        mov   a,y
08b4: 84 0b     adc   a,$0b
08b6: c4 0b     mov   $0b,a
08b8: 6f        ret

; vcmd ee - echo (2)
08b9: 2d        push  a
08ba: 3f 5e 07  call  $075e
08bd: 2d        push  a
08be: e4 0a     mov   a,$0a
08c0: 3f fe 08  call  $08fe
08c3: e4 0b     mov   a,$0b
08c5: 3f fe 08  call  $08fe
08c8: ae        pop   a
08c9: c4 0b     mov   $0b,a
08cb: ae        pop   a
08cc: c4 0a     mov   $0a,a
08ce: 6f        ret

; vcmd ef - echo (3)
08cf: 3f fe 08  call  $08fe
08d2: e4 0a     mov   a,$0a
08d4: 3f fe 08  call  $08fe
08d7: e4 0b     mov   a,$0b
08d9: 3f fe 08  call  $08fe
08dc: 6f        ret

; vcmd f0 - echo (4)
08dd: 3f 11 09  call  $0911
08e0: 2d        push  a
08e1: 3f 11 09  call  $0911
08e4: 2d        push  a
08e5: 3f 11 09  call  $0911
08e8: 9c        dec   a
08e9: f0 10     beq   $08fb
08eb: 3f fe 08  call  $08fe
08ee: ae        pop   a
08ef: c4 0a     mov   $0a,a
08f1: 3f fe 08  call  $08fe
08f4: ae        pop   a
08f5: c4 0b     mov   $0b,a
08f7: 3f fe 08  call  $08fe
08fa: 6f        ret

08fb: ae        pop   a
08fc: ae        pop   a
08fd: 6f        ret

08fe: fd        mov   y,a
08ff: f5 20 11  mov   a,$1120+x
0902: c4 02     mov   $02,a
0904: f5 30 11  mov   a,$1130+x
0907: c4 03     mov   $03,a
0909: dd        mov   a,y
090a: fb 90     mov   y,$90+x
090c: d7 02     mov   ($02)+y,a
090e: bb 90     inc   $90+x
0910: 6f        ret

0911: f5 20 11  mov   a,$1120+x
0914: c4 02     mov   $02,a
0916: f5 30 11  mov   a,$1130+x
0919: c4 03     mov   $03,a
091b: 9b 90     dec   $90+x
091d: fb 90     mov   y,$90+x
091f: f7 02     mov   a,($02)+y
0921: 6f        ret

; vcmd f1 - echo (5)
0922: 60        clrc
0923: 95 40 02  adc   a,$0240+x
0926: d5 40 02  mov   $0240+x,a
0929: 09 12 1a  or    ($1a),($12)
092c: 6f        ret

; vcmd f2 - echo (6)
092d: 28 ff     and   a,#$ff
092f: 30 13     bmi   $0944
0931: 60        clrc
0932: 95 50 02  adc   a,$0250+x
0935: d5 50 02  mov   $0250+x,a
0938: f5 40 02  mov   a,$0240+x
093b: 88 00     adc   a,#$00
093d: d5 40 02  mov   $0240+x,a
0940: 09 12 1a  or    ($1a),($12)
0943: 6f        ret

0944: 60        clrc
0945: 95 50 02  adc   a,$0250+x
0948: d5 50 02  mov   $0250+x,a
094b: f5 40 02  mov   a,$0240+x
094e: a8 00     sbc   a,#$00
0950: d5 40 02  mov   $0240+x,a
0953: 09 12 1a  or    ($1a),($12)
0956: 6f        ret

; vcmd f3 - echo (7)
0957: f5 30 02  mov   a,$0230+x
095a: 3f 5a 0b  call  $0b5a
095d: 09 12 16  or    ($16),($12)
0960: 09 12 19  or    ($19),($12)
0963: 09 12 1a  or    ($1a),($12)
0966: 6f        ret

; vcmd f4 - echo (8)
0967: 09 12 17  or    ($17),($12)
096a: 6f        ret

; vcmd f5 - echo (9)
096b: 60        clrc
096c: 95 90 02  adc   a,$0290+x
096f: d5 90 02  mov   $0290+x,a
0972: 09 12 19  or    ($19),($12)
0975: 6f        ret

; vcmd f6 - echo (10)
0976: d5 30 02  mov   $0230+x,a
0979: 3f 5a 0b  call  $0b5a
097c: 3f 5e 07  call  $075e
097f: d5 40 02  mov   $0240+x,a
0982: 3f 5e 07  call  $075e
0985: d5 90 02  mov   $0290+x,a
0988: 09 12 16  or    ($16),($12)
098b: 09 12 19  or    ($19),($12)
098e: 09 12 1a  or    ($1a),($12)
0991: e8 01     mov   a,#$01
0993: d5 80 00  mov   $0080+x,a
0996: 6f        ret

; vcmd dispatch table
0997: dw $0000 ; d0 - undefined
0999: dw $0766 ; d1 - set instrument
099b: dw $076a ; d2 - pan (1)
099d: dw $0778 ; d3 - pan (2)
099f: dw $0793 ; d4 - pan fade
09a1: dw $07b8 ; d5 - vibrato
09a3: dw $07c1 ; d6 - master volume
09a5: dw $07c6 ; d7 - master volume fade
09a7: dw $07da ; d8 - tempo
09a9: dw $07e9 ; d9 - tempo fade
09ab: dw $07fd ; da - global transpose
09ad: dw $0800 ; db - per-voice transpose
09af: dw $0804 ; dc - tremolo on
09b1: dw $080a ; dd - tremolo off
09b3: dw $0841 ; de - volume
09b5: dw $0851 ; df - volume fade
09b7: dw $07e2 ; e0 - vibrato fade
09b9: dw $080d ; e1 - pitch envelope (release)
09bb: dw $0814 ; e2 - pitch envelope (attack)
09bd: dw $082f ; e3 - pitch envelope off (1)
09bf: dw $0838 ; e4 - pitch envelope off (2)
09c1: dw $086c ; e5 - set tuning
09c3: dw $0870 ; e6 - echo volume
09c5: dw $0874 ; e7 - disable echo
09c7: dw $087a ; e8 - set echo params
09c9: dw $0000 ; e9 - undefined
09cb: dw $082f ; ea - pitch envelope off
09cd: dw $08a6 ; eb - set perc patch base
09cf: dw $0000 ; ec - undefined
09d1: dw $08a9 ; ed - echo (1)
09d3: dw $08b9 ; ee - echo (2)
09d5: dw $08cf ; ef - echo (3)
09d7: dw $08dd ; f0 - echo (4)
09d9: dw $0922 ; f1 - echo (5)
09db: dw $092d ; f2 - echo (6)
09dd: dw $0957 ; f3 - echo (7)
09df: dw $0967 ; f4 - echo (8)
09e1: dw $096b ; f5 - echo (9)
09e3: dw $0976 ; f6 - echo (10)

; vcmd lengths
09e5: db $00,$01,$01,$02,$03,$00,$01,$02 ; d0-d7
09ed: db $01,$02,$01,$01,$03,$00,$01,$02 ; d8-df
09f5: db $01,$03,$03,$00,$00,$01,$00,$00 ; e0-e7
09fd: db $04,$00,$00,$01,$02,$02,$02,$01 ; e8-ef
0a05: db $00,$01,$01,$00,$00,$01,$03	 ; f0-f6

0a0c: e4 26     mov   a,$26
0a0e: f0 0d     beq   $0a1d
0a10: ba 28     movw  ya,$28
0a12: 7a 23     addw  ya,$23
0a14: 6e 26 04  dbnz  $26,$0a1b
0a17: eb 27     mov   y,$27
0a19: e8 00     mov   a,#$00
0a1b: da 23     movw  $23,ya
0a1d: e4 2c     mov   a,$2c
0a1f: f0 10     beq   $0a31
0a21: ba 2e     movw  ya,$2e
0a23: 7a 2a     addw  ya,$2a
0a25: 6e 2c 04  dbnz  $2c,$0a2c
0a28: eb 2d     mov   y,$2d
0a2a: e8 00     mov   a,#$00
0a2c: da 2a     movw  $2a,ya
0a2e: 8f ff 19  mov   $19,#$ff
0a31: 6f        ret

0a32: f4 b0     mov   a,$b0+x
0a34: f0 27     beq   $0a5d
0a36: 9b b0     dec   $b0+x
0a38: d0 0d     bne   $0a47
0a3a: e8 00     mov   a,#$00
0a3c: d5 80 02  mov   $0280+x,a
0a3f: f5 58 03  mov   a,$0358+x
0a42: d5 90 02  mov   $0290+x,a
0a45: 2f 13     bra   $0a5a
0a47: 60        clrc
0a48: f5 60 03  mov   a,$0360+x
0a4b: 95 80 02  adc   a,$0280+x
0a4e: d5 80 02  mov   $0280+x,a
0a51: f5 68 03  mov   a,$0368+x
0a54: 95 90 02  adc   a,$0290+x
0a57: d5 90 02  mov   $0290+x,a
0a5a: 3f ca 06  call  $06ca
0a5d: 6f        ret

0a5e: f4 b8     mov   a,$b8+x
0a60: f0 27     beq   $0a89
0a62: 9b b8     dec   $b8+x
0a64: d0 0d     bne   $0a73
0a66: e8 00     mov   a,#$00
0a68: d5 60 02  mov   $0260+x,a
0a6b: f5 40 03  mov   a,$0340+x
0a6e: d5 70 02  mov   $0270+x,a
0a71: 2f 13     bra   $0a86
0a73: 60        clrc
0a74: f5 48 03  mov   a,$0348+x
0a77: 95 60 02  adc   a,$0260+x
0a7a: d5 60 02  mov   $0260+x,a
0a7d: f5 50 03  mov   a,$0350+x
0a80: 95 70 02  adc   a,$0270+x
0a83: d5 70 02  mov   $0270+x,a
0a86: 3f e2 06  call  $06e2
0a89: 6f        ret

0a8a: f4 c0     mov   a,$c0+x
0a8c: f0 2f     beq   $0abd
0a8e: f4 c8     mov   a,$c8+x
0a90: f0 03     beq   $0a95
0a92: 9b c8     dec   $c8+x
0a94: 6f        ret

0a95: 9b c0     dec   $c0+x
0a97: d0 0e     bne   $0aa7
0a99: f5 e8 02  mov   a,$02e8+x
0a9c: d5 50 02  mov   $0250+x,a
0a9f: f5 e0 02  mov   a,$02e0+x
0aa2: d5 40 02  mov   $0240+x,a
0aa5: 2f 13     bra   $0aba
0aa7: 60        clrc
0aa8: f5 f0 02  mov   a,$02f0+x
0aab: 95 50 02  adc   a,$0250+x
0aae: d5 50 02  mov   $0250+x,a
0ab1: f5 f8 02  mov   a,$02f8+x
0ab4: 95 40 02  adc   a,$0240+x
0ab7: d5 40 02  mov   $0240+x,a
0aba: 3f b2 06  call  $06b2
0abd: 6f        ret

0abe: f5 28 03  mov   a,$0328+x
0ac1: f0 6b     beq   $0b2e
0ac3: f5 18 03  mov   a,$0318+x
0ac6: de d0 63  cbne  $d0+x,$0b2c
0ac9: f5 40 02  mov   a,$0240+x
0acc: 2d        push  a
0acd: f5 50 02  mov   a,$0250+x
0ad0: 2d        push  a
0ad1: f5 20 03  mov   a,$0320+x
0ad4: de a0 05  cbne  $a0+x,$0adc
0ad7: f5 28 03  mov   a,$0328+x
0ada: 2f 08     bra   $0ae4
0adc: bb a0     inc   $a0+x
0ade: f4 d8     mov   a,$d8+x
0ae0: 60        clrc
0ae1: 95 30 03  adc   a,$0330+x
0ae4: d4 d8     mov   $d8+x,a
0ae6: f5 10 03  mov   a,$0310+x
0ae9: 1c        asl   a
0aea: b0 1b     bcs   $0b07
0aec: 1c        asl   a
0aed: 90 02     bcc   $0af1
0aef: 48 ff     eor   a,#$ff
0af1: 3f 2f 0b  call  $0b2f
0af4: 60        clrc
0af5: f5 50 02  mov   a,$0250+x
0af8: 84 06     adc   a,$06
0afa: d5 50 02  mov   $0250+x,a
0afd: f5 40 02  mov   a,$0240+x
0b00: 84 07     adc   a,$07
0b02: d5 40 02  mov   $0240+x,a
0b05: 2f 19     bra   $0b20
0b07: 1c        asl   a
0b08: 90 02     bcc   $0b0c
0b0a: 48 ff     eor   a,#$ff
0b0c: 3f 2f 0b  call  $0b2f
0b0f: 80        setc
0b10: f5 50 02  mov   a,$0250+x
0b13: a4 06     sbc   a,$06
0b15: d5 50 02  mov   $0250+x,a
0b18: f5 40 02  mov   a,$0240+x
0b1b: a4 07     sbc   a,$07
0b1d: d5 40 02  mov   $0240+x,a
0b20: 3f b2 06  call  $06b2
0b23: ae        pop   a
0b24: d5 50 02  mov   $0250+x,a
0b27: ae        pop   a
0b28: d5 40 02  mov   $0240+x,a
0b2b: 6f        ret

0b2c: bb d0     inc   $d0+x
0b2e: 6f        ret

0b2f: fd        mov   y,a
0b30: f4 d8     mov   a,$d8+x
0b32: cf        mul   ya
0b33: cb 06     mov   $06,y
0b35: 8f 00 07  mov   $07,#$00
0b38: 0b 06     asl   $06
0b3a: 2b 07     rol   $07
0b3c: 0b 06     asl   $06
0b3e: 2b 07     rol   $07
0b40: 0b 06     asl   $06
0b42: 2b 07     rol   $07
0b44: 6f        ret

0b45: 2d        push  a
0b46: f5 20 02  mov   a,$0220+x
0b49: 75 28 02  cmp   a,$0228+x
0b4c: ae        pop   a
0b4d: d0 0a     bne   $0b59
0b4f: 75 38 02  cmp   a,$0238+x
0b52: f0 05     beq   $0b59
0b54: d5 38 02  mov   $0238+x,a
0b57: 2f 01     bra   $0b5a
0b59: 6f        ret

0b5a: 4d        push  x
0b5b: 8d 06     mov   y,#$06
0b5d: cf        mul   ya
0b5e: da 06     movw  $06,ya
0b60: 60        clrc
0b61: 98 00 06  adc   $06,#$00
0b64: 98 12 07  adc   $07,#$12
0b67: 7d        mov   a,x
0b68: 28 07     and   a,#$07
0b6a: 2d        push  a
0b6b: 9f        xcn   a
0b6c: 08 04     or    a,#$04
0b6e: 5d        mov   x,a
0b6f: 8d 00     mov   y,#$00
0b71: f7 06     mov   a,($06)+y
0b73: 10 0e     bpl   $0b83
0b75: 28 1f     and   a,#$1f
0b77: 38 20 13  and   $13,#$20
0b7a: 0e 13 00  tset1 $0013
0b7d: 09 12 1b  or    ($1b),($12)
0b80: dd        mov   a,y
0b81: 2f 07     bra   $0b8a
0b83: e4 12     mov   a,$12
0b85: 4e 1b 00  tclr1 $001b
0b88: f7 06     mov   a,($06)+y
0b8a: c9 f2 00  mov   $00f2,x
0b8d: c5 f3 00  mov   $00f3,a
0b90: 3d        inc   x
0b91: fc        inc   y
0b92: ad 04     cmp   y,#$04
0b94: d0 f2     bne   $0b88
0b96: ce        pop   x
0b97: f7 06     mov   a,($06)+y
0b99: d5 78 03  mov   $0378+x,a
0b9c: fc        inc   y
0b9d: f7 06     mov   a,($06)+y
0b9f: d5 70 03  mov   $0370+x,a
0ba2: ce        pop   x
0ba3: 6f        ret

0ba4: f5 78 02  mov   a,$0278+x
0ba7: fd        mov   y,a
0ba8: f5 68 02  mov   a,$0268+x
0bab: da 08     movw  $08,ya
0bad: 7d        mov   a,x
0bae: 9f        xcn   a
0baf: 2d        push  a
0bb0: 3f dd 0b  call  $0bdd
0bb3: f5 18 02  mov   a,$0218+x
0bb6: 1c        asl   a
0bb7: dd        mov   a,y
0bb8: 90 03     bcc   $0bbd
0bba: 48 ff     eor   a,#$ff
0bbc: bc        inc   a
0bbd: ee        pop   y
0bbe: 3f 3a 10  call  $103a
0bc1: fc        inc   y
0bc2: 6d        push  y
0bc3: 8d 14     mov   y,#$14
0bc5: e8 00     mov   a,#$00
0bc7: 9a 08     subw  ya,$08
0bc9: da 08     movw  $08,ya
0bcb: 3f dd 0b  call  $0bdd
0bce: f5 18 02  mov   a,$0218+x
0bd1: 1c        asl   a
0bd2: 1c        asl   a
0bd3: dd        mov   a,y
0bd4: 90 03     bcc   $0bd9
0bd6: 48 ff     eor   a,#$ff
0bd8: bc        inc   a
0bd9: ee        pop   y
0bda: 5f 3a 10  jmp   $103a

0bdd: 33 0f 19  bbc1  $0f,$0bf9
0be0: eb 09     mov   y,$09
0be2: f6 d4 10  mov   a,$10d4+y
0be5: 80        setc
0be6: b6 d3 10  sbc   a,$10d3+y
0be9: eb 08     mov   y,$08
0beb: cf        mul   ya
0bec: dd        mov   a,y
0bed: eb 09     mov   y,$09
0bef: 60        clrc
0bf0: 96 d3 10  adc   a,$10d3+y
0bf3: fd        mov   y,a
0bf4: f5 98 02  mov   a,$0298+x
0bf7: cf        mul   ya
0bf8: 6f        ret

0bf9: f5 98 02  mov   a,$0298+x
0bfc: ec dd 10  mov   y,$10dd
0bff: cf        mul   ya
0c00: 6f        ret

0c01: f5 48 02  mov   a,$0248+x
0c04: 1c        asl   a
0c05: fd        mov   y,a
0c06: f6 42 10  mov   a,$1042+y
0c09: c4 07     mov   $07,a
0c0b: f6 41 10  mov   a,$1041+y
0c0e: c4 06     mov   $06,a
0c10: f6 44 10  mov   a,$1044+y
0c13: 2d        push  a
0c14: f6 43 10  mov   a,$1043+y
0c17: ee        pop   y
0c18: 9a 06     subw  ya,$06
0c1a: 6d        push  y
0c1b: fd        mov   y,a
0c1c: f5 58 02  mov   a,$0258+x
0c1f: cf        mul   ya
0c20: cb 08     mov   $08,y
0c22: 8f 00 09  mov   $09,#$00
0c25: ee        pop   y
0c26: f5 58 02  mov   a,$0258+x
0c29: cf        mul   ya
0c2a: 7a 08     addw  ya,$08
0c2c: 7a 06     addw  ya,$06
0c2e: da 06     movw  $06,ya
0c30: f5 70 03  mov   a,$0370+x
0c33: eb 07     mov   y,$07
0c35: cf        mul   ya
0c36: da 08     movw  $08,ya
0c38: f5 78 03  mov   a,$0378+x
0c3b: eb 06     mov   y,$06
0c3d: cf        mul   ya
0c3e: 7a 08     addw  ya,$08
0c40: da 08     movw  $08,ya
0c42: f5 70 03  mov   a,$0370+x
0c45: eb 06     mov   y,$06
0c47: cf        mul   ya
0c48: 6d        push  y
0c49: f5 78 03  mov   a,$0378+x
0c4c: eb 07     mov   y,$07
0c4e: cf        mul   ya
0c4f: fd        mov   y,a
0c50: ae        pop   a
0c51: 7a 08     addw  ya,$08
0c53: da 08     movw  $08,ya
0c55: 7d        mov   a,x
0c56: 9f        xcn   a
0c57: 08 02     or    a,#$02
0c59: fd        mov   y,a
0c5a: e4 08     mov   a,$08
0c5c: 3f 3a 10  call  $103a
0c5f: fc        inc   y
0c60: e4 09     mov   a,$09
0c62: 5f 3a 10  jmp   $103a

0c65: e8 01     mov   a,#$01
0c67: 3f 74 0c  call  $0c74
0c6a: e8 00     mov   a,#$00
0c6c: c4 34     mov   $34,a
0c6e: 3f 15 10  call  $1015
0c71: a2 13     set5  $13
0c73: 6f        ret

0c74: 68 03     cmp   a,#$03
0c76: 90 02     bcc   $0c7a
0c78: e8 02     mov   a,#$02
0c7a: c4 1f     mov   $1f,a
0c7c: 8d 7d     mov   y,#$7d
0c7e: cc f2 00  mov   $00f2,y
0c81: e5 f3 00  mov   a,$00f3
0c84: 64 1f     cmp   a,$1f
0c86: f0 2e     beq   $0cb6
0c88: 28 0f     and   a,#$0f
0c8a: 48 ff     eor   a,#$ff
0c8c: e8 c8     mov   a,#$c8
0c8e: c4 20     mov   $20,a
0c90: e8 00     mov   a,#$00
0c92: 8d 4d     mov   y,#$4d
0c94: 3f 3a 10  call  $103a
0c97: 8d 0d     mov   y,#$0d
0c99: 3f 3a 10  call  $103a
0c9c: 8d 3c     mov   y,#$3c
0c9e: 3f 3a 10  call  $103a
0ca1: 8d 2c     mov   y,#$2c
0ca3: 3f 3a 10  call  $103a
0ca6: e4 13     mov   a,$13
0ca8: 08 20     or    a,#$20
0caa: 8d 6c     mov   y,#$6c
0cac: 3f 3a 10  call  $103a
0caf: e4 1f     mov   a,$1f
0cb1: 8d 7d     mov   y,#$7d
0cb3: 3f 3a 10  call  $103a
0cb6: e8 f0     mov   a,#$f0
0cb8: 8d 6d     mov   y,#$6d
0cba: 5f 3a 10  jmp   $103a

0cbd: e4 20     mov   a,$20
0cbf: f0 07     beq   $0cc8
0cc1: 8b 20     dec   $20
0cc3: d0 03     bne   $0cc8
0cc5: 3f 15 10  call  $1015
0cc8: 6f        ret

0cc9: e4 0c     mov   a,$0c
0ccb: 04 10     or    a,$10
0ccd: c5 f4 00  mov   $00f4,a
0cd0: e5 f4 00  mov   a,$00f4
0cd3: 65 f4 00  cmp   a,$00f4
0cd6: d0 f8     bne   $0cd0
0cd8: c4 0e     mov   $0e,a
0cda: 28 ff     and   a,#$ff
0cdc: f0 05     beq   $0ce3
0cde: e8 11     mov   a,#$11
0ce0: c5 f1 00  mov   $00f1,a
0ce3: e4 0e     mov   a,$0e
0ce5: f0 31     beq   $0d18
0ce7: 30 03     bmi   $0cec
0ce9: 5f a6 0d  jmp   $0da6

0cec: 68 fe     cmp   a,#$fe
0cee: f0 33     beq   $0d23
0cf0: 68 f0     cmp   a,#$f0
0cf2: f0 5c     beq   $0d50
0cf4: 68 ff     cmp   a,#$ff
0cf6: f0 21     beq   $0d19
0cf8: 68 f1     cmp   a,#$f1
0cfa: f0 50     beq   $0d4c
0cfc: 68 f3     cmp   a,#$f3
0cfe: f0 63     beq   $0d63
0d00: 68 f4     cmp   a,#$f4
0d02: f0 6d     beq   $0d71
0d04: 68 f5     cmp   a,#$f5
0d06: f0 79     beq   $0d81
0d08: 68 f6     cmp   a,#$f6
0d0a: f0 4b     beq   $0d57
0d0c: 68 f7     cmp   a,#$f7
0d0e: f0 4b     beq   $0d5b
0d10: 68 f8     cmp   a,#$f8
0d12: f0 4b     beq   $0d5f
0d14: 68 f2     cmp   a,#$f2
0d16: f0 73     beq   $0d8b
0d18: 6f        ret

0d19: e8 ff     mov   a,#$ff
0d1b: 8d 5c     mov   y,#$5c
0d1d: 3f 3a 10  call  $103a
0d20: 3f 06 0f  call  $0f06
0d23: e8 00     mov   a,#$00
0d25: c4 32     mov   $32,a
0d27: c4 33     mov   $33,a
0d29: c4 30     mov   $30,a
0d2b: c4 31     mov   $31,a
0d2d: c4 34     mov   $34,a
0d2f: 3f 7d 0f  call  $0f7d
0d32: 3f 95 0e  call  $0e95
0d35: e8 ff     mov   a,#$ff
0d37: c4 30     mov   $30,a
0d39: e8 7f     mov   a,#$7f
0d3b: c4 31     mov   $31,a
0d3d: 3f 7d 0f  call  $0f7d
0d40: 3f 4c 0d  call  $0d4c
0d43: e8 00     mov   a,#$00
0d45: c4 19     mov   $19,a
0d47: c4 1a     mov   $1a,a
0d49: c4 0c     mov   $0c,a
0d4b: 6f        ret

0d4c: 38 fe 0f  and   $0f,#$fe
0d4f: 6f        ret

0d50: 8f ff 15  mov   $15,#$ff
0d53: 18 01 0f  or    $0f,#$01
0d56: 6f        ret

0d57: 18 02 0f  or    $0f,#$02
0d5a: 6f        ret

0d5b: 38 fd 0f  and   $0f,#$fd
0d5e: 6f        ret

0d5f: 3f 7c 0e  call  $0e7c
0d62: 6f        ret

0d63: e8 00     mov   a,#$00
0d65: c4 32     mov   $32,a
0d67: c4 33     mov   $33,a
0d69: e5 f6 00  mov   a,$00f6
0d6c: c4 31     mov   $31,a
0d6e: 5f 7d 0f  jmp   $0f7d

0d71: e5 f6 00  mov   a,$00f6
0d74: c4 32     mov   $32,a
0d76: e8 00     mov   a,#$00
0d78: 0b 32     asl   $32
0d7a: 3c        rol   a
0d7b: c4 33     mov   $33,a
0d7d: fa 80 10  mov   ($10),($80)
0d80: 6f        ret

0d81: 3f 71 0d  call  $0d71
0d84: ba 00     movw  ya,$00
0d86: 9a 32     subw  ya,$32
0d88: da 32     movw  $32,ya
0d8a: 6f        ret

0d8b: e5 f6 00  mov   a,$00f6
0d8e: 3f 4d 0e  call  $0e4d
0d91: 90 12     bcc   $0da5
0d93: e5 f7 00  mov   a,$00f7
0d96: d5 70 02  mov   $0270+x,a
0d99: e8 00     mov   a,#$00
0d9b: d5 60 02  mov   $0260+x,a
0d9e: 3f b4 0f  call  $0fb4
0da1: 04 19     or    a,$19
0da3: c4 19     mov   $19,a
0da5: 6f        ret

0da6: 1c        asl   a
0da7: fd        mov   y,a
0da8: f6 fe 13  mov   a,$13fe+y
0dab: c4 04     mov   $04,a
0dad: f6 ff 13  mov   a,$13ff+y
0db0: c4 05     mov   $05,a
0db2: 8d 00     mov   y,#$00
0db4: f7 04     mov   a,($04)+y
0db6: 3a 04     incw  $04
0db8: 68 ff     cmp   a,#$ff
0dba: f0 51     beq   $0e0d
0dbc: fa 0e 0d  mov   ($0d),($0e)
0dbf: 8d 00     mov   y,#$00
0dc1: f7 04     mov   a,($04)+y
0dc3: 68 ff     cmp   a,#$ff
0dc5: f0 45     beq   $0e0c
0dc7: c4 11     mov   $11,a
0dc9: 28 ff     and   a,#$ff
0dcb: 10 0e     bpl   $0ddb
0dcd: 3f 5d 0e  call  $0e5d
0dd0: b0 15     bcs   $0de7
0dd2: e4 0d     mov   a,$0d
0dd4: 3f 4d 0e  call  $0e4d
0dd7: 90 33     bcc   $0e0c
0dd9: 2f 0c     bra   $0de7
0ddb: e4 0d     mov   a,$0d
0ddd: 3f 4d 0e  call  $0e4d
0de0: b0 05     bcs   $0de7
0de2: 3f 5d 0e  call  $0e5d
0de5: 90 25     bcc   $0e0c
0de7: 3a 04     incw  $04
0de9: 3f b4 0f  call  $0fb4
0dec: c4 12     mov   $12,a
0dee: 09 12 18  or    ($18),($12)
0df1: 3f b6 0e  call  $0eb6
0df4: e5 f7 00  mov   a,$00f7
0df7: d5 70 02  mov   $0270+x,a
0dfa: e4 0d     mov   a,$0d
0dfc: d5 00 02  mov   $0200+x,a
0dff: e4 11     mov   a,$11
0e01: 28 7f     and   a,#$7f
0e03: d5 20 02  mov   $0220+x,a
0e06: 3a 04     incw  $04
0e08: 3a 04     incw  $04
0e0a: 2f b3     bra   $0dbf
0e0c: 6f        ret

0e0d: fa 0e 0c  mov   ($0c),($0e)
0e10: 3f 4c 0d  call  $0d4c
0e13: 3f 95 0e  call  $0e95
0e16: e8 00     mov   a,#$00
0e18: c4 2c     mov   $2c,a
0e1a: c4 26     mov   $26,a
0e1c: c4 22     mov   $22,a
0e1e: c4 21     mov   $21,a
0e20: c4 1c     mov   $1c,a
0e22: 8f c8 2b  mov   $2b,#$c8
0e25: 8f 20 24  mov   $24,#$20
0e28: 8d 00     mov   y,#$00
0e2a: f7 04     mov   a,($04)+y
0e2c: 30 1c     bmi   $0e4a
0e2e: 3a 04     incw  $04
0e30: 5d        mov   x,a
0e31: 3f b6 0e  call  $0eb6
0e34: 3f f0 0e  call  $0ef0
0e37: e4 0c     mov   a,$0c
0e39: d5 00 02  mov   $0200+x,a
0e3c: e8 32     mov   a,#$32
0e3e: d5 20 02  mov   $0220+x,a
0e41: 3f a6 06  call  $06a6
0e44: 3a 04     incw  $04
0e46: 3a 04     incw  $04
0e48: 2f de     bra   $0e28
0e4a: 5f 65 0c  jmp   $0c65

0e4d: cd 0f     mov   x,#$0f
0e4f: 75 00 02  cmp   a,$0200+x
0e52: f0 07     beq   $0e5b
0e54: 1d        dec   x
0e55: c8 08     cmp   x,#$08
0e57: d0 f6     bne   $0e4f
0e59: 60        clrc
0e5a: 6f        ret

0e5b: 80        setc
0e5c: 6f        ret

0e5d: cd 00     mov   x,#$00
0e5f: e8 ff     mov   a,#$ff
0e61: 75 28 02  cmp   a,$0228+x
0e64: 90 05     bcc   $0e6b
0e66: f5 28 02  mov   a,$0228+x
0e69: 4d        push  x
0e6a: ee        pop   y
0e6b: 3d        inc   x
0e6c: c8 08     cmp   x,#$08
0e6e: d0 f1     bne   $0e61
0e70: 6d        push  y
0e71: ce        pop   x
0e72: 2d        push  a
0e73: 7d        mov   a,x
0e74: 08 08     or    a,#$08
0e76: 5d        mov   x,a
0e77: ae        pop   a
0e78: 64 11     cmp   a,$11
0e7a: ed        notc
0e7b: 6f        ret

0e7c: cd 08     mov   x,#$08
0e7e: e8 01     mov   a,#$01
0e80: c4 12     mov   $12,a
0e82: f5 00 02  mov   a,$0200+x
0e85: f0 08     beq   $0e8f
0e87: 09 12 17  or    ($17),($12)
0e8a: e8 ff     mov   a,#$ff
0e8c: d5 80 00  mov   $0080+x,a
0e8f: 3d        inc   x
0e90: 0b 12     asl   $12
0e92: d0 ee     bne   $0e82
0e94: 6f        ret

0e95: e8 00     mov   a,#$00
0e97: c4 18     mov   $18,a
0e99: cd 0f     mov   x,#$0f
0e9b: e8 00     mov   a,#$00
0e9d: d5 00 02  mov   $0200+x,a
0ea0: d5 20 02  mov   $0220+x,a
0ea3: 9c        dec   a
0ea4: d5 30 02  mov   $0230+x,a
0ea7: 1d        dec   x
0ea8: 10 f1     bpl   $0e9b
0eaa: e8 ff     mov   a,#$ff
0eac: 8d 5c     mov   y,#$5c
0eae: 3f 3a 10  call  $103a
0eb1: 8d 7c     mov   y,#$7c
0eb3: 5f 3a 10  jmp   $103a

0eb6: ba 04     movw  ya,$04
0eb8: da 02     movw  $02,ya
0eba: 8d 01     mov   y,#$01
0ebc: f7 02     mov   a,($02)+y
0ebe: 2d        push  a
0ebf: dc        dec   y
0ec0: f7 02     mov   a,($02)+y
0ec2: ee        pop   y
0ec3: 7a 02     addw  ya,$02
0ec5: d5 60 00  mov   $0060+x,a
0ec8: dd        mov   a,y
0ec9: d5 70 00  mov   $0070+x,a
0ecc: e8 00     mov   a,#$00
0ece: d4 90     mov   $90+x,a
0ed0: d5 80 02  mov   $0280+x,a
0ed3: d5 60 02  mov   $0260+x,a
0ed6: d5 50 02  mov   $0250+x,a
0ed9: e8 01     mov   a,#$01
0edb: d4 80     mov   $80+x,a
0edd: e8 ff     mov   a,#$ff
0edf: d5 30 02  mov   $0230+x,a
0ee2: e8 0a     mov   a,#$0a
0ee4: d5 10 02  mov   $0210+x,a
0ee7: d5 70 02  mov   $0270+x,a
0eea: e8 ff     mov   a,#$ff
0eec: d5 90 02  mov   $0290+x,a
0eef: 6f        ret

0ef0: e8 00     mov   a,#$00
0ef2: d5 b8 02  mov   $02b8+x,a
0ef5: d5 c0 02  mov   $02c0+x,a
0ef8: d5 d0 02  mov   $02d0+x,a
0efb: d5 b0 02  mov   $02b0+x,a
0efe: d5 28 03  mov   $0328+x,a
0f01: d4 b0     mov   $b0+x,a
0f03: d4 b8     mov   $b8+x,a
0f05: 6f        ret

0f06: e8 aa     mov   a,#$aa
0f08: c5 f4 00  mov   $00f4,a
0f0b: e8 bb     mov   a,#$bb
0f0d: c5 f5 00  mov   $00f5,a
0f10: e5 f4 00  mov   a,$00f4
0f13: 68 cc     cmp   a,#$cc
0f15: d0 f9     bne   $0f10
0f17: 2f 20     bra   $0f39
0f19: ec f4 00  mov   y,$00f4
0f1c: d0 fb     bne   $0f19
0f1e: 5e f4 00  cmp   y,$00f4
0f21: 30 11     bmi   $0f34
0f23: d0 f9     bne   $0f1e
0f25: e5 f5 00  mov   a,$00f5
0f28: cc f4 00  mov   $00f4,y
0f2b: d7 06     mov   ($06)+y,a
0f2d: fc        inc   y
0f2e: d0 ee     bne   $0f1e
0f30: ab 07     inc   $07
0f32: 2f ea     bra   $0f1e
0f34: 5e f4 00  cmp   y,$00f4
0f37: 10 e5     bpl   $0f1e
0f39: e5 f6 00  mov   a,$00f6
0f3c: ec f7 00  mov   y,$00f7
0f3f: da 06     movw  $06,ya
0f41: ec f4 00  mov   y,$00f4
0f44: e5 f5 00  mov   a,$00f5
0f47: cc f4 00  mov   $00f4,y
0f4a: d0 cd     bne   $0f19
0f4c: cd 31     mov   x,#$31
0f4e: c9 f1 00  mov   $00f1,x
0f51: 6f        ret

0f52: ba 32     movw  ya,$32
0f54: f0 26     beq   $0f7c
0f56: 30 11     bmi   $0f69
0f58: 7a 30     addw  ya,$30
0f5a: 10 1a     bpl   $0f76
0f5c: e8 00     mov   a,#$00
0f5e: c4 32     mov   $32,a
0f60: c4 33     mov   $33,a
0f62: c4 10     mov   $10,a
0f64: 9c        dec   a
0f65: 8d 7f     mov   y,#$7f
0f67: 2f 0d     bra   $0f76
0f69: 7a 30     addw  ya,$30
0f6b: 10 09     bpl   $0f76
0f6d: e8 00     mov   a,#$00
0f6f: c4 32     mov   $32,a
0f71: c4 33     mov   $33,a
0f73: c4 10     mov   $10,a
0f75: fd        mov   y,a
0f76: da 30     movw  $30,ya
0f78: dd        mov   a,y
0f79: 3f 7d 0f  call  $0f7d
0f7c: 6f        ret

0f7d: 8d 0c     mov   y,#$0c
0f7f: 3f 3a 10  call  $103a
0f82: 8d 1c     mov   y,#$1c
0f84: 3f 3a 10  call  $103a
0f87: 5f 15 10  jmp   $1015

0f8a: e4 12     mov   a,$12
0f8c: 2d        push  a
0f8d: 4d        push  x
0f8e: 4d        push  x
0f8f: cd 00     mov   x,#$00
0f91: 8d 00     mov   y,#$00
0f93: e8 01     mov   a,#$01
0f95: c4 12     mov   $12,a
0f97: ae        pop   a
0f98: 75 08 02  cmp   a,$0208+x
0f9b: d0 0d     bne   $0faa
0f9d: 2d        push  a
0f9e: 09 12 15  or    ($15),($12)
0fa1: e8 00     mov   a,#$00
0fa3: d5 08 02  mov   $0208+x,a
0fa6: d5 28 02  mov   $0228+x,a
0fa9: ae        pop   a
0faa: 3d        inc   x
0fab: 0b 12     asl   $12
0fad: d0 e9     bne   $0f98
0faf: ce        pop   x
0fb0: ae        pop   a
0fb1: c4 12     mov   $12,a
0fb3: 6f        ret

0fb4: 4d        push  x
0fb5: 7d        mov   a,x
0fb6: 28 07     and   a,#$07
0fb8: 5d        mov   x,a
0fb9: e8 01     mov   a,#$01
0fbb: 1d        dec   x
0fbc: 30 03     bmi   $0fc1
0fbe: 1c        asl   a
0fbf: 2f fa     bra   $0fbb
0fc1: ce        pop   x
0fc2: 6f        ret

0fc3: b0 0d     bcs   $0fd2
0fc5: 48 ff     eor   a,#$ff
0fc7: bc        inc   a
0fc8: 3f d2 0f  call  $0fd2
0fcb: da 06     movw  $06,ya
0fcd: ba 00     movw  ya,$00
0fcf: 9a 06     subw  ya,$06
0fd1: 6f        ret

0fd2: 8d 00     mov   y,#$00
0fd4: 9e        div   ya,x
0fd5: 2d        push  a
0fd6: e8 00     mov   a,#$00
0fd8: 9e        div   ya,x
0fd9: ee        pop   y
0fda: 6f        ret

0fdb: e4 18     mov   a,$18
0fdd: 48 ff     eor   a,#$ff
0fdf: c4 02     mov   $02,a
0fe1: e4 1d     mov   a,$1d
0fe3: 24 02     and   a,$02
0fe5: 8d 2d     mov   y,#$2d
0fe7: 3f 3a 10  call  $103a
0fea: e4 1b     mov   a,$1b
0fec: 24 02     and   a,$02
0fee: 8d 3d     mov   y,#$3d
0ff0: 3f 3a 10  call  $103a
0ff3: e4 20     mov   a,$20
0ff5: f0 02     beq   $0ff9
0ff7: e8 20     mov   a,#$20
0ff9: 04 13     or    a,$13
0ffb: 8d 6c     mov   y,#$6c
0ffd: 3f 3a 10  call  $103a
1000: e4 20     mov   a,$20
1002: d0 10     bne   $1014
1004: e4 1c     mov   a,$1c
1006: 24 02     and   a,$02
1008: 8d 4d     mov   y,#$4d
100a: 3f 3a 10  call  $103a
100d: e4 1e     mov   a,$1e
100f: 8d 0d     mov   y,#$0d
1011: 3f 3a 10  call  $103a
1014: 6f        ret

1015: e4 20     mov   a,$20
1017: f0 04     beq   $101d
1019: e8 00     mov   a,#$00
101b: 2f 13     bra   $1030
101d: e4 34     mov   a,$34
101f: 10 03     bpl   $1024
1021: 48 ff     eor   a,#$ff
1023: bc        inc   a
1024: eb 31     mov   y,$31
1026: cf        mul   ya
1027: dd        mov   a,y
1028: 1c        asl   a
1029: eb 34     mov   y,$34
102b: 10 03     bpl   $1030
102d: 48 ff     eor   a,#$ff
102f: bc        inc   a
1030: 8d 3c     mov   y,#$3c
1032: 3f 3a 10  call  $103a
1035: 8d 2c     mov   y,#$2c
1037: 5f 3a 10  jmp   $103a

103a: cc f2 00  mov   $00f2,y
103d: c5 f3 00  mov   $00f3,a
1040: 6f        ret

; pitch table
1041: dw $0042
1043: dw $0046
1045: dw $004b
1047: dw $004f
1049: dw $0054
104b: dw $0059
104d: dw $005e
104f: dw $0064
1051: dw $006a
1053: dw $0070
1055: dw $0077
1057: dw $007e
1059: dw $0085
105b: dw $008d
105d: dw $0096
105f: dw $009f
1061: dw $00a8
1063: dw $00b2
1065: dw $00bd
1067: dw $00c8
1069: dw $00d4
106b: dw $00e1
106d: dw $00ee
106f: dw $00fc
1071: dw $010b
1073: dw $011b
1075: dw $012c
1077: dw $013e
1079: dw $0151
107b: dw $0165
107d: dw $017a
107f: dw $0191
1081: dw $01a9
1083: dw $01c2
1085: dw $01dd
1087: dw $01f9
1089: dw $0217
108b: dw $0237
108d: dw $0259
108f: dw $027d
1091: dw $02a3
1093: dw $02cb
1095: dw $02f5
1097: dw $0322
1099: dw $0352
109b: dw $0385
109d: dw $03ba
109f: dw $03f3
10a1: dw $042f
10a3: dw $046f
10a5: dw $04b2
10a7: dw $04fa
10a9: dw $0546
10ab: dw $0596
10ad: dw $05eb
10af: dw $0645
10b1: dw $06a5
10b3: dw $070a
10b5: dw $0775
10b7: dw $07e6
10b9: dw $085f
10bb: dw $08de
10bd: dw $0965
10bf: dw $09f4
10c1: dw $0a8c
10c3: dw $0b2c
10c5: dw $0bd6
10c7: dw $0c8b
10c9: dw $0d4a
10cb: dw $0e14
10cd: dw $0eea
10cf: dw $0fcd
10d1: dw $10be

10d3: db $7f,$7e,$7d,$7c,$7a,$77,$73,$6e
10db: db $69,$67,$64,$50,$46,$3c,$32,$28
10e3: db $1e,$14,$0a,$05,$00

; echo FIR presets
10e8: db $7f,$00,$00,$00,$00,$00,$00,$00
10f0: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
10f8: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1100: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; note dur%'s
1108: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
1110: db $19,$32,$4c,$65,$72,$7f,$8c,$98
1118: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$ff

1120: db $80,$90,$a0,$b0,$c0,$d0,$e0,$f0
1128: db $00,$08,$10,$18,$20,$28,$30,$38

1130: db $03,$03,$03,$03,$03,$03,$03,$03
1138: db $04,$04,$04,$04,$04,$04,$04,$04