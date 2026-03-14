0360: 20        clrp
0361: cd cf     mov   x,#$cf
0363: bd        mov   sp,x
0364: e8 00     mov   a,#$00
0366: 5d        mov   x,a
0367: af        mov   (x)+,a
0368: c8 f0     cmp   x,#$f0
036a: d0 fb     bne   $0367
036c: 5d        mov   x,a
036d: d5 00 01  mov   $0100+x,a
0370: d5 00 02  mov   $0200+x,a
0373: c8 5f     cmp   x,#$5f
0375: b0 03     bcs   $037a
0377: d5 00 03  mov   $0300+x,a
037a: 3d        inc   x
037b: d0 f0     bne   $036d
037d: bc        inc   a
037e: 3f 3d 0c  call  $0c3d
0381: a2 53     set5  $53
0383: e8 54     mov   a,#$54
0385: 8d 5d     mov   y,#$5d
0387: cb f2     mov   $f2,y
0389: c4 f3     mov   $f3,a
038b: e8 90     mov   a,#$90
038d: c4 f1     mov   $f1,a
038f: e8 10     mov   a,#$10
0391: c4 fa     mov   $fa,a
0393: c4 fb     mov   $fb,a
0395: c4 5d     mov   $5d,a
0397: e8 83     mov   a,#$83
0399: c4 f1     mov   $f1,a
039b: 8d 0a     mov   y,#$0a
039d: ad 05     cmp   y,#$05
039f: f0 02     beq   $03a3
03a1: b0 03     bcs   $03a6
03a3: e3 57 0c  bbs7  $57,$03b2
03a6: f6 3c 04  mov   a,$043c+y
03a9: c4 f2     mov   $f2,a
03ab: f6 46 04  mov   a,$0446+y
03ae: 5d        mov   x,a
03af: e6        mov   a,(x)
03b0: c4 f3     mov   $f3,a
03b2: fe e9     dbnz  y,$039d
03b4: cb 32     mov   $32,y
03b6: cb 33     mov   $33,y
03b8: e4 1a     mov   a,$1a
03ba: 44 1b     eor   a,$1b
03bc: 5c        lsr   a
03bd: 5c        lsr   a
03be: ed        notc
03bf: 6b 1a     ror   $1a
03c1: 6b 1b     ror   $1b
03c3: eb fe     mov   y,$fe
03c5: f0 fc     beq   $03c3
03c7: 6d        push  y
03c8: e4 77     mov   a,$77
03ca: f0 0b     beq   $03d7
03cc: cf        mul   ya
03cd: 60        clrc
03ce: 84 79     adc   a,$79
03d0: c4 79     mov   $79,a
03d2: 90 03     bcc   $03d7
03d4: 5f 51 04  jmp   $0451

03d7: ee        pop   y
03d8: e4 78     mov   a,$78
03da: f0 0b     beq   $03e7
03dc: cf        mul   ya
03dd: 60        clrc
03de: 84 7a     adc   a,$7a
03e0: c4 7a     mov   $7a,a
03e2: 90 03     bcc   $03e7
03e4: 5f 7d 04  jmp   $047d

03e7: eb fd     mov   y,$fd
03e9: f0 fc     beq   $03e7
03eb: 6d        push  y
03ec: e8 f0     mov   a,#$f0
03ee: cf        mul   ya
03ef: 60        clrc
03f0: 84 1d     adc   a,$1d
03f2: c4 1d     mov   $1d,a
03f4: 90 0a     bcc   $0400
03f6: 3f a9 04  call  $04a9
03f9: 69 58 57  cmp   ($57),($58)
03fc: f0 02     beq   $0400
03fe: ab 57     inc   $57
0400: ee        pop   y
0401: e4 5d     mov   a,$5d
0403: cf        mul   ya
0404: 60        clrc
0405: 84 5b     adc   a,$5b
0407: c4 5b     mov   $5b,a
0409: 90 0f     bcc   $041a
040b: 3f c0 07  call  $07c0
040e: cd 00     mov   x,#$00
0410: e4 f4     mov   a,$f4
0412: 64 f4     cmp   a,$f4
0414: d0 fa     bne   $0410
0416: d4 00     mov   $00+x,a
0418: 2f 81     bra   $039b
041a: e4 04     mov   a,$04
041c: f0 fa     beq   $0418
041e: cd 00     mov   x,#$00
0420: 8f 01 34  mov   $34,#$01
0423: f4 22     mov   a,$22+x
0425: f0 03     beq   $042a
0427: 3f bd 0f  call  $0fbd
042a: 3d        inc   x
042b: 3d        inc   x
042c: 0b 34     asl   $34
042e: f4 22     mov   a,$22+x
0430: f0 03     beq   $0435
0432: 3f bd 0f  call  $0fbd
0435: 3d        inc   x
0436: 3d        inc   x
0437: 0b 34     asl   $34
0439: d0 e8     bne   $0423
043b: 2f db     bra   $0418
043d: 2c 3c 0d  rol   $0d3c
0440: 4d        push  x
0441: 6c 4c 5c  ror   $5c4c
0444: 3d        inc   x
0445: 2d        push  a
0446: 5c        lsr   a
0447: 6b 6d     ror   $6d
0449: 59        eor   (x),(y)
044a: 55 53 32  eor   a,$3253+x
044d: 0e 54 56  tset1 $5654
0450: 33 f8 48  bbc1  $f8,$049b
0453: 03 83 0b  bbs0  $83,$0461
0456: e4 7f     mov   a,$7f
0458: 8d 00     mov   y,#$00
045a: 60        clrc
045b: 7a 7b     addw  ya,$7b
045d: da 7b     movw  $7b,ya
045f: 2f 07     bra   $0468
0461: 80        setc
0462: ba 7b     movw  ya,$7b
0464: 9a 7f     subw  ya,$7f
0466: da 7b     movw  $7b,ya
0468: eb 7b     mov   y,$7b
046a: f5 d7 06  mov   a,$06d7+x
046d: 08 02     or    a,#$02
046f: da f2     movw  $f2,ya
0471: eb 7c     mov   y,$7c
0473: f5 d7 06  mov   a,$06d7+x
0476: 08 03     or    a,#$03
0478: da f2     movw  $f2,ya
047a: 5f d7 03  jmp   $03d7

047d: f8 49     mov   x,$49
047f: 23 83 0b  bbs1  $83,$048d
0482: e4 81     mov   a,$81
0484: 8d 00     mov   y,#$00
0486: 60        clrc
0487: 7a 7d     addw  ya,$7d
0489: da 7d     movw  $7d,ya
048b: 2f 07     bra   $0494
048d: 80        setc
048e: ba 7d     movw  ya,$7d
0490: 9a 81     subw  ya,$81
0492: da 7d     movw  $7d,ya
0494: eb 7d     mov   y,$7d
0496: f5 d7 06  mov   a,$06d7+x
0499: 08 02     or    a,#$02
049b: da f2     movw  $f2,ya
049d: eb 7e     mov   y,$7e
049f: f5 d7 06  mov   a,$06d7+x
04a2: 08 03     or    a,#$03
04a4: da f2     movw  $f2,ya
04a6: 5f e7 03  jmp   $03e7

04a9: f8 48     mov   x,$48
04ab: f4 38     mov   a,$38+x
04ad: 24 4e     and   a,$4e
04af: f0 1f     beq   $04d0
04b1: f8 48     mov   x,$48
04b3: 8f 7c f2  mov   $f2,#$7c
04b6: f4 38     mov   a,$38+x
04b8: 24 f3     and   a,$f3
04ba: f0 1c     beq   $04d8
04bc: f5 d7 06  mov   a,$06d7+x
04bf: 08 08     or    a,#$08
04c1: c4 f2     mov   $f2,a
04c3: e4 f3     mov   a,$f3
04c5: d0 11     bne   $04d8
04c7: e8 7f     mov   a,#$7f
04c9: d4 39     mov   $39+x,a
04cb: 8f 00 77  mov   $77,#$00
04ce: 2f 08     bra   $04d8
04d0: f8 49     mov   x,$49
04d2: f4 38     mov   a,$38+x
04d4: 24 4e     and   a,$4e
04d6: f0 3b     beq   $0513
04d8: f8 49     mov   x,$49
04da: f4 38     mov   a,$38+x
04dc: 24 4e     and   a,$4e
04de: f0 1d     beq   $04fd
04e0: f8 49     mov   x,$49
04e2: 8f 7c f2  mov   $f2,#$7c
04e5: f4 38     mov   a,$38+x
04e7: 24 f3     and   a,$f3
04e9: f0 12     beq   $04fd
04eb: f5 d7 06  mov   a,$06d7+x
04ee: 08 08     or    a,#$08
04f0: c4 f2     mov   $f2,a
04f2: e4 f3     mov   a,$f3
04f4: d0 07     bne   $04fd
04f6: e8 7f     mov   a,#$7f
04f8: d4 39     mov   $39+x,a
04fa: 8f 00 78  mov   $78,#$00
04fd: e4 f6     mov   a,$f6
04ff: c4 02     mov   $02,a
0501: e4 f5     mov   a,$f5
0503: c4 f5     mov   $f5,a
0505: 64 f5     cmp   a,$f5
0507: d0 f4     bne   $04fd
0509: c4 01     mov   $01,a
050b: eb 09     mov   y,$09
050d: c4 09     mov   $09,a
050f: 7e 01     cmp   y,$01
0511: d0 01     bne   $0514
0513: 6f        ret

