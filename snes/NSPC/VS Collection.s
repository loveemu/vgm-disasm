0600: 20        clrp
0601: cd cf     mov   x,#$cf
0603: bd        mov   sp,x
0604: e8 00     mov   a,#$00
0606: 5d        mov   x,a
0607: af        mov   (x)+,a
0608: c8 e0     cmp   x,#$e0
060a: d0 fb     bne   $0607
060c: e8 00     mov   a,#$00
060e: 8d 01     mov   y,#$01
0610: da 1c     movw  $1c,ya
0612: 8d 00     mov   y,#$00
0614: e8 00     mov   a,#$00
0616: d7 1c     mov   ($1c)+y,a
0618: 3a 1c     incw  $1c
061a: 8d 06     mov   y,#$06
061c: e8 00     mov   a,#$00
061e: 5a 1c     cmpw  ya,$1c
0620: d0 f0     bne   $0612
0622: 8d 00     mov   y,#$00
0624: e8 00     mov   a,#$00
0626: da 1c     movw  $1c,ya
0628: bc        inc   a
0629: 3f b7 0c  call  $0cb7
062c: a2 4a     set5  $4a
062e: e8 50     mov   a,#$50
0630: 8d 0c     mov   y,#$0c
0632: 3f 6f 0f  call  $0f6f
0635: 8d 1c     mov   y,#$1c
0637: 3f 6f 0f  call  $0f6f
063a: e8 05     mov   a,#$05
063c: 8d 5d     mov   y,#$5d
063e: 3f 6f 0f  call  $0f6f
0641: e8 f0     mov   a,#$f0
0643: c5 f1 00  mov   $00f1,a
0646: e8 10     mov   a,#$10
0648: c5 fa 00  mov   $00fa,a
064b: c4 55     mov   $55,a
064d: e8 01     mov   a,#$01
064f: c5 f1 00  mov   $00f1,a
0652: e8 00     mov   a,#$00
0654: c5 92 03  mov   $0392,a
0657: c5 00 02  mov   $0200,a
065a: e8 04     mov   a,#$04
065c: c5 90 03  mov   $0390,a
065f: 8f 01 42  mov   $42,#$01
0662: 3f e6 06  call  $06e6
0665: e8 4c     mov   a,#$4c
0667: c5 f2 00  mov   $00f2,a
066a: e4 47     mov   a,$47
066c: c5 f3 00  mov   $00f3,a
066f: e8 5c     mov   a,#$5c
0671: c5 f2 00  mov   $00f2,a
0674: e4 48     mov   a,$48
0676: c5 f3 00  mov   $00f3,a
0679: 3f ce 12  call  $12ce
067c: e8 00     mov   a,#$00
067e: c4 47     mov   $47,a
0680: c4 48     mov   $48,a
0682: ec fd 00  mov   y,$00fd
0685: f0 fb     beq   $0682
0687: 6d        push  y
0688: e8 40     mov   a,#$40
068a: cf        mul   ya
068b: 60        clrc
068c: 85 93 03  adc   a,$0393
068f: c5 93 03  mov   $0393,a
0692: 90 03     bcc   $0697
0694: ac 91 03  inc   $0391
0697: e8 20     mov   a,#$20
0699: ee        pop   y
069a: 6d        push  y
069b: cf        mul   ya
069c: 60        clrc
069d: 84 45     adc   a,$45
069f: c4 45     mov   $45,a
06a1: 90 07     bcc   $06aa
06a3: 69 4f 4e  cmp   ($4e),($4f)
06a6: f0 02     beq   $06aa
06a8: ab 4e     inc   $4e
06aa: e4 55     mov   a,$55
06ac: ee        pop   y
06ad: cf        mul   ya
06ae: 60        clrc
06af: 84 54     adc   a,$54
06b1: c4 54     mov   $54,a
06b3: 90 0d     bcc   $06c2
06b5: e5 92 03  mov   a,$0392
06b8: d0 1e     bne   $06d8
06ba: 3f 71 09  call  $0971
06bd: 3f 42 07  call  $0742
06c0: 2f 16     bra   $06d8
06c2: e4 17     mov   a,$17
06c4: f0 12     beq   $06d8
06c6: cd 00     mov   x,#$00
06c8: 8f 01 49  mov   $49,#$01
06cb: f4 33     mov   a,$33+x
06cd: f0 03     beq   $06d2
06cf: 3f 2d 0e  call  $0e2d
06d2: 3d        inc   x
06d3: 3d        inc   x
06d4: 0b 49     asl   $49
06d6: d0 f3     bne   $06cb
06d8: e5 91 03  mov   a,$0391
06db: f0 06     beq   $06e3
06dd: 3f 7b 10  call  $107b
06e0: 3f dc 07  call  $07dc
06e3: 5f 62 06  jmp   $0662

06e6: 8d 07     mov   y,#$07
06e8: ad 05     cmp   y,#$05
06ea: f0 07     beq   $06f3
06ec: b0 08     bcs   $06f6
06ee: 69 4f 4e  cmp   ($4e),($4f)
06f1: d0 11     bne   $0704
06f3: e3 4e 0e  bbs7  $4e,$0704
06f6: f6 06 07  mov   a,$0706+y
06f9: c5 f2 00  mov   $00f2,a
06fc: f6 0d 07  mov   a,$070d+y
06ff: 5d        mov   x,a
0700: e6        mov   a,(x)
0701: c5 f3 00  mov   $00f3,a
0704: fe e2     dbnz  y,$06e8
0706: 6f        ret

0707: 2c 3c 0d  rol   $0d3c
070a: 4d        push  x
070b: 6c 3d 2d  ror   $2d3d
070e: 63 65 50  bbs3  $65,$0761
0711: 4c 4a 4b  lsr   $4b4a
0714: 4d        push  x
0715: f5 80 03  mov   a,$0380+x
0718: f0 06     beq   $0720
071a: 9c        dec   a
071b: d5 80 03  mov   $0380+x,a
071e: 2f 21     bra   $0741
0720: f5 80 02  mov   a,$0280+x
0723: f0 1c     beq   $0741
0725: 30 04     bmi   $072b
0727: 8d 00     mov   y,#$00
0729: 2f 02     bra   $072d
072b: 8d ff     mov   y,#$ff
072d: da 1c     movw  $1c,ya
072f: f5 91 02  mov   a,$0291+x
0732: fd        mov   y,a
0733: f5 90 02  mov   a,$0290+x
0736: 7a 1c     addw  ya,$1c
0738: da 1c     movw  $1c,ya
073a: d5 90 02  mov   $0290+x,a
073d: dd        mov   a,y
073e: d5 91 02  mov   $0291+x,a
0741: 6f        ret

0742: e4 17     mov   a,$17
0744: c5 f4 00  mov   $00f4,a
0747: e5 f4 00  mov   a,$00f4
074a: 65 f4 00  cmp   a,$00f4
074d: d0 f8     bne   $0747
074f: 68 f9     cmp   a,#$f9
0751: f0 1b     beq   $076e
0753: 68 fa     cmp   a,#$fa
0755: f0 28     beq   $077f
0757: 68 f7     cmp   a,#$f7
0759: f0 31     beq   $078c
075b: 68 f8     cmp   a,#$f8
075d: f0 3e     beq   $079d
075f: 68 fb     cmp   a,#$fb
0761: f0 47     beq   $07aa
0763: 68 fc     cmp   a,#$fc
0765: f0 4f     beq   $07b6
0767: 68 fd     cmp   a,#$fd
0769: f0 57     beq   $07c2
076b: c4 15     mov   $15,a
076d: 6f        ret

076e: 65 00 02  cmp   a,$0200
0771: f0 fa     beq   $076d
0773: c5 00 02  mov   $0200,a
0776: e8 7e     mov   a,#$7e
0778: c4 43     mov   $43,a
077a: e8 ff     mov   a,#$ff
077c: c4 48     mov   $48,a
077e: 6f        ret

077f: 65 00 02  cmp   a,$0200
0782: f0 e9     beq   $076d
0784: c5 00 02  mov   $0200,a
0787: e8 fe     mov   a,#$fe
0789: c4 43     mov   $43,a
078b: 6f        ret

078c: 65 00 02  cmp   a,$0200
078f: f0 dc     beq   $076d
0791: c5 00 02  mov   $0200,a
0794: e8 d8     mov   a,#$d8
0796: c4 43     mov   $43,a
0798: e8 ff     mov   a,#$ff
079a: c4 48     mov   $48,a
079c: 6f        ret

079d: 65 00 02  cmp   a,$0200
07a0: f0 cb     beq   $076d
07a2: c5 00 02  mov   $0200,a
07a5: e8 fe     mov   a,#$fe
07a7: c4 43     mov   $43,a
07a9: 6f        ret

07aa: 65 00 02  cmp   a,$0200
07ad: f0 be     beq   $076d
07af: c5 00 02  mov   $0200,a
07b2: 8f 00 42  mov   $42,#$00
07b5: 6f        ret

