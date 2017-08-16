0300: 20        clrp
0301: cd ff     mov   x,#$ff
0303: bd        mov   sp,x
0304: e8 00     mov   a,#$00
0306: cd ef     mov   x,#$ef
0308: c6        mov   (x),a
0309: 1d        dec   x
030a: d0 fc     bne   $0308
030c: cd 0f     mov   x,#$0f
030e: e8 00     mov   a,#$00
0310: d4 3d     mov   $3d+x,a
0312: 3f 30 3f  call  $3f30
0315: 1d        dec   x
0316: 10 f6     bpl   $030e
0318: cd 07     mov   x,#$07
031a: e8 00     mov   a,#$00
031c: d5 ae 00  mov   $00ae+x,a
031f: 1d        dec   x
0320: 10 fa     bpl   $031c
0322: c5 d1 08  mov   $08d1,a
0325: 3f 42 42  call  $4242
0328: e8 ff     mov   a,#$ff
032a: c5 cc 08  mov   $08cc,a
032d: e8 ff     mov   a,#$ff
032f: c5 cd 08  mov   $08cd,a
0332: e8 ff     mov   a,#$ff
0334: c5 ca 08  mov   $08ca,a
0337: e8 00     mov   a,#$00
0339: c4 b9     mov   $b9,a
033b: c4 b7     mov   $b7,a
033d: c4 b6     mov   $b6,a
033f: c4 a1     mov   $a1,a
0341: c4 a2     mov   $a2,a
0343: c4 a5     mov   $a5,a
0345: c4 a6     mov   $a6,a
0347: c4 a3     mov   $a3,a
0349: c4 a4     mov   $a4,a
034b: c4 a0     mov   $a0,a
034d: c4 95     mov   $95,a
034f: c4 96     mov   $96,a
0351: c5 d0 08  mov   $08d0,a
0354: e8 ff     mov   a,#$ff
0356: c4 9a     mov   $9a,a
0358: c4 a7     mov   $a7,a
035a: e8 04     mov   a,#$04
035c: c5 cb 08  mov   $08cb,a
035f: 8f 5c f2  mov   $f2,#$5c
0362: 8f ff f3  mov   $f3,#$ff          ; keyoff all voices
0365: 8d 40     mov   y,#$40
0367: fe fe     dbnz  y,$0367
0369: 8f 00 f3  mov   $f3,#$00
036c: 8f ab f4  mov   $f4,#$ab
036f: 8f cd f5  mov   $f5,#$cd
0372: 78 67 f6  cmp   $f6,#$67
0375: d0 fb     bne   $0372
0377: 78 89 f7  cmp   $f7,#$89
037a: d0 fb     bne   $0377
037c: 8f 80 f1  mov   $f1,#$80
037f: 8f 7d fb  mov   $fb,#$7d
0382: 8f 82 f1  mov   $f1,#$82
0385: 3f ee 05  call  $05ee
0388: 13 9b 14  bbc0  $9b,$039f
038b: e4 fd     mov   a,$fd             ; timer 0 tick
038d: f0 10     beq   $039f
;
038f: c4 1c     mov   $1c,a
0391: e9 d0 08  mov   x,$08d0
0394: f0 02     beq   $0398
0396: 0b 1c     asl   $1c               ; (counter_0 * 2) times: -- i.e. halve time resolution?
0398: 3f fb 35  call  $35fb             ;   process voice bytes
039b: 8b 1c     dec   $1c
039d: d0 f9     bne   $0398
;
039f: e4 fe     mov   a,$fe
03a1: f0 03     beq   $03a6
03a3: 3f 3e 3c  call  $3c3e
03a6: e4 f6     mov   a,$f6
03a8: f0 de     beq   $0388
03aa: 64 f7     cmp   a,$f7
03ac: d0 da     bne   $0388
03ae: 68 22     cmp   a,#$22
03b0: b0 e6     bcs   $0398
03b2: 9c        dec   a
03b3: 1c        asl   a
03b4: 5d        mov   x,a
03b5: 1f b8 03  jmp   ($03b8+x)

03b8: dw $05b3  ; 01
03ba: dw $03fa  ; 02
03bc: dw $0406  ; 03
03be: dw $3d04  ; 04
03c0: dw $3e33  ; 05
03c2: dw $0419  ; 06
03c4: dw $0420  ; 07
03c6: dw $042c  ; 08
03c8: dw $0435  ; 09
03ca: dw $040c  ; 0a
03cc: dw $0440  ; 0b
03ce: dw $0448  ; 0c
03d0: dw $0450  ; 0d
03d2: dw $047c  ; 0e
03d4: dw $0482  ; 0f
03d6: dw $0488  ; 10
03d8: dw $048e  ; 11
03da: dw $054d  ; 12
03dc: dw $0495  ; 13
03de: dw $04a9  ; 14
03e0: dw $049e  ; 15
03e2: dw $0554  ; 16
03e4: dw $055e  ; 17
03e6: dw $0457  ; 18
03e8: dw $3e57  ; 19
03ea: dw $045e  ; 1a
03ec: dw $046b  ; 1b
03ee: dw $0595  ; 1c
03f0: dw $04b2  ; 1d
03f2: dw $0527  ; 1e
03f4: dw $052d  ; 1f
03f6: dw $0538  ; 20
03f8: dw $0545  ; 21

03fa: 72 9b     clr3  $9b
03fc: 52 9b     clr2  $9b
03fe: e8 ff     mov   a,#$ff
0400: c5 ca 08  mov   $08ca,a
0403: 5f 60 35  jmp   $3560

0406: 3f 45 36  call  $3645
0409: 5f 85 03  jmp   $0385

040c: 8d 01     mov   y,#$01
040e: e8 00     mov   a,#$00
0410: f8 f4     mov   x,$f4
0412: 9e        div   ya,x
0413: c5 cb 08  mov   $08cb,a
0416: 5f 85 03  jmp   $0385

0419: 42 9b     set2  $9b
041b: 72 9b     clr3  $9b
041d: 5f 85 03  jmp   $0385

0420: 62 9b     set3  $9b
0422: 52 9b     clr2  $9b
0424: e8 00     mov   a,#$00
0426: c5 ca 08  mov   $08ca,a
0429: 5f 60 35  jmp   $3560

042c: fa 8d f4  mov   ($f4),($8d)
042f: fa a0 f5  mov   ($f5),($a0)
0432: 5f 85 03  jmp   $0385

0435: e4 f4     mov   a,$f4
0437: c5 c3 08  mov   $08c3,a
043a: 3f b4 3f  call  $3fb4
043d: 5f 85 03  jmp   $0385

0440: e4 f4     mov   a,$f4
0442: c5 cc 08  mov   $08cc,a
0445: 5f 85 03  jmp   $0385

0448: e4 f4     mov   a,$f4
044a: c5 cd 08  mov   $08cd,a
044d: 5f 85 03  jmp   $0385

0450: e4 f4     mov   a,$f4
0452: c4 99     mov   $99,a
0454: 5f 85 03  jmp   $0385

0457: e4 99     mov   a,$99
0459: c4 f4     mov   $f4,a
045b: 5f 85 03  jmp   $0385

045e: e4 f4     mov   a,$f4
0460: f8 f5     mov   x,$f5
0462: d5 23 07  mov   $0723+x,a
0465: 3f fd 3f  call  $3ffd
0468: 5f 88 03  jmp   $0388

046b: e4 f5     mov   a,$f5
046d: 60        clrc
046e: 88 08     adc   a,#$08
0470: 5d        mov   x,a
0471: e4 f4     mov   a,$f4
0473: d5 23 07  mov   $0723+x,a
0476: 3f fd 3f  call  $3ffd
0479: 5f 85 03  jmp   $0385

047c: 3f 42 42  call  $4242
047f: 5f 85 03  jmp   $0385

0482: fa 9b f4  mov   ($f4),($9b)
0485: 5f 85 03  jmp   $0385

0488: fa f4 9a  mov   ($9a),($f4)
048b: 5f 85 03  jmp   $0385

048e: ba f4     movw  ya,$f4
0490: da 9c     movw  $9c,ya
0492: 5f 85 03  jmp   $0385

0495: e4 f4     mov   a,$f4
0497: 1c        asl   a
0498: 1c        asl   a
0499: c4 9e     mov   $9e,a
049b: 5f 85 03  jmp   $0385

049e: e5 d0 08  mov   a,$08d0
04a1: 48 ff     eor   a,#$ff
04a3: c5 d0 08  mov   $08d0,a
04a6: 5f 85 03  jmp   $0385

04a9: 3f b8 04  call  $04b8
04ac: 3f ee 05  call  $05ee
04af: 5f ba 05  jmp   $05ba

04b2: 3f b8 04  call  $04b8
04b5: 5f 85 03  jmp   $0385

04b8: 3f ee 05  call  $05ee
04bb: 8d 08     mov   y,#$08
04bd: 3f 17 05  call  $0517
04c0: c4 08     mov   $08,a
04c2: 3f 17 05  call  $0517
04c5: c4 09     mov   $09,a
04c7: 3f 17 05  call  $0517
04ca: c4 04     mov   $04,a
04cc: 3f 17 05  call  $0517
04cf: c4 05     mov   $05,a
04d1: f8 9e     mov   x,$9e
04d3: 3f 17 05  call  $0517
04d6: d5 d2 08  mov   $08d2+x,a
04d9: 3f 17 05  call  $0517
04dc: d5 d3 08  mov   $08d3+x,a
04df: 3f 17 05  call  $0517
04e2: d5 d4 08  mov   $08d4+x,a
04e5: 3f 17 05  call  $0517
04e8: d5 d5 08  mov   $08d5+x,a
04eb: e4 9c     mov   a,$9c
04ed: d5 00 02  mov   $0200+x,a
04f0: c4 0c     mov   $0c,a
04f2: 60        clrc
04f3: 84 08     adc   a,$08
04f5: c4 9c     mov   $9c,a
04f7: e4 9d     mov   a,$9d
04f9: d5 01 02  mov   $0201+x,a
04fc: c4 0d     mov   $0d,a
04fe: 84 09     adc   a,$09
0500: c4 9d     mov   $9d,a
0502: ba 0c     movw  ya,$0c
0504: 7a 04     addw  ya,$04
0506: d5 02 02  mov   $0202+x,a
0509: dd        mov   a,y
050a: d5 03 02  mov   $0203+x,a
050d: 60        clrc
050e: 98 04 9e  adc   $9e,#$04
0511: 78 ff f6  cmp   $f6,#$ff
0514: d0 fb     bne   $0511
0516: 6f        ret

0517: dd        mov   a,y
0518: 64 f6     cmp   a,$f6
051a: d0 fc     bne   $0518
051c: e4 f4     mov   a,$f4
051e: 2d        push  a
051f: dd        mov   a,y
0520: 08 80     or    a,#$80
0522: c4 f6     mov   $f6,a
0524: dc        dec   y
0525: ae        pop   a
0526: 6f        ret

0527: fa a0 f4  mov   ($f4),($a0)
052a: 5f 85 03  jmp   $0385

052d: e4 f4     mov   a,$f4
052f: c5 c7 08  mov   $08c7,a
0532: 3f c2 3f  call  $3fc2
0535: 5f 85 03  jmp   $0385

0538: e4 f4     mov   a,$f4
053a: c5 c8 08  mov   $08c8,a
053d: 8f 0d f2  mov   $f2,#$0d
0540: c4 f3     mov   $f3,a             ; set EFB
0542: 5f 85 03  jmp   $0385

0545: e4 f4     mov   a,$f4
0547: 3f 0a 3a  call  $3a0a
054a: 5f 85 03  jmp   $0385

054d: ba 9c     movw  ya,$9c
054f: da f4     movw  $f4,ya
0551: 5f 85 03  jmp   $0385

0554: ba f4     movw  ya,$f4
0556: da a8     movw  $a8,ya
0558: 8f ff ad  mov   $ad,#$ff
055b: 5f 85 03  jmp   $0385

055e: 3f ee 05  call  $05ee
0561: e8 ff     mov   a,#$ff
0563: 64 f6     cmp   a,$f6
0565: d0 fc     bne   $0563
0567: c4 f6     mov   $f6,a
0569: 8d 00     mov   y,#$00
056b: dd        mov   a,y
056c: 28 7f     and   a,#$7f
056e: 78 ff f7  cmp   $f7,#$ff
0571: d0 03     bne   $0576
0573: 5f 85 03  jmp   $0385

