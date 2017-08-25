0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 30     mov   a,#$30
0406: c4 f1     mov   $f1,a
0408: e8 00     mov   a,#$00
040a: 5d        mov   x,a
040b: af        mov   (x)+,a
040c: c8 f0     cmp   x,#$f0
040e: d0 fb     bne   $040b
0410: 8d 04     mov   y,#$04
0412: f6 85 11  mov   a,$1185+y
0415: c4 f2     mov   $f2,a
0417: e8 00     mov   a,#$00
0419: c4 f3     mov   $f3,a
041b: fe f5     dbnz  y,$0412
041d: e8 20     mov   a,#$20
041f: 8d 6c     mov   y,#$6c
0421: cb f2     mov   $f2,y
0423: c4 f3     mov   $f3,a
0425: e8 00     mov   a,#$00
0427: 8d 7d     mov   y,#$7d
0429: cb f2     mov   $f2,y
042b: c4 f3     mov   $f3,a
042d: e8 00     mov   a,#$00
042f: 8d 6d     mov   y,#$6d
0431: cb f2     mov   $f2,y
0433: c4 f3     mov   $f3,a
0435: 8f 0f 6d  mov   $6d,#$0f
0438: a2 65     set5  $65
043a: 8d 71     mov   y,#$71
043c: 8f 01 72  mov   $72,#$01
043f: e8 00     mov   a,#$00
0441: cb f2     mov   $f2,y
0443: c4 f3     mov   $f3,a
0445: dc        dec   y
0446: cb f2     mov   $f2,y
0448: c4 f3     mov   $f3,a
044a: dd        mov   a,y
044b: 80        setc
044c: a8 0f     sbc   a,#$0f
044e: fd        mov   y,a
044f: 10 eb     bpl   $043c
0451: 8d 5c     mov   y,#$5c
0453: e8 ff     mov   a,#$ff
0455: cb f2     mov   $f2,y
0457: c4 f3     mov   $f3,a
0459: 8d 0c     mov   y,#$0c
045b: e8 7f     mov   a,#$7f
045d: cb f2     mov   $f2,y
045f: c4 f3     mov   $f3,a
0461: 8d 1c     mov   y,#$1c
0463: cb f2     mov   $f2,y
0465: c4 f3     mov   $f3,a
0467: 8d 5d     mov   y,#$5d
0469: e8 33     mov   a,#$33
046b: cb f2     mov   $f2,y
046d: c4 f3     mov   $f3,a             ; set DIR = $3300
046f: e8 ff     mov   a,#$ff
0471: cd 00     mov   x,#$00
0473: 8d 07     mov   y,#$07
0475: d4 22     mov   $22+x,a
0477: 3d        inc   x
0478: 3d        inc   x
0479: dc        dec   y
047a: 10 f9     bpl   $0475
047c: e8 f0     mov   a,#$f0
047e: c4 f1     mov   $f1,a
0480: e8 20     mov   a,#$20
0482: c4 fa     mov   $fa,a
0484: e8 ff     mov   a,#$ff
0486: c4 fb     mov   $fb,a
0488: e8 03     mov   a,#$03
048a: c4 f1     mov   $f1,a
048c: ab 06     inc   $06
048e: e4 06     mov   a,$06
0490: c4 f6     mov   $f6,a
0492: 8d 0a     mov   y,#$0a
0494: ad 05     cmp   y,#$05
0496: f0 07     beq   $049f
0498: b0 08     bcs   $04a2
049a: 69 6e 6d  cmp   ($6d),($6e)
049d: d0 0f     bne   $04ae
049f: e3 6d 0c  bbs7  $6d,$04ae
04a2: f6 85 11  mov   a,$1185+y
04a5: c4 f2     mov   $f2,a
04a7: f6 8f 11  mov   a,$118f+y
04aa: 5d        mov   x,a
04ab: e6        mov   a,(x)
04ac: c4 f3     mov   $f3,a
04ae: fe e4     dbnz  y,$0494
04b0: cb 62     mov   $62,y
04b2: cb 63     mov   $63,y
04b4: e4 00     mov   a,$00
04b6: d0 03     bne   $04bb
04b8: 5f 7b 05  jmp   $057b

04bb: cd 00     mov   x,#$00
04bd: 8f 01 64  mov   $64,#$01
04c0: eb fd     mov   y,$fd
04c2: f0 fc     beq   $04c0
04c4: f4 22     mov   a,$22+x
04c6: 60        clrc
04c7: 94 23     adc   a,$23+x
04c9: d4 23     mov   $23+x,a
04cb: b0 03     bcs   $04d0
04cd: 5f 92 05  jmp   $0592

04d0: 7d        mov   a,x
04d1: d0 07     bne   $04da
04d3: 69 6e 6d  cmp   ($6d),($6e)
04d6: f0 02     beq   $04da
04d8: ab 6d     inc   $6d
04da: 7d        mov   a,x
04db: 9f        xcn   a
04dc: 5c        lsr   a
04dd: c4 05     mov   $05,a
04df: e4 64     mov   a,$64
04e1: 24 00     and   a,$00
04e3: d0 03     bne   $04e8
04e5: 5f 72 05  jmp   $0572

04e8: 3f 6f 0d  call  $0d6f
04eb: e4 64     mov   a,$64
04ed: 4e 66 00  tclr1 $0066
04f0: e4 78     mov   a,$78
04f2: 24 64     and   a,$64
04f4: f0 37     beq   $052d
04f6: 9b 91     dec   $91+x
04f8: d0 0e     bne   $0508
04fa: e4 64     mov   a,$64
04fc: 4e 00 00  tclr1 $0000
04ff: 4e 78 00  tclr1 $0078
0502: e8 00     mov   a,#$00
0504: d4 a0     mov   $a0+x,a
0506: 2f 20     bra   $0528
0508: f4 43     mov   a,$43+x
050a: f0 21     beq   $052d
050c: f5 20 03  mov   a,$0320+x
050f: 60        clrc
0510: 95 80 03  adc   a,$0380+x
0513: 90 05     bcc   $051a
0515: 9b 43     dec   $43+x
0517: 09 64 03  or    ($03),($64)
051a: d5 80 03  mov   $0380+x,a
051d: f5 11 03  mov   a,$0311+x
0520: f0 0b     beq   $052d
0522: f4 43     mov   a,$43+x
0524: 80        setc
0525: b5 11 03  sbc   a,$0311+x
0528: d4 43     mov   $43+x,a
052a: 09 64 03  or    ($03),($64)
052d: f4 b1     mov   a,$b1+x
052f: f0 41     beq   $0572
0531: 9b b1     dec   $b1+x
0533: d0 05     bne   $053a
0535: f5 30 03  mov   a,$0330+x
0538: 2f 36     bra   $0570
053a: f5 00 03  mov   a,$0300+x
053d: 60        clrc
053e: 95 71 03  adc   a,$0371+x
0541: fd        mov   y,a
0542: e4 6f     mov   a,$6f
0544: 24 64     and   a,$64
0546: d0 15     bne   $055d
0548: 90 02     bcc   $054c
054a: 9b 22     dec   $22+x
054c: dd        mov   a,y
054d: d5 71 03  mov   $0371+x,a
0550: f5 f1 02  mov   a,$02f1+x
0553: f0 1d     beq   $0572
0555: f4 22     mov   a,$22+x
0557: 80        setc
0558: b5 f1 02  sbc   a,$02f1+x
055b: 2f 13     bra   $0570
055d: 90 02     bcc   $0561
055f: bb 22     inc   $22+x
0561: dd        mov   a,y
0562: d5 71 03  mov   $0371+x,a
0565: f5 f1 02  mov   a,$02f1+x
0568: f0 08     beq   $0572
056a: f4 22     mov   a,$22+x
056c: 60        clrc
056d: 95 f1 02  adc   a,$02f1+x
0570: d4 22     mov   $22+x,a
0572: 3d        inc   x
0573: 3d        inc   x
0574: 0b 64     asl   $64
0576: f0 03     beq   $057b
0578: 5f c4 04  jmp   $04c4

057b: 3f dc 10  call  $10dc
057e: 08 00     or    a,#$00
0580: f0 09     beq   $058b
0582: c4 f7     mov   $f7,a
0584: 3f 94 0b  call  $0b94
0587: e8 33     mov   a,#$33
0589: c4 f1     mov   $f1,a
058b: e8 99     mov   a,#$99
058d: c4 f7     mov   $f7,a
058f: 5f 8c 04  jmp   $048c

0592: e4 66     mov   a,$66
0594: 24 64     and   a,$64
0596: d0 0c     bne   $05a4
0598: e4 64     mov   a,$64
059a: 24 00     and   a,$00
059c: f0 06     beq   $05a4
059e: 3f 53 0e  call  $0e53
05a1: 09 64 66  or    ($66),($64)
05a4: 2f cc     bra   $0572
05a6: f4 33     mov   a,$33+x
05a8: f0 01     beq   $05ab
05aa: 6f        ret

05ab: 3f 0b 10  call  $100b             ; read vcmd
05ae: fd        mov   y,a
05af: d0 03     bne   $05b4
05b1: 5f 2c 07  jmp   $072c

05b4: 68 e0     cmp   a,#$e0
05b6: 90 03     bcc   $05bb
05b8: 5f 3c 07  jmp   $073c

05bb: 68 c9     cmp   a,#$c9
05bd: d0 03     bne   $05c2
05bf: 5f 58 06  jmp   $0658

