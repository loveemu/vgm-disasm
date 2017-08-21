0300: 20        clrp
0301: cd ff     mov   x,#$ff
0303: bd        mov   sp,x
0304: e8 ff     mov   a,#$ff
0306: c5 f4 00  mov   $00f4,a
0309: c5 f5 00  mov   $00f5,a
030c: c5 f6 00  mov   $00f6,a
030f: c5 f7 00  mov   $00f7,a
0312: e8 00     mov   a,#$00
0314: c4 0d     mov   $0d,a
0316: 5d        mov   x,a
0317: af        mov   (x)+,a
0318: c8 e0     cmp   x,#$e0
031a: 90 fb     bcc   $0317
031c: 8d 00     mov   y,#$00
031e: cb 05     mov   $05,y
0320: 8f 01 06  mov   $06,#$01
0323: d7 05     mov   ($05)+y,a
0325: fc        inc   y
0326: d0 fb     bne   $0323
0328: ab 06     inc   $06
032a: 78 03 06  cmp   $06,#$03
032d: 90 f4     bcc   $0323
032f: 8d 06     mov   y,#$06
0331: f6 fe 0e  mov   a,$0efe+y
0334: c5 f2 00  mov   $00f2,a
0337: e8 00     mov   a,#$00
0339: c5 f3 00  mov   $00f3,a
033c: dc        dec   y
033d: dc        dec   y
033e: 10 f1     bpl   $0331
0340: bc        inc   a
0341: 3f 44 0c  call  $0c44
0344: e8 30     mov   a,#$30
0346: 8d 5d     mov   y,#$5d
0348: 3f a2 0e  call  $0ea2
034b: a2 28     set5  $28
034d: e8 30     mov   a,#$30
034f: c5 f1 00  mov   $00f1,a
0352: e8 10     mov   a,#$10
0354: c5 fa 00  mov   $00fa,a
0357: e8 20     mov   a,#$20
0359: c4 0f     mov   $0f,a
035b: c4 13     mov   $13,a
035d: e8 00     mov   a,#$00
035f: 8d 4c     mov   y,#$4c
0361: 3f a2 0e  call  $0ea2
0364: 9c        dec   a
0365: 8d 5c     mov   y,#$5c
0367: 3f a2 0e  call  $0ea2
036a: c4 1b     mov   $1b,a
036c: e8 01     mov   a,#$01
036e: c5 f1 00  mov   $00f1,a
0371: e8 04     mov   a,#$04
0373: c5 dc 02  mov   $02dc,a
0376: e8 00     mov   a,#$00
0378: c5 f4 00  mov   $00f4,a
037b: c5 f5 00  mov   $00f5,a
037e: c5 f7 00  mov   $00f7,a
0381: c4 20     mov   $20,a
0383: c4 12     mov   $12,a
0385: e8 80     mov   a,#$80
0387: c5 f6 00  mov   $00f6,a
038a: c4 1f     mov   $1f,a
038c: 3f 42 04  call  $0442
038f: 3f 07 04  call  $0407
0392: b0 f8     bcs   $038c
0394: 3f e4 03  call  $03e4
0397: 0d        push  psw
0398: 3f fc 04  call  $04fc
039b: 8e        pop   psw
039c: 90 0a     bcc   $03a8
039e: 3f 6d 04  call  $046d
03a1: b0 e9     bcs   $038c
03a3: 3f 34 05  call  $0534
03a6: 2f e4     bra   $038c
03a8: cd 00     mov   x,#$00
03aa: 8f 01 1e  mov   $1e,#$01
03ad: e4 1e     mov   a,$1e
03af: 2d        push  a
03b0: 8f 00 0d  mov   $0d,#$00
03b3: f4 33     mov   a,$33+x
03b5: 30 0c     bmi   $03c3
03b7: 28 40     and   a,#$40
03b9: d0 08     bne   $03c3
03bb: d8 1d     mov   $1d,x
03bd: 3f 98 08  call  $0898
03c0: 8f 00 0d  mov   $0d,#$00
03c3: ae        pop   a
03c4: c4 1e     mov   $1e,a
03c6: 3d        inc   x
03c7: 0b 1e     asl   $1e
03c9: d0 e2     bne   $03ad
03cb: 8f 00 0d  mov   $0d,#$00
03ce: cd 00     mov   x,#$00
03d0: e8 80     mov   a,#$80
03d2: 34 33     and   a,$33+x
03d4: 3d        inc   x
03d5: c8 08     cmp   x,#$08
03d7: 90 f9     bcc   $03d2
03d9: 3c        rol   a
03da: 90 b0     bcc   $038c
03dc: e8 01     mov   a,#$01
03de: c5 f7 00  mov   $00f7,a
03e1: 5f 8c 03  jmp   $038c

03e4: ec fd 00  mov   y,$00fd
03e7: f0 fb     beq   $03e4
03e9: cb 0e     mov   $0e,y
03eb: 6d        push  y
03ec: e8 20     mov   a,#$20
03ee: cf        mul   ya
03ef: 60        clrc
03f0: 84 11     adc   a,$11
03f2: c4 11     mov   $11,a
03f4: 90 07     bcc   $03fd
03f6: 69 1a 19  cmp   ($19),($1a)
03f9: f0 02     beq   $03fd
03fb: ab 19     inc   $19
03fd: e4 0f     mov   a,$0f
03ff: ee        pop   y
0400: cf        mul   ya
0401: 60        clrc
0402: 84 10     adc   a,$10
0404: c4 10     mov   $10,a
0406: 6f        ret

0407: e5 f4 00  mov   a,$00f4
040a: f0 fb     beq   $0407
040c: 65 dc 02  cmp   a,$02dc
040f: d0 02     bne   $0413
0411: 60        clrc
0412: 6f        ret

0413: c5 dc 02  mov   $02dc,a
0416: c5 f4 00  mov   $00f4,a
0419: 28 fe     and   a,#$fe
041b: 9c        dec   a
041c: 9c        dec   a
041d: 2d        push  a
041e: 5d        mov   x,a
041f: e8 04     mov   a,#$04
0421: 2d        push  a
0422: e8 28     mov   a,#$28
0424: 2d        push  a
0425: 1f 30 04  jmp   ($0430+x)

0428: ae        pop   a
0429: 5c        lsr   a
042a: 5d        mov   x,a
042b: f5 3c 04  mov   a,$043c+x
042e: 7c        ror   a
042f: 6f        ret

0430: dw $0c8c
0432: dw $042f
0434: dw $0dd6
0436: dw $0d32
0438: dw $0d3b
043a: dw $0ded

043c: db $01,$00,$00,$00,$00,$01

0442: 8d 00     mov   y,#$00
0444: ad 08     cmp   y,#$08
0446: f0 07     beq   $044f
0448: b0 08     bcs   $0452
044a: 69 1a 19  cmp   ($19),($1a)
044d: d0 11     bne   $0460
044f: e3 19 0e  bbs7  $19,$0460
0452: f6 fe 0e  mov   a,$0efe+y
0455: c5 f2 00  mov   $00f2,a
0458: f6 ff 0e  mov   a,$0eff+y
045b: 5d        mov   x,a
045c: e6        mov   a,(x)
045d: c5 f3 00  mov   $00f3,a
0460: fc        inc   y
0461: fc        inc   y
0462: ad 14     cmp   y,#$14
0464: 90 de     bcc   $0444
0466: 8f 00 2a  mov   $2a,#$00
0469: 8f 00 2e  mov   $2e,#$00
046c: 6f        ret

046d: e4 12     mov   a,$12
046f: f0 51     beq   $04c2
0471: e4 20     mov   a,$20
0473: 80        setc
0474: a8 02     sbc   a,#$02
0476: 90 07     bcc   $047f
0478: c4 20     mov   $20,a
047a: 3f c4 04  call  $04c4
047d: 2f 43     bra   $04c2
047f: e8 00     mov   a,#$00
0481: c4 2a     mov   $2a,a
0483: c4 2e     mov   $2e,a
0485: c4 12     mov   $12,a
0487: 8d 4c     mov   y,#$4c
0489: 3f a2 0e  call  $0ea2
048c: 8d 5c     mov   y,#$5c
048e: 9c        dec   a
048f: 3f a2 0e  call  $0ea2
0492: 3f e3 04  call  $04e3
0495: cd 09     mov   x,#$09
0497: e8 80     mov   a,#$80
0499: d4 33     mov   $33+x,a
049b: 1d        dec   x
049c: 10 fb     bpl   $0499
049e: e8 7f     mov   a,#$7f
04a0: 8d 0c     mov   y,#$0c
04a2: 3f a2 0e  call  $0ea2
04a5: 8d 1c     mov   y,#$1c
04a7: 3f a2 0e  call  $0ea2
04aa: e8 00     mov   a,#$00
04ac: 8d 2c     mov   y,#$2c
04ae: 3f a2 0e  call  $0ea2
04b1: 8d 3c     mov   y,#$3c
04b3: 3f a2 0e  call  $0ea2
04b6: c4 27     mov   $27,a
04b8: e8 01     mov   a,#$01
04ba: c5 f7 00  mov   $00f7,a
04bd: 8f ff 20  mov   $20,#$ff
04c0: 80        setc
04c1: 6f        ret

04c2: 60        clrc
04c3: 6f        ret

04c4: cd 00     mov   x,#$00
04c6: f4 33     mov   a,$33+x
04c8: 30 13     bmi   $04dd
04ca: c4 16     mov   $16,a
04cc: e8 ff     mov   a,#$ff
04ce: 3f 48 09  call  $0948
04d1: f5 78 02  mov   a,$0278+x
04d4: fd        mov   y,a
04d5: f5 6e 02  mov   a,$026e+x
04d8: da 03     movw  $03,ya
04da: 3f c7 07  call  $07c7
04dd: 3d        inc   x
04de: c8 08     cmp   x,#$08
04e0: 90 e4     bcc   $04c6
04e2: 6f        ret

04e3: 2d        push  a
04e4: 6d        push  y
04e5: 8d 00     mov   y,#$00
04e7: e8 00     mov   a,#$00
04e9: 3f a2 0e  call  $0ea2
04ec: fc        inc   y
04ed: 3f a2 0e  call  $0ea2
04f0: dd        mov   a,y
04f1: 60        clrc
04f2: 88 0f     adc   a,#$0f
04f4: 30 03     bmi   $04f9
04f6: fd        mov   y,a
04f7: 2f ee     bra   $04e7
04f9: ee        pop   y
04fa: ae        pop   a
04fb: 6f        ret

04fc: e4 1f     mov   a,$1f
04fe: 30 33     bmi   $0533
0500: 8f 00 0d  mov   $0d,#$00
0503: eb 0e     mov   y,$0e
0505: e4 13     mov   a,$13
0507: cf        mul   ya
0508: 60        clrc
0509: 84 14     adc   a,$14
050b: c4 14     mov   $14,a
050d: 90 0f     bcc   $051e
050f: cd 08     mov   x,#$08
0511: 8f 40 1e  mov   $1e,#$40
0514: 3f 44 05  call  $0544
0517: cd 09     mov   x,#$09
0519: 0b 1e     asl   $1e
051b: 5f 44 05  jmp   $0544

051e: cd 08     mov   x,#$08
0520: 8f 40 1e  mov   $1e,#$40
0523: f4 33     mov   a,$33+x
0525: 30 07     bmi   $052e
0527: c4 16     mov   $16,a
0529: d8 1d     mov   $1d,x
052b: 3f 98 08  call  $0898
052e: 3d        inc   x
052f: 0b 1e     asl   $1e
0531: d0 f0     bne   $0523
0533: 6f        ret

0534: cd 00     mov   x,#$00
0536: d8 22     mov   $22,x
0538: 8f 01 1e  mov   $1e,#$01
053b: 3f 44 05  call  $0544
053e: 3d        inc   x
053f: 0b 1e     asl   $1e
0541: d0 f8     bne   $053b
0543: 6f        ret

0544: d8 1d     mov   $1d,x
0546: f4 33     mov   a,$33+x
0548: 30 1c     bmi   $0566
054a: c4 16     mov   $16,a
054c: e4 1e     mov   a,$1e
054e: 2d        push  a
054f: e8 00     mov   a,#$00
0551: d3 16 03  bbc6  $16,$0557
0554: c4 1e     mov   $1e,a
0556: 9c        dec   a
0557: c4 0d     mov   $0d,a
0559: 3f 67 05  call  $0567
055c: ae        pop   a
055d: c4 1e     mov   $1e,a
055f: 8f 00 0d  mov   $0d,#$00
0562: e4 16     mov   a,$16
0564: d4 33     mov   $33+x,a
0566: 6f        ret

0567: f5 78 01  mov   a,$0178+x
056a: c4 00     mov   $00,a
056c: f5 82 01  mov   a,$0182+x
056f: c4 01     mov   $01,a
0571: 9b 3d     dec   $3d+x
0573: d0 46     bne   $05bb
0575: 52 16     clr2  $16
0577: a3 16 07  bbs5  $16,$0581
057a: e4 1e     mov   a,$1e
057c: 8d 5c     mov   y,#$5c
057e: 3f a2 0e  call  $0ea2
0581: f5 a0 01  mov   a,$01a0+x
0584: 30 08     bmi   $058e
0586: 3f ab 09  call  $09ab
0589: e8 ff     mov   a,#$ff
058b: d5 a0 01  mov   $01a0+x,a
058e: 3f 5a 09  call  $095a
0591: 68 e0     cmp   a,#$e0
0593: 90 05     bcc   $059a
0595: 3f 67 09  call  $0967
0598: 2f f4     bra   $058e
059a: fd        mov   y,a
059b: 28 7f     and   a,#$7f
059d: d4 3d     mov   $3d+x,a
059f: ad 80     cmp   y,#$80
05a1: b0 14     bcs   $05b7
05a3: 3f 5a 09  call  $095a
05a6: 0d        push  psw
05a7: 28 7f     and   a,#$7f
05a9: d4 ab     mov   $ab+x,a
05ab: 3f 12 06  call  $0612
05ae: b2 16     clr5  $16
05b0: 8e        pop   psw
05b1: 10 08     bpl   $05bb
05b3: a2 16     set5  $16
05b5: 2f 04     bra   $05bb
05b7: b2 16     clr5  $16
05b9: 42 16     set2  $16
05bb: f5 a0 01  mov   a,$01a0+x
05be: 10 06     bpl   $05c6
05c0: 3f 08 08  call  $0808
05c3: 3f d3 05  call  $05d3
05c6: e4 00     mov   a,$00
05c8: d5 78 01  mov   $0178+x,a
05cb: e4 01     mov   a,$01
05cd: d5 82 01  mov   $0182+x,a
05d0: 5f 3b 07  jmp   $073b

05d3: f4 65     mov   a,$65+x
05d5: f0 01     beq   $05d8
05d7: 6f        ret

