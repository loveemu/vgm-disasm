0640: cd 7e     mov   x,#$7e
0642: bd        mov   sp,x
0643: cd ff     mov   x,#$ff
0645: 3d        inc   x
0646: 3e f7     cmp   x,$f7
0648: d0 fc     bne   $0646
064a: d8 00     mov   $00,x
064c: d8 f7     mov   $f7,x
064e: e8 00     mov   a,#$00
0650: c5 d5 02  mov   $02d5,a
0653: 3f 32 09  call  $0932
0656: e8 00     mov   a,#$00
0658: 3f 73 14  call  $1473
065b: f8 00     mov   x,$00
065d: 3d        inc   x
065e: d8 00     mov   $00,x
0660: e4 fe     mov   a,$fe
0662: f0 0c     beq   $0670
0664: e5 d1 02  mov   a,$02d1
0667: 68 01     cmp   a,#$01
0669: d0 05     bne   $0670
066b: 4d        push  x
066c: 3f 85 15  call  $1585
066f: ce        pop   x
0670: e4 fd     mov   a,$fd
0672: f0 1e     beq   $0692
0674: e5 d1 02  mov   a,$02d1
0677: f0 06     beq   $067f
0679: 3f 8c 09  call  $098c
067c: 3f ac 09  call  $09ac
067f: 3f 9b 06  call  $069b
0682: e5 d1 02  mov   a,$02d1
0685: f0 03     beq   $068a
0687: 3f 14 12  call  $1214
068a: 3f 9b 06  call  $069b
068d: 3f fc 14  call  $14fc
0690: f8 00     mov   x,$00
0692: 3e f7     cmp   x,$f7
0694: d0 ca     bne   $0660
0696: 3f a8 06  call  $06a8
0699: 2f c2     bra   $065d
069b: f8 00     mov   x,$00
069d: 3e f7     cmp   x,$f7
069f: f0 01     beq   $06a2
06a1: 6f        ret

06a2: e8 06     mov   a,#$06
06a4: 2d        push  a
06a5: e8 ae     mov   a,#$ae
06a7: 2d        push  a
06a8: 7d        mov   a,x
06a9: f8 f4     mov   x,$f4
06ab: 1f b2 06  jmp   ($06b2+x)

06ae: 3d        inc   x
06af: d8 00     mov   $00,x
06b1: 6f        ret

06b2: dw $0000
06b4: dw $085b
06b6: dw $0829
06b8: dw $080e
06ba: dw $07f7
06bc: dw $08eb
06be: dw $06d6
06c0: dw $08d6
06c2: dw $06e2
06c4: dw $070f
06c6: dw $0748
06c8: dw $077b
06ca: dw $0772
06cc: dw $0784
06ce: dw $07e7
06d0: dw $078d
06d2: dw $07b9
06d4: dw $0720

06d6: 5d        mov   x,a
06d7: ba f5     movw  ya,$f5
06d9: d8 f7     mov   $f7,x
06db: c5 3d 04  mov   $043d,a
06de: cc 3e 04  mov   $043e,y
06e1: 6f        ret

06e2: 5d        mov   x,a
06e3: e4 f5     mov   a,$f5
06e5: d8 f7     mov   $f7,x
06e7: 4d        push  x
06e8: 3f b4 17  call  $17b4
06eb: 3f 82 09  call  $0982
06ee: 8f 6c f2  mov   $f2,#$6c
06f1: 8f 20 f3  mov   $f3,#$20
06f4: 8f 0c f2  mov   $f2,#$0c
06f7: 8f 7f f3  mov   $f3,#$7f
06fa: 8f 1c f2  mov   $f2,#$1c
06fd: 8f 7f f3  mov   $f3,#$7f
0700: 8d 01     mov   y,#$01
0702: e5 d5 02  mov   a,$02d5
0705: 28 01     and   a,#$01
0707: f0 01     beq   $070a
0709: fc        inc   y
070a: cc d1 02  mov   $02d1,y
070d: ce        pop   x
070e: 6f        ret

070f: 5d        mov   x,a
0710: d8 f7     mov   $f7,x
0712: 4d        push  x
0713: 3f 32 09  call  $0932
0716: 3f 56 14  call  $1456
0719: e8 00     mov   a,#$00
071b: c5 d1 02  mov   $02d1,a
071e: ce        pop   x
071f: 6f        ret

0720: 5d        mov   x,a
0721: d8 f7     mov   $f7,x
0723: e8 02     mov   a,#$02
0725: c5 d1 02  mov   $02d1,a
0728: 4d        push  x
0729: e8 00     mov   a,#$00
072b: cd 07     mov   x,#$07
072d: d4 1d     mov   $1d+x,a
072f: d4 15     mov   $15+x,a
0731: d4 2d     mov   $2d+x,a
0733: d5 da 02  mov   $02da+x,a
0736: d5 e2 02  mov   $02e2+x,a
0739: 1d        dec   x
073a: 10 f1     bpl   $072d
073c: cd 0f     mov   x,#$0f
073e: d4 b9     mov   $b9+x,a
0740: 1d        dec   x
0741: 10 fb     bpl   $073e
0743: 3f 56 14  call  $1456
0746: ce        pop   x
0747: 6f        ret

0748: 5d        mov   x,a
0749: e4 f5     mov   a,$f5
074b: c5 d3 02  mov   $02d3,a
074e: e4 f6     mov   a,$f6
0750: c5 d4 02  mov   $02d4,a
0753: d8 f7     mov   $f7,x
0755: 3d        inc   x
0756: 3e f7     cmp   x,$f7
0758: d0 fc     bne   $0756
075a: eb f4     mov   y,$f4
075c: d8 f7     mov   $f7,x
075e: 4d        push  x
075f: e5 d4 02  mov   a,$02d4
0762: 30 07     bmi   $076b
0764: dd        mov   a,y
0765: 3f e7 06  call  $06e7
0768: 8f 00 a0  mov   $a0,#$00
076b: e8 00     mov   a,#$00
076d: c5 d2 02  mov   $02d2,a
0770: ce        pop   x
0771: 6f        ret

0772: 5d        mov   x,a
0773: e5 d3 02  mov   a,$02d3
0776: c4 f4     mov   $f4,a
0778: d8 f7     mov   $f7,x
077a: 6f        ret

077b: 5d        mov   x,a
077c: e4 f5     mov   a,$f5
077e: d8 f7     mov   $f7,x
0780: c5 d5 02  mov   $02d5,a
0783: 6f        ret

0784: 5d        mov   x,a
0785: e4 f5     mov   a,$f5
0787: d8 f7     mov   $f7,x
0789: c5 d6 02  mov   $02d6,a
078c: 6f        ret

078d: 5d        mov   x,a
078e: ba f5     movw  ya,$f5
0790: d8 f7     mov   $f7,x
0792: 4d        push  x
0793: 5d        mov   x,a
0794: e5 d5 02  mov   a,$02d5
0797: 28 40     and   a,#$40
0799: f0 07     beq   $07a2
079b: dd        mov   a,y
079c: 28 80     and   a,#$80
079e: f0 02     beq   $07a2
07a0: 8d 40     mov   y,#$40
07a2: e5 d5 02  mov   a,$02d5
07a5: 28 80     and   a,#$80
07a7: f0 02     beq   $07ab
07a9: 8d 40     mov   y,#$40
07ab: 7d        mov   a,x
07ac: cd 07     mov   x,#$07
07ae: 74 0d     cmp   a,$0d+x
07b0: d0 02     bne   $07b4
07b2: db 5d     mov   $5d+x,y
07b4: 1d        dec   x
07b5: 10 f7     bpl   $07ae
07b7: ce        pop   x
07b8: 6f        ret

07b9: 5d        mov   x,a
07ba: e4 f5     mov   a,$f5
07bc: d8 f7     mov   $f7,x
07be: 4d        push  x
07bf: cd 07     mov   x,#$07
07c1: 74 0d     cmp   a,$0d+x
07c3: d0 1d     bne   $07e2
07c5: 2d        push  a
07c6: f5 e2 02  mov   a,$02e2+x
07c9: 30 0a     bmi   $07d5
07cb: e8 00     mov   a,#$00
07cd: d5 e2 02  mov   $02e2+x,a
07d0: d5 da 02  mov   $02da+x,a
07d3: 2f 06     bra   $07db
07d5: 80        setc
07d6: a8 80     sbc   a,#$80
07d8: d5 e2 02  mov   $02e2+x,a
07db: f4 3d     mov   a,$3d+x
07dd: 08 10     or    a,#$10
07df: d4 3d     mov   $3d+x,a
07e1: ae        pop   a
07e2: 1d        dec   x
07e3: 10 dc     bpl   $07c1
07e5: ce        pop   x
07e6: 6f        ret

07e7: 5d        mov   x,a
07e8: e4 f5     mov   a,$f5
07ea: d8 f7     mov   $f7,x
07ec: 8f 0c f2  mov   $f2,#$0c
07ef: c4 f3     mov   $f3,a
07f1: 8f 1c f2  mov   $f2,#$1c
07f4: c4 f3     mov   $f3,a
07f6: 6f        ret

07f7: f8 00     mov   x,$00
07f9: d8 f7     mov   $f7,x
07fb: e8 ed     mov   a,#$ed
07fd: 8d 02     mov   y,#$02
07ff: da 03     movw  $03,ya
0801: 3d        inc   x
0802: 3e f7     cmp   x,$f7
0804: d0 fc     bne   $0802
0806: ba f5     movw  ya,$f5
0808: da 01     movw  $01,ya
080a: d8 f7     mov   $f7,x
080c: 2f 6e     bra   $087c
080e: f8 00     mov   x,$00
0810: ba f5     movw  ya,$f5
0812: d8 f7     mov   $f7,x
0814: da 03     movw  $03,ya
0816: c5 3d 03  mov   $033d,a
0819: cc 3e 03  mov   $033e,y
081c: 3d        inc   x
081d: 3e f7     cmp   x,$f7
081f: d0 fc     bne   $081d
0821: ba f5     movw  ya,$f5
0823: da 01     movw  $01,ya
0825: d8 f7     mov   $f7,x
0827: 2f 53     bra   $087c
0829: f8 00     mov   x,$00
082b: ba f5     movw  ya,$f5
082d: d8 f7     mov   $f7,x
082f: da 03     movw  $03,ya
0831: 3d        inc   x
0832: 3e f7     cmp   x,$f7
0834: d0 fc     bne   $0832
0836: ba f5     movw  ya,$f5
0838: da 01     movw  $01,ya
083a: e4 f4     mov   a,$f4
083c: d8 f7     mov   $f7,x
083e: 8d 00     mov   y,#$00
0840: da 05     movw  $05,ya
0842: 0b 05     asl   $05
0844: 2b 06     rol   $06
0846: 8d 04     mov   y,#$04
0848: e8 3f     mov   a,#$3f
084a: 7a 05     addw  ya,$05
084c: da 05     movw  $05,ya
084e: 8d 00     mov   y,#$00
0850: e4 03     mov   a,$03
0852: d7 05     mov   ($05)+y,a
0854: fc        inc   y
0855: e4 04     mov   a,$04
0857: d7 05     mov   ($05)+y,a
0859: 2f 21     bra   $087c
085b: f8 00     mov   x,$00
085d: ba f5     movw  ya,$f5
085f: d8 f7     mov   $f7,x
0861: da 03     movw  $03,ya
0863: 3d        inc   x
0864: 3e f7     cmp   x,$f7
0866: d0 fc     bne   $0864
0868: ba f5     movw  ya,$f5
086a: da 01     movw  $01,ya
086c: e4 f4     mov   a,$f4
086e: d8 f7     mov   $f7,x
0870: 1c        asl   a
0871: fd        mov   y,a
0872: e4 03     mov   a,$03
0874: d6 3f 03  mov   $033f+y,a
0877: e4 04     mov   a,$04
0879: d6 40 03  mov   $0340+y,a
087c: 8d 00     mov   y,#$00
087e: 3d        inc   x
087f: 3e f7     cmp   x,$f7
0881: d0 fc     bne   $087f
0883: e4 f4     mov   a,$f4
0885: d7 03     mov   ($03)+y,a
0887: 1a 01     decw  $01
0889: f0 1c     beq   $08a7
088b: fc        inc   y
088c: f0 1c     beq   $08aa
088e: e4 f5     mov   a,$f5
0890: d7 03     mov   ($03)+y,a
0892: 1a 01     decw  $01
0894: f0 11     beq   $08a7
0896: fc        inc   y
0897: f0 28     beq   $08c1
0899: e4 f6     mov   a,$f6
089b: d8 f7     mov   $f7,x
089d: d7 03     mov   ($03)+y,a
089f: fc        inc   y
08a0: f0 2d     beq   $08cf
08a2: 1a 01     decw  $01
08a4: d0 d8     bne   $087e
08a6: 6f        ret