0514: 8f 00 84  mov   $84,#$00
0517: 68 80     cmp   a,#$80
0519: 90 08     bcc   $0523
051b: 58 0f 02  eor   $02,#$0f
051e: 28 7f     and   a,#$7f
0520: 8f c3 84  mov   $84,#$c3
0523: 5c        lsr   a
0524: fd        mov   y,a
0525: f8 48     mov   x,$48
0527: f4 39     mov   a,$39+x
0529: f8 49     mov   x,$49
052b: 52 83     clr2  $83
052d: 74 39     cmp   a,$39+x
052f: 90 04     bcc   $0535
0531: 42 83     set2  $83
0533: f8 48     mov   x,$48
0535: dd        mov   a,y
0536: 74 39     cmp   a,$39+x
0538: b0 54     bcs   $058e
053a: 53 83 05  bbc2  $83,$0542
053d: 8f 00 77  mov   $77,#$00
0540: 2f 03     bra   $0545
0542: 8f 00 78  mov   $78,#$00
0545: f4 38     mov   a,$38+x
0547: 8f 5c f2  mov   $f2,#$5c
054a: c4 f3     mov   $f3,a
054c: e8 01     mov   a,#$01
054e: d4 85     mov   $85+x,a
0550: dd        mov   a,y
0551: d4 39     mov   $39+x,a
0553: 9c        dec   a
0554: 1c        asl   a
0555: 1c        asl   a
0556: c4 14     mov   $14,a
0558: 60        clrc
0559: f5 50 02  mov   a,$0250+x
055c: 84 14     adc   a,$14
055e: d4 21     mov   $21+x,a
0560: f5 51 02  mov   a,$0251+x
0563: 90 01     bcc   $0566
0565: bc        inc   a
0566: d4 22     mov   $22+x,a
0568: e4 02     mov   a,$02
056a: 5c        lsr   a
056b: 5c        lsr   a
056c: 28 3c     and   a,#$3c
056e: fd        mov   y,a
056f: f5 d7 06  mov   a,$06d7+x
0572: da f2     movw  $f2,ya
0574: e4 02     mov   a,$02
0576: 1c        asl   a
0577: 1c        asl   a
0578: 28 3c     and   a,#$3c
057a: 04 84     or    a,$84
057c: fd        mov   y,a
057d: f5 d7 06  mov   a,$06d7+x
0580: bc        inc   a
0581: da f2     movw  $f2,ya
0583: 8f 7c f2  mov   $f2,#$7c
0586: c4 f3     mov   $f3,a
0588: 8f 5c f2  mov   $f2,#$5c
058b: 8f 00 f3  mov   $f3,#$00
058e: 6f        ret

058f: 6f        ret

; handle a note vcmd (80-df)
0590: ad ca     cmp   y,#$ca
0592: 90 05     bcc   $0599
; vcmds ca-cd - percussion note
0594: 3f 95 09  call  $0995
0597: 8d a4     mov   y,#$a4
; vcmds 80-c7,c8,c9 - note/tie/rest
0599: ad c8     cmp   y,#$c8
059b: b0 f2     bcs   $058f
; vcmds 80-c7 - note (note number in Y)
059d: dd        mov   a,y
059e: 28 7f     and   a,#$7f
05a0: 60        clrc
05a1: 84 5a     adc   a,$5a
05a3: 60        clrc
05a4: 95 40 03  adc   a,$0340+x
05a7: d5 c1 02  mov   $02c1+x,a
05aa: f5 e1 02  mov   a,$02e1+x
05ad: d5 c0 02  mov   $02c0+x,a
05b0: f5 21 03  mov   a,$0321+x
05b3: 5c        lsr   a
05b4: e8 00     mov   a,#$00
05b6: 7c        ror   a
05b7: d5 10 03  mov   $0310+x,a
05ba: e8 00     mov   a,#$00
05bc: d4 c5     mov   $c5+x,a
05be: d5 96 00  mov   $0096+x,a
05c1: e4 4e     mov   a,$4e
05c3: 24 34     and   a,$34
05c5: f0 05     beq   $05cc
05c7: 09 34 31  or    ($31),($34)
05ca: 2f 12     bra   $05de
05cc: e4 34     mov   a,$34
05ce: 24 76     and   a,$76
05d0: d0 0c     bne   $05de
05d2: 09 34 32  or    ($32),($34)
05d5: e4 34     mov   a,$34
05d7: 24 37     and   a,$37
05d9: d0 03     bne   $05de
05db: 09 34 68  or    ($68),($34)
05de: f5 f0 02  mov   a,$02f0+x
05e1: d4 b5     mov   $b5+x,a
05e3: f0 4a     beq   $062f
05e5: f5 f1 02  mov   a,$02f1+x
05e8: d4 b6     mov   $b6+x,a
05ea: f5 00 03  mov   a,$0300+x
05ed: d0 0a     bne   $05f9
05ef: f5 c1 02  mov   a,$02c1+x
05f2: 80        setc
05f3: b5 01 03  sbc   a,$0301+x
05f6: d5 c1 02  mov   $02c1+x,a
05f9: f5 01 03  mov   a,$0301+x
05fc: 60        clrc
05fd: 95 c1 02  adc   a,$02c1+x
0600: 28 7f     and   a,#$7f
0602: d5 e0 02  mov   $02e0+x,a
0605: 80        setc
0606: b5 c1 02  sbc   a,$02c1+x
0609: fb b5     mov   y,$b5+x
060b: 6d        push  y
060c: ce        pop   x
060d: ed        notc
060e: 6b 12     ror   $12
0610: 10 03     bpl   $0615
0612: 48 ff     eor   a,#$ff
0614: bc        inc   a
0615: 8d 00     mov   y,#$00
0617: 9e        div   ya,x
0618: 2d        push  a
0619: e8 00     mov   a,#$00
061b: 9e        div   ya,x
061c: ee        pop   y
061d: f8 35     mov   x,$35
061f: f3 12 06  bbc7  $12,$0628
0622: da 16     movw  $16,ya
0624: ba 0e     movw  ya,$0e
0626: 9a 16     subw  ya,$16
0628: d5 d0 02  mov   $02d0+x,a
062b: dd        mov   a,y
062c: d5 d1 02  mov   $02d1+x,a
062f: f5 c1 02  mov   a,$02c1+x
0632: c4 11     mov   $11,a
0634: f5 c0 02  mov   a,$02c0+x
0637: c4 10     mov   $10,a
0639: 8d 00     mov   y,#$00
063b: e4 11     mov   a,$11
063d: 80        setc
063e: a8 34     sbc   a,#$34
0640: b0 09     bcs   $064b
0642: e4 11     mov   a,$11
0644: 80        setc
0645: a8 13     sbc   a,#$13
0647: b0 06     bcs   $064f
0649: dc        dec   y
064a: 1c        asl   a
064b: 7a 10     addw  ya,$10
064d: da 10     movw  $10,ya
064f: 4d        push  x
0650: e4 11     mov   a,$11
0652: 1c        asl   a
0653: 8d 00     mov   y,#$00
0655: cd 18     mov   x,#$18
0657: 9e        div   ya,x
0658: 5d        mov   x,a
0659: f6 be 06  mov   a,$06be+y
065c: c4 17     mov   $17,a
065e: f6 bd 06  mov   a,$06bd+y
0661: c4 16     mov   $16,a
0663: f6 c0 06  mov   a,$06c0+y
0666: 2d        push  a
0667: f6 bf 06  mov   a,$06bf+y
066a: ee        pop   y
066b: 9a 16     subw  ya,$16
066d: eb 10     mov   y,$10
066f: cf        mul   ya
0670: dd        mov   a,y
0671: 8d 00     mov   y,#$00
0673: 7a 16     addw  ya,$16
0675: cb 17     mov   $17,y
0677: 1c        asl   a
0678: 2b 17     rol   $17
067a: c4 16     mov   $16,a
067c: 2f 04     bra   $0682
067e: 4b 17     lsr   $17
0680: 7c        ror   a
0681: 3d        inc   x
0682: c8 06     cmp   x,#$06
0684: d0 f8     bne   $067e
0686: c4 16     mov   $16,a
0688: ce        pop   x
0689: f5 20 02  mov   a,$0220+x
068c: eb 17     mov   y,$17
068e: cf        mul   ya
068f: da 18     movw  $18,ya
0691: f5 20 02  mov   a,$0220+x
0694: eb 16     mov   y,$16
0696: cf        mul   ya
0697: 6d        push  y
0698: f5 21 02  mov   a,$0221+x
069b: eb 16     mov   y,$16
069d: cf        mul   ya
069e: 7a 18     addw  ya,$18
06a0: da 18     movw  $18,ya
06a2: f5 21 02  mov   a,$0221+x
06a5: eb 17     mov   y,$17
06a7: cf        mul   ya
06a8: fd        mov   y,a
06a9: ae        pop   a
06aa: 7a 18     addw  ya,$18
06ac: da 18     movw  $18,ya
06ae: f5 d7 06  mov   a,$06d7+x
06b1: 08 02     or    a,#$02
06b3: eb 18     mov   y,$18
06b5: da f2     movw  $f2,ya
06b7: bc        inc   a
06b8: eb 19     mov   y,$19
06ba: da f2     movw  $f2,ya
06bc: 6f        ret

; pitch table
06bd: dw $085f
06bf: dw $08de
06c1: dw $0965
06c3: dw $09f4
06c5: dw $0a8c
06c7: dw $0b2c
06c9: dw $0bd6
06cb: dw $0c8b
06cd: dw $0d4a
06cf: dw $0e14
06d1: dw $0eea
06d3: dw $0fcd
06d5: dw $10be

