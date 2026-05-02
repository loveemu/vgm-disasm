0400: 20        clrp
0401: cd cf     mov   x,#$cf
0403: bd        mov   sp,x
0404: e8 00     mov   a,#$00
0406: 5d        mov   x,a
0407: af        mov   (x)+,a
0408: c8 e0     cmp   x,#$e0
040a: d0 fb     bne   $0407
040c: cd 00     mov   x,#$00
040e: d5 00 02  mov   $0200+x,a
0411: 3d        inc   x
0412: d0 fa     bne   $040e
0414: d5 00 03  mov   $0300+x,a
0417: 3d        inc   x
0418: d0 fa     bne   $0414
041a: bc        inc   a
041b: 3f 14 0b  call  $0b14
041e: a2 48     set5  $48
0420: e8 96     mov   a,#$96
0422: c5 c6 03  mov   $03c6,a
0425: e8 bb     mov   a,#$bb
0427: c5 cb 03  mov   $03cb,a
042a: 3f 48 06  call  $0648
042d: e8 60     mov   a,#$60
042f: 8d 0c     mov   y,#$0c
0431: 3f 0d 06  call  $060d
0434: 8d 1c     mov   y,#$1c
0436: 3f 0d 06  call  $060d
0439: e8 3c     mov   a,#$3c
043b: 8d 5d     mov   y,#$5d
043d: 3f 0d 06  call  $060d
0440: e8 f0     mov   a,#$f0
0442: c5 f1 00  mov   $00f1,a
0445: e8 10     mov   a,#$10
0447: c5 fa 00  mov   $00fa,a
044a: c4 53     mov   $53,a
044c: e8 01     mov   a,#$01
044e: c5 f1 00  mov   $00f1,a
0451: 8d 0a     mov   y,#$0a
0453: ad 05     cmp   y,#$05
0455: f0 07     beq   $045e
0457: b0 08     bcs   $0461
0459: 69 4d 4c  cmp   ($4c),($4d)
045c: d0 11     bne   $046f
045e: e3 4c 0e  bbs7  $4c,$046f
0461: f6 9b 0e  mov   a,$0e9b+y
0464: c5 f2 00  mov   $00f2,a
0467: f6 a5 0e  mov   a,$0ea5+y
046a: 5d        mov   x,a
046b: e6        mov   a,(x)
046c: c5 f3 00  mov   $00f3,a
046f: fe e2     dbnz  y,$0453
0471: cb 45     mov   $45,y
0473: cb 46     mov   $46,y
0475: e4 18     mov   a,$18
0477: 44 19     eor   a,$19
0479: 5c        lsr   a
047a: 5c        lsr   a
047b: ed        notc
047c: 6b 18     ror   $18
047e: 6b 19     ror   $19
0480: ec fd 00  mov   y,$00fd
0483: f0 fb     beq   $0480
0485: 6d        push  y
0486: e8 38     mov   a,#$38
0488: cf        mul   ya
0489: 60        clrc
048a: 84 43     adc   a,$43
048c: c4 43     mov   $43,a
048e: 90 26     bcc   $04b6
0490: 3f 7c 25  call  $257c
0493: cd 01     mov   x,#$01
0495: 3f ed 04  call  $04ed
0498: 3f 49 27  call  $2749
049b: cd 02     mov   x,#$02
049d: 3f ed 04  call  $04ed
04a0: 3f 1a 2a  call  $2a1a
04a3: 3f 81 29  call  $2981
04a6: 69 4d 4c  cmp   ($4c),($4d)
04a9: f0 0b     beq   $04b6
04ab: ac c7 03  inc   $03c7
04ae: e5 c7 03  mov   a,$03c7
04b1: 5c        lsr   a
04b2: b0 02     bcs   $04b6
04b4: ab 4c     inc   $4c
04b6: e4 53     mov   a,$53
04b8: ee        pop   y
04b9: cf        mul   ya
04ba: 60        clrc
04bb: 84 51     adc   a,$51
04bd: c4 51     mov   $51,a
04bf: 90 10     bcc   $04d1
04c1: e5 f8 03  mov   a,$03f8
04c4: d0 08     bne   $04ce
04c6: 3f d5 07  call  $07d5
04c9: cd 00     mov   x,#$00
04cb: 3f fe 04  call  $04fe
04ce: 5f 51 04  jmp   $0451

04d1: e4 04     mov   a,$04
04d3: f0 12     beq   $04e7
04d5: cd 00     mov   x,#$00
04d7: 8f 01 47  mov   $47,#$01
04da: f4 31     mov   a,$31+x
04dc: f0 03     beq   $04e1
04de: 3f c4 0d  call  $0dc4
04e1: 3d        inc   x
04e2: 3d        inc   x
04e3: 0b 47     asl   $47
04e5: d0 f3     bne   $04da
04e7: 3f 14 06  call  $0614
04ea: 5f 51 04  jmp   $0451

04ed: f4 04     mov   a,$04+x
04ef: d5 f4 00  mov   $00f4+x,a
04f2: f5 f4 00  mov   a,$00f4+x
04f5: 75 f4 00  cmp   a,$00f4+x
04f8: d0 f8     bne   $04f2
04fa: fd        mov   y,a
04fb: db 00     mov   $00+x,y
04fd: 6f        ret

04fe: f4 04     mov   a,$04+x
0500: d5 f4 00  mov   $00f4+x,a
0503: f5 f4 00  mov   a,$00f4+x
0506: 75 f4 00  cmp   a,$00f4+x
0509: d0 f8     bne   $0503
050b: fd        mov   y,a
050c: f4 08     mov   a,$08+x
050e: db 08     mov   $08+x,y
0510: de 08 02  cbne  $08+x,$0515
0513: 8d 00     mov   y,#$00
0515: db 00     mov   $00+x,y
0517: 6f        ret

0518: ad ca     cmp   y,#$ca
051a: 90 05     bcc   $0521
051c: 3f 32 09  call  $0932
051f: 8d a4     mov   y,#$a4
0521: ad c8     cmp   y,#$c8
0523: b0 d8     bcs   $04fd
0525: e4 1a     mov   a,$1a
0527: 24 47     and   a,$47
0529: d0 d2     bne   $04fd
052b: dd        mov   a,y
052c: 28 7f     and   a,#$7f
052e: 60        clrc
052f: 84 50     adc   a,$50
0531: 60        clrc
0532: 95 f0 02  adc   a,$02f0+x
0535: d5 61 03  mov   $0361+x,a
0538: f5 81 03  mov   a,$0381+x
053b: d5 60 03  mov   $0360+x,a
053e: f5 b1 02  mov   a,$02b1+x
0541: 5c        lsr   a
0542: e8 00     mov   a,#$00
0544: 7c        ror   a
0545: d5 a0 02  mov   $02a0+x,a
0548: e8 00     mov   a,#$00
054a: d4 b0     mov   $b0+x,a
054c: d5 00 01  mov   $0100+x,a
054f: d5 d0 02  mov   $02d0+x,a
0552: d4 c0     mov   $c0+x,a
0554: 09 47 5e  or    ($5e),($47)
0557: 09 47 45  or    ($45),($47)
055a: f5 80 02  mov   a,$0280+x
055d: d4 a0     mov   $a0+x,a
055f: f0 1e     beq   $057f
0561: f5 81 02  mov   a,$0281+x
0564: d4 a1     mov   $a1+x,a
0566: f5 90 02  mov   a,$0290+x
0569: d0 0a     bne   $0575
056b: f5 61 03  mov   a,$0361+x
056e: 80        setc
056f: b5 91 02  sbc   a,$0291+x
0572: d5 61 03  mov   $0361+x,a
0575: f5 91 02  mov   a,$0291+x
0578: 60        clrc
0579: 95 61 03  adc   a,$0361+x
057c: 3f 9b 0b  call  $0b9b
057f: 3f b3 0b  call  $0bb3
0582: 8d 00     mov   y,#$00
0584: e4 11     mov   a,$11
0586: 80        setc
0587: a8 34     sbc   a,#$34
0589: b0 09     bcs   $0594
058b: e4 11     mov   a,$11
058d: 80        setc
058e: a8 13     sbc   a,#$13
0590: b0 06     bcs   $0598
0592: dc        dec   y
0593: 1c        asl   a
0594: 7a 10     addw  ya,$10
0596: da 10     movw  $10,ya
0598: 4d        push  x
0599: e4 11     mov   a,$11
059b: 1c        asl   a
059c: 8d 00     mov   y,#$00
059e: cd 18     mov   x,#$18
05a0: 9e        div   ya,x
05a1: 5d        mov   x,a
05a2: f6 b1 0e  mov   a,$0eb1+y
05a5: c4 15     mov   $15,a
05a7: f6 b0 0e  mov   a,$0eb0+y
05aa: c4 14     mov   $14,a
05ac: f6 b3 0e  mov   a,$0eb3+y
05af: 2d        push  a
05b0: f6 b2 0e  mov   a,$0eb2+y
05b3: ee        pop   y
05b4: 9a 14     subw  ya,$14
05b6: eb 10     mov   y,$10
05b8: cf        mul   ya
05b9: dd        mov   a,y
05ba: 8d 00     mov   y,#$00
05bc: 7a 14     addw  ya,$14
05be: cb 15     mov   $15,y
05c0: 1c        asl   a
05c1: 2b 15     rol   $15
05c3: c4 14     mov   $14,a
05c5: 2f 04     bra   $05cb
05c7: 4b 15     lsr   $15
05c9: 7c        ror   a
05ca: 3d        inc   x
05cb: c8 06     cmp   x,#$06
05cd: d0 f8     bne   $05c7
05cf: c4 14     mov   $14,a
05d1: ce        pop   x
05d2: f5 20 02  mov   a,$0220+x
05d5: eb 15     mov   y,$15
05d7: cf        mul   ya
05d8: da 16     movw  $16,ya
05da: f5 20 02  mov   a,$0220+x
05dd: eb 14     mov   y,$14
05df: cf        mul   ya
05e0: 6d        push  y
05e1: f5 21 02  mov   a,$0221+x
05e4: eb 14     mov   y,$14
05e6: cf        mul   ya
05e7: 7a 16     addw  ya,$16
05e9: da 16     movw  $16,ya
05eb: f5 21 02  mov   a,$0221+x
05ee: eb 15     mov   y,$15
05f0: cf        mul   ya
05f1: fd        mov   y,a
05f2: ae        pop   a
05f3: 7a 16     addw  ya,$16
05f5: da 16     movw  $16,ya
05f7: 7d        mov   a,x
05f8: 9f        xcn   a
05f9: 5c        lsr   a
05fa: 08 02     or    a,#$02
05fc: fd        mov   y,a
05fd: e4 16     mov   a,$16
05ff: 3f 05 06  call  $0605
0602: fc        inc   y
0603: e4 17     mov   a,$17
0605: 2d        push  a
0606: e4 47     mov   a,$47
0608: 24 1a     and   a,$1a
060a: ae        pop   a
060b: d0 06     bne   $0613
060d: cc f2 00  mov   $00f2,y
0610: c5 f3 00  mov   $00f3,a
0613: 6f        ret

0614: 8b d0     dec   $d0
0616: e4 d0     mov   a,$d0
0618: 28 03     and   a,#$03
061a: 8d 3f     mov   y,#$3f
061c: cf        mul   ya
061d: fd        mov   y,a
061e: 8f 07 12  mov   $12,#$07
0621: fc        inc   y
0622: cd 04     mov   x,#$04
0624: aa 19 c0  mov1  c,$0019,6
0627: 8a 19 a0  eor1  c,$0019,5
062a: 2b 18     rol   $18
062c: 2b 19     rol   $19
062e: e4 19     mov   a,$19
0630: 25 cb 03  and   a,$03cb
0633: 08 11     or    a,#$11
0635: d6 00 fe  mov   $fe00+y,a
0638: fc        inc   y
0639: e4 18     mov   a,$18
063b: 08 11     or    a,#$11
063d: d6 00 fe  mov   $fe00+y,a
0640: fc        inc   y
0641: 1d        dec   x
0642: d0 e0     bne   $0624
0644: 6e 12 da  dbnz  $12,$0621
0647: 6f        ret