0576: 64 f6     cmp   a,$f6
0578: d0 f1     bne   $056b
057a: dd        mov   a,y
057b: 5d        mov   x,a
057c: e4 f4     mov   a,$f4
057e: d7 a8     mov   ($a8)+y,a
0580: fc        inc   y
0581: d0 02     bne   $0585
0583: ab a9     inc   $a9
0585: e4 f5     mov   a,$f5
0587: d7 a8     mov   ($a8)+y,a
0589: fc        inc   y
058a: d0 02     bne   $058e
058c: ab a9     inc   $a9
058e: 7d        mov   a,x
058f: 08 80     or    a,#$80
0591: c4 f6     mov   $f6,a
0593: 2f d6     bra   $056b
0595: 8d 00     mov   y,#$00
0597: e4 f4     mov   a,$f4
0599: d7 a8     mov   ($a8)+y,a
059b: fc        inc   y
059c: e4 f5     mov   a,$f5
059e: d7 a8     mov   ($a8)+y,a
05a0: 3f ee 05  call  $05ee
05a3: e4 a8     mov   a,$a8
05a5: 60        clrc
05a6: 88 02     adc   a,#$02
05a8: c4 a8     mov   $a8,a
05aa: e4 a9     mov   a,$a9
05ac: 88 00     adc   a,#$00
05ae: c4 a9     mov   $a9,a
05b0: 5f 88 03  jmp   $0388

05b3: ba f4     movw  ya,$f4
05b5: da 0c     movw  $0c,ya
05b7: 3f ee 05  call  $05ee
05ba: e8 ff     mov   a,#$ff
05bc: 64 f6     cmp   a,$f6
05be: d0 fc     bne   $05bc
05c0: c4 f6     mov   $f6,a
05c2: 8d 00     mov   y,#$00
05c4: dd        mov   a,y
05c5: 28 7f     and   a,#$7f
05c7: 78 ff f7  cmp   $f7,#$ff
05ca: d0 03     bne   $05cf
05cc: 5f 85 03  jmp   $0385

05cf: 64 f6     cmp   a,$f6
05d1: d0 f4     bne   $05c7
05d3: dd        mov   a,y
05d4: 5d        mov   x,a
05d5: e4 f4     mov   a,$f4
05d7: d7 0c     mov   ($0c)+y,a
05d9: fc        inc   y
05da: d0 02     bne   $05de
05dc: ab 0d     inc   $0d
05de: e4 f5     mov   a,$f5
05e0: d7 0c     mov   ($0c)+y,a
05e2: fc        inc   y
05e3: d0 02     bne   $05e7
05e5: ab 0d     inc   $0d
05e7: 7d        mov   a,x
05e8: 08 80     or    a,#$80
05ea: c4 f6     mov   $f6,a
05ec: 2f d6     bra   $05c4
05ee: 8f cd f6  mov   $f6,#$cd
05f1: 8f ef f7  mov   $f7,#$ef
05f4: e4 f6     mov   a,$f6
05f6: d0 fc     bne   $05f4
05f8: e4 f7     mov   a,$f7
05fa: d0 fc     bne   $05f8
05fc: e8 00     mov   a,#$00
05fe: c4 f6     mov   $f6,a
0600: c4 f7     mov   $f7,a
0602: 6f        ret

3560: 3f ee 05  call  $05ee
3563: e8 00     mov   a,#$00
3565: c5 a1 00  mov   $00a1,a
3568: c5 a5 00  mov   $00a5,a
356b: c5 a3 00  mov   $00a3,a
356e: 8f 10 18  mov   $18,#$10
3571: 8f 44 19  mov   $19,#$44
3574: cd 00     mov   x,#$00
3576: 8d 00     mov   y,#$00
3578: f4 3d     mov   a,$3d+x
357a: 28 02     and   a,#$02
357c: d4 3d     mov   $3d+x,a
357e: f7 18     mov   a,($18)+y
3580: 68 ff     cmp   a,#$ff
3582: f0 08     beq   $358c
3584: 28 80     and   a,#$80
3586: 08 01     or    a,#$01
3588: 14 3d     or    a,$3d+x
358a: d4 3d     mov   $3d+x,a
358c: 3d        inc   x
358d: fc        inc   y
358e: ad 08     cmp   y,#$08
3590: d0 e6     bne   $3578
3592: 8d 10     mov   y,#$10
3594: cd 00     mov   x,#$00
3596: 3f 30 3f  call  $3f30
3599: e8 01     mov   a,#$01
359b: d4 1d     mov   $1d+x,a
359d: e8 00     mov   a,#$00
359f: d4 8d     mov   $8d+x,a
35a1: f7 18     mov   a,($18)+y
35a3: d5 03 06  mov   $0603+x,a         ; section pointer (lo-byte)
35a6: c4 10     mov   $10,a
35a8: fc        inc   y
35a9: f7 18     mov   a,($18)+y
35ab: 60        clrc
35ac: 88 44     adc   a,#$44
35ae: d5 13 06  mov   $0613+x,a         ; section pointer (hi-byte)
35b1: c4 11     mov   $11,a
35b3: fc        inc   y
35b4: 3f 28 3b  call  $3b28             ; load section $10/1
35b7: 6d        push  y
35b8: e8 00     mov   a,#$00
35ba: 3f 0f 42  call  $420f
35bd: ee        pop   y
35be: 3d        inc   x
35bf: c8 08     cmp   x,#$08
35c1: f0 03     beq   $35c6
35c3: 5f 96 35  jmp   $3596

35c6: 3f 90 3f  call  $3f90
35c9: 3f a8 3f  call  $3fa8
35cc: e5 19 44  mov   a,$4419
35cf: c5 c9 08  mov   $08c9,a
35d2: e8 50     mov   a,#$50
35d4: c5 c8 08  mov   $08c8,a
35d7: e8 00     mov   a,#$00
35d9: c5 c7 08  mov   $08c7,a
35dc: 3f c2 3f  call  $3fc2
35df: 3f c4 42  call  $42c4
35e2: e8 54     mov   a,#$54
35e4: 3f 0a 3a  call  $3a0a
35e7: 8f 00 f1  mov   $f1,#$00
35ea: e5 03 44  mov   a,$4403
35ed: c4 fa     mov   $fa,a
35ef: 8f 7d fb  mov   $fb,#$7d
35f2: 8f 03 f1  mov   $f1,#$03
35f5: 18 01 9b  or    $9b,#$01
35f8: 5f 88 03  jmp   $0388

; process voice bytes
35fb: cd 00     mov   x,#$00
35fd: f4 3d     mov   a,$3d+x
35ff: 28 01     and   a,#$01
3601: f0 33     beq   $3636             ; skip if halted
3603: f4 2d     mov   a,$2d+x
3605: f0 0d     beq   $3614
3607: 9b 2d     dec   $2d+x
3609: d0 09     bne   $3614
360b: f4 3d     mov   a,$3d+x
360d: 28 02     and   a,#$02
360f: d0 03     bne   $3614
3611: 3f 8f 3b  call  $3b8f
3614: 9b 1d     dec   $1d+x             ; decrease wait counter
3616: d0 1e     bne   $3636
3618: 3f 91 36  call  $3691             ; enter to vcmd parse loop
361b: f4 3d     mov   a,$3d+x
361d: 30 17     bmi   $3636
361f: 28 02     and   a,#$02
3621: d0 13     bne   $3636
3623: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3626: 24 b7     and   a,$b7
3628: f0 0c     beq   $3636
362a: 48 ff     eor   a,#$ff
362c: 24 b7     and   a,$b7
362e: c4 b7     mov   $b7,a
3630: f5 13 07  mov   a,$0713+x         ; instrument #
3633: 3f 0f 42  call  $420f             ; set sample
3636: 3d        inc   x
3637: c8 08     cmp   x,#$08
3639: d0 c2     bne   $35fd             ; next channel
363b: 3f 18 40  call  $4018             ; update voice volume
363e: 3f ef 40  call  $40ef             ; update voice pitch
3641: 3f 08 3f  call  $3f08             ; update key on/off
3644: 6f        ret

3645: e4 9b     mov   a,$9b
3647: 28 f2     and   a,#$f2
3649: c4 9b     mov   $9b,a
364b: 8f 00 a1  mov   $a1,#$00
364e: 8f 00 a5  mov   $a5,#$00
3651: 8f 00 a3  mov   $a3,#$00
3654: 3f a8 3f  call  $3fa8
3657: 3f 90 3f  call  $3f90
365a: 3f 9c 3f  call  $3f9c
365d: e8 00     mov   a,#$00
365f: 3f 0a 3a  call  $3a0a
3662: 8f ff 9a  mov   $9a,#$ff
3665: cd 07     mov   x,#$07
3667: f4 3d     mov   a,$3d+x
3669: 28 01     and   a,#$01
366b: f0 09     beq   $3676
366d: f4 3d     mov   a,$3d+x
366f: 28 02     and   a,#$02
3671: d0 03     bne   $3676
3673: 3f 8f 3b  call  $3b8f
3676: f4 3d     mov   a,$3d+x
3678: 28 02     and   a,#$02
367a: d4 3d     mov   $3d+x,a
367c: 1d        dec   x
367d: 10 e8     bpl   $3667
367f: e8 00     mov   a,#$00
3681: c4 95     mov   $95,a
3683: 3f 08 3f  call  $3f08
3686: e5 ce 08  mov   a,$08ce
3689: 08 20     or    a,#$20
368b: 8f 6c f2  mov   $f2,#$6c
368e: c4 f3     mov   $f3,a             ; set FLG
3690: 6f        ret

; vcmd parser main loop
3691: f5 33 06  mov   a,$0633+x
3694: c4 18     mov   $18,a
3696: f5 43 06  mov   a,$0643+x
3699: c4 19     mov   $19,a             ; set voice pointer of channel X to $18/9
369b: 8d 00     mov   y,#$00
369d: f7 18     mov   a,($18)+y
369f: 30 26     bmi   $36c7
; vcmd 00-7f
36a1: 3f 59 3b  call  $3b59             ; save note param
36a4: fc        inc   y
36a5: 60        clrc
36a6: 95 23 06  adc   a,$0623+x         ; add global transpose (unsigned)
36a9: d5 43 07  mov   $0743+x,a         ; note number
36ac: f7 18     mov   a,($18)+y
36ae: d5 53 07  mov   $0753+x,a         ; arg1: delta-time
36b1: fc        inc   y
36b2: f7 18     mov   a,($18)+y
36b4: d5 63 07  mov   $0763+x,a         ; arg2: duration
36b7: fc        inc   y
36b8: f7 18     mov   a,($18)+y
36ba: d5 73 07  mov   $0773+x,a         ; arg3: note volume
36bd: 3f fd 3f  call  $3ffd
36c0: e8 04     mov   a,#$04
36c2: 3f 1a 3b  call  $3b1a
36c5: 2f 2e     bra   $36f5
; 80-ff
36c7: fc        inc   y
36c8: 68 f0     cmp   a,#$f0
36ca: 90 03     bcc   $36cf
36cc: 5f 54 37  jmp   $3754

; vcmd 80-ef - note
36cf: 3f 59 3b  call  $3b59             ; save note param
36d2: 28 7f     and   a,#$7f            ; extract lower 7-bits of vcmd: key
36d4: 60        clrc
36d5: 95 23 06  adc   a,$0623+x         ; add global transpose (unsigned)
36d8: d5 43 07  mov   $0743+x,a         ; note number
36db: f5 93 07  mov   a,$0793+x
36de: d5 53 07  mov   $0753+x,a         ; delta-time
36e1: f5 a3 07  mov   a,$07a3+x
36e4: d5 63 07  mov   $0763+x,a         ; duration
36e7: f5 b3 07  mov   a,$07b3+x
36ea: d5 73 07  mov   $0773+x,a         ; note volume
36ed: 3f fd 3f  call  $3ffd             ; update actual note volume
36f0: e8 01     mov   a,#$01
36f2: 3f 1a 3b  call  $3b1a             ; increase voice ptr
36f5: f4 3d     mov   a,$3d+x
36f7: 28 02     and   a,#$02
36f9: d0 1b     bne   $3716
36fb: f5 63 07  mov   a,$0763+x         ; skip if duration == 0 (pure wait)
36fe: f0 16     beq   $3716
3700: f4 3d     mov   a,$3d+x
3702: 30 1d     bmi   $3721
3704: f4 2d     mov   a,$2d+x
3706: f0 08     beq   $3710             ; skip next condition if keyoff counter == 0 (i.e. note is off)
3708: f5 83 07  mov   a,$0783+x
370b: 75 43 07  cmp   a,$0743+x
370e: f0 06     beq   $3716             ; skip if note number == previous note number
3710: 3f bf 41  call  $41bf             ; calculate pitch from note number
3713: 3f 74 3b  call  $3b74
3716: f5 53 07  mov   a,$0753+x
3719: d4 1d     mov   $1d+x,a           ; set delta-time to wait counter
371b: f5 63 07  mov   a,$0763+x
371e: d4 2d     mov   $2d+x,a           ; set duration to keyoff counter
3720: 6f        ret

