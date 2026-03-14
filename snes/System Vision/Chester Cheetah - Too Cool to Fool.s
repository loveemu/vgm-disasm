0530: 20        clrp
0531: cd 7f     mov   x,#$7f
0533: bd        mov   sp,x
0534: e8 00     mov   a,#$00		; clear registers
0536: cd 00     mov   x,#$00
0538: 8d 00     mov   y,#$00
053a: 3f 93 07  call  $0793		; clear RAM
053d: 3f c4 07  call  $07c4
0540: 3f 4c 13  call  $134c
0543: 3f b0 07  call  $07b0
0546: 8f ee f4  mov   $f4,#$eeca	; set communication ports
0549: 78 ff f6  cmp   $f6,#$ff
054c: d0 fb     bne   $0549
054e: 8f 01 f1  mov   $f1,#$01
0551: 3f 54 13  call  $1354
0554: 90 57     bcc   $05ad
0556: 5d        mov   x,a
0557: 28 f0     and   a,#$f0
0559: 68 10     cmp   a,#$10
055b: f0 2a     beq   $0587
055d: 68 20     cmp   a,#$20
055f: f0 2e     beq   $058f
0561: 68 30     cmp   a,#$30
0563: f0 32     beq   $0597
0565: 68 40     cmp   a,#$40
0567: f0 33     beq   $059c
0569: 68 50     cmp   a,#$50
056b: f0 2f     beq   $059c
056d: 68 60     cmp   a,#$60
056f: f0 2b     beq   $059c
0571: 68 70     cmp   a,#$70
0573: f0 27     beq   $059c
0575: 68 80     cmp   a,#$80
0577: f0 23     beq   $059c
0579: 68 90     cmp   a,#$90
057b: f0 1f     beq   $059c
057d: 68 a0     cmp   a,#$a0
057f: f0 1b     beq   $059c
0581: 68 f0     cmp   a,#$f0
0583: f0 20     beq   $05a5
0585: 2f 26     bra   $05ad
0587: 7d        mov   a,x
0588: 28 0f     and   a,#$0f
058a: 3f 90 10  call  $1090
058d: 2f 1e     bra   $05ad
058f: 7d        mov   a,x
0590: 28 0f     and   a,#$0f
0592: 3f 55 11  call  $1155
0595: 2f 16     bra   $05ad
0597: 3f c9 11  call  $11c9
059a: 2f 11     bra   $05ad
059c: 7d        mov   a,x
059d: 80        setc
059e: a8 40     sbc   a,#$40
05a0: 3f 02 12  call  $1202
05a3: 2f 08     bra   $05ad
05a5: 7d        mov   a,x
05a6: 28 0f     and   a,#$0f
05a8: 3f 9c 11  call  $119c
05ab: 2f 00     bra   $05ad
05ad: e8 00     mov   a,#$00
05af: f8 fd     mov   x,$fd
05b1: d0 02     bne   $05b5
05b3: 2f 9c     bra   $0551
05b5: e8 00     mov   a,#$00
05b7: c4 33     mov   $33,a
05b9: e4 30     mov   a,$30
05bb: c4 fa     mov   $fa,a
05bd: 3f df 08  call  $08df
05c0: e4 33     mov   a,$33
05c2: 5d        mov   x,a
05c3: f4 00     mov   a,$00+x
05c5: f0 5a     beq   $0621
05c7: 28 0f     and   a,#$0f
05c9: 68 01     cmp   a,#$01
05cb: d0 54     bne   $0621
05cd: 7d        mov   a,x
05ce: 1c        asl   a
05cf: 5d        mov   x,a
05d0: f5 59 00  mov   a,$0059+x
05d3: c4 40     mov   $40,a
05d5: 3d        inc   x
05d6: f5 59 00  mov   a,$0059+x
05d9: c4 41     mov   $41,a
05db: 8d 04     mov   y,#$04
05dd: f7 40     mov   a,($40)+y
05df: c4 44     mov   $44,a
05e1: 8d 05     mov   y,#$05
05e3: f7 40     mov   a,($40)+y
05e5: c4 45     mov   $45,a
05e7: 8d 00     mov   y,#$00
05e9: f7 40     mov   a,($40)+y
05eb: 68 00     cmp   a,#$00
05ed: f0 10     beq   $05ff
05ef: 9c        dec   a
05f0: d7 40     mov   ($40)+y,a
05f2: e4 44     mov   a,$44
05f4: 8d 04     mov   y,#$04
05f6: d7 40     mov   ($40)+y,a
05f8: e4 45     mov   a,$45
05fa: fc        inc   y
05fb: d7 40     mov   ($40)+y,a
05fd: 2f 22     bra   $0621
05ff: cd 00     mov   x,#$00
0601: e7 44     mov   a,($44+x)
0603: 3a 44     incw  $44
0605: 68 80     cmp   a,#$80		; check if next byte is a vcmd
0607: 10 05     bpl   $060e
0609: 3f 45 0d  call  $0d45
060c: 2f d9     bra   $05e7
060e: 60        clrc			; dispatch current vcmd from table
060f: 28 7f     and   a,#$7f
0611: 1c        asl   a
0612: 5d        mov   x,a
0613: 3f 1e 06  call  $061e
0616: f8 33     mov   x,$33
0618: f4 00     mov   a,$00+x
061a: f0 05     beq   $0621
061c: 2f c9     bra   $05e7
061e: 1f 68 0a  jmp   ($0a68+x)

0621: ab 33     inc   $33
0623: 78 08 33  cmp   $33,#$08
0626: d0 98     bne   $05c0
0628: e0        clrv
0629: e8 00     mov   a,#$00
062b: c4 33     mov   $33,a
062d: e4 33     mov   a,$33
062f: 5d        mov   x,a
0630: f4 00     mov   a,$00+x
0632: f0 4c     beq   $0680
0634: 28 0f     and   a,#$0f
0636: 68 01     cmp   a,#$01
0638: d0 46     bne   $0680
063a: 7d        mov   a,x
063b: 1c        asl   a
063c: 5d        mov   x,a
063d: f5 59 00  mov   a,$0059+x
0640: c4 40     mov   $40,a
0642: 3d        inc   x
0643: f5 59 00  mov   a,$0059+x
0646: c4 41     mov   $41,a
0648: 8d 24     mov   y,#$24
064a: f7 40     mov   a,($40)+y
064c: 28 30     and   a,#$30
064e: f0 30     beq   $0680
0650: 3f 05 07  call  $0705
0653: 90 28     bcc   $067d
0655: 3f f4 06  call  $06f4
0658: 8d 24     mov   y,#$24
065a: f7 40     mov   a,($40)+y
065c: 2d        push  a
065d: 28 08     and   a,#$08
065f: d0 1b     bne   $067c
0661: e8 00     mov   a,#$00
0663: 8d 00     mov   y,#$00
0665: 3f fd 06  call  $06fd
0668: e8 01     mov   a,#$01
066a: 8d 00     mov   y,#$00
066c: 3f fd 06  call  $06fd
066f: ae        pop   a
0670: 28 10     and   a,#$10
0672: d0 09     bne   $067d
0674: 3f 0d 07  call  $070d
0677: 3f b6 0d  call  $0db6
067a: 2f 01     bra   $067d
067c: ae        pop   a
067d: 3f ad 0d  call  $0dad
0680: ab 33     inc   $33
0682: 78 08 33  cmp   $33,#$08
0685: d0 a6     bne   $062d
0687: e8 00     mov   a,#$00
0689: c4 33     mov   $33,a
068b: e4 33     mov   a,$33
068d: 5d        mov   x,a
068e: f4 00     mov   a,$00+x
0690: f0 58     beq   $06ea
0692: 28 0f     and   a,#$0f
0694: 68 01     cmp   a,#$01
0696: d0 52     bne   $06ea
0698: 7d        mov   a,x
0699: 1c        asl   a
069a: 5d        mov   x,a
069b: f5 59 00  mov   a,$0059+x
069e: c4 40     mov   $40,a
06a0: 3d        inc   x
06a1: f5 59 00  mov   a,$0059+x
06a4: c4 41     mov   $41,a
06a6: 3f 05 07  call  $0705
06a9: 90 3f     bcc   $06ea
06ab: e8 00     mov   a,#$00
06ad: c4 38     mov   $38,a
06af: c4 39     mov   $39,a
06b1: c4 3a     mov   $3a,a
06b3: 3f 6b 09  call  $096b
06b6: 90 02     bcc   $06ba
06b8: ab 3a     inc   $3a
06ba: 3f e5 09  call  $09e5
06bd: 90 08     bcc   $06c7
06bf: 8d 17     mov   y,#$17
06c1: f7 40     mov   a,($40)+y
06c3: c4 38     mov   $38,a
06c5: ab 3a     inc   $3a
06c7: e4 3a     mov   a,$3a
06c9: f0 1f     beq   $06ea
06cb: 3f f4 06  call  $06f4
06ce: 8d 0e     mov   y,#$0e
06d0: f7 40     mov   a,($40)+y
06d2: c4 36     mov   $36,a
06d4: 8d 0f     mov   y,#$0f
06d6: f7 40     mov   a,($40)+y
06d8: c4 37     mov   $37,a
06da: 60        clrc
06db: e4 36     mov   a,$36
06dd: 84 38     adc   a,$38
06df: c4 36     mov   $36,a
06e1: e4 37     mov   a,$37
06e3: 84 39     adc   a,$39
06e5: c4 37     mov   $37,a
06e7: 3f 84 07  call  $0784
06ea: ab 33     inc   $33
06ec: 78 08 33  cmp   $33,#$08
06ef: d0 9a     bne   $068b
06f1: 5f 51 05  jmp   $0551

