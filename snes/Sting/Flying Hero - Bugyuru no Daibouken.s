0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 f0     cmp   x,#$f0
040a: d0 fb     bne   $0407
040c: e8 1f     mov   a,#$1f
040e: 8d 5d     mov   y,#$5d
0410: 3f 79 11  call  $1179
0413: e8 01     mov   a,#$01
0415: c5 aa 03  mov   $03aa,a
0418: cd 00     mov   x,#$00
041a: f5 9e 04  mov   a,$049e+x
041d: c4 f2     mov   $f2,a
041f: 3d        inc   x
0420: f5 9e 04  mov   a,$049e+x
0423: c4 f3     mov   $f3,a
0425: 3d        inc   x
0426: f5 9e 04  mov   a,$049e+x
0429: 68 ff     cmp   a,#$ff
042b: d0 f0     bne   $041d
042d: 8f 00 01  mov   $01,#$00
0430: e8 ff     mov   a,#$ff
0432: 8d 5c     mov   y,#$5c
0434: 3f 79 11  call  $1179
0437: 6d        push  y
0438: 3f 71 11  call  $1171
043b: ee        pop   y
043c: 3f 77 11  call  $1177
043f: e8 60     mov   a,#$60
0441: 8d 0c     mov   y,#$0c
0443: 3f 79 11  call  $1179
0446: 8d 1c     mov   y,#$1c
0448: 3f 79 11  call  $1179
044b: e8 f0     mov   a,#$f0
044d: c4 f1     mov   $f1,a
044f: e8 20     mov   a,#$20
0451: c4 fa     mov   $fa,a
0453: 8f 6a 04  mov   $04,#$6a
0456: e8 01     mov   a,#$01
0458: c4 f1     mov   $f1,a
045a: e4 01     mov   a,$01
045c: 28 ff     and   a,#$ff
045e: d0 07     bne   $0467
0460: 3f c8 12  call  $12c8
0463: 68 00     cmp   a,#$00
0465: f0 f3     beq   $045a
0467: eb fd     mov   y,$fd
0469: f0 fc     beq   $0467
046b: e4 04     mov   a,$04
046d: 60        clrc
046e: 84 05     adc   a,$05
0470: c4 05     mov   $05,a
0472: 90 e6     bcc   $045a
0474: 3f b1 04  call  $04b1
0477: 3f 31 05  call  $0531
047a: e4 01     mov   a,$01
047c: 28 ff     and   a,#$ff
047e: f0 98     beq   $0418
0480: 3f db 06  call  $06db
0483: 3f 7f 08  call  $087f
0486: 3f 1a 07  call  $071a
0489: 3f ad 07  call  $07ad
048c: 3f fe 08  call  $08fe
048f: 3f 62 09  call  $0962
0492: 3f 7a 0f  call  $0f7a
0495: e4 01     mov   a,$01
0497: 28 ff     and   a,#$ff
0499: d0 bf     bne   $045a
049b: 5f 18 04  jmp   $0418

049e: 4d        push  x
049f: 00        nop
04a0: 0d        push  psw
04a1: 00        nop
04a2: 0c 00 1c  asl   $1c00
04a5: 00        nop
04a6: 2c 00 3c  rol   $3c00
04a9: 00        nop
04aa: 6c 20 2d  ror   $2d20
04ad: 00        nop
04ae: 3d        inc   x
04af: 00        nop
04b0: ff        stop
04b1: cd 00     mov   x,#$00
04b3: 8f 0a 02  mov   $02,#$0a
04b6: f4 0f     mov   a,$0f+x
04b8: 28 01     and   a,#$01
04ba: d0 06     bne   $04c2
04bc: 3d        inc   x
04bd: 8b 02     dec   $02
04bf: d0 f5     bne   $04b6
04c1: 6f        ret

04c2: f4 4b     mov   a,$4b+x
04c4: 14 55     or    a,$55+x
04c6: f0 f4     beq   $04bc
04c8: f4 4b     mov   a,$4b+x
04ca: c4 0a     mov   $0a,a
04cc: f4 55     mov   a,$55+x
04ce: c4 0b     mov   $0b,a
04d0: 1a 0a     decw  $0a
04d2: e4 0a     mov   a,$0a
04d4: d4 4b     mov   $4b+x,a
04d6: e4 0b     mov   a,$0b
04d8: d4 55     mov   $55+x,a
04da: 14 4b     or    a,$4b+x
04dc: d0 0e     bne   $04ec
04de: e8 00     mov   a,#$00
04e0: d5 22 03  mov   $0322+x,a
04e3: d5 4a 03  mov   $034a+x,a
04e6: d5 5e 03  mov   $035e+x,a
04e9: d5 54 03  mov   $0354+x,a
04ec: f4 73     mov   a,$73+x
04ee: 14 7d     or    a,$7d+x
04f0: f0 ca     beq   $04bc
04f2: f4 73     mov   a,$73+x
04f4: c4 0a     mov   $0a,a
04f6: f4 7d     mov   a,$7d+x
04f8: c4 0b     mov   $0b,a
04fa: 1a 0a     decw  $0a
04fc: e4 0a     mov   a,$0a
04fe: d4 73     mov   $73+x,a
0500: e4 0b     mov   a,$0b
0502: d4 7d     mov   $7d+x,a
0504: 14 73     or    a,$73+x
0506: d0 b4     bne   $04bc
0508: f4 0f     mov   a,$0f+x
050a: 28 40     and   a,#$40
050c: f0 08     beq   $0516
050e: e8 08     mov   a,#$08
0510: 14 0f     or    a,$0f+x
0512: d4 0f     mov   $0f+x,a
0514: 2f a6     bra   $04bc
0516: 3f 21 11  call  $1121
0519: e4 03     mov   a,$03
051b: 8d 5c     mov   y,#$5c
051d: 3f 79 11  call  $1179
0520: 6d        push  y
0521: 3f 71 11  call  $1171
0524: ee        pop   y
0525: 3f 77 11  call  $1177
0528: f4 0f     mov   a,$0f+x
052a: 28 fb     and   a,#$fb
052c: d4 0f     mov   $0f+x,a
052e: 5f bc 04  jmp   $04bc

0531: e4 f4     mov   a,$f4
0533: 3f c8 12  call  $12c8
0536: 68 00     cmp   a,#$00
0538: d0 03     bne   $053d
053a: c4 f7     mov   $f7,a
053c: 6f        ret

053d: 8d 31     mov   y,#$31
053f: cb f1     mov   $f1,y
0541: c4 07     mov   $07,a
0543: 68 f0     cmp   a,#$f0
0545: 90 17     bcc   $055e
0547: cb f7     mov   $f7,y
0549: 28 0f     and   a,#$0f
054b: 1c        asl   a
054c: d8 06     mov   $06,x
054e: 5d        mov   x,a
054f: f5 92 06  mov   a,$0692+x
0552: c4 0a     mov   $0a,a
0554: f5 93 06  mov   a,$0693+x
0557: c4 0b     mov   $0b,a
0559: cd 00     mov   x,#$00
055b: 1f 0a 00  jmp   ($000a+x)

055e: fc        inc   y
055f: cb f7     mov   $f7,y
0561: e4 07     mov   a,$07
0563: 68 10     cmp   a,#$10
0565: 90 22     bcc   $0589
0567: 2d        push  a
0568: e5 00 f8  mov   a,$f800
056b: c4 0c     mov   $0c,a
056d: e5 01 f8  mov   a,$f801
0570: c4 0d     mov   $0d,a
0572: ae        pop   a
0573: 80        setc
0574: a8 10     sbc   a,#$10
0576: 1c        asl   a
0577: fd        mov   y,a
0578: f7 0c     mov   a,($0c)+y
057a: c4 0a     mov   $0a,a
057c: 3a 0c     incw  $0c
057e: f7 0c     mov   a,($0c)+y
0580: c4 0b     mov   $0b,a
0582: e8 01     mov   a,#$01
0584: c5 ad 03  mov   $03ad,a
0587: 2f 2d     bra   $05b6
0589: 8d 00     mov   y,#$00
058b: cc ad 03  mov   $03ad,y
058e: cc a7 03  mov   $03a7,y
0591: cc a8 03  mov   $03a8,y
0594: cc a9 03  mov   $03a9,y
0597: cc a5 03  mov   $03a5,y
059a: fc        inc   y
059b: c5 a4 03  mov   $03a4,a
059e: 2d        push  a
059f: e5 00 e8  mov   a,$e800		; song pointer
05a2: c4 0c     mov   $0c,a
05a4: e5 01 e8  mov   a,$e801
05a7: c4 0d     mov   $0d,a
05a9: ae        pop   a
05aa: 1c        asl   a
05ab: fd        mov   y,a
05ac: f7 0c     mov   a,($0c)+y
05ae: c4 0a     mov   $0a,a
05b0: 3a 0c     incw  $0c
05b2: f7 0c     mov   a,($0c)+y
05b4: c4 0b     mov   $0b,a
05b6: 8d 00     mov   y,#$00
05b8: f7 0a     mov   a,($0a)+y
05ba: 68 ff     cmp   a,#$ff
05bc: d0 06     bne   $05c4
05be: e8 00     mov   a,#$00
05c0: c5 ad 03  mov   $03ad,a
05c3: 6f        ret

05c4: c4 02     mov   $02,a
05c6: 68 08     cmp   a,#$08
05c8: 90 04     bcc   $05ce
05ca: 9c        dec   a
05cb: 9c        dec   a
05cc: 2f 18     bra   $05e6
05ce: 68 06     cmp   a,#$06
05d0: 90 14     bcc   $05e6
05d2: 2d        push  a
05d3: bc        inc   a
05d4: bc        inc   a
05d5: 5d        mov   x,a
05d6: f4 0f     mov   a,$0f+x
05d8: 28 01     and   a,#$01
05da: ae        pop   a
05db: f0 09     beq   $05e6
05dd: 3a 0a     incw  $0a
05df: 3a 0a     incw  $0a
05e1: 3a 0a     incw  $0a
05e3: 5f 83 06  jmp   $0683

