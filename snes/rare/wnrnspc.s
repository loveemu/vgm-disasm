04d8: 20        clrp
04d9: cd ff     mov   x,#$ff
04db: bd        mov   sp,x
04dc: d8 e9     mov   $e9,x
04de: 8f 6c f2  mov   $f2,#$6c
04e1: 8f ff f3  mov   $f3,#$ff
04e4: 8f 7d f2  mov   $f2,#$7d
04e7: 8f 03 f3  mov   $f3,#$03
04ea: 8f 6d f2  mov   $f2,#$6d
04ed: 8f e7 f3  mov   $f3,#$e7
04f0: e8 00     mov   a,#$00
04f2: c4 f4     mov   $f4,a
04f4: bc        inc   a
04f5: c4 ea     mov   $ea,a
04f7: f8 ea     mov   x,$ea
04f9: 3e f4     cmp   x,$f4
04fb: d0 fc     bne   $04f9
04fd: ba f5     movw  ya,$f5
04ff: d8 f4     mov   $f4,x
0501: 3d        inc   x
0502: c5 28 05  mov   $0528,a
0505: c5 31 05  mov   $0531,a
0508: cc 29 05  mov   $0529,y
050b: cc 32 05  mov   $0532,y
050e: 3e f4     cmp   x,$f4
0510: d0 fc     bne   $050e
0512: ba f5     movw  ya,$f5
0514: d8 f4     mov   $f4,x
0516: 3d        inc   x
0517: c4 eb     mov   $eb,a
0519: cb ec     mov   $ec,y
051b: 1a eb     decw  $eb
051d: 30 26     bmi   $0545
051f: 8d 00     mov   y,#$00
0521: 3e f4     cmp   x,$f4
0523: d0 fc     bne   $0521
0525: e4 f5     mov   a,$f5
0527: d6 62 06  mov   $0662+y,a
052a: e4 f6     mov   a,$f6
052c: d8 f4     mov   $f4,x
052e: 3d        inc   x
052f: fc        inc   y
0530: d6 62 06  mov   $0662+y,a
0533: fc        inc   y
0534: f0 07     beq   $053d
0536: 1a eb     decw  $eb
0538: 10 e7     bpl   $0521
053a: 5f f9 04  jmp   $04f9

053d: ac 29 05  inc   $0529
0540: ac 32 05  inc   $0532
0543: 2f f1     bra   $0536
0545: d8 ea     mov   $ea,x
0547: cd 00     mov   x,#$00
0549: 1f 28 05  jmp   ($0528+x)

; 054c: ?
; 0550: SRCN table

0650: e5 4c 05  mov   a,$054c
0653: 1c        asl   a
0654: fd        mov   y,a
0655: f6 e2 12  mov   a,$12e2+y
0658: c4 e7     mov   $e7,a
065a: f6 e3 12  mov   a,$12e3+y
065d: c4 e8     mov   $e8,a
065f: 5f 68 06  jmp   $0668

0662: 8f 12 e8  mov   $e8,#$12
0665: 8f d0 e7  mov   $e7,#$d0
0668: 3f 7e 10  call  $107e
066b: e8 00     mov   a,#$00
066d: c4 1f     mov   $1f,a
066f: 8f 00 f1  mov   $f1,#$00
0672: e4 ea     mov   a,$ea
0674: 64 f4     cmp   a,$f4
0676: f0 03     beq   $067b
0678: 5f 01 07  jmp   $0701

067b: f8 f6     mov   x,$f6
067d: c9 4c 05  mov   $054c,x
0680: f8 f5     mov   x,$f5
0682: c4 f4     mov   $f4,a
0684: bc        inc   a
0685: c4 ea     mov   $ea,a
0687: 7d        mov   a,x
0688: 68 80     cmp   a,#$80
068a: 30 59     bmi   $06e5
068c: 28 07     and   a,#$07
068e: 1c        asl   a
068f: 5d        mov   x,a
0690: 1f 93 06  jmp   ($0693+x)

0693: dw $0000
0695: dw $06ed
0697: dw $06a3
0699: dw $0650
069b: dw $06f4
069d: dw $0000
069f: dw $06fb
06a1: dw $07de

06a3: e9 4c 05  mov   x,$054c
06a6: d8 ee     mov   $ee,x
06a8: d8 ef     mov   $ef,x
06aa: 2f 55     bra   $0701
06ac: e5 30 02  mov   a,$0230
06af: 8f 0c f2  mov   $f2,#$0c
06b2: 3f dd 06  call  $06dd
06b5: c5 30 02  mov   $0230,a
06b8: e5 31 02  mov   a,$0231
06bb: 8f 1c f2  mov   $f2,#$1c
06be: 3f dd 06  call  $06dd
06c1: c5 31 02  mov   $0231,a
06c4: e5 32 02  mov   a,$0232
06c7: 8f 2c f2  mov   $f2,#$2c
06ca: 3f dd 06  call  $06dd
06cd: c5 32 02  mov   $0232,a
06d0: e5 33 02  mov   a,$0233
06d3: 8f 3c f2  mov   $f2,#$3c
06d6: 3f dd 06  call  $06dd
06d9: c5 33 02  mov   $0233,a
06dc: 6f        ret

06dd: 68 00     cmp   a,#$00
06df: f0 03     beq   $06e4
06e1: 9c        dec   a
06e2: c4 f3     mov   $f3,a
06e4: 6f        ret

06e5: e9 4c 05  mov   x,$054c
06e8: 3f 76 11  call  $1176
06eb: 2f 21     bra   $070e
06ed: e5 4c 05  mov   a,$054c
06f0: c4 e9     mov   $e9,a
06f2: 2f 2e     bra   $0722
06f4: e5 4c 05  mov   a,$054c
06f7: c4 1f     mov   $1f,a
06f9: 2f 27     bra   $0722
06fb: 8f 01 1e  mov   $1e,#$01
06fe: 8f 00 f1  mov   $f1,#$00
0701: e4 1e     mov   a,$1e
0703: d0 03     bne   $0708
0705: 5f 72 06  jmp   $0672

0708: fa e6 fa  mov   ($fa),($e6)
070b: 8f 01 f1  mov   $f1,#$01
070e: e4 fd     mov   a,$fd
0710: f0 fc     beq   $070e
0712: f8 ee     mov   x,$ee
0714: f0 0c     beq   $0722
0716: e4 ef     mov   a,$ef
0718: 9c        dec   a
0719: c4 ef     mov   $ef,a
071b: d0 05     bne   $0722
071d: d8 ef     mov   $ef,x
071f: 3f ac 06  call  $06ac
0722: 8f 01 f1  mov   $f1,#$01
0725: 8f 00 22  mov   $22,#$00
0728: 60        clrc
0729: 89 21 20  adc   ($20),($21)
072c: 6b 22     ror   $22
072e: 8f 00 25  mov   $25,#$00
0731: 60        clrc
0732: 89 24 23  adc   ($23),($24)
0735: 6b 25     ror   $25
0737: e4 22     mov   a,$22
0739: f0 6f     beq   $07aa
073b: e8 ff     mov   a,#$ff
073d: 8d 00     mov   y,#$00
073f: da 04     movw  $04,ya
0741: ba 0a     movw  ya,$0a
0743: 5a 04     cmpw  ya,$04
0745: f0 63     beq   $07aa
0747: 90 09     bcc   $0752
0749: 8f 00 0b  mov   $0b,#$00
074c: e8 ff     mov   a,#$ff
074e: c4 0a     mov   $0a,a
0750: 2f 0e     bra   $0760
0752: e4 0c     mov   a,$0c
0754: f0 54     beq   $07aa
0756: 8d 00     mov   y,#$00
0758: 7a 0a     addw  ya,$0a
075a: da 0a     movw  $0a,ya
075c: 5a 04     cmpw  ya,$04
075e: b0 e9     bcs   $0749
0760: 8d 00     mov   y,#$00
0762: da 02     movw  $02,ya
0764: e8 80     mov   a,#$80
0766: 8d ff     mov   y,#$ff
0768: da 04     movw  $04,ya
076a: e5 30 02  mov   a,$0230
076d: 8d 00     mov   y,#$00
076f: 9a 02     subw  ya,$02
0771: 10 02     bpl   $0775
0773: e8 00     mov   a,#$00
0775: 8f 0c f2  mov   $f2,#$0c
0778: c4 f3     mov   $f3,a
077a: e5 31 02  mov   a,$0231
077d: 8d 00     mov   y,#$00
077f: 9a 02     subw  ya,$02
0781: 10 02     bpl   $0785
0783: e8 00     mov   a,#$00
0785: 8f 1c f2  mov   $f2,#$1c
0788: c4 f3     mov   $f3,a
078a: e5 32 02  mov   a,$0232
078d: 8d 00     mov   y,#$00
078f: 9a 02     subw  ya,$02
0791: 10 02     bpl   $0795
0793: e8 00     mov   a,#$00
0795: 8f 2c f2  mov   $f2,#$2c
0798: c4 f3     mov   $f3,a
079a: e5 33 02  mov   a,$0233
079d: 8d 00     mov   y,#$00
079f: 9a 02     subw  ya,$02
07a1: 10 02     bpl   $07a5
07a3: e8 00     mov   a,#$00
07a5: 8f 3c f2  mov   $f2,#$3c
07a8: c4 f3     mov   $f3,a
07aa: cd 00     mov   x,#$00
07ac: e4 22     mov   a,$22
07ae: d0 05     bne   $07b5
07b0: 3f 00 0a  call  $0a00
07b3: 2f 05     bra   $07ba
07b5: 3f 22 08  call  $0822
07b8: d0 fb     bne   $07b5
07ba: f5 e0 01  mov   a,$01e0+x
07bd: f0 14     beq   $07d3
07bf: 4d        push  x
07c0: 7d        mov   a,x
07c1: 08 08     or    a,#$08
07c3: 5d        mov   x,a
07c4: e4 25     mov   a,$25
07c6: d0 05     bne   $07cd
07c8: 3f 00 0a  call  $0a00
07cb: 2f 05     bra   $07d2
07cd: 3f 22 08  call  $0822
07d0: d0 fb     bne   $07cd
07d2: ce        pop   x
07d3: 3d        inc   x
07d4: c8 08     cmp   x,#$08
07d6: f0 03     beq   $07db
07d8: 5f ac 07  jmp   $07ac

