0600: cd 7f     mov   x,#$7f
0602: bd        mov   sp,x
0603: cd ff     mov   x,#$ff
0605: 3d        inc   x
0606: 3e f7     cmp   x,$f7
0608: d0 fc     bne   $0606
060a: d8 00     mov   $00,x
060c: d8 f7     mov   $f7,x
060e: e8 00     mov   a,#$00
0610: c5 f5 02  mov   $02f5,a
0613: 3f 4e 08  call  $084e
0616: e8 00     mov   a,#$00
0618: 3f 4f 12  call  $124f
061b: f8 00     mov   x,$00
061d: 3d        inc   x
061e: d8 00     mov   $00,x
0620: e4 fe     mov   a,$fe
0622: f0 0c     beq   $0630
0624: e5 f1 02  mov   a,$02f1
0627: 68 01     cmp   a,#$01
0629: d0 05     bne   $0630
062b: 4d        push  x
062c: 3f 19 13  call  $1319
062f: ce        pop   x
0630: e4 fd     mov   a,$fd
0632: f0 1b     beq   $064f
0634: e5 f1 02  mov   a,$02f1
0637: f0 03     beq   $063c
0639: 3f a2 08  call  $08a2
063c: 3f 58 06  call  $0658
063f: e5 f1 02  mov   a,$02f1
0642: f0 03     beq   $0647
0644: 3f 16 10  call  $1016
0647: 3f 58 06  call  $0658
064a: 3f d9 12  call  $12d9
064d: f8 00     mov   x,$00
064f: 3e f7     cmp   x,$f7
0651: d0 cd     bne   $0620
0653: 3f 65 06  call  $0665
0656: 2f c5     bra   $061d
0658: f8 00     mov   x,$00
065a: 3e f7     cmp   x,$f7
065c: f0 01     beq   $065f
065e: 6f        ret

065f: e8 06     mov   a,#$06
0661: 2d        push  a
0662: e8 6b     mov   a,#$6b
0664: 2d        push  a
0665: 7d        mov   a,x
0666: f8 f4     mov   x,$f4
0668: 1f 6f 06  jmp   ($066f+x)

066b: 3d        inc   x
066c: d8 00     mov   $00,x
066e: 6f        ret

066f: dw $0000
0671: dw $0777
0673: dw $0745
0675: dw $072e
0677: dw $0717
0679: dw $0807
067b: dw $068d
067d: dw $07f2
067f: dw $0699
0681: dw $06b4
0683: dw $06c7
0685: dw $06f5
0687: dw $06ec
0689: dw $06fe
068b: dw $0707

068d: 5d        mov   x,a
068e: ba f5     movw  ya,$f5
0690: d8 f7     mov   $f7,x
0692: c5 f7 03  mov   $03f7,a
0695: cc f8 03  mov   $03f8,y
0698: 6f        ret

0699: 5d        mov   x,a
069a: d8 f7     mov   $f7,x
069c: 4d        push  x
069d: 3f 10 15  call  $1510
06a0: e8 01     mov   a,#$01
06a2: 3f 4f 12  call  $124f
06a5: 8d 01     mov   y,#$01
06a7: e5 f5 02  mov   a,$02f5
06aa: 28 01     and   a,#$01
06ac: f0 01     beq   $06af
06ae: fc        inc   y
06af: cc f1 02  mov   $02f1,y
06b2: ce        pop   x
06b3: 6f        ret

06b4: 5d        mov   x,a
06b5: d8 f7     mov   $f7,x
06b7: 4d        push  x
06b8: 3f 4e 08  call  $084e
06bb: e8 00     mov   a,#$00
06bd: 3f 4f 12  call  $124f
06c0: e8 00     mov   a,#$00
06c2: c5 f1 02  mov   $02f1,a
06c5: ce        pop   x
06c6: 6f        ret

06c7: 5d        mov   x,a
06c8: e4 f5     mov   a,$f5
06ca: c5 f3 02  mov   $02f3,a
06cd: e4 f6     mov   a,$f6
06cf: d8 f7     mov   $f7,x
06d1: c5 f4 02  mov   $02f4,a
06d4: 30 10     bmi   $06e6
06d6: e8 01     mov   a,#$01
06d8: c5 f1 02  mov   $02f1,a
06db: 8f 00 a0  mov   $a0,#$00
06de: 3f 10 15  call  $1510
06e1: e8 01     mov   a,#$01
06e3: 3f 4f 12  call  $124f
06e6: e8 00     mov   a,#$00
06e8: c5 f2 02  mov   $02f2,a
06eb: 6f        ret

06ec: 5d        mov   x,a
06ed: e5 f3 02  mov   a,$02f3
06f0: c4 f4     mov   $f4,a
06f2: d8 f7     mov   $f7,x
06f4: 6f        ret

06f5: 5d        mov   x,a
06f6: e4 f5     mov   a,$f5
06f8: d8 f7     mov   $f7,x
06fa: c5 f5 02  mov   $02f5,a
06fd: 6f        ret

06fe: 5d        mov   x,a
06ff: e4 f5     mov   a,$f5
0701: d8 f7     mov   $f7,x
0703: c5 f6 02  mov   $02f6,a
0706: 6f        ret

0707: 5d        mov   x,a
0708: e4 f5     mov   a,$f5
070a: d8 f7     mov   $f7,x
070c: 8f 0c f2  mov   $f2,#$0c
070f: c4 f3     mov   $f3,a
0711: 8f 1c f2  mov   $f2,#$1c
0714: c4 f3     mov   $f3,a
0716: 6f        ret

0717: f8 00     mov   x,$00
0719: d8 f7     mov   $f7,x
071b: e8 90     mov   a,#$90
071d: 8d 02     mov   y,#$02
071f: da 03     movw  $03,ya
0721: 3d        inc   x
0722: 3e f7     cmp   x,$f7
0724: d0 fc     bne   $0722
0726: ba f5     movw  ya,$f5
0728: da 01     movw  $01,ya
072a: d8 f7     mov   $f7,x
072c: 2f 6a     bra   $0798
072e: f8 00     mov   x,$00
0730: ba f5     movw  ya,$f5
0732: d8 f7     mov   $f7,x
0734: da 03     movw  $03,ya
0736: da a5     movw  $a5,ya
0738: 3d        inc   x
0739: 3e f7     cmp   x,$f7
073b: d0 fc     bne   $0739
073d: ba f5     movw  ya,$f5
073f: da 01     movw  $01,ya
0741: d8 f7     mov   $f7,x
0743: 2f 53     bra   $0798
0745: f8 00     mov   x,$00
0747: ba f5     movw  ya,$f5
0749: d8 f7     mov   $f7,x
074b: da 03     movw  $03,ya
074d: 3d        inc   x
074e: 3e f7     cmp   x,$f7
0750: d0 fc     bne   $074e
0752: ba f5     movw  ya,$f5
0754: da 01     movw  $01,ya
0756: e4 f4     mov   a,$f4
0758: d8 f7     mov   $f7,x
075a: 8d 00     mov   y,#$00
075c: da 05     movw  $05,ya
075e: 0b 05     asl   $05
0760: 2b 06     rol   $06
0762: 8d 03     mov   y,#$03
0764: e8 f9     mov   a,#$f9
0766: 7a 05     addw  ya,$05
0768: da 05     movw  $05,ya
076a: 8d 00     mov   y,#$00
076c: e4 03     mov   a,$03
076e: d7 05     mov   ($05)+y,a
0770: fc        inc   y
0771: e4 04     mov   a,$04
0773: d7 05     mov   ($05)+y,a
0775: 2f 21     bra   $0798
0777: f8 00     mov   x,$00
0779: ba f5     movw  ya,$f5
077b: d8 f7     mov   $f7,x
077d: da 03     movw  $03,ya
077f: 3d        inc   x
0780: 3e f7     cmp   x,$f7
0782: d0 fc     bne   $0780
0784: ba f5     movw  ya,$f5
0786: da 01     movw  $01,ya
0788: e4 f4     mov   a,$f4
078a: d8 f7     mov   $f7,x
078c: 1c        asl   a
078d: fd        mov   y,a
078e: e4 03     mov   a,$03
0790: d6 f9 02  mov   $02f9+y,a
0793: e4 04     mov   a,$04
0795: d6 fa 02  mov   $02fa+y,a
0798: 8d 00     mov   y,#$00
079a: 3d        inc   x
079b: 3e f7     cmp   x,$f7
079d: d0 fc     bne   $079b
079f: e4 f4     mov   a,$f4
07a1: d7 03     mov   ($03)+y,a
07a3: 1a 01     decw  $01
07a5: f0 1c     beq   $07c3
07a7: fc        inc   y
07a8: f0 1c     beq   $07c6
07aa: e4 f5     mov   a,$f5
07ac: d7 03     mov   ($03)+y,a
07ae: 1a 01     decw  $01
07b0: f0 11     beq   $07c3
07b2: fc        inc   y
07b3: f0 28     beq   $07dd
07b5: e4 f6     mov   a,$f6
07b7: d8 f7     mov   $f7,x
07b9: d7 03     mov   ($03)+y,a
07bb: fc        inc   y
07bc: f0 2d     beq   $07eb
07be: 1a 01     decw  $01
07c0: d0 d8     bne   $079a
07c2: 6f        ret

07c3: d8 f7     mov   $f7,x
07c5: 6f        ret

07c6: ab 04     inc   $04
07c8: e4 f5     mov   a,$f5
07ca: d7 03     mov   ($03)+y,a
07cc: 1a 01     decw  $01
07ce: f0 f3     beq   $07c3
07d0: fc        inc   y
07d1: e4 f6     mov   a,$f6
07d3: d8 f7     mov   $f7,x
07d5: d7 03     mov   ($03)+y,a
07d7: fc        inc   y
07d8: 1a 01     decw  $01
07da: d0 be     bne   $079a
07dc: 6f        ret

07dd: ab 04     inc   $04
07df: e4 f6     mov   a,$f6
07e1: d8 f7     mov   $f7,x
07e3: d7 03     mov   ($03)+y,a
07e5: fc        inc   y
07e6: 1a 01     decw  $01
07e8: d0 b0     bne   $079a
07ea: 6f        ret

07eb: ab 04     inc   $04
07ed: 1a 01     decw  $01
07ef: d0 a9     bne   $079a
07f1: 6f        ret