05e6: 8f 01 03  mov   $03,#$01
05e9: fd        mov   y,a
05ea: f0 05     beq   $05f1
05ec: 0b 03     asl   $03
05ee: 9c        dec   a
05ef: d0 fb     bne   $05ec
05f1: e4 03     mov   a,$03
05f3: 2d        push  a
05f4: 8d 5c     mov   y,#$5c
05f6: 3f 79 11  call  $1179
05f9: 6d        push  y
05fa: 3f 71 11  call  $1171
05fd: ee        pop   y
05fe: 3f 77 11  call  $1177
0601: ae        pop   a
0602: 04 01     or    a,$01
0604: c4 01     mov   $01,a
0606: e4 02     mov   a,$02
0608: 60        clrc
0609: 88 0f     adc   a,#$0f
060b: 5d        mov   x,a
060c: 3f 86 06  call  $0686
060f: 7d        mov   a,x
0610: 60        clrc
0611: 88 32     adc   a,#$32
0613: 5d        mov   x,a
0614: 3f 86 06  call  $0686
0617: 7d        mov   a,x
0618: 60        clrc
0619: 88 46     adc   a,#$46
061b: 5d        mov   x,a
061c: 3f 86 06  call  $0686
061f: e8 fa     mov   a,#$fa
0621: c4 0c     mov   $0c,a
0623: e8 02     mov   a,#$02
0625: c4 0d     mov   $0d,a
0627: e4 02     mov   a,$02
0629: 8f 04 08  mov   $08,#$04
062c: 2d        push  a
062d: 8d 00     mov   y,#$00
062f: 60        clrc
0630: 7a 0c     addw  ya,$0c
0632: c4 0c     mov   $0c,a
0634: cb 0d     mov   $0d,y
0636: 8d 00     mov   y,#$00
0638: dd        mov   a,y
0639: d7 0c     mov   ($0c)+y,a
063b: e8 0a     mov   a,#$0a
063d: 60        clrc
063e: 7a 0c     addw  ya,$0c
0640: c4 0c     mov   $0c,a
0642: cb 0d     mov   $0d,y
0644: 8d 00     mov   y,#$00
0646: dd        mov   a,y
0647: d7 0c     mov   ($0c)+y,a
0649: 8b 08     dec   $08
064b: d0 ee     bne   $063b
064d: ae        pop   a
064e: 60        clrc
064f: 88 d7     adc   a,#$d7
0651: 5d        mov   x,a
0652: e4 02     mov   a,$02
0654: 60        clrc
0655: 88 00     adc   a,#$00
0657: c6        mov   (x),a
0658: 7d        mov   a,x
0659: 60        clrc
065a: 88 0a     adc   a,#$0a
065c: 5d        mov   x,a
065d: e8 02     mov   a,#$02
065f: c6        mov   (x),a
0660: f8 02     mov   x,$02
0662: e5 ad 03  mov   a,$03ad
0665: f0 06     beq   $066d
0667: f4 19     mov   a,$19+x
0669: 08 01     or    a,#$01
066b: d4 19     mov   $19+x,a
066d: 3a 0a     incw  $0a
066f: 8d 00     mov   y,#$00
0671: f7 0a     mov   a,($0a)+y
0673: d4 23     mov   $23+x,a
0675: 3a 0a     incw  $0a
0677: f7 0a     mov   a,($0a)+y
0679: d4 2d     mov   $2d+x,a
067b: 3a 0a     incw  $0a
067d: f4 0f     mov   a,$0f+x
067f: 08 01     or    a,#$01
0681: d4 0f     mov   $0f+x,a
0683: 5f b6 05  jmp   $05b6

0686: e8 00     mov   a,#$00
0688: c6        mov   (x),a
0689: 7d        mov   a,x
068a: 60        clrc
068b: 88 0a     adc   a,#$0a
068d: 5d        mov   x,a
068e: e8 00     mov   a,#$00
0690: c6        mov   (x),a
0691: 6f        ret

0692: dw $06b2
0694: dw $06b2
0696: dw $06b2
0698: dw $06b2
069a: dw $06b2
069c: dw $06b2
069e: dw $06b2
06a0: dw $06b2
06a2: dw $06b2
06a4: dw $06b5
06a4: dw $06c8
06a6: dw $0708
06a8: dw $0711
06aa: dw $06fa
06ac: dw $0708
06ae: dw $06d5
06b0: dw $1090

06b2: 5f 5e 05  jmp   $055e
06b5: e5 a7 03  mov   a,$03a7
06b8: f0 01     beq   $06bb
06ba: 6f        ret

06bb: e8 15     mov   a,#$15
06bd: 8d 0c     mov   y,#$0c
06bf: 3f 79 11  call  $1179
06c2: 8d 1c     mov   y,#$1c
06c4: 3f 79 11  call  $1179
06c7: 6f        ret

06c8: e8 60     mov   a,#$60
06ca: 8d 0c     mov   y,#$0c
06cc: 3f 79 11  call  $1179
06cf: 8d 1c     mov   y,#$1c
06d1: 3f 79 11  call  $1179
06d4: 6f        ret

06d5: e8 01     mov   a,#$01
06d7: c5 a5 03  mov   $03a5,a
06da: 6f        ret

06db: cd 06     mov   x,#$06
06dd: f4 0f     mov   a,$0f+x
06df: 28 01     and   a,#$01
06e1: f0 11     beq   $06f4
06e3: 4d        push  x
06e4: 3d        inc   x
06e5: 3d        inc   x
06e6: f4 0f     mov   a,$0f+x
06e8: 28 01     and   a,#$01
06ea: f0 07     beq   $06f3
06ec: e8 00     mov   a,#$00
06ee: ce        pop   x
06ef: d4 0f     mov   $0f+x,a
06f1: 2f 01     bra   $06f4
06f3: ce        pop   x
06f4: 3d        inc   x
06f5: c8 08     cmp   x,#$08
06f7: d0 e4     bne   $06dd
06f9: 6f        ret

06fa: e8 01     mov   a,#$01
06fc: c5 a7 03  mov   $03a7,a
06ff: c5 a8 03  mov   $03a8,a
0702: e8 03     mov   a,#$03
0704: c5 a9 03  mov   $03a9,a
0707: 6f        ret

0708: e5 aa 03  mov   a,$03aa
070b: e8 81     mov   a,#$81
070d: c5 aa 03  mov   $03aa,a
0710: 6f        ret

0711: e5 aa 03  mov   a,$03aa
0714: e8 80     mov   a,#$80
0716: c5 aa 03  mov   $03aa,a
0719: 6f        ret

071a: cd 00     mov   x,#$00
071c: 8f 0a 02  mov   $02,#$0a
071f: f4 0f     mov   a,$0f+x
0721: 28 01     and   a,#$01
0723: f0 03     beq   $0728
0725: 3f 2e 07  call  $072e
0728: 3d        inc   x
0729: 8b 02     dec   $02
072b: d0 f2     bne   $071f
072d: 6f        ret

072e: f5 96 02  mov   a,$0296+x
0731: 15 a0 02  or    a,$02a0+x
0734: d0 0a     bne   $0740
0736: 15 aa 02  or    a,$02aa+x
0739: d0 05     bne   $0740
073b: 15 b4 02  or    a,$02b4+x
073e: f0 03     beq   $0743
0740: 3f 44 07  call  $0744
0743: 6f        ret

0744: f5 aa 02  mov   a,$02aa+x
0747: c4 0a     mov   $0a,a
0749: f5 b4 02  mov   a,$02b4+x
074c: c4 0b     mov   $0b,a
074e: f5 c8 02  mov   a,$02c8+x
0751: fd        mov   y,a
0752: f5 be 02  mov   a,$02be+x
0755: 60        clrc
0756: 7a 0a     addw  ya,$0a
0758: ad 01     cmp   y,#$01
075a: d0 1c     bne   $0778
075c: d5 be 02  mov   $02be+x,a
075f: e8 00     mov   a,#$00
0761: d5 c8 02  mov   $02c8+x,a
0764: f4 19     mov   a,$19+x
0766: 28 02     and   a,#$02
0768: d0 07     bne   $0771
076a: f4 87     mov   a,$87+x
076c: bc        inc   a
076d: d4 87     mov   $87+x,a
076f: 2f 10     bra   $0781
0771: f4 87     mov   a,$87+x
0773: 9c        dec   a
0774: d4 87     mov   $87+x,a
0776: 2f 09     bra   $0781
0778: 2d        push  a
0779: dd        mov   a,y
077a: d5 c8 02  mov   $02c8+x,a
077d: ae        pop   a
077e: d5 be 02  mov   $02be+x,a
0781: e8 7f     mov   a,#$7f
0783: 34 91     and   a,$91+x
0785: fd        mov   y,a
0786: f5 96 02  mov   a,$0296+x
0789: c4 0a     mov   $0a,a
078b: f5 a0 02  mov   a,$02a0+x
078e: c4 0b     mov   $0b,a
0790: f4 87     mov   a,$87+x
0792: 2d        push  a
0793: f4 19     mov   a,$19+x
0795: 28 02     and   a,#$02
0797: ae        pop   a
0798: d0 05     bne   $079f
079a: 60        clrc
079b: 7a 0a     addw  ya,$0a
079d: 2f 03     bra   $07a2
079f: 80        setc
07a0: 9a 0a     subw  ya,$0a
07a2: d4 87     mov   $87+x,a
07a4: db 91     mov   $91+x,y
07a6: e8 80     mov   a,#$80
07a8: 14 0f     or    a,$0f+x
07aa: d4 0f     mov   $0f+x,a
07ac: 6f        ret

07ad: cd 00     mov   x,#$00
07af: 8f 0a 02  mov   $02,#$0a
07b2: f4 9b     mov   a,$9b+x
07b4: 14 a5     or    a,$a5+x
07b6: f0 03     beq   $07bb
07b8: 3f c0 07  call  $07c0
07bb: 3d        inc   x
07bc: 6e 02 f3  dbnz  $02,$07b2
07bf: 6f        ret

07c0: 9b c3     dec   $c3+x
07c2: f0 01     beq   $07c5
07c4: 6f        ret