08a7: d8 f7     mov   $f7,x
08a9: 6f        ret

08aa: ab 04     inc   $04
08ac: e4 f5     mov   a,$f5
08ae: d7 03     mov   ($03)+y,a
08b0: 1a 01     decw  $01
08b2: f0 f3     beq   $08a7
08b4: fc        inc   y
08b5: e4 f6     mov   a,$f6
08b7: d8 f7     mov   $f7,x
08b9: d7 03     mov   ($03)+y,a
08bb: fc        inc   y
08bc: 1a 01     decw  $01
08be: d0 be     bne   $087e
08c0: 6f        ret

08c1: ab 04     inc   $04
08c3: e4 f6     mov   a,$f6
08c5: d8 f7     mov   $f7,x
08c7: d7 03     mov   ($03)+y,a
08c9: fc        inc   y
08ca: 1a 01     decw  $01
08cc: d0 b0     bne   $087e
08ce: 6f        ret

08cf: ab 04     inc   $04
08d1: 1a 01     decw  $01
08d3: d0 a9     bne   $087e
08d5: 6f        ret

08d6: f8 00     mov   x,$00
08d8: ba f5     movw  ya,$f5
08da: d8 f7     mov   $f7,x
08dc: da 03     movw  $03,ya
08de: 3d        inc   x
08df: 3e f7     cmp   x,$f7
08e1: d0 fc     bne   $08df
08e3: ba f5     movw  ya,$f5
08e5: da 01     movw  $01,ya
08e7: d8 f7     mov   $f7,x
08e9: 2f 91     bra   $087c
08eb: f8 00     mov   x,$00
08ed: d8 f7     mov   $f7,x
08ef: e8 91     mov   a,#$91
08f1: 8d 02     mov   y,#$02
08f3: da 03     movw  $03,ya
08f5: 3d        inc   x
08f6: 3e f7     cmp   x,$f7
08f8: d0 fc     bne   $08f6
08fa: ba f5     movw  ya,$f5
08fc: da 01     movw  $01,ya
08fe: e4 f4     mov   a,$f4
0900: d8 f7     mov   $f7,x
0902: c5 90 02  mov   $0290,a
0905: 3f 7c 08  call  $087c
0908: e5 d5 02  mov   a,$02d5
090b: 28 02     and   a,#$02
090d: d0 22     bne   $0931
090f: 4d        push  x
0910: cd 00     mov   x,#$00
0912: 8d 00     mov   y,#$00
0914: f5 91 02  mov   a,$0291+x
0917: 3d        inc   x
0918: d6 05 00  mov   $0005+y,a
091b: fc        inc   y
091c: ad 08     cmp   y,#$08
091e: d0 f4     bne   $0914
0920: e5 d5 02  mov   a,$02d5
0923: 10 03     bpl   $0928
0925: 8f 40 0c  mov   $0c,#$40
0928: 3f 95 11  call  $1195
092b: 8c 90 02  dec   $0290
092e: d0 e2     bne   $0912
0930: ce        pop   x
0931: 6f        ret

0932: e9 d5 02  mov   x,$02d5
0935: e8 7f     mov   a,#$7f
0937: 8d 01     mov   y,#$01
0939: da 05     movw  $05,ya
093b: e8 3f     mov   a,#$3f
093d: 8d 06     mov   y,#$06
093f: da 07     movw  $07,ya
0941: e8 00     mov   a,#$00
0943: fd        mov   y,a
0944: d7 05     mov   ($05)+y,a
0946: 3a 05     incw  $05
0948: ba 05     movw  ya,$05
094a: 5a 07     cmpw  ya,$07
094c: d0 f3     bne   $0941
094e: c9 d5 02  mov   $02d5,x
0951: e8 00     mov   a,#$00
0953: cd 01     mov   x,#$01
0955: d5 00 00  mov   $0000+x,a
0958: 3d        inc   x
0959: c8 f0     cmp   x,#$f0
095b: d0 f8     bne   $0955
095d: cd 00     mov   x,#$00
095f: e8 30     mov   a,#$30
0961: d5 00 02  mov   $0200+x,a
0964: d5 02 02  mov   $0202+x,a
0967: e8 10     mov   a,#$10
0969: d5 01 02  mov   $0201+x,a
096c: d5 03 02  mov   $0203+x,a
096f: 3d        inc   x
0970: 3d        inc   x
0971: 3d        inc   x
0972: 3d        inc   x
0973: c8 20     cmp   x,#$20
0975: d0 e8     bne   $095f
0977: 8f 00 f1  mov   $f1,#$00
097a: 8f 80 fa  mov   $fa,#$80
097d: 8f 01 f1  mov   $f1,#$01
0980: e4 fd     mov   a,$fd
0982: e8 40     mov   a,#$40
0984: c4 a0     mov   $a0,a
0986: e8 de     mov   a,#$de
0988: c5 ea 02  mov   $02ea,a
098b: 6f        ret

098c: cd 07     mov   x,#$07
098e: f5 da 02  mov   a,$02da+x
0991: 15 e2 02  or    a,$02e2+x
0994: f0 12     beq   $09a8
0996: f5 da 02  mov   a,$02da+x
0999: 9c        dec   a
099a: d5 da 02  mov   $02da+x,a
099d: 68 ff     cmp   a,#$ff
099f: d0 07     bne   $09a8
09a1: f5 e2 02  mov   a,$02e2+x
09a4: 9c        dec   a
09a5: d5 e2 02  mov   $02e2+x,a
09a8: 1d        dec   x
09a9: 10 e3     bpl   $098e
09ab: 6f        ret

09ac: cd 00     mov   x,#$00
09ae: d8 97     mov   $97,x
09b0: f5 46 14  mov   a,$1446+x
09b3: c4 98     mov   $98,a
09b5: f5 3e 14  mov   a,$143e+x
09b8: c4 99     mov   $99,a
09ba: f4 15     mov   a,$15+x
09bc: c4 95     mov   $95,a
09be: c4 05     mov   $05,a
09c0: f4 1d     mov   a,$1d+x
09c2: c4 96     mov   $96,a
09c4: 04 05     or    a,$05
09c6: f0 48     beq   $0a10
09c8: f4 3d     mov   a,$3d+x
09ca: 28 20     and   a,#$20
09cc: d0 42     bne   $0a10
09ce: f4 3d     mov   a,$3d+x
09d0: 28 40     and   a,#$40
09d2: f0 0f     beq   $09e3
09d4: f4 3d     mov   a,$3d+x
09d6: 28 bf     and   a,#$bf
09d8: d4 3d     mov   $3d+x,a
09da: e4 99     mov   a,$99
09dc: 08 07     or    a,#$07
09de: c4 f2     mov   $f2,a
09e0: 8f ff f3  mov   $f3,#$ff
09e3: 3f 16 0a  call  $0a16
09e6: e4 95     mov   a,$95
09e8: d4 15     mov   $15+x,a
09ea: e4 96     mov   a,$96
09ec: d4 1d     mov   $1d+x,a
09ee: f4 3d     mov   a,$3d+x
09f0: 28 80     and   a,#$80
09f2: f0 1c     beq   $0a10
09f4: f4 85     mov   a,$85+x
09f6: 14 8d     or    a,$8d+x
09f8: d0 06     bne   $0a00
09fa: e8 00     mov   a,#$00
09fc: d4 2d     mov   $2d+x,a
09fe: 2f 10     bra   $0a10
0a00: f4 8d     mov   a,$8d+x
0a02: 68 ff     cmp   a,#$ff
0a04: f0 0a     beq   $0a10
0a06: 9b 85     dec   $85+x
0a08: f4 85     mov   a,$85+x
0a0a: 68 ff     cmp   a,#$ff
0a0c: d0 02     bne   $0a10
0a0e: 9b 8d     dec   $8d+x
0a10: 3d        inc   x
0a11: c8 08     cmp   x,#$08
0a13: d0 99     bne   $09ae
0a15: 6f        ret

0a16: 4d        push  x
0a17: 3f 88 0d  call  $0d88
0a1a: e8 0a     mov   a,#$0a
0a1c: 2d        push  a
0a1d: e8 27     mov   a,#$27
0a1f: 2d        push  a
0a20: e4 9a     mov   a,$9a
0a22: 1c        asl   a
0a23: 5d        mov   x,a
0a24: 1f 3d 0a  jmp   ($0a3d+x)

0a27: e4 9a     mov   a,$9a
0a29: 68 00     cmp   a,#$00
0a2b: f0 0e     beq   $0a3b
0a2d: 68 01     cmp   a,#$01
0a2f: f0 0a     beq   $0a3b
0a31: 68 14     cmp   a,#$14
0a33: f0 06     beq   $0a3b
0a35: 68 03     cmp   a,#$03
0a37: f0 02     beq   $0a3b
0a39: 2f dc     bra   $0a17
0a3b: ce        pop   x
0a3c: 6f        ret

0a3d: dw $0a7f
0a3f: dw $0b04
0a41: dw $0abf
0a43: dw $0b3b
0a45: dw $0a90
0a47: dw $0b48
0a49: dw $0b66
0a4b: dw $0b79
0a4d: dw $0b80
0a4f: dw $0b89
0a51: dw $0d1b
0a53: dw $0bdd
0a55: dw $0bf3
0a57: dw $0bfe
0a59: dw $0c09
0a5b: dw $0c55
0a5d: dw $0c95
0a5f: dw $0ca7
0a61: dw $0d2e
0a63: dw $0d41
0a65: dw $0cad
0a67: dw $0cc0
0a69: dw $0cd0
0a6b: dw $0d52
0a6d: dw $0aef
0a6f: dw $0ce3
0a71: dw $0cf5
0a73: dw $0cfc
0a75: dw $0d5e
0a77: dw $0d6b
0a79: dw $0ba4
0a7b: dw $0ae2
0a7d: dw $0d81

0a7f: e8 00     mov   a,#$00
0a81: c4 95     mov   $95,a
0a83: c4 96     mov   $96,a
0a85: f8 97     mov   x,$97
0a87: d4 2d     mov   $2d+x,a
0a89: d5 da 02  mov   $02da+x,a
0a8c: d5 e2 02  mov   $02e2+x,a
0a8f: 6f        ret

0a90: e4 9b     mov   a,$9b
0a92: f0 0a     beq   $0a9e
0a94: f8 97     mov   x,$97
0a96: f4 3d     mov   a,$3d+x
0a98: 28 f0     and   a,#$f0
0a9a: d4 3d     mov   $3d+x,a
0a9c: e4 9b     mov   a,$9b
0a9e: 68 ff     cmp   a,#$ff
0aa0: f0 1c     beq   $0abe
0aa2: e4 9d     mov   a,$9d
0aa4: d0 12     bne   $0ab8
0aa6: e4 9f     mov   a,$9f
0aa8: 04 98     or    a,$98
0aaa: c4 9f     mov   $9f,a
0aac: e4 9c     mov   a,$9c
0aae: d0 06     bne   $0ab6
0ab0: f8 97     mov   x,$97
0ab2: e8 00     mov   a,#$00
0ab4: d4 65     mov   $65+x,a
0ab6: 2f 06     bra   $0abe
0ab8: e4 9e     mov   a,$9e
0aba: 04 98     or    a,$98
0abc: c4 9e     mov   $9e,a
0abe: 6f        ret