07db: 5f 72 06  jmp   $0672

07de: e5 4c 05  mov   a,$054c
07e1: f0 03     beq   $07e6
07e3: 5f f7 04  jmp   $04f7

07e6: 8f 5c f2  mov   $f2,#$5c
07e9: 8f ff f3  mov   $f3,#$ff
07ec: 8f 00 f1  mov   $f1,#$00
07ef: 8f c8 fb  mov   $fb,#$c8
07f2: 8f 02 f1  mov   $f1,#$02
07f5: e4 fe     mov   a,$fe
07f7: f0 fc     beq   $07f5
07f9: 8f 6c f2  mov   $f2,#$6c
07fc: 8f a0 f3  mov   $f3,#$a0
07ff: cd 00     mov   x,#$00
0801: 8f 4d f2  mov   $f2,#$4d
0804: d8 f3     mov   $f3,x
0806: 8f 2c f2  mov   $f2,#$2c
0809: d8 f3     mov   $f3,x
080b: 8f 3c f2  mov   $f2,#$3c
080e: d8 f3     mov   $f3,x
0810: 3f 7e 10  call  $107e
0813: 5f f7 04  jmp   $04f7

0816: 8f 0c f2  mov   $f2,#$0c
0819: c4 f3     mov   $f3,a
081b: 6f        ret

081c: 8f 1c f2  mov   $f2,#$1c
081f: c4 f3     mov   $f3,a
0821: 6f        ret

0822: f5 10 01  mov   a,$0110+x
0825: d0 03     bne   $082a
0827: e8 00     mov   a,#$00
0829: 6f        ret

082a: 9b 36     dec   $36+x
082c: f4 36     mov   a,$36+x
082e: 68 01     cmp   a,#$01
0830: f0 16     beq   $0848
0832: 68 ff     cmp   a,#$ff
0834: d0 08     bne   $083e
0836: f4 26     mov   a,$26+x
0838: f0 25     beq   $085f
083a: 9b 26     dec   $26+x
083c: 2f 1b     bra   $0859
083e: 68 00     cmp   a,#$00
0840: d0 17     bne   $0859
0842: f4 26     mov   a,$26+x
0844: f0 19     beq   $085f
0846: 2f 11     bra   $0859
0848: f4 26     mov   a,$26+x
084a: d0 0d     bne   $0859
084c: f5 e0 01  mov   a,$01e0+x
084f: d0 08     bne   $0859
0851: f5 0a 10  mov   a,$100a+x
0854: 8f 5c f2  mov   $f2,#$5c
0857: c4 f3     mov   $f3,a
0859: 3f 00 0a  call  $0a00
085c: e8 00     mov   a,#$00
085e: 6f        ret

085f: f4 46     mov   a,$46+x
0861: fb 56     mov   y,$56+x
0863: da 00     movw  $00,ya
0865: 8d 00     mov   y,#$00
0867: f7 00     mov   a,($00)+y
0869: 30 06     bmi   $0871
; dispatch vcmd (00-7f)
086b: 4d        push  x
086c: 1c        asl   a
086d: 5d        mov   x,a
086e: 1f 1a 10  jmp   ($101a+x)

0871: 3f 7a 08  call  $087a
0874: 3f 00 0a  call  $0a00
0877: e8 00     mov   a,#$00
0879: 6f        ret

087a: 68 80     cmp   a,#$80
087c: d0 20     bne   $089e
; vcmd 80 - rest
087e: f5 e0 01  mov   a,$01e0+x
0881: d0 18     bne   $089b
0883: f5 0a 10  mov   a,$100a+x
0886: 8f 5c f2  mov   $f2,#$5c
0889: c4 f3     mov   $f3,a
088b: 7d        mov   a,x
088c: 28 07     and   a,#$07
088e: 9f        xcn   a
088f: 08 02     or    a,#$02
0891: c4 f2     mov   $f2,a
0893: e8 00     mov   a,#$00
0895: c4 f3     mov   $f3,a
0897: ab f2     inc   $f2
0899: c4 f3     mov   $f3,a
089b: 5f c7 09  jmp   $09c7

; vcmd 81-ff - note
089e: 68 e0     cmp   a,#$e0
08a0: 30 0a     bmi   $08ac             ; 81-df - normal note
08a2: 68 e1     cmp   a,#$e1
08a4: f0 04     beq   $08aa
08a6: f4 0e     mov   a,$0e+x           ; e0,e2-ff - note by vcmd 1c
08a8: 2f 02     bra   $08ac
08aa: f4 16     mov   a,$16+x           ; e1 - note by vcmd 1d
08ac: 60        clrc
08ad: 88 24     adc   a,#$24
08af: 95 40 01  adc   a,$0140+x
08b2: 1c        asl   a
08b3: 4d        push  x
08b4: fb 66     mov   y,$66+x
08b6: f0 3a     beq   $08f2
08b8: 5d        mov   x,a
08b9: cb 04     mov   $04,y
08bb: dd        mov   a,y
08bc: 10 03     bpl   $08c1
08be: 48 ff     eor   a,#$ff
08c0: bc        inc   a
08c1: fd        mov   y,a
08c2: 6d        push  y
08c3: f5 fa 11  mov   a,$11fa+x
08c6: cf        mul   ya
08c7: cb 02     mov   $02,y
08c9: 8f 00 03  mov   $03,#$00
08cc: ee        pop   y
08cd: f5 fb 11  mov   a,$11fb+x
08d0: cf        mul   ya
08d1: 7a 02     addw  ya,$02
08d3: cb 03     mov   $03,y
08d5: 4b 03     lsr   $03
08d7: 7c        ror   a
08d8: 4b 03     lsr   $03
08da: 7c        ror   a
08db: c4 02     mov   $02,a
08dd: f5 fb 11  mov   a,$11fb+x
08e0: fd        mov   y,a
08e1: f5 fa 11  mov   a,$11fa+x
08e4: f8 04     mov   x,$04
08e6: 30 04     bmi   $08ec
08e8: 7a 02     addw  ya,$02
08ea: 2f 02     bra   $08ee
08ec: 9a 02     subw  ya,$02
08ee: da 02     movw  $02,ya
08f0: 2f 0b     bra   $08fd
08f2: 5d        mov   x,a
08f3: f5 fa 11  mov   a,$11fa+x
08f6: c4 02     mov   $02,a
08f8: f5 fb 11  mov   a,$11fb+x
08fb: c4 03     mov   $03,a
08fd: ae        pop   a
08fe: 5d        mov   x,a
08ff: 28 07     and   a,#$07
0901: 9f        xcn   a
0902: c4 f2     mov   $f2,a
0904: f5 e0 01  mov   a,$01e0+x
0907: f0 03     beq   $090c
0909: 5f c7 09  jmp   $09c7

