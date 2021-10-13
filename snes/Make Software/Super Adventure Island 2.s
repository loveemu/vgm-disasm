0600: e8 02     mov   a,#$02
0602: 8d 00     mov   y,#$00
0604: da 01     movw  $01,ya
0606: e8 00     mov   a,#$00
0608: fd        mov   y,a
0609: da 03     movw  $03,ya
060b: 00        nop
060c: 00        nop
060d: 00        nop
060e: 00        nop
060f: 1a 03     decw  $03
0611: d0 f8     bne   $060b
0613: 1a 01     decw  $01
0615: d0 ef     bne   $0606
0617: 8f 00 00  mov   $00,#$00
061a: 20        clrp
061b: cd cf     mov   x,#$cf
061d: bd        mov   sp,x
061e: e4 00     mov   a,$00
0620: 28 10     and   a,#$10
0622: c4 00     mov   $00,a
0624: e8 00     mov   a,#$00
0626: cd 01     mov   x,#$01
0628: af        mov   (x)+,a
0629: c8 f0     cmp   x,#$f0
062b: d0 fb     bne   $0628
062d: cd 00     mov   x,#$00
062f: d5 00 02  mov   $0200+x,a
0632: d5 00 03  mov   $0300+x,a
0635: d5 00 04  mov   $0400+x,a
0638: d5 00 05  mov   $0500+x,a
063b: 3d        inc   x
063c: d0 f1     bne   $062f
063e: 3f 7e 09  call  $097e
0641: 3f 99 09  call  $0999
0644: 8f 30 f1  mov   $f1,#$30
0647: e8 10     mov   a,#$10
0649: c4 fa     mov   $fa,a
064b: c4 1c     mov   $1c,a
064d: e8 80     mov   a,#$80
064f: c4 fb     mov   $fb,a
0651: 8f 03 f1  mov   $f1,#$03
0654: 3f d5 06  call  $06d5
0657: 3f 07 07  call  $0707
065a: 3f c4 09  call  $09c4
065d: 13 14 f4  bbc0  $14,$0654
0660: eb 15     mov   y,$15
0662: e4 1c     mov   a,$1c
0664: cf        mul   ya
0665: 60        clrc
0666: 84 17     adc   a,$17
0668: c4 17     mov   $17,a
066a: 90 2d     bcc   $0699
066c: a3 00 2a  bbs5  $00,$0699
066f: 8d 08     mov   y,#$08
0671: cd 00     mov   x,#$00
0673: d8 0e     mov   $0e,x
0675: 6d        push  y
0676: f8 0e     mov   x,$0e
0678: e4 0f     mov   a,$0f
067a: 35 73 14  and   a,$1473+x
067d: f0 0f     beq   $068e
067f: 3f 5f 0a  call  $0a5f
0682: 3f e7 0c  call  $0ce7
0685: 3f a3 0c  call  $0ca3
0688: 3f 3c 0d  call  $0d3c
068b: 3f 79 0d  call  $0d79
068e: ab 0e     inc   $0e
0690: ee        pop   y
0691: fe e2     dbnz  y,$0675
0693: 3f d7 0d  call  $0dd7
0696: 3f a5 0d  call  $0da5
0699: eb 15     mov   y,$15
069b: e8 20     mov   a,#$20
069d: cf        mul   ya
069e: 60        clrc
069f: 84 18     adc   a,$18
06a1: c4 18     mov   $18,a
06a3: 90 1e     bcc   $06c3
06a5: 8d 08     mov   y,#$08
06a7: cd 08     mov   x,#$08
06a9: d8 0e     mov   $0e,x
06ab: 6d        push  y
06ac: f8 0e     mov   x,$0e
06ae: e4 10     mov   a,$10
06b0: 35 73 14  and   a,$1473+x
06b3: f0 09     beq   $06be
06b5: 3f 77 0b  call  $0b77
06b8: 3f e9 0d  call  $0de9
06bb: 3f 37 0c  call  $0c37
06be: ab 0e     inc   $0e
06c0: ee        pop   y
06c1: fe e8     dbnz  y,$06ab
06c3: 3f e1 06  call  $06e1
06c6: 3f 60 0c  call  $0c60
06c9: 3f b5 0d  call  $0db5
06cc: 3f 1d 0e  call  $0e1d
06cf: 3f 72 07  call  $0772
06d2: 5f 54 06  jmp   $0654

06d5: 8f 00 14  mov   $14,#$00
06d8: e4 fd     mov   a,$fd
06da: f0 04     beq   $06e0
06dc: 02 14     set0  $14
06de: c4 15     mov   $15,a
06e0: 6f        ret

06e1: e4 fe     mov   a,$fe
06e3: 28 0f     and   a,#$0f
06e5: c4 01     mov   $01,a
06e7: e4 3f     mov   a,$3f
06e9: 30 09     bmi   $06f4
06eb: 80        setc
06ec: a4 01     sbc   a,$01
06ee: b0 02     bcs   $06f2
06f0: ab 40     inc   $40
06f2: c4 3f     mov   $3f,a
06f4: 6f        ret

06f5: f5 00 02  mov   a,$0200+x
06f8: d5 04 02  mov   $0204+x,a
06fb: f4 f4     mov   a,$f4+x
06fd: 74 f4     cmp   a,$f4+x
06ff: d0 fa     bne   $06fb
0701: d5 00 02  mov   $0200+x,a
0704: d4 f4     mov   $f4+x,a
0706: 6f        ret

0707: cd 00     mov   x,#$00
0709: 3f f5 06  call  $06f5
070c: f5 00 02  mov   a,$0200+x
070f: f0 60     beq   $0771
0711: 75 04 02  cmp   a,$0204+x
0714: f0 5b     beq   $0771
0716: 68 f0     cmp   a,#$f0
0718: b0 64     bcs   $077e
071a: 68 e0     cmp   a,#$e0
071c: b0 67     bcs   $0785
071e: 64 0d     cmp   a,$0d
0720: f0 4f     beq   $0771
0722: 3f 88 08  call  $0888
0725: e8 ff     mov   a,#$ff
0727: 03 2c 07  bbs0  $2c,$0731
072a: e3 00 02  bbs7  $00,$072f
072d: c4 22     mov   $22,a
072f: c4 21     mov   $21,a
0731: 12 2c     clr0  $2c
0733: f5 00 02  mov   a,$0200+x
0736: c4 0d     mov   $0d,a
0738: 9c        dec   a
0739: 1c        asl   a
073a: fd        mov   y,a
073b: f6 18 15  mov   a,$1518+y
073e: c4 03     mov   $03,a
0740: f6 19 15  mov   a,$1519+y
0743: c4 04     mov   $04,a
0745: 8d 00     mov   y,#$00
0747: f7 03     mov   a,($03)+y
0749: c4 01     mov   $01,a
074b: fc        inc   y
074c: f7 03     mov   a,($03)+y
074e: c4 02     mov   $02,a
0750: cd 07     mov   x,#$07
0752: 7d        mov   a,x
0753: 1c        asl   a
0754: fd        mov   y,a
0755: f7 01     mov   a,($01)+y
0757: d5 08 02  mov   $0208+x,a
075a: fc        inc   y
075b: f7 01     mov   a,($01)+y
075d: d5 18 02  mov   $0218+x,a
0760: 15 08 02  or    a,$0208+x
0763: f0 09     beq   $076e
0765: 3f d9 08  call  $08d9
0768: f5 73 14  mov   a,$1473+x
076b: 0e 0f 00  tset1 $000f
076e: 1d        dec   x
076f: 10 e1     bpl   $0752
0771: 6f        ret

0772: e9 b8 04  mov   x,$04b8
0775: f0 06     beq   $077d
0777: 1d        dec   x
0778: f5 a8 04  mov   a,$04a8+x
077b: c4 f5     mov   $f5,a
077d: 6f        ret

077e: a8 f0     sbc   a,#$f0
0780: 1c        asl   a
0781: 5d        mov   x,a
0782: 1f 94 07  jmp   ($0794+x)

0785: c4 01     mov   $01,a
0787: 80        setc
0788: a8 e0     sbc   a,#$e0
078a: 28 f0     and   a,#$f0
078c: 9f        xcn   a
078d: 1c        asl   a
078e: 5d        mov   x,a
078f: 1f 92 07  jmp   ($0792+x)

0792: dw $07b4   ; 
0794: dw $0846   ; f0
0796: dw $0849   ; f1
0798: dw $0866   ; f2
079a: dw $07c7   ; f3
079c: dw $07ca   ; f4
079e: dw $07cd   ; f5
07a0: dw $07d0   ; f6
07a2: dw $07d3   ; f7
07a4: dw $07fb   ; f8
07a6: dw $07fe   ; f9
07a8: dw $0801   ; fa
07aa: dw $0805   ; fb
07ac: dw $0812   ; fc
07ae: dw $0824   ; fd
07b0: dw $0833   ; fe
07b2: dw $0836   ; ff

07b4: e4 01     mov   a,$01
07b6: 28 0f     and   a,#$0f
07b8: 68 10     cmp   a,#$10
07ba: b0 05     bcs   $07c1
07bc: bc        inc   a
07bd: c5 b8 04  mov   $04b8,a
07c0: 6f        ret

07c1: e8 00     mov   a,#$00
07c3: c5 b8 04  mov   $04b8,a
07c6: 6f        ret

07c7: 82 00     set4  $00
07c9: 6f        ret

07ca: 92 00     clr4  $00
07cc: 6f        ret