07f2: f8 00     mov   x,$00
07f4: ba f5     movw  ya,$f5
07f6: d8 f7     mov   $f7,x
07f8: da 03     movw  $03,ya
07fa: 3d        inc   x
07fb: 3e f7     cmp   x,$f7
07fd: d0 fc     bne   $07fb
07ff: ba f5     movw  ya,$f5
0801: da 01     movw  $01,ya
0803: d8 f7     mov   $f7,x
0805: 2f 91     bra   $0798
0807: f8 00     mov   x,$00
0809: d8 f7     mov   $f7,x
080b: e8 b1     mov   a,#$b1
080d: 8d 02     mov   y,#$02
080f: da 03     movw  $03,ya
0811: 3d        inc   x
0812: 3e f7     cmp   x,$f7
0814: d0 fc     bne   $0812
0816: ba f5     movw  ya,$f5
0818: da 01     movw  $01,ya
081a: e4 f4     mov   a,$f4
081c: d8 f7     mov   $f7,x
081e: c5 b0 02  mov   $02b0,a
0821: 3f 98 07  call  $0798
0824: e5 f5 02  mov   a,$02f5
0827: 28 02     and   a,#$02
0829: d0 22     bne   $084d
082b: 4d        push  x
082c: cd 00     mov   x,#$00
082e: 8d 00     mov   y,#$00
0830: f5 b1 02  mov   a,$02b1+x
0833: 3d        inc   x
0834: d6 05 00  mov   $0005+y,a
0837: fc        inc   y
0838: ad 08     cmp   y,#$08
083a: d0 f4     bne   $0830
083c: e5 f5 02  mov   a,$02f5
083f: 10 03     bpl   $0844
0841: 8f 40 0c  mov   $0c,#$40
0844: 3f a3 0f  call  $0fa3
0847: 8c b0 02  dec   $02b0
084a: d0 e2     bne   $082e
084c: ce        pop   x
084d: 6f        ret

084e: e9 f5 02  mov   x,$02f5
0851: e8 80     mov   a,#$80
0853: 8d 01     mov   y,#$01
0855: da 05     movw  $05,ya
0857: e8 f9     mov   a,#$f9
0859: 8d 02     mov   y,#$02
085b: da 07     movw  $07,ya
085d: e8 00     mov   a,#$00
085f: fd        mov   y,a
0860: d7 05     mov   ($05)+y,a
0862: 3a 05     incw  $05
0864: ba 05     movw  ya,$05
0866: 5a 07     cmpw  ya,$07
0868: d0 f3     bne   $085d
086a: c9 f5 02  mov   $02f5,x
086d: e8 00     mov   a,#$00
086f: 5d        mov   x,a
0870: d5 00 00  mov   $0000+x,a
0873: 3d        inc   x
0874: c8 f0     cmp   x,#$f0
0876: d0 f8     bne   $0870
0878: cd 00     mov   x,#$00
087a: e8 8a     mov   a,#$8a
087c: d5 00 02  mov   $0200+x,a
087f: d5 02 02  mov   $0202+x,a
0882: e8 0e     mov   a,#$0e
0884: d5 01 02  mov   $0201+x,a
0887: d5 03 02  mov   $0203+x,a
088a: 3d        inc   x
088b: 3d        inc   x
088c: 3d        inc   x
088d: 3d        inc   x
088e: c8 20     cmp   x,#$20
0890: d0 e8     bne   $087a
0892: 8f 00 f1  mov   $f1,#$00
0895: 8f 80 fa  mov   $fa,#$80
0898: 8f 01 f1  mov   $f1,#$01
089b: e4 fd     mov   a,$fd
089d: e8 40     mov   a,#$40
089f: c4 a0     mov   $a0,a
08a1: 6f        ret

08a2: cd 00     mov   x,#$00
08a4: d8 97     mov   $97,x
08a6: f5 3f 12  mov   a,$123f+x
08a9: c4 98     mov   $98,a
08ab: f5 37 12  mov   a,$1237+x
08ae: c4 99     mov   $99,a
08b0: f4 15     mov   a,$15+x
08b2: c4 95     mov   $95,a
08b4: c4 05     mov   $05,a
08b6: f4 1d     mov   a,$1d+x
08b8: c4 96     mov   $96,a
08ba: 04 05     or    a,$05
08bc: f0 48     beq   $0906
08be: f4 3d     mov   a,$3d+x
08c0: 28 20     and   a,#$20
08c2: d0 42     bne   $0906
08c4: f4 3d     mov   a,$3d+x
08c6: 28 40     and   a,#$40
08c8: f0 0f     beq   $08d9
08ca: f4 3d     mov   a,$3d+x
08cc: 28 bf     and   a,#$bf
08ce: d4 3d     mov   $3d+x,a
08d0: e4 99     mov   a,$99
08d2: 08 07     or    a,#$07
08d4: c4 f2     mov   $f2,a
08d6: 8f ff f3  mov   $f3,#$ff
08d9: 3f 0c 09  call  $090c
08dc: e4 95     mov   a,$95
08de: d4 15     mov   $15+x,a
08e0: e4 96     mov   a,$96
08e2: d4 1d     mov   $1d+x,a
08e4: f4 3d     mov   a,$3d+x
08e6: 28 80     and   a,#$80
08e8: f0 1c     beq   $0906
08ea: f4 85     mov   a,$85+x
08ec: 14 8d     or    a,$8d+x
08ee: d0 06     bne   $08f6
08f0: e8 00     mov   a,#$00
08f2: d4 2d     mov   $2d+x,a
08f4: 2f 10     bra   $0906
08f6: f4 8d     mov   a,$8d+x
08f8: 68 ff     cmp   a,#$ff
08fa: f0 0a     beq   $0906
08fc: 9b 85     dec   $85+x
08fe: f4 85     mov   a,$85+x
0900: 68 ff     cmp   a,#$ff
0902: d0 02     bne   $0906
0904: 9b 8d     dec   $8d+x
0906: 3d        inc   x
0907: c8 08     cmp   x,#$08
0909: d0 99     bne   $08a4
090b: 6f        ret

090c: 4d        push  x
090d: 3f e2 0b  call  $0be2
0910: e8 09     mov   a,#$09
0912: 2d        push  a
0913: e8 1d     mov   a,#$1d
0915: 2d        push  a
0916: e4 9a     mov   a,$9a
0918: 1c        asl   a
0919: 5d        mov   x,a
091a: 1f 2f 09  jmp   ($092f+x)

091d: e4 9a     mov   a,$9a
091f: 68 00     cmp   a,#$00
0921: f0 0a     beq   $092d
0923: 68 01     cmp   a,#$01
0925: f0 06     beq   $092d
0927: 68 14     cmp   a,#$14
0929: f0 02     beq   $092d
092b: 2f e0     bra   $090d
092d: ce        pop   x
092e: 6f        ret

092f: dw $096b
0931: dw $09d1
0933: dw $09a7
0935: dw $096b
0937: dw $0976
0939: dw $09f8
093b: dw $0a16
093d: dw $0a29
093f: dw $0a30
0941: dw $0a39
0943: dw $0b92
0945: dw $0a54
0947: dw $0a6a
0949: dw $0a75
094b: dw $0a80
094d: dw $0acc
094f: dw $0b0c
0951: dw $0b1e
0953: dw $0ba5
0955: dw $0bb8
0957: dw $0b24
0959: dw $0b37
095b: dw $0b47
095d: dw $096b
095f: dw $09bc
0961: dw $0b5a
0963: dw $0b6c
0965: dw $0b73
0967: dw $0bbf
0969: dw $0bcc

096b: e8 00     mov   a,#$00
096d: c4 95     mov   $95,a
096f: c4 96     mov   $96,a
0971: f8 97     mov   x,$97
0973: d4 2d     mov   $2d+x,a
0975: 6f        ret

0976: e4 9b     mov   a,$9b
0978: f0 0a     beq   $0984
097a: f8 97     mov   x,$97
097c: f4 3d     mov   a,$3d+x
097e: 28 f0     and   a,#$f0
0980: d4 3d     mov   $3d+x,a
0982: e4 9b     mov   a,$9b
0984: 68 ff     cmp   a,#$ff
0986: f0 1e     beq   $09a6
0988: e4 9d     mov   a,$9d
098a: d0 14     bne   $09a0
098c: e4 9f     mov   a,$9f
098e: 04 98     or    a,$98
0990: c4 9f     mov   $9f,a
0992: e4 9c     mov   a,$9c
0994: d0 08     bne   $099e
0996: f8 97     mov   x,$97
0998: e8 00     mov   a,#$00
099a: d4 65     mov   $65+x,a
099c: d4 2d     mov   $2d+x,a
099e: 2f 06     bra   $09a6
09a0: e4 9e     mov   a,$9e
09a2: 04 98     or    a,$98
09a4: c4 9e     mov   $9e,a
09a6: 6f        ret

09a7: 3f 03 0c  call  $0c03
09aa: d5 00 02  mov   $0200+x,a
09ad: dd        mov   a,y
09ae: d5 01 02  mov   $0201+x,a
09b1: e8 8a     mov   a,#$8a
09b3: d5 02 02  mov   $0202+x,a
09b6: e8 0e     mov   a,#$0e
09b8: d5 03 02  mov   $0203+x,a
09bb: 6f        ret

09bc: e4 9b     mov   a,$9b
09be: 10 06     bpl   $09c6
09c0: f8 97     mov   x,$97
09c2: f4 35     mov   a,$35+x
09c4: c4 9b     mov   $9b,a
09c6: 3f 03 0c  call  $0c03
09c9: d5 02 02  mov   $0202+x,a
09cc: dd        mov   a,y
09cd: d5 03 02  mov   $0203+x,a
09d0: 6f        ret

09d1: f8 97     mov   x,$97
09d3: f4 4d     mov   a,$4d+x
09d5: 64 9c     cmp   a,$9c
09d7: d0 0d     bne   $09e6
09d9: f4 45     mov   a,$45+x
09db: 64 9d     cmp   a,$9d
09dd: d0 07     bne   $09e6
09df: e8 00     mov   a,#$00
09e1: d4 45     mov   $45+x,a
09e3: d4 4d     mov   $4d+x,a
09e5: 6f        ret

