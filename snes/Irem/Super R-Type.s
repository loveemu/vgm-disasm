0630: e8 aa     mov   a,#$aa
0632: c5 f4 00  mov   $00f4,a
0635: e8 bb     mov   a,#$bb
0637: c5 f5 00  mov   $00f5,a
063a: e5 f4 00  mov   a,$00f4
063d: 68 cc     cmp   a,#$cc
063f: d0 f9     bne   $063a
0641: 2f 20     bra   $0663
0643: ec f4 00  mov   y,$00f4
0646: d0 fb     bne   $0643
0648: 5e f4 00  cmp   y,$00f4
064b: d0 0f     bne   $065c
064d: e5 f5 00  mov   a,$00f5
0650: cc f4 00  mov   $00f4,y
0653: d7 0e     mov   ($0e)+y,a
0655: fc        inc   y
0656: d0 f0     bne   $0648
0658: ab 0f     inc   $0f
065a: 2f ec     bra   $0648
065c: 10 ea     bpl   $0648
065e: 5e f4 00  cmp   y,$00f4
0661: 10 e5     bpl   $0648
0663: e5 f6 00  mov   a,$00f6
0666: ec f7 00  mov   y,$00f7
0669: da 0e     movw  $0e,ya
066b: ec f4 00  mov   y,$00f4
066e: e5 f5 00  mov   a,$00f5
0671: cc f4 00  mov   $00f4,y
0674: d0 cd     bne   $0643
0676: cd 31     mov   x,#$31
0678: c9 f1 00  mov   $00f1,x
067b: 6f        ret

067c: e8 2c     mov   a,#$2c
067e: c4 04     mov   $04,a
0680: cd 00     mov   x,#$00
0682: f5 95 06  mov   a,$0695+x
0685: fd        mov   y,a
0686: 3d        inc   x
0687: f5 95 06  mov   a,$0695+x
068a: 3d        inc   x
068b: cc f2 00  mov   $00f2,y
068e: c5 f3 00  mov   $00f3,a
0691: 6e 04 ee  dbnz  $04,$0682
0694: 6f        ret

0695: db $0c,$48      ; MVOL(L)
0697: db $1c,$48      ; MVOL(R)
0699: db $2c,$00      ; EVOL(L)
069b: db $3c,$00      ; EVOL(R)
069d: db $4c,$00      ; KON
069f: db $5c,$00      ; KOF
06a1: db $0d,$00      ; EFB
06a3: db $4d,$00      ; EON
06a5: db $6c,$20      ; FLG
06a7: db $7d,$01      ; EDL
06a9: db $6d,$78      ; ESA
06ab: db $5d,$80      ; DIR
06ad: db $2d,$00      ; PMON
06af: db $3d,$00      ; NON
06b1: db $0f,$34      ; C0
06b3: db $1f,$33      ; C1
06b5: db $2f,$00      ; C2
06b7: db $3f,$d9      ; C3
06b9: db $4f,$e5      ; C4
06bb: db $5f,$01      ; C5
06bd: db $6f,$fc      ; C6
06bf: db $7f,$eb      ; C7

06c1: f8 43     mov   x,$43
06c3: db 22     mov   $22+x,y
06c5: 1d        dec   x
06c6: 10 02     bpl   $06ca
06c8: cd 1f     mov   x,#$1f
06ca: d8 43     mov   $43,x
06cc: e8 00     mov   a,#$00
06ce: d6 00 02  mov   $0200+y,a
06d1: 6f        ret

06d2: f8 42     mov   x,$42
06d4: 3e 43     cmp   x,$43
06d6: f0 0a     beq   $06e2
06d8: fb 22     mov   y,$22+x
06da: 1d        dec   x
06db: 10 02     bpl   $06df
06dd: cd 1f     mov   x,#$1f
06df: d8 42     mov   $42,x
06e1: 6f        ret

06e2: 6f        ret

06e3: e8 00     mov   a,#$00
06e5: fd        mov   y,a
06e6: da 42     movw  $42,ya
06e8: da 20     movw  $20,ya
06ea: 8d 0f     mov   y,#$0f
06ec: 3f c1 06  call  $06c1
06ef: dc        dec   y
06f0: 10 fa     bpl   $06ec
06f2: cd 1f     mov   x,#$1f
06f4: e8 ff     mov   a,#$ff
06f6: d4 5f     mov   $5f+x,a
06f8: 1d        dec   x
06f9: 10 fb     bpl   $06f6
06fb: bc        inc   a
06fc: c4 50     mov   $50,a
06fe: c4 53     mov   $53,a
0700: c4 54     mov   $54,a
0702: 8f ff 51  mov   $51,#$ff
0705: c4 52     mov   $52,a
0707: 8f 71 55  mov   $55,#$71
070a: 8f 02 56  mov   $56,#$02
070d: c4 59     mov   $59,a
070f: c4 4b     mov   $4b,a
0711: c4 5a     mov   $5a,a
0713: 8f 40 4a  mov   $4a,#$40
0716: 8f 20 49  mov   $49,#$20
0719: 6f        ret

071a: f8 20     mov   x,$20
071c: 3e 21     cmp   x,$21
071e: f0 0b     beq   $072b
0720: f4 10     mov   a,$10+x
0722: 1d        dec   x
0723: 10 02     bpl   $0727
0725: cd 0f     mov   x,#$0f
0727: d8 20     mov   $20,x
0729: 60        clrc
072a: 6f        ret

072b: 80        setc
072c: 6f        ret

072d: f8 21     mov   x,$21
072f: d4 10     mov   $10+x,a
0731: 1d        dec   x
0732: 10 02     bpl   $0736
0734: cd 0f     mov   x,#$0f
0736: 3e 20     cmp   x,$20
0738: f0 02     beq   $073c
073a: d8 21     mov   $21,x
073c: 6f        ret

073d: f6 10 02  mov   a,$0210+y
0740: c4 04     mov   $04,a
0742: f6 30 02  mov   a,$0230+y
0745: 5d        mov   x,a
0746: f6 b0 02  mov   a,$02b0+y
0749: c3 04 07  bbs6  $04,$0753
074c: 80        setc
074d: a4 50     sbc   a,$50
074f: 10 02     bpl   $0753
0751: e8 00     mov   a,#$00
0753: c9 f2 00  mov   $00f2,x
0756: c5 f3 00  mov   $00f3,a           ; set VOL(L)
0759: f6 d0 02  mov   a,$02d0+y
075c: 3d        inc   x
075d: c3 04 07  bbs6  $04,$0767
0760: 80        setc
0761: a4 50     sbc   a,$50
0763: 10 02     bpl   $0767
0765: e8 00     mov   a,#$00
0767: c9 f2 00  mov   $00f2,x
076a: c5 f3 00  mov   $00f3,a           ; set VOL(R)
076d: f6 30 03  mov   a,$0330+y
0770: 3d        inc   x
0771: c9 f2 00  mov   $00f2,x
0774: c5 f3 00  mov   $00f3,a           ; set P(L)
0777: f6 40 03  mov   a,$0340+y
077a: 3d        inc   x
077b: c9 f2 00  mov   $00f2,x
077e: c5 f3 00  mov   $00f3,a           ; set P(H)
0781: f6 e0 02  mov   a,$02e0+y
0784: 3d        inc   x
0785: c9 f2 00  mov   $00f2,x
0788: c5 f3 00  mov   $00f3,a           ; set SRCN
078b: f6 40 04  mov   a,$0440+y
078e: 3d        inc   x
078f: c9 f2 00  mov   $00f2,x
0792: c5 f3 00  mov   $00f3,a           ; set ADSR(1)
0795: f6 50 04  mov   a,$0450+y
0798: 3d        inc   x
0799: c9 f2 00  mov   $00f2,x
079c: c5 f3 00  mov   $00f3,a           ; set ADSR(2)
079f: f6 40 02  mov   a,$0240+y
07a2: c4 04     mov   $04,a
07a4: f6 20 02  mov   a,$0220+y
07a7: 30 03     bmi   $07ac
07a9: 09 04 4e  or    ($4e),($04)
07ac: f6 10 02  mov   a,$0210+y
07af: c4 08     mov   $08,a
07b1: e4 04     mov   a,$04
07b3: 48 ff     eor   a,#$ff
07b5: c4 06     mov   $06,a
07b7: 93 08 05  bbc4  $08,$07bf
07ba: 09 04 4b  or    ($4b),($04)
07bd: 2f 03     bra   $07c2
07bf: 29 06 4b  and   ($4b),($06)
07c2: b3 08 11  bbc5  $08,$07d6
07c5: 09 04 5a  or    ($5a),($04)
07c8: f6 60 02  mov   a,$0260+y
07cb: 28 1f     and   a,#$1f
07cd: 38 e0 49  and   $49,#$e0
07d0: 04 49     or    a,$49
07d2: c4 49     mov   $49,a
07d4: 2f 03     bra   $07d9
07d6: 29 06 5a  and   ($5a),($06)
07d9: 6f        ret