; channel value table
06d7: dw $0000
06d9: dw $0010
06db: dw $0020
06dd: dw $0030
06df: dw $0040
06e1: dw $0050
06e3: dw $0060
06e5: dw $0070
06e7: dw $0080

06e9: 8d 00     mov   y,#$00
06eb: f7 1e     mov   a,($1e)+y
06ed: 3a 1e     incw  $1e
06ef: 2d        push  a
06f0: f7 1e     mov   a,($1e)+y
06f2: 3a 1e     incw  $1e
06f4: fd        mov   y,a
06f5: ae        pop   a
06f6: 6f        ret

06f7: 8f ff 08  mov   $08,#$ff
06fa: e4 51     mov   a,$51
06fc: d0 0a     bne   $0708
06fe: e4 4f     mov   a,$4f
0700: d0 2e     bne   $0730
0702: 8d 0a     mov   y,#$0a
0704: cb 4f     mov   $4f,y
0706: 2f 28     bra   $0730
0708: 9c        dec   a
0709: c4 51     mov   $51,a
070b: 8d 0c     mov   y,#$0c
070d: cb f2     mov   $f2,y
070f: c4 f3     mov   $f3,a
0711: 8d 1c     mov   y,#$1c
0713: cb f2     mov   $f2,y
0715: c4 f3     mov   $f3,a
0717: eb 6b     mov   y,$6b
0719: f0 07     beq   $0722
071b: dc        dec   y
071c: cb 6b     mov   $6b,y
071e: e8 2c     mov   a,#$2c
0720: da f2     movw  $f2,ya
0722: eb 6d     mov   y,$6d
0724: f0 07     beq   $072d
0726: dc        dec   y
0727: cb 6d     mov   $6d,y
0729: e8 3c     mov   a,#$3c
072b: da f2     movw  $f2,ya
072d: 5f cb 07  jmp   $07cb

; play song
0730: e4 4f     mov   a,$4f
0732: f0 05     beq   $0739
0734: 9c        dec   a
0735: c4 4f     mov   $4f,a
0737: d0 24     bne   $075d
0739: e4 00     mov   a,$00
073b: c4 08     mov   $08,a
073d: c4 04     mov   $04,a
073f: 1c        asl   a
0740: f0 1b     beq   $075d
0742: 5d        mov   x,a
0743: e8 00     mov   a,#$00
0745: c4 4a     mov   $4a,a
0747: c4 4b     mov   $4b,a
0749: c4 4d     mov   $4d,a
074b: c4 4c     mov   $4c,a
074d: c4 37     mov   $37,a
074f: c4 4e     mov   $4e,a
0751: f5 b5 10  mov   a,$10b5+x
0754: fd        mov   y,a
0755: f5 b4 10  mov   a,$10b4+x
0758: da 1e     movw  $1e,ya
075a: 8f 02 0c  mov   $0c,#$02
075d: e4 1c     mov   a,$1c
075f: 48 ff     eor   a,#$ff
0761: 0e 33 00  tset1 $0033
0764: e8 00     mov   a,#$00
0766: 8d 00     mov   y,#$00
0768: 5f 07 0c  jmp   $0c07

076b: cd 0e     mov   x,#$0e
076d: 8f 80 34  mov   $34,#$80
0770: e4 34     mov   a,$34
0772: d4 38     mov   $38+x,a
0774: d4 39     mov   $39+x,a
0776: e8 5f     mov   a,#$5f
0778: c4 51     mov   $51,a
077a: 8d 0c     mov   y,#$0c
077c: cb f2     mov   $f2,y
077e: c4 f3     mov   $f3,a
0780: 8d 1c     mov   y,#$1c
0782: cb f2     mov   $f2,y
0784: c4 f3     mov   $f3,a
0786: e8 00     mov   a,#$00
0788: d5 61 02  mov   $0261+x,a
078b: e8 0a     mov   a,#$0a
078d: 3f e3 09  call  $09e3
0790: d5 11 02  mov   $0211+x,a
0793: d5 e1 02  mov   $02e1+x,a
0796: d5 40 03  mov   $0340+x,a
0799: d5 f0 02  mov   $02f0+x,a
079c: d5 50 03  mov   $0350+x,a
079f: d4 c6     mov   $c6+x,a
07a1: d4 39     mov   $39+x,a
07a3: 1d        dec   x
07a4: 1d        dec   x
07a5: 4b 34     lsr   $34
07a7: d0 c7     bne   $0770
07a9: c4 64     mov   $64,a
07ab: c4 72     mov   $72,a
07ad: c4 5e     mov   $5e,a
07af: c4 5a     mov   $5a,a
07b1: c4 20     mov   $20,a
07b3: c4 69     mov   $69,a
07b5: c4 75     mov   $75,a
07b7: c4 76     mov   $76,a
07b9: 8f c0 63  mov   $63,#$c0
07bc: 8f 30 5d  mov   $5d,#$30
07bf: 6f        ret

07c0: eb 08     mov   y,$08
07c2: e4 00     mov   a,$00
07c4: 7e 00     cmp   y,$00
07c6: f0 03     beq   $07cb
07c8: 5f f7 06  jmp   $06f7

07cb: e4 04     mov   a,$04
07cd: f0 f0     beq   $07bf
07cf: e4 0c     mov   a,$0c
07d1: f0 53     beq   $0826
07d3: 6e 0c 95  dbnz  $0c,$076b
07d6: e8 00     mov   a,#$00
07d8: c4 4e     mov   $4e,a
07da: 3f e9 06  call  $06e9
07dd: d0 17     bne   $07f6
07df: fd        mov   y,a
07e0: d0 03     bne   $07e5
07e2: 5f f7 06  jmp   $06f7

07e5: 8b 20     dec   $20
07e7: 10 02     bpl   $07eb
07e9: c4 20     mov   $20,a
07eb: 3f e9 06  call  $06e9
07ee: f8 20     mov   x,$20
07f0: f0 e8     beq   $07da
07f2: da 1e     movw  $1e,ya
07f4: 2f e4     bra   $07da
07f6: da 18     movw  $18,ya
07f8: 8d 0f     mov   y,#$0f
07fa: f7 18     mov   a,($18)+y
07fc: d6 21 00  mov   $0021+y,a
07ff: dc        dec   y
0800: 10 f8     bpl   $07fa
0802: cd 00     mov   x,#$00
0804: 8f 01 34  mov   $34,#$01
0807: f4 22     mov   a,$22+x
0809: f0 0a     beq   $0815
080b: f5 11 02  mov   a,$0211+x
080e: d0 05     bne   $0815
0810: e8 00     mov   a,#$00
0812: 3f 95 09  call  $0995
0815: e8 00     mov   a,#$00
0817: d4 95     mov   $95+x,a
0819: d4 a5     mov   $a5+x,a
081b: d4 a6     mov   $a6+x,a
081d: bc        inc   a
081e: d4 85     mov   $85+x,a
0820: 3d        inc   x
0821: 3d        inc   x
0822: 0b 34     asl   $34
0824: d0 e1     bne   $0807
0826: cd 00     mov   x,#$00
0828: d8 68     mov   $68,x
082a: 8f 01 34  mov   $34,#$01
082d: d8 35     mov   $35,x
082f: f4 22     mov   a,$22+x
0831: d0 03     bne   $0836
0833: 5f b7 08  jmp   $08b7

0836: 9b 85     dec   $85+x
0838: d0 77     bne   $08b1
083a: e7 21     mov   a,($21+x)
083c: bb 21     inc   $21+x
083e: d0 02     bne   $0842
0840: bb 22     inc   $22+x
0842: fd        mov   y,a
0843: d0 27     bne   $086c
0845: f4 95     mov   a,$95+x
0847: f0 91     beq   $07da
0849: e4 4e     mov   a,$4e
084b: 24 34     and   a,$34
084d: d0 13     bne   $0862
084f: 3f 80 0b  call  $0b80
0852: 9b 95     dec   $95+x
0854: d0 e4     bne   $083a
0856: f5 30 02  mov   a,$0230+x
0859: d4 21     mov   $21+x,a
085b: f5 31 02  mov   a,$0231+x
085e: d4 22     mov   $22+x,a
0860: 2f d8     bra   $083a
0862: e8 00     mov   a,#$00
0864: d4 22     mov   $22+x,a
0866: e8 7f     mov   a,#$7f
0868: d4 39     mov   $39+x,a
086a: 2f 4b     bra   $08b7
086c: 30 25     bmi   $0893
086e: d5 00 02  mov   $0200+x,a
0871: e7 21     mov   a,($21+x)
0873: bb 21     inc   $21+x
0875: d0 02     bne   $0879
0877: bb 22     inc   $22+x
0879: fd        mov   y,a
087a: 30 17     bmi   $0893
087c: 2d        push  a
087d: 9f        xcn   a
087e: 28 07     and   a,#$07
0880: fd        mov   y,a
0881: f6 9e 10  mov   a,$109e+y
0884: d5 01 02  mov   $0201+x,a
0887: ae        pop   a
0888: 28 0f     and   a,#$0f
088a: fd        mov   y,a
088b: f6 a6 10  mov   a,$10a6+y
088e: d5 10 02  mov   $0210+x,a
0891: 2f a7     bra   $083a
0893: 68 ce     cmp   a,#$ce
0895: 90 05     bcc   $089c
0897: 3f 79 09  call  $0979
089a: 2f 9e     bra   $083a
089c: 3f 90 05  call  $0590
089f: f5 00 02  mov   a,$0200+x
08a2: d4 85     mov   $85+x,a
08a4: fd        mov   y,a
08a5: f5 01 02  mov   a,$0201+x
08a8: cf        mul   ya
08a9: dd        mov   a,y
08aa: d0 01     bne   $08ad
08ac: bc        inc   a
08ad: d4 86     mov   $86+x,a
08af: 2f 03     bra   $08b4
08b1: 3f ae 0e  call  $0eae
08b4: 3f 72 0d  call  $0d72
08b7: 3f 62 10  call  $1062
08ba: 3d        inc   x
08bb: 3d        inc   x
08bc: 0b 34     asl   $34
08be: f0 03     beq   $08c3
08c0: 5f 2d 08  jmp   $082d