06f4: e4 34     mov   a,$34
06f6: 1c        asl   a
06f7: 1c        asl   a
06f8: 1c        asl   a
06f9: 1c        asl   a
06fa: c4 49     mov   $49,a
06fc: 6f        ret

06fd: 60        clrc
06fe: 84 49     adc   a,$49
0700: c4 f2     mov   $f2,a
0702: cb f3     mov   $f3,y
0704: 6f        ret

0705: f8 33     mov   x,$33
0707: f4 10     mov   a,$10+x
0709: c4 34     mov   $34,a
070b: 80        setc
070c: 6f        ret

070d: 8d 0e     mov   y,#$0e
070f: f7 40     mov   a,($40)+y
0711: c4 36     mov   $36,a
0713: 8d 0f     mov   y,#$0f
0715: f7 40     mov   a,($40)+y
0717: c4 37     mov   $37,a
0719: 3f 84 07  call  $0784
071c: 8d 20     mov   y,#$20
071e: f7 40     mov   a,($40)+y
0720: fd        mov   y,a
0721: e8 04     mov   a,#$04
0723: 3f fd 06  call  $06fd
0726: 8d 21     mov   y,#$21
0728: f7 40     mov   a,($40)+y
072a: fd        mov   y,a
072b: e8 05     mov   a,#$05
072d: 3f fd 06  call  $06fd
0730: 8d 22     mov   y,#$22
0732: f7 40     mov   a,($40)+y
0734: fd        mov   y,a
0735: e8 06     mov   a,#$06
0737: 3f fd 06  call  $06fd
073a: 8d 23     mov   y,#$23
073c: f7 40     mov   a,($40)+y
073e: fd        mov   y,a
073f: e8 07     mov   a,#$07
0741: 3f fd 06  call  $06fd
0744: 8d 09     mov   y,#$09
0746: f7 40     mov   a,($40)+y
0748: c4 36     mov   $36,a
074a: 3f 4e 07  call  $074e
074d: 6f        ret

074e: 8d 27     mov   y,#$27
0750: f7 40     mov   a,($40)+y
0752: 28 0f     and   a,#$0f
0754: 1c        asl   a
0755: 1c        asl   a
0756: 1c        asl   a
0757: 1c        asl   a
0758: c4 38     mov   $38,a
075a: 8d 0a     mov   y,#$0a
075c: f7 40     mov   a,($40)+y
075e: c4 3a     mov   $3a,a
0760: eb 38     mov   y,$38
0762: cf        mul   ya
0763: e4 3a     mov   a,$3a
0765: cb 38     mov   $38,y
0767: 80        setc
0768: a4 38     sbc   a,$38
076a: c4 38     mov   $38,a
076c: 3f 32 09  call  $0932
076f: fd        mov   y,a
0770: e8 00     mov   a,#$00
0772: 3f fd 06  call  $06fd
0775: e4 3a     mov   a,$3a
0777: 80        setc
0778: a4 38     sbc   a,$38
077a: 3f 32 09  call  $0932
077d: fd        mov   y,a
077e: e8 01     mov   a,#$01
0780: 3f fd 06  call  $06fd
0783: 6f        ret

0784: eb 36     mov   y,$36
0786: e8 02     mov   a,#$02
0788: 3f fd 06  call  $06fd
078b: eb 37     mov   y,$37
078d: e8 03     mov   a,#$03
078f: 3f fd 06  call  $06fd
0792: 6f        ret

0793: e8 00     mov   a,#$00
0795: 5d        mov   x,a
0796: af        mov   (x)+,a
0797: c8 59     cmp   x,#$59
0799: d0 fb     bne   $0796
079b: e8 00     mov   a,#$00
079d: c5 20 04  mov   $0420,a
07a0: c5 21 04  mov   $0421,a
07a3: c5 22 04  mov   $0422,a
07a6: c5 23 04  mov   $0423,a
07a9: c5 24 04  mov   $0424,a
07ac: c5 25 04  mov   $0425,a
07af: 6f        ret

07b0: 8f 30 f1  mov   $f1,#$30
07b3: e8 00     mov   a,#$00
07b5: c4 f1     mov   $f1,a
07b7: e8 00     mov   a,#$00
07b9: c4 fa     mov   $fa,a
07bb: c4 fb     mov   $fb,a
07bd: c4 fc     mov   $fc,a
07bf: e8 50     mov   a,#$50
07c1: c4 30     mov   $30,a
07c3: 6f        ret

07c4: e8 6d     mov   a,#$6d
07c6: 8d f8     mov   y,#$f8
07c8: 3f 00 07  call  $0700
07cb: e8 3d     mov   a,#$3d
07cd: 8d 00     mov   y,#$00
07cf: 3f 00 07  call  $0700
07d2: e8 4d     mov   a,#$4d
07d4: 8d 00     mov   y,#$00
07d6: 3f 00 07  call  $0700
07d9: e8 7d     mov   a,#$7d
07db: 8d 00     mov   y,#$00
07dd: 3f 00 07  call  $0700
07e0: e8 0d     mov   a,#$0d
07e2: 8d 00     mov   y,#$00
07e4: 3f 00 07  call  $0700
07e7: e8 2d     mov   a,#$2d
07e9: 8d 00     mov   y,#$00
07eb: 3f 00 07  call  $0700
07ee: e8 6c     mov   a,#$6c
07f0: 8d 20     mov   y,#$20
07f2: 3f 00 07  call  $0700
07f5: e8 0c     mov   a,#$0c
07f7: 8d 70     mov   y,#$70
07f9: 3f 00 07  call  $0700
07fc: e8 1c     mov   a,#$1c
07fe: 8d 70     mov   y,#$70
0800: 3f 00 07  call  $0700
0803: e8 2c     mov   a,#$2c
0805: 8d 00     mov   y,#$00
0807: 3f 00 07  call  $0700
080a: e8 3c     mov   a,#$3c
080c: 8d 00     mov   y,#$00
080e: 3f 00 07  call  $0700
0811: e8 0f     mov   a,#$0f
0813: 8d 7f     mov   y,#$7f
0815: 3f 00 07  call  $0700
0818: e8 1f     mov   a,#$1f
081a: 8d 00     mov   y,#$00
081c: 3f 00 07  call  $0700
081f: e8 2f     mov   a,#$2f
0821: 8d 00     mov   y,#$00
0823: 3f 00 07  call  $0700
0826: e8 3f     mov   a,#$3f
0828: 8d 00     mov   y,#$00
082a: 3f 00 07  call  $0700
082d: e8 4f     mov   a,#$4f
082f: 8d 00     mov   y,#$00
0831: 3f 00 07  call  $0700
0834: e8 5f     mov   a,#$5f
0836: 8d 00     mov   y,#$00
0838: 3f 00 07  call  $0700
083b: e8 6f     mov   a,#$6f
083d: 8d 00     mov   y,#$00
083f: 3f 00 07  call  $0700
0842: e8 7f     mov   a,#$7f
0844: 8d 00     mov   y,#$00
0846: 3f 00 07  call  $0700
0849: 3f 6a 08  call  $086a
084c: 00        nop
084d: 00        nop
084e: 00        nop
084f: 00        nop
0850: 00        nop
0851: 3f 62 08  call  $0862
0854: 00        nop
0855: 00        nop
0856: 00        nop
0857: 00        nop
0858: 00        nop
0859: 6f        ret

085a: e8 5c     mov   a,#$5c
085c: 8d ff     mov   y,#$ff
085e: 3f 00 07  call  $0700
0861: 6f        ret

0862: e8 4c     mov   a,#$4c
0864: 8d ff     mov   y,#$ff
0866: 3f 00 07  call  $0700
0869: 6f        ret