07b6: 65 00 02  cmp   a,$0200
07b9: f0 b2     beq   $076d
07bb: c5 00 02  mov   $0200,a
07be: 8f 01 42  mov   $42,#$01
07c1: 6f        ret

07c2: 65 00 02  cmp   a,$0200
07c5: f0 a6     beq   $076d
07c7: c5 00 02  mov   $0200,a
07ca: e5 9f 03  mov   a,$039f
07cd: f0 01     beq   $07d0
07cf: 6f        ret

07d0: ac 9f 03  inc   $039f
07d3: 8f c8 5c  mov   $5c,#$c8
07d6: 8f 20 5d  mov   $5d,#$20
07d9: 5f 15 0c  jmp   $0c15

07dc: e5 f5 00  mov   a,$00f5
07df: 65 f5 00  cmp   a,$00f5
07e2: d0 f8     bne   $07dc
07e4: 68 00     cmp   a,#$00
07e6: f0 18     beq   $0800
07e8: 68 c1     cmp   a,#$c1
07ea: f0 37     beq   $0823
07ec: 68 c2     cmp   a,#$c2
07ee: f0 4a     beq   $083a
07f0: 68 fd     cmp   a,#$fd
07f2: d0 07     bne   $07fb
07f4: cd 05     mov   x,#$05
07f6: 3f 54 08  call  $0854
07f9: 2f 05     bra   $0800
07fb: cd 00     mov   x,#$00
07fd: 3f 2d 10  call  $102d
0800: e5 f6 00  mov   a,$00f6
0803: 65 f6 00  cmp   a,$00f6
0806: d0 f8     bne   $0800
0808: 68 00     cmp   a,#$00
080a: f0 05     beq   $0811
080c: cd 01     mov   x,#$01
080e: 3f 2d 10  call  $102d
0811: e5 f7 00  mov   a,$00f7
0814: 65 f7 00  cmp   a,$00f7
0817: d0 f8     bne   $0811
0819: 68 00     cmp   a,#$00
081b: f0 05     beq   $0822
081d: cd 02     mov   x,#$02
081f: 3f 2d 10  call  $102d
0822: 6f        ret

0823: 2d        push  a
0824: e5 92 03  mov   a,$0392
0827: d0 08     bne   $0831
0829: ac 92 03  inc   $0392
082c: cd 07     mov   x,#$07
082e: 3f 54 08  call  $0854
0831: ae        pop   a
0832: cd 00     mov   x,#$00
0834: 3f 2d 10  call  $102d
0837: 5f 00 08  jmp   $0800

083a: e5 92 03  mov   a,$0392
083d: f0 14     beq   $0853
083f: 8c 92 03  dec   $0392
0842: cd 30     mov   x,#$30
0844: e8 07     mov   a,#$07
0846: c9 f2 00  mov   $00f2,x
0849: c5 f3 00  mov   $00f3,a
084c: 3d        inc   x
084d: c9 f2 00  mov   $00f2,x
0850: c5 f3 00  mov   $00f3,a
0853: 6f        ret

0854: d8 13     mov   $13,x
0856: 7d        mov   a,x
0857: 1c        asl   a
0858: 1c        asl   a
0859: 1c        asl   a
085a: 1c        asl   a
085b: 5d        mov   x,a
085c: e8 00     mov   a,#$00
085e: c9 f2 00  mov   $00f2,x
0861: c5 f3 00  mov   $00f3,a
0864: 3d        inc   x
0865: c9 f2 00  mov   $00f2,x
0868: c5 f3 00  mov   $00f3,a
086b: f8 13     mov   x,$13
086d: 1d        dec   x
086e: 10 e4     bpl   $0854
0870: 6f        ret

0871: 68 ff     cmp   a,#$ff
0873: d0 1e     bne   $0893
0875: e8 5c     mov   a,#$5c
0877: c5 f2 00  mov   $00f2,a
087a: e8 ff     mov   a,#$ff
087c: c5 f3 00  mov   $00f3,a
087f: e8 01     mov   a,#$01
0881: 3f b7 0c  call  $0cb7
0884: 3f d0 0f  call  $0fd0
0887: e8 00     mov   a,#$00
0889: c4 00     mov   $00,a
088b: c4 01     mov   $01,a
088d: c4 02     mov   $02,a
088f: c4 21     mov   $21,a
0891: c4 16     mov   $16,a
0893: 68 00     cmp   a,#$00
0895: d0 0f     bne   $08a6
0897: c4 17     mov   $17,a
0899: e4 21     mov   a,$21
089b: 48 ff     eor   a,#$ff
089d: cd 5c     mov   x,#$5c
089f: c9 f2 00  mov   $00f2,x
08a2: c5 f3 00  mov   $00f3,a
08a5: 6f        ret

08a6: c4 17     mov   $17,a	; load song
08a8: 9c        dec   a
08a9: 1c        asl   a
08aa: 2d        push  a
08ab: e5 fa 04  mov   a,$04fa	; $1c00
08ae: c4 1e     mov   $1e,a
08b0: e5 fb 04  mov   a,$04fb
08b3: c4 1f     mov   $1f,a
08b5: ee        pop   y
08b6: f7 1e     mov   a,($1e)+y
08b8: 2d        push  a
08b9: fc        inc   y
08ba: f7 1e     mov   a,($1e)+y
08bc: fd        mov   y,a
08bd: ae        pop   a
08be: da 1e     movw  $1e,ya
08c0: 60        clrc
08c1: 88 03     adc   a,#$03
08c3: c5 d2 00  mov   $00d2,a
08c6: dd        mov   a,y
08c7: 88 00     adc   a,#$00
08c9: c5 d3 00  mov   $00d3,a
08cc: 8d 00     mov   y,#$00
08ce: f7 1e     mov   a,($1e)+y
08d0: c4 4f     mov   $4f,a
08d2: fc        inc   y
08d3: f7 1e     mov   a,($1e)+y
08d5: c4 50     mov   $50,a
08d7: fc        inc   y
08d8: f7 1e     mov   a,($1e)+y
08da: c4 51     mov   $51,a
08dc: fc        inc   y
08dd: dd        mov   a,y
08de: 60        clrc
08df: 88 a0     adc   a,#$a0
08e1: fd        mov   y,a
08e2: f7 1e     mov   a,($1e)+y
08e4: d6 8f ff  mov   $ff8f+y,a
08e7: fc        inc   y
08e8: ad b3     cmp   y,#$b3
08ea: d0 f6     bne   $08e2
08ec: e4 4f     mov   a,$4f
08ee: 3f b7 0c  call  $0cb7
08f1: e4 51     mov   a,$51
08f3: 8d 08     mov   y,#$08
08f5: cf        mul   ya
08f6: 5d        mov   x,a
08f7: 8d 0f     mov   y,#$0f
08f9: f5 8b 0f  mov   a,$0f8b+x
08fc: 3f 6f 0f  call  $0f6f
08ff: 3d        inc   x
0900: dd        mov   a,y
0901: 60        clrc
0902: 88 10     adc   a,#$10
0904: fd        mov   y,a
0905: 10 f2     bpl   $08f9
0907: cd 00     mov   x,#$00
0909: 8f 01 49  mov   $49,#$01
090c: d8 46     mov   $46,x
090e: f5 11 02  mov   a,$0211+x
0911: d0 05     bne   $0918
0913: e8 00     mov   a,#$00
0915: 3f 02 0b  call  $0b02
0918: e8 00     mov   a,#$00
091a: d4 a2     mov   $a2+x,a
091c: bc        inc   a
091d: d4 72     mov   $72+x,a
091f: 3d        inc   x
0920: 3d        inc   x
0921: 0b 49     asl   $49
0923: d0 e7     bne   $090c
0925: 8f 01 20  mov   $20,#$01
0928: e4 21     mov   a,$21
092a: 48 ff     eor   a,#$ff
092c: 0e 48 00  tset1 $0048
092f: 6f        ret

0930: 8b 20     dec   $20
0932: cd 0e     mov   x,#$0e
0934: 8f 80 49  mov   $49,#$80
0937: e8 ff     mov   a,#$ff
0939: d5 01 03  mov   $0301+x,a
093c: e8 0a     mov   a,#$0a
093e: 3f a4 0b  call  $0ba4
0941: d4 92     mov   $92+x,a
0943: d5 11 02  mov   $0211+x,a
0946: d5 f0 02  mov   $02f0+x,a
0949: d4 c3     mov   $c3+x,a
094b: d5 80 02  mov   $0280+x,a
094e: 1d        dec   x
094f: 1d        dec   x
0950: 4b 49     lsr   $49
0952: d0 e3     bne   $0937
0954: c4 44     mov   $44,a
0956: c4 5c     mov   $5c,a
0958: c4 6a     mov   $6a,a
095a: c4 56     mov   $56,a
095c: c4 52     mov   $52,a
095e: c4 61     mov   $61,a
0960: c5 9f 03  mov   $039f,a
0963: c5 00 02  mov   $0200,a
0966: 8f c0 5b  mov   $5b,#$c0
0969: 8f 20 55  mov   $55,#$20
096c: e8 fe     mov   a,#$fe
096e: c4 43     mov   $43,a
0970: 6f        ret

