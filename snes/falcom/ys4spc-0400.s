0400: 3f 17 05  call  $0517
0403: e5 f5 00  mov   a,$00f5
0406: ec f6 00  mov   y,$00f6
0409: 3f 06 05  call  $0506
040c: da 02     movw  $02,ya
040e: da 04     movw  $04,ya
0410: ba 00     movw  ya,$00
0412: c5 89 04  mov   $0489,a
0415: cc 8a 04  mov   $048a,y
0418: 3a 00     incw  $00
041a: ba 00     movw  ya,$00
041c: c5 85 04  mov   $0485,a
041f: cc 86 04  mov   $0486,y
0422: 3a 00     incw  $00
0424: ba 00     movw  ya,$00
0426: c5 81 04  mov   $0481,a
0429: cc 82 04  mov   $0482,y
042c: 3a 00     incw  $00
042e: ba 00     movw  ya,$00
0430: c5 aa 04  mov   $04aa,a
0433: cc ab 04  mov   $04ab,y
0436: 3a 00     incw  $00
0438: ba 00     movw  ya,$00
043a: c5 a6 04  mov   $04a6,a
043d: cc a7 04  mov   $04a7,y
0440: 3a 00     incw  $00
0442: ba 00     movw  ya,$00
0444: c5 a2 04  mov   $04a2,a
0447: cc a3 04  mov   $04a3,y
044a: 3a 00     incw  $00
044c: ba 00     movw  ya,$00
044e: c5 cb 04  mov   $04cb,a
0451: cc cc 04  mov   $04cc,y
0454: 3a 00     incw  $00
0456: ba 00     movw  ya,$00
0458: c5 c7 04  mov   $04c7,a
045b: cc c8 04  mov   $04c8,y
045e: 3a 00     incw  $00
0460: ba 00     movw  ya,$00
0462: c5 c3 04  mov   $04c3,a
0465: cc c4 04  mov   $04c4,y
0468: cd 00     mov   x,#$00
046a: e4 f4     mov   a,$f4
046c: 64 f4     cmp   a,$f4
046e: d0 fa     bne   $046a
0470: 64 16     cmp   a,$16
0472: f0 f6     beq   $046a
0474: c4 16     mov   $16,a
0476: e4 f5     mov   a,$f5
0478: 2d        push  a
0479: eb f6     mov   y,$f6
047b: e4 f7     mov   a,$f7
047d: fa 16 f4  mov   ($f4),($16)
0480: d5 3e e6  mov   $e63e+x,a
0483: dd        mov   a,y
0484: d5 3d e6  mov   $e63d+x,a
0487: ae        pop   a
0488: d5 3c e6  mov   $e63c+x,a
048b: e4 f4     mov   a,$f4
048d: 64 f4     cmp   a,$f4
048f: d0 fa     bne   $048b
0491: 64 16     cmp   a,$16
0493: f0 f6     beq   $048b
0495: c4 16     mov   $16,a
0497: e4 f5     mov   a,$f5
0499: 2d        push  a
049a: eb f6     mov   y,$f6
049c: e4 f7     mov   a,$f7
049e: fa 16 f4  mov   ($f4),($16)
04a1: d5 41 e6  mov   $e641+x,a
04a4: dd        mov   a,y
04a5: d5 40 e6  mov   $e640+x,a
04a8: ae        pop   a
04a9: d5 3f e6  mov   $e63f+x,a
04ac: e4 f4     mov   a,$f4
04ae: 64 f4     cmp   a,$f4
04b0: d0 fa     bne   $04ac
04b2: 64 16     cmp   a,$16
04b4: f0 f6     beq   $04ac
04b6: c4 16     mov   $16,a
04b8: e4 f5     mov   a,$f5
04ba: 2d        push  a
04bb: eb f6     mov   y,$f6
04bd: e4 f7     mov   a,$f7
04bf: fa 16 f4  mov   ($f4),($16)
04c2: d5 44 e6  mov   $e644+x,a
04c5: dd        mov   a,y
04c6: d5 43 e6  mov   $e643+x,a
04c9: ae        pop   a
04ca: d5 42 e6  mov   $e642+x,a
04cd: 7d        mov   a,x
04ce: 60        clrc
04cf: 88 09     adc   a,#$09
04d1: 5d        mov   x,a
04d2: b0 15     bcs   $04e9
04d4: 1a 02     decw  $02
04d6: 1a 02     decw  $02
04d8: 1a 02     decw  $02
04da: 1a 02     decw  $02
04dc: 1a 02     decw  $02
04de: 1a 02     decw  $02
04e0: 1a 02     decw  $02
04e2: 1a 02     decw  $02
04e4: 1a 02     decw  $02
04e6: 10 82     bpl   $046a
04e8: 6f        ret

04e9: ac 8a 04  inc   $048a
04ec: ac 86 04  inc   $0486
04ef: ac 82 04  inc   $0482
04f2: ac ab 04  inc   $04ab
04f5: ac a7 04  inc   $04a7
04f8: ac a3 04  inc   $04a3
04fb: ac cc 04  inc   $04cc
04fe: ac c8 04  inc   $04c8
0501: ac c4 04  inc   $04c4
0504: 2f ce     bra   $04d4
0506: 2d        push  a
0507: e4 16     mov   a,$16
0509: c4 f4     mov   $f4,a
050b: ae        pop   a
050c: 6f        ret

050d: 2d        push  a
050e: e4 16     mov   a,$16
0510: 80        setc
0511: a8 01     sbc   a,#$01
0513: c4 f4     mov   $f4,a
0515: ae        pop   a
0516: 6f        ret

0517: 2d        push  a
0518: e4 f4     mov   a,$f4
051a: 64 f4     cmp   a,$f4
051c: d0 fa     bne   $0518
051e: 64 16     cmp   a,$16
0520: f0 f6     beq   $0518
0522: c4 16     mov   $16,a
0524: ae        pop   a
0525: 6f        ret

0526: 6f        ret

0527: 6f        ret

0528: 3f 3f 05  call  $053f
052b: e8 06     mov   a,#$06
052d: c5 82 02  mov   $0282,a
0530: e8 07     mov   a,#$07
0532: c5 84 02  mov   $0284,a
0535: 6f        ret

0536: 3f 3f 05  call  $053f
0539: e8 07     mov   a,#$07
053b: c5 84 02  mov   $0284,a
053e: 6f        ret

053f: e8 00     mov   a,#$00
0541: c5 76 02  mov   $0276,a
0544: c5 78 02  mov   $0278,a
0547: c5 7a 02  mov   $027a,a
054a: c5 7c 02  mov   $027c,a
054d: c5 7e 02  mov   $027e,a
0550: c5 80 02  mov   $0280,a
0553: c5 82 02  mov   $0282,a
0556: c5 84 02  mov   $0284,a
0559: 6f        ret

055a: 6f        ret

055b: 6f        ret

055c: 6f        ret

055d: 6f        ret

055e: 6f        ret

055f: cd 00     mov   x,#$00
0561: 3f 10 12  call  $1210
0564: 3f ae 12  call  $12ae
0567: 3f 90 11  call  $1190
056a: cd 0c     mov   x,#$0c
056c: e8 40     mov   a,#$40
056e: c4 2f     mov   $2f,a
0570: 3f 72 0b  call  $0b72
0573: 3f 72 0b  call  $0b72
0576: 3f 72 0b  call  $0b72
0579: 3f 72 0b  call  $0b72
057c: 3f c3 0d  call  $0dc3
057f: 3f 63 0b  call  $0b63
0582: 6f        ret

0583: cd 00     mov   x,#$00
0585: 3f 23 12  call  $1223
0588: 3f f7 12  call  $12f7
058b: 3f 95 11  call  $1195
058e: cd 0e     mov   x,#$0e
0590: e8 80     mov   a,#$80
0592: 2f da     bra   $056e

0594: db $7f,$00,$00,$00,$00,$00,$00,$00
059c: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
05a4: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
05ac: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

05b4: 42        
05b5: 00        
05b6: 46        
05b7: 00        
05b8: 4b 00     
05ba: 4f 00     
05bc: 54 00     
05be: 59        
05bf: 00        
05c0: 5e 00 64  
05c3: 00        
05c4: 6a 00 70  
05c7: 00        
05c8: 77 00     
05ca: 7e 00     
05cc: 85 00 8d  
05cf: 00        
05d0: 96 00 9f  
05d3: 00        
05d4: a8 00     
05d6: b2 00     
05d8: bd        
05d9: 00        
05da: c8 00     
05dc: d4 00     
05de: e1        
05df: 00        
05e0: ee        
05e1: 00        
05e2: fc        
05e3: 00        
05e4: 0b 01     
05e6: 1b 01     
05e8: 2c 01 3e  
05eb: 01        
05ec: 51        
05ed: 01        
05ee: 65 01 7a  
05f1: 01        
05f2: 91        
05f3: 01        
05f4: a9 01 c2  
05f7: 01        
05f8: dd        
05f9: 01        
05fa: f9 01     
05fc: 17 02     
05fe: 37 02     
0600: 59        
0601: 02 7d     
0603: 02 a3     
0605: 02 cb     
0607: 02 f5     
0609: 02 22     
060b: 03 52 03  
060e: 85 03 ba  
0611: 03 f3 03  
0614: 2f 04     
0616: 6f        