07c5: f4 af     mov   a,$af+x	
07c7: c4 0a     mov   $0a,a
07c9: f4 b9     mov   a,$b9+x
07cb: c4 0b     mov   $0b,a
07cd: 8d 00     mov   y,#$00
07cf: f7 0a     mov   a,($0a)+y
07d1: 68 e0     cmp   a,#$e0		  ; set tempo
07d3: 90 14     bcc   $07e9
07d5: 68 e8     cmp   a,#$e8		  ; goto
07d7: f0 4c     beq   $0825
07d9: 68 eb     cmp   a,#$eb		  ; repeat start
07db: f0 57     beq   $0834
07dd: 68 ec     cmp   a,#$ec		  ; repeat end
07df: f0 68     beq   $0849
07e1: 68 e9     cmp   a,#$e9		  ; call subroutine
07e3: f0 7f     beq   $0864
07e5: 68 ea     cmp   a,#$ea		  ; end subroutine
07e7: f0 6e     beq   $0857
07e9: d4 c3     mov   $c3+x,a
07eb: 3a 0a     incw  $0a
07ed: f7 0a     mov   a,($0a)+y
07ef: 2d        push  a
07f0: 3a 0a     incw  $0a
07f2: e4 0a     mov   a,$0a
07f4: d4 af     mov   $af+x,a
07f6: e4 0b     mov   a,$0b
07f8: d4 b9     mov   $b9+x,a
07fa: f4 0f     mov   a,$0f+x
07fc: 08 80     or    a,#$80
07fe: d4 0f     mov   $0f+x,a
0800: ae        pop   a
0801: c4 06     mov   $06,a
0803: 28 80     and   a,#$80
0805: d0 0c     bne   $0813
0807: e4 06     mov   a,$06
0809: 60        clrc
080a: 94 87     adc   a,$87+x
080c: d4 87     mov   $87+x,a
080e: 90 02     bcc   $0812
0810: bb 91     inc   $91+x
0812: 6f        ret

0813: e4 06     mov   a,$06
0815: 28 7f     and   a,#$7f
0817: c4 06     mov   $06,a
0819: f4 87     mov   a,$87+x
081b: 80        setc
081c: a4 06     sbc   a,$06
081e: d4 87     mov   $87+x,a
0820: b0 f0     bcs   $0812
0822: 9b 91     dec   $91+x
0824: 6f        ret

0825: 3a 0a     incw  $0a
0827: f7 0a     mov   a,($0a)+y
0829: d4 af     mov   $af+x,a
082b: 3a 0a     incw  $0a
082d: f7 0a     mov   a,($0a)+y
082f: d4 b9     mov   $b9+x,a
0831: 5f c5 07  jmp   $07c5

0834: 3a 0a     incw  $0a
0836: f7 0a     mov   a,($0a)+y
0838: d5 78 02  mov   $0278+x,a
083b: 3a 0a     incw  $0a
083d: e4 0a     mov   a,$0a
083f: d5 82 02  mov   $0282+x,a
0842: e4 0b     mov   a,$0b
0844: d5 8c 02  mov   $028c+x,a
0847: 2f 84     bra   $07cd
0849: f5 78 02  mov   a,$0278+x
084c: 9c        dec   a
084d: d5 78 02  mov   $0278+x,a
0850: d0 05     bne   $0857
0852: 3a 0a     incw  $0a
0854: 5f cd 07  jmp   $07cd

0857: f5 82 02  mov   a,$0282+x
085a: d4 af     mov   $af+x,a
085c: f5 8c 02  mov   a,$028c+x
085f: d4 b9     mov   $b9+x,a
0861: 5f c5 07  jmp   $07c5

0864: 3a 0a     incw  $0a
0866: f7 0a     mov   a,($0a)+y
0868: d4 af     mov   $af+x,a
086a: 3a 0a     incw  $0a
086c: f7 0a     mov   a,($0a)+y
086e: d4 b9     mov   $b9+x,a
0870: 3a 0a     incw  $0a
0872: e4 0a     mov   a,$0a
0874: d5 82 02  mov   $0282+x,a
0877: e4 0b     mov   a,$0b
0879: d5 8c 02  mov   $028c+x,a
087c: 5f c5 07  jmp   $07c5

087f: e5 a7 03  mov   a,$03a7
0882: d0 01     bne   $0885
0884: 6f        ret

0885: 8c a8 03  dec   $03a8
0888: f0 01     beq   $088b
088a: 6f        ret

088b: e5 a9 03  mov   a,$03a9
088e: c5 a8 03  mov   $03a8,a
0891: cd 00     mov   x,#$00
0893: 8f 08 02  mov   $02,#$08
0896: f4 0f     mov   a,$0f+x
0898: 28 01     and   a,#$01
089a: f0 03     beq   $089f
089c: 3f a4 08  call  $08a4
089f: 3d        inc   x
08a0: 6e 02 f3  dbnz  $02,$0896
08a3: 6f        ret

08a4: f5 f0 02  mov   a,$02f0+x
08a7: d0 07     bne   $08b0
08a9: f4 0f     mov   a,$0f+x
08ab: 28 ef     and   a,#$ef
08ad: d4 0f     mov   $0f+x,a
08af: 6f        ret

08b0: 8f 03 06  mov   $06,#$03
08b3: 80        setc
08b4: a4 06     sbc   a,$06
08b6: 68 0a     cmp   a,#$0a
08b8: 90 0a     bcc   $08c4
08ba: d5 f0 02  mov   $02f0+x,a
08bd: f4 0f     mov   a,$0f+x
08bf: 08 10     or    a,#$10
08c1: d4 0f     mov   $0f+x,a
08c3: 6f        ret

08c4: 7d        mov   a,x
08c5: 9f        xcn   a
08c6: 2d        push  a
08c7: 08 00     or    a,#$00
08c9: fd        mov   y,a
08ca: e8 00     mov   a,#$00
08cc: 3f 79 11  call  $1179
08cf: fc        inc   y
08d0: 3f 79 11  call  $1179
08d3: ae        pop   a
08d4: 08 05     or    a,#$05
08d6: fd        mov   y,a
08d7: e8 00     mov   a,#$00
08d9: 3f 79 11  call  $1179
08dc: fc        inc   y
08dd: 3f 79 11  call  $1179
08e0: 3f 3b 11  call  $113b
08e3: e4 03     mov   a,$03
08e5: 2d        push  a
08e6: 8d 5c     mov   y,#$5c
08e8: 3f 79 11  call  $1179
08eb: 6d        push  y
08ec: 3f 71 11  call  $1171
08ef: ee        pop   y
08f0: 3f 77 11  call  $1177
08f3: ae        pop   a
08f4: 4e 01 00  tclr1 $0001
08f7: f4 0f     mov   a,$0f+x
08f9: 28 00     and   a,#$00
08fb: d4 0f     mov   $0f+x,a
08fd: 6f        ret

08fe: cd 00     mov   x,#$00
0900: 8f 0a 02  mov   $02,#$0a
0903: f4 0f     mov   a,$0f+x
0905: 28 01     and   a,#$01
0907: f0 03     beq   $090c
0909: 3f 12 09  call  $0912
090c: 3d        inc   x
090d: 8b 02     dec   $02
090f: d0 f2     bne   $0903
0911: 6f        ret

0912: f5 22 03  mov   a,$0322+x
0915: d0 06     bne   $091d
0917: f5 54 03  mov   a,$0354+x
091a: d0 01     bne   $091d
091c: 6f        ret

091d: f5 22 03  mov   a,$0322+x
0920: 9c        dec   a
0921: d5 22 03  mov   $0322+x,a
0924: f0 01     beq   $0927
0926: 6f        ret

0927: f5 4a 03  mov   a,$034a+x
092a: d5 22 03  mov   $0322+x,a
092d: f5 54 03  mov   a,$0354+x
0930: 60        clrc
0931: 95 5e 03  adc   a,$035e+x
0934: 90 10     bcc   $0946
0936: e8 00     mov   a,#$00
0938: d5 5e 03  mov   $035e+x,a
093b: e8 01     mov   a,#$01
093d: 60        clrc
093e: 95 22 03  adc   a,$0322+x
0941: d5 22 03  mov   $0322+x,a
0944: 2f 03     bra   $0949
0946: d5 5e 03  mov   $035e+x,a
0949: f4 0f     mov   a,$0f+x
094b: 28 20     and   a,#$20
094d: f0 06     beq   $0955
094f: f5 40 03  mov   a,$0340+x
0952: bc        inc   a
0953: 2f 04     bra   $0959
0955: f5 40 03  mov   a,$0340+x
0958: 9c        dec   a
0959: 2d        push  a
095a: 3f 4f 11  call  $114f
095d: ae        pop   a
095e: d5 40 03  mov   $0340+x,a
0961: 6f        ret

0962: cd 00     mov   x,#$00
0964: 8f 0a 02  mov   $02,#$0a
0967: f4 0f     mov   a,$0f+x
0969: 28 01     and   a,#$01
096b: f0 03     beq   $0970
096d: 3f 76 09  call  $0976
0970: 3d        inc   x
0971: 8b 02     dec   $02
0973: d0 f2     bne   $0967
0975: 6f        ret

0976: f4 4b     mov   a,$4b+x
0978: 14 55     or    a,$55+x
097a: f0 01     beq   $097d
097c: 6f        ret

; get current vcmd
097d: 3f d9 10  call  $10d9
0980: 68 e0     cmp   a,#$e0	; main vcmds
0982: 90 03     bcc   $0987	; note length (add to total - reset when note played)
0984: 5f 21 0b  jmp   $0b21

0987: fd        mov   y,a
0988: 68 a0     cmp   a,#$a0	; pitch slide
098a: 90 03     bcc   $098f
098c: 5f d9 0a  jmp   $0ad9

098f: fd        mov   y,a
0990: 10 03     bpl   $0995
0992: 5f 7f 0a  jmp   $0a7f

0995: 68 0c     cmp   a,#$0c	; rest
0997: d0 03     bne   $099c
0999: 5f ff 0a  jmp   $0aff