07da: f6 10 02  mov   a,$0210+y
07dd: c4 04     mov   $04,a
07df: f6 30 02  mov   a,$0230+y
07e2: 5d        mov   x,a
07e3: f6 b0 02  mov   a,$02b0+y
07e6: 30 10     bmi   $07f8
07e8: c3 04 07  bbs6  $04,$07f2
07eb: 80        setc
07ec: a4 50     sbc   a,$50
07ee: 10 02     bpl   $07f2
07f0: e8 00     mov   a,#$00
07f2: c9 f2 00  mov   $00f2,x
07f5: c5 f3 00  mov   $00f3,a           ; set VOL(L)
07f8: 3d        inc   x
07f9: f6 d0 02  mov   a,$02d0+y
07fc: 30 10     bmi   $080e
07fe: c3 04 07  bbs6  $04,$0808
0801: 80        setc
0802: a4 50     sbc   a,$50
0804: 10 02     bpl   $0808
0806: e8 00     mov   a,#$00
0808: c9 f2 00  mov   $00f2,x
080b: c5 f3 00  mov   $00f3,a           ; set VOL(R)
080e: 3d        inc   x
080f: f6 30 03  mov   a,$0330+y
0812: c9 f2 00  mov   $00f2,x
0815: c5 f3 00  mov   $00f3,a           ; set P(L)
0818: 3d        inc   x
0819: f6 40 03  mov   a,$0340+y
081c: c9 f2 00  mov   $00f2,x
081f: c5 f3 00  mov   $00f3,a           ; set P(H)
0822: 6f        ret

0823: c4 04     mov   $04,a
0825: c4 05     mov   $05,a
0827: e4 5c     mov   a,$5c
0829: d0 23     bne   $084e
082b: f6 90 02  mov   a,$0290+y
082e: c4 06     mov   $06,a
0830: 10 05     bpl   $0837
0832: 48 ff     eor   a,#$ff
0834: bc        inc   a
0835: c4 06     mov   $06,a
0837: 80        setc
0838: a9 06 04  sbc   ($04),($06)
083b: 10 03     bpl   $0840
083d: 8f 00 04  mov   $04,#$00
0840: f6 90 02  mov   a,$0290+y
0843: 28 80     and   a,#$80
0845: d0 07     bne   $084e
0847: e4 04     mov   a,$04
0849: fa 05 04  mov   ($04),($05)
084c: c4 05     mov   $05,a
084e: e4 04     mov   a,$04
0850: d6 d0 02  mov   $02d0+y,a
0853: e4 05     mov   a,$05
0855: d6 b0 02  mov   $02b0+y,a
0858: 6f        ret

0859: e4 59     mov   a,$59
085b: d0 17     bne   $0874
085d: 8f 80 57  mov   $57,#$80
0860: e4 53     mov   a,$53
0862: eb 54     mov   y,$54
0864: 7a 51     addw  ya,$51
0866: 5a 55     cmpw  ya,$55
0868: 90 05     bcc   $086f
086a: 9a 55     subw  ya,$55
086c: 38 7f 57  and   $57,#$7f
086f: c4 53     mov   $53,a
0871: cb 54     mov   $54,y
0873: 6f        ret

0874: 8f c0 57  mov   $57,#$c0
0877: 6f        ret

0878: f6 50 02  mov   a,$0250+y
087b: 28 1c     and   a,#$1c
087d: 5d        mov   x,a
087e: e8 ff     mov   a,#$ff
0880: 74 5f     cmp   a,$5f+x
0882: d0 03     bne   $0887
0884: 3d        inc   x
0885: 2f f9     bra   $0880
0887: dd        mov   a,y
0888: 74 5f     cmp   a,$5f+x
088a: 6f        ret

088b: e4 59     mov   a,$59
088d: f0 0c     beq   $089b
088f: 3f 78 08  call  $0878
0892: d0 07     bne   $089b
0894: f6 40 02  mov   a,$0240+y
0897: 04 4f     or    a,$4f
0899: c4 4f     mov   $4f,a
089b: 6f        ret

089c: f6 10 02  mov   a,$0210+y
089f: c4 04     mov   $04,a
08a1: 63 04 01  bbs3  $04,$08a5
08a4: 6f        ret

08a5: 28 fb     and   a,#$fb
08a7: d6 10 02  mov   $0210+y,a
08aa: f6 30 03  mov   a,$0330+y
08ad: c4 06     mov   $06,a
08af: f6 40 03  mov   a,$0340+y
08b2: c4 07     mov   $07,a
08b4: f6 60 02  mov   a,$0260+y
08b7: bc        inc   a
08b8: bc        inc   a
08b9: 3f 5e 0b  call  $0b5e
08bc: ba 5d     movw  ya,$5d
08be: 9a 06     subw  ya,$06
08c0: cb 06     mov   $06,y
08c2: fd        mov   y,a
08c3: f8 45     mov   x,$45
08c5: f5 b0 03  mov   a,$03b0+x
08c8: cf        mul   ya
08c9: c4 05     mov   $05,a
08cb: e4 06     mov   a,$06
08cd: cb 06     mov   $06,y
08cf: fd        mov   y,a
08d0: f5 b0 03  mov   a,$03b0+x
08d3: cf        mul   ya
08d4: 60        clrc
08d5: 84 06     adc   a,$06
08d7: c4 06     mov   $06,a
08d9: 90 01     bcc   $08dc
08db: fc        inc   y
08dc: cb 07     mov   $07,y
08de: 8f 00 04  mov   $04,#$00
08e1: eb 45     mov   y,$45
08e3: f6 c0 03  mov   a,$03c0+y
08e6: d6 d0 03  mov   $03d0+y,a
08e9: 3f 0f 09  call  $090f
08ec: e4 07     mov   a,$07
08ee: d6 80 03  mov   $0380+y,a
08f1: e4 06     mov   a,$06
08f3: d6 70 03  mov   $0370+y,a
08f6: e4 05     mov   a,$05
08f8: d6 60 03  mov   $0360+y,a
08fb: e4 04     mov   a,$04
08fd: d6 50 03  mov   $0350+y,a
0900: e8 00     mov   a,#$00
0902: d6 20 03  mov   $0320+y,a
0905: d6 10 03  mov   $0310+y,a
0908: f6 90 03  mov   a,$0390+y
090b: d6 a0 03  mov   $03a0+y,a
090e: 6f        ret

090f: 6d        push  y
0910: 5d        mov   x,a
0911: 8d 00     mov   y,#$00
0913: e4 07     mov   a,$07
0915: 9e        div   ya,x
0916: c4 07     mov   $07,a
0918: e4 06     mov   a,$06
091a: 9e        div   ya,x
091b: c4 06     mov   $06,a
091d: e4 05     mov   a,$05
091f: 9e        div   ya,x
0920: c4 05     mov   $05,a
0922: e4 04     mov   a,$04
0924: 9e        div   ya,x
0925: c4 04     mov   $04,a
0927: ee        pop   y
0928: 6f        ret

0929: f6 10 02  mov   a,$0210+y
092c: c4 04     mov   $04,a
092e: 63 04 01  bbs3  $04,$0932
0931: 6f        ret

0932: f6 a0 03  mov   a,$03a0+y
0935: f0 05     beq   $093c
0937: 9c        dec   a
0938: d6 a0 03  mov   $03a0+y,a
093b: 6f        ret

093c: 43 04 27  bbs2  $04,$0966
093f: 60        clrc
0940: f6 50 03  mov   a,$0350+y
0943: 96 10 03  adc   a,$0310+y
0946: d6 10 03  mov   $0310+y,a
0949: f6 60 03  mov   a,$0360+y
094c: 96 20 03  adc   a,$0320+y
094f: d6 20 03  mov   $0320+y,a
0952: f6 70 03  mov   a,$0370+y
0955: 96 30 03  adc   a,$0330+y
0958: d6 30 03  mov   $0330+y,a
095b: f6 80 03  mov   a,$0380+y
095e: 96 40 03  adc   a,$0340+y
0961: d6 40 03  mov   $0340+y,a
0964: 2f 25     bra   $098b
0966: 80        setc
0967: f6 10 03  mov   a,$0310+y
096a: b6 50 03  sbc   a,$0350+y
096d: d6 10 03  mov   $0310+y,a
0970: f6 20 03  mov   a,$0320+y
0973: b6 60 03  sbc   a,$0360+y
0976: d6 20 03  mov   $0320+y,a
0979: f6 30 03  mov   a,$0330+y
097c: b6 70 03  sbc   a,$0370+y
097f: d6 30 03  mov   $0330+y,a
0982: f6 40 03  mov   a,$0340+y
0985: b6 80 03  sbc   a,$0380+y
0988: d6 40 03  mov   $0340+y,a
098b: f6 d0 03  mov   a,$03d0+y
098e: 9c        dec   a
098f: f0 04     beq   $0995
0991: d6 d0 03  mov   $03d0+y,a
0994: 6f        ret