0abf: f8 97     mov   x,$97
0ac1: e4 9b     mov   a,$9b
0ac3: 30 04     bmi   $0ac9
0ac5: d4 35     mov   $35+x,a
0ac7: 2f 04     bra   $0acd
0ac9: f4 35     mov   a,$35+x
0acb: c4 9b     mov   $9b,a
0acd: 3f a9 0d  call  $0da9
0ad0: d5 00 02  mov   $0200+x,a
0ad3: dd        mov   a,y
0ad4: d5 01 02  mov   $0201+x,a
0ad7: e8 30     mov   a,#$30
0ad9: d5 02 02  mov   $0202+x,a
0adc: e8 10     mov   a,#$10
0ade: d5 03 02  mov   $0203+x,a
0ae1: 6f        ret

0ae2: eb 9c     mov   y,$9c
0ae4: e4 9d     mov   a,$9d
0ae6: 3f 57 15  call  $1557
0ae9: cb 9c     mov   $9c,y
0aeb: c4 9d     mov   $9d,a
0aed: 2f d0     bra   $0abf
0aef: e4 9b     mov   a,$9b
0af1: 10 06     bpl   $0af9
0af3: f8 97     mov   x,$97
0af5: f4 35     mov   a,$35+x
0af7: c4 9b     mov   $9b,a
0af9: 3f a9 0d  call  $0da9
0afc: d5 02 02  mov   $0202+x,a
0aff: dd        mov   a,y
0b00: d5 03 02  mov   $0203+x,a
0b03: 6f        ret

0b04: e4 9c     mov   a,$9c
0b06: 68 ff     cmp   a,#$ff
0b08: d0 06     bne   $0b10
0b0a: e4 9d     mov   a,$9d
0b0c: 68 ff     cmp   a,#$ff
0b0e: f0 1f     beq   $0b2f
0b10: f8 97     mov   x,$97
0b12: f4 4d     mov   a,$4d+x
0b14: 64 9c     cmp   a,$9c
0b16: f0 04     beq   $0b1c
0b18: 90 0f     bcc   $0b29
0b1a: b0 06     bcs   $0b22
0b1c: f4 45     mov   a,$45+x
0b1e: 64 9d     cmp   a,$9d
0b20: 90 07     bcc   $0b29
0b22: e8 00     mov   a,#$00
0b24: d4 45     mov   $45+x,a
0b26: d4 4d     mov   $4d+x,a
0b28: 6f        ret

0b29: bb 45     inc   $45+x
0b2b: d0 02     bne   $0b2f
0b2d: bb 4d     inc   $4d+x
0b2f: e4 95     mov   a,$95
0b31: 80        setc
0b32: a8 04     sbc   a,#$04
0b34: c4 95     mov   $95,a
0b36: b0 02     bcs   $0b3a
0b38: 8b 96     dec   $96
0b3a: 6f        ret

0b3b: eb 9c     mov   y,$9c
0b3d: e4 9d     mov   a,$9d
0b3f: 3f 57 15  call  $1557
0b42: cb 9c     mov   $9c,y
0b44: c4 9d     mov   $9d,a
0b46: 2f bc     bra   $0b04
0b48: f8 97     mov   x,$97
0b4a: f4 55     mov   a,$55+x
0b4c: 64 9b     cmp   a,$9b
0b4e: d0 05     bne   $0b55
0b50: e8 00     mov   a,#$00
0b52: d4 55     mov   $55+x,a
0b54: 6f        ret

0b55: bb 55     inc   $55+x
0b57: f4 0d     mov   a,$0d+x
0b59: 5d        mov   x,a
0b5a: e4 9d     mov   a,$9d
0b5c: eb 9c     mov   y,$9c
0b5e: 3f d1 0d  call  $0dd1
0b61: cb 96     mov   $96,y
0b63: c4 95     mov   $95,a
0b65: 6f        ret

0b66: f8 97     mov   x,$97
0b68: e4 9b     mov   a,$9b
0b6a: d4 0d     mov   $0d+x,a
0b6c: 5d        mov   x,a
0b6d: eb 9c     mov   y,$9c
0b6f: e4 9d     mov   a,$9d
0b71: 3f d1 0d  call  $0dd1
0b74: cb 96     mov   $96,y
0b76: c4 95     mov   $95,a
0b78: 6f        ret

0b79: eb 9c     mov   y,$9c
0b7b: e4 9d     mov   a,$9d
0b7d: 5f 1e 0e  jmp   $0e1e

0b80: f8 97     mov   x,$97
0b82: f4 25     mov   a,$25+x
0b84: 60        clrc
0b85: 84 9b     adc   a,$9b
0b87: 2f 09     bra   $0b92
0b89: f8 97     mov   x,$97
0b8b: e4 9b     mov   a,$9b
0b8d: 60        clrc
0b8e: 94 7d     adc   a,$7d+x
0b90: d4 25     mov   $25+x,a
0b92: 5d        mov   x,a
0b93: e4 9c     mov   a,$9c
0b95: c4 06     mov   $06,a
0b97: e4 9d     mov   a,$9d
0b99: c4 05     mov   $05,a
0b9b: 7d        mov   a,x
0b9c: 3f 97 0e  call  $0e97
0b9f: 7a 05     addw  ya,$05
0ba1: 5f 1e 0e  jmp   $0e1e

0ba4: f8 97     mov   x,$97
0ba6: e4 9c     mov   a,$9c
0ba8: d0 15     bne   $0bbf
0baa: e4 9d     mov   a,$9d
0bac: 80        setc
0bad: a4 9b     sbc   a,$9b
0baf: 3f 48 15  call  $1548
0bb2: 60        clrc
0bb3: 84 9b     adc   a,$9b
0bb5: 60        clrc
0bb6: 94 7d     adc   a,$7d+x
0bb8: d4 25     mov   $25+x,a
0bba: 3f 97 0e  call  $0e97
0bbd: 2f 1b     bra   $0bda
0bbf: e4 9b     mov   a,$9b
0bc1: 60        clrc
0bc2: 94 7d     adc   a,$7d+x
0bc4: 4d        push  x
0bc5: 3f 97 0e  call  $0e97
0bc8: ce        pop   x
0bc9: da 05     movw  $05,ya
0bcb: e4 9d     mov   a,$9d
0bcd: 60        clrc
0bce: 94 7d     adc   a,$7d+x
0bd0: 3f 97 0e  call  $0e97
0bd3: 9a 05     subw  ya,$05
0bd5: 3f 57 15  call  $1557
0bd8: 7a 05     addw  ya,$05
0bda: 5f 1e 0e  jmp   $0e1e

0bdd: f8 97     mov   x,$97
0bdf: f4 3d     mov   a,$3d+x
0be1: 08 01     or    a,#$01
0be3: d4 3d     mov   $3d+x,a
0be5: e4 9d     mov   a,$9d
0be7: d5 bf 01  mov   $01bf+x,a
0bea: e8 00     mov   a,#$00
0bec: d5 8f 01  mov   $018f+x,a
0bef: d5 97 01  mov   $0197+x,a
0bf2: 6f        ret

0bf3: f8 97     mov   x,$97
0bf5: f4 3d     mov   a,$3d+x
0bf7: 08 02     or    a,#$02
0bf9: d4 3d     mov   $3d+x,a
0bfb: 5f b4 0e  jmp   $0eb4

0bfe: f8 97     mov   x,$97
0c00: e4 9d     mov   a,$9d
0c02: d4 6d     mov   $6d+x,a
0c04: e4 9b     mov   a,$9b
0c06: d4 75     mov   $75+x,a
0c08: 6f        ret

0c09: e5 d5 02  mov   a,$02d5
0c0c: 30 46     bmi   $0c54
0c0e: e4 9b     mov   a,$9b
0c10: f0 29     beq   $0c3b
0c12: e4 9d     mov   a,$9d
0c14: 28 7f     and   a,#$7f
0c16: 8d 00     mov   y,#$00
0c18: f8 9b     mov   x,$9b
0c1a: 9e        div   ya,x
0c1b: f8 97     mov   x,$97
0c1d: eb 9d     mov   y,$9d
0c1f: 10 02     bpl   $0c23
0c21: 08 80     or    a,#$80
0c23: d5 20 02  mov   $0220+x,a
0c26: e4 9c     mov   a,$9c
0c28: d4 5d     mov   $5d+x,a
0c2a: f4 3d     mov   a,$3d+x
0c2c: 08 04     or    a,#$04
0c2e: d4 3d     mov   $3d+x,a
0c30: e4 9b     mov   a,$9b
0c32: d5 30 02  mov   $0230+x,a
0c35: 5c        lsr   a
0c36: d5 28 02  mov   $0228+x,a
0c39: 2f 19     bra   $0c54
0c3b: f8 97     mov   x,$97
0c3d: f4 3d     mov   a,$3d+x
0c3f: 28 fb     and   a,#$fb
0c41: d4 3d     mov   $3d+x,a
0c43: eb 9c     mov   y,$9c
0c45: e5 d5 02  mov   a,$02d5
0c48: 28 40     and   a,#$40
0c4a: f0 06     beq   $0c52
0c4c: ad 00     cmp   y,#$00
0c4e: 10 02     bpl   $0c52
0c50: 8d 40     mov   y,#$40
0c52: db 5d     mov   $5d+x,y
0c54: 6f        ret

0c55: f8 97     mov   x,$97
0c57: e4 9d     mov   a,$9d
0c59: d5 88 02  mov   $0288+x,a
0c5c: e4 9b     mov   a,$9b
0c5e: d5 78 02  mov   $0278+x,a
0c61: e4 9c     mov   a,$9c
0c63: d5 80 02  mov   $0280+x,a
0c66: e8 00     mov   a,#$00
0c68: d5 70 02  mov   $0270+x,a
0c6b: f4 65     mov   a,$65+x
0c6d: 60        clrc
0c6e: 94 75     adc   a,$75+x
0c70: 10 02     bpl   $0c74
0c72: e8 00     mov   a,#$00
0c74: 68 3f     cmp   a,#$3f
0c76: 30 02     bmi   $0c7a
0c78: e8 3f     mov   a,#$3f
0c7a: d4 65     mov   $65+x,a
0c7c: 64 9d     cmp   a,$9d
0c7e: b0 08     bcs   $0c88
0c80: f5 80 02  mov   a,$0280+x
0c83: 08 80     or    a,#$80
0c85: d5 80 02  mov   $0280+x,a
0c88: e8 00     mov   a,#$00
0c8a: d4 6d     mov   $6d+x,a
0c8c: d4 75     mov   $75+x,a
0c8e: f4 3d     mov   a,$3d+x
0c90: 08 08     or    a,#$08
0c92: d4 3d     mov   $3d+x,a
0c94: 6f        ret

0c95: f8 97     mov   x,$97
0c97: f4 25     mov   a,$25+x
0c99: 64 9b     cmp   a,$9b
0c9b: b0 09     bcs   $0ca6
0c9d: fa 9d 9b  mov   ($9b),($9d)
0ca0: 8f 00 9d  mov   $9d,#$00
0ca3: 5f 66 0b  jmp   $0b66

0ca6: 6f        ret

0ca7: f8 97     mov   x,$97
0ca9: f4 65     mov   a,$65+x
0cab: 2f ec     bra   $0c99
0cad: f8 97     mov   x,$97
0caf: f4 3d     mov   a,$3d+x
0cb1: 28 10     and   a,#$10
0cb3: d0 03     bne   $0cb8
0cb5: 5f 04 0b  jmp   $0b04

0cb8: e8 00     mov   a,#$00
0cba: d4 45     mov   $45+x,a
0cbc: d4 4d     mov   $4d+x,a
0cbe: 2f 0f     bra   $0ccf
0cc0: f8 97     mov   x,$97
0cc2: f4 3d     mov   a,$3d+x
0cc4: 28 10     and   a,#$10
0cc6: d0 03     bne   $0ccb
0cc8: 5f 48 0b  jmp   $0b48