05c2: 68 c8     cmp   a,#$c8
05c4: d0 03     bne   $05c9
05c6: 5f 64 06  jmp   $0664

05c9: fd        mov   y,a
05ca: 30 1b     bmi   $05e7
05cc: d4 33     mov   $33+x,a
05ce: d5 c0 02  mov   $02c0+x,a
05d1: c4 0b     mov   $0b,a
05d3: f5 d0 02  mov   a,$02d0+x
05d6: fd        mov   y,a
05d7: e4 0b     mov   a,$0b
05d9: cf        mul   ya
05da: dd        mov   a,y
05db: d0 02     bne   $05df
05dd: 8d 01     mov   y,#$01
05df: db 42     mov   $42+x,y
05e1: dd        mov   a,y
05e2: d5 c1 02  mov   $02c1+x,a
05e5: 2f c4     bra   $05ab
05e7: 68 ca     cmp   a,#$ca
05e9: 90 07     bcc   $05f2
05eb: c4 0c     mov   $0c,a
05ed: 3f 93 07  call  $0793
05f0: e8 a4     mov   a,#$a4
05f2: 3f 73 06  call  $0673
05f5: d4 52     mov   $52+x,a
05f7: db 53     mov   $53+x,y
05f9: 09 64 02  or    ($02),($64)
05fc: e4 74     mov   a,$74
05fe: 24 64     and   a,$64
0600: d0 03     bne   $0605
0602: 09 64 62  or    ($62),($64)
0605: f5 c0 02  mov   a,$02c0+x
0608: d4 33     mov   $33+x,a
060a: f5 c1 02  mov   a,$02c1+x
060d: d4 42     mov   $42+x,a
060f: e7 12     mov   a,($12+x)
0611: f0 44     beq   $0657
0613: 68 c9     cmp   a,#$c9
0615: b0 40     bcs   $0657
0617: 68 c8     cmp   a,#$c8
0619: d0 07     bne   $0622
061b: f4 33     mov   a,$33+x
061d: d5 a0 02  mov   $02a0+x,a
0620: 2f 1d     bra   $063f
0622: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0625: d5 a0 02  mov   $02a0+x,a
0628: e7 12     mov   a,($12+x)
062a: 68 c8     cmp   a,#$c8
062c: f0 11     beq   $063f
062e: 9b 12     dec   $12+x
0630: e8 ff     mov   a,#$ff
0632: 74 12     cmp   a,$12+x
0634: d0 21     bne   $0657
0636: 9b 13     dec   $13+x
0638: e8 00     mov   a,#$00
063a: d5 a0 02  mov   $02a0+x,a
063d: 2f 18     bra   $0657
063f: f5 d0 02  mov   a,$02d0+x
0642: fd        mov   y,a
0643: f5 a0 02  mov   a,$02a0+x
0646: cf        mul   ya
0647: dd        mov   a,y
0648: d5 a1 02  mov   $02a1+x,a
064b: 09 64 67  or    ($67),($64)
064e: e4 64     mov   a,$64
0650: 24 73     and   a,$73
0652: f0 03     beq   $0657
0654: 0e 74 00  tset1 $0074
0657: 6f        ret

0658: 09 64 01  or    ($01),($64)
065b: e8 00     mov   a,#$00
065d: d5 01 03  mov   $0301+x,a
0660: d4 c0     mov   $c0+x,a
0662: 2f a1     bra   $0605
0664: f5 a0 02  mov   a,$02a0+x
0667: d4 33     mov   $33+x,a
0669: d5 c0 02  mov   $02c0+x,a
066c: e4 64     mov   a,$64
066e: 4e 67 00  tclr1 $0067
0671: 2f 9c     bra   $060f
0673: 28 7f     and   a,#$7f
0675: d5 d2 03  mov   $03d2+x,a
0678: e4 64     mov   a,$64
067a: 4e 01 00  tclr1 $0001
067d: f5 b3 03  mov   a,$03b3+x
0680: 5c        lsr   a
0681: e8 00     mov   a,#$00
0683: 7c        ror   a
0684: d5 a2 03  mov   $03a2+x,a
0687: e8 00     mov   a,#$00
0689: d4 c1     mov   $c1+x,a
068b: d5 00 01  mov   $0100+x,a
068e: d4 d1     mov   $d1+x,a
0690: d5 90 03  mov   $0390+x,a
0693: d5 91 03  mov   $0391+x,a
0696: d5 01 03  mov   $0301+x,a
0699: d4 c0     mov   $c0+x,a
069b: f5 d2 03  mov   a,$03d2+x
069e: 2d        push  a
069f: e4 64     mov   a,$64
06a1: 24 71     and   a,$71
06a3: ae        pop   a
06a4: d0 03     bne   $06a9
06a6: 60        clrc
06a7: 84 07     adc   a,$07
06a9: 60        clrc
06aa: 95 50 03  adc   a,$0350+x
06ad: d8 10     mov   $10,x
06af: 1c        asl   a
06b0: 8d 00     mov   y,#$00
06b2: cd 18     mov   x,#$18
06b4: 9e        div   ya,x
06b5: 5d        mov   x,a
06b6: f6 9b 11  mov   a,$119b+y
06b9: c4 0f     mov   $0f,a
06bb: f6 9a 11  mov   a,$119a+y
06be: c4 0e     mov   $0e,a
06c0: f6 9d 11  mov   a,$119d+y
06c3: 2d        push  a
06c4: f6 9c 11  mov   a,$119c+y
06c7: ee        pop   y
06c8: 9a 0e     subw  ya,$0e
06ca: 4d        push  x
06cb: f8 10     mov   x,$10
06cd: fb d1     mov   y,$d1+x
06cf: ce        pop   x
06d0: cf        mul   ya
06d1: dd        mov   a,y
06d2: 8d 00     mov   y,#$00
06d4: 7a 0e     addw  ya,$0e
06d6: cb 0f     mov   $0f,y
06d8: 1c        asl   a
06d9: 2b 0f     rol   $0f
06db: c4 0e     mov   $0e,a
06dd: 2f 04     bra   $06e3
06df: 4b 0f     lsr   $0f
06e1: 7c        ror   a
06e2: 3d        inc   x
06e3: c8 06     cmp   x,#$06
06e5: d0 f8     bne   $06df
06e7: c4 0e     mov   $0e,a
06e9: f8 10     mov   x,$10
06eb: f5 b0 02  mov   a,$02b0+x
06ee: eb 0f     mov   y,$0f
06f0: cf        mul   ya
06f1: da 10     movw  $10,ya
06f3: f5 b0 02  mov   a,$02b0+x
06f6: eb 0e     mov   y,$0e
06f8: cf        mul   ya
06f9: 6d        push  y
06fa: f5 b1 02  mov   a,$02b1+x
06fd: eb 0e     mov   y,$0e
06ff: cf        mul   ya
0700: 7a 10     addw  ya,$10
0702: da 10     movw  $10,ya
0704: f5 b1 02  mov   a,$02b1+x
0707: eb 0f     mov   y,$0f
0709: cf        mul   ya
070a: fd        mov   y,a
070b: ae        pop   a
070c: 7a 10     addw  ya,$10
070e: da 10     movw  $10,ya
0710: 8d 00     mov   y,#$00
0712: f5 51 03  mov   a,$0351+x
0715: d0 04     bne   $071b
0717: ba 10     movw  ya,$10
0719: 2f 10     bra   $072b
071b: 10 0b     bpl   $0728
071d: 28 7f     and   a,#$7f
071f: da 0e     movw  $0e,ya
0721: ba 10     movw  ya,$10
0723: 80        setc
0724: 9a 0e     subw  ya,$0e
0726: 2f 03     bra   $072b
0728: 60        clrc
0729: 7a 10     addw  ya,$10
072b: 6f        ret

072c: e4 64     mov   a,$64
072e: 0e 63 00  tset1 $0063
0731: 4e 00 00  tclr1 $0000
0734: 4e 6a 00  tclr1 $006a
0737: e8 00     mov   a,#$00
0739: d4 32     mov   $32+x,a
073b: 6f        ret

073c: 28 1f     and   a,#$1f
073e: 1c        asl   a
073f: d8 0b     mov   $0b,x
0741: 5d        mov   x,a
0742: f5 53 07  mov   a,$0753+x
0745: c4 08     mov   $08,a
0747: f5 54 07  mov   a,$0754+x
074a: c4 09     mov   $09,a
074c: e4 0b     mov   a,$0b
074e: cd 00     mov   x,#$00
0750: 1f 08 00  jmp   ($0008+x)

; vcmd dispatch table
0753: dw $0798  ; e0
0755: dw $07da  ; e1
0757: dw $07e8  ; e2
0759: dw $0820  ; e3
075b: dw $0832  ; e4
075d: dw $0b05  ; e5
075f: dw $0850  ; e6
0761: dw $0876  ; e7
0763: dw $087f  ; e8
0765: dw $08b7  ; e9
0767: dw $08c0  ; ea
0769: dw $08ca  ; eb
076b: dw $0908  ; ec
076d: dw $0917  ; ed
076f: dw $0957  ; ee
0771: dw $099a  ; ef
0773: dw $09a6  ; f0
0775: dw $09b9  ; f1
0777: dw $0a39  ; f2
0779: dw $0a40  ; f3
077b: dw $0a2f  ; f4
077d: dw $0a49  ; f5
077f: dw $0a72  ; f6
0781: dw $0a7e  ; f7
0783: dw $0aa7  ; f8
0785: dw $0acb  ; f9
0787: dw $0b1d  ; fa
0789: dw $0b2a  ; fb
078b: dw $0b45  ; fc
078d: dw $0b55  ; fd
078f: dw $0b6e  ; fe
0791: dw $0adc  ; ff

