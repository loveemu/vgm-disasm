0530: 20        clrp
0531: cd 7f     mov   x,#$7f
0533: bd        mov   sp,x
0534: e8 00     mov   a,#$00		; clear registers
0536: cd 00     mov   x,#$00
0538: 8d 00     mov   y,#$00
053a: 3f fa 07  call  $07fa		; clear RAM
053d: 3f 2b 08  call  $082b
0540: 3f 1a 15  call  $151a
0543: 3f 17 08  call  $0817
0546: 8f ee f4  mov   $f4,#$ee		; set communication ports
0549: 78 ff f6  cmp   $f6,#$ff
054c: d0 fb     bne   $0549
054e: 8f 03 f1  mov   $f1,#$03
0551: 3f 22 15  call  $1522
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
058a: 3f 51 12  call  $1251
058d: 2f 1e     bra   $05ad
058f: 7d        mov   a,x
0590: 28 0f     and   a,#$0f
0592: 3f 16 13  call  $1316
0595: 2f 16     bra   $05ad
0597: 3f 8a 13  call  $138a
059a: 2f 11     bra   $05ad
059c: 7d        mov   a,x
059d: 80        setc
059e: a8 40     sbc   a,#$40
05a0: 3f c3 13  call  $13c3
05a3: 2f 08     bra   $05ad
05a5: 7d        mov   a,x
05a6: 28 0f     and   a,#$0f
05a8: 3f 5d 13  call  $135d
05ab: 2f 00     bra   $05ad
05ad: e8 00     mov   a,#$00
05af: f8 fd     mov   x,$fd
05b1: f0 02     beq   $05b5
05b3: 08 01     or    a,#$01
05b5: f8 fe     mov   x,$fe
05b7: f0 02     beq   $05bb
05b9: 08 02     or    a,#$02
05bb: 68 00     cmp   a,#$00
05bd: f0 92     beq   $0551
05bf: c4 58     mov   $58,a
05c1: e8 00     mov   a,#$00
05c3: c4 33     mov   $33,a
05c5: e4 58     mov   a,$58
05c7: 28 01     and   a,#$01
05c9: f0 04     beq   $05cf
05cb: e4 30     mov   a,$30
05cd: c4 fa     mov   $fa,a
05cf: e4 58     mov   a,$58
05d1: 28 02     and   a,#$02
05d3: f0 04     beq   $05d9
05d5: e4 31     mov   a,$31
05d7: c4 fb     mov   $fb,a
05d9: 3f 46 09  call  $0946
05dc: e4 33     mov   a,$33
05de: 5d        mov   x,a
05df: f4 00     mov   a,$00+x
05e1: f0 63     beq   $0646
05e3: 28 0f     and   a,#$0f
05e5: 68 01     cmp   a,#$01
05e7: d0 5d     bne   $0646
05e9: 7d        mov   a,x
05ea: 1c        asl   a
05eb: 5d        mov   x,a
05ec: f5 59 00  mov   a,$0059+x
05ef: c4 40     mov   $40,a
05f1: 3d        inc   x
05f2: f5 59 00  mov   a,$0059+x
05f5: c4 41     mov   $41,a
05f7: 8d 06     mov   y,#$06
05f9: f7 40     mov   a,($40)+y
05fb: bc        inc   a
05fc: 24 58     and   a,$58
05fe: f0 46     beq   $0646
0600: 8d 04     mov   y,#$04
0602: f7 40     mov   a,($40)+y
0604: c4 44     mov   $44,a
0606: 8d 05     mov   y,#$05
0608: f7 40     mov   a,($40)+y
060a: c4 45     mov   $45,a
060c: 8d 00     mov   y,#$00
060e: f7 40     mov   a,($40)+y
0610: 68 00     cmp   a,#$00
0612: f0 10     beq   $0624
0614: 9c        dec   a
0615: d7 40     mov   ($40)+y,a
0617: e4 44     mov   a,$44
0619: 8d 04     mov   y,#$04
061b: d7 40     mov   ($40)+y,a
061d: e4 45     mov   a,$45
061f: fc        inc   y
0620: d7 40     mov   ($40)+y,a
0622: 2f 22     bra   $0646
0624: cd 00     mov   x,#$00
0626: e7 44     mov   a,($44+x)
0628: 3a 44     incw  $44
062a: 68 80     cmp   a,#$80		; check if next byte is a vcmd
062c: 10 05     bpl   $0633
062e: 3f ac 0d  call  $0dac
0631: 2f d9     bra   $060c
0633: 60        clrc			; dispatch current vcmd from table
0634: 28 7f     and   a,#$7f
0636: 1c        asl   a
0637: 5d        mov   x,a
0638: 3f 43 06  call  $0643
063b: f8 33     mov   x,$33
063d: f4 00     mov   a,$00+x
063f: f0 05     beq   $0646
0641: 2f c9     bra   $060c
0643: 1f cf 0a  jmp   ($0acf+x)

0646: ab 33     inc   $33
0648: 78 10 33  cmp   $33,#$10
064b: d0 8f     bne   $05dc
064d: e0        clrv
064e: e8 00     mov   a,#$00
0650: c4 33     mov   $33,a
0652: e4 33     mov   a,$33
0654: 5d        mov   x,a
0655: f4 00     mov   a,$00+x
0657: f0 55     beq   $06ae
0659: 28 0f     and   a,#$0f
065b: 68 01     cmp   a,#$01
065d: d0 4f     bne   $06ae
065f: 7d        mov   a,x
0660: 1c        asl   a
0661: 5d        mov   x,a
0662: f5 59 00  mov   a,$0059+x
0665: c4 40     mov   $40,a
0667: 3d        inc   x
0668: f5 59 00  mov   a,$0059+x
066b: c4 41     mov   $41,a
066d: 8d 06     mov   y,#$06
066f: f7 40     mov   a,($40)+y
0671: bc        inc   a
0672: 24 58     and   a,$58
0674: f0 38     beq   $06ae
0676: 8d 24     mov   y,#$24
0678: f7 40     mov   a,($40)+y
067a: 28 30     and   a,#$30
067c: f0 30     beq   $06ae
067e: 3f 3c 07  call  $073c
0681: 90 28     bcc   $06ab
0683: 3f 2b 07  call  $072b
0686: 8d 24     mov   y,#$24
0688: f7 40     mov   a,($40)+y
068a: 2d        push  a
068b: 28 08     and   a,#$08
068d: d0 1b     bne   $06aa
068f: e8 00     mov   a,#$00
0691: 8d 00     mov   y,#$00
0693: 3f 34 07  call  $0734
0696: e8 01     mov   a,#$01
0698: 8d 00     mov   y,#$00
069a: 3f 34 07  call  $0734
069d: ae        pop   a
069e: 28 10     and   a,#$10
06a0: d0 09     bne   $06ab
06a2: 3f 74 07  call  $0774
06a5: 3f 1d 0e  call  $0e1d
06a8: 2f 01     bra   $06ab
06aa: ae        pop   a
06ab: 3f 14 0e  call  $0e14
06ae: ab 33     inc   $33
06b0: 78 10 33  cmp   $33,#$10
06b3: d0 9d     bne   $0652
06b5: e8 00     mov   a,#$00
06b7: c4 33     mov   $33,a
06b9: e4 33     mov   a,$33
06bb: 5d        mov   x,a
06bc: f4 00     mov   a,$00+x
06be: f0 61     beq   $0721
06c0: 28 0f     and   a,#$0f
06c2: 68 01     cmp   a,#$01
06c4: d0 5b     bne   $0721
06c6: 7d        mov   a,x
06c7: 1c        asl   a
06c8: 5d        mov   x,a
06c9: f5 59 00  mov   a,$0059+x
06cc: c4 40     mov   $40,a
06ce: 3d        inc   x
06cf: f5 59 00  mov   a,$0059+x
06d2: c4 41     mov   $41,a
06d4: 8d 06     mov   y,#$06
06d6: f7 40     mov   a,($40)+y
06d8: bc        inc   a
06d9: 24 58     and   a,$58
06db: f0 44     beq   $0721
06dd: 3f 3c 07  call  $073c
06e0: 90 3f     bcc   $0721
06e2: e8 00     mov   a,#$00
06e4: c4 38     mov   $38,a
06e6: c4 39     mov   $39,a
06e8: c4 3a     mov   $3a,a
06ea: 3f d2 09  call  $09d2
06ed: 90 02     bcc   $06f1
06ef: ab 3a     inc   $3a
06f1: 3f 4c 0a  call  $0a4c
06f4: 90 08     bcc   $06fe
06f6: 8d 17     mov   y,#$17
06f8: f7 40     mov   a,($40)+y
06fa: c4 38     mov   $38,a
06fc: ab 3a     inc   $3a
06fe: e4 3a     mov   a,$3a
0700: f0 1f     beq   $0721
0702: 3f 2b 07  call  $072b
0705: 8d 0e     mov   y,#$0e
0707: f7 40     mov   a,($40)+y
0709: c4 36     mov   $36,a
070b: 8d 0f     mov   y,#$0f
070d: f7 40     mov   a,($40)+y
070f: c4 37     mov   $37,a
0711: 60        clrc
0712: e4 36     mov   a,$36
0714: 84 38     adc   a,$38
0716: c4 36     mov   $36,a
0718: e4 37     mov   a,$37
071a: 84 39     adc   a,$39
071c: c4 37     mov   $37,a
071e: 3f eb 07  call  $07eb
0721: ab 33     inc   $33
0723: 78 10 33  cmp   $33,#$10
0726: d0 91     bne   $06b9
0728: 5f 51 05  jmp   $0551