0995: e4 04     mov   a,$04
0997: 48 04     eor   a,#$04
0999: d6 10 02  mov   $0210+y,a
099c: f6 c0 03  mov   a,$03c0+y
099f: 1c        asl   a
09a0: d6 d0 03  mov   $03d0+y,a
09a3: 6f        ret

09a4: f6 10 02  mov   a,$0210+y
09a7: c4 04     mov   $04,a
09a9: 23 04 01  bbs1  $04,$09ad
09ac: 6f        ret

09ad: 28 fe     and   a,#$fe
09af: d6 10 02  mov   $0210+y,a
09b2: f6 00 04  mov   a,$0400+y
09b5: d6 10 04  mov   $0410+y,a
09b8: f6 e0 03  mov   a,$03e0+y
09bb: d6 f0 03  mov   $03f0+y,a
09be: e8 00     mov   a,#$00
09c0: d6 a0 02  mov   $02a0+y,a
09c3: d6 c0 02  mov   $02c0+y,a
09c6: 6f        ret

09c7: f6 10 02  mov   a,$0210+y
09ca: c4 04     mov   $04,a
09cc: 23 04 01  bbs1  $04,$09d0
09cf: 6f        ret

09d0: f6 f0 03  mov   a,$03f0+y
09d3: f0 05     beq   $09da
09d5: 9c        dec   a
09d6: d6 f0 03  mov   $03f0+y,a
09d9: 6f        ret

09da: 03 04 28  bbs0  $04,$0a05
09dd: 80        setc
09de: f6 a0 02  mov   a,$02a0+y
09e1: b6 20 04  sbc   a,$0420+y
09e4: d6 a0 02  mov   $02a0+y,a
09e7: f6 b0 02  mov   a,$02b0+y
09ea: b6 30 04  sbc   a,$0430+y
09ed: d6 b0 02  mov   $02b0+y,a
09f0: 80        setc
09f1: f6 c0 02  mov   a,$02c0+y
09f4: b6 20 04  sbc   a,$0420+y
09f7: d6 c0 02  mov   $02c0+y,a
09fa: f6 d0 02  mov   a,$02d0+y
09fd: b6 30 04  sbc   a,$0430+y
0a00: d6 d0 02  mov   $02d0+y,a
0a03: 2f 26     bra   $0a2b
0a05: 60        clrc
0a06: f6 a0 02  mov   a,$02a0+y
0a09: 96 20 04  adc   a,$0420+y
0a0c: d6 a0 02  mov   $02a0+y,a
0a0f: f6 b0 02  mov   a,$02b0+y
0a12: 96 30 04  adc   a,$0430+y
0a15: d6 b0 02  mov   $02b0+y,a
0a18: 60        clrc
0a19: f6 c0 02  mov   a,$02c0+y
0a1c: 96 20 04  adc   a,$0420+y
0a1f: d6 c0 02  mov   $02c0+y,a
0a22: f6 d0 02  mov   a,$02d0+y
0a25: 96 30 04  adc   a,$0430+y
0a28: d6 d0 02  mov   $02d0+y,a
0a2b: f6 10 04  mov   a,$0410+y
0a2e: 9c        dec   a
0a2f: f0 04     beq   $0a35
0a31: d6 10 04  mov   $0410+y,a
0a34: 6f        ret

0a35: f6 00 04  mov   a,$0400+y
0a38: d6 10 04  mov   $0410+y,a
0a3b: f6 10 02  mov   a,$0210+y
0a3e: 48 01     eor   a,#$01
0a40: d6 10 02  mov   $0210+y,a
0a43: 6f        ret

0a44: e8 40     mov   a,#$40
0a46: 16 20 02  or    a,$0220+y
0a49: d6 20 02  mov   $0220+y,a
0a4c: f6 e0 04  mov   a,$04e0+y
0a4f: 60        clrc
0a50: 96 60 02  adc   a,$0260+y
0a53: 3f 5e 0b  call  $0b5e
0a56: e4 5d     mov   a,$5d
0a58: d6 30 03  mov   $0330+y,a
0a5b: e4 5e     mov   a,$5e
0a5d: d6 40 03  mov   $0340+y,a
0a60: f6 60 02  mov   a,$0260+y
0a63: 2f 18     bra   $0a7d
0a65: f6 20 02  mov   a,$0220+y
0a68: c4 04     mov   $04,a
0a6a: 83 04 d7  bbs4  $04,$0a44
0a6d: c3 04 01  bbs6  $04,$0a71
0a70: 6f        ret

0a71: f6 e0 02  mov   a,$02e0+y
0a74: 1c        asl   a
0a75: 5d        mov   x,a
0a76: f5 2f 14  mov   a,$142f+x
0a79: 60        clrc
0a7a: 96 e0 04  adc   a,$04e0+y
0a7d: 3f 5e 0b  call  $0b5e
0a80: fa 5d 06  mov   ($06),($5d)
0a83: fa 5e 07  mov   ($07),($5e)
0a86: f6 30 03  mov   a,$0330+y
0a89: 2d        push  a
0a8a: f6 40 03  mov   a,$0340+y
0a8d: fd        mov   y,a
0a8e: ae        pop   a
0a8f: 9a 06     subw  ya,$06
0a91: c4 06     mov   $06,a
0a93: cb 07     mov   $07,y
0a95: 10 15     bpl   $0aac
0a97: 48 ff     eor   a,#$ff
0a99: c4 06     mov   $06,a
0a9b: e4 07     mov   a,$07
0a9d: 48 ff     eor   a,#$ff
0a9f: c4 07     mov   $07,a
0aa1: 3a 06     incw  $06
0aa3: e8 df     mov   a,#$df
0aa5: eb 45     mov   y,$45
0aa7: 36 20 02  and   a,$0220+y
0aaa: 2f 07     bra   $0ab3
0aac: eb 45     mov   y,$45
0aae: e8 20     mov   a,#$20
0ab0: 16 20 02  or    a,$0220+y
0ab3: d6 20 02  mov   $0220+y,a
0ab6: e8 00     mov   a,#$00
0ab8: c4 04     mov   $04,a
0aba: c4 05     mov   $05,a
0abc: d6 20 03  mov   $0320+y,a
0abf: d6 10 03  mov   $0310+y,a
0ac2: f6 80 04  mov   a,$0480+y
0ac5: 3f 0f 09  call  $090f
0ac8: e4 07     mov   a,$07
0aca: d6 d0 04  mov   $04d0+y,a
0acd: e4 06     mov   a,$06
0acf: d6 c0 04  mov   $04c0+y,a
0ad2: e4 05     mov   a,$05
0ad4: d6 b0 04  mov   $04b0+y,a
0ad7: e4 04     mov   a,$04
0ad9: d6 a0 04  mov   $04a0+y,a
0adc: f6 80 04  mov   a,$0480+y
0adf: d6 60 04  mov   $0460+y,a
0ae2: f6 90 04  mov   a,$0490+y
0ae5: d6 70 04  mov   $0470+y,a
0ae8: 6f        ret

0ae9: f6 20 02  mov   a,$0220+y
0aec: c4 04     mov   $04,a
0aee: c3 04 01  bbs6  $04,$0af2
0af1: 6f        ret

0af2: f6 70 04  mov   a,$0470+y
0af5: f0 05     beq   $0afc
0af7: 9c        dec   a
0af8: d6 70 04  mov   $0470+y,a
0afb: 6f        ret

