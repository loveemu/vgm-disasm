; receive data block from CPU
04b8: cd 00     mov   x,#$00
04ba: e4 f4     mov   a,$f4
04bc: 65 d6 04  cmp   a,$04d6
04bf: f0 f9     beq   $04ba             ; APU0 sync
04c1: c5 d6 04  mov   $04d6,a
04c4: 28 01     and   a,#$01
04c6: f0 0b     beq   $04d3             ; quit if APU0.bit0 == 0
04c8: e4 f5     mov   a,$f5
04ca: c7 f6     mov   ($f6+x),a         ; write APU1 to (APU2/APU3)
04cc: e5 d6 04  mov   a,$04d6
04cf: c4 f4     mov   $f4,a
04d1: 2f e7     bra   $04ba
; goto APU2/APU3
04d3: 1f f6 00  jmp   ($00f6+x)

05e0: 20        clrp
05e1: cd ff     mov   x,#$ff
05e3: bd        mov   sp,x
05e4: e4 f4     mov   a,$f4
05e6: c5 d6 04  mov   $04d6,a
05e9: c4 f4     mov   $f4,a
05eb: 3f 71 10  call  $1071             ; initialize
05ee: 8f 00 24  mov   $24,#$00
05f1: 8f 00 ed  mov   $ed,#$00
05f4: e8 00     mov   a,#$00
05f6: c4 25     mov   $25,a
05f8: 8f 00 f1  mov   $f1,#$00
05fb: 8f ff f5  mov   $f5,#$ff          ; set APU2 (transfer done)
; main loop
05fe: e4 f4     mov   a,$f4
0600: 5d        mov   x,a
0601: 65 d6 04  cmp   a,$04d6
0604: f0 3b     beq   $0641
; APU0 (sync) changed
0606: e4 f6     mov   a,$f6
0608: c5 d8 04  mov   $04d8,a           ; save APU2
060b: e4 f5     mov   a,$f5
060d: c9 d6 04  mov   $04d6,x           ; save APU0
0610: d8 f4     mov   $f4,x
0612: 68 ff     cmp   a,#$ff
0614: d0 03     bne   $0619
; cpu cmd ff - transfer data from CPU
0616: 5f 17 07  jmp   $0717
; when APU1 (cpu cmd) != 0xff:
0619: 68 fe     cmp   a,#$fe
061b: f0 1e     beq   $063b
061d: 68 fd     cmp   a,#$fd
061f: f0 0c     beq   $062d
0621: 68 fc     cmp   a,#$fc
0623: f0 0f     beq   $0634
; cpu cmd 00..fb - play SFX
0625: e9 d8 04  mov   x,$04d8           ; APU2
0628: 3f 73 11  call  $1173
062b: 2f 1e     bra   $064b
; cpu cmd fd - set conditional value
062d: e5 d8 04  mov   a,$04d8           ; APU2
0630: c4 ed     mov   $ed,a
0632: 2f 1b     bra   $064f
; cpu cmd fc - set stereo/mono
0634: e5 d8 04  mov   a,$04d8           ; APU2
0637: c4 25     mov   $25,a
0639: 2f 14     bra   $064f
; cpu cmd fe - start timer and BGM playback
063b: 8f 01 24  mov   $24,#$01
063e: 8f 00 f1  mov   $f1,#$00          ; stop timers
;
0641: e4 24     mov   a,$24
0643: f0 b9     beq   $05fe
; start BGM playback
0645: fa ec fa  mov   ($fa),($ec)       ; set timer 0 frequency
0648: 8f 01 f1  mov   $f1,#$01          ; start timer 0
064b: e4 fd     mov   a,$fd
064d: f0 fc     beq   $064b             ; wait for tick
064f: 8f 01 f1  mov   $f1,#$01
0652: 8f 00 28  mov   $28,#$00
0655: 60        clrc
0656: 89 27 26  adc   ($26),($27)
0659: 6b 28     ror   $28
065b: 8f 00 2b  mov   $2b,#$00
065e: 60        clrc
065f: 89 2a 29  adc   ($29),($2a)
0662: 6b 2b     ror   $2b
0664: e4 28     mov   a,$28
0666: f0 76     beq   $06de
0668: e8 ff     mov   a,#$ff
066a: c4 05     mov   $05,a
066c: e8 00     mov   a,#$00
066e: c4 06     mov   $06,a
0670: ba 0b     movw  ya,$0b
0672: 5a 05     cmpw  ya,$05
0674: f0 68     beq   $06de
0676: 90 0a     bcc   $0682
0678: e8 00     mov   a,#$00
067a: c4 0c     mov   $0c,a
067c: e8 ff     mov   a,#$ff
067e: c4 0b     mov   $0b,a
0680: 2f 0e     bra   $0690
0682: e4 0d     mov   a,$0d
0684: f0 58     beq   $06de
0686: 8d 00     mov   y,#$00
0688: 7a 0b     addw  ya,$0b
068a: da 0b     movw  $0b,ya
068c: 5a 05     cmpw  ya,$05
068e: b0 e8     bcs   $0678
0690: c4 03     mov   $03,a
0692: e8 00     mov   a,#$00
0694: c4 04     mov   $04,a
0696: e8 80     mov   a,#$80
0698: c4 05     mov   $05,a
069a: e8 ff     mov   a,#$ff
069c: c4 06     mov   $06,a
069e: e5 30 02  mov   a,$0230
06a1: 8d 00     mov   y,#$00
06a3: 9a 03     subw  ya,$03
06a5: 10 02     bpl   $06a9
06a7: e8 00     mov   a,#$00
06a9: 8f 0c f2  mov   $f2,#$0c
06ac: c4 f3     mov   $f3,a             ; MVOL(L)
06ae: e5 31 02  mov   a,$0231
06b1: 8d 00     mov   y,#$00
06b3: 9a 03     subw  ya,$03
06b5: 10 02     bpl   $06b9
06b7: e8 00     mov   a,#$00
06b9: 8f 1c f2  mov   $f2,#$1c
06bc: c4 f3     mov   $f3,a             ; MVOL(R)
06be: e5 32 02  mov   a,$0232
06c1: 8d 00     mov   y,#$00
06c3: 9a 03     subw  ya,$03
06c5: 10 02     bpl   $06c9
06c7: e8 00     mov   a,#$00
06c9: 8f 2c f2  mov   $f2,#$2c
06cc: c4 f3     mov   $f3,a             ; EVOL(L)
06ce: e5 33 02  mov   a,$0233
06d1: 8d 00     mov   y,#$00
06d3: 9a 03     subw  ya,$03
06d5: 10 02     bpl   $06d9
06d7: e8 00     mov   a,#$00
06d9: 8f 3c f2  mov   $f2,#$3c
06dc: c4 f3     mov   $f3,a             ; EVOL(R)
06de: cd 00     mov   x,#$00
06e0: e4 28     mov   a,$28
06e2: d0 05     bne   $06e9
06e4: 3f 17 09  call  $0917
06e7: 2f 07     bra   $06f0
;
06e9: 3f 49 07  call  $0749
06ec: 68 00     cmp   a,#$00
06ee: d0 f9     bne   $06e9
06f0: f5 a0 01  mov   a,$01a0+x
06f3: f0 17     beq   $070c
06f5: 4d        push  x
06f6: 7d        mov   a,x
06f7: 60        clrc
06f8: 88 08     adc   a,#$08
06fa: 5d        mov   x,a
06fb: e4 2b     mov   a,$2b
06fd: d0 05     bne   $0704
06ff: 3f 17 09  call  $0917
0702: 2f 07     bra   $070b
;
0704: 3f 49 07  call  $0749
0707: 68 00     cmp   a,#$00
0709: d0 f9     bne   $0704
070b: ce        pop   x
070c: 3d        inc   x
070d: c8 08     cmp   x,#$08
070f: f0 03     beq   $0714
0711: 5f e0 06  jmp   $06e0

0714: 5f fe 05  jmp   $05fe

0717: 8f 5c f2  mov   $f2,#$5c
071a: 8f ff f3  mov   $f3,#$ff          ; KOF
071d: 8f 00 f1  mov   $f1,#$00
0720: 8f c8 fb  mov   $fb,#$c8
0723: 8f 02 f1  mov   $f1,#$02
0726: e4 fe     mov   a,$fe
0728: f0 fc     beq   $0726
072a: 8f 6c f2  mov   $f2,#$6c
072d: 8f a0 f3  mov   $f3,#$a0          ; FLG
0730: cd 00     mov   x,#$00
0732: 8f 4d f2  mov   $f2,#$4d
0735: d8 f3     mov   $f3,x             ; EON
0737: 8f 2c f2  mov   $f2,#$2c
073a: d8 f3     mov   $f3,x             ; EVOL(L)
073c: 8f 3c f2  mov   $f2,#$3c
073f: d8 f3     mov   $f3,x             ; EVOL(R)
0741: d8 f5     mov   $f5,x             ; clear APU2
0743: c9 d6 04  mov   $04d6,x
0746: 5f b8 04  jmp   $04b8             ; transfer data from CPU

0749: f5 10 01  mov   a,$0110+x
074c: d0 03     bne   $0751
074e: e8 00     mov   a,#$00
0750: 6f        ret