0ccb: e8 00     mov   a,#$00
0ccd: d4 55     mov   $55+x,a
0ccf: 6f        ret

0cd0: fa 9b 0b  mov   ($0b),($9b)
0cd3: f8 97     mov   x,$97
0cd5: f4 25     mov   a,$25+x
0cd7: 60        clrc
0cd8: 84 9d     adc   a,$9d
0cda: c4 0c     mov   $0c,a
0cdc: f4 7d     mov   a,$7d+x
0cde: c4 09     mov   $09,a
0ce0: 5f 08 11  jmp   $1108

0ce3: f8 97     mov   x,$97
0ce5: f4 25     mov   a,$25+x
0ce7: 64 9b     cmp   a,$9b
0ce9: d0 09     bne   $0cf4
0ceb: fa 9d 9b  mov   ($9b),($9d)
0cee: 8f 00 9d  mov   $9d,#$00
0cf1: 5f 66 0b  jmp   $0b66

0cf4: 6f        ret

0cf5: f8 97     mov   x,$97
0cf7: e4 9d     mov   a,$9d
0cf9: d4 65     mov   $65+x,a
0cfb: 6f        ret

0cfc: e4 99     mov   a,$99
0cfe: 08 05     or    a,#$05
0d00: c4 f2     mov   $f2,a
0d02: e4 9c     mov   a,$9c
0d04: 10 08     bpl   $0d0e
0d06: c4 f3     mov   $f3,a
0d08: e4 99     mov   a,$99
0d0a: 08 06     or    a,#$06
0d0c: 2f 07     bra   $0d15
0d0e: 8f 00 f3  mov   $f3,#$00
0d11: e4 99     mov   a,$99
0d13: 08 07     or    a,#$07
0d15: c4 f2     mov   $f2,a
0d17: fa 9d f3  mov   ($f3),($9d)
0d1a: 6f        ret

0d1b: e4 9b     mov   a,$9b
0d1d: 9f        xcn   a
0d1e: 08 0f     or    a,#$0f
0d20: c4 f2     mov   $f2,a
0d22: fa 9c f3  mov   ($f3),($9c)
0d25: 60        clrc
0d26: 88 10     adc   a,#$10
0d28: c4 f2     mov   $f2,a
0d2a: fa 9d f3  mov   ($f3),($9d)
0d2d: 6f        ret

0d2e: 8f 6d f2  mov   $f2,#$6d
0d31: fa 9b f3  mov   ($f3),($9b)
0d34: 8f 7d f2  mov   $f2,#$7d
0d37: fa 9c f3  mov   ($f3),($9c)
0d3a: 8f 0d f2  mov   $f2,#$0d
0d3d: fa 9d f3  mov   ($f3),($9d)
0d40: 6f        ret

0d41: e4 9d     mov   a,$9d
0d43: 68 ff     cmp   a,#$ff
0d45: d0 04     bne   $0d4b
0d47: c5 ff 01  mov   $01ff,a
0d4a: 6f        ret

0d4b: 8f 6c f2  mov   $f2,#$6c
0d4e: 8f 00 f3  mov   $f3,#$00
0d51: 6f        ret

0d52: f8 97     mov   x,$97
0d54: e5 d7 02  mov   a,$02d7
0d57: 35 4e 14  and   a,$144e+x
0d5a: c5 d7 02  mov   $02d7,a
0d5d: 6f        ret

0d5e: 8f 2c f2  mov   $f2,#$2c
0d61: fa 9b f3  mov   ($f3),($9b)
0d64: 8f 3c f2  mov   $f2,#$3c
0d67: fa 9c f3  mov   ($f3),($9c)
0d6a: 6f        ret

0d6b: e4 99     mov   a,$99
0d6d: 08 05     or    a,#$05
0d6f: c4 f2     mov   $f2,a
0d71: 8f 00 f3  mov   $f3,#$00
0d74: e4 99     mov   a,$99
0d76: 08 07     or    a,#$07
0d78: c4 f2     mov   $f2,a
0d7a: e4 9b     mov   a,$9b
0d7c: 04 9c     or    a,$9c
0d7e: c4 f3     mov   $f3,a
0d80: 6f        ret

0d81: f8 97     mov   x,$97
0d83: e4 9b     mov   a,$9b
0d85: d4 2d     mov   $2d+x,a
0d87: 6f        ret

0d88: 8d 00     mov   y,#$00
0d8a: f7 95     mov   a,($95)+y
0d8c: c4 9a     mov   $9a,a
0d8e: fc        inc   y
0d8f: f7 95     mov   a,($95)+y
0d91: c4 9b     mov   $9b,a
0d93: fc        inc   y
0d94: f7 95     mov   a,($95)+y
0d96: c4 9c     mov   $9c,a
0d98: fc        inc   y
0d99: f7 95     mov   a,($95)+y
0d9b: c4 9d     mov   $9d,a
0d9d: e4 95     mov   a,$95
0d9f: 60        clrc
0da0: 88 04     adc   a,#$04
0da2: c4 95     mov   $95,a
0da4: 90 02     bcc   $0da8
0da6: ab 96     inc   $96
0da8: 6f        ret

0da9: e4 9c     mov   a,$9c
0dab: 8d 09     mov   y,#$09
0dad: cf        mul   ya
0dae: c4 06     mov   $06,a
0db0: 8f 00 05  mov   $05,#$00
0db3: e4 9d     mov   a,$9d
0db5: 8d 09     mov   y,#$09
0db7: cf        mul   ya
0db8: 7a 05     addw  ya,$05
0dba: da 05     movw  $05,ya
0dbc: e4 9b     mov   a,$9b
0dbe: 1c        asl   a
0dbf: 5d        mov   x,a
0dc0: f5 40 03  mov   a,$0340+x
0dc3: fd        mov   y,a
0dc4: f5 3f 03  mov   a,$033f+x
0dc7: 7a 05     addw  ya,$05
0dc9: 2d        push  a
0dca: e4 97     mov   a,$97
0dcc: 1c        asl   a
0dcd: 1c        asl   a
0dce: 5d        mov   x,a
0dcf: ae        pop   a
0dd0: 6f        ret

0dd1: 4d        push  x
0dd2: cd 04     mov   x,#$04
0dd4: 3f ff 0d  call  $0dff
0dd7: 60        clrc
0dd8: 88 02     adc   a,#$02
0dda: 90 01     bcc   $0ddd
0ddc: fc        inc   y
0ddd: da 05     movw  $05,ya
0ddf: ae        pop   a
0de0: 3f e6 0d  call  $0de6
0de3: 7a 05     addw  ya,$05
0de5: 6f        ret

0de6: 68 00     cmp   a,#$00
0de8: 10 0b     bpl   $0df5
0dea: 1c        asl   a
0deb: 5d        mov   x,a
0dec: f5 40 05  mov   a,$0540+x
0def: fd        mov   y,a
0df0: f5 3f 05  mov   a,$053f+x
0df3: 2f 09     bra   $0dfe
0df5: 1c        asl   a
0df6: 5d        mov   x,a
0df7: f5 40 04  mov   a,$0440+x
0dfa: fd        mov   y,a
0dfb: f5 3f 04  mov   a,$043f+x
0dfe: 6f        ret

0dff: d8 0b     mov   $0b,x
0e01: 5d        mov   x,a
0e02: dd        mov   a,y
0e03: eb 0b     mov   y,$0b
0e05: cf        mul   ya
0e06: c4 0c     mov   $0c,a
0e08: 7d        mov   a,x
0e09: eb 0b     mov   y,$0b
0e0b: 8f 00 0b  mov   $0b,#$00
0e0e: cf        mul   ya
0e0f: 7a 0b     addw  ya,$0b
0e11: 6f        ret

0e12: 2d        push  a
0e13: dd        mov   a,y
0e14: 8d 00     mov   y,#$00
0e16: 9e        div   ya,x
0e17: c4 0c     mov   $0c,a
0e19: ae        pop   a
0e1a: 9e        div   ya,x
0e1b: eb 0c     mov   y,$0c
0e1d: 6f        ret

0e1e: da 05     movw  $05,ya
0e20: 0b 05     asl   $05
0e22: 2b 06     rol   $06
0e24: 0b 05     asl   $05
0e26: 2b 06     rol   $06
0e28: f8 97     mov   x,$97
0e2a: e4 05     mov   a,$05
0e2c: d5 9f 01  mov   $019f+x,a
0e2f: e4 06     mov   a,$06
0e31: d5 a7 01  mov   $01a7+x,a
0e34: f4 3d     mov   a,$3d+x
0e36: 28 01     and   a,#$01
0e38: d0 0b     bne   $0e45
0e3a: e4 05     mov   a,$05
0e3c: d5 7f 01  mov   $017f+x,a
0e3f: e4 06     mov   a,$06
0e41: d5 87 01  mov   $0187+x,a
0e44: 6f        ret

0e45: 8f 00 07  mov   $07,#$00
0e48: f5 bf 01  mov   a,$01bf+x
0e4b: d5 c7 01  mov   $01c7+x,a
0e4e: 2d        push  a
0e4f: f5 87 01  mov   a,$0187+x
0e52: c4 0a     mov   $0a,a
0e54: f5 7f 01  mov   a,$017f+x
0e57: c4 09     mov   $09,a
0e59: f5 8f 01  mov   a,$018f+x
0e5c: 60        clrc
0e5d: 84 09     adc   a,$09
0e5f: c4 09     mov   $09,a
0e61: f5 97 01  mov   a,$0197+x
0e64: 84 0a     adc   a,$0a
0e66: c4 0a     mov   $0a,a
0e68: ba 05     movw  ya,$05
0e6a: 9a 09     subw  ya,$09
0e6c: da 09     movw  $09,ya
0e6e: 10 09     bpl   $0e79
0e70: ab 07     inc   $07
0e72: e8 00     mov   a,#$00
0e74: fd        mov   y,a
0e75: 9a 09     subw  ya,$09
0e77: da 09     movw  $09,ya
0e79: ce        pop   x
0e7a: 3f 12 0e  call  $0e12
0e7d: da 05     movw  $05,ya
0e7f: e4 07     mov   a,$07
0e81: f0 07     beq   $0e8a
0e83: e8 00     mov   a,#$00
0e85: fd        mov   y,a
0e86: 9a 05     subw  ya,$05
0e88: da 05     movw  $05,ya
0e8a: f8 97     mov   x,$97
0e8c: e4 05     mov   a,$05
0e8e: d5 af 01  mov   $01af+x,a
0e91: e4 06     mov   a,$06
0e93: d5 b7 01  mov   $01b7+x,a
0e96: 6f        ret

0e97: 1c        asl   a
0e98: 5d        mov   x,a
0e99: f5 33 0f  mov   a,$0f33+x
0e9c: fd        mov   y,a
0e9d: f5 32 0f  mov   a,$0f32+x
0ea0: 6f        ret

0ea1: c8 00     cmp   x,#$00
0ea3: f0 0b     beq   $0eb0
0ea5: 9a 05     subw  ya,$05
0ea7: 3f ff 0d  call  $0dff
0eaa: cd 32     mov   x,#$32
0eac: 9e        div   ya,x
0ead: 8d 00     mov   y,#$00
0eaf: 6f        ret

0eb0: e8 00     mov   a,#$00
0eb2: fd        mov   y,a
0eb3: 6f        ret