072b: e4 34     mov   a,$34
072d: 1c        asl   a
072e: 1c        asl   a
072f: 1c        asl   a
0730: 1c        asl   a
0731: c4 49     mov   $49,a
0733: 6f        ret

0734: 60        clrc
0735: 84 49     adc   a,$49
0737: c4 f2     mov   $f2,a
0739: cb f3     mov   $f3,y
073b: 6f        ret

073c: f8 33     mov   x,$33
073e: f4 10     mov   a,$10+x
0740: fb 20     mov   y,$20+x
0742: cd 00     mov   x,#$00
0744: 8f 10 3a  mov   $3a,#$10
0747: 8f 00 38  mov   $38,#$00
074a: 3e 33     cmp   x,$33
074c: f0 16     beq   $0764
074e: 2d        push  a
074f: f4 00     mov   a,$00+x
0751: ae        pop   a
0752: f0 10     beq   $0764
0754: 74 10     cmp   a,$10+x
0756: d0 0c     bne   $0764
0758: c4 34     mov   $34,a
075a: dd        mov   a,y
075b: 74 20     cmp   a,$20+x
075d: b0 03     bcs   $0762
075f: 8f 01 38  mov   $38,#$01
0762: e4 34     mov   a,$34
0764: 3d        inc   x
0765: 6e 3a e2  dbnz  $3a,$074a
0768: c4 34     mov   $34,a
076a: e8 00     mov   a,#$00
076c: 64 38     cmp   a,$38
076e: f0 02     beq   $0772
0770: 60        clrc
0771: 6f        ret

0772: 80        setc
0773: 6f        ret

0774: 8d 0e     mov   y,#$0e
0776: f7 40     mov   a,($40)+y
0778: c4 36     mov   $36,a
077a: 8d 0f     mov   y,#$0f
077c: f7 40     mov   a,($40)+y
077e: c4 37     mov   $37,a
0780: 3f eb 07  call  $07eb
0783: 8d 20     mov   y,#$20
0785: f7 40     mov   a,($40)+y
0787: fd        mov   y,a
0788: e8 04     mov   a,#$04
078a: 3f 34 07  call  $0734
078d: 8d 21     mov   y,#$21
078f: f7 40     mov   a,($40)+y
0791: fd        mov   y,a
0792: e8 05     mov   a,#$05
0794: 3f 34 07  call  $0734
0797: 8d 22     mov   y,#$22
0799: f7 40     mov   a,($40)+y
079b: fd        mov   y,a
079c: e8 06     mov   a,#$06
079e: 3f 34 07  call  $0734
07a1: 8d 23     mov   y,#$23
07a3: f7 40     mov   a,($40)+y
07a5: fd        mov   y,a
07a6: e8 07     mov   a,#$07
07a8: 3f 34 07  call  $0734
07ab: 8d 09     mov   y,#$09
07ad: f7 40     mov   a,($40)+y
07af: c4 36     mov   $36,a
07b1: 3f b5 07  call  $07b5
07b4: 6f        ret

07b5: 8d 27     mov   y,#$27
07b7: f7 40     mov   a,($40)+y
07b9: 28 0f     and   a,#$0f
07bb: 1c        asl   a
07bc: 1c        asl   a
07bd: 1c        asl   a
07be: 1c        asl   a
07bf: c4 38     mov   $38,a
07c1: 8d 0a     mov   y,#$0a
07c3: f7 40     mov   a,($40)+y
07c5: c4 3a     mov   $3a,a
07c7: eb 38     mov   y,$38
07c9: cf        mul   ya
07ca: e4 3a     mov   a,$3a
07cc: cb 38     mov   $38,y
07ce: 80        setc
07cf: a4 38     sbc   a,$38
07d1: c4 38     mov   $38,a
07d3: 3f 99 09  call  $0999
07d6: fd        mov   y,a
07d7: e8 00     mov   a,#$00
07d9: 3f 34 07  call  $0734
07dc: e4 3a     mov   a,$3a
07de: 80        setc
07df: a4 38     sbc   a,$38
07e1: 3f 99 09  call  $0999
07e4: fd        mov   y,a
07e5: e8 01     mov   a,#$01
07e7: 3f 34 07  call  $0734
07ea: 6f        ret

07eb: eb 36     mov   y,$36
07ed: e8 02     mov   a,#$02
07ef: 3f 34 07  call  $0734
07f2: eb 37     mov   y,$37
07f4: e8 03     mov   a,#$03
07f6: 3f 34 07  call  $0734
07f9: 6f        ret

07fa: e8 00     mov   a,#$00
07fc: 5d        mov   x,a
07fd: af        mov   (x)+,a
07fe: c8 59     cmp   x,#$59
0800: d0 fb     bne   $07fd
0802: e8 00     mov   a,#$00
0804: c5 20 04  mov   $0420,a
0807: c5 21 04  mov   $0421,a
080a: c5 22 04  mov   $0422,a
080d: c5 23 04  mov   $0423,a
0810: c5 24 04  mov   $0424,a
0813: c5 25 04  mov   $0425,a
0816: 6f        ret

0817: 8f 30 f1  mov   $f1,#$30
081a: e8 00     mov   a,#$00
081c: c4 f1     mov   $f1,a
081e: e8 00     mov   a,#$00
0820: c4 fa     mov   $fa,a
0822: c4 fb     mov   $fb,a
0824: c4 fc     mov   $fc,a
0826: e8 50     mov   a,#$50
0828: c4 30     mov   $30,a
082a: 6f        ret

082b: e8 6d     mov   a,#$6d
082d: 8d f8     mov   y,#$f8
082f: 3f 37 07  call  $0737
0832: e8 3d     mov   a,#$3d
0834: 8d 00     mov   y,#$00
0836: 3f 37 07  call  $0737
0839: e8 4d     mov   a,#$4d
083b: 8d 00     mov   y,#$00
083d: 3f 37 07  call  $0737
0840: e8 7d     mov   a,#$7d
0842: 8d 00     mov   y,#$00
0844: 3f 37 07  call  $0737
0847: e8 0d     mov   a,#$0d
0849: 8d 00     mov   y,#$00
084b: 3f 37 07  call  $0737
084e: e8 2d     mov   a,#$2d
0850: 8d 00     mov   y,#$00
0852: 3f 37 07  call  $0737
0855: e8 6c     mov   a,#$6c
0857: 8d 20     mov   y,#$20
0859: 3f 37 07  call  $0737
085c: e8 0c     mov   a,#$0c
085e: 8d 70     mov   y,#$70
0860: 3f 37 07  call  $0737
0863: e8 1c     mov   a,#$1c
0865: 8d 70     mov   y,#$70
0867: 3f 37 07  call  $0737
086a: e8 2c     mov   a,#$2c
086c: 8d 00     mov   y,#$00
086e: 3f 37 07  call  $0737
0871: e8 3c     mov   a,#$3c
0873: 8d 00     mov   y,#$00
0875: 3f 37 07  call  $0737
0878: e8 0f     mov   a,#$0f
087a: 8d 7f     mov   y,#$7f
087c: 3f 37 07  call  $0737
087f: e8 1f     mov   a,#$1f
0881: 8d 00     mov   y,#$00
0883: 3f 37 07  call  $0737
0886: e8 2f     mov   a,#$2f
0888: 8d 00     mov   y,#$00
088a: 3f 37 07  call  $0737
088d: e8 3f     mov   a,#$3f
088f: 8d 00     mov   y,#$00
0891: 3f 37 07  call  $0737
0894: e8 4f     mov   a,#$4f
0896: 8d 00     mov   y,#$00
0898: 3f 37 07  call  $0737
089b: e8 5f     mov   a,#$5f
089d: 8d 00     mov   y,#$00
089f: 3f 37 07  call  $0737
08a2: e8 6f     mov   a,#$6f
08a4: 8d 00     mov   y,#$00
08a6: 3f 37 07  call  $0737
08a9: e8 7f     mov   a,#$7f
08ab: 8d 00     mov   y,#$00
08ad: 3f 37 07  call  $0737
08b0: 3f d1 08  call  $08d1
08b3: 00        nop
08b4: 00        nop
08b5: 00        nop
08b6: 00        nop
08b7: 00        nop
08b8: 3f c9 08  call  $08c9
08bb: 00        nop
08bc: 00        nop
08bd: 00        nop
08be: 00        nop
08bf: 00        nop
08c0: 6f        ret

08c1: e8 5c     mov   a,#$5c
08c3: 8d ff     mov   y,#$ff
08c5: 3f 37 07  call  $0737
08c8: 6f        ret

08c9: e8 4c     mov   a,#$4c
08cb: 8d ff     mov   y,#$ff
08cd: 3f 37 07  call  $0737
08d0: 6f        ret

