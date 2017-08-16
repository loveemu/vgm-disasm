; Clock Tower ASM
; Variation of usual Nintendo SPC

0500: db $5f,$5b,$11

; DSP: EVOL(L),EVOL(R),EFB,EON
0503: db $2c,$3c,$0d,$4d
0507: db $24,$26,$18,$17

; write A to DSP reg Y
050b: cb f2     mov   $f2,y
050d: c4 f3     mov   $f3,a
050f: 6f        ret

0510: cd 04     mov   x,#$04
0512: f5 02 05  mov   a,$0502+x
0515: fd        mov   y,a
0516: e8 00     mov   a,#$00
0518: 3f 0b 05  call  $050b
051b: 1d        dec   x
051c: d0 f4     bne   $0512
051e: 8d 6c     mov   y,#$6c
0520: e4 15     mov   a,$15
0522: 08 20     or    a,#$20
0524: 3f 0b 05  call  $050b
0527: 6f        ret

; read $50/1 into Y and A, increment voice ptr
0528: e7 50     mov   a,($50+x)
052a: bb 50     inc   $50+x
052c: d0 02     bne   $0530
052e: bb 51     inc   $51+x
0530: fd        mov   y,a
0531: 6f        ret

0532: ed        notc
0533: 6b 00     ror   $00
0535: 10 03     bpl   $053a
0537: 48 ff     eor   a,#$ff
0539: bc        inc   a
053a: 8d 00     mov   y,#$00
053c: 9e        div   ya,x
053d: 2d        push  a
053e: e8 00     mov   a,#$00
0540: 9e        div   ya,x
0541: ee        pop   y
0542: f8 10     mov   x,$10
0544: f3 00 06  bbc7  $00,$054d
0547: da 00     movw  $00,ya
0549: ba 08     movw  ya,$08
054b: 9a 00     subw  ya,$00
054d: 6f        ret

054e: db $7f,$00,$00,$00,$00,$00,$00,$00
0556: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
055e: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0566: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

056e: 2d        push  a
056f: e4 1c     mov   a,$1c
0571: 48 ff     eor   a,#$ff
0573: f3 1b 03  bbc7  $1b,$0579
0576: 60        clrc
0577: 84 1b     adc   a,$1b
0579: c4 1b     mov   $1b,a
057b: 3f 10 05  call  $0510
057e: e4 1c     mov   a,$1c
0580: 8d 7d     mov   y,#$7d
0582: 3f 0b 05  call  $050b             ; set EDL
0585: 1c        asl   a
0586: 1c        asl   a
0587: 1c        asl   a
0588: c4 00     mov   $00,a
058a: 8d 6d     mov   y,#$6d
058c: 80        setc
058d: e8 ff     mov   a,#$ff
058f: a4 00     sbc   a,$00
0591: 3f 0b 05  call  $050b             ; set ESA
0594: ae        pop   a
0595: 8d 08     mov   y,#$08
0597: cf        mul   ya
0598: 5d        mov   x,a
0599: 8d 0f     mov   y,#$0f
059b: f5 4e 05  mov   a,$054e+x
059e: 3f 0b 05  call  $050b             ; set FIR filter
05a1: 3d        inc   x
05a2: 60        clrc
05a3: dd        mov   a,y
05a4: 88 10     adc   a,#$10
05a6: fd        mov   y,a
05a7: 10 f2     bpl   $059b
05a9: f8 10     mov   x,$10
05ab: 6f        ret

; vcmd e1 - pan
05ac: d5 c1 04  mov   $04c1+x,a
05af: 28 1f     and   a,#$1f
05b1: d5 81 04  mov   $0481+x,a
05b4: e8 00     mov   a,#$00
05b6: d5 80 04  mov   $0480+x,a
05b9: 6f        ret

; vcmd e2 - pan fade
05ba: d4 71     mov   $71+x,a
05bc: 2d        push  a
05bd: 3f 28 05  call  $0528
05c0: d5 c0 04  mov   $04c0+x,a
05c3: 80        setc
05c4: b5 81 04  sbc   a,$0481+x
05c7: ce        pop   x
05c8: 3f 32 05  call  $0532
05cb: d5 a0 04  mov   $04a0+x,a
05ce: dd        mov   a,y
05cf: d5 a1 04  mov   $04a1+x,a
05d2: 6f        ret

; vcmd e3 - vibrato on
05d3: d5 80 03  mov   $0380+x,a
05d6: 3f 28 05  call  $0528
05d9: d5 61 03  mov   $0361+x,a
05dc: 3f 28 05  call  $0528
; vcmd e4 - vibrato off
05df: d4 b1     mov   $b1+x,a
05e1: d5 a1 03  mov   $03a1+x,a
05e4: e8 00     mov   a,#$00
05e6: d5 81 03  mov   $0381+x,a
05e9: 6f        ret

; vcmd e5 - master volume
05ea: c4 3a     mov   $3a,a
05ec: 8f 00 39  mov   $39,#$00
05ef: 6f        ret

; vcmd e6 - master volume fade
05f0: c4 3b     mov   $3b,a
05f2: 3f 28 05  call  $0528
05f5: c4 3c     mov   $3c,a
05f7: 80        setc
05f8: a4 3a     sbc   a,$3a
05fa: f8 3b     mov   x,$3b
05fc: 3f 32 05  call  $0532
05ff: da 3d     movw  $3d,ya
0601: 6f        ret

; vcmd e7 - tempo
0602: e8 00     mov   a,#$00
0604: da 33     movw  $33,ya
0606: 6f        ret

; vcmd e8 - tempo fade
0607: c4 35     mov   $35,a
0609: 3f 28 05  call  $0528
060c: c4 36     mov   $36,a
060e: 80        setc
060f: a4 34     sbc   a,$34
0611: f8 35     mov   x,$35
0613: 3f 32 05  call  $0532
0616: da 37     movw  $37,ya
0618: 6f        ret

; vcmd e9 - global transpose
0619: c4 31     mov   $31,a
061b: 6f        ret

; vcmd ea - per-voice transpose
061c: d5 00 04  mov   $0400+x,a
061f: 6f        ret

; vcmd eb - tremolo on
0620: d5 e0 03  mov   $03e0+x,a
0623: 3f 28 05  call  $0528
0626: d5 c1 03  mov   $03c1+x,a
0629: 3f 28 05  call  $0528
062c: d4 d1     mov   $d1+x,a
062e: 6f        ret

; vcmd ec - tremolo off
062f: d4 d1     mov   $d1+x,a
0631: 6f        ret

; vcmd ed - volume
0632: d5 21 04  mov   $0421+x,a
0635: e8 00     mov   a,#$00
0637: d5 20 04  mov   $0420+x,a
063a: 6f        ret

; vcmd ee - volume fade
063b: d4 70     mov   $70+x,a
063d: 2d        push  a
063e: 3f 28 05  call  $0528
0641: d5 60 04  mov   $0460+x,a
0644: 80        setc
0645: b5 21 04  sbc   a,$0421+x
0648: ce        pop   x
0649: 3f 32 05  call  $0532
064c: d5 40 04  mov   $0440+x,a
064f: dd        mov   a,y
0650: d5 41 04  mov   $0441+x,a
0653: 6f        ret

; vcmd ef - call subroutine
0654: d5 a0 02  mov   $02a0+x,a
0657: 3f 28 05  call  $0528
065a: d5 a1 02  mov   $02a1+x,a
065d: 3f 28 05  call  $0528
0660: d5 00 02  mov   $0200+x,a
0663: f4 50     mov   a,$50+x
0665: d5 80 02  mov   $0280+x,a
0668: f4 51     mov   a,$51+x
066a: d5 81 02  mov   $0281+x,a
066d: f5 a0 02  mov   a,$02a0+x
0670: d4 50     mov   $50+x,a
0672: f5 a1 02  mov   a,$02a1+x
0675: d4 51     mov   $51+x,a
0677: 6f        ret

; vcmd f0 - vibrato fade
0678: d5 81 03  mov   $0381+x,a
067b: 2d        push  a
067c: 8d 00     mov   y,#$00
067e: f4 b1     mov   a,$b1+x
0680: ce        pop   x
0681: 9e        div   ya,x
0682: f8 10     mov   x,$10
0684: d5 a0 03  mov   $03a0+x,a
0687: 6f        ret

; vcmd f1 - pitch envelope (release)
0688: e8 01     mov   a,#$01
068a: 2f 02     bra   $068e
; vcmd f2 - pitch envelope (attack)
068c: e8 00     mov   a,#$00
068e: d5 40 03  mov   $0340+x,a
0691: dd        mov   a,y
0692: d5 21 03  mov   $0321+x,a
0695: 3f 28 05  call  $0528
0698: d5 20 03  mov   $0320+x,a
069b: 3f 28 05  call  $0528
069e: d5 41 03  mov   $0341+x,a
06a1: 6f        ret

; vcmd f3 - pitch envelope off
06a2: e8 00     mov   a,#$00
06a4: d5 20 03  mov   $0320+x,a
06a7: 6f        ret

; vcmd f4 - tuning
06a8: d5 01 03  mov   $0301+x,a
06ab: 6f        ret

; vcmd f5 - echo vbits/volume
06ac: c4 17     mov   $17,a
06ae: 3f 28 05  call  $0528
06b1: e8 00     mov   a,#$00
06b3: da 23     movw  $23,ya
06b5: 3f 28 05  call  $0528
06b8: e8 00     mov   a,#$00
06ba: da 25     movw  $25,ya
06bc: b2 15     clr5  $15
06be: 6f        ret