09e6: bb 45     inc   $45+x
09e8: d0 02     bne   $09ec
09ea: bb 4d     inc   $4d+x
09ec: e4 95     mov   a,$95
09ee: 80        setc
09ef: a8 04     sbc   a,#$04
09f1: c4 95     mov   $95,a
09f3: b0 02     bcs   $09f7
09f5: 8b 96     dec   $96
09f7: 6f        ret

09f8: f8 97     mov   x,$97
09fa: f4 55     mov   a,$55+x
09fc: 64 9b     cmp   a,$9b
09fe: d0 05     bne   $0a05
0a00: e8 00     mov   a,#$00
0a02: d4 55     mov   $55+x,a
0a04: 6f        ret

0a05: bb 55     inc   $55+x
0a07: f4 0d     mov   a,$0d+x
0a09: 5d        mov   x,a
0a0a: e4 9d     mov   a,$9d
0a0c: eb 9c     mov   y,$9c
0a0e: 3f 2b 0c  call  $0c2b
0a11: cb 96     mov   $96,y
0a13: c4 95     mov   $95,a
0a15: 6f        ret

0a16: f8 97     mov   x,$97
0a18: e4 9b     mov   a,$9b
0a1a: d4 0d     mov   $0d+x,a
0a1c: 5d        mov   x,a
0a1d: eb 9c     mov   y,$9c
0a1f: e4 9d     mov   a,$9d
0a21: 3f 2b 0c  call  $0c2b
0a24: cb 96     mov   $96,y
0a26: c4 95     mov   $95,a
0a28: 6f        ret

0a29: eb 9c     mov   y,$9c
0a2b: e4 9d     mov   a,$9d
0a2d: 5f 78 0c  jmp   $0c78

0a30: f8 97     mov   x,$97
0a32: f4 25     mov   a,$25+x
0a34: 60        clrc
0a35: 84 9b     adc   a,$9b
0a37: 2f 09     bra   $0a42
0a39: f8 97     mov   x,$97
0a3b: e4 9b     mov   a,$9b
0a3d: 60        clrc
0a3e: 94 7d     adc   a,$7d+x
0a40: d4 25     mov   $25+x,a
0a42: 5d        mov   x,a
0a43: e4 9c     mov   a,$9c
0a45: c4 06     mov   $06,a
0a47: e4 9d     mov   a,$9d
0a49: c4 05     mov   $05,a
0a4b: 7d        mov   a,x
0a4c: 3f f1 0c  call  $0cf1
0a4f: 7a 05     addw  ya,$05
0a51: 5f 78 0c  jmp   $0c78

0a54: f8 97     mov   x,$97
0a56: f4 3d     mov   a,$3d+x
0a58: 08 01     or    a,#$01
0a5a: d4 3d     mov   $3d+x,a
0a5c: e4 9d     mov   a,$9d
0a5e: d5 c0 01  mov   $01c0+x,a
0a61: e8 00     mov   a,#$00
0a63: d5 90 01  mov   $0190+x,a
0a66: d5 98 01  mov   $0198+x,a
0a69: 6f        ret

0a6a: f8 97     mov   x,$97
0a6c: f4 3d     mov   a,$3d+x
0a6e: 08 02     or    a,#$02
0a70: d4 3d     mov   $3d+x,a
0a72: 5f 0e 0d  jmp   $0d0e

0a75: f8 97     mov   x,$97
0a77: e4 9d     mov   a,$9d
0a79: d4 6d     mov   $6d+x,a
0a7b: e4 9b     mov   a,$9b
0a7d: d4 75     mov   $75+x,a
0a7f: 6f        ret

0a80: e5 f5 02  mov   a,$02f5
0a83: 30 46     bmi   $0acb
0a85: e4 9b     mov   a,$9b
0a87: f0 29     beq   $0ab2
0a89: e4 9d     mov   a,$9d
0a8b: 28 7f     and   a,#$7f
0a8d: 8d 00     mov   y,#$00
0a8f: f8 9b     mov   x,$9b
0a91: 9e        div   ya,x
0a92: f8 97     mov   x,$97
0a94: eb 9d     mov   y,$9d
0a96: 10 02     bpl   $0a9a
0a98: 08 80     or    a,#$80
0a9a: d5 20 02  mov   $0220+x,a
0a9d: e4 9c     mov   a,$9c
0a9f: d4 5d     mov   $5d+x,a
0aa1: f4 3d     mov   a,$3d+x
0aa3: 08 04     or    a,#$04
0aa5: d4 3d     mov   $3d+x,a
0aa7: e4 9b     mov   a,$9b
0aa9: d5 30 02  mov   $0230+x,a
0aac: 5c        lsr   a
0aad: d5 28 02  mov   $0228+x,a
0ab0: 2f 19     bra   $0acb
0ab2: f8 97     mov   x,$97
0ab4: f4 3d     mov   a,$3d+x
0ab6: 28 fb     and   a,#$fb
0ab8: d4 3d     mov   $3d+x,a
0aba: eb 9c     mov   y,$9c
0abc: e5 f5 02  mov   a,$02f5
0abf: 28 40     and   a,#$40
0ac1: f0 06     beq   $0ac9
0ac3: ad 00     cmp   y,#$00
0ac5: 10 02     bpl   $0ac9
0ac7: 8d 40     mov   y,#$40
0ac9: db 5d     mov   $5d+x,y
0acb: 6f        ret

0acc: f8 97     mov   x,$97
0ace: e4 9d     mov   a,$9d
0ad0: d5 88 02  mov   $0288+x,a
0ad3: e4 9b     mov   a,$9b
0ad5: d5 78 02  mov   $0278+x,a
0ad8: e4 9c     mov   a,$9c
0ada: d5 80 02  mov   $0280+x,a
0add: e8 00     mov   a,#$00
0adf: d5 70 02  mov   $0270+x,a
0ae2: f4 65     mov   a,$65+x
0ae4: 60        clrc
0ae5: 94 75     adc   a,$75+x
0ae7: 10 02     bpl   $0aeb
0ae9: e8 00     mov   a,#$00
0aeb: 68 3f     cmp   a,#$3f
0aed: 30 02     bmi   $0af1
0aef: e8 3f     mov   a,#$3f
0af1: d4 65     mov   $65+x,a
0af3: 64 9d     cmp   a,$9d
0af5: b0 08     bcs   $0aff
0af7: f5 80 02  mov   a,$0280+x
0afa: 08 80     or    a,#$80
0afc: d5 80 02  mov   $0280+x,a
0aff: e8 00     mov   a,#$00
0b01: d4 6d     mov   $6d+x,a
0b03: d4 75     mov   $75+x,a
0b05: f4 3d     mov   a,$3d+x
0b07: 08 08     or    a,#$08
0b09: d4 3d     mov   $3d+x,a
0b0b: 6f        ret

0b0c: f8 97     mov   x,$97
0b0e: f4 25     mov   a,$25+x
0b10: 64 9b     cmp   a,$9b
0b12: b0 09     bcs   $0b1d
0b14: fa 9d 9b  mov   ($9b),($9d)
0b17: 8f 00 9d  mov   $9d,#$00
0b1a: 5f 16 0a  jmp   $0a16

0b1d: 6f        ret

0b1e: f8 97     mov   x,$97
0b20: f4 65     mov   a,$65+x
0b22: 2f ec     bra   $0b10
0b24: f8 97     mov   x,$97
0b26: f4 3d     mov   a,$3d+x
0b28: 28 10     and   a,#$10
0b2a: d0 03     bne   $0b2f
0b2c: 5f d1 09  jmp   $09d1

0b2f: e8 00     mov   a,#$00
0b31: d4 45     mov   $45+x,a
0b33: d4 4d     mov   $4d+x,a
0b35: 2f 0f     bra   $0b46
0b37: f8 97     mov   x,$97
0b39: f4 3d     mov   a,$3d+x
0b3b: 28 10     and   a,#$10
0b3d: d0 03     bne   $0b42
0b3f: 5f f8 09  jmp   $09f8

0b42: e8 00     mov   a,#$00
0b44: d4 55     mov   $55+x,a
0b46: 6f        ret

0b47: fa 9b 0b  mov   ($0b),($9b)
0b4a: f8 97     mov   x,$97
0b4c: f4 25     mov   a,$25+x
0b4e: 60        clrc
0b4f: 84 9d     adc   a,$9d
0b51: c4 0c     mov   $0c,a
0b53: e4 7d     mov   a,$7d
0b55: c4 09     mov   $09,a
0b57: 5f 42 0f  jmp   $0f42

0b5a: f8 97     mov   x,$97
0b5c: f4 25     mov   a,$25+x
0b5e: 64 9b     cmp   a,$9b
0b60: d0 09     bne   $0b6b
0b62: fa 9d 9b  mov   ($9b),($9d)
0b65: 8f 00 9d  mov   $9d,#$00
0b68: 5f 16 0a  jmp   $0a16

0b6b: 6f        ret

0b6c: f8 97     mov   x,$97
0b6e: e4 9d     mov   a,$9d
0b70: d4 65     mov   $65+x,a
0b72: 6f        ret

0b73: e4 99     mov   a,$99
0b75: 08 05     or    a,#$05
0b77: c4 f2     mov   $f2,a
0b79: e4 9c     mov   a,$9c
0b7b: 10 08     bpl   $0b85
0b7d: c4 f3     mov   $f3,a
0b7f: e4 99     mov   a,$99
0b81: 08 06     or    a,#$06
0b83: 2f 07     bra   $0b8c
0b85: 8f 00 f3  mov   $f3,#$00
0b88: e4 99     mov   a,$99
0b8a: 08 07     or    a,#$07
0b8c: c4 f2     mov   $f2,a
0b8e: fa 9d f3  mov   ($f3),($9d)
0b91: 6f        ret

0b92: e4 9b     mov   a,$9b
0b94: 9f        xcn   a
0b95: 08 0f     or    a,#$0f
0b97: c4 f2     mov   $f2,a
0b99: fa 9c f3  mov   ($f3),($9c)
0b9c: 60        clrc
0b9d: 88 10     adc   a,#$10
0b9f: c4 f2     mov   $f2,a
0ba1: fa 9d f3  mov   ($f3),($9d)
0ba4: 6f        ret

0ba5: 8f 6d f2  mov   $f2,#$6d
0ba8: fa 9b f3  mov   ($f3),($9b)
0bab: 8f 7d f2  mov   $f2,#$7d
0bae: fa 9c f3  mov   ($f3),($9c)
0bb1: 8f 0d f2  mov   $f2,#$0d
0bb4: fa 9d f3  mov   ($f3),($9d)
0bb7: 6f        ret