0648: 8d 00     mov   y,#$00
064a: cd 1b     mov   x,#$1b
064c: e5 c6 03  mov   a,$03c6
064f: d6 00 fe  mov   $fe00+y,a
0652: fc        inc   y
0653: fc        inc   y
0654: fc        inc   y
0655: fc        inc   y
0656: fc        inc   y
0657: fc        inc   y
0658: fc        inc   y
0659: fc        inc   y
065a: fc        inc   y
065b: 1d        dec   x
065c: d0 f1     bne   $064f
065e: bc        inc   a
065f: d6 00 fe  mov   $fe00+y,a
0662: 8d fe     mov   y,#$fe
0664: e8 00     mov   a,#$00
0666: c5 80 3c  mov   $3c80,a
0669: cc 81 3c  mov   $3c81,y
066c: c5 82 3c  mov   $3c82,a
066f: cc 83 3c  mov   $3c83,y
0672: e4 18     mov   a,$18
0674: 04 19     or    a,$19
0676: d0 02     bne   $067a
0678: ab 18     inc   $18
067a: 6f        ret

067b: e8 00     mov   a,#$00
067d: 8d 2c     mov   y,#$2c
067f: 3f 0d 06  call  $060d
0682: 8d 3c     mov   y,#$3c
0684: 3f 0d 06  call  $060d
0687: e8 ff     mov   a,#$ff
0689: 8d 5c     mov   y,#$5c
068b: 3f 0d 06  call  $060d
068e: 3f d5 0e  call  $0ed5
0691: e8 00     mov   a,#$00
0693: c5 ca 03  mov   $03ca,a
0696: c4 04     mov   $04,a
0698: c5 05 00  mov   $0005,a
069b: c5 06 00  mov   $0006,a
069e: c5 07 00  mov   $0007,a
06a1: c4 1a     mov   $1a,a
06a3: 8d 10     mov   y,#$10
06a5: d6 9f 03  mov   $039f+y,a
06a8: fe fb     dbnz  y,$06a5
06aa: e8 96     mov   a,#$96
06ac: c5 c6 03  mov   $03c6,a
06af: e8 bb     mov   a,#$bb
06b1: c5 cb 03  mov   $03cb,a
06b4: 3f 48 06  call  $0648
06b7: 78 11 04  cmp   $04,#$11
06ba: f0 13     beq   $06cf
06bc: cd a0     mov   x,#$a0
06be: d8 5a     mov   $5a,x
06c0: c9 ca 03  mov   $03ca,x
06c3: e8 00     mov   a,#$00
06c5: c4 5b     mov   $5b,a
06c7: 80        setc
06c8: a4 59     sbc   a,$59
06ca: 3f be 0b  call  $0bbe
06cd: da 5c     movw  $5c,ya
06cf: 5f dc 07  jmp   $07dc

06d2: e5 f1 03  mov   a,$03f1
06d5: d0 1e     bne   $06f5
06d7: e4 59     mov   a,$59
06d9: c5 f1 03  mov   $03f1,a
06dc: e8 70     mov   a,#$70
06de: c4 59     mov   $59,a
06e0: 5f dc 07  jmp   $07dc

06e3: e5 f1 03  mov   a,$03f1
06e6: f0 0d     beq   $06f5
06e8: e5 f1 03  mov   a,$03f1
06eb: c4 59     mov   $59,a
06ed: e8 00     mov   a,#$00
06ef: c5 f1 03  mov   $03f1,a
06f2: 5f dc 07  jmp   $07dc

06f5: 6f        ret

06f6: 68 ff     cmp   a,#$ff
06f8: f0 81     beq   $067b
06fa: 68 f1     cmp   a,#$f1
06fc: f0 b9     beq   $06b7
06fe: 68 f2     cmp   a,#$f2
0700: f0 d0     beq   $06d2
0702: 68 f3     cmp   a,#$f3
0704: f0 dd     beq   $06e3
0706: 68 f4     cmp   a,#$f4
0708: f0 13     beq   $071d
070a: 68 f5     cmp   a,#$f5
070c: f0 09     beq   $0717
070e: 68 f0     cmp   a,#$f0
0710: f0 32     beq   $0744
0712: 68 14     cmp   a,#$14
0714: 90 50     bcc   $0766
0716: 6f        ret

0717: cd 03     mov   x,#$03
0719: e8 30     mov   a,#$30
071b: d0 04     bne   $0721
071d: cd fe     mov   x,#$fe
071f: e8 09     mov   a,#$09
0721: 8f 8f 54  mov   $54,#$8f
0724: c9 f0 02  mov   $02f0,x
0727: c9 f2 02  mov   $02f2,x
072a: c9 f4 02  mov   $02f4,x
072d: c4 55     mov   $55,a
072f: 80        setc
0730: a4 53     sbc   a,$53
0732: f8 54     mov   x,$54
0734: 3f be 0b  call  $0bbe
0737: da 56     movw  $56,ya
0739: 5f dc 07  jmp   $07dc

073c: 8c ca 03  dec   $03ca
073f: f0 03     beq   $0744
0741: 5f e8 07  jmp   $07e8

0744: e4 1a     mov   a,$1a
0746: 48 ff     eor   a,#$ff
0748: 0e 46 00  tset1 $0046
074b: 8f 00 04  mov   $04,#$00
074e: 8f 00 47  mov   $47,#$00
0751: 8f c0 59  mov   $59,#$c0
0754: 8f 20 53  mov   $53,#$20
0757: 6f        ret

0758: 8d 00     mov   y,#$00
075a: f7 40     mov   a,($40)+y
075c: 3a 40     incw  $40
075e: 2d        push  a
075f: f7 40     mov   a,($40)+y
0761: 3a 40     incw  $40
0763: fd        mov   y,a
0764: ae        pop   a
0765: 6f        ret

0766: 60        clrc
0767: cd 00     mov   x,#$00
0769: c9 ca 03  mov   $03ca,x
076c: c9 f1 03  mov   $03f1,x
076f: c4 04     mov   $04,a
0771: 1c        asl   a
0772: 5d        mov   x,a
0773: f5 bf fd  mov   a,$fdbf+x
0776: fd        mov   y,a
0777: d0 03     bne   $077c
0779: c4 04     mov   $04,a
077b: 6f        ret

077c: f5 be fd  mov   a,$fdbe+x
077f: da 40     movw  $40,ya
0781: 8f 02 0c  mov   $0c,#$02
0784: e4 1a     mov   a,$1a
0786: 48 ff     eor   a,#$ff
0788: 0e 46 00  tset1 $0046
078b: 6f        ret

078c: cd 0e     mov   x,#$0e
078e: 8f 80 47  mov   $47,#$80
0791: e4 47     mov   a,$47
0793: 24 1a     and   a,$1a
0795: 28 c0     and   a,#$c0
0797: d0 23     bne   $07bc
0799: e8 ff     mov   a,#$ff
079b: d5 01 03  mov   $0301+x,a
079e: e8 0a     mov   a,#$0a
07a0: 3f 8b 09  call  $098b
07a3: d5 11 02  mov   $0211+x,a
07a6: d5 81 03  mov   $0381+x,a
07a9: d5 f0 02  mov   $02f0+x,a
07ac: d5 80 02  mov   $0280+x,a
07af: d5 e1 03  mov   $03e1+x,a
07b2: d5 e0 03  mov   $03e0+x,a
07b5: d5 d0 03  mov   $03d0+x,a
07b8: d4 b1     mov   $b1+x,a
07ba: d4 c1     mov   $c1+x,a
07bc: 1d        dec   x
07bd: 1d        dec   x
07be: 4b 47     lsr   $47
07c0: d0 cf     bne   $0791
07c2: c4 5a     mov   $5a,a
07c4: c4 68     mov   $68,a
07c6: c4 54     mov   $54,a
07c8: c4 50     mov   $50,a
07ca: c4 42     mov   $42,a
07cc: c4 5f     mov   $5f,a
07ce: 8f c0 59  mov   $59,#$c0
07d1: 8f 20 53  mov   $53,#$20
07d4: 6f        ret

07d5: e4 00     mov   a,$00
07d7: f0 03     beq   $07dc
07d9: 5f f6 06  jmp   $06f6

07dc: e4 04     mov   a,$04
07de: f0 f4     beq   $07d4
07e0: e5 ca 03  mov   a,$03ca
07e3: f0 03     beq   $07e8
07e5: 5f 3c 07  jmp   $073c

07e8: e4 0c     mov   a,$0c
07ea: f0 59     beq   $0845
07ec: 6e 0c 9d  dbnz  $0c,$078c
07ef: 3f 58 07  call  $0758
07f2: d0 17     bne   $080b
07f4: fd        mov   y,a
07f5: d0 03     bne   $07fa
07f7: 5f 44 07  jmp   $0744

07fa: 8b 42     dec   $42
07fc: 10 02     bpl   $0800
07fe: c4 42     mov   $42,a
0800: 3f 58 07  call  $0758
0803: f8 42     mov   x,$42
0805: f0 e8     beq   $07ef
0807: da 40     movw  $40,ya
0809: 2f e4     bra   $07ef
080b: da 16     movw  $16,ya
080d: 8d 0f     mov   y,#$0f
080f: f7 16     mov   a,($16)+y
0811: d6 30 00  mov   $0030+y,a
0814: dc        dec   y
0815: 10 f8     bpl   $080f
0817: cd 00     mov   x,#$00
0819: 8f 01 47  mov   $47,#$01
081c: f4 31     mov   a,$31+x
081e: f0 0a     beq   $082a
0820: f5 11 02  mov   a,$0211+x
0823: d0 05     bne   $082a
0825: e8 00     mov   a,#$00
0827: 3f 32 09  call  $0932
082a: e8 00     mov   a,#$00
082c: d4 80     mov   $80+x,a
082e: 2d        push  a
082f: e4 47     mov   a,$47
0831: 24 1a     and   a,$1a
0833: 28 c0     and   a,#$c0
0835: ae        pop   a
0836: d0 04     bne   $083c
0838: d4 91     mov   $91+x,a
083a: d4 90     mov   $90+x,a
083c: bc        inc   a
083d: d4 70     mov   $70+x,a
083f: 3d        inc   x
0840: 3d        inc   x
0841: 0b 47     asl   $47
0843: d0 d7     bne   $081c
0845: cd 00     mov   x,#$00
0847: d8 5e     mov   $5e,x
0849: 8f 01 47  mov   $47,#$01
084c: d8 44     mov   $44,x
084e: f4 31     mov   a,$31+x
0850: f0 6e     beq   $08c0
0852: 9b 70     dec   $70+x
0854: d0 64     bne   $08ba
0856: 3f 28 09  call  $0928
0859: d0 17     bne   $0872
085b: f4 80     mov   a,$80+x
085d: f0 90     beq   $07ef
085f: 3f a9 0a  call  $0aa9
0862: 9b 80     dec   $80+x
0864: d0 f0     bne   $0856
0866: f5 30 02  mov   a,$0230+x
0869: d4 30     mov   $30+x,a
086b: f5 31 02  mov   a,$0231+x
086e: d4 31     mov   $31+x,a
0870: 2f e4     bra   $0856
0872: 30 20     bmi   $0894
0874: d5 00 02  mov   $0200+x,a
0877: 3f 28 09  call  $0928
087a: 30 18     bmi   $0894
087c: 2d        push  a
087d: 9f        xcn   a
087e: 28 07     and   a,#$07
0880: fd        mov   y,a
0881: f6 e8 3e  mov   a,$3ee8+y
0884: d5 01 02  mov   $0201+x,a
0887: ae        pop   a
0888: 28 0f     and   a,#$0f
088a: fd        mov   y,a
088b: f6 f0 3e  mov   a,$3ef0+y
088e: d5 10 02  mov   $0210+x,a
0891: 3f 28 09  call  $0928
0894: 68 e0     cmp   a,#$e0
0896: 90 05     bcc   $089d
0898: 3f 16 09  call  $0916
089b: 2f b9     bra   $0856
089d: 2d        push  a
089e: e4 47     mov   a,$47
08a0: 24 1a     and   a,$1a
08a2: ae        pop   a
08a3: d0 03     bne   $08a8
08a5: 3f 18 05  call  $0518
08a8: f5 00 02  mov   a,$0200+x
08ab: d4 70     mov   $70+x,a
08ad: fd        mov   y,a
08ae: f5 01 02  mov   a,$0201+x
08b1: cf        mul   ya
08b2: dd        mov   a,y
08b3: d0 01     bne   $08b6
08b5: bc        inc   a
08b6: d4 71     mov   $71+x,a
08b8: 2f 03     bra   $08bd
08ba: 3f e5 0c  call  $0ce5
08bd: 3f 6a 0b  call  $0b6a
08c0: 3d        inc   x
08c1: 3d        inc   x
08c2: 0b 47     asl   $47
08c4: f0 03     beq   $08c9
08c6: 5f 4c 08  jmp   $084c