0617: 04 b2     
0619: 04 fa     
061b: 04 46     
061d: 05 96 05  
0620: eb 05     
0622: 45 06 a5  
0625: 06        
0626: 0a 07 75  
0629: 07 e6     
062b: 07 5f     
062d: 08 de     
062f: 08 65     
0631: 09 f4 09  
0634: 8c 0a 2c  
0637: 0b d6     
0639: 0b 8b     
063b: 0c 4a 0d  
063e: 14 0e     
0640: ea 0e cd  
0643: 0f        
0644: be        
0645: 10 f4     
0647: 0d        
0648: 59        
0649: 0e 62 0e  
064c: 87 0e     
064e: 9e        
064f: 0e ac 0e  
0652: c2 0e     
0654: cb 0e     
0656: dc        
0657: 0e e5 0e  
065a: f2 0e     
065c: fb 0e     
065e: 07 0f     
0660: 0a 0f 27  
0663: 0f        
0664: 75 0f a6  
0667: 0e 5c 13  
066a: 56 0f 72  
066d: 0f        
066e: 48 0f     
0670: a1        
0671: 0f        
0672: ea 0f f4  
0675: 0f        
0676: de 0f 98  
0679: 10 f3     
067b: 10 40     
067d: 13 5c 13  
0680: 5c        
0681: 13 5c 13  
0684: 5c        
0685: 13 5c 13  
0688: 18 d0 00  
068b: 00        
068c: 00        
068d: 00        
068e: 00        
068f: 00        
0690: 00        
0691: 00        
0692: 00        
0693: 00        
0694: 00        
0695: 00        
0696: 00        
0697: 00        
0698: 00        
0699: 00        
069a: 04 d0     
069c: 00        
069d: 00        
069e: 16 d0 28  
06a1: d0 28     
06a3: d0 28     
06a5: d0 28     
06a7: d0 28     
06a9: d0 28     
06ab: d0 28     
06ad: d0 28     
06af: d0 e9     
06b1: 00        
06b2: e5 00 ed  
06b5: 00        
06b6: 00        
06b7: 00        
06b8: 88 06     
06ba: 3c        
06bb: d8 9a     
06bd: 06        
06be: 00        
06bf: d8 00     
06c1: 00        
06c2: 00        
06c3: 00        
06c4: 00        
06c5: 00        
06c6: 00        
06c7: 00        
06c8: 00        
06c9: 00        
06ca: 00        
06cb: 00        
06cc: 00        
06cd: 00        
06ce: 00        
06cf: 00        
06d0: 00        
06d1: 00        
06d2: 00        
06d3: 00        
06d4: 00        
06d5: 00        
06d6: 00        
06d7: 00        
06d8: 00        
06d9: 00        
06da: 00        
06db: 00        
06dc: 00        
06dd: 00        
06de: 00        
06df: 00        
06e0: 00        
06e1: 00        
06e2: 00        
06e3: 00        
06e4: 00        
06e5: 00        
06e6: 00        
06e7: 00        
06e8: 00        
06e9: 00        
06ea: 00        
06eb: 00        
06ec: 00        
06ed: 00        
06ee: 00        
06ef: 00        
06f0: 00        
06f1: 00        
06f2: 00        
06f3: 00        
06f4: 00        
06f5: 00        
06f6: 00        
06f7: 00        
06f8: 00        
06f9: 00        
06fa: 00        
06fb: 00        
06fc: 00        
06fd: 00        
06fe: 00        
06ff: 00        
0700: 00        
0701: 00        
0702: 00        
0703: 00        
0704: 00        
0705: 00        
0706: 00        
0707: 00        
0708: 00        
0709: 00        
070a: 00        
070b: 00        
070c: 00        
070d: 00        
070e: 00        
070f: 00        
0710: 00        
0711: 00        
0712: 00        
0713: 00        
0714: 00        
0715: 00        
0716: 00        
0717: 00        
0718: 00        
0719: 00        
071a: 00        
071b: 00        
071c: 00        
071d: 00        
071e: 00        
071f: 00        
0720: 00        
0721: 00        
0722: 00        
0723: 00        
0724: 00        
0725: 00        
0726: 00        
0727: 00        
0728: 00        
0729: 00        
072a: 00        
072b: 00        
072c: 00        
072d: 00        
072e: 00        
072f: 00        
0730: 00        
0731: 00        
0732: 00        
0733: 00        
0734: 00        
0735: 00        
0736: 00        
0737: 00        
0738: 00        
0739: 00        
073a: 00        
073b: 00        
073c: 00        
073d: 00        
073e: 00        
073f: 01        
0740: 02 03     
0742: 04 05     
0744: 06        
0745: 07 08     
0747: 09 0a 00  
074a: 00        
074b: 00        
074c: 00        
074d: 00        
074e: 00        
074f: 00        
0750: 00        
0751: 00        
0752: 00        
0753: 00        
0754: 00        
0755: 00        
0756: 00        
0757: 00        
0758: 00        
0759: 00        
075a: 00        
075b: 00        
075c: 00        
075d: 00        
075e: 00        
075f: 00        
0760: 00        
0761: 00        
0762: 00        
0763: 00        
0764: 00        
0765: 00        
0766: 00        
0767: 00        
0768: 00        
0769: 00        
076a: 00        
076b: 00        
076c: 00        
076d: 00        
076e: 00        
076f: 00        
0770: 00        
0771: 00        
0772: 00        
0773: 00        
0774: 00        
0775: 00        
0776: 00        
0777: 00        
0778: 00        
0779: 00        
077a: 00        
077b: 00        
077c: 00        
077d: 00        
077e: 00        
077f: 00        
0780: 00        
0781: 00        
0782: 00        
0783: 00        
0784: 00        
0785: 00        
0786: 00        
0787: 00        
0788: 00        
0789: 00        
078a: 00        
078b: 00        
078c: 00        
078d: 00        
078e: 01        
078f: 00        
0790: 00        
0791: 00        
0792: 00        
0793: 00        
0794: 00        
0795: 00        
0796: 00        
0797: 00        
0798: 00        
0799: 00        
079a: 00        
079b: 00        
079c: 00        
079d: 00        
079e: 00        
079f: 00        
07a0: 00        
07a1: 00        
07a2: 00        
07a3: 00        
07a4: 00        
07a5: 00        
07a6: 00        
07a7: 00        
07a8: 00        
07a9: 00        
07aa: 00        
07ab: 00        
07ac: 00        
07ad: 00        
07ae: 00        
07af: 00        
07b0: 00        
07b1: 00        
07b2: 00        
07b3: 00        
07b4: 00        
07b5: 00        
07b6: 00        
07b7: 00        
07b8: 00        
07b9: 00        
07ba: 00        
07bb: 00        
07bc: 00        
07bd: 00        
07be: 00        
07bf: 00        
07c0: 00        
07c1: 00        
07c2: 00        
07c3: 00        
07c4: 00        
07c5: 00        
07c6: 00        
07c7: 00        
07c8: 00        
07c9: 00        
07ca: 00        
07cb: 00        
07cc: 00        
07cd: 00        
07ce: 00        
07cf: 00        
07d0: 00        
07d1: 00        
07d2: 00        
07d3: 00        
07d4: 00        
07d5: 00        
07d6: 00        
07d7: 00        
07d8: 00        
07d9: 00        
07da: 00        
07db: 00        
07dc: 00        
07dd: 00        
07de: ff        
07df: ff        
07e0: ff        
07e1: ff        
07e2: ff        
07e3: ff        
07e4: ff        
07e5: ff        
07e6: ff        
07e7: ff        
07e8: ff        
07e9: ff        
07ea: ff        
07eb: ff        
07ec: ff        
07ed: ff        
07ee: ff        
07ef: ff        
07f0: ff        
07f1: ff        
07f2: ff        
07f3: ff        
07f4: ff        
07f5: ff        
07f6: ff        
07f7: ff        
07f8: ff        
07f9: ff        
07fa: ff        
07fb: ff        
07fc: ff        
07fd: ff        
07fe: ff        
07ff: ff        

0800: 20        clrp
0801: e8 80     mov   a,#$80
0803: c5 f4 00  mov   $00f4,a
0806: cd cf     mov   x,#$cf
0808: e8 00     mov   a,#$00
080a: 5d        mov   x,a
080b: d5 00 02  mov   $0200+x,a
080e: af        mov   (x)+,a
080f: c8 e0     cmp   x,#$e0
0811: d0 f8     bne   $080b
0813: da 54     movw  $54,ya
0815: e8 20     mov   a,#$20
0817: c4 2a     mov   $2a,a
0819: 8d 6c     mov   y,#$6c
081b: 3f 51 0b  call  $0b51
081e: e8 01     mov   a,#$01
0820: c5 18 03  mov   $0318,a
0823: 8d 0c     mov   y,#$0c
0825: e8 70     mov   a,#$70
0827: 3f 51 0b  call  $0b51
082a: 8d 1c     mov   y,#$1c
082c: 3f 51 0b  call  $0b51
082f: 8d 5d     mov   y,#$5d
0831: e8 1c     mov   a,#$1c
0833: 3f 51 0b  call  $0b51
0836: 8d 3d     mov   y,#$3d
0838: e8 00     mov   a,#$00
083a: 3f 51 0b  call  $0b51
083d: 3f 5e 13  call  $135e
0840: 8d 71     mov   y,#$71
0842: e8 00     mov   a,#$00
0844: 3f 51 0b  call  $0b51
0847: dc        dec   y
0848: 3f 51 0b  call  $0b51
084b: dd        mov   a,y
084c: 80        setc
084d: a8 0f     sbc   a,#$0f
084f: fd        mov   y,a
0850: 10 f0     bpl   $0842
0852: e8 f0     mov   a,#$f0
0854: c5 f1 00  mov   $00f1,a
0857: e8 10     mov   a,#$10
0859: c5 fa 00  mov   $00fa,a
085c: e8 01     mov   a,#$01
085e: c5 f1 00  mov   $00f1,a
0861: 3f 26 05  call  $0526
0864: e8 01     mov   a,#$01
0866: c5 0e 02  mov   $020e,a
0869: e8 00     mov   a,#$00
086b: c5 18 02  mov   $0218,a
086e: c5 19 02  mov   $0219,a
0871: e8 ff     mov   a,#$ff
0873: c5 1a 02  mov   $021a,a
0876: 3f e1 14  call  $14e1
0879: 3f f7 14  call  $14f7
087c: cd 00     mov   x,#$00
087e: 3f f8 11  call  $11f8
0881: 3f 36 12  call  $1236
0884: 3f 01 11  call  $1101
0887: 3f 5a 05  call  $055a
088a: 3f 5b 05  call  $055b
088d: 3f 5c 05  call  $055c
0890: 3f 5d 05  call  $055d
0893: 3f 5e 05  call  $055e
0896: 3f 5f 05  call  $055f
0899: 3f 83 05  call  $0583
089c: 3f 26 05  call  $0526
089f: 3f 06 05  call  $0506
08a2: e5 f4 00  mov   a,$00f4
08a5: 65 f4 00  cmp   a,$00f4
08a8: d0 09     bne   $08b3
08aa: 64 16     cmp   a,$16
08ac: f0 05     beq   $08b3
08ae: c4 16     mov   $16,a
08b0: 5f fc 13  jmp   $13fc

08b3: e5 fd 00  mov   a,$00fd
08b6: f0 e7     beq   $089f
08b8: 3f 0d 05  call  $050d
08bb: 60        clrc
08bc: 84 2b     adc   a,$2b
08be: c4 2b     mov   $2b,a
08c0: fd        mov   y,a
08c1: 80        setc
08c2: a8 08     sbc   a,#$08
08c4: 90 74     bcc   $093a
08c6: c4 2b     mov   $2b,a
08c8: 6d        push  y
08c9: 3f 5f 10  call  $105f
08cc: 3f cf 0d  call  $0dcf
08cf: cd 00     mov   x,#$00
08d1: d8 30     mov   $30,x
08d3: d8 31     mov   $31,x
08d5: ee        pop   y
08d6: 8d 08     mov   y,#$08
08d8: e4 2d     mov   a,$2d
08da: cf        mul   ya
08db: 60        clrc
08dc: 84 2c     adc   a,$2c
08de: c4 2c     mov   $2c,a
08e0: b0 06     bcs   $08e8
08e2: ad 00     cmp   y,#$00
08e4: f0 2a     beq   $0910
08e6: 2f 01     bra   $08e9
08e8: fc        inc   y
08e9: e8 01     mov   a,#$01
08eb: cd 00     mov   x,#$00
08ed: d8 30     mov   $30,x
08ef: d8 31     mov   $31,x
08f1: 6d        push  y
08f2: cd 00     mov   x,#$00
08f4: e8 01     mov   a,#$01
08f6: d8 2e     mov   $2e,x
08f8: c4 2f     mov   $2f,a
08fa: f5 76 02  mov   a,$0276+x
08fd: d0 06     bne   $0905
08ff: 3f 72 0b  call  $0b72
0902: 3f c3 0d  call  $0dc3
0905: 3d        inc   x
0906: 3d        inc   x
0907: e4 2f     mov   a,$2f
0909: 1c        asl   a
090a: d0 ea     bne   $08f6
090c: ee        pop   y
090d: dc        dec   y
090e: d0 e1     bne   $08f1
0910: e8 01     mov   a,#$01
0912: cd 00     mov   x,#$00
0914: d8 2e     mov   $2e,x
0916: c4 2f     mov   $2f,a
0918: f5 76 02  mov   a,$0276+x
091b: f0 06     beq   $0923
091d: 3f 72 0b  call  $0b72
0920: 3f c3 0d  call  $0dc3
0923: 3d        inc   x
0924: 3d        inc   x
0925: e4 2f     mov   a,$2f
0927: 1c        asl   a
0928: d0 ea     bne   $0914
092a: e8 01     mov   a,#$01
092c: cd 00     mov   x,#$00
092e: 2d        push  a
092f: 4d        push  x
0930: 3f 41 09  call  $0941
0933: ce        pop   x
0934: ae        pop   a
0935: 3d        inc   x
0936: 3d        inc   x
0937: 1c        asl   a
0938: d0 f4     bne   $092e
093a: e8 00     mov   a,#$00
093c: c4 33     mov   $33,a
093e: 5f 9f 08  jmp   $089f

0941: d8 2e     mov   $2e,x
0943: c4 2f     mov   $2f,a
0945: e4 29     mov   a,$29
0947: 24 2f     and   a,$2f
0949: d0 4f     bne   $099a
094b: f5 d8 02  mov   a,$02d8+x
094e: f0 4a     beq   $099a
0950: f5 19 03  mov   a,$0319+x
0953: 68 ca     cmp   a,#$ca
0955: 90 27     bcc   $097e
0957: 80        setc
0958: a8 ca     sbc   a,#$ca
095a: 60        clrc
095b: 84 4e     adc   a,$4e
095d: c4 00     mov   $00,a
095f: f5 76 02  mov   a,$0276+x
0962: fd        mov   y,a
0963: f6 2d 02  mov   a,$022d+y
0966: fd        mov   y,a
0967: f6 8e 07  mov   a,$078e+y
096a: fd        mov   y,a
096b: f6 3e 07  mov   a,$073e+y
096e: 60        clrc
096f: 84 00     adc   a,$00
0971: 3f 11 0e  call  $0e11
0974: f8 2e     mov   x,$2e
0976: e8 a4     mov   a,#$a4
0978: 28 7f     and   a,#$7f
097a: 60        clrc
097b: 95 29 03  adc   a,$0329+x
097e: c4 00     mov   $00,a
0980: e8 00     mov   a,#$00
0982: c4 01     mov   $01,a
0984: 3f 51 0a  call  $0a51
0987: f8 2e     mov   x,$2e
0989: 3f 9b 09  call  $099b
098c: f8 2e     mov   x,$2e
098e: e7 56     mov   a,($56+x)
0990: 68 f9     cmp   a,#$f9
0992: d0 06     bne   $099a
0994: 3f 58 0b  call  $0b58
0997: 5f 98 10  jmp   $1098