0bb8: 8f 6c f2  mov   $f2,#$6c
0bbb: 8f 00 f3  mov   $f3,#$00
0bbe: 6f        ret

0bbf: 8f 2c f2  mov   $f2,#$2c
0bc2: fa 9b f3  mov   ($f3),($9b)
0bc5: 8f 3c f2  mov   $f2,#$3c
0bc8: fa 9c f3  mov   ($f3),($9c)
0bcb: 6f        ret

0bcc: e4 99     mov   a,$99
0bce: 08 05     or    a,#$05
0bd0: c4 f2     mov   $f2,a
0bd2: 8f 00 f3  mov   $f3,#$00
0bd5: e4 99     mov   a,$99
0bd7: 08 07     or    a,#$07
0bd9: c4 f2     mov   $f2,a
0bdb: e4 9b     mov   a,$9b
0bdd: 04 9c     or    a,$9c
0bdf: c4 f3     mov   $f3,a
0be1: 6f        ret

0be2: 8d 00     mov   y,#$00
0be4: f7 95     mov   a,($95)+y
0be6: c4 9a     mov   $9a,a
0be8: fc        inc   y
0be9: f7 95     mov   a,($95)+y
0beb: c4 9b     mov   $9b,a
0bed: fc        inc   y
0bee: f7 95     mov   a,($95)+y
0bf0: c4 9c     mov   $9c,a
0bf2: fc        inc   y
0bf3: f7 95     mov   a,($95)+y
0bf5: c4 9d     mov   $9d,a
0bf7: e4 95     mov   a,$95
0bf9: 60        clrc
0bfa: 88 04     adc   a,#$04
0bfc: c4 95     mov   $95,a
0bfe: 90 02     bcc   $0c02
0c00: ab 96     inc   $96
0c02: 6f        ret

0c03: e4 9c     mov   a,$9c
0c05: 8d 09     mov   y,#$09
0c07: cf        mul   ya
0c08: c4 06     mov   $06,a
0c0a: 8f 00 05  mov   $05,#$00
0c0d: e4 9d     mov   a,$9d
0c0f: 8d 09     mov   y,#$09
0c11: cf        mul   ya
0c12: 7a 05     addw  ya,$05
0c14: da 05     movw  $05,ya
0c16: e4 9b     mov   a,$9b
0c18: 1c        asl   a
0c19: 5d        mov   x,a
0c1a: f5 fa 02  mov   a,$02fa+x
0c1d: fd        mov   y,a
0c1e: f5 f9 02  mov   a,$02f9+x
0c21: 7a 05     addw  ya,$05
0c23: 2d        push  a
0c24: e4 97     mov   a,$97
0c26: 1c        asl   a
0c27: 1c        asl   a
0c28: 5d        mov   x,a
0c29: ae        pop   a
0c2a: 6f        ret

0c2b: 4d        push  x
0c2c: cd 04     mov   x,#$04
0c2e: 3f 59 0c  call  $0c59
0c31: 60        clrc
0c32: 88 02     adc   a,#$02
0c34: 90 01     bcc   $0c37
0c36: fc        inc   y
0c37: da 05     movw  $05,ya
0c39: ae        pop   a
0c3a: 3f 40 0c  call  $0c40
0c3d: 7a 05     addw  ya,$05
0c3f: 6f        ret

0c40: 68 00     cmp   a,#$00
0c42: 10 0b     bpl   $0c4f
0c44: 1c        asl   a
0c45: 5d        mov   x,a
0c46: f5 fa 04  mov   a,$04fa+x
0c49: fd        mov   y,a
0c4a: f5 f9 04  mov   a,$04f9+x
0c4d: 2f 09     bra   $0c58
0c4f: 1c        asl   a
0c50: 5d        mov   x,a
0c51: f5 fa 03  mov   a,$03fa+x
0c54: fd        mov   y,a
0c55: f5 f9 03  mov   a,$03f9+x
0c58: 6f        ret

0c59: d8 0b     mov   $0b,x
0c5b: 5d        mov   x,a
0c5c: dd        mov   a,y
0c5d: eb 0b     mov   y,$0b
0c5f: cf        mul   ya
0c60: c4 0c     mov   $0c,a
0c62: 7d        mov   a,x
0c63: eb 0b     mov   y,$0b
0c65: 8f 00 0b  mov   $0b,#$00
0c68: cf        mul   ya
0c69: 7a 0b     addw  ya,$0b
0c6b: 6f        ret

0c6c: 2d        push  a
0c6d: dd        mov   a,y
0c6e: 8d 00     mov   y,#$00
0c70: 9e        div   ya,x
0c71: c4 0c     mov   $0c,a
0c73: ae        pop   a
0c74: 9e        div   ya,x
0c75: eb 0c     mov   y,$0c
0c77: 6f        ret

0c78: da 05     movw  $05,ya
0c7a: 0b 05     asl   $05
0c7c: 2b 06     rol   $06
0c7e: 0b 05     asl   $05
0c80: 2b 06     rol   $06
0c82: f8 97     mov   x,$97
0c84: e4 05     mov   a,$05
0c86: d5 a0 01  mov   $01a0+x,a
0c89: e4 06     mov   a,$06
0c8b: d5 a8 01  mov   $01a8+x,a
0c8e: f4 3d     mov   a,$3d+x
0c90: 28 01     and   a,#$01
0c92: d0 0b     bne   $0c9f
0c94: e4 05     mov   a,$05
0c96: d5 80 01  mov   $0180+x,a
0c99: e4 06     mov   a,$06
0c9b: d5 88 01  mov   $0188+x,a
0c9e: 6f        ret

0c9f: 8f 00 07  mov   $07,#$00
0ca2: f5 c0 01  mov   a,$01c0+x
0ca5: d5 c8 01  mov   $01c8+x,a
0ca8: 2d        push  a
0ca9: f5 88 01  mov   a,$0188+x
0cac: c4 0a     mov   $0a,a
0cae: f5 80 01  mov   a,$0180+x
0cb1: c4 09     mov   $09,a
0cb3: f5 90 01  mov   a,$0190+x
0cb6: 60        clrc
0cb7: 84 09     adc   a,$09
0cb9: c4 09     mov   $09,a
0cbb: f5 98 01  mov   a,$0198+x
0cbe: 84 0a     adc   a,$0a
0cc0: c4 0a     mov   $0a,a
0cc2: ba 05     movw  ya,$05
0cc4: 9a 09     subw  ya,$09
0cc6: da 09     movw  $09,ya
0cc8: 10 09     bpl   $0cd3
0cca: ab 07     inc   $07
0ccc: e8 00     mov   a,#$00
0cce: fd        mov   y,a
0ccf: 9a 09     subw  ya,$09
0cd1: da 09     movw  $09,ya
0cd3: ce        pop   x
0cd4: 3f 6c 0c  call  $0c6c
0cd7: da 05     movw  $05,ya
0cd9: e4 07     mov   a,$07
0cdb: f0 07     beq   $0ce4
0cdd: e8 00     mov   a,#$00
0cdf: fd        mov   y,a
0ce0: 9a 05     subw  ya,$05
0ce2: da 05     movw  $05,ya
0ce4: f8 97     mov   x,$97
0ce6: e4 05     mov   a,$05
0ce8: d5 b0 01  mov   $01b0+x,a
0ceb: e4 06     mov   a,$06
0ced: d5 b8 01  mov   $01b8+x,a
0cf0: 6f        ret

0cf1: 1c        asl   a
0cf2: 5d        mov   x,a
0cf3: f5 8d 0d  mov   a,$0d8d+x
0cf6: fd        mov   y,a
0cf7: f5 8c 0d  mov   a,$0d8c+x
0cfa: 6f        ret

0cfb: c8 00     cmp   x,#$00
0cfd: f0 0b     beq   $0d0a
0cff: 9a 05     subw  ya,$05
0d01: 3f 59 0c  call  $0c59
0d04: cd 32     mov   x,#$32
0d06: 9e        div   ya,x
0d07: 8d 00     mov   y,#$00
0d09: 6f        ret

0d0a: e8 00     mov   a,#$00
0d0c: fd        mov   y,a
0d0d: 6f        ret

0d0e: f8 97     mov   x,$97
0d10: e4 9c     mov   a,$9c
0d12: 10 08     bpl   $0d1c
0d14: 28 7f     and   a,#$7f
0d16: c4 9c     mov   $9c,a
0d18: e8 01     mov   a,#$01
0d1a: 2f 02     bra   $0d1e
0d1c: e8 00     mov   a,#$00
0d1e: d5 48 02  mov   $0248+x,a
0d21: f4 25     mov   a,$25+x
0d23: 60        clrc
0d24: 84 9c     adc   a,$9c
0d26: 2d        push  a
0d27: 3f f1 0c  call  $0cf1
0d2a: da 05     movw  $05,ya
0d2c: ae        pop   a
0d2d: bc        inc   a
0d2e: 3f f1 0c  call  $0cf1
0d31: f8 9d     mov   x,$9d
0d33: 3f fb 0c  call  $0cfb
0d36: 7a 05     addw  ya,$05
0d38: da 07     movw  $07,ya
0d3a: e8 33     mov   a,#$33
0d3c: 80        setc
0d3d: a4 9d     sbc   a,$9d
0d3f: c4 9d     mov   $9d,a
0d41: f8 97     mov   x,$97
0d43: f4 25     mov   a,$25+x
0d45: 80        setc
0d46: a4 9c     sbc   a,$9c
0d48: 2d        push  a
0d49: 9c        dec   a
0d4a: 3f f1 0c  call  $0cf1
0d4d: da 05     movw  $05,ya
0d4f: ae        pop   a
0d50: 3f f1 0c  call  $0cf1
0d53: f8 9d     mov   x,$9d
0d55: 3f fb 0c  call  $0cfb
0d58: 7a 05     addw  ya,$05
0d5a: da 09     movw  $09,ya
0d5c: ba 07     movw  ya,$07
0d5e: 9a 09     subw  ya,$09
0d60: da 05     movw  $05,ya
0d62: 0b 05     asl   $05
0d64: 2b 06     rol   $06
0d66: 0b 05     asl   $05
0d68: 2b 06     rol   $06
0d6a: ba 05     movw  ya,$05
0d6c: f8 9b     mov   x,$9b
0d6e: 3f 6c 0c  call  $0c6c
0d71: f8 97     mov   x,$97
0d73: d5 58 02  mov   $0258+x,a
0d76: dd        mov   a,y
0d77: d5 60 02  mov   $0260+x,a
0d7a: e4 9b     mov   a,$9b
0d7c: d5 68 02  mov   $0268+x,a
0d7f: 5c        lsr   a
0d80: d5 50 02  mov   $0250+x,a
0d83: e8 00     mov   a,#$00
0d85: d5 38 02  mov   $0238+x,a
0d88: d5 40 02  mov   $0240+x,a
0d8b: 6f        ret