086a: e8 00     mov   a,#$00
086c: 8d 00     mov   y,#$00
086e: e8 00     mov   a,#$00
0870: 8d 00     mov   y,#$00
0872: 3f 00 07  call  $0700
0875: e8 01     mov   a,#$01
0877: 8d 00     mov   y,#$00
0879: 3f 00 07  call  $0700
087c: e8 10     mov   a,#$10
087e: 8d 00     mov   y,#$00
0880: 3f 00 07  call  $0700
0883: e8 11     mov   a,#$11
0885: 8d 00     mov   y,#$00
0887: 3f 00 07  call  $0700
088a: e8 20     mov   a,#$20
088c: 8d 00     mov   y,#$00
088e: 3f 00 07  call  $0700
0891: e8 21     mov   a,#$21
0893: 8d 00     mov   y,#$00
0895: 3f 00 07  call  $0700
0898: e8 30     mov   a,#$30
089a: 8d 00     mov   y,#$00
089c: 3f 00 07  call  $0700
089f: e8 31     mov   a,#$31
08a1: 8d 00     mov   y,#$00
08a3: 3f 00 07  call  $0700
08a6: e8 40     mov   a,#$40
08a8: 8d 00     mov   y,#$00
08aa: 3f 00 07  call  $0700
08ad: e8 41     mov   a,#$41
08af: 8d 00     mov   y,#$00
08b1: 3f 00 07  call  $0700
08b4: e8 50     mov   a,#$50
08b6: 8d 00     mov   y,#$00
08b8: 3f 00 07  call  $0700
08bb: e8 51     mov   a,#$51
08bd: 8d 00     mov   y,#$00
08bf: 3f 00 07  call  $0700
08c2: e8 60     mov   a,#$60
08c4: 8d 00     mov   y,#$00
08c6: 3f 00 07  call  $0700
08c9: e8 61     mov   a,#$61
08cb: 8d 00     mov   y,#$00
08cd: 3f 00 07  call  $0700
08d0: e8 70     mov   a,#$70
08d2: 8d 00     mov   y,#$00
08d4: 3f 00 07  call  $0700
08d7: e8 71     mov   a,#$71
08d9: 8d 00     mov   y,#$00
08db: 3f 00 07  call  $0700
08de: 6f        ret

08df: e5 20 04  mov   a,$0420
08e2: f0 4d     beq   $0931
08e4: e5 21 04  mov   a,$0421
08e7: d0 23     bne   $090c
08e9: e5 20 04  mov   a,$0420
08ec: 5c        lsr   a
08ed: 90 05     bcc   $08f4
08ef: e8 00     mov   a,#$00
08f1: 3f 55 11  call  $1155
08f4: 5c        lsr   a
08f5: 90 05     bcc   $08fc
08f7: e8 01     mov   a,#$01
08f9: 3f 55 11  call  $1155
08fc: e8 00     mov   a,#$00
08fe: c5 20 04  mov   $0420,a
0901: c5 21 04  mov   $0421,a
0904: c5 22 04  mov   $0422,a
0907: c5 23 04  mov   $0423,a
090a: 2f 25     bra   $0931
090c: e5 26 04  mov   a,$0426
090f: bc        inc   a
0910: 28 0f     and   a,#$0f
0912: c5 26 04  mov   $0426,a
0915: d0 1a     bne   $0931
0917: e5 21 04  mov   a,$0421
091a: 9c        dec   a
091b: c5 21 04  mov   $0421,a
091e: 60        clrc
091f: e5 24 04  mov   a,$0424
0922: 85 22 04  adc   a,$0422
0925: c5 24 04  mov   $0424,a
0928: e5 25 04  mov   a,$0425
092b: 85 23 04  adc   a,$0423
092e: c5 25 04  mov   $0425,a
0931: 6f        ret

0932: cd 00     mov   x,#$00
0934: 1e 20 04  cmp   x,$0420
0937: f0 2e     beq   $0967
0939: f8 33     mov   x,$33
093b: c4 47     mov   $47,a
093d: f4 00     mov   a,$00+x
093f: 5c        lsr   a
0940: 5c        lsr   a
0941: 5c        lsr   a
0942: 5c        lsr   a
0943: c4 46     mov   $46,a
0945: 25 20 04  and   a,$0420
0948: f0 0c     beq   $0956
094a: e4 47     mov   a,$47
094c: 80        setc
094d: a5 25 04  sbc   a,$0425
0950: 10 15     bpl   $0967
0952: e8 00     mov   a,#$00
0954: 2f 11     bra   $0967
0956: e4 46     mov   a,$46
0958: 25 20 04  and   a,$0420
095b: f0 0b     beq   $0968
095d: e4 47     mov   a,$47
095f: 80        setc
0960: a5 25 04  sbc   a,$0425
0963: 10 02     bpl   $0967
0965: e8 00     mov   a,#$00
0967: 6f        ret

0968: e4 47     mov   a,$47
096a: 6f        ret

096b: 8d 24     mov   y,#$24
096d: f7 40     mov   a,($40)+y
096f: 28 04     and   a,#$04
0971: d0 02     bne   $0975
0973: 60        clrc
0974: 6f        ret

0975: 8d 13     mov   y,#$13
0977: f7 40     mov   a,($40)+y
0979: f0 68     beq   $09e3
097b: 8d 12     mov   y,#$12
097d: f7 40     mov   a,($40)+y
097f: f0 30     beq   $09b1
0981: 9c        dec   a
0982: 8d 12     mov   y,#$12
0984: d7 40     mov   ($40)+y,a
0986: 8d 0e     mov   y,#$0e
0988: f7 40     mov   a,($40)+y
098a: c4 38     mov   $38,a
098c: 8d 0f     mov   y,#$0f
098e: f7 40     mov   a,($40)+y
0990: c4 39     mov   $39,a
0992: 8d 14     mov   y,#$14
0994: f7 40     mov   a,($40)+y
0996: c4 3a     mov   $3a,a
0998: 8d 15     mov   y,#$15
099a: f7 40     mov   a,($40)+y
099c: c4 3b     mov   $3b,a
099e: 60        clrc
099f: ba 38     movw  ya,$38
09a1: 7a 3a     addw  ya,$3a
09a3: da 38     movw  $38,ya
09a5: 8d 0e     mov   y,#$0e
09a7: d7 40     mov   ($40)+y,a
09a9: e4 39     mov   a,$39
09ab: 8d 0f     mov   y,#$0f
09ad: d7 40     mov   ($40)+y,a
09af: 2f 32     bra   $09e3
09b1: 8d 10     mov   y,#$10
09b3: f7 40     mov   a,($40)+y
09b5: c4 38     mov   $38,a
09b7: 8d 11     mov   y,#$11
09b9: f7 40     mov   a,($40)+y
09bb: c4 39     mov   $39,a
09bd: 8d 0e     mov   y,#$0e
09bf: f7 40     mov   a,($40)+y
09c1: c4 3a     mov   $3a,a
09c3: 8d 0f     mov   y,#$0f
09c5: f7 40     mov   a,($40)+y
09c7: c4 3b     mov   $3b,a
09c9: e4 38     mov   a,$38
09cb: 64 3a     cmp   a,$3a
09cd: d0 08     bne   $09d7
09cf: e4 39     mov   a,$39
09d1: 64 3b     cmp   a,$3b
09d3: d0 02     bne   $09d7
09d5: 60        clrc
09d6: 6f        ret

09d7: e4 38     mov   a,$38
09d9: 8d 0e     mov   y,#$0e
09db: d7 40     mov   ($40)+y,a
09dd: e4 39     mov   a,$39
09df: 8d 0f     mov   y,#$0f
09e1: d7 40     mov   ($40)+y,a
09e3: 80        setc
09e4: 6f        ret

09e5: 8d 24     mov   y,#$24
09e7: f7 40     mov   a,($40)+y
09e9: 28 02     and   a,#$02
09eb: d0 02     bne   $09ef
09ed: 60        clrc
09ee: 6f        ret

09ef: 8d 00     mov   y,#$00
09f1: 8d 1a     mov   y,#$1a
09f3: f7 40     mov   a,($40)+y
09f5: f0 6f     beq   $0a66
09f7: 8d 19     mov   y,#$19
09f9: f7 40     mov   a,($40)+y
09fb: f0 07     beq   $0a04
09fd: 9c        dec   a
09fe: 8d 19     mov   y,#$19
0a00: d7 40     mov   ($40)+y,a
0a02: 2f 62     bra   $0a66
0a04: 8d 17     mov   y,#$17
0a06: f7 40     mov   a,($40)+y
0a08: c4 36     mov   $36,a
0a0a: 8d 1b     mov   y,#$1b
0a0c: f7 40     mov   a,($40)+y
0a0e: c4 38     mov   $38,a
0a10: e8 00     mov   a,#$00
0a12: c4 37     mov   $37,a
0a14: c4 39     mov   $39,a
0a16: 8d 1f     mov   y,#$1f
0a18: f7 40     mov   a,($40)+y
0a1a: 68 00     cmp   a,#$00
0a1c: d0 2b     bne   $0a49
0a1e: 60        clrc
0a1f: ba 36     movw  ya,$36
0a21: 7a 38     addw  ya,$38
0a23: da 36     movw  $36,ya
0a25: c4 37     mov   $37,a
0a27: 8d 1d     mov   y,#$1d
0a29: f7 40     mov   a,($40)+y
0a2b: c4 38     mov   $38,a
0a2d: e4 36     mov   a,$36
0a2f: 64 38     cmp   a,$38
0a31: e4 37     mov   a,$37
0a33: a4 39     sbc   a,$39
0a35: 90 10     bcc   $0a47
0a37: e8 01     mov   a,#$01
0a39: 8d 1f     mov   y,#$1f
0a3b: d7 40     mov   ($40)+y,a
0a3d: 8d 1d     mov   y,#$1d
0a3f: f7 40     mov   a,($40)+y
0a41: c4 36     mov   $36,a
0a43: e8 00     mov   a,#$00
0a45: c4 37     mov   $37,a
0a47: 2f 17     bra   $0a60
0a49: 80        setc
0a4a: ba 36     movw  ya,$36
0a4c: 9a 38     subw  ya,$38
0a4e: da 36     movw  $36,ya
0a50: e4 37     mov   a,$37
0a52: 10 f3     bpl   $0a47
0a54: e8 00     mov   a,#$00
0a56: 8d 1f     mov   y,#$1f
0a58: d7 40     mov   ($40)+y,a
0a5a: e8 00     mov   a,#$00
0a5c: c4 36     mov   $36,a
0a5e: c4 37     mov   $37,a
0a60: e4 36     mov   a,$36
0a62: 8d 17     mov   y,#$17
0a64: d7 40     mov   ($40)+y,a
0a66: 80        setc
0a67: 6f        ret