0971: eb 16     mov   y,$16
0973: e4 15     mov   a,$15
0975: c4 16     mov   $16,a
0977: 7e 15     cmp   y,$15
0979: f0 03     beq   $097e
097b: 5f 71 08  jmp   $0871

097e: e4 17     mov   a,$17
0980: d0 01     bne   $0983
0982: 6f        ret

0983: e4 20     mov   a,$20
0985: d0 a9     bne   $0930
0987: cd 00     mov   x,#$00
0989: d8 60     mov   $60,x
098b: 8f 01 49  mov   $49,#$01
098e: d8 46     mov   $46,x
0990: f4 33     mov   a,$33+x
0992: f0 0a     beq   $099e
0994: 9b 72     dec   $72+x
0996: d0 03     bne   $099b
0998: 5f 19 0a  jmp   $0a19

099b: 3f a8 0d  call  $0da8
099e: 3d        inc   x
099f: 3d        inc   x
09a0: 0b 49     asl   $49
09a2: d0 ea     bne   $098e
09a4: e4 5c     mov   a,$5c
09a6: f0 0e     beq   $09b6
09a8: ba 5e     movw  ya,$5e
09aa: 7a 5a     addw  ya,$5a
09ac: 6e 5c 02  dbnz  $5c,$09b1
09af: ba 5c     movw  ya,$5c
09b1: da 5a     movw  $5a,ya
09b3: 8f ff 60  mov   $60,#$ff
09b6: cd 00     mov   x,#$00
09b8: 8f 01 49  mov   $49,#$01
09bb: f4 33     mov   a,$33+x
09bd: f0 03     beq   $09c2
09bf: 3f 1b 0d  call  $0d1b
09c2: 3d        inc   x
09c3: 3d        inc   x
09c4: 0b 49     asl   $49
09c6: d0 f3     bne   $09bb
09c8: 6f        ret

; vcmd fb - repeat start
09c9: f4 32     mov   a,$32+x
09cb: d4 82     mov   $82+x,a
09cd: f4 33     mov   a,$33+x
09cf: d4 83     mov   $83+x,a
09d1: 5f 19 0a  jmp   $0a19

; vcmd fe - repeat end
09d4: f4 92     mov   a,$92+x
09d6: f0 0c     beq   $09e4
09d8: 68 01     cmp   a,#$01
09da: d0 0d     bne   $09e9
09dc: 9b 92     dec   $92+x
09de: 3f f8 0a  call  $0af8
09e1: 5f 19 0a  jmp   $0a19

09e4: 3f f8 0a  call  $0af8
09e7: d4 92     mov   $92+x,a
09e9: 9b 92     dec   $92+x
09eb: f4 82     mov   a,$82+x
09ed: d4 32     mov   $32+x,a
09ef: f4 83     mov   a,$83+x
09f1: d4 33     mov   $33+x,a
09f3: 5f 19 0a  jmp   $0a19

; vcmd fc - jump
09f6: 3f f8 0a  call  $0af8
09f9: 2d        push  a
09fa: 3f f8 0a  call  $0af8
09fd: ae        pop   a
09fe: d4 32     mov   $32+x,a
0a00: db 33     mov   $33+x,y
0a02: 5f 19 0a  jmp   $0a19

; vcmd ff - stop
0a05: e8 00     mov   a,#$00
0a07: d4 32     mov   $32+x,a
0a09: d4 33     mov   $33+x,a
0a0b: 5f 9e 09  jmp   $099e

0a0e: 8f 00 17  mov   $17,#$00
0a11: e4 21     mov   a,$21
0a13: 48 ff     eor   a,#$ff
0a15: 0e 48 00  tset1 $0048
0a18: 6f        ret

; handle a note/command vcmd
0a19: 3f f8 0a  call  $0af8
0a1c: f0 f0     beq   $0a0e
0a1e: 68 e0     cmp   a,#$e0 ; main vcmds
0a20: 90 1d     bcc   $0a3f
0a22: 68 ff     cmp   a,#$ff - stop
0a24: f0 df     beq   $0a05
0a26: 68 fb     cmp   a,#$fb ; repeat start
0a28: f0 9f     beq   $09c9
0a2a: 68 fa     cmp   a,#$fa
0a2c: f0 4c     beq   $0a7a
0a2e: 68 f9     cmp   a,#$f9 ; slur
0a30: f0 4d     beq   $0a7f
0a32: 68 fe     cmp   a,#$fe ; repeat end
0a34: f0 9e     beq   $09d4
0a36: 68 fc     cmp   a,#$fc ; jump
0a38: f0 bc     beq   $09f6
0a3a: 3f 9a 0a  call  $0a9a
0a3d: 2f da     bra   $0a19
0a3f: 68 55     cmp   a,#$55 ; rest/tie (56)
0a41: f0 2f     beq   $0a72
0a43: 3f 95 0e  call  $0e95  ; otherwise, is a note (different than normal N-SPC)
0a46: 3f f8 0a  call  $0af8
0a49: 28 7f     and   a,#$7f
0a4b: d4 72     mov   $72+x,a
0a4d: dd        mov   a,y
0a4e: 10 05     bpl   $0a55
0a50: f5 10 03  mov   a,$0310+x
0a53: 2f 03     bra   $0a58
0a55: f5 11 03  mov   a,$0311+x
0a58: d5 01 03  mov   $0301+x,a
0a5b: 13 44 06  bbc0  $44,$0a64
0a5e: 12 44     clr0  $44
0a60: f4 b3     mov   a,$b3+x
0a62: 2f 02     bra   $0a66
0a64: f4 b2     mov   a,$b2+x
0a66: fb 72     mov   y,$72+x
0a68: cf        mul   ya
0a69: dd        mov   a,y
0a6a: d0 01     bne   $0a6d
0a6c: bc        inc   a
0a6d: d4 73     mov   $73+x,a
0a6f: 5f 9e 09  jmp   $099e

; vcmd 55/56 - rest/tie
0a72: 3f f8 0a  call  $0af8
0a75: d4 72     mov   $72+x,a
0a77: 5f 9e 09  jmp   $099e

; vcmd fa
0a7a: 02 44     set0  $44
0a7c: 5f 19 0a  jmp   $0a19

; vcmd f9 - slur
0a7f: 3f f8 0a  call  $0af8
0a82: 3f ac 0e  call  $0eac
0a85: 3f f8 0a  call  $0af8
0a88: 28 7f     and   a,#$7f
0a8a: d4 72     mov   $72+x,a
0a8c: f4 b2     mov   a,$b2+x
0a8e: fb 72     mov   y,$72+x
0a90: cf        mul   ya
0a91: dd        mov   a,y
0a92: d0 01     bne   $0a95
0a94: bc        inc   a
0a95: d4 73     mov   $73+x,a
0a97: 5f 9e 09  jmp   $099e

; dispatch vcmd in A (e0-ff)
0a9a: 80        setc
0a9b: a8 e0     sbc   a,#$e0
0a9d: 1c        asl   a
0a9e: fd        mov   y,a
0a9f: f6 ba 0a  mov   a,$0aba+y
0aa2: 2d        push  a
0aa3: f6 b9 0a  mov   a,$0ab9+y
0aa6: 2d        push  a
0aa7: dd        mov   a,y
0aa8: 5c        lsr   a
0aa9: fd        mov   y,a
0aaa: f6 e3 0a  mov   a,$0ae3+y
0aad: f0 08     beq   $0ab7
0aaf: e7 32     mov   a,($32+x)
0ab1: bb 32     inc   $32+x
0ab3: d0 02     bne   $0ab7
0ab5: bb 33     inc   $33+x
0ab7: fd        mov   y,a
0ab8: 6f        ret

; vcmd dispatch table
0ab9: dw $0b02	; e0 - set instrument
0abb: dw $0ba4	; e1 - pan
0abd: dw $0bbd	; e2 - pan fade
0abf: dw $0bec	; e3 - vibrato on
0ac1: dw $0bff	; e4 - vibrato off
0ac3: dw $0c04	; e5 - master volume
0ac5: dw $0c0e	; e6 - master volume fade
0ac7: dw $0c20	; e7 - tempo
0ac9: dw $0c23	; e8 - tempo fade
0acb: dw $0c35	; e9 - global transpose
0acd: dw $0c38	; ea - per-voice transpose
0acf: dw $0c46	; eb - set ASDR
0ad1: dw $0c3c	; ec - set pitch
0ad3: dw $0c66	; ed - volume
0ad5: dw $0c70	; ee - nop
0ad7: dw $0af8	; ef - skip to next byte
0ad9: dw $0c71	; f0 - vibrato
0adb: dw $0c7b	; f1 - set echo (1)
0add: dw $0caa	; f2 - set echo (2)
0adf: dw $0c89	; f3 - set echo (3)
0ae1: dw $0bd6	; f4 - set note dur/vel