0d8c: dw $007b
0d8e: dw $0082
0d90: dw $008a
0d92: dw $0092
0d94: dw $009b
0d96: dw $00a4
0d98: dw $00ae
0d9a: dw $00b8
0d9c: dw $00c3
0d9e: dw $00cf
0da0: dw $00dc
0da2: dw $00e9
0da4: dw $00f6
0da6: dw $0105
0da8: dw $0115
0daa: dw $0125
0dac: dw $0137
0dae: dw $0149
0db0: dw $015d
0db2: dw $0171
0db4: dw $0187
0db6: dw $019f
0db8: dw $01b8
0dba: dw $01d2
0dbc: dw $01ed
0dbe: dw $020b
0dc0: dw $022a
0dc2: dw $024b
0dc4: dw $026e
0dc6: dw $0293
0dc8: dw $02ba
0dca: dw $02e3
0dcc: dw $030f
0dce: dw $033e
0dd0: dw $0370
0dd2: dw $03a4
0dd4: dw $03db
0dd6: dw $0416
0dd8: dw $0454
0dda: dw $0496
0ddc: dw $04dc
0dde: dw $0526
0de0: dw $0574
0de2: dw $05c7
0de4: dw $061f
0de6: dw $067d
0de8: dw $06e0
0dea: dw $0748
0dec: dw $07b7
0dee: dw $082d
0df0: dw $08a9
0df2: dw $092d
0df4: dw $09b9
0df6: dw $0a4d
0df8: dw $0ae9
0dfa: dw $0b8f
0dfc: dw $0c3f
0dfe: dw $0cfa
0e00: dw $0dc0
0e02: dw $0e91
0e04: dw $0f6f
0e06: dw $105a
0e08: dw $1152
0e0a: dw $125a
0e0c: dw $1372
0e0e: dw $149a
0e10: dw $15d3
0e12: dw $171f
0e14: dw $187f
0e16: dw $19f4
0e18: dw $1b80
0e1a: dw $1d22
0e1c: dw $1ede
0e1e: dw $20b4
0e20: dw $22a5
0e22: dw $24b5
0e24: dw $26e4
0e26: dw $2934
0e28: dw $2ba7
0e2a: dw $2e3f
0e2c: dw $30ff
0e2e: dw $33e9
0e30: dw $3700
0e32: dw $3a45
0e34: dw $3dbc
0e36: dw $3fff
0e38: dw $3fff
0e3a: dw $3fff
0e3c: dw $3fff
0e3e: dw $3fff
0e40: dw $3fff
0e42: dw $3fff
0e44: dw $3fff
0e46: dw $3fff
0e48: dw $3fff
0e4a: dw $3fff
0e4c: dw $3fff
0e4e: dw $3fff
0e50: dw $3fff
0e52: dw $3fff
0e54: dw $3fff
0e56: dw $001b
0e58: dw $001d
0e5a: dw $001e
0e5c: dw $0020
0e5e: dw $0022
0e60: dw $0024
0e62: dw $0026
0e64: dw $0029
0e66: dw $002b
0e68: dw $002e
0e6a: dw $0030
0e6c: dw $0033
0e6e: dw $0037
0e70: dw $003a
0e72: dw $003d
0e74: dw $0041
0e76: dw $0045
0e78: dw $0049
0e7a: dw $004d
0e7c: dw $0052
0e7e: dw $0057
0e80: dw $005c
0e82: dw $0061
0e84: dw $0067
0e86: dw $006e
0e88: dw $0074
0e8a: dw $0003
0e8c: dw $0000
0e8e: dw $0000
0e90: dw $0000
0e92: dw $0000

0e94: fd        mov   y,a
0e95: cd 07     mov   x,#$07
0e97: c9 e7 0e  mov   $0ee7,x
0e9a: c9 06 0f  mov   $0f06,x
0e9d: c9 de 0e  mov   $0ede,x
0ea0: 28 f0     and   a,#$f0
0ea2: d0 0b     bne   $0eaf
0ea4: e5 f8 02  mov   a,$02f8
0ea7: f0 04     beq   $0ead
0ea9: dd        mov   a,y
0eaa: 08 40     or    a,#$40
0eac: fd        mov   y,a
0ead: 2f 2e     bra   $0edd
0eaf: 10 17     bpl   $0ec8
0eb1: 28 70     and   a,#$70
0eb3: 9f        xcn   a
0eb4: 5d        mov   x,a
0eb5: dd        mov   a,y
0eb6: 28 0f     and   a,#$0f
0eb8: 08 10     or    a,#$10
0eba: ec f8 02  mov   y,$02f8
0ebd: f0 02     beq   $0ec1
0ebf: 08 40     or    a,#$40
0ec1: fd        mov   y,a
0ec2: 74 2d     cmp   a,$2d+x
0ec4: 90 79     bcc   $0f3f
0ec6: 2f 5a     bra   $0f22
0ec8: 9f        xcn   a
0ec9: c5 e7 0e  mov   $0ee7,a
0ecc: c5 06 0f  mov   $0f06,a
0ecf: c5 de 0e  mov   $0ede,a
0ed2: dd        mov   a,y
0ed3: 28 0f     and   a,#$0f
0ed5: ec f8 02  mov   y,$02f8
0ed8: f0 02     beq   $0edc
0eda: 08 40     or    a,#$40
0edc: fd        mov   y,a
0edd: cd 07     mov   x,#$07
0edf: f4 1d     mov   a,$1d+x
0ee1: f0 3f     beq   $0f22
0ee3: 1d        dec   x
0ee4: 10 f9     bpl   $0edf
0ee6: cd 07     mov   x,#$07
0ee8: f4 2d     mov   a,$2d+x
0eea: 1d        dec   x
0eeb: c8 ff     cmp   x,#$ff
0eed: f0 09     beq   $0ef8
0eef: 74 2d     cmp   a,$2d+x
0ef1: 90 02     bcc   $0ef5
0ef3: f4 2d     mov   a,$2d+x
0ef5: 1d        dec   x
0ef6: 10 f7     bpl   $0eef
0ef8: c5 fc 0e  mov   $0efc,a
0efb: ad 00     cmp   y,#$00
0efd: 90 40     bcc   $0f3f
0eff: 6d        push  y
0f00: cd 40     mov   x,#$40
0f02: c9 11 0f  mov   $0f11,x
0f05: cd 07     mov   x,#$07
0f07: c9 21 0f  mov   $0f21,x
0f0a: 74 2d     cmp   a,$2d+x
0f0c: d0 0e     bne   $0f1c
0f0e: fb 65     mov   y,$65+x
0f10: ad 37     cmp   y,#$37
0f12: f0 02     beq   $0f16
0f14: b0 06     bcs   $0f1c
0f16: cc 11 0f  mov   $0f11,y
0f19: c9 21 0f  mov   $0f21,x
0f1c: 1d        dec   x
0f1d: 10 eb     bpl   $0f0a
0f1f: ee        pop   y
0f20: cd 02     mov   x,#$02
0f22: dd        mov   a,y
0f23: d4 2d     mov   $2d+x,a
0f25: e8 00     mov   a,#$00
0f27: d4 45     mov   $45+x,a
0f29: d4 4d     mov   $4d+x,a
0f2b: d4 55     mov   $55+x,a
0f2d: d4 6d     mov   $6d+x,a
0f2f: d4 75     mov   $75+x,a
0f31: e8 20     mov   a,#$20
0f33: d4 3d     mov   $3d+x,a
0f35: e8 40     mov   a,#$40
0f37: d4 5d     mov   $5d+x,a
0f39: e8 00     mov   a,#$00
0f3b: d4 65     mov   $65+x,a
0f3d: 7d        mov   a,x
0f3e: 6f        ret

0f3f: cd ff     mov   x,#$ff
0f41: 6f        ret

0f42: e4 0b     mov   a,$0b
0f44: 3f 40 0c  call  $0c40
0f47: da 05     movw  $05,ya
0f49: 8d 01     mov   y,#$01
0f4b: f7 05     mov   a,($05)+y
0f4d: c4 07     mov   $07,a
0f4f: dc        dec   y
0f50: cc f8 02  mov   $02f8,y
0f53: f7 05     mov   a,($05)+y
0f55: 3f 94 0e  call  $0e94
0f58: 30 47     bmi   $0fa1
0f5a: e4 07     mov   a,$07
0f5c: d4 35     mov   $35+x,a
0f5e: e4 09     mov   a,$09
0f60: d4 7d     mov   $7d+x,a
0f62: e4 0b     mov   a,$0b
0f64: d4 0d     mov   $0d+x,a
0f66: ba 05     movw  ya,$05
0f68: 60        clrc
0f69: 88 02     adc   a,#$02
0f6b: 90 01     bcc   $0f6e
0f6d: fc        inc   y
0f6e: d4 15     mov   $15+x,a
0f70: dd        mov   a,y
0f71: d4 1d     mov   $1d+x,a
0f73: 4d        push  x
0f74: e4 0c     mov   a,$0c
0f76: d4 25     mov   $25+x,a
0f78: 3f f1 0c  call  $0cf1
0f7b: da 05     movw  $05,ya
0f7d: 0b 05     asl   $05
0f7f: 2b 06     rol   $06
0f81: 0b 05     asl   $05
0f83: 2b 06     rol   $06
0f85: ce        pop   x
0f86: e4 05     mov   a,$05
0f88: d5 80 01  mov   $0180+x,a
0f8b: e4 06     mov   a,$06
0f8d: d5 88 01  mov   $0188+x,a
0f90: e5 f7 02  mov   a,$02f7
0f93: 35 47 12  and   a,$1247+x
0f96: ec f6 02  mov   y,$02f6
0f99: f0 03     beq   $0f9e
0f9b: 15 3f 12  or    a,$123f+x
0f9e: c5 f7 02  mov   $02f7,a
0fa1: 7d        mov   a,x
0fa2: 6f        ret