; vcmd f6 - disable echo
06bf: 8d 00     mov   y,#$00
06c1: e8 00     mov   a,#$00
06c3: da 23     movw  $23,ya
06c5: da 25     movw  $25,ya
06c7: a2 15     set5  $15
06c9: 6f        ret

; vcmd f7 - set echo params
06ca: 68 10     cmp   a,#$10
06cc: 90 02     bcc   $06d0
06ce: e8 0f     mov   a,#$0f
06d0: c5 1c 00  mov   $001c,a
06d3: 3f 28 05  call  $0528
06d6: c4 18     mov   $18,a
06d8: 3f 28 05  call  $0528
06db: 3f 6e 05  call  $056e
06de: 6f        ret

; vcmd f8 - echo volume fade
06df: c4 2b     mov   $2b,a
06e1: 3f 28 05  call  $0528
06e4: c4 2c     mov   $2c,a
06e6: 80        setc
06e7: a4 24     sbc   a,$24
06e9: f8 2b     mov   x,$2b
06eb: 3f 32 05  call  $0532
06ee: da 27     movw  $27,ya
06f0: 3f 28 05  call  $0528
06f3: c4 2d     mov   $2d,a
06f5: 80        setc
06f6: a4 26     sbc   a,$26
06f8: f8 2b     mov   x,$2b
06fa: 3f 32 05  call  $0532
06fd: da 29     movw  $29,ya
06ff: 6f        ret

; vcmd f9 - pitch slide
0700: d4 91     mov   $91+x,a
0702: 3f 28 05  call  $0528
0705: d4 90     mov   $90+x,a
0707: 3f 28 05  call  $0528
070a: c8 10     cmp   x,#$10
070c: b0 03     bcs   $0711
070e: 60        clrc
070f: 84 31     adc   a,$31
0711: 60        clrc
0712: 95 00 04  adc   a,$0400+x
0715: 28 7f     and   a,#$7f
0717: d5 00 03  mov   $0300+x,a
071a: 80        setc
071b: b5 c1 02  sbc   a,$02c1+x
071e: fb 90     mov   y,$90+x
0720: 6d        push  y
0721: ce        pop   x
0722: 3f 32 05  call  $0532
0725: d5 e0 02  mov   $02e0+x,a
0728: dd        mov   a,y
0729: d5 e1 02  mov   $02e1+x,a
072c: 6f        ret

; vcmd fa - set perc base
072d: c8 10     cmp   x,#$10
072f: 90 04     bcc   $0735
0731: c4 40     mov   $40,a
0733: 2f 02     bra   $0737
0735: c4 3f     mov   $3f,a
0737: 6f        ret

; vcmd fb - nop (2 bytes)
0738: 3f 28 05  call  $0528
073b: 6f        ret

; vcmd fd - goto
073c: f5 a0 02  mov   a,$02a0+x
073f: d4 50     mov   $50+x,a
0741: f5 a1 02  mov   a,$02a1+x
0744: d4 51     mov   $51+x,a
0746: 6f        ret

; vcmd fe
0747: 09 13 46  or    ($46),($13)
074a: 6f        ret

; vcmd fc,ff - nop
074b: 6f        ret

; vcmd e0 - set instrument
074c: d5 41 02  mov   $0241+x,a
074f: c8 10     cmp   x,#$10
0751: b0 0f     bcs   $0762
0753: e4 0d     mov   a,$0d
0755: 24 13     and   a,$13
0757: f0 07     beq   $0760
0759: 04 0c     or    a,$0c
075b: c4 0c     mov   $0c,a
075d: 3f e6 07  call  $07e6
0760: 2f 09     bra   $076b
0762: e4 0e     mov   a,$0e
0764: 24 13     and   a,$13
0766: f0 03     beq   $076b
0768: 3f e6 07  call  $07e6
076b: 6f        ret

; vcmd dispatch table
076c: dw $074c  ; e0 - set instrument
076e: dw $05ac  ; e1 - pan
0770: dw $05ba  ; e2 - pan fade
0772: dw $05d3  ; e3 - vibrato on
0774: dw $05df  ; e4 - vibrato off
0776: dw $05ea  ; e5 - master volume
0778: dw $05f0  ; e6 - master volume fade
077a: dw $0602  ; e7 - tempo
077c: dw $0607  ; e8 - tempo fade
077e: dw $0619  ; e9 - global transpose
0780: dw $061c  ; ea - per-voice transpose
0782: dw $0620  ; eb - tremolo on
0784: dw $062f  ; ec - tremolo off
0786: dw $0632  ; ed - volume
0788: dw $063b  ; ee - volume fade
078a: dw $0654  ; ef - call subroutine
078c: dw $0678  ; f0 - vibrato fade
078e: dw $0688  ; f1 - pitch envelope (release)
0790: dw $068c  ; f2 - pitch envelope (attack)
0792: dw $06a2  ; f3 - pitch envelope off
0794: dw $06a8  ; f4 - tuning
0796: dw $06ac  ; f5 - echo vbits/volume
0798: dw $06bf  ; f6 - disable echo
079a: dw $06ca  ; f7 - set echo params
079c: dw $06df  ; f8 - echo volume fade
079e: dw $0700  ; f9 - pitch slide
07a0: dw $072d  ; fa - set perc base
07a2: dw $0738  ; fb - nop (2 bytes)
07a4: dw $074b  ; fc - nop
07a6: dw $073c  ; fd - goto
07a8: dw $0747  ; fe
07aa: dw $074b  ; ff - nop

; vcmd length table
07ac: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
07b4: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
07bc: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
07c4: db $03,$03,$01,$02,$00,$00,$00,$00 ; f8-ff

07cc: 80        setc
07cd: a8 e0     sbc   a,#$e0
07cf: 1c        asl   a
07d0: fd        mov   y,a
07d1: f6 6d 07  mov   a,$076d+y
07d4: 2d        push  a
07d5: f6 6c 07  mov   a,$076c+y
07d8: 2d        push  a
07d9: dd        mov   a,y
07da: 5c        lsr   a
07db: fd        mov   y,a
07dc: f6 ac 07  mov   a,$07ac+y
07df: fd        mov   y,a
07e0: f0 03     beq   $07e5
07e2: 3f 28 05  call  $0528
07e5: 6f        ret

07e6: 8f 00 04  mov   $04,#$00
07e9: f5 41 02  mov   a,$0241+x
07ec: c8 10     cmp   x,#$10
07ee: 90 0c     bcc   $07fc
07f0: 68 00     cmp   a,#$00
07f2: 30 04     bmi   $07f8
07f4: ab 04     inc   $04
07f6: 2f 02     bra   $07fa
07f8: 28 7f     and   a,#$7f
07fa: 2f 14     bra   $0810
07fc: 68 ca     cmp   a,#$ca
07fe: 90 08     bcc   $0808
0800: 80        setc
0801: a8 ca     sbc   a,#$ca
0803: 60        clrc
0804: 84 3f     adc   a,$3f
0806: 2f 08     bra   $0810
0808: 68 00     cmp   a,#$00
080a: 10 04     bpl   $0810
080c: 28 7f     and   a,#$7f
080e: ab 04     inc   $04
0810: 2d        push  a
0811: 78 00 04  cmp   $04,#$00
0814: d0 08     bne   $081e
0816: 8f 00 00  mov   $00,#$00
0819: 8f 3c 01  mov   $01,#$3c
081c: 2f 06     bra   $0824
081e: 8f 00 00  mov   $00,#$00
0821: 8f 3e 01  mov   $01,#$3e
0824: ae        pop   a
0825: 8d 06     mov   y,#$06
0827: cf        mul   ya
0828: 7a 00     addw  ya,$00
082a: da 00     movw  $00,ya
082c: 7d        mov   a,x
082d: 28 0f     and   a,#$0f
082f: 9f        xcn   a
0830: 5c        lsr   a
0831: 08 04     or    a,#$04
0833: c4 02     mov   $02,a
0835: 8d 00     mov   y,#$00
0837: f7 00     mov   a,($00)+y
0839: 10 0f     bpl   $084a
083b: 28 1f     and   a,#$1f
083d: 38 20 15  and   $15,#$20
0840: 0e 15 00  tset1 $0015
0843: 09 13 16  or    ($16),($13)
0846: e8 00     mov   a,#$00
0848: 2f 0f     bra   $0859
084a: 2d        push  a
084b: e4 13     mov   a,$13
084d: 4e 16 00  tclr1 $0016
0850: ae        pop   a
0851: 78 00 04  cmp   $04,#$00
0854: f0 03     beq   $0859
0856: 60        clrc
0857: 88 40     adc   a,#$40
0859: 6d        push  y
085a: eb 02     mov   y,$02
085c: 3f 0b 05  call  $050b             ; set ADSR(1),ADSR(2),GAIN
085f: ee        pop   y
0860: ab 02     inc   $02
0862: fc        inc   y
0863: f7 00     mov   a,($00)+y
0865: ad 04     cmp   y,#$04
0867: d0 f0     bne   $0859
0869: d5 61 02  mov   $0261+x,a
086c: fc        inc   y
086d: f7 00     mov   a,($00)+y
086f: d5 60 02  mov   $0260+x,a
0872: 6f        ret

0873: db $00,$01,$03,$07,$0d,$15,$1e,$29
087b: db $34,$42,$51,$5e,$67,$6e,$73,$77
0883: db $7a,$7c,$7d,$7e,$7f