0eb4: f8 97     mov   x,$97
0eb6: e4 9c     mov   a,$9c
0eb8: 10 08     bpl   $0ec2
0eba: 28 7f     and   a,#$7f
0ebc: c4 9c     mov   $9c,a
0ebe: e8 01     mov   a,#$01
0ec0: 2f 02     bra   $0ec4
0ec2: e8 00     mov   a,#$00
0ec4: d5 48 02  mov   $0248+x,a
0ec7: f4 25     mov   a,$25+x
0ec9: 60        clrc
0eca: 84 9c     adc   a,$9c
0ecc: 2d        push  a
0ecd: 3f 97 0e  call  $0e97
0ed0: da 05     movw  $05,ya
0ed2: ae        pop   a
0ed3: bc        inc   a
0ed4: 3f 97 0e  call  $0e97
0ed7: f8 9d     mov   x,$9d
0ed9: 3f a1 0e  call  $0ea1
0edc: 7a 05     addw  ya,$05
0ede: da 07     movw  $07,ya
0ee0: e8 33     mov   a,#$33
0ee2: 80        setc
0ee3: a4 9d     sbc   a,$9d
0ee5: c4 9d     mov   $9d,a
0ee7: f8 97     mov   x,$97
0ee9: f4 25     mov   a,$25+x
0eeb: 80        setc
0eec: a4 9c     sbc   a,$9c
0eee: 2d        push  a
0eef: 9c        dec   a
0ef0: 3f 97 0e  call  $0e97
0ef3: da 05     movw  $05,ya
0ef5: ae        pop   a
0ef6: 3f 97 0e  call  $0e97
0ef9: f8 9d     mov   x,$9d
0efb: 3f a1 0e  call  $0ea1
0efe: 7a 05     addw  ya,$05
0f00: da 09     movw  $09,ya
0f02: ba 07     movw  ya,$07
0f04: 9a 09     subw  ya,$09
0f06: da 05     movw  $05,ya
0f08: 0b 05     asl   $05
0f0a: 2b 06     rol   $06
0f0c: 0b 05     asl   $05
0f0e: 2b 06     rol   $06
0f10: ba 05     movw  ya,$05
0f12: f8 9b     mov   x,$9b
0f14: 3f 12 0e  call  $0e12
0f17: f8 97     mov   x,$97
0f19: d5 58 02  mov   $0258+x,a
0f1c: dd        mov   a,y
0f1d: d5 60 02  mov   $0260+x,a
0f20: e4 9b     mov   a,$9b
0f22: d5 68 02  mov   $0268+x,a
0f25: 5c        lsr   a
0f26: d5 50 02  mov   $0250+x,a
0f29: e8 00     mov   a,#$00
0f2b: d5 38 02  mov   $0238+x,a
0f2e: d5 40 02  mov   $0240+x,a
0f31: 6f        ret

0f32: dw $007b
0f34: dw $0082
0f36: dw $008a
0f38: dw $0092
0f3a: dw $009b
0f3c: dw $00a4
0f3e: dw $00ae
0f40: dw $00b8
0f42: dw $00c3
0f44: dw $00cf
0f46: dw $00dc
0f48: dw $00e9
0f4a: dw $00f6
0f4c: dw $0105
0f4e: dw $0115
0f50: dw $0125
0f52: dw $0137
0f54: dw $0149
0f56: dw $015d
0f58: dw $0171
0f5a: dw $0187
0f5c: dw $019f
0f5e: dw $01b8
0f60: dw $01d2
0f62: dw $01ed
0f64: dw $020b
0f66: dw $022a
0f68: dw $024b
0f6a: dw $026e
0f6c: dw $0293
0f6e: dw $02ba
0f70: dw $02e3
0f72: dw $030f
0f74: dw $033e
0f76: dw $0370
0f78: dw $03a4
0f7a: dw $03db
0f7c: dw $0416
0f7e: dw $0454
0f80: dw $0496
0f82: dw $04dc
0f84: dw $0526
0f86: dw $0574
0f88: dw $05c7
0f8a: dw $061f
0f8c: dw $067d
0f8e: dw $06e0
0f90: dw $0748
0f92: dw $07b7
0f94: dw $082d
0f96: dw $08a9
0f98: dw $092d
0f9a: dw $09b9
0f9c: dw $0a4d
0f9e: dw $0ae9
0fa0: dw $0b8f
0fa2: dw $0c3f
0fa4: dw $0cfa
0fa6: dw $0dc0
0fa8: dw $0e91
0faa: dw $0f6f
0fac: dw $105a
0fae: dw $1152
0fb0: dw $125a
0fb2: dw $1372
0fb4: dw $149a
0fb6: dw $15d3
0fb8: dw $171f
0fba: dw $187f
0fbc: dw $19f4
0fbe: dw $1b80
0fc0: dw $1d22
0fc2: dw $1ede
0fc4: dw $20b4
0fc6: dw $22a5
0fc8: dw $24b5
0fca: dw $26e4
0fcc: dw $2934
0fce: dw $2ba7
0fd0: dw $2e3f
0fd2: dw $30ff
0fd4: dw $33e9
0fd6: dw $3700
0fd8: dw $3a45
0fda: dw $3dbc
0fdc: dw $3fff
0fde: dw $3fff
0fe0: dw $3fff
0fe2: dw $3fff
0fe4: dw $3fff
0fe6: dw $3fff
0fe8: dw $3fff
0fea: dw $3fff
0fec: dw $3fff
0fee: dw $3fff
0ff0: dw $3fff
0ff2: dw $3fff
0ff4: dw $3fff
0ff6: dw $3fff
0ff8: dw $3fff
0ffa: dw $3fff
0ffc: dw $001b
0ffe: dw $001d
1000: dw $001e
1002: dw $0020
1004: dw $0022
1006: dw $0024
1008: dw $0026
100a: dw $0029
100c: dw $002b
100e: dw $002e
1010: dw $0030
1012: dw $0033
1014: dw $0037
1016: dw $003a
1018: dw $003d
101a: dw $0041
101c: dw $0045
101e: dw $0049
1020: dw $004d
1022: dw $0052
1024: dw $0057
1026: dw $005c
1028: dw $0061
102a: dw $0067
102c: dw $006e
102e: dw $0074
1030: dw $0003
1032: dw $0000
1034: dw $0000
1036: dw $0000
1038: dw $0000

103a: fd        mov   y,a
103b: cd 07     mov   x,#$07
103d: c9 90 10  mov   $1090,x
1040: c9 b2 10  mov   $10b2,x
1043: c9 87 10  mov   $1087,x
1046: 28 f0     and   a,#$f0
1048: d0 0b     bne   $1055
104a: e5 d8 02  mov   a,$02d8
104d: f0 04     beq   $1053
104f: dd        mov   a,y
1050: 08 40     or    a,#$40
1052: fd        mov   y,a
1053: 2f 31     bra   $1086
1055: 10 1a     bpl   $1071
1057: 28 70     and   a,#$70
1059: 9f        xcn   a
105a: 5d        mov   x,a
105b: dd        mov   a,y
105c: 28 0f     and   a,#$0f
105e: 08 10     or    a,#$10
1060: ec d8 02  mov   y,$02d8
1063: f0 02     beq   $1067
1065: 08 40     or    a,#$40
1067: fd        mov   y,a
1068: 74 2d     cmp   a,$2d+x
106a: b0 03     bcs   $106f
106c: 5f 05 11  jmp   $1105

106f: 2f 6f     bra   $10e0
1071: 9f        xcn   a
1072: c5 90 10  mov   $1090,a
1075: c5 b2 10  mov   $10b2,a
1078: c5 87 10  mov   $1087,a
107b: dd        mov   a,y
107c: 28 0f     and   a,#$0f
107e: ec d8 02  mov   y,$02d8
1081: f0 02     beq   $1085
1083: 08 40     or    a,#$40
1085: fd        mov   y,a
1086: cd 05     mov   x,#$05
1088: f4 1d     mov   a,$1d+x
108a: f0 54     beq   $10e0
108c: 1d        dec   x
108d: 10 f9     bpl   $1088
108f: cd 05     mov   x,#$05
1091: f4 2d     mov   a,$2d+x
1093: 1d        dec   x
1094: c8 ff     cmp   x,#$ff
1096: f0 09     beq   $10a1
1098: 74 2d     cmp   a,$2d+x
109a: 90 02     bcc   $109e
109c: f4 2d     mov   a,$2d+x
109e: 1d        dec   x
109f: 10 f7     bpl   $1098
10a1: c5 a5 10  mov   $10a5,a
10a4: ad 08     cmp   y,#$08
10a6: 90 5d     bcc   $1105
10a8: 6d        push  y
10a9: cd ff     mov   x,#$ff
10ab: c9 c5 10  mov   $10c5,x
10ae: c9 bc 10  mov   $10bc,x
10b1: cd 05     mov   x,#$05
10b3: 74 2d     cmp   a,$2d+x
10b5: d0 23     bne   $10da
10b7: fd        mov   y,a
10b8: f5 e2 02  mov   a,$02e2+x
10bb: 68 7f     cmp   a,#$7f
10bd: 90 0b     bcc   $10ca
10bf: d0 18     bne   $10d9
10c1: f5 da 02  mov   a,$02da+x
10c4: 68 a7     cmp   a,#$a7
10c6: f0 02     beq   $10ca
10c8: b0 0f     bcs   $10d9
10ca: f5 da 02  mov   a,$02da+x
10cd: c5 c5 10  mov   $10c5,a
10d0: f5 e2 02  mov   a,$02e2+x
10d3: c5 bc 10  mov   $10bc,a
10d6: c9 df 10  mov   $10df,x
10d9: dd        mov   a,y
10da: 1d        dec   x
10db: 10 d6     bpl   $10b3
10dd: ee        pop   y
10de: cd 02     mov   x,#$02
10e0: dd        mov   a,y
10e1: d4 2d     mov   $2d+x,a
10e3: e8 00     mov   a,#$00
10e5: d4 45     mov   $45+x,a
10e7: d4 4d     mov   $4d+x,a
10e9: d4 55     mov   $55+x,a
10eb: d4 6d     mov   $6d+x,a
10ed: d4 75     mov   $75+x,a
10ef: e8 20     mov   a,#$20
10f1: d4 3d     mov   $3d+x,a
10f3: e8 40     mov   a,#$40
10f5: d4 5d     mov   $5d+x,a
10f7: e8 00     mov   a,#$00
10f9: d4 65     mov   $65+x,a
10fb: 9c        dec   a
10fc: d5 e2 02  mov   $02e2+x,a
10ff: 9c        dec   a
1100: d5 da 02  mov   $02da+x,a
1103: 7d        mov   a,x
1104: 6f        ret

1105: cd ff     mov   x,#$ff
1107: 6f        ret

1108: 3f 6c 11  call  $116c
110b: e4 0b     mov   a,$0b
110d: 3f e6 0d  call  $0de6
1110: da 05     movw  $05,ya
1112: 8d 01     mov   y,#$01
1114: f7 05     mov   a,($05)+y
1116: c4 07     mov   $07,a
1118: dc        dec   y
1119: cc d8 02  mov   $02d8,y
111c: f7 05     mov   a,($05)+y
111e: 3f 3a 10  call  $103a
1121: 30 47     bmi   $116a
1123: e4 07     mov   a,$07
1125: d4 35     mov   $35+x,a
1127: e4 09     mov   a,$09
1129: d4 7d     mov   $7d+x,a
112b: e4 0b     mov   a,$0b
112d: d4 0d     mov   $0d+x,a
112f: ba 05     movw  ya,$05
1131: 60        clrc
1132: 88 02     adc   a,#$02
1134: 90 01     bcc   $1137
1136: fc        inc   y
1137: d4 15     mov   $15+x,a
1139: dd        mov   a,y
113a: d4 1d     mov   $1d+x,a
113c: 4d        push  x
113d: e4 0c     mov   a,$0c
113f: d4 25     mov   $25+x,a
1141: 3f 97 0e  call  $0e97
1144: da 05     movw  $05,ya
1146: 0b 05     asl   $05
1148: 2b 06     rol   $06
114a: 0b 05     asl   $05
114c: 2b 06     rol   $06
114e: ce        pop   x
114f: e4 05     mov   a,$05
1151: d5 7f 01  mov   $017f+x,a
1154: e4 06     mov   a,$06
1156: d5 87 01  mov   $0187+x,a
1159: e5 d7 02  mov   a,$02d7
115c: 35 4e 14  and   a,$144e+x
115f: ec d6 02  mov   y,$02d6
1162: f0 03     beq   $1167
1164: 15 46 14  or    a,$1446+x
1167: c5 d7 02  mov   $02d7,a
116a: 7d        mov   a,x
116b: 6f        ret

