0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 e0     mov   a,#$e0
0406: 8d 6c     mov   y,#$6c
0408: 3f c6 06  call  $06c6
040b: e8 00     mov   a,#$00
040d: 5d        mov   x,a
040e: af        mov   (x)+,a
040f: c8 f0     cmp   x,#$f0
0411: d0 fb     bne   $040e
0413: 5d        mov   x,a
0414: d5 00 01  mov   $0100+x,a
0417: 3d        inc   x
0418: d0 fa     bne   $0414
041a: d5 00 02  mov   $0200+x,a
041d: 3d        inc   x
041e: d0 fa     bne   $041a
0420: d5 00 03  mov   $0300+x,a
0423: 3d        inc   x
0424: c8 80     cmp   x,#$80
0426: d0 f8     bne   $0420
0428: 3f 3c 05  call  $053c
042b: e8 70     mov   a,#$70
042d: c5 f1 00  mov   $00f1,a
0430: e8 10     mov   a,#$10
0432: c5 fa 00  mov   $00fa,a
0435: e8 01     mov   a,#$01
0437: c5 f1 00  mov   $00f1,a
043a: 8d 0a     mov   y,#$0a
043c: ad 05     cmp   y,#$05
043e: f0 07     beq   $0447
0440: b0 08     bcs   $044a
0442: 69 4d 4c  cmp   ($4c),($4d)
0445: d0 11     bne   $0458
0447: e3 4c 0e  bbs7  $4c,$0458
044a: f6 5e 0e  mov   a,$0e5e+y
044d: c5 f2 00  mov   $00f2,a
0450: f6 68 0e  mov   a,$0e68+y
0453: 5d        mov   x,a
0454: e6        mov   a,(x)
0455: c5 f3 00  mov   $00f3,a
0458: fe e2     dbnz  y,$043c
045a: cb 45     mov   $45,y
045c: cb 46     mov   $46,y
045e: e4 1a     mov   a,$1a
0460: 48 ff     eor   a,#$ff
0462: 24 6c     and   a,$6c
0464: c4 46     mov   $46,a
0466: cb 6c     mov   $6c,y
0468: ec fd 00  mov   y,$00fd
046b: f0 fb     beq   $0468
046d: cb e6     mov   $e6,y
046f: e8 20     mov   a,#$20
0471: cf        mul   ya
0472: 60        clrc
0473: 84 43     adc   a,$43
0475: c4 43     mov   $43,a
0477: 90 07     bcc   $0480
0479: 69 4d 4c  cmp   ($4c),($4d)
047c: f0 02     beq   $0480
047e: ab 4c     inc   $4c
0480: e4 53     mov   a,$53
0482: eb e6     mov   y,$e6
0484: cf        mul   ya
0485: 60        clrc
0486: 84 51     adc   a,$51
0488: c4 51     mov   $51,a
048a: 90 36     bcc   $04c2
048c: 3f 2e 0f  call  $0f2e
048f: 3f 56 07  call  $0756
0492: 8f 20 47  mov   $47,#$20
0495: cd 0a     mov   x,#$0a
0497: 3f 44 10  call  $1044
049a: 3d        inc   x
049b: 3d        inc   x
049c: 0b 47     asl   $47
049e: d0 f7     bne   $0497
04a0: cd 00     mov   x,#$00
04a2: 3f db 04  call  $04db
04a5: cd 01     mov   x,#$01
04a7: 3f db 04  call  $04db
04aa: cd 02     mov   x,#$02
04ac: 3f db 04  call  $04db
04af: cd 03     mov   x,#$03
04b1: 3f db 04  call  $04db
04b4: ac 4f 00  inc   $004f
04b7: e5 4f 00  mov   a,$004f
04ba: c4 07     mov   $07,a
04bc: 3f f2 04  call  $04f2
04bf: 5f 3a 04  jmp   $043a

04c2: e4 04     mov   a,$04
04c4: f0 12     beq   $04d8
04c6: cd 00     mov   x,#$00
04c8: 8f 01 47  mov   $47,#$01
04cb: f4 31     mov   a,$31+x
04cd: f0 03     beq   $04d2
04cf: 3f 3a 0d  call  $0d3a
04d2: 3d        inc   x
04d3: 3d        inc   x
04d4: 0b 47     asl   $47
04d6: d0 f3     bne   $04cb
04d8: 5f 3a 04  jmp   $043a

04db: f5 50 02  mov   a,$0250+x
04de: d5 54 02  mov   $0254+x,a
04e1: f4 04     mov   a,$04+x
04e3: d5 f4 00  mov   $00f4+x,a
04e6: f5 f4 00  mov   a,$00f4+x
04e9: 75 f4 00  cmp   a,$00f4+x
04ec: d0 f8     bne   $04e6
04ee: d5 50 02  mov   $0250+x,a
04f1: 6f        ret

04f2: e5 50 02  mov   a,$0250
04f5: 65 54 02  cmp   a,$0254
04f8: f0 08     beq   $0502
04fa: 28 7f     and   a,#$7f
04fc: c4 00     mov   $00,a
04fe: e8 ff     mov   a,#$ff
0500: c4 08     mov   $08,a
0502: e5 51 02  mov   a,$0251
0505: 65 55 02  cmp   a,$0255
0508: f0 0b     beq   $0515
050a: 28 7f     and   a,#$7f
050c: 68 6f     cmp   a,#$6f
050e: b0 06     bcs   $0516
0510: c4 01     mov   $01,a
0512: 8f ff 09  mov   $09,#$ff
0515: 6f        ret

0516: 3f 1a 05  call  $051a
0519: 6f        ret

051a: 28 0f     and   a,#$0f
051c: 1c        asl   a
051d: 5d        mov   x,a
051e: f5 28 05  mov   a,$0528+x
0521: 2d        push  a
0522: f5 27 05  mov   a,$0527+x
0525: 2d        push  a
0526: 6f        ret

0527: 39        and   (x),(y)
0528: 05 56 05  or    a,$0556
052b: 89 05 8f  adc   ($8f),($05)
052e: 05 95 05  or    a,$0595
0531: a2 05     set5  $05
0533: ac 05 c0  inc   $c005
0536: 05 ca 05  or    a,$05ca
0539: 5f 00 04  jmp   $0400

053c: e8 00     mov   a,#$00
053e: 3f 5d 0a  call  $0a5d
0541: a2 48     set5  $48
0543: e8 68     mov   a,#$68
0545: 8d 0c     mov   y,#$0c
0547: 3f c6 06  call  $06c6
054a: 8d 1c     mov   y,#$1c
054c: 3f c6 06  call  $06c6
054f: e8 14     mov   a,#$14
0551: 8d 5d     mov   y,#$5d
0553: 3f c6 06  call  $06c6
0556: e8 00     mov   a,#$00
0558: c4 00     mov   $00,a
055a: c4 01     mov   $01,a
055c: c4 02     mov   $02,a
055e: c4 03     mov   $03,a
0560: c5 50 02  mov   $0250,a
0563: c5 51 02  mov   $0251,a
0566: c5 52 02  mov   $0252,a
0569: c5 53 02  mov   $0253,a
056c: c5 54 02  mov   $0254,a
056f: c5 55 02  mov   $0255,a
0572: c5 56 02  mov   $0256,a
0575: c5 57 02  mov   $0257,a
0578: c5 58 02  mov   $0258,a
057b: 3f 10 07  call  $0710
057e: e8 77     mov   a,#$77
0580: c5 f1 00  mov   $00f1,a
0583: e8 be     mov   a,#$be
0585: c5 59 02  mov   $0259,a
0588: 6f        ret

0589: e8 00     mov   a,#$00
058b: c5 58 02  mov   $0258,a
058e: 6f        ret

058f: e8 01     mov   a,#$01
0591: c5 58 02  mov   $0258,a
0594: 6f        ret

0595: 3f 4c 0f  call  $0f4c
0598: e5 52 02  mov   a,$0252
059b: d5 40 01  mov   $0140+x,a
059e: 09 47 e4  or    ($e4),($47)
05a1: 6f        ret

05a2: e5 53 02  mov   a,$0253
05a5: d0 01     bne   $05a8
05a7: bc        inc   a
05a8: c5 59 02  mov   $0259,a
05ab: 6f        ret

05ac: e5 59 02  mov   a,$0259
05af: c4 5a     mov   $5a,a
05b1: e8 00     mov   a,#$00
05b3: c4 5b     mov   $5b,a
05b5: 80        setc
05b6: a4 59     sbc   a,$59
05b8: f8 5a     mov   x,$5a
05ba: 3f ed 0a  call  $0aed
05bd: da 5c     movw  $5c,ya
05bf: 6f        ret

05c0: 3f 4c 0f  call  $0f4c
05c3: e5 52 02  mov   a,$0252
05c6: d5 50 01  mov   $0150+x,a
05c9: 6f        ret

05ca: e5 52 02  mov   a,$0252
05cd: c5 6d 00  mov   $006d,a
05d0: 6f        ret