0888: da 04     movw  $04,ya
088a: 7d        mov   a,x
088b: 28 0f     and   a,#$0f
088d: 9f        xcn   a
088e: 5c        lsr   a
088f: c4 00     mov   $00,a
0891: 03 47 04  bbs0  $47,$0898
0894: 8d 51     mov   y,#$51
0896: 2f 14     bra   $08ac
0898: eb 05     mov   y,$05
089a: f6 74 08  mov   a,$0874+y
089d: 80        setc
089e: b6 73 08  sbc   a,$0873+y
08a1: eb 04     mov   y,$04
08a3: cf        mul   ya
08a4: dd        mov   a,y
08a5: eb 05     mov   y,$05
08a7: 60        clrc
08a8: 96 73 08  adc   a,$0873+y
08ab: fd        mov   y,a
08ac: f5 61 04  mov   a,$0461+x
08af: cf        mul   ya
08b0: f5 c1 04  mov   a,$04c1+x
08b3: 1c        asl   a
08b4: 13 00 01  bbc0  $00,$08b8
08b7: 1c        asl   a
08b8: dd        mov   a,y
08b9: 90 03     bcc   $08be
08bb: 48 ff     eor   a,#$ff
08bd: bc        inc   a
08be: eb 00     mov   y,$00
08c0: 3f 0b 05  call  $050b
08c3: 8d 14     mov   y,#$14
08c5: e8 00     mov   a,#$00
08c7: 9a 04     subw  ya,$04
08c9: da 04     movw  $04,ya
08cb: ab 00     inc   $00
08cd: 33 00 c1  bbc1  $00,$0891
08d0: 6f        ret

08d1: 5f 08 de  jmp   $de08
08d4: 08 65     or    a,#$65
08d6: 09 f4 09  or    ($09),($f4)
08d9: 8c 0a 2c  dec   $2c0a
08dc: 0b d6     asl   $d6
08de: 0b 8b     asl   $8b
08e0: 0c 4a 0d  asl   $0d4a
08e3: 14 0e     or    a,$0e+x
08e5: ea 0e cd  not1  $19a1,6
08e8: 0f        brk
08e9: be        das   a
08ea: 10 f5     bpl   $08e1
08ec: c0        di
08ed: 02 c4     set0  $c4
08ef: 20        clrp
08f0: f5 c1 02  mov   a,$02c1+x
08f3: c4 21     mov   $21,a
08f5: 8d 00     mov   y,#$00
08f7: 80        setc
08f8: e4 21     mov   a,$21
08fa: a8 34     sbc   a,#$34
08fc: 90 06     bcc   $0904
08fe: 7a 20     addw  ya,$20
0900: da 20     movw  $20,ya
0902: 2f 0d     bra   $0911
0904: 80        setc
0905: e4 21     mov   a,$21
0907: a8 13     sbc   a,#$13
0909: b0 06     bcs   $0911
090b: dc        dec   y
090c: 1c        asl   a
090d: 7a 20     addw  ya,$20
090f: da 20     movw  $20,ya
0911: 4d        push  x
0912: e4 21     mov   a,$21
0914: 1c        asl   a
0915: 8d 00     mov   y,#$00
0917: cd 18     mov   x,#$18
0919: 9e        div   ya,x
091a: 5d        mov   x,a
091b: f6 d2 08  mov   a,$08d2+y
091e: c4 01     mov   $01,a
0920: f6 d1 08  mov   a,$08d1+y
0923: c4 00     mov   $00,a
0925: f6 d4 08  mov   a,$08d4+y
0928: 2d        push  a
0929: f6 d3 08  mov   a,$08d3+y
092c: ee        pop   y
092d: 9a 00     subw  ya,$00
092f: eb 20     mov   y,$20
0931: cf        mul   ya
0932: dd        mov   a,y
0933: 8d 00     mov   y,#$00
0935: 7a 00     addw  ya,$00
0937: cb 01     mov   $01,y
0939: 1c        asl   a
093a: 2b 01     rol   $01
093c: c4 00     mov   $00,a
093e: c8 06     cmp   x,#$06
0940: f0 06     beq   $0948
0942: 4b 01     lsr   $01
0944: 7c        ror   a
0945: 3d        inc   x
0946: 2f f6     bra   $093e
0948: c4 00     mov   $00,a
094a: ce        pop   x
094b: f5 60 02  mov   a,$0260+x
094e: eb 01     mov   y,$01
0950: cf        mul   ya
0951: da 02     movw  $02,ya
0953: f5 60 02  mov   a,$0260+x
0956: eb 00     mov   y,$00
0958: cf        mul   ya
0959: 6d        push  y
095a: f5 61 02  mov   a,$0261+x
095d: eb 00     mov   y,$00
095f: cf        mul   ya
0960: 7a 02     addw  ya,$02
0962: da 02     movw  $02,ya
0964: f5 61 02  mov   a,$0261+x
0967: eb 01     mov   y,$01
0969: cf        mul   ya
096a: fd        mov   y,a
096b: ae        pop   a
096c: 7a 02     addw  ya,$02
096e: da 02     movw  $02,ya
0970: 7d        mov   a,x
0971: 28 0f     and   a,#$0f
0973: 9f        xcn   a
0974: 5c        lsr   a
0975: 08 02     or    a,#$02
0977: fd        mov   y,a
0978: e4 02     mov   a,$02
097a: 3f 0b 05  call  $050b             ; set P(L)
097d: fc        inc   y
097e: e4 03     mov   a,$03
0980: 3f 0b 05  call  $050b             ; set P(H)
0983: 6f        ret

0984: c4 02     mov   $02,a
0986: 1c        asl   a
0987: 1c        asl   a
0988: 90 02     bcc   $098c
098a: 48 ff     eor   a,#$ff
098c: fd        mov   y,a
098d: f4 b1     mov   a,$b1+x
098f: 68 f1     cmp   a,#$f1
0991: 90 05     bcc   $0998
0993: 28 0f     and   a,#$0f
0995: cf        mul   ya
0996: 2f 04     bra   $099c
0998: cf        mul   ya
0999: dd        mov   a,y
099a: 8d 00     mov   y,#$00
099c: f3 02 06  bbc7  $02,$09a5
099f: da 00     movw  $00,ya
09a1: ba 08     movw  ya,$08
09a3: 9a 00     subw  ya,$00
09a5: 7a 20     addw  ya,$20
09a7: da 20     movw  $20,ya
09a9: 6f        ret

09aa: f5 81 03  mov   a,$0381+x
09ad: 5c        lsr   a
09ae: e8 00     mov   a,#$00
09b0: 7c        ror   a
09b1: d5 60 03  mov   $0360+x,a
09b4: e8 00     mov   a,#$00
09b6: d4 b0     mov   $b0+x,a
09b8: d5 e0 04  mov   $04e0+x,a
09bb: d5 c0 03  mov   $03c0+x,a
09be: d4 d0     mov   $d0+x,a
09c0: f5 20 03  mov   a,$0320+x
09c3: d4 90     mov   $90+x,a
09c5: f0 1e     beq   $09e5
09c7: f5 21 03  mov   a,$0321+x
09ca: d4 91     mov   $91+x,a
09cc: f5 40 03  mov   a,$0340+x
09cf: d0 0a     bne   $09db
09d1: 80        setc
09d2: f5 c1 02  mov   a,$02c1+x
09d5: b5 41 03  sbc   a,$0341+x
09d8: d5 c1 02  mov   $02c1+x,a
09db: 60        clrc
09dc: f5 41 03  mov   a,$0341+x
09df: 95 c1 02  adc   a,$02c1+x
09e2: 3f 15 07  call  $0715
09e5: 6f        ret

09e6: dd        mov   a,y
09e7: 48 ff     eor   a,#$ff
09e9: fd        mov   y,a
09ea: c8 10     cmp   x,#$10
09ec: 90 05     bcc   $09f3
09ee: f5 e1 04  mov   a,$04e1+x
09f1: 2f 05     bra   $09f8
09f3: e4 44     mov   a,$44
09f5: cf        mul   ya
09f6: e4 3a     mov   a,$3a
09f8: cf        mul   ya
09f9: f5 40 02  mov   a,$0240+x
09fc: cf        mul   ya
09fd: f5 21 04  mov   a,$0421+x
0a00: cf        mul   ya
0a01: dd        mov   a,y
0a02: cf        mul   ya
0a03: dd        mov   a,y
0a04: d5 61 04  mov   $0461+x,a
0a07: 6f        ret