0afc: a3 04 27  bbs5  $04,$0b26
0aff: 60        clrc
0b00: f6 10 03  mov   a,$0310+y
0b03: 96 a0 04  adc   a,$04a0+y
0b06: d6 10 03  mov   $0310+y,a
0b09: f6 20 03  mov   a,$0320+y
0b0c: 96 b0 04  adc   a,$04b0+y
0b0f: d6 20 03  mov   $0320+y,a
0b12: f6 30 03  mov   a,$0330+y
0b15: 96 c0 04  adc   a,$04c0+y
0b18: d6 30 03  mov   $0330+y,a
0b1b: f6 40 03  mov   a,$0340+y
0b1e: 96 d0 04  adc   a,$04d0+y
0b21: d6 40 03  mov   $0340+y,a
0b24: 2f 25     bra   $0b4b
0b26: 80        setc
0b27: f6 10 03  mov   a,$0310+y
0b2a: b6 a0 04  sbc   a,$04a0+y
0b2d: d6 10 03  mov   $0310+y,a
0b30: f6 20 03  mov   a,$0320+y
0b33: b6 b0 04  sbc   a,$04b0+y
0b36: d6 20 03  mov   $0320+y,a
0b39: f6 30 03  mov   a,$0330+y
0b3c: b6 c0 04  sbc   a,$04c0+y
0b3f: d6 30 03  mov   $0330+y,a
0b42: f6 40 03  mov   a,$0340+y
0b45: b6 d0 04  sbc   a,$04d0+y
0b48: d6 40 03  mov   $0340+y,a
0b4b: f6 60 04  mov   a,$0460+y
0b4e: 9c        dec   a
0b4f: f0 04     beq   $0b55
0b51: d6 60 04  mov   $0460+y,a
0b54: 6f        ret

0b55: e8 9f     mov   a,#$9f
0b57: 36 20 02  and   a,$0220+y
0b5a: d6 20 02  mov   $0220+y,a
0b5d: 6f        ret

0b5e: 6d        push  y
0b5f: 2d        push  a
0b60: f6 e0 02  mov   a,$02e0+y
0b63: 1c        asl   a
0b64: 5d        mov   x,a
0b65: 3d        inc   x
0b66: ae        pop   a
0b67: 8d 08     mov   y,#$08
0b69: cf        mul   ya
0b6a: 15 2f 14  or    a,$142f+x
0b6d: 8f 13 0a  mov   $0a,#$13
0b70: 8f 11 0b  mov   $0b,#$11
0b73: 7a 0a     addw  ya,$0a
0b75: da 0a     movw  $0a,ya
0b77: cd 00     mov   x,#$00
0b79: e7 0a     mov   a,($0a+x)
0b7b: c4 5d     mov   $5d,a
0b7d: 3a 0a     incw  $0a
0b7f: e7 0a     mov   a,($0a+x)
0b81: c4 5e     mov   $5e,a
0b83: ee        pop   y
0b84: 6f        ret

0b85: 8f 00 4b  mov   $4b,#$00
0b88: 8f 00 4d  mov   $4d,#$00
0b8b: 18 20 49  or    $49,#$20
0b8e: 8f 00 4a  mov   $4a,#$00
0b91: 6f        ret

0b92: cd cf     mov   x,#$cf
0b94: bd        mov   sp,x
0b95: 20        clrp
0b96: cd 00     mov   x,#$00
0b98: 7d        mov   a,x
0b99: af        mov   (x)+,a
0b9a: c8 e0     cmp   x,#$e0
0b9c: d0 fb     bne   $0b99
0b9e: 8f 00 0c  mov   $0c,#$00
0ba1: 8f 02 0d  mov   $0d,#$02
0ba4: fd        mov   y,a
0ba5: d7 0c     mov   ($0c)+y,a
0ba7: 3a 0c     incw  $0c
0ba9: 78 06 0d  cmp   $0d,#$06
0bac: d0 f7     bne   $0ba5
0bae: 78 30 0c  cmp   $0c,#$30
0bb1: d0 f2     bne   $0ba5
0bb3: e8 00     mov   a,#$00
0bb5: c5 f1 00  mov   $00f1,a
0bb8: e8 20     mov   a,#$20
0bba: c5 fa 00  mov   $00fa,a           ; set timer 0 frequency (4 ms)
0bbd: e5 fd 00  mov   a,$00fd
0bc0: 3f 7c 06  call  $067c
0bc3: 3f e3 06  call  $06e3
0bc6: 18 01 44  or    $44,#$01
0bc9: e4 44     mov   a,$44
0bcb: c5 f1 00  mov   $00f1,a
;
0bce: e5 fd 00  mov   a,$00fd
0bd1: f0 fb     beq   $0bce             ; wait for timer 0 tick
0bd3: e5 f5 00  mov   a,$00f5
0bd6: 64 5b     cmp   a,$5b
0bd8: f0 08     beq   $0be2
0bda: c4 5b     mov   $5b,a
0bdc: e5 f4 00  mov   a,$00f4
0bdf: 3f 2d 07  call  $072d
0be2: e8 00     mov   a,#$00
0be4: c4 4e     mov   $4e,a
0be6: c4 4f     mov   $4f,a
0be8: 3f 59 08  call  $0859
0beb: 8f 0f 45  mov   $45,#$0f
0bee: 3f eb 0c  call  $0ceb
0bf1: 8b 45     dec   $45
0bf3: 10 f9     bpl   $0bee
0bf5: 8f 00 58  mov   $58,#$00
0bf8: e4 4a     mov   a,$4a
0bfa: f0 02     beq   $0bfe
0bfc: 8b 4a     dec   $4a
0bfe: 8d 08     mov   y,#$08
0c00: ad 05     cmp   y,#$05
0c02: f0 06     beq   $0c0a
0c04: b0 07     bcs   $0c0d
0c06: e4 4a     mov   a,$4a
0c08: d0 11     bne   $0c1b
0c0a: a3 4a 0e  bbs5  $4a,$0c1b
0c0d: f6 da 0c  mov   a,$0cda+y
0c10: c5 f2 00  mov   $00f2,a
0c13: f6 e2 0c  mov   a,$0ce2+y
0c16: 5d        mov   x,a
0c17: e6        mov   a,(x)
0c18: c5 f3 00  mov   $00f3,a           ; copy from dsp shadows
0c1b: fe e3     dbnz  y,$0c00
0c1d: 3f 1a 07  call  $071a
0c20: b0 ac     bcs   $0bce
0c22: c4 46     mov   $46,a
0c24: e3 46 45  bbs7  $46,$0c6c
0c27: 1c        asl   a
0c28: 5d        mov   x,a
0c29: f5 79 14  mov   a,$1479+x         ; song list (regular song is $40 and starts from $4000)
0c2c: c4 0c     mov   $0c,a
0c2e: f5 7a 14  mov   a,$147a+x
0c31: c4 0d     mov   $0d,a
0c33: 8d 00     mov   y,#$00
0c35: f7 0c     mov   a,($0c)+y
0c37: c4 0e     mov   $0e,a
0c39: 3a 0c     incw  $0c
0c3b: f7 0c     mov   a,($0c)+y
0c3d: c4 0f     mov   $0f,a             ; load voice ptr
0c3f: 3a 0c     incw  $0c
0c41: 04 0e     or    a,$0e
0c43: d0 03     bne   $0c48             ; quit if null (0)
0c45: 5f ce 0b  jmp   $0bce

0c48: 3f d2 06  call  $06d2
0c4b: e4 0e     mov   a,$0e
0c4d: d6 f0 02  mov   $02f0+y,a
0c50: e4 0f     mov   a,$0f
0c52: d6 00 03  mov   $0300+y,a         ; load voice ptr to $02f0+y/$0300+y
0c55: e8 01     mov   a,#$01
0c57: d6 00 02  mov   $0200+y,a
0c5a: e8 00     mov   a,#$00
0c5c: d6 90 02  mov   $0290+y,a
0c5f: d6 10 02  mov   $0210+y,a
0c62: d6 20 02  mov   $0220+y,a
0c65: e8 80     mov   a,#$80
0c67: d6 50 02  mov   $0250+y,a
0c6a: 2f c7     bra   $0c33
0c6c: e4 46     mov   a,$46
0c6e: 28 0f     and   a,#$0f
0c70: 1c        asl   a
0c71: 5d        mov   x,a
0c72: 1f 75 0c  jmp   ($0c75+x)

0c75: dw $0c95
0c77: dw $0c95
0c79: dw $0c95
0c7b: dw $0c95
0c7d: dw $0c95
0c7f: dw $0c95
0c81: dw $0cce
0c83: dw $0cc9
0c85: dw $0cd3
0c87: dw $0c95
0c89: dw $0cba
0c8b: dw $0cb5
0c8d: dw $0cb0
0c8f: dw $0ca8
0c91: dw $0ca0
0c93: dw $0c98

0c95: 5f ce 0b  jmp   $0bce

