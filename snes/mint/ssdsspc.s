02dc: 20        clrp
02dd: cd ff     mov   x,#$ff
02df: bd        mov   sp,x
02e0: 8f ff f4  mov   $f4,#$ff
02e3: e8 00     mov   a,#$00
02e5: 5d        mov   x,a
02e6: af        mov   (x)+,a
02e7: c8 e4     cmp   x,#$e4
02e9: d0 fb     bne   $02e6
02eb: 8f 00 f1  mov   $f1,#$00
02ee: 8f 5d f2  mov   $f2,#$5d
02f1: 8f 12 f3  mov   $f3,#$12
02f4: 8f 6c f2  mov   $f2,#$6c
02f7: 8f e0 f3  mov   $f3,#$e0
02fa: 8f 6d f2  mov   $f2,#$6d
02fd: 8f e0 f3  mov   $f3,#$e0
0300: e8 ff     mov   a,#$ff
0302: c4 19     mov   $19,a
0304: e8 04     mov   a,#$04
0306: 3f 34 10  call  $1034
0309: 3f ff 0f  call  $0fff
030c: 8d 64     mov   y,#$64
030e: e4 fd     mov   a,$fd
0310: f0 fc     beq   $030e
0312: dc        dec   y
0313: d0 f9     bne   $030e
0315: 8f 35 0c  mov   $0c,#$35
0318: 8f ab 0d  mov   $0d,#$ab
031b: 8f 20 17  mov   $17,#$20
031e: 3f 1c 0b  call  $0b1c
0321: 3f 7a 0b  call  $0b7a
0324: 8f 31 f1  mov   $f1,#$31
0327: 8f 31 f1  mov   $f1,#$31
032a: 3f ff 0f  call  $0fff
032d: 3f b3 0e  call  $0eb3
0330: e8 00     mov   a,#$00
0332: c4 f4     mov   $f4,a
0334: c4 f5     mov   $f5,a
0336: 3f ee 0f  call  $0fee
0339: 3f 80 09  call  $0980
033c: eb fd     mov   y,$fd
033e: f0 f6     beq   $0336
0340: 6d        push  y
0341: 3f 4a 03  call  $034a
0344: ee        pop   y
0345: dc        dec   y
0346: d0 f8     bne   $0340
0348: 2f ec     bra   $0336
034a: 3f 3b 0e  call  $0e3b
034d: 3f 65 0e  call  $0e65
0350: 3f 64 03  call  $0364
0353: 3f 7e 03  call  $037e
0356: 3f 8c 03  call  $038c
0359: cd 00     mov   x,#$00
035b: 7d        mov   a,x
035c: d4 9e     mov   $9e+x,a
035e: 3d        inc   x
035f: c8 0a     cmp   x,#$0a
0361: d0 f9     bne   $035c
0363: 6f        ret

0364: 03 0f 16  bbs0  $0f,$037d
0367: e4 1c     mov   a,$1c
0369: 60        clrc
036a: 84 1d     adc   a,$1d
036c: c4 1d     mov   $1d,a
036e: e8 00     mov   a,#$00
0370: 3c        rol   a
0371: c4 10     mov   $10,a
0373: cd 00     mov   x,#$00
0375: 3f e6 03  call  $03e6
0378: 3d        inc   x
0379: c8 0a     cmp   x,#$0a
037b: d0 f8     bne   $0375
037d: 6f        ret

037e: cd 00     mov   x,#$00
0380: 8f 01 11  mov   $11,#$01
0383: 3f 78 05  call  $0578
0386: 3d        inc   x
0387: 0b 11     asl   $11
0389: d0 f8     bne   $0383
038b: 6f        ret

038c: 8f 5c f2  mov   $f2,#$5c
038f: fa 13 f3  mov   ($f3),($13)
0392: cd 00     mov   x,#$00
0394: 8f 01 11  mov   $11,#$01
0397: 3f dc 05  call  $05dc
039a: 3d        inc   x
039b: 0b 11     asl   $11
039d: d0 f8     bne   $0397
039f: e4 1a     mov   a,$1a
03a1: f0 06     beq   $03a9
03a3: 8b 1a     dec   $1a
03a5: d0 02     bne   $03a9
03a7: b2 17     clr5  $17
03a9: 3f c9 0e  call  $0ec9
03ac: 8f 2d f2  mov   $f2,#$2d
03af: fa 15 f3  mov   ($f3),($15)
03b2: 8f 3d f2  mov   $f2,#$3d
03b5: fa 14 f3  mov   ($f3),($14)
03b8: 8f 6c f2  mov   $f2,#$6c
03bb: fa 17 f3  mov   ($f3),($17)
03be: e4 12     mov   a,$12
03c0: 44 13     eor   a,$13
03c2: 24 13     and   a,$13
03c4: 8f 5c f2  mov   $f2,#$5c
03c7: c4 f3     mov   $f3,a
03c9: e4 1a     mov   a,$1a
03cb: d0 0c     bne   $03d9
03cd: 8f 4d f2  mov   $f2,#$4d
03d0: fa 16 f3  mov   ($f3),($16)
03d3: 8f 0d f2  mov   $f2,#$0d
03d6: fa 18 f3  mov   ($f3),($18)
03d9: 8f 4c f2  mov   $f2,#$4c
03dc: fa 12 f3  mov   ($f3),($12)
03df: e8 00     mov   a,#$00
03e1: c4 12     mov   $12,a
03e3: c4 13     mov   $13,a
03e5: 6f        ret

03e6: f5 12 02  mov   a,$0212+x
03e9: 68 ff     cmp   a,#$ff
03eb: f0 0c     beq   $03f9
03ed: f4 8c     mov   a,$8c+x
03ef: 28 04     and   a,#$04
03f1: 04 10     or    a,$10
03f3: f0 04     beq   $03f9
03f5: 9b 7a     dec   $7a+x
03f7: f0 01     beq   $03fa
03f9: 6f        ret

03fa: f4 44     mov   a,$44+x
03fc: c4 2d     mov   $2d,a
03fe: f4 56     mov   a,$56+x
0400: c4 2e     mov   $2e,a
0402: 8d 00     mov   y,#$00
0404: f7 2d     mov   a,($2d)+y
0406: 30 1d     bmi   $0425
0408: f0 03     beq   $040d
040a: d5 a2 02  mov   $02a2+x,a
040d: 3f 66 04  call  $0466
0410: fc        inc   y
0411: f7 2d     mov   a,($2d)+y
0413: 30 0e     bmi   $0423
0415: d5 2c 02  mov   $022c+x,a
0418: fc        inc   y
0419: f7 2d     mov   a,($2d)+y
041b: 30 06     bmi   $0423
041d: d5 d2 00  mov   $00d2+x,a
0420: fc        inc   y
0421: f7 2d     mov   a,($2d)+y
0423: 2f 08     bra   $042d
0425: 2d        push  a
0426: f5 a2 02  mov   a,$02a2+x
0429: 3f 66 04  call  $0466
042c: ae        pop   a
042d: fc        inc   y
042e: 68 c0     cmp   a,#$c0
0430: b0 1c     bcs   $044e
0432: 68 a0     cmp   a,#$a0
0434: 90 11     bcc   $0447
0436: 2d        push  a
0437: f7 2d     mov   a,($2d)+y
0439: 10 07     bpl   $0442
043b: 28 7f     and   a,#$7f
043d: d5 d2 00  mov   $00d2+x,a
0440: 2f 03     bra   $0445
0442: d5 2c 02  mov   $022c+x,a
0445: fc        inc   y
0446: ae        pop   a
0447: 28 1f     and   a,#$1f
0449: 3f 6d 04  call  $046d
044c: 2f 09     bra   $0457
044e: 2d        push  a
044f: e8 00     mov   a,#$00
0451: d4 7a     mov   $7a+x,a
0453: ae        pop   a
0454: 3f 9d 06  call  $069d
0457: f4 7a     mov   a,$7a+x
0459: f0 a9     beq   $0404
045b: dd        mov   a,y
045c: 8d 00     mov   y,#$00
045e: 7a 2d     addw  ya,$2d
0460: d4 44     mov   $44+x,a
0462: dd        mov   a,y
0463: d4 56     mov   $56+x,a
0465: 6f        ret

0466: 13 43 01  bbc0  $43,$046a
0469: 5c        lsr   a
046a: d4 7a     mov   $7a+x,a
046c: 6f        ret