07cd: 72 00     clr3  $00
07cf: 6f        ret

07d0: 62 00     set3  $00
07d2: 6f        ret

07d3: e4 f5     mov   a,$f5
07d5: f0 1f     beq   $07f6
07d7: 30 07     bmi   $07e0
07d9: 60        clrc
07da: 84 16     adc   a,$16
07dc: c4 1c     mov   $1c,a
07de: 2f 0c     bra   $07ec
07e0: 48 ff     eor   a,#$ff
07e2: bc        inc   a
07e3: c4 01     mov   $01,a
07e5: e4 16     mov   a,$16
07e7: 80        setc
07e8: a4 01     sbc   a,$01
07ea: c4 1c     mov   $1c,a
07ec: 8f 13 f1  mov   $f1,#$13
07ef: 8f 00 f4  mov   $f4,#$00
07f2: 8f ff f5  mov   $f5,#$ff
07f5: 6f        ret

07f6: fa 16 1c  mov   ($1c),($16)
07f9: 2f f1     bra   $07ec
07fb: b2 00     clr5  $00
07fd: 6f        ret

07fe: a2 00     set5  $00
0800: 6f        ret

0801: c2 00     set6  $00
0803: 2f 05     bra   $080a
0805: e2 00     set7  $00
0807: 8f 00 22  mov   $22,#$00
080a: fa f5 2a  mov   ($2a),($f5)
080d: 8f ff f5  mov   $f5,#$ff
0810: 2f af     bra   $07c1
0812: 02 2c     set0  $2c
0814: e4 f5     mov   a,$f5
0816: c4 22     mov   $22,a
0818: c4 21     mov   $21,a
081a: 8f 13 f1  mov   $f1,#$13
081d: 8f 00 f4  mov   $f4,#$00
0820: 8f ff f5  mov   $f5,#$ff
0823: 6f        ret

0824: 02 2d     set0  $2d
0826: fa f5 23  mov   ($23),($f5)
0829: 8f 13 f1  mov   $f1,#$13
082c: 8f 00 f4  mov   $f4,#$00
082f: 8f ff f5  mov   $f5,#$ff
0832: 6f        ret

0833: 3f 46 08  call  $0846
0836: 3f 1e 14  call  $141e
0839: e5 04 02  mov   a,$0204
083c: e8 a0     mov   a,#$a0
083e: 8d 6c     mov   y,#$6c
0840: 3f 6e 10  call  $106e
0843: 5f 1a 06  jmp   $061a

0846: 3f 66 08  call  $0866
0849: 3f 88 08  call  $0888
084c: 3f 49 10  call  $1049
084f: e8 88     mov   a,#$88
0851: 4e 00 00  tclr1 $0000
0854: e8 00     mov   a,#$00
0856: c4 2c     mov   $2c,a
0858: 9c        dec   a
0859: c4 21     mov   $21,a
085b: c4 22     mov   $22,a
085d: cd 07     mov   x,#$07
085f: 3f d9 08  call  $08d9
0862: 1d        dec   x
0863: 10 fa     bpl   $085f
0865: 6f        ret

0866: 3f aa 08  call  $08aa
0869: 3f 49 10  call  $1049
086c: e8 00     mov   a,#$00
086e: c4 13     mov   $13,a
0870: c4 2d     mov   $2d,a
0872: c4 11     mov   $11,a
0874: 9c        dec   a
0875: c4 23     mov   $23,a
0877: cd 08     mov   x,#$08
0879: 3f d9 08  call  $08d9
087c: 3d        inc   x
087d: c8 10     cmp   x,#$10
087f: 90 f8     bcc   $0879
0881: 8f 13 f1  mov   $f1,#$13
0884: 8f 00 f4  mov   $f4,#$00
0887: 6f        ret

0888: e8 80     mov   a,#$80
088a: c4 0d     mov   $0d,a
088c: e8 60     mov   a,#$60
088e: 4e 00 00  tclr1 $0000
0891: e8 00     mov   a,#$00
0893: c4 0f     mov   $0f,a
0895: c4 17     mov   $17,a
0897: c5 b8 04  mov   $04b8,a
089a: c4 20     mov   $20,a
089c: c4 26     mov   $26,a
089e: c4 2b     mov   $2b,a
08a0: c4 41     mov   $41,a
08a2: c4 2e     mov   $2e,a
08a4: c4 43     mov   $43,a
08a6: 9c        dec   a
08a7: c4 45     mov   $45,a
08a9: 6f        ret

08aa: 3f be 08  call  $08be
08ad: e4 10     mov   a,$10
08af: c4 46     mov   $46,a
08b1: e8 00     mov   a,#$00
08b3: c4 44     mov   $44,a
08b5: c4 47     mov   $47,a
08b7: c4 42     mov   $42,a
08b9: c4 10     mov   $10,a
08bb: c4 18     mov   $18,a
08bd: 6f        ret

08be: cd 08     mov   x,#$08
08c0: e4 10     mov   a,$10
08c2: 35 73 14  and   a,$1473+x
08c5: f0 0c     beq   $08d3
08c7: 7d        mov   a,x
08c8: 28 07     and   a,#$07
08ca: fd        mov   y,a
08cb: f6 78 02  mov   a,$0278+y
08ce: 28 7f     and   a,#$7f
08d0: d6 78 02  mov   $0278+y,a
08d3: 3d        inc   x
08d4: c8 10     cmp   x,#$10
08d6: 90 e8     bcc   $08c0
08d8: 6f        ret

08d9: f5 6e 09  mov   a,$096e+x
08dc: d5 b9 04  mov   $04b9+x,a
08df: e8 0a     mov   a,#$0a
08e1: d5 c8 02  mov   $02c8+x,a
08e4: e8 01     mov   a,#$01
08e6: d4 48     mov   $48+x,a
08e8: 9c        dec   a
08e9: d5 08 03  mov   $0308+x,a
08ec: d5 18 03  mov   $0318+x,a
08ef: d4 58     mov   $58+x,a
08f1: d5 d8 02  mov   $02d8+x,a
08f4: d5 e8 02  mov   $02e8+x,a
08f7: d5 f8 02  mov   $02f8+x,a
08fa: d5 78 02  mov   $0278+x,a
08fd: d5 88 02  mov   $0288+x,a
0900: d5 98 02  mov   $0298+x,a
0903: d4 68     mov   $68+x,a
0905: d4 78     mov   $78+x,a
0907: d4 88     mov   $88+x,a
0909: d4 98     mov   $98+x,a
090b: d5 28 03  mov   $0328+x,a
090e: d5 38 03  mov   $0338+x,a
0911: d5 48 03  mov   $0348+x,a
0914: d5 58 03  mov   $0358+x,a
0917: d5 68 03  mov   $0368+x,a
091a: d5 78 03  mov   $0378+x,a
091d: d5 88 03  mov   $0388+x,a
0920: d4 a8     mov   $a8+x,a
0922: d4 b8     mov   $b8+x,a
0924: d4 c8     mov   $c8+x,a
0926: d4 d8     mov   $d8+x,a
0928: d5 98 03  mov   $0398+x,a
092b: d5 a8 03  mov   $03a8+x,a
092e: d5 b8 03  mov   $03b8+x,a
0931: d5 c8 03  mov   $03c8+x,a
0934: d5 d8 03  mov   $03d8+x,a
0937: d5 e8 03  mov   $03e8+x,a
093a: d5 f8 03  mov   $03f8+x,a
093d: d5 28 04  mov   $0428+x,a
0940: d5 38 04  mov   $0438+x,a
0943: d5 48 04  mov   $0448+x,a
0946: d5 08 04  mov   $0408+x,a
0949: d5 18 04  mov   $0418+x,a
094c: d5 58 04  mov   $0458+x,a
094f: d5 68 04  mov   $0468+x,a
0952: d5 78 04  mov   $0478+x,a
0955: d5 88 04  mov   $0488+x,a
0958: d5 98 04  mov   $0498+x,a
095b: d5 28 02  mov   $0228+x,a
095e: d5 38 02  mov   $0238+x,a
0961: d5 48 02  mov   $0248+x,a
0964: d5 58 02  mov   $0258+x,a
0967: d5 68 02  mov   $0268+x,a
096a: d5 a8 04  mov   $04a8+x,a
096d: 6f        ret

096e: db $00,$10,$20,$30,$40,$50,$60,$70
0976: db $80,$90,$a0,$b0,$c0,$d0,$e0,$f0

097e: e8 00     mov   a,#$00
0980: c5 00 02  mov   $0200,a
0983: c5 04 02  mov   $0204,a
0986: c4 30     mov   $30,a
0988: c4 31     mov   $31,a
098a: c4 32     mov   $32,a
098c: c4 33     mov   $33,a
098e: c4 2e     mov   $2e,a
0990: e8 20     mov   a,#$20
0992: c4 3b     mov   $3b,a
0994: e8 80     mov   a,#$80
0996: c4 3f     mov   $3f,a
0998: 6f        ret

0999: e8 00     mov   a,#$00
099b: c4 3d     mov   $3d,a
099d: bc        inc   a
099e: c4 3e     mov   $3e,a
09a0: c4 40     mov   $40,a
09a2: 3f 7b 0e  call  $0e7b
09a5: e8 70     mov   a,#$70
09a7: 8d 0c     mov   y,#$0c
09a9: 3f 6e 10  call  $106e
09ac: 8d 1c     mov   y,#$1c
09ae: 3f 6e 10  call  $106e
09b1: e8 00     mov   a,#$00
09b3: 8d 3d     mov   y,#$3d
09b5: 3f 6e 10  call  $106e
09b8: 8d 2d     mov   y,#$2d
09ba: 3f 6e 10  call  $106e
09bd: e8 3a     mov   a,#$3a
09bf: 8d 5d     mov   y,#$5d
09c1: 5f 6e 10  jmp   $106e