05d1: ad ca     cmp   y,#$ca
05d3: 90 05     bcc   $05da
05d5: 3f a6 08  call  $08a6
05d8: 8d a4     mov   y,#$a4
05da: ad c8     cmp   y,#$c8
05dc: b0 f2     bcs   $05d0
05de: e4 1a     mov   a,$1a
05e0: 24 47     and   a,$47
05e2: d0 ec     bne   $05d0
05e4: dd        mov   a,y
05e5: 28 7f     and   a,#$7f
05e7: 60        clrc
05e8: 84 50     adc   a,$50
05ea: 60        clrc
05eb: 95 f0 02  adc   a,$02f0+x
05ee: d5 61 03  mov   $0361+x,a
05f1: f5 81 03  mov   a,$0381+x
05f4: d5 60 03  mov   $0360+x,a
05f7: f5 b1 02  mov   a,$02b1+x
05fa: 5c        lsr   a
05fb: e8 00     mov   a,#$00
05fd: 7c        ror   a
05fe: d5 a0 02  mov   $02a0+x,a
0601: e8 00     mov   a,#$00
0603: d4 b0     mov   $b0+x,a
0605: d5 00 01  mov   $0100+x,a
0608: d5 d0 02  mov   $02d0+x,a
060b: d4 c0     mov   $c0+x,a
060d: 09 47 5e  or    ($5e),($47)
0610: 09 47 45  or    ($45),($47)
0613: f5 80 02  mov   a,$0280+x
0616: d4 a0     mov   $a0+x,a
0618: f0 1e     beq   $0638
061a: f5 81 02  mov   a,$0281+x
061d: d4 a1     mov   $a1+x,a
061f: f5 90 02  mov   a,$0290+x
0622: d0 0a     bne   $062e
0624: f5 61 03  mov   a,$0361+x
0627: 80        setc
0628: b5 91 02  sbc   a,$0291+x
062b: d5 61 03  mov   $0361+x,a
062e: f5 91 02  mov   a,$0291+x
0631: 60        clrc
0632: 95 61 03  adc   a,$0361+x
0635: 3f ca 0a  call  $0aca
0638: 3f e2 0a  call  $0ae2
063b: 8d 00     mov   y,#$00
063d: e4 11     mov   a,$11
063f: 80        setc
0640: a8 34     sbc   a,#$34
0642: b0 09     bcs   $064d
0644: e4 11     mov   a,$11
0646: 80        setc
0647: a8 13     sbc   a,#$13
0649: b0 06     bcs   $0651
064b: dc        dec   y
064c: 1c        asl   a
064d: 7a 10     addw  ya,$10
064f: da 10     movw  $10,ya
0651: 4d        push  x
0652: e4 11     mov   a,$11
0654: 1c        asl   a
0655: 8d 00     mov   y,#$00
0657: cd 18     mov   x,#$18
0659: 9e        div   ya,x
065a: 5d        mov   x,a
065b: f6 74 0e  mov   a,$0e74+y
065e: c4 15     mov   $15,a
0660: f6 73 0e  mov   a,$0e73+y
0663: c4 14     mov   $14,a
0665: f6 76 0e  mov   a,$0e76+y
0668: 2d        push  a
0669: f6 75 0e  mov   a,$0e75+y
066c: ee        pop   y
066d: 9a 14     subw  ya,$14
066f: eb 10     mov   y,$10
0671: cf        mul   ya
0672: dd        mov   a,y
0673: 8d 00     mov   y,#$00
0675: 7a 14     addw  ya,$14
0677: cb 15     mov   $15,y
0679: 1c        asl   a
067a: 2b 15     rol   $15
067c: c4 14     mov   $14,a
067e: 2f 04     bra   $0684
0680: 4b 15     lsr   $15
0682: 7c        ror   a
0683: 3d        inc   x
0684: c8 06     cmp   x,#$06
0686: d0 f8     bne   $0680
0688: c4 14     mov   $14,a
068a: ce        pop   x
068b: f5 20 02  mov   a,$0220+x
068e: eb 15     mov   y,$15
0690: cf        mul   ya
0691: da 16     movw  $16,ya
0693: f5 20 02  mov   a,$0220+x
0696: eb 14     mov   y,$14
0698: cf        mul   ya
0699: 6d        push  y
069a: f5 21 02  mov   a,$0221+x
069d: eb 14     mov   y,$14
069f: cf        mul   ya
06a0: 7a 16     addw  ya,$16
06a2: da 16     movw  $16,ya
06a4: f5 21 02  mov   a,$0221+x
06a7: eb 15     mov   y,$15
06a9: cf        mul   ya
06aa: fd        mov   y,a
06ab: ae        pop   a
06ac: 7a 16     addw  ya,$16
06ae: da 16     movw  $16,ya
06b0: 7d        mov   a,x
06b1: 9f        xcn   a
06b2: 5c        lsr   a
06b3: 08 02     or    a,#$02
06b5: fd        mov   y,a
06b6: e4 16     mov   a,$16
06b8: 3f be 06  call  $06be
06bb: fc        inc   y
06bc: e4 17     mov   a,$17
06be: 2d        push  a
06bf: e4 47     mov   a,$47
06c1: 24 1a     and   a,$1a
06c3: ae        pop   a
06c4: d0 06     bne   $06cc
06c6: cc f2 00  mov   $00f2,y
06c9: c5 f3 00  mov   $00f3,a
06cc: 6f        ret

06cd: 3f 05 07  call  $0705
06d0: 8d 00     mov   y,#$00
06d2: f7 40     mov   a,($40)+y
06d4: 3a 40     incw  $40
06d6: 2d        push  a
06d7: f7 40     mov   a,($40)+y
06d9: 3a 40     incw  $40
06db: fd        mov   y,a
06dc: ae        pop   a
06dd: 6f        ret

06de: e8 ff     mov   a,#$ff		; load song
06e0: 44 1a     eor   a,$1a
06e2: 2f 04     bra   $06e8
06e4: e8 ff     mov   a,#$ff
06e6: c4 6d     mov   $6d,a
06e8: 8d 5c     mov   y,#$5c
06ea: cc f2 00  mov   $00f2,y
06ed: c5 f3 00  mov   $00f3,a
06f0: 3f a5 0e  call  $0ea5
06f3: c4 08     mov   $08,a
06f5: c4 04     mov   $04,a
06f7: 1c        asl   a
06f8: 5d        mov   x,a
06f9: f5 8f 03  mov   a,$038f+x
06fc: fd        mov   y,a
06fd: f5 8e 03  mov   a,$038e+x
0700: da 40     movw  $40,ya
0702: 8f 02 0c  mov   $0c,#$02
0705: e4 1a     mov   a,$1a
0707: 48 ff     eor   a,#$ff
0709: 0e 46 00  tset1 $0046
070c: 8f 00 6c  mov   $6c,#$00
070f: 6f        ret

0710: cd 0e     mov   x,#$0e
0712: 8f 80 47  mov   $47,#$80
0715: e8 ff     mov   a,#$ff
0717: d5 01 03  mov   $0301+x,a
071a: d5 71 02  mov   $0271+x,a
071d: e8 0a     mov   a,#$0a
071f: 3f 07 09  call  $0907
0722: e8 00     mov   a,#$00
0724: d5 11 02  mov   $0211+x,a
0727: d5 81 03  mov   $0381+x,a
072a: d5 f0 02  mov   $02f0+x,a
072d: d5 80 02  mov   $0280+x,a
0730: d4 b1     mov   $b1+x,a
0732: d4 c1     mov   $c1+x,a
0734: d5 60 02  mov   $0260+x,a
0737: 1d        dec   x
0738: 1d        dec   x
0739: 4b 47     lsr   $47
073b: d0 d8     bne   $0715
073d: c4 5a     mov   $5a,a
073f: c4 68     mov   $68,a
0741: c4 54     mov   $54,a
0743: c4 50     mov   $50,a
0745: c4 42     mov   $42,a
0747: c4 5f     mov   $5f,a
0749: 8f c0 59  mov   $59,#$c0
074c: 8f 20 53  mov   $53,#$20
074f: 6f        ret

0750: 2f 92     bra   $06e4
0752: 2f 8a     bra   $06de
0754: 2f 9f     bra   $06f5
0756: eb 08     mov   y,$08
0758: e4 00     mov   a,$00
075a: c4 08     mov   $08,a
075c: 68 7d     cmp   a,#$7d
075e: f0 a5     beq   $0705
0760: 68 7e     cmp   a,#$7e
0762: f0 0c     beq   $0770
0764: 68 7f     cmp   a,#$7f
0766: f0 e8     beq   $0750
0768: 68 7c     cmp   a,#$7c
076a: f0 e6     beq   $0752
076c: 7e 00     cmp   y,$00
076e: d0 85     bne   $06f5
0770: e4 04     mov   a,$04
0772: f0 db     beq   $074f
0774: e4 0c     mov   a,$0c
0776: f0 4c     beq   $07c4
0778: 6e 0c 95  dbnz  $0c,$0710
077b: 3f cd 06  call  $06cd
077e: d0 14     bne   $0794
0780: fd        mov   y,a
0781: f0 d1     beq   $0754
0783: 8b 42     dec   $42
0785: 10 02     bpl   $0789
0787: c4 42     mov   $42,a
0789: 3f cd 06  call  $06cd
078c: f8 42     mov   x,$42
078e: f0 eb     beq   $077b
0790: da 40     movw  $40,ya
0792: 2f e7     bra   $077b
0794: da 16     movw  $16,ya
0796: 8d 0f     mov   y,#$0f
0798: f7 16     mov   a,($16)+y
079a: d6 30 00  mov   $0030+y,a
079d: dc        dec   y
079e: 10 f8     bpl   $0798
07a0: cd 00     mov   x,#$00
07a2: 8f 01 47  mov   $47,#$01
07a5: f4 31     mov   a,$31+x
07a7: f0 0a     beq   $07b3
07a9: f5 11 02  mov   a,$0211+x
07ac: d0 05     bne   $07b3
07ae: e8 00     mov   a,#$00
07b0: 3f a6 08  call  $08a6
07b3: e8 00     mov   a,#$00
07b5: d4 80     mov   $80+x,a
07b7: d4 90     mov   $90+x,a
07b9: d4 91     mov   $91+x,a
07bb: bc        inc   a
07bc: d4 70     mov   $70+x,a
07be: 3d        inc   x
07bf: 3d        inc   x
07c0: 0b 47     asl   $47
07c2: d0 e1     bne   $07a5
07c4: cd 00     mov   x,#$00
07c6: d8 5e     mov   $5e,x
07c8: 8f 01 47  mov   $47,#$01
07cb: d8 44     mov   $44,x
07cd: f4 31     mov   a,$31+x
07cf: f0 66     beq   $0837
07d1: 9b 70     dec   $70+x
07d3: d0 5c     bne   $0831
07d5: 3f 9c 08  call  $089c
07d8: d0 17     bne   $07f1
07da: f4 80     mov   a,$80+x
07dc: f0 9d     beq   $077b
07de: 3f f5 09  call  $09f5
07e1: 9b 80     dec   $80+x
07e3: d0 f0     bne   $07d5
07e5: f5 30 02  mov   a,$0230+x
07e8: d4 30     mov   $30+x,a
07ea: f5 31 02  mov   a,$0231+x
07ed: d4 31     mov   $31+x,a
07ef: 2f e4     bra   $07d5
07f1: 30 20     bmi   $0813
07f3: d5 00 02  mov   $0200+x,a
07f6: 3f 9c 08  call  $089c
07f9: 30 18     bmi   $0813
07fb: 2d        push  a
07fc: 9f        xcn   a
07fd: 28 07     and   a,#$07
07ff: fd        mov   y,a
0800: f6 8d 0e  mov   a,$0e8d+y
0803: d5 01 02  mov   $0201+x,a
0806: ae        pop   a
0807: 28 0f     and   a,#$0f
0809: fd        mov   y,a
080a: f6 95 0e  mov   a,$0e95+y
080d: d5 10 02  mov   $0210+x,a
0810: 3f 9c 08  call  $089c
0813: 68 e0     cmp   a,#$e0
0815: 90 05     bcc   $081c
0817: 3f 8a 08  call  $088a
081a: 2f b9     bra   $07d5
081c: 3f d1 05  call  $05d1
081f: f5 00 02  mov   a,$0200+x
0822: d4 70     mov   $70+x,a
0824: fd        mov   y,a
0825: f5 01 02  mov   a,$0201+x
0828: cf        mul   ya
0829: dd        mov   a,y
082a: d0 01     bne   $082d
082c: bc        inc   a
082d: d4 71     mov   $71+x,a
082f: 2f 03     bra   $0834
0831: 3f 4c 0c  call  $0c4c
0834: 3f aa 0a  call  $0aaa
0837: 3d        inc   x
0838: 3d        inc   x
0839: 0b 47     asl   $47
083b: d0 8e     bne   $07cb
083d: e4 54     mov   a,$54
083f: f0 0b     beq   $084c
0841: ba 56     movw  ya,$56
0843: 7a 52     addw  ya,$52
0845: 6e 54 02  dbnz  $54,$084a
0848: ba 54     movw  ya,$54
084a: da 52     movw  $52,ya
084c: e4 68     mov   a,$68
084e: f0 15     beq   $0865
0850: ba 64     movw  ya,$64
0852: 7a 60     addw  ya,$60
0854: da 60     movw  $60,ya
0856: ba 66     movw  ya,$66
0858: 7a 62     addw  ya,$62
085a: 6e 68 06  dbnz  $68,$0863
085d: ba 68     movw  ya,$68
085f: da 60     movw  $60,ya
0861: eb 6a     mov   y,$6a
0863: da 62     movw  $62,ya
0865: e4 5a     mov   a,$5a
0867: f0 0e     beq   $0877
0869: ba 5c     movw  ya,$5c
086b: 7a 58     addw  ya,$58
086d: 6e 5a 02  dbnz  $5a,$0872
0870: ba 5a     movw  ya,$5a
0872: da 58     movw  $58,ya
0874: 8f ff 5e  mov   $5e,#$ff
0877: cd 00     mov   x,#$00
0879: 8f 01 47  mov   $47,#$01
087c: f4 31     mov   a,$31+x
087e: f0 03     beq   $0883
0880: 3f 66 0b  call  $0b66
0883: 3d        inc   x
0884: 3d        inc   x
0885: 0b 47     asl   $47
0887: d0 f3     bne   $087c
0889: 6f        ret