099c: c4 06     mov   $06,a
099e: e8 00     mov   a,#$00
09a0: d5 96 02  mov   $0296+x,a
09a3: d5 a0 02  mov   $02a0+x,a
09a6: d5 aa 02  mov   $02aa+x,a
09a9: e8 84     mov   a,#$84
09ab: 14 0f     or    a,$0f+x
09ad: 28 fd     and   a,#$fd
09af: d4 0f     mov   $0f+x,a
09b1: e4 06     mov   a,$06
09b3: 28 0f     and   a,#$0f
09b5: 2d        push  a
09b6: f5 04 03  mov   a,$0304+x
09b9: 28 80     and   a,#$80
09bb: d0 0f     bne   $09cc
09bd: f5 04 03  mov   a,$0304+x
09c0: 28 0f     and   a,#$0f
09c2: c4 07     mov   $07,a
09c4: ae        pop   a
09c5: 60        clrc
09c6: 84 07     adc   a,$07
09c8: 28 1f     and   a,#$1f
09ca: 2f 0b     bra   $09d7
09cc: f5 04 03  mov   a,$0304+x
09cf: 28 0f     and   a,#$0f
09d1: c4 07     mov   $07,a
09d3: ae        pop   a
09d4: 80        setc
09d5: a4 07     sbc   a,$07
09d7: 4d        push  x
09d8: 1c        asl   a
09d9: 5d        mov   x,a
09da: f5 0a 12  mov   a,$120a+x
09dd: c4 0a     mov   $0a,a
09df: f5 0b 12  mov   a,$120b+x
09e2: c4 0b     mov   $0b,a
09e4: ce        pop   x
09e5: f5 fa 02  mov   a,$02fa+x
09e8: 8d 00     mov   y,#$00
09ea: 2d        push  a
09eb: 28 80     and   a,#$80
09ed: d0 dd     bne   $09cc
09ef: ae        pop   a
09f0: 7a 0a     addw  ya,$0a
09f2: 2f 0e     bra   $0a02
09f4: ae        pop   a
09f5: 28 7f     and   a,#$7f
09f7: c4 07     mov   $07,a
09f9: cb 08     mov   $08,y
09fb: e4 0a     mov   a,$0a
09fd: eb 0b     mov   y,$0b
09ff: 60        clrc
0a00: 9a 07     subw  ya,$07
0a02: c4 0a     mov   $0a,a
0a04: 2d        push  a
0a05: cb 0b     mov   $0b,y
0a07: e4 06     mov   a,$06
0a09: 28 70     and   a,#$70
0a0b: 2d        push  a
0a0c: f5 04 03  mov   a,$0304+x
0a0f: 28 80     and   a,#$80
0a11: f0 0d     beq   $0a20
0a13: e8 70     mov   a,#$70
0a15: 35 04 03  and   a,$0304+x
0a18: c4 07     mov   $07,a
0a1a: ae        pop   a
0a1b: 80        setc
0a1c: a4 07     sbc   a,$07
0a1e: 2f 05     bra   $0a25
0a20: ae        pop   a
0a21: 60        clrc
0a22: 95 04 03  adc   a,$0304+x
0a25: 28 70     and   a,#$70
0a27: 9f        xcn   a
0a28: fd        mov   y,a
0a29: ae        pop   a
0a2a: 1c        asl   a
0a2b: 2b 0b     rol   $0b
0a2d: c4 0a     mov   $0a,a
0a2f: 2f 04     bra   $0a35
0a31: 4b 0b     lsr   $0b
0a33: 7c        ror   a
0a34: fc        inc   y
0a35: ad 06     cmp   y,#$06
0a37: d0 f8     bne   $0a31
0a39: c4 0a     mov   $0a,a
0a3b: f5 d2 02  mov   a,$02d2+x
0a3e: eb 0b     mov   y,$0b
0a40: cf        mul   ya
0a41: da 0c     movw  $0c,ya
0a43: f5 d2 02  mov   a,$02d2+x
0a46: eb 0a     mov   y,$0a
0a48: cf        mul   ya
0a49: 6d        push  y
0a4a: f5 dc 02  mov   a,$02dc+x
0a4d: eb 0a     mov   y,$0a
0a4f: cf        mul   ya
0a50: 7a 0c     addw  ya,$0c
0a52: da 0c     movw  $0c,ya
0a54: f5 dc 02  mov   a,$02dc+x
0a57: eb 0b     mov   y,$0b
0a59: cf        mul   ya
0a5a: fd        mov   y,a
0a5b: ae        pop   a
0a5c: 7a 0c     addw  ya,$0c
0a5e: d4 87     mov   $87+x,a
0a60: db 91     mov   $91+x,y
0a62: f4 37     mov   a,$37+x
0a64: d4 4b     mov   $4b+x,a
0a66: f4 41     mov   a,$41+x
0a68: d4 55     mov   $55+x,a
0a6a: f4 5f     mov   a,$5f+x
0a6c: d4 73     mov   $73+x,a
0a6e: f4 69     mov   a,$69+x
0a70: d4 7d     mov   $7d+x,a
0a72: f4 9b     mov   a,$9b+x
0a74: fb a5     mov   y,$a5+x
0a76: d4 af     mov   $af+x,a
0a78: db b9     mov   $b9+x,y
0a7a: e8 01     mov   a,#$01
0a7c: d4 c3     mov   $c3+x,a
0a7e: 6f        ret

0a7f: dd        mov   a,y
0a80: 28 3f     and   a,#$3f
0a82: 4d        push  x
0a83: 1c        asl   a
0a84: 5d        mov   x,a
0a85: f5 24 12  mov   a,$1224+x		; get note length from table
0a88: c4 0a     mov   $0a,a
0a8a: f5 25 12  mov   a,$1225+x
0a8d: c4 0b     mov   $0b,a
0a8f: ce        pop   x
0a90: 60        clrc
0a91: f4 4b     mov   a,$4b+x
0a93: fb 55     mov   y,$55+x
0a95: 7a 0a     addw  ya,$0a		; add to total length
0a97: d4 4b     mov   $4b+x,a
0a99: db 55     mov   $55+x,y
0a9b: d4 37     mov   $37+x,a
0a9d: db 41     mov   $41+x,y
0a9f: f5 68 03  mov   a,$0368+x
0aa2: fb 55     mov   y,$55+x
0aa4: cf        mul   ya
0aa5: da 0a     movw  $0a,ya
0aa7: f5 68 03  mov   a,$0368+x
0aaa: fb 4b     mov   y,$4b+x
0aac: cf        mul   ya
0aad: 6d        push  y
0aae: f5 72 03  mov   a,$0372+x
0ab1: fb 55     mov   y,$55+x
0ab3: cf        mul   ya
0ab4: 7a 0a     addw  ya,$0a
0ab6: da 0a     movw  $0a,ya
0ab8: f5 72 03  mov   a,$0372+x
0abb: fb 55     mov   y,$55+x
0abd: cf        mul   ya
0abe: fd        mov   y,a
0abf: ae        pop   a
0ac0: 7a 0a     addw  ya,$0a
0ac2: d0 0a     bne   $0ace
0ac4: c4 0a     mov   $0a,a
0ac6: cb 0b     mov   $0b,y
0ac8: 3a 0a     incw  $0a
0aca: e4 0a     mov   a,$0a
0acc: eb 0b     mov   y,$0b
0ace: d4 73     mov   $73+x,a
0ad0: db 7d     mov   $7d+x,y
0ad2: d4 5f     mov   $5f+x,a
0ad4: db 69     mov   $69+x,y
0ad6: 5f 7d 09  jmp   $097d

0ad9: 4d        push  x
0ada: e5 a6 03  mov   a,$03a6
0add: d0 02     bne   $0ae1
0adf: e8 04     mov   a,#$04
0ae1: 1c        asl   a
0ae2: 5d        mov   x,a
0ae3: f5 64 12  mov   a,$1264+x		; get pitch slide data
0ae6: c4 0c     mov   $0c,a
0ae8: f5 65 12  mov   a,$1265+x
0aeb: c4 0d     mov   $0d,a
0aed: dd        mov   a,y		; current byte
0aee: 28 0f     and   a,#$0f
0af0: 1c        asl   a
0af1: fd        mov   y,a
0af2: f7 0c     mov   a,($0c)+y
0af4: c4 0a     mov   $0a,a
0af6: 3a 0c     incw  $0c
0af8: f7 0c     mov   a,($0c)+y
0afa: c4 0b     mov   $0b,a
0afc: ce        pop   x
0afd: 2f 91     bra   $0a90
0aff: f4 0f     mov   a,$0f+x
0b01: 08 02     or    a,#$02
0b03: d4 0f     mov   $0f+x,a
0b05: f4 37     mov   a,$37+x
0b07: d4 4b     mov   $4b+x,a
0b09: f4 41     mov   a,$41+x
0b0b: d4 55     mov   $55+x,a
0b0d: f4 5f     mov   a,$5f+x
0b0f: d4 73     mov   $73+x,a
0b11: f4 69     mov   a,$69+x
0b13: d4 7d     mov   $7d+x,a
0b15: e8 00     mov   a,#$00
0b17: d5 96 02  mov   $0296+x,a
0b1a: d5 a0 02  mov   $02a0+x,a
0b1d: d5 aa 02  mov   $02aa+x,a
0b20: 6f        ret

0b21: 28 1f     and   a,#$1f
0b23: 1c        asl   a
0b24: d8 06     mov   $06,x
0b26: 5d        mov   x,a
0b27: f5 36 0b  mov   a,$0b36+x
0b2a: c4 0a     mov   $0a,a
0b2c: f5 37 0b  mov   a,$0b37+x
0b2f: c4 0b     mov   $0b,a
0b31: cd 00     mov   x,#$00
0b33: 1f 0a 00  jmp   ($000a+x)

; vcmd dispatch list
0b36: dw $0bc0 ; e0 - tempo
0b38: dw $0bd0 ; e1 - channel mask
0b3a: db $0b77 ; e2 - set instrument
0b3c: dw $0bdd ; e3 - set quantization
0b3e: dw $0c06 ; e4 - volume
0b40: dw $0c78 ; e5 - tuning
0b42: dw $0c83 ; e6 - per-channel transpose
0b44: dw $0c8e ; e7 - pitch slide
0b46: dw $0d8e ; e8 - goto
0b48: dw $0d9e ; e9 - call subroutine
0b4a: dw $0dd2 ; ea - end subroutine
0b4c: dw $0e05 ; eb - repeat start
0b4e: dw $0e3f ; ec - repeat end
0b50: dw $0e91 ; ed
0b52: dw $0ed4 ; ee - reset pitch
0b54: dw $0ee3 ; ef - set pitch
0b56: dw $0c23 ; f0 - pan
0b58: dw $0c2e ; f1 - pan fade
0b5a: dw $0ebe ; f2 - volume envelope (1)
0b5c: dw $0ec9 ; f3 - volume envelope (2)
0b5e: dw $0b76 ; f4 - nop
0b60: dw $0b76 ; f5 - nop
0b62: dw $0b76 ; f6 - nop
0b64: dw $0b76 ; f7 - nop
0b66: dw $0b76 ; f8 - nop
0b68: dw $0b76 ; f9 - nop
0b6a: dw $0b76 ; fa - nop
0b6c: dw $0b76 ; fb - nop
0b6e: dw $0b76 ; fc - nop
0b70: dw $0f10 ; fd
0b72: dw $0f19 ; fe - fade out
0b74: dw $0f38 ; ff - end

; vcmds f6-fc - nop
0b76: 6f	ret