3721: 3f 74 3b  call  $3b74
3724: 8d 00     mov   y,#$00
3726: f6 10 3c  mov   a,$3c10+y
3729: f0 28     beq   $3753
372b: 75 43 07  cmp   a,$0743+x
372e: f0 03     beq   $3733
3730: fc        inc   y
3731: 2f f3     bra   $3726
3733: f6 1a 3c  mov   a,$3c1a+y
3736: d4 4d     mov   $4d+x,a
3738: f6 23 3c  mov   a,$3c23+y
373b: d4 5d     mov   $5d+x,a
373d: f6 2c 3c  mov   a,$3c2c+y
3740: d5 33 07  mov   $0733+x,a
3743: f6 35 3c  mov   a,$3c35+y
3746: 3f 0f 42  call  $420f
3749: f5 53 07  mov   a,$0753+x
374c: d4 1d     mov   $1d+x,a
374e: f5 63 07  mov   a,$0763+x
3751: d4 2d     mov   $2d+x,a
3753: 6f        ret

; dispatch vcmd
3754: 4d        push  x
3755: 80        setc
3756: a8 f0     sbc   a,#$f0
3758: 1c        asl   a
3759: 5d        mov   x,a
375a: 1f a0 3b  jmp   ($3ba0+x)

; vcmd f0 - modulation
375d: ce        pop   x
375e: 3f 12 3b  call  $3b12
3761: 2d        push  a
3762: f5 83 08  mov   a,$0883+x
3765: d0 06     bne   $376d
3767: d5 e3 07  mov   $07e3+x,a
376a: d5 33 08  mov   $0833+x,a
376d: ae        pop   a
376e: d5 83 08  mov   $0883+x,a
3771: e8 03     mov   a,#$03
3773: 5f 07 3b  jmp   $3b07

; vcmd f1 - volume
3776: ce        pop   x
3777: 3f 12 3b  call  $3b12
377a: d5 23 07  mov   $0723+x,a
377d: 3f fd 3f  call  $3ffd
3780: e8 03     mov   a,#$03
3782: 5f 07 3b  jmp   $3b07

; vcmd f2 - panpot
3785: ce        pop   x
3786: 3f 12 3b  call  $3b12
3789: d5 33 07  mov   $0733+x,a
378c: e8 03     mov   a,#$03
378e: 5f 07 3b  jmp   $3b07

; vcmd f3 - rest
3791: ce        pop   x
3792: 3f 12 3b  call  $3b12
3795: e8 02     mov   a,#$02
3797: 5f 07 3b  jmp   $3b07

; vcmd f4 - tempo
379a: ce        pop   x
379b: 3f 12 3b  call  $3b12             ; arg1: timer 0 frequency
379e: 8f 00 f1  mov   $f1,#$00
37a1: c4 fa     mov   $fa,a             ; update timer frequency
37a3: 8f 7d fb  mov   $fb,#$7d
37a6: 8f 03 f1  mov   $f1,#$03
37a9: e8 03     mov   a,#$03
37ab: 5f 07 3b  jmp   $3b07

; vcmd f6 - pitch slide
37ae: ce        pop   x
37af: 3f 12 3b  call  $3b12
37b2: d5 c3 07  mov   $07c3+x,a
37b5: e8 03     mov   a,#$03
37b7: 5f 07 3b  jmp   $3b07

; vcmd f7 - instrument
37ba: ce        pop   x
37bb: 3f 12 3b  call  $3b12             ; read arg1: instrument #
37be: d5 13 07  mov   $0713+x,a
37c1: f4 3d     mov   a,$3d+x
37c3: 28 02     and   a,#$02
37c5: d0 06     bne   $37cd
37c7: f5 13 07  mov   a,$0713+x
37ca: 3f 0f 42  call  $420f             ; set sample
37cd: e8 03     mov   a,#$03
37cf: 5f 07 3b  jmp   $3b07

; vcmd fb - loop start
37d2: ce        pop   x
37d3: 4d        push  x
37d4: 7d        mov   a,x
37d5: fd        mov   y,a
37d6: f5 73 06  mov   a,$0673+x
37d9: f0 0a     beq   $37e5             ; branch if section ptr hasn't saved yet
37db: f5 83 06  mov   a,$0683+x
37de: d0 2d     bne   $380d
37e0: 7d        mov   a,x
37e1: 60        clrc
37e2: 88 10     adc   a,#$10
37e4: 5d        mov   x,a
;
37e5: f6 03 06  mov   a,$0603+y         ; section ptr (lo-byte)
37e8: d5 53 06  mov   $0653+x,a
37eb: f6 13 06  mov   a,$0613+y         ; section ptr (hi-byte)
37ee: d5 73 06  mov   $0673+x,a         ; save section ptr for repeating
37f1: f6 33 06  mov   a,$0633+y         ; voice ptr (lo-byte)
37f4: 60        clrc
37f5: 88 01     adc   a,#$01            ; add length of this vcmd
37f7: d5 93 06  mov   $0693+x,a
37fa: f6 43 06  mov   a,$0643+y         ; voice ptr (hi-byte)
37fd: 88 00     adc   a,#$00
37ff: d5 b3 06  mov   $06b3+x,a         ; save loop address to $0643+x/$06b3+x
3802: e8 fe     mov   a,#$fe
3804: d5 d3 06  mov   $06d3+x,a         ; invalidate repeat count
3807: f6 23 06  mov   a,$0623+y
380a: d5 f3 06  mov   $06f3+x,a         ; save global transpose
380d: ce        pop   x
380e: e8 01     mov   a,#$01
3810: 5f 07 3b  jmp   $3b07

; vcmd fc - loop end
3813: ce        pop   x
3814: 4d        push  x
3815: f7 18     mov   a,($18)+y         ; read arg1: repeat count
3817: 9c        dec   a
3818: f0 4b     beq   $3865             ; go through if arg == 1
381a: c4 10     mov   $10,a
381c: 7d        mov   a,x
381d: fd        mov   y,a
381e: f5 83 06  mov   a,$0683+x
3821: f0 05     beq   $3828
3823: 7d        mov   a,x
3824: 60        clrc
3825: 88 10     adc   a,#$10
3827: 5d        mov   x,a
;
3828: f5 d3 06  mov   a,$06d3+x
382b: 68 ff     cmp   a,#$ff
382d: f0 14     beq   $3843             ; infinite loop
382f: 68 fe     cmp   a,#$fe
3831: f0 0b     beq   $383e             ; branch if first time
3833: 9c        dec   a
3834: d5 d3 06  mov   $06d3+x,a         ; decrease repeat count
3837: d0 0a     bne   $3843             ; repeat again until counter != 0
3839: d5 73 06  mov   $0673+x,a
383c: 2f 27     bra   $3865             ; otherwise, go through
; first time - set new repeat count
383e: e4 10     mov   a,$10
3840: d5 d3 06  mov   $06d3+x,a         ; save repeat count ($ff for infinite loop)
; back to loop point
3843: f5 53 06  mov   a,$0653+x
3846: d6 03 06  mov   $0603+y,a
3849: f5 73 06  mov   a,$0673+x
384c: d6 13 06  mov   $0613+y,a         ; restore section ptr
384f: f5 93 06  mov   a,$0693+x
3852: d6 33 06  mov   $0633+y,a
3855: f5 b3 06  mov   a,$06b3+x
3858: d6 43 06  mov   $0643+y,a         ; restore voice ptr
385b: f5 f3 06  mov   a,$06f3+x
385e: d6 23 06  mov   $0623+y,a         ; restore global transpose
3861: ce        pop   x
3862: 5f 91 36  jmp   $3691

3865: ce        pop   x
3866: e8 02     mov   a,#$02
3868: 5f 07 3b  jmp   $3b07

386b: 6f        ret

; vcmd fd - section end
386c: ce        pop   x
386d: e8 00     mov   a,#$00
386f: d5 23 06  mov   $0623+x,a         ; zero global transpose
3872: bb 8d     inc   $8d+x
3874: f5 03 06  mov   a,$0603+x         ; section pointer
3877: 60        clrc
3878: 88 02     adc   a,#$02
387a: c4 10     mov   $10,a
387c: d5 03 06  mov   $0603+x,a
387f: f5 13 06  mov   a,$0613+x
3882: 88 00     adc   a,#$00
3884: c4 11     mov   $11,a
3886: d5 13 06  mov   $0613+x,a         ; skip 2 bytes (current section offset)
3889: 8d 00     mov   y,#$00
388b: f7 10     mov   a,($10)+y         ; fetch next byte
388d: 68 ff     cmp   a,#$ff
388f: d0 26     bne   $38b7
; section cmd ff - song end
3891: f4 3d     mov   a,$3d+x
3893: 28 fe     and   a,#$fe
3895: d4 3d     mov   $3d+x,a
3897: 8d 07     mov   y,#$07
3899: e8 00     mov   a,#$00
389b: 16 3d 00  or    a,$003d+y
389e: dc        dec   y
389f: 10 fa     bpl   $389b
38a1: 28 01     and   a,#$01
38a3: d0 06     bne   $38ab
38a5: e4 9b     mov   a,$9b
38a7: 28 fe     and   a,#$fe
38a9: c4 9b     mov   $9b,a
38ab: f4 3d     mov   a,$3d+x
38ad: 28 02     and   a,#$02
38af: d4 3d     mov   $3d+x,a
38b1: d0 03     bne   $38b6
38b3: 3f 8f 3b  call  $3b8f
38b6: 6f        ret
; load new section
38b7: 3f 28 3b  call  $3b28             ; load section $10/1
38ba: 5f 91 36  jmp   $3691

; vcmd fe - channel end
38bd: ce        pop   x
38be: e8 00     mov   a,#$00
38c0: d4 3d     mov   $3d+x,a           ; halt
38c2: d5 83 08  mov   $0883+x,a
38c5: e8 80     mov   a,#$80
38c7: d5 c3 07  mov   $07c3+x,a
38ca: e8 20     mov   a,#$20
38cc: d5 13 08  mov   $0813+x,a
38cf: e8 10     mov   a,#$10
38d1: d5 63 08  mov   $0863+x,a
38d4: 3f 8f 3b  call  $3b8f
38d7: 6f        ret

; vcmd ff - sub-command
38d8: f7 18     mov   a,($18)+y
38da: fc        inc   y
38db: 1c        asl   a
38dc: 5d        mov   x,a
38dd: 1f c8 3b  jmp   ($3bc8+x)

; subcmd 00 - echo delay
38e0: ce        pop   x
38e1: f7 18     mov   a,($18)+y
38e3: c5 c9 08  mov   $08c9,a
38e6: e8 03     mov   a,#$03
38e8: 5f 07 3b  jmp   $3b07

; subcmd 01 - echo feedback
38eb: ce        pop   x
38ec: f7 18     mov   a,($18)+y
38ee: c5 c8 08  mov   $08c8,a
38f1: 8f 0d f2  mov   $f2,#$0d
38f4: c4 f3     mov   $f3,a             ; set EFB
38f6: e8 03     mov   a,#$03
38f8: 5f 07 3b  jmp   $3b07

; subcmd 02 - echo filter
38fb: ce        pop   x
38fc: f7 18     mov   a,($18)+y
38fe: c5 c7 08  mov   $08c7,a
3901: 4d        push  x
3902: 3f c2 3f  call  $3fc2
3905: ce        pop   x
3906: e8 03     mov   a,#$03
3908: 5f 07 3b  jmp   $3b07