08c9: e4 54     mov   a,$54
08cb: f0 0b     beq   $08d8
08cd: ba 56     movw  ya,$56
08cf: 7a 52     addw  ya,$52
08d1: 6e 54 02  dbnz  $54,$08d6
08d4: ba 54     movw  ya,$54
08d6: da 52     movw  $52,ya
08d8: e4 68     mov   a,$68
08da: f0 15     beq   $08f1
08dc: ba 64     movw  ya,$64
08de: 7a 60     addw  ya,$60
08e0: da 60     movw  $60,ya
08e2: ba 66     movw  ya,$66
08e4: 7a 62     addw  ya,$62
08e6: 6e 68 06  dbnz  $68,$08ef
08e9: ba 68     movw  ya,$68
08eb: da 60     movw  $60,ya
08ed: eb 6a     mov   y,$6a
08ef: da 62     movw  $62,ya
08f1: e4 5a     mov   a,$5a
08f3: f0 0e     beq   $0903
08f5: ba 5c     movw  ya,$5c
08f7: 7a 58     addw  ya,$58
08f9: 6e 5a 02  dbnz  $5a,$08fe
08fc: ba 5a     movw  ya,$5a
08fe: da 58     movw  $58,ya
0900: 8f ff 5e  mov   $5e,#$ff
0903: cd 00     mov   x,#$00
0905: 8f 01 47  mov   $47,#$01
0908: f4 31     mov   a,$31+x
090a: f0 03     beq   $090f
090c: 3f 2b 0c  call  $0c2b
090f: 3d        inc   x
0910: 3d        inc   x
0911: 0b 47     asl   $47
0913: d0 f3     bne   $0908
0915: 6f        ret

0916: 1c        asl   a
0917: fd        mov   y,a
0918: f6 1b 0b  mov   a,$0b1b+y
091b: 2d        push  a
091c: f6 1a 0b  mov   a,$0b1a+y
091f: 2d        push  a
0920: dd        mov   a,y
0921: 5c        lsr   a
0922: fd        mov   y,a
0923: f6 b0 0b  mov   a,$0bb0+y
0926: f0 08     beq   $0930
0928: e7 30     mov   a,($30+x)
092a: bb 30     inc   $30+x
092c: d0 02     bne   $0930
092e: bb 31     inc   $31+x
0930: fd        mov   y,a
0931: 6f        ret

0932: d5 11 02  mov   $0211+x,a
0935: fd        mov   y,a
0936: 10 06     bpl   $093e
0938: 80        setc
0939: a8 ca     sbc   a,#$ca
093b: 60        clrc
093c: 84 5f     adc   a,$5f
093e: 8d 06     mov   y,#$06
0940: cf        mul   ya
0941: da 14     movw  $14,ya
0943: 60        clrc
0944: 98 00 14  adc   $14,#$00
0947: 98 3d 15  adc   $15,#$3d
094a: e4 1a     mov   a,$1a
094c: 24 47     and   a,$47
094e: d0 3a     bne   $098a
0950: 4d        push  x
0951: 7d        mov   a,x
0952: 9f        xcn   a
0953: 5c        lsr   a
0954: 08 04     or    a,#$04
0956: 5d        mov   x,a
0957: 8d 00     mov   y,#$00
0959: f7 14     mov   a,($14)+y
095b: 10 0e     bpl   $096b
095d: 28 1f     and   a,#$1f
095f: 38 20 48  and   $48,#$20
0962: 0e 48 00  tset1 $0048
0965: 09 47 49  or    ($49),($47)
0968: dd        mov   a,y
0969: 2f 07     bra   $0972
096b: e4 47     mov   a,$47
096d: 4e 49 00  tclr1 $0049
0970: f7 14     mov   a,($14)+y
0972: c9 f2 00  mov   $00f2,x
0975: c5 f3 00  mov   $00f3,a
0978: 3d        inc   x
0979: fc        inc   y
097a: ad 04     cmp   y,#$04
097c: d0 f2     bne   $0970
097e: ce        pop   x
097f: f7 14     mov   a,($14)+y
0981: d5 21 02  mov   $0221+x,a
0984: fc        inc   y
0985: f7 14     mov   a,($14)+y
0987: d5 20 02  mov   $0220+x,a
098a: 6f        ret

098b: d5 51 03  mov   $0351+x,a
098e: 28 1f     and   a,#$1f
0990: d5 31 03  mov   $0331+x,a
0993: e8 00     mov   a,#$00
0995: d5 30 03  mov   $0330+x,a
0998: 6f        ret

0999: d4 91     mov   $91+x,a
099b: 2d        push  a
099c: 3f 28 09  call  $0928
099f: d5 50 03  mov   $0350+x,a
09a2: 80        setc
09a3: b5 31 03  sbc   a,$0331+x
09a6: ce        pop   x
09a7: 3f be 0b  call  $0bbe
09aa: d5 40 03  mov   $0340+x,a
09ad: dd        mov   a,y
09ae: d5 41 03  mov   $0341+x,a
09b1: 6f        ret

09b2: d5 b0 02  mov   $02b0+x,a
09b5: 3f 28 09  call  $0928
09b8: d5 a1 02  mov   $02a1+x,a
09bb: 3f 28 09  call  $0928
09be: d4 b1     mov   $b1+x,a
09c0: d5 c1 02  mov   $02c1+x,a
09c3: e8 00     mov   a,#$00
09c5: d5 b1 02  mov   $02b1+x,a
09c8: 6f        ret

09c9: d5 b1 02  mov   $02b1+x,a
09cc: 2d        push  a
09cd: 8d 00     mov   y,#$00
09cf: f4 b1     mov   a,$b1+x
09d1: ce        pop   x
09d2: 9e        div   ya,x
09d3: f8 44     mov   x,$44
09d5: d5 c0 02  mov   $02c0+x,a
09d8: 6f        ret

09d9: e5 ca 03  mov   a,$03ca
09dc: d0 09     bne   $09e7
09de: e5 f1 03  mov   a,$03f1
09e1: d0 04     bne   $09e7
09e3: e8 00     mov   a,#$00
09e5: da 58     movw  $58,ya
09e7: 6f        ret

09e8: c4 5a     mov   $5a,a
09ea: 3f 28 09  call  $0928
09ed: c4 5b     mov   $5b,a
09ef: 80        setc
09f0: a4 59     sbc   a,$59
09f2: f8 5a     mov   x,$5a
09f4: 3f be 0b  call  $0bbe
09f7: da 5c     movw  $5c,ya
09f9: 6f        ret

09fa: e8 00     mov   a,#$00
09fc: da 52     movw  $52,ya
09fe: 6f        ret

09ff: c4 54     mov   $54,a
0a01: 3f 28 09  call  $0928
0a04: c4 55     mov   $55,a
0a06: 80        setc
0a07: a4 53     sbc   a,$53
0a09: f8 54     mov   x,$54
0a0b: 3f be 0b  call  $0bbe
0a0e: da 56     movw  $56,ya
0a10: 6f        ret

0a11: c4 50     mov   $50,a
0a13: 6f        ret

0a14: d5 d0 03  mov   $03d0+x,a
0a17: f5 a0 03  mov   a,$03a0+x
0a1a: d0 06     bne   $0a22
0a1c: f5 d0 03  mov   a,$03d0+x
0a1f: d5 f0 02  mov   $02f0+x,a
0a22: 6f        ret

0a23: d5 e0 02  mov   $02e0+x,a
0a26: 3f 28 09  call  $0928
0a29: d5 d1 02  mov   $02d1+x,a
0a2c: 3f 28 09  call  $0928
0a2f: d4 c1     mov   $c1+x,a
0a31: 6f        ret

0a32: e8 01     mov   a,#$01
0a34: 2f 02     bra   $0a38
0a36: e8 00     mov   a,#$00
0a38: d5 90 02  mov   $0290+x,a
0a3b: dd        mov   a,y
0a3c: d5 81 02  mov   $0281+x,a
0a3f: 3f 28 09  call  $0928
0a42: d5 e1 03  mov   $03e1+x,a
0a45: 2d        push  a
0a46: e4 47     mov   a,$47
0a48: 24 1a     and   a,$1a
0a4a: ae        pop   a
0a4b: f0 02     beq   $0a4f
0a4d: e8 00     mov   a,#$00
0a4f: d5 80 02  mov   $0280+x,a
0a52: 3f 28 09  call  $0928
0a55: d5 91 02  mov   $0291+x,a
0a58: 6f        ret

0a59: d5 80 02  mov   $0280+x,a
0a5c: d5 e1 03  mov   $03e1+x,a
0a5f: 6f        ret

0a60: d5 01 03  mov   $0301+x,a
0a63: e8 00     mov   a,#$00
0a65: d5 00 03  mov   $0300+x,a
0a68: 6f        ret

0a69: d4 90     mov   $90+x,a
0a6b: 2d        push  a
0a6c: 3f 28 09  call  $0928
0a6f: d5 20 03  mov   $0320+x,a
0a72: 80        setc
0a73: b5 01 03  sbc   a,$0301+x
0a76: ce        pop   x
0a77: 3f be 0b  call  $0bbe
0a7a: d5 10 03  mov   $0310+x,a
0a7d: dd        mov   a,y
0a7e: d5 11 03  mov   $0311+x,a
0a81: 6f        ret

0a82: d5 e0 03  mov   $03e0+x,a
0a85: f5 a0 03  mov   a,$03a0+x
0a88: d0 06     bne   $0a90
0a8a: f5 e0 03  mov   a,$03e0+x
0a8d: d5 81 03  mov   $0381+x,a
0a90: 6f        ret

0a91: d5 40 02  mov   $0240+x,a
0a94: 3f 28 09  call  $0928
0a97: d5 41 02  mov   $0241+x,a
0a9a: 3f 28 09  call  $0928
0a9d: d4 80     mov   $80+x,a
0a9f: f4 30     mov   a,$30+x
0aa1: d5 30 02  mov   $0230+x,a
0aa4: f4 31     mov   a,$31+x
0aa6: d5 31 02  mov   $0231+x,a
0aa9: f5 40 02  mov   a,$0240+x
0aac: d4 30     mov   $30+x,a
0aae: f5 41 02  mov   a,$0241+x
0ab1: d4 31     mov   $31+x,a
0ab3: 6f        ret

0ab4: c5 c3 03  mov   $03c3,a
0ab7: c4 4a     mov   $4a,a
0ab9: 3f 28 09  call  $0928
0abc: e8 00     mov   a,#$00
0abe: da 60     movw  $60,ya
0ac0: 3f 28 09  call  $0928
0ac3: e8 00     mov   a,#$00
0ac5: da 62     movw  $62,ya
0ac7: b2 48     clr5  $48
0ac9: 6f        ret

0aca: c4 68     mov   $68,a
0acc: 3f 28 09  call  $0928
0acf: c4 69     mov   $69,a
0ad1: 80        setc
0ad2: a4 61     sbc   a,$61
0ad4: f8 68     mov   x,$68
0ad6: 3f be 0b  call  $0bbe
0ad9: da 64     movw  $64,ya
0adb: 3f 28 09  call  $0928
0ade: c4 6a     mov   $6a,a
0ae0: 80        setc
0ae1: a4 63     sbc   a,$63
0ae3: f8 68     mov   x,$68
0ae5: 3f be 0b  call  $0bbe
0ae8: da 66     movw  $66,ya
0aea: 6f        ret