; vcmd table (80-95)
0a68: dw $0a94		; 80 - set variables?
0a6a: dw $0ad0		; 81 - (2 bytes)
0a6c: dw $0aab		; 82 - start of song loop
0a6e: dw $0b11		; 83 - (7 bytes)
0a70: dw $0b66		; 84 - set tempo
0a72: dw $0b78		; 85 - set instrument
0a74: dw $0b82		; 86 - (3 bytes)
0a76: dw $0ba3		; 87 - (1 byte)
0a78: dw $0bac		; 88 - set ASDR bit 7
0a7a: dw $0bb5		; 89 - clear ASDR bits
0a7c: dw $0bbe		; 8a - set up vibrato parameters
0a7e: dw $0c08		; 8b - set ASDR bit 6
0a80: dw $0c11		; 8c - set ASDR bits on
0a82: dw $0c1a		; 8d - (2 bytes)
0a84: dw $0cc7		; 8e - nop
0a86: dw $0cc8		; 8f - set ASDR bit 5
0a88: dw $0cd1		; 90 - clear ASDR bits
0a8a: dw $0cda		; 91 - restart channel
0a8c: dw $0ce6		; 92 - repeat section
0a8e: dw $0d28		; 93 - set ASDR bit 4
0a90: dw $0d31		; 94 - set panning
0a92: dw $0e67		; 95 - stop channel

0a94: cd 00     mov   x,#$00		; vcmd 80 - set variables?
0a96: e7 44     mov   a,($44+x)
0a98: 3a 44     incw  $44
0a9a: c4 4b     mov   $4b,a
0a9c: c4 4d     mov   $4d,a
0a9e: e8 00     mov   a,#$00
0aa0: c4 4a     mov   $4a,a
0aa2: c4 4c     mov   $4c,a
0aa4: c4 4e     mov   $4e,a
0aa6: c4 4f     mov   $4f,a
0aa8: c4 50     mov   $50,a
0aaa: 6f        ret

0aab: cd 00     mov   x,#$00		; vcmd 82 - start of song loop
0aad: e7 44     mov   a,($44+x)
0aaf: 3a 44     incw  $44
0ab1: 8d 08     mov   y,#$08
0ab3: d7 40     mov   ($40)+y,a
0ab5: 8d 0a     mov   y,#$0a
0ab7: d7 40     mov   ($40)+y,a
0ab9: e8 00     mov   a,#$00
0abb: 8d 07     mov   y,#$07
0abd: d7 40     mov   ($40)+y,a
0abf: 8d 09     mov   y,#$09
0ac1: d7 40     mov   ($40)+y,a
0ac3: 8d 0b     mov   y,#$0b
0ac5: d7 40     mov   ($40)+y,a
0ac7: 8d 0c     mov   y,#$0c
0ac9: d7 40     mov   ($40)+y,a
0acb: 8d 0d     mov   y,#$0d
0acd: d7 40     mov   ($40)+y,a
0acf: 6f        ret

0ad0: cd 00     mov   x,#$00		; vcmd 81 - (2 bytes)
0ad2: e7 44     mov   a,($44+x)
0ad4: 3a 44     incw  $44
0ad6: c4 34     mov   $34,a
0ad8: e7 44     mov   a,($44+x)
0ada: 3a 44     incw  $44
0adc: c4 36     mov   $36,a
0ade: e4 34     mov   a,$34
0ae0: c4 4d     mov   $4d,a
0ae2: e4 36     mov   a,$36
0ae4: c4 4e     mov   $4e,a
0ae6: e8 00     mov   a,#$00
0ae8: c4 4c     mov   $4c,a
0aea: e4 4a     mov   a,$4a
0aec: c4 34     mov   $34,a
0aee: e4 4b     mov   a,$4b
0af0: c4 35     mov   $35,a
0af2: e4 4c     mov   a,$4c
0af4: c4 36     mov   $36,a
0af6: e4 4d     mov   a,$4d
0af8: c4 37     mov   $37,a
0afa: 3f 9d 12  call  $129d
0afd: e4 4e     mov   a,$4e
0aff: c4 37     mov   $37,a
0b01: e8 00     mov   a,#$00
0b03: c4 36     mov   $36,a
0b05: 3f a4 12  call  $12a4
0b08: e4 34     mov   a,$34
0b0a: c4 4f     mov   $4f,a
0b0c: e4 35     mov   a,$35
0b0e: c4 50     mov   $50,a
0b10: 6f        ret

0b11: cd 00     mov   x,#$00		; vcmd 83 - (7 bytes)
0b13: e7 44     mov   a,($44+x)
0b15: 3a 44     incw  $44
0b17: c4 34     mov   $34,a
0b19: e7 44     mov   a,($44+x)
0b1b: 3a 44     incw  $44
0b1d: c4 36     mov   $36,a
0b1f: e4 34     mov   a,$34
0b21: 8d 0a     mov   y,#$0a
0b23: d7 40     mov   ($40)+y,a
0b25: e4 36     mov   a,$36
0b27: 8d 0b     mov   y,#$0b
0b29: d7 40     mov   ($40)+y,a
0b2b: e8 00     mov   a,#$00
0b2d: 8d 09     mov   y,#$09
0b2f: d7 40     mov   ($40)+y,a
0b31: e7 44     mov   a,($44+x)
0b33: 3a 44     incw  $44
0b35: c4 34     mov   $34,a
0b37: e7 44     mov   a,($44+x)
0b39: 3a 44     incw  $44
0b3b: c4 35     mov   $35,a
0b3d: e7 44     mov   a,($44+x)
0b3f: 3a 44     incw  $44
0b41: c4 36     mov   $36,a
0b43: e7 44     mov   a,($44+x)
0b45: 3a 44     incw  $44
0b47: c4 37     mov   $37,a
0b49: 3f 9d 12  call  $129d
0b4c: e7 44     mov   a,($44+x)
0b4e: 3a 44     incw  $44
0b50: c4 37     mov   $37,a
0b52: e8 00     mov   a,#$00
0b54: c4 36     mov   $36,a
0b56: 3f a4 12  call  $12a4
0b59: e4 34     mov   a,$34
0b5b: 8d 0c     mov   y,#$0c
0b5d: d7 40     mov   ($40)+y,a
0b5f: e4 35     mov   a,$35
0b61: 8d 0d     mov   y,#$0d
0b63: d7 40     mov   ($40)+y,a
0b65: 6f        ret

0b66: cd 00     mov   x,#$00		; vcmd 84 - set tempo
0b68: e7 44     mov   a,($44+x)
0b6a: 3a 44     incw  $44
0b6c: c4 34     mov   $34,a
0b6e: 8d 06     mov   y,#$06
0b70: f7 40     mov   a,($40)+y
0b72: c4 36     mov   $36,a
0b74: 3f 60 0e  call  $0e60
0b77: 6f        ret

0b78: cd 00     mov   x,#$00		; vcmd 85 - set instrument
0b7a: e7 44     mov   a,($44+x)
0b7c: 3a 44     incw  $44
0b7e: 3f 01 13  call  $1301
0b81: 6f        ret

0b82: cd 00     mov   x,#$00		; vcmd 86 - (3 bytes)
0b84: e7 44     mov   a,($44+x)
0b86: 3a 44     incw  $44
0b88: c4 34     mov   $34,a
0b8a: e7 44     mov   a,($44+x)
0b8c: 3a 44     incw  $44
0b8e: c4 36     mov   $36,a
0b90: e7 44     mov   a,($44+x)
0b92: 3a 44     incw  $44
0b94: c4 38     mov   $38,a
0b96: e4 34     mov   a,$34
0b98: c4 54     mov   $54,a
0b9a: e4 36     mov   a,$36
0b9c: c4 52     mov   $52,a
0b9e: e4 36     mov   a,$36
0ba0: c4 53     mov   $53,a
0ba2: 6f        ret

0ba3: cd 00     mov   x,#$00		; vcmd 87 - (1 byte)
0ba5: e7 44     mov   a,($44+x)
0ba7: 3a 44     incw  $44
0ba9: c4 51     mov   $51,a
0bab: 6f        ret