0a08: f4 70     mov   a,$70+x
0a0a: f0 24     beq   $0a30
0a0c: 9b 70     dec   $70+x
0a0e: d0 0d     bne   $0a1d
0a10: e8 00     mov   a,#$00
0a12: d5 20 04  mov   $0420+x,a
0a15: f5 60 04  mov   a,$0460+x
0a18: d5 21 04  mov   $0421+x,a
0a1b: 2f 13     bra   $0a30
0a1d: 60        clrc
0a1e: f5 20 04  mov   a,$0420+x
0a21: 95 40 04  adc   a,$0440+x
0a24: d5 20 04  mov   $0420+x,a
0a27: f5 21 04  mov   a,$0421+x
0a2a: 95 41 04  adc   a,$0441+x
0a2d: d5 21 04  mov   $0421+x,a
0a30: 8d 00     mov   y,#$00
0a32: f4 d1     mov   a,$d1+x
0a34: f0 2e     beq   $0a64
0a36: f5 e0 03  mov   a,$03e0+x
0a39: 74 d0     cmp   a,$d0+x
0a3b: f0 04     beq   $0a41
0a3d: bb d0     inc   $d0+x
0a3f: 2f 23     bra   $0a64
0a41: f5 c0 03  mov   a,$03c0+x
0a44: 30 06     bmi   $0a4c
0a46: 60        clrc
0a47: 95 c1 03  adc   a,$03c1+x
0a4a: 2f 0d     bra   $0a59
0a4c: f4 d1     mov   a,$d1+x
0a4e: bc        inc   a
0a4f: d0 04     bne   $0a55
0a51: e8 80     mov   a,#$80
0a53: 2f 04     bra   $0a59
0a55: 60        clrc
0a56: 95 c1 03  adc   a,$03c1+x
0a59: d5 c0 03  mov   $03c0+x,a
0a5c: 1c        asl   a
0a5d: 90 02     bcc   $0a61
0a5f: 48 ff     eor   a,#$ff
0a61: fb d1     mov   y,$d1+x
0a63: cf        mul   ya
0a64: 3f e6 09  call  $09e6
0a67: f4 71     mov   a,$71+x
0a69: f0 24     beq   $0a8f
0a6b: 9b 71     dec   $71+x
0a6d: d0 0d     bne   $0a7c
0a6f: e8 00     mov   a,#$00
0a71: d5 80 04  mov   $0480+x,a
0a74: f5 c0 04  mov   a,$04c0+x
0a77: d5 81 04  mov   $0481+x,a
0a7a: 2f 13     bra   $0a8f
0a7c: 60        clrc
0a7d: f5 80 04  mov   a,$0480+x
0a80: 95 a0 04  adc   a,$04a0+x
0a83: d5 80 04  mov   $0480+x,a
0a86: f5 81 04  mov   a,$0481+x
0a89: 95 a1 04  adc   a,$04a1+x
0a8c: d5 81 04  mov   $0481+x,a
0a8f: e4 0e     mov   a,$0e
0a91: 24 13     and   a,$13
0a93: f0 0a     beq   $0a9f
0a95: f5 81 04  mov   a,$0481+x
0a98: fd        mov   y,a
0a99: f5 80 04  mov   a,$0480+x
0a9c: 3f 88 08  call  $0888
0a9f: 6f        ret

0aa0: cb 02     mov   $02,y
0aa2: f3 02 06  bbc7  $02,$0aab
0aa5: da 00     movw  $00,ya
0aa7: ba 08     movw  ya,$08
0aa9: 9a 00     subw  ya,$00
0aab: 6d        push  y
0aac: eb 19     mov   y,$19
0aae: cf        mul   ya
0aaf: cb 00     mov   $00,y
0ab1: 8f 00 01  mov   $01,#$00
0ab4: eb 19     mov   y,$19
0ab6: ae        pop   a
0ab7: cf        mul   ya
0ab8: 7a 00     addw  ya,$00
0aba: f3 02 06  bbc7  $02,$0ac3
0abd: da 00     movw  $00,ya
0abf: ba 08     movw  ya,$08
0ac1: 9a 00     subw  ya,$00
0ac3: 6f        ret

0ac4: c8 10     cmp   x,#$10
0ac6: 90 04     bcc   $0acc
0ac8: e4 41     mov   a,$41
0aca: 2f 02     bra   $0ace
0acc: e4 32     mov   a,$32
0ace: c4 19     mov   $19,a
0ad0: f2 22     clr7  $22
0ad2: f4 d1     mov   a,$d1+x
0ad4: f0 1f     beq   $0af5
0ad6: f5 e0 03  mov   a,$03e0+x
0ad9: 74 d0     cmp   a,$d0+x
0adb: d0 18     bne   $0af5
0add: e2 22     set7  $22
0adf: eb 19     mov   y,$19
0ae1: f5 c1 03  mov   a,$03c1+x
0ae4: cf        mul   ya
0ae5: 60        clrc
0ae6: dd        mov   a,y
0ae7: 95 c0 03  adc   a,$03c0+x
0aea: 1c        asl   a
0aeb: 90 02     bcc   $0aef
0aed: 48 ff     eor   a,#$ff
0aef: fb d1     mov   y,$d1+x
0af1: cf        mul   ya
0af2: 3f e6 09  call  $09e6
0af5: f5 81 04  mov   a,$0481+x
0af8: c4 05     mov   $05,a
0afa: f5 80 04  mov   a,$0480+x
0afd: c4 04     mov   $04,a
0aff: f4 71     mov   a,$71+x
0b01: f0 10     beq   $0b13
0b03: e2 22     set7  $22
0b05: f5 a1 04  mov   a,$04a1+x
0b08: fd        mov   y,a
0b09: f5 a0 04  mov   a,$04a0+x
0b0c: 3f a0 0a  call  $0aa0
0b0f: 7a 04     addw  ya,$04
0b11: 2f 02     bra   $0b15
0b13: ba 04     movw  ya,$04
0b15: f3 22 03  bbc7  $22,$0b1b
0b18: 3f 88 08  call  $0888
0b1b: f2 22     clr7  $22
0b1d: f5 c0 02  mov   a,$02c0+x
0b20: c4 20     mov   $20,a
0b22: f5 c1 02  mov   a,$02c1+x
0b25: c4 21     mov   $21,a
0b27: f4 90     mov   a,$90+x
0b29: f0 14     beq   $0b3f
0b2b: f4 91     mov   a,$91+x
0b2d: d0 10     bne   $0b3f
0b2f: e2 22     set7  $22
0b31: f5 e1 02  mov   a,$02e1+x
0b34: fd        mov   y,a
0b35: f5 e0 02  mov   a,$02e0+x
0b38: 3f a0 0a  call  $0aa0
0b3b: 7a 20     addw  ya,$20
0b3d: da 20     movw  $20,ya
0b3f: f4 b1     mov   a,$b1+x
0b41: f0 17     beq   $0b5a
0b43: f5 80 03  mov   a,$0380+x
0b46: 74 b0     cmp   a,$b0+x
0b48: d0 10     bne   $0b5a
0b4a: e2 22     set7  $22
0b4c: eb 19     mov   y,$19
0b4e: f5 61 03  mov   a,$0361+x
0b51: cf        mul   ya
0b52: 60        clrc
0b53: dd        mov   a,y
0b54: 95 60 03  adc   a,$0360+x
0b57: 3f 84 09  call  $0984
0b5a: f3 22 03  bbc7  $22,$0b60
0b5d: 3f f5 08  call  $08f5
0b60: 6f        ret

0b61: 78 00 35  cmp   $35,#$00
0b64: f0 0b     beq   $0b71
0b66: ba 37     movw  ya,$37
0b68: 7a 33     addw  ya,$33
0b6a: 6e 35 02  dbnz  $35,$0b6f
0b6d: ba 35     movw  ya,$35
0b6f: da 33     movw  $33,ya
0b71: 78 00 2b  cmp   $2b,#$00
0b74: f0 1c     beq   $0b92
0b76: 8b 2b     dec   $2b
0b78: d0 0c     bne   $0b86
0b7a: e8 00     mov   a,#$00
0b7c: eb 2c     mov   y,$2c
0b7e: da 23     movw  $23,ya
0b80: eb 2d     mov   y,$2d
0b82: da 25     movw  $25,ya
0b84: 2f 0c     bra   $0b92
0b86: ba 23     movw  ya,$23
0b88: 7a 27     addw  ya,$27
0b8a: da 23     movw  $23,ya
0b8c: ba 25     movw  ya,$25
0b8e: 7a 29     addw  ya,$29
0b90: da 25     movw  $25,ya
0b92: 78 00 3b  cmp   $3b,#$00
0b95: f0 0b     beq   $0ba2
0b97: ba 3d     movw  ya,$3d
0b99: 7a 39     addw  ya,$39
0b9b: 6e 3b 02  dbnz  $3b,$0ba0
0b9e: ba 3b     movw  ya,$3b
0ba0: da 39     movw  $39,ya
0ba2: 6f        ret

0ba3: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc

0bab: db $19,$32,$4c,$65,$72,$7f,$8c,$98
0bb3: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

0bbb: 3f 28 05  call  $0528
0bbe: d0 3e     bne   $0bfe
0bc0: c8 10     cmp   x,#$10
0bc2: 90 12     bcc   $0bd6
0bc4: e8 00     mov   a,#$00
0bc6: d4 51     mov   $51+x,a
0bc8: e4 0e     mov   a,$0e
0bca: 24 13     and   a,$13
0bcc: 04 12     or    a,$12
0bce: c4 12     mov   $12,a
0bd0: 09 13 0d  or    ($0d),($13)
0bd3: 6f        ret

0bd4: 2f 26     bra   $0bfc
0bd6: f5 00 02  mov   a,$0200+x
0bd9: d0 05     bne   $0be0
0bdb: ab 0a     inc   $0a
0bdd: 6f        ret