0aeb: da 60     movw  $60,ya
0aed: da 62     movw  $62,ya
0aef: a2 48     set5  $48
0af1: 6f        ret

0af2: 3f 14 0b  call  $0b14
0af5: 3f 28 09  call  $0928
0af8: c4 4e     mov   $4e,a
0afa: 3f 28 09  call  $0928
0afd: 8d 08     mov   y,#$08
0aff: cf        mul   ya
0b00: 5d        mov   x,a
0b01: 8d 0f     mov   y,#$0f
0b03: f5 7c 0e  mov   a,$0e7c+x
0b06: 3f 0d 06  call  $060d
0b09: 3d        inc   x
0b0a: dd        mov   a,y
0b0b: 60        clrc
0b0c: 88 10     adc   a,#$10
0b0e: fd        mov   y,a
0b0f: 10 f2     bpl   $0b03
0b11: f8 44     mov   x,$44
0b13: 6f        ret

0b14: c4 4d     mov   $4d,a
0b16: 8d 7d     mov   y,#$7d
0b18: cc f2 00  mov   $00f2,y
0b1b: e5 f3 00  mov   a,$00f3
0b1e: 64 4d     cmp   a,$4d
0b20: f0 2b     beq   $0b4d
0b22: 28 0f     and   a,#$0f
0b24: 48 ff     eor   a,#$ff
0b26: f3 4c 03  bbc7  $4c,$0b2c
0b29: 60        clrc
0b2a: 84 4c     adc   a,$4c
0b2c: c4 4c     mov   $4c,a
0b2e: 8d 04     mov   y,#$04
0b30: f6 9b 0e  mov   a,$0e9b+y
0b33: c5 f2 00  mov   $00f2,a
0b36: e8 00     mov   a,#$00
0b38: c5 f3 00  mov   $00f3,a
0b3b: fe f3     dbnz  y,$0b30
0b3d: e4 48     mov   a,$48
0b3f: 08 20     or    a,#$20
0b41: 8d 6c     mov   y,#$6c
0b43: 3f 0d 06  call  $060d
0b46: e4 4d     mov   a,$4d
0b48: 8d 7d     mov   y,#$7d
0b4a: 3f 0d 06  call  $060d
0b4d: 1c        asl   a
0b4e: 1c        asl   a
0b4f: 1c        asl   a
0b50: 48 ff     eor   a,#$ff
0b52: 80        setc
0b53: 88 3c     adc   a,#$3c
0b55: 8d 6d     mov   y,#$6d
0b57: 5f 0d 06  jmp   $060d

0b5a: c4 5f     mov   $5f,a
0b5c: 6f        ret

0b5d: 2d        push  a
0b5e: e4 47     mov   a,$47
0b60: 24 1a     and   a,$1a
0b62: ae        pop   a
0b63: f0 26     beq   $0b8b
0b65: 8f 02 10  mov   $10,#$02
0b68: 2f 13     bra   $0b7d
0b6a: f4 a0     mov   a,$a0+x
0b6c: d0 44     bne   $0bb2
0b6e: e7 30     mov   a,($30+x)
0b70: 68 f9     cmp   a,#$f9
0b72: d0 3e     bne   $0bb2
0b74: e4 47     mov   a,$47
0b76: 24 1a     and   a,$1a
0b78: f0 0b     beq   $0b85
0b7a: 8f 04 10  mov   $10,#$04
0b7d: 3f 2a 09  call  $092a
0b80: 6e 10 fa  dbnz  $10,$0b7d
0b83: 2f 2d     bra   $0bb2
0b85: 3f 2a 09  call  $092a
0b88: 3f 28 09  call  $0928
0b8b: d4 a1     mov   $a1+x,a
0b8d: 3f 28 09  call  $0928
0b90: d4 a0     mov   $a0+x,a
0b92: 3f 28 09  call  $0928
0b95: 60        clrc
0b96: 84 50     adc   a,$50
0b98: 95 f0 02  adc   a,$02f0+x
0b9b: 28 7f     and   a,#$7f
0b9d: d5 80 03  mov   $0380+x,a
0ba0: 80        setc
0ba1: b5 61 03  sbc   a,$0361+x
0ba4: fb a0     mov   y,$a0+x
0ba6: 6d        push  y
0ba7: ce        pop   x
0ba8: 3f be 0b  call  $0bbe
0bab: d5 70 03  mov   $0370+x,a
0bae: dd        mov   a,y
0baf: d5 71 03  mov   $0371+x,a
0bb2: 6f        ret

0bb3: f5 61 03  mov   a,$0361+x
0bb6: c4 11     mov   $11,a
0bb8: f5 60 03  mov   a,$0360+x
0bbb: c4 10     mov   $10,a
0bbd: 6f        ret

0bbe: ed        notc
0bbf: 6b 12     ror   $12
0bc1: 10 03     bpl   $0bc6
0bc3: 48 ff     eor   a,#$ff
0bc5: bc        inc   a
0bc6: 8d 00     mov   y,#$00
0bc8: 9e        div   ya,x
0bc9: 2d        push  a
0bca: e8 00     mov   a,#$00
0bcc: 9e        div   ya,x
0bcd: ee        pop   y
0bce: f8 44     mov   x,$44
0bd0: f3 12 06  bbc7  $12,$0bd9
0bd3: da 14     movw  $14,ya
0bd5: ba 0e     movw  ya,$0e
0bd7: 9a 14     subw  ya,$14
0bd9: 6f        ret

0bda: dw $0932
0bdc: dw $098b
0bde: dw $0999
0be0: dw $09b2
0be2: dw $09be
0be4: dw $09d9
0be6: dw $09e8
0be8: dw $09fa
0bea: dw $09ff
0bec: dw $0a11
0bee: dw $0a14
0bf0: dw $0a23
0bf2: dw $0a2f
0bf4: dw $0a60
0bf6: dw $0a69
0bf8: dw $0a91
0bfa: dw $09c9
0bfc: dw $0a32
0bfe: dw $0a36
0c00: dw $0a59
0c02: dw $0a82
0c04: dw $0ab4
0c06: dw $0aeb
0c08: dw $0af2
0c0a: dw $0aca
0c0c: dw $0b5d
0c0e: dw $0b5a

0c10: db $01,$01,$02,$03,$00,$01,$02,$01
0c18: db $02,$01,$01,$03,$00,$01,$02,$03
0c20: db $01,$03,$03,$00,$01,$03,$00,$03
0c28: db $03,$03,$01

0c2b: f4 90     mov   a,$90+x
0c2d: f0 09     beq   $0c38
0c2f: e8 00     mov   a,#$00
0c31: 8d 03     mov   y,#$03
0c33: 9b 90     dec   $90+x
0c35: 3f c1 0c  call  $0cc1
0c38: fb c1     mov   y,$c1+x
0c3a: f0 23     beq   $0c5f
0c3c: f5 e0 02  mov   a,$02e0+x
0c3f: de c0 1b  cbne  $c0+x,$0c5d
0c42: 09 47 5e  or    ($5e),($47)
0c45: f5 d0 02  mov   a,$02d0+x
0c48: 10 07     bpl   $0c51
0c4a: fc        inc   y
0c4b: d0 04     bne   $0c51
0c4d: e8 80     mov   a,#$80
0c4f: 2f 04     bra   $0c55
0c51: 60        clrc
0c52: 95 d1 02  adc   a,$02d1+x
0c55: d5 d0 02  mov   $02d0+x,a
0c58: 3f 4a 0e  call  $0e4a
0c5b: 2f 07     bra   $0c64
0c5d: bb c0     inc   $c0+x
0c5f: e8 ff     mov   a,#$ff
0c61: 3f 55 0e  call  $0e55
0c64: f4 91     mov   a,$91+x
0c66: f0 09     beq   $0c71
0c68: e8 30     mov   a,#$30
0c6a: 8d 03     mov   y,#$03
0c6c: 9b 91     dec   $91+x
0c6e: 3f c1 0c  call  $0cc1
0c71: e4 47     mov   a,$47
0c73: 24 5e     and   a,$5e
0c75: f0 49     beq   $0cc0
0c77: f5 31 03  mov   a,$0331+x
0c7a: fd        mov   y,a
0c7b: f5 30 03  mov   a,$0330+x
0c7e: da 10     movw  $10,ya
0c80: 7d        mov   a,x
0c81: 9f        xcn   a
0c82: 5c        lsr   a
0c83: c4 12     mov   $12,a
0c85: eb 11     mov   y,$11
0c87: f6 68 0e  mov   a,$0e68+y
0c8a: 80        setc
0c8b: b6 67 0e  sbc   a,$0e67+y
0c8e: eb 10     mov   y,$10
0c90: cf        mul   ya
0c91: dd        mov   a,y
0c92: eb 11     mov   y,$11
0c94: 60        clrc
0c95: 96 67 0e  adc   a,$0e67+y
0c98: fd        mov   y,a
0c99: d5 50 02  mov   $0250+x,a
0c9c: f5 21 03  mov   a,$0321+x
0c9f: cf        mul   ya
0ca0: f5 51 03  mov   a,$0351+x
0ca3: 1c        asl   a
0ca4: 13 12 01  bbc0  $12,$0ca8
0ca7: 1c        asl   a
0ca8: dd        mov   a,y
0ca9: 90 03     bcc   $0cae
0cab: 48 ff     eor   a,#$ff
0cad: bc        inc   a
0cae: eb 12     mov   y,$12
0cb0: 3f 05 06  call  $0605
0cb3: 8d 14     mov   y,#$14
0cb5: e8 00     mov   a,#$00
0cb7: 9a 10     subw  ya,$10
0cb9: da 10     movw  $10,ya
0cbb: ab 12     inc   $12
0cbd: 33 12 c5  bbc1  $12,$0c85
0cc0: 6f        ret

0cc1: 09 47 5e  or    ($5e),($47)
0cc4: da 14     movw  $14,ya
0cc6: da 16     movw  $16,ya
0cc8: 4d        push  x
0cc9: ee        pop   y
0cca: 60        clrc
0ccb: d0 0a     bne   $0cd7
0ccd: 98 1f 16  adc   $16,#$1f
0cd0: e8 00     mov   a,#$00
0cd2: d7 14     mov   ($14)+y,a
0cd4: fc        inc   y
0cd5: 2f 09     bra   $0ce0
0cd7: 98 10 16  adc   $16,#$10
0cda: 3f de 0c  call  $0cde
0cdd: fc        inc   y
0cde: f7 14     mov   a,($14)+y
0ce0: 97 16     adc   a,($16)+y
0ce2: d7 14     mov   ($14)+y,a
0ce4: 6f        ret