0bac: 8d 24     mov   y,#$24		; vcmd 88 - set ASDR bit 7
0bae: f7 40     mov   a,($40)+y
0bb0: 08 01     or    a,#$01
0bb2: d7 40     mov   ($40)+y,a
0bb4: 6f        ret

0bb5: 8d 24     mov   y,#$24		; vcmd 89 - clear ASDR bits
0bb7: f7 40     mov   a,($40)+y
0bb9: 28 fe     and   a,#$fe
0bbb: d7 40     mov   ($40)+y,a
0bbd: 6f        ret

0bbe: cd 00     mov   x,#$00		; vcmd 8a - set up vibrato parameters
0bc0: e7 44     mov   a,($44+x)
0bc2: 3a 44     incw  $44
0bc4: 8d 19     mov   y,#$19
0bc6: d7 40     mov   ($40)+y,a
0bc8: 8d 1a     mov   y,#$1a
0bca: d7 40     mov   ($40)+y,a
0bcc: e7 44     mov   a,($44+x)
0bce: 3a 44     incw  $44
0bd0: 2d        push  a
0bd1: e7 44     mov   a,($44+x)
0bd3: 3a 44     incw  $44
0bd5: 8d 1d     mov   y,#$1d
0bd7: d7 40     mov   ($40)+y,a
0bd9: ce        pop   x
0bda: 8d 00     mov   y,#$00
0bdc: 9e        div   ya,x
0bdd: 8d 1b     mov   y,#$1b
0bdf: d7 40     mov   ($40)+y,a
0be1: e8 00     mov   a,#$00
0be3: 8d 17     mov   y,#$17
0be5: d7 40     mov   ($40)+y,a
0be7: 8d 1f     mov   y,#$1f
0be9: d7 40     mov   ($40)+y,a
0beb: 6f        ret

0bec: 8d 24     mov   y,#$24
0bee: f7 40     mov   a,($40)+y
0bf0: 28 02     and   a,#$02
0bf2: d0 01     bne   $0bf5
0bf4: 6f        ret

0bf5: 8d 1a     mov   y,#$1a
0bf7: f7 40     mov   a,($40)+y
0bf9: 8d 19     mov   y,#$19
0bfb: d7 40     mov   ($40)+y,a
0bfd: e8 00     mov   a,#$00
0bff: 8d 17     mov   y,#$17
0c01: d7 40     mov   ($40)+y,a
0c03: 8d 1f     mov   y,#$1f
0c05: d7 40     mov   ($40)+y,a
0c07: 6f        ret

0c08: 8d 24     mov   y,#$24		; vcmd 8b - set ASDR bit 6
0c0a: f7 40     mov   a,($40)+y
0c0c: 08 02     or    a,#$02
0c0e: d7 40     mov   ($40)+y,a
0c10: 6f        ret

0c11: 8d 24     mov   y,#$24		; vcmd 8c - set ASDR bits on
0c13: f7 40     mov   a,($40)+y
0c15: 28 fb     and   a,#$fb
0c17: d7 40     mov   ($40)+y,a
0c19: 6f        ret

0c1a: cd 00     mov   x,#$00		; vcmd 8d - (2 bytes)
0c1c: e7 44     mov   a,($44+x)
0c1e: 3a 44     incw  $44
0c20: 8d 12     mov   y,#$12
0c22: d7 40     mov   ($40)+y,a
0c24: 8d 13     mov   y,#$13
0c26: d7 40     mov   ($40)+y,a
0c28: e7 44     mov   a,($44+x)
0c2a: 3a 44     incw  $44
0c2c: 8d 16     mov   y,#$16
0c2e: d7 40     mov   ($40)+y,a
0c30: 6f        ret

0c31: 2d        push  a
0c32: 8d 24     mov   y,#$24
0c34: f7 40     mov   a,($40)+y
0c36: 28 04     and   a,#$04
0c38: ae        pop   a
0c39: d0 01     bne   $0c3c
0c3b: 6f        ret

0c3c: c4 36     mov   $36,a
0c3e: 8d 16     mov   y,#$16
0c40: f7 40     mov   a,($40)+y
0c42: 60        clrc
0c43: 84 36     adc   a,$36
0c45: 10 02     bpl   $0c49
0c47: e8 01     mov   a,#$01
0c49: 68 55     cmp   a,#$55
0c4b: 90 02     bcc   $0c4f
0c4d: e8 55     mov   a,#$55
0c4f: 9c        dec   a
0c50: c4 37     mov   $37,a
0c52: e8 00     mov   a,#$00
0c54: c4 36     mov   $36,a
0c56: 8d 28     mov   y,#$28
0c58: f7 40     mov   a,($40)+y
0c5a: c4 38     mov   $38,a
0c5c: 8d 29     mov   y,#$29
0c5e: f7 40     mov   a,($40)+y
0c60: c4 39     mov   $39,a
0c62: 3f d6 0d  call  $0dd6
0c65: e4 3a     mov   a,$3a
0c67: 8d 10     mov   y,#$10
0c69: d7 40     mov   ($40)+y,a
0c6b: e4 3b     mov   a,$3b
0c6d: 8d 11     mov   y,#$11
0c6f: d7 40     mov   ($40)+y,a
0c71: 8d 0e     mov   y,#$0e
0c73: f7 40     mov   a,($40)+y
0c75: c4 38     mov   $38,a
0c77: 8d 0f     mov   y,#$0f
0c79: f7 40     mov   a,($40)+y
0c7b: c4 39     mov   $39,a
0c7d: e4 3b     mov   a,$3b
0c7f: 64 39     cmp   a,$39
0c81: b0 13     bcs   $0c96
0c83: 80        setc
0c84: e4 38     mov   a,$38
0c86: a4 3a     sbc   a,$3a
0c88: c4 38     mov   $38,a
0c8a: e4 39     mov   a,$39
0c8c: a4 3b     sbc   a,$3b
0c8e: c4 39     mov   $39,a
0c90: e8 ff     mov   a,#$ff
0c92: c4 3b     mov   $3b,a
0c94: 2f 11     bra   $0ca7
0c96: 80        setc
0c97: e4 3a     mov   a,$3a
0c99: a4 38     sbc   a,$38
0c9b: c4 38     mov   $38,a
0c9d: e4 3b     mov   a,$3b
0c9f: a4 39     sbc   a,$39
0ca1: c4 39     mov   $39,a
0ca3: e8 00     mov   a,#$00
0ca5: c4 3b     mov   $3b,a
0ca7: 8d 13     mov   y,#$13
0ca9: f7 40     mov   a,($40)+y
0cab: 8d 12     mov   y,#$12
0cad: d7 40     mov   ($40)+y,a
0caf: 5d        mov   x,a
0cb0: e4 38     mov   a,$38
0cb2: eb 39     mov   y,$39
0cb4: 9e        div   ya,x
0cb5: f8 3b     mov   x,$3b
0cb7: 10 03     bpl   $0cbc
0cb9: 48 ff     eor   a,#$ff
0cbb: bc        inc   a
0cbc: 8d 14     mov   y,#$14
0cbe: d7 40     mov   ($40)+y,a
0cc0: e4 3b     mov   a,$3b
0cc2: 8d 15     mov   y,#$15
0cc4: d7 40     mov   ($40)+y,a
0cc6: 6f        ret

0cc7: 6f        ret			; vcmd 8e - nop

0cc8: 8d 24     mov   y,#$24		; vcmd 8f - set ASDR bit 5
0cca: f7 40     mov   a,($40)+y
0ccc: 08 04     or    a,#$04
0cce: d7 40     mov   ($40)+y,a
0cd0: 6f        ret

0cd1: 8d 24     mov   y,#$24		; vcmd 90 - clear ASDR bits
0cd3: f7 40     mov   a,($40)+y
0cd5: 28 fb     and   a,#$fb
0cd7: d7 40     mov   ($40)+y,a
0cd9: 6f        ret

0cda: 8d 02     mov   y,#$02		; vcmd 91 - restart channel
0cdc: f7 40     mov   a,($40)+y
0cde: c4 44     mov   $44,a
0ce0: fc        inc   y
0ce1: f7 40     mov   a,($40)+y
0ce3: c4 45     mov   $45,a
0ce5: 6f        ret

0ce6: cd 00     mov   x,#$00		; vcmd 92 - repeat section
0ce8: e7 44     mov   a,($44+x)
0cea: 3a 44     incw  $44
0cec: fd        mov   y,a
0ced: 68 ff     cmp   a,#$ff
0cef: f0 1a     beq   $0d0b
0cf1: e7 44     mov   a,($44+x)
0cf3: 68 ff     cmp   a,#$ff
0cf5: f0 06     beq   $0cfd
0cf7: 68 00     cmp   a,#$00
0cf9: f0 05     beq   $0d00
0cfb: 2f 12     bra   $0d0f
0cfd: dd        mov   a,y
0cfe: 2f 0f     bra   $0d0f
0d00: e8 ff     mov   a,#$ff
0d02: c7 44     mov   ($44+x),a
0d04: 3a 44     incw  $44
0d06: 3a 44     incw  $44
0d08: 3a 44     incw  $44
0d0a: 6f        ret