; vcmd e2 - set instrument
0b77: f8 06     mov   x,$06
0b79: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0b7c: 4d        push  x
0b7d: c4 07     mov   $07,a
0b7f: e4 06     mov   a,$06
0b81: f0 0a     beq   $0b8d
0b83: 7d        mov   a,x
0b84: 68 08     cmp   a,#$08
0b86: 90 02     bcc   $0b8a
0b88: 9c        dec   a
0b89: 9c        dec   a
0b8a: 9f        xcn   a
0b8b: c4 06     mov   $06,a
0b8d: e8 04     mov   a,#$04
0b8f: 04 06     or    a,$06
0b91: 5d        mov   x,a
0b92: 8f 00 0a  mov   $0a,#$00
0b95: 8f 1d 0b  mov   $0b,#$1d
0b98: 8d 00     mov   y,#$00
0b9a: e4 07     mov   a,$07
0b9c: f0 06     beq   $0ba4
0b9e: 8d 06     mov   y,#$06
0ba0: cf        mul   ya
0ba1: fd        mov   y,a
0ba2: e4 07     mov   a,$07
0ba4: 8f 04 0c  mov   $0c,#$04
0ba7: d8 f2     mov   $f2,x
0ba9: c4 f3     mov   $f3,a
0bab: fc        inc   y
0bac: 3d        inc   x
0bad: f7 0a     mov   a,($0a)+y
0baf: 8b 0c     dec   $0c
0bb1: d0 f4     bne   $0ba7
0bb3: ce        pop   x
0bb4: fc        inc   y
0bb5: d5 dc 02  mov   $02dc+x,a
0bb8: f7 0a     mov   a,($0a)+y
0bba: d5 d2 02  mov   $02d2+x,a
0bbd: 5f 7d 09  jmp   $097d

; vcmd e0 - tempo
0bc0: f8 06     mov   x,$06
0bc2: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0bc5: 1c        asl   a
0bc6: c4 04     mov   $04,a
0bc8: 48 ff     eor   a,#$ff
0bca: bc        inc   a
0bcb: c4 05     mov   $05,a
0bcd: 5f 7d 09  jmp   $097d

; vcmd e1 - channel mask
0bd0: f8 06     mov   x,$06
0bd2: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0bd5: c4 0e     mov   $0e,a
0bd7: 3f 11 11  call  $1111
0bda: 5f 7d 09  jmp   $097d

; vcmd e3 - set quantization
0bdd: f8 06     mov   x,$06
0bdf: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0be2: 2d        push  a
0be3: 4d        push  x
0be4: 28 70     and   a,#$70
0be6: 9f        xcn   a
0be7: 5d        mov   x,a
0be8: f5 f2 11  mov   a,$11f2+x		; note dur%'s
0beb: ce        pop   x
0bec: d5 68 03  mov   $0368+x,a
0bef: e8 00     mov   a,#$00
0bf1: d5 72 03  mov   $0372+x,a
0bf4: ae        pop   a
0bf5: 4d        push  x
0bf6: 28 0f     and   a,#$0f
0bf8: 5d        mov   x,a
0bf9: f5 fa 11  mov   a,$11fa+x		; per-note velocity
0bfc: ce        pop   x
0bfd: d5 e6 02  mov   $02e6+x,a
0c00: 3f 11 11  call  $1111
0c03: 5f 7d 09  jmp   $097d

; vcmd e4 - volume
0c06: f8 06     mov   x,$06
0c08: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0c0b: c4 06     mov   $06,a
0c0d: f4 19     mov   a,$19+x
0c0f: 28 01     and   a,#$01
0c11: d0 05     bne   $0c18
0c13: ec a7 03  mov   y,$03a7
0c16: d0 08     bne   $0c20
0c18: e4 06     mov   a,$06
0c1a: d5 f0 02  mov   $02f0+x,a
0c1d: 3f 11 11  call  $1111
0c20: 5f 7d 09  jmp   $097d

; vcmd f0 - pan
0c23: f8 06     mov   x,$06
0c25: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0c28: 3f 4f 11  call  $114f
0c2b: 5f 7d 09  jmp   $097d

; vcmd f1 - pan fade
0c2e: f8 06     mov   x,$06
0c30: 3f f2 10  call  $10f2            ; read a word from voice ptr
0c33: 2d        push  a
0c34: e4 06     mov   a,$06
0c36: d5 40 03  mov   $0340+x,a
0c39: 3f 4f 11  call  $114f
0c3c: ae        pop   a
0c3d: 64 06     cmp   a,$06
0c3f: b0 09     bcs   $0c4a
0c41: c4 07     mov   $07,a
0c43: e4 06     mov   a,$06
0c45: 80        setc
0c46: a4 07     sbc   a,$07
0c48: 2f 0b     bra   $0c55
0c4a: 80        setc
0c4b: a4 06     sbc   a,$06
0c4d: 2d        push  a
0c4e: f4 0f     mov   a,$0f+x
0c50: 08 20     or    a,#$20
0c52: d4 0f     mov   $0f+x,a
0c54: ae        pop   a
0c55: 4d        push  x
0c56: c4 06     mov   $06,a
0c58: f4 4b     mov   a,$4b+x
0c5a: fb 55     mov   y,$55+x
0c5c: f8 06     mov   x,$06
0c5e: 9e        div   ya,x
0c5f: c4 06     mov   $06,a
0c61: e8 00     mov   a,#$00
0c63: 9e        div   ya,x
0c64: ce        pop   x
0c65: d5 54 03  mov   $0354+x,a
0c68: e8 00     mov   a,#$00
0c6a: d5 5e 03  mov   $035e+x,a
0c6d: e4 06     mov   a,$06
0c6f: d5 22 03  mov   $0322+x,a
0c72: d5 4a 03  mov   $034a+x,a
0c75: 5f 7d 09  jmp   $097d

; vcmd e5 - tuning
0c78: f8 06     mov   x,$06
0c7a: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0c7d: d5 fa 02  mov   $02fa+x,a
0c80: 5f 7d 09  jmp   $097d

; vcmd e6 - per-channel transpose
0c83: f8 06     mov   x,$06
0c85: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0c88: d5 04 03  mov   $0304+x,a
0c8b: 5f 7d 09  jmp   $097d

; vcmd e7 - pitch slide
0c8e: f8 06     mov   x,$06
0c90: 3f f2 10  call  $10f2            ; read a word from voice ptr
0c93: eb 06     mov   y,$06
0c95: 6d        push  y
0c96: 64 06     cmp   a,$06
0c98: 90 19     bcc   $0cb3
0c9a: 2d        push  a
0c9b: 3f 01 0d  call  $0d01
0c9e: c4 08     mov   $08,a
0ca0: cb 09     mov   $09,y
0ca2: ae        pop   a
0ca3: c4 06     mov   $06,a
0ca5: 3f 01 0d  call  $0d01
0ca8: 80        setc
0ca9: 9a 08     subw  ya,$08
0cab: f4 19     mov   a,$19+x
0cad: 28 fd     and   a,#$fd
0caf: d4 19     mov   $19+x,a
0cb1: 2f 1d     bra   $0cd0
0cb3: eb 06     mov   y,$06
0cb5: 6d        push  y
0cb6: c4 06     mov   $06,a
0cb8: 3f 01 0d  call  $0d01
0cbb: c4 08     mov   $08,a
0cbd: cb 09     mov   $09,y
0cbf: ee        pop   y
0cc0: cb 06     mov   $06,y
0cc2: 3f 01 0d  call  $0d01
0cc5: 80        setc
0cc6: 9a 08     subw  ya,$08
0cc8: 2d        push  a
0cc9: e8 02     mov   a,#$02
0ccb: 14 19     or    a,$19+x
0ccd: d4 19     mov   $19+x,a
0ccf: ae        pop   a
0cd0: c4 07     mov   $07,a
0cd2: cb 08     mov   $08,y
0cd4: f4 4b     mov   a,$4b+x
0cd6: c4 0a     mov   $0a,a
0cd8: f4 55     mov   a,$55+x
0cda: c4 0b     mov   $0b,a
0cdc: 3f 7e 11  call  $117e
0cdf: e4 08     mov   a,$08
0ce1: d5 aa 02  mov   $02aa+x,a
0ce4: d5 be 02  mov   $02be+x,a
0ce7: e8 00     mov   a,#$00
0ce9: d5 b4 02  mov   $02b4+x,a
0cec: d5 c8 02  mov   $02c8+x,a
0cef: e5 ab 03  mov   a,$03ab
0cf2: d5 96 02  mov   $0296+x,a
0cf5: e5 ac 03  mov   a,$03ac
0cf8: d5 a0 02  mov   $02a0+x,a
0cfb: ae        pop   a
0cfc: c4 06     mov   $06,a
0cfe: 5f a9 09  jmp   $09a9

0d01: e4 06     mov   a,$06
0d03: 28 0f     and   a,#$0f
0d05: 2d        push  a
0d06: f5 04 03  mov   a,$0304+x
0d09: 28 80     and   a,#$80
0d0b: d0 0f     bne   $0d1c
0d0d: f5 04 03  mov   a,$0304+x
0d10: 28 0f     and   a,#$0f
0d12: c4 07     mov   $07,a
0d14: ae        pop   a
0d15: 60        clrc
0d16: 84 07     adc   a,$07
0d18: 28 1f     and   a,#$1f
0d1a: 2f 0b     bra   $0d27
0d1c: f5 04 03  mov   a,$0304+x
0d1f: 28 0f     and   a,#$0f
0d21: c4 07     mov   $07,a
0d23: ae        pop   a
0d24: 80        setc
0d25: a4 07     sbc   a,$07
0d27: 4d        push  x
0d28: 1c        asl   a
0d29: 5d        mov   x,a
0d2a: f5 0a 12  mov   a,$120a+x
0d2d: c4 0a     mov   $0a,a
0d2f: f5 0b 12  mov   a,$120b+x
0d32: c4 0b     mov   $0b,a
0d34: ce        pop   x
0d35: e4 06     mov   a,$06
0d37: 28 70     and   a,#$70
0d39: 2d        push  a
0d3a: f5 04 03  mov   a,$0304+x
0d3d: 28 80     and   a,#$80
0d3f: f0 0d     beq   $0d4e
0d41: e8 70     mov   a,#$70
0d43: 35 04 03  and   a,$0304+x
0d46: c4 07     mov   $07,a
0d48: ae        pop   a
0d49: 80        setc
0d4a: a4 07     sbc   a,$07
0d4c: 2f 05     bra   $0d53
0d4e: ae        pop   a
0d4f: 60        clrc
0d50: 95 04 03  adc   a,$0304+x
0d53: 28 70     and   a,#$70
0d55: 9f        xcn   a
0d56: fd        mov   y,a
0d57: e4 0a     mov   a,$0a
0d59: 1c        asl   a
0d5a: 2b 0b     rol   $0b
0d5c: c4 0a     mov   $0a,a
0d5e: 2f 04     bra   $0d64
0d60: 4b 0b     lsr   $0b
0d62: 7c        ror   a
0d63: fc        inc   y
0d64: ad 06     cmp   y,#$06
0d66: d0 f8     bne   $0d60
0d68: c4 0a     mov   $0a,a
0d6a: f5 d2 02  mov   a,$02d2+x
0d6d: eb 0b     mov   y,$0b
0d6f: cf        mul   ya
0d70: da 0c     movw  $0c,ya
0d72: f5 d2 02  mov   a,$02d2+x
0d75: eb 0a     mov   y,$0a
0d77: cf        mul   ya
0d78: 6d        push  y
0d79: f5 dc 02  mov   a,$02dc+x
0d7c: eb 0a     mov   y,$0a
0d7e: cf        mul   ya
0d7f: 7a 0c     addw  ya,$0c
0d81: da 0c     movw  $0c,ya
0d83: f5 dc 02  mov   a,$02dc+x
0d86: eb 0b     mov   y,$0b
0d88: cf        mul   ya
0d89: fd        mov   y,a
0d8a: ae        pop   a
0d8b: 7a 0c     addw  ya,$0c
0d8d: 6f        ret