; dispatch vcmd in A (e0-ff)
088a: 1c        asl   a
088b: fd        mov   y,a
088c: f6 4a 0a  mov   a,$0a4a+y
088f: 2d        push  a
0890: f6 49 0a  mov   a,$0a49+y
0893: 2d        push  a
0894: dd        mov   a,y
0895: 5c        lsr   a
0896: fd        mov   y,a
0897: f6 e7 0a  mov   a,$0ae7+y
089a: f0 08     beq   $08a4
; read new argument to A and Y
089c: e7 30     mov   a,($30+x)
; advance reading ptr
089e: bb 30     inc   $30+x
08a0: d0 02     bne   $08a4
08a2: bb 31     inc   $31+x
08a4: fd        mov   y,a
08a5: 6f        ret

; vcmd e0 - set instrument
08a6: d5 11 02  mov   $0211+x,a
08a9: e8 00     mov   a,#$00
08ab: d5 60 02  mov   $0260+x,a
08ae: f5 11 02  mov   a,$0211+x
08b1: fd        mov   y,a
08b2: 10 06     bpl   $08ba
08b4: 80        setc
08b5: a8 ca     sbc   a,#$ca
08b7: 60        clrc
08b8: 84 5f     adc   a,$5f
08ba: 8d 06     mov   y,#$06
08bc: cf        mul   ya
08bd: da 14     movw  $14,ya
08bf: 60        clrc
08c0: 98 08 14  adc   $14,#$08
08c3: 98 12 15  adc   $15,#$12
08c6: e4 1a     mov   a,$1a
08c8: 24 47     and   a,$47
08ca: d0 3a     bne   $0906
08cc: 4d        push  x
08cd: 7d        mov   a,x
08ce: 9f        xcn   a
08cf: 5c        lsr   a
08d0: 08 04     or    a,#$04
08d2: 5d        mov   x,a
08d3: 8d 00     mov   y,#$00
08d5: f7 14     mov   a,($14)+y
08d7: 10 0e     bpl   $08e7
08d9: 28 1f     and   a,#$1f
08db: 38 20 48  and   $48,#$20
08de: 0e 48 00  tset1 $0048
08e1: 09 47 49  or    ($49),($47)
08e4: dd        mov   a,y
08e5: 2f 07     bra   $08ee
08e7: e4 47     mov   a,$47
08e9: 4e 49 00  tclr1 $0049
08ec: f7 14     mov   a,($14)+y
08ee: c9 f2 00  mov   $00f2,x
08f1: c5 f3 00  mov   $00f3,a
08f4: 3d        inc   x
08f5: fc        inc   y
08f6: ad 04     cmp   y,#$04
08f8: d0 f2     bne   $08ec
08fa: ce        pop   x
08fb: f7 14     mov   a,($14)+y
08fd: d5 21 02  mov   $0221+x,a
0900: fc        inc   y
0901: f7 14     mov   a,($14)+y
0903: d5 20 02  mov   $0220+x,a
0906: 6f        ret

; vcmd e1 - set pan
0907: d5 51 03  mov   $0351+x,a
090a: 28 1f     and   a,#$1f
090c: d5 31 03  mov   $0331+x,a
090f: e8 00     mov   a,#$00
0911: d5 30 03  mov   $0330+x,a
0914: 6f        ret

; vcmd e2 - set pan fade
0915: d4 91     mov   $91+x,a
0917: 2d        push  a
0918: 3f 9c 08  call  $089c
091b: d5 50 03  mov   $0350+x,a
091e: 80        setc
091f: b5 31 03  sbc   a,$0331+x
0922: ce        pop   x
0923: 3f ed 0a  call  $0aed
0926: d5 40 03  mov   $0340+x,a
0929: dd        mov   a,y
092a: d5 41 03  mov   $0341+x,a
092d: 6f        ret

; vcmd e3 - vibrato on
092e: d5 b0 02  mov   $02b0+x,a
0931: 3f 9c 08  call  $089c
0934: d5 a1 02  mov   $02a1+x,a
0937: 3f 9c 08  call  $089c
; vcmd e4 - vibrato off
093a: d4 b1     mov   $b1+x,a
093c: d5 c1 02  mov   $02c1+x,a
093f: e8 00     mov   a,#$00
0941: d5 b1 02  mov   $02b1+x,a
0944: 6f        ret

; vcmd f0 - vibrato fade
0945: d5 b1 02  mov   $02b1+x,a
0948: 2d        push  a
0949: 8d 00     mov   y,#$00
094b: f4 b1     mov   a,$b1+x
094d: ce        pop   x
094e: 9e        div   ya,x
094f: f8 44     mov   x,$44
0951: d5 c0 02  mov   $02c0+x,a
0954: 6f        ret

; vcmd e5 - master volume
0955: e8 00     mov   a,#$00
0957: da 58     movw  $58,ya
0959: 6f        ret

; vcmd e6 - master volume fade
095a: c4 5a     mov   $5a,a
095c: 3f 9c 08  call  $089c
095f: c4 5b     mov   $5b,a
0961: 80        setc
0962: a4 59     sbc   a,$59
0964: f8 5a     mov   x,$5a
0966: 3f ed 0a  call  $0aed
0969: da 5c     movw  $5c,ya
096b: 6f        ret

; vcmd e7 - tempo
096c: e8 00     mov   a,#$00
096e: da 52     movw  $52,ya
0970: 6f        ret

; vcmd e8 - tempo fade
0971: c4 54     mov   $54,a
0973: 3f 9c 08  call  $089c
0976: c4 55     mov   $55,a
0978: 80        setc
0979: a4 53     sbc   a,$53
097b: f8 54     mov   x,$54
097d: 3f ed 0a  call  $0aed
0980: da 56     movw  $56,ya
0982: 6f        ret

; vcmd e9 - global transpose
0983: c4 50     mov   $50,a
0985: 6f        ret

; vcmd ea - per-voice transpose
0986: d5 f0 02  mov   $02f0+x,a
0989: 6f        ret

; vcmd eb - tremolo on
098a: d5 e0 02  mov   $02e0+x,a
098d: 3f 9c 08  call  $089c
0990: d5 d1 02  mov   $02d1+x,a
0993: 3f 9c 08  call  $089c
; vcmd ec - tremolo off
0996: d4 c1     mov   $c1+x,a
0998: 6f        ret

; vcmd f1 - pitch envelope (release)
0999: e8 01     mov   a,#$01
099b: 2f 02     bra   $099f
; vcmd f2 - pitch envelope (attack)
099d: e8 00     mov   a,#$00
099f: d5 90 02  mov   $0290+x,a
09a2: dd        mov   a,y
09a3: d5 81 02  mov   $0281+x,a
09a6: 3f 9c 08  call  $089c
09a9: d5 80 02  mov   $0280+x,a
09ac: 3f 9c 08  call  $089c
09af: d5 91 02  mov   $0291+x,a
09b2: 6f        ret

; vcmd f3 - pitch envelope off
09b3: d5 80 02  mov   $0280+x,a
09b6: 6f        ret

; vcmd ed - volume
09b7: d5 01 03  mov   $0301+x,a
09ba: e8 00     mov   a,#$00
09bc: d5 00 03  mov   $0300+x,a
09bf: 6f        ret

; vcmd ee - volume fade
09c0: d4 90     mov   $90+x,a
09c2: 2d        push  a
09c3: 3f 9c 08  call  $089c
09c6: d5 20 03  mov   $0320+x,a
09c9: 80        setc
09ca: b5 01 03  sbc   a,$0301+x
09cd: ce        pop   x
09ce: 3f ed 0a  call  $0aed
09d1: d5 10 03  mov   $0310+x,a
09d4: dd        mov   a,y
09d5: d5 11 03  mov   $0311+x,a
09d8: 6f        ret

; vcmd f4 - tuning
09d9: d5 81 03  mov   $0381+x,a
09dc: 6f        ret

; vcmd ef - call subroutine
09dd: d5 40 02  mov   $0240+x,a
09e0: 3f 9c 08  call  $089c
09e3: d5 41 02  mov   $0241+x,a
09e6: 3f 9c 08  call  $089c
09e9: d4 80     mov   $80+x,a
09eb: f4 30     mov   a,$30+x
09ed: d5 30 02  mov   $0230+x,a
09f0: f4 31     mov   a,$31+x
09f2: d5 31 02  mov   $0231+x,a
09f5: f5 40 02  mov   a,$0240+x
09f8: d4 30     mov   $30+x,a
09fa: f5 41 02  mov   a,$0241+x
09fd: d4 31     mov   $31+x,a
09ff: 6f        ret

; vcmd f5 - echo vbits/volume
0a00: c4 4a     mov   $4a,a
0a02: 3f 9c 08  call  $089c
0a05: e8 00     mov   a,#$00
0a07: da 60     movw  $60,ya
0a09: 3f 9c 08  call  $089c
0a0c: e8 00     mov   a,#$00
0a0e: da 62     movw  $62,ya
0a10: b2 48     clr5  $48
0a12: 6f        ret

; vcmd f8 - echo volume fade
0a13: c4 68     mov   $68,a
0a15: 3f 9c 08  call  $089c
0a18: c4 69     mov   $69,a
0a1a: 80        setc
0a1b: a4 61     sbc   a,$61
0a1d: f8 68     mov   x,$68
0a1f: 3f ed 0a  call  $0aed
0a22: da 64     movw  $64,ya
0a24: 3f 9c 08  call  $089c
0a27: c4 6a     mov   $6a,a
0a29: 80        setc
0a2a: a4 63     sbc   a,$63
0a2c: f8 68     mov   x,$68
0a2e: 3f ed 0a  call  $0aed
0a31: da 66     movw  $66,ya
0a33: 6f        ret

; vcmd f6 - disable echo
0a34: da 60     movw  $60,ya
0a36: da 62     movw  $62,ya
0a38: a2 48     set5  $48
0a3a: 6f        ret

; vcmd f7 - set echo params
0a3b: 3f 5d 0a  call  $0a5d
0a3e: 3f 9c 08  call  $089c
0a41: c4 4e     mov   $4e,a
0a43: 3f 9c 08  call  $089c
0a46: 8d 08     mov   y,#$08
0a48: cf        mul   ya
0a49: 5d        mov   x,a
0a4a: 8d 0f     mov   y,#$0f
0a4c: f5 3f 0e  mov   a,$0e3f+x
0a4f: 3f c6 06  call  $06c6
0a52: 3d        inc   x
0a53: dd        mov   a,y
0a54: 60        clrc
0a55: 88 10     adc   a,#$10
0a57: fd        mov   y,a
0a58: 10 f2     bpl   $0a4c
0a5a: f8 44     mov   x,$44
0a5c: 6f        ret

