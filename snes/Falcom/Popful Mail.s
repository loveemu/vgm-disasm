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
056f: c4 01     mov   $01,a             ; $00/1 = voice ptr of track x
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
058e: 3f 5a 09  call  $095a             ; read vcmd
0591: 68 e0     cmp   a,#$e0
0593: 90 05     bcc   $059a
0595: 3f 67 09  call  $0967             ; dispatch vcmd
0598: 2f f4     bra   $058e
059a: fd        mov   y,a
059b: 28 7f     and   a,#$7f
059d: d4 3d     mov   $3d+x,a
059f: ad 80     cmp   y,#$80
05a1: b0 14     bcs   $05b7
; vcmd 00-7f
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

; read byte from voice ptr
095a: 6d        push  y
095b: 8d 00     mov   y,#$00
095d: f7 00     mov   a,($00)+y
095f: 28 ff     and   a,#$ff
0961: 0d        push  psw
0962: 3a 00     incw  $00
0964: 8e        pop   psw
0965: ee        pop   y
0966: 6f        ret

; dispatch vcmd
0967: 80        setc
0968: a8 e0     sbc   a,#$e0
096a: 1c        asl   a
096b: 4d        push  x
096c: 5d        mov   x,a
096d: ae        pop   a
096e: 1f 71 09  jmp   ($0971+x)

; vcmd dispatch table
0971: dw $09a7  ; e0
0973: dw $0a07  ; e1
0975: dw $0a14  ; e2
0977: dw $0a1b  ; e3
0979: dw $0a22  ; e4
097b: dw $0a3d  ; e5
097d: dw $0a58  ; e6
097f: dw $0a83  ; e7
0981: dw $0a96  ; e8
0983: dw $0c42  ; e9
0985: dw $09f8  ; ea
0987: dw $0a9c  ; eb
0989: dw $0ab0  ; ec
098b: dw $0ac4  ; ed
098d: dw $0c42  ; ee
098f: dw $0ade  ; ef
0991: dw $0b67  ; f0
0993: dw $0b83  ; f1
0995: dw $0b90  ; f2
0997: dw $0b95  ; f3
0999: dw $0bae  ; f4
099b: dw $0bb5  ; f5
099d: dw $0bbc  ; f6
099f: dw $0bd5  ; f7
09a1: dw $0bfb  ; f8
09a3: dw $0c05  ; f9
09a5: dw $0c17  ; fa

; vcmd e0
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

; vcmd ea
09f8: 5d        mov   x,a
09f9: 3f 5a 09  call  $095a
09fc: 78 00 23  cmp   $23,#$00
09ff: d0 03     bne   $0a04
0a01: c4 20     mov   $20,a
0a03: 6f        ret

0a04: c4 21     mov   $21,a
0a06: 6f        ret

; vcmd e1
0a07: 5d        mov   x,a
0a08: e8 00     mov   a,#$00
0a0a: d5 aa 02  mov   $02aa+x,a
0a0d: 3f 5a 09  call  $095a
0a10: d5 b4 02  mov   $02b4+x,a
0a13: 6f        ret

; vcmd e2
0a14: 5d        mov   x,a
0a15: 3f 5a 09  call  $095a
0a18: d4 51     mov   $51+x,a
0a1a: 6f        ret

; vcmd e3
0a1b: 5d        mov   x,a
0a1c: 3f 5a 09  call  $095a
0a1f: d4 a1     mov   $a1+x,a
0a21: 6f        ret

; vcmd e4
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

; vcmd e5
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

; vcmd e6
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

; vcmd e7
0a83: 5d        mov   x,a
0a84: 3f 5a 09  call  $095a
0a87: d5 1e 02  mov   $021e+x,a
0a8a: 3f 5a 09  call  $095a
0a8d: d5 14 02  mov   $0214+x,a
0a90: 3f 5a 09  call  $095a
0a93: d4 83     mov   $83+x,a
0a95: 6f        ret

; vcmd e8
0a96: 5d        mov   x,a
0a97: e8 00     mov   a,#$00
0a99: d4 83     mov   $83+x,a
0a9b: 6f        ret

; vcmd eb
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

; vcmd ec
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

; vcmd ed
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

; vcmd ef
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

; vcmd f0
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

; vcmd f1
0b83: 5d        mov   x,a
0b84: e8 00     mov   a,#$00
0b86: d5 97 00  mov   $0097+x,a
0b89: d5 64 02  mov   $0264+x,a
0b8c: d5 28 02  mov   $0228+x,a
0b8f: 6f        ret

; vcmd f2
0b90: 5d        mov   x,a
0b91: e8 01     mov   a,#$01
0b93: 2f 03     bra   $0b98
; vcmd f3
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