046d: 6d        push  y
046e: c4 33     mov   $33,a
0470: f4 8c     mov   a,$8c+x
0472: 28 01     and   a,#$01
0474: f0 28     beq   $049e
0476: f5 36 02  mov   a,$0236+x
0479: c4 02     mov   $02,a
047b: f5 48 02  mov   a,$0248+x
047e: c4 03     mov   $03,a
0480: e4 33     mov   a,$33
0482: 1c        asl   a
0483: 8d 00     mov   y,#$00
0485: 7a 02     addw  ya,$02
0487: da 02     movw  $02,ya
0489: 8d 00     mov   y,#$00
048b: f7 02     mov   a,($02)+y
048d: 3a 02     incw  $02
048f: 2d        push  a
0490: c4 06     mov   $06,a
0492: f7 02     mov   a,($02)+y
0494: 3a 02     incw  $02
0496: fd        mov   y,a
0497: ae        pop   a
0498: 7a 02     addw  ya,$02
049a: da 06     movw  $06,ya
049c: 2f 0a     bra   $04a8
049e: f5 36 02  mov   a,$0236+x
04a1: c4 06     mov   $06,a
04a3: f5 48 02  mov   a,$0248+x
04a6: c4 07     mov   $07,a
04a8: e4 33     mov   a,$33
04aa: 60        clrc
04ab: 95 6c 02  adc   a,$026c+x
04ae: 60        clrc
04af: 95 5a 02  adc   a,$025a+x
04b2: 28 7f     and   a,#$7f
04b4: c4 33     mov   $33,a
04b6: 3f 5d 05  call  $055d
04b9: b0 73     bcs   $052e
04bb: 3f 98 0d  call  $0d98
04be: 68 00     cmp   a,#$00
04c0: f0 1d     beq   $04df
04c2: c4 37     mov   $37,a
04c4: cc 36 00  mov   $0036,y
04c7: e4 06     mov   a,$06
04c9: 2d        push  a
04ca: 8f 00 06  mov   $06,#$00
04cd: 7d        mov   a,x
04ce: 3f 81 0d  call  $0d81
04d1: ae        pop   a
04d2: c4 06     mov   $06,a
04d4: b0 09     bcs   $04df
04d6: e4 37     mov   a,$37
04d8: 74 c0     cmp   a,$c0+x
04da: b0 5f     bcs   $053b
04dc: ec 36 00  mov   y,$0036
04df: f4 c0     mov   a,$c0+x
04e1: d6 ca 00  mov   $00ca+y,a
04e4: 7d        mov   a,x
04e5: d6 1c 02  mov   $021c+y,a
04e8: e8 00     mov   a,#$00
04ea: d6 24 02  mov   $0224+y,a
04ed: 3f 3d 05  call  $053d
04f0: e4 06     mov   a,$06
04f2: d6 4e 00  mov   $004e+y,a
04f5: e4 07     mov   a,$07
04f7: d6 60 00  mov   $0060+y,a
04fa: f5 7e 02  mov   a,$027e+x
04fd: d6 88 02  mov   $0288+y,a
0500: e4 33     mov   a,$33
0502: d6 64 02  mov   $0264+y,a
0505: d6 76 02  mov   $0276+y,a
0508: f5 d2 00  mov   a,$00d2+x
050b: d6 dc 00  mov   $00dc+y,a
050e: f4 8c     mov   a,$8c+x
0510: 28 04     and   a,#$04
0512: d6 96 00  mov   $0096+y,a
0515: 3f 50 05  call  $0550
0518: f6 c5 01  mov   a,$01c5+y
051b: 48 ff     eor   a,#$ff
051d: 24 16     and   a,$16
051f: c4 16     mov   $16,a
0521: f4 8c     mov   a,$8c+x
0523: 28 08     and   a,#$08
0525: f0 07     beq   $052e
0527: f6 c5 01  mov   a,$01c5+y
052a: 04 16     or    a,$16
052c: c4 16     mov   $16,a
052e: f5 2c 02  mov   a,$022c+x
0531: f0 05     beq   $0538
0533: 13 43 01  bbc0  $43,$0537
0536: 5c        lsr   a
0537: bc        inc   a
0538: d6 b0 00  mov   $00b0+y,a
053b: ee        pop   y
053c: 6f        ret

053d: f5 00 02  mov   a,$0200+x
0540: 10 0a     bpl   $054c
0542: 4d        push  x
0543: e4 0a     mov   a,$0a
0545: 28 0f     and   a,#$0f
0547: 5d        mov   x,a
0548: f5 64 10  mov   a,$1064+x
054b: ce        pop   x
054c: d6 0a 02  mov   $020a+y,a
054f: 6f        ret

0550: e8 80     mov   a,#$80
0552: d6 a8 00  mov   $00a8+y,a
0555: f6 c5 01  mov   a,$01c5+y
0558: 04 13     or    a,$13
055a: c4 13     mov   $13,a
055c: 6f        ret

055d: 8d 07     mov   y,#$07
055f: 7d        mov   a,x
0560: 76 1c 02  cmp   a,$021c+y
0563: d0 0c     bne   $0571
0565: f6 b0 00  mov   a,$00b0+y
0568: d0 07     bne   $0571
056a: f6 64 02  mov   a,$0264+y
056d: 64 33     cmp   a,$33
056f: f0 05     beq   $0576
0571: dc        dec   y
0572: 10 eb     bpl   $055f
0574: 60        clrc
0575: 6f        ret

0576: 80        setc
0577: 6f        ret

0578: f4 a8     mov   a,$a8+x
057a: 10 17     bpl   $0593
057c: e8 ff     mov   a,#$ff
057e: d5 9a 02  mov   $029a+x,a
0581: e8 01     mov   a,#$01
0583: d4 84     mov   $84+x,a
0585: f5 7e 10  mov   a,$107e+x
0588: d4 72     mov   $72+x,a
058a: e8 00     mov   a,#$00
058c: d5 d4 02  mov   $02d4+x,a
058f: e8 03     mov   a,#$03
0591: d4 a8     mov   $a8+x,a
0593: f5 1c 02  mov   a,$021c+x
0596: 10 06     bpl   $059e
0598: 68 ff     cmp   a,#$ff
059a: f0 0e     beq   $05aa
059c: 2f 0d     bra   $05ab
059e: 3f 63 06  call  $0663
05a1: f5 1c 02  mov   a,$021c+x
05a4: 68 ff     cmp   a,#$ff
05a6: f0 02     beq   $05aa
05a8: 2f 01     bra   $05ab
05aa: 6f        ret

05ab: 4d        push  x
05ac: 7d        mov   a,x
05ad: 60        clrc
05ae: 88 0a     adc   a,#$0a
05b0: 5d        mov   x,a
05b1: 9b 7a     dec   $7a+x
05b3: d0 25     bne   $05da
05b5: f4 44     mov   a,$44+x
05b7: c4 2d     mov   $2d,a
05b9: f4 56     mov   a,$56+x
05bb: c4 2e     mov   $2e,a
05bd: 8d 00     mov   y,#$00
05bf: f7 2d     mov   a,($2d)+y
05c1: 30 05     bmi   $05c8
05c3: d4 7a     mov   $7a+x,a
05c5: fc        inc   y
05c6: 2f 08     bra   $05d0
05c8: fc        inc   y
05c9: 3f 9d 06  call  $069d
05cc: f4 7a     mov   a,$7a+x
05ce: f0 ef     beq   $05bf
05d0: dd        mov   a,y
05d1: 8d 00     mov   y,#$00
05d3: 7a 2d     addw  ya,$2d
05d5: d4 44     mov   $44+x,a
05d7: dd        mov   a,y
05d8: d4 56     mov   $56+x,a
05da: ce        pop   x
05db: 6f        ret

05dc: f5 1c 02  mov   a,$021c+x
05df: 10 34     bpl   $0615
05e1: 68 ff     cmp   a,#$ff
05e3: d0 01     bne   $05e6
05e5: 6f        ret

05e6: f4 a8     mov   a,$a8+x
05e8: c4 34     mov   $34,a
05ea: e8 00     mov   a,#$00
05ec: d4 a8     mov   $a8+x,a
05ee: 53 34 03  bbc2  $34,$05f4
05f1: 3f f5 0e  call  $0ef5
05f4: 13 34 0d  bbc0  $34,$0604
05f7: f5 88 02  mov   a,$0288+x
05fa: c4 31     mov   $31,a
05fc: f5 76 02  mov   a,$0276+x
05ff: c4 32     mov   $32,a
0601: 3f 99 0f  call  $0f99
0604: 33 34 0d  bbc1  $34,$0614
0607: f5 9a 02  mov   a,$029a+x
060a: fd        mov   y,a
060b: f5 dc 00  mov   a,$00dc+x
060e: 1c        asl   a
060f: cf        mul   ya
0610: dd        mov   a,y
0611: 5f 34 0f  jmp   $0f34

0614: 6f        ret

0615: f5 1c 02  mov   a,$021c+x
0618: fd        mov   y,a
0619: f6 9e 00  mov   a,$009e+y
061c: 14 a8     or    a,$a8+x
061e: c4 34     mov   $34,a
0620: e8 00     mov   a,#$00
0622: d4 a8     mov   $a8+x,a
0624: 53 34 03  bbc2  $34,$062a
0627: 3f f5 0e  call  $0ef5
062a: 13 34 18  bbc0  $34,$0645
062d: f5 1c 02  mov   a,$021c+x
0630: fd        mov   y,a
0631: f5 88 02  mov   a,$0288+x
0634: 60        clrc
0635: 96 b6 02  adc   a,$02b6+y
0638: c4 31     mov   $31,a
063a: f5 76 02  mov   a,$0276+x
063d: 96 c0 02  adc   a,$02c0+y
0640: c4 32     mov   $32,a
0642: 3f 99 0f  call  $0f99
0645: 33 34 1a  bbc1  $34,$0662
0648: f5 1c 02  mov   a,$021c+x
064b: fd        mov   y,a
064c: f6 90 02  mov   a,$0290+y
064f: fd        mov   y,a
0650: f5 9a 02  mov   a,$029a+x
0653: cf        mul   ya
0654: f5 dc 00  mov   a,$00dc+x
0657: 1c        asl   a
0658: cf        mul   ya
0659: e4 1f     mov   a,$1f
065b: 1c        asl   a
065c: cf        mul   ya
065d: dd        mov   a,y
065e: 1c        asl   a
065f: 5f 34 0f  jmp   $0f34

0662: 6f        ret