0ce5: f4 71     mov   a,$71+x
0ce7: f0 65     beq   $0d4e
0ce9: 9b 71     dec   $71+x
0ceb: f0 05     beq   $0cf2
0ced: e8 02     mov   a,#$02
0cef: de 70 5c  cbne  $70+x,$0d4e
0cf2: f4 80     mov   a,$80+x
0cf4: c4 17     mov   $17,a
0cf6: f4 30     mov   a,$30+x
0cf8: fb 31     mov   y,$31+x
0cfa: da 14     movw  $14,ya
0cfc: 8d 00     mov   y,#$00
0cfe: f7 14     mov   a,($14)+y
0d00: f0 1e     beq   $0d20
0d02: 30 07     bmi   $0d0b
0d04: fc        inc   y
0d05: 30 40     bmi   $0d47
0d07: f7 14     mov   a,($14)+y
0d09: 10 f9     bpl   $0d04
0d0b: 68 c8     cmp   a,#$c8
0d0d: f0 3f     beq   $0d4e
0d0f: 68 ef     cmp   a,#$ef
0d11: f0 29     beq   $0d3c
0d13: 68 e0     cmp   a,#$e0
0d15: 90 30     bcc   $0d47
0d17: 6d        push  y
0d18: fd        mov   y,a
0d19: ae        pop   a
0d1a: 96 30 0b  adc   a,$0b30+y
0d1d: fd        mov   y,a
0d1e: 2f de     bra   $0cfe
0d20: e4 17     mov   a,$17
0d22: f0 23     beq   $0d47
0d24: 8b 17     dec   $17
0d26: d0 0a     bne   $0d32
0d28: f5 31 02  mov   a,$0231+x
0d2b: 2d        push  a
0d2c: f5 30 02  mov   a,$0230+x
0d2f: ee        pop   y
0d30: 2f c8     bra   $0cfa
0d32: f5 41 02  mov   a,$0241+x
0d35: 2d        push  a
0d36: f5 40 02  mov   a,$0240+x
0d39: ee        pop   y
0d3a: 2f be     bra   $0cfa
0d3c: fc        inc   y
0d3d: f7 14     mov   a,($14)+y
0d3f: 2d        push  a
0d40: fc        inc   y
0d41: f7 14     mov   a,($14)+y
0d43: fd        mov   y,a
0d44: ae        pop   a
0d45: 2f b3     bra   $0cfa
0d47: e4 47     mov   a,$47
0d49: 8d 5c     mov   y,#$5c
0d4b: 3f 05 06  call  $0605
0d4e: f2 13     clr7  $13
0d50: f4 a0     mov   a,$a0+x
0d52: f0 19     beq   $0d6d
0d54: f4 a1     mov   a,$a1+x
0d56: f0 04     beq   $0d5c
0d58: 9b a1     dec   $a1+x
0d5a: 2f 11     bra   $0d6d
0d5c: e4 1a     mov   a,$1a
0d5e: 24 47     and   a,$47
0d60: d0 0b     bne   $0d6d
0d62: e2 13     set7  $13
0d64: e8 60     mov   a,#$60
0d66: 8d 03     mov   y,#$03
0d68: 9b a0     dec   $a0+x
0d6a: 3f c4 0c  call  $0cc4
0d6d: 3f b3 0b  call  $0bb3
0d70: f4 b1     mov   a,$b1+x
0d72: f0 4c     beq   $0dc0
0d74: f5 b0 02  mov   a,$02b0+x
0d77: de b0 44  cbne  $b0+x,$0dbe
0d7a: f5 00 01  mov   a,$0100+x
0d7d: 75 b1 02  cmp   a,$02b1+x
0d80: d0 05     bne   $0d87
0d82: f5 c1 02  mov   a,$02c1+x
0d85: 2f 0d     bra   $0d94
0d87: 40        setp
0d88: bb 00     inc   $00+x
0d8a: 20        clrp
0d8b: fd        mov   y,a
0d8c: f0 02     beq   $0d90
0d8e: f4 b1     mov   a,$b1+x
0d90: 60        clrc
0d91: 95 c0 02  adc   a,$02c0+x
0d94: d4 b1     mov   $b1+x,a
0d96: f5 a0 02  mov   a,$02a0+x
0d99: 60        clrc
0d9a: 95 a1 02  adc   a,$02a1+x
0d9d: d5 a0 02  mov   $02a0+x,a
0da0: c4 12     mov   $12,a
0da2: 1c        asl   a
0da3: 1c        asl   a
0da4: 90 02     bcc   $0da8
0da6: 48 ff     eor   a,#$ff
0da8: fd        mov   y,a
0da9: f4 b1     mov   a,$b1+x
0dab: 68 f1     cmp   a,#$f1
0dad: 90 05     bcc   $0db4
0daf: 28 0f     and   a,#$0f
0db1: cf        mul   ya
0db2: 2f 04     bra   $0db8
0db4: cf        mul   ya
0db5: dd        mov   a,y
0db6: 8d 00     mov   y,#$00
0db8: 3f 35 0e  call  $0e35
0dbb: 5f 82 05  jmp   $0582

0dbe: bb b0     inc   $b0+x
0dc0: e3 13 f8  bbs7  $13,$0dbb
0dc3: 6f        ret

0dc4: f2 13     clr7  $13
0dc6: f4 c1     mov   a,$c1+x
0dc8: f0 09     beq   $0dd3
0dca: f5 e0 02  mov   a,$02e0+x
0dcd: de c0 03  cbne  $c0+x,$0dd3
0dd0: 3f 3d 0e  call  $0e3d
0dd3: f5 31 03  mov   a,$0331+x
0dd6: fd        mov   y,a
0dd7: f5 30 03  mov   a,$0330+x
0dda: da 10     movw  $10,ya
0ddc: f4 91     mov   a,$91+x
0dde: f0 0a     beq   $0dea
0de0: f5 41 03  mov   a,$0341+x
0de3: fd        mov   y,a
0de4: f5 40 03  mov   a,$0340+x
0de7: 3f 1f 0e  call  $0e1f
0dea: f3 13 03  bbc7  $13,$0df0
0ded: 3f 80 0c  call  $0c80
0df0: f2 13     clr7  $13
0df2: 3f b3 0b  call  $0bb3
0df5: f4 a0     mov   a,$a0+x
0df7: f0 0e     beq   $0e07
0df9: f4 a1     mov   a,$a1+x
0dfb: d0 0a     bne   $0e07
0dfd: f5 71 03  mov   a,$0371+x
0e00: fd        mov   y,a
0e01: f5 70 03  mov   a,$0370+x
0e04: 3f 1f 0e  call  $0e1f
0e07: f4 b1     mov   a,$b1+x
0e09: f0 b5     beq   $0dc0
0e0b: f5 b0 02  mov   a,$02b0+x
0e0e: de b0 af  cbne  $b0+x,$0dc0
0e11: eb 51     mov   y,$51
0e13: f5 a1 02  mov   a,$02a1+x
0e16: cf        mul   ya
0e17: dd        mov   a,y
0e18: 60        clrc
0e19: 95 a0 02  adc   a,$02a0+x
0e1c: 5f a0 0d  jmp   $0da0

0e1f: e2 13     set7  $13
0e21: cb 12     mov   $12,y
0e23: 3f d0 0b  call  $0bd0
0e26: 6d        push  y
0e27: eb 51     mov   y,$51
0e29: cf        mul   ya
0e2a: cb 14     mov   $14,y
0e2c: 8f 00 15  mov   $15,#$00
0e2f: eb 51     mov   y,$51
0e31: ae        pop   a
0e32: cf        mul   ya
0e33: 7a 14     addw  ya,$14
0e35: 3f d0 0b  call  $0bd0
0e38: 7a 10     addw  ya,$10
0e3a: da 10     movw  $10,ya
0e3c: 6f        ret

0e3d: e2 13     set7  $13
0e3f: eb 51     mov   y,$51
0e41: f5 d1 02  mov   a,$02d1+x
0e44: cf        mul   ya
0e45: dd        mov   a,y
0e46: 60        clrc
0e47: 95 d0 02  adc   a,$02d0+x
0e4a: 1c        asl   a
0e4b: 90 02     bcc   $0e4f
0e4d: 48 ff     eor   a,#$ff
0e4f: fb c1     mov   y,$c1+x
0e51: cf        mul   ya
0e52: dd        mov   a,y
0e53: 48 ff     eor   a,#$ff
0e55: eb 59     mov   y,$59
0e57: cf        mul   ya
0e58: f5 10 02  mov   a,$0210+x
0e5b: cf        mul   ya
0e5c: f5 01 03  mov   a,$0301+x
0e5f: cf        mul   ya
0e60: dd        mov   a,y
0e61: cf        mul   ya
0e62: dd        mov   a,y
0e63: d5 21 03  mov   $0321+x,a
0e66: 6f        ret

0e67: db $00,$01,$03,$07,$0d,$15,$1e,$29
0e6f: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e77: db $7a,$7c,$7d,$7e,$7f

0e7c: db $7f,$00,$00,$00,$00,$00,$00,$00
0e84: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0e8c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0e94: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

0e9c: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c,$61
0ea7: db $63,$4e,$4a,$48,$45,$0e,$49,$4b,$46,$5f,$08

0eb2: dw $08de
0eb4: dw $0965
0eb6: dw $09f4
0eb8: dw $0a8c
0eba: dw $0b2c
0ebc: dw $0bd6
0ebe: dw $0c8b
0ec0: dw $0d4a
0ec2: dw $0e14
0ec4: dw $0eea
0ec6: dw $0fcd
0ec8: dw $10be

0eca: db "*Ver S1.20*"

0ed7: c5 f4 00  mov   $00f4,a
0eda: e8 bb     mov   a,#$bb
0edc: c5 f5 00  mov   $00f5,a
0edf: e5 f4 00  mov   a,$00f4
0ee2: 68 cc     cmp   a,#$cc
0ee4: d0 f9     bne   $0edf
0ee6: 2f 20     bra   $0f08
0ee8: ec f4 00  mov   y,$00f4
0eeb: d0 fb     bne   $0ee8
0eed: 5e f4 00  cmp   y,$00f4
0ef0: d0 0f     bne   $0f01
0ef2: e5 f5 00  mov   a,$00f5
0ef5: cc f4 00  mov   $00f4,y
0ef8: d7 14     mov   ($14)+y,a
0efa: fc        inc   y
0efb: d0 f0     bne   $0eed
0efd: ab 15     inc   $15
0eff: 2f ec     bra   $0eed
0f01: 10 ea     bpl   $0eed
0f03: 5e f4 00  cmp   y,$00f4
0f06: 10 e5     bpl   $0eed
0f08: e5 f6 00  mov   a,$00f6
0f0b: ec f7 00  mov   y,$00f7
0f0e: da 14     movw  $14,ya
0f10: ec f4 00  mov   y,$00f4
0f13: e5 f5 00  mov   a,$00f5
0f16: cc f4 00  mov   $00f4,y
0f19: d0 cd     bne   $0ee8
0f1b: cd 31     mov   x,#$31
0f1d: c9 f1 00  mov   $00f1,x
0f20: 6f        ret

24fd: e8 80     mov   a,#$80
24ff: 8d 5c     mov   y,#$5c
2501: 3f 0d 06  call  $060d
2504: e5 c3 03  mov   a,$03c3
2507: 28 80     and   a,#$80
2509: f0 07     beq   $2512
250b: e2 4a     set7  $4a
250d: 8d 4d     mov   y,#$4d
250f: 3f 0d 06  call  $060d
2512: 8f 00 05  mov   $05,#$00
2515: f2 1a     clr7  $1a
2517: cd 0e     mov   x,#$0e
2519: e5 1f 02  mov   a,$021f
251c: 3f 32 09  call  $0932
251f: e8 00     mov   a,#$00
2521: c5 c9 03  mov   $03c9,a
2524: c4 d1     mov   $d1,a
2526: c4 ae     mov   $ae,a
2528: c4 9e     mov   $9e,a
252a: e5 ee 03  mov   a,$03ee
252d: c5 8f 03  mov   $038f,a
2530: e5 ef 03  mov   a,$03ef
2533: c5 8e 02  mov   $028e,a
2536: 6f        ret

2537: cd 60     mov   x,#$60
2539: d8 9e     mov   $9e,x
253b: c9 c9 03  mov   $03c9,x
253e: e8 00     mov   a,#$00
2540: c5 2e 03  mov   $032e,a
2543: f8 9e     mov   x,$9e
2545: 80        setc
2546: a5 0f 03  sbc   a,$030f
2549: 3f be 0b  call  $0bbe
254c: c5 1e 03  mov   $031e,a
254f: dd        mov   a,y
2550: c5 1f 03  mov   $031f,a
2553: e4 9e     mov   a,$9e
2555: f0 a6     beq   $24fd
2557: 68 01     cmp   a,#$01
2559: f0 a2     beq   $24fd
255b: e8 00     mov   a,#$00
255d: 8d 03     mov   y,#$03
255f: cd 0e     mov   x,#$0e
2561: 8b 9e     dec   $9e
2563: 3f c4 0c  call  $0cc4
2566: e5 0f 03  mov   a,$030f
2569: c5 2f 03  mov   $032f,a
256c: e8 0a     mov   a,#$0a
256e: c5 5f 03  mov   $035f,a
2571: c4 11     mov   $11,a
2573: 8f 00 10  mov   $10,#$00
2576: cd 0e     mov   x,#$0e
2578: 3f 80 0c  call  $0c80
257b: 6f        ret