116c: e4 0b     mov   a,$0b
116e: 3f e6 0d  call  $0de6
1171: da 05     movw  $05,ya
1173: 8d 02     mov   y,#$02
1175: f7 05     mov   a,($05)+y
1177: 68 10     cmp   a,#$10
1179: f0 05     beq   $1180
117b: 68 19     cmp   a,#$19
117d: f0 01     beq   $1180
117f: 6f        ret

1180: fc        inc   y
1181: f7 05     mov   a,($05)+y
1183: f0 fa     beq   $117f
1185: 64 0c     cmp   a,$0c
1187: f0 05     beq   $118e
1189: fc        inc   y
118a: fc        inc   y
118b: fc        inc   y
118c: 2f f2     bra   $1180
118e: fc        inc   y
118f: fc        inc   y
1190: f7 05     mov   a,($05)+y
1192: c4 0b     mov   $0b,a
1194: 6f        ret

1195: 4d        push  x
1196: 6d        push  y
1197: e4 05     mov   a,$05
1199: 68 ff     cmp   a,#$ff
119b: f0 74     beq   $1211
119d: c4 9c     mov   $9c,a
119f: 3f e6 0d  call  $0de6
11a2: ad 00     cmp   y,#$00
11a4: d0 04     bne   $11aa
11a6: e8 ff     mov   a,#$ff
11a8: 2f 67     bra   $1211
11aa: f8 06     mov   x,$06
11ac: da 05     movw  $05,ya
11ae: 8d 01     mov   y,#$01
11b0: cc d8 02  mov   $02d8,y
11b3: f7 05     mov   a,($05)+y
11b5: c4 9b     mov   $9b,a
11b7: 7d        mov   a,x
11b8: 3f 3a 10  call  $103a
11bb: 30 54     bmi   $1211
11bd: f4 3d     mov   a,$3d+x
11bf: 08 80     or    a,#$80
11c1: d4 3d     mov   $3d+x,a
11c3: e4 0b     mov   a,$0b
11c5: d4 65     mov   $65+x,a
11c7: e4 0c     mov   a,$0c
11c9: d4 5d     mov   $5d+x,a
11cb: e4 9b     mov   a,$9b
11cd: d4 35     mov   $35+x,a
11cf: e8 00     mov   a,#$00
11d1: d4 7d     mov   $7d+x,a
11d3: d4 25     mov   $25+x,a
11d5: e4 9c     mov   a,$9c
11d7: d4 0d     mov   $0d+x,a
11d9: ba 05     movw  ya,$05
11db: 60        clrc
11dc: 88 02     adc   a,#$02
11de: 90 01     bcc   $11e1
11e0: fc        inc   y
11e1: d4 15     mov   $15+x,a
11e3: dd        mov   a,y
11e4: d4 1d     mov   $1d+x,a
11e6: 0b 09     asl   $09
11e8: 2b 0a     rol   $0a
11ea: 0b 09     asl   $09
11ec: 2b 0a     rol   $0a
11ee: e4 09     mov   a,$09
11f0: d5 7f 01  mov   $017f+x,a
11f3: e4 0a     mov   a,$0a
11f5: d5 87 01  mov   $0187+x,a
11f8: e4 07     mov   a,$07
11fa: d4 85     mov   $85+x,a
11fc: e4 08     mov   a,$08
11fe: d4 8d     mov   $8d+x,a
1200: e5 d7 02  mov   a,$02d7
1203: 35 4e 14  and   a,$144e+x
1206: ec d6 02  mov   y,$02d6
1209: 10 03     bpl   $120e
120b: 15 46 14  or    a,$1446+x
120e: c5 d7 02  mov   $02d7,a
1211: ee        pop   y
1212: ce        pop   x
1213: 6f        ret

1214: cd 07     mov   x,#$07
1216: d8 97     mov   $97,x
1218: f5 3e 14  mov   a,$143e+x
121b: c4 99     mov   $99,a
121d: f5 46 14  mov   a,$1446+x
1220: c4 98     mov   $98,a
1222: 3f 4c 12  call  $124c
1225: 1d        dec   x
1226: 10 ee     bpl   $1216
1228: e5 d7 02  mov   a,$02d7
122b: 8f 4d f2  mov   $f2,#$4d
122e: e9 ff 01  mov   x,$01ff
1231: d0 04     bne   $1237
1233: d8 f3     mov   $f3,x
1235: 2f 02     bra   $1239
1237: c4 f3     mov   $f3,a
1239: 8f 4c f2  mov   $f2,#$4c
123c: fa 9e f3  mov   ($f3),($9e)
123f: 8f 00 9e  mov   $9e,#$00
1242: 8f 5c f2  mov   $f2,#$5c
1245: fa 9f f3  mov   ($f3),($9f)
1248: 8f 00 9f  mov   $9f,#$00
124b: 6f        ret

124c: f4 3d     mov   a,$3d+x
124e: 28 20     and   a,#$20
1250: f0 38     beq   $128a
1252: f4 3d     mov   a,$3d+x
1254: 28 df     and   a,#$df
1256: 08 40     or    a,#$40
1258: d4 3d     mov   $3d+x,a
125a: f4 35     mov   a,$35+x
125c: c4 9b     mov   $9b,a
125e: 8f 00 9c  mov   $9c,#$00
1261: 8f 00 9d  mov   $9d,#$00
1264: 4d        push  x
1265: 3f bf 0a  call  $0abf
1268: ce        pop   x
1269: e4 99     mov   a,$99
126b: 08 04     or    a,#$04
126d: c4 f2     mov   $f2,a
126f: d8 f3     mov   $f3,x
1271: e4 99     mov   a,$99
1273: 08 05     or    a,#$05
1275: c4 f2     mov   $f2,a
1277: 8f 00 f3  mov   $f3,#$00
127a: e4 99     mov   a,$99
127c: 08 07     or    a,#$07
127e: c4 f2     mov   $f2,a
1280: 8f 9f f3  mov   $f3,#$9f
1283: e4 9f     mov   a,$9f
1285: 04 98     or    a,$98
1287: c4 9f     mov   $9f,a
1289: 6f        ret

128a: f4 3d     mov   a,$3d+x
128c: 28 08     and   a,#$08
128e: f0 3d     beq   $12cd
1290: f5 70 02  mov   a,$0270+x
1293: d0 34     bne   $12c9
1295: f5 80 02  mov   a,$0280+x
1298: 10 17     bpl   $12b1
129a: 28 7f     and   a,#$7f
129c: 60        clrc
129d: 94 65     adc   a,$65+x
129f: 75 88 02  cmp   a,$0288+x
12a2: 90 09     bcc   $12ad
12a4: f4 3d     mov   a,$3d+x
12a6: 28 f7     and   a,#$f7
12a8: d4 3d     mov   $3d+x,a
12aa: f5 88 02  mov   a,$0288+x
12ad: d4 65     mov   $65+x,a
12af: 2f 10     bra   $12c1
12b1: c4 05     mov   $05,a
12b3: f4 65     mov   a,$65+x
12b5: 80        setc
12b6: a4 05     sbc   a,$05
12b8: 75 88 02  cmp   a,$0288+x
12bb: f0 e7     beq   $12a4
12bd: 30 e5     bmi   $12a4
12bf: d4 65     mov   $65+x,a
12c1: f5 78 02  mov   a,$0278+x
12c4: d5 70 02  mov   $0270+x,a
12c7: 2f 04     bra   $12cd
12c9: 9c        dec   a
12ca: d5 70 02  mov   $0270+x,a
12cd: f4 3d     mov   a,$3d+x
12cf: 28 04     and   a,#$04
12d1: f0 3a     beq   $130d
12d3: 8f 00 05  mov   $05,#$00
12d6: f5 20 02  mov   a,$0220+x
12d9: 10 04     bpl   $12df
12db: ab 05     inc   $05
12dd: 28 7f     and   a,#$7f
12df: c4 06     mov   $06,a
12e1: f4 5d     mov   a,$5d+x
12e3: eb 05     mov   y,$05
12e5: f0 09     beq   $12f0
12e7: 80        setc
12e8: a4 06     sbc   a,$06
12ea: 10 02     bpl   $12ee
12ec: e8 00     mov   a,#$00
12ee: 2f 07     bra   $12f7
12f0: 60        clrc
12f1: 84 06     adc   a,$06
12f3: 10 02     bpl   $12f7
12f5: e8 7f     mov   a,#$7f
12f7: d4 5d     mov   $5d+x,a
12f9: f5 28 02  mov   a,$0228+x
12fc: 9c        dec   a
12fd: d0 0b     bne   $130a
12ff: f5 20 02  mov   a,$0220+x
1302: 48 80     eor   a,#$80
1304: d5 20 02  mov   $0220+x,a
1307: f5 30 02  mov   a,$0230+x
130a: d5 28 02  mov   $0228+x,a
130d: eb a0     mov   y,$a0
130f: f4 65     mov   a,$65+x
1311: 60        clrc
1312: 94 75     adc   a,$75+x
1314: 68 3f     cmp   a,#$3f
1316: 30 02     bmi   $131a
1318: e8 3f     mov   a,#$3f
131a: cf        mul   ya
131b: 28 f0     and   a,#$f0
131d: c4 05     mov   $05,a
131f: dd        mov   a,y
1320: 28 0f     and   a,#$0f
1322: 04 05     or    a,$05
1324: 9f        xcn   a
1325: fd        mov   y,a
1326: 5c        lsr   a
1327: c4 07     mov   $07,a
1329: f4 5d     mov   a,$5d+x
132b: 10 24     bpl   $1351
132d: 48 ff     eor   a,#$ff
132f: bc        inc   a
1330: cf        mul   ya
1331: cb 06     mov   $06,y
1333: dd        mov   a,y
1334: 48 ff     eor   a,#$ff
1336: bc        inc   a
1337: c4 05     mov   $05,a
1339: e4 05     mov   a,$05
133b: 60        clrc
133c: 94 6d     adc   a,$6d+x
133e: 30 02     bmi   $1342
1340: e8 ff     mov   a,#$ff
1342: c4 05     mov   $05,a
1344: e4 06     mov   a,$06
1346: 80        setc
1347: b4 6d     sbc   a,$6d+x
1349: 10 02     bpl   $134d
134b: e8 00     mov   a,#$00
134d: c4 06     mov   $06,a
134f: 2f 20     bra   $1371
1351: cf        mul   ya
1352: cb 06     mov   $06,y
1354: fa 07 05  mov   ($05),($07)
1357: 80        setc
1358: a9 06 05  sbc   ($05),($06)
135b: e4 05     mov   a,$05
135d: 80        setc
135e: b4 6d     sbc   a,$6d+x
1360: 10 02     bpl   $1364
1362: e8 00     mov   a,#$00
1364: c4 05     mov   $05,a
1366: e4 06     mov   a,$06
1368: 80        setc
1369: b4 6d     sbc   a,$6d+x
136b: 10 02     bpl   $136f
136d: e8 00     mov   a,#$00
136f: c4 06     mov   $06,a
1371: e4 99     mov   a,$99
1373: 08 00     or    a,#$00
1375: c4 f2     mov   $f2,a
1377: fa 05 f3  mov   ($f3),($05)
137a: e4 99     mov   a,$99
137c: 08 01     or    a,#$01
137e: c4 f2     mov   $f2,a
1380: fa 06 f3  mov   ($f3),($06)
1383: f4 3d     mov   a,$3d+x
1385: 28 01     and   a,#$01
1387: f0 3d     beq   $13c6
1389: f5 c7 01  mov   a,$01c7+x
138c: d0 16     bne   $13a4
138e: f4 3d     mov   a,$3d+x
1390: 28 fe     and   a,#$fe
1392: d4 3d     mov   $3d+x,a
1394: f5 9f 01  mov   a,$019f+x
1397: d5 7f 01  mov   $017f+x,a
139a: f5 a7 01  mov   a,$01a7+x
139d: d5 87 01  mov   $0187+x,a
13a0: 2f 24     bra   $13c6
13a2: 2f 20     bra   $13c4
13a4: 9c        dec   a
13a5: d5 c7 01  mov   $01c7+x,a
13a8: f5 af 01  mov   a,$01af+x
13ab: c4 07     mov   $07,a
13ad: f5 b7 01  mov   a,$01b7+x
13b0: c4 08     mov   $08,a
13b2: f5 97 01  mov   a,$0197+x
13b5: fd        mov   y,a
13b6: f5 8f 01  mov   a,$018f+x
13b9: 7a 07     addw  ya,$07
13bb: da 05     movw  $05,ya
13bd: d5 8f 01  mov   $018f+x,a
13c0: dd        mov   a,y
13c1: d5 97 01  mov   $0197+x,a
13c4: 2f 06     bra   $13cc
13c6: e8 00     mov   a,#$00
13c8: c4 05     mov   $05,a
13ca: c4 06     mov   $06,a
13cc: f4 3d     mov   a,$3d+x
13ce: 28 02     and   a,#$02
13d0: f0 3e     beq   $1410
13d2: f5 58 02  mov   a,$0258+x
13d5: c4 09     mov   $09,a
13d7: f5 60 02  mov   a,$0260+x
13da: c4 0a     mov   $0a,a
13dc: f5 40 02  mov   a,$0240+x
13df: fd        mov   y,a
13e0: f5 48 02  mov   a,$0248+x
13e3: d0 07     bne   $13ec
13e5: f5 38 02  mov   a,$0238+x
13e8: 7a 09     addw  ya,$09
13ea: 2f 05     bra   $13f1
13ec: f5 38 02  mov   a,$0238+x
13ef: 9a 09     subw  ya,$09
13f1: da 07     movw  $07,ya
13f3: d5 38 02  mov   $0238+x,a
13f6: dd        mov   a,y
13f7: d5 40 02  mov   $0240+x,a
13fa: f5 50 02  mov   a,$0250+x
13fd: 9c        dec   a
13fe: d0 0b     bne   $140b
1400: f5 48 02  mov   a,$0248+x
1403: 48 01     eor   a,#$01
1405: d5 48 02  mov   $0248+x,a
1408: f5 68 02  mov   a,$0268+x
140b: d5 50 02  mov   $0250+x,a
140e: 2f 06     bra   $1416
1410: e8 00     mov   a,#$00
1412: c4 07     mov   $07,a
1414: c4 08     mov   $08,a
1416: f5 87 01  mov   a,$0187+x
1419: fd        mov   y,a
141a: f5 7f 01  mov   a,$017f+x
141d: 7a 05     addw  ya,$05
141f: 7a 07     addw  ya,$07
1421: da 05     movw  $05,ya
1423: 4b 06     lsr   $06
1425: 6b 05     ror   $05
1427: 4b 06     lsr   $06
1429: 6b 05     ror   $05
142b: e4 99     mov   a,$99
142d: 08 02     or    a,#$02
142f: c4 f2     mov   $f2,a
1431: fa 05 f3  mov   ($f3),($05)
1434: e4 99     mov   a,$99
1436: 08 03     or    a,#$03
1438: c4 f2     mov   $f2,a
143a: fa 06 f3  mov   ($f3),($06)
143d: 6f        ret