0663: f4 96     mov   a,$96+x
0665: 04 10     or    a,$10
0667: f0 1b     beq   $0684
0669: f4 b0     mov   a,$b0+x
066b: f0 17     beq   $0684
066d: 30 11     bmi   $0680
066f: 9b b0     dec   $b0+x
0671: d0 11     bne   $0684
0673: e8 01     mov   a,#$01
0675: d4 ca     mov   $ca+x,a
0677: e8 ff     mov   a,#$ff
0679: d4 b0     mov   $b0+x,a
067b: f4 b8     mov   a,$b8+x
067d: f0 06     beq   $0685
067f: 6f        ret

0680: 9b b8     dec   $b8+x
0682: f0 01     beq   $0685
0684: 6f        ret

0685: 09 11 13  or    ($13),($11)
0688: e4 11     mov   a,$11
068a: 48 ff     eor   a,#$ff
068c: 24 12     and   a,$12
068e: c4 12     mov   $12,a
0690: e8 ff     mov   a,#$ff
0692: d5 1c 02  mov   $021c+x,a
0695: e8 00     mov   a,#$00
0697: d4 ca     mov   $ca+x,a
0699: d5 d4 02  mov   $02d4+x,a
069c: 6f        ret

069d: cb 02     mov   $02,y
069f: 80        setc
06a0: a8 c0     sbc   a,#$c0
06a2: 1c        asl   a
06a3: fd        mov   y,a
06a4: f6 b0 06  mov   a,$06b0+y
06a7: 2d        push  a
06a8: f6 af 06  mov   a,$06af+y
06ab: 2d        push  a
06ac: eb 02     mov   y,$02
06ae: 6f        ret

06af: dw $0704  ; c0
06b1: dw $0735  ; c1
06b3: dw $074c  ; c2
06b5: dw $0754  ; c3
06b7: dw $0763  ; c4
06b9: dw $078f  ; c5
06bb: dw $075d  ; c6
06bd: dw $08c7  ; c7
06bf: dw $07a4  ; c8
06c1: dw $07ab  ; c9
06c3: dw $07b2  ; ca
06c5: dw $07cd  ; cb
06c7: dw $07e8  ; cc
06c9: dw $0814  ; cd
06cb: dw $0827  ; ce
06cd: dw $084d  ; cf
06cf: dw $0876  ; d0
06d1: dw $076a  ; d1
06d3: dw $0771  ; d2
06d5: dw $077b  ; d3
06d7: dw $06fd  ; d4
06d9: dw $0884  ; d5
06db: dw $0892  ; d6
06dd: dw $0911  ; d7
06df: dw $08f9  ; d8
06e1: dw $08ce  ; d9
06e3: dw $089d  ; da
06e5: dw $0899  ; db
06e7: dw $0793  ; dc
06e9: dw $08a1  ; dd
06eb: dw $091e  ; de
06ed: dw $094a  ; df
06ef: dw $0958  ; e0
06f1: dw $095c  ; e1
06f3: dw $0901  ; e2
06f5: dw $0785  ; e3
06f7: dw $0739  ; e4
06f9: dw $096b  ; e5
06fb: dw $097a  ; e6

; vcmd d4
06fd: f5 a2 02  mov   a,$02a2+x
0700: 3f 66 04  call  $0466
0703: 6f        ret

; vcmd c0
0704: dd        mov   a,y
0705: 8d 00     mov   y,#$00
0707: 7a 2d     addw  ya,$2d
0709: da 2d     movw  $2d,ya
070b: 8d 00     mov   y,#$00
070d: f7 2d     mov   a,($2d)+y
070f: 3a 2d     incw  $2d
0711: 2d        push  a
0712: f7 2d     mov   a,($2d)+y
0714: 3a 2d     incw  $2d
0716: fd        mov   y,a
0717: ae        pop   a
0718: 7a 2d     addw  ya,$2d
071a: da 02     movw  $02,ya
071c: f4 8c     mov   a,$8c+x
071e: 28 fe     and   a,#$fe
0720: 8d 00     mov   y,#$00
0722: 17 02     or    a,($02)+y
0724: d4 8c     mov   $8c+x,a
0726: 3a 02     incw  $02
0728: e4 02     mov   a,$02
072a: d5 36 02  mov   $0236+x,a
072d: e4 03     mov   a,$03
072f: d5 48 02  mov   $0248+x,a
0732: 8d 00     mov   y,#$00
0734: 6f        ret

; vcmd c1
0735: f7 2d     mov   a,($2d)+y
0737: 2f 08     bra   $0741

; vcmd e4
0739: 6d        push  y
073a: f7 2d     mov   a,($2d)+y
073c: fd        mov   y,a
073d: f6 dd 01  mov   a,$01dd+y
0740: ee        pop   y
0741: d5 00 02  mov   $0200+x,a
0744: f4 9e     mov   a,$9e+x
0746: 08 02     or    a,#$02
0748: d4 9e     mov   $9e+x,a
074a: fc        inc   y
074b: 6f        ret

; vcmd c2
074c: f7 2d     mov   a,($2d)+y
074e: c4 1e     mov   $1e,a
0750: fc        inc   y
0751: 5f e4 0b  jmp   $0be4

; vcmd c3
0754: f7 2d     mov   a,($2d)+y
0756: c4 1c     mov   $1c,a
0758: 8f 00 1b  mov   $1b,#$00
075b: fc        inc   y
075c: 6f        ret

; vcmd c6
075d: f7 2d     mov   a,($2d)+y
075f: d4 c0     mov   $c0+x,a
0761: fc        inc   y
0762: 6f        ret

; vcmd c4
0763: f7 2d     mov   a,($2d)+y
0765: d5 6c 02  mov   $026c+x,a
0768: fc        inc   y
0769: 6f        ret

; vcmd d1
076a: f7 2d     mov   a,($2d)+y
076c: fc        inc   y
076d: d5 5a 02  mov   $025a+x,a
0770: 6f        ret

; vcmd d2
0771: f5 5a 02  mov   a,$025a+x
0774: 60        clrc
0775: 88 0c     adc   a,#$0c
0777: d5 5a 02  mov   $025a+x,a
077a: 6f        ret

; vcmd d3
077b: f5 5a 02  mov   a,$025a+x
077e: 80        setc
077f: a8 0c     sbc   a,#$0c
0781: d5 5a 02  mov   $025a+x,a
0784: 6f        ret

; vcmd e3
0785: 6d        push  y
0786: f7 2d     mov   a,($2d)+y
0788: fd        mov   y,a
0789: f6 dd 01  mov   a,$01dd+y
078c: ee        pop   y
078d: 2f 0a     bra   $0799

; vcmd c5
078f: f7 2d     mov   a,($2d)+y
0791: 2f 06     bra   $0799

; vcmd dc
0793: f7 2d     mov   a,($2d)+y
0795: 60        clrc
0796: 95 90 02  adc   a,$0290+x
0799: d5 90 02  mov   $0290+x,a
079c: f4 9e     mov   a,$9e+x
079e: 08 02     or    a,#$02
07a0: d4 9e     mov   $9e+x,a
07a2: fc        inc   y
07a3: 6f        ret

; vcmd c8
07a4: f4 8c     mov   a,$8c+x
07a6: 08 08     or    a,#$08
07a8: d4 8c     mov   $8c+x,a
07aa: 6f        ret

; vcmd c9
07ab: f4 8c     mov   a,$8c+x
07ad: 28 f7     and   a,#$f7
07af: d4 8c     mov   $8c+x,a
07b1: 6f        ret

; vcmd ca
07b2: f7 2d     mov   a,($2d)+y
07b4: fc        inc   y
07b5: 3f 34 10  call  $1034
07b8: f7 2d     mov   a,($2d)+y
07ba: fc        inc   y
07bb: c4 2c     mov   $2c,a
07bd: f7 2d     mov   a,($2d)+y
07bf: fc        inc   y
07c0: c4 18     mov   $18,a
07c2: f7 2d     mov   a,($2d)+y
07c4: fc        inc   y
07c5: 6d        push  y
07c6: 4d        push  x
07c7: 3f 06 10  call  $1006
07ca: ce        pop   x
07cb: ee        pop   y
07cc: 6f        ret

; vcmd cb
07cd: dd        mov   a,y
07ce: 8d 00     mov   y,#$00
07d0: 7a 2d     addw  ya,$2d
07d2: da 2d     movw  $2d,ya
07d4: 8d 00     mov   y,#$00
07d6: f7 2d     mov   a,($2d)+y
07d8: 3a 2d     incw  $2d
07da: 2d        push  a
07db: f7 2d     mov   a,($2d)+y
07dd: 3a 2d     incw  $2d
07df: fd        mov   y,a
07e0: ae        pop   a
07e1: 7a 2d     addw  ya,$2d
07e3: da 2d     movw  $2d,ya
07e5: 8d 00     mov   y,#$00
07e7: 6f        ret

; vcmd cc
07e8: dd        mov   a,y
07e9: 8d 00     mov   y,#$00
07eb: 7a 2d     addw  ya,$2d
07ed: da 2d     movw  $2d,ya
07ef: 8d 00     mov   y,#$00
07f1: f7 2d     mov   a,($2d)+y
07f3: 3a 2d     incw  $2d
07f5: 2d        push  a
07f6: f7 2d     mov   a,($2d)+y
07f8: 3a 2d     incw  $2d
07fa: 2d        push  a
07fb: fb 68     mov   y,$68+x
07fd: e4 2d     mov   a,$2d
07ff: d6 86 10  mov   $1086+y,a
0802: fc        inc   y
0803: e4 2e     mov   a,$2e
0805: d6 86 10  mov   $1086+y,a
0808: fc        inc   y
0809: db 68     mov   $68+x,y
080b: ee        pop   y
080c: ae        pop   a
080d: 7a 2d     addw  ya,$2d
080f: da 2d     movw  $2d,ya
0811: 8d 00     mov   y,#$00
0813: 6f        ret