0d0b: 3a 44     incw  $44
0d0d: 2f 05     bra   $0d14
0d0f: 9c        dec   a
0d10: c7 44     mov   ($44+x),a
0d12: 3a 44     incw  $44
0d14: e7 44     mov   a,($44+x)
0d16: 3a 44     incw  $44
0d18: c4 34     mov   $34,a
0d1a: e7 44     mov   a,($44+x)
0d1c: 3a 44     incw  $44
0d1e: c4 35     mov   $35,a
0d20: ba 44     movw  ya,$44
0d22: 9a 34     subw  ya,$34
0d24: e0        clrv
0d25: da 44     movw  $44,ya
0d27: 6f        ret

0d28: 8d 24     mov   y,#$24		; vcmd 93 - set ASDR bit 4
0d2a: f7 40     mov   a,($40)+y
0d2c: 08 08     or    a,#$08
0d2e: d7 40     mov   ($40)+y,a
0d30: 6f        ret

0d31: cd 00     mov   x,#$00		; vcmd 94 - set panning
0d33: e7 44     mov   a,($44+x)
0d35: 3a 44     incw  $44
0d37: 8d 27     mov   y,#$27
0d39: d7 40     mov   ($40)+y,a
0d3b: 6f        ret

0d3c: 8d 24     mov   y,#$24
0d3e: f7 40     mov   a,($40)+y
0d40: 28 f7     and   a,#$f7
0d42: d7 40     mov   ($40)+y,a
0d44: 6f        ret

0d45: cd 00     mov   x,#$00
0d47: 2d        push  a
0d48: 8d 25     mov   y,#$25
0d4a: f7 40     mov   a,($40)+y
0d4c: 8d 26     mov   y,#$26
0d4e: d7 40     mov   ($40)+y,a
0d50: e7 44     mov   a,($44+x)
0d52: 3a 44     incw  $44
0d54: 8d 00     mov   y,#$00
0d56: d7 40     mov   ($40)+y,a
0d58: ae        pop   a
0d59: 8d 25     mov   y,#$25
0d5b: d7 40     mov   ($40)+y,a
0d5d: 9c        dec   a
0d5e: 30 36     bmi   $0d96
0d60: c4 37     mov   $37,a
0d62: e8 00     mov   a,#$00
0d64: c4 36     mov   $36,a
0d66: 8d 28     mov   y,#$28
0d68: f7 40     mov   a,($40)+y
0d6a: c4 38     mov   $38,a
0d6c: 8d 29     mov   y,#$29
0d6e: f7 40     mov   a,($40)+y
0d70: c4 39     mov   $39,a
0d72: 3f d6 0d  call  $0dd6
0d75: e4 3a     mov   a,$3a
0d77: 8d 0e     mov   y,#$0e
0d79: d7 40     mov   ($40)+y,a
0d7b: e4 3b     mov   a,$3b
0d7d: 8d 0f     mov   y,#$0f
0d7f: d7 40     mov   ($40)+y,a
0d81: 8d 24     mov   y,#$24
0d83: f7 40     mov   a,($40)+y
0d85: 28 0f     and   a,#$0f
0d87: 08 20     or    a,#$20
0d89: d7 40     mov   ($40)+y,a
0d8b: 8d 25     mov   y,#$25
0d8d: f7 40     mov   a,($40)+y
0d8f: 3f 31 0c  call  $0c31
0d92: 3f ec 0b  call  $0bec
0d95: 6f        ret

0d96: e8 00     mov   a,#$00
0d98: 8d 0e     mov   y,#$0e
0d9a: d7 40     mov   ($40)+y,a
0d9c: 8d 0f     mov   y,#$0f
0d9e: d7 40     mov   ($40)+y,a
0da0: 8d 24     mov   y,#$24
0da2: f7 40     mov   a,($40)+y
0da4: 28 0f     and   a,#$0f
0da6: 08 10     or    a,#$10
0da8: d7 40     mov   ($40)+y,a
0daa: 5f 8b 0d  jmp   $0d8b

0dad: 8d 24     mov   y,#$24
0daf: f7 40     mov   a,($40)+y
0db1: 28 c7     and   a,#$c7
0db3: d7 40     mov   ($40)+y,a
0db5: 6f        ret

0db6: f8 34     mov   x,$34
0db8: f5 ce 0d  mov   a,$0dce+x
0dbb: fd        mov   y,a
0dbc: e8 4c     mov   a,#$4c
0dbe: 3f 00 07  call  $0700
0dc1: 6f        ret

0dc2: f8 34     mov   x,$34
0dc4: f5 ce 0d  mov   a,$0dce+x
0dc7: fd        mov   y,a
0dc8: e8 5c     mov   a,#$5c
0dca: 3f 00 07  call  $0700
0dcd: 6f        ret

0dce: db $01,$02,$04,$08,$10,$20,$40,$80

0dd6: 8d 00     mov   y,#$00
0dd8: e4 37     mov   a,$37
0dda: 80        setc
0ddb: a8 34     sbc   a,#$34
0ddd: b0 09     bcs   $0de8
0ddf: e4 37     mov   a,$37
0de1: 80        setc
0de2: a8 13     sbc   a,#$13
0de4: b0 06     bcs   $0dec
0de6: dc        dec   y
0de7: 1c        asl   a
0de8: 7a 36     addw  ya,$36
0dea: da 36     movw  $36,ya
0dec: e4 37     mov   a,$37
0dee: 1c        asl   a
0def: 8d 00     mov   y,#$00
0df1: cd 18     mov   x,#$18
0df3: 9e        div   ya,x
0df4: 5d        mov   x,a
0df5: f6 47 0e  mov   a,$0e47+y
0df8: c4 3b     mov   $3b,a
0dfa: f6 46 0e  mov   a,$0e46+y
0dfd: c4 3a     mov   $3a,a
0dff: f6 49 0e  mov   a,$0e49+y
0e02: 2d        push  a
0e03: f6 48 0e  mov   a,$0e48+y
0e06: ee        pop   y
0e07: 9a 3a     subw  ya,$3a
0e09: eb 36     mov   y,$36
0e0b: cf        mul   ya
0e0c: dd        mov   a,y
0e0d: 8d 00     mov   y,#$00
0e0f: 7a 3a     addw  ya,$3a
0e11: cb 3b     mov   $3b,y
0e13: 1c        asl   a
0e14: 2b 3b     rol   $3b
0e16: c4 3a     mov   $3a,a
0e18: 2f 04     bra   $0e1e
0e1a: 4b 3b     lsr   $3b
0e1c: 7c        ror   a
0e1d: 3d        inc   x
0e1e: c8 06     cmp   x,#$06
0e20: d0 f8     bne   $0e1a
0e22: c4 3a     mov   $3a,a
0e24: e4 38     mov   a,$38
0e26: eb 3b     mov   y,$3b
0e28: cf        mul   ya
0e29: da 3c     movw  $3c,ya
0e2b: e4 38     mov   a,$38
0e2d: eb 3a     mov   y,$3a
0e2f: cf        mul   ya
0e30: 6d        push  y
0e31: e4 39     mov   a,$39
0e33: eb 3a     mov   y,$3a
0e35: cf        mul   ya
0e36: 7a 3c     addw  ya,$3c
0e38: da 3c     movw  $3c,ya
0e3a: e4 39     mov   a,$39
0e3c: eb 3b     mov   y,$3b
0e3e: cf        mul   ya
0e3f: fd        mov   y,a
0e40: ae        pop   a
0e41: 7a 3c     addw  ya,$3c
0e43: da 3a     movw  $3a,ya
0e45: 6f        ret

0e46: dw $085f
0e48: dw $08de
0e4a: dw $0965
0e4c: dw $09f4
0e4e: dw $0a8c
0e50: dw $0b2c
0e52: dw $0bd6
0e54: dw $0c8b
0e56: dw $0d4a
0e58: dw $0e14
0e5a: dw $0eea
0e5c: dw $0fcd
0e5e: dw $10be

0e60: e4 34     mov   a,$34
0e62: f8 36     mov   x,$36
0e64: d4 30     mov   $30+x,a
0e66: 6f        ret

0e67: eb 33     mov   y,$33		; vcmd 95 - stop channel
0e69: cd 00     mov   x,#$00
0e6b: d9 00     mov   $00+y,x
0e6d: 6f        ret