099a: 6f        ret

099b: e4 2f     mov   a,$2f
099d: 24 32     and   a,$32
099f: 8d ff     mov   y,#$ff
09a1: f5 76 02  mov   a,$0276+x
09a4: d0 02     bne   $09a8
09a6: eb 48     mov   y,$48
09a8: f5 1a 03  mov   a,$031a+x
09ab: cf        mul   ya
09ac: f4 97     mov   a,$97+x
09ae: cf        mul   ya
09af: 6d        push  y
09b0: e5 18 02  mov   a,$0218
09b3: f0 28     beq   $09dd
09b5: 8c 1c 02  dec   $021c
09b8: d0 23     bne   $09dd
09ba: e5 1b 02  mov   a,$021b
09bd: c5 1c 02  mov   $021c,a
09c0: e5 1a 02  mov   a,$021a
09c3: 60        clrc
09c4: 85 19 02  adc   a,$0219
09c7: d0 11     bne   $09da
09c9: e8 00     mov   a,#$00
09cb: c5 18 02  mov   $0218,a
09ce: e5 19 02  mov   a,$0219
09d1: 30 04     bmi   $09d7
09d3: e8 ff     mov   a,#$ff
09d5: 2f 03     bra   $09da
09d7: 3f 9d 12  call  $129d
09da: c5 1a 02  mov   $021a,a
09dd: e5 1a 02  mov   a,$021a
09e0: ee        pop   y
09e1: cf        mul   ya
09e2: f5 76 02  mov   a,$0276+x
09e5: 5d        mov   x,a
09e6: f5 0f 02  mov   a,$020f+x
09e9: cf        mul   ya
09ea: cb 00     mov   $00,y
09ec: f8 2e     mov   x,$2e
09ee: f5 07 03  mov   a,$0307+x
09f1: 5d        mov   x,a
09f2: e5 18 03  mov   a,$0318
09f5: d0 04     bne   $09fb
09f7: e8 73     mov   a,#$73
09f9: 2f 03     bra   $09fe
09fb: f5 27 0a  mov   a,$0a27+x
09fe: 1c        asl   a
09ff: cf        mul   ya
0a00: dd        mov   a,y
0a01: cf        mul   ya
0a02: 6d        push  y
0a03: eb 00     mov   y,$00
0a05: e5 18 03  mov   a,$0318
0a08: d0 04     bne   $0a0e
0a0a: e8 73     mov   a,#$73
0a0c: 2f 03     bra   $0a11
0a0e: f5 3c 0a  mov   a,$0a3c+x
0a11: 1c        asl   a
0a12: cf        mul   ya
0a13: dd        mov   a,y
0a14: cf        mul   ya
0a15: 6d        push  y
0a16: e4 2e     mov   a,$2e
0a18: 5c        lsr   a
0a19: 9f        xcn   a
0a1a: fd        mov   y,a
0a1b: ae        pop   a
0a1c: 5c        lsr   a
0a1d: 3f 51 0b  call  $0b51
0a20: fc        inc   y
0a21: ae        pop   a
0a22: 5c        lsr   a
0a23: 3f 51 0b  call  $0b51
0a26: 6f        ret

0a27: db $00,$01,$03,$07,$0d,$15,$1e,$29
0a2f: db $34,$42,$51,$5e,$67,$6e,$73,$77
0a37: db $7a,$7c,$7d,$7e,$7f,$7f,$7e,$7d
0a3f: db $7c,$7a,$77,$73,$6e,$67,$5e,$51
0a47: db $42,$34,$29,$1e,$15,$0d,$07,$03
0a4f: db $01,$00

0a51: f5 77 02  mov   a,$0277+x
0a54: c4 01     mov   $01,a
0a56: 3f fc 0a  call  $0afc
0a59: e4 2f     mov   a,$2f
0a5b: 24 33     and   a,$33
0a5d: f4 a7     mov   a,$a7+x
0a5f: f0 1f     beq   $0a80
0a61: f4 b7     mov   a,$b7+x
0a63: d0 1b     bne   $0a80
0a65: f5 66 02  mov   a,$0266+x
0a68: 60        clrc
0a69: 84 01     adc   a,$01
0a6b: c4 01     mov   $01,a
0a6d: f5 67 02  mov   a,$0267+x
0a70: 84 00     adc   a,$00
0a72: c4 00     mov   $00,a
0a74: 2f 0a     bra   $0a80
0a76: f5 57 02  mov   a,$0257+x
0a79: c4 00     mov   $00,a
0a7b: d5 19 03  mov   $0319+x,a
0a7e: e8 00     mov   a,#$00
0a80: e8 00     mov   a,#$00
0a82: c4 04     mov   $04,a
0a84: c4 05     mov   $05,a
0a86: e4 00     mov   a,$00
0a88: 28 7f     and   a,#$7f
0a8a: d4 b6     mov   $b6+x,a
0a8c: 1c        asl   a
0a8d: 5d        mov   x,a
0a8e: f5 b4 05  mov   a,$05b4+x
0a91: c4 08     mov   $08,a
0a93: f5 b5 05  mov   a,$05b5+x
0a96: c4 09     mov   $09,a
0a98: f5 b6 05  mov   a,$05b6+x
0a9b: 80        setc
0a9c: a4 08     sbc   a,$08
0a9e: c4 0a     mov   $0a,a
0aa0: f5 b7 05  mov   a,$05b7+x
0aa3: a4 09     sbc   a,$09
0aa5: c4 0b     mov   $0b,a
0aa7: e4 01     mov   a,$01
0aa9: eb 0a     mov   y,$0a
0aab: cf        mul   ya
0aac: cb 00     mov   $00,y
0aae: e4 0b     mov   a,$0b
0ab0: eb 01     mov   y,$01
0ab2: cf        mul   ya
0ab3: 60        clrc
0ab4: 84 00     adc   a,$00
0ab6: 90 01     bcc   $0ab9
0ab8: fc        inc   y
0ab9: 60        clrc
0aba: 84 08     adc   a,$08
0abc: c4 08     mov   $08,a
0abe: dd        mov   a,y
0abf: 84 09     adc   a,$09
0ac1: c4 09     mov   $09,a
0ac3: f8 2e     mov   x,$2e
0ac5: e4 08     mov   a,$08
0ac7: fb 86     mov   y,$86+x
0ac9: cf        mul   ya
0aca: da 02     movw  $02,ya
0acc: e4 08     mov   a,$08
0ace: fb 87     mov   y,$87+x
0ad0: cf        mul   ya
0ad1: 60        clrc
0ad2: 7a 03     addw  ya,$03
0ad4: da 03     movw  $03,ya
0ad6: e4 09     mov   a,$09
0ad8: fb 86     mov   y,$86+x
0ada: cf        mul   ya
0adb: 60        clrc
0adc: 7a 03     addw  ya,$03
0ade: da 03     movw  $03,ya
0ae0: e4 09     mov   a,$09
0ae2: fb 87     mov   y,$87+x
0ae4: cf        mul   ya
0ae5: 60        clrc
0ae6: 7a 04     addw  ya,$04
0ae8: da 04     movw  $04,ya
0aea: 7d        mov   a,x
0aeb: 9f        xcn   a
0aec: 5c        lsr   a
0aed: 08 02     or    a,#$02
0aef: fd        mov   y,a
0af0: e4 03     mov   a,$03
0af2: 3f 51 0b  call  $0b51
0af5: fc        inc   y
0af6: e4 04     mov   a,$04
0af8: 3f 51 0b  call  $0b51
0afb: 6f        ret

0afc: f5 d7 02  mov   a,$02d7+x
0aff: f0 2f     beq   $0b30
0b01: f4 66     mov   a,$66+x
0b03: d0 2b     bne   $0b30
0b05: f5 c7 02  mov   a,$02c7+x
0b08: 0d        push  psw
0b09: 1c        asl   a
0b0a: 1c        asl   a
0b0b: 90 02     bcc   $0b0f
0b0d: 48 ff     eor   a,#$ff
0b0f: fd        mov   y,a
0b10: f5 d7 02  mov   a,$02d7+x
0b13: cf        mul   ya
0b14: dd        mov   a,y
0b15: 8e        pop   psw
0b16: 10 0f     bpl   $0b27
0b18: fd        mov   y,a
0b19: e4 01     mov   a,$01
0b1b: cb 01     mov   $01,y
0b1d: 80        setc
0b1e: a4 01     sbc   a,$01
0b20: c4 01     mov   $01,a
0b22: b0 02     bcs   $0b26
0b24: 8b 00     dec   $00
0b26: 6f        ret

0b27: 60        clrc
0b28: 84 01     adc   a,$01
0b2a: c4 01     mov   $01,a
0b2c: 90 02     bcc   $0b30
0b2e: ab 00     inc   $00
0b30: 6f        ret

0b31: f5 d7 02  mov   a,$02d7+x
0b34: f0 06     beq   $0b3c
0b36: f4 66     mov   a,$66+x
0b38: f0 02     beq   $0b3c
0b3a: 9b 66     dec   $66+x
0b3c: 6f        ret

0b3d: f5 d7 02  mov   a,$02d7+x
0b40: f0 0e     beq   $0b50
0b42: f4 66     mov   a,$66+x
0b44: d0 0a     bne   $0b50
0b46: f5 c7 02  mov   a,$02c7+x
0b49: 60        clrc
0b4a: 95 c8 02  adc   a,$02c8+x
0b4d: d5 c7 02  mov   $02c7+x,a
0b50: 6f        ret

0b51: cc f2 00  mov   $00f2,y
0b54: c5 f3 00  mov   $00f3,a
0b57: 6f        ret

0b58: e7 56     mov   a,($56+x)
0b5a: bb 56     inc   $56+x
0b5c: d0 02     bne   $0b60
0b5e: bb 57     inc   $57+x
0b60: 08 00     or    a,#$00
0b62: 6f        ret

0b63: e4 2f     mov   a,$2f
0b65: 04 31     or    a,$31
0b67: c4 31     mov   $31,a
0b69: e4 2f     mov   a,$2f
0b6b: 48 ff     eor   a,#$ff
0b6d: 24 30     and   a,$30
0b6f: c4 30     mov   $30,a
0b71: 6f        ret

0b72: f8 2e     mov   x,$2e
0b74: e4 2f     mov   a,$2f
0b76: 3f 9e 0d  call  $0d9e
0b79: 3f 71 0d  call  $0d71
0b7c: 3f 31 0b  call  $0b31
0b7f: 3f 3d 0b  call  $0b3d
0b82: 3f 4e 0d  call  $0d4e
0b85: f4 57     mov   a,$57+x
0b87: f0 07     beq   $0b90
0b89: 9b 67     dec   $67+x
0b8b: f0 04     beq   $0b91
0b8d: 3f 3b 0d  call  $0d3b
0b90: 6f        ret

0b91: f4 57     mov   a,$57+x
0b93: f0 fb     beq   $0b90
0b95: f8 2e     mov   x,$2e
0b97: 3f 58 0b  call  $0b58
0b9a: 30 38     bmi   $0bd4
0b9c: d0 17     bne   $0bb5
0b9e: f4 a6     mov   a,$a6+x
0ba0: f0 44     beq   $0be6
0ba2: 3f 96 0f  call  $0f96
0ba5: 9b a6     dec   $a6+x
0ba7: d0 e8     bne   $0b91
0ba9: f5 36 02  mov   a,$0236+x
0bac: d4 56     mov   $56+x,a
0bae: f5 37 02  mov   a,$0237+x
0bb1: d4 57     mov   $57+x,a
0bb3: 2f dc     bra   $0b91
0bb5: d5 d8 02  mov   $02d8+x,a
0bb8: 3f 58 0b  call  $0b58
0bbb: 30 17     bmi   $0bd4
0bbd: 2d        push  a
0bbe: 9f        xcn   a
0bbf: 28 07     and   a,#$07
0bc1: fd        mov   y,a
0bc2: f6 c9 17  mov   a,$17c9+y
0bc5: d4 76     mov   $76+x,a
0bc7: ae        pop   a
0bc8: 28 0f     and   a,#$0f
0bca: fd        mov   y,a
0bcb: f6 d1 17  mov   a,$17d1+y
0bce: d5 1a 03  mov   $031a+x,a
0bd1: 3f 58 0b  call  $0b58
0bd4: 68 e0     cmp   a,#$e0
0bd6: 90 62     bcc   $0c3a
0bd8: 80        setc
0bd9: a8 e0     sbc   a,#$e0
0bdb: 1c        asl   a
0bdc: fd        mov   y,a
0bdd: f6 47 06  mov   a,$0647+y
0be0: 2d        push  a
0be1: f6 46 06  mov   a,$0646+y
0be4: 2d        push  a
0be5: 6f        ret