257c: e5 f8 03  mov   a,$03f8
257f: f0 03     beq   $2584
2581: 8f 00 01  mov   $01,#$00
2584: eb 09     mov   y,$09
2586: 7e 01     cmp   y,$01
2588: f0 17     beq   $25a1
258a: e4 01     mov   a,$01
258c: c4 05     mov   $05,a
258e: c4 09     mov   $09,a
2590: f0 a5     beq   $2537
2592: dd        mov   a,y
2593: f0 20     beq   $25b5
2595: 44 01     eor   a,$01
2597: 28 c0     and   a,#$c0
2599: d0 1a     bne   $25b5
259b: e4 d1     mov   a,$d1
259d: d0 2d     bne   $25cc
259f: 2f 77     bra   $2618
25a1: e4 01     mov   a,$01
25a3: d0 07     bne   $25ac
25a5: e9 c9 03  mov   x,$03c9
25a8: f0 0a     beq   $25b4
25aa: 2f a7     bra   $2553
25ac: e4 d1     mov   a,$d1
25ae: d0 1c     bne   $25cc
25b0: e4 05     mov   a,$05
25b2: d0 7b     bne   $262f
25b4: 6f        ret

25b5: 8f 02 d1  mov   $d1,#$02
25b8: e8 80     mov   a,#$80
25ba: 8d 5c     mov   y,#$5c
25bc: 3f 0d 06  call  $060d
25bf: e2 1a     set7  $1a
25c1: e8 00     mov   a,#$00
25c3: c5 8e 02  mov   $028e,a
25c6: c4 ae     mov   $ae,a
25c8: c5 8f 03  mov   $038f,a
25cb: 6f        ret

25cc: 6e d1 fc  dbnz  $d1,$25cb
25cf: 3f 71 26  call  $2671
25d2: e8 80     mov   a,#$80
25d4: 3f 79 3e  call  $3e79
25d7: e4 05     mov   a,$05
25d9: 30 13     bmi   $25ee
25db: c3 05 08  bbs6  $05,$25e6
25de: 8d 70     mov   y,#$70
25e0: cd 96     mov   x,#$96
25e2: e8 a0     mov   a,#$a0
25e4: 2f 19     bra   $25ff
25e6: 8d f7     mov   y,#$f7
25e8: cd b2     mov   x,#$b2
25ea: e8 ff     mov   a,#$ff
25ec: 2f 11     bra   $25ff
25ee: c3 05 08  bbs6  $05,$25f9
25f1: 8d ff     mov   y,#$ff
25f3: cd b2     mov   x,#$b2
25f5: e8 ff     mov   a,#$ff
25f7: 2f 06     bra   $25ff
25f9: 8d bb     mov   y,#$bb
25fb: cd 96     mov   x,#$96
25fd: e8 e0     mov   a,#$e0
25ff: cc cb 03  mov   $03cb,y
2602: c9 c6 03  mov   $03c6,x
2605: c5 fc 03  mov   $03fc,a
2608: 3f 48 06  call  $0648
260b: f2 4a     clr7  $4a
260d: e4 4a     mov   a,$4a
260f: 8d 4d     mov   y,#$4d
2611: 3f 0d 06  call  $060d
2614: e8 01     mov   a,#$01
2616: d0 02     bne   $261a
2618: e8 30     mov   a,#$30
261a: c4 ae     mov   $ae,a
261c: 8f 00 af  mov   $af,#$00
261f: e4 05     mov   a,$05
2621: 28 3f     and   a,#$3f
2623: 5d        mov   x,a
2624: f5 b4 26  mov   a,$26b4+x
2627: cd 0e     mov   x,#$0e
2629: d8 44     mov   $44,x
262b: 3f 9b 0b  call  $0b9b
262e: 6f        ret

262f: f2 13     clr7  $13
2631: e4 ae     mov   a,$ae
2633: f0 27     beq   $265c
2635: cd 0e     mov   x,#$0e
2637: 3f 5f 3e  call  $3e5f
263a: e5 fc 03  mov   a,$03fc
263d: c5 2f 03  mov   $032f,a
2640: c5 0f 03  mov   $030f,a
2643: e8 0a     mov   a,#$0a
2645: c5 5f 03  mov   $035f,a
2648: c5 3f 03  mov   $033f,a
264b: cd 0e     mov   x,#$0e
264d: f5 31 03  mov   a,$0331+x
2650: fd        mov   y,a
2651: f5 30 03  mov   a,$0330+x
2654: da 10     movw  $10,ya
2656: e8 0e     mov   a,#$0e
2658: 3f 80 0c  call  $0c80
265b: 6f        ret

265c: e8 70     mov   a,#$70
265e: c4 ae     mov   $ae,a
2660: 8f 00 af  mov   $af,#$00
2663: e4 18     mov   a,$18
2665: 28 03     and   a,#$03
2667: 08 a4     or    a,#$a4
2669: cd 0e     mov   x,#$0e
266b: d8 44     mov   $44,x
266d: 3f 9b 0b  call  $0b9b
2670: 6f        ret

2671: e4 05     mov   a,$05
2673: 28 c0     and   a,#$c0
2675: 60        clrc
2676: 3c        rol   a
2677: 3c        rol   a
2678: 3c        rol   a
2679: 5d        mov   x,a
267a: 8d 06     mov   y,#$06
267c: cf        mul   ya
267d: 5d        mov   x,a
267e: 8d 74     mov   y,#$74
2680: 8f 04 12  mov   $12,#$04
2683: f5 9c 26  mov   a,$269c+x
2686: 3f 0d 06  call  $060d
2689: 3d        inc   x
268a: fc        inc   y
268b: 6e 12 f5  dbnz  $12,$2683
268e: f5 9c 26  mov   a,$269c+x
2691: c5 2f 02  mov   $022f,a
2694: 3d        inc   x
2695: f5 9c 26  mov   a,$269c+x
2698: c5 2e 02  mov   $022e,a
269b: 6f        ret

269c: db $20,$00,$00,$e8,$04,$00
26a2: db $20,$00,$00,$ef,$00,$60
26a8: db $20,$00,$00,$e5,$00,$80
26ae: db $20,$00,$00,$e8,$01,$c0
26b4: db $a4,$a6,$a7,$a8,$a6,$a7,$a8,$a9,$b0,$b0,$b0,$b0,$98,$98,$98,$98

26c4: e8 00     mov   a,#$00
26c6: c4 06     mov   $06,a
26c8: c4 0d     mov   $0d,a
26ca: c5 f6 03  mov   $03f6,a
26cd: c4 ac     mov   $ac,a
26cf: c4 9c     mov   $9c,a
26d1: c4 9d     mov   $9d,a
26d3: c5 2d 03  mov   $032d,a
26d6: c5 0d 03  mov   $030d,a
26d9: e5 ec 03  mov   a,$03ec
26dc: c5 8d 03  mov   $038d,a
26df: e5 ed 03  mov   a,$03ed
26e2: c5 8c 02  mov   $028c,a
26e5: d2 1a     clr6  $1a
26e7: cd 0c     mov   x,#$0c
26e9: e5 1d 02  mov   a,$021d
26ec: 3f 32 09  call  $0932
26ef: e5 c3 03  mov   a,$03c3
26f2: 28 40     and   a,#$40
26f4: f0 07     beq   $26fd
26f6: c2 4a     set6  $4a
26f8: 8d 4d     mov   y,#$4d
26fa: 3f 0d 06  call  $060d
26fd: e8 40     mov   a,#$40
26ff: 8d 5c     mov   y,#$5c
2701: 5f 0d 06  jmp   $060d
2704: e9 f6 03  mov   x,$03f6
2707: d8 9c     mov   $9c,x
2709: e8 00     mov   a,#$00
270b: c5 2c 03  mov   $032c,a
270e: f8 9c     mov   x,$9c
2710: 80        setc
2711: a5 0d 03  sbc   a,$030d
2714: 3f be 0b  call  $0bbe
2717: c5 1c 03  mov   $031c,a
271a: dd        mov   a,y
271b: c5 1d 03  mov   $031d,a
271e: e4 9c     mov   a,$9c
2720: d0 01     bne   $2723
2722: 6f        ret

2723: 68 01     cmp   a,#$01
2725: f0 9d     beq   $26c4
2727: e8 00     mov   a,#$00
2729: 8d 03     mov   y,#$03
272b: cd 0c     mov   x,#$0c
272d: 8b 9c     dec   $9c
272f: 3f c4 0c  call  $0cc4
2732: e5 0d 03  mov   a,$030d
2735: c5 2d 03  mov   $032d,a
2738: e5 fb 03  mov   a,$03fb
273b: c5 5d 03  mov   $035d,a
273e: c4 11     mov   $11,a
2740: 8f 00 10  mov   $10,#$00
2743: cd 0c     mov   x,#$0c
2745: 3f 80 0c  call  $0c80
2748: 6f        ret

2749: e5 f8 03  mov   a,$03f8
274c: f0 03     beq   $2751
274e: 8f 00 02  mov   $02,#$00
2751: eb 0a     mov   y,$0a
2753: 7e 02     cmp   y,$02
2755: f0 26     beq   $277d
2757: e4 02     mov   a,$02
2759: c4 06     mov   $06,a
275b: c4 0a     mov   $0a,a
275d: 28 c0     and   a,#$c0
275f: f0 a3     beq   $2704
2761: dd        mov   a,y
2762: 44 02     eor   a,$02
2764: 28 0f     and   a,#$0f
2766: d0 11     bne   $2779
2768: e4 0d     mov   a,$0d
276a: d0 38     bne   $27a4
276c: dd        mov   a,y
276d: 44 02     eor   a,$02
276f: 28 30     and   a,#$30
2771: f0 03     beq   $2776
2773: 5f ff 27  jmp   $27ff
2776: 5f 39 28  jmp   $2839
2779: e4 02     mov   a,$02
277b: d0 10     bne   $278d
277d: e4 02     mov   a,$02
277f: f0 9d     beq   $271e
2781: e4 0d     mov   a,$0d
2783: d0 1f     bne   $27a4
2785: e4 06     mov   a,$06
2787: f0 03     beq   $278c
2789: 5f 5f 28  jmp   $285f
278c: 6f        ret

278d: 8f 02 0d  mov   $0d,#$02
2790: e8 40     mov   a,#$40
2792: 8d 5c     mov   y,#$5c
2794: 3f 0d 06  call  $060d
2797: c2 1a     set6  $1a
2799: e8 00     mov   a,#$00
279b: c5 8c 02  mov   $028c,a
279e: c4 ac     mov   $ac,a
27a0: c5 8d 03  mov   $038d,a
27a3: 6f        ret