0793: 80        setc
0794: a8 ca     sbc   a,#$ca
0796: 2f 04     bra   $079c
; vcmd e0
0798: 5d        mov   x,a
0799: 3f 0b 10  call  $100b             ; read a byte from voice ptr
079c: c4 0b     mov   $0b,a
079e: 4d        push  x
079f: e4 05     mov   a,$05
07a1: 08 04     or    a,#$04
07a3: 5d        mov   x,a
07a4: 8f 00 08  mov   $08,#$00
07a7: 8f 32 09  mov   $09,#$32
07aa: 8d 00     mov   y,#$00
07ac: e4 0b     mov   a,$0b
07ae: f0 06     beq   $07b6
07b0: 8d 06     mov   y,#$06
07b2: cf        mul   ya
07b3: fd        mov   y,a
07b4: e4 0b     mov   a,$0b
07b6: 8f 04 0a  mov   $0a,#$04
07b9: d8 f2     mov   $f2,x
07bb: c4 f3     mov   $f3,a
07bd: fc        inc   y
07be: 3d        inc   x
07bf: f7 08     mov   a,($08)+y
07c1: 8b 0a     dec   $0a
07c3: d0 f4     bne   $07b9
07c5: ce        pop   x
07c6: fc        inc   y
07c7: d5 b1 02  mov   $02b1+x,a
07ca: f7 08     mov   a,($08)+y
07cc: d5 b0 02  mov   $02b0+x,a
07cf: e4 0c     mov   a,$0c
07d1: 30 03     bmi   $07d6
07d3: 5f ab 05  jmp   $05ab

07d6: 8f 00 0c  mov   $0c,#$00
07d9: 6f        ret

; vcmd e1
07da: 5d        mov   x,a
07db: 3f 0b 10  call  $100b             ; read a byte from voice ptr
07de: d4 b0     mov   $b0+x,a
07e0: e4 64     mov   a,$64
07e2: 0e 03 00  tset1 $0003
07e5: 5f ab 05  jmp   $05ab

; vcmd e2
07e8: 5d        mov   x,a
07e9: 3f 14 10  call  $1014             ; read a word from voice ptr
07ec: c4 0b     mov   $0b,a
07ee: d5 21 03  mov   $0321+x,a
07f1: f4 b0     mov   a,$b0+x
07f3: 80        setc
07f4: a4 0b     sbc   a,$0b
07f6: b0 08     bcs   $0800
07f8: 48 ff     eor   a,#$ff
07fa: bc        inc   a
07fb: 09 64 69  or    ($69),($64)
07fe: 2f 09     bra   $0809
0800: c4 0b     mov   $0b,a
0802: e4 64     mov   a,$64
0804: 4e 69 00  tclr1 $0069
0807: e4 0b     mov   a,$0b
0809: 3f 34 10  call  $1034
080c: d5 e0 02  mov   $02e0+x,a
080f: e4 09     mov   a,$09
0811: d5 d1 02  mov   $02d1+x,a
0814: e4 08     mov   a,$08
0816: d4 a1     mov   $a1+x,a
0818: e8 00     mov   a,#$00
081a: d5 61 03  mov   $0361+x,a
081d: 5f ab 05  jmp   $05ab

; vcmd e3
0820: 5d        mov   x,a
0821: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0824: d5 b2 03  mov   $03b2+x,a
0827: 3f 0b 10  call  $100b             ; read a byte from voice ptr
082a: d5 a3 03  mov   $03a3+x,a
082d: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0830: 2f 03     bra   $0835
; vcmd e4
0832: 5d        mov   x,a
0833: e8 00     mov   a,#$00
0835: d4 d0     mov   $d0+x,a
0837: d5 c3 03  mov   $03c3+x,a
083a: e8 00     mov   a,#$00
083c: d5 b3 03  mov   $03b3+x,a
083f: 5f ab 05  jmp   $05ab

0842: 5d        mov   x,a
0843: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0846: c4 04     mov   $04,a
0848: e4 64     mov   a,$64
084a: 0e 03 00  tset1 $0003
084d: 5f ab 05  jmp   $05ab

; vcmd e6
0850: 5d        mov   x,a
0851: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0854: 2d        push  a
0855: d8 0b     mov   $0b,x
0857: 28 70     and   a,#$70
0859: 9f        xcn   a
085a: 5d        mov   x,a
085b: f5 46 11  mov   a,$1146+x
085e: f8 0b     mov   x,$0b
0860: d5 d0 02  mov   $02d0+x,a
0863: ae        pop   a
0864: 28 0f     and   a,#$0f
0866: 5d        mov   x,a
0867: f5 4e 11  mov   a,$114e+x
086a: f8 0b     mov   x,$0b
086c: d4 80     mov   $80+x,a
086e: e4 64     mov   a,$64
0870: 0e 03 00  tset1 $0003
0873: 5f ab 05  jmp   $05ab

; vcmd e7
0876: 5d        mov   x,a
0877: 3f 0b 10  call  $100b             ; read a byte from voice ptr
087a: d4 22     mov   $22+x,a
087c: 5f ab 05  jmp   $05ab

; vcmd e8
087f: 5d        mov   x,a
0880: 3f 14 10  call  $1014             ; read a word from voice ptr
0883: c4 0b     mov   $0b,a
0885: d5 30 03  mov   $0330+x,a
0888: f4 22     mov   a,$22+x
088a: 80        setc
088b: a4 0b     sbc   a,$0b
088d: b0 08     bcs   $0897
088f: 48 ff     eor   a,#$ff
0891: bc        inc   a
0892: 09 64 6f  or    ($6f),($64)
0895: 2f 09     bra   $08a0
0897: c4 0b     mov   $0b,a
0899: e4 64     mov   a,$64
089b: 4e 6f 00  tclr1 $006f
089e: e4 0b     mov   a,$0b
08a0: 3f 34 10  call  $1034
08a3: d5 00 03  mov   $0300+x,a
08a6: e4 09     mov   a,$09
08a8: d5 f1 02  mov   $02f1+x,a
08ab: e4 08     mov   a,$08
08ad: d4 b1     mov   $b1+x,a
08af: e8 00     mov   a,#$00
08b1: d5 71 03  mov   $0371+x,a
08b4: 5f ab 05  jmp   $05ab

; vcmd e9
08b7: 5d        mov   x,a
08b8: 3f 0b 10  call  $100b             ; read a byte from voice ptr
08bb: c4 07     mov   $07,a
08bd: 5f ab 05  jmp   $05ab

; vcmd ea
08c0: 5d        mov   x,a
08c1: 3f 0b 10  call  $100b             ; read a byte from voice ptr
08c4: d5 50 03  mov   $0350+x,a
08c7: 5f ab 05  jmp   $05ab

; vcmd eb
08ca: 5d        mov   x,a
08cb: e8 20     mov   a,#$20
08cd: 24 65     and   a,$65
08cf: c4 65     mov   $65,a
08d1: 3f 14 10  call  $1014             ; read a word from voice ptr
08d4: c4 09     mov   $09,a
08d6: e4 08     mov   a,$08
08d8: 04 6a     or    a,$6a
08da: 68 c0     cmp   a,#$c0
08dc: d0 1d     bne   $08fb
08de: e8 40     mov   a,#$40
08e0: 8d 5c     mov   y,#$5c
08e2: cb f2     mov   $f2,y
08e4: c4 f3     mov   $f3,a
08e6: e8 40     mov   a,#$40
08e8: 4e 00 00  tclr1 $0000
08eb: 4e 6a 00  tclr1 $006a
08ee: e8 00     mov   a,#$00
08f0: 4d        push  x
08f1: cd 0c     mov   x,#$0c
08f3: d4 32     mov   $32+x,a
08f5: ce        pop   x
08f6: e4 08     mov   a,$08
08f8: 30 01     bmi   $08fb
08fa: 6f        ret

08fb: c4 6a     mov   $6a,a
08fd: e4 09     mov   a,$09
08ff: 28 1f     and   a,#$1f
0901: 04 65     or    a,$65
0903: c4 65     mov   $65,a
0905: 5f ab 05  jmp   $05ab

; vcmd ec
0908: 5d        mov   x,a
0909: e4 64     mov   a,$64
090b: 4e 6a 00  tclr1 $006a
090e: e8 20     mov   a,#$20
0910: 24 65     and   a,$65
0912: c4 65     mov   $65,a
0914: 5f ab 05  jmp   $05ab

; vcmd ed
0917: 5d        mov   x,a
0918: 3f 0b 10  call  $100b             ; read a byte from voice ptr
091b: c4 08     mov   $08,a
091d: d5 31 03  mov   $0331+x,a
0920: e4 79     mov   a,$79
0922: 24 64     and   a,$64
0924: f0 25     beq   $094b
0926: f4 43     mov   a,$43+x
0928: f0 2a     beq   $0954
092a: e4 08     mov   a,$08
092c: 74 43     cmp   a,$43+x
092e: b0 24     bcs   $0954
0930: d4 43     mov   $43+x,a
0932: f5 91 00  mov   a,$0091+x
0935: c4 08     mov   $08,a
0937: f4 43     mov   a,$43+x
0939: 3f 34 10  call  $1034
093c: d5 20 03  mov   $0320+x,a
093f: e4 09     mov   a,$09
0941: d5 11 03  mov   $0311+x,a
0944: e8 00     mov   a,#$00
0946: d5 80 03  mov   $0380+x,a
0949: 2f 09     bra   $0954
094b: e4 08     mov   a,$08
094d: d4 43     mov   $43+x,a
094f: e4 64     mov   a,$64
0951: 0e 03 00  tset1 $0003
0954: 5f ab 05  jmp   $05ab