08d1: e8 00     mov   a,#$00
08d3: 8d 00     mov   y,#$00
08d5: e8 00     mov   a,#$00
08d7: 8d 00     mov   y,#$00
08d9: 3f 37 07  call  $0737
08dc: e8 01     mov   a,#$01
08de: 8d 00     mov   y,#$00
08e0: 3f 37 07  call  $0737
08e3: e8 10     mov   a,#$10
08e5: 8d 00     mov   y,#$00
08e7: 3f 37 07  call  $0737
08ea: e8 11     mov   a,#$11
08ec: 8d 00     mov   y,#$00
08ee: 3f 37 07  call  $0737
08f1: e8 20     mov   a,#$20
08f3: 8d 00     mov   y,#$00
08f5: 3f 37 07  call  $0737
08f8: e8 21     mov   a,#$21
08fa: 8d 00     mov   y,#$00
08fc: 3f 37 07  call  $0737
08ff: e8 30     mov   a,#$30
0901: 8d 00     mov   y,#$00
0903: 3f 37 07  call  $0737
0906: e8 31     mov   a,#$31
0908: 8d 00     mov   y,#$00
090a: 3f 37 07  call  $0737
090d: e8 40     mov   a,#$40
090f: 8d 00     mov   y,#$00
0911: 3f 37 07  call  $0737
0914: e8 41     mov   a,#$41
0916: 8d 00     mov   y,#$00
0918: 3f 37 07  call  $0737
091b: e8 50     mov   a,#$50
091d: 8d 00     mov   y,#$00
091f: 3f 37 07  call  $0737
0922: e8 51     mov   a,#$51
0924: 8d 00     mov   y,#$00
0926: 3f 37 07  call  $0737
0929: e8 60     mov   a,#$60
092b: 8d 00     mov   y,#$00
092d: 3f 37 07  call  $0737
0930: e8 61     mov   a,#$61
0932: 8d 00     mov   y,#$00
0934: 3f 37 07  call  $0737
0937: e8 70     mov   a,#$70
0939: 8d 00     mov   y,#$00
093b: 3f 37 07  call  $0737
093e: e8 71     mov   a,#$71
0940: 8d 00     mov   y,#$00
0942: 3f 37 07  call  $0737
0945: 6f        ret

0946: e5 20 04  mov   a,$0420
0949: f0 4d     beq   $0998
094b: e5 21 04  mov   a,$0421
094e: d0 23     bne   $0973
0950: e5 20 04  mov   a,$0420
0953: 5c        lsr   a
0954: 90 05     bcc   $095b
0956: e8 00     mov   a,#$00
0958: 3f 16 13  call  $1316
095b: 5c        lsr   a
095c: 90 05     bcc   $0963
095e: e8 01     mov   a,#$01
0960: 3f 16 13  call  $1316
0963: e8 00     mov   a,#$00
0965: c5 20 04  mov   $0420,a
0968: c5 21 04  mov   $0421,a
096b: c5 22 04  mov   $0422,a
096e: c5 23 04  mov   $0423,a
0971: 2f 25     bra   $0998
0973: e5 26 04  mov   a,$0426
0976: bc        inc   a
0977: 28 0f     and   a,#$0f
0979: c5 26 04  mov   $0426,a
097c: d0 1a     bne   $0998
097e: e5 21 04  mov   a,$0421
0981: 9c        dec   a
0982: c5 21 04  mov   $0421,a
0985: 60        clrc
0986: e5 24 04  mov   a,$0424
0989: 85 22 04  adc   a,$0422
098c: c5 24 04  mov   $0424,a
098f: e5 25 04  mov   a,$0425
0992: 85 23 04  adc   a,$0423
0995: c5 25 04  mov   $0425,a
0998: 6f        ret

0999: cd 00     mov   x,#$00
099b: 1e 20 04  cmp   x,$0420
099e: f0 2e     beq   $09ce
09a0: f8 33     mov   x,$33
09a2: c4 47     mov   $47,a
09a4: f4 00     mov   a,$00+x
09a6: 5c        lsr   a
09a7: 5c        lsr   a
09a8: 5c        lsr   a
09a9: 5c        lsr   a
09aa: c4 46     mov   $46,a
09ac: 25 20 04  and   a,$0420
09af: f0 0c     beq   $09bd
09b1: e4 47     mov   a,$47
09b3: 80        setc
09b4: a5 25 04  sbc   a,$0425
09b7: 10 15     bpl   $09ce
09b9: e8 00     mov   a,#$00
09bb: 2f 11     bra   $09ce
09bd: e4 46     mov   a,$46
09bf: 25 20 04  and   a,$0420
09c2: f0 0b     beq   $09cf
09c4: e4 47     mov   a,$47
09c6: 80        setc
09c7: a5 25 04  sbc   a,$0425
09ca: 10 02     bpl   $09ce
09cc: e8 00     mov   a,#$00
09ce: 6f        ret

09cf: e4 47     mov   a,$47
09d1: 6f        ret

09d2: 8d 24     mov   y,#$24
09d4: f7 40     mov   a,($40)+y
09d6: 28 04     and   a,#$04
09d8: d0 02     bne   $09dc
09da: 60        clrc
09db: 6f        ret

09dc: 8d 13     mov   y,#$13
09de: f7 40     mov   a,($40)+y
09e0: f0 68     beq   $0a4a
09e2: 8d 12     mov   y,#$12
09e4: f7 40     mov   a,($40)+y
09e6: f0 30     beq   $0a18
09e8: 9c        dec   a
09e9: 8d 12     mov   y,#$12
09eb: d7 40     mov   ($40)+y,a
09ed: 8d 0e     mov   y,#$0e
09ef: f7 40     mov   a,($40)+y
09f1: c4 38     mov   $38,a
09f3: 8d 0f     mov   y,#$0f
09f5: f7 40     mov   a,($40)+y
09f7: c4 39     mov   $39,a
09f9: 8d 14     mov   y,#$14
09fb: f7 40     mov   a,($40)+y
09fd: c4 3a     mov   $3a,a
09ff: 8d 15     mov   y,#$15
0a01: f7 40     mov   a,($40)+y
0a03: c4 3b     mov   $3b,a
0a05: 60        clrc
0a06: ba 38     movw  ya,$38
0a08: 7a 3a     addw  ya,$3a
0a0a: da 38     movw  $38,ya
0a0c: 8d 0e     mov   y,#$0e
0a0e: d7 40     mov   ($40)+y,a
0a10: e4 39     mov   a,$39
0a12: 8d 0f     mov   y,#$0f
0a14: d7 40     mov   ($40)+y,a
0a16: 2f 32     bra   $0a4a
0a18: 8d 10     mov   y,#$10
0a1a: f7 40     mov   a,($40)+y
0a1c: c4 38     mov   $38,a
0a1e: 8d 11     mov   y,#$11
0a20: f7 40     mov   a,($40)+y
0a22: c4 39     mov   $39,a
0a24: 8d 0e     mov   y,#$0e
0a26: f7 40     mov   a,($40)+y
0a28: c4 3a     mov   $3a,a
0a2a: 8d 0f     mov   y,#$0f
0a2c: f7 40     mov   a,($40)+y
0a2e: c4 3b     mov   $3b,a
0a30: e4 38     mov   a,$38
0a32: 64 3a     cmp   a,$3a
0a34: d0 08     bne   $0a3e
0a36: e4 39     mov   a,$39
0a38: 64 3b     cmp   a,$3b
0a3a: d0 02     bne   $0a3e
0a3c: 60        clrc
0a3d: 6f        ret

0a3e: e4 38     mov   a,$38
0a40: 8d 0e     mov   y,#$0e
0a42: d7 40     mov   ($40)+y,a
0a44: e4 39     mov   a,$39
0a46: 8d 0f     mov   y,#$0f
0a48: d7 40     mov   ($40)+y,a
0a4a: 80        setc
0a4b: 6f        ret

0a4c: 8d 24     mov   y,#$24
0a4e: f7 40     mov   a,($40)+y
0a50: 28 02     and   a,#$02
0a52: d0 02     bne   $0a56
0a54: 60        clrc
0a55: 6f        ret

0a56: 8d 00     mov   y,#$00
0a58: 8d 1a     mov   y,#$1a
0a5a: f7 40     mov   a,($40)+y
0a5c: f0 6f     beq   $0acd
0a5e: 8d 19     mov   y,#$19
0a60: f7 40     mov   a,($40)+y
0a62: f0 07     beq   $0a6b
0a64: 9c        dec   a
0a65: 8d 19     mov   y,#$19
0a67: d7 40     mov   ($40)+y,a
0a69: 2f 62     bra   $0acd
0a6b: 8d 17     mov   y,#$17
0a6d: f7 40     mov   a,($40)+y
0a6f: c4 36     mov   $36,a
0a71: 8d 1b     mov   y,#$1b
0a73: f7 40     mov   a,($40)+y
0a75: c4 38     mov   $38,a
0a77: e8 00     mov   a,#$00
0a79: c4 37     mov   $37,a
0a7b: c4 39     mov   $39,a
0a7d: 8d 1f     mov   y,#$1f
0a7f: f7 40     mov   a,($40)+y
0a81: 68 00     cmp   a,#$00
0a83: d0 2b     bne   $0ab0
0a85: 60        clrc
0a86: ba 36     movw  ya,$36
0a88: 7a 38     addw  ya,$38
0a8a: da 36     movw  $36,ya
0a8c: c4 37     mov   $37,a
0a8e: 8d 1d     mov   y,#$1d
0a90: f7 40     mov   a,($40)+y
0a92: c4 38     mov   $38,a
0a94: e4 36     mov   a,$36
0a96: 64 38     cmp   a,$38
0a98: e4 37     mov   a,$37
0a9a: a4 39     sbc   a,$39
0a9c: 90 10     bcc   $0aae
0a9e: e8 01     mov   a,#$01
0aa0: 8d 1f     mov   y,#$1f
0aa2: d7 40     mov   ($40)+y,a
0aa4: 8d 1d     mov   y,#$1d
0aa6: f7 40     mov   a,($40)+y
0aa8: c4 36     mov   $36,a
0aaa: e8 00     mov   a,#$00
0aac: c4 37     mov   $37,a
0aae: 2f 17     bra   $0ac7
0ab0: 80        setc
0ab1: ba 36     movw  ya,$36
0ab3: 9a 38     subw  ya,$38
0ab5: da 36     movw  $36,ya
0ab7: e4 37     mov   a,$37
0ab9: 10 f3     bpl   $0aae
0abb: e8 00     mov   a,#$00
0abd: 8d 1f     mov   y,#$1f
0abf: d7 40     mov   ($40)+y,a
0ac1: e8 00     mov   a,#$00
0ac3: c4 36     mov   $36,a
0ac5: c4 37     mov   $37,a
0ac7: e4 36     mov   a,$36
0ac9: 8d 17     mov   y,#$17
0acb: d7 40     mov   ($40)+y,a
0acd: 80        setc
0ace: 6f        ret