09c4: eb f6     mov   y,$f6
09c6: f0 76     beq   $0a3e
09c8: 8f 23 f1  mov   $f1,#$23
09cb: 8f 00 f6  mov   $f6,#$00
09ce: 63 00 6d  bbs3  $00,$0a3e
09d1: dc        dec   y
09d2: f6 02 2e  mov   a,$2e02+y
09d5: f0 67     beq   $0a3e
09d7: 64 13     cmp   a,$13
09d9: 90 63     bcc   $0a3e
09db: c4 13     mov   $13,a
09dd: 6d        push  y
09de: e8 00     mov   a,#$00
09e0: 8d 2e     mov   y,#$2e
09e2: da 03     movw  $03,ya
09e4: 8d 00     mov   y,#$00
09e6: f7 03     mov   a,($03)+y
09e8: c4 01     mov   $01,a
09ea: fc        inc   y
09eb: f7 03     mov   a,($03)+y
09ed: c4 02     mov   $02,a
09ef: ae        pop   a
09f0: 1c        asl   a
09f1: fd        mov   y,a
09f2: f7 01     mov   a,($01)+y
09f4: c4 05     mov   $05,a
09f6: fc        inc   y
09f7: f7 01     mov   a,($01)+y
09f9: c4 06     mov   $06,a
09fb: 3f 73 10  call  $1073
09fe: c4 01     mov   $01,a
0a00: e4 11     mov   a,$11
0a02: d0 03     bne   $0a07
0a04: 3f aa 08  call  $08aa
0a07: 8d 08     mov   y,#$08
0a09: cd 08     mov   x,#$08
0a0b: d8 0e     mov   $0e,x
0a0d: 6d        push  y
0a0e: f8 0e     mov   x,$0e
0a10: e4 11     mov   a,$11
0a12: 35 73 14  and   a,$1473+x
0a15: d0 03     bne   $0a1a
0a17: 3f d9 08  call  $08d9
0a1a: 4b 01     lsr   $01
0a1c: 90 15     bcc   $0a33
0a1e: f5 73 14  mov   a,$1473+x
0a21: 0e 10 00  tset1 $0010
0a24: 3f 73 10  call  $1073
0a27: d5 08 02  mov   $0208+x,a
0a2a: 3f 73 10  call  $1073
0a2d: d5 18 02  mov   $0218+x,a
0a30: 3f 3f 0a  call  $0a3f
0a33: ab 0e     inc   $0e
0a35: ee        pop   y
0a36: fe d5     dbnz  y,$0a0d
0a38: 03 2d 03  bbs0  $2d,$0a3e
0a3b: 8f ff 23  mov   $23,#$ff
0a3e: 6f        ret

0a3f: f4 88     mov   a,$88+x
0a41: 2d        push  a
0a42: f4 98     mov   a,$98+x
0a44: 2d        push  a
0a45: e8 00     mov   a,#$00
0a47: d4 88     mov   $88+x,a
0a49: d4 98     mov   $98+x,a
0a4b: 3f f0 0f  call  $0ff0
0a4e: ae        pop   a
0a4f: d4 98     mov   $98+x,a
0a51: ae        pop   a
0a52: d4 88     mov   $88+x,a
0a54: 6f        ret

0a55: f5 18 02  mov   a,$0218+x
0a58: fd        mov   y,a
0a59: f5 08 02  mov   a,$0208+x
0a5c: da 05     movw  $05,ya
0a5e: 6f        ret

0a5f: 9b 48     dec   $48+x
0a61: f0 4b     beq   $0aae
0a63: f4 48     mov   a,$48+x
0a65: 74 58     cmp   a,$58+x
0a67: 90 44     bcc   $0aad
0a69: d0 42     bne   $0aad
0a6b: 3f 55 0a  call  $0a55
0a6e: 3f 73 10  call  $1073
0a71: d0 12     bne   $0a85
0a73: f5 68 02  mov   a,$0268+x
0a76: f0 2f     beq   $0aa7
0a78: f5 48 02  mov   a,$0248+x
0a7b: c4 05     mov   $05,a
0a7d: f5 58 02  mov   a,$0258+x
0a80: c4 06     mov   $06,a
0a82: 3f 73 10  call  $1073
0a85: 68 e2     cmp   a,#$e2
0a87: f0 24     beq   $0aad
0a89: 68 f9     cmp   a,#$f9
0a8b: f0 20     beq   $0aad
0a8d: 68 ef     cmp   a,#$ef
0a8f: d0 0f     bne   $0aa0
0a91: 3f 73 10  call  $1073
0a94: 2d        push  a
0a95: 3f 73 10  call  $1073
0a98: ae        pop   a
0a99: da 05     movw  $05,ya
0a9b: 3f 73 10  call  $1073
0a9e: 2f e5     bra   $0a85
0aa0: 3f 73 10  call  $1073
0aa3: 68 c8     cmp   a,#$c8
0aa5: f0 06     beq   $0aad
0aa7: f5 73 14  mov   a,$1473+x
0aaa: 0e 45 00  tset1 $0045
0aad: 6f        ret

0aae: 3f 55 0a  call  $0a55
0ab1: f8 0e     mov   x,$0e
0ab3: 3f 73 10  call  $1073
0ab6: d0 03     bne   $0abb
0ab8: 5f 4b 0b  jmp   $0b4b

0abb: 30 1f     bmi   $0adc
0abd: d5 08 03  mov   $0308+x,a
0ac0: 3f 73 10  call  $1073
0ac3: 30 17     bmi   $0adc
0ac5: 2d        push  a
0ac6: 9f        xcn   a
0ac7: 28 07     and   a,#$07
0ac9: fd        mov   y,a
0aca: f6 00 15  mov   a,$1500+y
0acd: d5 18 03  mov   $0318+x,a
0ad0: ae        pop   a
0ad1: 28 0f     and   a,#$0f
0ad3: fd        mov   y,a
0ad4: f6 08 15  mov   a,$1508+y
0ad7: d4 68     mov   $68+x,a
0ad9: 3f 73 10  call  $1073
0adc: 68 e0     cmp   a,#$e0
0ade: 90 12     bcc   $0af2
0ae0: 80        setc
0ae1: a8 e0     sbc   a,#$e0
0ae3: 1c        asl   a
0ae4: 5d        mov   x,a
0ae5: e5 f1 0a  mov   a,$0af1
0ae8: 2d        push  a
0ae9: e5 f0 0a  mov   a,$0af0
0aec: 2d        push  a
0aed: 1f aa 10  jmp   ($10aa+x)

0af0: dw $0ab1

0af2: 2d        push  a
0af3: e8 00     mov   a,#$00
0af5: d5 98 03  mov   $0398+x,a
0af8: f5 08 03  mov   a,$0308+x
0afb: d4 48     mov   $48+x,a
0afd: 2d        push  a
0afe: fd        mov   y,a
0aff: f5 18 03  mov   a,$0318+x
0b02: cf        mul   ya
0b03: dd        mov   a,y
0b04: d0 01     bne   $0b07
0b06: bc        inc   a
0b07: c4 01     mov   $01,a
0b09: ae        pop   a
0b0a: 80        setc
0b0b: a4 01     sbc   a,$01
0b0d: d4 58     mov   $58+x,a
0b0f: ae        pop   a
0b10: 68 c8     cmp   a,#$c8
0b12: f0 2d     beq   $0b41
0b14: 68 c9     cmp   a,#$c9
0b16: d0 07     bne   $0b1f
0b18: e8 01     mov   a,#$01
0b1a: d5 98 03  mov   $0398+x,a
0b1d: 2f 22     bra   $0b41
0b1f: 68 ca     cmp   a,#$ca
0b21: 90 06     bcc   $0b29
0b23: fd        mov   y,a
0b24: 3f e9 10  call  $10e9
0b27: e8 a4     mov   a,#$a4
0b29: 3f c1 0b  call  $0bc1
0b2c: e8 00     mov   a,#$00
0b2e: d5 68 04  mov   $0468+x,a
0b31: d5 88 04  mov   $0488+x,a
0b34: f5 a8 04  mov   a,$04a8+x
0b37: bc        inc   a
0b38: d5 a8 04  mov   $04a8+x,a
0b3b: f5 73 14  mov   a,$1473+x
0b3e: 0e 43 00  tset1 $0043
0b41: ba 05     movw  ya,$05
0b43: d5 08 02  mov   $0208+x,a
0b46: dd        mov   a,y
0b47: d5 18 02  mov   $0218+x,a
0b4a: 6f        ret

0b4b: f5 68 02  mov   a,$0268+x
0b4e: f0 20     beq   $0b70
0b50: 9c        dec   a
0b51: d5 68 02  mov   $0268+x,a
0b54: f0 0d     beq   $0b63
0b56: f5 28 02  mov   a,$0228+x
0b59: c4 05     mov   $05,a
0b5b: f5 38 02  mov   a,$0238+x
0b5e: c4 06     mov   $06,a
0b60: 5f b1 0a  jmp   $0ab1

0b63: f5 48 02  mov   a,$0248+x
0b66: c4 05     mov   $05,a
0b68: f5 58 02  mov   a,$0258+x
0b6b: c4 06     mov   $06,a
0b6d: 5f b1 0a  jmp   $0ab1