; vcmd cd
0814: fb 68     mov   y,$68+x
0816: dc        dec   y
0817: f6 86 10  mov   a,$1086+y
081a: c4 2e     mov   $2e,a
081c: dc        dec   y
081d: f6 86 10  mov   a,$1086+y
0820: c4 2d     mov   $2d,a
0822: db 68     mov   $68+x,y
0824: 8d 00     mov   y,#$00
0826: 6f        ret

; vcmd ce
0827: dd        mov   a,y
0828: 8d 00     mov   y,#$00
082a: 7a 2d     addw  ya,$2d
082c: da 2d     movw  $2d,ya
082e: 8d 00     mov   y,#$00
0830: f7 2d     mov   a,($2d)+y
0832: 3a 2d     incw  $2d
0834: 2d        push  a
0835: fb 68     mov   y,$68+x
0837: e4 2d     mov   a,$2d
0839: d6 86 10  mov   $1086+y,a
083c: fc        inc   y
083d: e4 2e     mov   a,$2e
083f: d6 86 10  mov   $1086+y,a
0842: fc        inc   y
0843: ae        pop   a
0844: d6 86 10  mov   $1086+y,a
0847: fc        inc   y
0848: db 68     mov   $68+x,y
084a: 8d 00     mov   y,#$00
084c: 6f        ret

; vcmd cf
084d: dd        mov   a,y
084e: 8d 00     mov   y,#$00
0850: 7a 2d     addw  ya,$2d
0852: da 2d     movw  $2d,ya
0854: fb 68     mov   y,$68+x
0856: dc        dec   y
0857: f6 86 10  mov   a,$1086+y
085a: 9c        dec   a
085b: f0 12     beq   $086f
085d: d6 86 10  mov   $1086+y,a
0860: dc        dec   y
0861: f6 86 10  mov   a,$1086+y
0864: c4 2e     mov   $2e,a
0866: dc        dec   y
0867: f6 86 10  mov   a,$1086+y
086a: c4 2d     mov   $2d,a
086c: 8d 00     mov   y,#$00
086e: 6f        ret

086f: dc        dec   y
0870: dc        dec   y
0871: db 68     mov   $68+x,y
0873: 8d 00     mov   y,#$00
0875: 6f        ret

; vcmd d0
0876: e8 ff     mov   a,#$ff
0878: d5 12 02  mov   $0212+x,a
087b: e8 00     mov   a,#$00
087d: d4 c0     mov   $c0+x,a
087f: e8 01     mov   a,#$01
0881: d4 7a     mov   $7a+x,a
0883: 6f        ret

; vcmd d5
0884: f4 8c     mov   a,$8c+x
0886: 28 fd     and   a,#$fd
0888: d4 8c     mov   $8c+x,a
088a: f7 2d     mov   a,($2d)+y
088c: fc        inc   y
088d: 14 8c     or    a,$8c+x
088f: d4 8c     mov   $8c+x,a
0891: 6f        ret

; vcmd d6
0892: f7 2d     mov   a,($2d)+y
0894: fc        inc   y
0895: d5 ac 02  mov   $02ac+x,a
0898: 6f        ret

; vcmd db
0899: 09 11 13  or    ($13),($11)
089c: 6f        ret

; vcmd da
089d: 09 11 12  or    ($12),($11)
08a0: 6f        ret

; vcmd dd
08a1: f7 2d     mov   a,($2d)+y
08a3: 6d        push  y
08a4: c4 03     mov   $03,a
08a6: 10 04     bpl   $08ac
08a8: e8 03     mov   a,#$03
08aa: 2f 02     bra   $08ae
08ac: e8 00     mov   a,#$00
08ae: 5c        lsr   a
08af: 6b 03     ror   $03
08b1: 7c        ror   a
08b2: 6b 03     ror   $03
08b4: 7c        ror   a
08b5: c4 02     mov   $02,a
08b7: f5 ac 02  mov   a,$02ac+x
08ba: 3f 8f 0e  call  $0e8f
08bd: d5 b6 02  mov   $02b6+x,a
08c0: dd        mov   a,y
08c1: d5 c0 02  mov   $02c0+x,a
08c4: ee        pop   y
08c5: 2f 4f     bra   $0916

; vcmd c7
08c7: f7 2d     mov   a,($2d)+y
08c9: d5 7e 02  mov   $027e+x,a
08cc: 2f 48     bra   $0916

; vcmd d9
08ce: f7 2d     mov   a,($2d)+y
08d0: 30 10     bmi   $08e2
08d2: 60        clrc
08d3: 95 7e 02  adc   a,$027e+x
08d6: d5 7e 02  mov   $027e+x,a
08d9: 90 3b     bcc   $0916
08db: f5 6c 02  mov   a,$026c+x
08de: 88 00     adc   a,#$00
08e0: 2f 31     bra   $0913
08e2: 60        clrc
08e3: 95 7e 02  adc   a,$027e+x
08e6: d5 7e 02  mov   $027e+x,a
08e9: b0 2b     bcs   $0916
08eb: f5 6c 02  mov   a,$026c+x
08ee: a8 00     sbc   a,#$00
08f0: 10 21     bpl   $0913
08f2: e8 00     mov   a,#$00
08f4: d5 7e 02  mov   $027e+x,a
08f7: 2f 1a     bra   $0913

; vcmd d8
08f9: f7 2d     mov   a,($2d)+y
08fb: 60        clrc
08fc: 95 6c 02  adc   a,$026c+x
08ff: 2f 12     bra   $0913

; vcmd e2
0901: 6d        push  y
0902: f7 2d     mov   a,($2d)+y
0904: fd        mov   y,a
0905: f6 dd 01  mov   a,$01dd+y
0908: d5 7e 02  mov   $027e+x,a
090b: f6 e1 01  mov   a,$01e1+y
090e: ee        pop   y
090f: 2f 02     bra   $0913

; vcmd d7
0911: f7 2d     mov   a,($2d)+y
0913: d5 6c 02  mov   $026c+x,a
0916: f4 9e     mov   a,$9e+x
0918: 08 01     or    a,#$01
091a: d4 9e     mov   $9e+x,a
091c: fc        inc   y
091d: 6f        ret

; vcmd de
091e: 8f 5c f2  mov   $f2,#$5c
0921: fa 11 f3  mov   ($f3),($11)
0924: dd        mov   a,y
0925: 8d 00     mov   y,#$00
0927: 7a 2d     addw  ya,$2d
0929: da 2d     movw  $2d,ya
092b: 8d 00     mov   y,#$00
092d: f7 2d     mov   a,($2d)+y
092f: 3a 2d     incw  $2d
0931: 2d        push  a
0932: f7 2d     mov   a,($2d)+y
0934: 3a 2d     incw  $2d
0936: fd        mov   y,a
0937: ae        pop   a
0938: 7a 2d     addw  ya,$2d
093a: d5 36 02  mov   $0236+x,a
093d: dd        mov   a,y
093e: d5 48 02  mov   $0248+x,a
0941: f4 9e     mov   a,$9e+x
0943: 08 04     or    a,#$04
0945: d4 9e     mov   $9e+x,a
0947: 8d 00     mov   y,#$00
0949: 6f        ret

; vcmd df
094a: f7 2d     mov   a,($2d)+y
094c: f0 05     beq   $0953
094e: 2d        push  a
094f: 3f 62 0d  call  $0d62
0952: ae        pop   a
0953: d5 ca 02  mov   $02ca+x,a
0956: fc        inc   y
0957: 6f        ret

; vcmd e0
0958: f7 2d     mov   a,($2d)+y
095a: 2f 07     bra   $0963

; vcmd e1
095c: f7 2d     mov   a,($2d)+y
095e: 60        clrc
095f: 84 17     adc   a,$17
0961: 28 1f     and   a,#$1f
0963: 38 e0 17  and   $17,#$e0
0966: 0e 17 00  tset1 $0017
0969: fc        inc   y
096a: 6f        ret

; vcmd e5
096b: 6d        push  y
096c: f7 2d     mov   a,($2d)+y
096e: fd        mov   y,a
096f: f6 dd 01  mov   a,$01dd+y
0972: d0 01     bne   $0975
0974: bc        inc   a
0975: d4 7a     mov   $7a+x,a
0977: ee        pop   y
0978: fc        inc   y
0979: 6f        ret

; vcmd e6
097a: f7 2d     mov   a,($2d)+y
097c: c4 43     mov   $43,a
097e: fc        inc   y
097f: 6f        ret

0980: e4 f4     mov   a,$f4
0982: 64 f4     cmp   a,$f4
0984: d0 fa     bne   $0980
0986: c4 38     mov   $38,a
0988: 28 ff     and   a,#$ff
098a: f0 1f     beq   $09ab
098c: e8 00     mov   a,#$00
098e: c4 f4     mov   $f4,a
0990: c4 41     mov   $41,a
0992: fa f5 39  mov   ($39),($f5)
0995: fa f6 3a  mov   ($3a),($f6)
0998: fa f7 3b  mov   ($3b),($f7)
099b: 8f 31 f1  mov   $f1,#$31
099e: 8f 31 f1  mov   $f1,#$31
09a1: ab 3c     inc   $3c
09a3: fa 3c f5  mov   ($f5),($3c)
09a6: 3f ef 09  call  $09ef
09a9: 2f d5     bra   $0980
09ab: e4 41     mov   a,$41
09ad: 68 01     cmp   a,#$01
09af: f0 05     beq   $09b6
09b1: 68 02     cmp   a,#$02
09b3: f0 0b     beq   $09c0
09b5: 6f        ret