0a5d: c4 4d     mov   $4d,a
0a5f: 8d 7d     mov   y,#$7d
0a61: cc f2 00  mov   $00f2,y
0a64: e5 f3 00  mov   a,$00f3
0a67: 64 4d     cmp   a,$4d
0a69: f0 2b     beq   $0a96
0a6b: 28 0f     and   a,#$0f
0a6d: 48 ff     eor   a,#$ff
0a6f: f3 4c 03  bbc7  $4c,$0a75
0a72: 60        clrc
0a73: 84 4c     adc   a,$4c
0a75: c4 4c     mov   $4c,a
0a77: 8d 04     mov   y,#$04
0a79: f6 5e 0e  mov   a,$0e5e+y
0a7c: c5 f2 00  mov   $00f2,a
0a7f: e8 00     mov   a,#$00
0a81: c5 f3 00  mov   $00f3,a
0a84: fe f3     dbnz  y,$0a79
0a86: e4 48     mov   a,$48
0a88: 08 20     or    a,#$20
0a8a: 8d 6c     mov   y,#$6c
0a8c: 3f c6 06  call  $06c6
0a8f: e4 4d     mov   a,$4d
0a91: 8d 7d     mov   y,#$7d
0a93: 3f c6 06  call  $06c6
0a96: 1c        asl   a
0a97: 1c        asl   a
0a98: 1c        asl   a
0a99: 48 ff     eor   a,#$ff
0a9b: 80        setc
0a9c: 88 ff     adc   a,#$ff
0a9e: 8d 6d     mov   y,#$6d
0aa0: 5f c6 06  jmp   $06c6

; vcmd fa - set perc patch base
0aa3: c4 5f     mov   $5f,a
0aa5: 6f        ret

; vcmd fd/fe - skip 1 byte
0aa6: 3f 9e 08  call  $089e
0aa9: 6f        ret

; vcmd f9 - pitch slide
0aaa: f4 a0     mov   a,$a0+x
0aac: d0 33     bne   $0ae1
0aae: e7 30     mov   a,($30+x)
0ab0: 68 f9     cmp   a,#$f9
0ab2: d0 2d     bne   $0ae1
0ab4: 3f 9e 08  call  $089e
0ab7: 3f 9c 08  call  $089c
0aba: d4 a1     mov   $a1+x,a
0abc: 3f 9c 08  call  $089c
0abf: d4 a0     mov   $a0+x,a
0ac1: 3f 9c 08  call  $089c
0ac4: 60        clrc
0ac5: 84 50     adc   a,$50
0ac7: 95 f0 02  adc   a,$02f0+x
0aca: 28 7f     and   a,#$7f
0acc: d5 80 03  mov   $0380+x,a
0acf: 80        setc
0ad0: b5 61 03  sbc   a,$0361+x
0ad3: fb a0     mov   y,$a0+x
0ad5: 6d        push  y
0ad6: ce        pop   x
0ad7: 3f ed 0a  call  $0aed
0ada: d5 70 03  mov   $0370+x,a
0add: dd        mov   a,y
0ade: d5 71 03  mov   $0371+x,a
0ae1: 6f        ret

0ae2: f5 61 03  mov   a,$0361+x
0ae5: c4 11     mov   $11,a
0ae7: f5 60 03  mov   a,$0360+x
0aea: c4 10     mov   $10,a
0aec: 6f        ret

0aed: ed        notc
0aee: 6b 12     ror   $12
0af0: 10 03     bpl   $0af5
0af2: 48 ff     eor   a,#$ff
0af4: bc        inc   a
0af5: 8d 00     mov   y,#$00
0af7: 9e        div   ya,x
0af8: 2d        push  a
0af9: e8 00     mov   a,#$00
0afb: 9e        div   ya,x
0afc: ee        pop   y
0afd: f8 44     mov   x,$44
0aff: f3 12 06  bbc7  $12,$0b08
0b02: da 14     movw  $14,ya
0b04: ba 0e     movw  ya,$0e
0b06: 9a 14     subw  ya,$14
0b08: 6f        ret

; vcmd dispatch table
0b09: dw $08a6 ; e0 - set instrument
0b0b: dw $0907 ; e1 - set pan
0b0d: dw $0915 ; e2 - set pan fade
0b0f: dw $092e ; e3 - vibrato on
0b11: dw $093a ; e4 - vibrato off
0b13: dw $0955 ; e5 - master volume
0b15: dw $095a ; e6 - master volume fade
0b17: dw $096c ; e7 - tempo
0b19: dw $0971 ; e8 - tempo fade
0b1b: dw $0983 ; e9 - global transpose
0b1d: dw $0986 ; ea - per-voice transpose
0b1f: dw $098a ; eb - tremolo on
0b21: dw $0996 ; ec - tremolo off
0b23: dw $09b7 ; ed - volume
0b25: dw $09c0 ; ee - volume fade
0b27: dw $09dd ; ef - call subroutine
0b29: dw $0945 ; f0 - vibrato fade
0b2b: dw $0999 ; f1 - pitch envelope (release)
0b2d: dw $099d ; f2 - pitch envelope (attack)
0b2f: dw $09b3 ; f3 - pitch envelope off
0b31: dw $09d9 ; f4 - tuning
0b33: dw $0a00 ; f5 - echo vbits/volume
0b35: dw $0a34 ; f6 - disable echo
0b37: dw $0a3b ; f7 - set echo params
0b39: dw $0a13 ; f8 - echo volume fade
0b3b: dw $0aba ; f9 - pitch slide
0b3d: dw $0aa3 ; fa - set perc patch base
0b3f: dw $0ddd ; fb
0b41: dw $0e02 ; fc
0b43: dw $0aa6 ; fd - skip 1 byte
0b45: dw $0aa6 ; fe - skip 1 byte

; vcmd lengths
0b47: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0b4f: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0b57: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0b5f: db $03,$03,$01,$02,$02,$02,$02	 ; f8-fe

; do voice fades
0b66: f4 90     mov   a,$90+x
0b68: f0 24     beq   $0b8e
0b6a: 09 47 5e  or    ($5e),($47)
0b6d: 9b 90     dec   $90+x
0b6f: d0 0a     bne   $0b7b
0b71: e8 00     mov   a,#$00
0b73: d5 00 03  mov   $0300+x,a
0b76: f5 20 03  mov   a,$0320+x
0b79: 2f 10     bra   $0b8b
0b7b: 60        clrc
0b7c: f5 00 03  mov   a,$0300+x
0b7f: 95 10 03  adc   a,$0310+x
0b82: d5 00 03  mov   $0300+x,a
0b85: f5 01 03  mov   a,$0301+x
0b88: 95 11 03  adc   a,$0311+x
0b8b: d5 01 03  mov   $0301+x,a
0b8e: fb c1     mov   y,$c1+x
0b90: f0 23     beq   $0bb5
0b92: f5 e0 02  mov   a,$02e0+x
0b95: de c0 1b  cbne  $c0+x,$0bb3
0b98: 09 47 5e  or    ($5e),($47)
0b9b: f5 d0 02  mov   a,$02d0+x
0b9e: 10 07     bpl   $0ba7
0ba0: fc        inc   y
0ba1: d0 04     bne   $0ba7
0ba3: e8 80     mov   a,#$80
0ba5: 2f 04     bra   $0bab
0ba7: 60        clrc
0ba8: 95 d1 02  adc   a,$02d1+x
0bab: d5 d0 02  mov   $02d0+x,a
0bae: 3f c0 0d  call  $0dc0
0bb1: 2f 07     bra   $0bba
0bb3: bb c0     inc   $c0+x
0bb5: e8 ff     mov   a,#$ff
0bb7: 3f cb 0d  call  $0dcb
0bba: f4 91     mov   a,$91+x
0bbc: f0 24     beq   $0be2
0bbe: 09 47 5e  or    ($5e),($47)
0bc1: 9b 91     dec   $91+x
0bc3: d0 0a     bne   $0bcf
0bc5: e8 00     mov   a,#$00
0bc7: d5 30 03  mov   $0330+x,a
0bca: f5 50 03  mov   a,$0350+x
0bcd: 2f 10     bra   $0bdf
0bcf: 60        clrc
0bd0: f5 30 03  mov   a,$0330+x
0bd3: 95 40 03  adc   a,$0340+x
0bd6: d5 30 03  mov   $0330+x,a
0bd9: f5 31 03  mov   a,$0331+x
0bdc: 95 41 03  adc   a,$0341+x
0bdf: d5 31 03  mov   $0331+x,a
0be2: e4 47     mov   a,$47
0be4: 24 5e     and   a,$5e
0be6: f0 63     beq   $0c4b
0be8: f5 31 03  mov   a,$0331+x
0beb: fd        mov   y,a
0bec: f5 30 03  mov   a,$0330+x
0bef: da 10     movw  $10,ya
0bf1: 7d        mov   a,x
0bf2: 9f        xcn   a
0bf3: 5c        lsr   a
0bf4: c4 12     mov   $12,a
0bf6: eb 11     mov   y,$11
0bf8: e5 58 02  mov   a,$0258
0bfb: f0 11     beq   $0c0e
0bfd: e8 51     mov   a,#$51
0bff: 80        setc
0c00: a8 51     sbc   a,#$51
0c02: eb 10     mov   y,$10
0c04: cf        mul   ya
0c05: dd        mov   a,y
0c06: eb 11     mov   y,$11
0c08: 60        clrc
0c09: 88 51     adc   a,#$51
0c0b: fd        mov   y,a
0c0c: 2f 12     bra   $0c20
0c0e: f6 2b 0e  mov   a,$0e2b+y
0c11: 80        setc
0c12: b6 2a 0e  sbc   a,$0e2a+y
0c15: eb 10     mov   y,$10
0c17: cf        mul   ya
0c18: dd        mov   a,y
0c19: eb 11     mov   y,$11
0c1b: 60        clrc
0c1c: 96 2a 0e  adc   a,$0e2a+y
0c1f: fd        mov   y,a
0c20: f5 21 03  mov   a,$0321+x
0c23: cf        mul   ya
0c24: f5 71 02  mov   a,$0271+x
0c27: cf        mul   ya
0c28: e4 6d     mov   a,$6d
0c2a: cf        mul   ya
0c2b: f5 51 03  mov   a,$0351+x
0c2e: 1c        asl   a
0c2f: 13 12 01  bbc0  $12,$0c33
0c32: 1c        asl   a
0c33: dd        mov   a,y
0c34: 90 03     bcc   $0c39
0c36: 48 ff     eor   a,#$ff
0c38: bc        inc   a
0c39: eb 12     mov   y,$12
0c3b: 3f be 06  call  $06be
0c3e: 8d 14     mov   y,#$14
0c40: e8 00     mov   a,#$00
0c42: 9a 10     subw  ya,$10
0c44: da 10     movw  $10,ya
0c46: ab 12     inc   $12
0c48: 33 12 ab  bbc1  $12,$0bf6
0c4b: 6f        ret