090c: f5 54 02  mov   a,$0254+x
090f: 3f 7d 0c  call  $0c7d
0912: c4 f3     mov   $f3,a
0914: ab f2     inc   $f2
0916: f5 64 02  mov   a,$0264+x
0919: 3f 7d 0c  call  $0c7d
091c: c4 f3     mov   $f3,a
091e: ab f2     inc   $f2
0920: f5 50 01  mov   a,$0150+x
0923: 28 01     and   a,#$01
0925: f0 17     beq   $093e
0927: f5 60 01  mov   a,$0160+x
092a: d5 a0 01  mov   $01a0+x,a
092d: f5 70 01  mov   a,$0170+x
0930: d5 00 01  mov   $0100+x,a
0933: f5 80 01  mov   a,$0180+x
0936: d4 96     mov   $96+x,a
0938: f5 90 01  mov   a,$0190+x
093b: d5 c0 01  mov   $01c0+x,a
093e: f5 50 01  mov   a,$0150+x
0941: 28 02     and   a,#$02
0943: f0 1b     beq   $0960
0945: f5 34 02  mov   a,$0234+x
0948: 10 06     bpl   $0950
094a: 48 ff     eor   a,#$ff
094c: bc        inc   a
094d: d5 34 02  mov   $0234+x,a
0950: f5 00 02  mov   a,$0200+x
0953: 5c        lsr   a
0954: d4 a6     mov   $a6+x,a
0956: f5 10 02  mov   a,$0210+x
0959: d4 b6     mov   $b6+x,a
095b: f5 20 02  mov   a,$0220+x
095e: d4 c6     mov   $c6+x,a
0960: f5 50 01  mov   a,$0150+x
0963: 28 0c     and   a,#$0c
0965: f0 2a     beq   $0991
0967: f5 d4 02  mov   a,$02d4+x
096a: 10 06     bpl   $0972
096c: 48 ff     eor   a,#$ff
096e: bc        inc   a
096f: d5 d4 02  mov   $02d4+x,a
0972: f5 f4 02  mov   a,$02f4+x
0975: 5c        lsr   a
0976: d5 e4 02  mov   $02e4+x,a
0979: f5 c4 02  mov   a,$02c4+x
097c: d5 b4 02  mov   $02b4+x,a
097f: f5 04 03  mov   a,$0304+x
0982: d5 a4 02  mov   $02a4+x,a
0985: f5 14 03  mov   a,$0314+x
0988: d5 54 02  mov   $0254+x,a
098b: f5 24 03  mov   a,$0324+x
098e: d5 64 02  mov   $0264+x,a
0991: e4 02     mov   a,$02
0993: d4 86     mov   $86+x,a
0995: c4 f3     mov   $f3,a
0997: ab f2     inc   $f2
0999: e4 03     mov   a,$03
099b: d4 76     mov   $76+x,a
099d: c4 f3     mov   $f3,a
099f: ab f2     inc   $f2
09a1: f5 44 02  mov   a,$0244+x
09a4: c4 f3     mov   $f3,a
09a6: ab f2     inc   $f2
09a8: f5 74 02  mov   a,$0274+x
09ab: c4 f3     mov   $f3,a
09ad: ab f2     inc   $f2
09af: f5 84 02  mov   a,$0284+x
09b2: c4 f3     mov   $f3,a
09b4: ab f2     inc   $f2
09b6: 8f 7f f3  mov   $f3,#$7f
09b9: 8f 5c f2  mov   $f2,#$5c
09bc: 8f 00 f3  mov   $f3,#$00
09bf: 8f 4c f2  mov   $f2,#$4c
09c2: f5 0a 10  mov   a,$100a+x
09c5: c4 f3     mov   $f3,a
09c7: f5 20 01  mov   a,$0120+x
09ca: f0 0f     beq   $09db
09cc: 8f 01 00  mov   $00,#$01
09cf: f5 20 01  mov   a,$0120+x
09d2: d4 36     mov   $36+x,a
09d4: f5 30 01  mov   a,$0130+x
09d7: d4 26     mov   $26+x,a
09d9: 2f 17     bra   $09f2
09db: 8d 01     mov   y,#$01
09dd: f7 00     mov   a,($00)+y
09df: d4 36     mov   $36+x,a
09e1: f5 d0 01  mov   a,$01d0+x
09e4: f0 09     beq   $09ef
09e6: f4 36     mov   a,$36+x
09e8: d4 26     mov   $26+x,a
09ea: fc        inc   y
09eb: f7 00     mov   a,($00)+y
09ed: d4 36     mov   $36+x,a
09ef: fc        inc   y
09f0: cb 00     mov   $00,y
09f2: 8f 00 01  mov   $01,#$00
09f5: f4 46     mov   a,$46+x
09f7: fb 56     mov   y,$56+x
09f9: 7a 00     addw  ya,$00
09fb: db 56     mov   $56+x,y
09fd: d4 46     mov   $46+x,a
09ff: 6f        ret

0a00: f5 50 01  mov   a,$0150+x
0a03: 28 01     and   a,#$01
0a05: d0 03     bne   $0a0a
0a07: 5f 7d 0a  jmp   $0a7d

0a0a: f5 a0 01  mov   a,$01a0+x
0a0d: f0 0f     beq   $0a1e
0a0f: 68 ff     cmp   a,#$ff
0a11: f0 6a     beq   $0a7d
0a13: 9c        dec   a
0a14: d5 a0 01  mov   $01a0+x,a
0a17: d0 64     bne   $0a7d
0a19: e8 01     mov   a,#$01
0a1b: d5 00 01  mov   $0100+x,a
0a1e: f5 00 01  mov   a,$0100+x
0a21: 9c        dec   a
0a22: d5 00 01  mov   $0100+x,a
0a25: d0 56     bne   $0a7d
0a27: f5 70 01  mov   a,$0170+x
0a2a: d5 00 01  mov   $0100+x,a
0a2d: f5 c0 01  mov   a,$01c0+x
0a30: f0 22     beq   $0a54
0a32: 9c        dec   a
0a33: d5 c0 01  mov   $01c0+x,a
0a36: f5 b0 01  mov   a,$01b0+x
0a39: 48 ff     eor   a,#$ff
0a3b: bc        inc   a
0a3c: c4 00     mov   $00,a
0a3e: 10 04     bpl   $0a44
0a40: e8 ff     mov   a,#$ff
0a42: 2f 02     bra   $0a46
0a44: e8 00     mov   a,#$00
0a46: c4 01     mov   $01,a
0a48: f4 86     mov   a,$86+x
0a4a: fb 76     mov   y,$76+x
0a4c: 7a 00     addw  ya,$00
0a4e: db 76     mov   $76+x,y
0a50: d4 86     mov   $86+x,a
0a52: 2f 0b     bra   $0a5f
0a54: f5 b0 01  mov   a,$01b0+x
0a57: c4 00     mov   $00,a
0a59: 10 e9     bpl   $0a44
0a5b: e8 ff     mov   a,#$ff
0a5d: 2f e7     bra   $0a46
0a5f: f5 e0 01  mov   a,$01e0+x
0a62: d0 10     bne   $0a74
0a64: 7d        mov   a,x
0a65: 28 07     and   a,#$07
0a67: 9f        xcn   a
0a68: 08 02     or    a,#$02
0a6a: c4 f2     mov   $f2,a
0a6c: f4 86     mov   a,$86+x
0a6e: c4 f3     mov   $f3,a
0a70: ab f2     inc   $f2
0a72: cb f3     mov   $f3,y
0a74: 9b 96     dec   $96+x
0a76: d0 05     bne   $0a7d
0a78: e8 ff     mov   a,#$ff
0a7a: d5 a0 01  mov   $01a0+x,a
0a7d: f5 50 01  mov   a,$0150+x
0a80: 28 02     and   a,#$02
0a82: f0 51     beq   $0ad5
0a84: f4 c6     mov   a,$c6+x
0a86: f0 04     beq   $0a8c
0a88: 9b c6     dec   $c6+x
0a8a: 2f 49     bra   $0ad5
0a8c: 9b b6     dec   $b6+x
0a8e: d0 45     bne   $0ad5
0a90: f5 10 02  mov   a,$0210+x
0a93: d4 b6     mov   $b6+x,a
0a95: f5 34 02  mov   a,$0234+x
0a98: c4 00     mov   $00,a
0a9a: 10 04     bpl   $0aa0
0a9c: e8 ff     mov   a,#$ff
0a9e: 2f 02     bra   $0aa2
0aa0: e8 00     mov   a,#$00
0aa2: c4 01     mov   $01,a
0aa4: f4 86     mov   a,$86+x
0aa6: fb 76     mov   y,$76+x
0aa8: 7a 00     addw  ya,$00
0aaa: db 76     mov   $76+x,y
0aac: d4 86     mov   $86+x,a
0aae: f5 e0 01  mov   a,$01e0+x
0ab1: d0 10     bne   $0ac3
0ab3: 7d        mov   a,x
0ab4: 28 07     and   a,#$07
0ab6: 9f        xcn   a
0ab7: 08 02     or    a,#$02
0ab9: c4 f2     mov   $f2,a
0abb: f4 86     mov   a,$86+x
0abd: c4 f3     mov   $f3,a
0abf: ab f2     inc   $f2
0ac1: cb f3     mov   $f3,y
0ac3: 9b a6     dec   $a6+x
0ac5: d0 0e     bne   $0ad5
0ac7: f5 00 02  mov   a,$0200+x
0aca: d4 a6     mov   $a6+x,a
0acc: f5 34 02  mov   a,$0234+x
0acf: 48 ff     eor   a,#$ff
0ad1: bc        inc   a
0ad2: d5 34 02  mov   $0234+x,a
0ad5: f5 50 01  mov   a,$0150+x
0ad8: 28 0c     and   a,#$0c
0ada: d0 03     bne   $0adf
0adc: 5f be 0b  jmp   $0bbe

