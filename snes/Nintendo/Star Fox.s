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

0eca: 2a 56 65 72 20 53 31 2e 32 30 2a e8 aa

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