08c3: fa 75 76  mov   ($76),($75)
08c6: e4 5e     mov   a,$5e
08c8: f0 0b     beq   $08d5
08ca: ba 60     movw  ya,$60
08cc: 7a 5c     addw  ya,$5c
08ce: 6e 5e 02  dbnz  $5e,$08d3
08d1: ba 5e     movw  ya,$5e
08d3: da 5c     movw  $5c,ya
08d5: e4 72     mov   a,$72
08d7: f0 15     beq   $08ee
08d9: ba 6e     movw  ya,$6e
08db: 7a 6a     addw  ya,$6a
08dd: da 6a     movw  $6a,ya
08df: ba 70     movw  ya,$70
08e1: 7a 6c     addw  ya,$6c
08e3: 6e 72 06  dbnz  $72,$08ec
08e6: ba 72     movw  ya,$72
08e8: da 6a     movw  $6a,ya
08ea: eb 74     mov   y,$74
08ec: da 6c     movw  $6c,ya
08ee: e4 64     mov   a,$64
08f0: f0 0e     beq   $0900
08f2: ba 66     movw  ya,$66
08f4: 7a 62     addw  ya,$62
08f6: 6e 64 02  dbnz  $64,$08fb
08f9: ba 64     movw  ya,$64
08fb: da 62     movw  $62,ya
08fd: 8f ff 68  mov   $68,#$ff
0900: cd 00     mov   x,#$00
0902: 8f 01 34  mov   $34,#$01
0905: f4 22     mov   a,$22+x
0907: f0 03     beq   $090c
0909: 3f d8 0d  call  $0dd8
090c: 3d        inc   x
090d: 3d        inc   x
090e: 0b 34     asl   $34
0910: d0 f3     bne   $0905
0912: 6f        ret

; vcmd dispatch table
0913: dw $0995	; ce - set instrument
0915: dw $09e3	; cf - pan
0917: dw $09f1	; d0 - pan fade
0919: dw $0a28	; d1 - vibrato on
091b: dw $0a40	; d2 - vibrato off
091d: dw $0a5b	; d3 - master volume
091f: dw $0a60	; d4 - master volume fade
0921: dw $0a90	; d5 - tempo
0923: dw $0a98	; d6 - tempo fade
0925: dw $0ac8	; d7 - global transpose
0927: dw $0acb	; d8 - per-voice transpose
0929: dw $0acf	; d9 - set channel ASDR
092b: dw $0ad7	; da - set channel ASDR envelope
092d: dw $0b18	; db - volume
092f: dw $0b21	; dc - volume fade
0931: dw $0b5c	; dd - call subroutine
0933: dw $0a4b	; de - vibrato fade
0935: dw $0aee	; df - pitch envelope (release)
0937: dw $0af2	; e0 - pitch envelope (attack)
0939: dw $0b14	; e1 - pitch envelope off
093b: dw $0b58	; e2 - tuning
093d: dw $0b8b	; e3 - echo vbits/volume
093f: dw $0c07	; e4 - disable echo
0941: dw $0c0e	; e5 - echo params
0943: dw $0baa	; e6 - echo volume fade
0945: dw $0d8c	; e7 - pitch slide
0947: dw $0c7f	; e8 - set perc patch base
0949: dw $0c82	; e9
094b: dw $0cc5	; ea
094d: dw $0adf	; eb - set FIR
094f: dw $0cb1	; ec
0951: dw $0cd5	; ed
0953: dw $0cd9	; ee
0955: dw $0ce4	; ef

; vcmd lengths
0957: db $01,$01,$02,$03,$00,$01,$02,$01 ; ce-d5
095f: db $02,$01,$01,$01,$01,$01,$02,$03 ; d6-dd
0967: db $01,$03,$03,$00,$01,$03,$00,$03 ; de-e5
096f: db $03,$03,$01,$01,$01,$01,$02,$00 ; e6-ed
0977: db $00,$02			 ; ee-ef

; dispatch vcmd
0979: 1c        asl   a
097a: fd        mov   y,a
097b: f6 78 08  mov   a,$0878+y
097e: 2d        push  a
097f: f6 77 08  mov   a,$0877+y
0982: 2d        push  a
0983: dd        mov   a,y
0984: 5c        lsr   a
0985: fd        mov   y,a
0986: f6 09 09  mov   a,$0909+y
0989: f0 09     beq   $0994
098b: e7 21     mov   a,($21+x)
098d: bb 21     inc   $21+x
098f: d0 02     bne   $0993
0991: bb 22     inc   $22+x
0993: fd        mov   y,a
0994: 6f        ret

; vcmd ce - set instrument
0995: d5 11 02  mov   $0211+x,a
0998: fd        mov   y,a
0999: 10 03     bpl   $099e
099b: 80        setc
099c: a8 ca     sbc   a,#$ca
099e: 8d 06     mov   y,#$06
09a0: cf        mul   ya
09a1: da 16     movw  $16,ya
09a3: 60        clrc
09a4: 98 5c 16  adc   $16,#$5c
09a7: 98 53 17  adc   $17,#$53
09aa: 4d        push  x
09ab: f5 d7 06  mov   a,$06d7+x
09ae: 08 04     or    a,#$04
09b0: 5d        mov   x,a
09b1: 8d 00     mov   y,#$00
09b3: f7 16     mov   a,($16)+y
09b5: 10 0e     bpl   $09c5
09b7: 28 1f     and   a,#$1f
09b9: 38 20 53  and   $53,#$20
09bc: 0e 53 00  tset1 $0053
09bf: 09 34 54  or    ($54),($34)
09c2: dd        mov   a,y
09c3: 2f 07     bra   $09cc
09c5: e4 34     mov   a,$34
09c7: 4e 54 00  tclr1 $0054
09ca: f7 16     mov   a,($16)+y
09cc: d8 f2     mov   $f2,x
09ce: c4 f3     mov   $f3,a
09d0: 3d        inc   x
09d1: fc        inc   y
09d2: ad 04     cmp   y,#$04
09d4: d0 f4     bne   $09ca
09d6: ce        pop   x
09d7: f7 16     mov   a,($16)+y
09d9: d5 21 02  mov   $0221+x,a
09dc: fc        inc   y
09dd: f7 16     mov   a,($16)+y
09df: d5 20 02  mov   $0220+x,a
09e2: 6f        ret

; vcmd cf - pan
09e3: d5 b1 02  mov   $02b1+x,a
09e6: 28 1f     and   a,#$1f
09e8: d5 91 02  mov   $0291+x,a
09eb: e8 00     mov   a,#$00
09ed: d5 90 02  mov   $0290+x,a
09f0: 6f        ret

; vcmd d0 - pan fade
09f1: d4 a6     mov   $a6+x,a
09f3: 2d        push  a
09f4: e7 21     mov   a,($21+x)
09f6: bb 21     inc   $21+x
09f8: d0 02     bne   $09fc
09fa: bb 22     inc   $22+x
09fc: fd        mov   y,a
09fd: d5 b0 02  mov   $02b0+x,a
0a00: 80        setc
0a01: b5 91 02  sbc   a,$0291+x
0a04: ce        pop   x
0a05: ed        notc
0a06: 6b 12     ror   $12
0a08: 10 03     bpl   $0a0d
0a0a: 48 ff     eor   a,#$ff
0a0c: bc        inc   a
0a0d: 8d 00     mov   y,#$00
0a0f: 9e        div   ya,x
0a10: 2d        push  a
0a11: e8 00     mov   a,#$00
0a13: 9e        div   ya,x
0a14: ee        pop   y
0a15: f8 35     mov   x,$35
0a17: f3 12 06  bbc7  $12,$0a20
0a1a: da 16     movw  $16,ya
0a1c: ba 0e     movw  ya,$0e
0a1e: 9a 16     subw  ya,$16
0a20: d5 a0 02  mov   $02a0+x,a
0a23: dd        mov   a,y
0a24: d5 a1 02  mov   $02a1+x,a
0a27: 6f        ret

; vcmd d1 - vibrato on
0a28: d5 20 03  mov   $0320+x,a
0a2b: e7 21     mov   a,($21+x)
0a2d: bb 21     inc   $21+x
0a2f: d0 02     bne   $0a33
0a31: bb 22     inc   $22+x
0a33: fd        mov   y,a
0a34: d5 11 03  mov   $0311+x,a
0a37: e7 21     mov   a,($21+x)
0a39: bb 21     inc   $21+x
0a3b: d0 02     bne   $0a3f
0a3d: bb 22     inc   $22+x
0a3f: fd        mov   y,a
; vcmd d2 - vibrato off
0a40: d4 c6     mov   $c6+x,a
0a42: d5 31 03  mov   $0331+x,a
0a45: e8 00     mov   a,#$00
0a47: d5 21 03  mov   $0321+x,a
0a4a: 6f        ret