0b70: f5 73 14  mov   a,$1473+x
0b73: 4e 0f 00  tclr1 $000f
0b76: 6f        ret

0b77: 9b 48     dec   $48+x
0b79: f0 01     beq   $0b7c
0b7b: 6f        ret

0b7c: 3f 55 0a  call  $0a55
0b7f: f8 0e     mov   x,$0e
0b81: 3f 73 10  call  $1073
0b84: f0 19     beq   $0b9f
0b86: 10 12     bpl   $0b9a
0b88: 80        setc
0b89: a8 ed     sbc   a,#$ed
0b8b: 1c        asl   a
0b8c: 5d        mov   x,a
0b8d: e5 99 0b  mov   a,$0b99
0b90: 2d        push  a
0b91: e5 98 0b  mov   a,$0b98
0b94: 2d        push  a
0b95: 1f 01 13  jmp   ($1301+x)

0b98: dw $0b7f

0b9a: d4 48     mov   $d4+x,a
0b9c: 5f 41 0b  jmp   $0b41
0b9f: e4 11     mov   a,$11
0ba1: d0 03     bne   $0ba6
0ba3: 8f 00 13  mov   $13,#$00
0ba6: 7d        mov   a,x
0ba7: 28 07     and   a,#$07
0ba9: fd        mov   y,a
0baa: f6 78 02  mov   a,$0278+y
0bad: 28 7f     and   a,#$7f
0baf: d6 78 02  mov   $0278+y,a
0bb2: f5 73 14  mov   a,$1473+x
0bb5: 4e 47 00  tclr1 $0047
0bb8: 4e 10 00  tclr1 $0010
0bbb: 0e 46 00  tset1 $0046
0bbe: 5f 49 10  jmp   $1049

0bc1: 28 7f     and   a,#$7f
0bc3: 60        clrc
0bc4: 84 41     adc   a,$41
0bc6: 60        clrc
0bc7: 95 a8 03  adc   a,$03a8+x
0bca: d4 d8     mov   $d8+x,a
0bcc: c4 0c     mov   $0c,a
0bce: f5 b8 03  mov   a,$03b8+x
0bd1: d4 c8     mov   $c8+x,a
0bd3: c4 0b     mov   $0b,a
0bd5: 4d        push  x
0bd6: e4 0c     mov   a,$0c
0bd8: 1c        asl   a
0bd9: 8d 00     mov   y,#$00
0bdb: cd 18     mov   x,#$18
0bdd: 9e        div   ya,x
0bde: 5d        mov   x,a
0bdf: f6 59 14  mov   a,$1459+y
0be2: c4 07     mov   $07,a
0be4: f6 5a 14  mov   a,$145a+y
0be7: c4 08     mov   $08,a
0be9: f6 5c 14  mov   a,$145c+y
0bec: 2d        push  a
0bed: f6 5b 14  mov   a,$145b+y
0bf0: ee        pop   y
0bf1: 9a 07     subw  ya,$07
0bf3: eb 0b     mov   y,$0b
0bf5: cf        mul   ya
0bf6: dd        mov   a,y
0bf7: 8d 00     mov   y,#$00
0bf9: 7a 07     addw  ya,$07
0bfb: cb 08     mov   $08,y
0bfd: 1c        asl   a
0bfe: 2b 08     rol   $08
0c00: c4 07     mov   $07,a
0c02: 2f 04     bra   $0c08
0c04: 4b 08     lsr   $08
0c06: 7c        ror   a
0c07: 3d        inc   x
0c08: c8 06     cmp   x,#$06
0c0a: d0 f8     bne   $0c04
0c0c: c4 07     mov   $07,a
0c0e: ce        pop   x
0c0f: f5 a8 02  mov   a,$02a8+x
0c12: eb 08     mov   y,$08
0c14: cf        mul   ya
0c15: da 09     movw  $09,ya
0c17: f5 a8 02  mov   a,$02a8+x
0c1a: eb 07     mov   y,$07
0c1c: cf        mul   ya
0c1d: 6d        push  y
0c1e: f5 b8 02  mov   a,$02b8+x
0c21: eb 07     mov   y,$07
0c23: cf        mul   ya
0c24: 7a 09     addw  ya,$09
0c26: da 09     movw  $09,ya
0c28: f5 b8 02  mov   a,$02b8+x
0c2b: eb 08     mov   y,$08
0c2d: cf        mul   ya
0c2e: fd        mov   y,a
0c2f: ae        pop   a
0c30: 7a 09     addw  ya,$09
0c32: d4 a8     mov   $a8+x,a
0c34: db b8     mov   $b8+x,y
0c36: 6f        ret

0c37: 3f 4d 0c  call  $0c4d
0c3a: f4 88     mov   a,$88+x
0c3c: 30 09     bmi   $0c47
0c3e: f4 88     mov   a,$88+x
0c40: 60        clrc
0c41: 95 28 03  adc   a,$0328+x
0c44: d4 88     mov   $88+x,a
0c46: 6f        ret

0c47: e8 00     mov   a,#$00
0c49: d5 28 03  mov   $0328+x,a
0c4c: 6f        ret

0c4d: f4 98     mov   a,$98+x
0c4f: 30 09     bmi   $0c5a
0c51: f4 98     mov   a,$98+x
0c53: 60        clrc
0c54: 95 38 03  adc   a,$0338+x
0c57: d4 98     mov   $98+x,a
0c59: 6f        ret

0c5a: e8 00     mov   a,#$00
0c5c: d5 38 03  mov   $0338+x,a
0c5f: 6f        ret

0c60: a3 00 1f  bbs5  $00,$0c82
0c63: d3 00 1d  bbc6  $00,$0c83
0c66: e4 22     mov   a,$22
0c68: f0 0d     beq   $0c77
0c6a: ab 2b     inc   $2b
0c6c: 69 2a 2b  cmp   ($2b),($2a)
0c6f: 90 11     bcc   $0c82
0c71: 8f 00 2b  mov   $2b,#$00
0c74: 8b 22     dec   $22
0c76: 6f        ret

0c77: d2 00     clr6  $00
0c79: e8 00     mov   a,#$00
0c7b: c4 f5     mov   $f5,a
0c7d: c4 0f     mov   $0f,a
0c7f: 9c        dec   a
0c80: c4 45     mov   $45,a
0c82: 6f        ret

0c83: f3 00 1c  bbc7  $00,$0ca2
0c86: e4 0f     mov   a,$0f
0c88: f0 18     beq   $0ca2
0c8a: e4 22     mov   a,$22
0c8c: 64 21     cmp   a,$21
0c8e: b0 0d     bcs   $0c9d
0c90: ab 2b     inc   $2b
0c92: 69 2a 2b  cmp   ($2b),($2a)
0c95: 90 0b     bcc   $0ca2
0c97: 8f 00 2b  mov   $2b,#$00
0c9a: ab 22     inc   $22
0c9c: 6f        ret

0c9d: f2 00     clr7  $00
0c9f: 8f 00 f5  mov   $f5,#$00
0ca2: 6f        ret

0ca3: f5 98 03  mov   a,$0398+x
0ca6: d0 11     bne   $0cb9
0ca8: f5 38 04  mov   a,$0438+x
0cab: f0 0c     beq   $0cb9
0cad: f5 c8 03  mov   a,$03c8+x
0cb0: f0 08     beq   $0cba
0cb2: f5 c8 03  mov   a,$03c8+x
0cb5: 9c        dec   a
0cb6: d5 c8 03  mov   $03c8+x,a
0cb9: 6f        ret

0cba: f5 38 04  mov   a,$0438+x
0cbd: 9c        dec   a
0cbe: d5 38 04  mov   $0438+x,a
0cc1: d0 0a     bne   $0ccd
0cc3: f5 b8 03  mov   a,$03b8+x
0cc6: d4 c8     mov   $c8+x,a
0cc8: f5 f8 03  mov   a,$03f8+x
0ccb: 2f 0d     bra   $0cda
0ccd: f4 c8     mov   a,$c8+x
0ccf: 60        clrc
0cd0: 95 d8 03  adc   a,$03d8+x
0cd3: d4 c8     mov   $c8+x,a
0cd5: f4 d8     mov   a,$d8+x
0cd7: 95 e8 03  adc   a,$03e8+x
0cda: d4 d8     mov   $d8+x,a
0cdc: f4 c8     mov   a,$c8+x
0cde: c4 0b     mov   $0b,a
0ce0: f4 d8     mov   a,$d8+x
0ce2: c4 0c     mov   $0c,a
0ce4: 5f d5 0b  jmp   $0bd5

0ce7: f5 98 03  mov   a,$0398+x
0cea: d0 11     bne   $0cfd
0cec: f5 98 04  mov   a,$0498+x
0cef: f0 0c     beq   $0cfd
0cf1: f5 68 04  mov   a,$0468+x
0cf4: 75 58 04  cmp   a,$0458+x
0cf7: b0 05     bcs   $0cfe
0cf9: bc        inc   a
0cfa: d5 68 04  mov   $0468+x,a
0cfd: 6f        ret