; vcmd lengths
0ae3: db $01,$01,$02,$02,$00,$01,$02,$01 ; e0-e7
0aeb: db $02,$01,$01,$02,$02,$02,$02,$00 ; e8-ef
0af3: db $02,$02,$01,$03,$02		 ; f0-f4

; vcmd ef - skip to next byte
0af8: e7 32     mov   a,($32+x)
0afa: bb 32     inc   $32+x
0afc: d0 02     bne   $0b00
0afe: bb 33     inc   $33+x
0b00: fd        mov   y,a
0b01: 6f        ret

; vcmd e0 - set instrument
0b02: d5 11 02  mov   $0211+x,a
0b05: fd        mov   y,a
0b06: 10 09     bpl   $0b11
0b08: d5 11 02  mov   $0211+x,a
0b0b: 80        setc
0b0c: a8 57     sbc   a,#$57
0b0e: 60        clrc
0b0f: 88 04     adc   a,#$04
0b11: fd        mov   y,a
0b12: dd        mov   a,y
0b13: 8d 05     mov   y,#$05
0b15: cf        mul   ya
0b16: da 1c     movw  $1c,ya
0b18: e5 d2 00  mov   a,$00d2
0b1b: ec d3 00  mov   y,$00d3
0b1e: 7a 1c     addw  ya,$1c
0b20: da 1c     movw  $1c,ya
0b22: 7d        mov   a,x
0b23: 9f        xcn   a
0b24: 5c        lsr   a
0b25: 08 04     or    a,#$04
0b27: 5d        mov   x,a
0b28: e4 49     mov   a,$49
0b2a: 4e 4b 00  tclr1 $004b
0b2d: 8d 00     mov   y,#$00
0b2f: f7 1c     mov   a,($1c)+y
0b31: 3f 6e 0b  call  $0b6e
0b34: 4d        push  x
0b35: f8 46     mov   x,$46
0b37: d5 a0 03  mov   $03a0+x,a
0b3a: ce        pop   x
0b3b: 3d        inc   x
0b3c: fc        inc   y
0b3d: f7 1c     mov   a,($1c)+y
0b3f: 08 80     or    a,#$80
0b41: 3f 6e 0b  call  $0b6e
0b44: 4d        push  x
0b45: f8 46     mov   x,$46
0b47: d5 b0 03  mov   $03b0+x,a
0b4a: ce        pop   x
0b4b: 3d        inc   x
0b4c: fc        inc   y
0b4d: f7 1c     mov   a,($1c)+y
0b4f: 3f 6e 0b  call  $0b6e
0b52: 4d        push  x
0b53: f8 46     mov   x,$46
0b55: d5 c0 03  mov   $03c0+x,a
0b58: ce        pop   x
0b59: 3d        inc   x
0b5a: e8 7f     mov   a,#$7f
0b5c: 3f 6e 0b  call  $0b6e
0b5f: f8 46     mov   x,$46
0b61: fc        inc   y
0b62: f7 1c     mov   a,($1c)+y
0b64: d5 21 02  mov   $0221+x,a
0b67: fc        inc   y
0b68: f7 1c     mov   a,($1c)+y
0b6a: d5 20 02  mov   $0220+x,a
0b6d: 6f        ret

0b6e: 2d        push  a
0b6f: e4 49     mov   a,$49
0b71: 24 21     and   a,$21
0b73: ae        pop   a
0b74: d0 06     bne   $0b7c
0b76: c9 f2 00  mov   $00f2,x
0b79: c5 f3 00  mov   $00f3,a
0b7c: 6f        ret

0b7d: e4 46     mov   a,$46
0b7f: 5d        mov   x,a
0b80: e4 46     mov   a,$46
0b82: 9f        xcn   a
0b83: 5c        lsr   a
0b84: 08 04     or    a,#$04
0b86: fd        mov   y,a
0b87: f5 a0 03  mov   a,$03a0+x
0b8a: 3f 67 0f  call  $0f67
0b8d: fc        inc   y
0b8e: f5 b0 03  mov   a,$03b0+x
0b91: 3f 67 0f  call  $0f67
0b94: fc        inc   y
0b95: f5 c0 03  mov   a,$03c0+x
0b98: 3f 67 0f  call  $0f67
0b9b: fc        inc   y
0b9c: e8 7f     mov   a,#$7f
0b9e: 3f 67 0f  call  $0f67
0ba1: f8 46     mov   x,$46
0ba3: 6f        ret

; vcmd e1 - pan
0ba4: 2d        push  a
0ba5: e4 42     mov   a,$42
0ba7: f0 05     beq   $0bae
0ba9: ae        pop   a
0baa: e8 0a     mov   a,#$0a
0bac: 2f 01     bra   $0baf
0bae: ae        pop   a
0baf: d5 51 03  mov   $0351+x,a
0bb2: 28 1f     and   a,#$1f
0bb4: d5 31 03  mov   $0331+x,a
0bb7: e8 00     mov   a,#$00
0bb9: d5 30 03  mov   $0330+x,a
0bbc: 6f        ret

; vcmd e2 - pan fade
0bbd: d4 a2     mov   $a2+x,a
0bbf: 2d        push  a
0bc0: 3f f8 0a  call  $0af8
0bc3: d5 50 03  mov   $0350+x,a
0bc6: 80        setc
0bc7: b5 31 03  sbc   a,$0331+x
0bca: ce        pop   x
0bcb: 3f fd 0c  call  $0cfd
0bce: d5 40 03  mov   $0340+x,a
0bd1: dd        mov   a,y
0bd2: d5 41 03  mov   $0341+x,a
0bd5: 6f        ret

; vcmd f4 - set note dur/vel
0bd6: f6 e4 0b  mov   a,$0be4+y
0bd9: d4 b3     mov   $b3+x,a
0bdb: 3f f8 0a  call  $0af8
0bde: f6 e4 0b  mov   a,$0be4+y
0be1: d4 b2     mov   $b2+x,a
0be3: 6f        ret

; note dur%'s/vel
0be4: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

; vcmd e3 - vibrato on
0bec: 5c	lsr   a
0bed: 5c        lsr   a
0bee: 5c        lsr   a
0bef: 5c        lsr   a
0bf0: 1c        asl   a
0bf1: d5 b0 02  mov   $02b0+x,a
0bf4: dd        mov   a,y
0bf5: 28 0f     and   a,#$0f
0bf7: 1c        asl   a
0bf8: 1c        asl   a
0bf9: d5 a1 02  mov   $02a1+x,a
0bfc: 3f f8 0a  call  $0af8
; vcmd e4 - vibrato off
0bff: 1c        asl   a
0c00: 1c        asl   a
0c01: d4 c3     mov   $c3+x,a
0c03: 6f        ret

; vcmd e5 - master volume
0c04: e5 9f 03  mov   a,$039f
0c07: d0 04     bne   $0c0d
0c09: e8 00     mov   a,#$00
0c0b: da 5a     movw  $5a,ya
0c0d: 6f        ret

; vcmd e6 - master volume fade
0c0e: c4 5c     mov   $5c,a
0c10: 3f f8 0a  call  $0af8
0c13: c4 5d     mov   $5d,a
0c15: 80        setc
0c16: a4 5b     sbc   a,$5b
0c18: f8 5c     mov   x,$5c
0c1a: 3f fd 0c  call  $0cfd
0c1d: da 5e     movw  $5e,ya
0c1f: 6f        ret

; vcmd e7 - tempo
0c20: cb 55     mov   $55,y
0c22: 6f        ret

; vcmd e8 - tempo fade
0c23: c4 56     mov   $56,a
0c25: 3f f8 0a  call  $0af8
0c28: c4 57     mov   $57,a
0c2a: 80        setc
0c2b: a4 55     sbc   a,$55
0c2d: f8 56     mov   x,$56
0c2f: 3f fd 0c  call  $0cfd
0c32: da 58     movw  $58,ya
0c34: 6f        ret

; vcmd e9 - global transpose
0c35: c4 52     mov   $52,a
0c37: 6f        ret

; vcmd ea - per-voice transpose
0c38: d5 f0 02  mov   $02f0+x,a
0c3b: 6f        ret

; vcmd ec - set pitch
0c3c: d5 21 02  mov   $0221+x,a
0c3f: 3f f8 0a  call  $0af8
0c42: d5 20 02  mov   $0220+x,a
0c45: 6f        ret

; vcmd eb - set ASDR
0c46: 2d        push  a
0c47: f8 46     mov   x,$46
0c49: e4 46     mov   a,$46
0c4b: 9f        xcn   a
0c4c: 5c        lsr   a
0c4d: 08 05     or    a,#$05
0c4f: fd        mov   y,a
0c50: ae        pop   a
0c51: 08 80     or    a,#$80
0c53: d5 b0 03  mov   $03b0+x,a
0c56: 3f 67 0f  call  $0f67
0c59: fc        inc   y
0c5a: 6d        push  y
0c5b: 3f f8 0a  call  $0af8
0c5e: ee        pop   y
0c5f: d5 c0 03  mov   $03c0+x,a
0c62: 3f 67 0f  call  $0f67
0c65: 6f        ret