09b6: fa 3d f6  mov   ($f6),($3d)
09b9: fa 3e f7  mov   ($f7),($3e)
09bc: 8f 01 f4  mov   $f4,#$01
09bf: 6f        ret

09c0: cd 09     mov   x,#$09
09c2: e4 42     mov   a,$42
09c4: 75 12 02  cmp   a,$0212+x
09c7: f0 16     beq   $09df
09c9: 1d        dec   x
09ca: 10 f8     bpl   $09c4
09cc: cd 07     mov   x,#$07
09ce: 08 80     or    a,#$80
09d0: 75 1c 02  cmp   a,$021c+x
09d3: f0 0a     beq   $09df
09d5: 1d        dec   x
09d6: 10 f8     bpl   $09d0
09d8: 8f 00 f6  mov   $f6,#$00
09db: 8f 02 f4  mov   $f4,#$02
09de: 6f        ret

09df: 8f ff f6  mov   $f6,#$ff
09e2: 8f 02 f4  mov   $f4,#$02
09e5: 6f        ret

09e6: e4 f4     mov   a,$f4
09e8: f0 fc     beq   $09e6
09ea: 64 f4     cmp   a,$f4
09ec: d0 f8     bne   $09e6
09ee: 6f        ret

09ef: e4 38     mov   a,$38
09f1: 30 03     bmi   $09f6
09f3: 5f 6f 0c  jmp   $0c6f

09f6: 28 1f     and   a,#$1f
09f8: 1c        asl   a
09f9: fd        mov   y,a
09fa: f6 04 0a  mov   a,$0a04+y
09fd: 2d        push  a
09fe: f6 03 0a  mov   a,$0a03+y
0a01: 2d        push  a
0a02: 6f        ret

0a03: dw $0a97
0a05: dw $0a9e
0a07: dw $0aad
0a09: dw $0ab6
0a0b: dw $0ac3
0a0d: dw $0a63
0a0f: dw $0a67
0a11: dw $0a4a
0a13: dw $0a4e
0a15: dw $0a43
0a17: dw $0b82
0a19: dw $0b86
0a1b: dw $0b8a
0a1d: dw $0bfe
0a1f: dw $0a02
0a21: dw $0c58
0a23: dw $0b46
0a25: dw $0b60
0a27: dw $0c3f
0a29: dw $0b90
0a2b: dw $0baa
0a2d: dw $0bcc
0a2f: dw $0b7a
0a31: dw $0b7e
0a33: dw $0d5f
0a35: dw $0c62
0a37: dw $0b9e
0a39: dw $0bbb
0a3b: dw $0bd8
0a3d: dw $0c19
0a3f: dw $0b16
0a41: dw $0b0f

0a43: fa 39 41  mov   ($41),($39)
0a46: fa 3a 42  mov   ($42),($3a)
0a49: 6f        ret

0a4a: fa 3a 40  mov   ($40),($3a)
0a4d: 6f        ret

0a4e: e4 40     mov   a,$40
0a50: 9c        dec   a
0a51: 1c        asl   a
0a52: 5d        mov   x,a
0a53: e4 3a     mov   a,$3a
0a55: eb 3b     mov   y,$3b
0a57: 7a 3d     addw  ya,$3d
0a59: d5 00 13  mov   $1300+x,a
0a5c: dd        mov   a,y
0a5d: d5 01 13  mov   $1301+x,a
0a60: ab 40     inc   $40
0a62: 6f        ret

0a63: fa 3a 3f  mov   ($3f),($3a)
0a66: 6f        ret

0a67: e4 3f     mov   a,$3f
0a69: 1c        asl   a
0a6a: 1c        asl   a
0a6b: 5d        mov   x,a
0a6c: e4 3a     mov   a,$3a
0a6e: eb 3b     mov   y,$3b
0a70: 7a 3d     addw  ya,$3d
0a72: d5 00 12  mov   $1200+x,a
0a75: dd        mov   a,y
0a76: d5 01 12  mov   $1201+x,a
0a79: 3f e6 09  call  $09e6
0a7c: e4 f6     mov   a,$f6
0a7e: eb f7     mov   y,$f7
0a80: 7a 3d     addw  ya,$3d
0a82: d5 02 12  mov   $1202+x,a
0a85: dd        mov   a,y
0a86: d5 03 12  mov   $1203+x,a
0a89: 8f 31 f1  mov   $f1,#$31
0a8c: 8f 31 f1  mov   $f1,#$31
0a8f: ab 3c     inc   $3c
0a91: fa 3c f5  mov   ($f5),($3c)
0a94: ab 3f     inc   $3f
0a96: 6f        ret

0a97: fa 3a 3d  mov   ($3d),($3a)
0a9a: fa 3b 3e  mov   ($3e),($3b)
0a9d: 6f        ret

0a9e: 8d 00     mov   y,#$00
0aa0: e4 3a     mov   a,$3a
0aa2: d7 3d     mov   ($3d)+y,a
0aa4: 3a 3d     incw  $3d
0aa6: e4 3b     mov   a,$3b
0aa8: d7 3d     mov   ($3d)+y,a
0aaa: 3a 3d     incw  $3d
0aac: 6f        ret

0aad: 8d 00     mov   y,#$00
0aaf: e4 3a     mov   a,$3a
0ab1: d7 3d     mov   ($3d)+y,a
0ab3: 3a 3d     incw  $3d
0ab5: 6f        ret

0ab6: fa 3a 06  mov   ($06),($3a)
0ab9: fa 3b 07  mov   ($07),($3b)
0abc: e4 39     mov   a,$39
0abe: 8d 00     mov   y,#$00
0ac0: d7 06     mov   ($06)+y,a
0ac2: 6f        ret

0ac3: fa 3a 02  mov   ($02),($3a)
0ac6: fa 3b 03  mov   ($03),($3b)
0ac9: 4b 03     lsr   $03
0acb: 6b 02     ror   $02
0acd: 6b 04     ror   $04
0acf: cd 00     mov   x,#$00
0ad1: 1a 02     decw  $02
0ad3: 30 1f     bmi   $0af4
0ad5: e4 f4     mov   a,$f4
0ad7: f0 fc     beq   $0ad5
0ad9: 64 f4     cmp   a,$f4
0adb: d0 f8     bne   $0ad5
0add: e4 f6     mov   a,$f6
0adf: eb f7     mov   y,$f7
0ae1: 8f 31 f1  mov   $f1,#$31
0ae4: ab 3c     inc   $3c
0ae6: fa 3c f5  mov   ($f5),($3c)
0ae9: c7 3d     mov   ($3d+x),a
0aeb: 3a 3d     incw  $3d
0aed: dd        mov   a,y
0aee: c7 3d     mov   ($3d+x),a
0af0: 3a 3d     incw  $3d
0af2: 2f dd     bra   $0ad1
0af4: e4 04     mov   a,$04
0af6: 10 14     bpl   $0b0c
0af8: 3f e6 09  call  $09e6
0afb: e4 f6     mov   a,$f6
0afd: c7 3d     mov   ($3d+x),a
0aff: 3a 3d     incw  $3d
0b01: 8f 31 f1  mov   $f1,#$31
0b04: 8f 31 f1  mov   $f1,#$31
0b07: ab 3c     inc   $3c
0b09: fa 3c f5  mov   ($f5),($3c)
0b0c: eb fd     mov   y,$fd
0b0e: 6f        ret

0b0f: 3f 3b 0b  call  $0b3b
0b12: 3f 4a 03  call  $034a
0b15: 6f        ret

0b16: 3f 1c 0b  call  $0b1c
0b19: 5f b3 0e  jmp   $0eb3

0b1c: 3f 3b 0b  call  $0b3b
0b1f: e8 00     mov   a,#$00
0b21: c4 2a     mov   $2a,a
0b23: c4 2b     mov   $2b,a
0b25: c4 24     mov   $24,a
0b27: c4 25     mov   $25,a
0b29: c4 2c     mov   $2c,a
0b2b: 3f bf 0e  call  $0ebf
0b2e: 3f 60 0b  call  $0b60
0b31: 3f 4a 03  call  $034a
0b34: 3f 4a 03  call  $034a
0b37: 3f 4a 03  call  $034a
0b3a: 6f        ret

0b3b: 3f aa 0d  call  $0daa
0b3e: 3f b9 0d  call  $0db9
0b41: e8 00     mov   a,#$00
0b43: c4 0e     mov   $0e,a
0b45: 6f        ret

0b46: cd 00     mov   x,#$00
0b48: 8f 01 11  mov   $11,#$01
0b4b: f4 96     mov   a,$96+x
0b4d: 08 10     or    a,#$10
0b4f: d4 96     mov   $96+x,a
0b51: f4 a8     mov   a,$a8+x
0b53: 08 02     or    a,#$02
0b55: d4 a8     mov   $a8+x,a
0b57: 3d        inc   x
0b58: 0b 11     asl   $11
0b5a: d0 ef     bne   $0b4b
0b5c: 18 01 0f  or    $0f,#$01
0b5f: 6f        ret