0cfe: 8f 00 01  mov   $01,#$00
0d01: f5 88 04  mov   a,$0488+x
0d04: 60        clrc
0d05: 95 78 04  adc   a,$0478+x
0d08: 90 02     bcc   $0d0c
0d0a: e8 00     mov   a,#$00
0d0c: d5 88 04  mov   $0488+x,a
0d0f: fd        mov   y,a
0d10: 10 04     bpl   $0d16
0d12: 48 ff     eor   a,#$ff
0d14: 8b 01     dec   $01
0d16: 1c        asl   a
0d17: 30 03     bmi   $0d1c
0d19: dd        mov   a,y
0d1a: 2f 03     bra   $0d1f
0d1c: dd        mov   a,y
0d1d: 48 ff     eor   a,#$ff
0d1f: 28 3f     and   a,#$3f
0d21: 1c        asl   a
0d22: 1c        asl   a
0d23: fd        mov   y,a
0d24: f5 98 04  mov   a,$0498+x
0d27: cf        mul   ya
0d28: dd        mov   a,y
0d29: 13 01 02  bbc0  $01,$0d2e
0d2c: 48 ff     eor   a,#$ff
0d2e: 60        clrc
0d2f: 94 c8     adc   a,$c8+x
0d31: c4 0b     mov   $0b,a
0d33: e4 01     mov   a,$01
0d35: 94 d8     adc   a,$d8+x
0d37: c4 0c     mov   $0c,a
0d39: 5f d5 0b  jmp   $0bd5

0d3c: f5 e8 02  mov   a,$02e8+x
0d3f: f0 37     beq   $0d78
0d41: f5 f8 02  mov   a,$02f8+x
0d44: bc        inc   a
0d45: d5 f8 02  mov   $02f8+x,a
0d48: 75 e8 02  cmp   a,$02e8+x
0d4b: 90 2b     bcc   $0d78
0d4d: e8 00     mov   a,#$00
0d4f: d5 f8 02  mov   $02f8+x,a
0d52: f5 d8 02  mov   a,$02d8+x
0d55: 30 0d     bmi   $0d64
0d57: f5 c8 02  mov   a,$02c8+x
0d5a: 75 d8 02  cmp   a,$02d8+x
0d5d: b0 14     bcs   $0d73
0d5f: bc        inc   a
0d60: d5 c8 02  mov   $02c8+x,a
0d63: 6f        ret

0d64: 28 1f     and   a,#$1f
0d66: 75 c8 02  cmp   a,$02c8+x
0d69: b0 08     bcs   $0d73
0d6b: f5 c8 02  mov   a,$02c8+x
0d6e: 9c        dec   a
0d6f: d5 c8 02  mov   $02c8+x,a
0d72: 6f        ret

0d73: e8 00     mov   a,#$00
0d75: d5 e8 02  mov   $02e8+x,a
0d78: 6f        ret

0d79: f5 58 03  mov   a,$0358+x
0d7c: f0 26     beq   $0da4
0d7e: f4 78     mov   a,$78+x
0d80: 60        clrc
0d81: 95 78 03  adc   a,$0378+x
0d84: d4 78     mov   $78+x,a
0d86: f4 88     mov   a,$88+x
0d88: 95 88 03  adc   a,$0388+x
0d8b: d4 88     mov   $88+x,a
0d8d: e8 00     mov   a,#$00
0d8f: d5 48 03  mov   $0348+x,a
0d92: f5 58 03  mov   a,$0358+x
0d95: 9c        dec   a
0d96: d5 58 03  mov   $0358+x,a
0d99: d0 09     bne   $0da4
0d9b: e8 00     mov   a,#$00
0d9d: d4 78     mov   $78+x,a
0d9f: f5 68 03  mov   a,$0368+x
0da2: d4 88     mov   $88+x,a
0da4: 6f        ret

0da5: e4 26     mov   a,$26
0da7: f0 0b     beq   $0db4
0da9: ba 28     movw  ya,$28
0dab: 7a 24     addw  ya,$24
0dad: 6e 26 02  dbnz  $26,$0db2
0db0: ba 26     movw  ya,$26
0db2: da 24     movw  $24,ya
0db4: 6f        ret

0db5: e4 34     mov   a,$34
0db7: f0 1d     beq   $0dd6
0db9: ba 30     movw  ya,$30
0dbb: 7a 37     addw  ya,$37
0dbd: da 30     movw  $30,ya
0dbf: ba 32     movw  ya,$32
0dc1: 7a 39     addw  ya,$39
0dc3: da 32     movw  $32,ya
0dc5: 6e 34 0e  dbnz  $34,$0dd6
0dc8: e8 00     mov   a,#$00
0dca: c4 37     mov   $37,a
0dcc: c4 39     mov   $39,a
0dce: e4 35     mov   a,$35
0dd0: c4 30     mov   $30,a
0dd2: e4 36     mov   a,$36
0dd4: c4 32     mov   $32,a
0dd6: 6f        ret

0dd7: e4 19     mov   a,$19
0dd9: f0 0d     beq   $0de8
0ddb: ba 1b     movw  ya,$1b
0ddd: 7a 1e     addw  ya,$1e
0ddf: 6e 19 02  dbnz  $19,$0de4
0de2: ba 19     movw  ya,$19
0de4: da 1b     movw  $1b,ya
0de6: cb 16     mov   $16,y
0de8: 6f        ret

0de9: f5 08 04  mov   a,$0408+x
0dec: f0 2e     beq   $0e1c
0dee: f5 18 04  mov   a,$0418+x
0df1: 75 08 04  cmp   a,$0408+x
0df4: b0 05     bcs   $0dfb
0df6: bc        inc   a
0df7: d5 18 04  mov   $0418+x,a
0dfa: 6f        ret

0dfb: e4 47     mov   a,$47
0dfd: 35 73 14  and   a,$1473+x
0e00: d0 10     bne   $0e12
0e02: f4 a8     mov   a,$a8+x
0e04: 60        clrc
0e05: 95 d8 03  adc   a,$03d8+x
0e08: d4 a8     mov   $a8+x,a
0e0a: f4 b8     mov   a,$b8+x
0e0c: 95 e8 03  adc   a,$03e8+x
0e0f: d4 b8     mov   $b8+x,a
0e11: 6f        ret

0e12: e4 42     mov   a,$42
0e14: 60        clrc
0e15: 95 d8 03  adc   a,$03d8+x
0e18: 28 1f     and   a,#$1f
0e1a: c4 42     mov   $42,a
0e1c: 6f        ret

0e1d: a3 00 28  bbs5  $00,$0e48
0e20: 8d 08     mov   y,#$08
0e22: cd 00     mov   x,#$00
0e24: d8 0e     mov   $0e,x
0e26: 6d        push  y
0e27: f8 0e     mov   x,$0e
0e29: e4 10     mov   a,$10
0e2b: 35 73 14  and   a,$1473+x
0e2e: d0 13     bne   $0e43
0e30: e4 0f     mov   a,$0f
0e32: 35 73 14  and   a,$1473+x
0e35: f0 0c     beq   $0e43
0e37: 3f 5f 0f  call  $0f5f
0e3a: 3f 75 0f  call  $0f75
0e3d: 3f 88 0f  call  $0f88
0e40: 3f 99 0f  call  $0f99
0e43: ab 0e     inc   $0e
0e45: ee        pop   y
0e46: fe de     dbnz  y,$0e26
0e48: 8d 08     mov   y,#$08
0e4a: cd 08     mov   x,#$08
0e4c: d8 0e     mov   $0e,x
0e4e: 6d        push  y
0e4f: f8 0e     mov   x,$0e
0e51: e4 10     mov   a,$10
0e53: 35 73 14  and   a,$1473+x
0e56: f0 0c     beq   $0e64
0e58: 3f 5f 0f  call  $0f5f
0e5b: 3f 75 0f  call  $0f75
0e5e: 3f 88 0f  call  $0f88
0e61: 3f f0 0f  call  $0ff0
0e64: ab 0e     inc   $0e
0e66: ee        pop   y
0e67: fe e5     dbnz  y,$0e4e
0e69: b3 00 06  bbc5  $00,$0e72
0e6c: 8f 00 43  mov   $43,#$00
0e6f: 8f ff 45  mov   $45,#$ff
0e72: 3f 1f 10  call  $101f
0e75: 3f 49 10  call  $1049
0e78: 3f 35 10  call  $1035
0e7b: fa 2e 2f  mov   ($2f),($2e)
0e7e: e4 40     mov   a,$40
0e80: 68 06     cmp   a,#$06
0e82: b0 67     bcs   $0eeb
0e84: 1c        asl   a
0e85: 5d        mov   x,a
0e86: 1f 89 0e  jmp   ($0e89+x)

0e89: dw $0f0b  ; 00
0e8b: dw $0e95  ; 01
0e8d: dw $0f03  ; 02
0e8f: dw $0f04  ; 03
0e91: dw $0f03  ; 04
0e93: dw $0f0e  ; 05