05d8: 8d 00     mov   y,#$00
05da: f7 00     mov   a,($00)+y
05dc: 68 f5     cmp   a,#$f5
05de: d0 f7     bne   $05d7
05e0: 3a 00     incw  $00
05e2: 3f 5a 09  call  $095a
05e5: d4 6f     mov   $6f+x,a
05e7: 3f 5a 09  call  $095a
05ea: d4 65     mov   $65+x,a
05ec: 3f 5a 09  call  $095a
05ef: 28 7f     and   a,#$7f
05f1: d5 3c 01  mov   $013c+x,a
05f4: 80        setc
05f5: b5 00 01  sbc   a,$0100+x
05f8: fb 65     mov   y,$65+x
05fa: 6d        push  y
05fb: ce        pop   x
05fc: 3f 1f 07  call  $071f
05ff: d5 46 01  mov   $0146+x,a
0602: dd        mov   a,y
0603: d5 50 01  mov   $0150+x,a
0606: 6f        ret

0607: f5 00 01  mov   a,$0100+x
060a: c4 04     mov   $04,a
060c: f5 0a 01  mov   a,$010a+x
060f: c4 03     mov   $03,a
0611: 6f        ret

0612: c3 16 1b  bbs6  $16,$0630
0615: 2d        push  a
0616: 28 f0     and   a,#$f0
0618: 9f        xcn   a
0619: 8d 0c     mov   y,#$0c
061b: cf        mul   ya
061c: c5 24 06  mov   $0624,a
061f: ae        pop   a
0620: 28 0f     and   a,#$0f
0622: 60        clrc
0623: 88 24     adc   a,#$24
0625: fd        mov   y,a
0626: 2d        push  a
0627: b3 16 07  bbc5  $16,$0631
062a: f5 32 01  mov   a,$0132+x
062d: f0 02     beq   $0631
062f: ae        pop   a
0630: 6f        ret

0631: ae        pop   a
0632: d5 00 01  mov   $0100+x,a
0635: e8 00     mov   a,#$00
0637: d5 0a 01  mov   $010a+x,a
063a: a3 16 19  bbs5  $16,$0656
063d: f5 28 02  mov   a,$0228+x
0640: 5c        lsr   a
0641: e8 00     mov   a,#$00
0643: 7c        ror   a
0644: d5 3c 02  mov   $023c+x,a
0647: e8 00     mov   a,#$00
0649: d4 8d     mov   $8d+x,a
064b: d5 32 02  mov   $0232+x,a
064e: d5 00 02  mov   $0200+x,a
0651: d4 79     mov   $79+x,a
0653: 09 1e 2a  or    ($2a),($1e)
0656: 09 1e 22  or    ($22),($1e)
0659: f5 32 01  mov   a,$0132+x
065c: d4 65     mov   $65+x,a
065e: f0 1e     beq   $067e
0660: f5 14 01  mov   a,$0114+x
0663: d4 6f     mov   $6f+x,a
0665: f5 1e 01  mov   a,$011e+x
0668: d0 0a     bne   $0674
066a: f5 00 01  mov   a,$0100+x
066d: 80        setc
066e: b5 28 01  sbc   a,$0128+x
0671: d5 00 01  mov   $0100+x,a
0674: f5 28 01  mov   a,$0128+x
0677: 60        clrc
0678: 95 00 01  adc   a,$0100+x
067b: 3f ef 05  call  $05ef
067e: 3f 07 06  call  $0607
0681: 8d 00     mov   y,#$00
0683: e4 04     mov   a,$04
0685: 80        setc
0686: a8 34     sbc   a,#$34
0688: b0 09     bcs   $0693
068a: e4 04     mov   a,$04
068c: 80        setc
068d: a8 13     sbc   a,#$13
068f: b0 06     bcs   $0697
0691: dc        dec   y
0692: 1c        asl   a
0693: 7a 03     addw  ya,$03
0695: da 03     movw  $03,ya
0697: 4d        push  x
0698: 8d 00     mov   y,#$00
069a: cd 18     mov   x,#$18
069c: e4 04     mov   a,$04
069e: 1c        asl   a
069f: 9e        div   ya,x
06a0: 5d        mov   x,a
06a1: f6 ec 0f  mov   a,$0fec+y
06a4: c4 05     mov   $05,a
06a6: f6 ed 0f  mov   a,$0fed+y
06a9: c4 06     mov   $06,a
06ab: f6 ef 0f  mov   a,$0fef+y
06ae: 2d        push  a
06af: f6 ee 0f  mov   a,$0fee+y
06b2: ee        pop   y
06b3: 9a 05     subw  ya,$05
06b5: eb 03     mov   y,$03
06b7: cf        mul   ya
06b8: dd        mov   a,y
06b9: 8d 00     mov   y,#$00
06bb: 7a 05     addw  ya,$05
06bd: cb 06     mov   $06,y
06bf: 1c        asl   a
06c0: 2b 06     rol   $06
06c2: c4 05     mov   $05,a
06c4: 2f 04     bra   $06ca
06c6: 4b 06     lsr   $06
06c8: 7c        ror   a
06c9: 3d        inc   x
06ca: c8 06     cmp   x,#$06
06cc: d0 f8     bne   $06c6
06ce: c4 05     mov   $05,a
06d0: ce        pop   x
06d1: f5 8c 01  mov   a,$018c+x
06d4: eb 06     mov   y,$06
06d6: cf        mul   ya
06d7: da 07     movw  $07,ya
06d9: f5 8c 01  mov   a,$018c+x
06dc: eb 05     mov   y,$05
06de: cf        mul   ya
06df: 6d        push  y
06e0: f5 96 01  mov   a,$0196+x
06e3: eb 05     mov   y,$05
06e5: cf        mul   ya
06e6: 7a 07     addw  ya,$07
06e8: da 07     movw  $07,ya
06ea: f5 96 01  mov   a,$0196+x
06ed: eb 06     mov   y,$06
06ef: cf        mul   ya
06f0: fd        mov   y,a
06f1: ae        pop   a
06f2: 7a 07     addw  ya,$07
06f4: da 07     movw  $07,ya
06f6: 8f 00 06  mov   $06,#$00
06f9: f5 a1 00  mov   a,$00a1+x
06fc: 10 02     bpl   $0700
06fe: 8b 06     dec   $06
0700: c4 05     mov   $05,a
0702: ba 07     movw  ya,$07
0704: 7a 05     addw  ya,$05
0706: da 07     movw  $07,ya
0708: 3f 35 0c  call  $0c35
070b: b0 11     bcs   $071e
070d: 9f        xcn   a
070e: 08 02     or    a,#$02
0710: fd        mov   y,a
0711: e4 07     mov   a,$07
0713: 28 f0     and   a,#$f0
0715: 3f a2 0e  call  $0ea2
0718: fc        inc   y
0719: e4 08     mov   a,$08
071b: 3f a2 0e  call  $0ea2
071e: 6f        ret

071f: ed        notc
0720: 6b 02     ror   $02
0722: 10 03     bpl   $0727
0724: 48 ff     eor   a,#$ff
0726: bc        inc   a
0727: 8d 00     mov   y,#$00
0729: 9e        div   ya,x
072a: 2d        push  a
072b: e8 00     mov   a,#$00
072d: 9e        div   ya,x
072e: ee        pop   y
072f: f8 1d     mov   x,$1d
0731: f3 02 06  bbc7  $02,$073a
0734: da 05     movw  $05,ya
0736: ba 2f     movw  ya,$2f
0738: 9a 05     subw  ya,$05
073a: 6f        ret

073b: f4 47     mov   a,$47+x
073d: f0 24     beq   $0763
073f: 09 1e 22  or    ($22),($1e)
0742: 9b 47     dec   $47+x
0744: d0 0a     bne   $0750
0746: e8 00     mov   a,#$00
0748: d5 aa 02  mov   $02aa+x,a
074b: f5 d2 02  mov   a,$02d2+x
074e: 2f 10     bra   $0760
0750: 60        clrc
0751: f5 aa 02  mov   a,$02aa+x
0754: 95 be 02  adc   a,$02be+x
0757: d5 aa 02  mov   $02aa+x,a
075a: f5 b4 02  mov   a,$02b4+x
075d: 95 c8 02  adc   a,$02c8+x
0760: d5 b4 02  mov   $02b4+x,a
0763: fb 83     mov   y,$83+x
0765: f0 23     beq   $078a
0767: f5 1e 02  mov   a,$021e+x
076a: de 79 1b  cbne  $79+x,$0788
076d: 09 1e 22  or    ($22),($1e)
0770: f5 00 02  mov   a,$0200+x
0773: 10 07     bpl   $077c
0775: fc        inc   y
0776: d0 04     bne   $077c
0778: e8 80     mov   a,#$80
077a: 2f 04     bra   $0780
077c: 60        clrc
077d: 95 14 02  adc   a,$0214+x
0780: d5 00 02  mov   $0200+x,a
0783: 3f 3d 09  call  $093d
0786: 2f 07     bra   $078f
0788: bb 79     inc   $79+x
078a: e8 ff     mov   a,#$ff
078c: 3f 48 09  call  $0948
078f: f4 5b     mov   a,$5b+x
0791: f0 24     beq   $07b7
0793: 09 1e 22  or    ($22),($1e)
0796: 9b 5b     dec   $5b+x
0798: d0 0a     bne   $07a4
079a: e8 00     mov   a,#$00
079c: d5 6e 02  mov   $026e+x,a
079f: f5 96 02  mov   a,$0296+x
07a2: 2f 10     bra   $07b4
07a4: 60        clrc
07a5: f5 6e 02  mov   a,$026e+x
07a8: 95 82 02  adc   a,$0282+x
07ab: d5 6e 02  mov   $026e+x,a
07ae: f5 78 02  mov   a,$0278+x
07b1: 95 8c 02  adc   a,$028c+x
07b4: d5 78 02  mov   $0278+x,a
07b7: e4 1e     mov   a,$1e
07b9: 24 22     and   a,$22
07bb: d0 01     bne   $07be
07bd: 6f        ret

07be: f5 78 02  mov   a,$0278+x
07c1: fd        mov   y,a
07c2: f5 6e 02  mov   a,$026e+x
07c5: da 03     movw  $03,ya
07c7: 3f 35 0c  call  $0c35
07ca: b0 3b     bcs   $0807
07cc: 9f        xcn   a
07cd: c4 02     mov   $02,a
07cf: eb 04     mov   y,$04
07d1: f6 13 0f  mov   a,$0f13+y
07d4: 80        setc
07d5: b6 12 0f  sbc   a,$0f12+y
07d8: eb 03     mov   y,$03
07da: cf        mul   ya
07db: dd        mov   a,y
07dc: eb 04     mov   y,$04
07de: 60        clrc
07df: 96 12 0f  adc   a,$0f12+y
07e2: fd        mov   y,a
07e3: f5 64 01  mov   a,$0164+x
07e6: cf        mul   ya
07e7: f5 a0 02  mov   a,$02a0+x
07ea: 1c        asl   a
07eb: 13 02 01  bbc0  $02,$07ef
07ee: 1c        asl   a
07ef: dd        mov   a,y
07f0: 90 03     bcc   $07f5
07f2: 48 ff     eor   a,#$ff
07f4: bc        inc   a
07f5: eb 02     mov   y,$02
07f7: 3f a2 0e  call  $0ea2
07fa: 8d 14     mov   y,#$14
07fc: e8 00     mov   a,#$00
07fe: 9a 03     subw  ya,$03
0800: da 03     movw  $03,ya
0802: ab 02     inc   $02
0804: 33 02 c8  bbc1  $02,$07cf
0807: 6f        ret

0808: f2 31     clr7  $31
080a: f4 65     mov   a,$65+x
080c: f0 2b     beq   $0839
080e: f4 6f     mov   a,$6f+x
0810: f0 04     beq   $0816
0812: 9b 6f     dec   $6f+x
0814: 2f 23     bra   $0839
0816: e2 31     set7  $31
0818: 9b 65     dec   $65+x
081a: d0 0a     bne   $0826
081c: e8 00     mov   a,#$00
081e: d5 0a 01  mov   $010a+x,a
0821: f5 3c 01  mov   a,$013c+x
0824: 2f 10     bra   $0836
0826: 60        clrc
0827: f5 0a 01  mov   a,$010a+x
082a: 95 46 01  adc   a,$0146+x
082d: d5 0a 01  mov   $010a+x,a
0830: f5 00 01  mov   a,$0100+x
0833: 95 50 01  adc   a,$0150+x
0836: d5 00 01  mov   $0100+x,a
0839: 3f 07 06  call  $0607
083c: f4 97     mov   a,$97+x
083e: f0 54     beq   $0894
0840: f5 46 02  mov   a,$0246+x
0843: de 8d 4c  cbne  $8d+x,$0892
0846: f5 32 02  mov   a,$0232+x
0849: 75 28 02  cmp   a,$0228+x
084c: d0 05     bne   $0853
084e: f5 64 02  mov   a,$0264+x
0851: 2f 12     bra   $0865
0853: 2d        push  a
0854: f5 32 02  mov   a,$0232+x
0857: 9c        dec   a
0858: d5 32 02  mov   $0232+x,a
085b: ae        pop   a
085c: fd        mov   y,a
085d: f0 02     beq   $0861
085f: f4 97     mov   a,$97+x
0861: 60        clrc
0862: 95 5a 02  adc   a,$025a+x
0865: d4 97     mov   $97+x,a
0867: f5 3c 02  mov   a,$023c+x
086a: 60        clrc
086b: 95 50 02  adc   a,$0250+x
086e: d5 3c 02  mov   $023c+x,a
0871: c4 02     mov   $02,a
0873: 1c        asl   a
0874: 1c        asl   a
0875: 90 02     bcc   $0879
0877: 48 ff     eor   a,#$ff
0879: fd        mov   y,a
087a: f4 97     mov   a,$97+x
087c: 68 f1     cmp   a,#$f1
087e: 90 05     bcc   $0885
0880: 28 0f     and   a,#$0f
0882: cf        mul   ya
0883: 2f 04     bra   $0889
0885: cf        mul   ya
0886: dd        mov   a,y
0887: 8d 00     mov   y,#$00
0889: 3f 22 09  call  $0922
088c: 43 16 08  bbs2  $16,$0897
088f: 5f 81 06  jmp   $0681

0892: bb 8d     inc   $8d+x
0894: e3 31 f5  bbs7  $31,$088c
0897: 6f        ret