; vcmd ee
0957: 5d        mov   x,a
0958: 3f 14 10  call  $1014             ; read a word from voice ptr
095b: c4 0b     mov   $0b,a
095d: d5 31 03  mov   $0331+x,a
0960: e4 79     mov   a,$79
0962: 24 64     and   a,$64
0964: d0 31     bne   $0997
0966: f4 43     mov   a,$43+x
0968: 80        setc
0969: a4 0b     sbc   a,$0b
096b: b0 08     bcs   $0975
096d: 48 ff     eor   a,#$ff
096f: bc        inc   a
0970: 09 64 68  or    ($68),($64)
0973: 2f 09     bra   $097e
0975: c4 0b     mov   $0b,a
0977: e4 64     mov   a,$64
0979: 4e 68 00  tclr1 $0068
097c: e4 0b     mov   a,$0b
097e: 3f 34 10  call  $1034
0981: d5 f0 02  mov   $02f0+x,a
0984: e4 09     mov   a,$09
0986: d5 e1 02  mov   $02e1+x,a
0989: e4 08     mov   a,$08
098b: d4 a0     mov   $a0+x,a
098d: e8 00     mov   a,#$00
098f: d5 60 03  mov   $0360+x,a
0992: e4 64     mov   a,$64
0994: 0e 79 00  tset1 $0079
0997: 5f ab 05  jmp   $05ab

; vcmd ef
099a: 5d        mov   x,a
099b: 3f 14 10  call  $1014             ; read a word from voice ptr
099e: fd        mov   y,a
099f: e4 08     mov   a,$08
09a1: da 7d     movw  $7d,ya
09a3: 5f ab 05  jmp   $05ab

; vcmd f0
09a6: 5d        mov   x,a
09a7: e4 7c     mov   a,$7c
09a9: d0 03     bne   $09ae
09ab: 5f ab 05  jmp   $05ab

09ae: e8 80     mov   a,#$80
09b0: c4 7c     mov   $7c,a
09b2: ba 7d     movw  ya,$7d
09b4: da 10     movw  $10,ya
09b6: 8d 00     mov   y,#$00
09b8: 6f        ret

; vcmd f1
09b9: 5d        mov   x,a
09ba: 3f 0b 10  call  $100b             ; read a byte from voice ptr
09bd: c4 09     mov   $09,a
09bf: d4 33     mov   $33+x,a
09c1: d5 c0 02  mov   $02c0+x,a
09c4: c4 0b     mov   $0b,a
09c6: f5 d0 02  mov   a,$02d0+x
09c9: fd        mov   y,a
09ca: e4 0b     mov   a,$0b
09cc: cf        mul   ya
09cd: dd        mov   a,y
09ce: d0 02     bne   $09d2
09d0: 8d 01     mov   y,#$01
09d2: db 42     mov   $42+x,y
09d4: dd        mov   a,y
09d5: d5 c1 02  mov   $02c1+x,a
09d8: 3f 14 10  call  $1014             ; read a word from voice ptr
09db: 28 7f     and   a,#$7f
09dd: 3f 9e 06  call  $069e
09e0: da 0a     movw  $0a,ya
09e2: d5 40 03  mov   $0340+x,a
09e5: dd        mov   a,y
09e6: d5 41 03  mov   $0341+x,a
09e9: e4 08     mov   a,$08
09eb: 3f f2 05  call  $05f2
09ee: e4 09     mov   a,$09
09f0: 2d        push  a
09f1: f4 52     mov   a,$52+x
09f3: fb 53     mov   y,$53+x
09f5: 80        setc
09f6: 9a 0a     subw  ya,$0a
09f8: b0 0e     bcs   $0a08
09fa: 48 ff     eor   a,#$ff
09fc: bc        inc   a
09fd: c4 09     mov   $09,a
09ff: dd        mov   a,y
0a00: 48 ff     eor   a,#$ff
0a02: fd        mov   y,a
0a03: 09 64 70  or    ($70),($64)
0a06: 2f 07     bra   $0a0f
0a08: c4 09     mov   $09,a
0a0a: e4 64     mov   a,$64
0a0c: 4e 70 00  tclr1 $0070
0a0f: ae        pop   a
0a10: 4d        push  x
0a11: 5d        mov   x,a
0a12: e4 09     mov   a,$09
0a14: 9e        div   ya,x
0a15: d8 08     mov   $08,x
0a17: ce        pop   x
0a18: d5 01 03  mov   $0301+x,a
0a1b: 4d        push  x
0a1c: e8 00     mov   a,#$00
0a1e: f8 08     mov   x,$08
0a20: 9e        div   ya,x
0a21: ce        pop   x
0a22: d5 10 03  mov   $0310+x,a
0a25: e4 08     mov   a,$08
0a27: d4 c0     mov   $c0+x,a
0a29: e8 00     mov   a,#$00
0a2b: d5 70 03  mov   $0370+x,a
0a2e: 6f        ret

; vcmd f4
0a2f: 5d        mov   x,a
0a30: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a33: d5 51 03  mov   $0351+x,a
0a36: 5f ab 05  jmp   $05ab

; vcmd f2
0a39: 5d        mov   x,a
0a3a: 09 64 73  or    ($73),($64)
0a3d: 5f ab 05  jmp   $05ab

; vcmd f3
0a40: 5d        mov   x,a
0a41: e4 64     mov   a,$64
0a43: 4e 73 00  tclr1 $0073
0a46: 5f ab 05  jmp   $05ab

; vcmd f5
0a49: 5d        mov   x,a
0a4a: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a4d: c4 6b     mov   $6b,a
0a4f: c5 e2 03  mov   $03e2,a
0a52: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a55: c4 75     mov   $75,a
0a57: c5 a0 03  mov   $03a0,a
0a5a: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a5d: c4 76     mov   $76,a
0a5f: c5 a1 03  mov   $03a1,a
0a62: e4 7b     mov   a,$7b
0a64: f0 07     beq   $0a6d
0a66: d8 08     mov   $08,x
0a68: 3f 67 10  call  $1067
0a6b: f8 08     mov   x,$08
0a6d: b2 65     clr5  $65
0a6f: 5f ab 05  jmp   $05ab

; vcmd f6
0a72: 5d        mov   x,a
0a73: e8 00     mov   a,#$00
0a75: c4 75     mov   $75,a
0a77: c4 76     mov   $76,a
0a79: a2 65     set5  $65
0a7b: 5f ab 05  jmp   $05ab

; vcmd f7
0a7e: 5d        mov   x,a
0a7f: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a82: 3f 9b 0f  call  $0f9b
0a85: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a88: c4 77     mov   $77,a
0a8a: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0a8d: 4d        push  x
0a8e: 8d 08     mov   y,#$08
0a90: cf        mul   ya
0a91: 5d        mov   x,a
0a92: 8d 0f     mov   y,#$0f
0a94: f5 5e 11  mov   a,$115e+x
0a97: cb f2     mov   $f2,y
0a99: c4 f3     mov   $f3,a
0a9b: 3d        inc   x
0a9c: dd        mov   a,y
0a9d: 60        clrc
0a9e: 88 10     adc   a,#$10
0aa0: fd        mov   y,a
0aa1: 10 f1     bpl   $0a94
0aa3: ce        pop   x
0aa4: 5f ab 05  jmp   $05ab

; vcmd f8
0aa7: 5d        mov   x,a
0aa8: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0aab: 28 c0     and   a,#$c0
0aad: 04 6b     or    a,$6b
0aaf: c4 6b     mov   $6b,a
0ab1: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0ab4: c4 75     mov   $75,a
0ab6: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0ab9: c4 76     mov   $76,a
0abb: e4 7b     mov   a,$7b
0abd: f0 07     beq   $0ac6
0abf: d8 08     mov   $08,x
0ac1: 3f 67 10  call  $1067
0ac4: f8 08     mov   x,$08
0ac6: b2 65     clr5  $65
0ac8: 5f ab 05  jmp   $05ab

; vcmd f9
0acb: 5d        mov   x,a
0acc: e5 e2 03  mov   a,$03e2
0acf: c4 6b     mov   $6b,a
0ad1: e5 a0 03  mov   a,$03a0
0ad4: c4 75     mov   $75,a
0ad6: e5 a1 03  mov   a,$03a1
0ad9: c4 76     mov   $76,a
0adb: 6f        ret

; vcmd ff
0adc: 5d        mov   x,a
0add: 3f 14 10  call  $1014             ; read a word from voice ptr
0ae0: 4d        push  x
0ae1: c4 0b     mov   $0b,a
0ae3: 8f 01 09  mov   $09,#$01
0ae6: e4 08     mov   a,$08
0ae8: 24 09     and   a,$09
0aea: f0 11     beq   $0afd
0aec: cd 00     mov   x,#$00
0aee: 68 01     cmp   a,#$01
0af0: f0 07     beq   $0af9
0af2: 3d        inc   x
0af3: 3d        inc   x
0af4: 5c        lsr   a
0af5: 68 01     cmp   a,#$01
0af7: d0 f9     bne   $0af2
0af9: e4 0b     mov   a,$0b
0afb: d4 22     mov   $22+x,a
0afd: 0b 09     asl   $09
0aff: d0 e5     bne   $0ae6
0b01: ce        pop   x
0b02: 5f ab 05  jmp   $05ab