0751: 9b 3c     dec   $3c+x
0753: f4 3c     mov   a,$3c+x
0755: 68 01     cmp   a,#$01
0757: f0 16     beq   $076f
0759: 68 ff     cmp   a,#$ff
075b: d0 08     bne   $0765
075d: f4 2c     mov   a,$2c+x
075f: f0 25     beq   $0786
0761: 9b 2c     dec   $2c+x
0763: 2f 1b     bra   $0780
0765: 68 00     cmp   a,#$00
0767: d0 17     bne   $0780
0769: f4 2c     mov   a,$2c+x
076b: f0 19     beq   $0786
076d: 2f 11     bra   $0780
076f: f4 2c     mov   a,$2c+x
0771: d0 0d     bne   $0780
0773: f5 a0 01  mov   a,$01a0+x
0776: d0 08     bne   $0780
0778: f5 ff 0f  mov   a,$0fff+x
077b: 8f 5c f2  mov   $f2,#$5c
077e: c4 f3     mov   $f3,a             ; KOF
0780: 3f 17 09  call  $0917
0783: e8 00     mov   a,#$00
0785: 6f        ret

0786: f4 4c     mov   a,$4c+x
0788: c4 01     mov   $01,a
078a: f4 5c     mov   a,$5c+x
078c: c4 02     mov   $02,a
078e: 8d 00     mov   y,#$00
0790: f7 01     mov   a,($01)+y
0792: 68 00     cmp   a,#$00
0794: 30 06     bmi   $079c
; dispatch vcmd (00-7f)
0796: 4d        push  x
0797: 1c        asl   a
0798: 5d        mov   x,a
0799: 1f 0f 10  jmp   ($100f+x)

; vcmd 80-ff - note
079c: 3f a5 07  call  $07a5
079f: 3f 17 09  call  $0917
07a2: e8 00     mov   a,#$00
07a4: 6f        ret

07a5: 68 80     cmp   a,#$80
07a7: d0 20     bne   $07c9
07a9: f5 a0 01  mov   a,$01a0+x
07ac: d0 18     bne   $07c6
07ae: f5 ff 0f  mov   a,$0fff+x
07b1: 8f 5c f2  mov   $f2,#$5c
07b4: c4 f3     mov   $f3,a             ; KOF
07b6: 7d        mov   a,x
07b7: 28 07     and   a,#$07
07b9: 9f        xcn   a
07ba: 08 02     or    a,#$02
07bc: c4 f2     mov   $f2,a
07be: e8 00     mov   a,#$00
07c0: c4 f3     mov   $f3,a             ; P(L)
07c2: ab f2     inc   $f2
07c4: c4 f3     mov   $f3,a             ; P(H)
07c6: 5f de 08  jmp   $08de

07c9: 60        clrc
07ca: 95 40 01  adc   a,$0140+x
07cd: 1c        asl   a
07ce: 4d        push  x
07cf: fb 6c     mov   y,$6c+x
07d1: f0 3c     beq   $080f
07d3: 5d        mov   x,a
07d4: cb 05     mov   $05,y
07d6: dd        mov   a,y
07d7: 10 03     bpl   $07dc
07d9: 48 ff     eor   a,#$ff
07db: bc        inc   a
07dc: fd        mov   y,a
07dd: 6d        push  y
07de: f5 e1 11  mov   a,$11e1+x
07e1: cf        mul   ya
07e2: cb 03     mov   $03,y
07e4: 8f 00 04  mov   $04,#$00
07e7: ee        pop   y
07e8: f5 e2 11  mov   a,$11e2+x
07eb: cf        mul   ya
07ec: 7a 03     addw  ya,$03
07ee: cb 04     mov   $04,y
07f0: 4b 04     lsr   $04
07f2: 7c        ror   a
07f3: 4b 04     lsr   $04
07f5: 7c        ror   a
07f6: c4 03     mov   $03,a
07f8: f5 e2 11  mov   a,$11e2+x
07fb: fd        mov   y,a
07fc: f5 e1 11  mov   a,$11e1+x
07ff: f8 05     mov   x,$05
0801: 30 04     bmi   $0807
0803: 7a 03     addw  ya,$03
0805: 2f 02     bra   $0809
0807: 9a 03     subw  ya,$03
0809: c4 03     mov   $03,a
080b: cb 04     mov   $04,y
080d: 2f 0b     bra   $081a
080f: 5d        mov   x,a
0810: f5 e1 11  mov   a,$11e1+x
0813: c4 03     mov   $03,a
0815: f5 e2 11  mov   a,$11e2+x
0818: c4 04     mov   $04,a
081a: ae        pop   a
081b: 5d        mov   x,a
081c: 28 07     and   a,#$07
081e: 9f        xcn   a
081f: c4 f2     mov   $f2,a             ; VOL(L)
0821: f5 a0 01  mov   a,$01a0+x
0824: f0 03     beq   $0829
0826: 5f de 08  jmp   $08de

0829: f5 54 02  mov   a,$0254+x
082c: c4 f3     mov   $f3,a             ; VOL(L)
082e: ab f2     inc   $f2
0830: f5 64 02  mov   a,$0264+x
0833: c4 f3     mov   $f3,a             ; VOL(R)
0835: ab f2     inc   $f2
0837: f5 50 01  mov   a,$0150+x
083a: 28 01     and   a,#$01
083c: f0 17     beq   $0855
083e: f5 b0 01  mov   a,$01b0+x
0841: d5 60 01  mov   $0160+x,a
0844: f5 c0 01  mov   a,$01c0+x
0847: d5 00 01  mov   $0100+x,a
084a: f5 d0 01  mov   a,$01d0+x
084d: d4 9c     mov   $9c+x,a
084f: f5 e0 01  mov   a,$01e0+x
0852: d5 80 01  mov   $0180+x,a
0855: f5 50 01  mov   a,$0150+x
0858: 28 02     and   a,#$02
085a: f0 1b     beq   $0877
085c: f5 34 02  mov   a,$0234+x
085f: 10 06     bpl   $0867
0861: 48 ff     eor   a,#$ff
0863: bc        inc   a
0864: d5 34 02  mov   $0234+x,a
0867: f5 00 02  mov   a,$0200+x
086a: 5c        lsr   a
086b: d4 ac     mov   $ac+x,a
086d: f5 10 02  mov   a,$0210+x
0870: d4 bc     mov   $bc+x,a
0872: f5 20 02  mov   a,$0220+x
0875: d4 cc     mov   $cc+x,a
0877: f5 50 01  mov   a,$0150+x
087a: 28 04     and   a,#$04
087c: f0 2a     beq   $08a8
087e: f5 d4 02  mov   a,$02d4+x
0881: 10 06     bpl   $0889
0883: 48 ff     eor   a,#$ff
0885: bc        inc   a
0886: d5 d4 02  mov   $02d4+x,a
0889: f5 f4 02  mov   a,$02f4+x
088c: 5c        lsr   a
088d: d5 e4 02  mov   $02e4+x,a
0890: f5 c4 02  mov   a,$02c4+x
0893: d5 b4 02  mov   $02b4+x,a
0896: f5 04 03  mov   a,$0304+x
0899: d5 a4 02  mov   $02a4+x,a
089c: f5 14 03  mov   a,$0314+x
089f: d5 54 02  mov   $0254+x,a
08a2: f5 24 03  mov   a,$0324+x
08a5: d5 64 02  mov   $0264+x,a
08a8: e4 03     mov   a,$03
08aa: d4 8c     mov   $8c+x,a
08ac: c4 f3     mov   $f3,a             ; P(L)
08ae: ab f2     inc   $f2
08b0: e4 04     mov   a,$04
08b2: d4 7c     mov   $7c+x,a
08b4: c4 f3     mov   $f3,a             ; P(H)
08b6: ab f2     inc   $f2
08b8: f5 44 02  mov   a,$0244+x
08bb: c4 f3     mov   $f3,a             ; SRCN
08bd: ab f2     inc   $f2
08bf: f5 74 02  mov   a,$0274+x
08c2: c4 f3     mov   $f3,a             ; ADSR(1)
08c4: ab f2     inc   $f2
08c6: f5 84 02  mov   a,$0284+x
08c9: c4 f3     mov   $f3,a             ; ADSR(2)
08cb: ab f2     inc   $f2
08cd: 8f 7f f3  mov   $f3,#$7f          ; GAIN
08d0: 8f 5c f2  mov   $f2,#$5c
08d3: 8f 00 f3  mov   $f3,#$00          ; KOF
08d6: 8f 4c f2  mov   $f2,#$4c
08d9: f5 ff 0f  mov   a,$0fff+x
08dc: c4 f3     mov   $f3,a             ; KON
08de: f5 20 01  mov   a,$0120+x
08e1: f0 0f     beq   $08f2
08e3: 8f 01 01  mov   $01,#$01
08e6: f5 20 01  mov   a,$0120+x
08e9: d4 3c     mov   $3c+x,a
08eb: f5 30 01  mov   a,$0130+x
08ee: d4 2c     mov   $2c+x,a
08f0: 2f 17     bra   $0909
08f2: 8d 01     mov   y,#$01
08f4: f7 01     mov   a,($01)+y
08f6: d4 3c     mov   $3c+x,a
08f8: f5 90 01  mov   a,$0190+x
08fb: f0 09     beq   $0906
08fd: f4 3c     mov   a,$3c+x
08ff: d4 2c     mov   $2c+x,a
0901: fc        inc   y
0902: f7 01     mov   a,($01)+y
0904: d4 3c     mov   $3c+x,a
0906: fc        inc   y
; advance reading ptr
0907: cb 01     mov   $01,y
0909: 8f 00 02  mov   $02,#$00
090c: f4 4c     mov   a,$4c+x
090e: fb 5c     mov   y,$5c+x
0910: 7a 01     addw  ya,$01
0912: db 5c     mov   $5c+x,y
0914: d4 4c     mov   $4c+x,a
0916: 6f        ret