0b60: cd 00     mov   x,#$00
0b62: 8f 01 11  mov   $11,#$01
0b65: f4 96     mov   a,$96+x
0b67: 28 ef     and   a,#$ef
0b69: d4 96     mov   $96+x,a
0b6b: f4 a8     mov   a,$a8+x
0b6d: 08 02     or    a,#$02
0b6f: d4 a8     mov   $a8+x,a
0b71: 3d        inc   x
0b72: 0b 11     asl   $11
0b74: d0 ef     bne   $0b65
0b76: 38 fe 0f  and   $0f,#$fe
0b79: 6f        ret

0b7a: 18 02 0f  or    $0f,#$02
0b7d: 6f        ret

0b7e: 38 fd 0f  and   $0f,#$fd
0b81: 6f        ret

0b82: 18 04 0f  or    $0f,#$04
0b85: 6f        ret

0b86: 38 fb 0f  and   $0f,#$fb
0b89: 6f        ret

0b8a: fa 3a 2c  mov   ($2c),($3a)
0b8d: 5f c9 0e  jmp   $0ec9

0b90: e8 00     mov   a,#$00
0b92: c4 2a     mov   $2a,a
0b94: c4 2b     mov   $2b,a
0b96: fa 3a 27  mov   ($27),($3a)
0b99: e4 27     mov   a,$27
0b9b: 5f bf 0e  jmp   $0ebf

0b9e: e8 00     mov   a,#$00
0ba0: c4 24     mov   $24,a
0ba2: c4 25     mov   $25,a
0ba4: fa 3a 21  mov   ($21),($3a)
0ba7: 5f e4 0b  jmp   $0be4

0baa: fa 3a 2a  mov   ($2a),($3a)
0bad: e8 00     mov   a,#$00
0baf: 0b 2a     asl   $2a
0bb1: 3c        rol   a
0bb2: c4 2b     mov   $2b,a
0bb4: fa 3b 29  mov   ($29),($3b)
0bb7: 8f ff 28  mov   $28,#$ff
0bba: 6f        ret

0bbb: fa 3a 24  mov   ($24),($3a)
0bbe: e8 00     mov   a,#$00
0bc0: 0b 24     asl   $24
0bc2: 3c        rol   a
0bc3: c4 25     mov   $25,a
0bc5: fa 3b 23  mov   ($23),($3b)
0bc8: 8f ff 22  mov   $22,#$ff
0bcb: 6f        ret

0bcc: 3f aa 0b  call  $0baa
0bcf: ba 00     movw  ya,$00
0bd1: 9a 2a     subw  ya,$2a
0bd3: da 2a     movw  $2a,ya
0bd5: ab 28     inc   $28
0bd7: 6f        ret

0bd8: 3f bb 0b  call  $0bbb
0bdb: ba 00     movw  ya,$00
0bdd: 9a 24     subw  ya,$24
0bdf: da 24     movw  $24,ya
0be1: ab 22     inc   $22
0be3: 6f        ret

0be4: 4d        push  x
0be5: 6d        push  y
0be6: e4 1e     mov   a,$1e
0be8: eb 21     mov   y,$21
0bea: cf        mul   ya
0beb: cc 1f 00  mov   $001f,y
0bee: cd 00     mov   x,#$00
0bf0: f4 9e     mov   a,$9e+x
0bf2: 08 02     or    a,#$02
0bf4: d4 9e     mov   $9e+x,a
0bf6: 3d        inc   x
0bf7: c8 0a     cmp   x,#$0a
0bf9: d0 f5     bne   $0bf0
0bfb: ee        pop   y
0bfc: ce        pop   x
0bfd: 6f        ret

0bfe: e4 39     mov   a,$39
0c00: 08 80     or    a,#$80
0c02: cd 00     mov   x,#$00
0c04: 8f 01 11  mov   $11,#$01
0c07: 75 1c 02  cmp   a,$021c+x
0c0a: f0 0c     beq   $0c18
0c0c: 3d        inc   x
0c0d: 0b 11     asl   $11
0c0f: d0 f6     bne   $0c07
0c11: e4 39     mov   a,$39
0c13: c4 38     mov   $38,a
0c15: 5f 6f 0c  jmp   $0c6f

0c18: 6f        ret

0c19: e4 39     mov   a,$39
0c1b: 08 80     or    a,#$80
0c1d: cd 00     mov   x,#$00
0c1f: 8f 01 11  mov   $11,#$01
0c22: 75 1c 02  cmp   a,$021c+x
0c25: d0 12     bne   $0c39
0c27: 2d        push  a
0c28: e4 3b     mov   a,$3b
0c2a: d5 0a 02  mov   $020a+x,a
0c2d: e4 3a     mov   a,$3a
0c2f: d5 dc 00  mov   $00dc+x,a
0c32: f4 a8     mov   a,$a8+x
0c34: 08 02     or    a,#$02
0c36: d4 a8     mov   $a8+x,a
0c38: ae        pop   a
0c39: 3d        inc   x
0c3a: 0b 11     asl   $11
0c3c: d0 e4     bne   $0c22
0c3e: 6f        ret

0c3f: e4 39     mov   a,$39
0c41: 08 80     or    a,#$80
0c43: cd 00     mov   x,#$00
0c45: 8f 01 11  mov   $11,#$01
0c48: 75 1c 02  cmp   a,$021c+x
0c4b: d0 05     bne   $0c52
0c4d: 2d        push  a
0c4e: 3f 85 06  call  $0685
0c51: ae        pop   a
0c52: 3d        inc   x
0c53: 0b 11     asl   $11
0c55: d0 f1     bne   $0c48
0c57: 6f        ret

0c58: 8f 00 0e  mov   $0e,#$00
0c5b: 3f aa 0d  call  $0daa
0c5e: 3f de 0d  call  $0dde
0c61: 6f        ret

0c62: eb 39     mov   y,$39
0c64: e4 3a     mov   a,$3a
0c66: d6 dd 01  mov   $01dd+y,a
0c69: e4 3b     mov   a,$3b
0c6b: d6 e1 01  mov   $01e1+y,a
0c6e: 6f        ret

0c6f: 1c        asl   a
0c70: fd        mov   y,a
0c71: f6 fe 12  mov   a,$12fe+y
0c74: c4 04     mov   $04,a
0c76: f6 ff 12  mov   a,$12ff+y
0c79: c4 05     mov   $05,a
0c7b: 8d 00     mov   y,#$00
0c7d: f7 04     mov   a,($04)+y
0c7f: 10 05     bpl   $0c86
0c81: 68 ff     cmp   a,#$ff
0c83: d0 14     bne   $0c99
0c85: 6f        ret

0c86: 3f 33 0d  call  $0d33
0c89: e8 04     mov   a,#$04
0c8b: 3f 34 10  call  $1034
0c8e: 8f 12 2c  mov   $2c,#$12
0c91: 8f 50 18  mov   $18,#$50
0c94: e8 02     mov   a,#$02
0c96: 5f 06 10  jmp   $1006

0c99: 28 7f     and   a,#$7f
0c9b: c4 08     mov   $08,a
0c9d: 3a 04     incw  $04
0c9f: 8f 00 06  mov   $06,#$00
0ca2: 8d 00     mov   y,#$00
0ca4: f7 04     mov   a,($04)+y
0ca6: 10 16     bpl   $0cbe
0ca8: 68 ff     cmp   a,#$ff
0caa: f0 7a     beq   $0d26
0cac: 3f 98 0d  call  $0d98
0caf: 64 08     cmp   a,$08
0cb1: 90 1b     bcc   $0cce
0cb3: e4 38     mov   a,$38
0cb5: 08 80     or    a,#$80
0cb7: 3f 81 0d  call  $0d81
0cba: 90 6a     bcc   $0d26
0cbc: 2f 10     bra   $0cce
0cbe: e4 38     mov   a,$38
0cc0: 08 80     or    a,#$80
0cc2: 3f 81 0d  call  $0d81
0cc5: b0 07     bcs   $0cce
0cc7: 3f 98 0d  call  $0d98
0cca: 64 08     cmp   a,$08
0ccc: b0 58     bcs   $0d26
0cce: 3a 04     incw  $04
0cd0: 6d        push  y
0cd1: ce        pop   x
0cd2: 8d 00     mov   y,#$00
0cd4: f7 04     mov   a,($04)+y
0cd6: 2d        push  a
0cd7: 3a 04     incw  $04
0cd9: f7 04     mov   a,($04)+y
0cdb: fd        mov   y,a
0cdc: ae        pop   a
0cdd: 3a 04     incw  $04
0cdf: 7a 04     addw  ya,$04
0ce1: d4 4e     mov   $4e+x,a
0ce3: dd        mov   a,y
0ce4: d4 60     mov   $60+x,a
0ce6: e4 38     mov   a,$38
0ce8: 08 80     or    a,#$80
0cea: d5 1c 02  mov   $021c+x,a
0ced: e4 06     mov   a,$06
0cef: d5 24 02  mov   $0224+x,a
0cf2: ab 06     inc   $06
0cf4: e4 08     mov   a,$08
0cf6: d4 ca     mov   $ca+x,a
0cf8: e8 00     mov   a,#$00
0cfa: d5 88 02  mov   $0288+x,a
0cfd: 3f 27 0d  call  $0d27
0d00: e4 3b     mov   a,$3b
0d02: d5 0a 02  mov   $020a+x,a
0d05: e4 3a     mov   a,$3a
0d07: d5 dc 00  mov   $00dc+x,a
0d0a: e8 04     mov   a,#$04
0d0c: d4 96     mov   $96+x,a
0d0e: 53 0f 09  bbc2  $0f,$0d1a
0d11: f5 c5 01  mov   a,$01c5+x
0d14: 04 16     or    a,$16
0d16: c4 16     mov   $16,a
0d18: 2f 88     bra   $0ca2
0d1a: f5 c5 01  mov   a,$01c5+x
0d1d: 48 ff     eor   a,#$ff
0d1f: 24 16     and   a,$16
0d21: c4 16     mov   $16,a
0d23: 5f a2 0c  jmp   $0ca2