; vcmd table (80-95)
0acf: dw $0afb		; 80 - set variables?
0ad1: dw $0b37		; 81 - (2 bytes)
0ad3: dw $0b12		; 82 - start of song loop
0ad5: dw $0b78		; 83 - (7 bytes)
0ad7: dw $0bcd		; 84 - set tempo
0ad9: dw $0bdf		; 85 - set instrument
0adb: dw $0be9		; 86 - (3 bytes)
0add: dw $0c0a		; 87 - (1 byte)
0adf: dw $0c13		; 88 - set ASDR bit 7
0ae1: dw $0c1c		; 89 - clear ASDR bits
0ae3: dw $0c25		; 8a - set up vibrato parameters
0ae5: dw $0c6f		; 8b - set ASDR bit 6
0ae7: dw $0c78		; 8c - set ASDR bits on
0ae9: dw $0c81		; 8d - (2 bytes)
0aeb: dw $0d2e		; 8e - nop
0aed: dw $0d2f		; 8f - set ASDR bit 5
0aef: dw $0d38		; 90 - clear ASDR bits
0af1: dw $0d41		; 91 - restart channel
0af3: dw $0d4d		; 92 - repeat section
0af5: dw $0d8f		; 93 - set ASDR bit 4
0af7: dw $0d98		; 94 - set panning
0af9: dw $0ece		; 95 - stop channel


0afb: cd 00     mov   x,#$00		; vcmd 80 - set variables?
0afd: e7 44     mov   a,($44+x)
0aff: 3a 44     incw  $44
0b01: c4 4b     mov   $4b,a
0b03: c4 4d     mov   $4d,a
0b05: e8 00     mov   a,#$00
0b07: c4 4a     mov   $4a,a
0b09: c4 4c     mov   $4c,a
0b0b: c4 4e     mov   $4e,a
0b0d: c4 4f     mov   $4f,a
0b0f: c4 50     mov   $50,a
0b11: 6f        ret

0b12: cd 00     mov   x,#$00		; vcmd 82 - start of song loop
0b14: e7 44     mov   a,($44+x)
0b16: 3a 44     incw  $44
0b18: 8d 08     mov   y,#$08
0b1a: d7 40     mov   ($40)+y,a
0b1c: 8d 0a     mov   y,#$0a
0b1e: d7 40     mov   ($40)+y,a
0b20: e8 00     mov   a,#$00
0b22: 8d 07     mov   y,#$07
0b24: d7 40     mov   ($40)+y,a
0b26: 8d 09     mov   y,#$09
0b28: d7 40     mov   ($40)+y,a
0b2a: 8d 0b     mov   y,#$0b
0b2c: d7 40     mov   ($40)+y,a
0b2e: 8d 0c     mov   y,#$0c
0b30: d7 40     mov   ($40)+y,a
0b32: 8d 0d     mov   y,#$0d
0b34: d7 40     mov   ($40)+y,a
0b36: 6f        ret

0b37: cd 00     mov   x,#$00		; vcmd 81 - (2 bytes)
0b39: e7 44     mov   a,($44+x)
0b3b: 3a 44     incw  $44
0b3d: c4 34     mov   $34,a
0b3f: e7 44     mov   a,($44+x)
0b41: 3a 44     incw  $44
0b43: c4 36     mov   $36,a
0b45: e4 34     mov   a,$34
0b47: c4 4d     mov   $4d,a
0b49: e4 36     mov   a,$36
0b4b: c4 4e     mov   $4e,a
0b4d: e8 00     mov   a,#$00
0b4f: c4 4c     mov   $4c,a
0b51: e4 4a     mov   a,$4a
0b53: c4 34     mov   $34,a
0b55: e4 4b     mov   a,$4b
0b57: c4 35     mov   $35,a
0b59: e4 4c     mov   a,$4c
0b5b: c4 36     mov   $36,a
0b5d: e4 4d     mov   a,$4d
0b5f: c4 37     mov   $37,a
0b61: 3f 6b 14  call  $146b
0b64: e4 4e     mov   a,$4e
0b66: c4 37     mov   $37,a
0b68: e8 00     mov   a,#$00
0b6a: c4 36     mov   $36,a
0b6c: 3f 72 14  call  $1472
0b6f: e4 34     mov   a,$34
0b71: c4 4f     mov   $4f,a
0b73: e4 35     mov   a,$35
0b75: c4 50     mov   $50,a
0b77: 6f        ret

0b78: cd 00     mov   x,#$00		; vcmd 83 - (7 bytes)
0b7a: e7 44     mov   a,($44+x)
0b7c: 3a 44     incw  $44
0b7e: c4 34     mov   $34,a
0b80: e7 44     mov   a,($44+x)
0b82: 3a 44     incw  $44
0b84: c4 36     mov   $36,a
0b86: e4 34     mov   a,$34
0b88: 8d 0a     mov   y,#$0a
0b8a: d7 40     mov   ($40)+y,a
0b8c: e4 36     mov   a,$36
0b8e: 8d 0b     mov   y,#$0b
0b90: d7 40     mov   ($40)+y,a
0b92: e8 00     mov   a,#$00
0b94: 8d 09     mov   y,#$09
0b96: d7 40     mov   ($40)+y,a
0b98: e7 44     mov   a,($44+x)
0b9a: 3a 44     incw  $44
0b9c: c4 34     mov   $34,a
0b9e: e7 44     mov   a,($44+x)
0ba0: 3a 44     incw  $44
0ba2: c4 35     mov   $35,a
0ba4: e7 44     mov   a,($44+x)
0ba6: 3a 44     incw  $44
0ba8: c4 36     mov   $36,a
0baa: e7 44     mov   a,($44+x)
0bac: 3a 44     incw  $44
0bae: c4 37     mov   $37,a
0bb0: 3f 6b 14  call  $146b
0bb3: e7 44     mov   a,($44+x)
0bb5: 3a 44     incw  $44
0bb7: c4 37     mov   $37,a
0bb9: e8 00     mov   a,#$00
0bbb: c4 36     mov   $36,a
0bbd: 3f 72 14  call  $1472
0bc0: e4 34     mov   a,$34
0bc2: 8d 0c     mov   y,#$0c
0bc4: d7 40     mov   ($40)+y,a
0bc6: e4 35     mov   a,$35
0bc8: 8d 0d     mov   y,#$0d
0bca: d7 40     mov   ($40)+y,a
0bcc: 6f        ret

0bcd: cd 00     mov   x,#$00		; vcmd 84 - set tempo
0bcf: e7 44     mov   a,($44+x)
0bd1: 3a 44     incw  $44
0bd3: c4 34     mov   $34,a
0bd5: 8d 06     mov   y,#$06
0bd7: f7 40     mov   a,($40)+y
0bd9: c4 36     mov   $36,a
0bdb: 3f c7 0e  call  $0ec7
0bde: 6f        ret

0bdf: cd 00     mov   x,#$00		; vcmd 85 - set instrument
0be1: e7 44     mov   a,($44+x)
0be3: 3a 44     incw  $44
0be5: 3f cf 14  call  $14cf
0be8: 6f        ret

0be9: cd 00     mov   x,#$00		; vcmd 86 - (3 bytes)
0beb: e7 44     mov   a,($44+x)
0bed: 3a 44     incw  $44
0bef: c4 34     mov   $34,a
0bf1: e7 44     mov   a,($44+x)
0bf3: 3a 44     incw  $44
0bf5: c4 36     mov   $36,a
0bf7: e7 44     mov   a,($44+x)
0bf9: 3a 44     incw  $44
0bfb: c4 38     mov   $38,a
0bfd: e4 34     mov   a,$34
0bff: c4 54     mov   $54,a
0c01: e4 36     mov   a,$36
0c03: c4 52     mov   $52,a
0c05: e4 36     mov   a,$36
0c07: c4 53     mov   $53,a
0c09: 6f        ret

0c0a: cd 00     mov   x,#$00		; vcmd 87 - (1 byte)
0c0c: e7 44     mov   a,($44+x)
0c0e: 3a 44     incw  $44
0c10: c4 51     mov   $51,a
0c12: 6f        ret

0c13: 8d 24     mov   y,#$24		; vcmd 88 - set ASDR bit 7
0c15: f7 40     mov   a,($40)+y
0c17: 08 01     or    a,#$01
0c19: d7 40     mov   ($40)+y,a
0c1b: 6f        ret

0c1c: 8d 24     mov   y,#$24		; vcmd 89 - clear ASDR bits
0c1e: f7 40     mov   a,($40)+y
0c20: 28 fe     and   a,#$fe
0c22: d7 40     mov   ($40)+y,a
0c24: 6f        ret

0c25: cd 00     mov   x,#$00		; vcmd 8a - set up vibrato parameters
0c27: e7 44     mov   a,($44+x)
0c29: 3a 44     incw  $44
0c2b: 8d 19     mov   y,#$19
0c2d: d7 40     mov   ($40)+y,a
0c2f: 8d 1a     mov   y,#$1a
0c31: d7 40     mov   ($40)+y,a
0c33: e7 44     mov   a,($44+x)
0c35: 3a 44     incw  $44
0c37: 2d        push  a
0c38: e7 44     mov   a,($44+x)		; vibrato
0c3a: 3a 44     incw  $44
0c3c: 8d 1d     mov   y,#$1d
0c3e: d7 40     mov   ($40)+y,a
0c40: ce        pop   x
0c41: 8d 00     mov   y,#$00
0c43: 9e        div   ya,x
0c44: 8d 1b     mov   y,#$1b
0c46: d7 40     mov   ($40)+y,a
0c48: e8 00     mov   a,#$00
0c4a: 8d 17     mov   y,#$17
0c4c: d7 40     mov   ($40)+y,a
0c4e: 8d 1f     mov   y,#$1f
0c50: d7 40     mov   ($40)+y,a
0c52: 6f        ret