; vcmd e8 - goto
0d8e: f8 06     mov   x,$06
0d90: 3f f2 10  call  $10f2            ; read a word from voice ptr
0d93: 2d        push  a
0d94: e4 06     mov   a,$06
0d96: d4 23     mov   $23+x,a
0d98: ae        pop   a
0d99: d4 2d     mov   $2d+x,a
0d9b: 5f 7d 09  jmp   $097d

; vcmd e9 - call subroutine
0d9e: f8 06     mov   x,$06
0da0: 3f f2 10  call  $10f2            ; read a word from voice ptr
0da3: 8d 00     mov   y,#$00
0da5: 2d        push  a
0da6: e4 06     mov   a,$06
0da8: d4 23     mov   $23+x,a
0daa: ae        pop   a
0dab: d4 2d     mov   $2d+x,a
0dad: f4 d7     mov   a,$d7+x
0daf: c4 0c     mov   $0c,a
0db1: f4 e1     mov   a,$e1+x
0db3: c4 0d     mov   $0d,a
0db5: e4 0a     mov   a,$0a
0db7: d7 0c     mov   ($0c)+y,a
0db9: e8 0a     mov   a,#$0a
0dbb: 6d        push  y
0dbc: 7a 0c     addw  ya,$0c
0dbe: c4 0c     mov   $0c,a
0dc0: cb 0d     mov   $0d,y
0dc2: ee        pop   y
0dc3: e4 0b     mov   a,$0b
0dc5: d7 0c     mov   ($0c)+y,a
0dc7: e8 0a     mov   a,#$0a
0dc9: 7a 0c     addw  ya,$0c
0dcb: d4 d7     mov   $d7+x,a
0dcd: db e1     mov   $e1+x,y
0dcf: 5f 7d 09  jmp   $097d

; vcmd ea - end subroutine
0dd2: f8 06     mov   x,$06
0dd4: 8f 0a 0c  mov   $0c,#$0a
0dd7: 8f 00 0d  mov   $0d,#$00
0dda: f4 d7     mov   a,$d7+x
0ddc: fb e1     mov   y,$e1+x
0dde: 9a 0c     subw  ya,$0c
0de0: 2d        push  a
0de1: 6d        push  y
0de2: c4 0a     mov   $0a,a
0de4: cb 0b     mov   $0b,y
0de6: 8d 00     mov   y,#$00
0de8: f7 0a     mov   a,($0a)+y
0dea: d4 2d     mov   $2d+x,a
0dec: ee        pop   y
0ded: ae        pop   a
0dee: 9a 0c     subw  ya,$0c
0df0: c4 0a     mov   $0a,a
0df2: cb 0b     mov   $0b,y
0df4: 8d 00     mov   y,#$00
0df6: f7 0a     mov   a,($0a)+y
0df8: d4 23     mov   $23+x,a
0dfa: e4 0a     mov   a,$0a
0dfc: d4 d7     mov   $d7+x,a
0dfe: e4 0b     mov   a,$0b
0e00: d4 e1     mov   $e1+x,a
0e02: 5f 7d 09  jmp   $097d

; vcmd eb - repeat start
0e05: f8 06     mov   x,$06
0e07: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0e0a: 8d 00     mov   y,#$00
0e0c: 2d        push  a
0e0d: f4 d7     mov   a,$d7+x
0e0f: c4 0c     mov   $0c,a
0e11: f4 e1     mov   a,$e1+x
0e13: c4 0d     mov   $0d,a
0e15: e4 0a     mov   a,$0a
0e17: d7 0c     mov   ($0c)+y,a
0e19: 6d        push  y
0e1a: e8 0a     mov   a,#$0a
0e1c: 7a 0c     addw  ya,$0c
0e1e: c4 0c     mov   $0c,a
0e20: cb 0d     mov   $0d,y
0e22: ee        pop   y
0e23: e4 0b     mov   a,$0b
0e25: d7 0c     mov   ($0c)+y,a
0e27: 6d        push  y
0e28: e8 0a     mov   a,#$0a
0e2a: 7a 0c     addw  ya,$0c
0e2c: c4 0c     mov   $0c,a
0e2e: cb 0d     mov   $0d,y
0e30: ee        pop   y
0e31: ae        pop   a
0e32: d7 0c     mov   ($0c)+y,a
0e34: e8 0a     mov   a,#$0a
0e36: 7a 0c     addw  ya,$0c
0e38: d4 d7     mov   $d7+x,a
0e3a: db e1     mov   $e1+x,y
0e3c: 5f 7d 09  jmp   $097d

; vcmd ec - repeat end
0e3f: f8 06     mov   x,$06
0e41: 8d 00     mov   y,#$00
0e43: 8f 0a 0c  mov   $0c,#$0a
0e46: 8f 00 0d  mov   $0d,#$00
0e49: f4 d7     mov   a,$d7+x
0e4b: fb e1     mov   y,$e1+x
0e4d: 9a 0c     subw  ya,$0c
0e4f: 6d        push  y
0e50: 2d        push  a
0e51: c4 0a     mov   $0a,a
0e53: cb 0b     mov   $0b,y
0e55: 8d 00     mov   y,#$00
0e57: f7 0a     mov   a,($0a)+y
0e59: 9c        dec   a
0e5a: d0 0e     bne   $0e6a
0e5c: 8f 14 0c  mov   $0c,#$14
0e5f: ae        pop   a
0e60: ee        pop   y
0e61: 9a 0c     subw  ya,$0c
0e63: d4 d7     mov   $d7+x,a
0e65: db e1     mov   $e1+x,y
0e67: 5f 7d 09  jmp   $097d

0e6a: d7 0a     mov   ($0a)+y,a
0e6c: ae        pop   a
0e6d: ee        pop   y
0e6e: 9a 0c     subw  ya,$0c
0e70: 6d        push  y
0e71: 2d        push  a
0e72: c4 0a     mov   $0a,a
0e74: cb 0b     mov   $0b,y
0e76: 8d 00     mov   y,#$00
0e78: f7 0a     mov   a,($0a)+y
0e7a: c4 06     mov   $06,a
0e7c: ae        pop   a
0e7d: ee        pop   y
0e7e: 9a 0c     subw  ya,$0c
0e80: c4 0a     mov   $0a,a
0e82: cb 0b     mov   $0b,y
0e84: 8d 00     mov   y,#$00
0e86: f7 0a     mov   a,($0a)+y
0e88: d4 23     mov   $23+x,a
0e8a: e4 06     mov   a,$06
0e8c: d4 2d     mov   $2d+x,a
0e8e: 5f 7d 09  jmp   $097d

; vcmd ed
0e91: f8 06     mov   x,$06
0e93: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0e96: 68 10     cmp   a,#$10
0e98: d0 04     bne   $0e9e
0e9a: e8 01     mov   a,#$01
0e9c: 2f 1a     bra   $0eb8
0e9e: 68 18     cmp   a,#$18
0ea0: d0 04     bne   $0ea6
0ea2: e8 02     mov   a,#$02
0ea4: 2f 12     bra   $0eb8
0ea6: 68 20     cmp   a,#$20
0ea8: d0 04     bne   $0eae
0eaa: e8 03     mov   a,#$03
0eac: 2f 0a     bra   $0eb8
0eae: 68 31     cmp   a,#$31
0eb0: 90 04     bcc   $0eb6
0eb2: e8 00     mov   a,#$00
0eb4: 2f 02     bra   $0eb8
0eb6: e8 04     mov   a,#$04
0eb8: c5 a6 03  mov   $03a6,a
0ebb: 5f 7d 09  jmp   $097d

; vcmd f2 - slur on
0ebe: f8 06     mov   x,$06
0ec0: f4 0f     mov   a,$0f+x
0ec2: 08 40     or    a,#$40
0ec4: d4 0f     mov   $0f+x,a
0ec6: 5f 7d 09  jmp   $097d

; vcmd f3 - slur off
0ec9: f8 06     mov   x,$06
0ecb: f4 0f     mov   a,$0f+x
0ecd: 28 b7     and   a,#$b7
0ecf: d4 0f     mov   $0f+x,a
0ed1: 5f 7d 09  jmp   $097d

; vcmd ee - reset pitch
0ed4: f8 06     mov   x,$06
0ed6: e8 00     mov   a,#$00
0ed8: d4 9b     mov   $9b+x,a
0eda: d4 a5     mov   $a5+x,a
0edc: d4 af     mov   $af+x,a
0ede: d4 b9     mov   $b9+x,a
0ee0: 5f 7d 09  jmp   $097d