0c98: 3f 85 0b  call  $0b85
0c9b: 8f c0 58  mov   $58,#$c0
0c9e: 2f 15     bra   $0cb5
0ca0: 3f 85 0b  call  $0b85
0ca3: 8f 80 58  mov   $58,#$80
0ca6: 2f 0d     bra   $0cb5
0ca8: 3f 85 0b  call  $0b85
0cab: 8f 40 58  mov   $58,#$40
0cae: 2f e5     bra   $0c95
0cb0: 8f ff 59  mov   $59,#$ff
0cb3: 2f e0     bra   $0c95
0cb5: 8f 00 59  mov   $59,#$00
0cb8: 2f db     bra   $0c95
0cba: 3f d2 06  call  $06d2
0cbd: e8 05     mov   a,#$05
0cbf: d6 00 02  mov   $0200+y,a
0cc2: e8 12     mov   a,#$12
0cc4: d6 70 02  mov   $0270+y,a
0cc7: 2f cc     bra   $0c95
0cc9: 8f 00 5c  mov   $5c,#$00
0ccc: 2f c7     bra   $0c95
0cce: 8f ff 5c  mov   $5c,#$ff
0cd1: 2f c2     bra   $0c95
0cd3: 3f 30 06  call  $0630
0cd6: 8f 00 5b  mov   $5b,#$00
0cd9: 2f ba     bra   $0c95

; $0cda+y - dsp reg addresses
; EVOL(L),EVOL(R),EFB,EON,FLG,NON,KOF,KON
0cdb: db $2c,$3c,$0d,$4d,$6c,$3d,$5c,$4c
; $0ce2+y - dsp reg shadows
0ce3: db $4d,$4d,$4c,$4b,$49,$5a,$4f,$4e

0ceb: eb 45     mov   y,$45
0ced: f6 00 02  mov   a,$0200+y
0cf0: 1c        asl   a
0cf1: 5d        mov   x,a
0cf2: 1f f5 0c  jmp   ($0cf5+x)

0cf5: dw $0d01
0cf7: dw $0d02
0cf9: dw $107a
0cfb: dw $10d1
0cfd: dw $10f7
0cff: dw $10fa

0d01: 6f        ret

0d02: f6 10 02  mov   a,$0210+y
0d05: 24 58     and   a,$58
0d07: f0 03     beq   $0d0c
0d09: 5f 5e 10  jmp   $105e

0d0c: f6 10 02  mov   a,$0210+y
0d0f: 24 57     and   a,$57
0d11: f0 03     beq   $0d16
0d13: 5f 8b 08  jmp   $088b

0d16: f6 f0 02  mov   a,$02f0+y
0d19: c4 0c     mov   $0c,a
0d1b: f6 00 03  mov   a,$0300+y
0d1e: c4 0d     mov   $0d,a             ; set voice ptr into $0c/d
;
0d20: cd 00     mov   x,#$00
0d22: e7 0c     mov   a,($0c+x)         ; read vcmd
0d24: 3a 0c     incw  $0c
0d26: c4 47     mov   $47,a             ; save vcmd into $47
0d28: e3 47 61  bbs7  $47,$0d8c
; vcmd 00-7f
0d2b: f6 e0 02  mov   a,$02e0+y
0d2e: 1c        asl   a
0d2f: 5d        mov   x,a
0d30: f5 2f 14  mov   a,$142f+x
0d33: 60        clrc
0d34: 84 47     adc   a,$47
0d36: 68 60     cmp   a,#$60
0d38: 90 02     bcc   $0d3c
0d3a: e8 60     mov   a,#$60
0d3c: d6 60 02  mov   $0260+y,a
0d3f: 3f 5e 0b  call  $0b5e
0d42: e4 5d     mov   a,$5d
0d44: d6 30 03  mov   $0330+y,a
0d47: e4 5e     mov   a,$5e
0d49: d6 40 03  mov   $0340+y,a
0d4c: cd 00     mov   x,#$00
0d4e: e7 0c     mov   a,($0c+x)
0d50: d6 70 02  mov   $0270+y,a
0d53: 3a 0c     incw  $0c
0d55: e7 0c     mov   a,($0c+x)
0d57: d6 80 02  mov   $0280+y,a
0d5a: 3a 0c     incw  $0c
0d5c: e7 0c     mov   a,($0c+x)
0d5e: 3f 23 08  call  $0823
0d61: 3f 9c 08  call  $089c
0d64: 3f a4 09  call  $09a4
0d67: 3f 65 0a  call  $0a65
0d6a: 3f 78 08  call  $0878
0d6d: d0 03     bne   $0d72
0d6f: 3f 3d 07  call  $073d
0d72: f6 20 02  mov   a,$0220+y
0d75: 28 7f     and   a,#$7f
0d77: d6 20 02  mov   $0220+y,a
0d7a: 3a 0c     incw  $0c
0d7c: e4 0c     mov   a,$0c
0d7e: d6 f0 02  mov   $02f0+y,a
0d81: e4 0d     mov   a,$0d
0d83: d6 00 03  mov   $0300+y,a
0d86: e8 02     mov   a,#$02
0d88: d6 00 02  mov   $0200+y,a
0d8b: 6f        ret

0d8c: 5c        lsr   a
0d8d: 5c        lsr   a
0d8e: 5c        lsr   a
0d8f: 28 0e     and   a,#$0e
0d91: 5d        mov   x,a
0d92: 1f 95 0d  jmp   ($0d95+x)

0d95: dw $0daa  ; 80-8f
0d97: dw $0da5  ; 90-9f - nop.1
0d99: dw $0dd6  ; a0-af
0d9b: dw $0da5  ; b0-bf - nop.1
0d9d: dw $0e39  ; c0-cf
0d9f: dw $0ed3  ; d0-df
0da1: dw $1052  ; e0-ef
0da3: dw $105e  ; f0-ff

; vcmd 90-9f,b0-bf,c4-ce,d4-d9 - nop.1
0da5: 3a 0c     incw  $0c
0da7: 5f 20 0d  jmp   $0d20

; vcmd 80-8f
0daa: e8 04     mov   a,#$04
0dac: cf        mul   ya
0dad: c4 04     mov   $04,a
0daf: cd 00     mov   x,#$00
0db1: e7 0c     mov   a,($0c+x)
0db3: 28 03     and   a,#$03
0db5: 60        clrc
0db6: 84 04     adc   a,$04
0db8: fd        mov   y,a
0db9: f6 70 05  mov   a,$0570+y
0dbc: 9c        dec   a
0dbd: f0 07     beq   $0dc6
0dbf: 3a 0c     incw  $0c
0dc1: eb 45     mov   y,$45
0dc3: 5f 20 0d  jmp   $0d20

0dc6: e8 02     mov   a,#$02
0dc8: cf        mul   ya
0dc9: fd        mov   y,a
0dca: f6 b0 05  mov   a,$05b0+y
0dcd: c4 0c     mov   $0c,a
0dcf: f6 b1 05  mov   a,$05b1+y
0dd2: c4 0d     mov   $0d,a
0dd4: 2f eb     bra   $0dc1

; vcmd a0-af
0dd6: e8 04     mov   a,#$04
0dd8: cf        mul   ya
0dd9: c4 04     mov   $04,a
0ddb: e4 47     mov   a,$47
0ddd: 28 03     and   a,#$03
0ddf: 60        clrc
0de0: 84 04     adc   a,$04
0de2: fd        mov   y,a
0de3: 63 47 1c  bbs3  $47,$0e02
0de6: cd 00     mov   x,#$00
0de8: e7 0c     mov   a,($0c+x)
0dea: d6 70 05  mov   $0570+y,a
0ded: 3a 0c     incw  $0c
0def: e8 02     mov   a,#$02
0df1: cf        mul   ya
0df2: fd        mov   y,a
0df3: e4 0c     mov   a,$0c
0df5: d6 f0 04  mov   $04f0+y,a
0df8: e4 0d     mov   a,$0d
0dfa: d6 f1 04  mov   $04f1+y,a
0dfd: eb 45     mov   y,$45
0dff: 5f 20 0d  jmp   $0d20

0e02: f6 70 05  mov   a,$0570+y
0e05: d0 13     bne   $0e1a
0e07: e8 02     mov   a,#$02
0e09: cf        mul   ya
0e0a: fd        mov   y,a
0e0b: f6 f0 04  mov   a,$04f0+y
0e0e: c4 0c     mov   $0c,a
0e10: f6 f1 04  mov   a,$04f1+y
0e13: c4 0d     mov   $0d,a
0e15: eb 45     mov   y,$45
0e17: 5f 20 0d  jmp   $0d20

0e1a: 9c        dec   a
0e1b: f0 15     beq   $0e32
0e1d: d6 70 05  mov   $0570+y,a
0e20: e8 02     mov   a,#$02
0e22: cf        mul   ya
0e23: fd        mov   y,a
0e24: 3a 0c     incw  $0c
0e26: e4 0c     mov   a,$0c
0e28: d6 b0 05  mov   $05b0+y,a
0e2b: e4 0d     mov   a,$0d
0e2d: d6 b1 05  mov   $05b1+y,a
0e30: 2f d9     bra   $0e0b
0e32: 3a 0c     incw  $0c
0e34: eb 45     mov   y,$45
0e36: 5f 20 0d  jmp   $0d20