0c53: 8d 24     mov   y,#$24
0c55: f7 40     mov   a,($40)+y
0c57: 28 02     and   a,#$02
0c59: d0 01     bne   $0c5c
0c5b: 6f        ret

0c5c: 8d 1a     mov   y,#$1a
0c5e: f7 40     mov   a,($40)+y
0c60: 8d 19     mov   y,#$19
0c62: d7 40     mov   ($40)+y,a
0c64: e8 00     mov   a,#$00
0c66: 8d 17     mov   y,#$17
0c68: d7 40     mov   ($40)+y,a
0c6a: 8d 1f     mov   y,#$1f
0c6c: d7 40     mov   ($40)+y,a
0c6e: 6f        ret

0c6f: 8d 24     mov   y,#$24		; vcmd 8b - set ASDR bit 6
0c71: f7 40     mov   a,($40)+y
0c73: 08 02     or    a,#$02
0c75: d7 40     mov   ($40)+y,a
0c77: 6f        ret

0c78: 8d 24     mov   y,#$24		; vcmd 8c - set ASDR bits on
0c7a: f7 40     mov   a,($40)+y
0c7c: 28 fb     and   a,#$fb
0c7e: d7 40     mov   ($40)+y,a
0c80: 6f        ret

0c81: cd 00     mov   x,#$00		; vcmd 8d - (2 bytes)
0c83: e7 44     mov   a,($44+x)
0c85: 3a 44     incw  $44
0c87: 8d 12     mov   y,#$12
0c89: d7 40     mov   ($40)+y,a
0c8b: 8d 13     mov   y,#$13
0c8d: d7 40     mov   ($40)+y,a
0c8f: e7 44     mov   a,($44+x)
0c91: 3a 44     incw  $44
0c93: 8d 16     mov   y,#$16
0c95: d7 40     mov   ($40)+y,a
0c97: 6f        ret

0c98: 2d        push  a
0c99: 8d 24     mov   y,#$24
0c9b: f7 40     mov   a,($40)+y
0c9d: 28 04     and   a,#$04
0c9f: ae        pop   a
0ca0: d0 01     bne   $0ca3
0ca2: 6f        ret

0ca3: c4 36     mov   $36,a
0ca5: 8d 16     mov   y,#$16
0ca7: f7 40     mov   a,($40)+y
0ca9: 60        clrc
0caa: 84 36     adc   a,$36
0cac: 10 02     bpl   $0cb0
0cae: e8 01     mov   a,#$01
0cb0: 68 55     cmp   a,#$55
0cb2: 90 02     bcc   $0cb6
0cb4: e8 55     mov   a,#$55
0cb6: 9c        dec   a
0cb7: c4 37     mov   $37,a
0cb9: e8 00     mov   a,#$00
0cbb: c4 36     mov   $36,a
0cbd: 8d 28     mov   y,#$28
0cbf: f7 40     mov   a,($40)+y
0cc1: c4 38     mov   $38,a
0cc3: 8d 29     mov   y,#$29
0cc5: f7 40     mov   a,($40)+y
0cc7: c4 39     mov   $39,a
0cc9: 3f 3d 0e  call  $0e3d
0ccc: e4 3a     mov   a,$3a
0cce: 8d 10     mov   y,#$10
0cd0: d7 40     mov   ($40)+y,a
0cd2: e4 3b     mov   a,$3b
0cd4: 8d 11     mov   y,#$11
0cd6: d7 40     mov   ($40)+y,a
0cd8: 8d 0e     mov   y,#$0e
0cda: f7 40     mov   a,($40)+y
0cdc: c4 38     mov   $38,a
0cde: 8d 0f     mov   y,#$0f
0ce0: f7 40     mov   a,($40)+y
0ce2: c4 39     mov   $39,a
0ce4: e4 3b     mov   a,$3b
0ce6: 64 39     cmp   a,$39
0ce8: b0 13     bcs   $0cfd
0cea: 80        setc
0ceb: e4 38     mov   a,$38
0ced: a4 3a     sbc   a,$3a
0cef: c4 38     mov   $38,a
0cf1: e4 39     mov   a,$39
0cf3: a4 3b     sbc   a,$3b
0cf5: c4 39     mov   $39,a
0cf7: e8 ff     mov   a,#$ff
0cf9: c4 3b     mov   $3b,a
0cfb: 2f 11     bra   $0d0e
0cfd: 80        setc
0cfe: e4 3a     mov   a,$3a
0d00: a4 38     sbc   a,$38
0d02: c4 38     mov   $38,a
0d04: e4 3b     mov   a,$3b
0d06: a4 39     sbc   a,$39
0d08: c4 39     mov   $39,a
0d0a: e8 00     mov   a,#$00
0d0c: c4 3b     mov   $3b,a
0d0e: 8d 13     mov   y,#$13
0d10: f7 40     mov   a,($40)+y
0d12: 8d 12     mov   y,#$12
0d14: d7 40     mov   ($40)+y,a
0d16: 5d        mov   x,a
0d17: e4 38     mov   a,$38
0d19: eb 39     mov   y,$39
0d1b: 9e        div   ya,x
0d1c: f8 3b     mov   x,$3b
0d1e: 10 03     bpl   $0d23
0d20: 48 ff     eor   a,#$ff
0d22: bc        inc   a
0d23: 8d 14     mov   y,#$14
0d25: d7 40     mov   ($40)+y,a
0d27: e4 3b     mov   a,$3b
0d29: 8d 15     mov   y,#$15
0d2b: d7 40     mov   ($40)+y,a
0d2d: 6f        ret

0d2e: 6f        ret			; vcmd 8e - nop

0d2f: 8d 24     mov   y,#$24		; vcmd 8f - set ASDR bit 5
0d31: f7 40     mov   a,($40)+y
0d33: 08 04     or    a,#$04
0d35: d7 40     mov   ($40)+y,a
0d37: 6f        ret

0d38: 8d 24     mov   y,#$24		; vcmd 90 - clear ASDR bits
0d3a: f7 40     mov   a,($40)+y
0d3c: 28 fb     and   a,#$fb
0d3e: d7 40     mov   ($40)+y,a
0d40: 6f        ret

0d41: 8d 02     mov   y,#$02		; vcmd 91 - restart channel
0d43: f7 40     mov   a,($40)+y
0d45: c4 44     mov   $44,a
0d47: fc        inc   y
0d48: f7 40     mov   a,($40)+y
0d4a: c4 45     mov   $45,a
0d4c: 6f        ret

0d4d: cd 00     mov   x,#$00		; vcmd 92 - repeat section
0d4f: e7 44     mov   a,($44+x)
0d51: 3a 44     incw  $44
0d53: fd        mov   y,a
0d54: 68 ff     cmp   a,#$ff
0d56: f0 1a     beq   $0d72
0d58: e7 44     mov   a,($44+x)
0d5a: 68 ff     cmp   a,#$ff
0d5c: f0 06     beq   $0d64
0d5e: 68 00     cmp   a,#$00
0d60: f0 05     beq   $0d67
0d62: 2f 12     bra   $0d76
0d64: dd        mov   a,y
0d65: 2f 0f     bra   $0d76
0d67: e8 ff     mov   a,#$ff
0d69: c7 44     mov   ($44+x),a
0d6b: 3a 44     incw  $44
0d6d: 3a 44     incw  $44
0d6f: 3a 44     incw  $44
0d71: 6f        ret

0d72: 3a 44     incw  $44
0d74: 2f 05     bra   $0d7b
0d76: 9c        dec   a
0d77: c7 44     mov   ($44+x),a
0d79: 3a 44     incw  $44
0d7b: e7 44     mov   a,($44+x)
0d7d: 3a 44     incw  $44
0d7f: c4 34     mov   $34,a
0d81: e7 44     mov   a,($44+x)
0d83: 3a 44     incw  $44
0d85: c4 35     mov   $35,a
0d87: ba 44     movw  ya,$44
0d89: 9a 34     subw  ya,$34
0d8b: e0        clrv
0d8c: da 44     movw  $44,ya
0d8e: 6f        ret

0d8f: 8d 24     mov   y,#$24		; vcmd 93 - set ASDR bit 4
0d91: f7 40     mov   a,($40)+y
0d93: 08 08     or    a,#$08
0d95: d7 40     mov   ($40)+y,a
0d97: 6f        ret

0d98: cd 00     mov   x,#$00		; vcmd 94 - set panning
0d9a: e7 44     mov   a,($44+x)
0d9c: 3a 44     incw  $44
0d9e: 8d 27     mov   y,#$27
0da0: d7 40     mov   ($40)+y,a
0da2: 6f        ret

0da3: 8d 24     mov   y,#$24
0da5: f7 40     mov   a,($40)+y
0da7: 28 f7     and   a,#$f7
0da9: d7 40     mov   ($40)+y,a
0dab: 6f        ret