0adf: f5 a4 02  mov   a,$02a4+x
0ae2: f0 0a     beq   $0aee
0ae4: f5 a4 02  mov   a,$02a4+x
0ae7: 9c        dec   a
0ae8: d5 a4 02  mov   $02a4+x,a
0aeb: 5f be 0b  jmp   $0bbe

0aee: f5 b4 02  mov   a,$02b4+x
0af1: 9c        dec   a
0af2: d5 b4 02  mov   $02b4+x,a
0af5: f0 03     beq   $0afa
0af7: 5f be 0b  jmp   $0bbe

0afa: f5 c4 02  mov   a,$02c4+x
0afd: d5 b4 02  mov   $02b4+x,a
0b00: f5 50 01  mov   a,$0150+x
0b03: 28 08     and   a,#$08
0b05: f0 64     beq   $0b6b
0b07: f5 f4 02  mov   a,$02f4+x
0b0a: 28 01     and   a,#$01
0b0c: d0 18     bne   $0b26
0b0e: f5 f4 02  mov   a,$02f4+x
0b11: 28 02     and   a,#$02
0b13: f0 23     beq   $0b38
0b15: f5 54 02  mov   a,$0254+x
0b18: 80        setc
0b19: b5 d4 02  sbc   a,$02d4+x
0b1c: 75 34 03  cmp   a,$0334+x
0b1f: 10 14     bpl   $0b35
0b21: f5 34 03  mov   a,$0334+x
0b24: 2f 0f     bra   $0b35
0b26: f5 d4 02  mov   a,$02d4+x
0b29: 60        clrc
0b2a: 95 54 02  adc   a,$0254+x
0b2d: 75 44 03  cmp   a,$0344+x
0b30: 30 03     bmi   $0b35
0b32: f5 44 03  mov   a,$0344+x
0b35: d5 54 02  mov   $0254+x,a
0b38: f5 f4 02  mov   a,$02f4+x
0b3b: 28 10     and   a,#$10
0b3d: d0 18     bne   $0b57
0b3f: f5 f4 02  mov   a,$02f4+x
0b42: 28 20     and   a,#$20
0b44: f0 23     beq   $0b69
0b46: f5 64 02  mov   a,$0264+x
0b49: 80        setc
0b4a: b5 d4 02  sbc   a,$02d4+x
0b4d: 75 34 03  cmp   a,$0334+x
0b50: 10 14     bpl   $0b66
0b52: f5 34 03  mov   a,$0334+x
0b55: 2f 0f     bra   $0b66
0b57: f5 d4 02  mov   a,$02d4+x
0b5a: 60        clrc
0b5b: 95 64 02  adc   a,$0264+x
0b5e: 75 44 03  cmp   a,$0344+x
0b61: 30 03     bmi   $0b66
0b63: f5 44 03  mov   a,$0344+x
0b66: d5 64 02  mov   $0264+x,a
0b69: 2f 15     bra   $0b80
0b6b: f5 d4 02  mov   a,$02d4+x
0b6e: c4 00     mov   $00,a
0b70: 60        clrc
0b71: 95 54 02  adc   a,$0254+x
0b74: d5 54 02  mov   $0254+x,a
0b77: e4 00     mov   a,$00
0b79: 60        clrc
0b7a: 95 64 02  adc   a,$0264+x
0b7d: d5 64 02  mov   $0264+x,a
0b80: f5 e0 01  mov   a,$01e0+x
0b83: d0 1a     bne   $0b9f
0b85: 7d        mov   a,x
0b86: 28 07     and   a,#$07
0b88: 9f        xcn   a
0b89: 08 00     or    a,#$00
0b8b: c4 f2     mov   $f2,a
0b8d: f5 54 02  mov   a,$0254+x
0b90: 3f 7d 0c  call  $0c7d
0b93: c4 f3     mov   $f3,a
0b95: ab f2     inc   $f2
0b97: f5 64 02  mov   a,$0264+x
0b9a: 3f 7d 0c  call  $0c7d
0b9d: c4 f3     mov   $f3,a
0b9f: f5 e4 02  mov   a,$02e4+x
0ba2: 9c        dec   a
0ba3: d5 e4 02  mov   $02e4+x,a
0ba6: d0 16     bne   $0bbe
0ba8: f5 50 01  mov   a,$0150+x
0bab: 28 08     and   a,#$08
0bad: d0 0f     bne   $0bbe
0baf: f5 f4 02  mov   a,$02f4+x
0bb2: d5 e4 02  mov   $02e4+x,a
0bb5: f5 d4 02  mov   a,$02d4+x
0bb8: 48 ff     eor   a,#$ff
0bba: bc        inc   a
0bbb: d5 d4 02  mov   $02d4+x,a
0bbe: 6f        ret

; vcmd 00 - end of track
0bbf: ce        pop   x
0bc0: e8 00     mov   a,#$00
0bc2: d5 10 01  mov   $0110+x,a
0bc5: f5 e0 01  mov   a,$01e0+x
0bc8: d0 08     bne   $0bd2
0bca: 8f 5c f2  mov   $f2,#$5c
0bcd: f5 0a 10  mov   a,$100a+x
0bd0: c4 f3     mov   $f3,a
0bd2: 7d        mov   a,x
0bd3: 68 08     cmp   a,#$08
0bd5: 90 31     bcc   $0c08
0bd7: 4d        push  x
0bd8: 80        setc
0bd9: a8 08     sbc   a,#$08
0bdb: 5d        mov   x,a
0bdc: e8 00     mov   a,#$00
0bde: d5 e0 01  mov   $01e0+x,a
0be1: 8f 3d f2  mov   $f2,#$3d
0be4: f5 0a 10  mov   a,$100a+x
0be7: 48 ff     eor   a,#$ff
0be9: 24 f3     and   a,$f3
0beb: c4 f3     mov   $f3,a
0bed: 8f 4d f2  mov   $f2,#$4d
0bf0: f5 94 02  mov   a,$0294+x
0bf3: f0 09     beq   $0bfe
0bf5: f5 0a 10  mov   a,$100a+x
0bf8: 04 f3     or    a,$f3
0bfa: c4 f3     mov   $f3,a
0bfc: 2f 09     bra   $0c07
0bfe: f5 0a 10  mov   a,$100a+x
0c01: 48 ff     eor   a,#$ff
0c03: 24 f3     and   a,$f3
0c05: c4 f3     mov   $f3,a
0c07: ce        pop   x
0c08: e8 00     mov   a,#$00
0c0a: 6f        ret

0c0b: ee        pop   y
0c0c: ae        pop   a
0c0d: ce        pop   x
0c0e: 2d        push  a
0c0f: 6d        push  y
0c10: 8d 01     mov   y,#$01
0c12: db 36     mov   $36+x,y
0c14: e8 00     mov   a,#$00
0c16: d4 26     mov   $26+x,a
0c18: 6f        ret

; vcmd 01 - set instrument
0c19: 3f 0b 0c  call  $0c0b
0c1c: 4d        push  x
0c1d: f7 00     mov   a,($00)+y
0c1f: 5d        mov   x,a
0c20: f5 50 05  mov   a,$0550+x         ; read SRCN table
0c23: ce        pop   x
0c24: d5 44 02  mov   $0244+x,a
0c27: 8f 02 00  mov   $00,#$02
0c2a: 8f 00 01  mov   $01,#$00
; add $00/1 to reading ptr
0c2d: f4 46     mov   a,$46+x
0c2f: fb 56     mov   y,$56+x
0c31: 7a 00     addw  ya,$00
0c33: db 56     mov   $56+x,y
0c35: d4 46     mov   $46+x,a
0c37: e8 01     mov   a,#$01
0c39: 6f        ret

; vcmd 22 - nop (3 bytes)
0c3a: 8f 03 00  mov   $00,#$03
0c3d: 5f 2a 0c  jmp   $0c2a

; vcmd 21 - set L/R volume (center)
0c40: 3f 0b 0c  call  $0c0b
0c43: f7 00     mov   a,($00)+y
0c45: d5 54 02  mov   $0254+x,a
0c48: d5 64 02  mov   $0264+x,a
0c4b: 5f 27 0c  jmp   $0c27