0e6e: db $07,$18,$f2,$0e,$07,$15,$fd,$0e,$07,$15,$08,$0f,$07,$15,$19,$0f,$06,$17,$24,$0f,$07,$18,$3d,$0f,$07,$17,$48,$0f,$07,$14,$53,$0f,$07,$14,$5e,$0f,$07,$17,$69,$0f,$07,$14,$74,$0f,$07,$78,$7f,$0f,$06,$16,$8a,$0f,$06,$16,$95,$0f,$06,$16,$a0,$0f,$06,$16,$ab,$0f,$06,$16,$b6,$0f,$06,$17,$c1,$0f,$06,$16,$d4,$0f,$06,$16,$df,$0f,$06,$16,$ea,$0f,$06,$16,$f7,$0f,$06,$16,$02,$10,$06,$17,$0d,$10,$06,$16,$1e,$10,$06,$16,$29,$10,$06,$16,$42,$10,$06,$16,$4d,$10,$06,$16,$58,$10,$06,$16,$63,$10,$06,$16,$6e,$10,$06,$16,$79,$10,$06,$16,$84,$10,$85,$09,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$0a,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$0b,$94,$08,$82,$dc,$25,$0c,$25,$0c,$22,$0c,$22,$0c,$00,$02,$95,$85,$0c,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$05,$94,$08,$82,$78,$20,$0c,$20,$0c,$20,$0c,$20,$0c,$20,$0c,$20,$0c,$20,$0c,$20,$0c,$00,$02,$95,$85,$0e,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$0f,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$10,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$11,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$12,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$13,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$14,$94,$08,$82,$dc,$25,$60,$00,$02,$95,$85,$15,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$16,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$11,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$18,$94,$08,$82,$78,$25,$30,$00,$02,$95,$85,$19,$94,$08,$82,$78,$25,$30,$00,$02,$95,$85,$1a,$94,$08,$82,$dc,$20,$12,$82,$78,$1f,$12,$1f,$12,$1e,$12,$00,$02,$95,$85,$1b,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$1c,$94,$08,$82,$46,$25,$30,$00,$02,$95,$85,$1d,$94,$08,$82,$78,$25,$18,$25,$18,$00,$02,$95,$85,$1e,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$1f,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$20,$94,$08,$82,$dc,$25,$18,$25,$18,$25,$18,$25,$18,$00,$02,$95,$85,$21,$94,$08,$82,$78,$25,$30,$00,$02,$95,$85,$22,$94,$08,$82,$78,$25,$0c,$25,$0c,$25,$0c,$25,$0c,$25,$0c,$25,$0c,$25,$0c,$25,$0c,$00,$02,$95,$85,$23,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$24,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$25,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$26,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$27,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$28,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$85,$29,$94,$08,$82,$dc,$25,$30,$00,$02,$95,$6f

1090: e8 15     mov   a,#$15		; load song
1092: fd        mov   y,a
1093: e8 00     mov   a,#$00
1095: da 3e     movw  $3e,ya
1097: da 40     movw  $40,ya
1099: cd 00     mov   x,#$00
109b: e7 3e     mov   a,($3e+x)
109d: 3a 3e     incw  $3e
109f: c4 36     mov   $36,a
10a1: d0 01     bne   $10a4
10a3: 6f        ret

10a4: 1c        asl   a
10a5: 60        clrc
10a6: 88 01     adc   a,#$01
10a8: 8d 00     mov   y,#$00
10aa: 7a 40     addw  ya,$40
10ac: da 40     movw  $40,ya
10ae: e8 00     mov   a,#$00
10b0: c4 34     mov   $34,a
10b2: e4 34     mov   a,$34
10b4: 1c        asl   a
10b5: 5d        mov   x,a
10b6: f4 59     mov   a,$59+x
10b8: c4 42     mov   $42,a
10ba: 3d        inc   x
10bb: f4 59     mov   a,$59+x
10bd: c4 43     mov   $43,a
10bf: eb 34     mov   y,$34
10c1: cd 10     mov   x,#$10
10c3: d9 00     mov   $00+y,x
10c5: cd 0a     mov   x,#$0a
10c7: d9 20     mov   $20+y,x
10c9: f8 34     mov   x,$34
10cb: d9 10     mov   $10+y,x
10cd: cd 00     mov   x,#$00
10cf: e7 3e     mov   a,($3e+x)
10d1: 2d        push  a
10d2: 3a 3e     incw  $3e
10d4: e7 3e     mov   a,($3e+x)
10d6: fd        mov   y,a
10d7: 3a 3e     incw  $3e
10d9: ae        pop   a
10da: 7a 40     addw  ya,$40
10dc: da 44     movw  $44,ya
10de: e8 00     mov   a,#$00
10e0: 8d 00     mov   y,#$00
10e2: d7 42     mov   ($42)+y,a
10e4: fc        inc   y
10e5: d7 42     mov   ($42)+y,a
10e7: fc        inc   y
10e8: e4 44     mov   a,$44
10ea: d7 42     mov   ($42)+y,a
10ec: fc        inc   y
10ed: e4 45     mov   a,$45
10ef: d7 42     mov   ($42)+y,a
10f1: fc        inc   y
10f2: e4 44     mov   a,$44
10f4: d7 42     mov   ($42)+y,a
10f6: fc        inc   y
10f7: e4 45     mov   a,$45
10f9: d7 42     mov   ($42)+y,a
10fb: fc        inc   y
10fc: e8 00     mov   a,#$00
10fe: d7 42     mov   ($42)+y,a
1100: fc        inc   y
1101: e8 00     mov   a,#$00
1103: d7 42     mov   ($42)+y,a
1105: fc        inc   y
1106: ad 28     cmp   y,#$28
1108: d0 f9     bne   $1103
110a: ab 34     inc   $34
110c: e4 36     mov   a,$36
110e: 64 34     cmp   a,$34
1110: d0 a0     bne   $10b2
1112: e8 08     mov   a,#$08
1114: 64 34     cmp   a,$34
1116: f0 1b     beq   $1133
1118: f8 34     mov   x,$34
111a: e5 98 11  mov   a,$1198
111d: 74 00     cmp   a,$00+x
111f: d0 0a     bne   $112b
1121: eb 34     mov   y,$34
1123: cd 00     mov   x,#$00
1125: d9 00     mov   $00+y,x
1127: d9 20     mov   $20+y,x
1129: d9 10     mov   $10+y,x
112b: ab 34     inc   $34
112d: e8 08     mov   a,#$08
112f: 64 34     cmp   a,$34
1131: d0 e5     bne   $1118
1133: cd 00     mov   x,#$00
1135: f5 98 11  mov   a,$1198+x
1138: cd 00     mov   x,#$00
113a: 8d 08     mov   y,#$08
113c: 74 00     cmp   a,$00+x
113e: d0 08     bne   $1148
1140: 2d        push  a
1141: f4 00     mov   a,$00+x
1143: 08 01     or    a,#$01
1145: d4 00     mov   $00+x,a
1147: ae        pop   a
1148: 3d        inc   x
1149: fe f1     dbnz  y,$113c
114b: e8 50     mov   a,#$50
114d: c4 30     mov   $30,a
114f: e8 00     mov   a,#$00
1151: c5 20 04  mov   $0420,a
1154: 6f        ret

1155: 5d        mov   x,a
1156: f5 98 11  mov   a,$1198+x
1159: 08 01     or    a,#$01
115b: cd 00     mov   x,#$00
115d: 8d 08     mov   y,#$08
115f: 74 00     cmp   a,$00+x
1161: d0 31     bne   $1194
1163: 2d        push  a
1164: 4d        push  x
1165: 6d        push  y
1166: d8 33     mov   $33,x
1168: 7d        mov   a,x
1169: 1c        asl   a
116a: 5d        mov   x,a
116b: f5 59 00  mov   a,$0059+x
116e: c4 40     mov   $40,a
1170: 3d        inc   x
1171: f5 59 00  mov   a,$0059+x
1174: c4 41     mov   $41,a
1176: 3f 05 07  call  $0705
1179: 90 11     bcc   $118c
117b: 3f f4 06  call  $06f4
117e: e8 00     mov   a,#$00
1180: 8d 00     mov   y,#$00
1182: 3f fd 06  call  $06fd
1185: e8 01     mov   a,#$01
1187: 8d 00     mov   y,#$00
1189: 3f fd 06  call  $06fd
118c: ee        pop   y
118d: ce        pop   x
118e: e8 00     mov   a,#$00
1190: d5 00 00  mov   $0000+x,a
1193: ae        pop   a
1194: 3d        inc   x
1195: fe c8     dbnz  y,$115f
1197: 6f        ret

1198: 10 20     bpl   $11ba
119a: 6f        ret

119b: 6f        ret

119c: cd 00     mov   x,#$00
119e: 1e 20 04  cmp   x,$0420
11a1: f0 01     beq   $11a4
11a3: 6f        ret

11a4: c5 20 04  mov   $0420,a
11a7: cc 21 04  mov   $0421,y
11aa: dd        mov   a,y
11ab: 5d        mov   x,a
11ac: e8 7f     mov   a,#$7f
11ae: 8d 00     mov   y,#$00
11b0: 9e        div   ya,x
11b1: c5 23 04  mov   $0423,a
11b4: cb 34     mov   $34,y
11b6: dd        mov   a,y
11b7: 60        clrc
11b8: 84 34     adc   a,$34
11ba: 60        clrc
11bb: 84 34     adc   a,$34
11bd: c5 22 04  mov   $0422,a
11c0: e8 00     mov   a,#$00
11c2: c5 24 04  mov   $0424,a
11c5: c5 25 04  mov   $0425,a
11c8: 6f        ret