0bde: 2f 1c     bra   $0bfc
0be0: 9c        dec   a
0be1: d5 00 02  mov   $0200+x,a
0be4: d0 0c     bne   $0bf2
0be6: f5 80 02  mov   a,$0280+x
0be9: d4 50     mov   $50+x,a
0beb: f5 81 02  mov   a,$0281+x
0bee: d4 51     mov   $51+x,a
0bf0: 2f 0a     bra   $0bfc
0bf2: f5 a0 02  mov   a,$02a0+x
0bf5: d4 50     mov   $50+x,a
0bf7: f5 a1 02  mov   a,$02a1+x
0bfa: d4 51     mov   $51+x,a
0bfc: 2f 2c     bra   $0c2a
0bfe: 30 23     bmi   $0c23
0c00: d5 20 02  mov   $0220+x,a
0c03: e7 50     mov   a,($50+x)
0c05: f0 1a     beq   $0c21
0c07: 30 18     bmi   $0c21
0c09: 3f 28 05  call  $0528
0c0c: 2d        push  a
0c0d: 9f        xcn   a
0c0e: 28 07     and   a,#$07
0c10: fd        mov   y,a
0c11: f6 a3 0b  mov   a,$0ba3+y
0c14: d5 21 02  mov   $0221+x,a
0c17: ae        pop   a
0c18: 28 0f     and   a,#$0f
0c1a: fd        mov   y,a
0c1b: f6 ab 0b  mov   a,$0bab+y
0c1e: d5 40 02  mov   $0240+x,a
0c21: 2f 07     bra   $0c2a
0c23: 68 e0     cmp   a,#$e0
0c25: 90 05     bcc   $0c2c
0c27: 3f cc 07  call  $07cc
0c2a: 2f 8f     bra   $0bbb
0c2c: ad ca     cmp   y,#$ca
0c2e: 90 05     bcc   $0c35
0c30: 3f 4c 07  call  $074c
0c33: 8d a4     mov   y,#$a4
0c35: ad c9     cmp   y,#$c9
0c37: d0 08     bne   $0c41
0c39: e4 0e     mov   a,$0e
0c3b: 24 13     and   a,$13
0c3d: 04 12     or    a,$12
0c3f: c4 12     mov   $12,a
0c41: ad c8     cmp   y,#$c8
0c43: b0 48     bcs   $0c8d
0c45: dd        mov   a,y
0c46: 28 7f     and   a,#$7f
0c48: c8 10     cmp   x,#$10
0c4a: b0 03     bcs   $0c4f
0c4c: 60        clrc
0c4d: 84 31     adc   a,$31
0c4f: 60        clrc
0c50: 95 00 04  adc   a,$0400+x
0c53: d5 c1 02  mov   $02c1+x,a
0c56: f5 01 03  mov   a,$0301+x
0c59: d5 c0 02  mov   $02c0+x,a
0c5c: 3f aa 09  call  $09aa
0c5f: e2 22     set7  $22
0c61: f5 e1 01  mov   a,$01e1+x
0c64: f0 1f     beq   $0c85
0c66: e7 50     mov   a,($50+x)
0c68: 68 c8     cmp   a,#$c8
0c6a: f0 19     beq   $0c85
0c6c: 68 f9     cmp   a,#$f9
0c6e: f0 15     beq   $0c85
0c70: 68 00     cmp   a,#$00
0c72: f0 08     beq   $0c7c
0c74: e4 0e     mov   a,$0e
0c76: 24 13     and   a,$13
0c78: 04 0b     or    a,$0b
0c7a: c4 0b     mov   $0b,a
0c7c: 8d 5c     mov   y,#$5c
0c7e: e4 0e     mov   a,$0e
0c80: 24 13     and   a,$13
0c82: 3f 0b 05  call  $050b             ; set KOF
0c85: e4 0e     mov   a,$0e
0c87: 24 13     and   a,$13
0c89: 04 11     or    a,$11
0c8b: c4 11     mov   $11,a
0c8d: f5 20 02  mov   a,$0220+x
0c90: d5 e0 01  mov   $01e0+x,a
0c93: fd        mov   y,a
0c94: f5 21 02  mov   a,$0221+x
0c97: 68 fa     cmp   a,#$fa
0c99: 90 04     bcc   $0c9f
0c9b: e8 ff     mov   a,#$ff
0c9d: 2f 05     bra   $0ca4
0c9f: cf        mul   ya
0ca0: dd        mov   a,y
0ca1: d0 01     bne   $0ca4
0ca3: bc        inc   a
0ca4: d5 e1 01  mov   $01e1+x,a
0ca7: 6f        ret

0ca8: f4 90     mov   a,$90+x
0caa: f0 31     beq   $0cdd
0cac: f4 91     mov   a,$91+x
0cae: f0 04     beq   $0cb4
0cb0: 9b 91     dec   $91+x
0cb2: 2f 27     bra   $0cdb
0cb4: e2 22     set7  $22
0cb6: 9b 90     dec   $90+x
0cb8: d0 0e     bne   $0cc8
0cba: f5 01 03  mov   a,$0301+x
0cbd: d5 c0 02  mov   $02c0+x,a
0cc0: f5 00 03  mov   a,$0300+x
0cc3: d5 c1 02  mov   $02c1+x,a
0cc6: 2f 13     bra   $0cdb
0cc8: 60        clrc
0cc9: f5 c0 02  mov   a,$02c0+x
0ccc: 95 e0 02  adc   a,$02e0+x
0ccf: d5 c0 02  mov   $02c0+x,a
0cd2: f5 c1 02  mov   a,$02c1+x
0cd5: 95 e1 02  adc   a,$02e1+x
0cd8: d5 c1 02  mov   $02c1+x,a
0cdb: 2f 0f     bra   $0cec
0cdd: e7 50     mov   a,($50+x)
0cdf: 68 f9     cmp   a,#$f9
0ce1: d0 09     bne   $0cec
0ce3: 3f 28 05  call  $0528
0ce6: 3f 28 05  call  $0528
0ce9: 3f 00 07  call  $0700
0cec: f4 b1     mov   a,$b1+x
0cee: f0 36     beq   $0d26
0cf0: f5 80 03  mov   a,$0380+x
0cf3: 74 b0     cmp   a,$b0+x
0cf5: f0 04     beq   $0cfb
0cf7: bb b0     inc   $b0+x
0cf9: 2f 2b     bra   $0d26
0cfb: e2 22     set7  $22
0cfd: f5 e0 04  mov   a,$04e0+x
0d00: 75 81 03  cmp   a,$0381+x
0d03: d0 05     bne   $0d0a
0d05: f5 a1 03  mov   a,$03a1+x
0d08: 2f 0d     bra   $0d17
0d0a: bc        inc   a
0d0b: d5 e0 04  mov   $04e0+x,a
0d0e: 9c        dec   a
0d0f: f0 02     beq   $0d13
0d11: f4 b1     mov   a,$b1+x
0d13: 60        clrc
0d14: 95 a0 03  adc   a,$03a0+x
0d17: d4 b1     mov   $b1+x,a
0d19: 60        clrc
0d1a: f5 60 03  mov   a,$0360+x
0d1d: 95 61 03  adc   a,$0361+x
0d20: d5 60 03  mov   $0360+x,a
0d23: 3f 84 09  call  $0984
0d26: 6f        ret

0d27: f5 e0 01  mov   a,$01e0+x
0d2a: 9c        dec   a
0d2b: d5 e0 01  mov   $01e0+x,a
0d2e: d0 05     bne   $0d35
0d30: 3f bb 0b  call  $0bbb
0d33: 2f 23     bra   $0d58
0d35: f5 e1 01  mov   a,$01e1+x
0d38: f0 1b     beq   $0d55
0d3a: f5 e1 01  mov   a,$01e1+x
0d3d: 9c        dec   a
0d3e: d5 e1 01  mov   $01e1+x,a
0d41: d0 12     bne   $0d55
0d43: e7 50     mov   a,($50+x)
0d45: 68 c8     cmp   a,#$c8
0d47: f0 0c     beq   $0d55
0d49: 68 f9     cmp   a,#$f9
0d4b: f0 08     beq   $0d55
0d4d: e4 0e     mov   a,$0e
0d4f: 24 13     and   a,$13
0d51: 04 12     or    a,$12
0d53: c4 12     mov   $12,a
0d55: 3f a8 0c  call  $0ca8
0d58: 6f        ret

0d59: cd 08     mov   x,#$08
0d5b: 4b 0b     lsr   $0b
0d5d: 90 0f     bcc   $0d6e
0d5f: 8d 00     mov   y,#$00
0d61: dc        dec   y
0d62: d8 f2     mov   $f2,x
0d64: e4 f3     mov   a,$f3
0d66: 68 10     cmp   a,#$10
0d68: 90 04     bcc   $0d6e
0d6a: ad 00     cmp   y,#$00
0d6c: d0 f3     bne   $0d61
0d6e: 60        clrc
0d6f: 7d        mov   a,x
0d70: 88 10     adc   a,#$10
0d72: 5d        mov   x,a
0d73: 10 e6     bpl   $0d5b
0d75: 6f        ret

0d76: e4 0c     mov   a,$0c
0d78: 24 14     and   a,$14
0d7a: c4 0e     mov   $0e,a
0d7c: 8f 01 13  mov   $13,#$01
0d7f: cd 00     mov   x,#$00
0d81: f4 51     mov   a,$51+x
0d83: f0 22     beq   $0da7
0d85: d8 10     mov   $10,x
0d87: f2 22     clr7  $22
0d89: 3f 27 0d  call  $0d27
0d8c: 78 00 0a  cmp   $0a,#$00
0d8f: f0 07     beq   $0d98
0d91: 8f 00 0a  mov   $0a,#$00
0d94: 3f f4 0d  call  $0df4
0d97: 6f        ret