0898: f2 31     clr7  $31
089a: f4 83     mov   a,$83+x
089c: f0 09     beq   $08a7
089e: f5 0a 02  mov   a,$020a+x
08a1: de 79 03  cbne  $79+x,$08a7
08a4: 3f 2a 09  call  $092a
08a7: f5 78 02  mov   a,$0278+x
08aa: fd        mov   y,a
08ab: f5 6e 02  mov   a,$026e+x
08ae: da 03     movw  $03,ya
08b0: f4 5b     mov   a,$5b+x
08b2: f0 0a     beq   $08be
08b4: f5 8c 02  mov   a,$028c+x
08b7: fd        mov   y,a
08b8: f5 82 02  mov   a,$0282+x
08bb: 3f 06 09  call  $0906
08be: f3 31 03  bbc7  $31,$08c4
08c1: 3f c7 07  call  $07c7
08c4: f2 31     clr7  $31
08c6: 3f 07 06  call  $0607
08c9: f4 65     mov   a,$65+x
08cb: f0 0e     beq   $08db
08cd: f4 6f     mov   a,$6f+x
08cf: d0 0a     bne   $08db
08d1: f5 50 01  mov   a,$0150+x
08d4: fd        mov   y,a
08d5: f5 46 01  mov   a,$0146+x
08d8: 3f 06 09  call  $0906
08db: f4 97     mov   a,$97+x
08dd: d0 0d     bne   $08ec
08df: f4 33     mov   a,$33+x
08e1: 28 04     and   a,#$04
08e3: d0 03     bne   $08e8
08e5: e3 31 01  bbs7  $31,$08e9
08e8: 6f        ret

08e9: 5f 81 06  jmp   $0681

08ec: f5 46 02  mov   a,$0246+x
08ef: de 8d ed  cbne  $8d+x,$08df
08f2: eb 10     mov   y,$10
08f4: c8 08     cmp   x,#$08
08f6: 90 02     bcc   $08fa
08f8: eb 14     mov   y,$14
08fa: f5 50 02  mov   a,$0250+x
08fd: cf        mul   ya
08fe: dd        mov   a,y
08ff: 60        clrc
0900: 95 3c 02  adc   a,$023c+x
0903: 5f 71 08  jmp   $0871

0906: e2 31     set7  $31
0908: cb 02     mov   $02,y
090a: 3f 31 07  call  $0731
090d: 6d        push  y
090e: eb 10     mov   y,$10
0910: c8 08     cmp   x,#$08
0912: 90 02     bcc   $0916
0914: eb 14     mov   y,$14
0916: 6d        push  y
0917: cf        mul   ya
0918: cb 05     mov   $05,y
091a: 8f 00 06  mov   $06,#$00
091d: ee        pop   y
091e: ae        pop   a
091f: cf        mul   ya
0920: 7a 05     addw  ya,$05
0922: 3f 31 07  call  $0731
0925: 7a 03     addw  ya,$03
0927: da 03     movw  $03,ya
0929: 6f        ret

092a: e2 31     set7  $31
092c: eb 10     mov   y,$10
092e: c8 08     cmp   x,#$08
0930: 90 02     bcc   $0934
0932: eb 14     mov   y,$14
0934: f5 14 02  mov   a,$0214+x
0937: cf        mul   ya
0938: dd        mov   a,y
0939: 60        clrc
093a: 95 00 02  adc   a,$0200+x
093d: 1c        asl   a
093e: 90 02     bcc   $0942
0940: 48 ff     eor   a,#$ff
0942: fb 83     mov   y,$83+x
0944: cf        mul   ya
0945: dd        mov   a,y
0946: 48 ff     eor   a,#$ff
0948: eb 20     mov   y,$20
094a: cf        mul   ya
094b: f5 5a 01  mov   a,$015a+x
094e: cf        mul   ya
094f: f5 b4 02  mov   a,$02b4+x
0952: cf        mul   ya
0953: dd        mov   a,y
0954: cf        mul   ya
0955: dd        mov   a,y
0956: d5 64 01  mov   $0164+x,a
0959: 6f        ret

095a: 6d        push  y
095b: 8d 00     mov   y,#$00
095d: f7 00     mov   a,($00)+y
095f: 28 ff     and   a,#$ff
0961: 0d        push  psw
0962: 3a 00     incw  $00
0964: 8e        pop   psw
0965: ee        pop   y
0966: 6f        ret

0967: 80        setc
0968: a8 e0     sbc   a,#$e0
096a: 1c        asl   a
096b: 4d        push  x
096c: 5d        mov   x,a
096d: ae        pop   a
096e: 1f 71 09  jmp   ($0971+x)

0971: a7 09     sbc   a,($09+x)
0973: 07 0a     or    a,($0a+x)
0975: 14 0a     or    a,$0a+x
0977: 1b 0a     asl   $0a+x
0979: 22 0a     set1  $0a
097b: 3d        inc   x
097c: 0a 58 0a  or1   c,$0a58,0
097f: 83 0a 96  bbs4  $0a,$0918
0982: 0a 42 0c  or1   c,$0c42,0
0985: f8 09     mov   x,$09
0987: 9c        dec   a
0988: 0a b0 0a  or1   c,$0ab0,0
098b: c4 0a     mov   $0a,a
098d: 42 0c     set2  $0c
098f: de 0a 67  cbne  $0a+x,$09f9
0992: 0b 83     asl   $83
0994: 0b 90     asl   $90
0996: 0b 95     asl   $95
0998: 0b ae     asl   $ae
099a: 0b b5     asl   $b5
099c: 0b bc     asl   $bc
099e: 0b d5     asl   $d5
09a0: 0b fb     asl   $fb
09a2: 0b 05     asl   $05
09a4: 0c 17 0c  asl   $0c17
09a7: 5d        mov   x,a
09a8: 3f 5a 09  call  $095a
09ab: d5 6e 01  mov   $016e+x,a
09ae: 8d 06     mov   y,#$06
09b0: cf        mul   ya
09b1: da 05     movw  $05,ya
09b3: 60        clrc
09b4: 98 47 05  adc   $05,#$47
09b7: 98 0f 06  adc   $06,#$0f
09ba: 3f 35 0c  call  $0c35
09bd: b0 38     bcs   $09f7
09bf: 4d        push  x
09c0: 9f        xcn   a
09c1: 08 04     or    a,#$04
09c3: 5d        mov   x,a
09c4: 8d 00     mov   y,#$00
09c6: f7 05     mov   a,($05)+y
09c8: 10 0e     bpl   $09d8
09ca: 28 1f     and   a,#$1f
09cc: 38 20 28  and   $28,#$20
09cf: 0e 28 00  tset1 $0028
09d2: 09 1e 2b  or    ($2b),($1e)
09d5: dd        mov   a,y
09d6: 2f 07     bra   $09df
09d8: e4 1e     mov   a,$1e
09da: 4e 2b 00  tclr1 $002b
09dd: f7 05     mov   a,($05)+y
09df: c9 f2 00  mov   $00f2,x
09e2: c5 f3 00  mov   $00f3,a
09e5: 3d        inc   x
09e6: fc        inc   y
09e7: ad 04     cmp   y,#$04
09e9: 90 f2     bcc   $09dd
09eb: ce        pop   x
09ec: f7 05     mov   a,($05)+y
09ee: d5 96 01  mov   $0196+x,a
09f1: fc        inc   y
09f2: f7 05     mov   a,($05)+y
09f4: d5 8c 01  mov   $018c+x,a
09f7: 6f        ret

09f8: 5d        mov   x,a
09f9: 3f 5a 09  call  $095a
09fc: 78 00 23  cmp   $23,#$00
09ff: d0 03     bne   $0a04
0a01: c4 20     mov   $20,a
0a03: 6f        ret

0a04: c4 21     mov   $21,a
0a06: 6f        ret

0a07: 5d        mov   x,a
0a08: e8 00     mov   a,#$00
0a0a: d5 aa 02  mov   $02aa+x,a
0a0d: 3f 5a 09  call  $095a
0a10: d5 b4 02  mov   $02b4+x,a
0a13: 6f        ret

0a14: 5d        mov   x,a
0a15: 3f 5a 09  call  $095a
0a18: d4 51     mov   $51+x,a
0a1a: 6f        ret

0a1b: 5d        mov   x,a
0a1c: 3f 5a 09  call  $095a
0a1f: d4 a1     mov   $a1+x,a
0a21: 6f        ret

0a22: 5d        mov   x,a
0a23: 3f 5a 09  call  $095a
0a26: d0 07     bne   $0a2f
0a28: e4 1e     mov   a,$1e
0a2a: 4e 2b 00  tclr1 $002b
0a2d: 2f 0d     bra   $0a3c
0a2f: 28 1f     and   a,#$1f
0a31: 38 20 28  and   $28,#$20
0a34: 0e 28 00  tset1 $0028
0a37: e4 1e     mov   a,$1e
0a39: 0e 2b 00  tset1 $002b
0a3c: 6f        ret

0a3d: 5d        mov   x,a
0a3e: 3f 5a 09  call  $095a
0a41: 4d        push  x
0a42: 60        clrc
0a43: 88 04     adc   a,#$04
0a45: 8d 00     mov   y,#$00
0a47: cd 05     mov   x,#$05
0a49: 9e        div   ya,x
0a4a: ce        pop   x
0a4b: c8 08     cmp   x,#$08
0a4d: b0 03     bcs   $0a52
0a4f: c4 0f     mov   $0f,a
0a51: 6f        ret

0a52: c4 13     mov   $13,a
0a54: 8f 00 14  mov   $14,#$00
0a57: 6f        ret

0a58: 5d        mov   x,a
0a59: 8d 00     mov   y,#$00
0a5b: f7 00     mov   a,($00)+y
0a5d: 9c        dec   a
0a5e: d7 00     mov   ($00)+y,a
0a60: d0 0f     bne   $0a71
0a62: fc        inc   y
0a63: f7 00     mov   a,($00)+y
0a65: dc        dec   y
0a66: d7 00     mov   ($00)+y,a
0a68: 3a 00     incw  $00
0a6a: 3a 00     incw  $00
0a6c: 3a 00     incw  $00
0a6e: 3a 00     incw  $00
0a70: 6f        ret

0a71: 8d 02     mov   y,#$02
0a73: f7 00     mov   a,($00)+y
0a75: c4 05     mov   $05,a
0a77: fc        inc   y
0a78: f7 00     mov   a,($00)+y
0a7a: c4 06     mov   $06,a
0a7c: ba 00     movw  ya,$00
0a7e: 7a 05     addw  ya,$05
0a80: da 00     movw  $00,ya
0a82: 6f        ret

0a83: 5d        mov   x,a
0a84: 3f 5a 09  call  $095a
0a87: d5 1e 02  mov   $021e+x,a
0a8a: 3f 5a 09  call  $095a
0a8d: d5 14 02  mov   $0214+x,a
0a90: 3f 5a 09  call  $095a
0a93: d4 83     mov   $83+x,a
0a95: 6f        ret

0a96: 5d        mov   x,a
0a97: e8 00     mov   a,#$00
0a99: d4 83     mov   $83+x,a
0a9b: 6f        ret

0a9c: 5d        mov   x,a
0a9d: f5 b4 02  mov   a,$02b4+x
0aa0: 80        setc
0aa1: a8 0a     sbc   a,#$0a
0aa3: b0 02     bcs   $0aa7
0aa5: e8 00     mov   a,#$00
0aa7: d5 b4 02  mov   $02b4+x,a
0aaa: e8 00     mov   a,#$00
0aac: d5 aa 02  mov   $02aa+x,a
0aaf: 6f        ret

0ab0: 5d        mov   x,a
0ab1: f5 b4 02  mov   a,$02b4+x
0ab4: 60        clrc
0ab5: 88 0a     adc   a,#$0a
0ab7: 90 02     bcc   $0abb
0ab9: e8 ff     mov   a,#$ff
0abb: d5 b4 02  mov   $02b4+x,a
0abe: e8 00     mov   a,#$00
0ac0: d5 aa 02  mov   $02aa+x,a
0ac3: 6f        ret

0ac4: 5d        mov   x,a
0ac5: 3f 5a 09  call  $095a
0ac8: 2d        push  a
0ac9: 3f 5a 09  call  $095a
0acc: fd        mov   y,a
0acd: ae        pop   a
0ace: 7a 00     addw  ya,$00
0ad0: da 05     movw  $05,ya
0ad2: 8d 01     mov   y,#$01
0ad4: f7 05     mov   a,($05)+y
0ad6: 9c        dec   a
0ad7: d0 04     bne   $0add
0ad9: ba 05     movw  ya,$05
0adb: da 00     movw  $00,ya
0add: 6f        ret

0ade: 5d        mov   x,a
0adf: c8 08     cmp   x,#$08
0ae1: b0 1a     bcs   $0afd
0ae3: 3f 5a 09  call  $095a
0ae6: c4 05     mov   $05,a
0ae8: 3f 5a 09  call  $095a
0aeb: c4 06     mov   $06,a
0aed: 04 05     or    a,$05
0aef: f0 07     beq   $0af8
0af1: ba 00     movw  ya,$00
0af3: 7a 05     addw  ya,$05
0af5: da 00     movw  $00,ya
0af7: 6f        ret

0af8: e2 16     set7  $16
0afa: ae        pop   a
0afb: ae        pop   a
0afc: 6f        ret

0afd: 4d        push  x
0afe: e4 16     mov   a,$16
0b00: 08 80     or    a,#$80
0b02: 2d        push  a
0b03: 1d        dec   x
0b04: 1d        dec   x
0b05: f4 33     mov   a,$33+x
0b07: 28 bf     and   a,#$bf
0b09: d4 33     mov   $33+x,a
0b0b: 8f 00 0d  mov   $0d,#$00
0b0e: e4 2a     mov   a,$2a
0b10: 28 3f     and   a,#$3f
0b12: 8d 4c     mov   y,#$4c
0b14: 3f a2 0e  call  $0ea2
0b17: e4 2f     mov   a,$2f
0b19: 08 c0     or    a,#$c0
0b1b: 8d 5c     mov   y,#$5c
0b1d: 3f a2 0e  call  $0ea2
0b20: e8 00     mov   a,#$00
0b22: d5 97 00  mov   $0097+x,a
0b25: d5 64 02  mov   $0264+x,a
0b28: d5 28 02  mov   $0228+x,a
0b2b: d5 32 01  mov   $0132+x,a
0b2e: d4 83     mov   $83+x,a
0b30: e3 19 03  bbs7  $19,$0b36
0b33: 8f 00 19  mov   $19,#$00
0b36: e4 1e     mov   a,$1e
0b38: 0e 1b 00  tset1 $001b
0b3b: 3f 5a 0b  call  $0b5a
0b3e: f5 6e 01  mov   a,$016e+x
0b41: d5 a0 01  mov   $01a0+x,a
0b44: ae        pop   a
0b45: c4 16     mov   $16,a
0b47: ce        pop   x
0b48: d4 33     mov   $33+x,a
0b4a: e4 3b     mov   a,$3b
0b4c: 24 3c     and   a,$3c
0b4e: 10 07     bpl   $0b57
0b50: e8 80     mov   a,#$80
0b52: c4 1f     mov   $1f,a
0b54: c5 f6 00  mov   $00f6,a
0b57: ae        pop   a
0b58: ae        pop   a
0b59: 6f        ret

0b5a: fa 32 31  mov   ($31),($32)
0b5d: fa 1c 27  mov   ($27),($1c)
0b60: fa 29 28  mov   ($28),($29)
0b63: fa 2c 2b  mov   ($2b),($2c)
0b66: 6f        ret