0917: f5 50 01  mov   a,$0150+x
091a: 28 01     and   a,#$01
091c: d0 03     bne   $0921
091e: 5f a4 09  jmp   $09a4

0921: f5 60 01  mov   a,$0160+x
0924: f0 0f     beq   $0935
0926: 68 ff     cmp   a,#$ff
0928: f0 7a     beq   $09a4
092a: 9c        dec   a
092b: d5 60 01  mov   $0160+x,a
092e: d0 74     bne   $09a4
0930: e8 01     mov   a,#$01
0932: d5 00 01  mov   $0100+x,a
0935: f5 00 01  mov   a,$0100+x
0938: 9c        dec   a
0939: d5 00 01  mov   $0100+x,a
093c: d0 66     bne   $09a4
093e: f5 c0 01  mov   a,$01c0+x
0941: d5 00 01  mov   $0100+x,a
0944: f5 80 01  mov   a,$0180+x
0947: f0 22     beq   $096b
0949: 9c        dec   a
094a: d5 80 01  mov   $0180+x,a
094d: f5 70 01  mov   a,$0170+x
0950: 48 ff     eor   a,#$ff
0952: bc        inc   a
0953: c4 01     mov   $01,a
0955: 10 04     bpl   $095b
0957: e8 ff     mov   a,#$ff
0959: 2f 02     bra   $095d
095b: e8 00     mov   a,#$00
095d: c4 02     mov   $02,a
095f: f4 8c     mov   a,$8c+x
0961: fb 7c     mov   y,$7c+x
0963: 7a 01     addw  ya,$01
0965: db 7c     mov   $7c+x,y
0967: d4 8c     mov   $8c+x,a
0969: 2f 1b     bra   $0986
096b: f5 70 01  mov   a,$0170+x
096e: c4 01     mov   $01,a
0970: 68 00     cmp   a,#$00
0972: 10 04     bpl   $0978
0974: e8 ff     mov   a,#$ff
0976: 2f 02     bra   $097a
0978: e8 00     mov   a,#$00
097a: c4 02     mov   $02,a
097c: f4 8c     mov   a,$8c+x
097e: fb 7c     mov   y,$7c+x
0980: 7a 01     addw  ya,$01
0982: db 7c     mov   $7c+x,y
0984: d4 8c     mov   $8c+x,a
0986: f5 a0 01  mov   a,$01a0+x
0989: d0 10     bne   $099b
098b: 7d        mov   a,x
098c: 28 07     and   a,#$07
098e: 9f        xcn   a
098f: 08 02     or    a,#$02
0991: c4 f2     mov   $f2,a
0993: f4 8c     mov   a,$8c+x
0995: c4 f3     mov   $f3,a             ; P(L)
0997: ab f2     inc   $f2
0999: cb f3     mov   $f3,y             ; P(H)
099b: 9b 9c     dec   $9c+x
099d: d0 05     bne   $09a4
099f: e8 ff     mov   a,#$ff
09a1: d5 60 01  mov   $0160+x,a
09a4: f5 50 01  mov   a,$0150+x
09a7: 28 02     and   a,#$02
09a9: f0 53     beq   $09fe
09ab: f4 cc     mov   a,$cc+x
09ad: f0 04     beq   $09b3
09af: 9b cc     dec   $cc+x
09b1: 2f 4b     bra   $09fe
09b3: 9b bc     dec   $bc+x
09b5: d0 47     bne   $09fe
09b7: f5 10 02  mov   a,$0210+x
09ba: d4 bc     mov   $bc+x,a
09bc: f5 34 02  mov   a,$0234+x
09bf: c4 01     mov   $01,a
09c1: 68 00     cmp   a,#$00
09c3: 10 04     bpl   $09c9
09c5: e8 ff     mov   a,#$ff
09c7: 2f 02     bra   $09cb
09c9: e8 00     mov   a,#$00
09cb: c4 02     mov   $02,a
09cd: f4 8c     mov   a,$8c+x
09cf: fb 7c     mov   y,$7c+x
09d1: 7a 01     addw  ya,$01
09d3: db 7c     mov   $7c+x,y
09d5: d4 8c     mov   $8c+x,a
09d7: f5 a0 01  mov   a,$01a0+x
09da: d0 10     bne   $09ec
09dc: 7d        mov   a,x
09dd: 28 07     and   a,#$07
09df: 9f        xcn   a
09e0: 08 02     or    a,#$02
09e2: c4 f2     mov   $f2,a
09e4: f4 8c     mov   a,$8c+x
09e6: c4 f3     mov   $f3,a             ; P(L)
09e8: ab f2     inc   $f2
09ea: cb f3     mov   $f3,y             ; P(H)
09ec: 9b ac     dec   $ac+x
09ee: d0 0e     bne   $09fe
09f0: f5 00 02  mov   a,$0200+x
09f3: d4 ac     mov   $ac+x,a
09f5: f5 34 02  mov   a,$0234+x
09f8: 48 ff     eor   a,#$ff
09fa: bc        inc   a
09fb: d5 34 02  mov   $0234+x,a
09fe: f5 50 01  mov   a,$0150+x
0a01: 28 04     and   a,#$04
0a03: f0 63     beq   $0a68
0a05: f5 a4 02  mov   a,$02a4+x
0a08: f0 09     beq   $0a13
0a0a: f5 a4 02  mov   a,$02a4+x
0a0d: 9c        dec   a
0a0e: d5 a4 02  mov   $02a4+x,a
0a11: 2f 55     bra   $0a68
0a13: f5 b4 02  mov   a,$02b4+x
0a16: 9c        dec   a
0a17: d5 b4 02  mov   $02b4+x,a
0a1a: d0 4c     bne   $0a68
0a1c: f5 c4 02  mov   a,$02c4+x
0a1f: d5 b4 02  mov   $02b4+x,a
0a22: f5 d4 02  mov   a,$02d4+x
0a25: c4 01     mov   $01,a
0a27: 60        clrc
0a28: 95 54 02  adc   a,$0254+x
0a2b: d5 54 02  mov   $0254+x,a
0a2e: e4 01     mov   a,$01
0a30: 60        clrc
0a31: 95 64 02  adc   a,$0264+x
0a34: d5 64 02  mov   $0264+x,a
0a37: f5 a0 01  mov   a,$01a0+x
0a3a: d0 14     bne   $0a50
0a3c: 7d        mov   a,x
0a3d: 28 07     and   a,#$07
0a3f: 9f        xcn   a
0a40: 08 00     or    a,#$00
0a42: c4 f2     mov   $f2,a
0a44: f5 54 02  mov   a,$0254+x
0a47: c4 f3     mov   $f3,a             ; VOL(L)
0a49: ab f2     inc   $f2
0a4b: f5 64 02  mov   a,$0264+x
0a4e: c4 f3     mov   $f3,a             ; VOL(R)
0a50: f5 e4 02  mov   a,$02e4+x
0a53: 9c        dec   a
0a54: d5 e4 02  mov   $02e4+x,a
0a57: d0 0f     bne   $0a68
0a59: f5 f4 02  mov   a,$02f4+x
0a5c: d5 e4 02  mov   $02e4+x,a
0a5f: f5 d4 02  mov   a,$02d4+x
0a62: 48 ff     eor   a,#$ff
0a64: bc        inc   a
0a65: d5 d4 02  mov   $02d4+x,a
0a68: 6f        ret

; vcmd 00 - end of track
0a69: ce        pop   x
0a6a: e8 00     mov   a,#$00
0a6c: d5 10 01  mov   $0110+x,a
0a6f: f5 a0 01  mov   a,$01a0+x
0a72: d0 08     bne   $0a7c
0a74: 8f 5c f2  mov   $f2,#$5c
0a77: f5 ff 0f  mov   a,$0fff+x
0a7a: c4 f3     mov   $f3,a             ; KOF
0a7c: 7d        mov   a,x
0a7d: 68 08     cmp   a,#$08
0a7f: 90 31     bcc   $0ab2
0a81: 4d        push  x
0a82: 80        setc
0a83: a8 08     sbc   a,#$08
0a85: 5d        mov   x,a
0a86: e8 00     mov   a,#$00
0a88: d5 a0 01  mov   $01a0+x,a
0a8b: 8f 3d f2  mov   $f2,#$3d
0a8e: f5 ff 0f  mov   a,$0fff+x
0a91: 48 ff     eor   a,#$ff
0a93: 24 f3     and   a,$f3
0a95: c4 f3     mov   $f3,a             ; NON
0a97: 8f 4d f2  mov   $f2,#$4d
0a9a: f5 94 02  mov   a,$0294+x
0a9d: f0 09     beq   $0aa8
0a9f: f5 ff 0f  mov   a,$0fff+x
0aa2: 04 f3     or    a,$f3
0aa4: c4 f3     mov   $f3,a             ; EON
0aa6: 2f 09     bra   $0ab1
0aa8: f5 ff 0f  mov   a,$0fff+x
0aab: 48 ff     eor   a,#$ff
0aad: 24 f3     and   a,$f3
0aaf: c4 f3     mov   $f3,a
0ab1: ce        pop   x
0ab2: e8 00     mov   a,#$00
0ab4: 6f        ret