; vcmd 02 - set L/R volume
0c4e: 3f 0b 0c  call  $0c0b
; set volume - stereo or mono?
0c51: e4 1f     mov   a,$1f
0c53: f0 10     beq   $0c65
; mono
0c55: f7 00     mov   a,($00)+y
0c57: fc        inc   y
0c58: 60        clrc
0c59: 97 00     adc   a,($00)+y
0c5b: 7c        ror   a
0c5c: d5 54 02  mov   $0254+x,a
0c5f: d5 64 02  mov   $0264+x,a
0c62: 5f 3a 0c  jmp   $0c3a
; stereo
0c65: f7 00     mov   a,($00)+y
0c67: d5 54 02  mov   $0254+x,a
0c6a: fc        inc   y
0c6b: f7 00     mov   a,($00)+y
0c6d: d5 64 02  mov   $0264+x,a
0c70: 5f 3a 0c  jmp   $0c3a

; vcmd 20 - master volume
0c73: 3f 0b 0c  call  $0c0b
0c76: f7 00     mov   a,($00)+y
0c78: c4 ed     mov   $ed,a
0c7a: 5f 27 0c  jmp   $0c27

0c7d: 4d        push  x
0c7e: eb ed     mov   y,$ed
0c80: c8 08     cmp   x,#$08
0c82: b0 0e     bcs   $0c92
0c84: 68 00     cmp   a,#$00
0c86: 30 0c     bmi   $0c94
0c88: cf        mul   ya
0c89: cd 64     mov   x,#$64
0c8b: 9e        div   ya,x
0c8c: 68 7f     cmp   a,#$7f
0c8e: 30 02     bmi   $0c92
0c90: e8 7f     mov   a,#$7f
0c92: ce        pop   x
0c93: 6f        ret

0c94: 48 ff     eor   a,#$ff
0c96: bc        inc   a
0c97: cf        mul   ya
0c98: cd 64     mov   x,#$64
0c9a: 9e        div   ya,x
0c9b: 68 7f     cmp   a,#$7f
0c9d: 30 02     bmi   $0ca1
0c9f: e8 7f     mov   a,#$7f
0ca1: 48 ff     eor   a,#$ff
0ca3: bc        inc   a
0ca4: ce        pop   x
0ca5: 6f        ret

; vcmd 03 - jump
0ca6: 3f 0b 0c  call  $0c0b
0ca9: f7 00     mov   a,($00)+y
0cab: d4 46     mov   $46+x,a
0cad: fc        inc   y
0cae: f7 00     mov   a,($00)+y
0cb0: d4 56     mov   $56+x,a           ; set reading ptr $45/55 from arg1/2
0cb2: e8 01     mov   a,#$01
0cb4: 6f        ret

; vcmd 04 - call subroutine
0cb5: 3f 0b 0c  call  $0c0b
0cb8: f7 00     mov   a,($00)+y
0cba: c4 04     mov   $04,a
0cbc: fc        inc   y
0cbd: 3f eb 0c  call  $0ceb
;
0cc0: d6 54 03  mov   $0354+y,a
0cc3: bb d6     inc   $d6+x
0cc5: ba 02     movw  ya,$02
0cc7: d4 46     mov   $46+x,a
0cc9: db 56     mov   $56+x,y
0ccb: e8 01     mov   a,#$01
0ccd: 6f        ret

; vcmd 23 - call subroutine (once)
0cce: 3f 0b 0c  call  $0c0b
0cd1: 8f 01 04  mov   $04,#$01
0cd4: 3f eb 0c  call  $0ceb
0cd7: f0 04     beq   $0cdd
0cd9: 9c        dec   a
0cda: 5f c0 0c  jmp   $0cc0

0cdd: 9c        dec   a
0cde: d6 54 03  mov   $0354+y,a
0ce1: f6 d4 03  mov   a,$03d4+y
0ce4: 9c        dec   a
0ce5: d6 d4 03  mov   $03d4+y,a
0ce8: 5f c3 0c  jmp   $0cc3

0ceb: f7 00     mov   a,($00)+y
0ced: c4 02     mov   $02,a
0cef: fc        inc   y
0cf0: f7 00     mov   a,($00)+y
0cf2: c4 03     mov   $03,a
0cf4: fb d6     mov   y,$d6+x           ; repeat stack ptr
0cf6: e4 04     mov   a,$04
0cf8: d6 54 04  mov   $0454+y,a         ; repeat counter
0cfb: f4 56     mov   a,$56+x
0cfd: d6 d4 03  mov   $03d4+y,a
0d00: f4 46     mov   a,$46+x
0d02: 6f        ret

; vcmd 05 - end subroutine
0d03: 3f 0b 0c  call  $0c0b
0d06: 9b d6     dec   $d6+x
0d08: fb d6     mov   y,$d6+x
0d0a: f6 d4 03  mov   a,$03d4+y
0d0d: d4 56     mov   $56+x,a
0d0f: f6 54 03  mov   a,$0354+y
0d12: d4 46     mov   $46+x,a
0d14: f6 54 04  mov   a,$0454+y
0d17: 9c        dec   a
0d18: d6 54 04  mov   $0454+y,a
0d1b: f0 1c     beq   $0d39
0d1d: f4 46     mov   a,$46+x
0d1f: fb 56     mov   y,$56+x
0d21: da 00     movw  $00,ya
0d23: 8d 02     mov   y,#$02
0d25: f7 00     mov   a,($00)+y
0d27: c4 02     mov   $02,a
0d29: fc        inc   y
0d2a: f7 00     mov   a,($00)+y
0d2c: c4 03     mov   $03,a
0d2e: bb d6     inc   $d6+x
0d30: ba 02     movw  ya,$02
0d32: d4 46     mov   $46+x,a
0d34: db 56     mov   $56+x,y
0d36: e8 01     mov   a,#$01
0d38: 6f        ret

0d39: 8f 04 00  mov   $00,#$04
0d3c: 5f 2a 0c  jmp   $0c2a

; vcmd 06 - default duration on
0d3f: 3f 0b 0c  call  $0c0b
0d42: f7 00     mov   a,($00)+y
0d44: d5 20 01  mov   $0120+x,a
0d47: f5 d0 01  mov   a,$01d0+x
0d4a: f0 0c     beq   $0d58
0d4c: f5 20 01  mov   a,$0120+x
0d4f: d5 30 01  mov   $0130+x,a
0d52: fc        inc   y
0d53: f7 00     mov   a,($00)+y
0d55: d5 20 01  mov   $0120+x,a
0d58: fc        inc   y
0d59: cb 00     mov   $00,y
0d5b: 5f 2a 0c  jmp   $0c2a

; vcmd 07 - default duration off
0d5e: ce        pop   x
0d5f: e8 00     mov   a,#$00
0d61: d5 20 01  mov   $0120+x,a
0d64: d5 30 01  mov   $0130+x,a
0d67: 5f ae 0d  jmp   $0dae

; vcmd 08 - pitch slide up
0d6a: ce        pop   x
0d6b: 8d 04     mov   y,#$04
0d6d: f7 00     mov   a,($00)+y
0d6f: 2f 08     bra   $0d79

; vcmd 09 - pitch slide down
0d71: ce        pop   x
0d72: 8d 04     mov   y,#$04
0d74: f7 00     mov   a,($00)+y
0d76: 48 ff     eor   a,#$ff
0d78: bc        inc   a
0d79: d5 b0 01  mov   $01b0+x,a         ; arg4 (delta, signed)
0d7c: f5 50 01  mov   a,$0150+x
0d7f: 08 01     or    a,#$01
0d81: d5 50 01  mov   $0150+x,a
0d84: 3f 10 0c  call  $0c10
0d87: f7 00     mov   a,($00)+y
0d89: d5 60 01  mov   $0160+x,a         ; arg1 (delay)
0d8c: fc        inc   y
0d8d: f7 00     mov   a,($00)+y
0d8f: d5 70 01  mov   $0170+x,a         ; arg2 (interval)
0d92: fc        inc   y
0d93: f7 00     mov   a,($00)+y
0d95: d5 80 01  mov   $0180+x,a         ; arg3 (times)
0d98: fc        inc   y
0d99: fc        inc   y
0d9a: f7 00     mov   a,($00)+y
0d9c: d5 90 01  mov   $0190+x,a         ; arg5 (times-reverse)
0d9f: 8f 06 00  mov   $00,#$06
0da2: 5f 2a 0c  jmp   $0c2a

; vcmd 0a - pitch slide off
0da5: ce        pop   x
0da6: f5 50 01  mov   a,$0150+x
0da9: 28 fe     and   a,#$fe
0dab: d5 50 01  mov   $0150+x,a
0dae: e8 01     mov   a,#$01
0db0: c4 00     mov   $00,a
0db2: d4 36     mov   $36+x,a
0db4: e8 00     mov   a,#$00
0db6: d4 26     mov   $26+x,a
0db8: 5f 2a 0c  jmp   $0c2a

; vcmd 0b - set tempo
0dbb: ce        pop   x
0dbc: 8d 01     mov   y,#$01
0dbe: f7 00     mov   a,($00)+y
0dc0: c4 21     mov   $21,a
0dc2: 3f 10 0c  call  $0c10
0dc5: 5f 27 0c  jmp   $0c27