0b67: 5d        mov   x,a
0b68: 3f 5a 09  call  $095a
0b6b: d5 46 02  mov   $0246+x,a
0b6e: 3f 5a 09  call  $095a
0b71: d5 50 02  mov   $0250+x,a
0b74: 3f 5a 09  call  $095a
0b77: d5 97 00  mov   $0097+x,a
0b7a: d5 64 02  mov   $0264+x,a
0b7d: e8 00     mov   a,#$00
0b7f: d5 28 02  mov   $0228+x,a
0b82: 6f        ret

0b83: 5d        mov   x,a
0b84: e8 00     mov   a,#$00
0b86: d5 97 00  mov   $0097+x,a
0b89: d5 64 02  mov   $0264+x,a
0b8c: d5 28 02  mov   $0228+x,a
0b8f: 6f        ret

0b90: 5d        mov   x,a
0b91: e8 01     mov   a,#$01
0b93: 2f 03     bra   $0b98
0b95: 5d        mov   x,a
0b96: e8 00     mov   a,#$00
0b98: d5 1e 01  mov   $011e+x,a
0b9b: 3f 5a 09  call  $095a
0b9e: d5 14 01  mov   $0114+x,a
0ba1: 3f 5a 09  call  $095a
0ba4: d5 32 01  mov   $0132+x,a
0ba7: 3f 5a 09  call  $095a
0baa: d5 28 01  mov   $0128+x,a
0bad: 6f        ret

0bae: 5d        mov   x,a
0baf: e8 00     mov   a,#$00
0bb1: d5 32 01  mov   $0132+x,a
0bb4: 6f        ret

0bb5: 5d        mov   x,a
0bb6: 3f 5a 09  call  $095a
0bb9: 5f e5 05  jmp   $05e5

0bbc: 5d        mov   x,a
0bbd: 3f 5a 09  call  $095a
0bc0: c4 1c     mov   $1c,a
0bc2: 24 1b     and   a,$1b
0bc4: c4 27     mov   $27,a
0bc6: 3f 5a 09  call  $095a
0bc9: c4 24     mov   $24,a
0bcb: 3f 5a 09  call  $095a
0bce: c4 25     mov   $25,a
0bd0: b2 28     clr5  $28
0bd2: b2 29     clr5  $29
0bd4: 6f        ret

0bd5: 5d        mov   x,a
0bd6: 3f 5a 09  call  $095a
0bd9: 3f 44 0c  call  $0c44
0bdc: 3f 5a 09  call  $095a
0bdf: c4 26     mov   $26,a
0be1: 3f 5a 09  call  $095a
0be4: 8d 08     mov   y,#$08
0be6: cf        mul   ya
0be7: 5d        mov   x,a
0be8: 8d 0f     mov   y,#$0f
0bea: f5 27 0f  mov   a,$0f27+x
0bed: 3f a2 0e  call  $0ea2
0bf0: 3d        inc   x
0bf1: dd        mov   a,y
0bf2: 60        clrc
0bf3: 88 10     adc   a,#$10
0bf5: fd        mov   y,a
0bf6: 10 f2     bpl   $0bea
0bf8: f8 1d     mov   x,$1d
0bfa: 6f        ret

0bfb: 5d        mov   x,a
0bfc: e8 00     mov   a,#$00
0bfe: c4 24     mov   $24,a
0c00: c4 25     mov   $25,a
0c02: a2 28     set5  $28
0c04: 6f        ret

0c05: 5d        mov   x,a
0c06: 3f 5a 09  call  $095a
0c09: d5 a0 02  mov   $02a0+x,a
0c0c: 28 1f     and   a,#$1f
0c0e: d5 78 02  mov   $0278+x,a
0c11: e8 00     mov   a,#$00
0c13: d5 6e 02  mov   $026e+x,a
0c16: 6f        ret

0c17: 5d        mov   x,a
0c18: 3f 5a 09  call  $095a
0c1b: d5 5b 00  mov   $005b+x,a
0c1e: 2d        push  a
0c1f: 3f 5a 09  call  $095a
0c22: d5 96 02  mov   $0296+x,a
0c25: 80        setc
0c26: b5 78 02  sbc   a,$0278+x
0c29: ce        pop   x
0c2a: 3f 1f 07  call  $071f
0c2d: d5 82 02  mov   $0282+x,a
0c30: dd        mov   a,y
0c31: d5 8c 02  mov   $028c+x,a
0c34: 6f        ret

0c35: 80        setc
0c36: c3 16 08  bbs6  $16,$0c41
0c39: 7d        mov   a,x
0c3a: 68 08     cmp   a,#$08
0c3c: 90 03     bcc   $0c41
0c3e: a8 02     sbc   a,#$02
0c40: 60        clrc
0c41: 6f        ret

0c42: 5d        mov   x,a
0c43: 6f        ret

0c44: c4 1a     mov   $1a,a
0c46: 8d 7d     mov   y,#$7d
0c48: cc f2 00  mov   $00f2,y
0c4b: e5 f3 00  mov   a,$00f3
0c4e: 64 1a     cmp   a,$1a
0c50: f0 2d     beq   $0c7f
0c52: 28 0f     and   a,#$0f
0c54: 48 ff     eor   a,#$ff
0c56: f3 19 03  bbc7  $19,$0c5c
0c59: 60        clrc
0c5a: 84 19     adc   a,$19
0c5c: c4 19     mov   $19,a
0c5e: 8d 06     mov   y,#$06
0c60: f6 fe 0e  mov   a,$0efe+y
0c63: c5 f2 00  mov   $00f2,a
0c66: e8 00     mov   a,#$00
0c68: c5 f3 00  mov   $00f3,a
0c6b: dc        dec   y
0c6c: dc        dec   y
0c6d: 10 f1     bpl   $0c60
0c6f: e4 28     mov   a,$28
0c71: 08 20     or    a,#$20
0c73: 8d 6c     mov   y,#$6c
0c75: 3f a2 0e  call  $0ea2
0c78: e4 1a     mov   a,$1a
0c7a: 8d 7d     mov   y,#$7d
0c7c: 3f a2 0e  call  $0ea2
0c7f: 1c        asl   a
0c80: 1c        asl   a
0c81: 1c        asl   a
0c82: 48 ff     eor   a,#$ff
0c84: 80        setc
0c85: 88 ff     adc   a,#$ff
0c87: 8d 6d     mov   y,#$6d
0c89: 5f a2 0e  jmp   $0ea2

0c8c: 8f 00 0d  mov   $0d,#$00
0c8f: e8 60     mov   a,#$60
0c91: 8d 6c     mov   y,#$6c
0c93: 3f a2 0e  call  $0ea2
0c96: e8 ff     mov   a,#$ff
0c98: 8d 5c     mov   y,#$5c
0c9a: 3f a2 0e  call  $0ea2
0c9d: bc        inc   a
0c9e: 8d 4c     mov   y,#$4c
0ca0: 3f a2 0e  call  $0ea2
0ca3: c4 2a     mov   $2a,a
0ca5: c4 2f     mov   $2f,a
0ca7: 3f ed 0d  call  $0ded
0caa: 8f 00 0d  mov   $0d,#$00
0cad: 8d 00     mov   y,#$00
0caf: cd 00     mov   x,#$00
0cb1: d8 12     mov   $12,x
0cb3: 3f 4a 0e  call  $0e4a
0cb6: e8 02     mov   a,#$02
0cb8: d4 33     mov   $33+x,a
0cba: f6 00 1c  mov   a,$1c00+y
0cbd: d5 78 01  mov   $0178+x,a
0cc0: fc        inc   y
0cc1: f6 00 1c  mov   a,$1c00+y
0cc4: 60        clrc
0cc5: 88 1c     adc   a,#$1c
0cc7: d5 82 01  mov   $0182+x,a
0cca: fc        inc   y
0ccb: 3f ae 0e  call  $0eae
0cce: 3d        inc   x
0ccf: c8 0a     cmp   x,#$0a
0cd1: 90 e0     bcc   $0cb3
0cd3: 8f 00 0d  mov   $0d,#$00
0cd6: e8 7f     mov   a,#$7f
0cd8: 8d 0c     mov   y,#$0c
0cda: 3f a2 0e  call  $0ea2
0cdd: 8d 1c     mov   y,#$1c
0cdf: 3f a2 0e  call  $0ea2
0ce2: e8 ff     mov   a,#$ff
0ce4: c4 1b     mov   $1b,a
0ce6: 8d 5c     mov   y,#$5c
0ce8: 3f a2 0e  call  $0ea2
0ceb: bc        inc   a
0cec: 8d 4c     mov   y,#$4c
0cee: 3f a2 0e  call  $0ea2
0cf1: c4 23     mov   $23,a
0cf3: c4 24     mov   $24,a
0cf5: c4 25     mov   $25,a
0cf7: c4 26     mov   $26,a
0cf9: c4 27     mov   $27,a
0cfb: c4 2a     mov   $2a,a
0cfd: c4 2f     mov   $2f,a
0cff: c4 30     mov   $30,a
0d01: c4 2c     mov   $2c,a
0d03: c4 2b     mov   $2b,a
0d05: c4 2d     mov   $2d,a
0d07: c4 2e     mov   $2e,a
0d09: c4 22     mov   $22,a
0d0b: c4 31     mov   $31,a
0d0d: bc        inc   a
0d0e: 3f 44 0c  call  $0c44
0d11: e8 20     mov   a,#$20
0d13: c4 28     mov   $28,a
0d15: e8 00     mov   a,#$00
0d17: c5 f4 00  mov   $00f4,a
0d1a: c5 f5 00  mov   $00f5,a
0d1d: c5 f7 00  mov   $00f7,a
0d20: e8 80     mov   a,#$80
0d22: c5 f6 00  mov   $00f6,a
0d25: c4 1f     mov   $1f,a
0d27: c4 3b     mov   $3b,a
0d29: c4 3c     mov   $3c,a
0d2b: e8 20     mov   a,#$20
0d2d: 8d 6c     mov   y,#$6c
0d2f: 5f a2 0e  jmp   $0ea2

0d32: 8f 01 12  mov   $12,#$01
0d35: e8 00     mov   a,#$00
0d37: c5 f7 00  mov   $00f7,a
0d3a: 6f        ret

0d3b: e5 f5 00  mov   a,$00f5
0d3e: 68 33     cmp   a,#$33
0d40: b0 2b     bcs   $0d6d
0d42: eb 1f     mov   y,$1f
0d44: 30 03     bmi   $0d49
0d46: 3f 5a 0b  call  $0b5a
0d49: c4 1f     mov   $1f,a
0d4b: c5 f6 00  mov   $00f6,a
0d4e: 1c        asl   a
0d4f: 1c        asl   a
0d50: fd        mov   y,a
0d51: fa 27 1c  mov   ($1c),($27)
0d54: fa 28 29  mov   ($29),($28)
0d57: fa 2b 2c  mov   ($2c),($2b)
0d5a: fa 31 32  mov   ($32),($31)
0d5d: 8f 40 1e  mov   $1e,#$40
0d60: cd 08     mov   x,#$08
0d62: 3f 6f 0d  call  $0d6f
0d65: 3d        inc   x
0d66: fc        inc   y
0d67: fc        inc   y
0d68: 0b 1e     asl   $1e
0d6a: 3f 6f 0d  call  $0d6f
0d6d: 60        clrc
0d6e: 6f        ret

0d6f: f6 06 10  mov   a,$1006+y
0d72: 16 07 10  or    a,$1007+y
0d75: f0 23     beq   $0d9a
0d77: f4 31     mov   a,$31+x
0d79: 08 40     or    a,#$40
0d7b: d4 31     mov   $31+x,a
0d7d: 3f 4a 0e  call  $0e4a
0d80: f6 06 10  mov   a,$1006+y
0d83: d5 78 01  mov   $0178+x,a
0d86: f6 07 10  mov   a,$1007+y
0d89: d5 82 01  mov   $0182+x,a
0d8c: e4 1e     mov   a,$1e
0d8e: 4e 27 00  tclr1 $0027
0d91: 4e 1b 00  tclr1 $001b
0d94: 4e 2b 00  tclr1 $002b
0d97: 5f ae 0e  jmp   $0eae

0d9a: e8 80     mov   a,#$80
0d9c: d4 33     mov   $33+x,a
0d9e: f4 31     mov   a,$31+x
0da0: c4 16     mov   $16,a
0da2: d3 16 30  bbc6  $16,$0dd5
0da5: 28 bf     and   a,#$bf
0da7: d4 31     mov   $31+x,a
0da9: c4 16     mov   $16,a
0dab: 6d        push  y
0dac: e4 2f     mov   a,$2f
0dae: 04 1e     or    a,$1e
0db0: 8d 5c     mov   y,#$5c
0db2: 3f a2 0e  call  $0ea2
0db5: 1d        dec   x
0db6: 1d        dec   x
0db7: f5 6e 01  mov   a,$016e+x
0dba: 3f ab 09  call  $09ab
0dbd: e8 00     mov   a,#$00
0dbf: d5 97 00  mov   $0097+x,a
0dc2: d5 64 02  mov   $0264+x,a
0dc5: d5 28 02  mov   $0228+x,a
0dc8: d5 32 01  mov   $0132+x,a
0dcb: d4 83     mov   $83+x,a
0dcd: 3d        inc   x
0dce: 3d        inc   x
0dcf: e4 1e     mov   a,$1e
0dd1: 0e 1b 00  tset1 $001b
0dd4: ee        pop   y
0dd5: 6f        ret

0dd6: e4 23     mov   a,$23
0dd8: 48 01     eor   a,#$01
0dda: c4 23     mov   $23,a
0ddc: f0 08     beq   $0de6
0dde: fa 20 21  mov   ($21),($20)
0de1: 8f 60 20  mov   $20,#$60
0de4: 2f 03     bra   $0de9
0de6: fa 21 20  mov   ($20),($21)
0de9: 3f c4 04  call  $04c4
0dec: 6f        ret

0ded: e8 aa     mov   a,#$aa
0def: c5 f4 00  mov   $00f4,a
0df2: e8 bb     mov   a,#$bb
0df4: c5 f5 00  mov   $00f5,a
0df7: e5 f4 00  mov   a,$00f4
0dfa: 68 cc     cmp   a,#$cc
0dfc: d0 f9     bne   $0df7
0dfe: 2f 20     bra   $0e20
0e00: ec f4 00  mov   y,$00f4
0e03: d0 fb     bne   $0e00
0e05: 5e f4 00  cmp   y,$00f4
0e08: d0 0f     bne   $0e19
0e0a: e5 f5 00  mov   a,$00f5
0e0d: cc f4 00  mov   $00f4,y
0e10: d7 05     mov   ($05)+y,a
0e12: fc        inc   y
0e13: d0 f0     bne   $0e05
0e15: ab 06     inc   $06
0e17: 2f ec     bra   $0e05
0e19: 10 ea     bpl   $0e05
0e1b: 5e f4 00  cmp   y,$00f4
0e1e: 10 e5     bpl   $0e05
0e20: e5 f6 00  mov   a,$00f6
0e23: ec f7 00  mov   y,$00f7
0e26: da 05     movw  $05,ya
0e28: ec f4 00  mov   y,$00f4
0e2b: e5 f5 00  mov   a,$00f5
0e2e: cc f4 00  mov   $00f4,y
0e31: d0 cd     bne   $0e00
0e33: ba 05     movw  ya,$05
0e35: 65 f6 00  cmp   a,$00f6
0e38: d0 fb     bne   $0e35
0e3a: 5e f7 00  cmp   y,$00f7
0e3d: d0 fb     bne   $0e3a
0e3f: cd 00     mov   x,#$00
0e41: c9 f1 00  mov   $00f1,x
0e44: cd 31     mov   x,#$31
0e46: c9 f1 00  mov   $00f1,x
0e49: 6f        ret