; vcmd de - vibrato fade
0a4b: d5 21 03  mov   $0321+x,a
0a4e: 2d        push  a
0a4f: 8d 00     mov   y,#$00
0a51: f4 c6     mov   a,$c6+x
0a53: ce        pop   x
0a54: 9e        div   ya,x
0a55: f8 35     mov   x,$35
0a57: d5 30 03  mov   $0330+x,a
0a5a: 6f        ret

; vcmd d3 - master volume
0a5b: e8 00     mov   a,#$00
0a5d: da 62     movw  $62,ya
0a5f: 6f        ret

; vcmd d4 - master volume fade
0a60: c4 64     mov   $64,a
0a62: e7 21     mov   a,($21+x)
0a64: bb 21     inc   $21+x
0a66: d0 02     bne   $0a6a
0a68: bb 22     inc   $22+x
0a6a: fd        mov   y,a
0a6b: c4 65     mov   $65,a
0a6d: 80        setc
0a6e: a4 63     sbc   a,$63
0a70: f8 64     mov   x,$64
0a72: ed        notc
0a73: 6b 12     ror   $12
0a75: 10 03     bpl   $0a7a
0a77: 48 ff     eor   a,#$ff
0a79: bc        inc   a
0a7a: 8d 00     mov   y,#$00
0a7c: 9e        div   ya,x
0a7d: 2d        push  a
0a7e: e8 00     mov   a,#$00
0a80: 9e        div   ya,x
0a81: ee        pop   y
0a82: f8 35     mov   x,$35
0a84: f3 12 06  bbc7  $12,$0a8d
0a87: da 16     movw  $16,ya
0a89: ba 0e     movw  ya,$0e
0a8b: 9a 16     subw  ya,$16
0a8d: da 66     movw  $66,ya
0a8f: 6f        ret

; vcmd d5 - tempo
0a90: e8 00     mov   a,#$00
0a92: cc 4f 03  mov   $034f,y
0a95: da 5c     movw  $5c,ya
0a97: 6f        ret

; vcmd d6 - tempo fade
0a98: c4 5e     mov   $5e,a
0a9a: e7 21     mov   a,($21+x)
0a9c: bb 21     inc   $21+x
0a9e: d0 02     bne   $0aa2
0aa0: bb 22     inc   $22+x
0aa2: fd        mov   y,a
0aa3: c4 5f     mov   $5f,a
0aa5: 80        setc
0aa6: a4 5d     sbc   a,$5d
0aa8: f8 5e     mov   x,$5e
0aaa: ed        notc
0aab: 6b 12     ror   $12
0aad: 10 03     bpl   $0ab2
0aaf: 48 ff     eor   a,#$ff
0ab1: bc        inc   a
0ab2: 8d 00     mov   y,#$00
0ab4: 9e        div   ya,x
0ab5: 2d        push  a
0ab6: e8 00     mov   a,#$00
0ab8: 9e        div   ya,x
0ab9: ee        pop   y
0aba: f8 35     mov   x,$35
0abc: f3 12 06  bbc7  $12,$0ac5
0abf: da 16     movw  $16,ya
0ac1: ba 0e     movw  ya,$0e
0ac3: 9a 16     subw  ya,$16
0ac5: da 60     movw  $60,ya
0ac7: 6f        ret

; vcmd d7 - global transpose
0ac8: c4 5a     mov   $5a,a
0aca: 6f        ret

; vcmd d8 - per-voice transpose
0acb: d5 40 03  mov   $0340+x,a
0ace: 6f        ret

; vcmd d9 - set channel ASDR
0acf: f5 d7 06  mov   a,$06d7+x
0ad2: 08 05     or    a,#$05
0ad4: da f2     movw  $f2,ya
0ad6: 6f        ret

; vcmd da - set channel ASDR envelope
0ad7: f5 d7 06  mov   a,$06d7+x
0ada: 08 06     or    a,#$06
0adc: da f2     movw  $f2,ya
0ade: 6f        ret

; vcmd eb - set FIR
0adf: f5 d7 06  mov   a,$06d7+x
0ae2: 08 05     or    a,#$05
0ae4: c4 f2     mov   $f2,a
0ae6: 8f 7f f3  mov   $f3,#$7f
0ae9: bc        inc   a
0aea: bc        inc   a
0aeb: da f2     movw  $f2,ya
0aed: 6f        ret

; vcmd df - pitch envelope (release)
0aee: e8 01     mov   a,#$01
0af0: 2f 02     bra   $0af4
; vcmd e0 - pitch envelope (attack)
0af2: e8 00     mov   a,#$00
0af4: d5 00 03  mov   $0300+x,a
0af7: dd        mov   a,y
0af8: d5 f1 02  mov   $02f1+x,a
0afb: e7 21     mov   a,($21+x)
0afd: bb 21     inc   $21+x
0aff: d0 02     bne   $0b03
0b01: bb 22     inc   $22+x
0b03: fd        mov   y,a
0b04: d5 f0 02  mov   $02f0+x,a
0b07: e7 21     mov   a,($21+x)
0b09: bb 21     inc   $21+x
0b0b: d0 02     bne   $0b0f
0b0d: bb 22     inc   $22+x
0b0f: fd        mov   y,a
0b10: d5 01 03  mov   $0301+x,a
0b13: 6f        ret

; vcmd e1 - pitch envelope off
0b14: d5 f0 02  mov   $02f0+x,a
0b17: 6f        ret

; vcmd db - volume
0b18: d5 61 02  mov   $0261+x,a
0b1b: e8 00     mov   a,#$00
0b1d: d5 60 02  mov   $0260+x,a
0b20: 6f        ret

; vcmd dc - volume fade
0b21: d4 a5     mov   $a5+x,a
0b23: 2d        push  a
0b24: e7 21     mov   a,($21+x)
0b26: bb 21     inc   $21+x
0b28: d0 02     bne   $0b2c
0b2a: bb 22     inc   $22+x
0b2c: fd        mov   y,a
0b2d: d5 80 02  mov   $0280+x,a
0b30: 80        setc
0b31: b5 61 02  sbc   a,$0261+x
0b34: ce        pop   x
0b35: ed        notc
0b36: 6b 12     ror   $12
0b38: 10 03     bpl   $0b3d
0b3a: 48 ff     eor   a,#$ff
0b3c: bc        inc   a
0b3d: 8d 00     mov   y,#$00
0b3f: 9e        div   ya,x
0b40: 2d        push  a
0b41: e8 00     mov   a,#$00
0b43: 9e        div   ya,x
0b44: ee        pop   y
0b45: f8 35     mov   x,$35
0b47: f3 12 06  bbc7  $12,$0b50
0b4a: da 16     movw  $16,ya
0b4c: ba 0e     movw  ya,$0e
0b4e: 9a 16     subw  ya,$16
0b50: d5 70 02  mov   $0270+x,a
0b53: dd        mov   a,y
0b54: d5 71 02  mov   $0271+x,a
0b57: 6f        ret

; vcmd e2 - tuning
0b58: d5 e1 02  mov   $02e1+x,a
0b5b: 6f        ret

; vcmd dd - call subroutine
0b5c: d5 40 02  mov   $0240+x,a
0b5f: e7 21     mov   a,($21+x)
0b61: bb 21     inc   $21+x
0b63: d0 02     bne   $0b67
0b65: bb 22     inc   $22+x
0b67: fd        mov   y,a
0b68: d5 41 02  mov   $0241+x,a
0b6b: e7 21     mov   a,($21+x)
0b6d: bb 21     inc   $21+x
0b6f: d0 02     bne   $0b73
0b71: bb 22     inc   $22+x
0b73: fd        mov   y,a
0b74: d4 95     mov   $95+x,a
0b76: f4 21     mov   a,$21+x
0b78: d5 30 02  mov   $0230+x,a
0b7b: f4 22     mov   a,$22+x
0b7d: d5 31 02  mov   $0231+x,a
0b80: f5 40 02  mov   a,$0240+x
0b83: d4 21     mov   $21+x,a
0b85: f5 41 02  mov   a,$0241+x
0b88: d4 22     mov   $22+x,a
0b8a: 6f        ret

; vcmd e3 - echo vbits/volume
0b8b: c4 55     mov   $55,a
0b8d: e7 21     mov   a,($21+x)
0b8f: bb 21     inc   $21+x
0b91: d0 02     bne   $0b95
0b93: bb 22     inc   $22+x
0b95: fd        mov   y,a
0b96: e8 00     mov   a,#$00
0b98: da 6a     movw  $6a,ya
0b9a: e7 21     mov   a,($21+x)
0b9c: bb 21     inc   $21+x
0b9e: d0 02     bne   $0ba2
0ba0: bb 22     inc   $22+x
0ba2: fd        mov   y,a
0ba3: e8 00     mov   a,#$00
0ba5: da 6c     movw  $6c,ya
0ba7: b2 53     clr5  $53
0ba9: 6f        ret