27a4: 6e 0d e5  dbnz  $0d,$278c
27a7: e4 06     mov   a,$06
27a9: 28 0f     and   a,#$0f
27ab: 80        setc
27ac: a8 01     sbc   a,#$01
27ae: 5d        mov   x,a
27af: f5 21 29  mov   a,$2921+x
27b2: c5 f6 03  mov   $03f6,a
27b5: f5 30 29  mov   a,$2930+x
27b8: c5 f9 03  mov   $03f9,a
27bb: 7d        mov   a,x
27bc: 3f 9d 28  call  $289d
27bf: e4 06     mov   a,$06
27c1: 28 30     and   a,#$30
27c3: d0 05     bne   $27ca
27c5: ec f9 03  mov   y,$03f9
27c8: d0 02     bne   $27cc
27ca: 8d ad     mov   y,#$ad
27cc: 8f 0c 44  mov   $44,#$0c
27cf: cd 0c     mov   x,#$0c
27d1: 3f 18 05  call  $0518
27d4: e8 40     mov   a,#$40
27d6: 3f 79 3e  call  $3e79
27d9: d2 4a     clr6  $4a
27db: e4 4a     mov   a,$4a
27dd: 8d 4d     mov   y,#$4d
27df: 3f 0d 06  call  $060d
27e2: e4 06     mov   a,$06
27e4: 28 30     and   a,#$30
27e6: 9f        xcn   a
27e7: 5d        mov   x,a
27e8: f5 1d 29  mov   a,$291d+x
27eb: c5 2d 03  mov   $032d,a
27ee: c5 0d 03  mov   $030d,a
27f1: e4 06     mov   a,$06
27f3: 28 c0     and   a,#$c0
27f5: 9f        xcn   a
27f6: 5c        lsr   a
27f7: 5c        lsr   a
27f8: 5d        mov   x,a
27f9: f5 19 29  mov   a,$2919+x
27fc: c5 3d 03  mov   $033d,a
27ff: e9 f6 03  mov   x,$03f6
2802: d8 9c     mov   $9c,x
2804: e4 06     mov   a,$06
2806: 28 30     and   a,#$30
2808: d0 05     bne   $280f
280a: e5 f9 03  mov   a,$03f9
280d: d0 02     bne   $2811
280f: e8 ad     mov   a,#$ad
2811: d8 ac     mov   $ac,x
2813: 8f 00 ad  mov   $ad,#$00
2816: cd 0c     mov   x,#$0c
2818: d8 44     mov   $44,x
281a: 3f 9b 0b  call  $0b9b
281d: e4 06     mov   a,$06
281f: 28 30     and   a,#$30
2821: 9f        xcn   a
2822: 5d        mov   x,a
2823: f5 1d 29  mov   a,$291d+x
2826: c5 2c 03  mov   $032c,a
2829: f8 9c     mov   x,$9c
282b: 80        setc
282c: a5 0d 03  sbc   a,$030d
282f: 3f be 0b  call  $0bbe
2832: c5 1c 03  mov   $031c,a
2835: dd        mov   a,y
2836: c5 1d 03  mov   $031d,a
2839: e4 06     mov   a,$06
283b: 28 c0     and   a,#$c0
283d: 9f        xcn   a
283e: 5c        lsr   a
283f: 5c        lsr   a
2840: 5d        mov   x,a
2841: f5 19 29  mov   a,$2919+x
2844: c5 fb 03  mov   $03fb,a
2847: c5 5c 03  mov   $035c,a
284a: 80        setc
284b: a5 3d 03  sbc   a,$033d
284e: e9 f6 03  mov   x,$03f6
2851: d8 9d     mov   $9d,x
2853: 3f be 0b  call  $0bbe
2856: da 10     movw  $10,ya
2858: c5 4c 03  mov   $034c,a
285b: dd        mov   a,y
285c: c5 4d 03  mov   $034d,a
285f: e4 9c     mov   a,$9c
2861: f0 11     beq   $2874
2863: e8 00     mov   a,#$00
2865: 8d 03     mov   y,#$03
2867: cd 0c     mov   x,#$0c
2869: 8b 9c     dec   $9c
286b: 3f c4 0c  call  $0cc4
286e: e5 0d 03  mov   a,$030d
2871: c5 2d 03  mov   $032d,a
2874: f2 13     clr7  $13
2876: e4 ac     mov   a,$ac
2878: f0 05     beq   $287f
287a: cd 0c     mov   x,#$0c
287c: 3f 5f 3e  call  $3e5f
287f: e4 9d     mov   a,$9d
2881: f0 19     beq   $289c
2883: e8 30     mov   a,#$30
2885: 8d 03     mov   y,#$03
2887: cd 0c     mov   x,#$0c
2889: 8b 9d     dec   $9d
288b: 3f c4 0c  call  $0cc4
288e: e5 3d 03  mov   a,$033d
2891: fd        mov   y,a
2892: e5 3c 03  mov   a,$033c
2895: da 10     movw  $10,ya
2897: cd 0c     mov   x,#$0c
2899: 3f 80 0c  call  $0c80
289c: 6f        ret

289d: 8d 06     mov   y,#$06
289f: cf        mul   ya
28a0: 5d        mov   x,a
28a1: 8d 64     mov   y,#$64
28a3: 8f 04 12  mov   $12,#$04
28a6: f5 bf 28  mov   a,$28bf+x
28a9: 3f 0d 06  call  $060d
28ac: 3d        inc   x
28ad: fc        inc   y
28ae: 6e 12 f5  dbnz  $12,$28a6
28b1: f5 bf 28  mov   a,$28bf+x
28b4: c5 2d 02  mov   $022d,a
28b7: 3d        inc   x
28b8: f5 bf 28  mov   a,$28bf+x
28bb: c5 2c 02  mov   $022c,a
28be: 6f        ret

28bf: db $20,$0c,$e0,$70,$02,$80
28c5: db $20,$0c,$e0,$60,$07,$00
28cb: db $00,$0e,$e0,$70,$03,$00
28d1: db $0a,$0e,$e0,$70,$01,$80
28d7: db $01,$0e,$e0,$7f,$01,$00
28dd: db $01,$0e,$e0,$28,$07,$00
28e3: db $2d,$0e,$e0,$70,$01,$00
28e9: db $03,$0e,$e0,$7f,$01,$40
28ef: db $03,$0e,$e0,$70,$03,$00
28f5: db $13,$0e,$e0,$60,$00,$60
28fb: db $0a,$0e,$e0,$7f,$00,$60
2901: db $0b,$0e,$e0,$60,$05,$00
2907: db $02,$0e,$e0,$7f,$01,$80
290d: db $13,$0e,$e0,$70,$01,$00
2913: db $02,$0e,$e0,$40,$08,$00

2919: db $0a,$14,$0a,$00
291d: db $ff,$90,$60,$30

2921: db $30,$18,$40,$40,$50,$28,$20,$60,$40,$40,$40,$40,$48,$20,$20
2930: db $ab,$a1,$ad,$ad,$ad,$a9,$ac,$ad,$ad,$ad,$ad,$ad,$ad,$ad,$ab

293f: f8 03     mov   x,$03
2941: d8 11     mov   $11,x
2943: f5 df 0f  mov   a,$0fdf+x
2946: c4 10     mov   $10,a
2948: 9f        xcn   a
2949: 28 0f     and   a,#$0f
294b: 1c        asl   a
294c: fd        mov   y,a
294d: f6 a0 03  mov   a,$03a0+y
2950: f0 0e     beq   $2960
2952: 5d        mov   x,a
2953: f5 df 0f  mov   a,$0fdf+x
2956: 80        setc
2957: 64 10     cmp   a,$10
2959: f0 05     beq   $2960
295b: 90 03     bcc   $2960
295d: 5f ba 3e  jmp   $3eba
2960: e4 11     mov   a,$11
2962: d6 a0 03  mov   $03a0+y,a
2965: cb 10     mov   $10,y
2967: e8 01     mov   a,#$01
2969: 4b 10     lsr   $10
296b: f0 04     beq   $2971
296d: 1c        asl   a
296e: 6e 10 fc  dbnz  $10,$296d
2971: c5 c1 03  mov   $03c1,a
2974: cc c0 03  mov   $03c0,y
2977: e5 c1 03  mov   a,$03c1
297a: 04 1a     or    a,$1a
297c: c4 1a     mov   $1a,a
297e: 5f c5 29  jmp   $29c5
2981: e5 f7 00  mov   a,$00f7
2984: 65 f7 00  cmp   a,$00f7
2987: d0 f8     bne   $2981
2989: c5 f7 00  mov   $00f7,a
298c: fd        mov   y,a
298d: e4 0b     mov   a,$0b
298f: cb 0b     mov   $0b,y
2991: 2e 0b 02  cbne  $0b,$2996
2994: 8d 00     mov   y,#$00
2996: cb 03     mov   $03,y
2998: e4 03     mov   a,$03
299a: f0 04     beq   $29a0
299c: 68 b0     cmp   a,#$b0
299e: 90 22     bcc   $29c2
29a0: 6f        ret

29a1: e5 f8 03  mov   a,$03f8
29a4: f0 18     beq   $29be
29a6: e8 00     mov   a,#$00
29a8: c5 f8 03  mov   $03f8,a
29ab: 3f 96 3e  call  $3e96
29ae: 2f 0e     bra   $29be
29b0: e4 1a     mov   a,$1a
29b2: 28 c0     and   a,#$c0
29b4: 48 ff     eor   a,#$ff
29b6: c5 f8 03  mov   $03f8,a
29b9: 8d 5c     mov   y,#$5c
29bb: 3f 0d 06  call  $060d
29be: e4 03     mov   a,$03
29c0: 2f 13     bra   $29d5
29c2: 5f 3f 29  jmp   $293f
29c5: 3f a6 3e  call  $3ea6
29c8: e9 c0 03  mov   x,$03c0
29cb: e4 03     mov   a,$03
29cd: 68 01     cmp   a,#$01
29cf: f0 d0     beq   $29a1
29d1: 68 02     cmp   a,#$02
29d3: f0 db     beq   $29b0
29d5: d5 a0 03  mov   $03a0+x,a
29d8: 68 0b     cmp   a,#$0b
29da: 90 0f     bcc   $29eb
29dc: 68 0e     cmp   a,#$0e
29de: 90 08     bcc   $29e8
29e0: 68 15     cmp   a,#$15
29e2: 90 07     bcc   $29eb
29e4: 68 18     cmp   a,#$18
29e6: b0 03     bcs   $29eb
29e8: 3f 87 3e  call  $3e87
29eb: e8 03     mov   a,#$03
29ed: d5 a1 03  mov   $03a1+x,a
29f0: e8 00     mov   a,#$00
29f2: d5 80 02  mov   $0280+x,a
29f5: d4 a0     mov   $a0+x,a
29f7: d5 81 03  mov   $0381+x,a
29fa: d5 f0 02  mov   $02f0+x,a
29fd: e5 c1 03  mov   a,$03c1
2a00: 05 07 00  or    a,$0007
2a03: c5 07 00  mov   $0007,a
2a06: e5 c1 03  mov   a,$03c1
2a09: 8d 5c     mov   y,#$5c
2a0b: 3f 0d 06  call  $060d
2a0e: f5 a0 03  mov   a,$03a0+x
2a11: 5d        mov   x,a
2a12: f5 20 0f  mov   a,$0f20+x
2a15: c4 03     mov   $03,a
2a17: d0 a9     bne   $29c2
2a19: 6f        ret

2a1a: e5 07 00  mov   a,$0007
2a1d: c5 ce 03  mov   $03ce,a
2a20: f0 2f     beq   $2a51
2a22: cd 0a     mov   x,#$0a
2a24: e8 20     mov   a,#$20
2a26: c5 c1 03  mov   $03c1,a
2a29: 0c ce 03  asl   $03ce
2a2c: 0c ce 03  asl   $03ce
2a2f: 0c ce 03  asl   $03ce
2a32: 90 16     bcc   $2a4a
2a34: c9 c0 03  mov   $03c0,x
2a37: 7d        mov   a,x
2a38: 9f        xcn   a
2a39: 5c        lsr   a
2a3a: c5 c2 03  mov   $03c2,a
2a3d: f5 a1 03  mov   a,$03a1+x
2a40: d0 10     bne   $2a52
2a42: f5 a0 03  mov   a,$03a0+x
2a45: f0 03     beq   $2a4a
2a47: 5f 0c 2b  jmp   $2b0c
2a4a: 4c c1 03  lsr   $03c1
2a4d: 1d        dec   x
2a4e: 1d        dec   x
2a4f: 10 de     bpl   $2a2f
2a51: 6f        ret