; vcmd ed - volume
0c66: d5 10 03  mov   $0310+x,a
0c69: 3f f8 0a  call  $0af8
0c6c: d5 11 03  mov   $0311+x,a
0c6f: 6f        ret

; vcmd ee - nop
0c70: 6f        ret

; vcmd f0 - vibrato
0c71: d5 80 03  mov   $0380+x,a
0c74: 3f f8 0a  call  $0af8
0c77: d5 80 02  mov   $0280+x,a
0c7a: 6f        ret

; vcmd f1 - set echo (1)
0c7b: e8 00     mov   a,#$00
0c7d: da 62     movw  $62,ya
0c7f: 3f f8 0a  call  $0af8
0c82: e8 00     mov   a,#$00
0c84: da 64     movw  $64,ya
0c86: b2 4a     clr5  $4a
0c88: 6f        ret

; vcmd f3 - set echo (3)
0c89: c4 6a     mov   $6a,a
0c8b: 3f f8 0a  call  $0af8
0c8e: c4 6b     mov   $6b,a
0c90: 80        setc
0c91: a4 63     sbc   a,$63
0c93: f8 6a     mov   x,$6a
0c95: 3f fd 0c  call  $0cfd
0c98: da 66     movw  $66,ya
0c9a: 3f f8 0a  call  $0af8
0c9d: c4 6c     mov   $6c,a
0c9f: 80        setc
0ca0: a4 65     sbc   a,$65
0ca2: f8 6a     mov   x,$6a
0ca4: 3f fd 0c  call  $0cfd
0ca7: da 68     movw  $68,ya
0ca9: 6f        ret

; vcmd f2 - set echo (2)
0caa: c4 53     mov   $53,a
0cac: e4 21     mov   a,$21
0cae: 48 ff     eor   a,#$ff
0cb0: 24 53     and   a,$53
0cb2: c4 4c     mov   $4c,a
0cb4: b2 4a     clr5  $4a
0cb6: 6f        ret

0cb7: c4 4f     mov   $4f,a
0cb9: 8d 7d     mov   y,#$7d
0cbb: cc f2 00  mov   $00f2,y
0cbe: e5 f3 00  mov   a,$00f3
0cc1: 64 4f     cmp   a,$4f
0cc3: f0 2b     beq   $0cf0
0cc5: 28 0f     and   a,#$0f
0cc7: 48 ff     eor   a,#$ff
0cc9: f3 4e 03  bbc7  $4e,$0ccf
0ccc: 60        clrc
0ccd: 84 4e     adc   a,$4e
0ccf: c4 4e     mov   $4e,a
0cd1: 8d 04     mov   y,#$04
0cd3: f6 06 07  mov   a,$0706+y
0cd6: c5 f2 00  mov   $00f2,a
0cd9: e8 00     mov   a,#$00
0cdb: c5 f3 00  mov   $00f3,a
0cde: fe f3     dbnz  y,$0cd3
0ce0: e4 4a     mov   a,$4a
0ce2: 08 20     or    a,#$20
0ce4: 8d 6c     mov   y,#$6c
0ce6: 3f 6f 0f  call  $0f6f
0ce9: e4 4f     mov   a,$4f
0ceb: 8d 7d     mov   y,#$7d
0ced: 3f 6f 0f  call  $0f6f
0cf0: 1c        asl   a
0cf1: 1c        asl   a
0cf2: 1c        asl   a
0cf3: 48 ff     eor   a,#$ff
0cf5: 80        setc
0cf6: 88 ff     adc   a,#$ff
0cf8: 8d 6d     mov   y,#$6d
0cfa: 5f 6f 0f  jmp   $0f6f

0cfd: ed        notc
0cfe: 6b 1a     ror   $1a
0d00: 10 03     bpl   $0d05
0d02: 48 ff     eor   a,#$ff
0d04: bc        inc   a
0d05: 8d 00     mov   y,#$00
0d07: 9e        div   ya,x
0d08: 2d        push  a
0d09: e8 00     mov   a,#$00
0d0b: 9e        div   ya,x
0d0c: ee        pop   y
0d0d: f8 46     mov   x,$46
0d0f: f3 1a 08  bbc7  $1a,$0d1a
0d12: da 1c     movw  $1c,ya
0d14: 8d 00     mov   y,#$00
0d16: e8 00     mov   a,#$00
0d18: 9a 1c     subw  ya,$1c
0d1a: 6f        ret

0d1b: e4 43     mov   a,$43
0d1d: eb 5b     mov   y,$5b
0d1f: cf        mul   ya
0d20: f5 01 03  mov   a,$0301+x
0d23: cf        mul   ya
0d24: dd        mov   a,y
0d25: cf        mul   ya
0d26: dd        mov   a,y
0d27: d5 21 03  mov   $0321+x,a
0d2a: f4 a2     mov   a,$a2+x
0d2c: f0 09     beq   $0d37
0d2e: e8 30     mov   a,#$30
0d30: 8d 03     mov   y,#$03
0d32: 9b a2     dec   $a2+x
0d34: 3f 84 0d  call  $0d84
0d37: e4 49     mov   a,$49
0d39: 24 60     and   a,$60
0d3b: f0 46     beq   $0d83
0d3d: f5 31 03  mov   a,$0331+x
0d40: fd        mov   y,a
0d41: f5 30 03  mov   a,$0330+x
0d44: da 18     movw  $18,ya
0d46: 7d        mov   a,x
0d47: 9f        xcn   a
0d48: 5c        lsr   a
0d49: c4 1a     mov   $1a,a
0d4b: eb 19     mov   y,$19
0d4d: f6 77 0f  mov   a,$0f77+y
0d50: 80        setc
0d51: b6 76 0f  sbc   a,$0f76+y
0d54: eb 18     mov   y,$18
0d56: cf        mul   ya
0d57: dd        mov   a,y
0d58: eb 19     mov   y,$19
0d5a: 60        clrc
0d5b: 96 76 0f  adc   a,$0f76+y
0d5e: fd        mov   y,a
0d5f: f5 21 03  mov   a,$0321+x
0d62: cf        mul   ya
0d63: f5 51 03  mov   a,$0351+x
0d66: 1c        asl   a
0d67: 13 1a 01  bbc0  $1a,$0d6b
0d6a: 1c        asl   a
0d6b: dd        mov   a,y
0d6c: 90 03     bcc   $0d71
0d6e: 48 ff     eor   a,#$ff
0d70: bc        inc   a
0d71: eb 1a     mov   y,$1a
0d73: 3f 67 0f  call  $0f67
0d76: 8d 14     mov   y,#$14
0d78: e8 00     mov   a,#$00
0d7a: 9a 18     subw  ya,$18
0d7c: da 18     movw  $18,ya
0d7e: ab 1a     inc   $1a
0d80: 33 1a c8  bbc1  $1a,$0d4b
0d83: 6f        ret

0d84: 09 49 60  or    ($60),($49)
0d87: da 1c     movw  $1c,ya
0d89: da 1e     movw  $1e,ya
0d8b: 4d        push  x
0d8c: ee        pop   y
0d8d: 60        clrc
0d8e: d0 0a     bne   $0d9a
0d90: 98 1f 1e  adc   $1e,#$1f
0d93: e8 00     mov   a,#$00
0d95: d7 1c     mov   ($1c)+y,a
0d97: fc        inc   y
0d98: 2f 09     bra   $0da3
0d9a: 98 10 1e  adc   $1e,#$10
0d9d: 3f a1 0d  call  $0da1
0da0: fc        inc   y
0da1: f7 1c     mov   a,($1c)+y
0da3: 97 1e     adc   a,($1e)+y
0da5: d7 1c     mov   ($1c)+y,a
0da7: 6f        ret