; vcmd ef - set pitch
0ee3: f8 06     mov   x,$06
0ee5: 3f d9 10  call  $10d9             ; read a byte from voice ptr
0ee8: 4d        push  x
0ee9: 2d        push  a
0eea: e5 02 e8  mov   a,$e802
0eed: c4 0c     mov   $0c,a
0eef: e5 03 e8  mov   a,$e803
0ef2: c4 0d     mov   $0d,a
0ef4: ae        pop   a
0ef5: 1c        asl   a
0ef6: fd        mov   y,a
0ef7: f7 0c     mov   a,($0c)+y
0ef9: 2d        push  a
0efa: 3a 0c     incw  $0c
0efc: f7 0c     mov   a,($0c)+y
0efe: fd        mov   y,a
0eff: ae        pop   a
0f00: ce        pop   x
0f01: d4 9b     mov   $9b+x,a
0f03: db a5     mov   $a5+x,y
0f05: d4 af     mov   $af+x,a
0f07: db b9     mov   $b9+x,y
0f09: e8 01     mov   a,#$01
0f0b: d4 c3     mov   $c3+x,a
0f0d: 5f 7d 09  jmp   $097d

; vcmd fd
0f10: f8 06     mov   x,$06
0f12: e8 fd     mov   a,#$fd
0f14: c4 00     mov   $00,a
0f16: 5f 7d 09  jmp   $097d

; vcmd fe - fade out
0f19: f8 06     mov   x,$06
0f1b: e5 a5 03  mov   a,$03a5
0f1e: d0 03     bne   $0f23
0f20: 5f 7d 09  jmp   $097d

0f23: e5 a4 03  mov   a,$03a4
0f26: bc        inc   a
0f27: 8d 00     mov   y,#$00
0f29: cc a5 03  mov   $03a5,y
0f2c: cc a7 03  mov   $03a7,y
0f2f: cc a8 03  mov   $03a8,y
0f32: cc a9 03  mov   $03a9,y
0f35: 5f 9e 05  jmp   $059e

; vcmd ff - stop
0f38: f8 06     mov   x,$06
0f3a: 7d        mov   a,x
0f3b: c8 08     cmp   x,#$08
0f3d: 90 02     bcc   $0f41
0f3f: 9c        dec   a
0f40: 9c        dec   a
0f41: 9f        xcn   a
0f42: 2d        push  a
0f43: 08 00     or    a,#$00
0f45: fd        mov   y,a
0f46: e8 00     mov   a,#$00
0f48: 3f 79 11  call  $1179
0f4b: fc        inc   y
0f4c: 3f 79 11  call  $1179
0f4f: ae        pop   a
0f50: 08 05     or    a,#$05
0f52: fd        mov   y,a
0f53: e8 00     mov   a,#$00
0f55: 3f 79 11  call  $1179
0f58: fc        inc   y
0f59: 3f 79 11  call  $1179
0f5c: 3f 21 11  call  $1121
0f5f: e4 03     mov   a,$03
0f61: 2d        push  a
0f62: 8d 5c     mov   y,#$5c
0f64: 3f 79 11  call  $1179
0f67: 6d        push  y
0f68: 3f 71 11  call  $1171
0f6b: ee        pop   y
0f6c: 3f 77 11  call  $1177
0f6f: ae        pop   a
0f70: 4e 01 00  tclr1 $0001
0f73: f4 0f     mov   a,$0f+x
0f75: 28 00     and   a,#$00
0f77: d4 0f     mov   $0f+x,a
0f79: 6f        ret

0f7a: cd 00     mov   x,#$00
0f7c: 8f 0a 02  mov   $02,#$0a
0f7f: f4 0f     mov   a,$0f+x
0f81: 28 01     and   a,#$01
0f83: f0 03     beq   $0f88
0f85: 3f 96 0f  call  $0f96
0f88: 3d        inc   x
0f89: 8b 02     dec   $02
0f8b: d0 f2     bne   $0f7f
0f8d: e5 aa 03  mov   a,$03aa
0f90: 28 7f     and   a,#$7f
0f92: c5 aa 03  mov   $03aa,a
0f95: 6f        ret

0f96: f4 0f     mov   a,$0f+x
0f98: 28 80     and   a,#$80
0f9a: f0 03     beq   $0f9f
0f9c: 3f cb 0f  call  $0fcb
0f9f: e5 aa 03  mov   a,$03aa
0fa2: 10 02     bpl   $0fa6
0fa4: 2f 0b     bra   $0fb1
0fa6: e5 a7 03  mov   a,$03a7
0fa9: d0 06     bne   $0fb1
0fab: f4 0f     mov   a,$0f+x
0fad: 28 10     and   a,#$10
0faf: f0 03     beq   $0fb4
0fb1: 3f e8 0f  call  $0fe8
0fb4: f4 0f     mov   a,$0f+x
0fb6: fd        mov   y,a
0fb7: 28 08     and   a,#$08
0fb9: f0 07     beq   $0fc2
0fbb: dd        mov   a,y
0fbc: 28 fb     and   a,#$fb
0fbe: d4 0f     mov   $0f+x,a
0fc0: 2f 08     bra   $0fca
0fc2: dd        mov   a,y
0fc3: 28 04     and   a,#$04
0fc5: f0 03     beq   $0fca
0fc7: 3f 31 10  call  $1031
0fca: 6f        ret

0fcb: 7d        mov   a,x
0fcc: 68 08     cmp   a,#$08
0fce: 90 02     bcc   $0fd2
0fd0: 9c        dec   a
0fd1: 9c        dec   a
0fd2: 9f        xcn   a
0fd3: 08 03     or    a,#$03
0fd5: fd        mov   y,a
0fd6: f4 91     mov   a,$91+x
0fd8: 3f 79 11  call  $1179
0fdb: dc        dec   y
0fdc: f4 87     mov   a,$87+x
0fde: 3f 79 11  call  $1179
0fe1: f4 0f     mov   a,$0f+x
0fe3: 28 7f     and   a,#$7f
0fe5: d4 0f     mov   $0f+x,a
0fe7: 6f        ret

0fe8: e5 aa 03  mov   a,$03aa
0feb: 28 7f     and   a,#$7f
0fed: d0 05     bne   $0ff4
0fef: 3f 71 10  call  $1071
0ff2: 2f 0f     bra   $1003
0ff4: 7d        mov   a,x
0ff5: f4 19     mov   a,$19+x
0ff7: 28 01     and   a,#$01
0ff9: d0 05     bne   $1000
0ffb: e5 a7 03  mov   a,$03a7
0ffe: d0 03     bne   $1003
1000: 3f 4a 10  call  $104a
1003: 7d        mov   a,x
1004: 68 08     cmp   a,#$08
1006: 90 02     bcc   $100a
1008: 9c        dec   a
1009: 9c        dec   a
100a: 9f        xcn   a
100b: 08 00     or    a,#$00
100d: fd        mov   y,a
100e: 6d        push  y
100f: 3f 80 10  call  $1080
1012: cb 07     mov   $07,y
1014: f5 0e 03  mov   a,$030e+x
1017: cf        mul   ya
1018: dd        mov   a,y
1019: ee        pop   y
101a: 3f 79 11  call  $1179
101d: fc        inc   y
101e: 6d        push  y
101f: eb 07     mov   y,$07
1021: f5 18 03  mov   a,$0318+x
1024: cf        mul   ya
1025: dd        mov   a,y
1026: ee        pop   y
1027: 3f 79 11  call  $1179
102a: e8 ef     mov   a,#$ef
102c: 34 0f     and   a,$0f+x
102e: d4 0f     mov   $0f+x,a
1030: 6f        ret

1031: 3f 21 11  call  $1121
1034: e4 03     mov   a,$03
1036: 8d 4c     mov   y,#$4c
1038: 3f 79 11  call  $1179
103b: 6d        push  y
103c: 3f 71 11  call  $1171
103f: ee        pop   y
1040: 3f 77 11  call  $1177
1043: f4 0f     mov   a,$0f+x
1045: 28 fb     and   a,#$fb
1047: d4 0f     mov   $0f+x,a
1049: 6f        ret

104a: e4 0e     mov   a,$0e
104c: d0 04     bne   $1052
104e: e8 ff     mov   a,#$ff
1050: c4 0e     mov   $0e,a
1052: f5 f0 02  mov   a,$02f0+x
1055: d0 05     bne   $105c
1057: e8 ff     mov   a,#$ff
1059: d5 f0 02  mov   $02f0+x,a
105c: f5 0e 03  mov   a,$030e+x
105f: 15 18 03  or    a,$0318+x
1062: f0 0d     beq   $1071
1064: f5 2c 03  mov   a,$032c+x
1067: d5 0e 03  mov   $030e+x,a
106a: f5 36 03  mov   a,$0336+x
106d: d5 18 03  mov   $0318+x,a
1070: 6f        ret

1071: e8 51     mov   a,#$51
1073: d5 0e 03  mov   $030e+x,a
1076: d5 18 03  mov   $0318+x,a
1079: d5 2c 03  mov   $032c+x,a
107c: d5 36 03  mov   $0336+x,a
107f: 6f        ret

1080: e8 ff     mov   a,#$ff
1082: eb 0e     mov   y,$0e
1084: cf        mul   ya
1085: f5 e6 02  mov   a,$02e6+x
1088: cf        mul   ya
1089: f5 f0 02  mov   a,$02f0+x
108c: cf        mul   ya
108d: dd        mov   a,y
108e: cf        mul   ya
108f: 6f        ret

1090: cd 00     mov   x,#$00
1092: 8f 08 02  mov   $02,#$08
1095: 7d        mov   a,x
1096: 9f        xcn   a
1097: 2d        push  a
1098: 08 00     or    a,#$00
109a: fd        mov   y,a
109b: e8 00     mov   a,#$00
109d: 3f 79 11  call  $1179
10a0: fc        inc   y
10a1: 3f 79 11  call  $1179
10a4: ae        pop   a
10a5: 08 05     or    a,#$05
10a7: fd        mov   y,a
10a8: e8 00     mov   a,#$00
10aa: 3f 79 11  call  $1179
10ad: fc        inc   y
10ae: 3f 79 11  call  $1179
10b1: 3f 3b 11  call  $113b
10b4: e4 03     mov   a,$03
10b6: 2d        push  a
10b7: 8d 5c     mov   y,#$5c
10b9: 3f 79 11  call  $1179
10bc: 6d        push  y
10bd: 3f 71 11  call  $1171
10c0: ee        pop   y
10c1: 3f 77 11  call  $1177
10c4: ae        pop   a
10c5: 4e 01 00  tclr1 $0001
10c8: e8 00     mov   a,#$00
10ca: d4 0f     mov   $0f+x,a
10cc: 3d        inc   x
10cd: 8b 02     dec   $02
10cf: d0 c4     bne   $1095
10d1: e8 00     mov   a,#$00
10d3: d4 0f     mov   $0f+x,a
10d5: 3d        inc   x
10d6: d4 0f     mov   $0f+x,a
10d8: 6f        ret