; vcmd 0c - add tempo
0dc8: ce        pop   x
0dc9: 8d 01     mov   y,#$01
0dcb: f7 00     mov   a,($00)+y
0dcd: 60        clrc
0dce: 84 21     adc   a,$21
0dd0: c4 21     mov   $21,a
0dd2: 5f c2 0d  jmp   $0dc2

; vcmd 0e - vibrato off
0dd5: ce        pop   x
0dd6: f5 50 01  mov   a,$0150+x
0dd9: 28 fd     and   a,#$fd
0ddb: d5 50 01  mov   $0150+x,a
0dde: 5f ae 0d  jmp   $0dae

; vcmd 0d - vibrato (short)
0de1: ce        pop   x
0de2: e8 00     mov   a,#$00
0de4: 3f fa 0d  call  $0dfa
0de7: 8f 04 00  mov   $00,#$04
0dea: 5f 2a 0c  jmp   $0c2a

; vcmd 0f - vibrato
0ded: ce        pop   x
0dee: 8d 04     mov   y,#$04
0df0: f7 00     mov   a,($00)+y
0df2: 3f fa 0d  call  $0dfa
0df5: 8f 05 00  mov   $00,#$05
0df8: 2f f0     bra   $0dea
0dfa: d5 20 02  mov   $0220+x,a
0dfd: f5 50 01  mov   a,$0150+x
0e00: 08 02     or    a,#$02
0e02: d5 50 01  mov   $0150+x,a
0e05: 3f 10 0c  call  $0c10
0e08: f7 00     mov   a,($00)+y
0e0a: d5 00 02  mov   $0200+x,a
0e0d: fc        inc   y
0e0e: f7 00     mov   a,($00)+y
0e10: d5 10 02  mov   $0210+x,a
0e13: fc        inc   y
0e14: f7 00     mov   a,($00)+y
0e16: d5 34 02  mov   $0234+x,a
0e19: 6f        ret

; vcmd 10 - set ADSR envelope
0e1a: 3f 0b 0c  call  $0c0b
0e1d: f7 00     mov   a,($00)+y
0e1f: d5 74 02  mov   $0274+x,a
0e22: fc        inc   y
0e23: f7 00     mov   a,($00)+y
0e25: d5 84 02  mov   $0284+x,a
0e28: 5f 3a 0c  jmp   $0c3a

; vcmd 11 - master volume L/R
0e2b: 3f 0b 0c  call  $0c0b
0e2e: 8f 0c f2  mov   $f2,#$0c
0e31: e4 1f     mov   a,$1f
0e33: f0 11     beq   $0e46
0e35: f7 00     mov   a,($00)+y
0e37: c4 f3     mov   $f3,a             ; MVOL(L)
0e39: fc        inc   y
0e3a: 60        clrc
0e3b: 97 00     adc   a,($00)+y
0e3d: 7c        ror   a
0e3e: c5 30 02  mov   $0230,a
0e41: 8f 1c f2  mov   $f2,#$1c
0e44: 2f 0d     bra   $0e53
0e46: f7 00     mov   a,($00)+y
0e48: c4 f3     mov   $f3,a             ; MVOL(R)
0e4a: c5 30 02  mov   $0230,a
0e4d: fc        inc   y
0e4e: 8f 1c f2  mov   $f2,#$1c
0e51: f7 00     mov   a,($00)+y
0e53: c4 f3     mov   $f3,a
0e55: c5 31 02  mov   $0231,a
0e58: 5f 3a 0c  jmp   $0c3a

; vcmd 1c - set note for e0
0e5b: ce        pop   x
0e5c: 8d 01     mov   y,#$01
0e5e: f7 00     mov   a,($00)+y
0e60: d4 0e     mov   $0e+x,a
0e62: 5f 6c 0e  jmp   $0e6c

; vcmd 1d - set note for e1
0e65: ce        pop   x
0e66: 8d 01     mov   y,#$01
0e68: f7 00     mov   a,($00)+y
0e6a: d4 16     mov   $16+x,a
0e6c: 3f 10 0c  call  $0c10
0e6f: 5f 27 0c  jmp   $0c27

; vcmd 12 - detune
0e72: 3f 0b 0c  call  $0c0b
0e75: f7 00     mov   a,($00)+y
0e77: d4 66     mov   $66+x,a
0e79: 5f 27 0c  jmp   $0c27

; vcmd 13 - transpose
0e7c: 3f 0b 0c  call  $0c0b
0e7f: d4 26     mov   $26+x,a
0e81: f7 00     mov   a,($00)+y
0e83: d5 40 01  mov   $0140+x,a
0e86: 5f 27 0c  jmp   $0c27

; vcmd 14 - transpose (relative)
0e89: 3f 0b 0c  call  $0c0b
0e8c: f7 00     mov   a,($00)+y
0e8e: 60        clrc
0e8f: 95 40 01  adc   a,$0140+x
0e92: d5 40 01  mov   $0140+x,a
0e95: 5f 27 0c  jmp   $0c27

; vcmd 15 - echo param
0e98: ce        pop   x
0e99: 8f 0d f2  mov   $f2,#$0d
0e9c: 8d 01     mov   y,#$01
0e9e: f7 00     mov   a,($00)+y
0ea0: c4 f3     mov   $f3,a
0ea2: fc        inc   y
0ea3: 8f 2c f2  mov   $f2,#$2c
0ea6: f7 00     mov   a,($00)+y
0ea8: c5 32 02  mov   $0232,a
0eab: c4 f3     mov   $f3,a
0ead: 8f 3c f2  mov   $f2,#$3c
0eb0: fc        inc   y
0eb1: f7 00     mov   a,($00)+y
0eb3: c5 33 02  mov   $0233,a
0eb6: c4 f3     mov   $f3,a
0eb8: e8 00     mov   a,#$00
0eba: c4 0d     mov   $0d,a
0ebc: 8f 6c f2  mov   $f2,#$6c
0ebf: c4 f3     mov   $f3,a
0ec1: 8f 04 00  mov   $00,#$04
0ec4: 5f 2a 0c  jmp   $0c2a

; vcmd 16 - voice echo on
0ec7: 3f 0b 0c  call  $0c0b
0eca: 8f 4d f2  mov   $f2,#$4d
0ecd: f5 0a 10  mov   a,$100a+x
0ed0: 04 f3     or    a,$f3
0ed2: c4 f3     mov   $f3,a
0ed4: e8 01     mov   a,#$01
0ed6: d5 94 02  mov   $0294+x,a
0ed9: c4 00     mov   $00,a
0edb: 5f 2a 0c  jmp   $0c2a

; vcmd 31 - reset
0ede: 3f 0b 0c  call  $0c0b
0ee1: e4 e9     mov   a,$e9
0ee3: 68 ff     cmp   a,#$ff
0ee5: f0 42     beq   $0f29
0ee7: c5 4c 05  mov   $054c,a
0eea: cd ff     mov   x,#$ff
0eec: bd        mov   sp,x
0eed: d8 e9     mov   $e9,x
0eef: 5f 50 06  jmp   $0650

; vcmd 17 - voice echo off
0ef2: ce        pop   x
0ef3: 8f 4d f2  mov   $f2,#$4d
0ef6: f5 0a 10  mov   a,$100a+x
0ef9: 48 ff     eor   a,#$ff
0efb: 24 f3     and   a,$f3
0efd: c4 f3     mov   $f3,a
0eff: e8 00     mov   a,#$00
0f01: d5 94 02  mov   $0294+x,a
0f04: d4 26     mov   $26+x,a
0f06: e8 01     mov   a,#$01
0f08: d4 36     mov   $36+x,a
0f0a: c4 00     mov   $00,a
0f0c: 5f 2a 0c  jmp   $0c2a

; vcmd 18 - set echo filter
0f0f: 3f 0b 0c  call  $0c0b
0f12: 8f 0f f2  mov   $f2,#$0f
0f15: f7 00     mov   a,($00)+y
0f17: c4 f3     mov   $f3,a
0f19: fc        inc   y
0f1a: 60        clrc
0f1b: 98 10 f2  adc   $f2,#$10
0f1e: 78 8f f2  cmp   $f2,#$8f
0f21: d0 f2     bne   $0f15
0f23: 8f 09 00  mov   $00,#$09
0f26: 5f 2a 0c  jmp   $0c2a

0f29: 8f 01 00  mov   $00,#$01
0f2c: 5f 2a 0c  jmp   $0c2a