; subcmd 03 - echo on
390b: ce        pop   x
390c: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
390f: c8 08     cmp   x,#$08
3911: 90 06     bcc   $3919
3913: 04 a4     or    a,$a4
3915: c4 a4     mov   $a4,a
3917: 2f 04     bra   $391d
3919: 04 a3     or    a,$a3
391b: c4 a3     mov   $a3,a
391d: 3f 9c 3f  call  $3f9c
3920: e8 03     mov   a,#$03
3922: 5f 07 3b  jmp   $3b07

; subcmd 04 - echo off
3925: ce        pop   x
3926: f5 52 43  mov   a,$4352+x         ; get NAND bitmask for channel X
3929: c8 08     cmp   x,#$08
392b: 90 06     bcc   $3933
392d: 24 a4     and   a,$a4
392f: c4 a4     mov   $a4,a
3931: 2f 04     bra   $3937
3933: 24 a3     and   a,$a3
3935: c4 a3     mov   $a3,a
3937: 3f 9c 3f  call  $3f9c
393a: e8 03     mov   a,#$03
393c: 5f 07 3b  jmp   $3b07

; subcmd 05 - nop1
393f: ce        pop   x
3940: e8 03     mov   a,#$03
3942: 5f 07 3b  jmp   $3b07

; subcmd 06 - nop1
3945: ce        pop   x
3946: e8 03     mov   a,#$03
3948: 5f 07 3b  jmp   $3b07

; subcmd 07 - nop1
394b: ce        pop   x
394c: e8 03     mov   a,#$03
394e: 5f 07 3b  jmp   $3b07

; subcmd 08 - attack rate
3951: ce        pop   x
3952: 3f c2 39  call  $39c2             ; set $f2 to ADSR(1), arg1 to $12
3955: 38 0f 12  and   $12,#$0f
3958: e4 f3     mov   a,$f3             ; get ADSR(1)
395a: 28 f0     and   a,#$f0
395c: 04 12     or    a,$12
395e: c4 f3     mov   $f3,a             ; set ADSR(1)
3960: e8 03     mov   a,#$03
3962: 5f 07 3b  jmp   $3b07

; subcmd 09 - decay rate
3965: ce        pop   x
3966: 3f c2 39  call  $39c2             ; set $f2 to ADSR(1), arg1 to $12
3969: e4 12     mov   a,$12
396b: 9f        xcn   a
396c: 28 70     and   a,#$70
396e: c4 12     mov   $12,a
3970: e4 f3     mov   a,$f3             ; get ADSR(1)
3972: 28 0f     and   a,#$0f
3974: 04 12     or    a,$12
3976: 08 80     or    a,#$80
3978: c4 f3     mov   $f3,a             ; set ADSR(1)
397a: e8 03     mov   a,#$03
397c: 5f 07 3b  jmp   $3b07

; subcmd 0a - sustain level
397f: ce        pop   x
3980: 3f c2 39  call  $39c2             ; set arg1 to $12
3983: ab f2     inc   $f2               ; set $f2 to ADSR(2)
3985: e4 12     mov   a,$12
3987: 9f        xcn   a
3988: 1c        asl   a
3989: 28 e0     and   a,#$e0
398b: c4 12     mov   $12,a
398d: e4 f3     mov   a,$f3             ; get ADSR(2)
398f: 28 1f     and   a,#$1f
3991: 04 12     or    a,$12
3993: c4 f3     mov   $f3,a             ; set ADSR(2)
3995: e8 03     mov   a,#$03
3997: 5f 07 3b  jmp   $3b07

; subcmd 0b - sustain rate
399a: ce        pop   x
399b: 3f c2 39  call  $39c2             ; set arg1 to $12
399e: ab f2     inc   $f2               ; set $f2 to ADSR(2)
39a0: e4 12     mov   a,$12
39a2: 28 1f     and   a,#$1f
39a4: c4 12     mov   $12,a
39a6: e4 f3     mov   a,$f3             ; get ADSR(2)
39a8: 28 e0     and   a,#$e0
39aa: 04 12     or    a,$12
39ac: c4 f3     mov   $f3,a             ; set ADSR(2)
39ae: e8 03     mov   a,#$03
39b0: 5f 07 3b  jmp   $3b07

; subcmd 0c
39b3: ce        pop   x
39b4: f7 18     mov   a,($18)+y
39b6: 28 1f     and   a,#$1f
39b8: 08 80     or    a,#$80
39ba: d5 d3 07  mov   $07d3+x,a
39bd: e8 03     mov   a,#$03
39bf: 5f 07 3b  jmp   $3b07

; set $f2 to ADSR(1)
39c2: f7 18     mov   a,($18)+y         ; read arg
39c4: c4 12     mov   $12,a             ; save it
39c6: 7d        mov   a,x
39c7: 68 08     cmp   a,#$08
39c9: 90 03     bcc   $39ce
39cb: 80        setc
39cc: a8 08     sbc   a,#$08
39ce: 9f        xcn   a
39cf: 60        clrc
39d0: 88 05     adc   a,#$05
39d2: c4 f2     mov   $f2,a             ; set $f2 to ADSR(1)
39d4: 6f        ret

; subcmd 0d - echo volume left/right
39d5: ce        pop   x
39d6: f7 18     mov   a,($18)+y
39d8: 3f 0a 3a  call  $3a0a
39db: c5 c6 08  mov   $08c6,a
39de: c5 c5 08  mov   $08c5,a
39e1: e8 03     mov   a,#$03
39e3: 5f 07 3b  jmp   $3b07

; subcmd 0e - echo volume right
39e6: ce        pop   x
39e7: f7 18     mov   a,($18)+y
39e9: ec c3 08  mov   y,$08c3           ; master volume
39ec: cf        mul   ya
39ed: 1c        asl   a
39ee: dd        mov   a,y
39ef: 3c        rol   a
39f0: c5 c5 08  mov   $08c5,a
39f3: e8 03     mov   a,#$03
39f5: 5f 07 3b  jmp   $3b07

; subcmd 0f - echo volume left
39f8: ce        pop   x
39f9: f7 18     mov   a,($18)+y
39fb: ec c3 08  mov   y,$08c3           ; master volume
39fe: cf        mul   ya
39ff: 1c        asl   a
3a00: dd        mov   a,y
3a01: 3c        rol   a
3a02: c5 c6 08  mov   $08c6,a
3a05: e8 03     mov   a,#$03
3a07: 5f 07 3b  jmp   $3b07

3a0a: ec c3 08  mov   y,$08c3           ; master volume
3a0d: cf        mul   ya
3a0e: 1c        asl   a
3a0f: dd        mov   a,y
3a10: 3c        rol   a
3a11: c5 c5 08  mov   $08c5,a           ; echo volume left
3a14: c5 c6 08  mov   $08c6,a           ; echo volume right
3a17: 6f        ret

; subcmd 10 - noise frequency
3a18: ce        pop   x
3a19: f7 18     mov   a,($18)+y         ; arg1: noise frequency
3a1b: 28 1f     and   a,#$1f
3a1d: c4 10     mov   $10,a
3a1f: e5 ce 08  mov   a,$08ce
3a22: 28 e0     and   a,#$e0
3a24: 04 10     or    a,$10
3a26: c5 ce 08  mov   $08ce,a
3a29: 8f 6c f2  mov   $f2,#$6c
3a2c: c4 f3     mov   $f3,a             ; set FLG
3a2e: e8 03     mov   a,#$03
3a30: 5f 07 3b  jmp   $3b07

; subcmd 11 - noise on
3a33: ce        pop   x
3a34: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3a37: c8 08     cmp   x,#$08
3a39: 90 06     bcc   $3a41
3a3b: 04 a2     or    a,$a2
3a3d: c4 a2     mov   $a2,a
3a3f: 2f 04     bra   $3a45
3a41: 04 a1     or    a,$a1
3a43: c4 a1     mov   $a1,a
3a45: 3f a8 3f  call  $3fa8
3a48: e8 03     mov   a,#$03
3a4a: 5f 07 3b  jmp   $3b07

; subcmd 12 - noise off
3a4d: ce        pop   x
3a4e: f5 52 43  mov   a,$4352+x         ; get NAND bitmask for channel X
3a51: c8 08     cmp   x,#$08
3a53: 90 06     bcc   $3a5b
3a55: 24 a2     and   a,$a2
3a57: c4 a2     mov   $a2,a
3a59: 2f 04     bra   $3a5f
3a5b: 24 a1     and   a,$a1
3a5d: c4 a1     mov   $a1,a
3a5f: 3f a8 3f  call  $3fa8
3a62: e8 03     mov   a,#$03
3a64: 5f 07 3b  jmp   $3b07

; subcmd 13 - pitchmod on
3a67: ce        pop   x
3a68: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3a6b: c8 08     cmp   x,#$08
3a6d: 90 06     bcc   $3a75
3a6f: 04 a6     or    a,$a6
3a71: c4 a6     mov   $a6,a
3a73: 2f 04     bra   $3a79
3a75: 04 a5     or    a,$a5
3a77: c4 a5     mov   $a5,a
3a79: 3f 90 3f  call  $3f90
3a7c: e8 03     mov   a,#$03
3a7e: 5f 07 3b  jmp   $3b07

; subcmd 14 - pitchmod off
3a81: ce        pop   x
3a82: f5 52 43  mov   a,$4352+x         ; get NAND bitmask for channel X
3a85: c8 08     cmp   x,#$08
3a87: 90 06     bcc   $3a8f
3a89: 24 a6     and   a,$a6
3a8b: c4 a6     mov   $a6,a
3a8d: 2f 04     bra   $3a93
3a8f: 24 a5     and   a,$a5
3a91: c4 a5     mov   $a5,a
3a93: 3f 90 3f  call  $3f90
3a96: e8 03     mov   a,#$03
3a98: 5f 07 3b  jmp   $3b07

; subcmd 15
3a9b: ce        pop   x
3a9c: f7 18     mov   a,($18)+y
3a9e: d5 63 08  mov   $0863+x,a
3aa1: e8 03     mov   a,#$03
3aa3: 5f 07 3b  jmp   $3b07

; subcmd 16
3aa6: ce        pop   x
3aa7: f7 18     mov   a,($18)+y
3aa9: d5 13 08  mov   $0813+x,a
3aac: e8 03     mov   a,#$03
3aae: 5f 07 3b  jmp   $3b07

; subcmd 17
3ab1: ce        pop   x
3ab2: f7 18     mov   a,($18)+y
3ab4: d5 43 08  mov   $0843+x,a
3ab7: e8 03     mov   a,#$03
3ab9: 5f 07 3b  jmp   $3b07

; subcmd 18
3abc: ce        pop   x
3abd: f7 18     mov   a,($18)+y
3abf: d5 f3 07  mov   $07f3+x,a
3ac2: e8 03     mov   a,#$03
3ac4: 5f 07 3b  jmp   $3b07

; subcmd 19
3ac7: ce        pop   x
3ac8: f4 3d     mov   a,$3d+x
3aca: 08 20     or    a,#$20
3acc: d4 3d     mov   $3d+x,a
3ace: e8 03     mov   a,#$03
3ad0: 5f 07 3b  jmp   $3b07

; subcmd 1a
3ad3: ce        pop   x
3ad4: f4 3d     mov   a,$3d+x
3ad6: 08 40     or    a,#$40
3ad8: d4 3d     mov   $3d+x,a
3ada: e8 03     mov   a,#$03
3adc: 5f 07 3b  jmp   $3b07

; subcmd 1b
3adf: ce        pop   x
3ae0: f5 3d 00  mov   a,$003d+x
3ae3: 28 9f     and   a,#$9f
3ae5: d5 3d 00  mov   $003d+x,a
3ae8: e8 03     mov   a,#$03
3aea: 5f 07 3b  jmp   $3b07

; subcmd 1c - echo reverse left
3aed: ce        pop   x
3aee: 82 98     set4  $98
3af0: e8 03     mov   a,#$03
3af2: 5f 07 3b  jmp   $3b07

; subcmd 1d - echo reverse right
3af5: ce        pop   x
3af6: 62 98     set3  $98
3af8: e8 03     mov   a,#$03
3afa: 5f 07 3b  jmp   $3b07

; subcmd 1e - echo reverse off
3afd: ce        pop   x
3afe: 72 98     clr3  $98
3b00: 92 98     clr4  $98
3b02: e8 03     mov   a,#$03
3b04: 5f 07 3b  jmp   $3b07