0dac: cd 00     mov   x,#$00
0dae: 2d        push  a
0daf: 8d 25     mov   y,#$25
0db1: f7 40     mov   a,($40)+y
0db3: 8d 26     mov   y,#$26
0db5: d7 40     mov   ($40)+y,a
0db7: e7 44     mov   a,($44+x)
0db9: 3a 44     incw  $44
0dbb: 8d 00     mov   y,#$00
0dbd: d7 40     mov   ($40)+y,a
0dbf: ae        pop   a
0dc0: 8d 25     mov   y,#$25
0dc2: d7 40     mov   ($40)+y,a
0dc4: 9c        dec   a
0dc5: 30 36     bmi   $0dfd
0dc7: c4 37     mov   $37,a
0dc9: e8 00     mov   a,#$00
0dcb: c4 36     mov   $36,a
0dcd: 8d 28     mov   y,#$28
0dcf: f7 40     mov   a,($40)+y
0dd1: c4 38     mov   $38,a
0dd3: 8d 29     mov   y,#$29
0dd5: f7 40     mov   a,($40)+y
0dd7: c4 39     mov   $39,a
0dd9: 3f 3d 0e  call  $0e3d
0ddc: e4 3a     mov   a,$3a
0dde: 8d 0e     mov   y,#$0e
0de0: d7 40     mov   ($40)+y,a
0de2: e4 3b     mov   a,$3b
0de4: 8d 0f     mov   y,#$0f
0de6: d7 40     mov   ($40)+y,a
0de8: 8d 24     mov   y,#$24
0dea: f7 40     mov   a,($40)+y
0dec: 28 0f     and   a,#$0f
0dee: 08 20     or    a,#$20
0df0: d7 40     mov   ($40)+y,a
0df2: 8d 25     mov   y,#$25
0df4: f7 40     mov   a,($40)+y
0df6: 3f 98 0c  call  $0c98
0df9: 3f 53 0c  call  $0c53
0dfc: 6f        ret

0dfd: e8 00     mov   a,#$00
0dff: 8d 0e     mov   y,#$0e
0e01: d7 40     mov   ($40)+y,a
0e03: 8d 0f     mov   y,#$0f
0e05: d7 40     mov   ($40)+y,a
0e07: 8d 24     mov   y,#$24
0e09: f7 40     mov   a,($40)+y
0e0b: 28 0f     and   a,#$0f
0e0d: 08 10     or    a,#$10
0e0f: d7 40     mov   ($40)+y,a
0e11: 5f f2 0d  jmp   $0df2

0e14: 8d 24     mov   y,#$24
0e16: f7 40     mov   a,($40)+y
0e18: 28 c7     and   a,#$c7
0e1a: d7 40     mov   ($40)+y,a
0e1c: 6f        ret

0e1d: f8 34     mov   x,$34
0e1f: f5 35 0e  mov   a,$0e35+x
0e22: fd        mov   y,a
0e23: e8 4c     mov   a,#$4c
0e25: 3f 37 07  call  $0737
0e28: 6f        ret

0e29: f8 34     mov   x,$34
0e2b: f5 35 0e  mov   a,$0e35+x
0e2e: fd        mov   y,a
0e2f: e8 5c     mov   a,#$5c
0e31: 3f 37 07  call  $0737
0e34: 6f        ret

0e35: db $01,$02,$04,$08,$10,$20,$40,$80

0e3d: 8d 00     mov   y,#$00
0e3f: e4 37     mov   a,$37
0e41: 80        setc
0e42: a8 34     sbc   a,#$34
0e44: b0 09     bcs   $0e4f
0e46: e4 37     mov   a,$37
0e48: 80        setc
0e49: a8 13     sbc   a,#$13
0e4b: b0 06     bcs   $0e53
0e4d: dc        dec   y
0e4e: 1c        asl   a
0e4f: 7a 36     addw  ya,$36
0e51: da 36     movw  $36,ya
0e53: e4 37     mov   a,$37
0e55: 1c        asl   a
0e56: 8d 00     mov   y,#$00
0e58: cd 18     mov   x,#$18
0e5a: 9e        div   ya,x
0e5b: 5d        mov   x,a
0e5c: f6 ae 0e  mov   a,$0eae+y
0e5f: c4 3b     mov   $3b,a
0e61: f6 ad 0e  mov   a,$0ead+y
0e64: c4 3a     mov   $3a,a
0e66: f6 b0 0e  mov   a,$0eb0+y
0e69: 2d        push  a
0e6a: f6 af 0e  mov   a,$0eaf+y
0e6d: ee        pop   y
0e6e: 9a 3a     subw  ya,$3a
0e70: eb 36     mov   y,$36
0e72: cf        mul   ya
0e73: dd        mov   a,y
0e74: 8d 00     mov   y,#$00
0e76: 7a 3a     addw  ya,$3a
0e78: cb 3b     mov   $3b,y
0e7a: 1c        asl   a
0e7b: 2b 3b     rol   $3b
0e7d: c4 3a     mov   $3a,a
0e7f: 2f 04     bra   $0e85
0e81: 4b 3b     lsr   $3b
0e83: 7c        ror   a
0e84: 3d        inc   x
0e85: c8 06     cmp   x,#$06
0e87: d0 f8     bne   $0e81
0e89: c4 3a     mov   $3a,a
0e8b: e4 38     mov   a,$38
0e8d: eb 3b     mov   y,$3b
0e8f: cf        mul   ya
0e90: da 3c     movw  $3c,ya
0e92: e4 38     mov   a,$38
0e94: eb 3a     mov   y,$3a
0e96: cf        mul   ya
0e97: 6d        push  y
0e98: e4 39     mov   a,$39
0e9a: eb 3a     mov   y,$3a
0e9c: cf        mul   ya
0e9d: 7a 3c     addw  ya,$3c
0e9f: da 3c     movw  $3c,ya
0ea1: e4 39     mov   a,$39
0ea3: eb 3b     mov   y,$3b
0ea5: cf        mul   ya
0ea6: fd        mov   y,a
0ea7: ae        pop   a
0ea8: 7a 3c     addw  ya,$3c
0eaa: da 3a     movw  $3a,ya
0eac: 6f        ret

0ead: dw $085f
0eaf: dw $08de
0eb1: dw $0965
0eb3: dw $09f4
0eb5: dw $0a8c
0eb7: dw $0b2c
0eb9: dw $0bd6
0ebb: dw $0c8b
0ebd: dw $0d4a
0ebf: dw $0e14
0ec1: dw $0eea 

0ec3: cd 0f     mov   x,#$0f
0ec5: be        das   a
0ec6: 10 e4     bpl   $0eac
0ec8: 34 f8     and   a,$f8+x
0eca: 36 d4 30  and   a,$30d4+y
0ecd: 6f        ret

0ece: eb 33     mov   y,$33		; vcmd 95 - stop channel
0ed0: cd 00     mov   x,#$00
0ed2: d9 00     mov   $00+y,x
0ed4: 6f        ret


0ed5: db $06,$14,$1d,$10,$07,$14,$1d,$10,$06,$14,$2a,$10,$07,$14,$2a,$10,$06,$14,$37,$10,$07,$14,$37,$10,$06,$14,$44,$10,$07,$14,$44,$10,$06,$14,$51,$10,$07,$14,$51,$10,$06,$14,$5e,$10,$07,$14,$5e,$10,$06,$1e,$6b,$10,$07,$1e,$6b,$10,$06,$16,$78,$10,$07,$16,$78,$10,$06,$16,$85,$10,$07,$16,$85,$10,$06,$16,$92,$10,$07,$16,$92,$10,$06,$15,$9f,$10,$07,$15,$9f,$10,$06,$15,$ac,$10,$07,$15,$ac,$10,$06,$15,$b9,$10,$07,$15,$b9,$10,$06,$1e,$c6,$10,$07,$1e,$c6,$10,$06,$1e,$d7,$10,$07,$1e,$d7,$10,$06,$19,$fe,$10,$07,$19,$fe,$10,$06,$19,$0b,$11,$07,$19,$0b,$11,$06,$14,$18,$11,$07,$14,$18,$11,$06,$14,$25,$11,$07,$14,$25,$11,$06,$14,$32,$11,$07,$14,$32,$11,$06,$19,$3f,$11,$07,$19,$3f,$11,$06,$19,$4c,$11,$07,$19,$4c,$11,$06,$19,$59,$11,$07,$19,$59,$11,$06,$19,$66,$11,$07,$19,$66,$11,$06,$19,$73,$11,$07,$19,$73,$11,$06,$19,$80,$11,$07,$19,$80,$11,$06,$19,$8d,$11,$07,$19,$8d,$11,$06,$19,$9a,$11,$07,$19,$9a,$11,$06,$19,$a7,$11,$07,$19,$a7,$11,$06,$19,$b4,$11,$07,$19,$b4,$11,$06,$23,$c1,$11,$07,$23,$c1,$11,$06,$23,$ce,$11,$07,$1e,$ce,$11,$06,$1e,$db,$11,$07,$1e,$db,$11,$06,$14,$e8,$11,$07,$14,$e8,$11,$06,$14,$f5,$11,$07,$14,$f5,$11,$06,$14,$02,$12,$07,$14,$02,$12,$06,$23,$0f,$12,$07,$23,$0f,$12,$06,$23,$1c,$12,$07,$23,$1c,$12,$06,$23,$29,$12,$07,$23,$29,$12,$06,$23,$36,$12,$07,$23,$36,$12,$06,$14,$43,$12,$07,$14,$43,$12,$84,$4c,$85,$0d,$94,$08,$82,$7f,$20,$30,$00,$02,$95,$84,$4c,$85,$0d,$94,$08,$82,$7f,$24,$30,$00,$02,$95,$84,$4c,$85,$0d,$94,$08,$82,$7f,$2c,$30,$00,$02,$95,$84,$4c,$85,$0e,$94,$08,$82,$7f,$25,$30,$00,$02,$95,$84,$4c,$85,$0e,$94,$08,$82,$7f,$2a,$30,$00,$02,$95,$84,$4c,$85,$0e,$94,$08,$82,$7f,$30,$30,$00,$02,$95,$84,$4c,$85,$0f,$94,$08,$82,$f0,$22,$60,$00,$02,$95,$84,$4c,$85,$0f,$94,$08,$82,$f0,$25,$60,$00,$02,$95,$84,$4c,$85,$10,$94,$08,$82,$f0,$1e,$48,$00,$02,$95,$84,$4c,$85,$10,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$10,$94,$08,$82,$f0,$27,$48,$00,$02,$95,$84,$4c,$85,$11,$94,$08,$82,$f0,$24,$48,$00,$02,$95,$84,$4c,$85,$11,$94,$08,$82,$f0,$27,$48,$00,$02,$95,$84,$4c,$85,$09,$94,$08,$82,$28,$29,$0c,$82,$0a,$29,$18,$00,$02,$95,$84,$64,$85,$05,$94,$08,$82,$3c,$27,$06,$29,$06,$2a,$06,$2c,$06,$82,$14,$27,$06,$29,$06,$2a,$06,$2c,$06,$82,$0a,$27,$06,$29,$06,$2a,$06,$2c,$06,$00,$02,$95,$84,$4c,$85,$13,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$13,$94,$08,$82,$f0,$29,$48,$00,$02,$95,$84,$4c,$85,$12,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$12,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$12,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$14,$94,$08,$82,$f0,$1d,$48,$00,$02,$95,$84,$4c,$85,$14,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$15,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$15,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$15,$94,$08,$82,$f0,$29,$48,$00,$02,$95,$84,$4c,$85,$16,$94,$08,$82,$f0,$29,$78,$00,$02,$95,$84,$4c,$85,$17,$94,$08,$82,$f0,$24,$78,$00,$02,$95,$84,$4c,$85,$18,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$18,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$18,$94,$08,$82,$f0,$29,$48,$00,$02,$95,$84,$4c,$85,$19,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$19,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$19,$94,$08,$82,$f0,$29,$48,$00,$02,$95,$84,$4c,$85,$1a,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$1b,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$1c,$94,$08,$82,$f0,$25,$c0,$00,$02,$95,$84,$4c,$85,$1d,$94,$08,$82,$f0,$1e,$48,$00,$02,$95,$84,$4c,$85,$1d,$94,$08,$82,$f0,$22,$48,$00,$02,$95,$84,$4c,$85,$1d,$94,$08,$82,$f0,$25,$48,$00,$02,$95,$84,$4c,$85,$1d,$94,$08,$82,$f0,$2d,$48,$00,$02,$95,$84,$4c,$85,$00,$94,$08,$82,$7f,$3a,$30,$00,$02,$95,$6f