; vcmd e6 - echo volume fade
0baa: c4 72     mov   $72,a
0bac: e7 21     mov   a,($21+x)
0bae: bb 21     inc   $21+x
0bb0: d0 02     bne   $0bb4
0bb2: bb 22     inc   $22+x
0bb4: fd        mov   y,a
0bb5: c4 73     mov   $73,a
0bb7: 80        setc
0bb8: a4 6b     sbc   a,$6b
0bba: f8 72     mov   x,$72
0bbc: ed        notc
0bbd: 6b 12     ror   $12
0bbf: 10 03     bpl   $0bc4
0bc1: 48 ff     eor   a,#$ff
0bc3: bc        inc   a
0bc4: 8d 00     mov   y,#$00
0bc6: 9e        div   ya,x
0bc7: 2d        push  a
0bc8: e8 00     mov   a,#$00
0bca: 9e        div   ya,x
0bcb: ee        pop   y
0bcc: f8 35     mov   x,$35
0bce: f3 12 06  bbc7  $12,$0bd7
0bd1: da 16     movw  $16,ya
0bd3: ba 0e     movw  ya,$0e
0bd5: 9a 16     subw  ya,$16
0bd7: da 6e     movw  $6e,ya
0bd9: e7 21     mov   a,($21+x)
0bdb: bb 21     inc   $21+x
0bdd: d0 02     bne   $0be1
0bdf: bb 22     inc   $22+x
0be1: fd        mov   y,a
0be2: c4 74     mov   $74,a
0be4: 80        setc
0be5: a4 6d     sbc   a,$6d
0be7: f8 72     mov   x,$72
0be9: ed        notc
0bea: 6b 12     ror   $12
0bec: 10 03     bpl   $0bf1
0bee: 48 ff     eor   a,#$ff
0bf0: bc        inc   a
0bf1: 8d 00     mov   y,#$00
0bf3: 9e        div   ya,x
0bf4: 2d        push  a
0bf5: e8 00     mov   a,#$00
0bf7: 9e        div   ya,x
0bf8: ee        pop   y
0bf9: f8 35     mov   x,$35
0bfb: f3 12 06  bbc7  $12,$0c04
0bfe: da 16     movw  $16,ya
0c00: ba 0e     movw  ya,$0e
0c02: 9a 16     subw  ya,$16
0c04: da 70     movw  $70,ya
0c06: 6f        ret

; vcmd e4 - disable echo
0c07: da 6a     movw  $6a,ya
0c09: da 6c     movw  $6c,ya
0c0b: a2 53     set5  $53
0c0d: 6f        ret

; vcmd e5 - set echo params
0c0e: 3f 3d 0c  call  $0c3d
0c11: e7 21     mov   a,($21+x)
0c13: bb 21     inc   $21+x
0c15: d0 02     bne   $0c19
0c17: bb 22     inc   $22+x
0c19: fd        mov   y,a
0c1a: c4 59     mov   $59,a
0c1c: e7 21     mov   a,($21+x)
0c1e: bb 21     inc   $21+x
0c20: d0 02     bne   $0c24
0c22: bb 22     inc   $22+x
0c24: fd        mov   y,a
0c25: 8d 08     mov   y,#$08
0c27: cf        mul   ya
0c28: 5d        mov   x,a
0c29: 8d 0f     mov   y,#$0f
0c2b: f5 7e 10  mov   a,$107e+x
0c2e: cb f2     mov   $f2,y
0c30: c4 f3     mov   $f3,a
0c32: 3d        inc   x
0c33: dd        mov   a,y
0c34: 60        clrc
0c35: 88 10     adc   a,#$10
0c37: fd        mov   y,a
0c38: 10 f1     bpl   $0c2b
0c3a: f8 35     mov   x,$35
0c3c: 6f        ret

0c3d: c4 58     mov   $58,a
0c3f: 8d 7d     mov   y,#$7d
0c41: cb f2     mov   $f2,y
0c43: e4 f3     mov   a,$f3
0c45: 64 58     cmp   a,$58
0c47: f0 2b     beq   $0c74
0c49: 28 0f     and   a,#$0f
0c4b: 48 ff     eor   a,#$ff
0c4d: f3 57 03  bbc7  $57,$0c53
0c50: 60        clrc
0c51: 84 57     adc   a,$57
0c53: c4 57     mov   $57,a
0c55: 8d 04     mov   y,#$04
0c57: f6 3c 04  mov   a,$043c+y
0c5a: c4 f2     mov   $f2,a
0c5c: e8 00     mov   a,#$00
0c5e: c4 f3     mov   $f3,a
0c60: fe f5     dbnz  y,$0c57
0c62: e4 53     mov   a,$53
0c64: 08 20     or    a,#$20
0c66: 8d 6c     mov   y,#$6c
0c68: cb f2     mov   $f2,y
0c6a: c4 f3     mov   $f3,a
0c6c: e4 58     mov   a,$58
0c6e: 8d 7d     mov   y,#$7d
0c70: cb f2     mov   $f2,y
0c72: c4 f3     mov   $f3,a
0c74: 1c        asl   a
0c75: 1c        asl   a
0c76: 1c        asl   a
0c77: 48 ff     eor   a,#$ff
0c79: fd        mov   y,a
0c7a: e8 6d     mov   a,#$6d
0c7c: da f2     movw  $f2,ya
0c7e: 6f        ret

; vcmd e8 - set perc patch base
0c7f: c4 69     mov   $69,a
0c81: 6f        ret

; vcmd e9
0c82: 68 80     cmp   a,#$80
0c84: 90 05     bcc   $0c8b
0c86: 09 34 37  or    ($37),($34)
0c89: 28 7f     and   a,#$7f
0c8b: d5 50 03  mov   $0350+x,a
0c8e: 5d        mov   x,a
0c8f: e4 35     mov   a,$35
0c91: d4 48     mov   $48+x,a
0c93: 5d        mov   x,a
0c94: 09 34 4e  or    ($4e),($34)
0c97: f4 21     mov   a,$21+x
0c99: d5 50 02  mov   $0250+x,a
0c9c: f4 22     mov   a,$22+x
0c9e: d5 51 02  mov   $0251+x,a
0ca1: e8 00     mov   a,#$00
0ca3: d5 41 02  mov   $0241+x,a
0ca6: d4 22     mov   $22+x,a
0ca8: ae        pop   a
0ca9: ae        pop   a
0caa: e8 08     mov   a,#$08
0cac: 2d        push  a
0cad: e8 b7     mov   a,#$b7
0caf: 2d        push  a
0cb0: 6f        ret

; vcmd ec
0cb1: fa 1a 14  mov   ($14),($1a)
0cb4: 24 14     and   a,$14
0cb6: c4 14     mov   $14,a
0cb8: e7 21     mov   a,($21+x)
0cba: bb 21     inc   $21+x
0cbc: d0 02     bne   $0cc0
0cbe: bb 22     inc   $22+x
0cc0: fd        mov   y,a
0cc1: 60        clrc
0cc2: 84 14     adc   a,$14
0cc4: fd        mov   y,a
; vcmd ea
0cc5: 3f 90 05  call  $0590
0cc8: e8 00     mov   a,#$00
0cca: d4 22     mov   $22+x,a
0ccc: ae        pop   a
0ccd: ae        pop   a
0cce: e8 08     mov   a,#$08
0cd0: 2d        push  a
0cd1: e8 b7     mov   a,#$b7
0cd3: 2d        push  a
0cd4: 6f        ret

; vcmd ed
0cd5: 09 34 75  or    ($75),($34)
0cd8: 6f        ret

; vcmd ee
0cd9: e4 34     mov   a,$34
0cdb: 24 75     and   a,$75
0cdd: f0 04     beq   $0ce3
0cdf: 44 75     eor   a,$75
0ce1: c4 75     mov   $75,a
0ce3: 6f        ret

; vcmd ef
0ce4: 09 34 31  or    ($31),($34)
0ce7: f5 50 03  mov   a,$0350+x
0cea: d0 43     bne   $0d2f
0cec: 12 83     clr0  $83
0cee: cb 77     mov   $77,y
0cf0: e7 21     mov   a,($21+x)
0cf2: bb 21     inc   $21+x
0cf4: d0 02     bne   $0cf8
0cf6: bb 22     inc   $22+x
0cf8: fd        mov   y,a
0cf9: c4 7b     mov   $7b,a
0cfb: f5 d7 06  mov   a,$06d7+x
0cfe: 08 02     or    a,#$02
0d00: da f2     movw  $f2,ya
0d02: e7 21     mov   a,($21+x)
0d04: bb 21     inc   $21+x
0d06: d0 02     bne   $0d0a
0d08: bb 22     inc   $22+x
0d0a: fd        mov   y,a
0d0b: c4 7c     mov   $7c,a
0d0d: f5 d7 06  mov   a,$06d7+x
0d10: 08 03     or    a,#$03
0d12: da f2     movw  $f2,ya
0d14: e7 21     mov   a,($21+x)
0d16: bb 21     inc   $21+x
0d18: d0 02     bne   $0d1c
0d1a: bb 22     inc   $22+x
0d1c: fd        mov   y,a
0d1d: 10 05     bpl   $0d24
0d1f: 02 83     set0  $83
0d21: 48 ff     eor   a,#$ff
0d23: bc        inc   a
0d24: c4 7f     mov   $7f,a
0d26: ae        pop   a
0d27: ae        pop   a
0d28: e8 08     mov   a,#$08
0d2a: 2d        push  a
0d2b: e8 b7     mov   a,#$b7
0d2d: 2d        push  a
0d2e: 6f        ret