143e: db $00,$10,$20,$30,$40,$50,$60,$70

1446: db $01,$02,$04,$08,$10,$20,$40,$80

144e: db $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

1456: cd 07     mov   x,#$07
1458: e8 05     mov   a,#$05
145a: c4 f2     mov   $f2,a
145c: 8f 00 f3  mov   $f3,#$00
145f: bc        inc   a
1460: bc        inc   a
1461: c4 f2     mov   $f2,a
1463: 8f 9c f3  mov   $f3,#$9c
1466: 60        clrc
1467: 88 0e     adc   a,#$0e
1469: 1d        dec   x
146a: 10 ee     bpl   $145a
146c: 8f 4d f2  mov   $f2,#$4d
146f: 8f 00 f3  mov   $f3,#$00
1472: 6f        ret

1473: 68 00     cmp   a,#$00
1475: d0 32     bne   $14a9
1477: cd 00     mov   x,#$00
1479: c9 ff 01  mov   $01ff,x
147c: f5 c6 14  mov   a,$14c6+x
147f: 30 0b     bmi   $148c
1481: c4 f2     mov   $f2,a
1483: 3d        inc   x
1484: f5 c6 14  mov   a,$14c6+x
1487: c4 f3     mov   $f3,a
1489: 3d        inc   x
148a: 2f f0     bra   $147c
148c: 8f 00 05  mov   $05,#$00
148f: cd 00     mov   x,#$00
1491: f5 f1 14  mov   a,$14f1+x
1494: 30 0d     bmi   $14a3
1496: 04 05     or    a,$05
1498: c4 f2     mov   $f2,a
149a: 3d        inc   x
149b: f5 f1 14  mov   a,$14f1+x
149e: c4 f3     mov   $f3,a
14a0: 3d        inc   x
14a1: d0 ee     bne   $1491
14a3: 60        clrc
14a4: 98 10 05  adc   $05,#$10
14a7: 10 e6     bpl   $148f
14a9: 68 00     cmp   a,#$00
14ab: f0 12     beq   $14bf
14ad: 8f 6c f2  mov   $f2,#$6c
14b0: 8f 20 f3  mov   $f3,#$20
14b3: 8f 0c f2  mov   $f2,#$0c
14b6: 8f 7f f3  mov   $f3,#$7f
14b9: 8f 1c f2  mov   $f2,#$1c
14bc: 8f 7f f3  mov   $f3,#$7f
14bf: 8f 4c f2  mov   $f2,#$4c
14c2: 8f 00 f3  mov   $f3,#$00
14c5: 6f        ret

14c6: db $6c,$e0
14c8: db $0c,$00
14ca: db $1c,$00
14cc: db $2c,$00
14ce: db $3c,$00
14d0: db $6d,$01
14d2: db $7d,$00
14d4: db $0d,$00
14d6: db $2d,$00
14d8: db $3d,$00
14da: db $4d,$00
14dc: db $7c,$00
14de: db $5d,$02
14e0: db $0f,$7f
14e2: db $1f,$00
14e4: db $2f,$00
14e6: db $3f,$00
14e8: db $4f,$00
14ea: db $5f,$00
14ec: db $6f,$00
14ee: db $7f,$00
14f0: db $ff

14f1: db $00,$00
14f3: db $01,$00
14f5: db $05,$00
14f7: db $06,$00
14f9: db $07,$9f
14fb: db $ff

14fc: e5 d3 02  mov   a,$02d3
14ff: d0 01     bne   $1502
1501: 6f        ret

1502: e5 d2 02  mov   a,$02d2
1505: f0 04     beq   $150b
1507: 8c d2 02  dec   $02d2
150a: 6f        ret

150b: e5 d3 02  mov   a,$02d3
150e: c5 d2 02  mov   $02d2,a
1511: e5 d4 02  mov   a,$02d4
1514: 10 05     bpl   $151b
1516: 8f 00 05  mov   $05,#$00
1519: 2f 03     bra   $151e
151b: 8f 40 05  mov   $05,#$40
151e: e4 a0     mov   a,$a0
1520: 60        clrc
1521: 85 d4 02  adc   a,$02d4
1524: 68 40     cmp   a,#$40
1526: 90 11     bcc   $1539
1528: e8 00     mov   a,#$00
152a: c5 d3 02  mov   $02d3,a
152d: e5 d4 02  mov   a,$02d4
1530: 10 05     bpl   $1537
1532: e8 00     mov   a,#$00
1534: c5 d1 02  mov   $02d1,a
1537: e4 05     mov   a,$05
1539: c4 a0     mov   $a0,a
153b: 6f        ret

153c: e5 ea 02  mov   a,$02ea
153f: 3c        rol   a
1540: b0 02     bcs   $1544
1542: 48 e9     eor   a,#$e9
1544: c5 ea 02  mov   $02ea,a
1547: 6f        ret

1548: 4d        push  x
1549: 5d        mov   x,a
154a: d0 02     bne   $154e
154c: ce        pop   x
154d: 6f        ret

154e: 3f 3c 15  call  $153c
1551: 8d 00     mov   y,#$00
1553: 9e        div   ya,x
1554: dd        mov   a,y
1555: ce        pop   x
1556: 6f        ret

1557: cd 00     mov   x,#$00
1559: d8 0c     mov   $0c,x
155b: 3d        inc   x
155c: d8 0b     mov   $0b,x
155e: 5a 0b     cmpw  ya,$0b
1560: f0 09     beq   $156b
1562: 90 07     bcc   $156b
1564: 80        setc
1565: 2b 0b     rol   $0b
1567: 2b 0c     rol   $0c
1569: 2f f3     bra   $155e
156b: da 09     movw  $09,ya
156d: ba 0b     movw  ya,$0b
156f: 9a 09     subw  ya,$09
1571: da 09     movw  $09,ya
1573: 3f 3c 15  call  $153c
1576: 24 0c     and   a,$0c
1578: fd        mov   y,a
1579: 3f 3c 15  call  $153c
157c: 24 0b     and   a,$0b
157e: 5a 09     cmpw  ya,$09
1580: 90 02     bcc   $1584
1582: 9a 09     subw  ya,$09
1584: 6f        ret

1585: e4 a4     mov   a,$a4
1587: d0 01     bne   $158a
1589: 6f        ret

158a: 3f 55 16  call  $1655
158d: 3f 94 15  call  $1594
1590: 3f 79 17  call  $1779
1593: 6f        ret

1594: e4 a1     mov   a,$a1
1596: 04 a2     or    a,$a2
1598: f0 03     beq   $159d
159a: 1a a1     decw  $a1
159c: 6f        ret

159d: 8d 00     mov   y,#$00
159f: f7 a3     mov   a,($a3)+y
15a1: 68 ff     cmp   a,#$ff
15a3: d0 06     bne   $15ab
15a5: e8 02     mov   a,#$02
15a7: c5 d1 02  mov   $02d1,a
15aa: 6f        ret

15ab: 68 fe     cmp   a,#$fe
15ad: d0 29     bne   $15d8
15af: 8d 01     mov   y,#$01
15b1: f7 a3     mov   a,($a3)+y
15b3: c4 05     mov   $05,a
15b5: fc        inc   y
15b6: f7 a3     mov   a,($a3)+y
15b8: c4 06     mov   $06,a
15ba: e4 a5     mov   a,$a5
15bc: eb a6     mov   y,$a6
15be: 60        clrc
15bf: 88 04     adc   a,#$04
15c1: 90 01     bcc   $15c4
15c3: fc        inc   y
15c4: 7a 05     addw  ya,$05
15c6: 8f 02 05  mov   $05,#$02
15c9: 8f 00 06  mov   $06,#$00
15cc: 7a 05     addw  ya,$05
15ce: 8f 00 a1  mov   $a1,#$00
15d1: 8f 00 a2  mov   $a2,#$00
15d4: da a3     movw  $a3,ya
15d6: 2f 58     bra   $1630
15d8: c4 05     mov   $05,a
15da: 8f 00 06  mov   $06,#$00
15dd: 0b 05     asl   $05
15df: 2b 06     rol   $06
15e1: ba a7     movw  ya,$a7
15e3: 7a 05     addw  ya,$05
15e5: da 05     movw  $05,ya
15e7: 8d 00     mov   y,#$00
15e9: f7 05     mov   a,($05)+y
15eb: c4 07     mov   $07,a
15ed: fc        inc   y
15ee: f7 05     mov   a,($05)+y
15f0: c4 08     mov   $08,a
15f2: ba a7     movw  ya,$a7
15f4: 7a 07     addw  ya,$07
15f6: da 05     movw  $05,ya
15f8: 3f 3c 16  call  $163c
15fb: 30 1e     bmi   $161b
15fd: 8d 01     mov   y,#$01
15ff: f7 a3     mov   a,($a3)+y
1601: d5 cf 01  mov   $01cf+x,a
1604: fc        inc   y
1605: f7 a3     mov   a,($a3)+y
1607: d5 df 01  mov   $01df+x,a
160a: fc        inc   y
160b: f7 a3     mov   a,($a3)+y
160d: d5 ef 01  mov   $01ef+x,a
1610: 3f 0f 17  call  $170f
1613: e4 ed     mov   a,$ed
1615: d4 c9     mov   $c9+x,a
1617: e4 ee     mov   a,$ee
1619: d4 d9     mov   $d9+x,a
161b: 8d 04     mov   y,#$04
161d: f7 a3     mov   a,($a3)+y
161f: c4 a1     mov   $a1,a
1621: fc        inc   y
1622: f7 a3     mov   a,($a3)+y
1624: c4 a2     mov   $a2,a
1626: ba a3     movw  ya,$a3
1628: 60        clrc
1629: 88 06     adc   a,#$06
162b: 90 01     bcc   $162e
162d: fc        inc   y
162e: da a3     movw  $a3,ya
1630: e4 a1     mov   a,$a1
1632: 04 a2     or    a,$a2
1634: d0 03     bne   $1639
1636: 5f 9d 15  jmp   $159d