0da8: f4 73     mov   a,$73+x
0daa: f0 2e     beq   $0dda
0dac: 9b 73     dec   $73+x
0dae: f0 05     beq   $0db5
0db0: e8 02     mov   a,#$02
0db2: de 72 25  cbne  $72+x,$0dda
0db5: f4 32     mov   a,$32+x
0db7: fb 33     mov   y,$33+x
0db9: da 1c     movw  $1c,ya
0dbb: 8d 00     mov   y,#$00
0dbd: f7 1c     mov   a,($1c)+y
0dbf: f0 08     beq   $0dc9
0dc1: 68 56     cmp   a,#$56
0dc3: f0 15     beq   $0dda
0dc5: 68 f9     cmp   a,#$f9
0dc7: f0 11     beq   $0dda
0dc9: e8 00     mov   a,#$00
0dcb: d5 80 02  mov   $0280+x,a
0dce: e8 00     mov   a,#$00
0dd0: d5 80 03  mov   $0380+x,a
0dd3: e4 49     mov   a,$49
0dd5: 8d 5c     mov   y,#$5c
0dd7: 3f 67 0f  call  $0f67
0dda: 3f 15 07  call  $0715
0ddd: f5 80 02  mov   a,$0280+x
0de0: f0 04     beq   $0de6
0de2: e2 1b     set7  $1b
0de4: 2f 02     bra   $0de8
0de6: f2 1b     clr7  $1b
0de8: f5 60 03  mov   a,$0360+x
0deb: c4 19     mov   $19,a
0ded: e8 00     mov   a,#$00
0def: c4 18     mov   $18,a
0df1: f4 c3     mov   a,$c3+x
0df3: f0 34     beq   $0e29
0df5: f5 b0 02  mov   a,$02b0+x
0df8: de c2 2c  cbne  $c2+x,$0e27
0dfb: f5 a0 02  mov   a,$02a0+x
0dfe: 60        clrc
0dff: 95 a1 02  adc   a,$02a1+x
0e02: d5 a0 02  mov   $02a0+x,a
0e05: c4 1a     mov   $1a,a
0e07: 1c        asl   a
0e08: 1c        asl   a
0e09: 90 02     bcc   $0e0d
0e0b: 48 ff     eor   a,#$ff
0e0d: fd        mov   y,a
0e0e: f4 c3     mov   a,$c3+x
0e10: 68 f1     cmp   a,#$f1
0e12: 90 05     bcc   $0e19
0e14: 28 0f     and   a,#$0f
0e16: cf        mul   ya
0e17: 2f 04     bra   $0e1d
0e19: cf        mul   ya
0e1a: dd        mov   a,y
0e1b: 8d 00     mov   y,#$00
0e1d: 3f 0f 0d  call  $0d0f
0e20: 7a 18     addw  ya,$18
0e22: da 18     movw  $18,ya
0e24: 5f d5 0e  jmp   $0ed5

0e27: bb c2     inc   $c2+x
0e29: e3 1b f8  bbs7  $1b,$0e24
0e2c: 6f        ret

0e2d: f2 1b     clr7  $1b
0e2f: f5 31 03  mov   a,$0331+x
0e32: fd        mov   y,a
0e33: f5 30 03  mov   a,$0330+x
0e36: da 18     movw  $18,ya
0e38: f4 a2     mov   a,$a2+x
0e3a: f0 0a     beq   $0e46
0e3c: f5 41 03  mov   a,$0341+x
0e3f: fd        mov   y,a
0e40: f5 40 03  mov   a,$0340+x
0e43: 3f 6f 0e  call  $0e6f
0e46: f3 1b 03  bbc7  $1b,$0e4c
0e49: 3f 46 0d  call  $0d46
0e4c: f2 1b     clr7  $1b
0e4e: f5 60 03  mov   a,$0360+x
0e51: c4 19     mov   $19,a
0e53: e8 00     mov   a,#$00
0e55: c4 18     mov   $18,a
0e57: f4 c3     mov   a,$c3+x
0e59: f0 ce     beq   $0e29
0e5b: f5 b0 02  mov   a,$02b0+x
0e5e: de c2 c8  cbne  $c2+x,$0e29
0e61: eb 54     mov   y,$54
0e63: f5 a1 02  mov   a,$02a1+x
0e66: cf        mul   ya
0e67: dd        mov   a,y
0e68: 60        clrc
0e69: 95 a0 02  adc   a,$02a0+x
0e6c: 5f 05 0e  jmp   $0e05

0e6f: e2 1b     set7  $1b
0e71: cb 1a     mov   $1a,y
0e73: 3f 0f 0d  call  $0d0f
0e76: 6d        push  y
0e77: eb 54     mov   y,$54
0e79: cf        mul   ya
0e7a: cb 1c     mov   $1c,y
0e7c: 8f 00 1d  mov   $1d,#$00
0e7f: eb 54     mov   y,$54
0e81: ae        pop   a
0e82: cf        mul   ya
0e83: 7a 1c     addw  ya,$1c
0e85: 3f 0f 0d  call  $0d0f
0e88: 7a 18     addw  ya,$18
0e8a: da 18     movw  $18,ya
0e8c: 6f        ret

0e8d: 3f 08 0b  call  $0b08
0e90: 8d 25     mov   y,#$25
0e92: 2f 05     bra   $0e99
0e94: 6f        ret

0e95: ad 57     cmp   y,#$57
0e97: b0 f4     bcs   $0e8d
0e99: ad 56     cmp   y,#$56
0e9b: d0 06     bne   $0ea3
0e9d: e8 00     mov   a,#$00
0e9f: d5 80 02  mov   $0280+x,a
0ea2: 6f        ret

0ea3: e4 21     mov   a,$21
0ea5: 24 49     and   a,$49
0ea7: d0 eb     bne   $0e94
0ea9: 09 49 47  or    ($47),($49)
0eac: e8 00     mov   a,#$00
0eae: d5 91 02  mov   $0291+x,a
0eb1: d5 90 02  mov   $0290+x,a
0eb4: dc        dec   y
0eb5: dd        mov   a,y
0eb6: 28 7f     and   a,#$7f
0eb8: 60        clrc
0eb9: 84 52     adc   a,$52
0ebb: 60        clrc
0ebc: 95 f0 02  adc   a,$02f0+x
0ebf: d5 60 03  mov   $0360+x,a
0ec2: e8 00     mov   a,#$00
0ec4: d5 a0 02  mov   $02a0+x,a
0ec7: d4 c2     mov   $c2+x,a
0ec9: 09 49 60  or    ($60),($49)
0ecc: f5 60 03  mov   a,$0360+x
0ecf: c4 19     mov   $19,a
0ed1: e8 00     mov   a,#$00
0ed3: c4 18     mov   $18,a
0ed5: 8d 00     mov   y,#$00
0ed7: e4 19     mov   a,$19
0ed9: 80        setc
0eda: a8 34     sbc   a,#$34
0edc: b0 09     bcs   $0ee7
0ede: e4 19     mov   a,$19
0ee0: 80        setc
0ee1: a8 13     sbc   a,#$13
0ee3: b0 06     bcs   $0eeb
0ee5: dc        dec   y
0ee6: 1c        asl   a
0ee7: 7a 18     addw  ya,$18
0ee9: da 18     movw  $18,ya
0eeb: 4d        push  x
0eec: e4 19     mov   a,$19
0eee: 1c        asl   a
0eef: 8d 00     mov   y,#$00
0ef1: cd 18     mov   x,#$18
0ef3: 9e        div   ya,x
0ef4: 5d        mov   x,a
0ef5: f6 ac 0f  mov   a,$0fac+y
0ef8: c4 1d     mov   $1d,a
0efa: f6 ab 0f  mov   a,$0fab+y
0efd: c4 1c     mov   $1c,a
0eff: f6 ae 0f  mov   a,$0fae+y
0f02: 2d        push  a
0f03: f6 ad 0f  mov   a,$0fad+y
0f06: ee        pop   y
0f07: 9a 1c     subw  ya,$1c
0f09: eb 18     mov   y,$18
0f0b: cf        mul   ya
0f0c: dd        mov   a,y
0f0d: 8d 00     mov   y,#$00
0f0f: 7a 1c     addw  ya,$1c
0f11: cb 1d     mov   $1d,y
0f13: 1c        asl   a
0f14: 2b 1d     rol   $1d
0f16: c4 1c     mov   $1c,a
0f18: 2f 04     bra   $0f1e
0f1a: 4b 1d     lsr   $1d
0f1c: 7c        ror   a
0f1d: 3d        inc   x
0f1e: c8 06     cmp   x,#$06
0f20: d0 f8     bne   $0f1a
0f22: c4 1c     mov   $1c,a
0f24: ce        pop   x
0f25: f5 20 02  mov   a,$0220+x
0f28: eb 1d     mov   y,$1d
0f2a: cf        mul   ya
0f2b: da 1e     movw  $1e,ya
0f2d: f5 20 02  mov   a,$0220+x
0f30: eb 1c     mov   y,$1c
0f32: cf        mul   ya
0f33: 6d        push  y
0f34: f5 21 02  mov   a,$0221+x
0f37: eb 1c     mov   y,$1c
0f39: cf        mul   ya
0f3a: 7a 1e     addw  ya,$1e
0f3c: da 1e     movw  $1e,ya
0f3e: f5 21 02  mov   a,$0221+x
0f41: eb 1d     mov   y,$1d
0f43: cf        mul   ya
0f44: fd        mov   y,a
0f45: ae        pop   a
0f46: 7a 1e     addw  ya,$1e
0f48: da 1e     movw  $1e,ya
0f4a: f5 91 02  mov   a,$0291+x
0f4d: fd        mov   y,a
0f4e: f5 90 02  mov   a,$0290+x
0f51: da 1c     movw  $1c,ya
0f53: ba 1e     movw  ya,$1e
0f55: 7a 1c     addw  ya,$1c
0f57: da 1e     movw  $1e,ya
0f59: 7d        mov   a,x
0f5a: 9f        xcn   a
0f5b: 5c        lsr   a
0f5c: 08 02     or    a,#$02
0f5e: fd        mov   y,a
0f5f: e4 1e     mov   a,$1e
0f61: 3f 67 0f  call  $0f67
0f64: fc        inc   y
0f65: e4 1f     mov   a,$1f
0f67: 2d        push  a
0f68: e4 49     mov   a,$49
0f6a: 24 21     and   a,$21
0f6c: ae        pop   a
0f6d: d0 06     bne   $0f75
0f6f: cc f2 00  mov   $00f2,y
0f72: c5 f3 00  mov   $00f3,a
0f75: 6f        ret