0be6: f5 76 02  mov   a,$0276+x
0be9: d0 06     bne   $0bf1
0beb: 3f 36 12  call  $1236
0bee: 5f 91 0b  jmp   $0b91

0bf1: 68 01     cmp   a,#$01
0bf3: d0 06     bne   $0bfb
0bf5: 3f a4 12  call  $12a4
0bf8: 5f 91 0b  jmp   $0b91

0bfb: 68 02     cmp   a,#$02
0bfd: d0 06     bne   $0c05
0bff: 3f a6 12  call  $12a6
0c02: 5f 91 0b  jmp   $0b91

0c05: 68 03     cmp   a,#$03
0c07: d0 06     bne   $0c0f
0c09: 3f a8 12  call  $12a8
0c0c: 5f 91 0b  jmp   $0b91

0c0f: 68 04     cmp   a,#$04
0c11: d0 06     bne   $0c19
0c13: 3f aa 12  call  $12aa
0c16: 5f 91 0b  jmp   $0b91

0c19: 68 05     cmp   a,#$05
0c1b: d0 06     bne   $0c23
0c1d: 3f ac 12  call  $12ac
0c20: 5f 91 0b  jmp   $0b91

0c23: 68 06     cmp   a,#$06
0c25: d0 06     bne   $0c2d
0c27: 3f ae 12  call  $12ae
0c2a: 5f 91 0b  jmp   $0b91

0c2d: 68 07     cmp   a,#$07
0c2f: d0 06     bne   $0c37
0c31: 3f f7 12  call  $12f7
0c34: 5f 91 0b  jmp   $0b91

0c37: 5f 91 0b  jmp   $0b91

0c3a: 68 c9     cmp   a,#$c9
0c3c: f0 51     beq   $0c8f
0c3e: 68 c8     cmp   a,#$c8
0c40: f0 66     beq   $0ca8
0c42: 68 ca     cmp   a,#$ca
0c44: b0 12     bcs   $0c58
0c46: 28 7f     and   a,#$7f
0c48: 60        clrc
0c49: 95 29 03  adc   a,$0329+x
0c4c: 2d        push  a
0c4d: f5 76 02  mov   a,$0276+x
0c50: d0 05     bne   $0c57
0c52: ae        pop   a
0c53: 60        clrc
0c54: 84 47     adc   a,$47
0c56: 2d        push  a
0c57: ae        pop   a
0c58: d5 19 03  mov   $0319+x,a
0c5b: d4 b6     mov   $b6+x,a
0c5d: f5 d8 02  mov   a,$02d8+x
0c60: d4 67     mov   $67+x,a
0c62: fd        mov   y,a
0c63: f4 76     mov   a,$76+x
0c65: cf        mul   ya
0c66: dd        mov   a,y
0c67: d0 01     bne   $0c6a
0c69: bc        inc   a
0c6a: d4 77     mov   $77+x,a
0c6c: e8 00     mov   a,#$00
0c6e: d5 c7 02  mov   $02c7+x,a
0c71: f5 e7 02  mov   a,$02e7+x
0c74: d4 66     mov   $66+x,a
0c76: e4 2f     mov   a,$2f
0c78: 04 30     or    a,$30
0c7a: c4 30     mov   $30,a
0c7c: e4 2f     mov   a,$2f
0c7e: 04 32     or    a,$32
0c80: c4 32     mov   $32,a
0c82: e4 2f     mov   a,$2f
0c84: 04 33     or    a,$33
0c86: c4 33     mov   $33,a
0c88: 3f 16 0d  call  $0d16
0c8b: 3f bb 0c  call  $0cbb
0c8e: 6f        ret

0c8f: e8 00     mov   a,#$00
0c91: d5 19 03  mov   $0319+x,a
0c94: d4 b6     mov   $b6+x,a
0c96: f5 d8 02  mov   a,$02d8+x
0c99: d4 67     mov   $67+x,a
0c9b: e4 2f     mov   a,$2f
0c9d: 04 31     or    a,$31
0c9f: c4 31     mov   $31,a
0ca1: 3f 16 0d  call  $0d16
0ca4: 3f bb 0c  call  $0cbb
0ca7: 6f        ret

0ca8: f5 d8 02  mov   a,$02d8+x
0cab: d4 67     mov   $67+x,a
0cad: fd        mov   y,a
0cae: f4 76     mov   a,$76+x
0cb0: cf        mul   ya
0cb1: dd        mov   a,y
0cb2: d0 01     bne   $0cb5
0cb4: bc        inc   a
0cb5: d4 77     mov   $77+x,a
0cb7: 3f bb 0c  call  $0cbb
0cba: 6f        ret

0cbb: f4 56     mov   a,$56+x
0cbd: c4 00     mov   $00,a
0cbf: f4 57     mov   a,$57+x
0cc1: c4 01     mov   $01,a
0cc3: 8d 00     mov   y,#$00
0cc5: f7 00     mov   a,($00)+y
0cc7: f0 25     beq   $0cee
0cc9: 30 05     bmi   $0cd0
0ccb: fc        inc   y
0ccc: f7 00     mov   a,($00)+y
0cce: 10 fb     bpl   $0ccb
0cd0: 68 fb     cmp   a,#$fb
0cd2: f0 16     beq   $0cea
0cd4: 68 c8     cmp   a,#$c8
0cd6: f0 12     beq   $0cea
0cd8: 68 f9     cmp   a,#$f9
0cda: f0 13     beq   $0cef
0cdc: 68 e0     cmp   a,#$e0
0cde: 90 0e     bcc   $0cee
0ce0: 6d        push  y
0ce1: fd        mov   y,a
0ce2: ae        pop   a
0ce3: 80        setc
0ce4: 96 17 0c  adc   a,$0c17+y
0ce7: fd        mov   y,a
0ce8: 2f db     bra   $0cc5
0cea: e8 00     mov   a,#$00
0cec: d4 77     mov   $77+x,a
0cee: 6f        ret

0cef: 3f 58 0b  call  $0b58
0cf2: 3f 98 10  call  $1098
0cf5: 2f c4     bra   $0cbb

0cf7: db $01,$01,$02,$03,$00,$01,$02,$01
0cff: db $02,$01,$01,$03,$00,$01,$02,$03
0d07: db $01,$03,$03,$00,$01,$03,$00,$03
0d0f: db $03,$03,$01,$02,$00,$00,$00

0d16: 6f        ret

0d17: f5 a8 02  mov   a,$02a8+x
0d1a: f0 1e     beq   $0d3a
0d1c: f5 b7 02  mov   a,$02b7+x
0d1f: d5 46 02  mov   $0246+x,a
0d22: d4 b7     mov   $b7+x,a
0d24: f5 a7 02  mov   a,$02a7+x
0d27: d0 08     bne   $0d31
0d29: f4 b6     mov   a,$b6+x
0d2b: 80        setc
0d2c: b5 b8 02  sbc   a,$02b8+x
0d2f: d4 b6     mov   $b6+x,a
0d31: f5 b8 02  mov   a,$02b8+x
0d34: 60        clrc
0d35: 94 b6     adc   a,$b6+x
0d37: d5 57 02  mov   $0257+x,a
0d3a: 6f        ret

0d3b: f4 76     mov   a,$76+x
0d3d: f0 0e     beq   $0d4d
0d3f: f4 77     mov   a,$77+x
0d41: f0 0a     beq   $0d4d
0d43: 9b 77     dec   $77+x
0d45: d0 06     bne   $0d4d
0d47: e4 2f     mov   a,$2f
0d49: 04 31     or    a,$31
0d4b: c4 31     mov   $31,a
0d4d: 6f        ret

0d4e: f4 96     mov   a,$96+x
0d50: f0 0a     beq   $0d5c
0d52: 9b 96     dec   $96+x
0d54: d0 07     bne   $0d5d
0d56: f5 e8 02  mov   a,$02e8+x
0d59: d5 07 03  mov   $0307+x,a
0d5c: 6f        ret

0d5d: f5 08 03  mov   a,$0308+x
0d60: 60        clrc
0d61: 95 f7 02  adc   a,$02f7+x
0d64: d5 08 03  mov   $0308+x,a
0d67: f5 07 03  mov   a,$0307+x
0d6a: 95 f8 02  adc   a,$02f8+x
0d6d: d5 07 03  mov   $0307+x,a
0d70: 6f        ret

0d71: f4 b7     mov   a,$b7+x
0d73: f0 04     beq   $0d79
0d75: 9b b7     dec   $b7+x
0d77: 2f 1b     bra   $0d94
0d79: f4 a7     mov   a,$a7+x
0d7b: f0 17     beq   $0d94
0d7d: 9b a7     dec   $a7+x
0d7f: f0 14     beq   $0d95
0d81: 60        clrc
0d82: f5 47 02  mov   a,$0247+x
0d85: 95 66 02  adc   a,$0266+x
0d88: d5 66 02  mov   $0266+x,a
0d8b: f5 56 02  mov   a,$0256+x
0d8e: 95 67 02  adc   a,$0267+x
0d91: d5 67 02  mov   $0267+x,a
0d94: 6f        ret

0d95: f5 57 02  mov   a,$0257+x
0d98: c4 00     mov   $00,a
0d9a: d5 19 03  mov   $0319+x,a
0d9d: 6f        ret

0d9e: f4 c6     mov   a,$c6+x
0da0: f0 15     beq   $0db7
0da2: 9b c6     dec   $c6+x
0da4: f0 12     beq   $0db8
0da6: 60        clrc
0da7: f5 88 02  mov   a,$0288+x
0daa: 95 98 02  adc   a,$0298+x
0dad: d5 98 02  mov   $0298+x,a
0db0: f5 97 02  mov   a,$0297+x
0db3: 94 97     adc   a,$97+x
0db5: d4 97     mov   $97+x,a
0db7: 6f        ret

0db8: f5 87 02  mov   a,$0287+x
0dbb: d4 97     mov   $97+x,a
0dbd: e8 00     mov   a,#$00
0dbf: d5 98 02  mov   $0298+x,a
0dc2: 6f        ret

0dc3: e4 31     mov   a,$31
0dc5: 8d 5c     mov   y,#$5c
0dc7: 3f 51 0b  call  $0b51
0dca: e8 00     mov   a,#$00
0dcc: c4 31     mov   $31,a
0dce: 6f        ret

0dcf: e8 00     mov   a,#$00
0dd1: 8d 2d     mov   y,#$2d
0dd3: 3f 51 0b  call  $0b51
0dd6: e4 34     mov   a,$34
0dd8: 8d 3d     mov   y,#$3d
0dda: 3f 51 0b  call  $0b51
0ddd: e8 00     mov   a,#$00
0ddf: 8d 5c     mov   y,#$5c
0de1: 3f 51 0b  call  $0b51
0de4: e4 29     mov   a,$29
0de6: 48 ff     eor   a,#$ff
0de8: 24 30     and   a,$30
0dea: 8d 4c     mov   y,#$4c
0dec: 3f 51 0b  call  $0b51
0def: e8 00     mov   a,#$00
0df1: c4 30     mov   $30,a
0df3: 6f        ret

0df4: 3f 58 0b  call  $0b58
0df7: c4 00     mov   $00,a
0df9: f5 76 02  mov   a,$0276+x
0dfc: fd        mov   y,a
0dfd: f6 2d 02  mov   a,$022d+y
0e00: fd        mov   y,a
0e01: f6 8e 07  mov   a,$078e+y
0e04: 60        clrc
0e05: 84 00     adc   a,$00
0e07: fd        mov   y,a
0e08: f6 3e 07  mov   a,$073e+y
0e0b: 3f 11 0e  call  $0e11
0e0e: 5f 91 0b  jmp   $0b91