; add $18/19 to voice pointer
; process next channel if wait counter != 0
3b07: 3f 1a 3b  call  $3b1a             ; voice pointer += A bytes
3b0a: f4 1d     mov   a,$1d+x           ; wait counter
3b0c: f0 01     beq   $3b0f             ; do next vcmd if no wait requested
3b0e: 6f        ret

3b0f: 5f 91 36  jmp   $3691

; read voice byte, increase index Y
3b12: f7 18     mov   a,($18)+y
3b14: d4 1d     mov   $1d+x,a
3b16: fc        inc   y
3b17: f7 18     mov   a,($18)+y
3b19: 6f        ret

; add $18/19 to voice pointer
; and write it back to $0633/43+x
3b1a: 60        clrc
3b1b: 84 18     adc   a,$18
3b1d: d5 33 06  mov   $0633+x,a
3b20: e4 19     mov   a,$19
3b22: 88 00     adc   a,#$00
3b24: d5 43 06  mov   $0643+x,a
3b27: 6f        ret

; load section $10/1
3b28: 6d        push  y
3b29: 8d 00     mov   y,#$00
3b2b: f7 10     mov   a,($10)+y
3b2d: 10 1c     bpl   $3b4b
; section cmd: 80-ff(fe) - global transpose
3b2f: 28 7f     and   a,#$7f
3b31: d5 23 06  mov   $0623+x,a         ; update global transpose
; increase section pointer
3b34: f5 03 06  mov   a,$0603+x
3b37: 60        clrc
3b38: 88 01     adc   a,#$01
3b3a: d5 03 06  mov   $0603+x,a
3b3d: c4 10     mov   $10,a
3b3f: f5 13 06  mov   a,$0613+x
3b42: 88 00     adc   a,#$00
3b44: d5 13 06  mov   $0613+x,a
3b47: c4 11     mov   $11,a
3b49: 2f de     bra   $3b29             ; continue
; section cmd: 00-7f - section
; note: section offset is relative from $4400, and it is big-endian value.
3b4b: 60        clrc
3b4c: 88 44     adc   a,#$44
3b4e: d5 43 06  mov   $0643+x,a         ; set voice pointer (hi-byte)
3b51: fc        inc   y
3b52: f7 10     mov   a,($10)+y
3b54: d5 33 06  mov   $0633+x,a         ; set voice pointer (lo-byte)
3b57: ee        pop   y
3b58: 6f        ret

; save note param
3b59: 2d        push  a
3b5a: f5 43 07  mov   a,$0743+x
3b5d: d5 83 07  mov   $0783+x,a         ; save note number
3b60: f5 53 07  mov   a,$0753+x
3b63: d5 93 07  mov   $0793+x,a         ; save delta-time
3b66: f5 63 07  mov   a,$0763+x
3b69: d5 a3 07  mov   $07a3+x,a         ; save duration
3b6c: f5 73 07  mov   a,$0773+x
3b6f: d5 b3 07  mov   $07b3+x,a         ; save note volume
3b72: ae        pop   a
3b73: 6f        ret

3b74: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3b77: 04 95     or    a,$95
3b79: c8 08     cmp   x,#$08
3b7b: b0 02     bcs   $3b7f
3b7d: 24 9a     and   a,$9a
3b7f: c4 95     mov   $95,a
3b81: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3b84: 04 a0     or    a,$a0
3b86: c8 08     cmp   x,#$08
3b88: b0 02     bcs   $3b8c
3b8a: 24 9a     and   a,$9a
3b8c: c4 a0     mov   $a0,a
3b8e: 6f        ret

; keyoff voice X
3b8f: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3b92: 04 96     or    a,$96             ; set KOF shadow
3b94: c4 96     mov   $96,a
3b96: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3b99: 48 ff     eor   a,#$ff
3b9b: 24 a0     and   a,$a0
3b9d: c4 a0     mov   $a0,a
3b9f: 6f        ret

; vcmd dispatch table
3ba0: dw $375d  ; f0 - modulation
3ba2: dw $3776  ; f1 - volume
3ba4: dw $3785  ; f2 - panpot
3ba6: dw $3791  ; f3 - rest
3ba8: dw $379a  ; f4 - tempo
3baa: dw $3bc0  ; f5 - nop
3bac: dw $37ae  ; f6 - pitch slide
3bae: dw $37ba  ; f7 - instrument
3bb0: dw $3bc0  ; f8 - nop
3bb2: dw $3bc0  ; f9 - nop
3bb4: dw $3bc0  ; fa - nop
3bb6: dw $37d2  ; fb - loop start
3bb8: dw $3813  ; fc - loop end
3bba: dw $386c  ; fd - section end
3bbc: dw $38bd  ; fe - channel end
3bbe: dw $38d8  ; ff - sub-command

; vcmd f5,f8-fa - nop
3bc0: e8 01     mov   a,#$01
3bc2: 3f 1a 3b  call  $3b1a
3bc5: 5f 91 36  jmp   $3691

; voice subcmd dispatch table
3bc8: dw $38e0  ; 00 - echo delay
3bca: dw $38eb  ; 01 - echo feedback
3bcc: dw $38fb  ; 02 - echo filter
3bce: dw $390b  ; 03 - echo on
3bd0: dw $3925  ; 04 - echo off
3bd2: dw $393f  ; 05 - nop1
3bd4: dw $3945  ; 06 - nop1
3bd6: dw $394b  ; 07 - nop1
3bd8: dw $3951  ; 08 - attack rate
3bda: dw $3965  ; 09 - decay rate
3bdc: dw $397f  ; 0a - sustain level
3bde: dw $399a  ; 0b - sustain rate
3be0: dw $39b3  ; 0c
3be2: dw $39d5  ; 0d - echo volume left/right
3be4: dw $39e6  ; 0e - echo volume right
3be6: dw $39f8  ; 0f - echo volume left
3be8: dw $3a18  ; 10 - noise frequency
3bea: dw $3a33  ; 11 - noise on
3bec: dw $3a4d  ; 12 - noise off
3bee: dw $3a67  ; 13 - pitchmod on
3bf0: dw $3a81  ; 14 - pitchmod off
3bf2: dw $3a9b  ; 15
3bf4: dw $3aa6  ; 16
3bf6: dw $3ab1  ; 17
3bf8: dw $3abc  ; 18
3bfa: dw $3ac7  ; 19
3bfc: dw $3ad3  ; 1a
3bfe: dw $3adf  ; 1b
3c00: dw $3aed  ; 1c - echo reverse left
3c02: dw $3af5  ; 1d - echo reverse right
3c04: dw $3afd  ; 1e - echo reverse off
3c08: dw $3c08  ; 1f - nop1

; subcmd 1f - nop1
3c08: e8 03     mov   a,#$03
3c0a: 3f 1a 3b  call  $3b1a
3c0d: 5f 91 36  jmp   $3691

3c10: db $24,$26,$2a,$2e,$30,$2d,$29,$31,$28
3c19: db $00

3c1a: db $00,$00,$00,$00,$00,$74,$ae,$00,$00

3c23: db $0e,$10,$10,$10,$0e,$0b,$07,$0d,$08
3c2c: db $40,$40,$30,$30,$36,$40,$48,$50,$40

3c35: db $00,$01,$03,$04,$05,$05,$05,$06,$02

3c3e: 3f 54 3c  call  $3c54
3c41: 3f c4 3d  call  $3dc4
3c44: 3f 61 3c  call  $3c61
3c47: 3f 93 3c  call  $3c93
3c4a: 3f ef 40  call  $40ef
3c4d: 3f 18 40  call  $4018
3c50: 3f 08 3f  call  $3f08
3c53: 6f        ret

3c54: e4 b9     mov   a,$b9
3c56: f0 08     beq   $3c60
3c58: 9c        dec   a
3c59: c4 b9     mov   $b9,a
3c5b: d0 03     bne   $3c60
3c5d: 3f 9c 3f  call  $3f9c
3c60: 6f        ret

3c61: 53 9b 18  bbc2  $9b,$3c7c
3c64: e5 ca 08  mov   a,$08ca
3c67: 80        setc
3c68: a5 cb 08  sbc   a,$08cb
3c6b: c5 ca 08  mov   $08ca,a
3c6e: b0 22     bcs   $3c92
3c70: e8 00     mov   a,#$00
3c72: c5 ca 08  mov   $08ca,a
3c75: 52 9b     clr2  $9b
3c77: 3f 45 36  call  $3645
3c7a: 2f 16     bra   $3c92
3c7c: 73 9b 13  bbc3  $9b,$3c92
3c7f: e5 ca 08  mov   a,$08ca
3c82: 60        clrc
3c83: 85 cb 08  adc   a,$08cb
3c86: c5 ca 08  mov   $08ca,a
3c89: 90 07     bcc   $3c92
3c8b: e8 ff     mov   a,#$ff
3c8d: c5 ca 08  mov   $08ca,a
3c90: 72 9b     clr3  $9b
3c92: 6f        ret

3c93: cd 0f     mov   x,#$0f
3c95: f5 83 08  mov   a,$0883+x
3c98: d0 03     bne   $3c9d
3c9a: 5f 00 3d  jmp   $3d00

3c9d: f5 03 08  mov   a,$0803+x
3ca0: 60        clrc
3ca1: 95 f3 07  adc   a,$07f3+x
3ca4: fd        mov   y,a
3ca5: 28 01     and   a,#$01
3ca7: d5 03 08  mov   $0803+x,a
3caa: dd        mov   a,y
3cab: 5c        lsr   a
3cac: 60        clrc
3cad: 95 e3 07  adc   a,$07e3+x
3cb0: d5 e3 07  mov   $07e3+x,a
3cb3: 28 7f     and   a,#$7f
3cb5: fd        mov   y,a
3cb6: f6 7a 43  mov   a,$437a+y
3cb9: fd        mov   y,a
3cba: f5 13 08  mov   a,$0813+x
3cbd: cf        mul   ya
3cbe: f5 e3 07  mov   a,$07e3+x
3cc1: 30 03     bmi   $3cc6
3cc3: dd        mov   a,y
3cc4: 2f 03     bra   $3cc9
3cc6: dd        mov   a,y
3cc7: 08 80     or    a,#$80
3cc9: d5 23 08  mov   $0823+x,a
3ccc: f5 63 08  mov   a,$0863+x
3ccf: f0 2f     beq   $3d00
3cd1: f5 53 08  mov   a,$0853+x
3cd4: 60        clrc
3cd5: 95 43 08  adc   a,$0843+x
3cd8: fd        mov   y,a
3cd9: 28 01     and   a,#$01
3cdb: d5 53 08  mov   $0853+x,a
3cde: dd        mov   a,y
3cdf: 5c        lsr   a
3ce0: 60        clrc
3ce1: 95 33 08  adc   a,$0833+x
3ce4: d5 33 08  mov   $0833+x,a
3ce7: 28 7f     and   a,#$7f
3ce9: fd        mov   y,a
3cea: f6 7a 43  mov   a,$437a+y
3ced: fd        mov   y,a
3cee: f5 63 08  mov   a,$0863+x
3cf1: cf        mul   ya
3cf2: f5 33 08  mov   a,$0833+x
3cf5: 30 03     bmi   $3cfa
3cf7: dd        mov   a,y
3cf8: 2f 03     bra   $3cfd
3cfa: dd        mov   a,y
3cfb: 08 80     or    a,#$80
3cfd: d5 73 08  mov   $0873+x,a
3d00: 1d        dec   x
3d01: 10 92     bpl   $3c95
3d03: 6f        ret