0d2f: 32 83     clr1  $83
0d31: cb 78     mov   $78,y
0d33: e7 21     mov   a,($21+x)
0d35: bb 21     inc   $21+x
0d37: d0 02     bne   $0d3b
0d39: bb 22     inc   $22+x
0d3b: fd        mov   y,a
0d3c: c4 7d     mov   $7d,a
0d3e: f5 d7 06  mov   a,$06d7+x
0d41: 08 02     or    a,#$02
0d43: da f2     movw  $f2,ya
0d45: e7 21     mov   a,($21+x)
0d47: bb 21     inc   $21+x
0d49: d0 02     bne   $0d4d
0d4b: bb 22     inc   $22+x
0d4d: fd        mov   y,a
0d4e: c4 7e     mov   $7e,a
0d50: f5 d7 06  mov   a,$06d7+x
0d53: 08 03     or    a,#$03
0d55: da f2     movw  $f2,ya
0d57: e7 21     mov   a,($21+x)
0d59: bb 21     inc   $21+x
0d5b: d0 02     bne   $0d5f
0d5d: bb 22     inc   $22+x
0d5f: fd        mov   y,a
0d60: 10 05     bpl   $0d67
0d62: 22 83     set1  $83
0d64: 48 ff     eor   a,#$ff
0d66: bc        inc   a
0d67: c4 81     mov   $81,a
0d69: ae        pop   a
0d6a: ae        pop   a
0d6b: e8 08     mov   a,#$08
0d6d: 2d        push  a
0d6e: e8 b7     mov   a,#$b7
0d70: 2d        push  a
0d71: 6f        ret

0d72: f4 b5     mov   a,$b5+x
0d74: d0 61     bne   $0dd7
0d76: e7 21     mov   a,($21+x)
0d78: 68 e7     cmp   a,#$e7
0d7a: d0 5b     bne   $0dd7
0d7c: bb 21     inc   $21+x
0d7e: d0 02     bne   $0d82
0d80: bb 22     inc   $22+x
0d82: fd        mov   y,a
0d83: e7 21     mov   a,($21+x)
0d85: bb 21     inc   $21+x
0d87: d0 02     bne   $0d8b
0d89: bb 22     inc   $22+x
0d8b: fd        mov   y,a
; vcmd e7 - pitch slide
0d8c: d4 b6     mov   $b6+x,a
0d8e: e7 21     mov   a,($21+x)
0d90: bb 21     inc   $21+x
0d92: d0 02     bne   $0d96
0d94: bb 22     inc   $22+x
0d96: fd        mov   y,a
0d97: d4 b5     mov   $b5+x,a
0d99: e7 21     mov   a,($21+x)
0d9b: bb 21     inc   $21+x
0d9d: d0 02     bne   $0da1
0d9f: bb 22     inc   $22+x
0da1: fd        mov   y,a
0da2: 60        clrc
0da3: 84 5a     adc   a,$5a
0da5: 95 40 03  adc   a,$0340+x
0da8: 28 7f     and   a,#$7f
0daa: d5 e0 02  mov   $02e0+x,a
0dad: 80        setc
0dae: b5 c1 02  sbc   a,$02c1+x
0db1: fb b5     mov   y,$b5+x
0db3: 6d        push  y
0db4: ce        pop   x
0db5: ed        notc
0db6: 6b 12     ror   $12
0db8: 10 03     bpl   $0dbd
0dba: 48 ff     eor   a,#$ff
0dbc: bc        inc   a
0dbd: 8d 00     mov   y,#$00
0dbf: 9e        div   ya,x
0dc0: 2d        push  a
0dc1: e8 00     mov   a,#$00
0dc3: 9e        div   ya,x
0dc4: ee        pop   y
0dc5: f8 35     mov   x,$35
0dc7: f3 12 06  bbc7  $12,$0dd0
0dca: da 16     movw  $16,ya
0dcc: ba 0e     movw  ya,$0e
0dce: 9a 16     subw  ya,$16
0dd0: d5 d0 02  mov   $02d0+x,a
0dd3: dd        mov   a,y
0dd4: d5 d1 02  mov   $02d1+x,a
0dd7: 6f        ret

0dd8: f4 a5     mov   a,$a5+x
0dda: f0 2c     beq   $0e08
0ddc: e8 60     mov   a,#$60
0dde: 8d 02     mov   y,#$02
0de0: 9b a5     dec   $a5+x
0de2: 09 34 68  or    ($68),($34)
0de5: da 16     movw  $16,ya
0de7: da 18     movw  $18,ya
0de9: 4d        push  x
0dea: ee        pop   y
0deb: 60        clrc
0dec: d0 0a     bne   $0df8
0dee: 98 1f 18  adc   $18,#$1f
0df1: e8 00     mov   a,#$00
0df3: d7 16     mov   ($16)+y,a
0df5: fc        inc   y
0df6: 2f 0c     bra   $0e04
0df8: 98 10 18  adc   $18,#$10
0dfb: f7 16     mov   a,($16)+y
0dfd: 97 18     adc   a,($18)+y
0dff: d7 16     mov   ($16)+y,a
0e01: fc        inc   y
0e02: f7 16     mov   a,($16)+y
0e04: 97 18     adc   a,($18)+y
0e06: d7 16     mov   ($16)+y,a
0e08: e8 ff     mov   a,#$ff
0e0a: eb 63     mov   y,$63
0e0c: cf        mul   ya
0e0d: f5 10 02  mov   a,$0210+x
0e10: cf        mul   ya
0e11: f5 61 02  mov   a,$0261+x
0e14: cf        mul   ya
0e15: dd        mov   a,y
0e16: cf        mul   ya
0e17: dd        mov   a,y
0e18: d5 81 02  mov   $0281+x,a
0e1b: f4 a6     mov   a,$a6+x
0e1d: f0 2c     beq   $0e4b
0e1f: e8 90     mov   a,#$90
0e21: 8d 02     mov   y,#$02
0e23: 9b a6     dec   $a6+x
0e25: 09 34 68  or    ($68),($34)
0e28: da 16     movw  $16,ya
0e2a: da 18     movw  $18,ya
0e2c: 4d        push  x
0e2d: ee        pop   y
0e2e: 60        clrc
0e2f: d0 0a     bne   $0e3b
0e31: 98 1f 18  adc   $18,#$1f
0e34: e8 00     mov   a,#$00
0e36: d7 16     mov   ($16)+y,a
0e38: fc        inc   y
0e39: 2f 0c     bra   $0e47
0e3b: 98 10 18  adc   $18,#$10
0e3e: f7 16     mov   a,($16)+y
0e40: 97 18     adc   a,($18)+y
0e42: d7 16     mov   ($16)+y,a
0e44: fc        inc   y
0e45: f7 16     mov   a,($16)+y
0e47: 97 18     adc   a,($18)+y
0e49: d7 16     mov   ($16)+y,a
0e4b: e4 34     mov   a,$34
0e4d: 24 68     and   a,$68
0e4f: f0 47     beq   $0e98
0e51: f5 91 02  mov   a,$0291+x
0e54: fd        mov   y,a
0e55: f5 90 02  mov   a,$0290+x
0e58: da 10     movw  $10,ya
0e5a: f5 d7 06  mov   a,$06d7+x
0e5d: c4 12     mov   $12,a
0e5f: eb 11     mov   y,$11
0e61: f6 9a 0e  mov   a,$0e9a+y
0e64: 80        setc
0e65: b6 99 0e  sbc   a,$0e99+y
0e68: eb 10     mov   y,$10
0e6a: cf        mul   ya
0e6b: dd        mov   a,y
0e6c: eb 11     mov   y,$11
0e6e: 60        clrc
0e6f: 96 99 0e  adc   a,$0e99+y
0e72: fd        mov   y,a
0e73: f5 81 02  mov   a,$0281+x
0e76: cf        mul   ya
0e77: f5 b1 02  mov   a,$02b1+x
0e7a: 1c        asl   a
0e7b: 13 12 01  bbc0  $12,$0e7f
0e7e: 1c        asl   a
0e7f: dd        mov   a,y
0e80: 90 03     bcc   $0e85
0e82: 48 ff     eor   a,#$ff
0e84: bc        inc   a
0e85: eb 12     mov   y,$12
0e87: cb f2     mov   $f2,y
0e89: c4 f3     mov   $f3,a
0e8b: 8d 14     mov   y,#$14
0e8d: e8 00     mov   a,#$00
0e8f: 9a 10     subw  ya,$10
0e91: da 10     movw  $10,ya
0e93: ab 12     inc   $12
0e95: 33 12 c7  bbc1  $12,$0e5f
0e98: 6f        ret

0e99: db $00,$01,$03,$07,$0d,$15,$1e,$29
0ea1: db $34,$42,$51,$5e,$67,$6e,$73,$77
0ea9: db $7a,$7c,$7d,$7e,$7f