0e11: 8d 06     mov   y,#$06
0e13: cf        mul   ya
0e14: da 00     movw  $00,ya
0e16: 60        clrc
0e17: 98 00 00  adc   $00,#$00
0e1a: 98 1d 01  adc   $01,#$1d
0e1d: 4d        push  x
0e1e: 7d        mov   a,x
0e1f: 9f        xcn   a
0e20: 5c        lsr   a
0e21: 08 04     or    a,#$04
0e23: 5d        mov   x,a
0e24: 8d 00     mov   y,#$00
0e26: f7 00     mov   a,($00)+y
0e28: 30 1e     bmi   $0e48
0e2a: e4 2f     mov   a,$2f
0e2c: 4e 34 00  tclr1 $0034
0e2f: f7 00     mov   a,($00)+y
0e31: c9 f2 00  mov   $00f2,x
0e34: c5 f3 00  mov   $00f3,a
0e37: 3d        inc   x
0e38: fc        inc   y
0e39: ad 04     cmp   y,#$04
0e3b: d0 f2     bne   $0e2f
0e3d: ce        pop   x
0e3e: f7 00     mov   a,($00)+y
0e40: d4 87     mov   $87+x,a
0e42: fc        inc   y
0e43: f7 00     mov   a,($00)+y
0e45: d4 86     mov   $86+x,a
0e47: 6f        ret

0e48: 28 1f     and   a,#$1f
0e4a: 38 20 2a  and   $2a,#$20
0e4d: 0e 2a 00  tset1 $002a
0e50: 09 2f 34  or    ($34),($2f)
0e53: 8d 00     mov   y,#$00
0e55: 2f d8     bra   $0e2f
0e57: 00        nop
0e58: 1d        dec   x
0e59: 3f 58 0b  call  $0b58
0e5c: d5 07 03  mov   $0307+x,a
0e5f: 5f 91 0b  jmp   $0b91

0e62: 3f 58 0b  call  $0b58
0e65: d4 96     mov   $96+x,a
0e67: 2d        push  a
0e68: 3f 58 0b  call  $0b58
0e6b: d5 e8 02  mov   $02e8+x,a
0e6e: 80        setc
0e6f: b5 07 03  sbc   a,$0307+x
0e72: ce        pop   x
0e73: 8d 00     mov   y,#$00
0e75: 3f d6 10  call  $10d6
0e78: d5 f7 02  mov   $02f7+x,a
0e7b: dd        mov   a,y
0e7c: d5 f8 02  mov   $02f8+x,a
0e7f: e8 00     mov   a,#$00
0e81: d5 08 03  mov   $0308+x,a
0e84: 5f 91 0b  jmp   $0b91

0e87: 3f 58 0b  call  $0b58
0e8a: d5 e7 02  mov   $02e7+x,a
0e8d: d4 66     mov   $66+x,a
0e8f: 3f 58 0b  call  $0b58
0e92: d5 c8 02  mov   $02c8+x,a
0e95: 3f 58 0b  call  $0b58
0e98: d5 d7 02  mov   $02d7+x,a
0e9b: 5f 91 0b  jmp   $0b91

0e9e: e8 00     mov   a,#$00
0ea0: d5 d7 02  mov   $02d7+x,a
0ea3: 5f 91 0b  jmp   $0b91

0ea6: 3f 58 0b  call  $0b58
0ea9: 5f 91 0b  jmp   $0b91

0eac: 3f 58 0b  call  $0b58
0eaf: 2d        push  a
0eb0: f5 76 02  mov   a,$0276+x
0eb3: d0 09     bne   $0ebe
0eb5: ae        pop   a
0eb6: 80        setc
0eb7: a8 1e     sbc   a,#$1e
0eb9: c4 48     mov   $48,a
0ebb: 5f 91 0b  jmp   $0b91

0ebe: ae        pop   a
0ebf: 5f 91 0b  jmp   $0b91

0ec2: 3f 58 0b  call  $0b58
0ec5: 3f 58 0b  call  $0b58
0ec8: 5f 91 0b  jmp   $0b91

0ecb: 3f 58 0b  call  $0b58
0ece: 80        setc
0ecf: a8 01     sbc   a,#$01
0ed1: fd        mov   y,a
0ed2: f5 76 02  mov   a,$0276+x
0ed5: d0 02     bne   $0ed9
0ed7: cb 2d     mov   $2d,y
0ed9: 5f 91 0b  jmp   $0b91

0edc: 3f 58 0b  call  $0b58
0edf: 3f 58 0b  call  $0b58
0ee2: 5f 91 0b  jmp   $0b91

0ee5: f5 76 02  mov   a,$0276+x
0ee8: d0 08     bne   $0ef2
0eea: 3f 58 0b  call  $0b58
0eed: c4 47     mov   $47,a
0eef: 5f 91 0b  jmp   $0b91

0ef2: 3f 58 0b  call  $0b58
0ef5: d5 29 03  mov   $0329+x,a
0ef8: 5f 91 0b  jmp   $0b91

0efb: 3f 58 0b  call  $0b58
0efe: 3f 58 0b  call  $0b58
0f01: 3f 58 0b  call  $0b58
0f04: 5f 91 0b  jmp   $0b91

0f07: 5f 91 0b  jmp   $0b91

0f0a: 3f 58 0b  call  $0b58
0f0d: 2d        push  a
0f0e: f5 76 02  mov   a,$0276+x
0f11: f0 09     beq   $0f1c
0f13: ae        pop   a
0f14: 60        clrc
0f15: 88 32     adc   a,#$32
0f17: 90 02     bcc   $0f1b
0f19: e8 ff     mov   a,#$ff
0f1b: 2d        push  a
0f1c: ae        pop   a
0f1d: d4 97     mov   $97+x,a
0f1f: e8 00     mov   a,#$00
0f21: d5 98 02  mov   $0298+x,a
0f24: 5f 91 0b  jmp   $0b91

0f27: 3f 58 0b  call  $0b58
0f2a: d4 c6     mov   $c6+x,a
0f2c: 2d        push  a
0f2d: 3f 58 0b  call  $0b58
0f30: d5 87 02  mov   $0287+x,a
0f33: 80        setc
0f34: b4 97     sbc   a,$97+x
0f36: ce        pop   x
0f37: 8d 00     mov   y,#$00
0f39: 3f d6 10  call  $10d6
0f3c: f8 2e     mov   x,$2e
0f3e: d5 88 02  mov   $0288+x,a
0f41: dd        mov   a,y
0f42: d5 97 02  mov   $0297+x,a
0f45: 5f 91 0b  jmp   $0b91

0f48: 3f 58 0b  call  $0b58
0f4b: d5 77 02  mov   $0277+x,a
0f4e: 5f 91 0b  jmp   $0b91

0f51: 2d        push  a
0f52: e8 01     mov   a,#$01
0f54: 2f 03     bra   $0f59
0f56: 2d        push  a
0f57: e8 00     mov   a,#$00
0f59: d5 a7 02  mov   $02a7+x,a
0f5c: ae        pop   a
0f5d: 3f 58 0b  call  $0b58
0f60: d5 a8 02  mov   $02a8+x,a
0f63: 3f 58 0b  call  $0b58
0f66: d5 b7 02  mov   $02b7+x,a
0f69: 3f 58 0b  call  $0b58
0f6c: d5 b8 02  mov   $02b8+x,a
0f6f: 5f 91 0b  jmp   $0b91

0f72: 5f 91 0b  jmp   $0b91

0f75: 3f 58 0b  call  $0b58
0f78: d5 1d 02  mov   $021d+x,a
0f7b: 3f 58 0b  call  $0b58
0f7e: d5 1e 02  mov   $021e+x,a
0f81: 3f 58 0b  call  $0b58
0f84: d4 a6     mov   $a6+x,a
0f86: f4 56     mov   a,$56+x
0f88: d5 36 02  mov   $0236+x,a
0f8b: f4 57     mov   a,$57+x
0f8d: d5 37 02  mov   $0237+x,a
0f90: 3f 96 0f  call  $0f96
0f93: 5f 91 0b  jmp   $0b91

0f96: f5 1d 02  mov   a,$021d+x
0f99: d4 56     mov   $56+x,a
0f9b: f5 1e 02  mov   a,$021e+x
0f9e: d4 57     mov   $57+x,a
0fa0: 6f        ret

0fa1: f5 76 02  mov   a,$0276+x
0fa4: d0 17     bne   $0fbd
0fa6: 3f 58 0b  call  $0b58
0fa9: 3f c9 0f  call  $0fc9
0fac: c4 49     mov   $49,a
0fae: 3f 58 0b  call  $0b58
0fb1: c4 4c     mov   $4c,a
0fb3: 3f 58 0b  call  $0b58
0fb6: c4 4d     mov   $4d,a
0fb8: b2 2a     clr5  $2a
0fba: 5f 91 0b  jmp   $0b91

0fbd: 3f 58 0b  call  $0b58
0fc0: 3f 58 0b  call  $0b58
0fc3: 3f 58 0b  call  $0b58
0fc6: 5f 91 0b  jmp   $0b91

0fc9: 2d        push  a
0fca: e5 84 02  mov   a,$0284
0fcd: f0 04     beq   $0fd3
0fcf: ae        pop   a
0fd0: 28 7f     and   a,#$7f
0fd2: 2d        push  a
0fd3: e5 82 02  mov   a,$0282
0fd6: f0 04     beq   $0fdc
0fd8: ae        pop   a
0fd9: 28 bf     and   a,#$bf
0fdb: 2d        push  a
0fdc: ae        pop   a
0fdd: 6f        ret

0fde: 3f 58 0b  call  $0b58
0fe1: 3f 58 0b  call  $0b58
0fe4: 3f 58 0b  call  $0b58
0fe7: 5f 91 0b  jmp   $0b91

0fea: f5 76 02  mov   a,$0276+x
0fed: d0 02     bne   $0ff1
0fef: a2 2a     set5  $2a
0ff1: 5f 91 0b  jmp   $0b91

0ff4: e4 4a     mov   a,$4a
0ff6: bc        inc   a
0ff7: e8 01     mov   a,#$01
0ff9: c5 17 02  mov   $0217,a
0ffc: 3f 58 0b  call  $0b58
0fff: 3f 58 0b  call  $0b58
1002: c4 4b     mov   $4b,a
1004: 3f 58 0b  call  $0b58
1007: 4d        push  x
1008: 8d 08     mov   y,#$08
100a: cf        mul   ya
100b: 5d        mov   x,a
100c: 8d 0f     mov   y,#$0f
100e: f5 94 05  mov   a,$0594+x
1011: 3f 51 0b  call  $0b51
1014: 3d        inc   x
1015: dd        mov   a,y
1016: 60        clrc
1017: 88 10     adc   a,#$10
1019: fd        mov   y,a
101a: 10 f2     bpl   $100e
101c: ce        pop   x
101d: 3f 23 10  call  $1023
1020: 5f 91 0b  jmp   $0b91

1023: e4 4a     mov   a,$4a
1025: bc        inc   a
1026: e8 01     mov   a,#$01
1028: c4 4f     mov   $4f,a
102a: e4 2a     mov   a,$2a
102c: 08 20     or    a,#$20
102e: 8d 6c     mov   y,#$6c
1030: 3f 51 0b  call  $0b51
1033: e8 00     mov   a,#$00
1035: 8d 2c     mov   y,#$2c
1037: 3f 51 0b  call  $0b51
103a: e8 00     mov   a,#$00
103c: 8d 3c     mov   y,#$3c
103e: 3f 51 0b  call  $0b51
1041: e8 00     mov   a,#$00
1043: 8d 0d     mov   y,#$0d
1045: 3f 51 0b  call  $0b51
1048: e4 4a     mov   a,$4a
104a: 8d 7d     mov   y,#$7d
104c: 3f 51 0b  call  $0b51
104f: e4 4a     mov   a,$4a
1051: 1c        asl   a
1052: 1c        asl   a
1053: 1c        asl   a
1054: 48 ff     eor   a,#$ff
1056: 80        setc
1057: e8 b0     mov   a,#$b0
1059: 8d 6d     mov   y,#$6d
105b: 3f 51 0b  call  $0b51
105e: 6f        ret