3d04: e4 f4     mov   a,$f4
3d06: 2d        push  a
3d07: 3f ee 05  call  $05ee
3d0a: 8f d2 10  mov   $10,#$d2
3d0d: 8f 09 11  mov   $11,#$09
3d10: ae        pop   a
3d11: 1c        asl   a
3d12: 90 02     bcc   $3d16
3d14: ab 11     inc   $11
3d16: fd        mov   y,a
3d17: f7 10     mov   a,($10)+y
3d19: 60        clrc
3d1a: 88 d2     adc   a,#$d2
3d1c: c4 18     mov   $18,a
3d1e: fc        inc   y
3d1f: f7 10     mov   a,($10)+y
3d21: 88 09     adc   a,#$09
3d23: c4 19     mov   $19,a
3d25: 8f 00 14  mov   $14,#$00
3d28: cd 00     mov   x,#$00
3d2a: e4 14     mov   a,$14
3d2c: 75 ae 00  cmp   a,$00ae+x
3d2f: f0 07     beq   $3d38
3d31: 3d        inc   x
3d32: c8 08     cmp   x,#$08
3d34: d0 f6     bne   $3d2c
3d36: 2f 09     bra   $3d41
3d38: e4 14     mov   a,$14
3d3a: bc        inc   a
3d3b: c4 14     mov   $14,a
3d3d: 68 10     cmp   a,#$10
3d3f: d0 e7     bne   $3d28
3d41: e4 14     mov   a,$14
3d43: c5 d1 08  mov   $08d1,a
3d46: 8d 00     mov   y,#$00
3d48: f7 18     mov   a,($18)+y
3d4a: fc        inc   y
3d4b: c4 15     mov   $15,a
3d4d: bc        inc   a
3d4e: c4 14     mov   $14,a
3d50: 6d        push  y
3d51: 3f 78 3e  call  $3e78
3d54: ee        pop   y
3d55: f7 18     mov   a,($18)+y
3d57: 5d        mov   x,a
3d58: e8 01     mov   a,#$01
3d5a: d4 45     mov   $45+x,a
3d5c: e8 02     mov   a,#$02
3d5e: 14 3d     or    a,$3d+x
3d60: d4 3d     mov   $3d+x,a
3d62: 28 01     and   a,#$01
3d64: f0 03     beq   $3d69
3d66: 3f 8f 3b  call  $3b8f
3d69: e5 d1 08  mov   a,$08d1
3d6c: d5 ae 00  mov   $00ae+x,a
3d6f: 6d        push  y
3d70: eb 14     mov   y,$14
3d72: f7 18     mov   a,($18)+y
3d74: 60        clrc
3d75: 84 18     adc   a,$18
3d77: d5 3b 06  mov   $063b+x,a
3d7a: fc        inc   y
3d7b: f7 18     mov   a,($18)+y
3d7d: 84 19     adc   a,$19
3d7f: d5 4b 06  mov   $064b+x,a
3d82: fc        inc   y
3d83: cb 14     mov   $14,y
3d85: ee        pop   y
3d86: e4 a7     mov   a,$a7
3d88: 48 ff     eor   a,#$ff
3d8a: 15 4a 43  or    a,$434a+x
3d8d: 48 ff     eor   a,#$ff
3d8f: c4 a7     mov   $a7,a
3d91: f5 5a 43  mov   a,$435a+x
3d94: 24 a4     and   a,$a4
3d96: c4 a4     mov   $a4,a
3d98: 4d        push  x
3d99: 7d        mov   a,x
3d9a: 60        clrc
3d9b: 88 08     adc   a,#$08
3d9d: 5d        mov   x,a
3d9e: 3f 30 3f  call  $3f30
3da1: e8 01     mov   a,#$01
3da3: d4 1d     mov   $1d+x,a
3da5: e8 00     mov   a,#$00
3da7: d4 2d     mov   $2d+x,a
3da9: ce        pop   x
3daa: fc        inc   y
3dab: 8b 15     dec   $15
3dad: f0 03     beq   $3db2
3daf: 5f 55 3d  jmp   $3d55

3db2: 3f 9c 3f  call  $3f9c
3db5: 3f a8 3f  call  $3fa8
3db8: 3f 90 3f  call  $3f90
3dbb: e8 02     mov   a,#$02
3dbd: 04 9b     or    a,$9b
3dbf: c4 9b     mov   $9b,a
3dc1: 5f 88 03  jmp   $0388

3dc4: e4 9b     mov   a,$9b
3dc6: 28 02     and   a,#$02
3dc8: d0 03     bne   $3dcd
3dca: 5f 2b 3e  jmp   $3e2b

3dcd: fa a7 b8  mov   ($b8),($a7)
3dd0: cd 08     mov   x,#$08
3dd2: f4 3d     mov   a,$3d+x
3dd4: f0 45     beq   $3e1b
3dd6: f4 2d     mov   a,$2d+x
3dd8: f0 07     beq   $3de1
3dda: 9b 2d     dec   $2d+x             ; decrease keyoff counter
3ddc: d0 03     bne   $3de1
3dde: 3f 8f 3b  call  $3b8f
3de1: 9b 1d     dec   $1d+x
3de3: d0 36     bne   $3e1b
3de5: 3f 91 36  call  $3691
3de8: f4 3d     mov   a,$3d+x
3dea: 28 01     and   a,#$01
3dec: d0 2d     bne   $3e1b
3dee: 3f be 3e  call  $3ebe
3df1: f4 a6     mov   a,$a6+x
3df3: c4 10     mov   $10,a
3df5: 08 80     or    a,#$80
3df7: d4 a6     mov   $a6+x,a
3df9: 4d        push  x
3dfa: cd 07     mov   x,#$07
3dfc: f4 ae     mov   a,$ae+x
3dfe: 30 04     bmi   $3e04
3e00: 64 10     cmp   a,$10
3e02: f0 16     beq   $3e1a
3e04: 1d        dec   x
3e05: 10 f5     bpl   $3dfc
3e07: cd 07     mov   x,#$07
3e09: f4 ae     mov   a,$ae+x
3e0b: 10 0a     bpl   $3e17
3e0d: 28 7f     and   a,#$7f
3e0f: 64 10     cmp   a,$10
3e11: d0 04     bne   $3e17
3e13: e8 00     mov   a,#$00
3e15: d4 ae     mov   $ae+x,a
3e17: 1d        dec   x
3e18: 10 ef     bpl   $3e09
3e1a: ce        pop   x
3e1b: 3d        inc   x
3e1c: c8 10     cmp   x,#$10
3e1e: d0 b2     bne   $3dd2
3e20: 69 a7 b8  cmp   ($b8),($a7)
3e23: f0 06     beq   $3e2b
3e25: 3f a8 3f  call  $3fa8
3e28: 3f 90 3f  call  $3f90
3e2b: 6f        ret

3e2c: 3f a8 3f  call  $3fa8
3e2f: 3f 90 3f  call  $3f90
3e32: 6f        ret

3e33: cd 08     mov   x,#$08
3e35: f4 3d     mov   a,$3d+x
3e37: 28 01     and   a,#$01
3e39: f0 06     beq   $3e41
3e3b: 3f be 3e  call  $3ebe
3e3e: 3f 8f 3b  call  $3b8f
3e41: 3d        inc   x
3e42: c8 10     cmp   x,#$10
3e44: d0 ef     bne   $3e35
3e46: 3f 2c 3e  call  $3e2c
3e49: e5 9b 00  mov   a,$009b
3e4c: 28 fd     and   a,#$fd
3e4e: c5 9b 00  mov   $009b,a
3e51: 3f ee 05  call  $05ee
3e54: 5f 88 03  jmp   $0388

3e57: 8f d2 10  mov   $10,#$d2
3e5a: 8f 09 11  mov   $11,#$09
3e5d: e4 f4     mov   a,$f4
3e5f: 1c        asl   a
3e60: fd        mov   y,a
3e61: f7 10     mov   a,($10)+y
3e63: 60        clrc
3e64: 88 d2     adc   a,#$d2
3e66: c4 18     mov   $18,a
3e68: fc        inc   y
3e69: f7 10     mov   a,($10)+y
3e6b: 88 09     adc   a,#$09
3e6d: c4 19     mov   $19,a
3e6f: 3f ee 05  call  $05ee
3e72: 3f 78 3e  call  $3e78
3e75: 5f 88 03  jmp   $0388

3e78: fa a7 b8  mov   ($b8),($a7)
3e7b: 8d 00     mov   y,#$00
3e7d: f7 18     mov   a,($18)+y
3e7f: c4 17     mov   $17,a
3e81: fc        inc   y
3e82: f7 18     mov   a,($18)+y
3e84: fc        inc   y
3e85: 5d        mov   x,a
3e86: f5 ae 00  mov   a,$00ae+x
3e89: f0 23     beq   $3eae
3e8b: c4 16     mov   $16,a
3e8d: cd 08     mov   x,#$08
3e8f: f4 3d     mov   a,$3d+x
3e91: 28 01     and   a,#$01
3e93: f0 14     beq   $3ea9
3e95: f5 a6 00  mov   a,$00a6+x
3e98: 28 7f     and   a,#$7f
3e9a: 64 16     cmp   a,$16
3e9c: d0 0b     bne   $3ea9
3e9e: e8 00     mov   a,#$00
3ea0: d5 a6 00  mov   $00a6+x,a
3ea3: 3f be 3e  call  $3ebe
3ea6: 3f 8f 3b  call  $3b8f
3ea9: 3d        inc   x
3eaa: c8 10     cmp   x,#$10
3eac: d0 e1     bne   $3e8f
3eae: 8b 17     dec   $17
3eb0: d0 d0     bne   $3e82
3eb2: 69 a7 b8  cmp   ($b8),($a7)
3eb5: f0 06     beq   $3ebd
3eb7: 3f 2c 3e  call  $3e2c
3eba: 3f 08 3f  call  $3f08
3ebd: 6f        ret

3ebe: f5 52 43  mov   a,$4352+x         ; get NAND bitmask for channel X
3ec1: c4 10     mov   $10,a
3ec3: 25 a2 00  and   a,$00a2
3ec6: c5 a2 00  mov   $00a2,a
3ec9: e5 a4 00  mov   a,$00a4
3ecc: 24 10     and   a,$10
3ece: c5 a4 00  mov   $00a4,a
3ed1: e5 a6 00  mov   a,$00a6
3ed4: 24 10     and   a,$10
3ed6: c5 a6 00  mov   $00a6,a
3ed9: f5 42 43  mov   a,$4342+x         ; get bitmask for channel X
3edc: c4 10     mov   $10,a
3ede: 04 a7     or    a,$a7
3ee0: c4 a7     mov   $a7,a
3ee2: 68 ff     cmp   a,#$ff
3ee4: d0 08     bne   $3eee
3ee6: e5 9b 00  mov   a,$009b
3ee9: 28 fd     and   a,#$fd
3eeb: c5 9b 00  mov   $009b,a
3eee: f4 35     mov   a,$35+x
3ef0: 28 01     and   a,#$01
3ef2: f0 06     beq   $3efa
3ef4: e4 b7     mov   a,$b7
3ef6: 04 10     or    a,$10
3ef8: c4 b7     mov   $b7,a
3efa: f4 35     mov   a,$35+x
3efc: 28 fd     and   a,#$fd
3efe: d4 35     mov   $35+x,a
3f00: e8 00     mov   a,#$00
3f02: d4 3d     mov   $3d+x,a
3f04: 8f 04 b9  mov   $b9,#$04
3f07: 6f        ret

3f08: e4 96     mov   a,$96
3f0a: f0 09     beq   $3f15
3f0c: 8f 5c f2  mov   $f2,#$5c
3f0f: c4 f3     mov   $f3,a             ; set KOF
3f11: 8d 40     mov   y,#$40
3f13: fe fe     dbnz  y,$3f13
3f15: e4 95     mov   a,$95
3f17: f0 10     beq   $3f29
3f19: 8f 5c f2  mov   $f2,#$5c
3f1c: 8f 00 f3  mov   $f3,#$00          ; set KOF
3f1f: 8d 40     mov   y,#$40
3f21: fe fe     dbnz  y,$3f21
3f23: 8f 4c f2  mov   $f2,#$4c
3f26: fa 95 f3  mov   ($f3),($95)       ; set KON from KON shadow
3f29: e8 00     mov   a,#$00
3f2b: c4 95     mov   $95,a
3f2d: c4 96     mov   $96,a
3f2f: 6f        ret