0d98: e4 0e     mov   a,$0e
0d9a: 24 13     and   a,$13
0d9c: f0 06     beq   $0da4
0d9e: f3 22 03  bbc7  $22,$0da4
0da1: 3f eb 08  call  $08eb
0da4: 3f 08 0a  call  $0a08
0da7: 0b 13     asl   $13
0da9: 3d        inc   x
0daa: 3d        inc   x
0dab: c8 10     cmp   x,#$10
0dad: d0 d2     bne   $0d81
0daf: 6f        ret

0db0: fa 14 0e  mov   ($0e),($14)
0db3: 8f 01 13  mov   $13,#$01
0db6: cd 10     mov   x,#$10
0db8: e4 0c     mov   a,$0c
0dba: 24 13     and   a,$13
0dbc: d0 1f     bne   $0ddd
0dbe: f4 51     mov   a,$51+x
0dc0: f0 1b     beq   $0ddd
0dc2: d8 10     mov   $10,x
0dc4: f2 22     clr7  $22
0dc6: e4 46     mov   a,$46
0dc8: 24 13     and   a,$13
0dca: f0 05     beq   $0dd1
0dcc: 3f a8 0c  call  $0ca8
0dcf: 2f 03     bra   $0dd4
0dd1: 3f 27 0d  call  $0d27
0dd4: f3 22 03  bbc7  $22,$0dda
0dd7: 3f eb 08  call  $08eb
0dda: 3f 08 0a  call  $0a08
0ddd: 0b 13     asl   $13
0ddf: 3d        inc   x
0de0: 3d        inc   x
0de1: c8 20     cmp   x,#$20
0de3: d0 d3     bne   $0db8
0de5: 6f        ret

0de6: 8d 00     mov   y,#$00
0de8: f7 2e     mov   a,($2e)+y
0dea: 3a 2e     incw  $2e
0dec: 2d        push  a
0ded: f7 2e     mov   a,($2e)+y
0def: 3a 2e     incw  $2e
0df1: fd        mov   y,a
0df2: ae        pop   a
0df3: 6f        ret

0df4: 3f e6 0d  call  $0de6
0df7: ad 00     cmp   y,#$00
0df9: d0 18     bne   $0e13
0dfb: fd        mov   y,a
0dfc: d0 04     bne   $0e02
0dfe: 3f e6 0e  call  $0ee6
0e01: 6f        ret

0e02: 8b 30     dec   $30
0e04: 10 02     bpl   $0e08
0e06: c4 30     mov   $30,a
0e08: 3f e6 0d  call  $0de6
0e0b: f8 30     mov   x,$30
0e0d: f0 02     beq   $0e11
0e0f: da 2e     movw  $2e,ya
0e11: 2f e1     bra   $0df4
0e13: fa 0d 0c  mov   ($0c),($0d)
0e16: da 00     movw  $00,ya
0e18: 8f 01 13  mov   $13,#$01
0e1b: cd 00     mov   x,#$00
0e1d: 7d        mov   a,x
0e1e: fd        mov   y,a
0e1f: f7 00     mov   a,($00)+y
0e21: d4 50     mov   $50+x,a
0e23: fc        inc   y
0e24: f7 00     mov   a,($00)+y
0e26: d4 51     mov   $51+x,a
0e28: e8 00     mov   a,#$00
0e2a: d5 00 02  mov   $0200+x,a
0e2d: d4 70     mov   $70+x,a
0e2f: d4 71     mov   $71+x,a
0e31: bc        inc   a
0e32: d5 e0 01  mov   $01e0+x,a
0e35: 0b 13     asl   $13
0e37: 3d        inc   x
0e38: 3d        inc   x
0e39: c8 10     cmp   x,#$10
0e3b: d0 e0     bne   $0e1d
0e3d: 6f        ret

0e3e: f7 00     mov   a,($00)+y
0e40: d4 50     mov   $50+x,a
0e42: d5 a0 02  mov   $02a0+x,a
0e45: fc        inc   y
0e46: f7 00     mov   a,($00)+y
0e48: d4 51     mov   $51+x,a
0e4a: d5 a1 02  mov   $02a1+x,a
0e4d: e8 ff     mov   a,#$ff
0e4f: d5 21 04  mov   $0421+x,a
0e52: e8 0a     mov   a,#$0a
0e54: d5 c1 04  mov   $04c1+x,a
0e57: c8 10     cmp   x,#$10
0e59: b0 03     bcs   $0e5e
0e5b: d5 81 04  mov   $0481+x,a
0e5e: e8 00     mov   a,#$00
0e60: d5 80 04  mov   $0480+x,a
0e63: d5 01 03  mov   $0301+x,a
0e66: d5 00 04  mov   $0400+x,a
0e69: d5 20 03  mov   $0320+x,a
0e6c: d4 b1     mov   $b1+x,a
0e6e: d4 d1     mov   $d1+x,a
0e70: d5 00 02  mov   $0200+x,a
0e73: d4 70     mov   $70+x,a
0e75: d4 71     mov   $71+x,a
0e77: d5 e1 01  mov   $01e1+x,a
0e7a: bc        inc   a
0e7b: d5 e0 01  mov   $01e0+x,a
0e7e: 6f        ret

0e7f: 1c        asl   a
0e80: 5d        mov   x,a
0e81: f5 03 13  mov   a,$1303+x
0e84: fd        mov   y,a
0e85: f5 02 13  mov   a,$1302+x
0e88: da 2e     movw  $2e,ya
0e8a: 3f e6 0d  call  $0de6
0e8d: da 00     movw  $00,ya
0e8f: cd 00     mov   x,#$00
0e91: 7d        mov   a,x
0e92: fd        mov   y,a
0e93: 3f 3e 0e  call  $0e3e
0e96: 3d        inc   x
0e97: 3d        inc   x
0e98: c8 10     cmp   x,#$10
0e9a: d0 f5     bne   $0e91
0e9c: e8 00     mov   a,#$00
0e9e: c4 3b     mov   $3b,a
0ea0: c4 2b     mov   $2b,a
0ea2: c4 31     mov   $31,a
0ea4: c4 30     mov   $30,a
0ea6: c4 3f     mov   $3f,a
0ea8: c4 35     mov   $35,a
0eaa: 8f ff 3a  mov   $3a,#$ff
0ead: 8f 20 34  mov   $34,#$20
0eb0: a2 15     set5  $15
0eb2: e8 01     mov   a,#$01
0eb4: c5 1c 00  mov   $001c,a
0eb7: e8 00     mov   a,#$00
0eb9: 3f 6e 05  call  $056e
0ebc: 02 45     set0  $45
0ebe: 6f        ret

0ebf: 1c        asl   a
0ec0: fd        mov   y,a
0ec1: f6 03 2a  mov   a,$2a03+y
0ec4: c4 01     mov   $01,a
0ec6: f6 02 2a  mov   a,$2a02+y
0ec9: c4 00     mov   $00,a
0ecb: 8d 00     mov   y,#$00
0ecd: f7 00     mov   a,($00)+y
0ecf: fc        inc   y
0ed0: 2d        push  a
0ed1: f7 00     mov   a,($00)+y
0ed3: fd        mov   y,a
0ed4: ae        pop   a
0ed5: da 00     movw  $00,ya
0ed7: 8d 00     mov   y,#$00
0ed9: 3f 3e 0e  call  $0e3e
0edc: 58 ff 13  eor   $13,#$ff
0edf: 29 13 0c  and   ($0c),($13)
0ee2: 29 13 0d  and   ($0d),($13)
0ee5: 6f        ret

0ee6: cd 00     mov   x,#$00
0ee8: e8 00     mov   a,#$00
0eea: d4 51     mov   $51+x,a
0eec: 3d        inc   x
0eed: 3d        inc   x
0eee: c8 10     cmp   x,#$10
0ef0: d0 f6     bne   $0ee8
0ef2: 09 0c 12  or    ($12),($0c)
0ef5: 3f bf 06  call  $06bf
0ef8: 3f 10 05  call  $0510
0efb: 38 fe 45  and   $45,#$fe
0efe: 6f        ret

0eff: e8 00     mov   a,#$00
0f01: c4 46     mov   $46,a
0f03: e8 ff     mov   a,#$ff
0f05: c4 12     mov   $12,a
0f07: c4 0c     mov   $0c,a
0f09: c4 0d     mov   $0d,a
0f0b: 8d 5c     mov   y,#$5c
0f0d: 3f 0b 05  call  $050b             ; set KOF
0f10: 6f        ret

0f11: 3f ff 0e  call  $0eff
0f14: 3f e6 0e  call  $0ee6
0f17: 8f aa f4  mov   $f4,#$aa
0f1a: 8f bb f5  mov   $f5,#$bb
0f1d: 78 cc f4  cmp   $f4,#$cc
0f20: d0 fb     bne   $0f1d
0f22: fa f6 00  mov   ($00),($f6)
0f25: fa f7 01  mov   ($01),($f7)
0f28: eb f4     mov   y,$f4
0f2a: e4 f5     mov   a,$f5
0f2c: cb f4     mov   $f4,y
0f2e: f0 1d     beq   $0f4d
0f30: eb f4     mov   y,$f4
0f32: d0 fc     bne   $0f30
0f34: 7e f4     cmp   y,$f4
0f36: d0 0b     bne   $0f43
0f38: e4 f5     mov   a,$f5
0f3a: cb f4     mov   $f4,y
0f3c: d7 00     mov   ($00)+y,a
0f3e: fc        inc   y
0f3f: d0 02     bne   $0f43
0f41: ab 01     inc   $01
0f43: 7e f4     cmp   y,$f4
0f45: b0 ed     bcs   $0f34
0f47: 7e f4     cmp   y,$f4
0f49: b0 e9     bcs   $0f34
0f4b: 2f d5     bra   $0f22
0f4d: 6f        ret