0e4a: 2d        push  a
0e4b: 4d        push  x
0e4c: 6d        push  y
0e4d: 4d        push  x
0e4e: 8d 0b     mov   y,#$0b
0e50: e8 00     mov   a,#$00
0e52: d4 47     mov   $47+x,a
0e54: d5 00 01  mov   $0100+x,a
0e57: d5 00 02  mov   $0200+x,a
0e5a: 7d        mov   a,x
0e5b: 60        clrc
0e5c: 88 0a     adc   a,#$0a
0e5e: 5d        mov   x,a
0e5f: dc        dec   y
0e60: d0 ee     bne   $0e50
0e62: ce        pop   x
0e63: e8 96     mov   a,#$96
0e65: d5 5a 01  mov   $015a+x,a
0e68: e8 00     mov   a,#$00
0e6a: d5 aa 02  mov   $02aa+x,a
0e6d: f4 33     mov   a,$33+x
0e6f: 28 40     and   a,#$40
0e71: 08 02     or    a,#$02
0e73: d4 33     mov   $33+x,a
0e75: e8 01     mov   a,#$01
0e77: d4 3d     mov   $3d+x,a
0e79: e8 ff     mov   a,#$ff
0e7b: d5 b4 02  mov   $02b4+x,a
0e7e: bc        inc   a
0e7f: d5 aa 02  mov   $02aa+x,a
0e82: e8 0a     mov   a,#$0a
0e84: d5 a0 02  mov   $02a0+x,a
0e87: 28 1f     and   a,#$1f
0e89: d5 78 02  mov   $0278+x,a
0e8c: e8 00     mov   a,#$00
0e8e: d5 6e 02  mov   $026e+x,a
0e91: d5 32 01  mov   $0132+x,a
0e94: d4 97     mov   $97+x,a
0e96: d4 83     mov   $83+x,a
0e98: d5 64 02  mov   $0264+x,a
0e9b: d5 28 02  mov   $0228+x,a
0e9e: ee        pop   y
0e9f: ce        pop   x
0ea0: ae        pop   a
0ea1: 6f        ret

0ea2: 78 00 0d  cmp   $0d,#$00
0ea5: d0 06     bne   $0ead
0ea7: cc f2 00  mov   $00f2,y
0eaa: c5 f3 00  mov   $00f3,a
0ead: 6f        ret

0eae: 2d        push  a
0eaf: 4d        push  x
0eb0: 6d        push  y
0eb1: f5 78 01  mov   a,$0178+x
0eb4: c4 00     mov   $00,a
0eb6: f5 82 01  mov   a,$0182+x
0eb9: c4 01     mov   $01,a
0ebb: 8d 00     mov   y,#$00
0ebd: f7 00     mov   a,($00)+y
0ebf: fc        inc   y
0ec0: d0 02     bne   $0ec4
0ec2: ab 01     inc   $01
0ec4: 68 e0     cmp   a,#$e0
0ec6: b0 0a     bcs   $0ed2
0ec8: 1c        asl   a
0ec9: b0 f2     bcs   $0ebd
0ecb: fc        inc   y
0ecc: d0 ef     bne   $0ebd
0ece: ab 01     inc   $01
0ed0: 2f eb     bra   $0ebd
0ed2: 68 e6     cmp   a,#$e6
0ed4: f0 11     beq   $0ee7
0ed6: 68 ef     cmp   a,#$ef
0ed8: f0 20     beq   $0efa
0eda: 5d        mov   x,a
0edb: dd        mov   a,y
0edc: 60        clrc
0edd: 95 f1 0e  adc   a,$0ef1+x
0ee0: fd        mov   y,a
0ee1: 90 da     bcc   $0ebd
0ee3: ab 01     inc   $01
0ee5: 2f d6     bra   $0ebd
0ee7: 3a 00     incw  $00
0ee9: f7 00     mov   a,($00)+y
0eeb: 1a 00     decw  $00
0eed: d7 00     mov   ($00)+y,a
0eef: dd        mov   a,y
0ef0: 60        clrc
0ef1: 88 04     adc   a,#$04
0ef3: 90 02     bcc   $0ef7
0ef5: ab 01     inc   $01
0ef7: fd        mov   y,a
0ef8: 2f c3     bra   $0ebd
0efa: ee        pop   y
0efb: ce        pop   x
0efc: ae        pop   a
0efd: 6f        ret

0efe: 2c 24 3c
0f01: 25 0d 26
0f04: 4d
0f05: 27 6c
0f07: 28 4c
0f09: 2a 5c 2f
0f0c: 3d
0f0d: 2b 2d
0f0f: 2d
0f10: 5c
0f11: 2e

0f12: 00 01 03 07 0d 15 1e 29
0f1a: 34 42 51 5e 67 6e 73 77
0f22: 7a 7c 7d 7e 7f

0f27: 7f 00 00 00 00 00 00 00
0f2f: 58 bf db f0 fe 07 0c 0c
0f37: 0c 21 2b 2b 13 fe f3 f9
0f3f: 34 33 00 d9 e5 01 fc eb
















0f47: 00        mov   y,$00
0f48: ff        stop
0f49: ee        pop   y
0f4a: b8 06 20  sbc   $20,#$06
0f4d: 01        tcall 0
0f4e: ff        stop
0f4f: e0        clrv
0f50: b8 06 60  sbc   $60,#$06
0f53: 02 ff     set0  $ff
0f55: e0        clrv
0f56: b8 06 f0  sbc   $f0,#$06
0f59: 03 ff e0  bbs0  $ff,$0f3c
0f5c: b8 06 f0  sbc   $f0,#$06
0f5f: 04 ff     or    a,$ff
0f61: e0        clrv
0f62: b8 06 30  sbc   $30,#$06
0f65: 05 ff e0  or    a,$e0ff
0f68: b8 07 b0  sbc   $b0,#$07
0f6b: 06        or    a,(x)
0f6c: ff        stop
0f6d: e0        clrv
0f6e: b8 06 b0  sbc   $b0,#$06
0f71: 07 ff     or    a,($ff+x)
0f73: eb b8     mov   y,$b8
0f75: 0e 00 08  tset1 $0800
0f78: ff        stop
0f79: e0        clrv
0f7a: b8 04 80  sbc   $80,#$04
0f7d: 09 ff f2  or    ($f2),($ff)
0f80: b8 03 a0  sbc   $a0,#$03
0f83: 0a ff f5  or1   c,$15ff,7
0f86: b8 04 a0  sbc   $a0,#$04
0f89: 0b ff     asl   $ff
0f8b: e0        clrv
0f8c: b8 07 80  sbc   $80,#$07
0f8f: 0c ff f1  asl   $f1ff
0f92: b8 07 00  sbc   $00,#$07
0f95: 0d        push  psw
0f96: ff        stop
0f97: e0        clrv
0f98: b8 03 a0  sbc   $a0,#$03
0f9b: 0e ff f2  tset1 $f2ff
0f9e: b8 03 80  sbc   $80,#$03
0fa1: 0f        brk
0fa2: ff        stop
0fa3: ee        pop   y
0fa4: b8 04 90  sbc   $90,#$04
0fa7: 10 ff     bpl   $0fa8
0fa9: ee        pop   y
0faa: b8 03 00  sbc   $00,#$03
0fad: 11        tcall 1
0fae: ff        stop
0faf: e0        clrv
0fb0: b8 03 c0  sbc   $c0,#$03
0fb3: 12 ff     clr0  $ff
0fb5: e0        clrv
0fb6: b8 07 00  sbc   $00,#$07
0fb9: 13 ff e0  bbc0  $ff,$0f9c
0fbc: b8 0a c0  sbc   $c0,#$0a
0fbf: 14 ff     or    a,$ff+x
0fc1: f1        tcall 15
0fc2: b8 04 00  sbc   $00,#$04
0fc5: 15 ff e0  or    a,$e0ff+x
0fc8: b8 04 00  sbc   $00,#$04
0fcb: 16 ff f4  or    a,$f4ff+y
0fce: b8 04 e0  sbc   $e0,#$04
0fd1: 01        tcall 0
0fd2: 01        tcall 0
0fd3: 01        tcall 0
0fd4: 01        tcall 0
0fd5: 01        tcall 0
0fd6: 01        tcall 0
0fd7: 04 03     or    a,$03
0fd9: 01        tcall 0
0fda: 02 01     set0  $01
0fdc: 00        nop
0fdd: 00        nop
0fde: 02 01     set0  $01
0fe0: 02 03     set0  $03
0fe2: 00        nop
0fe3: 03 03 00  bbs0  $03,$0fe6
0fe6: 03 03 03  bbs0  $03,$0fec
0fe9: 00        nop
0fea: 01        tcall 0
0feb: 02 5f     set0  $5f
0fed: 08 de     or    a,#$de
0fef: 08 65     or    a,#$65
0ff1: 09 f4 09  or    ($09),($f4)
0ff4: 8c 0a 2c  dec   $2c0a
0ff7: 0b d6     asl   $d6
0ff9: 0b 8b     asl   $8b
0ffb: 0c 4a 0d  asl   $0d4a
0ffe: 14 0e     or    a,$0e+x
1000: ea 0e cd  not1  $0d0e,6
1003: 0f        brk
1004: be        das   a
1005: 10 00     bpl   $1007
1007: 00        nop
1008: d2 10     clr6  $10
100a: 00        nop
100b: 00        nop
100c: eb 10     mov   y,$10
100e: 00        nop
100f: 00        nop
1010: fa 10 02  mov   ($02),($10)
1013: 11        tcall 1
1014: 1f 11 00  jmp   ($0011+x)

