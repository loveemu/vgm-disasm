; Jaki Crush SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Jaki Crush (1992)

0600: 8f 00 f1  mov   $f1,#$00          ; stop all timers
0603: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to #$80 (62.5 Hz, 16ms)
0606: 8f 02 f1  mov   $f1,#$02          ; start timer0 and timer1
0609: 8f 00 2e  mov   $2e,#$00
060c: 8f 00 eb  mov   $eb,#$00
060f: 3f 42 04  call  $0442
0612: 3f a7 09  call  $09a7
0615: 3f 63 09  call  $0963
0618: 3f a3 11  call  $11a3
061b: 8f 00 e8  mov   $e8,#$00
061e: 8f 00 e9  mov   $e9,#$00
0621: 8f 01 38  mov   $38,#$01
0624: cd 00     mov   x,#$00
0626: f4 80     mov   a,$80+x
0628: f0 06     beq   $0630
062a: e4 38     mov   a,$38
062c: 04 e8     or    a,$e8
062e: c4 e8     mov   $e8,a
0630: c8 07     cmp   x,#$07
0632: b0 0a     bcs   $063e
0634: f4 88     mov   a,$88+x
0636: f0 06     beq   $063e
0638: e4 38     mov   a,$38
063a: 04 e9     or    a,$e9
063c: c4 e9     mov   $e9,a
063e: 3d        inc   x
063f: 0b 38     asl   $38
0641: 90 e3     bcc   $0626
0643: ba 00     movw  ya,$00
0645: da f6     movw  $f6,ya
0647: e4 ea     mov   a,$ea
0649: c4 f4     mov   $f4,a
064b: 64 f4     cmp   a,$f4
064d: d0 fc     bne   $064b
064f: bc        inc   a
0650: c4 ea     mov   $ea,a
0652: e4 f5     mov   a,$f5
0654: 68 e0     cmp   a,#$e0
0656: b0 13     bcs   $066b
0658: f8 eb     mov   x,$eb
065a: c8 08     cmp   x,#$08
065c: 90 07     bcc   $0665
065e: 3f 95 06  call  $0695
0661: cd 00     mov   x,#$00
0663: e4 f5     mov   a,$f5
0665: d4 10     mov   $10+x,a
0667: ab eb     inc   $eb
0669: 2f dc     bra   $0647
066b: fd        mov   y,a
066c: f6 21 06  mov   a,$0621+y
066f: d0 1c     bne   $068d
0671: dd        mov   a,y
0672: f8 eb     mov   x,$eb
0674: c8 08     cmp   x,#$08
0676: 90 07     bcc   $067f
0678: 3f 95 06  call  $0695
067b: cd 00     mov   x,#$00
067d: e4 f5     mov   a,$f5
067f: d4 10     mov   $10+x,a
0681: e4 f6     mov   a,$f6
0683: d4 18     mov   $18+x,a
0685: e4 f7     mov   a,$f7
0687: d4 20     mov   $20+x,a
0689: ab eb     inc   $eb
068b: 2f ba     bra   $0647
068d: dd        mov   a,y
068e: 1c        asl   a
068f: a8 c0     sbc   a,#$c0
0691: 5d        mov   x,a
0692: 1f c1 06  jmp   ($06c1+x)
0695: cd 00     mov   x,#$00
0697: 3e eb     cmp   x,$eb
0699: f0 13     beq   $06ae
069b: f4 10     mov   a,$10+x
069d: 68 e0     cmp   a,#$e0
069f: b0 0e     bcs   $06af
06a1: 4d        push  x
06a2: 3f e1 12  call  $12e1
06a5: ce        pop   x
06a6: 3d        inc   x
06a7: 3e eb     cmp   x,$eb
06a9: d0 f0     bne   $069b
06ab: 8f 00 eb  mov   $eb,#$00
06ae: 6f        ret
06af: 1c        asl   a
06b0: a8 c0     sbc   a,#$c0
06b2: 4d        push  x
06b3: d8 38     mov   $38,x
06b5: 5d        mov   x,a
06b6: eb 38     mov   y,$38
06b8: 3f be 06  call  $06be
06bb: ce        pop   x
06bc: 2f e8     bra   $06a6
06be: 1f c1 06  jmp   ($06c1+x)
; CPU cmd dispatch table
06c1: dw $07b8  ; e0
06c3: dw $07b8  ; e1
06c5: dw $07b8  ; e2
06c7: dw $07b8  ; e3
06c9: dw $07b8  ; e4
06cb: dw $07b8  ; e5
06cd: dw $0784  ; e6
06cf: dw $07b8  ; e7
06d1: dw $07b8  ; e8
06d3: dw $07b8  ; e9
06d5: dw $07b8  ; ea
06d7: dw $07b8  ; eb
06d9: dw $07b8  ; ec
06db: dw $07b8  ; ed
06dd: dw $07b8  ; ee
06df: dw $07b8  ; ef
06e1: dw $07d6  ; f0
06e3: dw $0722  ; f1
06e5: dw $0725  ; f2
06e7: dw $0728  ; f3
06e9: dw $073a  ; f4
06eb: dw $0745  ; f5
06ed: dw $076e  ; f6
06ef: dw $0779  ; f7
06f1: dw $078f  ; f8
06f3: dw $0799  ; f9
06f5: dw $0721  ; fa
06f7: dw $0721  ; fb
06f9: dw $0721  ; fc
06fb: dw $0721  ; fd
06fd: dw $07bb  ; fe - reset
06ff: dw $07cc  ; ff
; CPU cmds FA-FD
0721: 6f        ret
; CPU cmd F1
0722: 5f a7 09  jmp   $09a7
; CPU cmd F2
0725: 5f 23 0a  jmp   $0a23
; CPU cmd F3
0728: 3f 54 07  call  $0754
072b: 8f 1f 66  mov   $66,#$1f
072e: f6 20 00  mov   a,$0020+y
0731: c4 67     mov   $67,a
0733: e4 01     mov   a,$01
0735: 08 30     or    a,#$30
0737: c4 01     mov   $01,a
0739: 6f        ret
; CPU cmd F4
073a: 6d        push  y
073b: f6 20 00  mov   a,$0020+y
073e: 3f e1 12  call  $12e1
0741: ee        pop   y
0742: 8f 00 66  mov   $66,#$00
; CPU cmd F5
0745: 3f 54 07  call  $0754
0748: 8f 1f 67  mov   $67,#$1f
074b: e4 01     mov   a,$01
074d: 28 ef     and   a,#$ef
074f: 08 20     or    a,#$20
0751: c4 01     mov   $01,a
0753: 6f        ret
0754: cd 0d     mov   x,#$0d
0756: f4 80     mov   a,$80+x
0758: f0 08     beq   $0762
075a: 30 06     bmi   $0762
075c: f4 8f     mov   a,$8f+x
075e: 08 08     or    a,#$08
0760: d4 8f     mov   $8f+x,a
0762: 1d        dec   x
0763: 10 f1     bpl   $0756
0765: f6 18 00  mov   a,$0018+y
0768: c4 64     mov   $64,a
076a: 8f ff 65  mov   $65,#$ff
076d: 6f        ret
; CPU cmd F6
076e: e4 01     mov   a,$01
0770: 08 02     or    a,#$02
0772: c4 01     mov   $01,a
0774: e8 00     mov   a,#$00
0776: 5f e1 12  jmp   $12e1
; CPU cmd F7
0779: e4 01     mov   a,$01
077b: 28 fd     and   a,#$fd
077d: c4 01     mov   $01,a
077f: e8 00     mov   a,#$00
0781: 5f e1 12  jmp   $12e1
; CPU cmd E6
0784: e4 e8     mov   a,$e8
0786: c4 f6     mov   $f6,a
0788: e4 e9     mov   a,$e9
078a: c4 f7     mov   $f7,a
078c: 5f 47 06  jmp   $0647
; CPU cmd F8
078f: e4 f7     mov   a,$f7
0791: f8 f6     mov   x,$f6
0793: 48 ff     eor   a,#$ff
0795: 34 00     and   a,$00+x
0797: 2f 06     bra   $079f
; CPU cmd F9
0799: e4 f7     mov   a,$f7
079b: f8 f6     mov   x,$f6
079d: 14 00     or    a,$00+x
079f: d4 00     mov   $00+x,a
07a1: ba 00     movw  ya,$00
07a3: da f6     movw  $f6,ya
07a5: e4 01     mov   a,$01
07a7: 28 08     and   a,#$08
07a9: 68 08     cmp   a,#$08
07ab: e4 44     mov   a,$44
07ad: 28 1f     and   a,#$1f
07af: b0 02     bcs   $07b3
07b1: 08 20     or    a,#$20
07b3: 8f 6c f2  mov   $f2,#$6c
07b6: c4 f3     mov   $f3,a             ;; DSP reg FLG
; CPU cmds E0-EF
07b8: 5f 47 06  jmp   $0647
; CPU cmd FE - reset
07bb: 8f b0 f1  mov   $f1,#$b0          ; clear ports
07be: 8f 6c f2  mov   $f2,#$6c
07c1: 8f e0 f3  mov   $f3,#$e0          ; do soft reset
07c4: 8f 80 f1  mov   $f1,#$80
07c7: cd 00     mov   x,#$00
07c9: 1f fe ff  jmp   ($fffe+x)
; CPU cmd FF
07cc: e4 ea     mov   a,$ea
07ce: c4 f4     mov   $f4,a
07d0: bc        inc   a
07d1: c4 ea     mov   $ea,a
07d3: 5f 18 08  jmp   $0818
; CPU cmd F0
07d6: ba f6     movw  ya,$f6
07d8: da 34     movw  $34,ya
07da: f8 ea     mov   x,$ea
07dc: d8 f4     mov   $f4,x
07de: 3e f4     cmp   x,$f4
07e0: d0 fc     bne   $07de
07e2: 3d        inc   x
07e3: eb f6     mov   y,$f6
07e5: d0 18     bne   $07ff
07e7: d8 f4     mov   $f4,x
07e9: 3e f4     cmp   x,$f4
07eb: d0 fc     bne   $07e9
07ed: 3d        inc   x
07ee: e4 f6     mov   a,$f6
07f0: d7 34     mov   ($34)+y,a
07f2: fc        inc   y
07f3: e4 f7     mov   a,$f7
07f5: d7 34     mov   ($34)+y,a
07f7: fc        inc   y
07f8: d0 ed     bne   $07e7
07fa: d8 ea     mov   $ea,x
07fc: 5f 47 06  jmp   $0647
07ff: cb 38     mov   $38,y
0801: 8d 00     mov   y,#$00
0803: d8 f4     mov   $f4,x
0805: 3e f4     cmp   x,$f4
0807: d0 fc     bne   $0805
0809: 3d        inc   x
080a: e4 f6     mov   a,$f6
080c: d7 34     mov   ($34)+y,a
080e: fc        inc   y
080f: 7e 38     cmp   y,$38
0811: d0 f0     bne   $0803
0813: d8 ea     mov   $ea,x
0815: 5f 47 06  jmp   $0647
;
0818: 3f 95 06  call  $0695
081b: 8f 5c f2  mov   $f2,#$5c
081e: 8f 00 f3  mov   $f3,#$00          ; key off all voices
0821: 3f 63 09  call  $0963
0824: 3f a3 11  call  $11a3
0827: e4 01     mov   a,$01
0829: 28 02     and   a,#$02
082b: d0 0a     bne   $0837
082d: e4 8e     mov   a,$8e
082f: d0 06     bne   $0837
0831: cd 0d     mov   x,#$0d
0833: e8 0e     mov   a,#$0e
0835: 2f 04     bra   $083b
0837: cd 0e     mov   x,#$0e
0839: e8 01     mov   a,#$01
083b: c4 2c     mov   $2c,a
083d: 8f 00 3a  mov   $3a,#$00
0840: d8 2b     mov   $2b,x
0842: f4 80     mov   a,$80+x
0844: d0 03     bne   $0849
0846: 5f 09 09  jmp   $0909
0849: f5 5a 03  mov   a,$035a+x         ; tempo value
084c: f0 09     beq   $0857             ; #$00 means no wait (16ms/tick)
084e: 60        clrc
084f: 95 3b 04  adc   a,$043b+x
0852: d5 3b 04  mov   $043b+x,a         ; add tempo value
0855: 90 50     bcc   $08a7             ; jump if not tick
0857: f4 80     mov   a,$80+x
0859: 28 10     and   a,#$10
085b: d0 3b     bne   $0898
085d: f4 8f     mov   a,$8f+x
085f: 28 04     and   a,#$04
0861: f0 35     beq   $0898
0863: f5 a3 05  mov   a,$05a3+x
0866: f0 30     beq   $0898
0868: 10 0f     bpl   $0879
086a: 28 7f     and   a,#$7f
086c: 60        clrc
086d: 95 f0 03  adc   a,$03f0+x
0870: b0 0e     bcs   $0880
0872: 75 ff 03  cmp   a,$03ff+x
0875: 90 21     bcc   $0898
0877: b0 07     bcs   $0880
0879: 75 f0 03  cmp   a,$03f0+x
087c: f0 02     beq   $0880
087e: b0 18     bcs   $0898
0880: f4 8f     mov   a,$8f+x
0882: 28 fb     and   a,#$fb
0884: d4 8f     mov   $8f+x,a
0886: f4 80     mov   a,$80+x
0888: 28 04     and   a,#$04
088a: d0 0c     bne   $0898
088c: e4 3a     mov   a,$3a
088e: 08 04     or    a,#$04
0890: c4 3a     mov   $3a,a
0892: f4 9e     mov   a,$9e+x
0894: 08 10     or    a,#$10
0896: d4 9e     mov   $9e+x,a
0898: f5 f0 03  mov   a,$03f0+x
089b: bc        inc   a
089c: d5 f0 03  mov   $03f0+x,a         ; inc duration counter
089f: 75 ff 03  cmp   a,$03ff+x
08a2: d0 03     bne   $08a7             ; wait for duration
08a4: 3f e4 0c  call  $0ce4             ; do vcmds
08a7: 3f d1 0e  call  $0ed1
08aa: 3f 17 0f  call  $0f17
08ad: f5 d1 04  mov   a,$04d1+x
08b0: f0 03     beq   $08b5
08b2: 3f 5b 0f  call  $0f5b
08b5: f4 9e     mov   a,$9e+x
08b7: 28 08     and   a,#$08
08b9: f0 03     beq   $08be
08bb: 3f a4 0f  call  $0fa4
08be: 3f 05 10  call  $1005
08c1: 3f 7b 10  call  $107b
08c4: f4 8f     mov   a,$8f+x
08c6: 28 01     and   a,#$01
08c8: f0 03     beq   $08cd
08ca: 3f 1f 11  call  $111f
08cd: 3f b2 11  call  $11b2
08d0: f4 8f     mov   a,$8f+x
08d2: 28 20     and   a,#$20
08d4: f0 33     beq   $0909
08d6: f5 85 05  mov   a,$0585+x
08d9: 60        clrc
08da: 95 94 05  adc   a,$0594+x
08dd: d5 94 05  mov   $0594+x,a
08e0: 90 27     bcc   $0909
08e2: f5 1e 03  mov   a,$031e+x
08e5: 75 76 05  cmp   a,$0576+x
08e8: d0 08     bne   $08f2
08ea: f4 8f     mov   a,$8f+x
08ec: 08 02     or    a,#$02
08ee: d4 8f     mov   $8f+x,a
08f0: 2f 17     bra   $0909
08f2: f4 8f     mov   a,$8f+x
08f4: 28 fd     and   a,#$fd
08f6: d4 8f     mov   $8f+x,a
08f8: 28 10     and   a,#$10
08fa: d0 06     bne   $0902
08fc: f5 1e 03  mov   a,$031e+x
08ff: bc        inc   a
0900: 2f 04     bra   $0906
0902: f5 1e 03  mov   a,$031e+x
0905: 9c        dec   a
0906: d5 1e 03  mov   $031e+x,a
0909: f4 80     mov   a,$80+x
090b: 28 20     and   a,#$20
090d: d0 08     bne   $0917
090f: 1d        dec   x
0910: 8b 2c     dec   $2c
0912: f0 0f     beq   $0923
0914: 5f 3d 08  jmp   $083d
0917: 1d        dec   x
0918: 30 09     bmi   $0923
091a: f4 9e     mov   a,$9e+x
091c: 08 40     or    a,#$40
091e: d4 9e     mov   $9e+x,a
0920: 1d        dec   x
0921: 10 f7     bpl   $091a
0923: e4 01     mov   a,$01
0925: 28 20     and   a,#$20
0927: f0 2a     beq   $0953
0929: e4 64     mov   a,$64
092b: 60        clrc
092c: 84 65     adc   a,$65
092e: c4 65     mov   $65,a
0930: 90 21     bcc   $0953
0932: e4 01     mov   a,$01
0934: 28 10     and   a,#$10
0936: d0 12     bne   $094a
0938: e4 66     mov   a,$66
093a: 64 67     cmp   a,$67
093c: f0 07     beq   $0945
093e: bc        inc   a
093f: c4 66     mov   $66,a
0941: 64 67     cmp   a,$67
0943: d0 0e     bne   $0953
0945: 3f 2e 0a  call  $0a2e
0948: 2f 09     bra   $0953
094a: e4 66     mov   a,$66
094c: 64 67     cmp   a,$67
094e: f0 03     beq   $0953
0950: 9c        dec   a
0951: c4 66     mov   $66,a
0953: e4 3e     mov   a,$3e
0955: 48 ff     eor   a,#$ff
0957: 04 42     or    a,$42
0959: 04 40     or    a,$40
095b: 8f 5c f2  mov   $f2,#$5c
095e: c4 f3     mov   $f3,a             ;; DSP reg KOF
0960: 5f 1b 06  jmp   $061b
;
0963: 8d 00     mov   y,#$00
0965: 4b 3e     lsr   $3e
0967: b0 0e     bcs   $0977
0969: cb f2     mov   $f2,y
096b: 8f 00 f3  mov   $f3,#$00          ; zero voice vol L
096e: fc        inc   y
096f: cb f2     mov   $f2,y
0971: 8f 00 f3  mov   $f3,#$00          ; zero voice vol R
0974: dc        dec   y
0975: 2f 0f     bra   $0986
0977: 6d        push  y
0978: cd 08     mov   x,#$08
097a: cb f2     mov   $f2,y
097c: f6 00 02  mov   a,$0200+y
097f: c4 f3     mov   $f3,a
0981: fc        inc   y
0982: 1d        dec   x
0983: d0 f5     bne   $097a             ; copy $0200+Y to DSP voice regs 00-07
0985: ee        pop   y
0986: dd        mov   a,y
0987: 60        clrc
0988: 88 10     adc   a,#$10
098a: fd        mov   y,a
098b: 10 d8     bpl   $0965             ; do all voices
098d: e4 44     mov   a,$44
098f: 28 1f     and   a,#$1f
0991: 08 20     or    a,#$20
0993: 8f 6c f2  mov   $f2,#$6c
0996: c4 f3     mov   $f3,a             ;; DSP reg FLG
0998: e4 46     mov   a,$46
099a: 8f 3d f2  mov   $f2,#$3d
099d: c4 f3     mov   $f3,a             ;; DSP reg NON
099f: e4 40     mov   a,$40
09a1: 8f 4c f2  mov   $f2,#$4c
09a4: c4 f3     mov   $f3,a             ;; DSP reg KON
09a6: 6f        ret
;
09a7: 8f 6c f2  mov   $f2,#$6c
09aa: 8f 20 f3  mov   $f3,#$20          ; FLG, disable echo
09ad: e4 01     mov   a,$01
09af: 28 0c     and   a,#$0c
09b1: c4 01     mov   $01,a
09b3: e5 00 16  mov   a,$1600
09b6: c4 4e     mov   $4e,a
09b8: e5 01 16  mov   a,$1601
09bb: c4 4f     mov   $4f,a             ; set $4E/F to $1601/2
09bd: e5 02 16  mov   a,$1602
09c0: c4 50     mov   $50,a
09c2: 60        clrc
09c3: 88 11     adc   a,#$11
09c5: c4 52     mov   $52,a
09c7: e5 03 16  mov   a,$1603
09ca: c4 51     mov   $51,a             ; set $50/1 to $1602/3 (duration table address)
09cc: 88 00     adc   a,#$00
09ce: c4 53     mov   $53,a             ; set $52/3 to $1602/3+#$0011
09d0: e5 04 16  mov   a,$1604
09d3: c4 54     mov   $54,a
09d5: e5 05 16  mov   a,$1605
09d8: c4 55     mov   $55,a             ; set $54/5 to $1604/5
09da: e5 06 16  mov   a,$1606
09dd: c4 56     mov   $56,a
09df: e5 07 16  mov   a,$1607
09e2: c4 57     mov   $57,a             ; set $56/7 to $1606/7
09e4: e5 08 16  mov   a,$1608
09e7: c4 58     mov   $58,a
09e9: e5 09 16  mov   a,$1609
09ec: c4 59     mov   $59,a             ; set $58/9 to $1608/9
09ee: e5 0a 16  mov   a,$160a
09f1: c4 5a     mov   $5a,a
09f3: e5 0b 16  mov   a,$160b
09f6: c4 5b     mov   $5b,a             ; set $5A/B to $160A/B
09f8: e5 0c 16  mov   a,$160c
09fb: c4 5c     mov   $5c,a
09fd: e5 0d 16  mov   a,$160d
0a00: c4 5d     mov   $5d,a             ; set $5C/D to $160C/D
0a02: 8f 5d f2  mov   $f2,#$5d
0a05: e5 0e 16  mov   a,$160e
0a08: c4 f3     mov   $f3,a             ; set sample dir from $160E
0a0a: e5 0f 16  mov   a,$160f
0a0d: c4 3d     mov   $3d,a             ; set $3D to $160F
0a0f: e5 12 16  mov   a,$1612
0a12: c4 60     mov   $60,a
0a14: e5 13 16  mov   a,$1613
0a17: c4 61     mov   $61,a             ; set $60/1 to $1612/3
0a19: e5 14 16  mov   a,$1614
0a1c: c4 62     mov   $62,a
0a1e: e5 15 16  mov   a,$1615
0a21: c4 63     mov   $63,a             ; set $62/3 to $1614/5
0a23: 4d        push  x
0a24: cd 0e     mov   x,#$0e
0a26: e8 00     mov   a,#$00
0a28: d4 80     mov   $80+x,a
0a2a: 1d        dec   x
0a2b: 10 f9     bpl   $0a26
0a2d: ce        pop   x
0a2e: e4 01     mov   a,$01
0a30: 28 df     and   a,#$df
0a32: c4 01     mov   $01,a
0a34: e8 1f     mov   a,#$1f
0a36: c4 66     mov   $66,a
0a38: 4d        push  x
0a39: cd 0c     mov   x,#$0c
0a3b: f4 8f     mov   a,$8f+x
0a3d: 28 f7     and   a,#$f7
0a3f: d4 8f     mov   $8f+x,a
0a41: 1d        dec   x
0a42: 10 f7     bpl   $0a3b
0a44: ce        pop   x
0a45: 6f        ret
; vcmd dispatch table
0a46: dw $0aa8  ; 80 - goto
0a48: dw $0ab3  ; 81 - loop end
0a4a: dw $0aff  ; 82 - halt
0a4c: dw $0b0a  ; 83 - set vibrato
0a4e: dw $0b38  ; 84
0a50: dw $0b50  ; 85
0a52: dw $0afa  ; 86
0a54: dw $0b34  ; 87 - set volume
0a56: dw $0b0e  ; 88 - set software volume envelope
0a58: dw $0b12  ; 89 - transpose (relative)
0a5a: dw $0b1d  ; 8a - increase/decrease volume
0a5c: dw $0bee  ; 8b
0a5e: dw $0c28  ; 8c - nop
0a60: dw $0aef  ; 8d - loop begin
0a62: dw $0be0  ; 8e
0a64: dw $0be4  ; 8f
0a66: dw $0b1a  ; 90
0a68: dw $0b66  ; 91
0a6a: dw $0b6b  ; 92
0a6c: dw $0b7e  ; 93
0a6e: dw $0bfa  ; 94
0a70: dw $0bab  ; 95
0a72: dw $0bdc  ; 96 - set tempo
0a74: dw $0c50  ; 97 - tuning
0a76: dw $0c3a  ; 98
0a78: dw $0c18  ; 99
0a7a: dw $0c5a  ; 9a
0a7c: dw $0c6d  ; 9b
0a7e: dw $0bc0  ; 9c
0a80: dw $0c3e  ; 9d
0a82: dw $0bb8  ; 9e
0a84: dw $0c4c  ; 9f - set ADSR
0a86: dw $0c42  ; a0 - set sample
0a88: dw $0c2a  ; a1 - slur on
0a8a: dw $0c32  ; a2 - slur off
0a8c: dw $0c7a  ; a3
0a8e: dw $0ae7  ; a4
0a90: dw $0adb  ; a5
0a92: dw $0cc2  ; a6
0a94: dw $0cc2  ; a7
0a96: dw $0cc4  ; a8
0a98: dw $0cc4  ; a9
0a9a: dw $0cc4  ; aa
0a9c: dw $0cb5  ; ab - set panpot
0a9e: dw $0bea  ; ac
0aa0: dw $0ac7  ; ad - conditional loop
0aa2: dw $0cc4  ; ae
0aa4: dw $0ccc  ; af
0aa6: dw $0cc4  ; b0
                ; b1-bf - crash