0fa3: 4d        push  x
0fa4: 6d        push  y
0fa5: e4 05     mov   a,$05
0fa7: c4 9c     mov   $9c,a
0fa9: 3f 40 0c  call  $0c40
0fac: f8 06     mov   x,$06
0fae: da 05     movw  $05,ya
0fb0: 8d 01     mov   y,#$01
0fb2: cc f8 02  mov   $02f8,y
0fb5: f7 05     mov   a,($05)+y
0fb7: c4 9b     mov   $9b,a
0fb9: 7d        mov   a,x
0fba: 3f 94 0e  call  $0e94
0fbd: 30 54     bmi   $1013
0fbf: f4 3d     mov   a,$3d+x
0fc1: 08 80     or    a,#$80
0fc3: d4 3d     mov   $3d+x,a
0fc5: e4 0b     mov   a,$0b
0fc7: d4 65     mov   $65+x,a
0fc9: e4 0c     mov   a,$0c
0fcb: d4 5d     mov   $5d+x,a
0fcd: e4 9b     mov   a,$9b
0fcf: d4 35     mov   $35+x,a
0fd1: e8 00     mov   a,#$00
0fd3: d4 7d     mov   $7d+x,a
0fd5: d4 25     mov   $25+x,a
0fd7: e4 9c     mov   a,$9c
0fd9: d4 0d     mov   $0d+x,a
0fdb: ba 05     movw  ya,$05
0fdd: 60        clrc
0fde: 88 02     adc   a,#$02
0fe0: 90 01     bcc   $0fe3
0fe2: fc        inc   y
0fe3: d4 15     mov   $15+x,a
0fe5: dd        mov   a,y
0fe6: d4 1d     mov   $1d+x,a
0fe8: 0b 09     asl   $09
0fea: 2b 0a     rol   $0a
0fec: 0b 09     asl   $09
0fee: 2b 0a     rol   $0a
0ff0: e4 09     mov   a,$09
0ff2: d5 80 01  mov   $0180+x,a
0ff5: e4 0a     mov   a,$0a
0ff7: d5 88 01  mov   $0188+x,a
0ffa: e4 07     mov   a,$07
0ffc: d4 85     mov   $85+x,a
0ffe: e4 08     mov   a,$08
1000: d4 8d     mov   $8d+x,a
1002: e5 f7 02  mov   a,$02f7
1005: 35 47 12  and   a,$1247+x
1008: ec f6 02  mov   y,$02f6
100b: 10 03     bpl   $1010
100d: 15 3f 12  or    a,$123f+x
1010: c5 f7 02  mov   $02f7,a
1013: ee        pop   y
1014: ce        pop   x
1015: 6f        ret

1016: cd 07     mov   x,#$07
1018: d8 97     mov   $97,x
101a: f5 37 12  mov   a,$1237+x
101d: c4 99     mov   $99,a
101f: f5 3f 12  mov   a,$123f+x
1022: c4 98     mov   $98,a
1024: 3f 45 10  call  $1045
1027: 1d        dec   x
1028: 10 ee     bpl   $1018
102a: e5 f7 02  mov   a,$02f7
102d: 8f 4d f2  mov   $f2,#$4d
1030: c4 f3     mov   $f3,a
1032: 8f 4c f2  mov   $f2,#$4c
1035: fa 9e f3  mov   ($f3),($9e)
1038: 8f 00 9e  mov   $9e,#$00
103b: 8f 5c f2  mov   $f2,#$5c
103e: fa 9f f3  mov   ($f3),($9f)
1041: 8f 00 9f  mov   $9f,#$00
1044: 6f        ret

1045: f4 3d     mov   a,$3d+x
1047: 28 20     and   a,#$20
1049: f0 38     beq   $1083
104b: f4 3d     mov   a,$3d+x
104d: 28 df     and   a,#$df
104f: 08 40     or    a,#$40
1051: d4 3d     mov   $3d+x,a
1053: f4 35     mov   a,$35+x
1055: c4 9b     mov   $9b,a
1057: 8f 00 9c  mov   $9c,#$00
105a: 8f 00 9d  mov   $9d,#$00
105d: 4d        push  x
105e: 3f a7 09  call  $09a7
1061: ce        pop   x
1062: e4 99     mov   a,$99
1064: 08 04     or    a,#$04
1066: c4 f2     mov   $f2,a
1068: d8 f3     mov   $f3,x
106a: e4 99     mov   a,$99
106c: 08 05     or    a,#$05
106e: c4 f2     mov   $f2,a
1070: 8f 00 f3  mov   $f3,#$00
1073: e4 99     mov   a,$99
1075: 08 07     or    a,#$07
1077: c4 f2     mov   $f2,a
1079: 8f 9f f3  mov   $f3,#$9f
107c: e4 9f     mov   a,$9f
107e: 04 98     or    a,$98
1080: c4 9f     mov   $9f,a
1082: 6f        ret

1083: f4 3d     mov   a,$3d+x
1085: 28 08     and   a,#$08
1087: f0 3d     beq   $10c6
1089: f5 70 02  mov   a,$0270+x
108c: d0 34     bne   $10c2
108e: f5 80 02  mov   a,$0280+x
1091: 10 17     bpl   $10aa
1093: 28 7f     and   a,#$7f
1095: 60        clrc
1096: 94 65     adc   a,$65+x
1098: 75 88 02  cmp   a,$0288+x
109b: 90 09     bcc   $10a6
109d: f4 3d     mov   a,$3d+x
109f: 28 f7     and   a,#$f7
10a1: d4 3d     mov   $3d+x,a
10a3: f5 88 02  mov   a,$0288+x
10a6: d4 65     mov   $65+x,a
10a8: 2f 10     bra   $10ba
10aa: c4 05     mov   $05,a
10ac: f4 65     mov   a,$65+x
10ae: 80        setc
10af: a4 05     sbc   a,$05
10b1: 75 88 02  cmp   a,$0288+x
10b4: f0 e7     beq   $109d
10b6: 30 e5     bmi   $109d
10b8: d4 65     mov   $65+x,a
10ba: f5 78 02  mov   a,$0278+x
10bd: d5 70 02  mov   $0270+x,a
10c0: 2f 04     bra   $10c6
10c2: 9c        dec   a
10c3: d5 70 02  mov   $0270+x,a
10c6: f4 3d     mov   a,$3d+x
10c8: 28 04     and   a,#$04
10ca: f0 3a     beq   $1106
10cc: 8f 00 05  mov   $05,#$00
10cf: f5 20 02  mov   a,$0220+x
10d2: 10 04     bpl   $10d8
10d4: ab 05     inc   $05
10d6: 28 7f     and   a,#$7f
10d8: c4 06     mov   $06,a
10da: f4 5d     mov   a,$5d+x
10dc: eb 05     mov   y,$05
10de: f0 09     beq   $10e9
10e0: 80        setc
10e1: a4 06     sbc   a,$06
10e3: 10 02     bpl   $10e7
10e5: e8 00     mov   a,#$00
10e7: 2f 07     bra   $10f0
10e9: 60        clrc
10ea: 84 06     adc   a,$06
10ec: 10 02     bpl   $10f0
10ee: e8 7f     mov   a,#$7f
10f0: d4 5d     mov   $5d+x,a
10f2: f5 28 02  mov   a,$0228+x
10f5: 9c        dec   a
10f6: d0 0b     bne   $1103
10f8: f5 20 02  mov   a,$0220+x
10fb: 48 80     eor   a,#$80
10fd: d5 20 02  mov   $0220+x,a
1100: f5 30 02  mov   a,$0230+x
1103: d5 28 02  mov   $0228+x,a
1106: eb a0     mov   y,$a0
1108: f4 65     mov   a,$65+x
110a: 60        clrc
110b: 94 75     adc   a,$75+x
110d: 68 3f     cmp   a,#$3f
110f: 30 02     bmi   $1113
1111: e8 3f     mov   a,#$3f
1113: cf        mul   ya
1114: 28 f0     and   a,#$f0
1116: c4 05     mov   $05,a
1118: dd        mov   a,y
1119: 28 0f     and   a,#$0f
111b: 04 05     or    a,$05
111d: 9f        xcn   a
111e: fd        mov   y,a
111f: 5c        lsr   a
1120: c4 07     mov   $07,a
1122: f4 5d     mov   a,$5d+x
1124: 10 24     bpl   $114a
1126: 48 ff     eor   a,#$ff
1128: bc        inc   a
1129: cf        mul   ya
112a: cb 06     mov   $06,y
112c: dd        mov   a,y
112d: 48 ff     eor   a,#$ff
112f: bc        inc   a
1130: c4 05     mov   $05,a
1132: e4 05     mov   a,$05
1134: 60        clrc
1135: 94 6d     adc   a,$6d+x
1137: 30 02     bmi   $113b
1139: e8 ff     mov   a,#$ff
113b: c4 05     mov   $05,a
113d: e4 06     mov   a,$06
113f: 80        setc
1140: b4 6d     sbc   a,$6d+x
1142: 10 02     bpl   $1146
1144: e8 00     mov   a,#$00
1146: c4 06     mov   $06,a
1148: 2f 20     bra   $116a
114a: cf        mul   ya
114b: cb 06     mov   $06,y
114d: fa 07 05  mov   ($05),($07)
1150: 80        setc
1151: a9 06 05  sbc   ($05),($06)
1154: e4 05     mov   a,$05
1156: 80        setc
1157: b4 6d     sbc   a,$6d+x
1159: 10 02     bpl   $115d
115b: e8 00     mov   a,#$00
115d: c4 05     mov   $05,a
115f: e4 06     mov   a,$06
1161: 80        setc
1162: b4 6d     sbc   a,$6d+x
1164: 10 02     bpl   $1168
1166: e8 00     mov   a,#$00
1168: c4 06     mov   $06,a
116a: e4 99     mov   a,$99
116c: 08 00     or    a,#$00
116e: c4 f2     mov   $f2,a
1170: fa 05 f3  mov   ($f3),($05)
1173: e4 99     mov   a,$99
1175: 08 01     or    a,#$01
1177: c4 f2     mov   $f2,a
1179: fa 06 f3  mov   ($f3),($06)
117c: f4 3d     mov   a,$3d+x
117e: 28 01     and   a,#$01
1180: f0 3d     beq   $11bf
1182: f5 c8 01  mov   a,$01c8+x
1185: d0 16     bne   $119d
1187: f4 3d     mov   a,$3d+x
1189: 28 fe     and   a,#$fe
118b: d4 3d     mov   $3d+x,a
118d: f5 a0 01  mov   a,$01a0+x
1190: d5 80 01  mov   $0180+x,a
1193: f5 a8 01  mov   a,$01a8+x
1196: d5 88 01  mov   $0188+x,a
1199: 2f 24     bra   $11bf
119b: 2f 20     bra   $11bd
119d: 9c        dec   a
119e: d5 c8 01  mov   $01c8+x,a
11a1: f5 b0 01  mov   a,$01b0+x
11a4: c4 07     mov   $07,a
11a6: f5 b8 01  mov   a,$01b8+x
11a9: c4 08     mov   $08,a
11ab: f5 98 01  mov   a,$0198+x
11ae: fd        mov   y,a
11af: f5 90 01  mov   a,$0190+x
11b2: 7a 07     addw  ya,$07
11b4: da 05     movw  $05,ya
11b6: d5 90 01  mov   $0190+x,a
11b9: dd        mov   a,y
11ba: d5 98 01  mov   $0198+x,a
11bd: 2f 06     bra   $11c5
11bf: e8 00     mov   a,#$00
11c1: c4 05     mov   $05,a
11c3: c4 06     mov   $06,a
11c5: f4 3d     mov   a,$3d+x
11c7: 28 02     and   a,#$02
11c9: f0 3e     beq   $1209
11cb: f5 58 02  mov   a,$0258+x
11ce: c4 09     mov   $09,a
11d0: f5 60 02  mov   a,$0260+x
11d3: c4 0a     mov   $0a,a
11d5: f5 40 02  mov   a,$0240+x
11d8: fd        mov   y,a
11d9: f5 48 02  mov   a,$0248+x
11dc: d0 07     bne   $11e5
11de: f5 38 02  mov   a,$0238+x
11e1: 7a 09     addw  ya,$09
11e3: 2f 05     bra   $11ea
11e5: f5 38 02  mov   a,$0238+x
11e8: 9a 09     subw  ya,$09
11ea: da 07     movw  $07,ya
11ec: d5 38 02  mov   $0238+x,a
11ef: dd        mov   a,y
11f0: d5 40 02  mov   $0240+x,a
11f3: f5 50 02  mov   a,$0250+x
11f6: 9c        dec   a
11f7: d0 0b     bne   $1204
11f9: f5 48 02  mov   a,$0248+x
11fc: 48 01     eor   a,#$01
11fe: d5 48 02  mov   $0248+x,a
1201: f5 68 02  mov   a,$0268+x
1204: d5 50 02  mov   $0250+x,a
1207: 2f 06     bra   $120f
1209: e8 00     mov   a,#$00
120b: c4 07     mov   $07,a
120d: c4 08     mov   $08,a
120f: f5 88 01  mov   a,$0188+x
1212: fd        mov   y,a
1213: f5 80 01  mov   a,$0180+x
1216: 7a 05     addw  ya,$05
1218: 7a 07     addw  ya,$07
121a: da 05     movw  $05,ya
121c: 4b 06     lsr   $06
121e: 6b 05     ror   $05
1220: 4b 06     lsr   $06
1222: 6b 05     ror   $05
1224: e4 99     mov   a,$99
1226: 08 02     or    a,#$02
1228: c4 f2     mov   $f2,a
122a: fa 05 f3  mov   ($f3),($05)
122d: e4 99     mov   a,$99
122f: 08 03     or    a,#$03
1231: c4 f2     mov   $f2,a
1233: fa 06 f3  mov   ($f3),($06)
1236: 6f        ret