; c0-cf
0e39: cd 00     mov   x,#$00
0e3b: e7 0c     mov   a,($0c+x)
0e3d: c4 04     mov   $04,a             ; read next arg into $04
0e3f: 3a 0c     incw  $0c
0e41: e4 47     mov   a,$47             ; vcmd
0e43: 28 0f     and   a,#$0f
0e45: 1c        asl   a
0e46: 5d        mov   x,a
0e47: 1f 4a 0e  jmp   ($0e4a+x)

0e4a: dw $0e6a  ; c0
0e4c: dw $0e85  ; c1
0e4e: dw $0ea5  ; c2
0e50: dw $0ebd  ; c3
0e52: dw $0da5  ; c4
0e54: dw $0da5  ; c5
0e56: dw $0da5  ; c6
0e58: dw $0da5  ; c7
0e5a: dw $0da5  ; c8
0e5c: dw $0da5  ; c9
0e5e: dw $0da5  ; ca
0e60: dw $0da5  ; cb
0e62: dw $0da5  ; cc
0e64: dw $0da5  ; cd
0e66: dw $0da5  ; ce
0e68: dw $0e72  ; cf

; vcmd c0
0e6a: e4 04     mov   a,$04
0e6c: d6 e0 02  mov   $02e0+y,a
0e6f: 5f 20 0d  jmp   $0d20

; vcmd cf
0e72: e4 04     mov   a,$04
0e74: 1c        asl   a
0e75: 5d        mov   x,a
0e76: f5 1b 14  mov   a,$141b+x
0e79: d6 40 04  mov   $0440+y,a
0e7c: f5 1c 14  mov   a,$141c+x
0e7f: d6 50 04  mov   $0450+y,a
0e82: 5f 20 0d  jmp   $0d20

; vcmd c1
0e85: e4 04     mov   a,$04
0e87: d6 90 04  mov   $0490+y,a
0e8a: cd 00     mov   x,#$00
0e8c: e7 0c     mov   a,($0c+x)
0e8e: 3a 0c     incw  $0c
0e90: d6 80 04  mov   $0480+y,a
0e93: e7 0c     mov   a,($0c+x)
0e95: 3a 0c     incw  $0c
0e97: d6 e0 04  mov   $04e0+y,a
0e9a: e8 40     mov   a,#$40
0e9c: 16 20 02  or    a,$0220+y
0e9f: d6 20 02  mov   $0220+y,a
0ea2: 5f 20 0d  jmp   $0d20

; vcmd c2
0ea5: e4 04     mov   a,$04
0ea7: d6 90 04  mov   $0490+y,a
0eaa: cd 00     mov   x,#$00
0eac: e7 0c     mov   a,($0c+x)
0eae: 3a 0c     incw  $0c
0eb0: d6 80 04  mov   $0480+y,a
0eb3: e7 0c     mov   a,($0c+x)
0eb5: 3a 0c     incw  $0c
0eb7: d6 e0 04  mov   $04e0+y,a
0eba: 5f 20 0d  jmp   $0d20

; vcmd c3
0ebd: e4 04     mov   a,$04
0ebf: f0 0b     beq   $0ecc
0ec1: e8 10     mov   a,#$10
0ec3: 16 20 02  or    a,$0220+y
0ec6: d6 20 02  mov   $0220+y,a
0ec9: 5f 20 0d  jmp   $0d20

0ecc: e8 8f     mov   a,#$8f
0ece: 36 20 02  and   a,$0220+y
0ed1: 2f f3     bra   $0ec6

; d0-df
0ed3: cd 00     mov   x,#$00
0ed5: e7 0c     mov   a,($0c+x)
0ed7: c4 04     mov   $04,a
0ed9: 3a 0c     incw  $0c
0edb: e4 47     mov   a,$47
0edd: 28 0f     and   a,#$0f
0edf: 1c        asl   a
0ee0: 5d        mov   x,a
0ee1: 1f e4 0e  jmp   ($0ee4+x)

0ee4: dw $0f04  ; d0
0ee6: dw $0f43  ; d1
0ee8: dw $0f4a  ; d2
0eea: dw $0f53  ; d3
0eec: dw $0da5  ; d4
0eee: dw $0da5  ; d5
0ef0: dw $0da5  ; d6
0ef2: dw $0da5  ; d7
0ef4: dw $0da5  ; d8
0ef6: dw $0da5  ; d9
0ef8: dw $0f66  ; da
0efa: dw $0fc8  ; db
0efc: dw $0fdb  ; dc
0efe: dw $0ff8  ; dd
0f00: dw $100d  ; de
0f02: dw $103d  ; df

; vcmd d0
0f04: e8 80     mov   a,#$80
0f06: f3 04 02  bbc7  $04,$0f0b
0f09: e8 40     mov   a,#$40
0f0b: d6 10 02  mov   $0210+y,a
0f0e: e4 04     mov   a,$04
0f10: 28 1c     and   a,#$1c
0f12: 5c        lsr   a
0f13: 5c        lsr   a
0f14: 5d        mov   x,a
0f15: 9f        xcn   a
0f16: d6 30 02  mov   $0230+y,a
0f19: f5 3b 0f  mov   a,$0f3b+x
0f1c: d6 40 02  mov   $0240+y,a
0f1f: e4 04     mov   a,$04
0f21: 28 1f     and   a,#$1f
0f23: d6 50 02  mov   $0250+y,a
0f26: 5d        mov   x,a
0f27: f4 5f     mov   a,$5f+x
0f29: 68 ff     cmp   a,#$ff
0f2b: f0 08     beq   $0f35
0f2d: 4d        push  x
0f2e: 6d        push  y
0f2f: fd        mov   y,a
0f30: 3f c1 06  call  $06c1
0f33: ee        pop   y
0f34: ce        pop   x
0f35: dd        mov   a,y
0f36: d4 5f     mov   $5f+x,a
0f38: 5f 20 0d  jmp   $0d20

0f3b: db $01,$02,$04,$08,$10,$20,$40,$80

; vcmd d1
0f43: e4 04     mov   a,$04
0f45: c4 51     mov   $51,a
0f47: 5f 20 0d  jmp   $0d20

; vcmd d2
0f4a: e4 04     mov   a,$04
0f4c: 48 7f     eor   a,#$7f
0f4e: c4 50     mov   $50,a
0f50: 5f 20 0d  jmp   $0d20

; vcmd d3
0f53: f6 10 02  mov   a,$0210+y
0f56: f8 04     mov   x,$04
0f58: f0 08     beq   $0f62
0f5a: 08 20     or    a,#$20
0f5c: d6 10 02  mov   $0210+y,a
0f5f: 5f 20 0d  jmp   $0d20

0f62: 28 df     and   a,#$df
0f64: 2f f6     bra   $0f5c

; vcmd da
0f66: e4 04     mov   a,$04
0f68: c4 4c     mov   $4c,a             ; set EFB
0f6a: cd 00     mov   x,#$00
0f6c: e7 0c     mov   a,($0c+x)
0f6e: 3a 0c     incw  $0c
0f70: 80        setc
0f71: a4 50     sbc   a,$50
0f73: 10 02     bpl   $0f77
0f75: e8 00     mov   a,#$00
0f77: c4 4d     mov   $4d,a
0f79: e7 0c     mov   a,($0c+x)
0f7b: c4 04     mov   $04,a
0f7d: 3a 0c     incw  $0c
0f7f: 8d 04     mov   y,#$04
0f81: f6 da 0c  mov   a,$0cda+y
0f84: c5 f2 00  mov   $00f2,a
0f87: e8 00     mov   a,#$00
0f89: c5 f3 00  mov   $00f3,a           ; zero dsp regs
0f8c: fe f3     dbnz  y,$0f81
0f8e: 38 df 49  and   $49,#$df
0f91: e4 49     mov   a,$49
0f93: 08 20     or    a,#$20
0f95: cd 6c     mov   x,#$6c
0f97: c9 f2 00  mov   $00f2,x
0f9a: c5 f3 00  mov   $00f3,a           ; set FLG
0f9d: cd 7d     mov   x,#$7d
0f9f: c9 f2 00  mov   $00f2,x
0fa2: e4 04     mov   a,$04
0fa4: 28 07     and   a,#$07
0fa6: c5 f3 00  mov   $00f3,a           ; set EDL
0fa9: 1c        asl   a
0faa: 1c        asl   a
0fab: 1c        asl   a
0fac: c4 04     mov   $04,a
0fae: e8 7f     mov   a,#$7f
0fb0: 80        setc
0fb1: a4 04     sbc   a,$04
0fb3: 68 7f     cmp   a,#$7f
0fb5: f0 01     beq   $0fb8
0fb7: bc        inc   a
0fb8: cd 6d     mov   x,#$6d
0fba: c9 f2 00  mov   $00f2,x
0fbd: c5 f3 00  mov   $00f3,a           ; set ESA
0fc0: 8f 40 4a  mov   $4a,#$40
0fc3: eb 45     mov   y,$45
0fc5: 5f 20 0d  jmp   $0d20