; do readahead
0c4c: f4 71     mov   a,$71+x
0c4e: f0 61     beq   $0cb1
0c50: 9b 71     dec   $71+x
0c52: f0 05     beq   $0c59
0c54: e8 02     mov   a,#$02
0c56: de 70 58  cbne  $70+x,$0cb1
0c59: f4 80     mov   a,$80+x
0c5b: c4 17     mov   $17,a
0c5d: f4 30     mov   a,$30+x
0c5f: fb 31     mov   y,$31+x
0c61: da 14     movw  $14,ya
0c63: 8d 00     mov   y,#$00
0c65: f7 14     mov   a,($14)+y
0c67: f0 1e     beq   $0c87
0c69: 30 07     bmi   $0c72
0c6b: fc        inc   y
0c6c: 30 40     bmi   $0cae
0c6e: f7 14     mov   a,($14)+y
0c70: 10 f9     bpl   $0c6b
0c72: 68 c8     cmp   a,#$c8
0c74: f0 3b     beq   $0cb1
0c76: 68 ef     cmp   a,#$ef
0c78: f0 29     beq   $0ca3
0c7a: 68 e0     cmp   a,#$e0
0c7c: 90 30     bcc   $0cae
0c7e: 6d        push  y
0c7f: fd        mov   y,a
0c80: ae        pop   a
0c81: 96 67 0a  adc   a,$0a67+y
0c84: fd        mov   y,a
0c85: 2f de     bra   $0c65
0c87: e4 17     mov   a,$17
0c89: f0 23     beq   $0cae
0c8b: 8b 17     dec   $17
0c8d: d0 0a     bne   $0c99
0c8f: f5 31 02  mov   a,$0231+x
0c92: 2d        push  a
0c93: f5 30 02  mov   a,$0230+x
0c96: ee        pop   y
0c97: 2f c8     bra   $0c61
0c99: f5 41 02  mov   a,$0241+x
0c9c: 2d        push  a
0c9d: f5 40 02  mov   a,$0240+x
0ca0: ee        pop   y
0ca1: 2f be     bra   $0c61
0ca3: fc        inc   y
0ca4: f7 14     mov   a,($14)+y
0ca6: 2d        push  a
0ca7: fc        inc   y
0ca8: f7 14     mov   a,($14)+y
0caa: fd        mov   y,a
0cab: ae        pop   a
0cac: 2f b3     bra   $0c61
0cae: 09 47 6c  or    ($6c),($47)
0cb1: f2 13     clr7  $13
0cb3: f4 a0     mov   a,$a0+x
0cb5: f0 2c     beq   $0ce3
0cb7: f4 a1     mov   a,$a1+x
0cb9: f0 04     beq   $0cbf
0cbb: 9b a1     dec   $a1+x
0cbd: 2f 24     bra   $0ce3
0cbf: e2 13     set7  $13
0cc1: 9b a0     dec   $a0+x
0cc3: d0 0b     bne   $0cd0
0cc5: f5 81 03  mov   a,$0381+x
0cc8: d5 60 03  mov   $0360+x,a
0ccb: f5 80 03  mov   a,$0380+x
0cce: 2f 10     bra   $0ce0
0cd0: 60        clrc
0cd1: f5 60 03  mov   a,$0360+x
0cd4: 95 70 03  adc   a,$0370+x
0cd7: d5 60 03  mov   $0360+x,a
0cda: f5 61 03  mov   a,$0361+x
0cdd: 95 71 03  adc   a,$0371+x
0ce0: d5 61 03  mov   $0361+x,a
0ce3: 3f e2 0a  call  $0ae2
0ce6: f4 b1     mov   a,$b1+x
0ce8: f0 4c     beq   $0d36
0cea: f5 b0 02  mov   a,$02b0+x
0ced: de b0 44  cbne  $b0+x,$0d34
0cf0: f5 00 01  mov   a,$0100+x
0cf3: 75 b1 02  cmp   a,$02b1+x
0cf6: d0 05     bne   $0cfd
0cf8: f5 c1 02  mov   a,$02c1+x
0cfb: 2f 0d     bra   $0d0a
0cfd: 40        setp
0cfe: bb 00     inc   $00+x
0d00: 20        clrp
0d01: fd        mov   y,a
0d02: f0 02     beq   $0d06
0d04: f4 b1     mov   a,$b1+x
0d06: 60        clrc
0d07: 95 c0 02  adc   a,$02c0+x
0d0a: d4 b1     mov   $b1+x,a
0d0c: f5 a0 02  mov   a,$02a0+x
0d0f: 60        clrc
0d10: 95 a1 02  adc   a,$02a1+x
0d13: d5 a0 02  mov   $02a0+x,a
0d16: c4 12     mov   $12,a
0d18: 1c        asl   a
0d19: 1c        asl   a
0d1a: 90 02     bcc   $0d1e
0d1c: 48 ff     eor   a,#$ff
0d1e: fd        mov   y,a
0d1f: f4 b1     mov   a,$b1+x
0d21: 68 f1     cmp   a,#$f1
0d23: 90 05     bcc   $0d2a
0d25: 28 0f     and   a,#$0f
0d27: cf        mul   ya
0d28: 2f 04     bra   $0d2e
0d2a: cf        mul   ya
0d2b: dd        mov   a,y
0d2c: 8d 00     mov   y,#$00
0d2e: 3f ab 0d  call  $0dab
0d31: 5f 3b 06  jmp   $063b

0d34: bb b0     inc   $b0+x
0d36: e3 13 f8  bbs7  $13,$0d31
0d39: 6f        ret

; per-voice fades/dsps
0d3a: f2 13     clr7  $13
0d3c: f4 c1     mov   a,$c1+x
0d3e: f0 09     beq   $0d49
0d40: f5 e0 02  mov   a,$02e0+x
0d43: de c0 03  cbne  $c0+x,$0d49
0d46: 3f b3 0d  call  $0db3
0d49: f5 31 03  mov   a,$0331+x
0d4c: fd        mov   y,a
0d4d: f5 30 03  mov   a,$0330+x
0d50: da 10     movw  $10,ya
0d52: f4 91     mov   a,$91+x
0d54: f0 0a     beq   $0d60
0d56: f5 41 03  mov   a,$0341+x
0d59: fd        mov   y,a
0d5a: f5 40 03  mov   a,$0340+x
0d5d: 3f 95 0d  call  $0d95
0d60: f3 13 03  bbc7  $13,$0d66
0d63: 3f f1 0b  call  $0bf1
0d66: f2 13     clr7  $13
0d68: 3f e2 0a  call  $0ae2
0d6b: f4 a0     mov   a,$a0+x
0d6d: f0 0e     beq   $0d7d
0d6f: f4 a1     mov   a,$a1+x
0d71: d0 0a     bne   $0d7d
0d73: f5 71 03  mov   a,$0371+x
0d76: fd        mov   y,a
0d77: f5 70 03  mov   a,$0370+x
0d7a: 3f 95 0d  call  $0d95
0d7d: f4 b1     mov   a,$b1+x
0d7f: f0 b5     beq   $0d36
0d81: f5 b0 02  mov   a,$02b0+x
0d84: de b0 af  cbne  $b0+x,$0d36
0d87: eb 51     mov   y,$51
0d89: f5 a1 02  mov   a,$02a1+x
0d8c: cf        mul   ya
0d8d: dd        mov   a,y
0d8e: 60        clrc
0d8f: 95 a0 02  adc   a,$02a0+x
0d92: 5f 16 0d  jmp   $0d16

0d95: e2 13     set7  $13
0d97: cb 12     mov   $12,y
0d99: 3f ff 0a  call  $0aff
0d9c: 6d        push  y
0d9d: eb 51     mov   y,$51
0d9f: cf        mul   ya
0da0: cb 14     mov   $14,y
0da2: 8f 00 15  mov   $15,#$00
0da5: eb 51     mov   y,$51
0da7: ae        pop   a
0da8: cf        mul   ya
0da9: 7a 14     addw  ya,$14
0dab: 3f ff 0a  call  $0aff
0dae: 7a 10     addw  ya,$10
0db0: da 10     movw  $10,ya
0db2: 6f        ret

0db3: e2 13     set7  $13
0db5: eb 51     mov   y,$51
0db7: f5 d1 02  mov   a,$02d1+x
0dba: cf        mul   ya
0dbb: dd        mov   a,y
0dbc: 60        clrc
0dbd: 95 d0 02  adc   a,$02d0+x
0dc0: 1c        asl   a
0dc1: 90 02     bcc   $0dc5
0dc3: 48 ff     eor   a,#$ff
0dc5: fb c1     mov   y,$c1+x
0dc7: cf        mul   ya
0dc8: dd        mov   a,y
0dc9: 48 ff     eor   a,#$ff
0dcb: eb 59     mov   y,$59
0dcd: cf        mul   ya
0dce: f5 10 02  mov   a,$0210+x
0dd1: cf        mul   ya
0dd2: f5 01 03  mov   a,$0301+x
0dd5: cf        mul   ya
0dd6: dd        mov   a,y
0dd7: cf        mul   ya
0dd8: dd        mov   a,y
0dd9: d5 21 03  mov   $0321+x,a
0ddc: 6f        ret

; vcmd fb
0ddd: dd        mov   a,y
0dde: d5 60 02  mov   $0260+x,a
0de1: 3f 9c 08  call  $089c
0de4: dd        mov   a,y
0de5: d5 61 02  mov   $0261+x,a
0de8: 7d        mov   a,x
0de9: 9f        xcn   a
0dea: 5c        lsr   a
0deb: 08 05     or    a,#$05
0ded: c4 14     mov   $14,a
0def: f5 60 02  mov   a,$0260+x
0df2: eb 14     mov   y,$14
0df4: 3f be 06  call  $06be
0df7: f5 61 02  mov   a,$0261+x
0dfa: ab 14     inc   $14
0dfc: eb 14     mov   y,$14
0dfe: 3f be 06  call  $06be
0e01: 6f        ret

; vcmd fc
0e02: 3f a6 08  call  $08a6
0e05: 3f 9c 08  call  $089c
0e08: dd        mov   a,y
0e09: 1c        asl   a
0e0a: 1c        asl   a
0e0b: fd        mov   y,a
0e0c: f6 98 03  mov   a,$0398+y
0e0f: d5 60 02  mov   $0260+x,a
0e12: f6 99 03  mov   a,$0399+y
0e15: d5 61 02  mov   $0261+x,a
0e18: 6d        push  y
0e19: 3f e8 0d  call  $0de8
0e1c: ee        pop   y
0e1d: f6 9a 03  mov   a,$039a+y
0e20: 3f 07 09  call  $0907
0e23: f6 9b 03  mov   a,$039b+y
0e26: d5 71 02  mov   $0271+x,a
0e29: 6f        ret