; vcmd 28
0f2f: 3f 0b 0c  call  $0c0b
0f32: 4d        push  x
0f33: f7 00     mov   a,($00)+y
0f35: 5d        mov   x,a
0f36: f5 50 05  mov   a,$0550+x
0f39: ce        pop   x
0f3a: d5 44 02  mov   $0244+x,a
0f3d: fc        inc   y
0f3e: e4 1f     mov   a,$1f
0f40: f0 13     beq   $0f55
; mono
0f42: f7 00     mov   a,($00)+y
0f44: fc        inc   y
0f45: 60        clrc
0f46: 97 00     adc   a,($00)+y
0f48: 7c        ror   a
0f49: d5 54 02  mov   $0254+x,a
0f4c: d5 64 02  mov   $0264+x,a
0f4f: 8f 04 00  mov   $00,#$04
0f52: 5f 2a 0c  jmp   $0c2a
; stereo
0f55: f7 00     mov   a,($00)+y
0f57: d5 54 02  mov   $0254+x,a
0f5a: fc        inc   y
0f5b: f7 00     mov   a,($00)+y
0f5d: d5 64 02  mov   $0264+x,a
0f60: 8f 04 00  mov   $00,#$04
0f63: 5f 2a 0c  jmp   $0c2a

; vcmd 29
0f66: 3f 0b 0c  call  $0c0b
0f69: f7 00     mov   a,($00)+y
0f6b: c4 0c     mov   $0c,a
0f6d: 5f 27 0c  jmp   $0c27

; vcmd 2a - set timer0 freq
0f70: 3f 0b 0c  call  $0c0b
0f73: f7 00     mov   a,($00)+y
0f75: c4 e6     mov   $e6,a
0f77: 5f 27 0c  jmp   $0c27

; vcmd 2b - long duration on
0f7a: 3f 0b 0c  call  $0c0b
0f7d: e8 01     mov   a,#$01
0f7f: d5 d0 01  mov   $01d0+x,a
0f82: c4 00     mov   $00,a
0f84: 5f 2a 0c  jmp   $0c2a

; vcmd 2c - long duration off
0f87: 3f 0b 0c  call  $0c0b
0f8a: d5 d0 01  mov   $01d0+x,a
0f8d: bc        inc   a
0f8e: c4 00     mov   $00,a
0f90: 5f 2a 0c  jmp   $0c2a

; vcmd 25
0f93: ce        pop   x
0f94: f5 50 01  mov   a,$0150+x
0f97: 08 08     or    a,#$08
0f99: 28 fb     and   a,#$fb
0f9b: d5 50 01  mov   $0150+x,a
0f9e: 8d 05     mov   y,#$05
0fa0: f7 00     mov   a,($00)+y
0fa2: d5 34 03  mov   $0334+x,a
0fa5: fc        inc   y
0fa6: f7 00     mov   a,($00)+y
0fa8: d5 44 03  mov   $0344+x,a
0fab: 5f cb 0f  jmp   $0fcb

0fae: 8f 07 00  mov   $00,#$07
0fb1: 5f 2a 0c  jmp   $0c2a

; vcmd 24 - pitch slide off, vibrato off, tremolo off
0fb4: ce        pop   x
0fb5: f5 50 01  mov   a,$0150+x
0fb8: 28 f7     and   a,#$f7
0fba: d5 50 01  mov   $0150+x,a
0fbd: 5f ae 0d  jmp   $0dae

; vcmd 2f - tremolo
0fc0: ce        pop   x
0fc1: f5 50 01  mov   a,$0150+x
0fc4: 08 04     or    a,#$04
0fc6: 28 f7     and   a,#$f7
0fc8: d5 50 01  mov   $0150+x,a
0fcb: 3f 10 0c  call  $0c10
0fce: f7 00     mov   a,($00)+y
0fd0: d5 f4 02  mov   $02f4+x,a
0fd3: fc        inc   y
0fd4: f7 00     mov   a,($00)+y
0fd6: d5 c4 02  mov   $02c4+x,a
0fd9: fc        inc   y
0fda: f7 00     mov   a,($00)+y
0fdc: d5 d4 02  mov   $02d4+x,a
0fdf: fc        inc   y
0fe0: f7 00     mov   a,($00)+y
0fe2: d5 04 03  mov   $0304+x,a
0fe5: f5 54 02  mov   a,$0254+x
0fe8: d5 14 03  mov   $0314+x,a
0feb: f5 64 02  mov   a,$0264+x
0fee: d5 24 03  mov   $0324+x,a
0ff1: f5 50 01  mov   a,$0150+x
0ff4: 28 08     and   a,#$08
0ff6: d0 b6     bne   $0fae
0ff8: 8f 05 00  mov   $00,#$05
0ffb: 5f 2a 0c  jmp   $0c2a

; vcmd 30 - tremolo off
0ffe: ce        pop   x
0fff: f5 50 01  mov   a,$0150+x
1002: 28 fb     and   a,#$fb
1004: d5 50 01  mov   $0150+x,a
1007: 5f ae 0d  jmp   $0dae

100a: db $01,$02,$04,$08,$10,$20,$40,$80
1012: db $01,$02,$04,$08,$10,$20,$40,$80

101a: dw $0bbf  ; 00 - end of track
101c: dw $0c19  ; 01 - set instrument
101e: dw $0c4e  ; 02 - set L/R volume
1020: dw $0ca6  ; 03 - jump
1022: dw $0cb5  ; 04 - call subroutine
1024: dw $0d03  ; 05 - end subroutine
1026: dw $0d3f  ; 06 - default duration on
1028: dw $0d5e  ; 07 - default duration off
102a: dw $0d6a  ; 08 - pitch slide up
102c: dw $0d71  ; 09 - pitch slide down
102e: dw $0da5  ; 0a - pitch slide off
1030: dw $0dbb  ; 0b - set tempo
1032: dw $0dc8  ; 0c - add tempo
1034: dw $0de1  ; 0d - vibrato (short)
1036: dw $0dd5  ; 0e - vibrato off
1038: dw $0ded  ; 0f - vibrato
103a: dw $0e1a  ; 10 - set ADSR envelope
103c: dw $0e2b  ; 11 - master volume L/R
103e: dw $0e72  ; 12 - detune
1040: dw $0e7c  ; 13 - transpose
1042: dw $0e89  ; 14 - transpose (relative)
1044: dw $0e98  ; 15 - echo param
1046: dw $0ec7  ; 16 - voice echo on
1048: dw $0ef2  ; 17 - voice echo off
104a: dw $0f0f  ; 18 - set echo filter
104c: dw $0000  ; 19
104e: dw $0000  ; 1a
1050: dw $0000  ; 1b
1052: dw $0e5b  ; 1c - set note for e0
1054: dw $0e65  ; 1d - set note for e1
1056: dw $0000  ; 1e
1058: dw $0000  ; 1f
105a: dw $0c73  ; 20 - master volume
105c: dw $0c40  ; 21 - set L/R volume (center)
105e: dw $0c3a  ; 22 - nop (3 bytes)
1060: dw $0cce  ; 23 - call subroutine (once)
1062: dw $0fb4  ; 24 - pitch slide off, vibrato off, tremolo off
1064: dw $0f93  ; 25
1066: dw $0000  ; 26
1068: dw $0000  ; 27
106a: dw $0f2f  ; 28
106c: dw $0f66  ; 29
106e: dw $0f70  ; 2a - set timer0 freq
1070: dw $0f7a  ; 2b - long duration on
1072: dw $0f87  ; 2c - long duration off
1074: dw $0000  ; 2d
1076: dw $0000  ; 2e
1078: dw $0fc0  ; 2f - tremolo
107a: dw $0ffe  ; 30 - tremolo off
107c: dw $0ede  ; 31 - reset