; vcmd db
0fc8: f6 10 02  mov   a,$0210+y
0fcb: f8 04     mov   x,$04
0fcd: f0 08     beq   $0fd7
0fcf: 08 10     or    a,#$10
0fd1: d6 10 02  mov   $0210+y,a
0fd4: 5f 20 0d  jmp   $0d20

0fd7: 28 ef     and   a,#$ef
0fd9: 2f f6     bra   $0fd1

; vcmd dc
0fdb: e4 04     mov   a,$04
0fdd: d6 90 03  mov   $0390+y,a
0fe0: cd 00     mov   x,#$00
0fe2: e7 0c     mov   a,($0c+x)
0fe4: 08 80     or    a,#$80
0fe6: 48 ff     eor   a,#$ff
0fe8: bc        inc   a
0fe9: d6 c0 03  mov   $03c0+y,a
0fec: 3a 0c     incw  $0c
0fee: e7 0c     mov   a,($0c+x)
0ff0: d6 b0 03  mov   $03b0+y,a
0ff3: 3a 0c     incw  $0c
0ff5: 5f 20 0d  jmp   $0d20

; vcmd dd
0ff8: f6 10 02  mov   a,$0210+y
0ffb: f8 04     mov   x,$04
0ffd: f0 04     beq   $1003
0fff: 08 08     or    a,#$08
1001: 2f 02     bra   $1005
1003: 28 f7     and   a,#$f7
1005: 28 fb     and   a,#$fb
1007: d6 10 02  mov   $0210+y,a
100a: 5f 20 0d  jmp   $0d20

; vcmd de
100d: e4 04     mov   a,$04
100f: d6 e0 03  mov   $03e0+y,a
1012: cd 00     mov   x,#$00
1014: e7 0c     mov   a,($0c+x)
1016: 08 80     or    a,#$80
1018: 48 ff     eor   a,#$ff
101a: bc        inc   a
101b: d6 00 04  mov   $0400+y,a
101e: c4 04     mov   $04,a
1020: 3a 0c     incw  $0c
1022: e7 0c     mov   a,($0c+x)
1024: 3a 0c     incw  $0c
1026: 8d 00     mov   y,#$00
1028: f8 04     mov   x,$04
102a: 9e        div   ya,x
102b: c4 04     mov   $04,a
102d: e8 00     mov   a,#$00
102f: 9e        div   ya,x
1030: eb 45     mov   y,$45
1032: d6 20 04  mov   $0420+y,a
1035: e4 04     mov   a,$04
1037: d6 30 04  mov   $0430+y,a
103a: 5f 20 0d  jmp   $0d20

; vcmd df
103d: f6 10 02  mov   a,$0210+y
1040: f8 04     mov   x,$04
1042: f0 04     beq   $1048
1044: 08 02     or    a,#$02
1046: 2f 02     bra   $104a
1048: 28 fd     and   a,#$fd
104a: 28 fe     and   a,#$fe
104c: d6 10 02  mov   $0210+y,a
104f: 5f 20 0d  jmp   $0d20

; vcmd e0-ef
1052: cd 00     mov   x,#$00
1054: e7 0c     mov   a,($0c+x)
1056: d6 90 02  mov   $0290+y,a
1059: 3a 0c     incw  $0c
105b: 5f 20 0d  jmp   $0d20

; vcmd f0-ff
105e: f6 50 02  mov   a,$0250+y
1061: 30 14     bmi   $1077
1063: 3f 78 08  call  $0878
1066: d0 07     bne   $106f
1068: f6 40 02  mov   a,$0240+y
106b: 04 4f     or    a,$4f
106d: c4 4f     mov   $4f,a
106f: f6 50 02  mov   a,$0250+y
1072: 5d        mov   x,a
1073: e8 ff     mov   a,#$ff
1075: d4 5f     mov   $5f+x,a
1077: 5f c1 06  jmp   $06c1

107a: 3f 29 09  call  $0929
107d: 3f c7 09  call  $09c7
1080: 3f e9 0a  call  $0ae9
1083: 3f 78 08  call  $0878
1086: d0 03     bne   $108b
1088: 3f da 07  call  $07da
108b: f6 10 02  mov   a,$0210+y
108e: 24 58     and   a,$58
1090: d0 cc     bne   $105e
1092: f6 10 02  mov   a,$0210+y
1095: 24 57     and   a,$57
1097: f0 03     beq   $109c
1099: 5f 8b 08  jmp   $088b

109c: f6 70 02  mov   a,$0270+y
109f: 9c        dec   a
10a0: d6 70 02  mov   $0270+y,a
10a3: f0 1c     beq   $10c1
10a5: f6 80 02  mov   a,$0280+y
10a8: 9c        dec   a
10a9: d6 80 02  mov   $0280+y,a
10ac: f0 01     beq   $10af
10ae: 6f        ret

10af: 3f 78 08  call  $0878
10b2: d0 07     bne   $10bb
10b4: f6 40 02  mov   a,$0240+y
10b7: 04 4f     or    a,$4f
10b9: c4 4f     mov   $4f,a
10bb: e8 03     mov   a,#$03
10bd: d6 00 02  mov   $0200+y,a
10c0: 6f        ret

10c1: f6 20 02  mov   a,$0220+y
10c4: 08 80     or    a,#$80
10c6: d6 20 02  mov   $0220+y,a
10c9: e8 01     mov   a,#$01
10cb: d6 00 02  mov   $0200+y,a
10ce: 5f 02 0d  jmp   $0d02

10d1: f6 10 02  mov   a,$0210+y
10d4: 24 58     and   a,$58
10d6: f0 03     beq   $10db
10d8: 5f 5e 10  jmp   $105e

10db: f6 10 02  mov   a,$0210+y
10de: 24 57     and   a,$57
10e0: f0 03     beq   $10e5
10e2: 5f 8b 08  jmp   $088b

10e5: f6 70 02  mov   a,$0270+y
10e8: 9c        dec   a
10e9: d6 70 02  mov   $0270+y,a
10ec: f0 01     beq   $10ef
10ee: 6f        ret

10ef: e8 01     mov   a,#$01
10f1: d6 00 02  mov   $0200+y,a
10f4: 5f 02 0d  jmp   $0d02

10f7: 5f 5e 10  jmp   $105e

10fa: e3 58 13  bbs7  $58,$1110
10fd: f6 70 02  mov   a,$0270+y
1100: 9c        dec   a
1101: d6 70 02  mov   $0270+y,a
1104: f0 01     beq   $1107
1106: 6f        ret

1107: e8 12     mov   a,#$12
1109: d6 70 02  mov   $0270+y,a
110c: ab 50     inc   $50
110e: 10 f6     bpl   $1106
1110: 5f c1 06  jmp   $06c1