0d26: 6f        ret

0d27: e8 80     mov   a,#$80
0d29: d4 a8     mov   $a8+x,a
0d2b: f5 c5 01  mov   a,$01c5+x
0d2e: 04 13     or    a,$13
0d30: c4 13     mov   $13,a
0d32: 6f        ret

0d33: fa 38 0e  mov   ($0e),($38)
0d36: 3f 60 0b  call  $0b60
0d39: 3f aa 0d  call  $0daa
0d3c: 3f de 0d  call  $0dde
0d3f: 3f 4a 03  call  $034a
0d42: 8f 00 16  mov   $16,#$00
0d45: 8f f0 1e  mov   $1e,#$f0
0d48: 3f e4 0b  call  $0be4
0d4b: 8f 20 1c  mov   $1c,#$20
0d4e: 8d 00     mov   y,#$00
0d50: f7 04     mov   a,($04)+y
0d52: 68 ff     cmp   a,#$ff
0d54: f0 08     beq   $0d5e
0d56: 3a 04     incw  $04
0d58: 5d        mov   x,a
0d59: 3f f1 0d  call  $0df1
0d5c: 2f f0     bra   $0d4e
0d5e: 6f        ret

0d5f: 5f c7 0d  jmp   $0dc7

0d62: c4 02     mov   $02,a
0d64: e4 11     mov   a,$11
0d66: 2d        push  a
0d67: 4d        push  x
0d68: cd 07     mov   x,#$07
0d6a: e4 02     mov   a,$02
0d6c: 75 d4 02  cmp   a,$02d4+x
0d6f: d0 08     bne   $0d79
0d71: f5 c5 01  mov   a,$01c5+x
0d74: c4 11     mov   $11,a
0d76: 3f 85 06  call  $0685
0d79: 1d        dec   x
0d7a: 10 ee     bpl   $0d6a
0d7c: ce        pop   x
0d7d: ae        pop   a
0d7e: c4 11     mov   $11,a
0d80: 6f        ret

0d81: 8d 07     mov   y,#$07
0d83: 76 1c 02  cmp   a,$021c+y
0d86: d0 09     bne   $0d91
0d88: 2d        push  a
0d89: f6 24 02  mov   a,$0224+y
0d8c: 64 06     cmp   a,$06
0d8e: f0 06     beq   $0d96
0d90: ae        pop   a
0d91: dc        dec   y
0d92: 10 ef     bpl   $0d83
0d94: 60        clrc
0d95: 6f        ret

0d96: ae        pop   a
0d97: 6f        ret

0d98: 4d        push  x
0d99: cd 07     mov   x,#$07
0d9b: e8 ff     mov   a,#$ff
0d9d: 74 ca     cmp   a,$ca+x
0d9f: 90 04     bcc   $0da5
0da1: f4 ca     mov   a,$ca+x
0da3: 4d        push  x
0da4: ee        pop   y
0da5: 1d        dec   x
0da6: 10 f5     bpl   $0d9d
0da8: ce        pop   x
0da9: 6f        ret

0daa: cd 09     mov   x,#$09
0dac: e8 ff     mov   a,#$ff
0dae: d5 12 02  mov   $0212+x,a
0db1: e8 00     mov   a,#$00
0db3: d4 c0     mov   $c0+x,a
0db5: 1d        dec   x
0db6: 10 f4     bpl   $0dac
0db8: 6f        ret

0db9: cd 00     mov   x,#$00
0dbb: 8f 01 11  mov   $11,#$01
0dbe: 3f 85 06  call  $0685
0dc1: 3d        inc   x
0dc2: 0b 11     asl   $11
0dc4: d0 f8     bne   $0dbe
0dc6: 6f        ret

0dc7: cd 00     mov   x,#$00
0dc9: 8f 01 11  mov   $11,#$01
0dcc: f5 1c 02  mov   a,$021c+x
0dcf: 10 07     bpl   $0dd8
0dd1: 68 ff     cmp   a,#$ff
0dd3: f0 03     beq   $0dd8
0dd5: 3f 85 06  call  $0685
0dd8: 3d        inc   x
0dd9: 0b 11     asl   $11
0ddb: d0 ef     bne   $0dcc
0ddd: 6f        ret

0dde: cd 00     mov   x,#$00
0de0: 8f 01 11  mov   $11,#$01
0de3: f5 1c 02  mov   a,$021c+x
0de6: 30 03     bmi   $0deb
0de8: 3f 85 06  call  $0685
0deb: 3d        inc   x
0dec: 0b 11     asl   $11
0dee: d0 f3     bne   $0de3
0df0: 6f        ret

0df1: f7 04     mov   a,($04)+y
0df3: 2d        push  a
0df4: 3a 04     incw  $04
0df6: f7 04     mov   a,($04)+y
0df8: fd        mov   y,a
0df9: ae        pop   a
0dfa: 3a 04     incw  $04
0dfc: 7a 04     addw  ya,$04
0dfe: d4 44     mov   $44+x,a
0e00: dd        mov   a,y
0e01: d4 56     mov   $56+x,a
0e03: e4 38     mov   a,$38
0e05: d5 12 02  mov   $0212+x,a
0e08: e8 00     mov   a,#$00
0e0a: d5 5a 02  mov   $025a+x,a
0e0d: d5 6c 02  mov   $026c+x,a
0e10: d5 7e 02  mov   $027e+x,a
0e13: d5 b6 02  mov   $02b6+x,a
0e16: d5 c0 02  mov   $02c0+x,a
0e19: d4 9e     mov   $9e+x,a
0e1b: bc        inc   a
0e1c: d4 7a     mov   $7a+x,a
0e1e: e8 08     mov   a,#$08
0e20: d4 8c     mov   $8c+x,a
0e22: e8 10     mov   a,#$10
0e24: d5 00 02  mov   $0200+x,a
0e27: e8 c8     mov   a,#$c8
0e29: d5 90 02  mov   $0290+x,a
0e2c: e8 20     mov   a,#$20
0e2e: d5 ac 02  mov   $02ac+x,a
0e31: e8 40     mov   a,#$40
0e33: d4 c0     mov   $c0+x,a
0e35: f5 74 10  mov   a,$1074+x
0e38: d4 68     mov   $68+x,a
0e3a: 6f        ret

0e3b: ba 2a     movw  ya,$2a
0e3d: f0 25     beq   $0e64
0e3f: 30 0c     bmi   $0e4d
0e41: 7a 26     addw  ya,$26
0e43: da 26     movw  $26,ya
0e45: 30 10     bmi   $0e57
0e47: 9a 28     subw  ya,$28
0e49: 30 14     bmi   $0e5f
0e4b: 2f 0a     bra   $0e57
0e4d: 7a 26     addw  ya,$26
0e4f: da 26     movw  $26,ya
0e51: 30 04     bmi   $0e57
0e53: 9a 28     subw  ya,$28
0e55: 10 08     bpl   $0e5f
0e57: ba 28     movw  ya,$28
0e59: da 26     movw  $26,ya
0e5b: ba 00     movw  ya,$00
0e5d: da 2a     movw  $2a,ya
0e5f: e4 27     mov   a,$27
0e61: 5f bf 0e  jmp   $0ebf

0e64: 6f        ret

0e65: ba 24     movw  ya,$24
0e67: f0 25     beq   $0e8e
0e69: 30 0c     bmi   $0e77
0e6b: 7a 20     addw  ya,$20
0e6d: da 20     movw  $20,ya
0e6f: 30 10     bmi   $0e81
0e71: 9a 22     subw  ya,$22
0e73: 30 14     bmi   $0e89
0e75: 2f 0a     bra   $0e81
0e77: 7a 20     addw  ya,$20
0e79: da 20     movw  $20,ya
0e7b: 30 04     bmi   $0e81
0e7d: 9a 22     subw  ya,$22
0e7f: 10 08     bpl   $0e89
0e81: ba 22     movw  ya,$22
0e83: da 20     movw  $20,ya
0e85: ba 00     movw  ya,$00
0e87: da 24     movw  $24,ya
0e89: e4 21     mov   a,$21
0e8b: 5f e4 0b  jmp   $0be4

0e8e: 6f        ret

0e8f: c4 04     mov   $04,a
0e91: ba 02     movw  ya,$02
0e93: 10 0e     bpl   $0ea3
0e95: ba 00     movw  ya,$00
0e97: 9a 02     subw  ya,$02
0e99: 3f a3 0e  call  $0ea3
0e9c: da 06     movw  $06,ya
0e9e: ba 00     movw  ya,$00
0ea0: 9a 06     subw  ya,$06
0ea2: 6f        ret

0ea3: 2d        push  a
0ea4: e4 04     mov   a,$04
0ea6: cf        mul   ya
0ea7: da 06     movw  $06,ya
0ea9: ae        pop   a
0eaa: eb 04     mov   y,$04
0eac: cf        mul   ya
0ead: dd        mov   a,y
0eae: 8d 00     mov   y,#$00
0eb0: 7a 06     addw  ya,$06
0eb2: 6f        ret