0b66: f4 90     mov   a,$90+x
0b68: f0 24     beq   $0b8e
0b6a: 09 47 5e  or    ($5e),($47)
0b6d: 9b 90     dec   $90+x
0b6f: d0 0a     bne   $0b7b
0b71: e8 00     mov   a,#$00
0b73: d5 00 03  mov   $0300+x,a
0b76: f5 20 03  mov   a,$0320+x
0b79: 2f 10     bra   $0b8b
0b7b: 60        clrc
0b7c: f5 00 03  mov   a,$0300+x
0b7f: 95 10 03  adc   a,$0310+x
0b82: d5 00 03  mov   $0300+x,a
0b85: f5 01 03  mov   a,$0301+x
0b88: 95 11 03  adc   a,$0311+x
0b8b: d5 01 03  mov   $0301+x,a
0b8e: fb c1     mov   y,$c1+x
0b90: f0 23     beq   $0bb5
0b92: f5 e0 02  mov   a,$02e0+x
0b95: de c0 1b  cbne  $c0+x,$0bb3
0b98: 09 47 5e  or    ($5e),($47)
0b9b: f5 d0 02  mov   a,$02d0+x
0b9e: 10 07     bpl   $0ba7
0ba0: fc        inc   y
0ba1: d0 04     bne   $0ba7
0ba3: e8 80     mov   a,#$80
0ba5: 2f 04     bra   $0bab
0ba7: 60        clrc
0ba8: 95 d1 02  adc   a,$02d1+x
0bab: d5 d0 02  mov   $02d0+x,a
0bae: 3f c0 0d  call  $0dc0
0bb1: 2f 07     bra   $0bba
0bb3: bb c0     inc   $c0+x
0bb5: e8 ff     mov   a,#$ff
0bb7: 3f cb 0d  call  $0dcb
0bba: f4 91     mov   a,$91+x
0bbc: f0 24     beq   $0be2
0bbe: 09 47 5e  or    ($5e),($47)
0bc1: 9b 91     dec   $91+x
0bc3: d0 0a     bne   $0bcf
0bc5: e8 00     mov   a,#$00
0bc7: d5 30 03  mov   $0330+x,a
0bca: f5 50 03  mov   a,$0350+x
0bcd: 2f 10     bra   $0bdf
0bcf: 60        clrc
0bd0: f5 30 03  mov   a,$0330+x
0bd3: 95 40 03  adc   a,$0340+x
0bd6: d5 30 03  mov   $0330+x,a
0bd9: f5 31 03  mov   a,$0331+x
0bdc: 95 41 03  adc   a,$0341+x
0bdf: d5 31 03  mov   $0331+x,a
0be2: e4 47     mov   a,$47
0be4: 24 5e     and   a,$5e
0be6: f0 63     beq   $0c4b
0be8: f5 31 03  mov   a,$0331+x
0beb: fd        mov   y,a
0bec: f5 30 03  mov   a,$0330+x
0bef: da 10     movw  $10,ya
0bf1: 7d        mov   a,x
0bf2: 9f        xcn   a
0bf3: 5c        lsr   a
0bf4: c4 12     mov   $12,a
0bf6: eb 11     mov   y,$11
0bf8: e5 58 02  mov   a,$0258
0bfb: f0 11     beq   $0c0e
0bfd: e8 51     mov   a,#$51
0bff: 80        setc
0c00: a8 51     sbc   a,#$51
0c02: eb 10     mov   y,$10
0c04: cf        mul   ya
0c05: dd        mov   a,y
0c06: eb 11     mov   y,$11
0c08: 60        clrc
0c09: 88 51     adc   a,#$51
0c0b: fd        mov   y,a
0c0c: 2f 12     bra   $0c20
0c0e: f6 2b 0e  mov   a,$0e2b+y
0c11: 80        setc
0c12: b6 2a 0e  sbc   a,$0e2a+y
0c15: eb 10     mov   y,$10
0c17: cf        mul   ya
0c18: dd        mov   a,y
0c19: eb 11     mov   y,$11
0c1b: 60        clrc
0c1c: 96 2a 0e  adc   a,$0e2a+y
0c1f: fd        mov   y,a
0c20: f5 21 03  mov   a,$0321+x
0c23: cf        mul   ya
0c24: f5 71 02  mov   a,$0271+x
0c27: cf        mul   ya
0c28: e4 6d     mov   a,$6d
0c2a: cf        mul   ya
0c2b: f5 51 03  mov   a,$0351+x
0c2e: 1c        asl   a
0c2f: 13 12 01  bbc0  $12,$0c33
0c32: 1c        asl   a
0c33: dd        mov   a,y
0c34: 90 03     bcc   $0c39
0c36: 48 ff     eor   a,#$ff
0c38: bc        inc   a
0c39: eb 12     mov   y,$12
0c3b: 3f be 06  call  $06be
0c3e: 8d 14     mov   y,#$14
0c40: e8 00     mov   a,#$00
0c42: 9a 10     subw  ya,$10
0c44: da 10     movw  $10,ya
0c46: ab 12     inc   $12
0c48: 33 12 ab  bbc1  $12,$0bf6
0c4b: 6f        ret

0c4c: f4 71     mov   a,$71+x
0c4e: f0 61     beq   $0cb1
0c50: 9b 71     dec   $71+x
0c52: f0 05     beq   $0c59
0c54: e8 02     mov   a,#$02
0c56: de 70 58  cbne  $70+x,$0cb1
0c59: f4 80     mov   a,$80+x
0c5b: c4 17     mov   $17,a
0c5d: f4 30     mov   a,$30+x
0c5f: fb 31     mov   y,$31+x
0c61: da 14     movw  $14,ya
0c63: 8d 00     mov   y,#$00
0c65: f7 14     mov   a,($14)+y
0c67: f0 1e     beq   $0c87
0c69: 30 07     bmi   $0c72
0c6b: fc        inc   y
0c6c: 30 40     bmi   $0cae
0c6e: f7 14     mov   a,($14)+y
0c70: 10 f9     bpl   $0c6b
0c72: 68 c8     cmp   a,#$c8
0c74: f0 3b     beq   $0cb1
0c76: 68 ef     cmp   a,#$ef
0c78: f0 29     beq   $0ca3
0c7a: 68 e0     cmp   a,#$e0
0c7c: 90 30     bcc   $0cae
0c7e: 6d        push  y
0c7f: fd        mov   y,a
0c80: ae        pop   a
0c81: 96 67 0a  adc   a,$0a67+y
0c84: fd        mov   y,a
0c85: 2f de     bra   $0c65
0c87: e4 17     mov   a,$17
0c89: f0 23     beq   $0cae
0c8b: 8b 17     dec   $17
0c8d: d0 0a     bne   $0c99
0c8f: f5 31 02  mov   a,$0231+x
0c92: 2d        push  a
0c93: f5 30 02  mov   a,$0230+x
0c96: ee        pop   y
0c97: 2f c8     bra   $0c61
0c99: f5 41 02  mov   a,$0241+x
0c9c: 2d        push  a
0c9d: f5 40 02  mov   a,$0240+x
0ca0: ee        pop   y
0ca1: 2f be     bra   $0c61
0ca3: fc        inc   y
0ca4: f7 14     mov   a,($14)+y
0ca6: 2d        push  a
0ca7: fc        inc   y
0ca8: f7 14     mov   a,($14)+y
0caa: fd        mov   y,a
0cab: ae        pop   a
0cac: 2f b3     bra   $0c61
0cae: 09 47 6c  or    ($6c),($47)
0cb1: f2 13     clr7  $13
0cb3: f4 a0     mov   a,$a0+x
0cb5: f0 2c     beq   $0ce3
0cb7: f4 a1     mov   a,$a1+x
0cb9: f0 04     beq   $0cbf
0cbb: 9b a1     dec   $a1+x
0cbd: 2f 24     bra   $0ce3
0cbf: e2 13     set7  $13
0cc1: 9b a0     dec   $a0+x
0cc3: d0 0b     bne   $0cd0
0cc5: f5 81 03  mov   a,$0381+x
0cc8: d5 60 03  mov   $0360+x,a
0ccb: f5 80 03  mov   a,$0380+x
0cce: 2f 10     bra   $0ce0
0cd0: 60        clrc
0cd1: f5 60 03  mov   a,$0360+x
0cd4: 95 70 03  adc   a,$0370+x
0cd7: d5 60 03  mov   $0360+x,a
0cda: f5 61 03  mov   a,$0361+x
0cdd: 95 71 03  adc   a,$0371+x
0ce0: d5 61 03  mov   $0361+x,a
0ce3: 3f e2 0a  call  $0ae2
0ce6: f4 b1     mov   a,$b1+x
0ce8: f0 4c     beq   $0d36
0cea: f5 b0 02  mov   a,$02b0+x
0ced: de b0 44  cbne  $b0+x,$0d34
0cf0: f5 00 01  mov   a,$0100+x
0cf3: 75 b1 02  cmp   a,$02b1+x
0cf6: d0 05     bne   $0cfd
0cf8: f5 c1 02  mov   a,$02c1+x
0cfb: 2f 0d     bra   $0d0a
0cfd: 40        setp
0cfe: bb 00     inc   $00+x
0d00: 20        clrp
0d01: fd        mov   y,a
0d02: f0 02     beq   $0d06
0d04: f4 b1     mov   a,$b1+x
0d06: 60        clrc
0d07: 95 c0 02  adc   a,$02c0+x
0d0a: d4 b1     mov   $b1+x,a
0d0c: f5 a0 02  mov   a,$02a0+x
0d0f: 60        clrc
0d10: 95 a1 02  adc   a,$02a1+x
0d13: d5 a0 02  mov   $02a0+x,a
0d16: c4 12     mov   $12,a
0d18: 1c        asl   a
0d19: 1c        asl   a
0d1a: 90 02     bcc   $0d1e
0d1c: 48 ff     eor   a,#$ff
0d1e: fd        mov   y,a
0d1f: f4 b1     mov   a,$b1+x
0d21: 68 f1     cmp   a,#$f1
0d23: 90 05     bcc   $0d2a
0d25: 28 0f     and   a,#$0f
0d27: cf        mul   ya
0d28: 2f 04     bra   $0d2e
0d2a: cf        mul   ya
0d2b: dd        mov   a,y
0d2c: 8d 00     mov   y,#$00
0d2e: 3f ab 0d  call  $0dab
0d31: 5f 3b 06  jmp   $063b

0d34: bb b0     inc   $b0+x
0d36: e3 13 f8  bbs7  $13,$0d31
0d39: 6f        ret

0d3a: f2 13     clr7  $13
0d3c: f4 c1     mov   a,$c1+x
0d3e: f0 09     beq   $0d49
0d40: f5 e0 02  mov   a,$02e0+x
0d43: de c0 03  cbne  $c0+x,$0d49
0d46: 3f b3 0d  call  $0db3
0d49: f5 31 03  mov   a,$0331+x
0d4c: fd        mov   y,a
0d4d: f5 30 03  mov   a,$0330+x
0d50: da 10     movw  $10,ya
0d52: f4 91     mov   a,$91+x
0d54: f0 0a     beq   $0d60
0d56: f5 41 03  mov   a,$0341+x
0d59: fd        mov   y,a
0d5a: f5 40 03  mov   a,$0340+x
0d5d: 3f 95 0d  call  $0d95
0d60: f3 13 03  bbc7  $13,$0d66
0d63: 3f f1 0b  call  $0bf1
0d66: f2 13     clr7  $13
0d68: 3f e2 0a  call  $0ae2
0d6b: f4 a0     mov   a,$a0+x
0d6d: f0 0e     beq   $0d7d
0d6f: f4 a1     mov   a,$a1+x
0d71: d0 0a     bne   $0d7d
0d73: f5 71 03  mov   a,$0371+x
0d76: fd        mov   y,a
0d77: f5 70 03  mov   a,$0370+x
0d7a: 3f 95 0d  call  $0d95
0d7d: f4 b1     mov   a,$b1+x
0d7f: f0 b5     beq   $0d36
0d81: f5 b0 02  mov   a,$02b0+x
0d84: de b0 af  cbne  $b0+x,$0d36
0d87: eb 51     mov   y,$51
0d89: f5 a1 02  mov   a,$02a1+x
0d8c: cf        mul   ya
0d8d: dd        mov   a,y
0d8e: 60        clrc
0d8f: 95 a0 02  adc   a,$02a0+x
0d92: 5f 16 0d  jmp   $0d16