0e95: e8 7d     mov   a,#$7d
0e97: c4 f2     mov   $f2,a
0e99: e4 f3     mov   a,$f3
0e9b: 28 0f     and   a,#$0f
0e9d: 64 3e     cmp   a,$3e
0e9f: f0 4b     beq   $0eec
0ea1: eb 3f     mov   y,$3f
0ea3: 30 03     bmi   $0ea8
0ea5: 60        clrc
0ea6: 84 3f     adc   a,$3f
0ea8: c4 3f     mov   $3f,a
0eaa: e8 00     mov   a,#$00
0eac: 8d 2c     mov   y,#$2c
0eae: 3f 6e 10  call  $106e
0eb1: 8d 3c     mov   y,#$3c
0eb3: 3f 6e 10  call  $106e
0eb6: 8d 0d     mov   y,#$0d
0eb8: 3f 6e 10  call  $106e
0ebb: 8d 4d     mov   y,#$4d
0ebd: 3f 6e 10  call  $106e
0ec0: e4 42     mov   a,$42
0ec2: 08 20     or    a,#$20
0ec4: 8d 6c     mov   y,#$6c
0ec6: 3f 6e 10  call  $106e
0ec9: e4 3e     mov   a,$3e
0ecb: 8d 7d     mov   y,#$7d
0ecd: 3f 6e 10  call  $106e
0ed0: 3f f4 0e  call  $0ef4
0ed3: e4 3d     mov   a,$3d
0ed5: 1c        asl   a
0ed6: 1c        asl   a
0ed7: 1c        asl   a
0ed8: 5d        mov   x,a
0ed9: 8d 0f     mov   y,#$0f
0edb: f5 3f 0f  mov   a,$0f3f+x
0ede: 3f 6e 10  call  $106e
0ee1: 3d        inc   x
0ee2: dd        mov   a,y
0ee3: 60        clrc
0ee4: 88 10     adc   a,#$10
0ee6: fd        mov   y,a
0ee7: 10 f2     bpl   $0edb
0ee9: ab 40     inc   $40
0eeb: 6f        ret

0eec: 3f f4 0e  call  $0ef4
0eef: 8f 05 40  mov   $40,#$05
0ef2: 2f 1a     bra   $0f0e
0ef4: 1c        asl   a
0ef5: 1c        asl   a
0ef6: 1c        asl   a
0ef7: c4 01     mov   $01,a
0ef9: e8 ff     mov   a,#$ff
0efb: 80        setc
0efc: a4 01     sbc   a,$01
0efe: 8d 6d     mov   y,#$6d
0f00: 5f 6e 10  jmp   $106e

0f03: 6f        ret

0f04: fa 3e 3f  mov   ($3f),($3e)
0f07: ab 40     inc   $40
0f09: 2f 23     bra   $0f2e
0f0b: 8f 00 2f  mov   $2f,#$00
0f0e: e4 3c     mov   a,$3c
0f10: 8d 0d     mov   y,#$0d
0f12: 3f 6e 10  call  $106e
0f15: e4 31     mov   a,$31
0f17: 8d 2c     mov   y,#$2c
0f19: 3f 6e 10  call  $106e
0f1c: e4 33     mov   a,$33
0f1e: 8d 3c     mov   y,#$3c
0f20: 3f 6e 10  call  $106e
0f23: e4 10     mov   a,$10
0f25: 48 ff     eor   a,#$ff
0f27: 24 2f     and   a,$2f
0f29: 8d 4d     mov   y,#$4d
0f2b: 3f 6e 10  call  $106e
0f2e: e4 42     mov   a,$42
0f30: 04 3b     or    a,$3b
0f32: 8d 6c     mov   y,#$6c
0f34: 3f 6e 10  call  $106e
0f37: a3 3b 01  bbs5  $3b,$0f3b
0f3a: 6f        ret

0f3b: 8f 00 40  mov   $40,#$00
0f3e: 6f        ret

0f3f: db $7f,$00,$00,$00,$00,$00,$00,$00
0f47: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0f4f: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0f57: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0f5f: f5 78 02  mov   a,$0278+x
0f62: 30 10     bmi   $1074
0f64: 2d        push  a
0f65: 08 80     or    a,#$80
0f67: d5 78 02  mov   $0278+x,a
0f6a: e8 04     mov   a,#$04
0f6c: 15 0f 10  or    a,$100f+x
0f6f: fd        mov   y,a
0f70: ae        pop   a
0f71: 3f 6e 10  call  $106e
0f74: 6f        ret

0f75: e8 05     mov   a,#$05
0f77: 15 0f 10  or    a,$100f+x
0f7a: fd        mov   y,a
0f7b: f5 88 02  mov   a,$0288+x
0f7e: 3f 6e 10  call  $106e
0f81: fc        inc   y
0f82: f5 98 02  mov   a,$0298+x
0f85: 5f 6e 10  jmp   $106e

0f88: e8 02     mov   a,#$02
0f8a: 15 0f 10  or    a,$100f+x
0f8d: fd        mov   y,a
0f8e: f4 a8     mov   a,$a8+x
0f90: 3f 6e 10  call  $106e
0f93: fc        inc   y
0f94: f4 b8     mov   a,$b8+x
0f96: 5f 6e 10  jmp   $106e

0f99: e8 00     mov   a,#$00
0f9b: 15 0f 10  or    a,$100f+x
0f9e: 2d        push  a
0f9f: e4 22     mov   a,$22
0fa1: eb 25     mov   y,$25
0fa3: cf        mul   ya
0fa4: f4 88     mov   a,$88+x
0fa6: cf        mul   ya
0fa7: f4 68     mov   a,$68+x
0fa9: cf        mul   ya
0faa: dd        mov   a,y
0fab: cf        mul   ya
0fac: cb 01     mov   $01,y
0fae: e8 60     mov   a,#$60
0fb0: 83 00 09  bbs4  $00,$0fbc
0fb3: 6d        push  y
0fb4: f5 c8 02  mov   a,$02c8+x
0fb7: fd        mov   y,a
0fb8: f6 db 0f  mov   a,$0fdb+y
0fbb: ee        pop   y
0fbc: cf        mul   ya
0fbd: dd        mov   a,y
0fbe: ee        pop   y
0fbf: 3f 6e 10  call  $106e
0fc2: fc        inc   y
0fc3: 6d        push  y
0fc4: e8 60     mov   a,#$60
0fc6: 83 00 0a  bbs4  $00,$0fd3
0fc9: e8 14     mov   a,#$14
0fcb: 80        setc
0fcc: b5 c8 02  sbc   a,$02c8+x
0fcf: fd        mov   y,a
0fd0: f6 db 0f  mov   a,$0fdb+y
0fd3: eb 01     mov   y,$01
0fd5: cf        mul   ya
0fd6: dd        mov   a,y
0fd7: ee        pop   y
0fd8: 5f 6e 10  jmp   $106e

0fdb: db $00,$01,$03,$07,$0d,$15,$1e,$29
0fe3: db $34,$42,$51,$5e,$67,$6e,$73,$77
0feb: db $7a,$7c,$7d,$7e,$7f

0ff0: e8 00     mov   a,#$00
0ff2: 15 0f 10  or    a,$100f+x
0ff5: 2d        push  a
0ff6: f4 88     mov   a,$88+x
0ff8: eb 23     mov   y,$23
0ffa: cf        mul   ya
0ffb: dd        mov   a,y
0ffc: ee        pop   y
0ffd: 3f 6e 10  call  $106e
1000: 83 00 08  bbs4  $00,$100b
1003: 6d        push  y
1004: f4 98     mov   a,$98+x
1006: eb 23     mov   y,$23
1008: cf        mul   ya
1009: dd        mov   a,y
100a: ee        pop   y
100b: fc        inc   y
100c: 5f 6e 10  jmp   $106e

100f: db $00,$10,$20,$30,$40,$50,$60,$70
1017: db $00,$10,$20,$30,$40,$50,$60,$70

101f: e4 42     mov   a,$42
1021: eb 40     mov   y,$40
1023: ad 02     cmp   y,#$02
1025: d0 02     bne   $1029
1027: 08 20     or    a,#$20
1029: 8d 6c     mov   y,#$6c
102b: 3f 6e 10  call  $106e
102e: e4 47     mov   a,$47
1030: 8d 3d     mov   y,#$3d
1032: 5f 6e 10  jmp   $106e

1035: e4 10     mov   a,$10
1037: 48 ff     eor   a,#$ff
1039: 24 43     and   a,$43
103b: 04 44     or    a,$44
103d: 8d 4c     mov   y,#$4c
103f: 3f 6e 10  call  $106e
1042: e8 00     mov   a,#$00
1044: c4 43     mov   $43,a
1046: c4 44     mov   $44,a
1048: 6f        ret

1049: e4 10     mov   a,$10
104b: 48 ff     eor   a,#$ff
104d: 24 45     and   a,$45
104f: 04 46     or    a,$46
1051: 8d 5c     mov   y,#$5c
1053: 3f 6e 10  call  $106e
1056: 3f 68 10  call  $1068
1059: e8 00     mov   a,#$00
105b: 3f 6e 10  call  $106e
105e: 3f 68 10  call  $1068
1061: e8 00     mov   a,#$00
1063: c4 45     mov   $45,a
1065: c4 46     mov   $46,a
1067: 6f        ret

1068: e8 0b     mov   a,#$0b
106a: 9c        dec   a
106b: d0 fd     bne   $106a
106d: 6f        ret

106e: cb f2     mov   $f2,y
1070: c4 f3     mov   $f3,a
1072: 6f        ret

1073: 8d 00     mov   y,#$00
1075: f7 05     mov   a,($05)+y
1077: 3a 05     incw  $05
1079: fd        mov   y,a
107a: 6f        ret

107b: e4 06     mov   a,$06
107d: 3f 82 10  call  $1082
1080: e4 05     mov   a,$05
1082: 2d        push  a
1083: f5 b9 04  mov   a,$04b9+x
1086: fd        mov   y,a
1087: ae        pop   a
1088: d6 c9 04  mov   $04c9+y,a
108b: f5 b9 04  mov   a,$04b9+x
108e: bc        inc   a
108f: d5 b9 04  mov   $04b9+x,a
1092: 6f        ret

1093: 3f 9e 10  call  $109e
1096: c4 05     mov   $05,a
1098: 3f 9e 10  call  $109e
109b: c4 06     mov   $06,a
109d: 6f        ret