; vcmd f4
0bae: 5d        mov   x,a
0baf: e8 00     mov   a,#$00
0bb1: d5 32 01  mov   $0132+x,a
0bb4: 6f        ret

; vcmd f5
0bb5: 5d        mov   x,a
0bb6: 3f 5a 09  call  $095a
0bb9: 5f e5 05  jmp   $05e5

; vcmd f6
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

; vcmd f7
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

; vcmd f8
0bfb: 5d        mov   x,a
0bfc: e8 00     mov   a,#$00
0bfe: c4 24     mov   $24,a
0c00: c4 25     mov   $25,a
0c02: a2 28     set5  $28
0c04: 6f        ret

; vcmd f9
0c05: 5d        mov   x,a
0c06: 3f 5a 09  call  $095a
0c09: d5 a0 02  mov   $02a0+x,a
0c0c: 28 1f     and   a,#$1f
0c0e: d5 78 02  mov   $0278+x,a
0c11: e8 00     mov   a,#$00
0c13: d5 6e 02  mov   $026e+x,a
0c16: 6f        ret

; vcmd fa
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

; vcmd e9,ee
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
0cbd: d5 78 01  mov   $0178+x,a         ; load voice address (lo)
0cc0: fc        inc   y
0cc1: f6 00 1c  mov   a,$1c00+y
0cc4: 60        clrc
0cc5: 88 1c     adc   a,#$1c            ; convert offset to address (base 0x1c00)
0cc7: d5 82 01  mov   $0182+x,a         ; load voice address (hi)
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
0edd: 95 f1 0e  adc   a,$0ef1+x         ; $0fd1
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

; dsp register shadows
0efe: db $2c,$24
0f00: db $3c,$25
0f02: db $0d,$26
0f04: db $4d,$27
0f06: db $6c,$28
0f08: db $4c,$2a
0f0a: db $5c,$2f
0f0c: db $3d,$2b
0f0e: db $2d,$2d
0f10: db $5c,$2e

0f12: db $00,$01,$03,$07,$0d,$15,$1e,$29
0f1a: db $34,$42,$51,$5e,$67,$6e,$73,$77
0f22: db $7a,$7c,$7d,$7e,$7f

0f27: db $7f,$00,$00,$00,$00,$00,$00,$00
0f2f: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0f37: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0f3f: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0f47: db $00,$ff,$ee,$b8,$06,$20
0f4d: db $01,$ff,$e0,$b8,$06,$60
0f53: db $02,$ff,$e0,$b8,$06,$f0
0f59: db $03,$ff,$e0,$b8,$06,$f0
0f5f: db $04,$ff,$e0,$b8,$06,$30
0f65: db $05,$ff,$e0,$b8,$07,$b0
0f6b: db $06,$ff,$e0,$b8,$06,$b0
0f71: db $07,$ff,$eb,$b8,$0e,$00
0f77: db $08,$ff,$e0,$b8,$04,$80
0f7d: db $09,$ff,$f2,$b8,$03,$a0
0f83: db $0a,$ff,$f5,$b8,$04,$a0
0f89: db $0b,$ff,$e0,$b8,$07,$80
0f8f: db $0c,$ff,$f1,$b8,$07,$00
0f95: db $0d,$ff,$e0,$b8,$03,$a0
0f9b: db $0e,$ff,$f2,$b8,$03,$80
0fa1: db $0f,$ff,$ee,$b8,$04,$90
0fa7: db $10,$ff,$ee,$b8,$03,$00
0fad: db $11,$ff,$e0,$b8,$03,$c0
0fb3: db $12,$ff,$e0,$b8,$07,$00
0fb9: db $13,$ff,$e0,$b8,$0a,$c0
0fbf: db $14,$ff,$f1,$b8,$04,$00
0fc5: db $15,$ff,$e0,$b8,$04,$00
0fcb: db $16,$ff,$f4,$b8,$04,$e0

; vcmd length table
0fd1: $01,$01,$01,$01,$01,$01,$04,$03
0fd9: $01,$02,$01,$00,$00,$02,$01,$02
0fe1: $03,$00,$03,$03,$00,$03,$03,$03
0fe9: $00,$01,$02

0fec: dw $085f
0fee: dw $08de
0ff0: dw $0965
0ff2: dw $09f4
0ff4: dw $0a8c
0ff6: dw $0b2c
0ff8: dw $0bd6
0ffa: dw $0c8b
0ffc: dw $0d4a
0ffe: dw $0e14
1000: dw $0eea
1002: dw $0fcd
1004: dw $10be