3f30: e8 00     mov   a,#$00
3f32: d5 23 06  mov   $0623+x,a
3f35: d5 53 07  mov   $0753+x,a
3f38: d5 63 07  mov   $0763+x,a
3f3b: d5 73 07  mov   $0773+x,a
3f3e: d5 93 07  mov   $0793+x,a
3f41: d5 a3 07  mov   $07a3+x,a
3f44: d5 b3 07  mov   $07b3+x,a
3f47: d5 53 08  mov   $0853+x,a
3f4a: d5 03 08  mov   $0803+x,a
3f4d: d5 83 08  mov   $0883+x,a
3f50: d5 73 06  mov   $0673+x,a
3f53: d5 83 06  mov   $0683+x,a
3f56: d5 d3 06  mov   $06d3+x,a
3f59: d5 e3 06  mov   $06e3+x,a
3f5c: d4 2d     mov   $2d+x,a
3f5e: e8 87     mov   a,#$87
3f60: d5 d3 07  mov   $07d3+x,a
3f63: e8 70     mov   a,#$70
3f65: d5 23 07  mov   $0723+x,a
3f68: e8 80     mov   a,#$80
3f6a: d5 c3 07  mov   $07c3+x,a
3f6d: e8 20     mov   a,#$20
3f6f: d5 43 08  mov   $0843+x,a
3f72: e8 20     mov   a,#$20
3f74: d5 f3 07  mov   $07f3+x,a
3f77: e8 00     mov   a,#$00
3f79: d5 23 08  mov   $0823+x,a
3f7c: d5 73 08  mov   $0873+x,a
3f7f: d5 e3 07  mov   $07e3+x,a
3f82: d5 33 08  mov   $0833+x,a
3f85: e8 10     mov   a,#$10
3f87: d5 63 08  mov   $0863+x,a
3f8a: e8 20     mov   a,#$20
3f8c: d5 13 08  mov   $0813+x,a
3f8f: 6f        ret

3f90: e4 a5     mov   a,$a5
3f92: 24 a7     and   a,$a7
3f94: 04 a6     or    a,$a6
3f96: 8f 2d f2  mov   $f2,#$2d
3f99: c4 f3     mov   $f3,a             ; set PMON
3f9b: 6f        ret

3f9c: e4 a3     mov   a,$a3
3f9e: 24 a7     and   a,$a7
3fa0: 04 a4     or    a,$a4
3fa2: 8f 4d f2  mov   $f2,#$4d
3fa5: c4 f3     mov   $f3,a             ; set EON
3fa7: 6f        ret

3fa8: e4 a1     mov   a,$a1
3faa: 24 a7     and   a,$a7
3fac: 04 a2     or    a,$a2
3fae: 8f 3d f2  mov   $f2,#$3d
3fb1: c4 f3     mov   $f3,a             ; set NON
3fb3: 6f        ret

3fb4: e5 c3 08  mov   a,$08c3
3fb7: 8f 1c f2  mov   $f2,#$1c
3fba: c4 f3     mov   $f3,a             ; set MVOL(R)
3fbc: 8f 0c f2  mov   $f2,#$0c
3fbf: c4 f3     mov   $f3,a             ; set MVOL(L)
3fc1: 6f        ret

3fc2: e5 c7 08  mov   a,$08c7
3fc5: 1c        asl   a
3fc6: 1c        asl   a
3fc7: 1c        asl   a
3fc8: 5d        mov   x,a
3fc9: 8d 0f     mov   y,#$0f
3fcb: f5 dd 3f  mov   a,$3fdd+x
3fce: cb f2     mov   $f2,y
3fd0: c4 f3     mov   $f3,a             ; set FIR C0-C7
3fd2: 3d        inc   x
3fd3: dd        mov   a,y
3fd4: 60        clrc
3fd5: 88 10     adc   a,#$10
3fd7: fd        mov   y,a
3fd8: 68 8f     cmp   a,#$8f
3fda: d0 ef     bne   $3fcb
3fdc: 6f        ret

3fdd: db $7f,$00,$00,$00,$00,$00,$00,$00
3fe4: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
3fed: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
3ff4: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; set note volume * channel volume to $08b3+x
3ffd: ec cd 08  mov   y,$08cd
4000: c8 08     cmp   x,#$08
4002: b0 03     bcs   $4007
4004: ec cc 08  mov   y,$08cc
4007: f5 73 07  mov   a,$0773+x
400a: 1c        asl   a
400b: bc        inc   a
400c: cf        mul   ya
400d: f5 23 07  mov   a,$0723+x
4010: 1c        asl   a
4011: bc        inc   a
4012: cf        mul   ya
4013: dd        mov   a,y
4014: d5 b3 08  mov   $08b3+x,a
4017: 6f        ret

4018: cd 00     mov   x,#$00
401a: f4 3d     mov   a,$3d+x
401c: 28 01     and   a,#$01
401e: d0 03     bne   $4023
4020: 5f ba 40  jmp   $40ba

4023: f4 3d     mov   a,$3d+x
4025: 28 02     and   a,#$02
4027: f0 03     beq   $402c
4029: 5f ba 40  jmp   $40ba

; calculate voice volume and write to dsp
402c: c8 08     cmp   x,#$08
402e: b0 0b     bcs   $403b
4030: f5 b3 08  mov   a,$08b3+x
4033: ec ca 08  mov   y,$08ca
4036: cf        mul   ya
4037: cb 10     mov   $10,y
4039: 2f 05     bra   $4040
403b: f5 b3 08  mov   a,$08b3+x
403e: c4 10     mov   $10,a
4040: f5 73 08  mov   a,$0873+x
4043: f0 25     beq   $406a
4045: f5 83 08  mov   a,$0883+x
4048: f0 20     beq   $406a
404a: 1c        asl   a
404b: eb 10     mov   y,$10
404d: cf        mul   ya
404e: 4d        push  x
404f: f5 73 08  mov   a,$0873+x
4052: 1c        asl   a
4053: cf        mul   ya
4054: ce        pop   x
4055: 90 09     bcc   $4060
4057: dd        mov   a,y
4058: 48 ff     eor   a,#$ff
405a: bc        inc   a
405b: 60        clrc
405c: 84 10     adc   a,$10
405e: 2f 08     bra   $4068
4060: dd        mov   a,y
4061: 60        clrc
4062: 84 10     adc   a,$10
4064: 10 02     bpl   $4068
4066: e8 7f     mov   a,#$7f
4068: c4 10     mov   $10,a
406a: 03 99 16  bbs0  $99,$4083
406d: f5 33 07  mov   a,$0733+x
4070: 68 40     cmp   a,#$40
4072: f0 0f     beq   $4083
4074: eb 10     mov   y,$10
4076: 1c        asl   a
4077: cf        mul   ya
4078: cb 13     mov   $13,y
407a: dd        mov   a,y
407b: a4 10     sbc   a,$10
407d: 48 ff     eor   a,#$ff
407f: c4 12     mov   $12,a
4081: 2f 07     bra   $408a
4083: e4 10     mov   a,$10
4085: 5c        lsr   a
4086: c4 12     mov   $12,a
4088: c4 13     mov   $13,a
408a: 03 99 16  bbs0  $99,$40a3
408d: f4 3d     mov   a,$3d+x
408f: 28 20     and   a,#$20
4091: f0 05     beq   $4098
4093: 58 ff 12  eor   $12,#$ff
4096: ab 12     inc   $12
4098: f4 3d     mov   a,$3d+x
409a: 28 40     and   a,#$40
409c: f0 05     beq   $40a3
409e: 58 ff 13  eor   $13,#$ff
40a1: ab 13     inc   $13
40a3: c8 08     cmp   x,#$08
40a5: 90 07     bcc   $40ae
40a7: 7d        mov   a,x
40a8: 80        setc
40a9: a8 08     sbc   a,#$08
40ab: 9f        xcn   a
40ac: 2f 02     bra   $40b0
40ae: 7d        mov   a,x
40af: 9f        xcn   a
40b0: c4 f2     mov   $f2,a
40b2: fa 12 f3  mov   ($f3),($12)       ; set VOL(L)
40b5: ab f2     inc   $f2
40b7: fa 13 f3  mov   ($f3),($13)       ; set VOL(R)
40ba: 3d        inc   x
40bb: c8 10     cmp   x,#$10
40bd: f0 03     beq   $40c2
40bf: 5f 1a 40  jmp   $401a

40c2: e5 c5 08  mov   a,$08c5
40c5: ec ca 08  mov   y,$08ca
40c8: cf        mul   ya
40c9: dd        mov   a,y
40ca: 03 99 06  bbs0  $99,$40d3
40cd: 73 98 03  bbc3  $98,$40d3
40d0: 48 ff     eor   a,#$ff
40d2: bc        inc   a
40d3: 8f 3c f2  mov   $f2,#$3c
40d6: c4 f3     mov   $f3,a             ; set EVOL(R)
40d8: e5 c6 08  mov   a,$08c6
40db: ec ca 08  mov   y,$08ca
40de: cf        mul   ya
40df: dd        mov   a,y
40e0: 03 99 06  bbs0  $99,$40e9
40e3: 93 98 03  bbc4  $98,$40e9
40e6: 48 ff     eor   a,#$ff
40e8: bc        inc   a
40e9: 8f 2c f2  mov   $f2,#$2c
40ec: c4 f3     mov   $f3,a             ; set EVOL(L)
40ee: 6f        ret

40ef: cd 00     mov   x,#$00
40f1: f4 3d     mov   a,$3d+x
40f3: 28 01     and   a,#$01
40f5: d0 03     bne   $40fa
40f7: 5f 87 41  jmp   $4187

40fa: f4 3d     mov   a,$3d+x
40fc: 28 02     and   a,#$02
40fe: f0 03     beq   $4103
4100: 5f 87 41  jmp   $4187

; adjust voice pitch
; $4d+x = in  P(L), $5d+x = in  P(H)
; $6d+x = out P(L), $7d+x = out P(H)
4103: f5 c3 07  mov   a,$07c3+x
4106: 68 80     cmp   a,#$80
4108: d0 0c     bne   $4116
410a: f4 4d     mov   a,$4d+x
410c: 28 f0     and   a,#$f0
410e: d4 6d     mov   $6d+x,a
4110: f4 5d     mov   a,$5d+x
4112: d4 7d     mov   $7d+x,a
4114: 2f 2f     bra   $4145
4116: 08 00     or    a,#$00
4118: d0 0e     bne   $4128
411a: f4 4d     mov   a,$4d+x
411c: 1c        asl   a
411d: 28 f0     and   a,#$f0
411f: d4 6d     mov   $6d+x,a
4121: f4 5d     mov   a,$5d+x
4123: 3c        rol   a
4124: d4 7d     mov   $7d+x,a
4126: 2f 1d     bra   $4145
4128: fb 4d     mov   y,$4d+x
412a: cf        mul   ya
412b: cb 14     mov   $14,y
412d: f5 c3 07  mov   a,$07c3+x
4130: fd        mov   y,a
4131: f4 5d     mov   a,$5d+x
4133: cf        mul   ya
4134: 60        clrc
4135: 84 14     adc   a,$14
4137: c4 14     mov   $14,a
4139: 90 01     bcc   $413c
413b: fc        inc   y
413c: 1c        asl   a
413d: 28 f0     and   a,#$f0
413f: d4 6d     mov   $6d+x,a
4141: dd        mov   a,y
4142: 3c        rol   a
4143: d4 7d     mov   $7d+x,a
4145: f5 83 08  mov   a,$0883+x
4148: f0 3d     beq   $4187
414a: fd        mov   y,a
414b: f5 23 08  mov   a,$0823+x
414e: 1c        asl   a
414f: cf        mul   ya
4150: cb 11     mov   $11,y
4152: f4 6d     mov   a,$6d+x
4154: cf        mul   ya
4155: cb 12     mov   $12,y
4157: eb 11     mov   y,$11
4159: f4 7d     mov   a,$7d+x
415b: cf        mul   ya
415c: 60        clrc
415d: 84 12     adc   a,$12
415f: c4 12     mov   $12,a
4161: dd        mov   a,y
4162: 88 00     adc   a,#$00
4164: c4 13     mov   $13,a
4166: f5 23 08  mov   a,$0823+x
4169: 30 0f     bmi   $417a
416b: e4 12     mov   a,$12
416d: 60        clrc
416e: 94 6d     adc   a,$6d+x
4170: d4 6d     mov   $6d+x,a
4172: e4 13     mov   a,$13
4174: 94 7d     adc   a,$7d+x
4176: d4 7d     mov   $7d+x,a
4178: 2f 0d     bra   $4187
417a: f4 6d     mov   a,$6d+x
417c: 80        setc
417d: a4 12     sbc   a,$12
417f: d4 6d     mov   $6d+x,a
4181: f4 7d     mov   a,$7d+x
4183: a4 13     sbc   a,$13
4185: d4 7d     mov   $7d+x,a
4187: 3d        inc   x
4188: c8 10     cmp   x,#$10
418a: f0 03     beq   $418f
418c: 5f f1 40  jmp   $40f1
; write pitch to dsp
418f: cd 00     mov   x,#$00
4191: 8d 02     mov   y,#$02
4193: 4d        push  x
4194: f4 3d     mov   a,$3d+x
4196: 28 02     and   a,#$02
4198: f0 07     beq   $41a1
419a: 7d        mov   a,x
419b: 60        clrc
419c: 88 08     adc   a,#$08
419e: 5d        mov   x,a
419f: 2f 06     bra   $41a7
41a1: f4 3d     mov   a,$3d+x
41a3: 28 01     and   a,#$01
41a5: f0 0c     beq   $41b3
41a7: cb f2     mov   $f2,y
41a9: f4 6d     mov   a,$6d+x
41ab: c4 f3     mov   $f3,a             ; set P(L)
41ad: ab f2     inc   $f2
41af: f4 7d     mov   a,$7d+x
41b1: c4 f3     mov   $f3,a             ; set P(H)
41b3: dd        mov   a,y
41b4: 60        clrc
41b5: 88 10     adc   a,#$10
41b7: fd        mov   y,a
41b8: ce        pop   x
41b9: 3d        inc   x
41ba: c8 08     cmp   x,#$08
41bc: d0 d5     bne   $4193
41be: 6f        ret