; pan table
0f76: db $00,$01,$03,$07,$0d,$15,$1e,$29
0f7e: db $34,$42,$51,$5e,$67,$6e,$73,$77
0f86: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0f8b: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0f93: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0f9b: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0fa3: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; pitch table
0fab: dw $085f
0fae: dw $08de
0fb0: dw $0965
0fb2: dw $09f4
0fb4: dw $0a8c
0fb6: dw $0b2c
0fb8: dw $0bd6
0fba: dw $0c8b
0fbc: dw $0d4a
0fbe: dw $0e14
0fc0: dw $0eea
0fc2: dw $0fcd
0fc4: dw $10be

; version string
0fc5: db "*Ver S1.20*"

0fd0: e8 aa     mov   a,#$aa
0fd2: c5 f4 00  mov   $00f4,a
0fd5: e8 bb     mov   a,#$bb
0fd7: c5 f5 00  mov   $00f5,a
0fda: e5 f4 00  mov   a,$00f4
0fdd: 68 cc     cmp   a,#$cc
0fdf: d0 f9     bne   $0fda
0fe1: e5 f5 00  mov   a,$00f5
0fe4: f0 30     beq   $1016
0fe6: e5 f6 00  mov   a,$00f6
0fe9: ec f7 00  mov   y,$00f7
0fec: da 1c     movw  $1c,ya
0fee: ec f4 00  mov   y,$00f4
0ff1: cc f4 00  mov   $00f4,y
0ff4: ec f4 00  mov   y,$00f4
0ff7: d0 fb     bne   $0ff4
0ff9: 5e f4 00  cmp   y,$00f4
0ffc: f0 09     beq   $1007
0ffe: 10 f9     bpl   $0ff9
1000: 5e f4 00  cmp   y,$00f4
1003: 10 f4     bpl   $0ff9
1005: 2f da     bra   $0fe1
1007: e5 f5 00  mov   a,$00f5
100a: cc f4 00  mov   $00f4,y
100d: d7 1c     mov   ($1c)+y,a
100f: fc        inc   y
1010: d0 e7     bne   $0ff9
1012: ab 1d     inc   $1d
1014: 2f e3     bra   $0ff9
1016: ec f4 00  mov   y,$00f4
1019: cc f4 00  mov   $00f4,y
101c: 8d fc     mov   y,#$fc
101e: dc        dec   y
101f: d0 fd     bne   $101e
1021: e8 00     mov   a,#$00
1023: c5 f5 00  mov   $00f5,a
1026: c5 f6 00  mov   $00f6,a
1029: c5 f7 00  mov   $00f7,a
102c: 6f        ret

102d: d5 f5 00  mov   $00f5+x,a
1030: d8 13     mov   $13,x
1032: 68 80     cmp   a,#$80
1034: 90 12     bcc   $1048
1036: 80        setc
1037: a8 80     sbc   a,#$80
1039: 1c        asl   a
103a: fd        mov   y,a
103b: 7d        mov   a,x
103c: 1c        asl   a
103d: 5d        mov   x,a
103e: e8 00     mov   a,#$00
1040: c4 0f     mov   $0f,a
1042: e8 1b     mov   a,#$1b
1044: c4 10     mov   $10,a
1046: 2f 0e     bra   $1056
1048: 9c        dec   a
1049: 1c        asl   a
104a: fd        mov   y,a
104b: 7d        mov   a,x
104c: 1c        asl   a
104d: 5d        mov   x,a
104e: e8 00     mov   a,#$00
1050: c4 0f     mov   $0f,a
1052: e8 14     mov   a,#$14
1054: c4 10     mov   $10,a
1056: f7 0f     mov   a,($0f)+y
1058: fc        inc   y
1059: d5 09 00  mov   $0009+x,a
105c: f7 0f     mov   a,($0f)+y
105e: d5 0a 00  mov   $000a+x,a
1061: f8 13     mov   x,$13
1063: e8 01     mov   a,#$01
1065: d4 06     mov   $06+x,a
1067: d4 00     mov   $00+x,a
1069: 3f c3 12  call  $12c3
106c: c4 48     mov   $48,a
106e: 2d        push  a
106f: 48 ff     eor   a,#$ff
1071: 24 4c     and   a,$4c
1073: c4 4c     mov   $4c,a
1075: ae        pop   a
1076: 04 21     or    a,$21
1078: c4 21     mov   $21,a
107a: 6f        ret

107b: e8 00     mov   a,#$00
107d: c5 91 03  mov   $0391,a
1080: cd 02     mov   x,#$02
1082: d8 13     mov   $13,x
1084: f4 00     mov   a,$00+x
1086: f0 70     beq   $10f8
1088: 9b 06     dec   $06+x
108a: d0 06     bne   $1092
108c: 3f 35 11  call  $1135
108f: 5f f8 10  jmp   $10f8

1092: f5 9a 03  mov   a,$039a+x
1095: f0 61     beq   $10f8
1097: 28 0f     and   a,#$0f
1099: 1c        asl   a
109a: 1c        asl   a
109b: 1c        asl   a
109c: 1c        asl   a
109d: c5 9e 03  mov   $039e,a
10a0: f5 9a 03  mov   a,$039a+x
10a3: 28 7f     and   a,#$7f
10a5: 5c        lsr   a
10a6: 5c        lsr   a
10a7: 5c        lsr   a
10a8: 5c        lsr   a
10a9: c5 9d 03  mov   $039d,a
10ac: f5 9a 03  mov   a,$039a+x
10af: 28 80     and   a,#$80
10b1: d0 15     bne   $10c8
10b3: f5 97 03  mov   a,$0397+x
10b6: 80        setc
10b7: a5 9e 03  sbc   a,$039e
10ba: d5 97 03  mov   $0397+x,a
10bd: f5 94 03  mov   a,$0394+x
10c0: a5 9d 03  sbc   a,$039d
10c3: d5 94 03  mov   $0394+x,a
10c6: 2f 13     bra   $10db
10c8: f5 97 03  mov   a,$0397+x
10cb: 60        clrc
10cc: 85 9e 03  adc   a,$039e
10cf: d5 97 03  mov   $0397+x,a
10d2: f5 94 03  mov   a,$0394+x
10d5: 85 9d 03  adc   a,$039d
10d8: d5 94 03  mov   $0394+x,a
10db: 8f 03 11  mov   $11,#$03
10de: 3f b7 12  call  $12b7
10e1: c9 f2 00  mov   $00f2,x
10e4: c5 f3 00  mov   $00f3,a
10e7: f8 13     mov   x,$13
10e9: f5 97 03  mov   a,$0397+x
10ec: 8f 02 11  mov   $11,#$02
10ef: 3f b7 12  call  $12b7
10f2: c9 f2 00  mov   $00f2,x
10f5: c5 f3 00  mov   $00f3,a
10f8: f8 13     mov   x,$13
10fa: 1d        dec   x
10fb: 10 85     bpl   $1082
10fd: 6f        ret

10fe: 3f a7 12  call  $12a7
1101: d5 9a 03  mov   $039a+x,a
1104: f8 13     mov   x,$13
1106: 5f 35 11  jmp   $1135

1109: 3f a7 12  call  $12a7
110c: d4 03     mov   $03+x,a
110e: f8 13     mov   x,$13
1110: 5f 35 11  jmp   $1135

1113: 3f c3 12  call  $12c3
1116: 04 4c     or    a,$4c
1118: c4 4c     mov   $4c,a
111a: 5f 35 11  jmp   $1135

111d: 3f c3 12  call  $12c3
1120: 48 ff     eor   a,#$ff
1122: 24 4c     and   a,$4c
1124: c4 4c     mov   $4c,a
1126: 5f 35 11  jmp   $1135

1129: 3f a7 12  call  $12a7
112c: d5 c0 02  mov   $02c0+x,a
112f: d5 c3 02  mov   $02c3+x,a
1132: 5f 35 11  jmp   $1135

1135: 3f a7 12  call  $12a7
1138: 68 f0     cmp   a,#$f0
113a: f0 1b     beq   $1157
113c: 68 f1     cmp   a,#$f1
113e: f0 1e     beq   $115e
1140: 68 f2     cmp   a,#$f2
1142: f0 ba     beq   $10fe
1144: 68 f3     cmp   a,#$f3
1146: f0 c1     beq   $1109
1148: 68 f4     cmp   a,#$f4
114a: f0 c7     beq   $1113
114c: 68 f5     cmp   a,#$f5
114e: f0 cd     beq   $111d
1150: 68 f6     cmp   a,#$f6
1152: f0 d5     beq   $1129
1154: 5f e2 11  jmp   $11e2