109e: f5 b9 04  mov   a,$04b9+x
10a1: 9c        dec   a
10a2: d5 b9 04  mov   $04b9+x,a
10a5: fd        mov   y,a
10a6: f6 c9 04  mov   a,$04c9+y
10a9: 6f        ret

10aa: dw $10e4  ; e0
10ac: dw $111b  ; e1
10ae: dw $112b  ; e2
10b0: dw $114b  ; e3
10b2: dw $1160  ; e4
10b4: dw $1168  ; e5
10b6: dw $116e  ; e6
10b8: dw $1183  ; e7
10ba: dw $118b  ; e8
10bc: dw $11a0  ; e9
10be: dw $11a6  ; ea
10c0: dw $0000  ; eb
10c2: dw $0000  ; ec
10c4: dw $11af  ; ed
10c6: dw $11b7  ; ee
10c8: dw $11d7  ; ef
10ca: dw $11fc  ; f0
10cc: dw $11fd  ; f1
10ce: dw $1201  ; f2
10d0: dw $1218  ; f3
10d2: dw $1223  ; f4
10d4: dw $122c  ; f5
10d6: dw $123c  ; f6
10d8: dw $1250  ; f7
10da: dw $1267  ; f8
10dc: dw $128b  ; f9
10de: dw $12bd  ; fa
10e0: dw $12c3  ; fb
10e2: dw $12c4  ; fc

10e4: f8 0e     mov   x,$0e
10e6: 3f 73 10  call  $1073
10e9: 10 06     bpl   $10f1
10eb: 80        setc
10ec: a8 ca     sbc   a,#$ca
10ee: 60        clrc
10ef: 84 20     adc   a,$20
10f1: d5 78 02  mov   $0278+x,a
10f4: 8d 06     mov   y,#$06
10f6: cf        mul   ya
10f7: da 01     movw  $01,ya
10f9: 60        clrc
10fa: 98 00 01  adc   $01,#$00
10fd: 98 39 02  adc   $02,#$39
1100: 8d 01     mov   y,#$01
1102: f7 01     mov   a,($01)+y
1104: d5 88 02  mov   $0288+x,a
1107: fc        inc   y
1108: f7 01     mov   a,($01)+y
110a: d5 98 02  mov   $0298+x,a
110d: fc        inc   y
110e: fc        inc   y
110f: f7 01     mov   a,($01)+y
1111: d5 b8 02  mov   $02b8+x,a
1114: fc        inc   y
1115: f7 01     mov   a,($01)+y
1117: d5 a8 02  mov   $02a8+x,a
111a: 6f        ret

111b: f8 0e     mov   x,$0e
111d: 3f 73 10  call  $1073
1120: 28 1f     and   a,#$1f
1122: d5 c8 02  mov   $02c8+x,a
1125: e8 00     mov   a,#$00
1127: d5 e8 02  mov   $02e8+x,a
112a: 6f        ret

112b: f8 0e     mov   x,$0e
112d: 3f 73 10  call  $1073
1130: d5 e8 02  mov   $02e8+x,a
1133: 3f 73 10  call  $1073
1136: 28 1f     and   a,#$1f
1138: d5 d8 02  mov   $02d8+x,a
113b: 75 c8 02  cmp   a,$02c8+x
113e: b0 05     bcs   $1145
1140: 08 80     or    a,#$80
1142: d5 d8 02  mov   $02d8+x,a
1145: e8 00     mov   a,#$00
1147: d5 f8 02  mov   $02f8+x,a
114a: 6f        ret

114b: f8 0e     mov   x,$0e
114d: 3f 73 10  call  $1073
1150: d5 58 04  mov   $0458+x,a
1153: 3f 73 10  call  $1073
1156: d5 78 04  mov   $0478+x,a
1159: 3f 73 10  call  $1073
115c: d5 98 04  mov   $0498+x,a
115f: 6f        ret

1160: f8 0e     mov   x,$0e
1162: e8 00     mov   a,#$00
1164: d5 98 04  mov   $0498+x,a
1167: 6f        ret

1168: 3f 73 10  call  $1073
116b: c4 25     mov   $25,a
116d: 6f        ret

116e: 3f 73 10  call  $1073
1171: c4 26     mov   $26,a
1173: 3f 73 10  call  $1073
1176: c4 27     mov   $27,a
1178: 80        setc
1179: a4 25     sbc   a,$25
117b: f8 26     mov   x,$26
117d: 3f e6 12  call  $12e6
1180: da 28     movw  $28,ya
1182: 6f        ret

1183: 3f 73 10  call  $1073
1186: c4 16     mov   $16,a
1188: c4 1c     mov   $1c,a
118a: 6f        ret

118b: 3f 73 10  call  $1073
118e: c4 19     mov   $19,a
1190: 3f 73 10  call  $1073
1193: c4 1a     mov   $1a,a
1195: 80        setc
1196: a4 1c     sbc   a,$1c
1198: f8 19     mov   x,$19
119a: 3f e6 12  call  $12e6
119d: da 1e     movw  $1e,ya
119f: 6f        ret

11a0: 3f 73 10  call  $1073
11a3: c4 41     mov   $41,a
11a5: 6f        ret

11a6: f8 0e     mov   x,$0e
11a8: 3f 73 10  call  $1073
11ab: d5 a8 03  mov   $03a8+x,a
11ae: 6f        ret

11af: f8 0e     mov   x,$0e
11b1: 3f 73 10  call  $1073
11b4: d4 88     mov   $88+x,a
11b6: 6f        ret

11b7: f8 0e     mov   x,$0e
11b9: 3f 73 10  call  $1073
11bc: d5 58 03  mov   $0358+x,a
11bf: 2d        push  a
11c0: 3f 73 10  call  $1073
11c3: d5 68 03  mov   $0368+x,a
11c6: 80        setc
11c7: b4 88     sbc   a,$88+x
11c9: ce        pop   x
11ca: 3f e6 12  call  $12e6
11cd: f8 0e     mov   x,$0e
11cf: d5 78 03  mov   $0378+x,a
11d2: dd        mov   a,y
11d3: d5 88 03  mov   $0388+x,a
11d6: 6f        ret

11d7: f8 0e     mov   x,$0e
11d9: 3f 73 10  call  $1073
11dc: d5 28 02  mov   $0228+x,a
11df: 2d        push  a
11e0: 3f 73 10  call  $1073
11e3: d5 38 02  mov   $0238+x,a
11e6: 2d        push  a
11e7: 3f 73 10  call  $1073
11ea: d5 68 02  mov   $0268+x,a
11ed: e4 05     mov   a,$05
11ef: d5 48 02  mov   $0248+x,a
11f2: e4 06     mov   a,$06
11f4: d5 58 02  mov   $0258+x,a
11f7: ee        pop   y
11f8: ae        pop   a
11f9: da 05     movw  $05,ya
11fb: 6f        ret

11fc: 6f        ret

11fd: e8 01     mov   a,#$01
11ff: 2f 02     bra   $1203
1201: e8 00     mov   a,#$00
1203: f8 0e     mov   x,$0e
1205: 3f 73 10  call  $1073
1208: d5 c8 03  mov   $03c8+x,a
120b: 3f 73 10  call  $1073
120e: d5 28 04  mov   $0428+x,a
1211: 3f 73 10  call  $1073
1214: d5 48 04  mov   $0448+x,a
1217: 6f        ret

1218: f8 0e     mov   x,$0e
121a: e8 00     mov   a,#$00
121c: d5 28 04  mov   $0428+x,a
121f: d5 38 04  mov   $0438+x,a
1222: 6f        ret

1223: f8 0e     mov   x,$0e
1225: 3f 73 10  call  $1073
1228: d5 b8 03  mov   $03b8+x,a
122b: 6f        ret

122c: 3f 73 10  call  $1073
122f: c4 2e     mov   $2e,a
1231: 3f 73 10  call  $1073
1234: c4 31     mov   $31,a
1236: 3f 73 10  call  $1073
1239: c4 33     mov   $33,a
123b: 6f        ret

123c: f8 0e     mov   x,$0e
123e: f5 73 14  mov   a,$1473+x
1241: 4e 2e 00  tclr1 $002e
1244: e8 00     mov   a,#$00
1246: c4 31     mov   $31,a
1248: c4 33     mov   $33,a
124a: c4 40     mov   $40,a
124c: 8f 20 3b  mov   $3b,#$20
124f: 6f        ret

1250: e8 01     mov   a,#$01
1252: c4 40     mov   $40,a
1254: 3f 73 10  call  $1073
1257: c4 3e     mov   $3e,a
1259: 3f 73 10  call  $1073
125c: c4 3c     mov   $3c,a
125e: 3f 73 10  call  $1073
1261: c4 3d     mov   $3d,a
1263: 8f 00 3b  mov   $3b,#$00
1266: 6f        ret

1267: 3f 73 10  call  $1073
126a: c4 34     mov   $34,a
126c: 3f 73 10  call  $1073
126f: c4 35     mov   $35,a
1271: 80        setc
1272: a4 31     sbc   a,$31
1274: f8 34     mov   x,$34
1276: 3f e6 12  call  $12e6
1279: da 37     movw  $37,ya
127b: 3f 73 10  call  $1073
127e: c4 36     mov   $36,a
1280: 80        setc
1281: a4 33     sbc   a,$33
1283: f8 34     mov   x,$34
1285: 3f e6 12  call  $12e6
1288: da 39     movw  $39,ya
128a: 6f        ret