0eb3: e8 ff     mov   a,#$ff
0eb5: c4 26     mov   $26,a
0eb7: c4 20     mov   $20,a
0eb9: e8 7f     mov   a,#$7f
0ebb: c4 27     mov   $27,a
0ebd: c4 21     mov   $21,a
0ebf: 8f 0c f2  mov   $f2,#$0c
0ec2: c4 f3     mov   $f3,a
0ec4: 8f 1c f2  mov   $f2,#$1c
0ec7: c4 f3     mov   $f3,a
0ec9: e4 1a     mov   a,$1a
0ecb: f0 04     beq   $0ed1
0ecd: e8 00     mov   a,#$00
0ecf: 2f 13     bra   $0ee4
0ed1: e4 2c     mov   a,$2c
0ed3: 10 03     bpl   $0ed8
0ed5: 48 ff     eor   a,#$ff
0ed7: bc        inc   a
0ed8: eb 27     mov   y,$27
0eda: cf        mul   ya
0edb: dd        mov   a,y
0edc: 1c        asl   a
0edd: eb 2c     mov   y,$2c
0edf: 10 03     bpl   $0ee4
0ee1: 48 ff     eor   a,#$ff
0ee3: bc        inc   a
0ee4: 64 35     cmp   a,$35
0ee6: f0 0c     beq   $0ef4
0ee8: c4 35     mov   $35,a
0eea: 8f 3c f2  mov   $f2,#$3c
0eed: c4 f3     mov   $f3,a
0eef: 8f 2c f2  mov   $f2,#$2c
0ef2: c4 f3     mov   $f3,a
0ef4: 6f        ret

0ef5: 4d        push  x
0ef6: f5 40 02  mov   a,$0240+x
0ef9: c4 2f     mov   $2f,a
0efb: f5 52 02  mov   a,$0252+x
0efe: c4 30     mov   $30,a
0f00: 7d        mov   a,x
0f01: 9f        xcn   a
0f02: 08 04     or    a,#$04
0f04: 5d        mov   x,a
0f05: 8d 00     mov   y,#$00
0f07: f7 2f     mov   a,($2f)+y
0f09: 10 06     bpl   $0f11
0f0b: 09 11 14  or    ($14),($11)
0f0e: dd        mov   a,y
0f0f: 2f 07     bra   $0f18
0f11: e4 11     mov   a,$11
0f13: 4e 14 00  tclr1 $0014
0f16: f7 2f     mov   a,($2f)+y
0f18: d8 f2     mov   $f2,x
0f1a: c4 f3     mov   $f3,a
0f1c: 3d        inc   x
0f1d: fc        inc   y
0f1e: ad 04     cmp   y,#$04
0f20: d0 f4     bne   $0f16
0f22: ce        pop   x
0f23: f7 2f     mov   a,($2f)+y
0f25: d4 b8     mov   $b8+x,a
0f27: fc        inc   y
0f28: f7 2f     mov   a,($2f)+y
0f2a: d5 d5 01  mov   $01d5+x,a
0f2d: fc        inc   y
0f2e: f7 2f     mov   a,($2f)+y
0f30: d5 cd 01  mov   $01cd+x,a
0f33: 6f        ret

0f34: 2d        push  a
0f35: f4 96     mov   a,$96+x
0f37: 28 10     and   a,#$10
0f39: f0 05     beq   $0f40
0f3b: ae        pop   a
0f3c: 8d 00     mov   y,#$00
0f3e: 2f 2c     bra   $0f6c
0f40: 33 0f 24  bbc1  $0f,$0f67
0f43: f5 0a 02  mov   a,$020a+x
0f46: fd        mov   y,a
0f47: f6 78 0f  mov   a,$0f78+y
0f4a: ee        pop   y
0f4b: 6d        push  y
0f4c: cf        mul   ya
0f4d: 7d        mov   a,x
0f4e: 9f        xcn   a
0f4f: c4 f2     mov   $f2,a
0f51: cb f3     mov   $f3,y
0f53: e8 20     mov   a,#$20
0f55: 80        setc
0f56: b5 0a 02  sbc   a,$020a+x
0f59: fd        mov   y,a
0f5a: f6 78 0f  mov   a,$0f78+y
0f5d: ee        pop   y
0f5e: cf        mul   ya
0f5f: 7d        mov   a,x
0f60: 9f        xcn   a
0f61: bc        inc   a
0f62: c4 f2     mov   $f2,a
0f64: cb f3     mov   $f3,y
0f66: 6f        ret

0f67: ae        pop   a
0f68: ec 88 0f  mov   y,$0f88
0f6b: cf        mul   ya
0f6c: 7d        mov   a,x
0f6d: 9f        xcn   a
0f6e: c4 f2     mov   $f2,a
0f70: cb f3     mov   $f3,y
0f72: bc        inc   a
0f73: c4 f2     mov   $f2,a
0f75: cb f3     mov   $f3,y
0f77: 6f        ret

0f78: db $80,$80,$7f,$7f,$7e,$7d,$7c,$7a
0f80: db $78,$76,$74,$71,$64,$6b,$68,$64
0f88: db $60,$5c,$57,$53,$4e,$49,$43,$3e
0f90: db $38,$32,$2b,$25,$1e,$17,$10,$08
0f98: db $00

0f99: f5 d5 01  mov   a,$01d5+x
0f9c: 68 80     cmp   a,#$80
0f9e: f0 3e     beq   $0fde
0fa0: fd        mov   y,a
0fa1: f5 cd 01  mov   a,$01cd+x
0fa4: 7a 31     addw  ya,$31
0fa6: da 31     movw  $31,ya
0fa8: f6 03 01  mov   a,$0103+y
0fab: c4 08     mov   $08,a
0fad: f6 64 01  mov   a,$0164+y
0fb0: c4 09     mov   $09,a
0fb2: f6 65 01  mov   a,$0165+y
0fb5: 2d        push  a
0fb6: f6 04 01  mov   a,$0104+y
0fb9: ee        pop   y
0fba: 9a 08     subw  ya,$08
0fbc: 6d        push  y
0fbd: eb 31     mov   y,$31
0fbf: cf        mul   ya
0fc0: cb 06     mov   $06,y
0fc2: 8f 00 07  mov   $07,#$00
0fc5: ee        pop   y
0fc6: e4 31     mov   a,$31
0fc8: cf        mul   ya
0fc9: 7a 06     addw  ya,$06
0fcb: 7a 08     addw  ya,$08
0fcd: c4 08     mov   $08,a
0fcf: 7d        mov   a,x
0fd0: 9f        xcn   a
0fd1: 08 02     or    a,#$02
0fd3: c4 f2     mov   $f2,a
0fd5: fa 08 f3  mov   ($f3),($08)
0fd8: bc        inc   a
0fd9: c4 f2     mov   $f2,a
0fdb: cb f3     mov   $f3,y
0fdd: 6f        ret

0fde: 7d        mov   a,x
0fdf: 9f        xcn   a
0fe0: 08 02     or    a,#$02
0fe2: c4 f2     mov   $f2,a
0fe4: fa 31 f3  mov   ($f3),($31)
0fe7: bc        inc   a
0fe8: c4 f2     mov   $f2,a
0fea: fa 32 f3  mov   ($f3),($32)
0fed: 6f        ret

0fee: ba 0a     movw  ya,$0a
0ff0: 0b 0a     asl   $0a
0ff2: 2b 0b     rol   $0b
0ff4: 0b 0a     asl   $0a
0ff6: 2b 0b     rol   $0b
0ff8: 7a 0a     addw  ya,$0a
0ffa: 7a 0c     addw  ya,$0c
0ffc: da 0a     movw  $0a,ya
0ffe: 6f        ret

0fff: 8f 4f fa  mov   $fa,#$4f
1002: 8f 01 f1  mov   $f1,#$01
1005: 6f        ret

1006: 1c        asl   a
1007: 1c        asl   a
1008: 1c        asl   a
1009: 5d        mov   x,a
100a: 8d 0f     mov   y,#$0f
100c: f5 1c 10  mov   a,$101c+x
100f: cb f2     mov   $f2,y
1011: c4 f3     mov   $f3,a
1013: 3d        inc   x
1014: dd        mov   a,y
1015: 60        clrc
1016: 88 10     adc   a,#$10
1018: fd        mov   y,a
1019: 10 f1     bpl   $100c
101b: 6f        ret

101c: db $7f,$00,$00,$00,$00,$00,$00,$00
1024: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
102c: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9

1034: 64 19     cmp   a,$19
1036: f0 2b     beq   $1063
1038: c4 19     mov   $19,a
103a: 8f 3c 1a  mov   $1a,#$3c
103d: a2 17     set5  $17
103f: 8f 6c f2  mov   $f2,#$6c
1042: fa 17 f3  mov   ($f3),($17)
1045: 8f 7d f2  mov   $f2,#$7d
1048: fa 19 f3  mov   ($f3),($19)
104b: e8 00     mov   a,#$00
104d: 8f 4d f2  mov   $f2,#$4d
1050: c4 f3     mov   $f3,a
1052: 8f 0d f2  mov   $f2,#$0d
1055: c4 f3     mov   $f3,a
1057: 8f 3c f2  mov   $f2,#$3c
105a: c4 f3     mov   $f3,a
105c: 8f 2c f2  mov   $f2,#$2c
105f: c4 f3     mov   $f3,a
1061: c4 35     mov   $35,a
1063: 6f        ret

1064: db $06,$08,$0a,$0c,$0d,$0e,$0f,$10
106c: db $10,$11,$12,$13,$14,$16,$18,$1a

1074: db $00,$0a,$14,$1e,$28,$32,$3c,$46
107c: db $50,$5a,$64,$6e,$78,$82,$8c,$96
1084: db $a0,$aa