10d9: 8d 00     mov   y,#$00
10db: f4 23     mov   a,$23+x
10dd: c4 0a     mov   $0a,a
10df: f4 2d     mov   a,$2d+x
10e1: c4 0b     mov   $0b,a
10e3: f7 0a     mov   a,($0a)+y
10e5: 2d        push  a
10e6: 3a 0a     incw  $0a
10e8: e4 0a     mov   a,$0a
10ea: d4 23     mov   $23+x,a
10ec: e4 0b     mov   a,$0b
10ee: d4 2d     mov   $2d+x,a
10f0: ae        pop   a
10f1: 6f        ret

10f2: 8d 00     mov   y,#$00
10f4: f4 23     mov   a,$23+x
10f6: c4 0a     mov   $0a,a
10f8: f4 2d     mov   a,$2d+x
10fa: c4 0b     mov   $0b,a
10fc: f7 0a     mov   a,($0a)+y
10fe: c4 06     mov   $06,a
1100: 3a 0a     incw  $0a
1102: f7 0a     mov   a,($0a)+y
1104: 2d        push  a
1105: 3a 0a     incw  $0a
1107: e4 0a     mov   a,$0a
1109: d4 23     mov   $23+x,a
110b: e4 0b     mov   a,$0b
110d: d4 2d     mov   $2d+x,a
110f: ae        pop   a
1110: 6f        ret

1111: f4 0f     mov   a,$0f+x
1113: c4 07     mov   $07,a
1115: 28 10     and   a,#$10
1117: f0 01     beq   $111a
1119: 6f        ret

111a: e4 07     mov   a,$07
111c: 08 10     or    a,#$10
111e: d4 0f     mov   $0f+x,a
1120: 6f        ret

1121: 8f 01 03  mov   $03,#$01
1124: e4 02     mov   a,$02
1126: 68 03     cmp   a,#$03
1128: b0 02     bcs   $112c
112a: bc        inc   a
112b: bc        inc   a
112c: c4 06     mov   $06,a
112e: e8 0a     mov   a,#$0a
1130: 80        setc
1131: a4 06     sbc   a,$06
1133: f0 05     beq   $113a
1135: 0b 03     asl   $03
1137: 9c        dec   a
1138: d0 fb     bne   $1135
113a: 6f        ret

113b: 8f 01 03  mov   $03,#$01
113e: e4 02     mov   a,$02
1140: c4 06     mov   $06,a
1142: e8 08     mov   a,#$08
1144: 80        setc
1145: a4 06     sbc   a,$06
1147: f0 05     beq   $114e
1149: 0b 03     asl   $03
114b: 9c        dec   a
114c: d0 fb     bne   $1149
114e: 6f        ret

114f: fd        mov   y,a
1150: d5 40 03  mov   $0340+x,a
1153: f6 dd 11  mov   a,$11dd+y
1156: d5 0e 03  mov   $030e+x,a
1159: d5 2c 03  mov   $032c+x,a
115c: cb 07     mov   $07,y
115e: e8 14     mov   a,#$14
1160: 80        setc
1161: a4 07     sbc   a,$07
1163: fd        mov   y,a
1164: f6 dd 11  mov   a,$11dd+y
1167: d5 18 03  mov   $0318+x,a
116a: d5 36 03  mov   $0336+x,a
116d: 3f 11 11  call  $1111
1170: 6f        ret

1171: 8d 06     mov   y,#$06
1173: dc        dec   y
1174: d0 fd     bne   $1173
1176: 6f        ret

1177: e8 00     mov   a,#$00
1179: cb f2     mov   $f2,y
117b: c4 f3     mov   $f3,a
117d: 6f        ret

117e: 8f 00 0c  mov   $0c,#$00
1181: 8f 00 0d  mov   $0d,#$00
1184: 8f 10 06  mov   $06,#$10
1187: e4 07     mov   a,$07
1189: 1c        asl   a
118a: 2b 08     rol   $08
118c: 2b 0c     rol   $0c
118e: 2b 0d     rol   $0d
1190: 2b 07     rol   $07
1192: e4 0c     mov   a,$0c
1194: eb 0d     mov   y,$0d
1196: 80        setc
1197: 9a 0a     subw  ya,$0a
1199: b0 04     bcs   $119f
119b: 7a 0a     addw  ya,$0a
119d: 2f 02     bra   $11a1
119f: 3a 07     incw  $07
11a1: c4 0c     mov   $0c,a
11a3: cb 0d     mov   $0d,y
11a5: 8b 06     dec   $06
11a7: d0 de     bne   $1187
11a9: ba 07     movw  ya,$07
11ab: c5 ab 03  mov   $03ab,a
11ae: cc ac 03  mov   $03ac,y
11b1: 8f 00 07  mov   $07,#$00
11b4: 8f 00 08  mov   $08,#$00
11b7: 8f 10 06  mov   $06,#$10
11ba: e4 07     mov   a,$07
11bc: 1c        asl   a
11bd: 2b 08     rol   $08
11bf: 2b 0c     rol   $0c
11c1: 2b 0d     rol   $0d
11c3: 2b 07     rol   $07
11c5: e4 0c     mov   a,$0c
11c7: eb 0d     mov   y,$0d
11c9: 80        setc
11ca: 9a 0a     subw  ya,$0a
11cc: b0 04     bcs   $11d2
11ce: 7a 0a     addw  ya,$0a
11d0: 2f 02     bra   $11d4
11d2: 3a 07     incw  $07
11d4: c4 0c     mov   $0c,a
11d6: cb 0d     mov   $0d,y
11d8: 8b 06     dec   $06
11da: d0 de     bne   $11ba
11dc: 6f        ret

; pan table
11dd: db $00,$01,$03,$07,$0d,$15,$1e,$29
11e5: db $34,$42,$51,$5e,$67,$6e,$73,$77
11ed: db $7a,$7c,$7d,$7e,$7f

; note dur%s
11f2: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
11fa: db $0a,$19,$28,$3c,$50,$64,$7d,$96
1202: db $aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff

; pitch table
120a: dw $085f
120c: dw $08de
120e: dw $0965
1210: dw $09f4
1212: dw $0a8c
1214: dw $0b2c
1216: dw $0bd6
1218: dw $0c8b
121a: dw $0d4a
121c: dw $0e14
121e: dw $0eea
1220: dw $0fcd
1222: dw $10be

; note lengths
1224: dw $0001 ; 80
1226: dw $0002 ; 81
1228: dw $0004 ; 82
122a: dw $0006 ; 83
122c: dw $0008 ; 84
122e: dw $000c ; 85
1230: dw $0010 ; 86
1232: dw $0018 ; 87
1234: dw $0020 ; 88
1236: dw $0030 ; 89
1238: dw $0040 ; 8a
123a: dw $0060 ; 8b
123c: dw $0080 ; 8c
123e: dw $00c0 ; 8d
1240: dw $0100 ; 8e
1242: dw $0180 ; 8f
1244: dw $0200 ; 90
1246: dw $0300 ; 91
1248: dw $0400 ; 92
124a: dw $0600 ; 93
124c: dw $0800 ; 94
124e: dw $0c00 ; 95
1250: dw $0003 ; 96
1252: dw $0015 ; 97
1254: dw $0024 ; 98
1256: dw $002a ; 99
1258: dw $002b ; 9a
124a: dw $0055 ; 9b
125c: dw $0056 ; 9c
125e: dw $00aa ; 9d
1260: dw $00ac ; 9e
1262: dw $01e0 ; 9f

1264: dw $126e
1266: dw $1270
1268: dw $1286
126a: dw $129c
126c: dw $12b2

126e: dw $0000

1270: dw $0002
1272: dw $0004
1274: dw $0006
1276: dw $0008
1278: dw $000c
127a: dw $0010
127c: dw $0018
127e: dw $0020
1280: dw $0030
1282: dw $0040
1284: dw $0060

1286: dw $0003
1288: dw $0006
128a: dw $0009
128c: dw $000c
128e: dw $0012
1290: dw $0018
1292: dw $0024
1294: dw $0030
1296: dw $0048
1298: dw $0060
129a: dw $0090

129c: dw $0004
129e: dw $0008
12a0: dw $000c
12a2: dw $0010
12a4: dw $0018
12a6: dw $0020
12a8: dw $0030
12aa: dw $0040
12ac: dw $0060
12ae: dw $0080
12b0: dw $00c0

12b2: dw $0006
12b4: dw $000c
12b6: dw $0012
12b8: dw $0018
12ba: dw $0024
12bc: dw $0030
12be: dw $0048
12c0: dw $0060
12c2: dw $0090
12c4: dw $00c0
12c6: dw $0120

12c8: e4 f4     mov   a,$f4
12ca: 68 99     cmp   a,#$99
12cc: f0 01     beq   $12cf
12ce: 6f        ret

12cf: e8 aa     mov   a,#$aa
12d1: c4 f4     mov   $f4,a
12d3: e8 bb     mov   a,#$bb
12d5: c4 f5     mov   $f5,a
12d7: e4 f4     mov   a,$f4
12d9: 68 cc     cmp   a,#$cc
12db: d0 fa     bne   $12d7
12dd: 2f 1b     bra   $12fa
12df: eb f4     mov   y,$f4
12e1: d0 fc     bne   $12df
12e3: 7e f4     cmp   y,$f4
12e5: d0 0d     bne   $12f4
12e7: e4 f5     mov   a,$f5
12e9: cb f4     mov   $f4,y
12eb: d7 0a     mov   ($0a)+y,a
12ed: fc        inc   y
12ee: d0 f3     bne   $12e3
12f0: ab 0b     inc   $0b
12f2: 2f ef     bra   $12e3
12f4: 10 ed     bpl   $12e3
12f6: 7e f4     cmp   y,$f4
12f8: 10 e9     bpl   $12e3
12fa: e4 f6     mov   a,$f6
12fc: eb f7     mov   y,$f7
12fe: da 0a     movw  $0a,ya
1300: eb f4     mov   y,$f4
1302: e4 f5     mov   a,$f5
1304: cb f4     mov   $f4,y
1306: d0 d7     bne   $12df
1308: cd 31     mov   x,#$31
130a: d8 f1     mov   $f1,x
130c: e8 00     mov   a,#$00
130e: 6f        ret