; vcmd e5
0b05: 5d        mov   x,a
0b06: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0b09: d5 b3 03  mov   $03b3+x,a
0b0c: 2d        push  a
0b0d: 8d 00     mov   y,#$00
0b0f: f4 d0     mov   a,$d0+x
0b11: d8 08     mov   $08,x
0b13: ce        pop   x
0b14: 9e        div   ya,x
0b15: f8 08     mov   x,$08
0b17: d5 c2 03  mov   $03c2+x,a
0b1a: 5f ab 05  jmp   $05ab

; vcmd fa
0b1d: 5d        mov   x,a
0b1e: 3f 14 10  call  $1014             ; read a word from voice ptr
0b21: d4 13     mov   $13+x,a
0b23: e4 08     mov   a,$08
0b25: d4 12     mov   $12+x,a
0b27: 5f ab 05  jmp   $05ab

; vcmd fb
0b2a: 5d        mov   x,a
0b2b: 3f 14 10  call  $1014             ; read a word from voice ptr
0b2e: fd        mov   y,a
0b2f: f4 12     mov   a,$12+x
0b31: c7 e0     mov   ($e0+x),a
0b33: f4 13     mov   a,$13+x
0b35: bb e0     inc   $e0+x
0b37: c7 e0     mov   ($e0+x),a
0b39: bb e0     inc   $e0+x
0b3b: e4 08     mov   a,$08
0b3d: d4 12     mov   $12+x,a
0b3f: dd        mov   a,y
0b40: d4 13     mov   $13+x,a
0b42: 5f ab 05  jmp   $05ab

; vcmd fc
0b45: 5d        mov   x,a
0b46: 9b e0     dec   $e0+x
0b48: e7 e0     mov   a,($e0+x)
0b4a: d4 13     mov   $13+x,a
0b4c: 9b e0     dec   $e0+x
0b4e: e7 e0     mov   a,($e0+x)
0b50: d4 12     mov   $12+x,a
0b52: 5f ab 05  jmp   $05ab

; vcmd fd
0b55: 5d        mov   x,a
0b56: 3f 0b 10  call  $100b             ; read a byte from voice ptr
0b59: fd        mov   y,a
0b5a: f4 12     mov   a,$12+x
0b5c: c7 e0     mov   ($e0+x),a
0b5e: bb e0     inc   $e0+x
0b60: f4 13     mov   a,$13+x
0b62: c7 e0     mov   ($e0+x),a
0b64: bb e0     inc   $e0+x
0b66: dd        mov   a,y
0b67: c7 e0     mov   ($e0+x),a
0b69: bb e0     inc   $e0+x
0b6b: 5f ab 05  jmp   $05ab

; vcmd fe
0b6e: 5d        mov   x,a
0b6f: 9b e0     dec   $e0+x
0b71: e7 e0     mov   a,($e0+x)
0b73: 9c        dec   a
0b74: d0 07     bne   $0b7d
0b76: 9b e0     dec   $e0+x
0b78: 9b e0     dec   $e0+x
0b7a: 5f ab 05  jmp   $05ab

0b7d: c7 e0     mov   ($e0+x),a
0b7f: 9b e0     dec   $e0+x
0b81: e7 e0     mov   a,($e0+x)
0b83: d4 13     mov   $13+x,a
0b85: 9b e0     dec   $e0+x
0b87: e7 e0     mov   a,($e0+x)
0b89: d4 12     mov   $12+x,a
0b8b: bb e0     inc   $e0+x
0b8d: bb e0     inc   $e0+x
0b8f: bb e0     inc   $e0+x
0b91: 5f ab 05  jmp   $05ab

0b94: 68 f0     cmp   a,#$f0
0b96: 90 15     bcc   $0bad
0b98: 28 0f     and   a,#$0f
0b9a: 1c        asl   a
0b9b: d8 08     mov   $08,x
0b9d: 5d        mov   x,a
0b9e: f5 b1 0c  mov   a,$0cb1+x
0ba1: c4 0a     mov   $0a,a
0ba3: f5 b2 0c  mov   a,$0cb2+x
0ba6: c4 0b     mov   $0b,a
0ba8: cd 00     mov   x,#$00
0baa: 1f 0a 00  jmp   ($000a+x)

0baf: 90 12     bcc   $0bc3
0bb1: 80        setc
0bb2: a8 10     sbc   a,#$10
0bb4: 1c        asl   a
0bb5: 5d        mov   x,a
0bb6: f5 01 22  mov   a,$2201+x
0bb9: fd        mov   y,a
0bba: f5 00 22  mov   a,$2200+x
0bbd: da 10     movw  $10,ya            ; sfx table $2200?
0bbf: 8d 00     mov   y,#$00
0bc1: 2f 14     bra   $0bd7
0bc3: 1c        asl   a
0bc4: 5d        mov   x,a
0bc5: f5 01 12  mov   a,$1201+x
0bc8: fd        mov   y,a
0bc9: f5 00 12  mov   a,$1200+x         ; song table $1200
0bcc: da 10     movw  $10,ya
0bce: e8 00     mov   a,#$00
0bd0: c4 75     mov   $75,a
0bd2: c4 76     mov   $76,a
0bd4: c4 07     mov   $07,a
0bd6: fd        mov   y,a
;
0bd7: f7 10     mov   a,($10)+y         ; track header +00h - usually 0xff
0bd9: 3a 10     incw  $10
0bdb: c4 08     mov   $08,a
0bdd: f7 10     mov   a,($10)+y         ; track header +01h - track mask 01,02,04... (0: end of header)
0bdf: 3a 10     incw  $10
0be1: fd        mov   y,a
0be2: d0 0f     bne   $0bf3
; end of header
0be4: e8 00     mov   a,#$00
0be6: c4 7c     mov   $7c,a
0be8: 48 ff     eor   a,#$ff
0bea: c4 04     mov   $04,a
0bec: e8 20     mov   a,#$20
0bee: 24 65     and   a,$65
0bf0: c4 65     mov   $65,a
0bf2: 6f        ret
; load track
0bf3: c4 09     mov   $09,a             ; save track mask
0bf5: e4 11     mov   a,$11
0bf7: 68 22     cmp   a,#$22
0bf9: 90 07     bcc   $0c02
0bfb: e4 09     mov   a,$09
0bfd: 0e 71 00  tset1 $0071
0c00: 2f 05     bra   $0c07
0c02: e4 09     mov   a,$09
0c04: 4e 71 00  tclr1 $0071
0c07: cd 00     mov   x,#$00
0c09: 68 01     cmp   a,#$01
0c0b: f0 07     beq   $0c14
0c0d: 3d        inc   x
0c0e: 3d        inc   x
0c0f: 5c        lsr   a
0c10: 68 01     cmp   a,#$01
0c12: d0 f9     bne   $0c0d
0c14: e8 00     mov   a,#$00
0c16: d4 91     mov   $91+x,a
0c18: f4 32     mov   a,$32+x
0c1a: d0 04     bne   $0c20
0c1c: e4 08     mov   a,$08
0c1e: 2f 0e     bra   $0c2e
0c20: 64 08     cmp   a,$08
0c22: f0 f8     beq   $0c1c
0c24: 90 f6     bcc   $0c1c
0c26: 3a 10     incw  $10
0c28: 3a 10     incw  $10
0c2a: 8d 00     mov   y,#$00
0c2c: 2f a9     bra   $0bd7
0c2e: d4 32     mov   $32+x,a
0c30: e4 09     mov   a,$09
0c32: 4e 79 00  tclr1 $0079
0c35: 4e 78 00  tclr1 $0078
0c38: 4e 67 00  tclr1 $0067
0c3b: 4e 73 00  tclr1 $0073
0c3e: 4e 74 00  tclr1 $0074
0c41: 4e 6a 00  tclr1 $006a
0c44: 4d        push  x
0c45: e8 50     mov   a,#$50
0c47: 8d 03     mov   y,#$03
0c49: da 0a     movw  $0a,ya            ; #$0350
0c4b: 7d        mov   a,x
0c4c: fd        mov   y,a
0c4d: cd 05     mov   x,#$05
0c4f: e8 00     mov   a,#$00
0c51: d7 0a     mov   ($0a)+y,a
0c53: fc        inc   y
0c54: d7 0a     mov   ($0a)+y,a
0c56: dc        dec   y
0c57: e8 10     mov   a,#$10
0c59: 60        clrc
0c5a: 84 0a     adc   a,$0a
0c5c: c4 0a     mov   $0a,a
0c5e: 1d        dec   x
0c5f: 10 ee     bpl   $0c4f
0c61: e8 00     mov   a,#$00
0c63: ce        pop   x
0c64: d4 33     mov   $33+x,a
0c66: d4 a0     mov   $a0+x,a
0c68: d4 a1     mov   $a1+x,a
0c6a: d4 b1     mov   $b1+x,a
0c6c: d4 d0     mov   $d0+x,a
0c6e: d4 d1     mov   $d1+x,a
0c70: e8 ff     mov   a,#$ff
0c72: d4 43     mov   $43+x,a
0c74: d4 22     mov   $22+x,a
0c76: 09 09 63  or    ($63),($09)
0c79: e4 09     mov   a,$09
0c7b: 4e 62 00  tclr1 $0062
0c7e: 4e 6a 00  tclr1 $006a
0c81: e8 0a     mov   a,#$0a
0c83: d4 b0     mov   $b0+x,a
0c85: 7d        mov   a,x
0c86: 5c        lsr   a
0c87: c4 0b     mov   $0b,a
0c89: f0 0c     beq   $0c97
0c8b: e8 00     mov   a,#$00
0c8d: 8f 0c 08  mov   $08,#$0c
0c90: 60        clrc
0c91: 84 08     adc   a,$08
0c93: 8b 0b     dec   $0b
0c95: d0 f9     bne   $0c90
0c97: d4 e0     mov   $e0+x,a
0c99: e8 02     mov   a,#$02
0c9b: d4 e1     mov   $e1+x,a
0c9d: 8d 00     mov   y,#$00
0c9f: f7 10     mov   a,($10)+y
0ca1: d4 12     mov   $12+x,a           ; track header +02h - voice ptr (lo)
0ca3: 3a 10     incw  $10
0ca5: f7 10     mov   a,($10)+y
0ca7: 3a 10     incw  $10
0ca9: d4 13     mov   $13+x,a           ; track header +03h - voice ptr (hi)
0cab: 09 09 00  or    ($00),($09)
0cae: 5f d7 0b  jmp   $0bd7