1157: e8 00     mov   a,#$00
1159: d5 70 03  mov   $0370+x,a
115c: 2f 05     bra   $1163
115e: e8 01     mov   a,#$01
1160: d5 70 03  mov   $0370+x,a
1163: 3f a7 12  call  $12a7
1166: d4 03     mov   $03+x,a
1168: 3f a7 12  call  $12a7
116b: d5 9a 03  mov   $039a+x,a
116e: 3f a7 12  call  $12a7
1171: 8f 04 11  mov   $11,#$04
1174: 3f b7 12  call  $12b7
1177: c9 f2 00  mov   $00f2,x
117a: c5 f3 00  mov   $00f3,a
117d: f8 13     mov   x,$13
117f: f5 70 03  mov   a,$0370+x
1182: d0 17     bne   $119b
1184: e8 00     mov   a,#$00
1186: 8f 05 11  mov   $11,#$05
1189: 3f b7 12  call  $12b7
118c: c9 f2 00  mov   $00f2,x
118f: c5 f3 00  mov   $00f3,a
1192: 3f c3 12  call  $12c3
1195: 04 47     or    a,$47
1197: c4 47     mov   $47,a
1199: 2f 30     bra   $11cb
119b: 3f a7 12  call  $12a7
119e: 9f        xcn   a
119f: 08 80     or    a,#$80
11a1: 8f 05 11  mov   $11,#$05
11a4: 3f b7 12  call  $12b7
11a7: c9 f2 00  mov   $00f2,x
11aa: c5 f3 00  mov   $00f3,a
11ad: 3f a7 12  call  $12a7
11b0: 28 07     and   a,#$07
11b2: 9f        xcn   a
11b3: 1c        asl   a
11b4: 2d        push  a
11b5: 3f a7 12  call  $12a7
11b8: 28 1f     and   a,#$1f
11ba: c4 11     mov   $11,a
11bc: ae        pop   a
11bd: 04 11     or    a,$11
11bf: 8f 06 11  mov   $11,#$06
11c2: 3f b7 12  call  $12b7
11c5: c9 f2 00  mov   $00f2,x
11c8: c5 f3 00  mov   $00f3,a
11cb: 3f a7 12  call  $12a7
11ce: f8 13     mov   x,$13
11d0: d5 c0 02  mov   $02c0+x,a
11d3: d5 c3 02  mov   $02c3+x,a
11d6: 3f c3 12  call  $12c3
11d9: 04 21     or    a,$21
11db: c4 21     mov   $21,a
11dd: f8 13     mov   x,$13
11df: 5f 35 11  jmp   $1135

11e2: 68 ff     cmp   a,#$ff
11e4: f0 6c     beq   $1252
11e6: 68 fb     cmp   a,#$fb
11e8: f0 56     beq   $1240
11ea: 68 fe     cmp   a,#$fe
11ec: d0 03     bne   $11f1
11ee: 5f 94 12  jmp   $1294

11f1: 8f 03 11  mov   $11,#$03
11f4: 3f b7 12  call  $12b7
11f7: c9 f2 00  mov   $00f2,x
11fa: c5 f3 00  mov   $00f3,a
11fd: f8 13     mov   x,$13
11ff: d5 94 03  mov   $0394+x,a
1202: 3f a7 12  call  $12a7
1205: 2d        push  a
1206: 28 f0     and   a,#$f0
1208: 8f 02 11  mov   $11,#$02
120b: 3f b7 12  call  $12b7
120e: c9 f2 00  mov   $00f2,x
1211: c5 f3 00  mov   $00f3,a
1214: f8 13     mov   x,$13
1216: d5 97 03  mov   $0397+x,a
1219: ae        pop   a
121a: 28 0f     and   a,#$0f
121c: 1c        asl   a
121d: 1c        asl   a
121e: 1c        asl   a
121f: 8f 07 11  mov   $11,#$07
1222: 3f b7 12  call  $12b7
1225: c9 f2 00  mov   $00f2,x
1228: c5 f3 00  mov   $00f3,a
122b: f8 13     mov   x,$13
122d: f5 70 03  mov   a,$0370+x
1230: f0 07     beq   $1239
1232: 3f c3 12  call  $12c3
1235: 04 47     or    a,$47
1237: c4 47     mov   $47,a
1239: f8 13     mov   x,$13
123b: f4 03     mov   a,$03+x
123d: d4 06     mov   $06+x,a
123f: 6f        ret

1240: e4 13     mov   a,$13
1242: 1c        asl   a
1243: 5d        mov   x,a
1244: f4 09     mov   a,$09+x
1246: fb 0a     mov   y,$0a+x
1248: d5 d0 02  mov   $02d0+x,a
124b: dd        mov   a,y
124c: d5 d1 02  mov   $02d1+x,a
124f: 5f 35 11  jmp   $1135

1252: e8 00     mov   a,#$00
1254: d4 00     mov   $00+x,a
1256: d5 f5 00  mov   $00f5+x,a
1259: d5 c0 02  mov   $02c0+x,a
125c: d5 c3 02  mov   $02c3+x,a
125f: 3f c3 12  call  $12c3
1262: cd 5c     mov   x,#$5c
1264: c9 f2 00  mov   $00f2,x
1267: c5 f3 00  mov   $00f3,a
126a: 04 48     or    a,$48
126c: c4 48     mov   $48,a
126e: 3f c3 12  call  $12c3
1271: 48 ff     eor   a,#$ff
1273: 24 21     and   a,$21
1275: c4 21     mov   $21,a
1277: e4 15     mov   a,$15
1279: f0 18     beq   $1293
127b: 3f c3 12  call  $12c3
127e: 24 53     and   a,$53
1280: 04 4c     or    a,$4c
1282: c4 4c     mov   $4c,a
1284: f8 13     mov   x,$13
1286: 7d        mov   a,x
1287: 60        clrc
1288: 88 05     adc   a,#$05
128a: 1c        asl   a
128b: c4 46     mov   $46,a
128d: 8f 00 49  mov   $49,#$00
1290: 3f 7d 0b  call  $0b7d
1293: 6f        ret

1294: e4 13     mov   a,$13
1296: 1c        asl   a
1297: 5d        mov   x,a
1298: f5 d1 02  mov   a,$02d1+x
129b: fd        mov   y,a
129c: f5 d0 02  mov   a,$02d0+x
129f: d4 09     mov   $09+x,a
12a1: db 0a     mov   $0a+x,y
12a3: 5f 35 11  jmp   $1135

12a6: 6f        ret

12a7: e4 13     mov   a,$13
12a9: 1c        asl   a
12aa: 5d        mov   x,a
12ab: e7 09     mov   a,($09+x)
12ad: bb 09     inc   $09+x
12af: d0 02     bne   $12b3
12b1: bb 0a     inc   $0a+x
12b3: f8 13     mov   x,$13
12b5: fd        mov   y,a
12b6: 6f        ret

12b7: 2d        push  a
12b8: e4 13     mov   a,$13
12ba: 9f        xcn   a
12bb: 60        clrc
12bc: 88 50     adc   a,#$50
12be: 04 11     or    a,$11
12c0: 5d        mov   x,a
12c1: ae        pop   a
12c2: 6f        ret

12c3: 6d        push  y
12c4: eb 13     mov   y,$13
12c6: fc        inc   y
12c7: e8 10     mov   a,#$10
12c9: 1c        asl   a
12ca: fe fd     dbnz  y,$12c9
12cc: ee        pop   y
12cd: 6f        ret

12ce: cd 02     mov   x,#$02
12d0: d8 13     mov   $13,x
12d2: f4 00     mov   a,$00+x
12d4: f0 2f     beq   $1305
12d6: f5 c0 02  mov   a,$02c0+x
12d9: f0 2a     beq   $1305
12db: f5 c0 02  mov   a,$02c0+x
12de: 8f 00 11  mov   $11,#$00
12e1: 3f b7 12  call  $12b7
12e4: c9 f2 00  mov   $00f2,x
12e7: c5 f3 00  mov   $00f3,a
12ea: f8 13     mov   x,$13
12ec: f5 c3 02  mov   a,$02c3+x
12ef: 8f 01 11  mov   $11,#$01
12f2: 3f b7 12  call  $12b7
12f5: c9 f2 00  mov   $00f2,x
12f8: c5 f3 00  mov   $00f3,a
12fb: e8 00     mov   a,#$00
12fd: f8 13     mov   x,$13
12ff: d5 c0 02  mov   $02c0+x,a
1302: d5 c3 02  mov   $02c3+x,a
1305: 1d        dec   x
1306: 10 c8     bpl   $12d0
1308: 6f        ret