1251: e8 15     mov   a,#$15		; load song
1253: fd        mov   y,a
1254: e8 80     mov   a,#$80
1256: da 3e     movw  $3e,ya
1258: da 40     movw  $40,ya
125a: cd 00     mov   x,#$00
125c: e7 3e     mov   a,($3e+x)
125e: 3a 3e     incw  $3e
1260: c4 36     mov   $36,a
1262: d0 01     bne   $1265
1264: 6f        ret

1265: 1c        asl   a
1266: 60        clrc
1267: 88 01     adc   a,#$01
1269: 8d 00     mov   y,#$00
126b: 7a 40     addw  ya,$40
126d: da 40     movw  $40,ya
126f: e8 00     mov   a,#$00
1271: c4 34     mov   $34,a
1273: e4 34     mov   a,$34
1275: 1c        asl   a
1276: 5d        mov   x,a
1277: f4 59     mov   a,$59+x
1279: c4 42     mov   $42,a
127b: 3d        inc   x
127c: f4 59     mov   a,$59+x
127e: c4 43     mov   $43,a
1280: eb 34     mov   y,$34
1282: cd 10     mov   x,#$10
1284: d9 00     mov   $00+y,x
1286: cd 0a     mov   x,#$0a
1288: d9 20     mov   $20+y,x
128a: f8 34     mov   x,$34
128c: d9 10     mov   $10+y,x
128e: cd 00     mov   x,#$00
1290: e7 3e     mov   a,($3e+x)
1292: 2d        push  a
1293: 3a 3e     incw  $3e
1295: e7 3e     mov   a,($3e+x)
1297: fd        mov   y,a
1298: 3a 3e     incw  $3e
129a: ae        pop   a
129b: 7a 40     addw  ya,$40
129d: da 44     movw  $44,ya
129f: e8 00     mov   a,#$00
12a1: 8d 00     mov   y,#$00
12a3: d7 42     mov   ($42)+y,a
12a5: fc        inc   y
12a6: d7 42     mov   ($42)+y,a
12a8: fc        inc   y
12a9: e4 44     mov   a,$44
12ab: d7 42     mov   ($42)+y,a
12ad: fc        inc   y
12ae: e4 45     mov   a,$45
12b0: d7 42     mov   ($42)+y,a
12b2: fc        inc   y
12b3: e4 44     mov   a,$44
12b5: d7 42     mov   ($42)+y,a
12b7: fc        inc   y
12b8: e4 45     mov   a,$45
12ba: d7 42     mov   ($42)+y,a
12bc: fc        inc   y
12bd: e8 00     mov   a,#$00
12bf: d7 42     mov   ($42)+y,a
12c1: fc        inc   y
12c2: e8 00     mov   a,#$00
12c4: d7 42     mov   ($42)+y,a
12c6: fc        inc   y
12c7: ad 28     cmp   y,#$28
12c9: d0 f9     bne   $12c4
12cb: ab 34     inc   $34
12cd: e4 36     mov   a,$36
12cf: 64 34     cmp   a,$34
12d1: d0 a0     bne   $1273
12d3: e8 10     mov   a,#$10
12d5: 64 34     cmp   a,$34
12d7: f0 1b     beq   $12f4
12d9: f8 34     mov   x,$34
12db: e5 59 13  mov   a,$1359
12de: 74 00     cmp   a,$00+x
12e0: d0 0a     bne   $12ec
12e2: eb 34     mov   y,$34
12e4: cd 00     mov   x,#$00
12e6: d9 00     mov   $00+y,x
12e8: d9 20     mov   $20+y,x
12ea: d9 10     mov   $10+y,x
12ec: ab 34     inc   $34
12ee: e8 10     mov   a,#$10
12f0: 64 34     cmp   a,$34
12f2: d0 e5     bne   $12d9
12f4: cd 00     mov   x,#$00
12f6: f5 59 13  mov   a,$1359+x
12f9: cd 00     mov   x,#$00
12fb: 8d 10     mov   y,#$10
12fd: 74 00     cmp   a,$00+x
12ff: d0 08     bne   $1309
1301: 2d        push  a
1302: f4 00     mov   a,$00+x
1304: 08 01     or    a,#$01
1306: d4 00     mov   $00+x,a
1308: ae        pop   a
1309: 3d        inc   x
130a: fe f1     dbnz  y,$12fd
130c: e8 50     mov   a,#$50
130e: c4 30     mov   $30,a
1310: e8 00     mov   a,#$00
1312: c5 20 04  mov   $0420,a
1315: 6f        ret

1316: 5d        mov   x,a
1317: f5 59 13  mov   a,$1359+x
131a: 08 01     or    a,#$01
131c: cd 00     mov   x,#$00
131e: 8d 10     mov   y,#$10
1320: 74 00     cmp   a,$00+x
1322: d0 31     bne   $1355
1324: 2d        push  a
1325: 4d        push  x
1326: 6d        push  y
1327: d8 33     mov   $33,x
1329: 7d        mov   a,x
132a: 1c        asl   a
132b: 5d        mov   x,a
132c: f5 59 00  mov   a,$0059+x
132f: c4 40     mov   $40,a
1331: 3d        inc   x
1332: f5 59 00  mov   a,$0059+x
1335: c4 41     mov   $41,a
1337: 3f 3c 07  call  $073c
133a: 90 11     bcc   $134d
133c: 3f 2b 07  call  $072b
133f: e8 00     mov   a,#$00
1341: 8d 00     mov   y,#$00
1343: 3f 34 07  call  $0734
1346: e8 01     mov   a,#$01
1348: 8d 00     mov   y,#$00
134a: 3f 34 07  call  $0734
134d: ee        pop   y
134e: ce        pop   x
134f: e8 00     mov   a,#$00
1351: d5 00 00  mov   $0000+x,a
1354: ae        pop   a
1355: 3d        inc   x
1356: fe c8     dbnz  y,$1320
1358: 6f        ret

1359: 10 20     bpl   $137b
135b: 6f        ret

135c: 6f        ret

135d: cd 00     mov   x,#$00
135f: 1e 20 04  cmp   x,$0420
1362: f0 01     beq   $1365
1364: 6f        ret

1365: c5 20 04  mov   $0420,a
1368: cc 21 04  mov   $0421,y
136b: dd        mov   a,y
136c: 5d        mov   x,a
136d: e8 7f     mov   a,#$7f
136f: 8d 00     mov   y,#$00
1371: 9e        div   ya,x
1372: c5 23 04  mov   $0423,a
1375: cb 34     mov   $34,y
1377: dd        mov   a,y
1378: 60        clrc
1379: 84 34     adc   a,$34
137b: 60        clrc
137c: 84 34     adc   a,$34
137e: c5 22 04  mov   $0422,a
1381: e8 00     mov   a,#$00
1383: c5 24 04  mov   $0424,a
1386: c5 25 04  mov   $0425,a
1389: 6f        ret