0cb1: dw $0cc6  ; f0
0cb3: dw $0ce2  ; f1
0cb5: dw $0cfe  ; f2
0cb7: dw $0d05  ; f3
0cb9: dw $0d0c  ; f4
0cbb: dw $0d10  ; f5
0cbd: dw $0d4f  ; f6
0cbf: dw $0cc5  ; f7
0cc1: dw $0cc5  ; f8
0cc3: dw $0cc5  ; f9

0cc5: 6f        ret

0cc6: e8 19     mov   a,#$19
0cc8: 8d 0c     mov   y,#$0c
0cca: cb f2     mov   $f2,y
0ccc: c4 f3     mov   $f3,a
0cce: 8d 1c     mov   y,#$1c
0cd0: cb f2     mov   $f2,y
0cd2: c4 f3     mov   $f3,a
0cd4: e4 75     mov   a,$75
0cd6: 04 76     or    a,$76
0cd8: f0 03     beq   $0cdd
0cda: 3f 67 10  call  $1067
0cdd: e8 01     mov   a,#$01
0cdf: c4 7b     mov   $7b,a
0ce1: 6f        ret

0ce2: e8 7f     mov   a,#$7f
0ce4: 8d 0c     mov   y,#$0c
0ce6: cb f2     mov   $f2,y
0ce8: c4 f3     mov   $f3,a
0cea: 8d 1c     mov   y,#$1c
0cec: cb f2     mov   $f2,y
0cee: c4 f3     mov   $f3,a
0cf0: e5 a0 03  mov   a,$03a0
0cf3: c4 75     mov   $75,a
0cf5: e5 a1 03  mov   a,$03a1
0cf8: c4 76     mov   $76,a
0cfa: 8f 00 7b  mov   $7b,#$00
0cfd: 6f        ret

0cfe: 8f 01 72  mov   $72,#$01
0d01: 8f ff 7a  mov   $7a,#$ff
0d04: 6f        ret

0d05: 8f 00 72  mov   $72,#$00
0d08: 8f ff 7a  mov   $7a,#$ff
0d0b: 6f        ret

0d0c: 8f 01 7c  mov   $7c,#$01
0d0f: 6f        ret

0d10: e4 78     mov   a,$78
0d12: f0 01     beq   $0d15
0d14: 6f        ret

0d15: cd 00     mov   x,#$00
0d17: d8 78     mov   $78,x
0d19: d8 79     mov   $79,x
0d1b: 8f 01 64  mov   $64,#$01
0d1e: 8f 3c 08  mov   $08,#$3c
0d21: e4 64     mov   a,$64
0d23: fd        mov   y,a
0d24: 24 00     and   a,$00
0d26: f0 20     beq   $0d48
0d28: 24 71     and   a,$71
0d2a: d0 1c     bne   $0d48
0d2c: dd        mov   a,y
0d2d: 0e 78 00  tset1 $0078
0d30: 0e 79 00  tset1 $0079
0d33: f4 43     mov   a,$43+x
0d35: 3f 34 10  call  $1034
0d38: d5 20 03  mov   $0320+x,a
0d3b: e4 09     mov   a,$09
0d3d: d5 11 03  mov   $0311+x,a
0d40: e4 08     mov   a,$08
0d42: d4 91     mov   $91+x,a
0d44: e8 00     mov   a,#$00
0d46: d4 a0     mov   $a0+x,a
0d48: 3d        inc   x
0d49: 3d        inc   x
0d4a: 0b 64     asl   $64
0d4c: d0 d3     bne   $0d21
0d4e: 6f        ret

0d4f: e8 00     mov   a,#$00
0d51: c4 78     mov   $78,a
0d53: c4 79     mov   $79,a
0d55: c4 6a     mov   $6a,a
0d57: c4 75     mov   $75,a
0d59: c4 76     mov   $76,a
0d5b: c4 62     mov   $62,a
0d5d: 8f 01 64  mov   $64,#$01
0d60: cd 00     mov   x,#$00
0d62: 7d        mov   a,x
0d63: 9f        xcn   a
0d64: 5c        lsr   a
0d65: 3f 2c 07  call  $072c
0d68: 3d        inc   x
0d69: 3d        inc   x
0d6a: 0b 64     asl   $64
0d6c: d0 f4     bne   $0d62
0d6e: 6f        ret

0d6f: f4 33     mov   a,$33+x
0d71: f0 2d     beq   $0da0
0d73: 9b 33     dec   $33+x
0d75: f4 42     mov   a,$42+x
0d77: f0 27     beq   $0da0
0d79: 9b 42     dec   $42+x
0d7b: d0 23     bne   $0da0
0d7d: e4 64     mov   a,$64
0d7f: 24 67     and   a,$67
0d81: f0 0a     beq   $0d8d
0d83: f5 a1 02  mov   a,$02a1+x
0d86: d4 42     mov   $42+x,a
0d88: d5 c1 02  mov   $02c1+x,a
0d8b: 2f 13     bra   $0da0
0d8d: e4 64     mov   a,$64
0d8f: 24 73     and   a,$73
0d91: f0 05     beq   $0d98
0d93: 0e 74 00  tset1 $0074
0d96: 2f 08     bra   $0da0
0d98: e4 64     mov   a,$64
0d9a: 4e 74 00  tclr1 $0074
0d9d: 09 64 63  or    ($63),($64)
0da0: e4 66     mov   a,$66
0da2: 24 64     and   a,$64
0da4: d0 05     bne   $0dab
0da6: 3f 53 0e  call  $0e53
0da9: 2f 37     bra   $0de2
0dab: f4 d0     mov   a,$d0+x
0dad: f0 33     beq   $0de2
0daf: f5 b2 03  mov   a,$03b2+x
0db2: de c1 2b  cbne  $c1+x,$0de0
0db5: f5 00 01  mov   a,$0100+x
0db8: 75 b3 03  cmp   a,$03b3+x
0dbb: d0 05     bne   $0dc2
0dbd: f5 c3 03  mov   a,$03c3+x
0dc0: 2f 0d     bra   $0dcf
0dc2: 40        setp
0dc3: bb 00     inc   $00+x
0dc5: 20        clrp
0dc6: fd        mov   y,a
0dc7: f0 02     beq   $0dcb
0dc9: f4 d0     mov   a,$d0+x
0dcb: 60        clrc
0dcc: 95 c2 03  adc   a,$03c2+x
0dcf: d4 d0     mov   $d0+x,a
0dd1: f5 a2 03  mov   a,$03a2+x
0dd4: 60        clrc
0dd5: 95 a3 03  adc   a,$03a3+x
0dd8: d5 a2 03  mov   $03a2+x,a
0ddb: 3f 7c 10  call  $107c
0dde: 2f 02     bra   $0de2
0de0: bb c1     inc   $c1+x
0de2: 3f a6 05  call  $05a6
0de5: e4 7c     mov   a,$7c
0de7: 10 0c     bpl   $0df5
0de9: e8 00     mov   a,#$00
0deb: c4 7c     mov   $7c,a
0ded: 3f d0 0b  call  $0bd0
0df0: ae        pop   a
0df1: ae        pop   a
0df2: 5f bb 04  jmp   $04bb