105f: e5 17 02  mov   a,$0217
1062: d0 25     bne   $1089
1064: e4 4f     mov   a,$4f
1066: f0 2f     beq   $1097
1068: 8b 4f     dec   $4f
106a: d0 2b     bne   $1097
106c: e4 4c     mov   a,$4c
106e: 8d 2c     mov   y,#$2c
1070: 3f 51 0b  call  $0b51
1073: e4 4d     mov   a,$4d
1075: 8d 3c     mov   y,#$3c
1077: 3f 51 0b  call  $0b51
107a: e4 4b     mov   a,$4b
107c: 8d 0d     mov   y,#$0d
107e: 3f 51 0b  call  $0b51
1081: e4 49     mov   a,$49
1083: 8d 4d     mov   y,#$4d
1085: 3f 51 0b  call  $0b51
1088: 6f        ret

1089: 8c 17 02  dec   $0217
108c: d0 09     bne   $1097
108e: e4 2a     mov   a,$2a
1090: 28 df     and   a,#$df
1092: 8d 6c     mov   y,#$6c
1094: 3f 51 0b  call  $0b51
1097: 6f        ret

1098: 3f 58 0b  call  $0b58
109b: d5 46 02  mov   $0246+x,a
109e: 3f 58 0b  call  $0b58
10a1: d4 a7     mov   $a7+x,a
10a3: 3f 58 0b  call  $0b58
10a6: 28 7f     and   a,#$7f
10a8: 60        clrc
10a9: 95 29 03  adc   a,$0329+x
10ac: 60        clrc
10ad: 84 47     adc   a,$47
10af: d5 57 02  mov   $0257+x,a
10b2: 80        setc
10b3: b4 b6     sbc   a,$b6+x
10b5: 2d        push  a
10b6: f4 a7     mov   a,$a7+x
10b8: 5d        mov   x,a
10b9: ae        pop   a
10ba: 8d 00     mov   y,#$00
10bc: 3f d6 10  call  $10d6
10bf: d5 47 02  mov   $0247+x,a
10c2: dd        mov   a,y
10c3: d5 56 02  mov   $0256+x,a
10c6: f5 46 02  mov   a,$0246+x
10c9: d4 b7     mov   $b7+x,a
10cb: f4 a7     mov   a,$a7+x
10cd: e8 00     mov   a,#$00
10cf: d5 66 02  mov   $0266+x,a
10d2: d5 67 02  mov   $0267+x,a
10d5: 6f        ret

10d6: ed        notc
10d7: 6b 50     ror   $50
10d9: 10 03     bpl   $10de
10db: 48 ff     eor   a,#$ff
10dd: bc        inc   a
10de: 8d 00     mov   y,#$00
10e0: 9e        div   ya,x
10e1: 2d        push  a
10e2: e8 00     mov   a,#$00
10e4: 9e        div   ya,x
10e5: ee        pop   y
10e6: f8 2e     mov   x,$2e
10e8: f3 50 07  bbc7  $50,$10f2
10eb: da 50     movw  $50,ya
10ed: e8 00     mov   a,#$00
10ef: fd        mov   y,a
10f0: 9a 50     subw  ya,$50
10f2: 6f        ret

10f3: 3f 58 0b  call  $0b58
10f6: fd        mov   y,a
10f7: f5 76 02  mov   a,$0276+x
10fa: d0 02     bne   $10fe
10fc: cb 4e     mov   $4e,y
10fe: 5f 91 0b  jmp   $0b91

1101: e8 80     mov   a,#$80
1103: c4 2f     mov   $2f,a
1105: e8 00     mov   a,#$00
1107: c5 18 02  mov   $0218,a
110a: c5 19 02  mov   $0219,a
110d: c4 47     mov   $47,a
110f: e8 ff     mov   a,#$ff
1111: c5 1a 02  mov   $021a,a
1114: cd 0e     mov   x,#$0e
1116: f5 76 02  mov   a,$0276+x
1119: d0 45     bne   $1160
111b: e4 2f     mov   a,$2f
111d: 8d 5c     mov   y,#$5c
111f: 3f 51 0b  call  $0b51
1122: e4 2f     mov   a,$2f
1124: 48 ff     eor   a,#$ff
1126: 24 30     and   a,$30
1128: c4 30     mov   $30,a
112a: e8 01     mov   a,#$01
112c: d4 67     mov   $67+x,a
112e: d5 d8 02  mov   $02d8+x,a
1131: e8 0a     mov   a,#$0a
1133: d5 07 03  mov   $0307+x,a
1136: e8 ff     mov   a,#$ff
1138: d4 97     mov   $97+x,a
113a: e8 00     mov   a,#$00
113c: d5 29 03  mov   $0329+x,a
113f: d4 a6     mov   $a6+x,a
1141: d4 c6     mov   $c6+x,a
1143: d5 98 02  mov   $0298+x,a
1146: d5 d7 02  mov   $02d7+x,a
1149: d5 77 02  mov   $0277+x,a
114c: d4 a7     mov   $a7+x,a
114e: d5 46 02  mov   $0246+x,a
1151: d5 47 02  mov   $0247+x,a
1154: d5 56 02  mov   $0256+x,a
1157: d5 57 02  mov   $0257+x,a
115a: d5 66 02  mov   $0266+x,a
115d: d5 67 02  mov   $0267+x,a
1160: 4b 2f     lsr   $2f
1162: 1d        dec   x
1163: 1d        dec   x
1164: 10 b0     bpl   $1116
1166: e8 ff     mov   a,#$ff
1168: c4 07     mov   $07,a
116a: e8 1e     mov   a,#$1e
116c: c4 2d     mov   $2d,a
116e: e8 00     mov   a,#$00
1170: c4 2c     mov   $2c,a
1172: e8 08     mov   a,#$08
1174: c4 2b     mov   $2b,a
1176: 6f        ret

1177: e8 01     mov   a,#$01
1179: 5f 9f 11  jmp   $119f

117c: e8 02     mov   a,#$02
117e: 5f 9f 11  jmp   $119f

1181: e8 03     mov   a,#$03
1183: 5f 9f 11  jmp   $119f

1186: e8 04     mov   a,#$04
1188: 5f 9f 11  jmp   $119f

118b: e8 05     mov   a,#$05
118d: 5f 9f 11  jmp   $119f

1190: e8 06     mov   a,#$06
1192: 5f 9f 11  jmp   $119f

1195: e8 07     mov   a,#$07
1197: 5f 9f 11  jmp   $119f

119a: e8 08     mov   a,#$08
119c: 5f 9f 11  jmp   $119f

119f: c4 00     mov   $00,a
11a1: e8 80     mov   a,#$80
11a3: c4 2f     mov   $2f,a
11a5: e5 18 02  mov   a,$0218
11a8: d0 0a     bne   $11b4
11aa: e8 00     mov   a,#$00
11ac: c5 19 02  mov   $0219,a
11af: e8 ff     mov   a,#$ff
11b1: c5 1a 02  mov   $021a,a
11b4: cd 0e     mov   x,#$0e
11b6: f5 76 02  mov   a,$0276+x
11b9: 64 00     cmp   a,$00
11bb: d0 34     bne   $11f1
11bd: e8 04     mov   a,#$04
11bf: d4 67     mov   $67+x,a
11c1: d5 d8 02  mov   $02d8+x,a
11c4: e8 00     mov   a,#$00
11c6: d5 29 03  mov   $0329+x,a
11c9: d4 a6     mov   $a6+x,a
11cb: d4 c6     mov   $c6+x,a
11cd: d5 d7 02  mov   $02d7+x,a
11d0: d5 98 02  mov   $0298+x,a
11d3: d5 77 02  mov   $0277+x,a
11d6: d4 a7     mov   $a7+x,a
11d8: d5 46 02  mov   $0246+x,a
11db: d5 47 02  mov   $0247+x,a
11de: d5 56 02  mov   $0256+x,a
11e1: d5 57 02  mov   $0257+x,a
11e4: d5 66 02  mov   $0266+x,a
11e7: d5 67 02  mov   $0267+x,a
11ea: e4 2f     mov   a,$2f
11ec: 8d 5c     mov   y,#$5c
11ee: 3f 51 0b  call  $0b51
11f1: 4b 2f     lsr   $2f
11f3: 1d        dec   x
11f4: 1d        dec   x
11f5: 10 bf     bpl   $11b6
11f7: 6f        ret

11f8: f5 b9 06  mov   a,$06b9+x
11fb: fd        mov   y,a
11fc: f5 b8 06  mov   a,$06b8+x
11ff: da 35     movw  $35,ya
1201: 2d        push  a
1202: dd        mov   a,y
1203: 80        setc
1204: a8 d0     sbc   a,#$d0
1206: fd        mov   y,a
1207: ae        pop   a
1208: da 17     movw  $17,ya
120a: 6f        ret

120b: 6f        ret

120c: 6f        ret

120d: 6f        ret

120e: 6f        ret

120f: 6f        ret

1210: f5 bd 06  mov   a,$06bd+x
1213: fd        mov   y,a
1214: f5 bc 06  mov   a,$06bc+x
1217: da 41     movw  $41,ya
1219: 2d        push  a
121a: dd        mov   a,y
121b: 80        setc
121c: a8 d0     sbc   a,#$d0
121e: fd        mov   y,a
121f: ae        pop   a
1220: da 23     movw  $23,ya
1222: 6f        ret

1223: f5 bd 06  mov   a,$06bd+x
1226: fd        mov   y,a
1227: f5 bc 06  mov   a,$06bc+x
122a: da 43     movw  $43,ya
122c: 2d        push  a
122d: dd        mov   a,y
122e: 80        setc
122f: a8 d0     sbc   a,#$d0
1231: fd        mov   y,a
1232: ae        pop   a
1233: da 25     movw  $25,ya
1235: 6f        ret

1236: 8d 00     mov   y,#$00
1238: f7 35     mov   a,($35)+y
123a: 0d        push  psw
123b: 3a 35     incw  $35
123d: 2d        push  a
123e: f7 35     mov   a,($35)+y
1240: 3a 35     incw  $35
1242: fd        mov   y,a
1243: ae        pop   a
1244: f0 27     beq   $126d
1246: 7a 17     addw  ya,$17
1248: da 00     movw  $00,ya
124a: 8d 00     mov   y,#$00
124c: f6 76 02  mov   a,$0276+y
124f: d0 14     bne   $1265
1251: f7 00     mov   a,($00)+y
1253: 60        clrc
1254: 84 17     adc   a,$17
1256: d6 56 00  mov   $0056+y,a
1259: fc        inc   y
125a: f7 00     mov   a,($00)+y
125c: f0 02     beq   $1260
125e: 84 18     adc   a,$18
1260: d6 56 00  mov   $0056+y,a
1263: 2f 01     bra   $1266
1265: fc        inc   y
1266: fc        inc   y
1267: ad 10     cmp   y,#$10
1269: d0 e1     bne   $124c
126b: 8e        pop   psw
126c: 6f        ret

126d: 8e        pop   psw
126e: f0 11     beq   $1281
1270: 8d 00     mov   y,#$00
1272: f7 35     mov   a,($35)+y
1274: 3a 35     incw  $35
1276: 2d        push  a
1277: f7 35     mov   a,($35)+y
1279: fd        mov   y,a
127a: ae        pop   a
127b: 7a 17     addw  ya,$17
127d: da 35     movw  $35,ya
127f: 2f b5     bra   $1236
1281: 8d 0e     mov   y,#$0e
1283: f6 76 02  mov   a,$0276+y
1286: d0 10     bne   $1298
1288: e8 00     mov   a,#$00
128a: d6 56 00  mov   $0056+y,a
128d: d6 57 00  mov   $0057+y,a
1290: d6 97 00  mov   $0097+y,a
1293: dc        dec   y
1294: dc        dec   y
1295: 10 ec     bpl   $1283
1297: 6f        ret

1298: dc        dec   y
1299: dc        dec   y
129a: 10 e7     bpl   $1283
129c: 6f        ret

129d: 3f 81 12  call  $1281
12a0: 3f 01 11  call  $1101
12a3: 6f        ret

12a4: 6f        ret

12a5: 6f        ret

12a6: 6f        ret

12a7: 6f        ret

12a8: 6f        ret

12a9: 6f        ret

12aa: 6f        ret

12ab: 6f        ret

12ac: 6f        ret

12ad: 6f        ret