128b: f8 0e     mov   x,$0e
128d: 3f 73 10  call  $1073
1290: d5 c8 03  mov   $03c8+x,a
1293: 3f 73 10  call  $1073
1296: d5 38 04  mov   $0438+x,a
1299: 3f 73 10  call  $1073
129c: 60        clrc
129d: 84 41     adc   a,$41
129f: 95 a8 03  adc   a,$03a8+x
12a2: 28 7f     and   a,#$7f
12a4: d5 f8 03  mov   $03f8+x,a
12a7: 80        setc
12a8: b4 d8     sbc   a,$d8+x
12aa: 2d        push  a
12ab: f5 38 04  mov   a,$0438+x
12ae: 5d        mov   x,a
12af: ae        pop   a
12b0: 3f e6 12  call  $12e6
12b3: f8 0e     mov   x,$0e
12b5: d5 d8 03  mov   $03d8+x,a
12b8: dd        mov   a,y
12b9: d5 e8 03  mov   $03e8+x,a
12bc: 6f        ret

12bd: 3f 73 10  call  $1073
12c0: c4 20     mov   $20,a
12c2: 6f        ret

12c3: 6f        ret

12c4: f8 0e     mov   x,$0e
12c6: 3f 73 10  call  $1073
12c9: c4 01     mov   $01,a
12cb: 3f 73 10  call  $1073
12ce: 9f        xcn   a
12cf: 04 01     or    a,$01
12d1: 08 80     or    a,#$80
12d3: d5 88 02  mov   $0288+x,a
12d6: 3f 73 10  call  $1073
12d9: c4 01     mov   $01,a
12db: 3f 73 10  call  $1073
12de: 9f        xcn   a
12df: 1c        asl   a
12e0: 04 01     or    a,$01
12e2: d5 98 02  mov   $0298+x,a
12e5: 6f        ret

12e6: ed        notc
12e7: 6b 01     ror   $01
12e9: 10 03     bpl   $12ee
12eb: 48 ff     eor   a,#$ff
12ed: bc        inc   a
12ee: 8d 00     mov   y,#$00
12f0: 9e        div   ya,x
12f1: 2d        push  a
12f2: e8 00     mov   a,#$00
12f4: 9e        div   ya,x
12f5: ee        pop   y
12f6: f3 01 07  bbc7  $01,$1300
12f9: da 01     movw  $01,ya
12fb: e8 00     mov   a,#$00
12fd: fd        mov   y,a
12fe: 9a 01     subw  ya,$01
1300: 6f        ret

1301: dw $1325  ; ed
1303: dw $132f  ; ee
1305: dw $12c4  ; ef
1307: dw $1339  ; f0
1309: dw $133d  ; f1
130b: dw $1341  ; f2
130d: dw $136d  ; f3
130f: dw $1376  ; f4
1311: dw $1386  ; f5
1313: dw $139d  ; f6
1315: dw $10e4  ; f7
1317: dw $13b4  ; f8
1319: dw $13d9  ; f9
131b: dw $13ea  ; fa
131d: dw $13ea  ; fb
131f: dw $13eb  ; fc
1321: dw $13f8  ; fd
1323: dw $1411  ; fe

1325: f8 0e     mov   x,$0e
1327: 3f 73 10  call  $1073
132a: 94 88     adc   a,$88+x
132c: d4 88     mov   $88+x,a
132e: 6f        ret

132f: f8 0e     mov   x,$0e
1331: 3f 73 10  call  $1073
1334: 94 98     adc   a,$98+x
1336: d4 98     mov   $98+x,a
1338: 6f        ret

1339: fa 10 11  mov   ($11),($10)
133c: 6f        ret

133d: 8f 00 11  mov   $11,#$00
1340: 6f        ret

1341: f8 0e     mov   x,$0e
1343: 3f 73 10  call  $1073
1346: d5 08 04  mov   $0408+x,a
1349: f0 08     beq   $1353
134b: 3f 73 10  call  $1073
134e: d5 d8 03  mov   $03d8+x,a
1351: 2f 09     bra   $135c
1353: 3f 73 10  call  $1073
1356: 28 1f     and   a,#$1f
1358: c4 42     mov   $42,a
135a: f0 07     beq   $1363
135c: f5 73 14  mov   a,$1473+x
135f: 0e 47 00  tset1 $0047
1362: 6f        ret

1363: d5 08 04  mov   $0408+x,a
1366: f5 73 14  mov   a,$1473+x
1369: 4e 47 00  tclr1 $0047
136c: 6f        ret

136d: f8 0e     mov   x,$0e
136f: f5 73 14  mov   a,$1473+x
1372: 0e 46 00  tset1 $0046
1375: 6f        ret

1376: f8 0e     mov   x,$0e
1378: f5 73 14  mov   a,$1473+x
137b: 0e 44 00  tset1 $0044
137e: f5 a8 04  mov   a,$04a8+x
1381: bc        inc   a
1382: d5 a8 04  mov   $04a8+x,a
1385: 6f        ret

1386: f8 0e     mov   x,$0e
1388: 3f 73 10  call  $1073
138b: f0 07     beq   $1394
138d: 3f 73 10  call  $1073
1390: d5 28 03  mov   $0328+x,a
1393: 6f        ret

1394: d5 28 03  mov   $0328+x,a
1397: 3f 73 10  call  $1073
139a: d4 88     mov   $88+x,a
139c: 6f        ret

139d: f8 0e     mov   x,$0e
139f: 3f 73 10  call  $1073
13a2: f0 07     beq   $13ab
13a4: 3f 73 10  call  $1073
13a7: d5 38 03  mov   $0338+x,a
13aa: 6f        ret

13ab: d5 38 03  mov   $0338+x,a
13ae: 3f 73 10  call  $1073
13b1: d4 98     mov   $98+x,a
13b3: 6f        ret

13b4: f8 0e     mov   x,$0e
13b6: 3f 73 10  call  $1073
13b9: f0 10     beq   $13cb
13bb: d5 08 04  mov   $0408+x,a
13be: 3f 73 10  call  $1073
13c1: d5 d8 03  mov   $03d8+x,a
13c4: 3f 73 10  call  $1073
13c7: d5 e8 03  mov   $03e8+x,a
13ca: 6f        ret

13cb: d5 08 04  mov   $0408+x,a
13ce: 3f 73 10  call  $1073
13d1: d4 a8     mov   $a8+x,a
13d3: 3f 73 10  call  $1073
13d6: d4 b8     mov   $b8+x,a
13d8: 6f        ret

13d9: 3f e4 10  call  $10e4
13dc: e8 00     mov   a,#$00
13de: 3f 94 13  call  $1394
13e1: e8 00     mov   a,#$00
13e3: 3f ab 13  call  $13ab
13e6: e8 00     mov   a,#$00
13e8: 2f e1     bra   $13cb
13ea: 6f        ret

13eb: f8 0e     mov   x,$0e
13ed: 3f 73 10  call  $1073
13f0: 2d        push  a
13f1: 3f 7b 10  call  $107b
13f4: ae        pop   a
13f5: 5f 82 10  jmp   $1082

13f8: f8 0e     mov   x,$0e
13fa: 3f 9e 10  call  $109e
13fd: 9c        dec   a
13fe: f0 0b     beq   $140b
1400: 2d        push  a
1401: 3f 93 10  call  $1093
1404: 3f 7b 10  call  $107b
1407: ae        pop   a
1408: 5f 82 10  jmp   $1082

140b: 3f 9e 10  call  $109e
140e: 5f 9e 10  jmp   $109e

1411: 3f 73 10  call  $1073
1414: 2d        push  a
1415: 3f 73 10  call  $1073
1418: c4 06     mov   $06,a
141a: ae        pop   a
141b: c4 05     mov   $05,a
141d: 6f        ret

141e: e8 aa     mov   a,#$aa
1420: 8d bb     mov   y,#$bb
1422: da f4     movw  $f4,ya
1424: 78 cc f4  cmp   $f4,#$cc
1427: d0 fb     bne   $1424
1429: 2f 1b     bra   $1446
142b: eb f4     mov   y,$f4
142d: d0 fc     bne   $142b
142f: 7e f4     cmp   y,$f4
1431: d0 0d     bne   $1440
1433: e4 f5     mov   a,$f5
1435: cb f4     mov   $f4,y
1437: d7 01     mov   ($01)+y,a
1439: fc        inc   y
143a: d0 f3     bne   $142f
143c: ab 02     inc   $02
143e: 2f ef     bra   $142f
1440: 10 ed     bpl   $142f
1442: 7e f4     cmp   y,$f4
1444: 10 e9     bpl   $142f
1446: e4 f6     mov   a,$f6
1448: eb f7     mov   y,$f7
144a: da 01     movw  $01,ya
144c: eb f4     mov   y,$f4
144e: e4 f5     mov   a,$f5
1450: cb f4     mov   $f4,y
1452: d0 d7     bne   $142b
1454: cd 33     mov   x,#$33
1456: d8 f1     mov   $f1,x
1458: 6f        ret

; pitch table
1459: dw $085f
145b: dw $08de
145d: dw $0965
145f: dw $09f4
1461: dw $0a8c
1463: dw $0b2c
1465: dw $0bd6
1467: dw $0c8b
1469: dw $0d4a
146b: dw $0e14
146d: dw $0eea
146f: dw $0fcd
1471: dw $10be

1473: db $01,$02,$04,$08,$10,$20,$40,$80
147b: db $01,$02,$04,$08,$10,$20,$40,$80