1017: 00        nop
1018: 3f 11 53  call  $5311
101b: 11        tcall 1
101c: 76 11 00  cmp   a,$0011+y
101f: 00        nop
1020: 9c        dec   a
1021: 11        tcall 1
1022: ac 11 c2  inc   $c211
1025: 11        tcall 1
1026: e6        mov   a,(x)
1027: 11        tcall 1
1028: 08 12     or    a,#$12
102a: 20        clrp
102b: 12 31     clr0  $31
102d: 12 46     clr0  $46
102f: 12 6c     clr0  $6c
1031: 12 96     clr0  $96
1033: 12 c6     clr0  $c6
1035: 12 ea     clr0  $ea
1037: 12 02     clr0  $02
1039: 13 19 13  bbc0  $19,$104f
103c: 3c        rol   a
103d: 13 60 13  bbc0  $60,$1053
1040: 8a 13 b3  eor1  c,$1313,5
1043: 13 ce 13  bbc0  $ce,$1059
1046: e9 13 f5  mov   x,$f513
1049: 13 ff 13  bbc0  $ff,$105f
104c: 18 14 34  or    $34,#$14
104f: 14 5d     or    a,$5d+x
1051: 14 86     or    a,$86+x
1053: 14 a2     or    a,$a2+x
1055: 14 bc     or    a,$bc+x
1057: 14 d1     or    a,$d1+x
1059: 14 00     or    a,$00+x
105b: 00        nop
105c: e3 14 f9  bbs7  $14,$1058
105f: 14 07     or    a,$07+x
1061: 15 00 00  or    a,$0000+x
1064: 00        nop
1065: 00        nop
1066: 13 15 35  bbc0  $15,$109e
1069: 15 5a 15  or    a,$155a+x
106c: 78 15 91  cmp   $91,#$15
106f: 15 a3 15  or    a,$15a3+x
1072: 00        nop
1073: 00        nop
1074: 00        nop
1075: 00        nop
1076: b6 15 d2  sbc   a,$d215+y
1079: 15 00 00  or    a,$0000+x
107c: 00        nop
107d: 00        nop
107e: 00        nop
107f: 00        nop
1080: 00        nop
1081: 00        nop
1082: ef        sleep
1083: 15 0c 16  or    a,$160c+x
1086: 00        nop
1087: 00        nop
1088: 00        nop
1089: 00        nop
108a: 00        nop
108b: 00        nop
108c: 00        nop
108d: 00        nop
108e: 4a 16 75  and1  c,$1516,3
1091: 16 00 00  or    a,$0000+y
1094: a3 16 d1  bbs5  $16,$1068
1097: 16 e6 16  or    a,$16e6+y
109a: 03 17 40  bbs0  $17,$10dd
109d: 17 00     or    a,($00)+y
109f: 00        nop
10a0: 00        nop
10a1: 00        nop
10a2: 7b 17     ror   $17+x
10a4: 99        adc   (x),(y)
10a5: 17 00     or    a,($00)+y
10a7: 00        nop
10a8: b5 17 00  sbc   a,$0017+x
10ab: 00        nop
10ac: 00        nop
10ad: 00        nop
10ae: 00        nop
10af: 00        nop
10b0: 00        nop
10b1: 00        nop
10b2: bd        mov   sp,x
10b3: 17 d6     or    a,($d6)+y
10b5: 17 1b     or    a,($1b)+y
10b7: 18 31 18  or    $18,#$31
10ba: 00        nop
10bb: 00        nop
10bc: 4c 18 00  lsr   $0018
10bf: 00        nop
10c0: 00        nop
10c1: 00        nop
10c2: 00        nop
10c3: 00        nop
10c4: 70 18     bvs   $10de
10c6: 93 18 ab  bbc4  $18,$1074
10c9: 18 c3 18  or    $18,#$c3
10cc: df        daa   a
10cd: 18 0c 19  or    $19,#$0c
10d0: 1e 19 e5  cmp   x,$e519
10d3: aa e0 10  mov1  c,$10e0,0
10d6: 08 57     or    a,#$57
10d8: 02 d2     set0  $d2
10da: eb e6     mov   y,$e6
10dc: 07 07     or    a,($07+x)
10de: fc        inc   y
10df: ff        stop
10e0: 04 52     or    a,$52
10e2: ec ec e6  mov   y,$e6ec
10e5: 03 03 f1  bbs0  $03,$10d9
10e8: ff        stop
10e9: ef        sleep
10ea: 00        nop
10eb: e5 c8 f0  mov   a,$f0c8
10ee: 00        nop
10ef: 73 e1 e0  bbc3  $e1,$10d2
10f2: 0b 04     asl   $04
10f4: 20        clrp
10f5: 84 18     adc   a,$18
10f7: 20        clrp
10f8: ef        sleep
10f9: 00        nop
10fa: e5 c8 e0  mov   a,$e0c8
10fd: 10 01     bpl   $1100
10ff: 53 ef 00  bbc2  $ef,$1102
1102: e5 be e0  mov   a,$e0be
1105: 10 02     bpl   $1109
1107: 3a 02     incw  $02
1109: 43 02 45  bbs2  $02,$1151
110c: 02 4a     set0  $4a
110e: 02 53     set0  $53
1110: 02 55     set0  $55
1112: 02 5a     set0  $5a
1114: eb eb     mov   y,$eb
1116: eb eb     mov   y,$eb
1118: e6        mov   a,(x)
1119: 04 04     or    a,$04
111b: f3 ff ef  bbc7  $ff,$110d
111e: 00        nop
111f: e3 ec e1  bbs7  $ec,$1103
1122: aa e0 10  mov1  c,$10e0,0
1125: 82 02     set4  $02
1127: 3a 02     incw  $02
1129: 43 02 45  bbs2  $02,$1171
112c: 02 4a     set0  $4a
112e: 02 53     set0  $53
1130: 02 55     set0  $55
1132: 02 5a     set0  $5a
1134: eb eb     mov   y,$eb
1136: eb eb     mov   y,$eb
1138: e6        mov   a,(x)
1139: 04 04     or    a,$04
113b: f3 ff ef  bbc7  $ff,$112d
113e: 00        nop
113f: e5 a0 e0  mov   a,$e0a0
1142: 0b 02     asl   $02
1144: 42 02     set2  $02
1146: 38 02 31  and   $31,#$02
1149: 02 28     set0  $28
114b: 02 23     set0  $23
114d: 02 19     set0  $19
114f: 02 18     set0  $18
1151: ef        sleep
1152: 00        nop
1153: e5 a0 e0  mov   a,$e0a0
1156: 05 02 20  or    a,$2002
1159: 82 02     set4  $02
115b: a7 02     sbc   a,($02+x)
115d: 25 eb eb  and   a,$ebeb
1160: eb e6     mov   y,$e6
1162: 02 02     set0  $02
1164: f8 ff     mov   x,$ff
1166: 02 a6     set0  $a6
1168: 02 24     set0  $24
116a: eb eb     mov   y,$eb
116c: eb eb     mov   y,$eb
116e: eb e6     mov   y,$e6
1170: 02 02     set0  $02
1172: f6 ff ef  mov   a,$efff+y
1175: 00        nop
1176: e3 32 81  bbs7  $32,$10fa
1179: e0        clrv
117a: 01        tcall 0
117b: 02 30     set0  $30
117d: 82 e0     set4  $e0
117f: 02 02     set0  $02
1181: a4 02     sbc   a,$02
1183: 22 eb     set1  $eb
1185: eb eb     mov   y,$eb
1187: e6        mov   a,(x)
1188: 02 02     set0  $02
118a: f8 ff     mov   x,$ff
118c: 02 a3     set0  $a3
118e: 02 21     set0  $21
1190: eb eb     mov   y,$eb
1192: eb eb     mov   y,$eb
1194: eb e6     mov   y,$e6
1196: 02 02     set0  $02
1198: f6 ff ef  mov   a,$efff+y
119b: 00        nop
119c: e5 a0 e0  mov   a,$e0a0
119f: 0e 02 3b  tset1 $3b02
11a2: 02 40     set0  $40
11a4: 02 4b     set0  $4b
11a6: 02 50     set0  $50
11a8: 02 54     set0  $54
11aa: ef        sleep
11ab: 00        nop
11ac: e5 be e0  mov   a,$e0be
11af: 00        nop
11b0: f0 01     beq   $11b3
11b2: 2d        push  a
11b3: ff        stop
11b4: 10 30     bpl   $11e6
11b6: e0        clrv
11b7: 0b 02     asl   $02
11b9: 90 02     bcc   $11bd
11bb: 12 02     clr0  $02
11bd: 90 02     bcc   $11c1
11bf: 12 ef     clr0  $ef
11c1: 00        nop
11c2: f0 01     beq   $11c5
11c4: c3 ff e0  bbs6  $ff,$11a7
11c7: 13 08 24  bbc0  $08,$11ee
11ca: e1        tcall 14
11cb: dc        dec   y
11cc: e4 94     mov   a,$94
11ce: 02 20     set0  $20
11d0: e4 95     mov   a,$95
11d2: 02 20     set0  $20
11d4: e4 96     mov   a,$96
11d6: 02 20     set0  $20
11d8: e4 99     mov   a,$99
11da: 02 20     set0  $20
11dc: e4 9a     mov   a,$9a
11de: 02 20     set0  $20
11e0: e4 9d     mov   a,$9d
11e2: 02 20     set0  $20
11e4: ef        sleep
11e5: 00        nop
11e6: e5 b4 e1  mov   a,$e1b4
11e9: aa e4 95  mov1  c,$15e4,4
11ec: 02 34     set0  $34
11ee: e4 8d     mov   a,$8d
11f0: 02 34     set0  $34
11f2: 81        tcall 8
11f3: e0        clrv
11f4: 0b e4     asl   $e4
11f6: 00        nop
11f7: f0 01     beq   $11fa
11f9: 87 ff     adc   a,($ff+x)
11fb: 02 b0     set0  $b0
11fd: eb eb     mov   y,$eb
11ff: e6        mov   a,(x)
1200: 07 07     or    a,($07+x)
1202: fb ff     mov   y,$ff+x
1204: 02 30     set0  $30
1206: ef        sleep
1207: 00        nop
1208: e0        clrv
1209: 05 02 30  or    a,$3002
120c: 02 30     set0  $30
120e: 81        tcall 8
120f: e1        tcall 14
1210: 85 e0 05  adc   a,$05e0
1213: 02 34     set0  $34
1215: 02 37     set0  $37
1217: eb eb     mov   y,$eb
1219: e6        mov   a,(x)
121a: 04 04     or    a,$04
121c: f9 ff     mov   x,$ff+y
121e: ef        sleep
121f: 00        nop
1220: e5 c8 e0  mov   a,$e0c8
1223: 10 01     bpl   $1226
1225: d0 01     bne   $1228
1227: e2 eb     set7  $eb
1229: e6        mov   a,(x)
122a: 05 05 fa  or    a,$fa05
122d: ff        stop
122e: 81        tcall 8
122f: ef        sleep
1230: 00        nop
1231: e4 8b     mov   a,$8b
1233: 02 40     set0  $40
1235: e4 9c     mov   a,$9c
1237: 02 c0     set0  $c0
1239: e4 9f     mov   a,$9f
123b: 02 c0     set0  $c0
123d: eb e6     mov   y,$e6
123f: 03 03 f6  bbs0  $03,$1238
1242: ff        stop
1243: 81        tcall 8
1244: ef        sleep
1245: 00        nop
1246: e5 b4 f0  mov   a,$f0b4
1249: 01        tcall 0
124a: c3 ff e0  bbs6  $ff,$122d
124d: 13 08 34  bbc0  $08,$1284
1250: e1        tcall 14
1251: ff        stop
1252: e0        clrv
1253: 01        tcall 0
1254: 02 10     set0  $10
1256: 02 20     set0  $20
1258: e0        clrv
1259: 13 02 25  bbc0  $02,$1281
125c: e6        mov   a,(x)
125d: 02 02     set0  $02
125f: f5 ff eb  mov   a,$ebff+x
1262: eb eb     mov   y,$eb
1264: eb e6     mov   y,$e6
1266: 04 04     or    a,$04
1268: ec ff ef  mov   y,$efff
126b: 00        nop
126c: f0 01     beq   $126f
126e: c3 ff e0  bbs6  $ff,$1251
1271: 13 08 24  bbc0  $08,$1298
1274: e1        tcall 14
1275: c8 e4     cmp   x,#$e4
1277: 94 02     adc   a,$02+x
1279: 20        clrp
127a: e4 96     mov   a,$96
127c: 02 20     set0  $20
127e: e4 98     mov   a,$98
1280: eb 02     mov   y,$02
1282: 20        clrp
1283: e4 9a     mov   a,$9a
1285: 02 20     set0  $20
1287: e4 9f     mov   a,$9f
1289: 03 20 eb  bbs0  $20,$1277
128c: eb eb     mov   y,$eb
128e: eb e6     mov   y,$e6
1290: 04 04     or    a,$04
1292: e6        mov   a,(x)
1293: ff        stop
1294: ef        sleep
1295: 00        nop
1296: e5 a5 e1  mov   a,$e1a5
1299: ff        stop
129a: e0        clrv
129b: 01        tcall 0
129c: f0 01     beq   $129f
129e: ff        stop
129f: ff        stop
12a0: 04 30     or    a,$30
12a2: e1        tcall 14
12a3: dc        dec   y
12a4: e4 9c     mov   a,$9c
12a6: 01        tcall 0
12a7: 34 e4     and   a,$e4+x
12a9: 9b 01     dec   $01+x
12ab: 34 e4     and   a,$e4+x
12ad: 97 01     adc   a,($01)+y
12af: 34 e4     and   a,$e4+x
12b1: 99        adc   (x),(y)
12b2: 01        tcall 0
12b3: 34 e4     and   a,$e4+x
12b5: 95 01 34  adc   a,$3401+x
12b8: e4 9f     mov   a,$9f
12ba: 01        tcall 0
12bb: 34 eb     and   a,$eb+x
12bd: eb eb     mov   y,$eb
12bf: e6        mov   a,(x)
12c0: 05 05 e4  or    a,$e405
12c3: ff        stop
12c4: ef        sleep
12c5: 00        nop
12c6: e0        clrv
12c7: 0b f0     asl   $f0
12c9: 01        tcall 0
12ca: ff        stop
12cb: ff        stop
12cc: 04 22     or    a,$22
12ce: e0        clrv
12cf: 05 01 3b  or    a,$3b01
12d2: 01        tcall 0
12d3: 27 eb     and   a,($eb+x)
12d5: 01        tcall 0
12d6: 2b eb     rol   $eb
12d8: e0        clrv
12d9: 13 02 20  bbc0  $02,$12fc
12dc: e0        clrv
12dd: 05 01 25  or    a,$2501
12e0: 01        tcall 0
12e1: 15 eb e6  or    a,$e6eb+x
12e4: 07 07     or    a,($07+x)
12e6: ec ff ef  mov   y,$efff
12e9: 00        nop
12ea: e5 a0 f9  mov   a,$f9a0
12ed: 0b e0     asl   $e0
12ef: 10 03     bpl   $12f4
12f1: 5b 09     lsr   $09+x
12f3: 64 82     cmp   a,$82
12f5: eb eb     mov   y,$eb
12f7: eb eb     mov   y,$eb
12f9: eb eb     mov   y,$eb
12fb: e6        mov   a,(x)
12fc: 04 04     or    a,$04
12fe: f4 ff     mov   a,$ff+x
1300: ef        sleep
1301: 00        nop
1302: f9 09     mov   x,$09+y
1304: 84 e0     adc   a,$e0
1306: 10 03     bpl   $130b
1308: 5b 09     lsr   $09+x
130a: 64 82     cmp   a,$82
130c: eb eb     mov   y,$eb
130e: eb eb     mov   y,$eb
1310: eb eb     mov   y,$eb
1312: e6        mov   a,(x)
1313: 04 04     or    a,$04
1315: f4 ff     mov   a,$ff+x
1317: ef        sleep
1318: 00        nop
1319: e5 aa f9  mov   a,$f9aa
131c: 08 e1     or    a,#$e1
131e: e1        tcall 14
131f: e0        clrv
1320: 10 02     bpl   $1324
1322: 47 02     eor   a,($02+x)
1324: 42 02     set2  $02
1326: 49 02 44  eor   ($44),($02)
1329: 02 4b     set0  $4b
132b: 02 45     set0  $45
132d: 04 54     or    a,$54
132f: 04 5b     or    a,$5b
1331: eb eb     mov   y,$eb
1333: eb eb     mov   y,$eb
1335: e6        mov   a,(x)
1336: 04 04     or    a,$04
1338: f3 ff ef  bbc7  $ff,$132a
133b: 00        nop
133c: f9 0c     mov   x,$0c+y
133e: 85 e3 1e  adc   a,$1ee3
1341: e1        tcall 14
1342: cd e0     mov   x,#$e0
1344: 10 02     bpl   $1348
1346: 47 02     eor   a,($02+x)
1348: 42 02     set2  $02
134a: 49 02 44  eor   ($44),($02)
134d: 02 4b     set0  $4b
134f: 02 45     set0  $45
1351: 04 54     or    a,$54
1353: 04 5b     or    a,$5b
1355: eb eb     mov   y,$eb
1357: eb eb     mov   y,$eb
1359: e6        mov   a,(x)
135a: 04 04     or    a,$04
135c: f3 ff ef  bbc7  $ff,$134e
135f: 00        nop
1360: e5 a0 f9  mov   a,$f9a0
1363: 09 e0 0b  or    ($0b),($e0)
1366: f0 00     beq   $1368
1368: 1e ff 03  cmp   x,$03ff
136b: 20        clrp
136c: 03 22 e1  bbs0  $22,$1350
136f: b4 03     sbc   a,$03+x
1371: 24 03     and   a,$03
1373: 26        and   a,(x)
1374: e1        tcall 14
1375: 96 03 28  adc   a,$2803+y
1378: 03 2a e1  bbs0  $2a,$135c
137b: 78 03 30  cmp   $30,#$03
137e: 03 32 e1  bbs0  $32,$1362
1381: 5a 03     cmpw  ya,$03
1383: 34 03     and   a,$03+x
1385: 35 03 37  and   a,$3703+x
1388: ef        sleep
1389: 00        nop
138a: f9 0b     mov   x,$0b+y
138c: 82 e0     set4  $e0
138e: 0b f0     asl   $f0
1390: 00        nop
1391: 1e ff 03  cmp   x,$03ff
1394: 20        clrp
1395: 03 22 e1  bbs0  $22,$1379
1398: b4 03     sbc   a,$03+x
139a: 24 03     and   a,$03
139c: 26        and   a,(x)
139d: e1        tcall 14
139e: 96 03 28  adc   a,$2803+y
13a1: 03 2a e1  bbs0  $2a,$1385
13a4: 78 03 30  cmp   $30,#$03
13a7: 03 32 e1  bbs0  $32,$138b
13aa: 5a 03     cmpw  ya,$03
13ac: 34 03     and   a,$03+x
13ae: 35 03 37  and   a,$3703+x
13b1: ef        sleep
13b2: 00        nop
13b3: e5 be e1  mov   a,$e1be
13b6: dc        dec   y
13b7: e0        clrv
13b8: 0c 01 30  asl   $3001
13bb: 01        tcall 0
13bc: 35 01 37  and   a,$3701+x
13bf: 01        tcall 0
13c0: 40        setp
13c1: 01        tcall 0
13c2: 45 01 47  eor   a,$4701
13c5: 01        tcall 0
13c6: 50 e6     bvc   $13ae
13c8: 04 04     or    a,$04
13ca: f1        tcall 15
13cb: ff        stop
13cc: ef        sleep
13cd: 00        nop
13ce: e3 ec e1  bbs7  $ec,$13b2
13d1: b4 e0     sbc   a,$e0+x
13d3: 0c 01 30  asl   $3001
13d6: 01        tcall 0
13d7: 35 01 37  and   a,$3701+x
13da: 01        tcall 0
13db: 40        setp
13dc: 01        tcall 0
13dd: 45 01 47  eor   a,$4701
13e0: 01        tcall 0
13e1: 50 e6     bvc   $13c9
13e3: 04 04     or    a,$04
13e5: f1        tcall 15
13e6: ff        stop
13e7: ef        sleep
13e8: 00        nop
13e9: e5 c6 e0  mov   a,$e0c6
13ec: 05 02 27  or    a,$2702
13ef: 82 02     set4  $02
13f1: 30 82     bmi   $1375
13f3: ef        sleep
13f4: 00        nop
13f5: e0        clrv
13f6: 10 02     bpl   $13fa
13f8: 25 82 02  and   a,$0282
13fb: 42 82     set2  $82
13fd: ef        sleep
13fe: 00        nop
13ff: e5 a0 f9  mov   a,$f9a0
1402: 05 e0 00  or    a,$00e0
1405: f2 01     clr7  $01
1407: 0a 1e 08  or1   c,$081e,0
140a: 2a eb eb  or1   c,!($0beb,7)
140d: eb eb     mov   y,$eb
140f: 08 2a     or    a,#$2a
1411: e6        mov   a,(x)
1412: 02 02     set0  $02
1414: f7 ff     mov   a,($ff)+y
1416: ef        sleep
1417: 00        nop
1418: e3 28 f9  bbs7  $28,$1414
141b: 0f        brk
141c: e1        tcall 14
141d: eb 82     mov   y,$82
141f: e0        clrv
1420: 00        nop
1421: f2 01     clr7  $01
1423: 0a 1e 08  or1   c,$081e,0
1426: 2a eb eb  or1   c,!($0beb,7)
1429: eb eb     mov   y,$eb
142b: 08 2a     or    a,#$2a
142d: e6        mov   a,(x)
142e: 02 02     set0  $02
1430: f7 ff     mov   a,($ff)+y
1432: ef        sleep
1433: 00        nop
1434: e5 9b e1  mov   a,$e19b
1437: d2 f0     clr6  $f0
1439: 01        tcall 0
143a: c8 c8     cmp   x,#$c8
143c: e0        clrv
143d: 0d        push  psw
143e: 01        tcall 0
143f: b7 01     sbc   a,($01)+y
1441: b8 01 b9  sbc   $b9,#$01
1444: 01        tcall 0
1445: ba 04     movw  ya,$04
1447: bb eb     inc   $eb+x
1449: eb e6     mov   y,$e6
144b: 05 05 fb  or    a,$fb05
144e: ff        stop
144f: 04 bb     or    a,$bb
1451: 04 3b     or    a,$3b
1453: eb eb     mov   y,$eb
1455: eb e6     mov   y,$e6
1457: 03 03 fa  bbs0  $03,$1454
145a: ff        stop
145b: ef        sleep
145c: 00        nop
145d: e3 1e e1  bbs7  $1e,$1441
1460: e1        tcall 14
1461: f0 01     beq   $1464
1463: c8 c8     cmp   x,#$c8
1465: e0        clrv
1466: 0b 01     asl   $01
1468: a7 01     sbc   a,($01+x)
146a: a8 01     sbc   a,#$01
146c: a9 01 aa  sbc   ($aa),($01)
146f: 04 ab     or    a,$ab
1471: eb eb     mov   y,$eb
1473: e6        mov   a,(x)
1474: 05 05 fb  or    a,$fb05
1477: ff        stop
1478: 04 ab     or    a,$ab
147a: 04 2b     or    a,$2b
147c: eb eb     mov   y,$eb
147e: eb e6     mov   y,$e6
1480: 03 03 fa  bbs0  $03,$147d
1483: ff        stop
1484: ef        sleep
1485: 00        nop
1486: e5 b4 f0  mov   a,$f0b4
1489: 01        tcall 0
148a: 23 ff e0  bbs1  $ff,$146d
148d: 0a 02 a3  or1   c,$0302,5
1490: 02 21     set0  $21
1492: 02 9b     set0  $9b
1494: 01        tcall 0
1495: 19        or    (x),(y)
1496: 01        tcall 0
1497: a1        tcall 10
1498: 01        tcall 0
1499: 24 01     and   a,$01
149b: a9 01 31  sbc   ($31),($01)
149e: 01        tcall 0
149f: 34 ef     and   a,$ef+x
14a1: 00        nop
14a2: f0 01     beq   $14a5
14a4: 23 ff e0  bbs1  $ff,$1487
14a7: 14 02     or    a,$02+x
14a9: 13 02 11  bbc0  $02,$14bd
14ac: 02 0b     set0  $0b
14ae: 01        tcall 0
14af: 09 01 11  or    ($11),($01)
14b2: 01        tcall 0
14b3: 14 01     or    a,$01+x
14b5: 19        or    (x),(y)
14b6: 01        tcall 0
14b7: 21        tcall 2
14b8: 01        tcall 0
14b9: 19        or    (x),(y)
14ba: ef        sleep
14bb: 00        nop
14bc: e5 9b e3  mov   a,$e39b
14bf: 1e f0 01  cmp   x,$01f0
14c2: b4 ff     sbc   a,$ff+x
14c4: e0        clrv
14c5: 07 06     or    a,($06+x)
14c7: 24 eb     and   a,$eb
14c9: eb e6     mov   y,$e6
14cb: 05 05 fb  or    a,$fb05
14ce: ff        stop
14cf: ef        sleep
14d0: 00        nop
14d1: 83 f0 01  bbs4  $f0,$14d5
14d4: 50 ff     bvc   $14d5
14d6: e0        clrv
14d7: 11        tcall 1
14d8: 06        or    a,(x)
14d9: 22 eb     set1  $eb
14db: eb e6     mov   y,$e6
14dd: 05 05 fb  or    a,$fb05
14e0: ff        stop
14e1: ef        sleep
14e2: 00        nop
14e3: e5 a0 f0  mov   a,$f0a0
14e6: 01        tcall 0
14e7: 64 64     cmp   a,$64
14e9: e0        clrv
14ea: 10 03     bpl   $14ef
14ec: ca eb eb  mov1  $0beb,7,c
14ef: eb e6     mov   y,$e6
14f1: 03 03 fa  bbs0  $03,$14ee
14f4: ff        stop
14f5: 03 4a ef  bbs0  $4a,$14e7
14f8: 00        nop
14f9: e5 a0 f9  mov   a,$f9a0
14fc: 09 e0 10  or    ($10),($e0)
14ff: f2 01     clr7  $01
1501: 64 ee     cmp   a,$ee
1503: 30 59     bmi   $155e
1505: ef        sleep
1506: 00        nop
1507: f9 0b     mov   x,$0b+y
1509: e0        clrv
150a: 10 f2     bpl   $14fe
150c: 01        tcall 0
150d: 64 ee     cmp   a,$ee
150f: 30 5b     bmi   $156c
1511: ef        sleep
1512: 00        nop
1513: e5 a0 f9  mov   a,$f9a0
1516: 08 f2     or    a,#$f2
1518: 01        tcall 0
1519: 1e ec e0  cmp   x,$e0ec
151c: 01        tcall 0
151d: 08 10     or    a,#$10
151f: 01        tcall 0
1520: 17 01     or    a,($01)+y
1522: 20        clrp
1523: 01        tcall 0
1524: 17 01     or    a,($01)+y
1526: 14 01     or    a,$01+x
1528: 24 eb     and   a,$eb
152a: eb eb     mov   y,$eb
152c: e6        mov   a,(x)
152d: 05 05 f2  or    a,$f205
1530: ff        stop
1531: 01        tcall 0
1532: 24 ef     and   a,$ef
1534: 00        nop
1535: 82 e3     set4  $e3
1537: 32 f9     clr1  $f9
1539: 0c e1 eb  asl   $ebe1
153c: f2 01     clr7  $01
153e: 1e ec e0  cmp   x,$e0ec
1541: 01        tcall 0
1542: 08 10     or    a,#$10
1544: 01        tcall 0
1545: 07 01     or    a,($01+x)
1547: 10 01     bpl   $154a
1549: 07 01     or    a,($01+x)
154b: 04 01     or    a,$01
154d: 14 eb     or    a,$eb+x
154f: eb eb     mov   y,$eb
1551: e6        mov   a,(x)
1552: 05 05 f2  or    a,$f205
1555: ff        stop
1556: 01        tcall 0
1557: 14 ef     or    a,$ef+x
1559: 00        nop
155a: e5 c6 f9  mov   a,$f9c6
155d: 09 f0 01  or    ($01),($f0)
1560: ff        stop
1561: ff        stop
1562: e0        clrv
1563: 0d        push  psw
1564: 01        tcall 0
1565: a7 01     sbc   a,($01+x)
1567: a8 01     sbc   a,#$01
1569: a9 01 aa  sbc   ($aa),($01)
156c: 04 2b     or    a,$2b
156e: eb eb     mov   y,$eb
1570: eb e6     mov   y,$e6
1572: 07 07     or    a,($07+x)
1574: fa ff ef  mov   ($ef),($ff)
1577: 00        nop
1578: f9 0b     mov   x,$0b+y
157a: 81        tcall 8
157b: f0 01     beq   $157e
157d: ff        stop
157e: ff        stop
157f: e0        clrv
1580: 05 08 97  or    a,$9708
1583: 04 97     or    a,$97
1585: eb eb     mov   y,$eb
1587: eb e6     mov   y,$e6
1589: 06        or    a,(x)
158a: 06        or    a,(x)
158b: fa ff 04  mov   ($04),($ff)
158e: 17 ef     or    a,($ef)+y
1590: 00        nop
1591: e5 a0 f9  mov   a,$f9a0
1594: 0f        brk
1595: e0        clrv
1596: 01        tcall 0
1597: 02 10     set0  $10
1599: 02 92     set0  $92
159b: eb 02     mov   y,$02
159d: 92 eb     clr4  $eb
159f: 02 17     set0  $17
15a1: ef        sleep
15a2: 00        nop
15a3: e3 14 81  bbs7  $14,$1527
15a6: f9 05     mov   x,$05+y
15a8: e0        clrv
15a9: 02 02     set0  $02
15ab: 04 02     or    a,$02
15ad: 14 eb     or    a,$eb+x
15af: 02 17     set0  $17
15b1: eb 02     mov   y,$02
15b3: 14 ef     or    a,$ef+x
15b5: 00        nop
15b6: e5 a0 f9  mov   a,$f9a0
15b9: 08 e0     or    a,#$e0
15bb: 0e f2 01  tset1 $01f2
15be: 28 ee     and   a,#$ee
15c0: 12 57     clr0  $57
15c2: e0        clrv
15c3: 02 06     set0  $06
15c5: 14 02     or    a,$02+x
15c7: 94 eb     adc   a,$eb+x
15c9: e6        mov   a,(x)
15ca: 10 10     bpl   $15dc
15cc: fc        inc   y
15cd: ff        stop
15ce: 02 14     set0  $14
15d0: ef        sleep
15d1: 00        nop
15d2: 83 e3 1e  bbs4  $e3,$15f3
15d5: f9 0c     mov   x,$0c+y
15d7: e0        clrv
15d8: 0e f2 01  tset1 $01f2
15db: 28 ee     and   a,#$ee
15dd: 12 57     clr0  $57
15df: e0        clrv
15e0: 01        tcall 0
15e1: 06        or    a,(x)
15e2: 14 02     or    a,$02+x
15e4: 94 eb     adc   a,$eb+x
15e6: e6        mov   a,(x)
15e7: 10 10     bpl   $15f9
15e9: fc        inc   y
15ea: ff        stop
15eb: 02 14     set0  $14
15ed: ef        sleep
15ee: 00        nop
15ef: e5 9b f9  mov   a,$f99b
15f2: 0b e0     asl   $e0
15f4: 13 f0 01  bbc0  $f0,$15f8
15f7: 64 ff     cmp   a,$ff
15f9: 06        or    a,(x)
15fa: 22 eb     set1  $eb
15fc: 06        or    a,(x)
15fd: 20        clrp
15fe: eb 06     mov   y,$06
1600: 1a eb     decw  $eb
1602: 06        or    a,(x)
1603: 18 eb 06  or    $06,#$eb
1606: 16 eb 06  or    a,$06eb+y
1609: 14 ef     or    a,$ef+x
160b: 00        nop
160c: e3 64 f9  bbs7  $64,$1608
160f: 09 e0 00  or    ($00),($e0)
1612: f0 01     beq   $1615
1614: 9b ff     dec   $ff+x
1616: 03 90 02  bbs0  $90,$161b
1619: 30 02     bmi   $161d
161b: 02 eb     set0  $eb
161d: eb e6     mov   y,$e6
161f: 06        or    a,(x)
1620: 06        or    a,(x)
1621: f7 ff     mov   a,($ff)+y
1623: ef        sleep
1624: 00        nop
1625: e5 9b f9  mov   a,$f99b
1628: 0d        push  psw
1629: e0        clrv
162a: 00        nop
162b: 05 e0 ed  or    a,$ede0
162e: 02 00     set0  $00
1630: 01        tcall 0
1631: e0        clrv
1632: e6        mov   a,(x)
1633: 03 03 f8  bbs0  $03,$162e
1636: ff        stop
1637: 01        tcall 0
1638: 60        clrc
1639: ef        sleep
163a: 00        nop
163b: e3 64 f9  bbs7  $64,$1637
163e: 07 e0     or    a,($e0+x)
1640: 02 06     set0  $06
1642: 02 e6     set0  $e6
1644: 03 03 fd  bbs0  $03,$1644
1647: ff        stop
1648: ef        sleep
1649: 00        nop
164a: f0 01     beq   $164d
164c: ff        stop
164d: ff        stop
164e: e4 97     mov   a,$97
1650: 01        tcall 0
1651: 47 e4     eor   a,($e4+x)
1653: 00        nop
1654: e0        clrv
1655: 00        nop
1656: 01        tcall 0
1657: 34 e0     and   a,$e0+x
1659: 0d        push  psw
165a: 04 13     or    a,$13
165c: e1        tcall 14
165d: c8 e4     cmp   x,#$e4
165f: 8b 01     dec   $01
1661: 10 e4     bpl   $1647
1663: 9f        xcn   a
1664: 01        tcall 0
1665: 10 eb     bpl   $1652
1667: eb e6     mov   y,$e6
1669: 03 03 f5  bbs0  $03,$1661
166c: ff        stop
166d: e4 00     mov   a,$00
166f: e0        clrv
1670: 0d        push  psw
1671: 04 13     or    a,$13
1673: ef        sleep
1674: 00        nop
1675: e3 1e 82  bbs7  $1e,$15fa
1678: f0 01     beq   $167b
167a: ff        stop
167b: ff        stop
167c: e4 97     mov   a,$97
167e: 01        tcall 0
167f: 47 e4     eor   a,($e4+x)
1681: 00        nop
1682: e0        clrv
1683: 00        nop
1684: 01        tcall 0
1685: 34 e0     and   a,$e0+x
1687: 0d        push  psw
1688: 04 13     or    a,$13
168a: e1        tcall 14
168b: c8 e4     cmp   x,#$e4
168d: 8b 01     dec   $01
168f: 10 e4     bpl   $1675
1691: 9f        xcn   a
1692: 01        tcall 0
1693: 10 eb     bpl   $1680
1695: eb e6     mov   y,$e6
1697: 03 03 f5  bbs0  $03,$168f
169a: ff        stop
169b: e4 00     mov   a,$00
169d: e0        clrv
169e: 0d        push  psw
169f: 04 13     or    a,$13
16a1: ef        sleep
16a2: 00        nop
16a3: e5 c8 f0  mov   a,$f0c8
16a6: 01        tcall 0
16a7: ff        stop
16a8: c8 e0     cmp   x,#$e0
16aa: 06        or    a,(x)
16ab: 01        tcall 0
16ac: 92 01     clr4  $01
16ae: 13 e0 04  bbc0  $e0,$16b5
16b1: 01        tcall 0
16b2: b2 01     clr5  $01
16b4: b1        tcall 11
16b5: 01        tcall 0
16b6: b0 01     bcs   $16b9
16b8: ab 01     inc   $01
16ba: 2a e1 64  or1   c,!($04e1,3)
16bd: 01        tcall 0
16be: b2 01     clr5  $01
16c0: b1        tcall 11
16c1: 01        tcall 0
16c2: b0 01     bcs   $16c5
16c4: ab 01     inc   $01
16c6: 2a eb eb  or1   c,!($0beb,7)
16c9: eb e6     mov   y,$e6
16cb: 02 02     set0  $02
16cd: f0 ff     beq   $16ce
16cf: ef        sleep
16d0: 00        nop
16d1: e5 a0 f9  mov   a,$f9a0
16d4: 0b f0     asl   $f0
16d6: 01        tcall 0
16d7: ff        stop
16d8: ff        stop
16d9: e0        clrv
16da: 00        nop
16db: 03 30 03  bbs0  $30,$16e1
16de: 30 e6     bmi   $16c6
16e0: 03 03 fb  bbs0  $03,$16de
16e3: ff        stop
16e4: ef        sleep
16e5: 00        nop
16e6: e3 32 f9  bbs7  $32,$16e2
16e9: 09 f0 01  or    ($01),($f0)
16ec: ff        stop
16ed: ff        stop
16ee: e0        clrv
16ef: 13 01 b4  bbc0  $01,$16a6
16f2: 01        tcall 0
16f3: b3 01 30  bbc5  $01,$1726
16f6: 01        tcall 0
16f7: a4 01     sbc   a,$01
16f9: a3 01 20  bbs5  $01,$171c
16fc: e6        mov   a,(x)
16fd: 03 03 f3  bbs0  $03,$16f3
1700: ff        stop
1701: ef        sleep
1702: 00        nop
1703: e5 b4 f0  mov   a,$f0b4
1706: 01        tcall 0
1707: 23 ff e0  bbs1  $ff,$16ea
170a: 0a 02 a3  or1   c,$0302,5
170d: 02 21     set0  $21
170f: 02 9b     set0  $9b
1711: 01        tcall 0
1712: 19        or    (x),(y)
1713: 01        tcall 0
1714: a1        tcall 10
1715: 01        tcall 0
1716: 24 01     and   a,$01
1718: a9 01 31  sbc   ($31),($01)
171b: 01        tcall 0
171c: 29 e6 03  and   ($03),($e6)
171f: 03 ed ff  bbs0  $ed,$1721
1722: 02 a3     set0  $a3
1724: 02 21     set0  $21
1726: 02 9b     set0  $9b
1728: 01        tcall 0
1729: 19        or    (x),(y)
172a: 01        tcall 0
172b: a1        tcall 10
172c: 01        tcall 0
172d: 24 01     and   a,$01
172f: a9 01 31  sbc   ($31),($01)
1732: 01        tcall 0
1733: 29 eb eb  and   ($eb),($eb)
1736: eb e6     mov   y,$e6
1738: 03 03 ea  bbs0  $03,$1725
173b: ff        stop
173c: 01        tcall 0
173d: 34 ef     and   a,$ef+x
173f: 00        nop
1740: f0 01     beq   $1743
1742: 23 ff e0  bbs1  $ff,$1725
1745: 14 02     or    a,$02+x
1747: 13 02 11  bbc0  $02,$175b
174a: 02 0b     set0  $0b
174c: 01        tcall 0
174d: 09 01 11  or    ($11),($01)
1750: 01        tcall 0
1751: 14 01     or    a,$01+x
1753: 19        or    (x),(y)
1754: 01        tcall 0
1755: 21        tcall 2
1756: 01        tcall 0
1757: 19        or    (x),(y)
1758: e6        mov   a,(x)
1759: 03 03 ed  bbs0  $03,$1749
175c: ff        stop
175d: 02 13     set0  $13
175f: 02 11     set0  $11
1761: 02 0b     set0  $0b
1763: 01        tcall 0
1764: 09 01 11  or    ($11),($01)
1767: 01        tcall 0
1768: 14 01     or    a,$01+x
176a: 19        or    (x),(y)
176b: 01        tcall 0
176c: 21        tcall 2
176d: 01        tcall 0
176e: 19        or    (x),(y)
176f: eb eb     mov   y,$eb
1771: eb e6     mov   y,$e6
1773: 03 03 ea  bbs0  $03,$1760
1776: ff        stop
1777: 01        tcall 0
1778: 22 ef     set1  $ef
177a: 00        nop
177b: e5 a0 e0  mov   a,$e0a0
177e: 0a f0 01  or1   c,$01f0,0
1781: ff        stop
1782: ff        stop
1783: 06        or    a,(x)
1784: 24 f1     and   a,$f1
1786: 02 25     set0  $25
1788: 02 3b     set0  $3b
178a: 02 44     set0  $44
178c: 02 4b     set0  $4b
178e: eb eb     mov   y,$eb
1790: eb eb     mov   y,$eb
1792: e6        mov   a,(x)
1793: 06        or    a,(x)
1794: 06        or    a,(x)
1795: f3 ff ef  bbc7  $ff,$1787
1798: 00        nop
1799: e0        clrv
179a: 0a f0 01  or1   c,$01f0,0
179d: ff        stop
179e: ff        stop
179f: 06        or    a,(x)
17a0: 24 f1     and   a,$f1
17a2: 02 25     set0  $25
17a4: 02 3b     set0  $3b
17a6: 02 44     set0  $44
17a8: 02 4b     set0  $4b
17aa: eb eb     mov   y,$eb
17ac: eb eb     mov   y,$eb
17ae: e6        mov   a,(x)
17af: 06        or    a,(x)
17b0: 06        or    a,(x)
17b1: f3 ff ef  bbc7  $ff,$17a3
17b4: 00        nop
17b5: e5 a0 e0  mov   a,$e0a0
17b8: 00        nop
17b9: 0c 4a ef  asl   $ef4a
17bc: 00        nop
17bd: e5 a0 e0  mov   a,$e0a0
17c0: 00        nop
17c1: 04 20     or    a,$20
17c3: f0 01     beq   $17c6
17c5: ff        stop
17c6: ff        stop
17c7: e0        clrv
17c8: 02 08     set0  $08
17ca: 10 eb     bpl   $17b7
17cc: eb e6     mov   y,$e6
17ce: 06        or    a,(x)
17cf: 06        or    a,(x)
17d0: fb ff     mov   y,$ff+x
17d2: 08 10     or    a,#$10
17d4: ef        sleep
17d5: 00        nop
17d6: e0        clrv
17d7: 02 02     set0  $02
17d9: 20        clrp
17da: 02 25     set0  $25
17dc: e1        tcall 14
17dd: dc        dec   y
17de: e4 9a     mov   a,$9a
17e0: 02 20     set0  $20
17e2: e4 99     mov   a,$99
17e4: 02 20     set0  $20
17e6: 81        tcall 8
17e7: e4 98     mov   a,$98
17e9: 04 20     or    a,$20
17eb: e4 96     mov   a,$96
17ed: 04 20     or    a,$20
17ef: e4 94     mov   a,$94
17f1: 04 20     or    a,$20
17f3: e4 92     mov   a,$92
17f5: 04 20     or    a,$20
17f7: e4 90     mov   a,$90
17f9: 02 20     set0  $20
17fb: e4 8f     mov   a,$8f
17fd: 02 20     set0  $20
17ff: e4 8e     mov   a,$8e
1801: 02 20     set0  $20
1803: e4 8d     mov   a,$8d
1805: 02 20     set0  $20
1807: e4 8c     mov   a,$8c
1809: 02 20     set0  $20
180b: e4 8b     mov   a,$8b
180d: 02 20     set0  $20
180f: eb eb     mov   y,$eb
1811: eb eb     mov   y,$eb
1813: eb e6     mov   y,$e6
1815: 03 03 e6  bbs0  $03,$17fe
1818: ff        stop
1819: ef        sleep
181a: 00        nop
181b: e5 a8 f9  mov   a,$f9a8
181e: 09 e0 01  or    ($01),($e0)
1821: 08 14     or    a,#$14
1823: e0        clrv
1824: 01        tcall 0
1825: 08 24     or    a,#$24
1827: eb eb     mov   y,$eb
1829: eb e6     mov   y,$e6
182b: 08 08     or    a,#$08
182d: fa ff ef  mov   ($ef),($ff)
1830: 00        nop
1831: e3 32 f9  bbs7  $32,$182d
1834: 0b e0     asl   $e0
1836: 01        tcall 0
1837: 08 10     or    a,#$10
1839: f0 01     beq   $183c
183b: 9b ff     dec   $ff+x
183d: e0        clrv
183e: 05 06 17  or    a,$1706
1841: eb eb     mov   y,$eb
1843: e6        mov   a,(x)
1844: 10 10     bpl   $1856
1846: fb ff     mov   y,$ff+x
1848: 08 17     or    a,#$17
184a: ef        sleep
184b: 00        nop
184c: e0        clrv
184d: 06        or    a,(x)
184e: 01        tcall 0
184f: 90 01     bcc   $1852
1851: 8b 01     dec   $01
1853: 8a 01 09  eor1  c,$0901,0
1856: e0        clrv
1857: 0e 01 b0  tset1 $b001
185a: 01        tcall 0
185b: b7 01     sbc   a,($01)+y
185d: bb 01     inc   $01+x
185f: b0 01     bcs   $1862
1861: b7 ed     sbc   a,($ed)+y
1863: 02 00     set0  $00
1865: 01        tcall 0
1866: bb e6     inc   $e6+x
1868: 04 04     or    a,$04
186a: f0 ff     beq   $186b
186c: 01        tcall 0
186d: 3b ef     rol   $ef+x
186f: 00        nop
1870: e5 b4 e4  mov   a,$e4b4
1873: 99        adc   (x),(y)
1874: 01        tcall 0
1875: 40        setp
1876: e4 00     mov   a,$00
1878: e0        clrv
1879: 0c 01 10  asl   $1001
187c: e4 9c     mov   a,$9c
187e: 01        tcall 0
187f: 10 e0     bpl   $1861
1881: 10 01     bpl   $1884
1883: 42 84     set2  $84
1885: 01        tcall 0
1886: 6b e0     ror   $e0
1888: 0c 01 6b  asl   $6b01
188b: e4 9e     mov   a,$9e
188d: 01        tcall 0
188e: 60        clrc
188f: e4 00     mov   a,$00
1891: ef        sleep
1892: 00        nop
1893: e5 c8 e0  mov   a,$e0c8
1896: 12 03     clr0  $03
1898: 00        nop
1899: 02 95     set0  $95
189b: 02 96     set0  $96
189d: 02 97     set0  $97
189f: 02 98     set0  $98
18a1: 02 19     set0  $19
18a3: f0 01     beq   $18a6
18a5: f6 ff 0c  mov   a,$0cff+y
18a8: 19        or    (x),(y)
18a9: ef        sleep
18aa: 00        nop
18ab: e0        clrv
18ac: 05 f0 01  or    a,$01f0
18af: 0a 38 03  or1   c,$0338,0
18b2: 90 03     bcc   $18b7
18b4: 97 03     adc   a,($03)+y
18b6: 94 03     adc   a,$03+x
18b8: 10 03     bpl   $18bd
18ba: 92 03     clr4  $03
18bc: 90 03     bcc   $18c1
18be: 92 03     clr4  $03
18c0: 10 ef     bpl   $18b1
18c2: 00        nop
18c3: e5 c8 e0  mov   a,$e0c8
18c6: 05 01 30  or    a,$3001
18c9: 01        tcall 0
18ca: 37 e0     and   a,($e0)+y
18cc: 00        nop
18cd: f0 01     beq   $18d0
18cf: 13 ff 02  bbc0  $ff,$18d4
18d2: a5 02 a6  sbc   a,$a602
18d5: 02 27     set0  $27
18d7: 02 a8     set0  $a8
18d9: 02 a9     set0  $a9
18db: 02 2b     set0  $2b
18dd: ef        sleep
18de: 00        nop
18df: e0        clrv
18e0: 00        nop
18e1: e1        tcall 14
18e2: dc        dec   y
18e3: e4 99     mov   a,$99
18e5: 01        tcall 0
18e6: 40        setp
18e7: eb eb     mov   y,$eb
18e9: eb eb     mov   y,$eb
18eb: e6        mov   a,(x)
18ec: 04 04     or    a,$04
18ee: f9 ff     mov   x,$ff+y
18f0: e1        tcall 14
18f1: c8 e4     cmp   x,#$e4
18f3: 94 01     adc   a,$01+x
18f5: 40        setp
18f6: e4 96     mov   a,$96
18f8: 01        tcall 0
18f9: 40        setp
18fa: e4 98     mov   a,$98
18fc: 01        tcall 0
18fd: 40        setp
18fe: e4 9a     mov   a,$9a
1900: 01        tcall 0
1901: 40        setp
1902: e4 9b     mov   a,$9b
1904: 03 40 e4  bbs0  $40,$18eb
1907: 9c        dec   a
1908: 03 40 ef  bbs0  $40,$18fa
190b: 00        nop
190c: e5 be e0  mov   a,$e0be
190f: 12 e1     clr0  $e1
1911: c8 f0     cmp   x,#$f0
1913: 01        tcall 0
1914: c8 a6     cmp   x,#$a6
1916: f2 10     clr7  $10
1918: ff        stop
1919: dc        dec   y
191a: 28 40     and   a,#$40
191c: ef        sleep
191d: 00        nop
191e: e0        clrv
191f: 12 e1     clr0  $e1
1921: c8 f0     cmp   x,#$f0
1923: 01        tcall 0
1924: c8 a6     cmp   x,#$a6
1926: f2 10     clr7  $10
1928: ff        stop
1929: dc        dec   y
192a: 28 40     and   a,#$40
192c: ef        sleep
192d: 00        nop