0f4e: e4 f6     mov   a,$f6
0f50: 24 f6     and   a,$f6
0f52: 10 fa     bpl   $0f4e
0f54: e4 f5     mov   a,$f5
0f56: c4 4c     mov   $4c,a
0f58: e4 f5     mov   a,$f5
0f5a: 2e 4c f9  cbne  $4c,$0f56
0f5d: 8f 80 f6  mov   $f6,#$80
0f60: e4 f6     mov   a,$f6
0f62: 04 f6     or    a,$f6
0f64: 30 fa     bmi   $0f60
0f66: 8f 00 f6  mov   $f6,#$00
0f69: e4 4c     mov   a,$4c
0f6b: 6f        ret

0f6c: db $01,$02,$04,$08,$10,$20,$40,$80

0f74: 8f 00 00  mov   $00,#$00
0f77: 8f 01 01  mov   $01,#$01
0f7a: 8d 00     mov   y,#$00
0f7c: 3f 4e 0f  call  $0f4e
0f7f: d7 00     mov   ($00)+y,a
0f81: fc        inc   y
0f82: 68 ff     cmp   a,#$ff
0f84: f0 0c     beq   $0f92
0f86: 3f 4e 0f  call  $0f4e
0f89: d7 00     mov   ($00)+y,a
0f8b: fc        inc   y
0f8c: 68 00     cmp   a,#$00
0f8e: d0 f6     bne   $0f86
0f90: 2f ea     bra   $0f7c
0f92: 8f 00 00  mov   $00,#$00
0f95: 8f 01 01  mov   $01,#$01
0f98: 8d 00     mov   y,#$00
0f9a: f7 00     mov   a,($00)+y
0f9c: ab 00     inc   $00
0f9e: 68 ff     cmp   a,#$ff
0fa0: f0 56     beq   $0ff8
0fa2: fd        mov   y,a
0fa3: 60        clrc
0fa4: 1c        asl   a
0fa5: 88 10     adc   a,#$10
0fa7: 5d        mov   x,a
0fa8: f6 6c 0f  mov   a,$0f6c+y
0fab: c4 13     mov   $13,a
0fad: d8 10     mov   $10,x
0faf: f4 50     mov   a,$50+x
0fb1: d5 80 02  mov   $0280+x,a
0fb4: f4 51     mov   a,$51+x
0fb6: d5 81 02  mov   $0281+x,a
0fb9: e4 00     mov   a,$00
0fbb: d4 50     mov   $50+x,a
0fbd: e4 01     mov   a,$01
0fbf: d4 51     mov   $51+x,a
0fc1: 3f 28 05  call  $0528
0fc4: 68 00     cmp   a,#$00
0fc6: f0 1c     beq   $0fe4
0fc8: 68 e0     cmp   a,#$e0
0fca: 90 05     bcc   $0fd1
0fcc: 3f cc 07  call  $07cc
0fcf: 2f 11     bra   $0fe2
0fd1: 28 7f     and   a,#$7f
0fd3: d5 c1 02  mov   $02c1+x,a
0fd6: 3f 28 05  call  $0528
0fd9: d5 c0 02  mov   $02c0+x,a
0fdc: 3f aa 09  call  $09aa
0fdf: 3f eb 08  call  $08eb
0fe2: 2f dd     bra   $0fc1
0fe4: f4 50     mov   a,$50+x
0fe6: c4 00     mov   $00,a
0fe8: f4 51     mov   a,$51+x
0fea: c4 01     mov   $01,a
0fec: f5 80 02  mov   a,$0280+x
0fef: d4 50     mov   $50+x,a
0ff1: f5 81 02  mov   a,$0281+x
0ff4: d4 51     mov   $51+x,a
0ff6: 2f a0     bra   $0f98
0ff8: 6f        ret

0ff9: 3f 4e 0f  call  $0f4e
0ffc: c4 00     mov   $00,a
0ffe: f0 35     beq   $1035
1000: 8d 00     mov   y,#$00
1002: 33 47 12  bbc1  $47,$1017
1005: bc        inc   a
1006: c4 f6     mov   $f6,a
1008: e4 f5     mov   a,$f5
100a: fa 00 f6  mov   ($f6),($00)
100d: d7 4a     mov   ($4a)+y,a
100f: 3a 4a     incw  $4a
1011: 8b 00     dec   $00
1013: d0 f3     bne   $1008
1015: 2f 1c     bra   $1033
1017: e4 f6     mov   a,$f6
1019: 24 f6     and   a,$f6
101b: 10 fa     bpl   $1017
101d: e4 f5     mov   a,$f5
101f: d7 4a     mov   ($4a)+y,a
1021: 8f 80 f6  mov   $f6,#$80
1024: e4 f6     mov   a,$f6
1026: 04 f6     or    a,$f6
1028: 30 fa     bmi   $1024
102a: 8f 00 f6  mov   $f6,#$00
102d: 3a 4a     incw  $4a
102f: 8b 00     dec   $00
1031: d0 e4     bne   $1017
1033: 2f 2f     bra   $1064
1035: fa 48 4a  mov   ($4a),($48)
1038: fa 49 4b  mov   ($4b),($49)
103b: 3f 4e 0f  call  $0f4e
103e: c5 7f 04  mov   $047f,a
1041: 3f 4e 0f  call  $0f4e
1044: c4 02     mov   $02,a
1046: 8d 72     mov   y,#$72
1048: 3f 4e 0f  call  $0f4e
104b: cb f2     mov   $f2,y
104d: c4 f3     mov   $f3,a
104f: fc        inc   y
1050: 3f 4e 0f  call  $0f4e
1053: cb f2     mov   $f2,y
1055: c4 f3     mov   $f3,a
1057: eb 02     mov   y,$02
1059: e8 00     mov   a,#$00
105b: cd 1e     mov   x,#$1e
105d: 3f 88 08  call  $0888
1060: c2 45     set6  $45
1062: e2 11     set7  $11
1064: 6f        ret

1065: 2d        push  a
1066: d2 15     clr6  $15
1068: 8f 00 00  mov   $00,#$00
106b: 8f 3b 01  mov   $01,#$3b
106e: 8d 04     mov   y,#$04
1070: cf        mul   ya
1071: 7a 00     addw  ya,$00
1073: da 00     movw  $00,ya
1075: e8 ff     mov   a,#$ff
1077: 8d 03     mov   y,#$03
1079: d7 00     mov   ($00)+y,a
107b: dc        dec   y
107c: d7 00     mov   ($00)+y,a
107e: dc        dec   y
107f: f7 00     mov   a,($00)+y
1081: 2d        push  a
1082: dc        dec   y
1083: f7 00     mov   a,($00)+y
1085: ee        pop   y
1086: da 48     movw  $48,ya
1088: da 4a     movw  $4a,ya
108a: ae        pop   a
108b: c5 5f 02  mov   $025f,a
108e: cd 1e     mov   x,#$1e
1090: 3f e6 07  call  $07e6
1093: 6f        ret

1094: e4 1d     mov   a,$1d
1096: 10 0d     bpl   $10a5
1098: 28 07     and   a,#$07
109a: fd        mov   y,a
109b: 60        clrc
109c: 1c        asl   a
109d: 88 10     adc   a,#$10
109f: 5d        mov   x,a
10a0: f6 6c 0f  mov   a,$0f6c+y
10a3: c4 13     mov   $13,a
10a5: e4 1d     mov   a,$1d
10a7: 28 70     and   a,#$70
10a9: fd        mov   y,a
10aa: e4 1f     mov   a,$1f
10ac: ad 10     cmp   y,#$10
10ae: d0 25     bne   $10d5
10b0: 78 00 1d  cmp   $1d,#$00
10b3: 10 1a     bpl   $10cf
10b5: e4 0c     mov   a,$0c
10b7: 24 13     and   a,$13
10b9: d0 12     bne   $10cd
10bb: e8 00     mov   a,#$00
10bd: d4 51     mov   $51+x,a
10bf: 09 13 12  or    ($12),($13)
10c2: 09 13 0d  or    ($0d),($13)
10c5: e4 13     mov   a,$13
10c7: 48 ff     eor   a,#$ff
10c9: 24 46     and   a,$46
10cb: c4 46     mov   $46,a
10cd: 2f 03     bra   $10d2
10cf: 3f e6 0e  call  $0ee6
10d2: 5f 5a 11  jmp   $115a
10d5: ad 20     cmp   y,#$20
10d7: d0 21     bne   $10fa
10d9: d2 15     clr6  $15
10db: 78 00 1d  cmp   $1d,#$00
10de: 10 0a     bpl   $10ea
10e0: 65 00 2a  cmp   a,$2a00
10e3: b0 03     bcs   $10e8
10e5: 3f bf 0e  call  $0ebf
10e8: 2f 0d     bra   $10f7
10ea: 65 00 13  cmp   a,$1300
10ed: b0 08     bcs   $10f7
10ef: 2d        push  a
10f0: 3f e6 0e  call  $0ee6
10f3: ae        pop   a
10f4: 3f 7f 0e  call  $0e7f
10f7: 5f 5a 11  jmp   $115a
10fa: ad 30     cmp   y,#$30
10fc: d0 11     bne   $110f
10fe: 04 12     or    a,$12
1100: c4 12     mov   $12,a
1102: 48 ff     eor   a,#$ff
1104: c4 14     mov   $14,a
1106: 24 46     and   a,$46
1108: 04 11     or    a,$11
110a: c4 11     mov   $11,a
110c: 5f 5a 11  jmp   $115a
110f: ad 40     cmp   y,#$40
1111: d0 10     bne   $1123
1113: 78 00 1d  cmp   $1d,#$00
1116: 10 05     bpl   $111d
1118: 3f f9 0f  call  $0ff9
111b: 2f 03     bra   $1120
111d: 3f 65 10  call  $1065
1120: 5f 5a 11  jmp   $115a
1123: ad 50     cmp   y,#$50
1125: d0 0f     bne   $1136
1127: 78 00 1d  cmp   $1d,#$00
112a: 10 05     bpl   $1131
112c: d5 81 04  mov   $0481+x,a
112f: 2f 02     bra   $1133
1131: c4 47     mov   $47,a
1133: 5f 5a 11  jmp   $115a
1136: ad 60     cmp   y,#$60
1138: d0 0f     bne   $1149
113a: 78 00 1d  cmp   $1d,#$00
113d: 10 05     bpl   $1144
113f: d5 e1 04  mov   $04e1+x,a
1142: 2f 02     bra   $1146
1144: c4 44     mov   $44,a
1146: 5f 5a 11  jmp   $115a
1149: ad 70     cmp   y,#$70
114b: d0 0d     bne   $115a
114d: 78 00 1d  cmp   $1d,#$00
1150: 10 05     bpl   $1157
1152: 3f 74 0f  call  $0f74
1155: 2f 03     bra   $115a
1157: 3f 11 0f  call  $0f11
115a: 6f        ret

