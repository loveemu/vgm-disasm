; Super Aleste (J) SPC - loveemu labo
; Disassembler: spcdas v0.01
;
; All games using this engine:
; * Space Aleste (J) (1992)
; 
; The game was also released as:
; * Space Megaforce (U)
; * Super Aleste (E)

0600: 8f 00 f1  mov   $f1,#$00          ; stop all timers
0603: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to #$80 (62.5 Hz, 16ms)
0606: 8f 02 f1  mov   $f1,#$02          ; start timer0 and timer1
0609: 8f 00 44  mov   $44,#$00
060c: 8f 00 2f  mov   $2f,#$00
060f: 3f 3a 04  call  $043a
0612: 3f 42 0a  call  $0a42
0615: ba 00     movw  ya,$00
0617: da f6     movw  $f6,ya
0619: e4 2e     mov   a,$2e
061b: c4 f4     mov   $f4,a
061d: 64 f4     cmp   a,$f4
061f: d0 fc     bne   $061d
0621: bc        inc   a
0622: c4 2e     mov   $2e,a
0624: e4 f5     mov   a,$f5
0626: 68 e0     cmp   a,#$e0
0628: b0 13     bcs   $063d
062a: f8 2f     mov   x,$2f
062c: c8 08     cmp   x,#$08
062e: 90 07     bcc   $0637
0630: 3f 67 06  call  $0667
0633: cd 00     mov   x,#$00
0635: e4 f5     mov   a,$f5
0637: d4 10     mov   $10+x,a
0639: ab 2f     inc   $2f
063b: 2f dc     bra   $0619
063d: fd        mov   y,a
063e: f6 f3 05  mov   a,$05f3+y
0641: d0 1c     bne   $065f
0643: dd        mov   a,y
0644: f8 2f     mov   x,$2f
0646: c8 08     cmp   x,#$08
0648: 90 07     bcc   $0651
064a: 3f 67 06  call  $0667
064d: cd 00     mov   x,#$00
064f: e4 f5     mov   a,$f5
0651: d4 10     mov   $10+x,a
0653: e4 f6     mov   a,$f6
0655: d4 18     mov   $18+x,a
0657: e4 f7     mov   a,$f7
0659: d4 20     mov   $20+x,a
065b: ab 2f     inc   $2f
065d: 2f ba     bra   $0619
065f: dd        mov   a,y
0660: 1c        asl   a
0661: a8 c0     sbc   a,#$c0
0663: 5d        mov   x,a
0664: 1f 93 06  jmp   ($0693+x)
0667: cd 00     mov   x,#$00
0669: 3e 2f     cmp   x,$2f
066b: f0 13     beq   $0680
066d: f4 10     mov   a,$10+x
066f: 68 e0     cmp   a,#$e0
0671: b0 0e     bcs   $0681
0673: 4d        push  x
0674: 3f 3b 15  call  $153b
0677: ce        pop   x
0678: 3d        inc   x
0679: 3e 2f     cmp   x,$2f
067b: d0 f0     bne   $066d
067d: 8f 00 2f  mov   $2f,#$00
0680: 6f        ret
0681: 1c        asl   a
0682: a8 c0     sbc   a,#$c0
0684: 4d        push  x
0685: d8 38     mov   $38,x
0687: 5d        mov   x,a
0688: eb 38     mov   y,$38
068a: 3f 90 06  call  $0690
068d: ce        pop   x
068e: 2f e8     bra   $0678
0690: 1f 93 06  jmp   ($0693+x)
; CPU cmd dispatch table
0693: dw $075e  ; e0
0695: dw $076f  ; e1
0697: dw $077a  ; e2
0699: dw $0785  ; e3
069b: dw $0790  ; e4
069d: dw $07a4  ; e5
069f: dw $07ef  ; e6
06a1: dw $07ef  ; e7
06a3: dw $07ef  ; e8
06a5: dw $07ef  ; e9
06a7: dw $07ef  ; ea
06a9: dw $07ef  ; eb
06ab: dw $07ef  ; ec
06ad: dw $07ef  ; ed
06af: dw $07b6  ; ee
06b1: dw $07be  ; ef
06b3: dw $080d  ; f0
06b5: dw $06f4  ; f1
06b7: dw $06f7  ; f2
06b9: dw $06fa  ; f3
06bb: dw $070c  ; f4
06bd: dw $071c  ; f5
06bf: dw $0742  ; f6
06c1: dw $074d  ; f7
06c3: dw $07c6  ; f8
06c5: dw $07d0  ; f9
06c7: dw $0758  ; fa
06c9: dw $06f3  ; fb
06cb: dw $06f3  ; fc
06cd: dw $06f3  ; fd
06cf: dw $07f2  ; fe - reset
06d1: dw $0803  ; ff
; CPU cmds FB-FD
06f3: 6f        ret
; CPU cmd F1
06f4: 5f 42 0a  jmp   $0a42
; CPU cmd F2
06f7: 5f cd 0a  jmp   $0acd
; CPU cmd F3
06fa: 3f 28 07  call  $0728
06fd: 8f 1f 4a  mov   $4a,#$1f
0700: f6 20 00  mov   a,$0020+y
0703: c4 4b     mov   $4b,a
0705: e4 01     mov   a,$01
0707: 08 30     or    a,#$30
0709: c4 01     mov   $01,a
070b: 6f        ret
; CPU cmd F4
070c: 6d        push  y
070d: f6 20 00  mov   a,$0020+y
0710: 3f 3b 15  call  $153b
0713: ee        pop   y
0714: 3f 28 07  call  $0728
0717: 8f 00 4a  mov   $4a,#$00
071a: 2f 00     bra   $071c
; CPU cmd F5
071c: 8f 1f 4b  mov   $4b,#$1f
071f: e4 01     mov   a,$01
0721: 28 ef     and   a,#$ef
0723: 08 20     or    a,#$20
0725: c4 01     mov   $01,a
0727: 6f        ret
0728: cd 0d     mov   x,#$0d
072a: f4 80     mov   a,$80+x
072c: f0 08     beq   $0736
072e: 30 06     bmi   $0736
0730: f4 8f     mov   a,$8f+x
0732: 08 08     or    a,#$08
0734: d4 8f     mov   $8f+x,a
0736: 1d        dec   x
0737: 10 f1     bpl   $072a
0739: f6 18 00  mov   a,$0018+y
073c: c4 48     mov   $48,a
073e: 8f ff 49  mov   $49,#$ff
0741: 6f        ret
; CPU cmd F6
0742: e4 01     mov   a,$01
0744: 08 02     or    a,#$02
0746: c4 01     mov   $01,a
0748: e8 00     mov   a,#$00
074a: 5f 3b 15  jmp   $153b
; CPU cmd F7
074d: e4 01     mov   a,$01
074f: 28 fd     and   a,#$fd
0751: c4 01     mov   $01,a
0753: e8 00     mov   a,#$00
0755: 5f 3b 15  jmp   $153b
; CPU cmd FA
0758: f6 18 00  mov   a,$0018+y
075b: 5f f9 0a  jmp   $0af9
; CPU cmd E0
075e: e4 f6     mov   a,$f6
0760: c4 30     mov   $30,a
0762: e4 f7     mov   a,$f7
0764: c4 31     mov   $31,a
0766: 8d 00     mov   y,#$00
0768: f7 30     mov   a,($30)+y
076a: c4 f6     mov   $f6,a
076c: 5f 19 06  jmp   $0619
; CPU cmd E1
076f: 8d 00     mov   y,#$00
0771: f7 30     mov   a,($30)+y
0773: c4 f6     mov   $f6,a
0775: 3a 30     incw  $30
0777: 5f 19 06  jmp   $0619
; CPU cmd E2
077a: e4 f6     mov   a,$f6
077c: c4 32     mov   $32,a
077e: e4 f7     mov   a,$f7
0780: c4 33     mov   $33,a
0782: 5f 19 06  jmp   $0619
; CPU cmd E3
0785: e4 f6     mov   a,$f6
0787: 8d 00     mov   y,#$00
0789: d7 32     mov   ($32)+y,a
078b: 3a 32     incw  $32
078d: 5f 19 06  jmp   $0619
; CPU cmd E4
0790: f8 f6     mov   x,$f6
0792: 10 07     bpl   $079b
0794: f4 00     mov   a,$00+x
0796: c4 f6     mov   $f6,a
0798: 5f 19 06  jmp   $0619
079b: d8 f2     mov   $f2,x
079d: e4 f3     mov   a,$f3
079f: c4 f6     mov   $f6,a
07a1: 5f 19 06  jmp   $0619
; CPU cmd E5
07a4: e4 f7     mov   a,$f7
07a6: f8 f6     mov   x,$f6
07a8: 10 05     bpl   $07af
07aa: d4 00     mov   $00+x,a
07ac: 5f 19 06  jmp   $0619
07af: d8 f2     mov   $f2,x
07b1: c4 f3     mov   $f3,a
07b3: 5f 19 06  jmp   $0619
; CPU cmd EE
07b6: e4 01     mov   a,$01
07b8: 48 08     eor   a,#$08
07ba: c4 01     mov   $01,a
07bc: 2f 18     bra   $07d6
; CPU cmd EF
07be: e4 01     mov   a,$01
07c0: 48 04     eor   a,#$04
07c2: c4 01     mov   $01,a
07c4: 2f 10     bra   $07d6
; CPU cmd F8
07c6: e4 f7     mov   a,$f7
07c8: f8 f6     mov   x,$f6
07ca: 48 ff     eor   a,#$ff
07cc: 34 00     and   a,$00+x
07ce: 2f 06     bra   $07d6
; CPU cmd F9
07d0: e4 f7     mov   a,$f7
07d2: f8 f6     mov   x,$f6
07d4: 14 00     or    a,$00+x
07d6: d4 00     mov   $00+x,a
07d8: ba 00     movw  ya,$00
07da: da f6     movw  $f6,ya
07dc: e4 01     mov   a,$01
07de: 28 08     and   a,#$08
07e0: 68 08     cmp   a,#$08
07e2: e4 3e     mov   a,$3e
07e4: 28 1f     and   a,#$1f
07e6: b0 02     bcs   $07ea
07e8: 08 20     or    a,#$20
07ea: 8f 6c f2  mov   $f2,#$6c
07ed: c4 f3     mov   $f3,a
; CPU cmds E6-ED
07ef: 5f 19 06  jmp   $0619
; CPU cmd FE - reset
07f2: 8f b0 f1  mov   $f1,#$b0          ; clear ports
07f5: 8f 6c f2  mov   $f2,#$6c
07f8: 8f e0 f3  mov   $f3,#$e0          ; do soft reset
07fb: 8f 80 f1  mov   $f1,#$80
07fe: cd 00     mov   x,#$00
0800: 1f fe ff  jmp   ($fffe+x)
; CPU cmd FF
0803: e4 2e     mov   a,$2e
0805: c4 f4     mov   $f4,a
0807: bc        inc   a
0808: c4 2e     mov   $2e,a
080a: 5f 4f 08  jmp   $084f
; CPU cmd F0
080d: ba f6     movw  ya,$f6
080f: da 34     movw  $34,ya
0811: f8 2e     mov   x,$2e
0813: d8 f4     mov   $f4,x
0815: 3e f4     cmp   x,$f4
0817: d0 fc     bne   $0815
0819: 3d        inc   x
081a: eb f6     mov   y,$f6
081c: d0 18     bne   $0836
081e: d8 f4     mov   $f4,x
0820: 3e f4     cmp   x,$f4
0822: d0 fc     bne   $0820
0824: 3d        inc   x
0825: e4 f6     mov   a,$f6
0827: d7 34     mov   ($34)+y,a
0829: fc        inc   y
082a: e4 f7     mov   a,$f7
082c: d7 34     mov   ($34)+y,a
082e: fc        inc   y
082f: d0 ed     bne   $081e
0831: d8 2e     mov   $2e,x
0833: 5f 19 06  jmp   $0619
0836: cb 38     mov   $38,y
0838: 8d 00     mov   y,#$00
083a: d8 f4     mov   $f4,x
083c: 3e f4     cmp   x,$f4
083e: d0 fc     bne   $083c
0840: 3d        inc   x
0841: e4 f6     mov   a,$f6
0843: d7 34     mov   ($34)+y,a
0845: fc        inc   y
0846: 7e 38     cmp   y,$38
0848: d0 f0     bne   $083a
084a: d8 2e     mov   $2e,x
084c: 5f 19 06  jmp   $0619
;
084f: 3f 67 06  call  $0667
0852: 3f c2 0b  call  $0bc2
0855: 8f 5c f2  mov   $f2,#$5c
0858: 8f 00 f3  mov   $f3,#$00          ; key off all voices
085b: 3f c3 13  call  $13c3
085e: e4 01     mov   a,$01
0860: 28 02     and   a,#$02
0862: d0 0a     bne   $086e
0864: e4 8e     mov   a,$8e
0866: d0 06     bne   $086e
0868: cd 0d     mov   x,#$0d
086a: e8 0e     mov   a,#$0e
086c: 2f 04     bra   $0872
086e: cd 0e     mov   x,#$0e
0870: e8 01     mov   a,#$01
0872: c4 2c     mov   $2c,a
0874: 8f 00 3a  mov   $3a,#$00
0877: d8 2b     mov   $2b,x
0879: f4 80     mov   a,$80+x
087b: d0 03     bne   $0880
087d: 5f 40 09  jmp   $0940
0880: f5 5a 03  mov   a,$035a+x         ; tempo value
0883: f0 09     beq   $088e             ; #$00 means no wait (16ms/tick)
0885: 60        clrc
0886: 95 3b 04  adc   a,$043b+x
0889: d5 3b 04  mov   $043b+x,a         ; add tempo value
088c: 90 50     bcc   $08de             ; jump if not tick
088e: f4 80     mov   a,$80+x
0890: 28 10     and   a,#$10
0892: d0 3b     bne   $08cf
0894: f4 8f     mov   a,$8f+x
0896: 28 04     and   a,#$04
0898: f0 35     beq   $08cf
089a: f5 a3 05  mov   a,$05a3+x
089d: f0 30     beq   $08cf
089f: 10 0f     bpl   $08b0
08a1: 28 7f     and   a,#$7f
08a3: 60        clrc
08a4: 95 f0 03  adc   a,$03f0+x
08a7: b0 0e     bcs   $08b7
08a9: 75 ff 03  cmp   a,$03ff+x
08ac: 90 21     bcc   $08cf
08ae: b0 07     bcs   $08b7
08b0: 75 f0 03  cmp   a,$03f0+x
08b3: f0 02     beq   $08b7
08b5: b0 18     bcs   $08cf
08b7: f4 8f     mov   a,$8f+x
08b9: 28 fb     and   a,#$fb
08bb: d4 8f     mov   $8f+x,a
08bd: f4 80     mov   a,$80+x
08bf: 28 04     and   a,#$04
08c1: d0 0c     bne   $08cf
08c3: e4 3a     mov   a,$3a
08c5: 08 04     or    a,#$04
08c7: c4 3a     mov   $3a,a
08c9: f4 9e     mov   a,$9e+x
08cb: 08 10     or    a,#$10
08cd: d4 9e     mov   $9e+x,a
08cf: f5 f0 03  mov   a,$03f0+x
08d2: bc        inc   a
08d3: d5 f0 03  mov   $03f0+x,a         ; inc duration counter
08d6: 75 ff 03  cmp   a,$03ff+x
08d9: d0 03     bne   $08de             ; wait for duration
08db: 3f 13 0f  call  $0f13             ; do vcmds
08de: 3f f1 10  call  $10f1
08e1: 3f 37 11  call  $1137
08e4: f5 d1 04  mov   a,$04d1+x
08e7: f0 03     beq   $08ec
08e9: 3f 7b 11  call  $117b
08ec: f4 9e     mov   a,$9e+x
08ee: 28 08     and   a,#$08
08f0: f0 03     beq   $08f5
08f2: 3f c4 11  call  $11c4
08f5: 3f 25 12  call  $1225
08f8: 3f 9b 12  call  $129b
08fb: f4 8f     mov   a,$8f+x
08fd: 28 01     and   a,#$01
08ff: f0 03     beq   $0904
0901: 3f 3f 13  call  $133f
0904: 3f ee 13  call  $13ee
0907: f4 8f     mov   a,$8f+x
0909: 28 20     and   a,#$20
090b: f0 33     beq   $0940
090d: f5 85 05  mov   a,$0585+x
0910: 60        clrc
0911: 95 94 05  adc   a,$0594+x
0914: d5 94 05  mov   $0594+x,a
0917: 90 27     bcc   $0940
0919: f5 1e 03  mov   a,$031e+x
091c: 75 76 05  cmp   a,$0576+x
091f: d0 08     bne   $0929
0921: f4 8f     mov   a,$8f+x
0923: 08 02     or    a,#$02
0925: d4 8f     mov   $8f+x,a
0927: 2f 17     bra   $0940
0929: f4 8f     mov   a,$8f+x
092b: 28 fd     and   a,#$fd
092d: d4 8f     mov   $8f+x,a
092f: 28 10     and   a,#$10
0931: d0 06     bne   $0939
0933: f5 1e 03  mov   a,$031e+x
0936: bc        inc   a
0937: 2f 04     bra   $093d
0939: f5 1e 03  mov   a,$031e+x
093c: 9c        dec   a
093d: d5 1e 03  mov   $031e+x,a
0940: f4 80     mov   a,$80+x
0942: 28 20     and   a,#$20
0944: d0 08     bne   $094e
0946: 1d        dec   x
0947: 8b 2c     dec   $2c
0949: f0 0f     beq   $095a
094b: 5f 74 08  jmp   $0874
094e: 1d        dec   x
094f: 30 09     bmi   $095a
0951: f4 9e     mov   a,$9e+x
0953: 08 40     or    a,#$40
0955: d4 9e     mov   $9e+x,a
0957: 1d        dec   x
0958: 10 f7     bpl   $0951
095a: e4 01     mov   a,$01
095c: 28 20     and   a,#$20
095e: f0 2a     beq   $098a
0960: e4 48     mov   a,$48
0962: 60        clrc
0963: 84 49     adc   a,$49
0965: c4 49     mov   $49,a
0967: 90 21     bcc   $098a
0969: e4 01     mov   a,$01
096b: 28 10     and   a,#$10
096d: d0 12     bne   $0981
096f: e4 4a     mov   a,$4a
0971: 64 4b     cmp   a,$4b
0973: f0 07     beq   $097c
0975: bc        inc   a
0976: c4 4a     mov   $4a,a
0978: 64 4b     cmp   a,$4b
097a: d0 0e     bne   $098a
097c: 3f e1 0a  call  $0ae1
097f: 2f 09     bra   $098a
0981: e4 4a     mov   a,$4a
0983: 64 4b     cmp   a,$4b
0985: f0 03     beq   $098a
0987: 9c        dec   a
0988: c4 4a     mov   $4a,a
098a: 3f 90 09  call  $0990
098d: 5f 15 06  jmp   $0615
0990: e4 3d     mov   a,$3d
0992: 8f 5c f2  mov   $f2,#$5c
0995: c4 f3     mov   $f3,a             ;; DSP reg KOF
0997: e4 40     mov   a,$40
0999: f0 29     beq   $09c4
099b: 4b 40     lsr   $40
099d: 8d 10     mov   y,#$10
099f: 4b 40     lsr   $40
09a1: 90 16     bcc   $09b9
09a3: f6 88 02  mov   a,$0288+y
09a6: 76 78 02  cmp   a,$0278+y
09a9: f0 0e     beq   $09b9
09ab: e8 ff     mov   a,#$ff
09ad: d6 88 02  mov   $0288+y,a
09b0: e8 00     mov   a,#$00
09b2: d6 80 02  mov   $0280+y,a
09b5: d6 81 02  mov   $0281+y,a
09b8: 60        clrc
09b9: 6b 38     ror   $38
09bb: dd        mov   a,y
09bc: 60        clrc
09bd: 88 10     adc   a,#$10
09bf: fd        mov   y,a
09c0: 10 dd     bpl   $099f
09c2: e4 38     mov   a,$38
09c4: 8f 2d f2  mov   $f2,#$2d
09c7: c4 f3     mov   $f3,a             ;; DSP reg PMON
09c9: 8d 00     mov   y,#$00
09cb: 4b 3b     lsr   $3b
09cd: b0 0e     bcs   $09dd
09cf: cb f2     mov   $f2,y
09d1: 8f 00 f3  mov   $f3,#$00          ; zero voice vol L
09d4: fc        inc   y
09d5: cb f2     mov   $f2,y
09d7: 8f 00 f3  mov   $f3,#$00          ; zero voice vol R
09da: dc        dec   y
09db: 2f 0f     bra   $09ec
09dd: 6d        push  y
09de: cd 08     mov   x,#$08
09e0: cb f2     mov   $f2,y
09e2: f6 80 02  mov   a,$0280+y
09e5: c4 f3     mov   $f3,a
09e7: fc        inc   y
09e8: 1d        dec   x
09e9: d0 f5     bne   $09e0             ; copy $0200+Y to DSP voice regs 00-07
09eb: ee        pop   y
09ec: dd        mov   a,y
09ed: 60        clrc
09ee: 88 10     adc   a,#$10
09f0: fd        mov   y,a
09f1: 10 d8     bpl   $09cb             ; do all voices
09f3: e4 01     mov   a,$01
09f5: 28 08     and   a,#$08
09f7: f0 0c     beq   $0a05
09f9: e4 44     mov   a,$44
09fb: 68 04     cmp   a,#$04
09fd: f0 20     beq   $0a1f
09ff: e4 3e     mov   a,$3e
0a01: 28 1f     and   a,#$1f
0a03: 2f 06     bra   $0a0b
0a05: e4 3e     mov   a,$3e
0a07: 28 1f     and   a,#$1f
0a09: 08 20     or    a,#$20
0a0b: 8f 4d f2  mov   $f2,#$4d
0a0e: 8f 00 f3  mov   $f3,#$00          ;; DSP reg EON
0a11: 8f 2c f2  mov   $f2,#$2c
0a14: 8f 00 f3  mov   $f3,#$00          ;; DSP reg EVOL(L)
0a17: 8f 3c f2  mov   $f2,#$3c
0a1a: 8f 00 f3  mov   $f3,#$00          ;; DSP reg EVOL(R)
0a1d: 2f 0f     bra   $0a2e
0a1f: e4 41     mov   a,$41
0a21: 04 76     or    a,$76
0a23: 24 75     and   a,$75
0a25: 8f 4d f2  mov   $f2,#$4d
0a28: c4 f3     mov   $f3,a             ;; DSP reg EON
0a2a: e4 3e     mov   a,$3e
0a2c: 28 1f     and   a,#$1f
0a2e: 8f 6c f2  mov   $f2,#$6c
0a31: c4 f3     mov   $f3,a             ;; DSP reg FLG
0a33: e4 3f     mov   a,$3f
0a35: 8f 3d f2  mov   $f2,#$3d
0a38: c4 f3     mov   $f3,a             ;; DSP reg NON
0a3a: e4 3c     mov   a,$3c
0a3c: 8f 4c f2  mov   $f2,#$4c
0a3f: c4 f3     mov   $f3,a             ;; DSP reg KON
0a41: 6f        ret
;
0a42: e4 01     mov   a,$01
0a44: 28 0c     and   a,#$0c
0a46: c4 01     mov   $01,a
0a48: 8f 6c f2  mov   $f2,#$6c
0a4b: 8f e0 f3  mov   $f3,#$e0          ;; DSP reg FLG
0a4e: e5 00 18  mov   a,$1800
0a51: c4 4e     mov   $4e,a
0a53: e5 01 18  mov   a,$1801
0a56: c4 4f     mov   $4f,a             ; set $4E/F to $1801/2
0a58: e5 02 18  mov   a,$1802
0a5b: c4 50     mov   $50,a
0a5d: 60        clrc
0a5e: 88 11     adc   a,#$11
0a60: c4 52     mov   $52,a
0a62: e5 03 18  mov   a,$1803
0a65: c4 51     mov   $51,a             ; set $50/1 to $1802/3 (duration table address)
0a67: 88 00     adc   a,#$00
0a69: c4 53     mov   $53,a             ; set $52/3 to $1802/3+#$0011
0a6b: e5 04 18  mov   a,$1804
0a6e: c4 54     mov   $54,a
0a70: e5 05 18  mov   a,$1805
0a73: c4 55     mov   $55,a             ; set $54/5 to $1804/5
0a75: e5 06 18  mov   a,$1806
0a78: c4 56     mov   $56,a
0a7a: e5 07 18  mov   a,$1807
0a7d: c4 57     mov   $57,a             ; set $56/7 to $1806/7
0a7f: e5 08 18  mov   a,$1808
0a82: c4 58     mov   $58,a
0a84: e5 09 18  mov   a,$1809
0a87: c4 59     mov   $59,a             ; set $58/9 to $1808/9
0a89: e5 0a 18  mov   a,$180a
0a8c: c4 5a     mov   $5a,a
0a8e: e5 0b 18  mov   a,$180b
0a91: c4 5b     mov   $5b,a             ; set $5A/B to $180A/B
0a93: e5 0c 18  mov   a,$180c
0a96: c4 5c     mov   $5c,a
0a98: e5 0d 18  mov   a,$180d
0a9b: c4 5d     mov   $5d,a             ; set $5C/D to $180C/D
0a9d: 8f 5d f2  mov   $f2,#$5d
0aa0: e5 0e 18  mov   a,$180e
0aa3: c4 f3     mov   $f3,a             ; set sample dir from $180E
0aa5: e5 0f 18  mov   a,$180f
0aa8: c4 47     mov   $47,a             ; set $3D to $180F
0aaa: e5 12 18  mov   a,$1812
0aad: c4 60     mov   $60,a
0aaf: e5 13 18  mov   a,$1813
0ab2: c4 61     mov   $61,a             ; set $60/1 to $1812/3
0ab4: e5 14 18  mov   a,$1814
0ab7: c4 62     mov   $62,a
0ab9: e5 15 18  mov   a,$1815
0abc: c4 63     mov   $63,a             ; set $62/3 to $1814/5
0abe: e5 10 18  mov   a,$1810
0ac1: c4 5e     mov   $5e,a
0ac3: e5 11 18  mov   a,$1811
0ac6: c4 5f     mov   $5f,a
0ac8: e8 00     mov   a,#$00
0aca: 3f f9 0a  call  $0af9
0acd: 4d        push  x
0ace: cd 0e     mov   x,#$0e
0ad0: e8 00     mov   a,#$00
0ad2: d4 80     mov   $80+x,a
0ad4: 1d        dec   x
0ad5: 10 f9     bpl   $0ad0
0ad7: ce        pop   x
0ad8: 3f e1 0a  call  $0ae1
0adb: 3f c3 13  call  $13c3
0ade: 5f 90 09  jmp   $0990
0ae1: e4 01     mov   a,$01
0ae3: 28 df     and   a,#$df
0ae5: c4 01     mov   $01,a
0ae7: e8 1f     mov   a,#$1f
0ae9: c4 4a     mov   $4a,a
0aeb: 4d        push  x
0aec: cd 0c     mov   x,#$0c
0aee: f4 8f     mov   a,$8f+x
0af0: 28 f7     and   a,#$f7
0af2: d4 8f     mov   $8f+x,a
0af4: 1d        dec   x
0af5: 10 f7     bpl   $0aee
0af7: ce        pop   x
0af8: 6f        ret
;
0af9: 1c        asl   a
0afa: fd        mov   y,a
0afb: f7 5e     mov   a,($5e)+y
0afd: c4 36     mov   $36,a
0aff: fc        inc   y
0b00: f7 5e     mov   a,($5e)+y
0b02: c4 37     mov   $37,a
0b04: 8d 07     mov   y,#$07
0b06: f7 36     mov   a,($36)+y
0b08: d6 70 00  mov   $0070+y,a
0b0b: dc        dec   y
0b0c: 10 f8     bpl   $0b06
0b0e: 8d 08     mov   y,#$08
0b10: cd 0f     mov   x,#$0f
0b12: f7 36     mov   a,($36)+y
0b14: d8 f2     mov   $f2,x
0b16: c4 f3     mov   $f3,a
0b18: fc        inc   y
0b19: 7d        mov   a,x
0b1a: 60        clrc
0b1b: 88 10     adc   a,#$10
0b1d: 5d        mov   x,a
0b1e: 10 f2     bpl   $0b12
0b20: e4 01     mov   a,$01
0b22: 28 04     and   a,#$04
0b24: d0 12     bne   $0b38
0b26: e4 77     mov   a,$77
0b28: 5c        lsr   a
0b29: 44 77     eor   a,$77
0b2b: 5c        lsr   a
0b2c: 90 03     bcc   $0b31
0b2e: 8f 00 77  mov   $77,#$00
0b31: e4 72     mov   a,$72
0b33: 5c        lsr   a
0b34: 2d        push  a
0b35: fd        mov   y,a
0b36: 2f 0f     bra   $0b47
0b38: eb 72     mov   y,$72
0b3a: e4 73     mov   a,$73
0b3c: 48 7f     eor   a,#$7f
0b3e: cf        mul   ya
0b3f: 6d        push  y
0b40: eb 72     mov   y,$72
0b42: e4 73     mov   a,$73
0b44: 48 80     eor   a,#$80
0b46: cf        mul   ya
0b47: e4 77     mov   a,$77
0b49: 5c        lsr   a
0b4a: c4 38     mov   $38,a
0b4c: dd        mov   a,y
0b4d: 10 02     bpl   $0b51
0b4f: e8 7f     mov   a,#$7f
0b51: 90 03     bcc   $0b56
0b53: 48 ff     eor   a,#$ff
0b55: bc        inc   a
0b56: c4 72     mov   $72,a
0b58: 4b 38     lsr   $38
0b5a: ae        pop   a
0b5b: 10 02     bpl   $0b5f
0b5d: e8 7f     mov   a,#$7f
0b5f: 90 03     bcc   $0b64
0b61: 48 ff     eor   a,#$ff
0b63: bc        inc   a
0b64: cb 73     mov   $73,y
0b66: 8f 7d f2  mov   $f2,#$7d
0b69: e4 f3     mov   a,$f3
0b6b: c4 39     mov   $39,a
0b6d: 8f 6d f2  mov   $f2,#$6d
0b70: e4 f3     mov   a,$f3
0b72: c4 38     mov   $38,a
0b74: e4 44     mov   a,$44
0b76: d0 2f     bne   $0ba7
0b78: 8f 0f 45  mov   $45,#$0f
0b7b: 8f 0f 2d  mov   $2d,#$0f
0b7e: e4 70     mov   a,$70
0b80: 8f 6d f2  mov   $f2,#$6d
0b83: c4 f3     mov   $f3,a
0b85: e4 71     mov   a,$71
0b87: 8f 7d f2  mov   $f2,#$7d
0b8a: c4 f3     mov   $f3,a
0b8c: 8f 00 f1  mov   $f1,#$00
0b8f: 8f 02 f1  mov   $f1,#$02
0b92: e4 2d     mov   a,$2d
0b94: f0 04     beq   $0b9a
0b96: 8f 01 44  mov   $44,#$01
0b99: 6f        ret
0b9a: e4 01     mov   a,$01
0b9c: 28 08     and   a,#$08
0b9e: d0 04     bne   $0ba4
0ba0: 8f 02 44  mov   $44,#$02
0ba3: 6f        ret
0ba4: 5f 2c 0c  jmp   $0c2c
0ba7: e4 38     mov   a,$38
0ba9: 64 70     cmp   a,$70
0bab: d0 07     bne   $0bb4
0bad: e4 39     mov   a,$39
0baf: 64 71     cmp   a,$71
0bb1: d0 01     bne   $0bb4
0bb3: 6f        ret
0bb4: e4 45     mov   a,$45
0bb6: c4 2d     mov   $2d,a
0bb8: e4 71     mov   a,$71
0bba: 64 45     cmp   a,$45
0bbc: 90 c0     bcc   $0b7e
0bbe: c4 45     mov   $45,a
0bc0: 2f bc     bra   $0b7e
0bc2: e4 44     mov   a,$44
0bc4: 5c        lsr   a
0bc5: b0 0d     bcs   $0bd4
0bc7: 9c        dec   a
0bc8: f0 28     beq   $0bf2
0bca: e4 01     mov   a,$01
0bcc: 28 08     and   a,#$08
0bce: d0 03     bne   $0bd3
0bd0: 8f 02 44  mov   $44,#$02
0bd3: 6f        ret
0bd4: d0 3e     bne   $0c14
0bd6: e4 fe     mov   a,$fe
0bd8: f0 39     beq   $0c13
0bda: c4 38     mov   $38,a
0bdc: e4 2d     mov   a,$2d
0bde: 80        setc
0bdf: a4 38     sbc   a,$38
0be1: 90 05     bcc   $0be8
0be3: f0 03     beq   $0be8
0be5: c4 2d     mov   $2d,a
0be7: 6f        ret
0be8: 8f 7d f2  mov   $f2,#$7d
0beb: e4 f3     mov   a,$f3
0bed: c4 45     mov   $45,a
0bef: 8f 02 44  mov   $44,#$02
0bf2: e4 01     mov   a,$01
0bf4: 28 08     and   a,#$08
0bf6: f0 1b     beq   $0c13
0bf8: e4 45     mov   a,$45
0bfa: f0 30     beq   $0c2c
0bfc: c4 2d     mov   $2d,a
0bfe: 8f 0d f2  mov   $f2,#$0d
0c01: 8f 00 f3  mov   $f3,#$00
0c04: 8f 4d f2  mov   $f2,#$4d
0c07: 8f 00 f3  mov   $f3,#$00
0c0a: 8f 00 f1  mov   $f1,#$00
0c0d: 8f 02 f1  mov   $f1,#$02
0c10: 8f 03 44  mov   $44,#$03
0c13: 6f        ret
0c14: e4 01     mov   a,$01
0c16: 28 08     and   a,#$08
0c18: f0 b6     beq   $0bd0
0c1a: e4 fe     mov   a,$fe
0c1c: f0 f5     beq   $0c13
0c1e: c4 38     mov   $38,a
0c20: e4 2d     mov   a,$2d
0c22: 80        setc
0c23: a4 38     sbc   a,$38
0c25: 90 05     bcc   $0c2c
0c27: f0 03     beq   $0c2c
0c29: c4 2d     mov   $2d,a
0c2b: 6f        ret
0c2c: e4 72     mov   a,$72
0c2e: 8f 2c f2  mov   $f2,#$2c
0c31: c4 f3     mov   $f3,a
0c33: e4 73     mov   a,$73
0c35: 8f 3c f2  mov   $f2,#$3c
0c38: c4 f3     mov   $f3,a
0c3a: e4 74     mov   a,$74
0c3c: 8f 0d f2  mov   $f2,#$0d
0c3f: c4 f3     mov   $f3,a
0c41: 8f 04 44  mov   $44,#$04
0c44: 6f        ret
; vcmd dispatch table
0c45: dw $0ca7  ; 80 - goto
0c47: dw $0cb2  ; 81 - loop end
0c49: dw $0cea  ; 82 - halt
0c4b: dw $0cf5  ; 83 - set vibrato
0c4d: dw $0d23  ; 84
0c4f: dw $0d3b  ; 85
0c51: dw $0ce5  ; 86
0c53: dw $0d1f  ; 87 - set volume
0c55: dw $0cf9  ; 88 - set software volume envelope
0c57: dw $0cfd  ; 89 - transpose (relative)
0c59: dw $0d08  ; 8a - increase/decrease volume
0c5b: dw $0dd9  ; 8b
0c5d: dw $0e13  ; 8c - nop
0c5f: dw $0cda  ; 8d - loop begin
0c61: dw $0dcb  ; 8e
0c63: dw $0dcf  ; 8f
0c65: dw $0d05  ; 90
0c67: dw $0d51  ; 91
0c69: dw $0d56  ; 92
0c6b: dw $0d69  ; 93
0c6d: dw $0de5  ; 94
0c6f: dw $0d96  ; 95
0c71: dw $0dc7  ; 96 - set tempo
0c73: dw $0e35  ; 97 - tuning
0c75: dw $0e25  ; 98
0c77: dw $0e03  ; 99
0c79: dw $0e3f  ; 9a
0c7b: dw $0e52  ; 9b
0c7d: dw $0dab  ; 9c
0c7f: dw $0e29  ; 9d
0c81: dw $0da3  ; 9e
0c83: dw $0e31  ; 9f - set ADSR
0c85: dw $0e2d  ; a0 - set sample
0c87: dw $0e15  ; a1 - slur on
0c89: dw $0e1d  ; a2 - slur off
0c8b: dw $0e5f  ; a3
0c8d: dw $0ea7  ; a4
0c8f: dw $0ea7  ; a5
0c91: dw $0ea7  ; a6
0c93: dw $0eaf  ; a7
0c95: dw $0eb7  ; a8
0c97: dw $0ec3  ; a9
0c99: dw $0ecb  ; aa
0c9b: dw $0e9a  ; ab - set panpot
0c9d: dw $0dd5  ; ac
0c9f: dw $0cc6  ; ad - conditional loop
0ca1: dw $0ef3  ; ae
0ca3: dw $0efb  ; af
0ca5: dw $0ed3  ; b0
                ; b1-bf - crash