2a52: c9 c0 03  mov   $03c0,x
2a55: f5 a1 03  mov   a,$03a1+x
2a58: 9c        dec   a
2a59: d5 a1 03  mov   $03a1+x,a
2a5c: f0 03     beq   $2a61
2a5e: 5f 4a 2a  jmp   $2a4a
2a61: f5 a0 03  mov   a,$03a0+x
2a64: 1c        asl   a
2a65: fd        mov   y,a
2a66: b0 13     bcs   $2a7b
2a68: f6 9e 10  mov   a,$109e+y
2a6b: d5 91 03  mov   $0391+x,a
2a6e: c4 2d     mov   $2d,a
2a70: f6 9d 10  mov   a,$109d+y
2a73: d5 90 03  mov   $0390+x,a
2a76: c4 2c     mov   $2c,a
2a78: 5f 29 2b  jmp   $2b29
2a7b: f6 9e 11  mov   a,$119e+y
2a7e: d5 91 03  mov   $0391+x,a
2a81: c4 2d     mov   $2d,a
2a83: f6 9d 11  mov   a,$119d+y
2a86: d5 90 03  mov   $0390+x,a
2a89: c4 2c     mov   $2c,a
2a8b: 5f 29 2b  jmp   $2b29
2a8e: e9 c0 03  mov   x,$03c0
2a91: f5 a0 03  mov   a,$03a0+x
2a94: 68 0b     cmp   a,#$0b
2a96: 90 14     bcc   $2aac
2a98: 68 0e     cmp   a,#$0e
2a9a: 90 08     bcc   $2aa4
2a9c: 68 15     cmp   a,#$15
2a9e: 90 0c     bcc   $2aac
2aa0: 68 18     cmp   a,#$18
2aa2: b0 08     bcs   $2aac
2aa4: e5 ca 03  mov   a,$03ca
2aa7: d0 03     bne   $2aac
2aa9: 3f 96 3e  call  $3e96
2aac: e8 00     mov   a,#$00
2aae: d5 a0 03  mov   $03a0+x,a
2ab1: d4 a0     mov   $a0+x,a
2ab3: f5 d0 03  mov   a,$03d0+x
2ab6: d5 f0 02  mov   $02f0+x,a
2ab9: f5 e0 03  mov   a,$03e0+x
2abc: d5 81 03  mov   $0381+x,a
2abf: f5 e1 03  mov   a,$03e1+x
2ac2: d5 80 02  mov   $0280+x,a
2ac5: e4 1a     mov   a,$1a
2ac7: 80        setc
2ac8: a5 c1 03  sbc   a,$03c1
2acb: c4 1a     mov   $1a,a
2acd: e5 07 00  mov   a,$0007
2ad0: 80        setc
2ad1: a5 c1 03  sbc   a,$03c1
2ad4: c5 07 00  mov   $0007,a
2ad7: d8 44     mov   $44,x
2ad9: f5 11 02  mov   a,$0211+x
2adc: 3f 32 09  call  $0932
2adf: e5 c1 03  mov   a,$03c1
2ae2: 25 c3 03  and   a,$03c3
2ae5: f0 1b     beq   $2b02
2ae7: 24 4a     and   a,$4a
2ae9: d0 17     bne   $2b02
2aeb: e4 4a     mov   a,$4a
2aed: 60        clrc
2aee: 85 c1 03  adc   a,$03c1
2af1: c4 4a     mov   $4a,a
2af3: 8d 4d     mov   y,#$4d
2af5: 3f 0d 06  call  $060d
2af8: e5 f3 03  mov   a,$03f3
2afb: 80        setc
2afc: a5 c1 03  sbc   a,$03c1
2aff: c5 f3 03  mov   $03f3,a
2b02: e9 c0 03  mov   x,$03c0
2b05: 6f        ret

2b06: 3f 8e 2a  call  $2a8e
2b09: 5f 4a 2a  jmp   $2a4a
2b0c: 3f a6 3e  call  $3ea6
2b0f: c9 c0 03  mov   $03c0,x
2b12: f5 91 03  mov   a,$0391+x
2b15: fd        mov   y,a
2b16: f5 90 03  mov   a,$0390+x
2b19: da 2c     movw  $2c,ya
2b1b: f5 b0 03  mov   a,$03b0+x
2b1e: 9c        dec   a
2b1f: d5 b0 03  mov   $03b0+x,a
2b22: f0 03     beq   $2b27
2b24: 5f 94 2b  jmp   $2b94
2b27: 3a 2c     incw  $2c
2b29: e5 c0 03  mov   a,$03c0
2b2c: 9f        xcn   a
2b2d: 5c        lsr   a
2b2e: c5 c2 03  mov   $03c2,a
2b31: cd 00     mov   x,#$00
2b33: e7 2c     mov   a,($2c+x)
2b35: f0 cf     beq   $2b06
2b37: 30 36     bmi   $2b6f
2b39: ec c0 03  mov   y,$03c0
2b3c: d6 b1 03  mov   $03b1+y,a
2b3f: 3a 2c     incw  $2c
2b41: e7 2c     mov   a,($2c+x)
2b43: c4 10     mov   $10,a
2b45: 30 28     bmi   $2b6f
2b47: ec c2 03  mov   y,$03c2
2b4a: 3f 0d 06  call  $060d
2b4d: cd 00     mov   x,#$00
2b4f: 3a 2c     incw  $2c
2b51: e7 2c     mov   a,($2c+x)
2b53: 10 0d     bpl   $2b62
2b55: 5d        mov   x,a
2b56: e4 10     mov   a,$10
2b58: ec c2 03  mov   y,$03c2
2b5b: fc        inc   y
2b5c: 3f 0d 06  call  $060d
2b5f: 7d        mov   a,x
2b60: 2f 0d     bra   $2b6f
2b62: ec c2 03  mov   y,$03c2
2b65: fc        inc   y
2b66: 3f 0d 06  call  $060d
2b69: cd 00     mov   x,#$00
2b6b: 3a 2c     incw  $2c
2b6d: e7 2c     mov   a,($2c+x)
2b6f: 68 e0     cmp   a,#$e0
2b71: d0 03     bne   $2b76
2b73: 5f 20 3e  jmp   $3e20
2b76: 68 f9     cmp   a,#$f9
2b78: f0 47     beq   $2bc1
2b7a: 68 f1     cmp   a,#$f1
2b7c: f0 58     beq   $2bd6
2b7e: e9 c0 03  mov   x,$03c0
2b81: fd        mov   y,a
2b82: 3f 18 05  call  $0518
2b85: e5 c1 03  mov   a,$03c1
2b88: 3f 79 3e  call  $3e79
2b8b: e9 c0 03  mov   x,$03c0
2b8e: f5 b1 03  mov   a,$03b1+x
2b91: d5 b0 03  mov   $03b0+x,a
2b94: f2 13     clr7  $13
2b96: e9 c0 03  mov   x,$03c0
2b99: f4 a0     mov   a,$a0+x
2b9b: f0 05     beq   $2ba2
2b9d: 3f 5f 3e  call  $3e5f
2ba0: 2f 0f     bra   $2bb1
2ba2: e8 02     mov   a,#$02
2ba4: 75 b0 03  cmp   a,$03b0+x
2ba7: d0 08     bne   $2bb1
2ba9: e5 c1 03  mov   a,$03c1
2bac: 8d 5c     mov   y,#$5c
2bae: 3f 0d 06  call  $060d
2bb1: e9 c0 03  mov   x,$03c0
2bb4: e4 2d     mov   a,$2d
2bb6: d5 91 03  mov   $0391+x,a
2bb9: e4 2c     mov   a,$2c
2bbb: d5 90 03  mov   $0390+x,a
2bbe: 5f 4a 2a  jmp   $2a4a
2bc1: cd 00     mov   x,#$00
2bc3: 3a 2c     incw  $2c
2bc5: e7 2c     mov   a,($2c+x)
2bc7: e9 c0 03  mov   x,$03c0
2bca: d8 44     mov   $44,x
2bcc: fd        mov   y,a
2bcd: 3f 18 05  call  $0518
2bd0: e5 c1 03  mov   a,$03c1
2bd3: 3f 79 3e  call  $3e79
2bd6: cd 00     mov   x,#$00
2bd8: 3a 2c     incw  $2c
2bda: e7 2c     mov   a,($2c+x)
2bdc: e9 c0 03  mov   x,$03c0
2bdf: d4 a1     mov   $a1+x,a
2be1: cd 00     mov   x,#$00
2be3: 3a 2c     incw  $2c
2be5: e7 2c     mov   a,($2c+x)
2be7: e9 c0 03  mov   x,$03c0
2bea: d4 a0     mov   $a0+x,a
2bec: 2d        push  a
2bed: cd 00     mov   x,#$00
2bef: 3a 2c     incw  $2c
2bf1: e7 2c     mov   a,($2c+x)
2bf3: ee        pop   y
2bf4: e9 c0 03  mov   x,$03c0
2bf7: d8 44     mov   $44,x
2bf9: 3f 9b 0b  call  $0b9b
2bfc: 5f 8b 2b  jmp   $2b8b

3e20: cd 00     mov   x,#$00
3e22: 3a 2c     incw  $2c
3e24: e7 2c     mov   a,($2c+x)
3e26: 8d 06     mov   y,#$06
3e28: cf        mul   ya
3e29: 8f 8f d2  mov   $d2,#$8f
3e2c: 8f 23 d3  mov   $d3,#$23
3e2f: 7a d2     addw  ya,$d2
3e31: da d2     movw  $d2,ya
3e33: 8d 00     mov   y,#$00
3e35: e5 c2 03  mov   a,$03c2
3e38: 08 04     or    a,#$04
3e3a: 5d        mov   x,a
3e3b: 8f 04 12  mov   $12,#$04
3e3e: f7 d2     mov   a,($d2)+y
3e40: 6d        push  y
3e41: 4d        push  x
3e42: ee        pop   y
3e43: 3f 0d 06  call  $060d
3e46: 6d        push  y
3e47: ce        pop   x
3e48: ee        pop   y
3e49: 3d        inc   x
3e4a: fc        inc   y
3e4b: 6e 12 f0  dbnz  $12,$3e3e
3e4e: f7 d2     mov   a,($d2)+y
3e50: e9 c0 03  mov   x,$03c0
3e53: d5 21 02  mov   $0221+x,a
3e56: fc        inc   y
3e57: f7 d2     mov   a,($d2)+y
3e59: d5 20 02  mov   $0220+x,a
3e5c: 5f 27 2b  jmp   $2b27

3e5f: e2 13     set7  $13
3e61: e8 60     mov   a,#$60
3e63: 8d 03     mov   y,#$03
3e65: 9b a0     dec   $a0+x
3e67: 3f c4 0c  call  $0cc4
3e6a: f5 61 03  mov   a,$0361+x
3e6d: fd        mov   y,a
3e6e: f5 60 03  mov   a,$0360+x
3e71: da 10     movw  $10,ya
3e73: 8f 00 47  mov   $47,#$00
3e76: 5f 82 05  jmp   $0582

3e79: 2d        push  a
3e7a: 8d 5c     mov   y,#$5c
3e7c: e8 00     mov   a,#$00
3e7e: 3f 0d 06  call  $060d
3e81: ae        pop   a
3e82: 8d 4c     mov   y,#$4c
3e84: 5f 0d 06  jmp   $060d

3e87: e5 f1 03  mov   a,$03f1
3e8a: d0 19     bne   $3ea5
3e8c: e4 59     mov   a,$59
3e8e: c5 f1 03  mov   $03f1,a
3e91: e8 88     mov   a,#$88
3e93: c4 59     mov   $59,a
3e95: 6f        ret

3e96: e5 f1 03  mov   a,$03f1
3e99: f0 0a     beq   $3ea5
3e9b: e5 f1 03  mov   a,$03f1
3e9e: c4 59     mov   $59,a
3ea0: e8 00     mov   a,#$00
3ea2: c5 f1 03  mov   $03f1,a
3ea5: 6f        ret

3ea6: e5 c1 03  mov   a,$03c1
3ea9: 24 4a     and   a,$4a
3eab: f0 0d     beq   $3eba
3ead: e4 4a     mov   a,$4a
3eaf: 80        setc
3eb0: a5 c1 03  sbc   a,$03c1
3eb3: c4 4a     mov   $4a,a
3eb5: 8d 4d     mov   y,#$4d
3eb7: 3f 0d 06  call  $060d
3eba: 6f        ret