0d95: e2 13     set7  $13
0d97: cb 12     mov   $12,y
0d99: 3f ff 0a  call  $0aff
0d9c: 6d        push  y
0d9d: eb 51     mov   y,$51
0d9f: cf        mul   ya
0da0: cb 14     mov   $14,y
0da2: 8f 00 15  mov   $15,#$00
0da5: eb 51     mov   y,$51
0da7: ae        pop   a
0da8: cf        mul   ya
0da9: 7a 14     addw  ya,$14
0dab: 3f ff 0a  call  $0aff
0dae: 7a 10     addw  ya,$10
0db0: da 10     movw  $10,ya
0db2: 6f        ret

0db3: e2 13     set7  $13
0db5: eb 51     mov   y,$51
0db7: f5 d1 02  mov   a,$02d1+x
0dba: cf        mul   ya
0dbb: dd        mov   a,y
0dbc: 60        clrc
0dbd: 95 d0 02  adc   a,$02d0+x
0dc0: 1c        asl   a
0dc1: 90 02     bcc   $0dc5
0dc3: 48 ff     eor   a,#$ff
0dc5: fb c1     mov   y,$c1+x
0dc7: cf        mul   ya
0dc8: dd        mov   a,y
0dc9: 48 ff     eor   a,#$ff
0dcb: eb 59     mov   y,$59
0dcd: cf        mul   ya
0dce: f5 10 02  mov   a,$0210+x
0dd1: cf        mul   ya
0dd2: f5 01 03  mov   a,$0301+x
0dd5: cf        mul   ya
0dd6: dd        mov   a,y
0dd7: cf        mul   ya
0dd8: dd        mov   a,y
0dd9: d5 21 03  mov   $0321+x,a
0ddc: 6f        ret

; vcmd fb
0ddd: dd        mov   a,y
0dde: d5 60 02  mov   $0260+x,a
0de1: 3f 9c 08  call  $089c
0de4: dd        mov   a,y
0de5: d5 61 02  mov   $0261+x,a
0de8: 7d        mov   a,x
0de9: 9f        xcn   a
0dea: 5c        lsr   a
0deb: 08 05     or    a,#$05
0ded: c4 14     mov   $14,a
0def: f5 60 02  mov   a,$0260+x
0df2: eb 14     mov   y,$14
0df4: 3f be 06  call  $06be
0df7: f5 61 02  mov   a,$0261+x
0dfa: ab 14     inc   $14
0dfc: eb 14     mov   y,$14
0dfe: 3f be 06  call  $06be
0e01: 6f        ret

; vcmd fc
0e02: 3f a6 08  call  $08a6
0e05: 3f 9c 08  call  $089c
0e08: dd        mov   a,y
0e09: 1c        asl   a
0e0a: 1c        asl   a
0e0b: fd        mov   y,a
0e0c: f6 98 03  mov   a,$0398+y
0e0f: d5 60 02  mov   $0260+x,a
0e12: f6 99 03  mov   a,$0399+y
0e15: d5 61 02  mov   $0261+x,a
0e18: 6d        push  y
0e19: 3f e8 0d  call  $0de8
0e1c: ee        pop   y
0e1d: f6 9a 03  mov   a,$039a+y
0e20: 3f 07 09  call  $0907
0e23: f6 9b 03  mov   a,$039b+y
0e26: d5 71 02  mov   $0271+x,a
0e29: 6f        ret

; pan table
0e2a: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e32: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e3a: db $7a,$7c,$7d,$7e,$7f

; echo FIR presets
0e3f: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
0e4f: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
0e5f: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
0e6f: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadows addrs for dsp regs
0e5f: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
0e69: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
0e73: dw $085f
0e75: dw $08de
0e77: dw $0965
0e79: dw $09f4
0e7b: dw $0a8c
0e7d: dw $0b2c
0e7f: dw $0bd6
0e81: dw $0c8b
0e83: dw $0d4a
0e85: dw $0e14
0e87: dw $0eea
0e89: dw $0fcd
0e8b: dw $10be

0e8d: dw $32,$65,$7f,$98,$b2,$cb,$e5,$ff,$0a,$19,$28,$3c,$50,$64,$7d,$96,$aa,$b9,$c8,$d4,$e1,$eb,$f5,$ff

0ea5: e8 aa     mov   a,#$aa
0ea7: c5 f4 00  mov   $00f4,a
0eaa: e8 bb     mov   a,#$bb
0eac: c5 f5 00  mov   $00f5,a
0eaf: e5 f4 00  mov   a,$00f4
0eb2: 65 f4 00  cmp   a,$00f4
0eb5: d0 f8     bne   $0eaf
0eb7: 68 cc     cmp   a,#$cc
0eb9: d0 f4     bne   $0eaf
0ebb: 2f 42     bra   $0eff
0ebd: ec f4 00  mov   y,$00f4
0ec0: 5e f4 00  cmp   y,$00f4
0ec3: d0 f8     bne   $0ebd
0ec5: ad 00     cmp   y,#$00
0ec7: d0 f4     bne   $0ebd
0ec9: 6d        push  y
0eca: ec f4 00  mov   y,$00f4
0ecd: 5e f4 00  cmp   y,$00f4
0ed0: d0 f8     bne   $0eca
0ed2: cb e7     mov   $e7,y
0ed4: ee        pop   y
0ed5: 7e e7     cmp   y,$e7
0ed7: d0 14     bne   $0eed
0ed9: e5 f5 00  mov   a,$00f5
0edc: 65 f5 00  cmp   a,$00f5
0edf: d0 f8     bne   $0ed9
0ee1: cc f4 00  mov   $00f4,y
0ee4: d7 14     mov   ($14)+y,a
0ee6: fc        inc   y
0ee7: d0 e0     bne   $0ec9
0ee9: ab 15     inc   $15
0eeb: 2f dc     bra   $0ec9
0eed: 10 da     bpl   $0ec9
0eef: 6d        push  y
0ef0: ec f4 00  mov   y,$00f4
0ef3: 5e f4 00  cmp   y,$00f4
0ef6: d0 f8     bne   $0ef0
0ef8: cb e7     mov   $e7,y
0efa: ee        pop   y
0efb: 7e e7     cmp   y,$e7
0efd: 10 ca     bpl   $0ec9
0eff: e5 f6 00  mov   a,$00f6
0f02: 65 f6 00  cmp   a,$00f6
0f05: d0 f8     bne   $0eff
0f07: ec f7 00  mov   y,$00f7
0f0a: 5e f7 00  cmp   y,$00f7
0f0d: d0 f8     bne   $0f07
0f0f: da 14     movw  $14,ya
0f11: ec f4 00  mov   y,$00f4
0f14: 5e f4 00  cmp   y,$00f4
0f17: d0 f8     bne   $0f11
0f19: e5 f5 00  mov   a,$00f5
0f1c: 65 f5 00  cmp   a,$00f5
0f1f: d0 f8     bne   $0f19
0f21: cc f4 00  mov   $00f4,y
0f24: 68 00     cmp   a,#$00
0f26: d0 95     bne   $0ebd
0f28: cd 31     mov   x,#$31
0f2a: c9 f1 00  mov   $00f1,x
0f2d: 6f        ret
0f2e: 3f 4c 0f  call  $0f4c
0f31: e5 5a 02  mov   a,$025a
0f34: f0 15     beq   $0f4b
0f36: eb 09     mov   y,$09
0f38: e4 01     mov   a,$01
0f3a: c4 09     mov   $09,a
0f3c: c4 05     mov   $05,a
0f3e: c4 e1     mov   $e1,a
0f40: 7e 01     cmp   y,$01
0f42: d0 67     bne   $0fab
0f44: e5 5a 02  mov   a,$025a
0f47: 68 02     cmp   a,#$02
0f49: f0 60     beq   $0fab
0f4b: 6f        ret
0f4c: eb 0b     mov   y,$0b
0f4e: e4 03     mov   a,$03
0f50: c4 0b     mov   $0b,a
0f52: 7e 03     cmp   y,$03
0f54: f0 04     beq   $0f5a
0f56: e8 02     mov   a,#$02
0f58: 2f 02     bra   $0f5c
0f5a: e8 01     mov   a,#$01
0f5c: c5 5a 02  mov   $025a,a
0f5f: e5 53 02  mov   a,$0253
0f62: f0 0e     beq   $0f72
0f64: 9c        dec   a
0f65: c4 e2     mov   $e2,a
0f67: fd        mov   y,a
0f68: f6 fc 11  mov   a,$11fc+y
0f6b: c4 47     mov   $47,a
0f6d: f6 ff 11  mov   a,$11ff+y
0f70: 5d        mov   x,a
0f71: 6f        ret
0f72: e8 00     mov   a,#$00
0f74: c5 5a 02  mov   $025a,a
0f77: 6f        ret
0f78: 3f e9 10  call  $10e9
0f7b: dd        mov   a,y
0f7c: d5 21 01  mov   $0121+x,a
0f7f: e4 e2     mov   a,$e2
0f81: d5 11 01  mov   $0111+x,a
0f84: 3f 90 0f  call  $0f90
0f87: 6f        ret
0f88: e8 00     mov   a,#$00
0f8a: d5 10 01  mov   $0110+x,a
0f8d: d5 21 01  mov   $0121+x,a
0f90: e8 00     mov   a,#$00
0f92: d5 40 01  mov   $0140+x,a
0f95: d5 41 01  mov   $0141+x,a
0f98: d5 70 02  mov   $0270+x,a
0f9b: e8 ff     mov   a,#$ff
0f9d: d5 50 01  mov   $0150+x,a
0fa0: e4 47     mov   a,$47
0fa2: 4e e0 00  tclr1 $00e0
0fa5: e4 47     mov   a,$47
0fa7: 4e e4 00  tclr1 $00e4
0faa: 6f        ret
0fab: e4 e1     mov   a,$e1
0fad: f0 5f     beq   $100e
0faf: f5 11 01  mov   a,$0111+x
0fb2: fd        mov   y,a
0fb3: 8f fe 2c  mov   $2c,#$fe
0fb6: 8f e9 2d  mov   $2d,#$e9
0fb9: f6 02 12  mov   a,$1202+y
0fbc: c4 2f     mov   $2f,a
0fbe: 60        clrc
0fbf: 84 2d     adc   a,$2d
0fc1: c4 2d     mov   $2d,a
0fc3: e4 e1     mov   a,$e1
0fc5: 1c        asl   a
0fc6: fd        mov   y,a
0fc7: f7 2c     mov   a,($2c)+y
0fc9: c4 2e     mov   $2e,a
0fcb: fc        inc   y
0fcc: f7 2c     mov   a,($2c)+y
0fce: 60        clrc
0fcf: 84 2f     adc   a,$2f
0fd1: fd        mov   y,a
0fd2: e4 2e     mov   a,$2e
0fd4: da 2c     movw  $2c,ya
0fd6: f5 10 01  mov   a,$0110+x
0fd9: c4 2f     mov   $2f,a
0fdb: 8d 00     mov   y,#$00
0fdd: f7 2c     mov   a,($2c)+y
0fdf: 60        clrc
0fe0: 64 2f     cmp   a,$2f
0fe2: f0 03     beq   $0fe7
0fe4: b0 01     bcs   $0fe7
0fe6: 6f        ret
0fe7: d5 10 01  mov   $0110+x,a
0fea: ba 2c     movw  ya,$2c
0fec: bc        inc   a
0fed: d0 01     bne   $0ff0
0fef: fc        inc   y
0ff0: d4 d0     mov   $d0+x,a
0ff2: db d1     mov   $d1+x,y
0ff4: 3f 78 0f  call  $0f78
0ff7: e8 01     mov   a,#$01
0ff9: d5 20 01  mov   $0120+x,a
0ffc: e4 47     mov   a,$47
0ffe: 04 1a     or    a,$1a
1000: c4 1a     mov   $1a,a
1002: 3f 56 11  call  $1156
1005: 6f        ret
1006: f5 20 01  mov   a,$0120+x
1009: 9c        dec   a
100a: d5 20 01  mov   $0120+x,a
100d: 6f        ret
100e: 3f 56 11  call  $1156
1011: e8 f2     mov   a,#$f2
1013: d5 20 01  mov   $0120+x,a
1016: 6f        ret
1017: 3f 61 11  call  $1161
101a: 68 00     cmp   a,#$00
101c: d0 1f     bne   $103d
101e: e8 00     mov   a,#$00
1020: c4 09     mov   $09,a
1022: c4 01     mov   $01,a
1024: c4 05     mov   $05,a
1026: d4 d1     mov   $d1+x,a
1028: d5 10 01  mov   $0110+x,a
102b: e4 47     mov   a,$47
102d: 4e 1a 00  tclr1 $001a
1030: 3f ae 08  call  $08ae
1033: f5 60 02  mov   a,$0260+x
1036: 28 80     and   a,#$80
1038: f0 03     beq   $103d
103a: 3f e8 0d  call  $0de8
103d: 6f        ret
103e: e4 47     mov   a,$47
1040: 4e 1a 00  tclr1 $001a
1043: 6f        ret
1044: f4 d1     mov   a,$d1+x
1046: f0 f6     beq   $103e
1048: f5 20 01  mov   a,$0120+x
104b: f0 06     beq   $1053
104d: 68 f0     cmp   a,#$f0
104f: f0 c6     beq   $1017
1051: 2f b3     bra   $1006
1053: f5 21 01  mov   a,$0121+x
1056: f0 2a     beq   $1082
1058: 30 28     bmi   $1082
105a: f5 70 02  mov   a,$0270+x
105d: f0 0c     beq   $106b
105f: 9c        dec   a
1060: d5 70 02  mov   $0270+x,a
1063: f0 01     beq   $1066
1065: 6f        ret
1066: 3f 56 11  call  $1156
1069: 2f 75     bra   $10e0
106b: 3f 61 11  call  $1161
106e: 68 00     cmp   a,#$00
1070: d0 5b     bne   $10cd
1072: 3f e9 10  call  $10e9
1075: dd        mov   a,y
1076: ad ff     cmp   y,#$ff
1078: f0 05     beq   $107f
107a: d5 70 02  mov   $0270+x,a
107d: 2f 11     bra   $1090
107f: 5f 0e 10  jmp   $100e