12ae: 8d 00     mov   y,#$00
12b0: e8 00     mov   a,#$00
12b2: da 00     movw  $00,ya
12b4: f7 41     mov   a,($41)+y
12b6: 0d        push  psw
12b7: 3a 41     incw  $41
12b9: 2d        push  a
12ba: f7 41     mov   a,($41)+y
12bc: 3a 41     incw  $41
12be: fd        mov   y,a
12bf: ae        pop   a
12c0: f0 1a     beq   $12dc
12c2: 7a 23     addw  ya,$23
12c4: 7a 00     addw  ya,$00
12c6: da 00     movw  $00,ya
12c8: 8d 00     mov   y,#$00
12ca: f7 00     mov   a,($00)+y
12cc: 60        clrc
12cd: 84 23     adc   a,$23
12cf: d6 62 00  mov   $0062+y,a
12d2: fc        inc   y
12d3: f7 00     mov   a,($00)+y
12d5: 84 24     adc   a,$24
12d7: d6 62 00  mov   $0062+y,a
12da: 8e        pop   psw
12db: 6f        ret

12dc: 8e        pop   psw
12dd: f0 11     beq   $12f0
12df: 8d 00     mov   y,#$00
12e1: f7 41     mov   a,($41)+y
12e3: 3a 41     incw  $41
12e5: 2d        push  a
12e6: f7 41     mov   a,($41)+y
12e8: fd        mov   y,a
12e9: ae        pop   a
12ea: 7a 23     addw  ya,$23
12ec: da 41     movw  $41,ya
12ee: 2f be     bra   $12ae
12f0: e8 00     mov   a,#$00
12f2: c4 62     mov   $62,a
12f4: c4 63     mov   $63,a
12f6: 6f        ret

12f7: 8d 00     mov   y,#$00
12f9: e8 00     mov   a,#$00
12fb: da 00     movw  $00,ya
12fd: f7 43     mov   a,($43)+y
12ff: 0d        push  psw
1300: 3a 43     incw  $43
1302: 2d        push  a
1303: f7 43     mov   a,($43)+y
1305: 3a 43     incw  $43
1307: fd        mov   y,a
1308: ae        pop   a
1309: f0 1a     beq   $1325
130b: 7a 25     addw  ya,$25
130d: 7a 00     addw  ya,$00
130f: da 00     movw  $00,ya
1311: 8d 00     mov   y,#$00
1313: f7 00     mov   a,($00)+y
1315: 60        clrc
1316: 84 25     adc   a,$25
1318: d6 64 00  mov   $0064+y,a
131b: fc        inc   y
131c: f7 00     mov   a,($00)+y
131e: 84 26     adc   a,$26
1320: d6 64 00  mov   $0064+y,a
1323: 8e        pop   psw
1324: 6f        ret

1325: 8e        pop   psw
1326: f0 11     beq   $1339
1328: 8d 00     mov   y,#$00
132a: f7 43     mov   a,($43)+y
132c: 3a 43     incw  $43
132e: 2d        push  a
132f: f7 43     mov   a,($43)+y
1331: fd        mov   y,a
1332: ae        pop   a
1333: 7a 25     addw  ya,$25
1335: da 43     movw  $43,ya
1337: 2f be     bra   $12f7
1339: e8 00     mov   a,#$00
133b: c4 64     mov   $64,a
133d: c4 65     mov   $65,a
133f: 6f        ret

1340: e8 00     mov   a,#$00
1342: c4 01     mov   $01,a
1344: 3f 58 0b  call  $0b58
1347: c4 00     mov   $00,a
1349: 10 04     bpl   $134f
134b: e8 ff     mov   a,#$ff
134d: c4 01     mov   $01,a
134f: f4 56     mov   a,$56+x
1351: fb 57     mov   y,$57+x
1353: 7a 00     addw  ya,$00
1355: d4 56     mov   $56+x,a
1357: db 57     mov   $57+x,y
1359: 5f 91 0b  jmp   $0b91

135c: 2f fe     bra   $135c
135e: 8d 2c     mov   y,#$2c
1360: e8 00     mov   a,#$00
1362: c4 4c     mov   $4c,a
1364: c4 4d     mov   $4d,a
1366: 3f 51 0b  call  $0b51
1369: 8d 3c     mov   y,#$3c
136b: 3f 51 0b  call  $0b51
136e: e8 20     mov   a,#$20
1370: 8d 6c     mov   y,#$6c
1372: 3f 51 0b  call  $0b51
1375: e8 00     mov   a,#$00
1377: 8d 0d     mov   y,#$0d
1379: 3f 51 0b  call  $0b51
137c: 8d 7d     mov   y,#$7d
137e: e8 04     mov   a,#$04
1380: c4 4a     mov   $4a,a
1382: 3f 51 0b  call  $0b51
1385: bc        inc   a
1386: e8 20     mov   a,#$20
1388: c5 17 02  mov   $0217,a
138b: 8d 6d     mov   y,#$6d
138d: e8 b0     mov   a,#$b0
138f: 3f 51 0b  call  $0b51
1392: e4 4a     mov   a,$4a
1394: bc        inc   a
1395: e8 20     mov   a,#$20
1397: c4 4f     mov   $4f,a
1399: 6f        ret

139a: 3f 27 05  call  $0527
139d: 5f 9f 08  jmp   $089f

13a0: 3f 26 05  call  $0526
13a3: 5f 9f 08  jmp   $089f

13a6: 3f 28 05  call  $0528
13a9: 5f 9f 08  jmp   $089f

13ac: 3f 3f 05  call  $053f
13af: 5f 9f 08  jmp   $089f

13b2: 3f 36 05  call  $0536
13b5: 5f 9f 08  jmp   $089f

13b8: e4 f6     mov   a,$f6
13ba: 5d        mov   x,a
13bb: e4 f7     mov   a,$f7
13bd: d5 0f 02  mov   $020f+x,a
13c0: 3f 06 05  call  $0506
13c3: 5f 9f 08  jmp   $089f

13c6: e8 ff     mov   a,#$ff
13c8: c5 18 02  mov   $0218,a
13cb: c5 19 02  mov   $0219,a
13ce: c5 1a 02  mov   $021a,a
13d1: e5 f6 00  mov   a,$00f6
13d4: c5 1b 02  mov   $021b,a
13d7: e8 01     mov   a,#$01
13d9: c5 1c 02  mov   $021c,a
13dc: 5f 9f 08  jmp   $089f

13df: e8 ff     mov   a,#$ff
13e1: c5 18 02  mov   $0218,a
13e4: e8 01     mov   a,#$01
13e6: c5 19 02  mov   $0219,a
13e9: e8 00     mov   a,#$00
13eb: c5 1a 02  mov   $021a,a
13ee: e5 f6 00  mov   a,$00f6
13f1: c5 1b 02  mov   $021b,a
13f4: e8 01     mov   a,#$01
13f6: c5 1c 02  mov   $021c,a
13f9: 5f 9f 08  jmp   $089f

13fc: e5 f5 00  mov   a,$00f5
13ff: 28 7f     and   a,#$7f
1401: 1c        asl   a
1402: 5d        mov   x,a
1403: 1f 06 14  jmp   ($1406+x)

1406: dw $1548
1408: dw $1459
140a: dw $14ae
140c: dw $14ae
140e: dw $1548
1410: dw $13a6
1412: dw $13ac
1414: dw $13df
1416: dw $13c6
1418: dw $13b2
141a: dw $13b8
141c: dw $16e3
141e: dw $1783
1420: dw $1796
1422: dw $14d8
1424: dw $17b2
1426: dw $13a0
1428: dw $1430
142a: dw $139a
142c: dw $14ec
142e: dw $1533

1430: cd 0f     mov   x,#$0f
1432: e8 00     mov   a,#$00
1434: c4 00     mov   $00,a
1436: e8 80     mov   a,#$80
1438: c4 01     mov   $01,a
143a: f4 56     mov   a,$56+x
143c: d0 0a     bne   $1448
143e: f4 55     mov   a,$55+x
1440: d0 06     bne   $1448
1442: e4 00     mov   a,$00
1444: 04 01     or    a,$01
1446: c4 00     mov   $00,a
1448: 4b 01     lsr   $01
144a: 1d        dec   x
144b: 1d        dec   x
144c: 10 ec     bpl   $143a
144e: e4 00     mov   a,$00
1450: c5 f5 00  mov   $00f5,a
1453: 3f 06 05  call  $0506
1456: 5f 9f 08  jmp   $089f

1459: e5 f6 00  mov   a,$00f6
145c: 3f 06 05  call  $0506
145f: 1c        asl   a
1460: 5d        mov   x,a
1461: e8 00     mov   a,#$00
1463: c5 2d 02  mov   $022d,a
1466: 3f f8 11  call  $11f8
1469: 3f 36 12  call  $1236
146c: 3f 01 11  call  $1101
146f: 5f 9f 08  jmp   $089f

1472: e5 82 02  mov   a,$0282
1475: 68 06     cmp   a,#$06
1477: d0 14     bne   $148d
1479: e5 f6 00  mov   a,$00f6
147c: 3f 06 05  call  $0506
147f: c5 33 02  mov   $0233,a
1482: 1c        asl   a
1483: 5d        mov   x,a
1484: 3f 10 12  call  $1210
1487: 3f ae 12  call  $12ae
148a: 3f 90 11  call  $1190
148d: 5f 9f 08  jmp   $089f

1490: e5 84 02  mov   a,$0284
1493: 68 07     cmp   a,#$07
1495: d0 14     bne   $14ab
1497: e5 f6 00  mov   a,$00f6
149a: 3f 06 05  call  $0506
149d: c5 34 02  mov   $0234,a
14a0: 1c        asl   a
14a1: 5d        mov   x,a
14a2: 3f 23 12  call  $1223
14a5: 3f f7 12  call  $12f7
14a8: 3f 95 11  call  $1195
14ab: 5f 9f 08  jmp   $089f

14ae: e4 f7     mov   a,$f7
14b0: 68 00     cmp   a,#$00
14b2: f0 1e     beq   $14d2
14b4: 68 01     cmp   a,#$01
14b6: f0 1d     beq   $14d5
14b8: 68 02     cmp   a,#$02
14ba: f0 1c     beq   $14d8
14bc: 68 03     cmp   a,#$03
14be: f0 1b     beq   $14db
14c0: 68 04     cmp   a,#$04
14c2: f0 0b     beq   $14cf
14c4: 68 05     cmp   a,#$05
14c6: f0 aa     beq   $1472
14c8: 68 06     cmp   a,#$06
14ca: f0 c4     beq   $1490
14cc: 5f 9f 08  jmp   $089f

14cf: 5f de 14  jmp   $14de

14d2: 5f 9f 08  jmp   $089f

14d5: 5f 9f 08  jmp   $089f

14d8: 5f 9f 08  jmp   $089f

14db: 5f 9f 08  jmp   $089f

14de: 5f 9f 08  jmp   $089f

14e1: e8 ff     mov   a,#$ff
14e3: cd 07     mov   x,#$07
14e5: d5 0f 02  mov   $020f+x,a
14e8: 1d        dec   x
14e9: 10 fa     bpl   $14e5
14eb: 6f        ret

14ec: e4 f6     mov   a,$f6
14ee: c5 18 03  mov   $0318,a
14f1: 3f 06 05  call  $0506
14f4: 5f 9f 08  jmp   $089f

14f7: e8 00     mov   a,#$00
14f9: c5 00 02  mov   $0200,a
14fc: c5 01 02  mov   $0201,a
14ff: c5 8e 07  mov   $078e,a
1502: e8 00     mov   a,#$00
1504: 8d 1c     mov   y,#$1c
1506: da 14     movw  $14,ya
1508: e8 00     mov   a,#$00
150a: 8d 1e     mov   y,#$1e
150c: da 10     movw  $10,ya
150e: e8 00     mov   a,#$00
1510: 8d 1d     mov   y,#$1d
1512: da 12     movw  $12,ya
1514: e8 00     mov   a,#$00
1516: 8d d8     mov   y,#$d8
1518: da 52     movw  $52,ya
151a: ba 10     movw  ya,$10
151c: c5 08 02  mov   $0208,a
151f: cc 09 02  mov   $0209,y
1522: ba 12     movw  ya,$12
1524: c5 0a 02  mov   $020a,a
1527: cc 0b 02  mov   $020b,y
152a: ba 14     movw  ya,$14
152c: c5 0c 02  mov   $020c,a
152f: cc 0d 02  mov   $020d,y
1532: 6f        ret

1533: 3f 06 05  call  $0506
1536: e8 00     mov   a,#$00
1538: 8d d8     mov   y,#$d8
153a: da 00     movw  $00,ya
153c: 3f 06 05  call  $0506
153f: 3f 00 04  call  $0400
1542: 3f 06 05  call  $0506
1545: 5f 9f 08  jmp   $089f