; vcmd 01 - set instrument
0ab5: ce        pop   x
0ab6: e8 00     mov   a,#$00
0ab8: d4 6c     mov   $6c+x,a
0aba: 8d 01     mov   y,#$01
0abc: db 3c     mov   $3c+x,y
0abe: d4 2c     mov   $2c+x,a
0ac0: 4d        push  x
0ac1: f7 01     mov   a,($01)+y
0ac3: 5d        mov   x,a
0ac4: f5 e0 04  mov   a,$04e0+x         ; read SRCN table
0ac7: ce        pop   x
0ac8: d5 44 02  mov   $0244+x,a
0acb: 8f 02 01  mov   $01,#$02
; add $01/2 to reading ptr
0ace: 8f 00 02  mov   $02,#$00
0ad1: f4 4c     mov   a,$4c+x
0ad3: fb 5c     mov   y,$5c+x
0ad5: 7a 01     addw  ya,$01
0ad7: db 5c     mov   $5c+x,y
0ad9: d4 4c     mov   $4c+x,a
0adb: e8 01     mov   a,#$01
0add: 6f        ret

; vcmd 02 - set L/R volume
0ade: ce        pop   x
0adf: 8d 01     mov   y,#$01
0ae1: db 3c     mov   $3c+x,y
0ae3: e8 00     mov   a,#$00
0ae5: d4 2c     mov   $2c+x,a
; set volume - stereo or mono?
0ae7: e4 25     mov   a,$25
0ae9: f0 13     beq   $0afe
; mono
0aeb: f7 01     mov   a,($01)+y
0aed: fc        inc   y
0aee: 60        clrc
0aef: 97 01     adc   a,($01)+y
0af1: 7c        ror   a
0af2: d5 54 02  mov   $0254+x,a
0af5: d5 64 02  mov   $0264+x,a
0af8: 8f 03 01  mov   $01,#$03
0afb: 5f ce 0a  jmp   $0ace
; stereo
0afe: f7 01     mov   a,($01)+y
0b00: d5 54 02  mov   $0254+x,a
0b03: fc        inc   y
0b04: f7 01     mov   a,($01)+y
0b06: d5 64 02  mov   $0264+x,a
0b09: 8f 03 01  mov   $01,#$03
0b0c: 5f ce 0a  jmp   $0ace

; vcmd 03 - jump
0b0f: ce        pop   x
0b10: 8d 01     mov   y,#$01
0b12: db 3c     mov   $3c+x,y
0b14: e8 00     mov   a,#$00
0b16: d4 2c     mov   $2c+x,a
0b18: f7 01     mov   a,($01)+y
0b1a: d4 4c     mov   $4c+x,a
0b1c: fc        inc   y
0b1d: f7 01     mov   a,($01)+y
0b1f: d4 5c     mov   $5c+x,a           ; set reading ptr $4c/5c from arg1/2
0b21: e8 01     mov   a,#$01
0b23: 6f        ret

; vcmd 04 - call subroutine
0b24: ce        pop   x
0b25: 8d 01     mov   y,#$01
0b27: db 3c     mov   $3c+x,y
0b29: e8 00     mov   a,#$00
0b2b: d4 2c     mov   $2c+x,a
0b2d: f7 01     mov   a,($01)+y
0b2f: c4 05     mov   $05,a
0b31: fc        inc   y
0b32: f7 01     mov   a,($01)+y
0b34: c4 03     mov   $03,a
0b36: fc        inc   y
0b37: f7 01     mov   a,($01)+y
0b39: c4 04     mov   $04,a
0b3b: fb dc     mov   y,$dc+x
0b3d: e4 05     mov   a,$05
0b3f: d6 34 04  mov   $0434+y,a
0b42: f4 5c     mov   a,$5c+x
0b44: d6 b4 03  mov   $03b4+y,a
0b47: f4 4c     mov   a,$4c+x
0b49: d6 34 03  mov   $0334+y,a
0b4c: bb dc     inc   $dc+x
0b4e: e4 03     mov   a,$03
0b50: d4 4c     mov   $4c+x,a
0b52: e4 04     mov   a,$04
0b54: d4 5c     mov   $5c+x,a
0b56: e8 01     mov   a,#$01
0b58: 6f        ret

; vcmd 05 - end subroutine
0b59: ce        pop   x
0b5a: e8 01     mov   a,#$01
0b5c: d4 3c     mov   $3c+x,a
0b5e: e8 00     mov   a,#$00
0b60: d4 2c     mov   $2c+x,a
0b62: 9b dc     dec   $dc+x
0b64: fb dc     mov   y,$dc+x
0b66: f6 b4 03  mov   a,$03b4+y
0b69: d4 5c     mov   $5c+x,a
0b6b: f6 34 03  mov   a,$0334+y
0b6e: d4 4c     mov   $4c+x,a
0b70: f6 34 04  mov   a,$0434+y
0b73: 9c        dec   a
0b74: d6 34 04  mov   $0434+y,a
0b77: f0 20     beq   $0b99
0b79: f4 4c     mov   a,$4c+x
0b7b: c4 01     mov   $01,a
0b7d: f4 5c     mov   a,$5c+x
0b7f: c4 02     mov   $02,a
0b81: 8d 02     mov   y,#$02
0b83: f7 01     mov   a,($01)+y
0b85: c4 03     mov   $03,a
0b87: fc        inc   y
0b88: f7 01     mov   a,($01)+y
0b8a: c4 04     mov   $04,a
0b8c: bb dc     inc   $dc+x
0b8e: e4 03     mov   a,$03
0b90: d4 4c     mov   $4c+x,a
0b92: e4 04     mov   a,$04
0b94: d4 5c     mov   $5c+x,a
0b96: e8 01     mov   a,#$01
0b98: 6f        ret

0b99: 8f 04 01  mov   $01,#$04
0b9c: 5f ce 0a  jmp   $0ace

; vcmd 06 - default duration on
0b9f: ce        pop   x
0ba0: e8 00     mov   a,#$00
0ba2: d4 2c     mov   $2c+x,a
0ba4: 8d 01     mov   y,#$01
0ba6: db 3c     mov   $3c+x,y
0ba8: f7 01     mov   a,($01)+y
0baa: d5 20 01  mov   $0120+x,a
0bad: f5 90 01  mov   a,$0190+x
0bb0: f0 0c     beq   $0bbe
0bb2: f5 20 01  mov   a,$0120+x
0bb5: d5 30 01  mov   $0130+x,a
0bb8: fc        inc   y
0bb9: f7 01     mov   a,($01)+y
0bbb: d5 20 01  mov   $0120+x,a
0bbe: fc        inc   y
0bbf: cb 01     mov   $01,y
0bc1: 5f ce 0a  jmp   $0ace

; vcmd 07 - default duration off
0bc4: ce        pop   x
0bc5: e8 00     mov   a,#$00
0bc7: d5 20 01  mov   $0120+x,a
0bca: d5 30 01  mov   $0130+x,a
0bcd: 5f 44 0c  jmp   $0c44

; vcmd 08 - pitch slide up
0bd0: ce        pop   x
0bd1: f5 50 01  mov   a,$0150+x
0bd4: 08 01     or    a,#$01
0bd6: d5 50 01  mov   $0150+x,a
0bd9: 8d 01     mov   y,#$01
0bdb: db 3c     mov   $3c+x,y
0bdd: e8 00     mov   a,#$00
0bdf: d4 2c     mov   $2c+x,a
0be1: f7 01     mov   a,($01)+y
0be3: d5 b0 01  mov   $01b0+x,a
0be6: fc        inc   y
0be7: f7 01     mov   a,($01)+y
0be9: d5 c0 01  mov   $01c0+x,a
0bec: fc        inc   y
0bed: f7 01     mov   a,($01)+y
0bef: d5 d0 01  mov   $01d0+x,a
0bf2: fc        inc   y
0bf3: f7 01     mov   a,($01)+y
0bf5: d5 70 01  mov   $0170+x,a
0bf8: fc        inc   y
0bf9: f7 01     mov   a,($01)+y
0bfb: d5 e0 01  mov   $01e0+x,a
0bfe: 8f 06 01  mov   $01,#$06
0c01: 5f ce 0a  jmp   $0ace

; vcmd 09 - pitch slide down
0c04: ce        pop   x
0c05: f5 50 01  mov   a,$0150+x
0c08: 08 01     or    a,#$01
0c0a: d5 50 01  mov   $0150+x,a
0c0d: 8d 01     mov   y,#$01
0c0f: db 3c     mov   $3c+x,y
0c11: e8 00     mov   a,#$00
0c13: d4 2c     mov   $2c+x,a
0c15: f7 01     mov   a,($01)+y
0c17: d5 b0 01  mov   $01b0+x,a
0c1a: fc        inc   y
0c1b: f7 01     mov   a,($01)+y
0c1d: d5 c0 01  mov   $01c0+x,a
0c20: fc        inc   y
0c21: f7 01     mov   a,($01)+y
0c23: d5 d0 01  mov   $01d0+x,a
0c26: fc        inc   y
0c27: f7 01     mov   a,($01)+y
0c29: 48 ff     eor   a,#$ff
0c2b: bc        inc   a
0c2c: d5 70 01  mov   $0170+x,a
0c2f: fc        inc   y
0c30: f7 01     mov   a,($01)+y
0c32: d5 e0 01  mov   $01e0+x,a
0c35: 8f 06 01  mov   $01,#$06
0c38: 5f ce 0a  jmp   $0ace