1082: e5 e0 00  mov   a,$00e0
1085: 24 47     and   a,$47
1087: d0 46     bne   $10cf
1089: 3f 61 11  call  $1161
108c: 68 00     cmp   a,#$00
108e: d0 3d     bne   $10cd
1090: 3f e9 10  call  $10e9
1093: dd        mov   a,y
1094: ad ff     cmp   y,#$ff
1096: f0 e7     beq   $107f
1098: c4 2c     mov   $2c,a
109a: 30 0c     bmi   $10a8
109c: f5 11 01  mov   a,$0111+x
109f: fd        mov   y,a
10a0: f6 05 12  mov   a,$1205+y
10a3: 60        clrc
10a4: 84 2c     adc   a,$2c
10a6: 2f 02     bra   $10aa
10a8: 28 7f     and   a,#$7f
10aa: 3f 6d 11  call  $116d
10ad: 3f e9 10  call  $10e9
10b0: 3f f3 10  call  $10f3
10b3: 3f e9 10  call  $10e9
10b6: e4 e4     mov   a,$e4
10b8: 24 47     and   a,$47
10ba: d0 04     bne   $10c0
10bc: dd        mov   a,y
10bd: d5 40 01  mov   $0140+x,a
10c0: 3f e9 10  call  $10e9
10c3: dd        mov   a,y
10c4: d5 41 01  mov   $0141+x,a
10c7: 09 47 e0  or    ($e0),($47)
10ca: 09 47 45  or    ($45),($47)
10cd: 2f 16     bra   $10e5
10cf: 8d 7c     mov   y,#$7c
10d1: 3f 4f 11  call  $114f
10d4: 24 47     and   a,$47
10d6: f0 0d     beq   $10e5
10d8: f5 21 01  mov   a,$0121+x
10db: 30 08     bmi   $10e5
10dd: 3f 56 11  call  $1156
10e0: e4 47     mov   a,$47
10e2: 4e e0 00  tclr1 $00e0
10e5: 3f b4 11  call  $11b4
10e8: 6f        ret
10e9: e7 d0     mov   a,($d0+x)
10eb: bb d0     inc   $d0+x
10ed: d0 02     bne   $10f1
10ef: bb d1     inc   $d1+x
10f1: fd        mov   y,a
10f2: 6f        ret
10f3: 4d        push  x
10f4: dd        mov   a,y
10f5: 1c        asl   a
10f6: 8d 00     mov   y,#$00
10f8: cd 18     mov   x,#$18
10fa: 9e        div   ya,x
10fb: 5d        mov   x,a
10fc: f6 74 0e  mov   a,$0e74+y
10ff: c4 2d     mov   $2d,a
1101: f6 73 0e  mov   a,$0e73+y
1104: c4 2c     mov   $2c,a
1106: ba 2c     movw  ya,$2c
1108: 2f 04     bra   $110e
110a: 4b 2d     lsr   $2d
110c: 7c        ror   a
110d: 3d        inc   x
110e: c8 06     cmp   x,#$06
1110: d0 f8     bne   $110a
1112: c4 2c     mov   $2c,a
1114: ce        pop   x
1115: f5 30 01  mov   a,$0130+x
1118: eb 2d     mov   y,$2d
111a: cf        mul   ya
111b: da 2e     movw  $2e,ya
111d: f5 30 01  mov   a,$0130+x
1120: eb 2c     mov   y,$2c
1122: cf        mul   ya
1123: 6d        push  y
1124: f5 31 01  mov   a,$0131+x
1127: eb 2c     mov   y,$2c
1129: cf        mul   ya
112a: 7a 2e     addw  ya,$2e
112c: da 2e     movw  $2e,ya
112e: f5 31 01  mov   a,$0131+x
1131: eb 2d     mov   y,$2d
1133: cf        mul   ya
1134: fd        mov   y,a
1135: ae        pop   a
1136: 7a 2e     addw  ya,$2e
1138: da 2e     movw  $2e,ya
113a: 7d        mov   a,x
113b: 9f        xcn   a
113c: 5c        lsr   a
113d: 08 02     or    a,#$02
113f: fd        mov   y,a
1140: e4 2e     mov   a,$2e
1142: 3f 48 11  call  $1148
1145: fc        inc   y
1146: e4 2f     mov   a,$2f
1148: cc f2 00  mov   $00f2,y
114b: c5 f3 00  mov   $00f3,a
114e: 6f        ret
114f: cc f2 00  mov   $00f2,y
1152: e5 f3 00  mov   a,$00f3
1155: 6f        ret
1156: 8d 5c     mov   y,#$5c
1158: e4 47     mov   a,$47
115a: cc f2 00  mov   $00f2,y
115d: c5 f3 00  mov   $00f3,a
1160: 6f        ret
1161: 7d        mov   a,x
1162: 9f        xcn   a
1163: 5c        lsr   a
1164: 08 09     or    a,#$09
1166: c5 f2 00  mov   $00f2,a
1169: e5 f3 00  mov   a,$00f3
116c: 6f        ret
116d: 8d 06     mov   y,#$06
116f: cf        mul   ya
1170: da 2c     movw  $2c,ya
1172: 60        clrc
1173: 98 08 2c  adc   $2c,#$08
1176: 98 12 2d  adc   $2d,#$12
1179: 4d        push  x
117a: 7d        mov   a,x
117b: 9f        xcn   a
117c: 5c        lsr   a
117d: 08 04     or    a,#$04
117f: 5d        mov   x,a
1180: 8d 00     mov   y,#$00
1182: f7 2c     mov   a,($2c)+y
1184: 10 0e     bpl   $1194
1186: 28 1f     and   a,#$1f
1188: 38 20 48  and   $48,#$20
118b: 0e 48 00  tset1 $0048
118e: 09 47 49  or    ($49),($47)
1191: dd        mov   a,y
1192: 2f 07     bra   $119b
1194: e4 47     mov   a,$47
1196: 4e 49 00  tclr1 $0049
1199: f7 2c     mov   a,($2c)+y
119b: c9 f2 00  mov   $00f2,x
119e: c5 f3 00  mov   $00f3,a
11a1: 3d        inc   x
11a2: fc        inc   y
11a3: ad 04     cmp   y,#$04
11a5: d0 f2     bne   $1199
11a7: ce        pop   x
11a8: f7 2c     mov   a,($2c)+y
11aa: d5 31 01  mov   $0131+x,a
11ad: fc        inc   y
11ae: f7 2c     mov   a,($2c)+y
11b0: d5 30 01  mov   $0130+x,a
11b3: 6f        ret
11b4: 7d        mov   a,x
11b5: 9f        xcn   a
11b6: 5c        lsr   a
11b7: c4 2c     mov   $2c,a
11b9: e5 58 02  mov   a,$0258
11bc: f0 04     beq   $11c2
11be: e8 0a     mov   a,#$0a
11c0: 2f 03     bra   $11c5
11c2: f5 40 01  mov   a,$0140+x
11c5: 3f ed 11  call  $11ed
11c8: dd        mov   a,y
11c9: eb 2c     mov   y,$2c
11cb: 3f 48 11  call  $1148
11ce: e5 58 02  mov   a,$0258
11d1: f0 04     beq   $11d7
11d3: e8 0a     mov   a,#$0a
11d5: 2f 03     bra   $11da
11d7: f5 40 01  mov   a,$0140+x
11da: c4 2d     mov   $2d,a
11dc: e8 14     mov   a,#$14
11de: 80        setc
11df: a4 2d     sbc   a,$2d
11e1: 3f ed 11  call  $11ed
11e4: ab 2c     inc   $2c
11e6: dd        mov   a,y
11e7: eb 2c     mov   y,$2c
11e9: 3f 48 11  call  $1148
11ec: 6f        ret
11ed: fd        mov   y,a
11ee: f6 2a 0e  mov   a,$0e2a+y
11f1: bc        inc   a
11f2: fd        mov   y,a
11f3: f5 41 01  mov   a,$0141+x
11f6: cf        mul   ya
11f7: f5 50 01  mov   a,$0150+x
11fa: cf        mul   ya

11fb: 6f        ret