107e: 8f 6c f2  mov   $f2,#$6c
1081: 8f e0 f3  mov   $f2,#$e0
1084: e8 00     mov   a,#$00
1086: c4 ee     mov   $ee,a
1088: c4 ef     mov   $ef,a
108a: 8f 2c f2  mov   $f2,#$2c
108d: c5 32 02  mov   $0232,a
1090: c4 f3     mov   $f3,a
1092: 8f 3c f2  mov   $f2,#$3c
1095: c5 33 02  mov   $0233,a
1098: c4 f3     mov   $f3,a
109a: 8f 0d f2  mov   $f2,#$0d
109d: c4 f3     mov   $f3,a
109f: 8f 4c f2  mov   $f2,#$4c
10a2: c4 f3     mov   $f3,a
10a4: 8f 5c f2  mov   $f2,#$5c
10a7: 8f ff f3  mov   $f3,#$ff
10aa: 8f 2d f2  mov   $f2,#$2d
10ad: c4 f3     mov   $f3,a
10af: 8f 3d f2  mov   $f2,#$3d
10b2: c4 f3     mov   $f3,a
10b4: 8f 4d f2  mov   $f2,#$4d
10b7: c4 f3     mov   $f3,a
10b9: eb e9     mov   y,$e9
10bb: 10 14     bpl   $10d1
10bd: 8d e7     mov   y,#$e7
10bf: da 00     movw  $00,ya
10c1: e8 00     mov   a,#$00
10c3: fd        mov   y,a
10c4: d7 00     mov   ($00)+y,a
10c6: fc        inc   y
10c7: d0 fb     bne   $10c4
10c9: ab 01     inc   $01
10cb: e4 01     mov   a,$01
10cd: 68 ff     cmp   a,#$ff
10cf: d0 f0     bne   $10c1
10d1: e8 ff     mov   a,#$ff
10d3: c4 e9     mov   $e9,a
10d5: e8 64     mov   a,#$64
10d7: c4 ed     mov   $ed,a
10d9: e8 7f     mov   a,#$7f
10db: c5 30 02  mov   $0230,a
10de: c5 31 02  mov   $0231,a
10e1: 8f 0c f2  mov   $f2,#$0c
10e4: c4 f3     mov   $f3,a
10e6: 8f 1c f2  mov   $f2,#$1c
10e9: c4 f3     mov   $f3,a
10eb: 8f 5d f2  mov   $f2,#$5d
10ee: 8f 2d f3  mov   $f3,#$2d
10f1: cd 00     mov   x,#$00
10f3: 8d 08     mov   y,#$08
10f5: 8f 00 f2  mov   $f2,#$00
10f8: e8 7f     mov   a,#$7f
10fa: c4 f3     mov   $f3,a
10fc: ab f2     inc   $f2
10fe: c4 f3     mov   $f3,a
1100: 60        clrc
1101: 98 04 f2  adc   $f2,#$04
1104: e8 00     mov   a,#$00
1106: c4 f3     mov   $f3,a
1108: ab f2     inc   $f2
110a: c4 f3     mov   $f3,a
110c: ab f2     inc   $f2
110e: 8f ff f3  mov   $f3,#$ff
1111: 60        clrc
1112: 98 09 f2  adc   $f2,#$09
1115: dc        dec   y
1116: d0 e0     bne   $10f8
1118: e8 3c     mov   a,#$3c
111a: c4 e6     mov   $e6,a
111c: e8 20     mov   a,#$20
111e: c4 0d     mov   $0d,a
1120: 8f 08 00  mov   $00,#$08
1123: cd 00     mov   x,#$00
1125: 8d 00     mov   y,#$00
1127: cb 0a     mov   $0a,y
1129: cb 0c     mov   $0c,y
112b: cb 01     mov   $01,y
112d: e8 01     mov   a,#$01
112f: d4 36     mov   $36+x,a
1131: d5 10 01  mov   $0110+x,a
1134: f7 e7     mov   a,($e7)+y
1136: d4 46     mov   $46+x,a
1138: fc        inc   y
1139: f7 e7     mov   a,($e7)+y
113b: d4 56     mov   $56+x,a
113d: e4 01     mov   a,$01
113f: d4 d6     mov   $d6+x,a
1141: e8 00     mov   a,#$00
1143: d5 d0 01  mov   $01d0+x,a
1146: d4 26     mov   $26+x,a
1148: d5 20 01  mov   $0120+x,a
114b: d5 30 01  mov   $0130+x,a
114e: d5 50 01  mov   $0150+x,a
1151: d5 40 01  mov   $0140+x,a
1154: d5 e0 01  mov   $01e0+x,a
1157: 3d        inc   x
1158: fc        inc   y
1159: 60        clrc
115a: 98 08 01  adc   $01,#$08
115d: 6e 00 cd  dbnz  $00,$112d
1160: f7 e7     mov   a,($e7)+y
1162: c4 21     mov   $21,a
1164: fc        inc   y
1165: f7 e7     mov   a,($e7)+y
1167: c4 24     mov   $24,a
1169: e8 00     mov   a,#$00
116b: c4 20     mov   $20,a
116d: c4 23     mov   $23,a
116f: 8f 6c f2  mov   $f2,#$6c
1172: 8f 20 f3  mov   $f3,#$20
1175: 6f        ret

1176: 1c        asl   a
1177: 2d        push  a
1178: e8 01     mov   a,#$01
117a: d5 e0 01  mov   $01e0+x,a
117d: 8f 3d f2  mov   $f2,#$3d
1180: f5 0a 10  mov   a,$100a+x
1183: 48 ff     eor   a,#$ff
1185: 24 f3     and   a,$f3
1187: c4 f3     mov   $f3,a
1189: f5 54 02  mov   a,$0254+x
118c: c4 00     mov   $00,a
118e: f5 64 02  mov   a,$0264+x
1191: c4 01     mov   $01,a
1193: 7d        mov   a,x
1194: 60        clrc
1195: 88 08     adc   a,#$08
1197: 5d        mov   x,a
1198: 1c        asl   a
1199: 1c        asl   a
119a: 1c        asl   a
119b: d4 d6     mov   $d6+x,a
119d: e8 01     mov   a,#$01
119f: d5 10 01  mov   $0110+x,a
11a2: e8 00     mov   a,#$00
11a4: d5 20 01  mov   $0120+x,a
11a7: d5 30 01  mov   $0130+x,a
11aa: d4 26     mov   $26+x,a
11ac: d5 d0 01  mov   $01d0+x,a
11af: d5 e0 01  mov   $01e0+x,a
11b2: d5 50 01  mov   $0150+x,a
11b5: d5 40 01  mov   $0140+x,a
11b8: d5 74 02  mov   $0274+x,a
11bb: d5 84 02  mov   $0284+x,a
11be: d5 94 02  mov   $0294+x,a
11c1: d4 66     mov   $66+x,a
11c3: e4 00     mov   a,$00
11c5: d5 54 02  mov   $0254+x,a
11c8: d5 14 03  mov   $0314+x,a
11cb: e4 01     mov   a,$01
11cd: d5 64 02  mov   $0264+x,a
11d0: d5 24 03  mov   $0324+x,a
11d3: e8 8f     mov   a,#$8f
11d5: d5 74 02  mov   $0274+x,a
11d8: e8 e0     mov   a,#$e0
11da: d5 84 02  mov   $0284+x,a
11dd: ee        pop   y
11de: f6 a0 24  mov   a,$24a0+y
11e1: d4 46     mov   $46+x,a
11e3: fc        inc   y
11e4: f6 a0 24  mov   a,$24a0+y
11e7: d4 56     mov   $56+x,a
11e9: e8 02     mov   a,#$02
11eb: d4 36     mov   $36+x,a
11ed: 8f 4d f2  mov   $f2,#$4d
11f0: f5 0a 10  mov   a,$100a+x
11f3: 48 ff     eor   a,#$ff
11f5: 24 f3     and   a,$f3
11f7: c4 f3     mov   $f3,a
11f9: 6f        ret

11fa: dw $0000
11fc: dw $0040
11fe: dw $0044
1200: dw $0048
1202: dw $004c
1204: dw $0051
1206: dw $0055
1208: dw $005b
120a: dw $0060
120c: dw $0066
120e: dw $006c
1210: dw $0072
1212: dw $0079
1214: dw $0080
1216: dw $0088
1218: dw $0090
121a: dw $0098
121c: dw $00a1
121e: dw $00ab
1220: dw $00b5
1222: dw $00c0
1224: dw $00cb
1226: dw $00d7
1228: dw $00e4
122a: dw $00f2
122c: dw $0100
122e: dw $010f
1230: dw $011f
1232: dw $0130
1234: dw $0143
1236: dw $0156
1238: dw $016a
123a: dw $0180
123c: dw $0196
123e: dw $01af
1240: dw $01c8
1242: dw $01e3
1244: dw $0200
1246: dw $021e
1248: dw $023f
124a: dw $0261
124c: dw $0285
124e: dw $02ab
1250: dw $02d4
1252: dw $02ff
1254: dw $032d
1256: dw $035d
1258: dw $0390
125a: dw $03c7
125c: dw $0400
125e: dw $043d
1260: dw $047d
1262: dw $04c2
1264: dw $050a
1266: dw $0557
1268: dw $05a8
126a: dw $05fe
126c: dw $065a
126e: dw $06ba
1270: dw $0721
1272: dw $078d
1274: dw $0800
1276: dw $087a
1278: dw $08fb
127a: dw $0984
127c: dw $0a14
127e: dw $0aae
1280: dw $0b50
1282: dw $0bfd
1284: dw $0cb3
1286: dw $0d74
1288: dw $0e41
128a: dw $0f1a
128c: dw $1000
128e: dw $10f4
1290: dw $11f6
1292: dw $1307
1294: dw $1429
1296: dw $155c
1298: dw $16a1
129a: dw $17f9
129c: dw $1966
129e: dw $1ae9
12a0: dw $1c82
12a2: dw $1e34
12a4: dw $2000
12a6: dw $21e7
12a8: dw $23eb
12aa: dw $260e
12ac: dw $2851
12ae: dw $2ab7
12b0: dw $2d41
12b2: dw $2ff2
12b4: dw $32cc
12b6: dw $35d1
12b8: dw $3904
12ba: dw $3c68
12bc: dw $3fff