; vcmd 0a - pitch slide off
0c3b: ce        pop   x
0c3c: f5 50 01  mov   a,$0150+x
0c3f: 28 fe     and   a,#$fe
0c41: d5 50 01  mov   $0150+x,a
0c44: e8 01     mov   a,#$01
0c46: c4 01     mov   $01,a
0c48: d4 3c     mov   $3c+x,a
0c4a: e8 00     mov   a,#$00
0c4c: d4 2c     mov   $2c+x,a
0c4e: 5f ce 0a  jmp   $0ace

; vcmd 0b - set tempo
0c51: ce        pop   x
0c52: 8d 01     mov   y,#$01
0c54: f7 01     mov   a,($01)+y
0c56: c4 27     mov   $27,a
0c58: e8 01     mov   a,#$01
0c5a: d4 3c     mov   $3c+x,a
0c5c: e8 00     mov   a,#$00
0c5e: d4 2c     mov   $2c+x,a
0c60: 8f 02 01  mov   $01,#$02
0c63: 5f ce 0a  jmp   $0ace

; vcmd 0c - add tempo
0c66: ce        pop   x
0c67: 8d 01     mov   y,#$01
0c69: f7 01     mov   a,($01)+y
0c6b: 60        clrc
0c6c: 84 27     adc   a,$27
0c6e: c4 27     mov   $27,a
0c70: 5f 58 0c  jmp   $0c58

; vcmd 0d - vibrato (short)
0c73: ce        pop   x
0c74: f5 50 01  mov   a,$0150+x
0c77: 08 02     or    a,#$02
0c79: d5 50 01  mov   $0150+x,a
0c7c: 8d 01     mov   y,#$01
0c7e: db 3c     mov   $3c+x,y
0c80: e8 00     mov   a,#$00
0c82: d4 2c     mov   $2c+x,a
0c84: f7 01     mov   a,($01)+y
0c86: d5 00 02  mov   $0200+x,a         ; arg1 - vibrato rate/depth (total steps, >= 2)
0c89: fc        inc   y
0c8a: f7 01     mov   a,($01)+y
0c8c: d5 10 02  mov   $0210+x,a         ; arg2 - vibrato rate (ticks per step)
0c8f: fc        inc   y
0c90: f7 01     mov   a,($01)+y
0c92: d5 34 02  mov   $0234+x,a         ; arg3 - vibrato depth (pitch freq step)
0c95: e8 00     mov   a,#$00
0c97: d5 20 02  mov   $0220+x,a         ; zero vibrato delay (ticks)
0c9a: 8f 04 01  mov   $01,#$04
0c9d: 5f ce 0a  jmp   $0ace

; vcmd 0e - vibrato off
0ca0: ce        pop   x
0ca1: f5 50 01  mov   a,$0150+x
0ca4: 28 fd     and   a,#$fd
0ca6: d5 50 01  mov   $0150+x,a
0ca9: 5f 44 0c  jmp   $0c44

; vcmd 0f - vibrato
0cac: ce        pop   x
0cad: f5 50 01  mov   a,$0150+x
0cb0: 08 02     or    a,#$02
0cb2: d5 50 01  mov   $0150+x,a
0cb5: 8d 01     mov   y,#$01
0cb7: db 3c     mov   $3c+x,y
0cb9: e8 00     mov   a,#$00
0cbb: d4 2c     mov   $2c+x,a
0cbd: f7 01     mov   a,($01)+y
0cbf: d5 00 02  mov   $0200+x,a         ; arg1 - vibrato rate/depth (total steps, >= 2)
0cc2: fc        inc   y
0cc3: f7 01     mov   a,($01)+y
0cc5: d5 10 02  mov   $0210+x,a         ; arg2 - vibrato rate (ticks per step)
0cc8: fc        inc   y
0cc9: f7 01     mov   a,($01)+y
0ccb: d5 34 02  mov   $0234+x,a         ; arg3 - vibrato depth (pitch freq step)
0cce: fc        inc   y
0ccf: f7 01     mov   a,($01)+y
0cd1: d5 20 02  mov   $0220+x,a         ; arg4 - vibrato delay (ticks)
0cd4: 8f 05 01  mov   $01,#$05
0cd7: 5f ce 0a  jmp   $0ace

; vcmd 10 - set ADSR envelope
0cda: ce        pop   x
0cdb: 8d 01     mov   y,#$01
0cdd: db 3c     mov   $3c+x,y
0cdf: e8 00     mov   a,#$00
0ce1: d4 2c     mov   $2c+x,a
0ce3: f7 01     mov   a,($01)+y
0ce5: d5 74 02  mov   $0274+x,a
0ce8: fc        inc   y
0ce9: f7 01     mov   a,($01)+y
0ceb: d5 84 02  mov   $0284+x,a
0cee: 8f 03 01  mov   $01,#$03
0cf1: 5f ce 0a  jmp   $0ace

; vcmd 11 - master volume L/R
0cf4: ce        pop   x
0cf5: 8f 0c f2  mov   $f2,#$0c
0cf8: 8d 01     mov   y,#$01
0cfa: db 3c     mov   $3c+x,y
0cfc: e8 00     mov   a,#$00
0cfe: d4 2c     mov   $2c+x,a
0d00: e4 25     mov   a,$25
0d02: f0 11     beq   $0d15
0d04: f7 01     mov   a,($01)+y
0d06: c4 f3     mov   $f3,a             ; MVOL(L)
0d08: fc        inc   y
0d09: 60        clrc
0d0a: 97 01     adc   a,($01)+y
0d0c: 7c        ror   a
0d0d: c5 30 02  mov   $0230,a
0d10: 8f 1c f2  mov   $f2,#$1c
0d13: 2f 0d     bra   $0d22
0d15: f7 01     mov   a,($01)+y
0d17: c4 f3     mov   $f3,a             ; MVOL(R)
0d19: c5 30 02  mov   $0230,a
0d1c: fc        inc   y
0d1d: 8f 1c f2  mov   $f2,#$1c
0d20: f7 01     mov   a,($01)+y
0d22: c4 f3     mov   $f3,a             ; MVOL(R)
0d24: c5 31 02  mov   $0231,a
0d27: 8f 03 01  mov   $01,#$03
0d2a: 5f ce 0a  jmp   $0ace

; vcmd 12 - detune
0d2d: ce        pop   x
0d2e: 8d 01     mov   y,#$01
0d30: db 3c     mov   $3c+x,y
0d32: e8 00     mov   a,#$00
0d34: d4 2c     mov   $2c+x,a
0d36: f7 01     mov   a,($01)+y
0d38: d4 6c     mov   $6c+x,a
0d3a: 8f 02 01  mov   $01,#$02
0d3d: 5f ce 0a  jmp   $0ace

; vcmd 13 - transpose
0d40: ce        pop   x
0d41: 8d 01     mov   y,#$01
0d43: db 3c     mov   $3c+x,y
0d45: e8 00     mov   a,#$00
0d47: d4 2c     mov   $2c+x,a
0d49: f7 01     mov   a,($01)+y
0d4b: d5 40 01  mov   $0140+x,a
0d4e: 8f 02 01  mov   $01,#$02
0d51: 5f ce 0a  jmp   $0ace

; vcmd 14 - transpose (relative)
0d54: ce        pop   x
0d55: 8d 01     mov   y,#$01
0d57: db 3c     mov   $3c+x,y
0d59: e8 00     mov   a,#$00
0d5b: d4 2c     mov   $2c+x,a
0d5d: f7 01     mov   a,($01)+y
0d5f: 60        clrc
0d60: 95 40 01  adc   a,$0140+x
0d63: d5 40 01  mov   $0140+x,a
0d66: 8f 02 01  mov   $01,#$02
0d69: 5f ce 0a  jmp   $0ace

; vcmd 15 - echo param
0d6c: ce        pop   x
0d6d: 8f 0d f2  mov   $f2,#$0d
0d70: 8d 01     mov   y,#$01
0d72: f7 01     mov   a,($01)+y
0d74: c4 f3     mov   $f3,a             ; EFB
0d76: fc        inc   y
0d77: 8f 2c f2  mov   $f2,#$2c
0d7a: f7 01     mov   a,($01)+y
0d7c: c5 32 02  mov   $0232,a
0d7f: c4 f3     mov   $f3,a             ; EVOL(L)
0d81: 8f 3c f2  mov   $f2,#$3c
0d84: fc        inc   y
0d85: f7 01     mov   a,($01)+y
0d87: c5 33 02  mov   $0233,a
0d8a: c4 f3     mov   $f3,a             ; EVOL(R)
0d8c: e8 00     mov   a,#$00
0d8e: c4 0f     mov   $0f,a
0d90: 8f 6c f2  mov   $f2,#$6c
0d93: c4 f3     mov   $f3,a             ; FLG
0d95: 8f 04 01  mov   $01,#$04
0d98: 5f ce 0a  jmp   $0ace

; vcmd 16 - voice echo on
0d9b: ce        pop   x
0d9c: 8f 4d f2  mov   $f2,#$4d
0d9f: f5 ff 0f  mov   a,$0fff+x
0da2: 04 f3     or    a,$f3
0da4: c4 f3     mov   $f3,a             ; EON
0da6: e8 00     mov   a,#$00
0da8: d4 2c     mov   $2c+x,a
0daa: e8 01     mov   a,#$01
0dac: d4 3c     mov   $3c+x,a
0dae: d5 94 02  mov   $0294+x,a
0db1: c4 01     mov   $01,a
0db3: 5f ce 0a  jmp   $0ace