0df5: e4 64     mov   a,$64
0df7: 24 02     and   a,$02
0df9: f0 15     beq   $0e10
0dfb: 4e 02 00  tclr1 $0002
0dfe: e4 05     mov   a,$05
0e00: 08 02     or    a,#$02
0e02: fd        mov   y,a
0e03: f4 52     mov   a,$52+x
0e05: cb f2     mov   $f2,y
0e07: c4 f3     mov   $f3,a
0e09: fc        inc   y
0e0a: f4 53     mov   a,$53+x
0e0c: cb f2     mov   $f2,y
0e0e: c4 f3     mov   $f3,a
0e10: e4 64     mov   a,$64
0e12: 24 03     and   a,$03
0e14: d0 09     bne   $0e1f
0e16: e4 7a     mov   a,$7a
0e18: 24 64     and   a,$64
0e1a: f0 36     beq   $0e52
0e1c: 4e 7a 00  tclr1 $007a
0e1f: 4e 03 00  tclr1 $0003
0e22: e4 05     mov   a,$05
0e24: 08 00     or    a,#$00
0e26: fd        mov   y,a
0e27: 6d        push  y
0e28: e8 ff     mov   a,#$ff
0e2a: eb 04     mov   y,$04
0e2c: cf        mul   ya
0e2d: f4 80     mov   a,$80+x
0e2f: cf        mul   ya
0e30: f4 43     mov   a,$43+x
0e32: cf        mul   ya
0e33: dd        mov   a,y
0e34: cf        mul   ya
0e35: cb 08     mov   $08,y
0e37: 3f ed 0f  call  $0fed
0e3a: f4 81     mov   a,$81+x
0e3c: eb 08     mov   y,$08
0e3e: cf        mul   ya
0e3f: dd        mov   a,y
0e40: ee        pop   y
0e41: cb f2     mov   $f2,y
0e43: c4 f3     mov   $f3,a
0e45: fc        inc   y
0e46: 6d        push  y
0e47: eb 08     mov   y,$08
0e49: f4 90     mov   a,$90+x
0e4b: cf        mul   ya
0e4c: dd        mov   a,y
0e4d: ee        pop   y
0e4e: cb f2     mov   $f2,y
0e50: c4 f3     mov   $f3,a
0e52: 6f        ret

0e53: f4 a0     mov   a,$a0+x
0e55: f0 5b     beq   $0eb2
0e57: 9b a0     dec   $a0+x
0e59: d0 0a     bne   $0e65
0e5b: e4 64     mov   a,$64
0e5d: 4e 79 00  tclr1 $0079
0e60: f5 31 03  mov   a,$0331+x
0e63: 2f 48     bra   $0ead
0e65: f5 f0 02  mov   a,$02f0+x
0e68: 60        clrc
0e69: 95 60 03  adc   a,$0360+x
0e6c: fd        mov   y,a
0e6d: e4 68     mov   a,$68
0e6f: 24 64     and   a,$64
0e71: d0 24     bne   $0e97
0e73: e4 78     mov   a,$78
0e75: 24 64     and   a,$64
0e77: f0 06     beq   $0e7f
0e79: e8 00     mov   a,#$00
0e7b: d4 a0     mov   $a0+x,a
0e7d: 2f 33     bra   $0eb2
0e7f: 90 05     bcc   $0e86
0e81: 9b 43     dec   $43+x
0e83: 09 64 03  or    ($03),($64)
0e86: dd        mov   a,y
0e87: d5 60 03  mov   $0360+x,a
0e8a: f5 e1 02  mov   a,$02e1+x
0e8d: f0 23     beq   $0eb2
0e8f: f4 43     mov   a,$43+x
0e91: 80        setc
0e92: b5 e1 02  sbc   a,$02e1+x
0e95: 2f 16     bra   $0ead
0e97: 90 05     bcc   $0e9e
0e99: bb 43     inc   $43+x
0e9b: 09 64 03  or    ($03),($64)
0e9e: dd        mov   a,y
0e9f: d5 60 03  mov   $0360+x,a
0ea2: f5 e1 02  mov   a,$02e1+x
0ea5: f0 0b     beq   $0eb2
0ea7: f4 43     mov   a,$43+x
0ea9: 60        clrc
0eaa: 95 e1 02  adc   a,$02e1+x
0ead: d4 43     mov   $43+x,a
0eaf: 09 64 03  or    ($03),($64)
0eb2: f4 a1     mov   a,$a1+x
0eb4: f0 4a     beq   $0f00
0eb6: 9b a1     dec   $a1+x
0eb8: d0 05     bne   $0ebf
0eba: f5 21 03  mov   a,$0321+x
0ebd: 2f 3c     bra   $0efb
0ebf: f5 e0 02  mov   a,$02e0+x
0ec2: 60        clrc
0ec3: 95 61 03  adc   a,$0361+x
0ec6: fd        mov   y,a
0ec7: e4 69     mov   a,$69
0ec9: 24 64     and   a,$64
0ecb: d0 18     bne   $0ee5
0ecd: 90 05     bcc   $0ed4
0ecf: 9b b0     dec   $b0+x
0ed1: 09 64 03  or    ($03),($64)
0ed4: dd        mov   a,y
0ed5: d5 61 03  mov   $0361+x,a
0ed8: f5 d1 02  mov   a,$02d1+x
0edb: f0 23     beq   $0f00
0edd: f4 b0     mov   a,$b0+x
0edf: 80        setc
0ee0: b5 d1 02  sbc   a,$02d1+x
0ee3: 2f 16     bra   $0efb
0ee5: 90 05     bcc   $0eec
0ee7: bb b0     inc   $b0+x
0ee9: 09 64 03  or    ($03),($64)
0eec: dd        mov   a,y
0eed: d5 61 03  mov   $0361+x,a
0ef0: f5 d1 02  mov   a,$02d1+x
0ef3: f0 0b     beq   $0f00
0ef5: f4 b0     mov   a,$b0+x
0ef7: 60        clrc
0ef8: 95 d1 02  adc   a,$02d1+x
0efb: d4 b0     mov   $b0+x,a
0efd: 09 64 03  or    ($03),($64)
0f00: f4 c0     mov   a,$c0+x
0f02: f0 7e     beq   $0f82
0f04: 9b c0     dec   $c0+x
0f06: d0 02     bne   $0f0a
0f08: e8 ff     mov   a,#$ff
0f0a: f5 10 03  mov   a,$0310+x
0f0d: 60        clrc
0f0e: 95 70 03  adc   a,$0370+x
0f11: fd        mov   y,a
0f12: e4 70     mov   a,$70
0f14: 24 64     and   a,$64
0f16: d0 30     bne   $0f48
0f18: 90 10     bcc   $0f2a
0f1a: 3f 56 10  call  $1056
0f1d: 9b 52     dec   $52+x
0f1f: e8 ff     mov   a,#$ff
0f21: 74 52     cmp   a,$52+x
0f23: d0 05     bne   $0f2a
0f25: 9b 53     dec   $53+x
0f27: 09 64 02  or    ($02),($64)
0f2a: dd        mov   a,y
0f2b: d5 70 03  mov   $0370+x,a
0f2e: f5 01 03  mov   a,$0301+x
0f31: c4 08     mov   $08,a
0f33: f0 4d     beq   $0f82
0f35: 8f 00 09  mov   $09,#$00
0f38: 3f 43 10  call  $1043
0f3b: f4 c0     mov   a,$c0+x
0f3d: f0 2c     beq   $0f6b
0f3f: f4 52     mov   a,$52+x
0f41: fb 53     mov   y,$53+x
0f43: 80        setc
0f44: 9a 08     subw  ya,$08
0f46: 2f 33     bra   $0f7b
0f48: 90 0c     bcc   $0f56
0f4a: 3f 56 10  call  $1056
0f4d: bb 52     inc   $52+x
0f4f: d0 05     bne   $0f56
0f51: bb 53     inc   $53+x
0f53: 09 64 02  or    ($02),($64)
0f56: dd        mov   a,y
0f57: d5 70 03  mov   $0370+x,a
0f5a: f5 01 03  mov   a,$0301+x
0f5d: c4 08     mov   $08,a
0f5f: f0 21     beq   $0f82
0f61: 8f 00 09  mov   $09,#$00
0f64: 3f 43 10  call  $1043
0f67: f4 c0     mov   a,$c0+x
0f69: d0 09     bne   $0f74
0f6b: f5 41 03  mov   a,$0341+x
0f6e: fd        mov   y,a
0f6f: f5 40 03  mov   a,$0340+x
0f72: 2f 07     bra   $0f7b
0f74: f4 52     mov   a,$52+x
0f76: fb 53     mov   y,$53+x
0f78: 60        clrc
0f79: 7a 08     addw  ya,$08
0f7b: d4 52     mov   $52+x,a
0f7d: db 53     mov   $53+x,y
0f7f: 09 64 02  or    ($02),($64)
0f82: f4 d0     mov   a,$d0+x
0f84: f0 14     beq   $0f9a
0f86: f5 b2 03  mov   a,$03b2+x
0f89: de c1 0e  cbne  $c1+x,$0f9a
0f8c: fb 23     mov   y,$23+x
0f8e: f5 a3 03  mov   a,$03a3+x
0f91: cf        mul   ya
0f92: dd        mov   a,y
0f93: 60        clrc
0f94: 95 a2 03  adc   a,$03a2+x
0f97: 3f 7c 10  call  $107c
0f9a: 6f        ret