; vcmd 80 - goto
0ca7: 5d        mov   x,a
0ca8: fc        inc   y
0ca9: f7 34     mov   a,($34)+y
0cab: c4 35     mov   $35,a
0cad: d8 34     mov   $34,x             ; set $34/5 to arg1/2
0caf: 8d ff     mov   y,#$ff            ; clear reading index
0cb1: 6f        ret
; vcmd 81 - jump if (--counter != 0)
0cb2: 60        clrc
0cb3: 84 2b     adc   a,$2b
0cb5: 5d        mov   x,a
0cb6: fc        inc   y
0cb7: f5 00 03  mov   a,$0300+x
0cba: 9c        dec   a
0cbb: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0cbe: f0 04     beq   $0cc4
0cc0: f7 34     mov   a,($34)+y
0cc2: 2f e3     bra   $0ca7             ; if (counter != 0) goto arg2/3
0cc4: fc        inc   y
0cc5: 6f        ret
; vcmd AD - jump if (--counter == 0)
0cc6: 60        clrc
0cc7: 84 2b     adc   a,$2b
0cc9: 5d        mov   x,a
0cca: fc        inc   y
0ccb: f5 00 03  mov   a,$0300+x
0cce: 9c        dec   a
0ccf: d5 00 03  mov   $0300+x,a         ; dec loop counter ($0300+X+arg1)
0cd2: d0 04     bne   $0cd8
0cd4: f7 34     mov   a,($34)+y
0cd6: 2f cf     bra   $0ca7             ; if (counter == 0) goto arg2/3
0cd8: fc        inc   y
0cd9: 6f        ret
; vcmd 8D - loop begin
0cda: 60        clrc
0cdb: 84 2b     adc   a,$2b
0cdd: 5d        mov   x,a
0cde: fc        inc   y
0cdf: f7 34     mov   a,($34)+y
0ce1: d5 00 03  mov   $0300+x,a         ; set loop counter ($0300+X+arg1) to arg2
0ce4: 6f        ret
; vcmd 86
0ce5: f5 4a 04  mov   a,$044a+x
0ce8: c4 00     mov   $00,a
; vcmd 82 - halt
0cea: e8 00     mov   a,#$00
0cec: d4 80     mov   $80+x,a
0cee: ae        pop   a
0cef: ae        pop   a
0cf0: ae        pop   a
0cf1: ae        pop   a
0cf2: 5f 40 09  jmp   $0940
; vcmd 83 - set vibrato
0cf5: d5 3c 03  mov   $033c+x,a
0cf8: 6f        ret
; vcmd 88 - set software volume envelope
0cf9: d5 2d 03  mov   $032d+x,a
0cfc: 6f        ret
; vcmd 89 - transpose (relative)
0cfd: 60        clrc
0cfe: 95 4b 03  adc   a,$034b+x
0d01: d5 4b 03  mov   $034b+x,a
0d04: 6f        ret
; vcmd 90
0d05: d4 80     mov   $80+x,a
0d07: 6f        ret
; vcmd 8A - increase/decrease volume
0d08: 60        clrc
0d09: 30 0d     bmi   $0d18
0d0b: 95 1e 03  adc   a,$031e+x
0d0e: 68 1f     cmp   a,#$1f
0d10: 90 02     bcc   $0d14
0d12: e8 1f     mov   a,#$1f
0d14: d5 1e 03  mov   $031e+x,a
0d17: 6f        ret
0d18: 95 1e 03  adc   a,$031e+x
0d1b: b0 f7     bcs   $0d14
0d1d: e8 00     mov   a,#$00
; vcmd 87 - set volume
0d1f: d5 1e 03  mov   $031e+x,a
0d22: 6f        ret
; vcmd 84
0d23: f0 0f     beq   $0d34
0d25: d5 a4 04  mov   $04a4+x,a
0d28: e8 00     mov   a,#$00
0d2a: d5 b3 04  mov   $04b3+x,a
0d2d: f4 9e     mov   a,$9e+x
0d2f: 08 08     or    a,#$08
0d31: d4 9e     mov   $9e+x,a
0d33: 6f        ret
0d34: f4 9e     mov   a,$9e+x
0d36: 28 f7     and   a,#$f7
0d38: d4 9e     mov   $9e+x,a
0d3a: 6f        ret
; vcmd 85
0d3b: f8 2f     mov   x,$2f
0d3d: c8 08     cmp   x,#$08
0d3f: f0 0f     beq   $0d50
0d41: d4 10     mov   $10+x,a
0d43: 3d        inc   x
0d44: d8 2f     mov   $2f,x
0d46: fc        inc   y
0d47: f7 34     mov   a,($34)+y
0d49: d4 18     mov   $18+x,a
0d4b: fc        inc   y
0d4c: f7 34     mov   a,($34)+y
0d4e: d4 20     mov   $20+x,a
0d50: 6f        ret
; vcmd 91
0d51: 04 00     or    a,$00
0d53: c4 00     mov   $00,a
0d55: 6f        ret
; vcmd 92
0d56: 28 03     and   a,#$03
0d58: c4 38     mov   $38,a
0d5a: e4 01     mov   a,$01
0d5c: 28 04     and   a,#$04
0d5e: f0 08     beq   $0d68
0d60: f4 ad     mov   a,$ad+x
0d62: 28 fc     and   a,#$fc
0d64: 04 38     or    a,$38
0d66: d4 ad     mov   $ad+x,a
0d68: 6f        ret
; vcmd 93
0d69: c4 36     mov   $36,a
0d6b: 28 1f     and   a,#$1f
0d6d: d5 76 05  mov   $0576+x,a
0d70: f4 8f     mov   a,$8f+x
0d72: 28 cd     and   a,#$cd
0d74: 08 20     or    a,#$20
0d76: cb 37     mov   $37,y
0d78: eb 36     mov   y,$36
0d7a: 10 02     bpl   $0d7e
0d7c: 08 10     or    a,#$10
0d7e: d4 8f     mov   $8f+x,a
0d80: e8 00     mov   a,#$00
0d82: d5 94 05  mov   $0594+x,a
0d85: eb 37     mov   y,$37
0d87: fc        inc   y
0d88: f7 34     mov   a,($34)+y
0d8a: d5 85 05  mov   $0585+x,a
0d8d: d0 06     bne   $0d95
0d8f: f4 8f     mov   a,$8f+x
0d91: 28 df     and   a,#$df
0d93: d4 8f     mov   $8f+x,a
0d95: 6f        ret
; vcmd 95
0d96: f4 8f     mov   a,$8f+x
0d98: 28 02     and   a,#$02
0d9a: d0 05     bne   $0da1
0d9c: f7 34     mov   a,($34)+y
0d9e: 5f a7 0c  jmp   $0ca7
0da1: fc        inc   y
0da2: 6f        ret
; vcmd 9E
0da3: f4 9e     mov   a,$9e+x
0da5: 28 20     and   a,#$20
0da7: d0 f3     bne   $0d9c
0da9: fc        inc   y
0daa: 6f        ret
; vcmd 9C
0dab: b5 00 03  sbc   a,$0300+x
0dae: 2d        push  a
0daf: fc        inc   y
0db0: f7 34     mov   a,($34)+y
0db2: c4 36     mov   $36,a
0db4: fc        inc   y
0db5: f7 34     mov   a,($34)+y
0db7: c4 37     mov   $37,a
0db9: ae        pop   a
0dba: 6d        push  y
0dbb: fd        mov   y,a
0dbc: f7 36     mov   a,($36)+y
0dbe: ee        pop   y
0dbf: 60        clrc
0dc0: 95 4b 03  adc   a,$034b+x
0dc3: d5 4b 03  mov   $034b+x,a
0dc6: 6f        ret
; vcmd 96 - set tempo
0dc7: d5 5a 03  mov   $035a+x,a
0dca: 6f        ret
; vcmd 8E
0dcb: d5 58 05  mov   $0558+x,a
0dce: 6f        ret
; vcmd 8F
0dcf: 60        clrc
0dd0: 95 67 05  adc   a,$0567+x
0dd3: 28 1f     and   a,#$1f
; vcmd AC
0dd5: d5 67 05  mov   $0567+x,a
0dd8: 6f        ret
; vcmd 8B
0dd9: 30 03     bmi   $0dde
0ddb: d5 1d 04  mov   $041d+x,a
0dde: fc        inc   y
0ddf: f7 34     mov   a,($34)+y
0de1: d5 2c 04  mov   $042c+x,a
0de4: 6f        ret
; vcmd 94
0de5: 30 0c     bmi   $0df3
0de7: f0 16     beq   $0dff
0de9: d5 d1 04  mov   $04d1+x,a
0dec: f4 8f     mov   a,$8f+x
0dee: 28 bf     and   a,#$bf
0df0: d4 8f     mov   $8f+x,a
0df2: 6f        ret
0df3: 28 7f     and   a,#$7f
0df5: d5 d1 04  mov   $04d1+x,a
0df8: f4 8f     mov   a,$8f+x
0dfa: 08 40     or    a,#$40
0dfc: d4 8f     mov   $8f+x,a
0dfe: 6f        ret
0dff: d5 d1 04  mov   $04d1+x,a
0e02: 6f        ret
; vcmd 99
0e03: f4 80     mov   a,$80+x
0e05: 48 10     eor   a,#$10
0e07: d4 80     mov   $80+x,a
0e09: 28 10     and   a,#$10
0e0b: f0 06     beq   $0e13
0e0d: e4 3a     mov   a,$3a
0e0f: 08 08     or    a,#$08
0e11: c4 3a     mov   $3a,a
; vcmd 8C - nop
0e13: dc        dec   y
0e14: 6f        ret
; vcmd A1 - slur on
0e15: f4 80     mov   a,$80+x
0e17: 08 10     or    a,#$10
0e19: d4 80     mov   $80+x,a
0e1b: 2f f0     bra   $0e0d
; vcmd A1 - slur off
0e1d: f4 80     mov   a,$80+x
0e1f: 28 ef     and   a,#$ef
0e21: d4 80     mov   $80+x,a
0e23: dc        dec   y
0e24: 6f        ret
; vcmd 98
0e25: d5 69 03  mov   $0369+x,a
0e28: 6f        ret
; vcmd 9D
0e29: d5 a3 05  mov   $05a3+x,a
0e2c: 6f        ret
; vcmd A0 - set sample
0e2d: d5 96 03  mov   $0396+x,a
0e30: 6f        ret
; vcmd 9F - set ADSR
0e31: d5 a5 03  mov   $03a5+x,a
0e34: 6f        ret
; vcmd 97
0e35: f0 04     beq   $0e3b
0e37: 60        clrc
0e38: 95 0e 04  adc   a,$040e+x
0e3b: d5 0e 04  mov   $040e+x,a
0e3e: 6f        ret
; vcmd 9A
0e3f: dd        mov   a,y
0e40: 80        setc
0e41: 84 34     adc   a,$34
0e43: d5 b2 05  mov   $05b2+x,a
0e46: e4 35     mov   a,$35
0e48: 88 00     adc   a,#$00
0e4a: d5 c1 05  mov   $05c1+x,a
0e4d: f7 34     mov   a,($34)+y
0e4f: 5f a7 0c  jmp   $0ca7
; vcmd 9B
0e52: f5 b2 05  mov   a,$05b2+x
0e55: c4 34     mov   $34,a
0e57: f5 c1 05  mov   a,$05c1+x
0e5a: c4 35     mov   $35,a
0e5c: 8d 00     mov   y,#$00
0e5e: 6f        ret
; vcmd A3
0e5f: f0 30     beq   $0e91
0e61: 1c        asl   a
0e62: 6d        push  y
0e63: fd        mov   y,a
0e64: f7 62     mov   a,($62)+y
0e66: d5 68 04  mov   $0468+x,a
0e69: c4 36     mov   $36,a
0e6b: fc        inc   y
0e6c: f7 62     mov   a,($62)+y
0e6e: d5 77 04  mov   $0477+x,a
0e71: c4 37     mov   $37,a
0e73: 8d 00     mov   y,#$00
0e75: f7 36     mov   a,($36)+y
0e77: ee        pop   y
0e78: d5 b4 03  mov   $03b4+x,a
0e7b: e4 01     mov   a,$01
0e7d: 28 04     and   a,#$04
0e7f: d0 04     bne   $0e85
0e81: d5 b4 03  mov   $03b4+x,a
0e84: 6f        ret
0e85: f4 8f     mov   a,$8f+x
0e87: 08 01     or    a,#$01
0e89: d4 8f     mov   $8f+x,a
0e8b: e8 80     mov   a,#$80
0e8d: d5 59 04  mov   $0459+x,a
0e90: 6f        ret
0e91: f4 8f     mov   a,$8f+x
0e93: 28 fe     and   a,#$fe
0e95: d4 8f     mov   $8f+x,a
0e97: fc        inc   y
0e98: f7 34     mov   a,($34)+y
; vcmd AB - set panpot
0e9a: d5 b4 03  mov   $03b4+x,a
0e9d: e4 01     mov   a,$01
0e9f: 28 04     and   a,#$04
0ea1: d0 03     bne   $0ea6
0ea3: d5 b4 03  mov   $03b4+x,a
0ea6: 6f        ret
; vcmds A4,A5,A6
0ea7: f4 9e     mov   a,$9e+x
0ea9: 08 02     or    a,#$02
0eab: d4 9e     mov   $9e+x,a
0ead: dc        dec   y
0eae: 6f        ret
; vcmd A7
0eaf: f4 9e     mov   a,$9e+x
0eb1: 28 fd     and   a,#$fd
0eb3: d4 9e     mov   $9e+x,a
0eb5: dc        dec   y
0eb6: 6f        ret
; vcmd A8
0eb7: 6d        push  y
0eb8: 3f f9 0a  call  $0af9
0ebb: ee        pop   y
0ebc: f4 9e     mov   a,$9e+x
0ebe: 08 01     or    a,#$01
0ec0: d4 9e     mov   $9e+x,a
0ec2: 6f        ret
; vcmd A9
0ec3: f4 9e     mov   a,$9e+x
0ec5: 08 01     or    a,#$01
0ec7: d4 9e     mov   $9e+x,a
0ec9: dc        dec   y
0eca: 6f        ret
; vcmd AA
0ecb: f4 9e     mov   a,$9e+x
0ecd: 28 fe     and   a,#$fe
0ecf: d4 9e     mov   $9e+x,a
0ed1: dc        dec   y
0ed2: 6f        ret
; vcmd B0
0ed3: f0 09     beq   $0ede
0ed5: 8f 00 38  mov   $38,#$00
0ed8: e4 01     mov   a,$01
0eda: 08 08     or    a,#$08
0edc: 2f 07     bra   $0ee5
0ede: 8f 20 38  mov   $38,#$20
0ee1: e4 01     mov   a,$01
0ee3: 28 f7     and   a,#$f7
0ee5: c4 01     mov   $01,a
0ee7: e4 3e     mov   a,$3e
0ee9: 28 1f     and   a,#$1f
0eeb: 04 38     or    a,$38
0eed: 8f 6c f2  mov   $f2,#$6c
0ef0: c4 f3     mov   $f3,a
0ef2: 6f        ret
; vcmd AE
0ef3: f4 ad     mov   a,$ad+x
0ef5: 28 fb     and   a,#$fb
0ef7: d4 ad     mov   $ad+x,a
0ef9: dc        dec   y
0efa: 6f        ret
; vcmd AF
0efb: f4 ad     mov   a,$ad+x
0efd: 08 04     or    a,#$04
0eff: d4 ad     mov   $ad+x,a
0f01: dc        dec   y
0f02: 6f        ret
; dispatch vcmd in A, read first argument
0f03: 1c        asl   a
0f04: 5d        mov   x,a
0f05: f5 46 0c  mov   a,$0c46+x
0f08: 2d        push  a
0f09: f5 45 0c  mov   a,$0c45+x
0f0c: 2d        push  a
0f0d: f8 2b     mov   x,$2b
0f0f: fc        inc   y
0f10: f7 34     mov   a,($34)+y
0f12: 6f        ret
; do vcmds
0f13: f5 78 03  mov   a,$0378+x
0f16: c4 34     mov   $34,a
0f18: f5 87 03  mov   a,$0387+x
0f1b: c4 35     mov   $35,a             ; set $34/5 to reading ptr (lo/hi)
0f1d: 8d 00     mov   y,#$00            ; zero reading index
0f1f: f7 34     mov   a,($34)+y         ; read vcmd
0f21: 30 03     bmi   $0f26             ; vcmds 80-FF
0f23: 5f b3 0f  jmp   $0fb3             ; vcmds 00-7F
0f26: 68 c0     cmp   a,#$c0
0f28: b0 08     bcs   $0f32
0f2a: 3f 03 0f  call  $0f03             ; dispatch vcmds 80-BF
0f2d: f8 2b     mov   x,$2b             ; voice number
0f2f: fc        inc   y
0f30: 2f ed     bra   $0f1f             ; do next vcmd
0f32: 68 de     cmp   a,#$de
0f34: b0 75     bcs   $0fab             ; vcmds DE-FF
0f36: a8 bf     sbc   a,#$bf            ; vcmds C0-DD
0f38: 1c        asl   a
0f39: 1c        asl   a
0f3a: 1c        asl   a
0f3b: 6d        push  y
0f3c: fd        mov   y,a
0f3d: f7 52     mov   a,($52)+y
0f3f: d5 96 03  mov   $0396+x,a
0f42: fc        inc   y
0f43: f7 52     mov   a,($52)+y
0f45: d5 a5 03  mov   $03a5+x,a
0f48: fc        inc   y
0f49: f7 52     mov   a,($52)+y
0f4b: d5 2d 03  mov   $032d+x,a
0f4e: fc        inc   y
0f4f: f7 52     mov   a,($52)+y
0f51: c4 38     mov   $38,a
0f53: fc        inc   y
0f54: f7 52     mov   a,($52)+y
0f56: c4 39     mov   $39,a
0f58: 28 1f     and   a,#$1f
0f5a: d5 67 05  mov   $0567+x,a
0f5d: e4 39     mov   a,$39
0f5f: 0d        push  psw
0f60: 28 60     and   a,#$60
0f62: 3c        rol   a
0f63: 3c        rol   a
0f64: 3c        rol   a
0f65: 3c        rol   a
0f66: c4 39     mov   $39,a
0f68: f4 80     mov   a,$80+x
0f6a: 28 fc     and   a,#$fc
0f6c: 04 39     or    a,$39
0f6e: d4 80     mov   $80+x,a
0f70: e4 38     mov   a,$38
0f72: 8e        pop   psw
0f73: 30 0a     bmi   $0f7f
0f75: d5 3c 03  mov   $033c+x,a
0f78: e8 00     mov   a,#$00
0f7a: d5 d1 04  mov   $04d1+x,a
0f7d: 2f 0a     bra   $0f89
0f7f: 28 ff     and   a,#$ff
0f81: 3f e5 0d  call  $0de5
0f84: e8 00     mov   a,#$00
0f86: d5 3c 03  mov   $033c+x,a
0f89: fc        inc   y
0f8a: f4 ad     mov   a,$ad+x
0f8c: 28 04     and   a,#$04
0f8e: d0 0b     bne   $0f9b
0f90: e4 01     mov   a,$01
0f92: 28 04     and   a,#$04
0f94: f0 02     beq   $0f98
0f96: f7 52     mov   a,($52)+y
0f98: d5 b4 03  mov   $03b4+x,a
0f9b: fc        inc   y
0f9c: fc        inc   y
0f9d: f7 52     mov   a,($52)+y
0f9f: d0 11     bne   $0fb2
0fa1: c4 39     mov   $39,a
0fa3: ee        pop   y
0fa4: fc        inc   y
0fa5: f7 34     mov   a,($34)+y         ; read vcmd
0fa7: 10 0a     bpl   $0fb3             ; vcmds 00-7F
0fa9: 30 0b     bmi   $0fb6             ; vcmds 80-FF
; vcmds DE-FF - set duration
0fab: f5 b3 04  mov   a,$04b3+x
0fae: 0d        push  psw
0faf: 5f bf 0f  jmp   $0fbf
0fb2: ee        pop   y
; vcmds 00-7F - note
0fb3: c4 39     mov   $39,a             ;; $39 <- note number
0fb5: fc        inc   y
0fb6: f5 b3 04  mov   a,$04b3+x
0fb9: 0d        push  psw
0fba: e4 39     mov   a,$39             ;; note number?
0fbc: d5 b3 04  mov   $04b3+x,a
0fbf: f0 2c     beq   $0fed             ;; jump if ($0540+X == 0) (rest)
0fc1: 2d        push  a
0fc2: f4 9e     mov   a,$9e+x
0fc4: 28 08     and   a,#$08
0fc6: f0 24     beq   $0fec
0fc8: f4 bc     mov   a,$bc+x
0fca: c4 36     mov   $36,a
0fcc: f4 cb     mov   a,$cb+x
0fce: c4 37     mov   $37,a
0fd0: ae        pop   a
0fd1: 3f 99 10  call  $1099
0fd4: f4 bc     mov   a,$bc+x
0fd6: d5 86 04  mov   $0486+x,a
0fd9: f4 cb     mov   a,$cb+x
0fdb: d5 95 04  mov   $0495+x,a
0fde: 8e        pop   psw
0fdf: 0d        push  psw
0fe0: f0 0e     beq   $0ff0
0fe2: e4 36     mov   a,$36
0fe4: d4 bc     mov   $bc+x,a
0fe6: e4 37     mov   a,$37
0fe8: d4 cb     mov   $cb+x,a
0fea: 2f 04     bra   $0ff0
0fec: ae        pop   a
0fed: 3f 99 10  call  $1099
0ff0: f7 34     mov   a,($34)+y         ; read vcmd
0ff2: 68 ef     cmp   a,#$ef
0ff4: 90 1c     bcc   $1012             ; vcmds 00-EE
0ff6: a8 ef     sbc   a,#$ef
0ff8: d0 05     bne   $0fff             ; vcmds F0-FF
0ffa: fc        inc   y                 ; vcmd EF, inc reading ptr
0ffb: f7 34     mov   a,($34)+y         ; read argument
0ffd: b0 07     bcs   $1006
0fff: cb 36     mov   $36,y
1001: fd        mov   y,a
1002: f7 50     mov   a,($50)+y         ; read duration from table
1004: eb 36     mov   y,$36
1006: fc        inc   y
1007: d5 ff 03  mov   $03ff+x,a
100a: f7 34     mov   a,($34)+y
100c: d5 a3 05  mov   $05a3+x,a
100f: fc        inc   y
1010: 2f 16     bra   $1028
1012: a8 dd     sbc   a,#$dd
1014: 90 12     bcc   $1028             ; vcmds 00-DD
1016: d0 05     bne   $101d             ; vcmds DF-EE
1018: fc        inc   y                 ; vcmd DE, inc reading ptr
1019: f7 34     mov   a,($34)+y         ; read argument
101b: b0 07     bcs   $1024             ; branch always
101d: cb 36     mov   $36,y
101f: fd        mov   y,a
1020: f7 50     mov   a,($50)+y         ; read duration from table
1022: eb 36     mov   y,$36
1024: fc        inc   y                 ; inc reading ptr
1025: d5 ff 03  mov   $03ff+x,a         ; set duration
1028: e8 00     mov   a,#$00
102a: d5 f0 03  mov   $03f0+x,a         ; zero duration counter
102d: 8e        pop   psw
102e: f0 1a     beq   $104a             ;; jump if ($0540+X == 0) (rest)
1030: f4 80     mov   a,$80+x
1032: 28 10     and   a,#$10
1034: f0 14     beq   $104a
1036: e4 3a     mov   a,$3a
1038: 28 08     and   a,#$08
103a: d0 0e     bne   $104a
103c: f4 9e     mov   a,$9e+x
103e: 28 40     and   a,#$40
1040: f0 3c     beq   $107e
1042: e4 3a     mov   a,$3a
1044: 08 40     or    a,#$40
1046: c4 3a     mov   $3a,a
1048: 2f 34     bra   $107e
104a: f4 80     mov   a,$80+x
104c: 28 04     and   a,#$04
104e: f0 06     beq   $1056
1050: f4 9e     mov   a,$9e+x
1052: 28 50     and   a,#$50
1054: f0 06     beq   $105c
1056: e4 3a     mov   a,$3a
1058: 08 40     or    a,#$40
105a: c4 3a     mov   $3a,a
105c: e8 01     mov   a,#$01
105e: d5 0d 05  mov   $050d+x,a         ; set $050d+X to #$01
1061: d5 2b 05  mov   $052b+x,a         ; set $052b+X to #$01
1064: d5 49 05  mov   $0549+x,a         ; set $0549+X to #$01
1067: d5 ef 04  mov   $04ef+x,a         ; set $04ef+X to #$01
106a: e8 ff     mov   a,#$ff
106c: d5 fe 04  mov   $04fe+x,a         ; set $04fe+X to #$ff
106f: d5 3a 05  mov   $053a+x,a         ; set $053a+X to #$ff
1072: d5 e0 04  mov   $04e0+x,a         ; set $04e0+X to #$ff
1075: d5 1c 05  mov   $051c+x,a         ; set $051c+X to #$ff
1078: f4 8f     mov   a,$8f+x
107a: 08 04     or    a,#$04
107c: d4 8f     mov   $8f+x,a
107e: dd        mov   a,y
107f: 60        clrc
1080: 84 34     adc   a,$34
1082: d5 78 03  mov   $0378+x,a
1085: e4 35     mov   a,$35
1087: 88 00     adc   a,#$00
1089: d5 87 03  mov   $0387+x,a         ; set reading ptr (lo/hi) to $34/5 + Y
108c: e4 3a     mov   a,$3a
108e: 08 80     or    a,#$80
1090: c4 3a     mov   $3a,a
1092: f4 9e     mov   a,$9e+x
1094: 28 af     and   a,#$af
1096: d4 9e     mov   $9e+x,a
1098: 6f        ret
1099: d4 bc     mov   $bc+x,a
109b: 28 ff     and   a,#$ff
109d: d0 03     bne   $10a2
109f: d4 cb     mov   $cb+x,a
10a1: 6f        ret
;
10a2: f4 80     mov   a,$80+x
10a4: 28 08     and   a,#$08
10a6: f0 13     beq   $10bb
10a8: e8 01     mov   a,#$01
10aa: d4 cb     mov   $cb+x,a
10ac: f4 bc     mov   a,$bc+x
10ae: 9c        dec   a
10af: 60        clrc
10b0: 95 4b 03  adc   a,$034b+x
10b3: d4 bc     mov   $bc+x,a
10b5: 28 1f     and   a,#$1f
10b7: d5 67 05  mov   $0567+x,a
10ba: 6f        ret
;
10bb: f4 bc     mov   a,$bc+x
10bd: 60        clrc
10be: 95 4b 03  adc   a,$034b+x
10c1: 68 79     cmp   a,#$79
10c3: b0 25     bcs   $10ea
10c5: c4 38     mov   $38,a             ; save note number
10c7: 6d        push  y
10c8: f5 96 03  mov   a,$0396+x         ; instrument #
10cb: fd        mov   y,a
10cc: f7 60     mov   a,($60)+y         ; read per-instrument tuning (semitones)
10ce: 60        clrc
10cf: 84 38     adc   a,$38
10d1: 1c        asl   a
10d2: fd        mov   y,a
10d3: 60        clrc
10d4: f5 0e 04  mov   a,$040e+x
10d7: 0d        push  psw
10d8: 96 25 16  adc   a,$1625+y         ; read pitch table
10db: d4 bc     mov   $bc+x,a
10dd: f6 26 16  mov   a,$1626+y
10e0: 88 00     adc   a,#$00
10e2: 8e        pop   psw
10e3: 10 01     bpl   $10e6
10e5: 9c        dec   a
10e6: d4 cb     mov   $cb+x,a
10e8: ee        pop   y
10e9: 6f        ret
;
10ea: e8 00     mov   a,#$00
10ec: d4 bc     mov   $bc+x,a
10ee: d4 cb     mov   $cb+x,a
10f0: 6f        ret
; read ADSR from $5c[$03a5+x] to $3b/c
10f1: f5 a5 03  mov   a,$03a5+x
10f4: 1c        asl   a
10f5: b0 0b     bcs   $1102
10f7: fd        mov   y,a
10f8: f7 5c     mov   a,($5c)+y
10fa: c4 42     mov   $42,a
10fc: fc        inc   y
10fd: f7 5c     mov   a,($5c)+y
10ff: c4 43     mov   $43,a
1101: 6f        ret
; reset ADSR if the index >= 0x80
1102: 8f 00 42  mov   $42,#$00
1105: d0 04     bne   $110b
1107: 8f 7f 43  mov   $43,#$7f
110a: 6f        ret
;
110b: fd        mov   y,a
110c: f7 5a     mov   a,($5a)+y
110e: c4 36     mov   $36,a
1110: fc        inc   y
1111: f7 5a     mov   a,($5a)+y
1113: c4 37     mov   $37,a
1115: f5 ef 04  mov   a,$04ef+x
1118: 9c        dec   a
1119: d5 ef 04  mov   $04ef+x,a
111c: f0 06     beq   $1124
111e: f5 e0 04  mov   a,$04e0+x
1121: fd        mov   y,a
1122: 2f 0e     bra   $1132
1124: f5 e0 04  mov   a,$04e0+x
1127: fd        mov   y,a
1128: 3f 09 13  call  $1309
112b: d5 ef 04  mov   $04ef+x,a
112e: dd        mov   a,y
112f: d5 e0 04  mov   $04e0+x,a
1132: f7 36     mov   a,($36)+y
1134: c4 43     mov   $43,a
1136: 6f        ret
; read software envelope params
1137: f5 2d 03  mov   a,$032d+x
113a: d0 06     bne   $1142
113c: f5 1e 03  mov   a,$031e+x
113f: c4 2a     mov   $2a,a
1141: 6f        ret
1142: 1c        asl   a
1143: fd        mov   y,a
1144: f7 54     mov   a,($54)+y
1146: c4 36     mov   $36,a
1148: fc        inc   y
1149: f7 54     mov   a,($54)+y
114b: c4 37     mov   $37,a
114d: f5 0d 05  mov   a,$050d+x
1150: 9c        dec   a
1151: d5 0d 05  mov   $050d+x,a
1154: f0 07     beq   $115d
1156: f5 fe 04  mov   a,$04fe+x
1159: fd        mov   y,a
115a: 5f 6b 11  jmp   $116b
115d: f5 fe 04  mov   a,$04fe+x
1160: fd        mov   y,a
1161: 3f 09 13  call  $1309
1164: d5 0d 05  mov   $050d+x,a
1167: dd        mov   a,y
1168: d5 fe 04  mov   $04fe+x,a
116b: f7 36     mov   a,($36)+y
116d: bc        inc   a
116e: 1c        asl   a
116f: 1c        asl   a
1170: fd        mov   y,a
1171: f5 1e 03  mov   a,$031e+x
1174: cf        mul   ya
1175: 1c        asl   a
1176: dd        mov   a,y
1177: 3c        rol   a
1178: c4 2a     mov   $2a,a
117a: 6f        ret
;
117b: c4 38     mov   $38,a
117d: e4 3a     mov   a,$3a
117f: 10 0d     bpl   $118e
1181: f5 b3 04  mov   a,$04b3+x
1184: f0 04     beq   $118a
1186: 60        clrc
1187: 95 4b 03  adc   a,$034b+x
118a: d5 c2 04  mov   $04c2+x,a
118d: 6f        ret
118e: f4 8f     mov   a,$8f+x
1190: 28 40     and   a,#$40
1192: d0 12     bne   $11a6
1194: f5 c2 04  mov   a,$04c2+x
1197: f0 f4     beq   $118d
1199: 80        setc
119a: a4 38     sbc   a,$38
119c: 90 1c     bcc   $11ba
119e: f0 1a     beq   $11ba
11a0: d5 c2 04  mov   $04c2+x,a
11a3: 5f c1 10  jmp   $10c1
11a6: f5 c2 04  mov   a,$04c2+x
11a9: f0 e2     beq   $118d
11ab: 60        clrc
11ac: 84 38     adc   a,$38
11ae: b0 0a     bcs   $11ba
11b0: 68 79     cmp   a,#$79
11b2: b0 06     bcs   $11ba
11b4: d5 c2 04  mov   $04c2+x,a
11b7: 5f c1 10  jmp   $10c1
11ba: e8 00     mov   a,#$00
11bc: d5 c2 04  mov   $04c2+x,a
11bf: d4 bc     mov   $bc+x,a
11c1: d4 cb     mov   $cb+x,a
11c3: 6f        ret
;
11c4: f5 b3 04  mov   a,$04b3+x
11c7: f0 0e     beq   $11d7
11c9: f4 cb     mov   a,$cb+x
11cb: 75 95 04  cmp   a,$0495+x
11ce: d0 27     bne   $11f7
11d0: f4 bc     mov   a,$bc+x
11d2: 75 86 04  cmp   a,$0486+x
11d5: d0 01     bne   $11d8
11d7: 6f        ret
11d8: 90 10     bcc   $11ea
11da: b5 a4 04  sbc   a,$04a4+x
11dd: 90 05     bcc   $11e4
11df: 75 86 04  cmp   a,$0486+x
11e2: b0 10     bcs   $11f4
11e4: f5 86 04  mov   a,$0486+x
11e7: d4 bc     mov   $bc+x,a
11e9: 6f        ret
11ea: 95 a4 04  adc   a,$04a4+x
11ed: b0 f5     bcs   $11e4
11ef: 75 86 04  cmp   a,$0486+x
11f2: b0 f0     bcs   $11e4
11f4: d4 bc     mov   $bc+x,a
11f6: 6f        ret
;
11f7: f4 bc     mov   a,$bc+x
11f9: 90 15     bcc   $1210
11fb: b5 a4 04  sbc   a,$04a4+x
11fe: d4 bc     mov   $bc+x,a
1200: b0 f4     bcs   $11f6
1202: f4 cb     mov   a,$cb+x
1204: 9c        dec   a
1205: d4 cb     mov   $cb+x,a
1207: 75 95 04  cmp   a,$0495+x
120a: d0 ea     bne   $11f6
120c: f4 bc     mov   a,$bc+x
120e: b0 cf     bcs   $11df
1210: 95 a4 04  adc   a,$04a4+x
1213: d4 bc     mov   $bc+x,a
1215: 90 df     bcc   $11f6
1217: f4 cb     mov   a,$cb+x
1219: bc        inc   a
121a: d4 cb     mov   $cb+x,a
121c: 75 95 04  cmp   a,$0495+x
121f: d0 d5     bne   $11f6
1221: f4 bc     mov   a,$bc+x
1223: b0 ca     bcs   $11ef
1225: f4 bc     mov   a,$bc+x
1227: c4 28     mov   $28,a
1229: f4 cb     mov   a,$cb+x
122b: c4 29     mov   $29,a
122d: 04 28     or    a,$28
122f: f0 05     beq   $1236
1231: f5 3c 03  mov   a,$033c+x
1234: d0 01     bne   $1237
1236: 6f        ret
; read vibrato params
1237: 1c        asl   a
1238: fd        mov   y,a
1239: f7 56     mov   a,($56)+y
123b: c4 36     mov   $36,a
123d: fc        inc   y
123e: f7 56     mov   a,($56)+y
1240: c4 37     mov   $37,a
1242: f5 2b 05  mov   a,$052b+x
1245: 9c        dec   a
1246: d5 2b 05  mov   $052b+x,a
1249: f0 07     beq   $1252
124b: f5 1c 05  mov   a,$051c+x
124e: fd        mov   y,a
124f: 5f 60 12  jmp   $1260
1252: f5 1c 05  mov   a,$051c+x
1255: fd        mov   y,a
1256: 3f 09 13  call  $1309
1259: d5 2b 05  mov   $052b+x,a
125c: dd        mov   a,y
125d: d5 1c 05  mov   $051c+x,a
1260: f7 36     mov   a,($36)+y
1262: 60        clrc
1263: 30 12     bmi   $1277
1265: 84 28     adc   a,$28
1267: c4 28     mov   $28,a
1269: e8 00     mov   a,#$00
126b: 84 29     adc   a,$29
126d: c4 29     mov   $29,a
126f: b0 14     bcs   $1285
1271: 68 40     cmp   a,#$40
1273: 90 16     bcc   $128b
1275: b0 0e     bcs   $1285
1277: 84 28     adc   a,$28
1279: c4 28     mov   $28,a
127b: e8 ff     mov   a,#$ff
127d: 84 29     adc   a,$29
127f: c4 29     mov   $29,a
1281: b0 08     bcs   $128b
1283: 90 00     bcc   $1285
1285: e8 00     mov   a,#$00
1287: c4 28     mov   $28,a
1289: c4 29     mov   $29,a
128b: f5 3c 03  mov   a,$033c+x
128e: 30 0a     bmi   $129a
1290: e4 28     mov   a,$28
1292: d5 bc 00  mov   $00bc+x,a
1295: e4 29     mov   a,$29
1297: d5 cb 00  mov   $00cb+x,a
129a: 6f        ret
;
129b: f5 58 05  mov   a,$0558+x
129e: 30 30     bmi   $12d0
12a0: 68 20     cmp   a,#$20
12a2: b0 09     bcs   $12ad
12a4: 95 67 05  adc   a,$0567+x
12a7: 28 1f     and   a,#$1f
12a9: d5 67 05  mov   $0567+x,a
12ac: 6f        ret
;
12ad: 68 30     cmp   a,#$30
12af: b0 0b     bcs   $12bc
12b1: 95 67 05  adc   a,$0567+x
12b4: 28 0f     and   a,#$0f
12b6: 08 10     or    a,#$10
12b8: d5 67 05  mov   $0567+x,a
12bb: 6f        ret
;
12bc: 60        clrc
12bd: c4 38     mov   $38,a
12bf: 95 67 05  adc   a,$0567+x
12c2: 28 07     and   a,#$07
12c4: c4 39     mov   $39,a
12c6: e4 38     mov   a,$38
12c8: 28 18     and   a,#$18
12ca: 04 39     or    a,$39
12cc: d5 67 05  mov   $0567+x,a
12cf: 6f        ret
;
12d0: 1c        asl   a
12d1: d0 09     bne   $12dc
12d3: f5 67 05  mov   a,$0567+x
12d6: 48 1f     eor   a,#$1f
12d8: d5 67 05  mov   $0567+x,a
12db: 6f        ret
;
12dc: fd        mov   y,a
12dd: f7 58     mov   a,($58)+y
12df: c4 36     mov   $36,a
12e1: fc        inc   y
12e2: f7 58     mov   a,($58)+y
12e4: c4 37     mov   $37,a
12e6: f5 49 05  mov   a,$0549+x
12e9: 9c        dec   a
12ea: d5 49 05  mov   $0549+x,a
12ed: f0 06     beq   $12f5
12ef: f5 3a 05  mov   a,$053a+x
12f2: fd        mov   y,a
12f3: 2f 0e     bra   $1303
12f5: f5 3a 05  mov   a,$053a+x
12f8: fd        mov   y,a
12f9: 3f 09 13  call  $1309
12fc: d5 49 05  mov   $0549+x,a
12ff: dd        mov   a,y
1300: d5 3a 05  mov   $053a+x,a
1303: f7 36     mov   a,($36)+y
1305: d5 67 05  mov   $0567+x,a
1308: 6f        ret
;
1309: fc        inc   y
130a: f7 36     mov   a,($36)+y
130c: 30 02     bmi   $1310
130e: fc        inc   y
130f: 6f        ret
1310: 68 81     cmp   a,#$81
1312: f0 06     beq   $131a
1314: b0 0c     bcs   $1322
1316: e8 00     mov   a,#$00
1318: dc        dec   y
1319: 6f        ret
;
131a: dd        mov   a,y
131b: fc        inc   y
131c: 80        setc
131d: b7 36     sbc   a,($36)+y
131f: fd        mov   y,a
1320: 2f e8     bra   $130a
1322: ad 83     cmp   y,#$83
1324: f0 06     beq   $132c
1326: b0 0e     bcs   $1336
1328: 8d 00     mov   y,#$00
132a: 2f de     bra   $130a
132c: f4 8f     mov   a,$8f+x
132e: 28 04     and   a,#$04
1330: f0 0a     beq   $133c
1332: e8 01     mov   a,#$01
1334: 2f e2     bra   $1318
1336: f4 8f     mov   a,$8f+x
1338: 28 04     and   a,#$04
133a: d0 de     bne   $131a
133c: fc        inc   y
133d: 2f cb     bra   $130a
;
133f: f5 68 04  mov   a,$0468+x
1342: c4 36     mov   $36,a
1344: f5 77 04  mov   a,$0477+x
1347: c4 37     mov   $37,a
1349: 8d 01     mov   y,#$01
134b: f7 36     mov   a,($36)+y
134d: 48 80     eor   a,#$80
134f: c4 38     mov   $38,a
1351: f5 b4 03  mov   a,$03b4+x
1354: 48 80     eor   a,#$80
1356: c4 39     mov   $39,a
1358: fc        inc   y
1359: f7 36     mov   a,($36)+y
135b: 60        clrc
135c: 95 59 04  adc   a,$0459+x
135f: d5 59 04  mov   $0459+x,a
1362: fc        inc   y
1363: f7 36     mov   a,($36)+y
1365: 30 0e     bmi   $1375
1367: 84 39     adc   a,$39
1369: b0 14     bcs   $137f
136b: 64 38     cmp   a,$38
136d: b0 10     bcs   $137f
136f: 48 80     eor   a,#$80
1371: d5 b4 03  mov   $03b4+x,a
1374: 6f        ret
1375: 84 39     adc   a,$39
1377: 90 06     bcc   $137f
1379: 64 38     cmp   a,$38
137b: 90 02     bcc   $137f
137d: d0 f0     bne   $136f
137f: fc        inc   y
1380: f7 36     mov   a,($36)+y
1382: fc        inc   y
1383: 77 36     cmp   a,($36)+y
1385: f0 13     beq   $139a
1387: d5 b4 03  mov   $03b4+x,a
138a: dc        dec   y
138b: dd        mov   a,y
138c: 60        clrc
138d: 84 36     adc   a,$36
138f: d5 68 04  mov   $0468+x,a
1392: e4 37     mov   a,$37
1394: 88 00     adc   a,#$00
1396: d5 77 04  mov   $0477+x,a
1399: 6f        ret
139a: fc        inc   y
139b: f7 36     mov   a,($36)+y
139d: c4 34     mov   $34,a
139f: fc        inc   y
13a0: 17 36     or    a,($36)+y
13a2: f0 11     beq   $13b5
13a4: f7 36     mov   a,($36)+y
13a6: c4 37     mov   $37,a
13a8: e4 34     mov   a,$34
13aa: c4 36     mov   $36,a
13ac: 8d 00     mov   y,#$00
13ae: f7 36     mov   a,($36)+y
13b0: d5 b4 03  mov   $03b4+x,a
13b3: 2f d6     bra   $138b
13b5: e4 38     mov   a,$38
13b7: 48 80     eor   a,#$80
13b9: d5 b4 03  mov   $03b4+x,a
13bc: f4 8f     mov   a,$8f+x
13be: 28 fe     and   a,#$fe
13c0: d4 8f     mov   $8f+x,a
13c2: 6f        ret
;
13c3: e8 00     mov   a,#$00
13c5: c4 3b     mov   $3b,a
13c7: c4 3c     mov   $3c,a
13c9: c4 3d     mov   $3d,a
13cb: c4 3f     mov   $3f,a
13cd: c4 40     mov   $40,a
13cf: c4 41     mov   $41,a
13d1: e8 ff     mov   a,#$ff
13d3: c4 3e     mov   $3e,a
13d5: c5 88 02  mov   $0288,a
13d8: c5 98 02  mov   $0298,a
13db: c5 a8 02  mov   $02a8,a
13de: c5 b8 02  mov   $02b8,a
13e1: c5 c8 02  mov   $02c8,a
13e4: c5 d8 02  mov   $02d8,a
13e7: c5 e8 02  mov   $02e8,a
13ea: c5 f8 02  mov   $02f8,a
13ed: 6f        ret
;
13ee: f4 9e     mov   a,$9e+x
13f0: 28 40     and   a,#$40
13f2: d0 f9     bne   $13ed
13f4: f5 69 03  mov   a,$0369+x
13f7: fd        mov   y,a
13f8: 1c        asl   a
13f9: 1c        asl   a
13fa: 1c        asl   a
13fb: 1c        asl   a
13fc: c4 39     mov   $39,a
13fe: f6 33 15  mov   a,$1533+y
1401: c4 38     mov   $38,a
1403: 24 3b     and   a,$3b
1405: f0 07     beq   $140e
1407: f4 9e     mov   a,$9e+x
1409: 08 40     or    a,#$40
140b: d4 9e     mov   $9e+x,a
140d: 6f        ret
140e: e4 28     mov   a,$28
1410: 04 29     or    a,$29
1412: f0 d9     beq   $13ed
1414: f4 8f     mov   a,$8f+x
1416: 28 08     and   a,#$08
1418: f0 1b     beq   $1435
141a: e4 01     mov   a,$01
141c: 28 20     and   a,#$20
141e: d0 08     bne   $1428
1420: f4 8f     mov   a,$8f+x
1422: 28 f7     and   a,#$f7
1424: d4 8f     mov   $8f+x,a
1426: 2f 0d     bra   $1435
1428: e4 4a     mov   a,$4a
142a: bc        inc   a
142b: 1c        asl   a
142c: 1c        asl   a
142d: eb 2a     mov   y,$2a
142f: cf        mul   ya
1430: 1c        asl   a
1431: dd        mov   a,y
1432: 3c        rol   a
1433: c4 2a     mov   $2a,a
1435: f4 80     mov   a,$80+x
1437: 28 02     and   a,#$02
1439: f0 4a     beq   $1485
143b: f4 80     mov   a,$80+x
143d: 28 01     and   a,#$01
143f: d0 1e     bne   $145f
1441: e4 3e     mov   a,$3e
1443: 30 01     bmi   $1446
1445: 6f        ret
1446: f5 67 05  mov   a,$0567+x
1449: c4 3e     mov   $3e,a
144b: e4 3f     mov   a,$3f
144d: 04 38     or    a,$38
144f: c4 3f     mov   $3f,a
1451: eb 2a     mov   y,$2a
1453: f5 2c 04  mov   a,$042c+x
1456: 30 2f     bmi   $1487
1458: cf        mul   ya
1459: 1c        asl   a
145a: dd        mov   a,y
145b: 3c        rol   a
145c: fd        mov   y,a
145d: 2f 28     bra   $1487
145f: e4 3e     mov   a,$3e
1461: 10 22     bpl   $1485
1463: e4 39     mov   a,$39
1465: 2d        push  a
1466: e4 38     mov   a,$38
1468: 2d        push  a
1469: f5 1d 04  mov   a,$041d+x
146c: fd        mov   y,a
146d: 1c        asl   a
146e: 1c        asl   a
146f: 1c        asl   a
1470: 1c        asl   a
1471: c4 39     mov   $39,a
1473: f6 33 15  mov   a,$1533+y
1476: c4 38     mov   $38,a
1478: 24 3b     and   a,$3b
147a: d0 03     bne   $147f
147c: 3f 46 14  call  $1446
147f: ae        pop   a
1480: c4 38     mov   $38,a
1482: ae        pop   a
1483: c4 39     mov   $39,a
1485: eb 2a     mov   y,$2a
1487: f6 13 15  mov   a,$1513+y
148a: c4 36     mov   $36,a
148c: fd        mov   y,a
148d: f5 b4 03  mov   a,$03b4+x
1490: 48 80     eor   a,#$80
1492: cf        mul   ya
1493: f4 ad     mov   a,$ad+x
1495: 5c        lsr   a
1496: c4 37     mov   $37,a
1498: dd        mov   a,y
1499: eb 39     mov   y,$39
149b: 90 03     bcc   $14a0
149d: 48 ff     eor   a,#$ff
149f: bc        inc   a
14a0: d6 80 02  mov   $0280+y,a
14a3: eb 36     mov   y,$36
14a5: f5 b4 03  mov   a,$03b4+x
14a8: 48 7f     eor   a,#$7f
14aa: cf        mul   ya
14ab: dd        mov   a,y
14ac: eb 39     mov   y,$39
14ae: 4b 37     lsr   $37
14b0: 90 03     bcc   $14b5
14b2: 48 ff     eor   a,#$ff
14b4: bc        inc   a
14b5: d6 81 02  mov   $0281+y,a
14b8: e4 28     mov   a,$28
14ba: d6 82 02  mov   $0282+y,a
14bd: e4 29     mov   a,$29
14bf: d6 83 02  mov   $0283+y,a
14c2: f5 96 03  mov   a,$0396+x
14c5: d6 84 02  mov   $0284+y,a
14c8: e4 42     mov   a,$42
14ca: d6 85 02  mov   $0285+y,a
14cd: e4 43     mov   a,$43
14cf: d6 86 02  mov   $0286+y,a
14d2: d6 87 02  mov   $0287+y,a
14d5: e4 3b     mov   a,$3b
14d7: 04 38     or    a,$38
14d9: c4 3b     mov   $3b,a
14db: f4 9e     mov   a,$9e+x
14dd: 28 01     and   a,#$01
14df: f0 06     beq   $14e7
14e1: e4 41     mov   a,$41
14e3: 04 38     or    a,$38
14e5: c4 41     mov   $41,a
14e7: f5 4a 04  mov   a,$044a+x
14ea: d6 88 02  mov   $0288+y,a
14ed: f4 9e     mov   a,$9e+x
14ef: 28 02     and   a,#$02
14f1: f0 06     beq   $14f9
14f3: e4 40     mov   a,$40
14f5: 04 38     or    a,$38
14f7: c4 40     mov   $40,a
14f9: e4 3a     mov   a,$3a
14fb: 28 40     and   a,#$40
14fd: f0 07     beq   $1506
14ff: e4 3c     mov   a,$3c
1501: 04 38     or    a,$38
1503: c4 3c     mov   $3c,a
1505: 6f        ret
1506: e4 3a     mov   a,$3a
1508: 28 04     and   a,#$04
150a: f0 06     beq   $1512
150c: e4 3d     mov   a,$3d
150e: 04 38     or    a,$38
1510: c4 3d     mov   $3d,a
1512: 6f        ret
;
1513: db $00,$03,$04,$05,$06,$07,$09,$0a,$0c,$0d,$0f,$12,$14,$17,$1a,$1c
1523: db $1f,$24,$28,$2d,$31,$36,$3a,$3f,$47,$4f,$57,$5f,$67,$6f,$77,$7f
;
1533: db $01,$02,$04,$08,$10,$20,$40,$80
;
153b: c4 38     mov   $38,a
153d: 1c        asl   a
153e: fd        mov   y,a
153f: f7 4e     mov   a,($4e)+y
1541: c4 36     mov   $36,a
1543: fc        inc   y
1544: f7 4e     mov   a,($4e)+y
1546: c4 37     mov   $37,a
1548: 8d 00     mov   y,#$00
154a: f7 36     mov   a,($36)+y
154c: d0 1f     bne   $156d
154e: 8d 02     mov   y,#$02
1550: f7 36     mov   a,($36)+y
1552: 5d        mov   x,a
1553: f5 4a 04  mov   a,$044a+x
1556: 64 38     cmp   a,$38
1558: d0 0f     bne   $1569
155a: f5 0f 03  mov   a,$030f+x
155d: 68 ff     cmp   a,#$ff
155f: d0 08     bne   $1569
1561: f4 80     mov   a,$80+x
1563: f0 04     beq   $1569
1565: e8 01     mov   a,#$01
1567: d4 80     mov   $80+x,a
1569: 8d 01     mov   y,#$01
156b: f7 36     mov   a,($36)+y
156d: fc        inc   y
156e: c4 39     mov   $39,a
1570: f7 36     mov   a,($36)+y
1572: fc        inc   y
1573: 5d        mov   x,a
1574: f7 36     mov   a,($36)+y
1576: d0 07     bne   $157f
1578: d4 80     mov   $80+x,a
157a: fc        inc   y
157b: 5f 1f 16  jmp   $161f
157e: 6f        ret
157f: f4 80     mov   a,$80+x
1581: 28 40     and   a,#$40
1583: d0 f9     bne   $157e
1585: d5 f0 03  mov   $03f0+x,a         ; zero duration counter
1588: d5 a3 05  mov   $05a3+x,a
158b: d5 0e 04  mov   $040e+x,a
158e: d5 b3 04  mov   $04b3+x,a
1591: d5 58 05  mov   $0558+x,a
1594: d5 67 05  mov   $0567+x,a
1597: d5 0f 03  mov   $030f+x,a
159a: d5 d1 04  mov   $04d1+x,a
159d: d4 8f     mov   $8f+x,a
159f: d4 ad     mov   $ad+x,a
15a1: e8 40     mov   a,#$40
15a3: d4 9e     mov   $9e+x,a
15a5: e4 38     mov   a,$38
15a7: 75 4a 04  cmp   a,$044a+x
15aa: d0 0a     bne   $15b6
15ac: f4 80     mov   a,$80+x
15ae: f0 09     beq   $15b9
15b0: e8 60     mov   a,#$60
15b2: d4 9e     mov   $9e+x,a
15b4: e4 38     mov   a,$38
15b6: d5 4a 04  mov   $044a+x,a
15b9: f7 36     mov   a,($36)+y
15bb: d4 80     mov   $80+x,a
15bd: fc        inc   y
15be: f7 36     mov   a,($36)+y
15c0: d5 1e 03  mov   $031e+x,a
15c3: fc        inc   y
15c4: f7 36     mov   a,($36)+y
15c6: d5 2d 03  mov   $032d+x,a
15c9: fc        inc   y
15ca: f7 36     mov   a,($36)+y
15cc: d5 3c 03  mov   $033c+x,a
15cf: fc        inc   y
15d0: f7 36     mov   a,($36)+y
15d2: 60        clrc
15d3: 84 47     adc   a,$47
15d5: d5 4b 03  mov   $034b+x,a
15d8: fc        inc   y
15d9: f7 36     mov   a,($36)+y
15db: d5 5a 03  mov   $035a+x,a
15de: fc        inc   y
15df: f7 36     mov   a,($36)+y
15e1: d5 69 03  mov   $0369+x,a
15e4: bc        inc   a
15e5: 28 07     and   a,#$07
15e7: d5 1d 04  mov   $041d+x,a
15ea: fc        inc   y
15eb: f7 36     mov   a,($36)+y
15ed: d5 78 03  mov   $0378+x,a
15f0: fc        inc   y
15f1: f7 36     mov   a,($36)+y
15f3: d5 87 03  mov   $0387+x,a
15f6: fc        inc   y
15f7: f7 36     mov   a,($36)+y
15f9: d5 96 03  mov   $0396+x,a
15fc: fc        inc   y
15fd: f7 36     mov   a,($36)+y
15ff: d5 a5 03  mov   $03a5+x,a
1602: fc        inc   y
1603: e4 01     mov   a,$01
1605: 28 04     and   a,#$04
1607: f0 02     beq   $160b
1609: f7 36     mov   a,($36)+y
160b: d5 b4 03  mov   $03b4+x,a
160e: fc        inc   y
160f: fc        inc   y
1610: e8 01     mov   a,#$01
1612: d5 ff 03  mov   $03ff+x,a         ; set duration to #$01
1615: e8 ff     mov   a,#$ff
1617: d5 3b 04  mov   $043b+x,a         ; set pulse counter to #$FF
161a: e8 40     mov   a,#$40
161c: d5 2c 04  mov   $042c+x,a
161f: 8b 39     dec   $39
1621: f0 03     beq   $1626
1623: 5f 70 15  jmp   $1570
1626: 6f        ret