; vcmd 17 - voice echo off
0db6: ce        pop   x
0db7: 8f 4d f2  mov   $f2,#$4d
0dba: f5 ff 0f  mov   a,$0fff+x
0dbd: 48 ff     eor   a,#$ff
0dbf: 24 f3     and   a,$f3
0dc1: c4 f3     mov   $f3,a             ; EON
0dc3: e8 00     mov   a,#$00
0dc5: d5 94 02  mov   $0294+x,a
0dc8: d4 2c     mov   $2c+x,a
0dca: e8 01     mov   a,#$01
0dcc: d4 3c     mov   $3c+x,a
0dce: c4 01     mov   $01,a
0dd0: 5f ce 0a  jmp   $0ace

; vcmd 18 - set echo filter
0dd3: ce        pop   x
0dd4: 8d 01     mov   y,#$01
0dd6: db 3c     mov   $3c+x,y
0dd8: e8 00     mov   a,#$00
0dda: d4 2c     mov   $2c+x,a
0ddc: 8f 0f f2  mov   $f2,#$0f
0ddf: f7 01     mov   a,($01)+y
0de1: c4 f3     mov   $f3,a             ; FIR C0-C7
0de3: fc        inc   y
0de4: 60        clrc
0de5: 98 10 f2  adc   $f2,#$10
0de8: 78 8f f2  cmp   $f2,#$8f
0deb: d0 f2     bne   $0ddf
0ded: 8f 09 01  mov   $01,#$09
0df0: 5f ce 0a  jmp   $0ace

; vcmd 19 - set noise clock
0df3: ce        pop   x
0df4: 8d 01     mov   y,#$01
0df6: db 3c     mov   $3c+x,y
0df8: e8 00     mov   a,#$00
0dfa: d4 2c     mov   $2c+x,a
0dfc: f7 01     mov   a,($01)+y
0dfe: c4 0e     mov   $0e,a
0e00: 04 0f     or    a,$0f
0e02: 8f 6c f2  mov   $f2,#$6c
0e05: c4 f3     mov   $f3,a             ; FLG
0e07: 8f 02 01  mov   $01,#$02
0e0a: 5f ce 0a  jmp   $0ace

; vcmd 1a - noise on
0e0d: ce        pop   x
0e0e: 8f 3d f2  mov   $f2,#$3d
0e11: f5 ff 0f  mov   a,$0fff+x
0e14: 04 f3     or    a,$f3
0e16: c4 f3     mov   $f3,a             ; NON
0e18: e8 00     mov   a,#$00
0e1a: d4 2c     mov   $2c+x,a
0e1c: e8 01     mov   a,#$01
0e1e: d4 3c     mov   $3c+x,a
0e20: c4 01     mov   $01,a
0e22: 5f ce 0a  jmp   $0ace

; vcmd 1b - noise off
0e25: ce        pop   x
0e26: 8f 3d f2  mov   $f2,#$3d
0e29: f5 ff 0f  mov   a,$0fff+x
0e2c: 48 ff     eor   a,#$ff
0e2e: 24 f3     and   a,$f3
0e30: c4 f3     mov   $f3,a             ; NON
0e32: 5f 18 0e  jmp   $0e18

; vcmd 1c - set volume and ADSR preset 1
0e35: cd 00     mov   x,#$00
0e37: 2f 0e     bra   $0e47
; vcmd 1d - set volume and ADSR preset 2
0e39: cd 01     mov   x,#$01
0e3b: 2f 0a     bra   $0e47
; vcmd 1e - set volume and ADSR preset 3
0e3d: cd 02     mov   x,#$02
0e3f: 2f 06     bra   $0e47
; vcmd 1f - set volume and ADSR preset 4
0e41: cd 03     mov   x,#$03
0e43: 2f 02     bra   $0e47
; vcmd 20 - set volume and ADSR preset 5
0e45: cd 04     mov   x,#$04
0e47: 8d 01     mov   y,#$01
0e49: f7 01     mov   a,($01)+y
0e4b: d4 10     mov   $10+x,a
0e4d: fc        inc   y
0e4e: f7 01     mov   a,($01)+y
0e50: d4 15     mov   $15+x,a
0e52: fc        inc   y
0e53: f7 01     mov   a,($01)+y
0e55: d4 1a     mov   $1a+x,a
0e57: fc        inc   y
0e58: f7 01     mov   a,($01)+y
0e5a: d4 1f     mov   $1f+x,a
0e5c: ce        pop   x
0e5d: e8 01     mov   a,#$01
0e5f: d4 3c     mov   $3c+x,a
0e61: e8 00     mov   a,#$00
0e63: d4 2c     mov   $2c+x,a
0e65: 8f 05 01  mov   $01,#$05
0e68: 5f ce 0a  jmp   $0ace

; vcmd 21 - load volume and ADSR preset 1
0e6b: cd 00     mov   x,#$00
0e6d: 2f 0e     bra   $0e7d
; vcmd 22 - load volume and ADSR preset 2
0e6f: cd 01     mov   x,#$01
0e71: 2f 0a     bra   $0e7d
; vcmd 23 - load volume and ADSR preset 3
0e73: cd 02     mov   x,#$02
0e75: 2f 06     bra   $0e7d
; vcmd 24 - load volume and ADSR preset 4
0e77: cd 03     mov   x,#$03
0e79: 2f 02     bra   $0e7d
; vcmd 25 - load volume and ADSR preset 5
0e7b: cd 04     mov   x,#$04
0e7d: ae        pop   a
0e7e: 2d        push  a
0e7f: 9f        xcn   a
0e80: c4 01     mov   $01,a
0e82: c4 f2     mov   $f2,a
0e84: f4 10     mov   a,$10+x
0e86: c4 f3     mov   $f3,a             ; VOL(L)
0e88: ab f2     inc   $f2
0e8a: f4 15     mov   a,$15+x
0e8c: c4 f3     mov   $f3,a             ; VOL(R)
0e8e: e4 01     mov   a,$01
0e90: 08 05     or    a,#$05
0e92: c4 f2     mov   $f2,a
0e94: f4 1a     mov   a,$1a+x
0e96: c4 f3     mov   $f3,a             ; ADSR(1)
0e98: ab f2     inc   $f2
0e9a: f4 1f     mov   a,$1f+x
0e9c: c4 f3     mov   $f3,a             ; ADSR(2)
0e9e: ce        pop   x
0e9f: 5f 18 0e  jmp   $0e18

; vcmd 26 - pitch slide down (simpler)
0ea2: ce        pop   x
0ea3: f5 50 01  mov   a,$0150+x
0ea6: 08 01     or    a,#$01
0ea8: d5 50 01  mov   $0150+x,a
0eab: 8d 01     mov   y,#$01
0ead: db 3c     mov   $3c+x,y
0eaf: e8 00     mov   a,#$00
0eb1: d4 2c     mov   $2c+x,a
0eb3: f7 01     mov   a,($01)+y
0eb5: d5 b0 01  mov   $01b0+x,a
0eb8: fc        inc   y
0eb9: f7 01     mov   a,($01)+y
0ebb: d5 c0 01  mov   $01c0+x,a
0ebe: fc        inc   y
0ebf: f7 01     mov   a,($01)+y
0ec1: d5 e0 01  mov   $01e0+x,a
0ec4: 1c        asl   a
0ec5: d5 d0 01  mov   $01d0+x,a
0ec8: fc        inc   y
0ec9: f7 01     mov   a,($01)+y
0ecb: 48 ff     eor   a,#$ff
0ecd: bc        inc   a
0ece: d5 70 01  mov   $0170+x,a
0ed1: 8f 05 01  mov   $01,#$05
0ed4: 5f ce 0a  jmp   $0ace

; vcmd 27 - pitch slide up (simpler)
0ed7: ce        pop   x
0ed8: f5 50 01  mov   a,$0150+x
0edb: 08 01     or    a,#$01
0edd: d5 50 01  mov   $0150+x,a
0ee0: 8d 01     mov   y,#$01
0ee2: db 3c     mov   $3c+x,y
0ee4: e8 00     mov   a,#$00
0ee6: d4 2c     mov   $2c+x,a
0ee8: f7 01     mov   a,($01)+y
0eea: d5 b0 01  mov   $01b0+x,a
0eed: fc        inc   y
0eee: f7 01     mov   a,($01)+y
0ef0: d5 c0 01  mov   $01c0+x,a
0ef3: fc        inc   y
0ef4: f7 01     mov   a,($01)+y
0ef6: d5 e0 01  mov   $01e0+x,a
0ef9: 1c        asl   a
0efa: d5 d0 01  mov   $01d0+x,a
0efd: fc        inc   y
0efe: f7 01     mov   a,($01)+y
0f00: d5 70 01  mov   $0170+x,a
0f03: 8f 05 01  mov   $01,#$05
0f06: 5f ce 0a  jmp   $0ace