; vcmd 80 - goto
0aa8: 5d        mov   x,a
0aa9: fc        inc   y
0aaa: f7 34     mov   a,($34)+y
0aac: c4 35     mov   $35,a
0aae: d8 34     mov   $34,x             ; set $34/5 to arg1/2
0ab0: 8d ff     mov   y,#$ff            ; clear reading index
0ab2: 6f        ret
; vcmd 81 - jump if (--counter != 0)
0ab3: 60        clrc
0ab4: 84 2b     adc   a,$2b
0ab6: 5d        mov   x,a
0ab7: fc        inc   y
0ab8: f5 00 03  mov   a,$0300+x
0abb: 9c        dec   a
0abc: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0abf: f0 04     beq   $0ac5
0ac1: f7 34     mov   a,($34)+y
0ac3: 2f e3     bra   $0aa8             ; if (counter != 0) goto arg2/3
0ac5: fc        inc   y
0ac6: 6f        ret
; vcmd AD - jump if (--counter == 0)
0ac7: 60        clrc
0ac8: 84 2b     adc   a,$2b
0aca: 5d        mov   x,a
0acb: fc        inc   y
0acc: f5 00 03  mov   a,$0300+x
0acf: 9c        dec   a
0ad0: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0ad3: d0 04     bne   $0ad9
0ad5: f7 34     mov   a,($34)+y
0ad7: 2f cf     bra   $0aa8             ; if (counter == 0) goto arg2/3
0ad9: fc        inc   y
0ada: 6f        ret
; vcmd A5
0adb: fc        inc   y
0adc: 75 69 03  cmp   a,$0369+x
0adf: f0 02     beq   $0ae3
0ae1: fc        inc   y
0ae2: 6f        ret
0ae3: f7 34     mov   a,($34)+y
0ae5: 2f c1     bra   $0aa8
; vcmd A4
0ae7: 75 69 03  cmp   a,$0369+x
0aea: f0 02     beq   $0aee
0aec: fc        inc   y
0aed: fc        inc   y
0aee: 6f        ret
; vcmd 8D - loop begin
0aef: 60        clrc
0af0: 84 2b     adc   a,$2b
0af2: 5d        mov   x,a
0af3: fc        inc   y
0af4: f7 34     mov   a,($34)+y
0af6: d5 00 03  mov   $0300+x,a         ; set loop counter ($0300+X+arg1) to arg2
0af9: 6f        ret
; vcmd 86
0afa: f5 4a 04  mov   a,$044a+x
0afd: c4 00     mov   $00,a
; vcmd 82 - halt
0aff: e8 00     mov   a,#$00
0b01: d4 80     mov   $80+x,a
0b03: ae        pop   a
0b04: ae        pop   a
0b05: ae        pop   a
0b06: ae        pop   a
0b07: 5f 09 09  jmp   $0909
; vcmd 83 - set vibrato
0b0a: d5 3c 03  mov   $033c+x,a
0b0d: 6f        ret
; vcmd 88 - set software volume envelope
0b0e: d5 2d 03  mov   $032d+x,a
0b11: 6f        ret
; vcmd 89 - transpose (relative)
0b12: 60        clrc
0b13: 95 4b 03  adc   a,$034b+x
0b16: d5 4b 03  mov   $034b+x,a
0b19: 6f        ret
; vcmd 90
0b1a: d4 80     mov   $80+x,a
0b1c: 6f        ret
; vcmd 8A - increase/decrease volume
0b1d: 60        clrc
0b1e: 30 0d     bmi   $0b2d
0b20: 95 1e 03  adc   a,$031e+x
0b23: 68 1f     cmp   a,#$1f
0b25: 90 02     bcc   $0b29
0b27: e8 1f     mov   a,#$1f
0b29: d5 1e 03  mov   $031e+x,a
0b2c: 6f        ret
0b2d: 95 1e 03  adc   a,$031e+x
0b30: b0 f7     bcs   $0b29
0b32: e8 00     mov   a,#$00
; vcmd 87 - set volume
0b34: d5 1e 03  mov   $031e+x,a
0b37: 6f        ret
; vcmd 84
0b38: f0 0f     beq   $0b49
0b3a: d5 a4 04  mov   $04a4+x,a
0b3d: e8 00     mov   a,#$00
0b3f: d5 b3 04  mov   $04b3+x,a
0b42: f4 9e     mov   a,$9e+x
0b44: 08 08     or    a,#$08
0b46: d4 9e     mov   $9e+x,a
0b48: 6f        ret
0b49: f4 9e     mov   a,$9e+x
0b4b: 28 f7     and   a,#$f7
0b4d: d4 9e     mov   $9e+x,a
0b4f: 6f        ret
; vcmd 85
0b50: f8 eb     mov   x,$eb
0b52: c8 08     cmp   x,#$08
0b54: f0 0f     beq   $0b65
0b56: d4 10     mov   $10+x,a
0b58: 3d        inc   x
0b59: d8 eb     mov   $eb,x
0b5b: fc        inc   y
0b5c: f7 34     mov   a,($34)+y
0b5e: d4 18     mov   $18+x,a
0b60: fc        inc   y
0b61: f7 34     mov   a,($34)+y
0b63: d4 20     mov   $20+x,a
0b65: 6f        ret
; vcmd 91
0b66: 04 00     or    a,$00
0b68: c4 00     mov   $00,a
0b6a: 6f        ret
; vcmd 92
0b6b: 28 03     and   a,#$03
0b6d: c4 38     mov   $38,a
0b6f: e4 01     mov   a,$01
0b71: 28 04     and   a,#$04
0b73: f0 08     beq   $0b7d
0b75: f4 ad     mov   a,$ad+x
0b77: 28 fc     and   a,#$fc
0b79: 04 38     or    a,$38
0b7b: d4 ad     mov   $ad+x,a
0b7d: 6f        ret
; vcmd 93
0b7e: c4 36     mov   $36,a
0b80: 28 1f     and   a,#$1f
0b82: d5 76 05  mov   $0576+x,a
0b85: f4 8f     mov   a,$8f+x
0b87: 28 cd     and   a,#$cd
0b89: 08 20     or    a,#$20
0b8b: cb 37     mov   $37,y
0b8d: eb 36     mov   y,$36
0b8f: 10 02     bpl   $0b93
0b91: 08 10     or    a,#$10
0b93: d4 8f     mov   $8f+x,a
0b95: e8 00     mov   a,#$00
0b97: d5 94 05  mov   $0594+x,a
0b9a: eb 37     mov   y,$37
0b9c: fc        inc   y
0b9d: f7 34     mov   a,($34)+y
0b9f: d5 85 05  mov   $0585+x,a
0ba2: d0 06     bne   $0baa
0ba4: f4 8f     mov   a,$8f+x
0ba6: 28 df     and   a,#$df
0ba8: d4 8f     mov   $8f+x,a
0baa: 6f        ret
; vcmd 95
0bab: f4 8f     mov   a,$8f+x
0bad: 28 02     and   a,#$02
0baf: d0 05     bne   $0bb6
0bb1: f7 34     mov   a,($34)+y
0bb3: 5f a8 0a  jmp   $0aa8
0bb6: fc        inc   y
0bb7: 6f        ret
; vcmd 9E
0bb8: f4 9e     mov   a,$9e+x
0bba: 28 20     and   a,#$20
0bbc: d0 f3     bne   $0bb1
0bbe: fc        inc   y
0bbf: 6f        ret
; vcmd 9C
0bc0: b5 00 03  sbc   a,$0300+x
0bc3: 2d        push  a
0bc4: fc        inc   y
0bc5: f7 34     mov   a,($34)+y
0bc7: c4 36     mov   $36,a
0bc9: fc        inc   y
0bca: f7 34     mov   a,($34)+y
0bcc: c4 37     mov   $37,a
0bce: ae        pop   a
0bcf: 6d        push  y
0bd0: fd        mov   y,a
0bd1: f7 36     mov   a,($36)+y
0bd3: ee        pop   y
0bd4: 60        clrc
0bd5: 95 4b 03  adc   a,$034b+x
0bd8: d5 4b 03  mov   $034b+x,a
0bdb: 6f        ret
; vcmd 96 - set tempo
0bdc: d5 5a 03  mov   $035a+x,a
0bdf: 6f        ret
; vcmd 8E
0be0: d5 58 05  mov   $0558+x,a
0be3: 6f        ret
; vcmd 8F
0be4: 60        clrc
0be5: 95 67 05  adc   a,$0567+x
0be8: 28 1f     and   a,#$1f
; vcmd AC
0bea: d5 67 05  mov   $0567+x,a
0bed: 6f        ret
; vcmd 8B
0bee: 30 03     bmi   $0bf3
0bf0: d5 1d 04  mov   $041d+x,a
0bf3: fc        inc   y
0bf4: f7 34     mov   a,($34)+y
0bf6: d5 2c 04  mov   $042c+x,a
0bf9: 6f        ret
; vcmd 94
0bfa: 30 0c     bmi   $0c08
0bfc: f0 16     beq   $0c14
0bfe: d5 d1 04  mov   $04d1+x,a
0c01: f4 8f     mov   a,$8f+x
0c03: 28 bf     and   a,#$bf
0c05: d4 8f     mov   $8f+x,a
0c07: 6f        ret
0c08: 28 7f     and   a,#$7f
0c0a: d5 d1 04  mov   $04d1+x,a
0c0d: f4 8f     mov   a,$8f+x
0c0f: 08 40     or    a,#$40
0c11: d4 8f     mov   $8f+x,a
0c13: 6f        ret
0c14: d5 d1 04  mov   $04d1+x,a
0c17: 6f        ret
; vcmd 99
0c18: f4 80     mov   a,$80+x
0c1a: 48 10     eor   a,#$10
0c1c: d4 80     mov   $80+x,a
0c1e: 28 10     and   a,#$10
0c20: f0 06     beq   $0c28
0c22: e4 3a     mov   a,$3a
0c24: 08 08     or    a,#$08
0c26: c4 3a     mov   $3a,a
; vcmd 8C
0c28: dc        dec   y
0c29: 6f        ret
; vcmd A1 - slur on
0c2a: f4 80     mov   a,$80+x
0c2c: 08 10     or    a,#$10
0c2e: d4 80     mov   $80+x,a
0c30: 2f f0     bra   $0c22
; vcmd A2 - slur on
0c32: f4 80     mov   a,$80+x
0c34: 28 ef     and   a,#$ef
0c36: d4 80     mov   $80+x,a
0c38: dc        dec   y
0c39: 6f        ret
; vcmd 98
0c3a: d5 69 03  mov   $0369+x,a
0c3d: 6f        ret
; vcmd 9D
0c3e: d5 a3 05  mov   $05a3+x,a
0c41: 6f        ret
; vcmd A0 - set sample
0c42: d5 96 03  mov   $0396+x,a
0c45: e4 3a     mov   a,$3a
0c47: 08 10     or    a,#$10
0c49: c4 3a     mov   $3a,a
0c4b: 6f        ret
; vcmd 9F - set ADSR
0c4c: d5 a5 03  mov   $03a5+x,a
0c4f: 6f        ret
; vcmd 97 - tuning
0c50: f0 04     beq   $0c56
0c52: 60        clrc
0c53: 95 0e 04  adc   a,$040e+x
0c56: d5 0e 04  mov   $040e+x,a
0c59: 6f        ret
; vcmd 9A
0c5a: dd        mov   a,y
0c5b: 80        setc
0c5c: 84 34     adc   a,$34
0c5e: d5 b2 05  mov   $05b2+x,a
0c61: e4 35     mov   a,$35
0c63: 88 00     adc   a,#$00
0c65: d5 c1 05  mov   $05c1+x,a
0c68: f7 34     mov   a,($34)+y
0c6a: 5f a8 0a  jmp   $0aa8
; vcmd 9B
0c6d: f5 b2 05  mov   a,$05b2+x
0c70: c4 34     mov   $34,a
0c72: f5 c1 05  mov   a,$05c1+x
0c75: c4 35     mov   $35,a
0c77: 8d 00     mov   y,#$00
0c79: 6f        ret
; vcmd A3
0c7a: f0 30     beq   $0cac
0c7c: 1c        asl   a
0c7d: 6d        push  y
0c7e: fd        mov   y,a
0c7f: f7 62     mov   a,($62)+y
0c81: d5 68 04  mov   $0468+x,a
0c84: c4 36     mov   $36,a
0c86: fc        inc   y
0c87: f7 62     mov   a,($62)+y
0c89: d5 77 04  mov   $0477+x,a
0c8c: c4 37     mov   $37,a
0c8e: 8d 00     mov   y,#$00
0c90: f7 36     mov   a,($36)+y
0c92: ee        pop   y
0c93: d5 b4 03  mov   $03b4+x,a
0c96: e4 01     mov   a,$01
0c98: 28 04     and   a,#$04
0c9a: d0 04     bne   $0ca0
0c9c: d5 b4 03  mov   $03b4+x,a
0c9f: 6f        ret
0ca0: f4 8f     mov   a,$8f+x
0ca2: 08 01     or    a,#$01
0ca4: d4 8f     mov   $8f+x,a
0ca6: e8 80     mov   a,#$80
0ca8: d5 59 04  mov   $0459+x,a
0cab: 6f        ret
0cac: f4 8f     mov   a,$8f+x
0cae: 28 fe     and   a,#$fe
0cb0: d4 8f     mov   $8f+x,a
0cb2: fc        inc   y
0cb3: f7 34     mov   a,($34)+y
; vcmd AB - set panpot
0cb5: d5 b4 03  mov   $03b4+x,a
0cb8: e4 01     mov   a,$01
0cba: 28 04     and   a,#$04
0cbc: d0 03     bne   $0cc1
0cbe: d5 b4 03  mov   $03b4+x,a
0cc1: 6f        ret
; vcmds A6,A7 - nop
0cc2: dc        dec   y
0cc3: 6f        ret
; vcmds A8,A9,AA,AE,B0
0cc4: f4 ad     mov   a,$ad+x
0cc6: 28 fb     and   a,#$fb
0cc8: d4 ad     mov   $ad+x,a
0cca: dc        dec   y
0ccb: 6f        ret
; vcmd AF
0ccc: f4 ad     mov   a,$ad+x
0cce: 08 04     or    a,#$04
0cd0: d4 ad     mov   $ad+x,a
0cd2: dc        dec   y
0cd3: 6f        ret
; dispatch vcmd in A, read first argument
0cd4: 1c        asl   a
0cd5: 5d        mov   x,a
0cd6: f5 47 0a  mov   a,$0a47+x
0cd9: 2d        push  a
0cda: f5 46 0a  mov   a,$0a46+x
0cdd: 2d        push  a
0cde: f8 2b     mov   x,$2b
0ce0: fc        inc   y
0ce1: f7 34     mov   a,($34)+y
0ce3: 6f        ret
; do vcmds
0ce4: f5 78 03  mov   a,$0378+x
0ce7: c4 34     mov   $34,a
0ce9: f5 87 03  mov   a,$0387+x
0cec: c4 35     mov   $35,a             ; set $34/5 to reading ptr (lo/hi)
0cee: 8d 00     mov   y,#$00            ; zero reading index
0cf0: f7 34     mov   a,($34)+y         ; read vcmd
0cf2: 30 03     bmi   $0cf7             ; vcmds 80-FF
0cf4: 5f 8d 0d  jmp   $0d8d             ; vcmds 00-7F
0cf7: 68 c0     cmp   a,#$c0
0cf9: b0 08     bcs   $0d03
0cfb: 3f d4 0c  call  $0cd4             ; dispatch vcmds 80-BF
0cfe: f8 2b     mov   x,$2b             ; voice number
0d00: fc        inc   y
0d01: 2f ed     bra   $0cf0             ; do next vcmd
0d03: 68 de     cmp   a,#$de
0d05: 90 03     bcc   $0d0a             ; vcmds C0-DD
0d07: 5f 85 0d  jmp   $0d85             ; vcmds DE-FF
0d0a: a8 bf     sbc   a,#$bf
0d0c: 1c        asl   a
0d0d: 1c        asl   a
0d0e: 1c        asl   a
0d0f: 6d        push  y
0d10: fd        mov   y,a
0d11: f7 52     mov   a,($52)+y
0d13: d5 96 03  mov   $0396+x,a
0d16: e4 3a     mov   a,$3a
0d18: 08 10     or    a,#$10
0d1a: c4 3a     mov   $3a,a
0d1c: fc        inc   y
0d1d: f7 52     mov   a,($52)+y
0d1f: d5 a5 03  mov   $03a5+x,a
0d22: fc        inc   y
0d23: f7 52     mov   a,($52)+y
0d25: d5 2d 03  mov   $032d+x,a
0d28: fc        inc   y
0d29: f7 52     mov   a,($52)+y
0d2b: c4 38     mov   $38,a
0d2d: fc        inc   y
0d2e: f7 52     mov   a,($52)+y
0d30: c4 39     mov   $39,a
0d32: 28 1f     and   a,#$1f
0d34: d5 67 05  mov   $0567+x,a
0d37: e4 39     mov   a,$39
0d39: 0d        push  psw
0d3a: 3c        rol   a
0d3b: 3c        rol   a
0d3c: 3c        rol   a
0d3d: 3c        rol   a
0d3e: 28 03     and   a,#$03
0d40: c4 39     mov   $39,a
0d42: f4 80     mov   a,$80+x
0d44: 28 fc     and   a,#$fc
0d46: 04 39     or    a,$39
0d48: d4 80     mov   $80+x,a
0d4a: e4 38     mov   a,$38
0d4c: 8e        pop   psw
0d4d: 30 0a     bmi   $0d59
0d4f: d5 3c 03  mov   $033c+x,a
0d52: e8 00     mov   a,#$00
0d54: d5 d1 04  mov   $04d1+x,a
0d57: 2f 0a     bra   $0d63
0d59: 28 ff     and   a,#$ff
0d5b: 3f fa 0b  call  $0bfa
0d5e: e8 00     mov   a,#$00
0d60: d5 3c 03  mov   $033c+x,a
0d63: fc        inc   y
0d64: f4 ad     mov   a,$ad+x
0d66: 28 04     and   a,#$04
0d68: d0 0b     bne   $0d75
0d6a: e4 01     mov   a,$01
0d6c: 28 04     and   a,#$04
0d6e: f0 02     beq   $0d72
0d70: f7 52     mov   a,($52)+y
0d72: d5 b4 03  mov   $03b4+x,a
0d75: fc        inc   y
0d76: fc        inc   y
0d77: f7 52     mov   a,($52)+y
0d79: d0 11     bne   $0d8c
0d7b: c4 39     mov   $39,a
0d7d: ee        pop   y
0d7e: fc        inc   y
0d7f: f7 34     mov   a,($34)+y         ; read vcmd
0d81: 10 0a     bpl   $0d8d             ; vcmds 00-7F
0d83: 30 0b     bmi   $0d90             ; vcmds 80-FF
; vcmds DE-FF - set duration
0d85: f5 b3 04  mov   a,$04b3+x
0d88: 0d        push  psw
0d89: 5f 99 0d  jmp   $0d99
0d8c: ee        pop   y
; vcmds 00-7F - note
0d8d: c4 39     mov   $39,a             ;; $39 <- note number
0d8f: fc        inc   y
0d90: f5 b3 04  mov   a,$04b3+x
0d93: 0d        push  psw
0d94: e4 39     mov   a,$39             ;; note number?
0d96: d5 b3 04  mov   $04b3+x,a
0d99: f0 2c     beq   $0dc7             ;; jump if ($0540+X == 0) (rest)
0d9b: 2d        push  a
0d9c: f4 9e     mov   a,$9e+x
0d9e: 28 08     and   a,#$08
0da0: f0 24     beq   $0dc6
0da2: f4 bc     mov   a,$bc+x
0da4: c4 36     mov   $36,a
0da6: f4 cb     mov   a,$cb+x
0da8: c4 37     mov   $37,a
0daa: ae        pop   a
0dab: 3f 79 0e  call  $0e79
0dae: f4 bc     mov   a,$bc+x
0db0: d5 86 04  mov   $0486+x,a
0db3: f4 cb     mov   a,$cb+x
0db5: d5 95 04  mov   $0495+x,a
0db8: 8e        pop   psw
0db9: 0d        push  psw
0dba: f0 0e     beq   $0dca
0dbc: e4 36     mov   a,$36
0dbe: d4 bc     mov   $bc+x,a
0dc0: e4 37     mov   a,$37
0dc2: d4 cb     mov   $cb+x,a
0dc4: 2f 04     bra   $0dca
0dc6: ae        pop   a
0dc7: 3f 79 0e  call  $0e79
0dca: f7 34     mov   a,($34)+y         ; read vcmd
0dcc: 68 ef     cmp   a,#$ef
0dce: 90 1c     bcc   $0dec             ; vcmds 00-EE
0dd0: a8 ef     sbc   a,#$ef
0dd2: d0 05     bne   $0dd9             ; vcmds F0-FF
0dd4: fc        inc   y                 ; vcmd EF, inc reading ptr
0dd5: f7 34     mov   a,($34)+y         ; read argument
0dd7: b0 07     bcs   $0de0
0dd9: cb 36     mov   $36,y
0ddb: fd        mov   y,a
0ddc: f7 50     mov   a,($50)+y         ; read duration from table
0dde: eb 36     mov   y,$36
0de0: fc        inc   y
0de1: d5 ff 03  mov   $03ff+x,a
0de4: f7 34     mov   a,($34)+y
0de6: d5 a3 05  mov   $05a3+x,a
0de9: fc        inc   y
0dea: 2f 16     bra   $0e02
0dec: a8 dd     sbc   a,#$dd
0dee: 90 12     bcc   $0e02             ; vcmds 00-DD
0df0: d0 05     bne   $0df7             ; vcmds DF-EE
0df2: fc        inc   y                 ; vcmd DE, inc reading ptr
0df3: f7 34     mov   a,($34)+y         ; read argument
0df5: b0 07     bcs   $0dfe             ; branch always
0df7: cb 36     mov   $36,y
0df9: fd        mov   y,a
0dfa: f7 50     mov   a,($50)+y         ; read duration from table
0dfc: eb 36     mov   y,$36
0dfe: fc        inc   y                 ; inc reading ptr
0dff: d5 ff 03  mov   $03ff+x,a         ; set duration
0e02: e8 00     mov   a,#$00
0e04: d5 f0 03  mov   $03f0+x,a         ; zero duration counter
0e07: 8e        pop   psw
0e08: f0 2c     beq   $0e36             ;; jump if ($0540+X == 0) (rest)
0e0a: f4 80     mov   a,$80+x
0e0c: 28 10     and   a,#$10
0e0e: f0 14     beq   $0e24
0e10: e4 3a     mov   a,$3a
0e12: 28 08     and   a,#$08
0e14: d0 0e     bne   $0e24
0e16: f4 9e     mov   a,$9e+x
0e18: 28 40     and   a,#$40
0e1a: f0 42     beq   $0e5e
0e1c: e4 3a     mov   a,$3a
0e1e: 08 40     or    a,#$40
0e20: c4 3a     mov   $3a,a
0e22: 2f 3a     bra   $0e5e
0e24: f4 80     mov   a,$80+x
0e26: 28 04     and   a,#$04
0e28: f0 0c     beq   $0e36
0e2a: e4 3a     mov   a,$3a
0e2c: 28 10     and   a,#$10
0e2e: d0 06     bne   $0e36
0e30: f4 9e     mov   a,$9e+x
0e32: 28 50     and   a,#$50
0e34: f0 06     beq   $0e3c
;
0e36: e4 3a     mov   a,$3a
0e38: 08 40     or    a,#$40
0e3a: c4 3a     mov   $3a,a
0e3c: e8 01     mov   a,#$01
0e3e: d5 0d 05  mov   $050d+x,a         ; set $050d+X to #$01
0e41: d5 2b 05  mov   $052b+x,a         ; set $052b+X to #$01
0e44: d5 49 05  mov   $0549+x,a         ; set $0549+X to #$01
0e47: d5 ef 04  mov   $04ef+x,a         ; set $04ef+X to #$01
0e4a: e8 ff     mov   a,#$ff
0e4c: d5 fe 04  mov   $04fe+x,a         ; set $04fe+X to #$ff
0e4f: d5 3a 05  mov   $053a+x,a         ; set $053a+X to #$ff
0e52: d5 e0 04  mov   $04e0+x,a         ; set $04e0+X to #$ff
0e55: d5 1c 05  mov   $051c+x,a         ; set $051c+X to #$ff
0e58: f4 8f     mov   a,$8f+x
0e5a: 08 04     or    a,#$04
0e5c: d4 8f     mov   $8f+x,a
0e5e: dd        mov   a,y
0e5f: 60        clrc
0e60: 84 34     adc   a,$34
0e62: d5 78 03  mov   $0378+x,a
0e65: e4 35     mov   a,$35
0e67: 88 00     adc   a,#$00
0e69: d5 87 03  mov   $0387+x,a         ; set reading ptr (lo/hi) to $34/5 + Y
0e6c: e4 3a     mov   a,$3a
0e6e: 08 80     or    a,#$80
0e70: c4 3a     mov   $3a,a
0e72: f4 9e     mov   a,$9e+x
0e74: 28 af     and   a,#$af
0e76: d4 9e     mov   $9e+x,a
0e78: 6f        ret
0e79: d4 bc     mov   $bc+x,a
0e7b: 28 ff     and   a,#$ff
0e7d: d0 03     bne   $0e82
0e7f: d4 cb     mov   $cb+x,a
0e81: 6f        ret
;
0e82: f4 80     mov   a,$80+x
0e84: 28 08     and   a,#$08
0e86: f0 13     beq   $0e9b
0e88: e8 01     mov   a,#$01
0e8a: d4 cb     mov   $cb+x,a
0e8c: f4 bc     mov   a,$bc+x
0e8e: 9c        dec   a
0e8f: 60        clrc
0e90: 95 4b 03  adc   a,$034b+x
0e93: d4 bc     mov   $bc+x,a
0e95: 28 1f     and   a,#$1f
0e97: d5 67 05  mov   $0567+x,a
0e9a: 6f        ret
;
0e9b: f4 bc     mov   a,$bc+x
0e9d: 60        clrc
0e9e: 95 4b 03  adc   a,$034b+x
0ea1: 68 79     cmp   a,#$79
0ea3: b0 25     bcs   $0eca
0ea5: c4 38     mov   $38,a             ; save note number
0ea7: 6d        push  y
0ea8: f5 96 03  mov   a,$0396+x         ; instrument #
0eab: fd        mov   y,a
0eac: f7 60     mov   a,($60)+y         ; read per-instrument tuning (semitones)
0eae: 60        clrc
0eaf: 84 38     adc   a,$38
0eb1: 1c        asl   a
0eb2: fd        mov   y,a
0eb3: 60        clrc
0eb4: f5 0e 04  mov   a,$040e+x
0eb7: 0d        push  psw
0eb8: 96 aa 13  adc   a,$13aa+y         ; read pitch table
0ebb: d4 bc     mov   $bc+x,a
0ebd: f6 ab 13  mov   a,$13ab+y
0ec0: 88 00     adc   a,#$00
0ec2: 8e        pop   psw
0ec3: 10 01     bpl   $0ec6
0ec5: 9c        dec   a
0ec6: d4 cb     mov   $cb+x,a
0ec8: ee        pop   y
0ec9: 6f        ret
;
0eca: e8 00     mov   a,#$00
0ecc: d4 bc     mov   $bc+x,a
0ece: d4 cb     mov   $cb+x,a
0ed0: 6f        ret
; read ADSR from $5c[$03a5+x] to $3b/c
0ed1: f5 a5 03  mov   a,$03a5+x
0ed4: 1c        asl   a
0ed5: b0 0b     bcs   $0ee2
0ed7: fd        mov   y,a
0ed8: f7 5c     mov   a,($5c)+y
0eda: c4 3b     mov   $3b,a
0edc: fc        inc   y
0edd: f7 5c     mov   a,($5c)+y
0edf: c4 3c     mov   $3c,a
0ee1: 6f        ret
; reset ADSR if the index >= 0x80
0ee2: 8f 00 3b  mov   $3b,#$00
0ee5: d0 04     bne   $0eeb
0ee7: 8f 7f 3c  mov   $3c,#$7f
0eea: 6f        ret
;
0eeb: fd        mov   y,a
0eec: f7 5a     mov   a,($5a)+y
0eee: c4 36     mov   $36,a
0ef0: fc        inc   y
0ef1: f7 5a     mov   a,($5a)+y
0ef3: c4 37     mov   $37,a
0ef5: f5 ef 04  mov   a,$04ef+x
0ef8: 9c        dec   a
0ef9: d5 ef 04  mov   $04ef+x,a
0efc: f0 06     beq   $0f04
0efe: f5 e0 04  mov   a,$04e0+x
0f01: fd        mov   y,a
0f02: 2f 0e     bra   $0f12
0f04: f5 e0 04  mov   a,$04e0+x
0f07: fd        mov   y,a
0f08: 3f e9 10  call  $10e9
0f0b: d5 ef 04  mov   $04ef+x,a
0f0e: dd        mov   a,y
0f0f: d5 e0 04  mov   $04e0+x,a
0f12: f7 36     mov   a,($36)+y
0f14: c4 3c     mov   $3c,a
0f16: 6f        ret
; read software envelope params
0f17: f5 2d 03  mov   a,$032d+x
0f1a: d0 06     bne   $0f22
0f1c: f5 1e 03  mov   a,$031e+x
0f1f: c4 2a     mov   $2a,a
0f21: 6f        ret
0f22: 1c        asl   a
0f23: fd        mov   y,a
0f24: f7 54     mov   a,($54)+y
0f26: c4 36     mov   $36,a
0f28: fc        inc   y
0f29: f7 54     mov   a,($54)+y
0f2b: c4 37     mov   $37,a
0f2d: f5 0d 05  mov   a,$050d+x
0f30: 9c        dec   a
0f31: d5 0d 05  mov   $050d+x,a
0f34: f0 07     beq   $0f3d
0f36: f5 fe 04  mov   a,$04fe+x
0f39: fd        mov   y,a
0f3a: 5f 4b 0f  jmp   $0f4b
0f3d: f5 fe 04  mov   a,$04fe+x
0f40: fd        mov   y,a
0f41: 3f e9 10  call  $10e9
0f44: d5 0d 05  mov   $050d+x,a
0f47: dd        mov   a,y
0f48: d5 fe 04  mov   $04fe+x,a
0f4b: f7 36     mov   a,($36)+y
0f4d: bc        inc   a
0f4e: 1c        asl   a
0f4f: 1c        asl   a
0f50: fd        mov   y,a
0f51: f5 1e 03  mov   a,$031e+x
0f54: cf        mul   ya
0f55: 1c        asl   a
0f56: dd        mov   a,y
0f57: 3c        rol   a
0f58: c4 2a     mov   $2a,a
0f5a: 6f        ret
;
0f5b: c4 38     mov   $38,a
0f5d: e4 3a     mov   a,$3a
0f5f: 10 0d     bpl   $0f6e
0f61: f5 b3 04  mov   a,$04b3+x
0f64: f0 04     beq   $0f6a
0f66: 60        clrc
0f67: 95 4b 03  adc   a,$034b+x
0f6a: d5 c2 04  mov   $04c2+x,a
0f6d: 6f        ret
0f6e: f4 8f     mov   a,$8f+x
0f70: 28 40     and   a,#$40
0f72: d0 12     bne   $0f86
0f74: f5 c2 04  mov   a,$04c2+x
0f77: f0 f4     beq   $0f6d
0f79: 80        setc
0f7a: a4 38     sbc   a,$38
0f7c: 90 1c     bcc   $0f9a
0f7e: f0 1a     beq   $0f9a
0f80: d5 c2 04  mov   $04c2+x,a
0f83: 5f a1 0e  jmp   $0ea1
0f86: f5 c2 04  mov   a,$04c2+x
0f89: f0 e2     beq   $0f6d
0f8b: 60        clrc
0f8c: 84 38     adc   a,$38
0f8e: b0 0a     bcs   $0f9a
0f90: 68 79     cmp   a,#$79
0f92: b0 06     bcs   $0f9a
0f94: d5 c2 04  mov   $04c2+x,a
0f97: 5f a1 0e  jmp   $0ea1
0f9a: e8 00     mov   a,#$00
0f9c: d5 c2 04  mov   $04c2+x,a
0f9f: d4 bc     mov   $bc+x,a
0fa1: d4 cb     mov   $cb+x,a
0fa3: 6f        ret
;
0fa4: f5 b3 04  mov   a,$04b3+x
0fa7: f0 0e     beq   $0fb7
0fa9: f4 cb     mov   a,$cb+x
0fab: 75 95 04  cmp   a,$0495+x
0fae: d0 27     bne   $0fd7
0fb0: f4 bc     mov   a,$bc+x
0fb2: 75 86 04  cmp   a,$0486+x
0fb5: d0 01     bne   $0fb8
0fb7: 6f        ret
0fb8: 90 10     bcc   $0fca
0fba: b5 a4 04  sbc   a,$04a4+x
0fbd: 90 05     bcc   $0fc4
0fbf: 75 86 04  cmp   a,$0486+x
0fc2: b0 10     bcs   $0fd4
0fc4: f5 86 04  mov   a,$0486+x
0fc7: d4 bc     mov   $bc+x,a
0fc9: 6f        ret
0fca: 95 a4 04  adc   a,$04a4+x
0fcd: b0 f5     bcs   $0fc4
0fcf: 75 86 04  cmp   a,$0486+x
0fd2: b0 f0     bcs   $0fc4
0fd4: d4 bc     mov   $bc+x,a
0fd6: 6f        ret
;
0fd7: f4 bc     mov   a,$bc+x
0fd9: 90 15     bcc   $0ff0
0fdb: b5 a4 04  sbc   a,$04a4+x
0fde: d4 bc     mov   $bc+x,a
0fe0: b0 f4     bcs   $0fd6
0fe2: f4 cb     mov   a,$cb+x
0fe4: 9c        dec   a
0fe5: d4 cb     mov   $cb+x,a
0fe7: 75 95 04  cmp   a,$0495+x
0fea: d0 ea     bne   $0fd6
0fec: f4 bc     mov   a,$bc+x
0fee: b0 cf     bcs   $0fbf
0ff0: 95 a4 04  adc   a,$04a4+x
0ff3: d4 bc     mov   $bc+x,a
0ff5: 90 df     bcc   $0fd6
0ff7: f4 cb     mov   a,$cb+x
0ff9: bc        inc   a
0ffa: d4 cb     mov   $cb+x,a
0ffc: 75 95 04  cmp   a,$0495+x
0fff: d0 d5     bne   $0fd6
1001: f4 bc     mov   a,$bc+x
1003: b0 ca     bcs   $0fcf
1005: f4 bc     mov   a,$bc+x
1007: c4 28     mov   $28,a
1009: f4 cb     mov   a,$cb+x
100b: c4 29     mov   $29,a
100d: 04 28     or    a,$28
100f: f0 05     beq   $1016
1011: f5 3c 03  mov   a,$033c+x
1014: d0 01     bne   $1017
1016: 6f        ret
; read vibrato params
1017: 1c        asl   a
1018: fd        mov   y,a
1019: f7 56     mov   a,($56)+y
101b: c4 36     mov   $36,a
101d: fc        inc   y
101e: f7 56     mov   a,($56)+y
1020: c4 37     mov   $37,a
1022: f5 2b 05  mov   a,$052b+x
1025: 9c        dec   a
1026: d5 2b 05  mov   $052b+x,a
1029: f0 07     beq   $1032
102b: f5 1c 05  mov   a,$051c+x
102e: fd        mov   y,a
102f: 5f 40 10  jmp   $1040
1032: f5 1c 05  mov   a,$051c+x
1035: fd        mov   y,a
1036: 3f e9 10  call  $10e9
1039: d5 2b 05  mov   $052b+x,a
103c: dd        mov   a,y
103d: d5 1c 05  mov   $051c+x,a
1040: f7 36     mov   a,($36)+y
1042: 60        clrc
1043: 30 12     bmi   $1057
1045: 84 28     adc   a,$28
1047: c4 28     mov   $28,a
1049: e8 00     mov   a,#$00
104b: 84 29     adc   a,$29
104d: c4 29     mov   $29,a
104f: b0 14     bcs   $1065
1051: 68 40     cmp   a,#$40
1053: 90 16     bcc   $106b
1055: b0 0e     bcs   $1065
1057: 84 28     adc   a,$28
1059: c4 28     mov   $28,a
105b: e8 ff     mov   a,#$ff
105d: 84 29     adc   a,$29
105f: c4 29     mov   $29,a
1061: b0 08     bcs   $106b
1063: 90 00     bcc   $1065
1065: e8 00     mov   a,#$00
1067: c4 28     mov   $28,a
1069: c4 29     mov   $29,a
106b: f5 3c 03  mov   a,$033c+x
106e: 30 0a     bmi   $107a
1070: e4 28     mov   a,$28
1072: d5 bc 00  mov   $00bc+x,a
1075: e4 29     mov   a,$29
1077: d5 cb 00  mov   $00cb+x,a
107a: 6f        ret
;
107b: f5 58 05  mov   a,$0558+x
107e: 30 30     bmi   $10b0
1080: 68 20     cmp   a,#$20
1082: b0 09     bcs   $108d
1084: 95 67 05  adc   a,$0567+x
1087: 28 1f     and   a,#$1f
1089: d5 67 05  mov   $0567+x,a
108c: 6f        ret
;
108d: 68 30     cmp   a,#$30
108f: b0 0b     bcs   $109c
1091: 95 67 05  adc   a,$0567+x
1094: 28 0f     and   a,#$0f
1096: 08 10     or    a,#$10
1098: d5 67 05  mov   $0567+x,a
109b: 6f        ret
;
109c: 60        clrc
109d: c4 38     mov   $38,a
109f: 95 67 05  adc   a,$0567+x
10a2: 28 07     and   a,#$07
10a4: c4 39     mov   $39,a
10a6: e4 38     mov   a,$38
10a8: 28 18     and   a,#$18
10aa: 04 39     or    a,$39
10ac: d5 67 05  mov   $0567+x,a
10af: 6f        ret
;
10b0: 1c        asl   a
10b1: d0 09     bne   $10bc
10b3: f5 67 05  mov   a,$0567+x
10b6: 48 1f     eor   a,#$1f
10b8: d5 67 05  mov   $0567+x,a
10bb: 6f        ret
;
10bc: fd        mov   y,a
10bd: f7 58     mov   a,($58)+y
10bf: c4 36     mov   $36,a
10c1: fc        inc   y
10c2: f7 58     mov   a,($58)+y
10c4: c4 37     mov   $37,a
10c6: f5 49 05  mov   a,$0549+x
10c9: 9c        dec   a
10ca: d5 49 05  mov   $0549+x,a
10cd: f0 06     beq   $10d5
10cf: f5 3a 05  mov   a,$053a+x
10d2: fd        mov   y,a
10d3: 2f 0e     bra   $10e3
10d5: f5 3a 05  mov   a,$053a+x
10d8: fd        mov   y,a
10d9: 3f e9 10  call  $10e9
10dc: d5 49 05  mov   $0549+x,a
10df: dd        mov   a,y
10e0: d5 3a 05  mov   $053a+x,a
10e3: f7 36     mov   a,($36)+y
10e5: d5 67 05  mov   $0567+x,a
10e8: 6f        ret
;
10e9: fc        inc   y
10ea: f7 36     mov   a,($36)+y
10ec: 30 02     bmi   $10f0
10ee: fc        inc   y
10ef: 6f        ret
10f0: 68 81     cmp   a,#$81
10f2: f0 06     beq   $10fa
10f4: b0 0c     bcs   $1102
10f6: e8 00     mov   a,#$00
10f8: dc        dec   y
10f9: 6f        ret
;
10fa: dd        mov   a,y
10fb: fc        inc   y
10fc: 80        setc
10fd: b7 36     sbc   a,($36)+y
10ff: fd        mov   y,a
1100: 2f e8     bra   $10ea
1102: ad 83     cmp   y,#$83
1104: f0 06     beq   $110c
1106: b0 0e     bcs   $1116
1108: 8d 00     mov   y,#$00
110a: 2f de     bra   $10ea
110c: f4 8f     mov   a,$8f+x
110e: 28 04     and   a,#$04
1110: f0 0a     beq   $111c
1112: e8 01     mov   a,#$01
1114: 2f e2     bra   $10f8
1116: f4 8f     mov   a,$8f+x
1118: 28 04     and   a,#$04
111a: d0 de     bne   $10fa
111c: fc        inc   y
111d: 2f cb     bra   $10ea
;
111f: f5 68 04  mov   a,$0468+x
1122: c4 36     mov   $36,a
1124: f5 77 04  mov   a,$0477+x
1127: c4 37     mov   $37,a
1129: 8d 01     mov   y,#$01
112b: f7 36     mov   a,($36)+y
112d: 48 80     eor   a,#$80
112f: c4 38     mov   $38,a
1131: f5 b4 03  mov   a,$03b4+x
1134: 48 80     eor   a,#$80
1136: c4 39     mov   $39,a
1138: fc        inc   y
1139: f7 36     mov   a,($36)+y
113b: 60        clrc
113c: 95 59 04  adc   a,$0459+x
113f: d5 59 04  mov   $0459+x,a
1142: fc        inc   y
1143: f7 36     mov   a,($36)+y
1145: 30 0e     bmi   $1155
1147: 84 39     adc   a,$39
1149: b0 14     bcs   $115f
114b: 64 38     cmp   a,$38
114d: b0 10     bcs   $115f
114f: 48 80     eor   a,#$80
1151: d5 b4 03  mov   $03b4+x,a
1154: 6f        ret
1155: 84 39     adc   a,$39
1157: 90 06     bcc   $115f
1159: 64 38     cmp   a,$38
115b: 90 02     bcc   $115f
115d: d0 f0     bne   $114f
115f: fc        inc   y
1160: f7 36     mov   a,($36)+y
1162: fc        inc   y
1163: 77 36     cmp   a,($36)+y
1165: f0 13     beq   $117a
1167: d5 b4 03  mov   $03b4+x,a
116a: dc        dec   y
116b: dd        mov   a,y
116c: 60        clrc
116d: 84 36     adc   a,$36
116f: d5 68 04  mov   $0468+x,a
1172: e4 37     mov   a,$37
1174: 88 00     adc   a,#$00
1176: d5 77 04  mov   $0477+x,a
1179: 6f        ret
117a: fc        inc   y
117b: f7 36     mov   a,($36)+y
117d: c4 34     mov   $34,a
117f: fc        inc   y
1180: 17 36     or    a,($36)+y
1182: f0 11     beq   $1195
1184: f7 36     mov   a,($36)+y
1186: c4 37     mov   $37,a
1188: e4 34     mov   a,$34
118a: c4 36     mov   $36,a
118c: 8d 00     mov   y,#$00
118e: f7 36     mov   a,($36)+y
1190: d5 b4 03  mov   $03b4+x,a
1193: 2f d6     bra   $116b
1195: e4 38     mov   a,$38
1197: 48 80     eor   a,#$80
1199: d5 b4 03  mov   $03b4+x,a
119c: f4 8f     mov   a,$8f+x
119e: 28 fe     and   a,#$fe
11a0: d4 8f     mov   $8f+x,a
11a2: 6f        ret
;
11a3: e8 00     mov   a,#$00
11a5: c4 3e     mov   $3e,a
11a7: c4 40     mov   $40,a
11a9: c4 42     mov   $42,a
11ab: c4 46     mov   $46,a
11ad: e8 ff     mov   a,#$ff
11af: c4 44     mov   $44,a
11b1: 6f        ret
11b2: f4 9e     mov   a,$9e+x
11b4: 28 40     and   a,#$40
11b6: d0 f9     bne   $11b1
11b8: f5 69 03  mov   a,$0369+x
11bb: fd        mov   y,a
11bc: 1c        asl   a
11bd: 1c        asl   a
11be: 1c        asl   a
11bf: 1c        asl   a
11c0: c4 39     mov   $39,a
11c2: f6 d9 12  mov   a,$12d9+y
11c5: c4 38     mov   $38,a
11c7: 24 3e     and   a,$3e
11c9: f0 07     beq   $11d2
11cb: f4 9e     mov   a,$9e+x
11cd: 08 40     or    a,#$40
11cf: d4 9e     mov   $9e+x,a
11d1: 6f        ret
11d2: e4 28     mov   a,$28
11d4: 04 29     or    a,$29
11d6: f0 d9     beq   $11b1
11d8: f4 8f     mov   a,$8f+x
11da: 28 08     and   a,#$08
11dc: f0 1b     beq   $11f9
11de: e4 01     mov   a,$01
11e0: 28 20     and   a,#$20
11e2: d0 08     bne   $11ec
11e4: f4 8f     mov   a,$8f+x
11e6: 28 f7     and   a,#$f7
11e8: d4 8f     mov   $8f+x,a
11ea: 2f 0d     bra   $11f9
11ec: e4 66     mov   a,$66
11ee: bc        inc   a
11ef: 1c        asl   a
11f0: 1c        asl   a
11f1: eb 2a     mov   y,$2a
11f3: cf        mul   ya
11f4: 1c        asl   a
11f5: dd        mov   a,y
11f6: 3c        rol   a
11f7: c4 2a     mov   $2a,a
11f9: f4 80     mov   a,$80+x
11fb: 28 02     and   a,#$02
11fd: f0 4a     beq   $1249
11ff: f4 80     mov   a,$80+x
1201: 28 01     and   a,#$01
1203: d0 1e     bne   $1223
1205: e4 44     mov   a,$44
1207: 30 01     bmi   $120a
1209: 6f        ret
120a: f5 67 05  mov   a,$0567+x
120d: c4 44     mov   $44,a
120f: e4 46     mov   a,$46
1211: 04 38     or    a,$38
1213: c4 46     mov   $46,a
1215: eb 2a     mov   y,$2a
1217: f5 2c 04  mov   a,$042c+x
121a: 30 2f     bmi   $124b
121c: cf        mul   ya
121d: 1c        asl   a
121e: dd        mov   a,y
121f: 3c        rol   a
1220: fd        mov   y,a
1221: 2f 28     bra   $124b
1223: e4 44     mov   a,$44
1225: 10 22     bpl   $1249
1227: e4 39     mov   a,$39
1229: 2d        push  a
122a: e4 38     mov   a,$38
122c: 2d        push  a
122d: f5 1d 04  mov   a,$041d+x
1230: fd        mov   y,a
1231: 1c        asl   a
1232: 1c        asl   a
1233: 1c        asl   a
1234: 1c        asl   a
1235: c4 39     mov   $39,a
1237: f6 d9 12  mov   a,$12d9+y
123a: c4 38     mov   $38,a
123c: 24 3e     and   a,$3e
123e: d0 03     bne   $1243
1240: 3f 0a 12  call  $120a
1243: ae        pop   a
1244: c4 38     mov   $38,a
1246: ae        pop   a
1247: c4 39     mov   $39,a
1249: eb 2a     mov   y,$2a
124b: f6 b9 12  mov   a,$12b9+y
124e: c4 36     mov   $36,a
1250: fd        mov   y,a
1251: f5 b4 03  mov   a,$03b4+x
1254: 48 80     eor   a,#$80
1256: cf        mul   ya
1257: f4 ad     mov   a,$ad+x
1259: 5c        lsr   a
125a: c4 37     mov   $37,a
125c: dd        mov   a,y
125d: eb 39     mov   y,$39
125f: 90 03     bcc   $1264
1261: 48 ff     eor   a,#$ff
1263: bc        inc   a
1264: d6 00 02  mov   $0200+y,a
1267: eb 36     mov   y,$36
1269: f5 b4 03  mov   a,$03b4+x
126c: 48 7f     eor   a,#$7f
126e: cf        mul   ya
126f: dd        mov   a,y
1270: eb 39     mov   y,$39
1272: 4b 37     lsr   $37
1274: 90 03     bcc   $1279
1276: 48 ff     eor   a,#$ff
1278: bc        inc   a
1279: d6 01 02  mov   $0201+y,a
127c: e4 28     mov   a,$28
127e: d6 02 02  mov   $0202+y,a
1281: e4 29     mov   a,$29
1283: d6 03 02  mov   $0203+y,a
1286: f5 96 03  mov   a,$0396+x
1289: d6 04 02  mov   $0204+y,a
128c: e4 3b     mov   a,$3b
128e: d6 05 02  mov   $0205+y,a
1291: e4 3c     mov   a,$3c
1293: d6 06 02  mov   $0206+y,a
1296: d6 07 02  mov   $0207+y,a
1299: e4 3e     mov   a,$3e
129b: 04 38     or    a,$38
129d: c4 3e     mov   $3e,a
129f: e4 3a     mov   a,$3a
12a1: 28 40     and   a,#$40
12a3: f0 07     beq   $12ac
12a5: e4 40     mov   a,$40
12a7: 04 38     or    a,$38
12a9: c4 40     mov   $40,a
12ab: 6f        ret
12ac: e4 3a     mov   a,$3a
12ae: 28 04     and   a,#$04
12b0: f0 06     beq   $12b8
12b2: e4 42     mov   a,$42
12b4: 04 38     or    a,$38
12b6: c4 42     mov   $42,a
12b8: 6f        ret
;
12b9: db $00,$03,$04,$05,$06,$07,$09,$0a,$0c,$0d,$0f,$12,$14,$17,$1a,$1c
12c9: db $1f,$24,$28,$2d,$31,$36,$3a,$3f,$47,$4f,$57,$5f,$67,$6f,$77,$7f
;
12d9: db $01,$02,$04,$08,$10,$20,$40,$80
;
12e1: c4 38     mov   $38,a
12e3: 1c        asl   a
12e4: fd        mov   y,a
12e5: f7 4e     mov   a,($4e)+y
12e7: c4 36     mov   $36,a
12e9: fc        inc   y
12ea: f7 4e     mov   a,($4e)+y
12ec: c4 37     mov   $37,a
12ee: 8d 00     mov   y,#$00
12f0: f7 36     mov   a,($36)+y
12f2: fc        inc   y
12f3: c4 39     mov   $39,a
12f5: f7 36     mov   a,($36)+y
12f7: fc        inc   y
12f8: 5d        mov   x,a
12f9: f7 36     mov   a,($36)+y
12fb: d0 07     bne   $1304
12fd: d4 80     mov   $80+x,a
12ff: fc        inc   y
1300: 5f a4 13  jmp   $13a4
1303: 6f        ret
1304: f4 80     mov   a,$80+x
1306: 28 40     and   a,#$40
1308: d0 f9     bne   $1303
130a: d5 f0 03  mov   $03f0+x,a         ; zero duration counter
130d: d5 a3 05  mov   $05a3+x,a
1310: d5 0e 04  mov   $040e+x,a
1313: d5 b3 04  mov   $04b3+x,a
1316: d5 58 05  mov   $0558+x,a
1319: d5 67 05  mov   $0567+x,a
131c: d5 0f 03  mov   $030f+x,a
131f: d5 d1 04  mov   $04d1+x,a
1322: d4 8f     mov   $8f+x,a
1324: d4 ad     mov   $ad+x,a
1326: e8 40     mov   a,#$40
1328: d4 9e     mov   $9e+x,a
132a: e4 38     mov   a,$38
132c: 75 4a 04  cmp   a,$044a+x
132f: d0 0a     bne   $133b
1331: f4 80     mov   a,$80+x
1333: f0 09     beq   $133e
1335: e8 60     mov   a,#$60
1337: d4 9e     mov   $9e+x,a
1339: e4 38     mov   a,$38
133b: d5 4a 04  mov   $044a+x,a
133e: f7 36     mov   a,($36)+y
1340: d4 80     mov   $80+x,a
1342: fc        inc   y
1343: f7 36     mov   a,($36)+y
1345: d5 1e 03  mov   $031e+x,a
1348: fc        inc   y
1349: f7 36     mov   a,($36)+y
134b: d5 2d 03  mov   $032d+x,a
134e: fc        inc   y
134f: f7 36     mov   a,($36)+y
1351: d5 3c 03  mov   $033c+x,a
1354: fc        inc   y
1355: f7 36     mov   a,($36)+y
1357: 60        clrc
1358: 84 3d     adc   a,$3d
135a: d5 4b 03  mov   $034b+x,a
135d: fc        inc   y
135e: f7 36     mov   a,($36)+y
1360: d5 5a 03  mov   $035a+x,a
1363: fc        inc   y
1364: f7 36     mov   a,($36)+y
1366: d5 69 03  mov   $0369+x,a
1369: bc        inc   a
136a: 28 07     and   a,#$07
136c: d5 1d 04  mov   $041d+x,a
136f: fc        inc   y
1370: f7 36     mov   a,($36)+y
1372: d5 78 03  mov   $0378+x,a
1375: fc        inc   y
1376: f7 36     mov   a,($36)+y
1378: d5 87 03  mov   $0387+x,a
137b: fc        inc   y
137c: f7 36     mov   a,($36)+y
137e: d5 96 03  mov   $0396+x,a
1381: fc        inc   y
1382: f7 36     mov   a,($36)+y
1384: d5 a5 03  mov   $03a5+x,a
1387: fc        inc   y
1388: e4 01     mov   a,$01
138a: 28 04     and   a,#$04
138c: f0 02     beq   $1390
138e: f7 36     mov   a,($36)+y
1390: d5 b4 03  mov   $03b4+x,a
1393: fc        inc   y
1394: fc        inc   y
1395: e8 01     mov   a,#$01
1397: d5 ff 03  mov   $03ff+x,a         ; set duration to #$01
139a: e8 ff     mov   a,#$ff
139c: d5 3b 04  mov   $043b+x,a         ; set pulse counter to #$FF
139f: e8 40     mov   a,#$40
13a1: d5 2c 04  mov   $042c+x,a
13a4: 8b 39     dec   $39
13a6: f0 03     beq   $13ab
13a8: 5f f5 12  jmp   $12f5
13ab: 6f        ret