0f9b: c4 6e     mov   $6e,a
0f9d: 8d 7d     mov   y,#$7d
0f9f: cb f2     mov   $f2,y
0fa1: e4 f3     mov   a,$f3
0fa3: 64 6e     cmp   a,$6e
0fa5: f0 32     beq   $0fd9
0fa7: e8 00     mov   a,#$00
0fa9: c4 f7     mov   $f7,a
0fab: 28 0f     and   a,#$0f
0fad: 48 ff     eor   a,#$ff
0faf: f3 6d 03  bbc7  $6d,$0fb5
0fb2: 60        clrc
0fb3: 84 6d     adc   a,$6d
0fb5: c4 6d     mov   $6d,a
0fb7: 8d 04     mov   y,#$04
0fb9: f6 85 11  mov   a,$1185+y
0fbc: c4 f2     mov   $f2,a
0fbe: e8 00     mov   a,#$00
0fc0: c4 f3     mov   $f3,a
0fc2: fe f5     dbnz  y,$0fb9
0fc4: e4 65     mov   a,$65
0fc6: 08 20     or    a,#$20
0fc8: 8d 6c     mov   y,#$6c
0fca: cb f2     mov   $f2,y
0fcc: c4 f3     mov   $f3,a
0fce: e4 6e     mov   a,$6e
0fd0: 8d 7d     mov   y,#$7d
0fd2: cb f2     mov   $f2,y
0fd4: c4 f3     mov   $f3,a
0fd6: 3f 23 11  call  $1123
0fd9: 68 00     cmp   a,#$00
0fdb: f0 09     beq   $0fe6
0fdd: 1c        asl   a
0fde: 1c        asl   a
0fdf: 1c        asl   a
0fe0: 48 ff     eor   a,#$ff
0fe2: bc        inc   a
0fe3: 60        clrc
0fe4: 88 00     adc   a,#$00
0fe6: 8d 6d     mov   y,#$6d
0fe8: cb f2     mov   $f2,y
0fea: c4 f3     mov   $f3,a
0fec: 6f        ret

0fed: e4 72     mov   a,$72
0fef: d0 04     bne   $0ff5
0ff1: e8 0a     mov   a,#$0a
0ff3: 2f 02     bra   $0ff7
0ff5: f4 b0     mov   a,$b0+x
0ff7: fd        mov   y,a
0ff8: f6 31 11  mov   a,$1131+y
0ffb: d4 81     mov   $81+x,a
0ffd: cb 0b     mov   $0b,y
0fff: e8 14     mov   a,#$14
1001: 80        setc
1002: a4 0b     sbc   a,$0b
1004: fd        mov   y,a
1005: f6 31 11  mov   a,$1131+y
1008: d4 90     mov   $90+x,a
100a: 6f        ret

; read a byte from voice ptr
100b: e7 12     mov   a,($12+x)
100d: bb 12     inc   $12+x
100f: d0 02     bne   $1013
1011: bb 13     inc   $13+x
1013: 6f        ret

; read a word from voice ptr -> $08,a
1014: e7 12     mov   a,($12+x)
1016: c4 08     mov   $08,a
1018: bb 12     inc   $12+x
101a: d0 02     bne   $101e
101c: bb 13     inc   $13+x
101e: e7 12     mov   a,($12+x)
1020: bb 12     inc   $12+x
1022: d0 02     bne   $1026
1024: bb 13     inc   $13+x
1026: 6f        ret

1027: f7 10     mov   a,($10)+y
1029: 3a 10     incw  $10
102b: 2d        push  a
102c: f7 10     mov   a,($10)+y
102e: 3a 10     incw  $10
1030: fd        mov   y,a
1031: ae        pop   a
1032: 6f        ret

1033: 6f        ret

1034: 4d        push  x
1035: f8 08     mov   x,$08
1037: 8d 00     mov   y,#$00
1039: 9e        div   ya,x
103a: c4 09     mov   $09,a
103c: e8 00     mov   a,#$00
103e: f8 08     mov   x,$08
1040: 9e        div   ya,x
1041: ce        pop   x
1042: 6f        ret

1043: f5 91 03  mov   a,$0391+x
1046: fd        mov   y,a
1047: f5 90 03  mov   a,$0390+x
104a: 7a 08     addw  ya,$08
104c: 2d        push  a
104d: dd        mov   a,y
104e: d5 91 03  mov   $0391+x,a
1051: ae        pop   a
1052: d5 90 03  mov   $0390+x,a
1055: 6f        ret

1056: f5 90 03  mov   a,$0390+x
1059: bc        inc   a
105a: d5 90 03  mov   $0390+x,a
105d: d0 07     bne   $1066
105f: f5 91 03  mov   a,$0391+x
1062: bc        inc   a
1063: d5 91 03  mov   $0391+x,a
1066: 6f        ret

1067: 8d 03     mov   y,#$03
1069: e4 75     mov   a,$75
106b: cf        mul   ya
106c: cd 0a     mov   x,#$0a
106e: 9e        div   ya,x
106f: c4 75     mov   $75,a
1071: 8d 03     mov   y,#$03
1073: e4 76     mov   a,$76
1075: cf        mul   ya
1076: cd 0a     mov   x,#$0a
1078: 9e        div   ya,x
1079: c4 76     mov   $76,a
107b: 6f        ret

107c: c4 08     mov   $08,a
107e: 1c        asl   a
107f: 1c        asl   a
1080: 90 02     bcc   $1084
1082: 48 ff     eor   a,#$ff
1084: fd        mov   y,a
1085: f4 d0     mov   a,$d0+x
1087: 68 f1     cmp   a,#$f1
1089: 90 05     bcc   $1090
108b: 28 0f     and   a,#$0f
108d: cf        mul   ya
108e: 2f 04     bra   $1094
1090: cf        mul   ya
1091: dd        mov   a,y
1092: d4 d1     mov   $d1+x,a
1094: f3 08 11  bbc7  $08,$10a8
1097: 8d 00     mov   y,#$00
1099: da 0e     movw  $0e,ya
109b: ba 0c     movw  ya,$0c
109d: 9a 0e     subw  ya,$0e
109f: d4 d1     mov   $d1+x,a
10a1: dd        mov   a,y
10a2: 60        clrc
10a3: 95 d2 03  adc   a,$03d2+x
10a6: 2f 03     bra   $10ab
10a8: f5 d2 03  mov   a,$03d2+x
10ab: 3f 9e 06  call  $069e
10ae: 2d        push  a
10af: 6d        push  y
10b0: f5 91 03  mov   a,$0391+x
10b3: c4 09     mov   $09,a
10b5: f5 90 03  mov   a,$0390+x
10b8: c4 08     mov   $08,a
10ba: 04 09     or    a,$09
10bc: d0 04     bne   $10c2
10be: ee        pop   y
10bf: ae        pop   a
10c0: 2f 12     bra   $10d4
10c2: e4 70     mov   a,$70
10c4: 24 64     and   a,$64
10c6: d0 07     bne   $10cf
10c8: ee        pop   y
10c9: ae        pop   a
10ca: 9a 08     subw  ya,$08
10cc: 80        setc
10cd: 2f 05     bra   $10d4
10cf: ee        pop   y
10d0: ae        pop   a
10d1: 60        clrc
10d2: 7a 08     addw  ya,$08
10d4: d4 52     mov   $52+x,a
10d6: db 53     mov   $53+x,y
10d8: 09 64 02  or    ($02),($64)
10db: 6f        ret

10dc: e4 f4     mov   a,$f4
10de: 68 99     cmp   a,#$99
10e0: f0 01     beq   $10e3
10e2: 6f        ret

10e3: e8 aa     mov   a,#$aa
10e5: c4 f4     mov   $f4,a
10e7: e8 bb     mov   a,#$bb
10e9: c4 f5     mov   $f5,a
10eb: e4 f4     mov   a,$f4
10ed: 68 cc     cmp   a,#$cc
10ef: d0 fa     bne   $10eb
10f1: 2f 1b     bra   $110e
10f3: eb f4     mov   y,$f4
10f5: d0 fc     bne   $10f3
10f7: 7e f4     cmp   y,$f4
10f9: d0 0d     bne   $1108
10fb: e4 f5     mov   a,$f5
10fd: cb f4     mov   $f4,y
10ff: d7 08     mov   ($08)+y,a
1101: fc        inc   y
1102: d0 f3     bne   $10f7
1104: ab 09     inc   $09
1106: 2f ef     bra   $10f7
1108: 10 ed     bpl   $10f7
110a: 7e f4     cmp   y,$f4
110c: 10 e9     bpl   $10f7
110e: e4 f6     mov   a,$f6
1110: eb f7     mov   y,$f7
1112: da 08     movw  $08,ya
1114: eb f4     mov   y,$f4
1116: e4 f5     mov   a,$f5
1118: cb f4     mov   $f4,y
111a: d0 d7     bne   $10f3
111c: cd 33     mov   x,#$33
111e: d8 f1     mov   $f1,x
1120: e8 00     mov   a,#$00
1122: 6f        ret

1123: 2d        push  a
1124: 6d        push  y
1125: e8 08     mov   a,#$08
1127: eb fe     mov   y,$fe
1129: f0 fc     beq   $1127
112b: 9c        dec   a
112c: d0 f9     bne   $1127
112e: ee        pop   y
112f: ae        pop   a
1130: 6f        ret

1131: db $7f,$7e,$7d,$7c,$7a,$77,$73,$6e
1139: db $67,$5e,$51,$42,$34,$29,$1e,$15
1141: db $0d,$07,$03,$01,$00

1146: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

114e: db $0a,$19,$28,$3c,$50,$64,$7d,$96
1156: db $aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff

115e: db $7f,$00,$00,$00,$00,$00,$00,$00
1166: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
116e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
1176: db $ff,$08,$17,$24,$24,$17,$08,$ff
117e: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

1186: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1190: db $75,$76,$77,$6b,$65,$62,$0c,$6a,$6c,$63

; pitch table
119a: dw $085f
119c: dw $08de
119e: dw $0965
11a0: dw $09f4
11a2: dw $0a8c
11a4: dw $0b2c
11a6: dw $0bd6
11a8: dw $0c8b
11aa: dw $0d4a
11ac: dw $0e14
11ae: dw $0eea
11b0: dw $0fcd
11b2: dw $10be
11b4: dw $10be
11b6: dw $10be
11b8: dw $10be