11c9: e8 00     mov   a,#$00
11cb: 3f 55 11  call  $1155
11ce: 8f aa f4  mov   $f4,#$aa
11d1: 8f bb f5  mov   $f5,#$bb
11d4: 78 cc f4  cmp   $f4,#$cc
11d7: d0 fb     bne   $11d4
11d9: 2f 19     bra   $11f4
11db: eb f4     mov   y,$f4
11dd: d0 fc     bne   $11db
11df: 7e f4     cmp   y,$f4
11e1: d0 0b     bne   $11ee
11e3: e4 f5     mov   a,$f5
11e5: cb f4     mov   $f4,y
11e7: d7 3e     mov   ($3e)+y,a
11e9: fc        inc   y
11ea: d0 f3     bne   $11df
11ec: ab 3f     inc   $3f
11ee: 10 ef     bpl   $11df
11f0: 7e f4     cmp   y,$f4
11f2: 10 eb     bpl   $11df
11f4: ba f6     movw  ya,$f6
11f6: da 3e     movw  $3e,ya
11f8: ba f4     movw  ya,$f4
11fa: c4 f4     mov   $f4,a
11fc: dd        mov   a,y
11fd: 5d        mov   x,a
11fe: d0 db     bne   $11db
1200: 6f        ret

1201: 6f        ret

1202: c4 3e     mov   $3e,a
1204: e8 00     mov   a,#$00
1206: c4 3f     mov   $3f,a
1208: 8d 00     mov   y,#$00
120a: 7a 3e     addw  ya,$3e
120c: 7a 3e     addw  ya,$3e
120e: 7a 3e     addw  ya,$3e
1210: 7a 3e     addw  ya,$3e
1212: da 3e     movw  $3e,ya
1214: e8 0e     mov   a,#$0e
1216: fd        mov   y,a
1217: e8 6e     mov   a,#$6e
1219: 7a 3e     addw  ya,$3e
121b: cd 00     mov   x,#$00
121d: da 3e     movw  $3e,ya
121f: e7 3e     mov   a,($3e+x)
1221: c4 36     mov   $36,a
1223: c4 34     mov   $34,a
1225: 3a 3e     incw  $3e
1227: e7 3e     mov   a,($3e+x)
1229: c4 37     mov   $37,a
122b: 3a 3e     incw  $3e
122d: ba 3e     movw  ya,$3e
122f: da 40     movw  $40,ya
1231: f8 34     mov   x,$34
1233: e8 00     mov   a,#$00
1235: 74 00     cmp   a,$00+x
1237: f0 07     beq   $1240
1239: e4 37     mov   a,$37
123b: 74 20     cmp   a,$20+x
123d: 10 01     bpl   $1240
123f: 6f        ret

1240: e4 37     mov   a,$37
1242: d4 20     mov   $20+x,a
1244: e4 36     mov   a,$36
1246: d4 10     mov   $10+x,a
1248: e8 21     mov   a,#$21
124a: d4 00     mov   $00+x,a
124c: e4 34     mov   a,$34
124e: 1c        asl   a
124f: 5d        mov   x,a
1250: f4 59     mov   a,$59+x
1252: c4 42     mov   $42,a
1254: 3d        inc   x
1255: f4 59     mov   a,$59+x
1257: c4 43     mov   $43,a
1259: cd 00     mov   x,#$00
125b: e7 3e     mov   a,($3e+x)
125d: 2d        push  a
125e: 3a 3e     incw  $3e
1260: e7 3e     mov   a,($3e+x)
1262: fd        mov   y,a
1263: 3a 3e     incw  $3e
1265: ae        pop   a
1266: da 44     movw  $44,ya
1268: e8 00     mov   a,#$00
126a: 8d 00     mov   y,#$00
126c: d7 42     mov   ($42)+y,a
126e: fc        inc   y
126f: d7 42     mov   ($42)+y,a
1271: fc        inc   y
1272: e4 44     mov   a,$44
1274: d7 42     mov   ($42)+y,a
1276: fc        inc   y
1277: e4 45     mov   a,$45
1279: d7 42     mov   ($42)+y,a
127b: fc        inc   y
127c: e4 44     mov   a,$44
127e: d7 42     mov   ($42)+y,a
1280: fc        inc   y
1281: e4 45     mov   a,$45
1283: d7 42     mov   ($42)+y,a
1285: fc        inc   y
1286: e8 01     mov   a,#$01
1288: d7 42     mov   ($42)+y,a
128a: fc        inc   y
128b: e8 00     mov   a,#$00
128d: d7 42     mov   ($42)+y,a
128f: fc        inc   y
1290: ad 28     cmp   y,#$28
1292: d0 f9     bne   $128d
1294: 6f        ret

1295: 6f        ret

1296: e4 34     mov   a,$34
1298: eb 35     mov   y,$35
129a: 7a 36     addw  ya,$36
129c: 6f        ret

129d: e4 34     mov   a,$34
129f: eb 35     mov   y,$35
12a1: 9a 36     subw  ya,$36
12a3: 6f        ret

12a4: e4 35     mov   a,$35
12a6: 0d        push  psw
12a7: 10 0d     bpl   $12b6
12a9: e8 00     mov   a,#$00
12ab: 80        setc
12ac: a4 34     sbc   a,$34
12ae: c4 34     mov   $34,a
12b0: e8 00     mov   a,#$00
12b2: a4 35     sbc   a,$35
12b4: c4 35     mov   $35,a
12b6: 3f ca 12  call  $12ca
12b9: 8e        pop   psw
12ba: 10 0d     bpl   $12c9
12bc: e8 00     mov   a,#$00
12be: 80        setc
12bf: a4 34     sbc   a,$34
12c1: c4 34     mov   $34,a
12c3: e8 00     mov   a,#$00
12c5: a4 35     sbc   a,$35
12c7: c4 35     mov   $35,a
12c9: 6f        ret

12ca: 4d        push  x
12cb: 6d        push  y
12cc: cd 10     mov   x,#$10
12ce: e8 00     mov   a,#$00
12d0: c4 38     mov   $38,a
12d2: c4 39     mov   $39,a
12d4: 2b 34     rol   $34
12d6: 2b 35     rol   $35
12d8: 2b 38     rol   $38
12da: 2b 39     rol   $39
12dc: e4 38     mov   a,$38
12de: 80        setc
12df: a4 36     sbc   a,$36
12e1: fd        mov   y,a
12e2: e4 39     mov   a,$39
12e4: a4 37     sbc   a,$37
12e6: 90 04     bcc   $12ec
12e8: eb 38     mov   y,$38
12ea: e4 39     mov   a,$39
12ec: 2b 34     rol   $34
12ee: 2b 35     rol   $35
12f0: 1d        dec   x
12f1: d0 e5     bne   $12d8
12f3: ee        pop   y
12f4: ce        pop   x
12f5: 6f        ret

12f6: e4 34     mov   a,$34
12f8: eb 35     mov   y,$35
12fa: a8 80     sbc   a,#$80
12fc: 90 01     bcc   $12ff
12fe: fc        inc   y
12ff: dd        mov   a,y
1300: 6f        ret

1301: 1c        asl   a
1302: c4 46     mov   $46,a
1304: 1c        asl   a
1305: 60        clrc
1306: 84 46     adc   a,$46
1308: c4 46     mov   $46,a
130a: e8 00     mov   a,#$00
130c: c4 47     mov   $47,a
130e: e8 04     mov   a,#$04
1310: fd        mov   y,a
1311: e8 30     mov   a,#$30
1313: 7a 46     addw  ya,$46
1315: da 46     movw  $46,ya
1317: 8d 00     mov   y,#$00
1319: cd 00     mov   x,#$00
131b: e7 46     mov   a,($46+x)
131d: 3a 46     incw  $46
131f: 8d 20     mov   y,#$20
1321: d7 40     mov   ($40)+y,a
1323: e7 46     mov   a,($46+x)
1325: 3a 46     incw  $46
1327: 8d 21     mov   y,#$21
1329: d7 40     mov   ($40)+y,a
132b: e7 46     mov   a,($46+x)
132d: 3a 46     incw  $46
132f: 8d 22     mov   y,#$22
1331: d7 40     mov   ($40)+y,a
1333: e7 46     mov   a,($46+x)
1335: 3a 46     incw  $46
1337: 8d 23     mov   y,#$23
1339: d7 40     mov   ($40)+y,a
133b: e7 46     mov   a,($46+x)
133d: 3a 46     incw  $46
133f: 8d 29     mov   y,#$29
1341: d7 40     mov   ($40)+y,a
1343: e7 46     mov   a,($46+x)
1345: 3a 46     incw  $46
1347: 8d 28     mov   y,#$28
1349: d7 40     mov   ($40)+y,a
134b: 6f        ret

134c: e8 5d     mov   a,#$5d
134e: 8d 2a     mov   y,#$2a
1350: 3f 00 07  call  $0700
1353: 6f        ret

1354: 60        clrc
1355: e4 f4     mov   a,$f4
1357: 64 f4     cmp   a,$f4
1359: d0 0a     bne   $1365
135b: 80        setc
135c: 68 00     cmp   a,#$00
135e: f0 05     beq   $1365
1360: eb f5     mov   y,$f5
1362: 8f f1 f1  mov   $f1,#$f1
1365: 6f        ret