0eae: f0 6e     beq   $0f1e
0eb0: f4 86     mov   a,$86+x
0eb2: f0 6a     beq   $0f1e
0eb4: 9b 86     dec   $86+x
0eb6: f0 05     beq   $0ebd
0eb8: e8 02     mov   a,#$02
0eba: de 85 61  cbne  $85+x,$0f1e
0ebd: f4 95     mov   a,$95+x
0ebf: c4 19     mov   $19,a
0ec1: f4 21     mov   a,$21+x
0ec3: fb 22     mov   y,$22+x
0ec5: da 16     movw  $16,ya
0ec7: 8d 00     mov   y,#$00
0ec9: f7 16     mov   a,($16)+y
0ecb: f0 1c     beq   $0ee9
0ecd: 30 05     bmi   $0ed4
0ecf: fc        inc   y
0ed0: f7 16     mov   a,($16)+y
0ed2: 10 fb     bpl   $0ecf
0ed4: 68 c8     cmp   a,#$c8
0ed6: f0 46     beq   $0f1e
0ed8: 68 dd     cmp   a,#$dd
0eda: f0 29     beq   $0f05
0edc: 68 ce     cmp   a,#$ce
0ede: 90 30     bcc   $0f10
0ee0: 6d        push  y
0ee1: fd        mov   y,a
0ee2: ae        pop   a
0ee3: 96 89 08  adc   a,$0889+y
0ee6: fd        mov   y,a
0ee7: 2f e0     bra   $0ec9
0ee9: e4 19     mov   a,$19
0eeb: f0 23     beq   $0f10
0eed: 8b 19     dec   $19
0eef: d0 0a     bne   $0efb
0ef1: f5 31 02  mov   a,$0231+x
0ef4: 2d        push  a
0ef5: f5 30 02  mov   a,$0230+x
0ef8: ee        pop   y
0ef9: 2f ca     bra   $0ec5
0efb: f5 41 02  mov   a,$0241+x
0efe: 2d        push  a
0eff: f5 40 02  mov   a,$0240+x
0f02: ee        pop   y
0f03: 2f c0     bra   $0ec5
0f05: fc        inc   y
0f06: f7 16     mov   a,($16)+y
0f08: 2d        push  a
0f09: fc        inc   y
0f0a: f7 16     mov   a,($16)+y
0f0c: fd        mov   y,a
0f0d: ae        pop   a
0f0e: 2f b5     bra   $0ec5
0f10: e4 76     mov   a,$76
0f12: 24 34     and   a,$34
0f14: d0 08     bne   $0f1e
0f16: e4 34     mov   a,$34
0f18: 8d 5c     mov   y,#$5c
0f1a: cb f2     mov   $f2,y
0f1c: c4 f3     mov   $f3,a
0f1e: f2 13     clr7  $13
0f20: f4 b5     mov   a,$b5+x
0f22: f0 33     beq   $0f57
0f24: f4 b6     mov   a,$b6+x
0f26: f0 04     beq   $0f2c
0f28: 9b b6     dec   $b6+x
0f2a: 2f 2b     bra   $0f57
0f2c: e2 13     set7  $13
0f2e: e8 c0     mov   a,#$c0
0f30: 8d 02     mov   y,#$02
0f32: 9b b5     dec   $b5+x
0f34: da 16     movw  $16,ya
0f36: da 18     movw  $18,ya
0f38: 4d        push  x
0f39: ee        pop   y
0f3a: 60        clrc
0f3b: d0 0a     bne   $0f47
0f3d: 98 1f 18  adc   $18,#$1f
0f40: e8 00     mov   a,#$00
0f42: d7 16     mov   ($16)+y,a
0f44: fc        inc   y
0f45: 2f 0c     bra   $0f53
0f47: 98 10 18  adc   $18,#$10
0f4a: f7 16     mov   a,($16)+y
0f4c: 97 18     adc   a,($18)+y
0f4e: d7 16     mov   ($16)+y,a
0f50: fc        inc   y
0f51: f7 16     mov   a,($16)+y
0f53: 97 18     adc   a,($18)+y
0f55: d7 16     mov   ($16)+y,a
0f57: f5 c1 02  mov   a,$02c1+x
0f5a: c4 11     mov   $11,a
0f5c: f5 c0 02  mov   a,$02c0+x
0f5f: c4 10     mov   $10,a
0f61: f4 c6     mov   a,$c6+x
0f63: f0 54     beq   $0fb9
0f65: f5 20 03  mov   a,$0320+x
0f68: de c5 4c  cbne  $c5+x,$0fb7
0f6b: f5 96 00  mov   a,$0096+x
0f6e: 75 21 03  cmp   a,$0321+x
0f71: d0 05     bne   $0f78
0f73: f5 31 03  mov   a,$0331+x
0f76: 2f 0b     bra   $0f83
0f78: bb 96     inc   $96+x
0f7a: fd        mov   y,a
0f7b: f0 02     beq   $0f7f
0f7d: f4 c6     mov   a,$c6+x
0f7f: 60        clrc
0f80: 95 30 03  adc   a,$0330+x
0f83: d4 c6     mov   $c6+x,a
0f85: f5 10 03  mov   a,$0310+x
0f88: 60        clrc
0f89: 95 11 03  adc   a,$0311+x
0f8c: d5 10 03  mov   $0310+x,a
0f8f: c4 12     mov   $12,a
0f91: 1c        asl   a
0f92: 1c        asl   a
0f93: 90 02     bcc   $0f97
0f95: 48 ff     eor   a,#$ff
0f97: fd        mov   y,a
0f98: f4 c6     mov   a,$c6+x
0f9a: 68 f1     cmp   a,#$f1
0f9c: 90 05     bcc   $0fa3
0f9e: 28 0f     and   a,#$0f
0fa0: cf        mul   ya
0fa1: 2f 04     bra   $0fa7
0fa3: cf        mul   ya
0fa4: dd        mov   a,y
0fa5: 8d 00     mov   y,#$00
0fa7: f3 12 06  bbc7  $12,$0fb0
0faa: da 16     movw  $16,ya
0fac: ba 0e     movw  ya,$0e
0fae: 9a 16     subw  ya,$16
0fb0: 7a 10     addw  ya,$10
0fb2: da 10     movw  $10,ya
0fb4: 5f 39 06  jmp   $0639

0fb7: bb c5     inc   $c5+x
0fb9: e3 13 f8  bbs7  $13,$0fb4
0fbc: 6f        ret

0fbd: f2 13     clr7  $13
0fbf: f5 91 02  mov   a,$0291+x
0fc2: fd        mov   y,a
0fc3: f5 90 02  mov   a,$0290+x
0fc6: da 10     movw  $10,ya
0fc8: f4 a6     mov   a,$a6+x
0fca: f0 0a     beq   $0fd6
0fcc: f5 a1 02  mov   a,$02a1+x
0fcf: fd        mov   y,a
0fd0: f5 a0 02  mov   a,$02a0+x
0fd3: 3f 38 10  call  $1038
0fd6: f3 13 03  bbc7  $13,$0fdc
0fd9: 3f 5a 0e  call  $0e5a
0fdc: f2 13     clr7  $13
0fde: f5 c1 02  mov   a,$02c1+x
0fe1: c4 11     mov   $11,a
0fe3: f5 c0 02  mov   a,$02c0+x
0fe6: c4 10     mov   $10,a
0fe8: f4 b5     mov   a,$b5+x
0fea: f0 34     beq   $1020
0fec: f4 b6     mov   a,$b6+x
0fee: d0 30     bne   $1020
0ff0: f5 d1 02  mov   a,$02d1+x
0ff3: fd        mov   y,a
0ff4: f5 d0 02  mov   a,$02d0+x
0ff7: e2 13     set7  $13
0ff9: cb 12     mov   $12,y
0ffb: f3 12 06  bbc7  $12,$1004
0ffe: da 16     movw  $16,ya
1000: ba 0e     movw  ya,$0e
1002: 9a 16     subw  ya,$16
1004: 6d        push  y
1005: eb 5b     mov   y,$5b
1007: cf        mul   ya
1008: cb 16     mov   $16,y
100a: 8f 00 17  mov   $17,#$00
100d: eb 5b     mov   y,$5b
100f: ae        pop   a
1010: cf        mul   ya
1011: 7a 16     addw  ya,$16
1013: f3 12 06  bbc7  $12,$101c
1016: da 16     movw  $16,ya
1018: ba 0e     movw  ya,$0e
101a: 9a 16     subw  ya,$16
101c: 7a 10     addw  ya,$10
101e: da 10     movw  $10,ya
1020: f4 c6     mov   a,$c6+x
1022: f0 95     beq   $0fb9
1024: f5 20 03  mov   a,$0320+x
1027: de c5 8f  cbne  $c5+x,$0fb9
102a: eb 5b     mov   y,$5b
102c: f5 11 03  mov   a,$0311+x
102f: cf        mul   ya
1030: dd        mov   a,y
1031: 60        clrc
1032: 95 10 03  adc   a,$0310+x
1035: 5f 8f 0f  jmp   $0f8f

1038: e2 13     set7  $13
103a: cb 12     mov   $12,y
103c: f3 12 06  bbc7  $12,$1045
103f: da 16     movw  $16,ya
1041: ba 0e     movw  ya,$0e
1043: 9a 16     subw  ya,$16
1045: 6d        push  y
1046: eb 5b     mov   y,$5b
1048: cf        mul   ya
1049: cb 16     mov   $16,y
104b: 8f 00 17  mov   $17,#$00
104e: eb 5b     mov   y,$5b
1050: ae        pop   a
1051: cf        mul   ya
1052: 7a 16     addw  ya,$16
1054: f3 12 06  bbc7  $12,$105d
1057: da 16     movw  $16,ya
1059: ba 0e     movw  ya,$0e
105b: 9a 16     subw  ya,$16
105d: 7a 10     addw  ya,$10
105f: da 10     movw  $10,ya
1061: 6f        ret

1062: e4 4e     mov   a,$4e
1064: 24 34     and   a,$34
1066: f0 15     beq   $107d
1068: 24 31     and   a,$31
106a: f0 11     beq   $107d
106c: f5 d7 06  mov   a,$06d7+x
106f: 08 08     or    a,#$08
1071: c4 f2     mov   $f2,a
1073: e4 f3     mov   a,$f3
1075: d0 06     bne   $107d
1077: 09 34 32  or    ($32),($34)
107a: 49 34 31  eor   ($31),($34)
107d: 6f        ret

; echo FIR presets
107e: db $7f,$00,$00,$00,$00,$00,$00,$00
1086: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
108e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1096: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; note dur%'s
109e: db $32,$65,$7f,$98,$b2,$cb,$e5,$fd
; per-note velocity values
10a6: db $19,$32,$4c,$65,$72,$7f,$8c,$98
10ae: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