1237: db $00,$10,$20,$30,$40,$50,$60,$70

123f: db $01,$02,$04,$08,$10,$20,$40,$80

1247: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

124f: 2d        push  a
1250: 8f 5c f2  mov   $f2,#$5c
1253: 8f ff f3  mov   $f3,#$ff
1256: cd 00     mov   x,#$00
1258: f5 a3 12  mov   a,$12a3+x
125b: 30 0b     bmi   $1268
125d: c4 f2     mov   $f2,a
125f: 3d        inc   x
1260: f5 a3 12  mov   a,$12a3+x
1263: c4 f3     mov   $f3,a
1265: 3d        inc   x
1266: 2f f0     bra   $1258
1268: 8f 00 05  mov   $05,#$00
126b: cd 00     mov   x,#$00
126d: f5 ce 12  mov   a,$12ce+x
1270: 30 0d     bmi   $127f
1272: 04 05     or    a,$05
1274: c4 f2     mov   $f2,a
1276: 3d        inc   x
1277: f5 ce 12  mov   a,$12ce+x
127a: c4 f3     mov   $f3,a
127c: 3d        inc   x
127d: d0 ee     bne   $126d
127f: 60        clrc
1280: 98 10 05  adc   $05,#$10
1283: 10 e6     bpl   $126b
1285: ae        pop   a
1286: 68 00     cmp   a,#$00
1288: f0 12     beq   $129c
128a: 8f 6c f2  mov   $f2,#$6c
128d: 8f 20 f3  mov   $f3,#$20
1290: 8f 0c f2  mov   $f2,#$0c
1293: 8f 7f f3  mov   $f3,#$7f
1296: 8f 1c f2  mov   $f2,#$1c
1299: 8f 7f f3  mov   $f3,#$7f
129c: 8f 4c f2  mov   $f2,#$4c
129f: 8f 00 f3  mov   $f3,#$00
12a2: 6f        ret

12a3: db $6c,$e0
12a5: db $0c,$00
12a7: db $1c,$00
12a9: db $2c,$00
12ab: db $3c,$00
12ad: db $6d,$01
12af: db $7d,$00
12b1: db $0d,$00
12b3: db $2d,$00
12b5: db $3d,$00
12b7: db $4d,$00
12b9: db $7c,$00
12bb: db $5d,$02
12bd: db $0f,$7f
12bf: db $1f,$00
12c1: db $2f,$00
12c3: db $3f,$00
12c5: db $4f,$00
12c7: db $5f,$00
12c9: db $6f,$00
12cb: db $7f,$00
12cd: db $ff

12ce: db $00,$00
12d0: db $01,$00
12d2: db $05,$00
12d4: db $06,$00
12d6: db $07,$9f
12d8: db $ff

12d9: e5 f3 02  mov   a,$02f3
12dc: d0 01     bne   $12df
12de: 6f        ret

12df: e5 f2 02  mov   a,$02f2
12e2: f0 04     beq   $12e8
12e4: 8c f2 02  dec   $02f2
12e7: 6f        ret

12e8: e5 f3 02  mov   a,$02f3
12eb: c5 f2 02  mov   $02f2,a
12ee: e5 f4 02  mov   a,$02f4
12f1: 10 05     bpl   $12f8
12f3: 8f 00 05  mov   $05,#$00
12f6: 2f 03     bra   $12fb
12f8: 8f 40 05  mov   $05,#$40
12fb: e4 a0     mov   a,$a0
12fd: 60        clrc
12fe: 85 f4 02  adc   a,$02f4
1301: 68 40     cmp   a,#$40
1303: 90 11     bcc   $1316
1305: e8 00     mov   a,#$00
1307: c5 f3 02  mov   $02f3,a
130a: e5 f4 02  mov   a,$02f4
130d: 10 05     bpl   $1314
130f: e8 00     mov   a,#$00
1311: c5 f1 02  mov   $02f1,a
1314: e4 05     mov   a,$05
1316: c4 a0     mov   $a0,a
1318: 6f        ret

1319: e4 a4     mov   a,$a4
131b: d0 01     bne   $131e
131d: 6f        ret

131e: 3f e9 13  call  $13e9
1321: 3f 28 13  call  $1328
1324: 3f e6 14  call  $14e6
1327: 6f        ret

1328: e4 a1     mov   a,$a1
132a: 04 a2     or    a,$a2
132c: f0 03     beq   $1331
132e: 1a a1     decw  $a1
1330: 6f        ret

1331: 8d 00     mov   y,#$00
1333: f7 a3     mov   a,($a3)+y
1335: 68 ff     cmp   a,#$ff
1337: d0 06     bne   $133f
1339: e8 02     mov   a,#$02
133b: c5 f1 02  mov   $02f1,a
133e: 6f        ret

133f: 68 fe     cmp   a,#$fe
1341: d0 29     bne   $136c
1343: 8d 01     mov   y,#$01
1345: f7 a3     mov   a,($a3)+y
1347: c4 05     mov   $05,a
1349: fc        inc   y
134a: f7 a3     mov   a,($a3)+y
134c: c4 06     mov   $06,a
134e: e4 a5     mov   a,$a5
1350: eb a6     mov   y,$a6
1352: 60        clrc
1353: 88 04     adc   a,#$04
1355: 90 01     bcc   $1358
1357: fc        inc   y
1358: 7a 05     addw  ya,$05
135a: 8f 02 05  mov   $05,#$02
135d: 8f 00 06  mov   $06,#$00
1360: 7a 05     addw  ya,$05
1362: 8f 00 a1  mov   $a1,#$00
1365: 8f 00 a2  mov   $a2,#$00
1368: da a3     movw  $a3,ya
136a: 2f 58     bra   $13c4
136c: c4 05     mov   $05,a
136e: 8f 00 06  mov   $06,#$00
1371: 0b 05     asl   $05
1373: 2b 06     rol   $06
1375: ba a7     movw  ya,$a7
1377: 7a 05     addw  ya,$05
1379: da 05     movw  $05,ya
137b: 8d 00     mov   y,#$00
137d: f7 05     mov   a,($05)+y
137f: c4 07     mov   $07,a
1381: fc        inc   y
1382: f7 05     mov   a,($05)+y
1384: c4 08     mov   $08,a
1386: ba a7     movw  ya,$a7
1388: 7a 07     addw  ya,$07
138a: da 05     movw  $05,ya
138c: 3f d0 13  call  $13d0
138f: 30 1e     bmi   $13af
1391: 8d 01     mov   y,#$01
1393: f7 a3     mov   a,($a3)+y
1395: d5 d0 01  mov   $01d0+x,a
1398: fc        inc   y
1399: f7 a3     mov   a,($a3)+y
139b: d5 e0 01  mov   $01e0+x,a
139e: fc        inc   y
139f: f7 a3     mov   a,($a3)+y
13a1: d5 f0 01  mov   $01f0+x,a
13a4: 3f 7c 14  call  $147c
13a7: e4 ed     mov   a,$ed
13a9: d4 c9     mov   $c9+x,a
13ab: e4 ee     mov   a,$ee
13ad: d4 d9     mov   $d9+x,a
13af: 8d 04     mov   y,#$04
13b1: f7 a3     mov   a,($a3)+y
13b3: c4 a1     mov   $a1,a
13b5: fc        inc   y
13b6: f7 a3     mov   a,($a3)+y
13b8: c4 a2     mov   $a2,a
13ba: ba a3     movw  ya,$a3
13bc: 60        clrc
13bd: 88 06     adc   a,#$06
13bf: 90 01     bcc   $13c2
13c1: fc        inc   y
13c2: da a3     movw  $a3,ya
13c4: e4 a1     mov   a,$a1
13c6: 04 a2     or    a,$a2
13c8: d0 03     bne   $13cd
13ca: 5f 31 13  jmp   $1331