115b: 20        clrp
115c: cd cf     mov   x,#$cf
115e: bd        mov   sp,x
115f: 8d 6c     mov   y,#$6c
1161: e8 e0     mov   a,#$e0
1163: 3f 0b 05  call  $050b             ; set FLG
1166: e8 00     mov   a,#$00
1168: 5d        mov   x,a
1169: af        mov   (x)+,a
116a: c8 f0     cmp   x,#$f0
116c: d0 fb     bne   $1169
116e: cd 00     mov   x,#$00
1170: 8f 00 00  mov   $00,#$00
1173: 8f 01 01  mov   $01,#$01
1176: e8 00     mov   a,#$00
1178: c7 00     mov   ($00+x),a
117a: 3a 00     incw  $00
117c: e8 00     mov   a,#$00
117e: 8d 05     mov   y,#$05
1180: 5a 00     cmpw  ya,$00
1182: d0 f2     bne   $1176
1184: 8f 60 15  mov   $15,#$60
1187: e8 01     mov   a,#$01
1189: c5 1c 00  mov   $001c,a
118c: e8 00     mov   a,#$00
118e: 3f 6e 05  call  $056e
1191: 8d 2d     mov   y,#$2d
1193: e8 00     mov   a,#$00
1195: 3f 0b 05  call  $050b             ; set PMON
1198: 8d 0c     mov   y,#$0c
119a: e8 7f     mov   a,#$7f
119c: 3f 0b 05  call  $050b             ; set MVOL(L)
119f: 8d 1c     mov   y,#$1c
11a1: e8 7f     mov   a,#$7f
11a3: 3f 0b 05  call  $050b             ; set MVOL(R)
11a6: 8d 5d     mov   y,#$5d
11a8: e8 3a     mov   a,#$3a
11aa: 3f 0b 05  call  $050b             ; set DIR
11ad: 8f f0 f1  mov   $f1,#$f0
11b0: 8f 10 fa  mov   $fa,#$10
11b3: 8f 01 f1  mov   $f1,#$01
11b6: 8f c8 44  mov   $44,#$c8
11b9: 8f 10 34  mov   $34,#$10
11bc: 8f 2a 43  mov   $43,#$2a
11bf: e8 ff     mov   a,#$ff
11c1: c4 0c     mov   $0c,a
11c3: c4 0d     mov   $0d,a
11c5: c4 14     mov   $14,a
11c7: e8 00     mov   a,#$00
11c9: c5 00 13  mov   $1300,a
11cc: e8 00     mov   a,#$00
11ce: c5 00 2a  mov   $2a00,a
11d1: 3f 59 0d  call  $0d59
11d4: 78 00 1b  cmp   $1b,#$00
11d7: 30 07     bmi   $11e0
11d9: 8d 6c     mov   y,#$6c
11db: e4 15     mov   a,$15
11dd: 3f 0b 05  call  $050b             ; set FLG
11e0: 8d 3d     mov   y,#$3d
11e2: e4 16     mov   a,$16
11e4: 3f 0b 05  call  $050b             ; set NON
11e7: 8d 4c     mov   y,#$4c
11e9: e4 11     mov   a,$11
11eb: 3f 0b 05  call  $050b             ; set KON
11ee: 8d 5c     mov   y,#$5c
11f0: e4 12     mov   a,$12
11f2: 3f 0b 05  call  $050b             ; set KOF
11f5: 8f 00 11  mov   $11,#$00
11f8: 8f 00 12  mov   $12,#$00
11fb: e4 fd     mov   a,$fd
11fd: f0 fc     beq   $11fb
11ff: c4 00     mov   $00,a
1201: 69 1c 1b  cmp   ($1b),($1c)
1204: f0 0e     beq   $1214
1206: 8d 20     mov   y,#$20
1208: cf        mul   ya
1209: 60        clrc
120a: 84 1a     adc   a,$1a
120c: c4 1a     mov   $1a,a
120e: 90 02     bcc   $1212
1210: ab 1b     inc   $1b
1212: 2f 12     bra   $1226
1214: 8d 04     mov   y,#$04
1216: f6 06 05  mov   a,$0506+y
1219: 5d        mov   x,a
121a: 6d        push  y
121b: f6 02 05  mov   a,$0502+y
121e: fd        mov   y,a
121f: e6        mov   a,(x)
1220: 3f 0b 05  call  $050b             ; set echo regs
1223: ee        pop   y
1224: fe f0     dbnz  y,$1216
1226: e4 00     mov   a,$00
1228: eb 34     mov   y,$34
122a: d0 01     bne   $122d
122c: dc        dec   y
122d: cf        mul   ya
122e: 60        clrc
122f: 84 32     adc   a,$32
1231: c4 32     mov   $32,a
1233: b0 49     bcs   $127e
1235: ad 00     cmp   y,#$00
1237: d0 45     bne   $127e
1239: e4 00     mov   a,$00
123b: eb 43     mov   y,$43
123d: cf        mul   ya
123e: 60        clrc
123f: 84 41     adc   a,$41
1241: c4 41     mov   $41,a
1243: 90 05     bcc   $124a
1245: 3f b0 0d  call  $0db0
1248: 2f 32     bra   $127c
124a: 8f 01 13  mov   $13,#$01
124d: cd 00     mov   x,#$00
124f: e4 0c     mov   a,$0c
1251: 24 13     and   a,$13
1253: f0 07     beq   $125c
1255: f4 51     mov   a,$51+x
1257: f0 03     beq   $125c
1259: 3f c4 0a  call  $0ac4
125c: 0b 13     asl   $13
125e: 3d        inc   x
125f: 3d        inc   x
1260: c8 10     cmp   x,#$10
1262: d0 eb     bne   $124f
1264: 8f 01 13  mov   $13,#$01
1267: e4 0c     mov   a,$0c
1269: 24 13     and   a,$13
126b: d0 07     bne   $1274
126d: f4 51     mov   a,$51+x
126f: f0 03     beq   $1274
1271: 3f c4 0a  call  $0ac4
1274: 0b 13     asl   $13
1276: 3d        inc   x
1277: 3d        inc   x
1278: c8 20     cmp   x,#$20
127a: d0 eb     bne   $1267
127c: 2f 4f     bra   $12cd
127e: e4 00     mov   a,$00
1280: eb 43     mov   y,$43
1282: cf        mul   ya
1283: 60        clrc
1284: 84 41     adc   a,$41
1286: c4 41     mov   $41,a
1288: 90 03     bcc   $128d
128a: 3f b0 0d  call  $0db0
128d: 3f 76 0d  call  $0d76
1290: 3f 61 0b  call  $0b61
1293: 8f 7c f2  mov   $f2,#$7c
1296: f3 f3 02  bbc7  $f3,$129b
1299: d2 45     clr6  $45
129b: eb 1e     mov   y,$1e
129d: e4 f4     mov   a,$f4
129f: 2e f4 fb  cbne  $f4,$129d
12a2: c4 1d     mov   $1d,a
12a4: c4 1e     mov   $1e,a
12a6: c4 f4     mov   $f4,a
12a8: f0 0e     beq   $12b8
12aa: 7e 1d     cmp   y,$1d
12ac: f0 0a     beq   $12b8
12ae: e4 f5     mov   a,$f5
12b0: 2e f5 fb  cbne  $f5,$12ae
12b3: c4 1f     mov   $1f,a
12b5: 3f 94 10  call  $1094
12b8: e4 0d     mov   a,$0d
12ba: 48 ff     eor   a,#$ff
12bc: c4 f5     mov   $f5,a
12be: fa 45 f6  mov   ($f6),($45)
12c1: e8 00     mov   a,#$00
12c3: 2e f4 07  cbne  $f4,$12cd
12c6: 2e f4 04  cbne  $f4,$12cd
12c9: c4 f4     mov   $f4,a
12cb: c4 1e     mov   $1e,a
12cd: 5f d1 11  jmp   $11d1