; vcmd 28 - instrument and volume
0f09: ce        pop   x
0f0a: 8d 01     mov   y,#$01
0f0c: db 3c     mov   $3c+x,y
0f0e: e8 00     mov   a,#$00
0f10: d4 6c     mov   $6c+x,a
0f12: d4 2c     mov   $2c+x,a
0f14: 4d        push  x
0f15: f7 01     mov   a,($01)+y
0f17: 5d        mov   x,a
0f18: f5 e0 04  mov   a,$04e0+x
0f1b: ce        pop   x
0f1c: d5 44 02  mov   $0244+x,a
0f1f: fc        inc   y
0f20: e4 25     mov   a,$25
0f22: f0 13     beq   $0f37
; mono
0f24: f7 01     mov   a,($01)+y
0f26: fc        inc   y
0f27: 60        clrc
0f28: 97 01     adc   a,($01)+y
0f2a: 7c        ror   a
0f2b: d5 54 02  mov   $0254+x,a
0f2e: d5 64 02  mov   $0264+x,a
0f31: 8f 04 01  mov   $01,#$04
0f34: 5f ce 0a  jmp   $0ace
; stereo
0f37: f7 01     mov   a,($01)+y
0f39: d5 54 02  mov   $0254+x,a
0f3c: fc        inc   y
0f3d: f7 01     mov   a,($01)+y
0f3f: d5 64 02  mov   $0264+x,a
0f42: 8f 04 01  mov   $01,#$04
0f45: 5f ce 0a  jmp   $0ace

; vcmd 29 - fade-out
0f48: ce        pop   x
0f49: 8d 01     mov   y,#$01
0f4b: db 3c     mov   $3c+x,y
0f4d: e8 00     mov   a,#$00
0f4f: d4 2c     mov   $2c+x,a
0f51: f7 01     mov   a,($01)+y
0f53: c4 0d     mov   $0d,a             ; arg1 - fade amount
0f55: 8f 02 01  mov   $01,#$02
0f58: 5f ce 0a  jmp   $0ace

; vcmd 2a - set timer0 freq
0f5b: ce        pop   x
0f5c: 8d 00     mov   y,#$00
0f5e: db 2c     mov   $2c+x,y
0f60: fc        inc   y
0f61: db 3c     mov   $3c+x,y
0f63: f7 01     mov   a,($01)+y
0f65: c4 ec     mov   $ec,a
0f67: 8f 02 01  mov   $01,#$02
0f6a: 5f ce 0a  jmp   $0ace

; vcmd 2b - long duration on
0f6d: ce        pop   x
0f6e: e8 01     mov   a,#$01
0f70: d5 90 01  mov   $0190+x,a
0f73: c4 01     mov   $01,a
0f75: d4 3c     mov   $3c+x,a
0f77: 9c        dec   a
0f78: d4 2c     mov   $2c+x,a
0f7a: 5f ce 0a  jmp   $0ace

; vcmd 2c - long duration off
0f7d: ce        pop   x
0f7e: e8 01     mov   a,#$01
0f80: d4 3c     mov   $3c+x,a
0f82: c4 01     mov   $01,a
0f84: 9c        dec   a
0f85: d4 2c     mov   $2c+x,a
0f87: d5 90 01  mov   $0190+x,a
0f8a: 5f ce 0a  jmp   $0ace

; vcmd 2d - conditional jump
0f8d: ce        pop   x
0f8e: 8d 01     mov   y,#$01
0f90: db 3c     mov   $3c+x,y
0f92: e8 00     mov   a,#$00
0f94: d4 2c     mov   $2c+x,a
0f96: e4 ed     mov   a,$ed
0f98: 1c        asl   a
0f99: bc        inc   a
0f9a: fd        mov   y,a
0f9b: f7 01     mov   a,($01)+y
0f9d: d4 4c     mov   $4c+x,a
0f9f: fc        inc   y
0fa0: f7 01     mov   a,($01)+y
0fa2: d4 5c     mov   $5c+x,a           ; goto (word) arg[$ed * 2]
0fa4: e8 01     mov   a,#$01
0fa6: 6f        ret

; vcmd 2e - set jump condition
0fa7: ce        pop   x
0fa8: 8d 00     mov   y,#$00
0faa: db 2c     mov   $2c+x,y
0fac: fc        inc   y
0fad: db 3c     mov   $3c+x,y
0faf: f7 01     mov   a,($01)+y
0fb1: c4 ed     mov   $ed,a             ; $ed = arg1
0fb3: 8f 02 01  mov   $01,#$02
0fb6: 5f ce 0a  jmp   $0ace

; vcmd 2f - tremolo
; note: tremolo will not reset the volume at the beginning of note
0fb9: ce        pop   x
0fba: f5 50 01  mov   a,$0150+x
0fbd: 08 04     or    a,#$04
0fbf: d5 50 01  mov   $0150+x,a
0fc2: 8d 01     mov   y,#$01
0fc4: db 3c     mov   $3c+x,y
0fc6: e8 00     mov   a,#$00
0fc8: d4 2c     mov   $2c+x,a
0fca: f7 01     mov   a,($01)+y
0fcc: d5 f4 02  mov   $02f4+x,a         ; arg1 - tremolo rate/depth (total steps, >= 2)
0fcf: fc        inc   y
0fd0: f7 01     mov   a,($01)+y
0fd2: d5 c4 02  mov   $02c4+x,a         ; arg2 - tremolo rate (ticks per step)
0fd5: fc        inc   y
0fd6: f7 01     mov   a,($01)+y
0fd8: d5 d4 02  mov   $02d4+x,a         ; arg3 - tremolo depth (volume reg step)
0fdb: fc        inc   y
0fdc: f7 01     mov   a,($01)+y
0fde: d5 04 03  mov   $0304+x,a         ; arg4 - tremolo delay (ticks)
0fe1: f5 54 02  mov   a,$0254+x
0fe4: d5 14 03  mov   $0314+x,a
0fe7: f5 64 02  mov   a,$0264+x
0fea: d5 24 03  mov   $0324+x,a
0fed: 8f 05 01  mov   $01,#$05
0ff0: 5f ce 0a  jmp   $0ace

; vcmd 30 - tremolo off
0ff3: ce        pop   x
0ff4: f5 50 01  mov   a,$0150+x
0ff7: 28 fb     and   a,#$fb
0ff9: d5 50 01  mov   $0150+x,a
0ffc: 5f 44 0c  jmp   $0c44

0fff: db $01,$02,$04,$08,$10,$20,$40,$80
1007: db $01,$02,$04,$08,$10,$20,$40,$80

100f: dw $0a69  ; 00 - end of track
1011: dw $0ab5  ; 01 - set instrument
1013: dw $0ade  ; 02 - set L/R volume
1015: dw $0b0f  ; 03 - goto
1017: dw $0b24  ; 04 - call subroutine
1019: dw $0b59  ; 05 - end subroutine
101b: dw $0b9f  ; 06 - default duration on
101d: dw $0bc4  ; 07 - default duration off
101f: dw $0bd0  ; 08 - pitch slide up
1021: dw $0c04  ; 09 - pitch slide down
1023: dw $0c3b  ; 0a - pitch slide off
1025: dw $0c51  ; 0b - set tempo
1027: dw $0c66  ; 0c - add tempo
1029: dw $0c73  ; 0d - vibrato (short)
102b: dw $0ca0  ; 0e - vibrato off
102d: dw $0cac  ; 0f - vibrato
102f: dw $0cda  ; 10 - set ADSR envelope
1031: dw $0cf4  ; 11 - master volume L/R
1033: dw $0d2d  ; 12 - detune
1035: dw $0d40  ; 13 - transpose
1037: dw $0d54  ; 14 - transpose (relative)
1039: dw $0d6c  ; 15 - echo param
103b: dw $0d9b  ; 16 - voice echo on
103d: dw $0db6  ; 17 - voice echo off
103f: dw $0dd3  ; 18 - set echo filter
1041: dw $0df3  ; 19 - set noise clock
1043: dw $0e0d  ; 1a - noise on
1045: dw $0e25  ; 1b - noise off
1047: dw $0e35  ; 1c - set volume and ADSR preset 1
1049: dw $0e39  ; 1d - set volume and ADSR preset 2
104b: dw $0e3d  ; 1e - set volume and ADSR preset 3
104d: dw $0e41  ; 1f - set volume and ADSR preset 4
104f: dw $0e45  ; 20 - set volume and ADSR preset 5
1051: dw $0e6b  ; 21 - load volume and ADSR preset 1
1053: dw $0e6f  ; 22 - load volume and ADSR preset 2
1055: dw $0e73  ; 23 - load volume and ADSR preset 3
1057: dw $0e77  ; 24 - load volume and ADSR preset 4
1059: dw $0e7b  ; 25 - load volume and ADSR preset 5
105b: dw $0ea2  ; 26 - pitch slide down (simpler)
105d: dw $0ed7  ; 27 - pitch slide up (simpler)
105f: dw $0f09  ; 28 - instrument and volume
1061: dw $0f48  ; 29 - fade-out
1063: dw $0f5b  ; 2a - set timer0 freq
1065: dw $0f6d  ; 2b - long duration on
1067: dw $0f7d  ; 2c - long duration off
1069: dw $0f8d  ; 2d - conditional jump
106b: dw $0fa7  ; 2e - set jump condition
106d: dw $0fb9  ; 2f - tremolo
106f: dw $0ff3  ; 30 - tremolo off