13cd: 5f 57 15  jmp   $1557

13d0: cd 00     mov   x,#$00
13d2: f4 b9     mov   a,$b9+x
13d4: f0 08     beq   $13de
13d6: 3d        inc   x
13d7: c8 10     cmp   x,#$10
13d9: d0 f7     bne   $13d2
13db: cd ff     mov   x,#$ff
13dd: 6f        ret

13de: e4 05     mov   a,$05
13e0: d4 a9     mov   $a9+x,a
13e2: e4 06     mov   a,$06
13e4: d4 b9     mov   $b9+x,a
13e6: c8 00     cmp   x,#$00
13e8: 6f        ret

13e9: cd 00     mov   x,#$00
13eb: 4d        push  x
13ec: f4 b9     mov   a,$b9+x
13ee: d0 03     bne   $13f3
13f0: 5f 72 14  jmp   $1472

13f3: f4 c9     mov   a,$c9+x
13f5: 14 d9     or    a,$d9+x
13f7: f0 0c     beq   $1405
13f9: 9b c9     dec   $c9+x
13fb: f4 c9     mov   a,$c9+x
13fd: 68 ff     cmp   a,#$ff
13ff: d0 02     bne   $1403
1401: 9b d9     dec   $d9+x
1403: 2f 6d     bra   $1472
1405: 3f 7c 14  call  $147c
1408: f5 d0 01  mov   a,$01d0+x
140b: c4 09     mov   $09,a
140d: e4 e9     mov   a,$e9
140f: 10 02     bpl   $1413
1411: 28 7f     and   a,#$7f
1413: f0 57     beq   $146c
1415: 60        clrc
1416: 84 09     adc   a,$09
1418: c4 0c     mov   $0c,a
141a: f5 f0 01  mov   a,$01f0+x
141d: fd        mov   y,a
141e: f6 90 02  mov   a,$0290+y
1421: c4 0b     mov   $0b,a
1423: 4d        push  x
1424: 3f 42 0f  call  $0f42
1427: ee        pop   y
1428: 30 1a     bmi   $1444
142a: e4 eb     mov   a,$eb
142c: d4 85     mov   $85+x,a
142e: e4 ec     mov   a,$ec
1430: d4 8d     mov   $8d+x,a
1432: e4 ea     mov   a,$ea
1434: 60        clrc
1435: 96 e0 01  adc   a,$01e0+y
1438: 10 02     bpl   $143c
143a: e8 00     mov   a,#$00
143c: 68 3f     cmp   a,#$3f
143e: 90 02     bcc   $1442
1440: e8 3f     mov   a,#$3f
1442: d4 65     mov   $65+x,a
1444: dd        mov   a,y
1445: 5d        mov   x,a
1446: f4 a9     mov   a,$a9+x
1448: 60        clrc
1449: 84 ef     adc   a,$ef
144b: d4 a9     mov   $a9+x,a
144d: 90 02     bcc   $1451
144f: bb b9     inc   $b9+x
1451: 3f 7c 14  call  $147c
1454: e4 ed     mov   a,$ed
1456: d4 c9     mov   $c9+x,a
1458: e4 ee     mov   a,$ee
145a: d4 d9     mov   $d9+x,a
145c: 04 ed     or    a,$ed
145e: f0 a8     beq   $1408
1460: 9b c9     dec   $c9+x
1462: f4 c9     mov   a,$c9+x
1464: 68 ff     cmp   a,#$ff
1466: d0 02     bne   $146a
1468: 9b d9     dec   $d9+x
146a: 2f 06     bra   $1472
146c: e8 00     mov   a,#$00
146e: d4 a9     mov   $a9+x,a
1470: d4 b9     mov   $b9+x,a
1472: ce        pop   x
1473: 3d        inc   x
1474: c8 10     cmp   x,#$10
1476: f0 03     beq   $147b
1478: 5f eb 13  jmp   $13eb

147b: 6f        ret

147c: 4d        push  x
147d: f4 b9     mov   a,$b9+x
147f: fd        mov   y,a
1480: f4 a9     mov   a,$a9+x
1482: da 0b     movw  $0b,ya
1484: 8d 00     mov   y,#$00
1486: f7 0b     mov   a,($0b)+y
1488: 28 3f     and   a,#$3f
148a: 5d        mov   x,a
148b: f7 0b     mov   a,($0b)+y
148d: 28 40     and   a,#$40
148f: f0 05     beq   $1496
1491: 7d        mov   a,x
1492: 08 80     or    a,#$80
1494: 2f 01     bra   $1497
1496: 7d        mov   a,x
1497: c4 e9     mov   $e9,a
1499: 8f 04 ef  mov   $ef,#$04
149c: fc        inc   y
149d: f7 0b     mov   a,($0b)+y
149f: 28 3f     and   a,#$3f
14a1: c4 ea     mov   $ea,a
14a3: 8f 03 05  mov   $05,#$03
14a6: 8f 00 06  mov   $06,#$00
14a9: 8d 00     mov   y,#$00
14ab: f7 0b     mov   a,($0b)+y
14ad: 10 04     bpl   $14b3
14af: ab 06     inc   $06
14b1: ab ef     inc   $ef
14b3: fc        inc   y
14b4: f7 0b     mov   a,($0b)+y
14b6: 10 04     bpl   $14bc
14b8: ab 05     inc   $05
14ba: ab ef     inc   $ef
14bc: eb 05     mov   y,$05
14be: f7 0b     mov   a,($0b)+y
14c0: c4 ed     mov   $ed,a
14c2: e4 06     mov   a,$06
14c4: d0 04     bne   $14ca
14c6: e8 00     mov   a,#$00
14c8: 2f 03     bra   $14cd
14ca: fc        inc   y
14cb: f7 0b     mov   a,($0b)+y
14cd: c4 ee     mov   $ee,a
14cf: 8d 02     mov   y,#$02
14d1: f7 0b     mov   a,($0b)+y
14d3: c4 eb     mov   $eb,a
14d5: e4 05     mov   a,$05
14d7: 68 04     cmp   a,#$04
14d9: d0 05     bne   $14e0
14db: fc        inc   y
14dc: f7 0b     mov   a,($0b)+y
14de: 2f 02     bra   $14e2
14e0: e8 00     mov   a,#$00
14e2: c4 ec     mov   $ec,a
14e4: ce        pop   x
14e5: 6f        ret

14e6: cd 07     mov   x,#$07
14e8: f4 3d     mov   a,$3d+x
14ea: 28 80     and   a,#$80
14ec: d0 1e     bne   $150c
14ee: f4 85     mov   a,$85+x
14f0: 14 8d     or    a,$8d+x
14f2: f0 18     beq   $150c
14f4: 9b 85     dec   $85+x
14f6: f4 85     mov   a,$85+x
14f8: 68 ff     cmp   a,#$ff
14fa: d0 02     bne   $14fe
14fc: 9b 8d     dec   $8d+x
14fe: 14 8d     or    a,$8d+x
1500: d0 0a     bne   $150c
1502: f4 3d     mov   a,$3d+x
1504: 08 10     or    a,#$10
1506: d4 3d     mov   $3d+x,a
1508: e8 00     mov   a,#$00
150a: d4 2d     mov   $2d+x,a
150c: 1d        dec   x
150d: 10 d9     bpl   $14e8
150f: 6f        ret

1510: 8d 00     mov   y,#$00
1512: e4 a5     mov   a,$a5
1514: 60        clrc
1515: 97 a5     adc   a,($a5)+y
1517: c4 a7     mov   $a7,a
1519: fc        inc   y
151a: e4 a6     mov   a,$a6
151c: 97 a5     adc   a,($a5)+y
151e: c4 a8     mov   $a8,a
1520: fc        inc   y
1521: f7 a5     mov   a,($a5)+y
1523: 8f 01 f1  mov   $f1,#$01
1526: c4 fb     mov   $fb,a
1528: 8f 03 f1  mov   $f1,#$03
152b: e4 fd     mov   a,$fd
152d: e4 fe     mov   a,$fe
152f: e4 a5     mov   a,$a5
1531: eb a6     mov   y,$a6
1533: 60        clrc
1534: 88 04     adc   a,#$04
1536: 90 01     bcc   $1539
1538: fc        inc   y
1539: da a3     movw  $a3,ya
153b: 8d 00     mov   y,#$00
153d: cb 06     mov   $06,y
153f: f7 a3     mov   a,($a3)+y
1541: c4 a1     mov   $a1,a
1543: fc        inc   y
1544: f7 a3     mov   a,($a3)+y
1546: c4 a2     mov   $a2,a
1548: 8f 02 05  mov   $05,#$02
154b: ba a3     movw  ya,$a3
154d: 7a 05     addw  ya,$05
154f: da a3     movw  $a3,ya
1551: e4 a1     mov   a,$a1
1553: 04 a2     or    a,$a2
1555: f0 0a     beq   $1561
1557: 8b a1     dec   $a1
1559: e4 a1     mov   a,$a1
155b: 68 ff     cmp   a,#$ff
155d: d0 02     bne   $1561
155f: 8b a2     dec   $a2
1561: 6f        ret