; calculate pitch from note number
; updates $4d+x and $5d+x
41bf: 4d        push  x
41c0: d8 11     mov   $11,x
41c2: f5 43 07  mov   a,$0743+x         ; note number
41c5: 8d 00     mov   y,#$00
41c7: cd 0c     mov   x,#$0c
41c9: 9e        div   ya,x
41ca: 2d        push  a                 ; push octave
41cb: f6 62 43  mov   a,$4362+y
41ce: c4 10     mov   $10,a
41d0: f6 6e 43  mov   a,$436e+y         ; read pitch table
41d3: ee        pop   y                 ; pop octave
41d4: f0 08     beq   $41de
41d6: 5c        lsr   a
41d7: 6b 10     ror   $10
41d9: fc        inc   y
41da: ad 08     cmp   y,#$08
41dc: d0 f8     bne   $41d6             ; halve pitch until octave < 8
41de: f8 11     mov   x,$11
41e0: d4 5d     mov   $5d+x,a           ; save pitch (high) into $5d+x
41e2: e4 10     mov   a,$10
41e4: d4 4d     mov   $4d+x,a           ; save pitch (low) into $4d+x
41e6: f5 a3 08  mov   a,$08a3+x
41e9: fb 5d     mov   y,$5d+x
41eb: cf        mul   ya
41ec: da 12     movw  $12,ya
41ee: f5 a3 08  mov   a,$08a3+x
41f1: fb 4d     mov   y,$4d+x
41f3: cf        mul   ya
41f4: 6d        push  y
41f5: f5 93 08  mov   a,$0893+x
41f8: fb 4d     mov   y,$4d+x
41fa: cf        mul   ya
41fb: 7a 12     addw  ya,$12
41fd: da 12     movw  $12,ya
41ff: f5 93 08  mov   a,$0893+x
4202: fb 5d     mov   y,$5d+x
4204: cf        mul   ya
4205: fd        mov   y,a
4206: ae        pop   a
4207: 7a 12     addw  ya,$12
4209: d4 4d     mov   $4d+x,a
420b: db 5d     mov   $5d+x,y           ; per-instrument tuning applied
420d: ce        pop   x
420e: 6f        ret

; set sample in A
420f: c4 10     mov   $10,a
4211: 7d        mov   a,x
4212: 68 08     cmp   a,#$08
4214: 90 03     bcc   $4219
4216: 80        setc
4217: a8 08     sbc   a,#$08
4219: 9f        xcn   a
421a: 60        clrc
421b: 88 04     adc   a,#$04
421d: c4 f2     mov   $f2,a
421f: e4 10     mov   a,$10
4221: fa 10 f3  mov   ($f3),($10)       ; set ADSR
4224: 1c        asl   a
4225: 1c        asl   a                 ; index = SRCN * 4
4226: fd        mov   y,a
4227: f6 d2 08  mov   a,$08d2+y         ; read from instrument table
422a: ab f2     inc   $f2
422c: c4 f3     mov   $f3,a             ; offset +0: ADSR(1)
422e: f6 d3 08  mov   a,$08d3+y
4231: ab f2     inc   $f2
4233: c4 f3     mov   $f3,a             ; offset +1: ADSR(2)
4235: f6 d4 08  mov   a,$08d4+y
4238: d5 93 08  mov   $0893+x,a         ; offset +2: pitch multiplier
423b: f6 d5 08  mov   a,$08d5+y
423e: d5 a3 08  mov   $08a3+x,a         ; offset +3: pitch multiplier
4241: 6f        ret

4242: e8 00     mov   a,#$00
4244: c4 f1     mov   $f1,a
4246: 8f 6c f2  mov   $f2,#$6c
4249: 8f e0 f3  mov   $f3,#$e0          ; set FLG
424c: cd 00     mov   x,#$00
424e: f5 2b 43  mov   a,$432b+x
4251: 68 ff     cmp   a,#$ff
4253: f0 0b     beq   $4260
4255: c4 f2     mov   $f2,a
4257: 3d        inc   x
4258: f5 2b 43  mov   a,$432b+x
425b: c4 f3     mov   $f3,a             ; reset dsp regs
425d: 3d        inc   x
425e: 2f ee     bra   $424e
4260: 8f 6d f2  mov   $f2,#$6d
4263: 8f 00 f3  mov   $f3,#$00
4266: 8f 7d f2  mov   $f2,#$7d
4269: 8f 00 f3  mov   $f3,#$00
426c: cd 00     mov   x,#$00
426e: 8d 00     mov   y,#$00
4270: d8 f2     mov   $f2,x
4272: f6 23 43  mov   a,$4323+y         ; reset voice dsp regs
4275: c4 f3     mov   $f3,a
4277: fc        inc   y
4278: 3d        inc   x
4279: ad 08     cmp   y,#$08
427b: d0 f3     bne   $4270
427d: 7d        mov   a,x
427e: 28 f0     and   a,#$f0
4280: 60        clrc
4281: 88 10     adc   a,#$10
4283: 5d        mov   x,a
4284: 68 80     cmp   a,#$80
4286: d0 e6     bne   $426e
4288: 8f 80 fa  mov   $fa,#$80
428b: 8f 01 f1  mov   $f1,#$01
428e: cd 0f     mov   x,#$0f
4290: e4 fd     mov   a,$fd
4292: f0 fc     beq   $4290
4294: 1d        dec   x
4295: d0 f9     bne   $4290
4297: 8f 00 f1  mov   $f1,#$00
429a: 8f 6c f2  mov   $f2,#$6c
429d: e8 20     mov   a,#$20
429f: c4 f3     mov   $f3,a             ; set FLG
42a1: c5 ce 08  mov   $08ce,a
42a4: e8 70     mov   a,#$70
42a6: c5 c3 08  mov   $08c3,a
42a9: 3f b4 3f  call  $3fb4
42ac: e8 54     mov   a,#$54
42ae: 3f 0a 3a  call  $3a0a
42b1: e8 50     mov   a,#$50
42b3: c5 c8 08  mov   $08c8,a
42b6: e8 00     mov   a,#$00
42b8: c5 c7 08  mov   $08c7,a
42bb: e8 00     mov   a,#$00
42bd: c5 c9 08  mov   $08c9,a
42c0: 3f c2 3f  call  $3fc2
42c3: 6f        ret

42c4: e8 00     mov   a,#$00
42c6: 8f 4d f2  mov   $f2,#$4d
42c9: c4 f3     mov   $f3,a             ; set EON
42cb: 8f 3c f2  mov   $f2,#$3c
42ce: c4 f3     mov   $f3,a             ; set EVOL(R)
42d0: 8f 2c f2  mov   $f2,#$2c
42d3: c4 f3     mov   $f3,a             ; set EVOL(L)
42d5: e5 ce 08  mov   a,$08ce
42d8: 08 20     or    a,#$20
42da: 8f 6c f2  mov   $f2,#$6c
42dd: c4 f3     mov   $f3,a             ; set FLG
42df: 8f 7d f2  mov   $f2,#$7d
42e2: e5 c9 08  mov   a,$08c9
42e5: c4 f3     mov   $f3,a             ; set EDL
42e7: 8f 6d f2  mov   $f2,#$6d
42ea: e5 c9 08  mov   a,$08c9
42ed: d0 04     bne   $42f3
42ef: 8f 00 f3  mov   $f3,#$00          ; set ESA to 0
42f2: 6f        ret

42f3: 1c        asl   a
42f4: 1c        asl   a
42f5: 1c        asl   a
42f6: 48 ff     eor   a,#$ff
42f8: bc        inc   a
42f9: c4 f3     mov   $f3,a             ; set ESA
42fb: c4 19     mov   $19,a
42fd: 8f 00 18  mov   $18,#$00
4300: e5 c9 08  mov   a,$08c9
4303: 1c        asl   a
4304: 1c        asl   a
4305: 1c        asl   a
4306: 5d        mov   x,a
4307: 8d 00     mov   y,#$00
4309: e8 00     mov   a,#$00
430b: d7 18     mov   ($18)+y,a
430d: fc        inc   y
430e: d0 fb     bne   $430b
4310: ab 19     inc   $19
4312: 1d        dec   x
4313: d0 f2     bne   $4307
4315: e5 ce 08  mov   a,$08ce
4318: 28 1f     and   a,#$1f
431a: c5 ce 08  mov   $08ce,a
431d: 8f 6c f2  mov   $f2,#$6c
4320: c4 f3     mov   $f3,a             ; set FLG
4322: 6f        ret

; voice dsp regs initialization table
; VOL(L),VOL(R),P(L),P(H),SRCN,ADSR(1),ADSR(2),GAIN
4323: db $00,$00,$00,$10,$00,$ff,$ff,$00

; dsp regs initialization table
432b: db $1c,$00    ; MVOL(R)
432d: db $0c,$00    ; MVOL(L)
432f: db $4c,$00    ; KON
4331: db $5c,$00    ; KOF
4333: db $2d,$00    ; PMON
4335: db $3d,$00    ; NON
4337: db $5d,$02    ; DIR
4339: db $4d,$00    ; EON
433b: db $0d,$00    ; EFB
433d: db $3c,$00    ; EVOL(R)
433f: db $2c,$00    ; EVOL(L)
4341: db $ff

4342: $01,$02,$04,$08,$10,$20,$40,$80

434a: $01,$02,$04,$08,$10,$20,$40,$80

4352: $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

435a: $fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; pitch table
;       c, c+,  d, d+,  e,  f, f+,  g, g+,  a, a+,  b
4362: $7d,$7b,$97,$d3,$31,$b3,$5c,$2d,$29,$52,$ab,$38
436e: $21,$23,$25,$27,$2a,$2c,$2f,$32,$35,$38,$3b,$3f

437a: $00,$03,$06,$09,$0d,$10,$13,$16
4382: $19,$1c,$1f,$22,$25,$28,$2b,$2e
438a: $31,$34,$37,$3a,$3c,$3f,$42,$44
4392: $47,$4a,$4c,$4f,$51,$53,$56,$58
439a: $5a,$5d,$5f,$61,$63,$65,$67,$68
43a2: $6a,$6c,$6d,$6f,$71,$72,$73,$75
43aa: $76,$77,$78,$79,$7a,$7b,$7c,$7c
43b2: $7d,$7d,$7e,$7e,$7f,$7f,$7f,$7f
43ba: $7f,$7f,$7f,$7f,$7e,$7e,$7d,$7d
43c2: $7c,$7c,$7b,$7a,$79,$78,$77,$76
43ca: $75,$73,$72,$71,$6f,$6d,$6c,$6a
43d2: $68,$67,$65,$63,$61,$5f,$5d,$5a
43da: $58,$56,$53,$51,$4f,$4c,$4a,$47
43e2: $44,$42,$3f,$3c,$3a,$37,$34,$31
43ea: $2e,$2b,$28,$25,$22,$1f,$1c,$19
43f2: $16,$13,$10,$0d,$09,$06,$03,$00