; pitch table
1113: dw $0040
1115: dw $0041
1117: dw $0042
1119: dw $0043
111b: dw $0044
111d: dw $0045
111f: dw $0046
1121: dw $0047
1123: dw $0048
1125: dw $0049
1127: dw $004a
1129: dw $004b
112b: dw $004c
112d: dw $004d
112f: dw $004e
1131: dw $004f
1133: dw $0051
1135: dw $0052
1137: dw $0053
1139: dw $0054
113b: dw $0055
113d: dw $0057
113f: dw $0058
1141: dw $0059
1143: dw $005b
1145: dw $005c
1147: dw $005d
1149: dw $005f
114b: dw $0060
114d: dw $0061
114f: dw $0063
1151: dw $0064
1153: dw $0066
1155: dw $0067
1157: dw $0069
1159: dw $006a
115b: dw $006c
115d: dw $006d
115f: dw $006f
1161: dw $0070
1163: dw $0072
1165: dw $0074
1167: dw $0075
1169: dw $0077
116b: dw $0079
116d: dw $007b
116f: dw $007c
1171: dw $007e
1173: dw $0080
1175: dw $0082
1177: dw $0084
1179: dw $0086
117b: dw $0088
117d: dw $008a
117f: dw $008c
1181: dw $008e
1183: dw $0090
1185: dw $0092
1187: dw $0094
1189: dw $0096
118b: dw $0098
118d: dw $009a
118f: dw $009d
1191: dw $009f
1193: dw $00a0
1195: dw $00a4
1197: dw $00a6
1199: dw $00a8
119b: dw $00ac
119d: dw $00ad
119f: dw $00b0
11a1: dw $00b2
11a3: dw $00b6
11a5: dw $00b8
11a7: dw $00ba
11a9: dw $00bd
11ab: dw $00c0
11ad: dw $00c3
11af: dw $00c5
11b1: dw $00c8
11b3: dw $00cc
11b5: dw $00ce
11b7: dw $00d1
11b9: dw $00d4
11bb: dw $00d8
11bd: dw $00da
11bf: dw $00de
11c1: dw $00e1
11c3: dw $00e4
11c5: dw $00e7
11c7: dw $00eb
11c9: dw $00ee
11cb: dw $00f2
11cd: dw $00f5
11cf: dw $00f9
11d1: dw $00fc
11d3: dw $0100
11d5: dw $0104
11d7: dw $0108
11d9: dw $010b
11db: dw $0110
11dd: dw $0113
11df: dw $0117
11e1: dw $011b
11e3: dw $0120
11e5: dw $0124
11e7: dw $0128
11e9: dw $012c
11eb: dw $0130
11ed: dw $0135
11ef: dw $0139
11f1: dw $013e
11f3: dw $0144
11f5: dw $0147
11f7: dw $014c
11f9: dw $0151
11fb: dw $0158
11fd: dw $015b
11ff: dw $0160
1201: dw $0165
1203: dw $016c
1205: dw $016f
1207: dw $0175
1209: dw $017a
120b: dw $0180
120d: dw $0185
120f: dw $018b
1211: dw $0191
1213: dw $0198
1215: dw $019c
1217: dw $01a2
1219: dw $01a8
121b: dw $01b0
121d: dw $01b5
121f: dw $01bb
1221: dw $01c2
1223: dw $01c8
1225: dw $01cf
1227: dw $01d6
1229: dw $01dc
122b: dw $01e4
122d: dw $01ea
122f: dw $01f1
1231: dw $01f9
1233: dw $0200
1235: dw $0207
1237: dw $020f
1239: dw $0217
123b: dw $0220
123d: dw $0226
123f: dw $022e
1241: dw $0236
1243: dw $0240
1245: dw $0247
1247: dw $0250
1249: dw $0258
124b: dw $0260
124d: dw $026a
124f: dw $0273
1251: dw $027c
1253: dw $0288
1255: dw $028e
1257: dw $0298
1259: dw $02a2
125b: dw $02b0
125d: dw $02b5
125f: dw $02bf
1261: dw $02ca
1263: dw $02d8
1265: dw $02df
1267: dw $02e9
1269: dw $02f4
126b: dw $0300
126d: dw $030a
126f: dw $0316
1271: dw $0321
1273: dw $0330
1275: dw $0339
1277: dw $0345
1279: dw $0351
127b: dw $0360
127d: dw $036a
127f: dw $0376
1281: dw $0383
1283: dw $0390
1285: dw $039e
1287: dw $03ab
1289: dw $03b9
128b: dw $03c8
128d: dw $03d5
128f: dw $03e3
1291: dw $03f1
1293: dw $0400
1295: dw $040f
1297: dw $041e
1299: dw $042d
129b: dw $0440
129d: dw $044d
129f: dw $045d
12a1: dw $046d
12a3: dw $0480
12a5: dw $048e
12a7: dw $049f
12a9: dw $04b0
12ab: dw $04c0
12ad: dw $04d3
12af: dw $04e5
12b1: dw $04f8
12b3: dw $0508
12b5: dw $051d
12b7: dw $0530
12b9: dw $0543
12bb: dw $0558
12bd: dw $056b
12bf: dw $057f
12c1: dw $0593
12c3: dw $05a8
12c5: dw $05bd
12c7: dw $05d3
12c9: dw $05e8
12cb: dw $0600
12cd: dw $0615
12cf: dw $062b
12d1: dw $0642
12d3: dw $0658
12d5: dw $0671
12d7: dw $0689
12d9: dw $06a1
12db: dw $06b8
12dd: dw $06d3
12df: dw $06ed
12e1: dw $0706
12e3: dw $0720
12e5: dw $073b
12e7: dw $0756
12e9: dw $0771
12eb: dw $0790
12ed: dw $07a9
12ef: dw $07c6
12f1: dw $07e3
12f3: dw $0800
12f5: dw $081e
12f7: dw $083c
12f9: dw $085b
12fb: dw $0878
12fd: dw $0899
12ff: dw $08b9
1301: dw $08da
1303: dw $08f8
1305: dw $091c
1307: dw $093e
1309: dw $0961
130b: dw $0980
130d: dw $09a7
130f: dw $09cb
1311: dw $09ef
1313: dw $0a18
1315: dw $0a3a
1317: dw $0a60
1319: dw $0a87
131b: dw $0ab0
131d: dw $0ad6
131f: dw $0afe
1321: dw $0b27
1323: dw $0b50
1325: dw $0b7a
1327: dw $0ba5
1329: dw $0bd1
132b: dw $0c00
132d: dw $0c29
132f: dw $0c56
1331: dw $0c84
1333: dw $0cb0
1335: dw $0ce2
1337: dw $0d12
1339: dw $0d43
133b: dw $0d78
133d: dw $0da6
133f: dw $0dd9
1341: dw $0e0d
1343: dw $0e40
1345: dw $0e76
1347: dw $0eac
1349: dw $0ee3
134b: dw $0f18
134d: dw $0f52
134f: dw $0f8b
1351: dw $0fc5
1353: dw $1000
1355: dw $103c
1357: dw $1078
1359: dw $10b5
135b: dw $1100
135d: dw $1133
135f: dw $1173
1361: dw $11b4
1363: dw $11f8
1365: dw $1238
1367: dw $127c
1369: dw $12c1
136b: dw $1308
136d: dw $134e
136f: dw $1396
1371: dw $13df
1373: dw $1428
1375: dw $1474
1377: dw $14c0
1379: dw $150d
137b: dw $1560
137d: dw $15ab
137f: dw $15fc
1381: dw $164e
1383: dw $16a0
1385: dw $16f5
1387: dw $174a
1389: dw $17a1
138b: dw $17f8
138d: dw $1852
138f: dw $18ad
1391: dw $1909
1393: dw $1968
1395: dw $19c5
1397: dw $1a25
1399: dw $1a86
139b: dw $1ae8
139d: dw $1b4d
139f: dw $1bb2
13a1: dw $1c1a
13a3: dw $1c80
13a5: dw $1cec
13a7: dw $1d58
13a9: dw $1dc5
13ab: dw $1e38
13ad: dw $1ea5
13af: dw $1f17
13b1: dw $1f8b
13b3: dw $2000
13b5: dw $2077
13b7: dw $20f0
13b9: dw $216b
13bb: dw $21e8
13bd: dw $2265
13bf: dw $22e5
13c1: dw $2367
13c3: dw $23e8
13c5: dw $2471
13c7: dw $24f9
13c9: dw $2582
13cb: dw $2610
13cd: dw $269c
13cf: dw $272b
13d1: dw $27bd
13d3: dw $2850
13d5: dw $28e7
13d7: dw $2980
13d9: dw $2a1a
13db: dw $2ab8
13dd: dw $2b56
13df: dw $2bf7
13e1: dw $2c9b
13e3: dw $2d40
13e5: dw $2dea
13e7: dw $2e95
13e9: dw $2f42
13eb: dw $2ff0
13ed: dw $30a5
13ef: dw $315a
13f1: dw $3212
13f3: dw $32d0
13f5: dw $3389
13f7: dw $3449
13f9: dw $350c
13fb: dw $35d0
13fd: dw $369a
13ff: dw $3765
1401: dw $3833
1403: dw $3908
1405: dw $39d9
1407: dw $3ab0
1409: dw $3b8b
140b: dw $3c68
140d: dw $3d49
140f: dw $3e2e
1411: dw $3f15
1413: dw $3fff
1415: dw $3fff
1417: dw $3fff
1419: dw $3fff

141b: ff e0
141d: af 70
141f: dd c0
1421: 98 c0
1423: fa ec
1425: ff b2
1427: fb a1
1429: ff a0
142b: ff 60
142d: a4 00

142f: 18 00
1431: 18 00
1433: 18 00
1435: 0c 00
1437: 0c 00
1439: 0c 00
143b: 18 00
143d: 0c 00
143f: 00 02
1441: 0c 00
1443: 0c 00
1445: 0c 00
1447: 0c 00