138a: e8 00     mov   a,#$00
138c: 3f 16 13  call  $1316
138f: 8f aa f4  mov   $f4,#$aa
1392: 8f bb f5  mov   $f5,#$bb
1395: 78 cc f4  cmp   $f4,#$cc
1398: d0 fb     bne   $1395
139a: 2f 19     bra   $13b5
139c: eb f4     mov   y,$f4
139e: d0 fc     bne   $139c
13a0: 7e f4     cmp   y,$f4
13a2: d0 0b     bne   $13af
13a4: e4 f5     mov   a,$f5
13a6: cb f4     mov   $f4,y
13a8: d7 3e     mov   ($3e)+y,a
13aa: fc        inc   y
13ab: d0 f3     bne   $13a0
13ad: ab 3f     inc   $3f
13af: 10 ef     bpl   $13a0
13b1: 7e f4     cmp   y,$f4
13b3: 10 eb     bpl   $13a0
13b5: ba f6     movw  ya,$f6
13b7: da 3e     movw  $3e,ya
13b9: ba f4     movw  ya,$f4
13bb: c4 f4     mov   $f4,a
13bd: dd        mov   a,y
13be: 5d        mov   x,a
13bf: d0 db     bne   $139c
13c1: 6f        ret

13c2: 6f        ret

13c3: c4 3e     mov   $3e,a
13c5: e8 00     mov   a,#$00
13c7: c4 3f     mov   $3f,a
13c9: 8d 00     mov   y,#$00
13cb: 7a 3e     addw  ya,$3e
13cd: 7a 3e     addw  ya,$3e
13cf: 7a 3e     addw  ya,$3e
13d1: 7a 3e     addw  ya,$3e
13d3: da 3e     movw  $3e,ya
13d5: e8 0e     mov   a,#$0e
13d7: fd        mov   y,a
13d8: e8 d5     mov   a,#$d5
13da: 7a 3e     addw  ya,$3e
13dc: cd 00     mov   x,#$00
13de: da 3e     movw  $3e,ya
13e0: e7 3e     mov   a,($3e+x)
13e2: c4 36     mov   $36,a
13e4: 60        clrc
13e5: 88 08     adc   a,#$08
13e7: c4 34     mov   $34,a
13e9: 3a 3e     incw  $3e
13eb: e7 3e     mov   a,($3e+x)
13ed: c4 37     mov   $37,a
13ef: 3a 3e     incw  $3e
13f1: ba 3e     movw  ya,$3e
13f3: da 40     movw  $40,ya
13f5: f8 34     mov   x,$34
13f7: e8 00     mov   a,#$00
13f9: 74 00     cmp   a,$00+x
13fb: f0 07     beq   $1404
13fd: e4 37     mov   a,$37
13ff: 74 20     cmp   a,$20+x
1401: 10 01     bpl   $1404
1403: 6f        ret

1404: e4 37     mov   a,$37
1406: d4 20     mov   $20+x,a
1408: e4 36     mov   a,$36
140a: d4 10     mov   $10+x,a
140c: e8 21     mov   a,#$21
140e: d4 00     mov   $00+x,a
1410: e4 34     mov   a,$34
1412: 1c        asl   a
1413: 5d        mov   x,a
1414: f4 59     mov   a,$59+x
1416: c4 42     mov   $42,a
1418: 3d        inc   x
1419: f4 59     mov   a,$59+x
141b: c4 43     mov   $43,a
141d: cd 00     mov   x,#$00
141f: e7 3e     mov   a,($3e+x)
1421: 2d        push  a
1422: 3a 3e     incw  $3e
1424: e7 3e     mov   a,($3e+x)
1426: fd        mov   y,a
1427: 3a 3e     incw  $3e
1429: ae        pop   a
142a: da 44     movw  $44,ya
142c: e8 00     mov   a,#$00
142e: 8d 00     mov   y,#$00
1430: d7 42     mov   ($42)+y,a
1432: fc        inc   y
1433: d7 42     mov   ($42)+y,a
1435: fc        inc   y
1436: e4 44     mov   a,$44
1438: d7 42     mov   ($42)+y,a
143a: fc        inc   y
143b: e4 45     mov   a,$45
143d: d7 42     mov   ($42)+y,a
143f: fc        inc   y
1440: e4 44     mov   a,$44
1442: d7 42     mov   ($42)+y,a
1444: fc        inc   y
1445: e4 45     mov   a,$45
1447: d7 42     mov   ($42)+y,a
1449: fc        inc   y
144a: e8 01     mov   a,#$01
144c: d7 42     mov   ($42)+y,a
144e: fc        inc   y
144f: e8 00     mov   a,#$00
1451: d7 42     mov   ($42)+y,a
1453: fc        inc   y
1454: ad 28     cmp   y,#$28
1456: d0 f9     bne   $1451
1458: 8d 06     mov   y,#$06
145a: e8 01     mov   a,#$01
145c: d7 42     mov   ($42)+y,a
145e: e8 32     mov   a,#$32
1460: c4 31     mov   $31,a
1462: 6f        ret

1463: 6f        ret

1464: e4 34     mov   a,$34
1466: eb 35     mov   y,$35
1468: 7a 36     addw  ya,$36
146a: 6f        ret

146b: e4 34     mov   a,$34
146d: eb 35     mov   y,$35
146f: 9a 36     subw  ya,$36
1471: 6f        ret

1472: e4 35     mov   a,$35
1474: 0d        push  psw
1475: 10 0d     bpl   $1484
1477: e8 00     mov   a,#$00
1479: 80        setc
147a: a4 34     sbc   a,$34
147c: c4 34     mov   $34,a
147e: e8 00     mov   a,#$00
1480: a4 35     sbc   a,$35
1482: c4 35     mov   $35,a
1484: 3f 98 14  call  $1498
1487: 8e        pop   psw
1488: 10 0d     bpl   $1497
148a: e8 00     mov   a,#$00
148c: 80        setc
148d: a4 34     sbc   a,$34
148f: c4 34     mov   $34,a
1491: e8 00     mov   a,#$00
1493: a4 35     sbc   a,$35
1495: c4 35     mov   $35,a
1497: 6f        ret

1498: 4d        push  x
1499: 6d        push  y
149a: cd 10     mov   x,#$10
149c: e8 00     mov   a,#$00
149e: c4 38     mov   $38,a
14a0: c4 39     mov   $39,a
14a2: 2b 34     rol   $34
14a4: 2b 35     rol   $35
14a6: 2b 38     rol   $38
14a8: 2b 39     rol   $39
14aa: e4 38     mov   a,$38
14ac: 80        setc
14ad: a4 36     sbc   a,$36
14af: fd        mov   y,a
14b0: e4 39     mov   a,$39
14b2: a4 37     sbc   a,$37
14b4: 90 04     bcc   $14ba
14b6: eb 38     mov   y,$38
14b8: e4 39     mov   a,$39
14ba: 2b 34     rol   $34
14bc: 2b 35     rol   $35
14be: 1d        dec   x
14bf: d0 e5     bne   $14a6
14c1: ee        pop   y
14c2: ce        pop   x
14c3: 6f        ret

14c4: e4 34     mov   a,$34
14c6: eb 35     mov   y,$35
14c8: a8 80     sbc   a,#$80
14ca: 90 01     bcc   $14cd
14cc: fc        inc   y
14cd: dd        mov   a,y
14ce: 6f        ret

14cf: 1c        asl   a
14d0: c4 46     mov   $46,a
14d2: 1c        asl   a
14d3: 60        clrc
14d4: 84 46     adc   a,$46
14d6: c4 46     mov   $46,a
14d8: e8 00     mov   a,#$00
14da: c4 47     mov   $47,a
14dc: e8 04     mov   a,#$04
14de: fd        mov   y,a
14df: e8 30     mov   a,#$30
14e1: 7a 46     addw  ya,$46
14e3: da 46     movw  $46,ya
14e5: 8d 00     mov   y,#$00
14e7: cd 00     mov   x,#$00
14e9: e7 46     mov   a,($46+x)
14eb: 3a 46     incw  $46
14ed: 8d 20     mov   y,#$20
14ef: d7 40     mov   ($40)+y,a
14f1: e7 46     mov   a,($46+x)
14f3: 3a 46     incw  $46
14f5: 8d 21     mov   y,#$21
14f7: d7 40     mov   ($40)+y,a
14f9: e7 46     mov   a,($46+x)
14fb: 3a 46     incw  $46
14fd: 8d 22     mov   y,#$22
14ff: d7 40     mov   ($40)+y,a
1501: e7 46     mov   a,($46+x)
1503: 3a 46     incw  $46
1505: 8d 23     mov   y,#$23
1507: d7 40     mov   ($40)+y,a
1509: e7 46     mov   a,($46+x)
150b: 3a 46     incw  $46
150d: 8d 29     mov   y,#$29
150f: d7 40     mov   ($40)+y,a
1511: e7 46     mov   a,($46+x)
1513: 3a 46     incw  $46
1515: 8d 28     mov   y,#$28
1517: d7 40     mov   ($40)+y,a
1519: 6f        ret

151a: e8 5d     mov   a,#$5d
151c: 8d 20     mov   y,#$20
151e: 3f 37 07  call  $0737
1521: 6f        ret

1522: 60        clrc
1523: e4 f4     mov   a,$f4
1525: 64 f4     cmp   a,$f4
1527: d0 0a     bne   $1533
1529: 80        setc
152a: 68 00     cmp   a,#$00
152c: f0 05     beq   $1533
152e: eb f5     mov   y,$f5
1530: 8f f3 f1  mov   $f1,#$f3
1533: 6f        ret