1548: 3f f7 14  call  $14f7
154b: 3f e1 14  call  $14e1
154e: 3f 5f 05  call  $055f
1551: 3f 83 05  call  $0583
1554: 3f 06 05  call  $0506
1557: 3f 17 05  call  $0517
155a: e5 f5 00  mov   a,$00f5
155d: f0 54     beq   $15b3
155f: fd        mov   y,a
1560: cd 01     mov   x,#$01
1562: 3f 06 05  call  $0506
1565: 6d        push  y
1566: e5 01 02  mov   a,$0201
1569: d5 8e 07  mov   $078e+x,a
156c: 4d        push  x
156d: 7d        mov   a,x
156e: 1c        asl   a
156f: 5d        mov   x,a
1570: e4 52     mov   a,$52
1572: d5 bc 06  mov   $06bc+x,a
1575: e4 53     mov   a,$53
1577: d5 bd 06  mov   $06bd+x,a
157a: ce        pop   x
157b: 4d        push  x
157c: 3f 25 16  call  $1625
157f: 3f 06 05  call  $0506
1582: ba 52     movw  ya,$52
1584: da 00     movw  $00,ya
1586: 3f 06 05  call  $0506
1589: 3f 00 04  call  $0400
158c: ba 52     movw  ya,$52
158e: 7a 04     addw  ya,$04
1590: da 52     movw  $52,ya
1592: ce        pop   x
1593: ee        pop   y
1594: 3d        inc   x
1595: dc        dec   y
1596: d0 cd     bne   $1565
1598: c9 0e 02  mov   $020e,x
159b: ba 10     movw  ya,$10
159d: c5 08 02  mov   $0208,a
15a0: cc 09 02  mov   $0209,y
15a3: ba 12     movw  ya,$12
15a5: c5 0a 02  mov   $020a,a
15a8: cc 0b 02  mov   $020b,y
15ab: ba 14     movw  ya,$14
15ad: c5 0c 02  mov   $020c,a
15b0: cc 0d 02  mov   $020d,y
15b3: e5 08 02  mov   a,$0208
15b6: ec 09 02  mov   y,$0209
15b9: da 10     movw  $10,ya
15bb: e5 0a 02  mov   a,$020a
15be: ec 0b 02  mov   y,$020b
15c1: da 12     movw  $12,ya
15c3: e5 0c 02  mov   a,$020c
15c6: ec 0d 02  mov   y,$020d
15c9: da 14     movw  $14,ya
15cb: e5 01 02  mov   a,$0201
15ce: c5 8e 07  mov   $078e,a
15d1: 3f 25 16  call  $1625
15d4: ba 52     movw  ya,$52
15d6: da 00     movw  $00,ya
15d8: c5 ba 06  mov   $06ba,a
15db: cc bb 06  mov   $06bb,y
15de: 3f 06 05  call  $0506
15e1: 3f 00 04  call  $0400
15e4: ba 52     movw  ya,$52
15e6: 7a 04     addw  ya,$04
15e8: da 52     movw  $52,ya
15ea: ba 10     movw  ya,$10
15ec: c5 f5 00  mov   $00f5,a
15ef: cc f6 00  mov   $00f6,y
15f2: c5 02 02  mov   $0202,a
15f5: cc 03 02  mov   $0203,y
15f8: 3f 06 05  call  $0506
15fb: 3f 17 05  call  $0517
15fe: 3f 06 05  call  $0506
1601: 3f 17 05  call  $0517
1604: ba 52     movw  ya,$52
1606: c5 f5 00  mov   $00f5,a
1609: cc f6 00  mov   $00f6,y
160c: 3f 06 05  call  $0506
160f: 3f 17 05  call  $0517
1612: ba 12     movw  ya,$12
1614: c5 04 02  mov   $0204,a
1617: cc 05 02  mov   $0205,y
161a: ba 14     movw  ya,$14
161c: c5 06 02  mov   $0206,a
161f: cc 07 02  mov   $0207,y
1622: 5f 9f 08  jmp   $089f

1625: 4d        push  x
1626: 3f 06 05  call  $0506
1629: 3f 17 05  call  $0517
162c: e5 f5 00  mov   a,$00f5
162f: c4 08     mov   $08,a
1631: 68 ff     cmp   a,#$ff
1633: f0 07     beq   $163c
1635: 68 01     cmp   a,#$01
1637: f0 11     beq   $164a
1639: 5f e1 16  jmp   $16e1

163c: e9 01 02  mov   x,$0201
163f: e5 f6 00  mov   a,$00f6
1642: d5 3e 07  mov   $073e+x,a
1645: ac 01 02  inc   $0201
1648: 2f dc     bra   $1626
164a: ba 10     movw  ya,$10
164c: da 00     movw  $00,ya
164e: 3f 06 05  call  $0506
1651: 3f 00 04  call  $0400
1654: ba 04     movw  ya,$04
1656: da 09     movw  $09,ya
1658: ba 14     movw  ya,$14
165a: da 00     movw  $00,ya
165c: 3f 06 05  call  $0506
165f: 3f 00 04  call  $0400
1662: 8d 00     mov   y,#$00
1664: f7 14     mov   a,($14)+y
1666: c4 00     mov   $00,a
1668: fc        inc   y
1669: f7 14     mov   a,($14)+y
166b: c4 01     mov   $01,a
166d: dc        dec   y
166e: e4 08     mov   a,$08
1670: 1c        asl   a
1671: 5d        mov   x,a
1672: 80        setc
1673: f7 14     mov   a,($14)+y
1675: a4 00     sbc   a,$00
1677: d7 14     mov   ($14)+y,a
1679: fc        inc   y
167a: f7 14     mov   a,($14)+y
167c: a4 01     sbc   a,$01
167e: d7 14     mov   ($14)+y,a
1680: dc        dec   y
1681: 60        clrc
1682: f7 14     mov   a,($14)+y
1684: 84 10     adc   a,$10
1686: d7 14     mov   ($14)+y,a
1688: fc        inc   y
1689: f7 14     mov   a,($14)+y
168b: 84 11     adc   a,$11
168d: d7 14     mov   ($14)+y,a
168f: fc        inc   y
1690: 1d        dec   x
1691: d0 df     bne   $1672
1693: ba 12     movw  ya,$12
1695: da 00     movw  $00,ya
1697: 3f 06 05  call  $0506
169a: 3f 00 04  call  $0400
169d: ba 12     movw  ya,$12
169f: da 00     movw  $00,ya
16a1: 8d 00     mov   y,#$00
16a3: f7 00     mov   a,($00)+y
16a5: 28 80     and   a,#$80
16a7: 05 00 02  or    a,$0200
16aa: d7 00     mov   ($00)+y,a
16ac: e9 01 02  mov   x,$0201
16af: e5 00 02  mov   a,$0200
16b2: d5 3e 07  mov   $073e+x,a
16b5: ac 01 02  inc   $0201
16b8: ac 00 02  inc   $0200
16bb: e8 04     mov   a,#$04
16bd: 60        clrc
16be: 84 14     adc   a,$14
16c0: c4 14     mov   $14,a
16c2: e8 00     mov   a,#$00
16c4: 84 15     adc   a,$15
16c6: c4 15     mov   $15,a
16c8: 60        clrc
16c9: ba 10     movw  ya,$10
16cb: 7a 09     addw  ya,$09
16cd: da 10     movw  $10,ya
16cf: e4 08     mov   a,$08
16d1: 8d 06     mov   y,#$06
16d3: cf        mul   ya
16d4: 60        clrc
16d5: 84 12     adc   a,$12
16d7: c4 12     mov   $12,a
16d9: dd        mov   a,y
16da: 84 13     adc   a,$13
16dc: c4 13     mov   $13,a
16de: 5f 26 16  jmp   $1626

16e1: ce        pop   x
16e2: 6f        ret

16e3: 3f 83 05  call  $0583
16e6: e9 0e 02  mov   x,$020e
16e9: e5 01 02  mov   a,$0201
16ec: d5 8e 07  mov   $078e+x,a
16ef: 5d        mov   x,a
16f0: e5 00 02  mov   a,$0200
16f3: d5 3e 07  mov   $073e+x,a
16f6: e5 02 02  mov   a,$0202
16f9: ec 03 02  mov   y,$0203
16fc: da 10     movw  $10,ya
16fe: e5 04 02  mov   a,$0204
1701: ec 05 02  mov   y,$0205
1704: da 12     movw  $12,ya
1706: e5 06 02  mov   a,$0206
1709: ec 07 02  mov   y,$0207
170c: da 14     movw  $14,ya
170e: ba 12     movw  ya,$12
1710: da 00     movw  $00,ya
1712: 3f 06 05  call  $0506
1715: 3f 00 04  call  $0400
1718: ba 12     movw  ya,$12
171a: da 00     movw  $00,ya
171c: 8d 00     mov   y,#$00
171e: f7 00     mov   a,($00)+y
1720: 28 80     and   a,#$80
1722: 05 00 02  or    a,$0200
1725: d7 00     mov   ($00)+y,a
1727: e8 01     mov   a,#$01
1729: 8d 06     mov   y,#$06
172b: cf        mul   ya
172c: 60        clrc
172d: 84 12     adc   a,$12
172f: c4 12     mov   $12,a
1731: dd        mov   a,y
1732: 84 13     adc   a,$13
1734: c4 13     mov   $13,a
1736: ba 14     movw  ya,$14
1738: da 00     movw  $00,ya
173a: 3f 06 05  call  $0506
173d: 3f 00 04  call  $0400
1740: 8d 00     mov   y,#$00
1742: f7 14     mov   a,($14)+y
1744: c4 00     mov   $00,a
1746: fc        inc   y
1747: f7 14     mov   a,($14)+y
1749: c4 01     mov   $01,a
174b: dc        dec   y
174c: e8 01     mov   a,#$01
174e: 1c        asl   a
174f: 5d        mov   x,a
1750: 80        setc
1751: f7 14     mov   a,($14)+y
1753: a4 00     sbc   a,$00
1755: d7 14     mov   ($14)+y,a
1757: fc        inc   y
1758: f7 14     mov   a,($14)+y
175a: a4 01     sbc   a,$01
175c: d7 14     mov   ($14)+y,a
175e: dc        dec   y
175f: 60        clrc
1760: f7 14     mov   a,($14)+y
1762: 84 10     adc   a,$10
1764: d7 14     mov   ($14)+y,a
1766: fc        inc   y
1767: f7 14     mov   a,($14)+y
1769: 84 11     adc   a,$11
176b: d7 14     mov   ($14)+y,a
176d: fc        inc   y
176e: 1d        dec   x
176f: d0 df     bne   $1750
1771: e8 04     mov   a,#$04
1773: 60        clrc
1774: 84 14     adc   a,$14
1776: c4 14     mov   $14,a
1778: e8 00     mov   a,#$00
177a: 84 15     adc   a,$15
177c: c4 15     mov   $15,a
177e: e8 00     mov   a,#$00
1780: 5f b3 08  jmp   $08b3

1783: ba 10     movw  ya,$10
1785: da 00     movw  $00,ya
1787: 3f 06 05  call  $0506
178a: 3f 00 04  call  $0400
178d: ba 10     movw  ya,$10
178f: 7a 04     addw  ya,$04
1791: da 10     movw  $10,ya
1793: 5f b3 08  jmp   $08b3

1796: e5 0e 02  mov   a,$020e
1799: 1c        asl   a
179a: 5d        mov   x,a
179b: e4 52     mov   a,$52
179d: d5 bc 06  mov   $06bc+x,a
17a0: e4 53     mov   a,$53
17a2: d5 bd 06  mov   $06bd+x,a
17a5: ba 52     movw  ya,$52
17a7: da 00     movw  $00,ya
17a9: 3f 06 05  call  $0506
17ac: 3f 00 04  call  $0400
17af: 5f b3 08  jmp   $08b3

17b2: 3f 06 05  call  $0506
17b5: e5 0e 02  mov   a,$020e
17b8: c5 34 02  mov   $0234,a
17bb: 1c        asl   a
17bc: 5d        mov   x,a
17bd: 3f 23 12  call  $1223
17c0: 3f f7 12  call  $12f7
17c3: 3f 95 11  call  $1195
17c6: 5f 9f 08  jmp   $089f

17c9: db $65,$7f,$98,$b2,$cb,$e5,$fc,$ff

17d1: db $19,$32,$4c,$65,$72,$7f,$8c,$98
17d9: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