1639: 5f 14 18  jmp   $1814

163c: cd 00     mov   x,#$00
163e: f4 b9     mov   a,$b9+x
1640: f0 08     beq   $164a
1642: 3d        inc   x
1643: c8 10     cmp   x,#$10
1645: d0 f7     bne   $163e
1647: cd ff     mov   x,#$ff
1649: 6f        ret

164a: e4 05     mov   a,$05
164c: d4 a9     mov   $a9+x,a
164e: e4 06     mov   a,$06
1650: d4 b9     mov   $b9+x,a
1652: c8 00     cmp   x,#$00
1654: 6f        ret

1655: cd 00     mov   x,#$00
1657: 4d        push  x
1658: f4 b9     mov   a,$b9+x
165a: d0 03     bne   $165f
165c: 5f eb 16  jmp   $16eb

165f: f4 c9     mov   a,$c9+x
1661: 14 d9     or    a,$d9+x
1663: f0 0c     beq   $1671
1665: 9b c9     dec   $c9+x
1667: f4 c9     mov   a,$c9+x
1669: 68 ff     cmp   a,#$ff
166b: d0 02     bne   $166f
166d: 9b d9     dec   $d9+x
166f: 2f 7a     bra   $16eb
1671: 3f 0f 17  call  $170f
1674: f5 cf 01  mov   a,$01cf+x
1677: c4 09     mov   $09,a
1679: e4 e9     mov   a,$e9
167b: 10 0f     bpl   $168c
167d: d8 05     mov   $05,x
167f: 28 0f     and   a,#$0f
1681: 1c        asl   a
1682: 5d        mov   x,a
1683: e8 16     mov   a,#$16
1685: 2d        push  a
1686: e8 eb     mov   a,#$eb
1688: 2d        push  a                 ; push return address $16eb
1689: 1f f5 16  jmp   ($16f5+x)

168c: f0 57     beq   $16e5
168e: 60        clrc
168f: 84 09     adc   a,$09
1691: c4 0c     mov   $0c,a
1693: f5 ef 01  mov   a,$01ef+x
1696: fd        mov   y,a
1697: f6 ed 02  mov   a,$02ed+y
169a: c4 0b     mov   $0b,a
169c: 4d        push  x
169d: 3f 08 11  call  $1108
16a0: ee        pop   y
16a1: 30 1a     bmi   $16bd
16a3: e4 eb     mov   a,$eb
16a5: d4 85     mov   $85+x,a
16a7: e4 ec     mov   a,$ec
16a9: d4 8d     mov   $8d+x,a
16ab: e4 ea     mov   a,$ea
16ad: 60        clrc
16ae: 96 df 01  adc   a,$01df+y
16b1: 10 02     bpl   $16b5
16b3: e8 00     mov   a,#$00
16b5: 68 3f     cmp   a,#$3f
16b7: 90 02     bcc   $16bb
16b9: e8 3f     mov   a,#$3f
16bb: d4 65     mov   $65+x,a
16bd: dd        mov   a,y
16be: 5d        mov   x,a
16bf: f4 a9     mov   a,$a9+x
16c1: 60        clrc
16c2: 84 ef     adc   a,$ef
16c4: d4 a9     mov   $a9+x,a
16c6: 90 02     bcc   $16ca
16c8: bb b9     inc   $b9+x
16ca: 3f 0f 17  call  $170f
16cd: e4 ed     mov   a,$ed
16cf: d4 c9     mov   $c9+x,a
16d1: e4 ee     mov   a,$ee
16d3: d4 d9     mov   $d9+x,a
16d5: 04 ed     or    a,$ed
16d7: f0 9b     beq   $1674
16d9: 9b c9     dec   $c9+x
16db: f4 c9     mov   a,$c9+x
16dd: 68 ff     cmp   a,#$ff
16df: d0 02     bne   $16e3
16e1: 9b d9     dec   $d9+x
16e3: 2f 06     bra   $16eb
16e5: e8 00     mov   a,#$00
16e7: d4 a9     mov   $a9+x,a
16e9: d4 b9     mov   $b9+x,a
16eb: ce        pop   x
16ec: 3d        inc   x
16ed: c8 10     cmp   x,#$10
16ef: f0 03     beq   $16f4
16f1: 5f 57 16  jmp   $1657

16f4: 6f        ret

16f5: dw $16f7

16f7: f8 05     mov   x,$05
16f9: f5 ef 01  mov   a,$01ef+x
16fc: fd        mov   y,a
16fd: e4 ea     mov   a,$ea
16ff: 24 3f     and   a,$3f
1701: c4 05     mov   $05,a
1703: e4 e9     mov   a,$e9
1705: 1c        asl   a
1706: 1c        asl   a
1707: 24 c0     and   a,$c0
1709: 04 05     or    a,$05
170b: d6 ed 02  mov   $02ed+y,a
170e: 6f        ret

170f: 4d        push  x
1710: f4 b9     mov   a,$b9+x
1712: fd        mov   y,a
1713: f4 a9     mov   a,$a9+x
1715: da 0b     movw  $0b,ya
1717: 8d 00     mov   y,#$00
1719: f7 0b     mov   a,($0b)+y
171b: 28 3f     and   a,#$3f
171d: 5d        mov   x,a
171e: f7 0b     mov   a,($0b)+y
1720: 28 40     and   a,#$40
1722: f0 05     beq   $1729
1724: 7d        mov   a,x
1725: 08 80     or    a,#$80
1727: 2f 01     bra   $172a
1729: 7d        mov   a,x
172a: c4 e9     mov   $e9,a
172c: 8f 04 ef  mov   $ef,#$04
172f: fc        inc   y
1730: f7 0b     mov   a,($0b)+y
1732: 28 3f     and   a,#$3f
1734: c4 ea     mov   $ea,a
1736: 8f 03 05  mov   $05,#$03
1739: 8f 00 06  mov   $06,#$00
173c: 8d 00     mov   y,#$00
173e: f7 0b     mov   a,($0b)+y
1740: 10 04     bpl   $1746
1742: ab 06     inc   $06
1744: ab ef     inc   $ef
1746: fc        inc   y
1747: f7 0b     mov   a,($0b)+y
1749: 10 04     bpl   $174f
174b: ab 05     inc   $05
174d: ab ef     inc   $ef
174f: eb 05     mov   y,$05
1751: f7 0b     mov   a,($0b)+y
1753: c4 ed     mov   $ed,a
1755: e4 06     mov   a,$06
1757: d0 04     bne   $175d
1759: e8 00     mov   a,#$00
175b: 2f 03     bra   $1760
175d: fc        inc   y
175e: f7 0b     mov   a,($0b)+y
1760: c4 ee     mov   $ee,a
1762: 8d 02     mov   y,#$02
1764: f7 0b     mov   a,($0b)+y
1766: c4 eb     mov   $eb,a
1768: e4 05     mov   a,$05
176a: 68 04     cmp   a,#$04
176c: d0 05     bne   $1773
176e: fc        inc   y
176f: f7 0b     mov   a,($0b)+y
1771: 2f 02     bra   $1775
1773: e8 00     mov   a,#$00
1775: c4 ec     mov   $ec,a
1777: ce        pop   x
1778: 6f        ret

1779: cd 07     mov   x,#$07
177b: f4 3d     mov   a,$3d+x
177d: 28 80     and   a,#$80
177f: d0 2f     bne   $17b0
1781: f4 85     mov   a,$85+x
1783: 14 8d     or    a,$8d+x
1785: f0 29     beq   $17b0
1787: 9b 85     dec   $85+x
1789: f4 85     mov   a,$85+x
178b: 68 ff     cmp   a,#$ff
178d: d0 02     bne   $1791
178f: 9b 8d     dec   $8d+x
1791: 14 8d     or    a,$8d+x
1793: d0 1b     bne   $17b0
1795: f4 3d     mov   a,$3d+x
1797: 08 10     or    a,#$10
1799: d4 3d     mov   $3d+x,a
179b: f5 e2 02  mov   a,$02e2+x
179e: 30 0a     bmi   $17aa
17a0: e8 00     mov   a,#$00
17a2: d5 da 02  mov   $02da+x,a
17a5: d5 e2 02  mov   $02e2+x,a
17a8: 2f 06     bra   $17b0
17aa: 80        setc
17ab: a8 80     sbc   a,#$80
17ad: d5 e2 02  mov   $02e2+x,a
17b0: 1d        dec   x
17b1: 10 c8     bpl   $177b
17b3: 6f        ret

17b4: 1c        asl   a
17b5: fd        mov   y,a
17b6: e5 3e 03  mov   a,$033e
17b9: c4 06     mov   $06,a
17bb: e5 3d 03  mov   a,$033d
17be: c4 05     mov   $05,a
17c0: 60        clrc
17c1: 97 05     adc   a,($05)+y
17c3: c4 a5     mov   $a5,a
17c5: fc        inc   y
17c6: e5 3e 03  mov   a,$033e
17c9: 97 05     adc   a,($05)+y
17cb: c4 a6     mov   $a6,a
17cd: 8d 00     mov   y,#$00
17cf: e4 a5     mov   a,$a5
17d1: 60        clrc
17d2: 97 a5     adc   a,($a5)+y
17d4: c4 a7     mov   $a7,a
17d6: fc        inc   y
17d7: e4 a6     mov   a,$a6
17d9: 97 a5     adc   a,($a5)+y
17db: c4 a8     mov   $a8,a
17dd: fc        inc   y
17de: f7 a5     mov   a,($a5)+y
17e0: 8f 01 f1  mov   $f1,#$01
17e3: c4 fb     mov   $fb,a
17e5: 8f 03 f1  mov   $f1,#$03
17e8: e4 fd     mov   a,$fd
17ea: e4 fe     mov   a,$fe
17ec: e4 a5     mov   a,$a5
17ee: eb a6     mov   y,$a6
17f0: 60        clrc
17f1: 88 04     adc   a,#$04
17f3: 90 01     bcc   $17f6
17f5: fc        inc   y
17f6: da a3     movw  $a3,ya
17f8: 8d 00     mov   y,#$00
17fa: cb 06     mov   $06,y
17fc: f7 a3     mov   a,($a3)+y
17fe: c4 a1     mov   $a1,a
1800: fc        inc   y
1801: f7 a3     mov   a,($a3)+y
1803: c4 a2     mov   $a2,a
1805: 8f 02 05  mov   $05,#$02
1808: ba a3     movw  ya,$a3
180a: 7a 05     addw  ya,$05
180c: da a3     movw  $a3,ya
180e: e4 a1     mov   a,$a1
1810: 04 a2     or    a,$a2
1812: f0 0a     beq   $181e
1814: 8b a1     dec   $a1
1816: e4 a1     mov   a,$a1
1818: 68 ff     cmp   a,#$ff
181a: d0 02     bne   $181e
181c: 8b a2     dec   $a2
181e: 6f        ret