; initialize
1071: e8 00     mov   a,#$00
1073: 8f 6c f2  mov   $f2,#$6c
1076: 8f e0 f3  mov   $f3,#$e0          ; FLG
1079: e8 00     mov   a,#$00
107b: 8f 2c f2  mov   $f2,#$2c
107e: c5 32 02  mov   $0232,a
1081: c4 f3     mov   $f3,a             ; EVOL(L)
1083: 8f 3c f2  mov   $f2,#$3c
1086: c5 33 02  mov   $0233,a
1089: c4 f3     mov   $f3,a             ; EVOL(R)
108b: 8f 4c f2  mov   $f2,#$4c
108e: c4 f3     mov   $f3,a             ; KON
1090: 8f 5c f2  mov   $f2,#$5c
1093: 8f ff f3  mov   $f3,#$ff          ; KOF
1096: 8f 2d f2  mov   $f2,#$2d
1099: c4 f3     mov   $f3,a             ; PMON
109b: 8f 3d f2  mov   $f2,#$3d
109e: c4 f3     mov   $f3,a             ; NON
10a0: 8f 4d f2  mov   $f2,#$4d
10a3: c4 f3     mov   $f3,a             ; EON
10a5: 8f 7d f2  mov   $f2,#$7d
10a8: 8f 04 f3  mov   $f3,#$04          ; EDL
10ab: 8f 6d f2  mov   $f2,#$6d
10ae: 8f df f3  mov   $f3,#$df          ; ESA
10b1: 8f 0d f2  mov   $f2,#$0d
10b4: c4 f3     mov   $f3,a             ; EFB
10b6: 8d 00     mov   y,#$00
10b8: cb 01     mov   $01,y
10ba: 8f df 02  mov   $02,#$df
; zero echo memory ($df00-feff)
10bd: e8 00     mov   a,#$00
10bf: d7 01     mov   ($01)+y,a
10c1: fc        inc   y
10c2: d0 fb     bne   $10bf
10c4: e4 02     mov   a,$02
10c6: bc        inc   a
10c7: c4 02     mov   $02,a
10c9: 68 ff     cmp   a,#$ff
10cb: d0 f0     bne   $10bd
;
10cd: e8 7f     mov   a,#$7f
10cf: c5 30 02  mov   $0230,a
10d2: c5 31 02  mov   $0231,a
10d5: 8f 0c f2  mov   $f2,#$0c
10d8: c4 f3     mov   $f3,a             ; MVOL(L)
10da: 8f 1c f2  mov   $f2,#$1c
10dd: c4 f3     mov   $f3,a             ; MVOL(R)
10df: 8f 5d f2  mov   $f2,#$5d
10e2: 8f 32 f3  mov   $f3,#$32          ; DIR
10e5: cd 00     mov   x,#$00
10e7: 8d 08     mov   y,#$08
10e9: 8f 00 f2  mov   $f2,#$00
10ec: e8 7f     mov   a,#$7f
10ee: c4 f3     mov   $f3,a             ; VOL(L)
10f0: ab f2     inc   $f2
10f2: c4 f3     mov   $f3,a             ; VOL(R)
10f4: 60        clrc
10f5: 98 04 f2  adc   $f2,#$04
10f8: e8 00     mov   a,#$00
10fa: c4 f3     mov   $f3,a             ; ADSR(1)
10fc: ab f2     inc   $f2
10fe: c4 f3     mov   $f3,a             ; ADSR(2)
1100: ab f2     inc   $f2
1102: 8f ff f3  mov   $f3,#$ff          ; GAIN
1105: 60        clrc
1106: 98 09 f2  adc   $f2,#$09
1109: dc        dec   y
110a: d0 e0     bne   $10ec             ; for 8 voices
110c: e8 3c     mov   a,#$3c
110e: c4 ec     mov   $ec,a             ; set timer 0 freq shadow
1110: e8 20     mov   a,#$20
1112: c4 0f     mov   $0f,a
1114: 8f 08 01  mov   $01,#$08
1117: cd 00     mov   x,#$00
1119: 8d 00     mov   y,#$00
111b: cb 0b     mov   $0b,y
111d: cb 0d     mov   $0d,y
111f: cb 0e     mov   $0e,y
1121: cb 02     mov   $02,y
1123: e8 01     mov   a,#$01
1125: d4 3c     mov   $3c+x,a
1127: d5 10 01  mov   $0110+x,a
112a: f6 a0 12  mov   a,$12a0+y
112d: d4 4c     mov   $4c+x,a
112f: f6 a1 12  mov   a,$12a1+y
1132: d4 5c     mov   $5c+x,a           ; set pointer for each track
1134: e4 02     mov   a,$02
1136: d4 dc     mov   $dc+x,a
1138: e8 00     mov   a,#$00
113a: d5 90 01  mov   $0190+x,a
113d: d4 2c     mov   $2c+x,a
113f: d5 20 01  mov   $0120+x,a
1142: d5 30 01  mov   $0130+x,a
1145: d5 50 01  mov   $0150+x,a
1148: d4 6c     mov   $6c+x,a
114a: d5 40 01  mov   $0140+x,a
114d: d5 a0 01  mov   $01a0+x,a
1150: 3d        inc   x
1151: fc        inc   y
1152: fc        inc   y
1153: 60        clrc
1154: 98 08 02  adc   $02,#$08
1157: 8b 01     dec   $01
1159: d0 c8     bne   $1123
115b: f6 a0 12  mov   a,$12a0+y
115e: c4 27     mov   $27,a
1160: fc        inc   y
1161: f6 a0 12  mov   a,$12a0+y
1164: c4 2a     mov   $2a,a
1166: e8 00     mov   a,#$00
1168: c4 26     mov   $26,a
116a: c4 29     mov   $29,a
116c: 8f 6c f2  mov   $f2,#$6c
116f: 8f 20 f3  mov   $f3,#$20          ; FLG
1172: 6f        ret

1173: 1c        asl   a
1174: 2d        push  a
1175: e8 01     mov   a,#$01
1177: d5 a0 01  mov   $01a0+x,a
117a: 8f 3d f2  mov   $f2,#$3d
117d: f5 ff 0f  mov   a,$0fff+x
1180: 48 ff     eor   a,#$ff
1182: 24 f3     and   a,$f3
1184: c4 f3     mov   $f3,a             ; NON
1186: 7d        mov   a,x
1187: 60        clrc
1188: 88 08     adc   a,#$08
118a: 5d        mov   x,a
118b: 1c        asl   a
118c: 1c        asl   a
118d: 1c        asl   a
118e: d4 dc     mov   $dc+x,a
1190: e8 01     mov   a,#$01
1192: d5 10 01  mov   $0110+x,a
1195: e8 00     mov   a,#$00
1197: d5 20 01  mov   $0120+x,a
119a: d5 30 01  mov   $0130+x,a
119d: d4 2c     mov   $2c+x,a
119f: d5 90 01  mov   $0190+x,a
11a2: d5 a0 01  mov   $01a0+x,a
11a5: d5 50 01  mov   $0150+x,a
11a8: d5 40 01  mov   $0140+x,a
11ab: d4 6c     mov   $6c+x,a
11ad: d5 74 02  mov   $0274+x,a
11b0: d5 84 02  mov   $0284+x,a
11b3: d5 94 02  mov   $0294+x,a
11b6: e8 7f     mov   a,#$7f
11b8: d5 54 02  mov   $0254+x,a
11bb: d5 64 02  mov   $0264+x,a
11be: d5 14 03  mov   $0314+x,a
11c1: d5 24 03  mov   $0324+x,a
11c4: ee        pop   y
11c5: f6 80 23  mov   a,$2380+y
11c8: d4 4c     mov   $4c+x,a
11ca: fc        inc   y
11cb: f6 80 23  mov   a,$2380+y
11ce: d4 5c     mov   $5c+x,a           ; set pointer for each track
11d0: e8 02     mov   a,#$02
11d2: d4 3c     mov   $3c+x,a
11d4: 8f 4d f2  mov   $f2,#$4d
11d7: f5 ff 0f  mov   a,$0fff+x
11da: 48 ff     eor   a,#$ff
11dc: 24 f3     and   a,$f3
11de: c4 f3     mov   $f3,a             ; EON
11e0: 6f        ret

11e1: dw $0000
11e3: dw $0200
11e5: dw $021e
11e7: dw $023f
11e9: dw $0261
11eb: dw $0285
11ed: dw $02ab
11ef: dw $02d4
11f1: dw $02ff
11f3: dw $032d
11f5: dw $035d
11f7: dw $0390
11f9: dw $03c7
11fb: dw $0400
11fd: dw $043d
11ff: dw $047d
1201: dw $04c2
1203: dw $050a
1205: dw $0557
1207: dw $05a8
1209: dw $05fe
120b: dw $065a
120d: dw $06ba
120f: dw $0721
1211: dw $078d
1213: dw $0800
1215: dw $087a
1217: dw $08fb
1219: dw $0984
121b: dw $0a14
121d: dw $0aae
121f: dw $0b50
1221: dw $0bfd
1223: dw $0cb3
1225: dw $0d74
1227: dw $0e41
1229: dw $0f1a
122b: dw $1000
122d: dw $10f4
122f: dw $11f6
1231: dw $1307
1233: dw $1429
1235: dw $155c
1237: dw $16a1
1239: dw $17f9
123b: dw $1966
123d: dw $1ae9
123f: dw $1c82
1241: dw $1e34
1243: dw $2000
1245: dw $21e7
1247: dw $23eb
1249: dw $260e
124b: dw $2851
124d: dw $2ab7
124f: dw $2d41
1251: dw $2ff2
1253: dw $32cc
1255: dw $35d1
1257: dw $3904
1259: dw $3c68
125b: dw $3fff
