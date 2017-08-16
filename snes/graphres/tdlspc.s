0380: 20        clrp
0381: cd ff     mov   x,#$ff
0383: bd        mov   sp,x
0384: 3f 07 05  call  $0507             ; initialize
0387: e8 75     mov   a,#$75
0389: c4 04     mov   $04,a
038b: c4 f6     mov   $f6,a
; main loop
038d: e8 00     mov   a,#$00
038f: c4 f1     mov   $f1,a
0391: e8 85     mov   a,#$85
0393: c4 fa     mov   $fa,a             ; set timer 0 frequency (16.625 ms)
0395: e8 01     mov   a,#$01
0397: c4 f1     mov   $f1,a
0399: 3f a8 03  call  $03a8
039c: 3f 64 07  call  $0764
039f: 3f dc 03  call  $03dc             ; dispatch cpu cmd
03a2: e4 fd     mov   a,$fd
03a4: f0 f9     beq   $039f             ; wait for timer 0 clock
03a6: 2f e5     bra   $038d             ; re-enter to main loop
;
03a8: e9 10 03  mov   x,$0310
03ab: f0 15     beq   $03c2
03ad: 1d        dec   x
03ae: c9 10 03  mov   $0310,x
03b1: f5 11 03  mov   a,$0311+x
03b4: 30 05     bmi   $03bb
03b6: 3f 77 06  call  $0677
03b9: 2f 05     bra   $03c0
03bb: 28 7f     and   a,#$7f
03bd: 3f bf 06  call  $06bf
03c0: 2f e6     bra   $03a8
03c2: 6f        ret

03c3: 2d        push  a
03c4: 4d        push  x
03c5: 6d        push  y
03c6: 3f c9 04  call  $04c9
03c9: b0 0d     bcs   $03d8
03cb: 68 33     cmp   a,#$33
03cd: f0 06     beq   $03d5
03cf: 68 34     cmp   a,#$34
03d1: f0 02     beq   $03d5
03d3: 2f 03     bra   $03d8
03d5: 3f dc 03  call  $03dc
03d8: ee        pop   y
03d9: ce        pop   x
03da: ae        pop   a
03db: 6f        ret

03dc: 3f c9 04  call  $04c9
03df: b0 0b     bcs   $03ec
03e1: 3f bb 04  call  $04bb
03e4: 80        setc
03e5: a8 30     sbc   a,#$30
03e7: 1c        asl   a
03e8: 5d        mov   x,a
03e9: 1f ed 03  jmp   ($03ed+x)

03ec: 6f        ret

03ed: dw $0459  ; 30
03ef: dw $0481  ; 31
03f1: dw $0401  ; 32
03f3: dw $0404  ; 33
03f5: dw $0427  ; 34
03f7: dw $044a  ; 35
03f9: dw $0450  ; 36
03fb: dw $0453  ; 37
03fd: dw $044d  ; 38
03ff: dw $04a9  ; 39

0401: 5f 20 06  jmp   $0620

0404: cd 00     mov   x,#$00
0406: 1e 10 03  cmp   x,$0310
0409: f0 0a     beq   $0415
040b: dd        mov   a,y
040c: 75 11 03  cmp   a,$0311+x
040f: f0 15     beq   $0426
0411: 3d        inc   x
0412: 5f 06 04  jmp   $0406

0415: dd        mov   a,y
0416: 28 7f     and   a,#$7f
0418: d5 11 03  mov   $0311+x,a
041b: e5 10 03  mov   a,$0310
041e: 68 0f     cmp   a,#$0f
0420: f0 04     beq   $0426
0422: bc        inc   a
0423: c5 10 03  mov   $0310,a
0426: 6f        ret

0427: cd 00     mov   x,#$00
0429: 1e 10 03  cmp   x,$0310
042c: f0 0a     beq   $0438
042e: dd        mov   a,y
042f: 75 11 03  cmp   a,$0311+x
0432: f0 15     beq   $0449
0434: 3d        inc   x
0435: 5f 29 04  jmp   $0429

0438: dd        mov   a,y
0439: 08 80     or    a,#$80
043b: d5 11 03  mov   $0311+x,a
043e: e5 10 03  mov   a,$0310
0441: 68 0f     cmp   a,#$0f
0443: f0 04     beq   $0449
0445: bc        inc   a
0446: c5 10 03  mov   $0310,a
0449: 6f        ret

044a: 5f fc 05  jmp   $05fc

044d: 5f 19 06  jmp   $0619

0450: cb 2a     mov   $2a,y
0452: 6f        ret

0453: dd        mov   a,y
0454: 28 01     and   a,#$01
0456: c4 28     mov   $28,a
0458: 6f        ret

0459: 3f bb 04  call  $04bb
045c: da 02     movw  $02,ya
045e: 3f bb 04  call  $04bb
0461: da 00     movw  $00,ya
0463: f8 04     mov   x,$04
0465: 8d 00     mov   y,#$00
0467: d8 f6     mov   $f6,x
0469: 3d        inc   x
046a: 3e f6     cmp   x,$f6
046c: d0 fc     bne   $046a
046e: e4 f4     mov   a,$f4
0470: d7 02     mov   ($02)+y,a
0472: 3a 02     incw  $02
0474: e4 f5     mov   a,$f5
0476: d7 02     mov   ($02)+y,a
0478: 3a 02     incw  $02
047a: 1a 00     decw  $00
047c: d0 e9     bne   $0467
047e: d8 04     mov   $04,x
0480: 6f        ret

0481: 3f bb 04  call  $04bb
0484: da 02     movw  $02,ya
0486: 3f bb 04  call  $04bb
0489: da 00     movw  $00,ya
048b: f8 04     mov   x,$04
048d: 8d 00     mov   y,#$00
048f: f7 02     mov   a,($02)+y
0491: c4 f4     mov   $f4,a
0493: 3a 02     incw  $02
0495: f7 02     mov   a,($02)+y
0497: c4 f5     mov   $f5,a
0499: 3a 02     incw  $02
049b: d8 f6     mov   $f6,x
049d: 3d        inc   x
049e: 3e f6     cmp   x,$f6
04a0: d0 fc     bne   $049e
04a2: 1a 00     decw  $00
04a4: d0 e9     bne   $048f
04a6: d8 04     mov   $04,x
04a8: 6f        ret

04a9: cd e0     mov   x,#$e0
04ab: e8 6c     mov   a,#$6c
04ad: 3f 62 0a  call  $0a62             ; set FLG
04b0: e8 aa     mov   a,#$aa
04b2: c4 f4     mov   $f4,a
04b4: e8 bb     mov   a,#$bb
04b6: c4 f5     mov   $f5,a
04b8: 5f c0 ff  jmp   $ffc0

04bb: f8 04     mov   x,$04
04bd: d8 f6     mov   $f6,x
04bf: 3d        inc   x
04c0: d8 04     mov   $04,x
04c2: 3e f6     cmp   x,$f6
04c4: d0 fc     bne   $04c2
04c6: ba f4     movw  ya,$f4
04c8: 6f        ret

04c9: f8 04     mov   x,$04
04cb: d8 f6     mov   $f6,x
04cd: 3d        inc   x
04ce: 3e f6     cmp   x,$f6
04d0: d0 04     bne   $04d6
04d2: ba f4     movw  ya,$f4
04d4: 60        clrc
04d5: 6f        ret

04d6: 80        setc
04d7: 6f        ret

04d8: f8 12     mov   x,$12
04da: f5 00 02  mov   a,$0200+x
04dd: 68 07     cmp   a,#$07
04df: f0 20     beq   $0501
04e1: f4 6d     mov   a,$6d+x
04e3: 2d        push  a
04e4: e8 00     mov   a,#$00
04e6: fb 8d     mov   y,$8d+x
04e8: ce        pop   x
04e9: 9e        div   ya,x
04ea: 50 02     bvc   $04ee
04ec: e8 ff     mov   a,#$ff
04ee: f8 12     mov   x,$12
04f0: fb bd     mov   y,$bd+x
04f2: cf        mul   ya
04f3: da 0d     movw  $0d,ya
04f5: e4 0e     mov   a,$0e
04f7: 68 20     cmp   a,#$20
04f9: 90 02     bcc   $04fd
04fb: e8 1f     mov   a,#$1f
04fd: d5 00 01  mov   $0100+x,a
0500: 6f        ret

0501: e8 00     mov   a,#$00
0503: d5 00 01  mov   $0100+x,a
0506: 6f        ret

; initialize
0507: e8 00     mov   a,#$00
0509: 5d        mov   x,a
050a: af        mov   (x)+,a
050b: c8 f0     cmp   x,#$f0
050d: d0 fb     bne   $050a
050f: cd 00     mov   x,#$00
0511: e8 00     mov   a,#$00
0513: d5 00 01  mov   $0100+x,a
0516: d5 00 02  mov   $0200+x,a
0519: d5 80 02  mov   $0280+x,a
051c: d5 00 03  mov   $0300+x,a
051f: 3d        inc   x
0520: c8 80     cmp   x,#$80
0522: d0 ef     bne   $0513
0524: e5 00 0e  mov   a,$0e00
0527: c4 05     mov   $05,a
0529: e5 01 0e  mov   a,$0e01
052c: c4 06     mov   $06,a
052e: e5 02 0e  mov   a,$0e02
0531: c4 07     mov   $07,a
0533: e5 03 0e  mov   a,$0e03
0536: c4 08     mov   $08,a             ; set volume balance table address to $07/8 (=#$0e18)
0538: e5 04 0e  mov   a,$0e04
053b: c4 09     mov   $09,a
053d: e5 05 0e  mov   a,$0e05
0540: c4 0a     mov   $0a,a             ; set pitch table address to $09/a (=#$0e38)
0542: e5 06 0e  mov   a,$0e06
0545: c4 0b     mov   $0b,a
0547: e5 07 0e  mov   a,$0e07
054a: c4 0c     mov   $0c,a             ; set ??? table address to $0b/c (=#$0e92)
054c: e8 00     mov   a,#$00
054e: c4 2a     mov   $2a,a
0550: c4 2b     mov   $2b,a
0552: c4 2c     mov   $2c,a
0554: c4 29     mov   $29,a
0556: c5 10 03  mov   $0310,a
0559: c4 19     mov   $19,a
055b: c4 1a     mov   $1a,a
055d: e8 00     mov   a,#$00
055f: c4 24     mov   $24,a
0561: c4 26     mov   $26,a
0563: c4 25     mov   $25,a
0565: c4 27     mov   $27,a
0567: c4 20     mov   $20,a
0569: c4 22     mov   $22,a
056b: e8 7f     mov   a,#$7f
056d: c4 21     mov   $21,a
056f: c4 23     mov   $23,a
0571: e8 00     mov   a,#$00
0573: c4 1f     mov   $1f,a
0575: 8d 00     mov   y,#$00
0577: f6 d0 05  mov   a,$05d0+y
057a: 5d        mov   x,a
057b: f6 cf 05  mov   a,$05cf+y
057e: 68 ff     cmp   a,#$ff
0580: f0 07     beq   $0589
0582: 3f 62 0a  call  $0a62             ; reset DSP regs
0585: fc        inc   y
0586: fc        inc   y
0587: 2f ee     bra   $0577
0589: e8 00     mov   a,#$00
058b: c4 14     mov   $14,a
058d: cd 00     mov   x,#$00
058f: e8 00     mov   a,#$00
0591: 3f 70 0a  call  $0a70             ; set VOL(L)
0594: cd 00     mov   x,#$00
0596: e8 01     mov   a,#$01
0598: 3f 70 0a  call  $0a70             ; set VOL(R)
059b: cd 00     mov   x,#$00
059d: e8 02     mov   a,#$02
059f: 3f 70 0a  call  $0a70             ; set P(L)
05a2: cd 00     mov   x,#$00
05a4: e8 03     mov   a,#$03
05a6: 3f 70 0a  call  $0a70             ; set P(H)
05a9: cd 00     mov   x,#$00
05ab: e8 04     mov   a,#$04
05ad: 3f 70 0a  call  $0a70             ; set SRCN
05b0: cd 00     mov   x,#$00
05b2: e8 05     mov   a,#$05
05b4: 3f 70 0a  call  $0a70             ; set ADSR(1)
05b7: cd 00     mov   x,#$00
05b9: e8 06     mov   a,#$06
05bb: 3f 70 0a  call  $0a70             ; set ADSR(2)
05be: cd 00     mov   x,#$00
05c0: e8 07     mov   a,#$07
05c2: 3f 70 0a  call  $0a70             ; set GAIN
05c5: e4 14     mov   a,$14
05c7: 60        clrc
05c8: 88 10     adc   a,#$10
05ca: 68 80     cmp   a,#$80
05cc: d0 bd     bne   $058b
05ce: 6f        ret

05cf: db $6c,$20      ; FLG
05d1: db $0c,$00      ; MVOL(L)
05d3: db $1c,$00      ; MVOL(R)
05d5: db $2c,$00      ; EVOL(L)
05d7: db $3c,$00      ; EVOL(R)
05d9: db $4c,$00      ; KON
05db: db $5c,$00      ; KOF
05dd: db $0d,$60      ; EFB
05df: db $2d,$00      ; PMON
05e1: db $3d,$00      ; NON
05e3: db $4d,$00      ; EON
05e5: db $5d,$38      ; DIR
05e7: db $6d,$ff      ; ESA
05e9: db $7d,$02      ; EDL
05eb: db $0f,$ff      ; C0
05ed: db $1f,$08      ; C1
05ef: db $2f,$17      ; C2
05f1: db $3f,$24      ; C3
05f3: db $4f,$24      ; C4
05f5: db $5f,$17      ; C5
05f7: db $6f,$08      ; C6
05f9: db $7f,$ff      ; C7
05fb: db $ff

05fc: e8 00     mov   a,#$00
05fe: c4 1f     mov   $1f,a
0600: e8 00     mov   a,#$00
0602: 2d        push  a
0603: 3f d8 07  call  $07d8
0606: e8 00     mov   a,#$00
0608: f8 12     mov   x,$12
060a: d4 bd     mov   $bd+x,a
060c: 3f d6 08  call  $08d6             ; update channel volume
060f: 3f d9 0a  call  $0ad9
0612: ae        pop   a
0613: bc        inc   a
0614: 68 10     cmp   a,#$10
0616: d0 ea     bne   $0602
0618: 6f        ret

0619: e4 29     mov   a,$29
061b: 48 01     eor   a,#$01
061d: c4 29     mov   $29,a
061f: 6f        ret

0620: 3f 24 05  call  $0524
0623: e8 00     mov   a,#$00
0625: c4 0d     mov   $0d,a
0627: e8 12     mov   a,#$12
0629: c4 0e     mov   $0e,a             ; song header at $1200
062b: e5 01 12  mov   a,$1201           ; $1201/2: first track address (ROM address, not APU RAM address)
062e: 80        setc
062f: a8 18     sbc   a,#$18
0631: c4 0f     mov   $0f,a
0633: e5 02 12  mov   a,$1202
0636: a8 00     sbc   a,#$00
0638: c4 10     mov   $10,a             ; $0f/10 = first track address - 24 header bytes
063a: cd 00     mov   x,#$00
063c: 8d 00     mov   y,#$00
063e: e8 00     mov   a,#$00
0640: d4 35     mov   $35+x,a
0642: f7 0d     mov   a,($0d)+y         ; offset +0: active/inactive
0644: d4 2d     mov   $2d+x,a
0646: f0 26     beq   $066e             ; track is unused if 0
0648: 4d        push  x
0649: 6d        push  y
064a: fc        inc   y
064b: 7d        mov   a,x
064c: 1c        asl   a
064d: 5d        mov   x,a
064e: f7 0d     mov   a,($0d)+y         ; offset +1: score address (low) (ROM address)
0650: 80        setc
0651: a4 0f     sbc   a,$0f             ; ROM address to offset
0653: d4 3d     mov   $3d+x,a
0655: fc        inc   y
0656: f7 0d     mov   a,($0d)+y         ; offset +2: score address (high) (ROM address)
0658: a4 10     sbc   a,$10
065a: d4 3e     mov   $3e+x,a           ; set score address to $3d/e
065c: f4 3d     mov   a,$3d+x
065e: 60        clrc
065f: 88 00     adc   a,#$00
0661: d4 3d     mov   $3d+x,a
0663: f4 3e     mov   a,$3e+x
0665: 88 12     adc   a,#$12
0667: d4 3e     mov   $3e+x,a           ; $3d/e+x += 0x1200 (relocate address)
0669: ee        pop   y
066a: ce        pop   x
066b: 3f f0 06  call  $06f0
066e: 3d        inc   x
066f: fc        inc   y
0670: fc        inc   y
0671: fc        inc   y
0672: c8 08     cmp   x,#$08            ; repeat for all 8 tracks
0674: d0 c8     bne   $063e
0676: 6f        ret

0677: 3f ad 06  call  $06ad
067a: cd 00     mov   x,#$00
067c: 8d 00     mov   y,#$00
067e: f7 0d     mov   a,($0d)+y
0680: f0 07     beq   $0689
0682: 74 35     cmp   a,$35+x
0684: 90 03     bcc   $0689
0686: 3f 92 06  call  $0692
0689: 3d        inc   x
068a: fc        inc   y
068b: fc        inc   y
068c: fc        inc   y
068d: ad 18     cmp   y,#$18
068f: d0 ed     bne   $067e
0691: 6f        ret

0692: d4 35     mov   $35+x,a
0694: 4d        push  x
0695: 6d        push  y
0696: fc        inc   y
0697: 7d        mov   a,x
0698: 1c        asl   a
0699: 5d        mov   x,a
069a: f7 0d     mov   a,($0d)+y
069c: 60        clrc
069d: 88 00     adc   a,#$00
069f: d4 4d     mov   $4d+x,a
06a1: fc        inc   y
06a2: f7 0d     mov   a,($0d)+y
06a4: 88 20     adc   a,#$20
06a6: d4 4e     mov   $4e+x,a
06a8: ee        pop   y
06a9: ce        pop   x
06aa: 5f f7 06  jmp   $06f7

06ad: 1c        asl   a
06ae: 5d        mov   x,a
06af: f5 00 20  mov   a,$2000+x
06b2: 60        clrc
06b3: 88 00     adc   a,#$00
06b5: c4 0d     mov   $0d,a
06b7: f5 01 20  mov   a,$2001+x
06ba: 88 20     adc   a,#$20
06bc: c4 0e     mov   $0e,a
06be: 6f        ret

06bf: 3f ad 06  call  $06ad
06c2: cd 00     mov   x,#$00
06c4: 8d 00     mov   y,#$00
06c6: f7 0d     mov   a,($0d)+y
06c8: f0 08     beq   $06d2
06ca: 3f da 06  call  $06da
06cd: 90 03     bcc   $06d2
06cf: 3f 92 06  call  $0692
06d2: fc        inc   y
06d3: fc        inc   y
06d4: fc        inc   y
06d5: ad 18     cmp   y,#$18
06d7: d0 ed     bne   $06c6
06d9: 6f        ret

06da: cd 00     mov   x,#$00
06dc: 74 2d     cmp   a,$2d+x
06de: f0 09     beq   $06e9
06e0: 90 07     bcc   $06e9
06e2: 74 35     cmp   a,$35+x
06e4: f0 03     beq   $06e9
06e6: 90 01     bcc   $06e9
06e8: 6f        ret

06e9: 3d        inc   x
06ea: c8 08     cmp   x,#$08
06ec: d0 ee     bne   $06dc
06ee: 60        clrc
06ef: 6f        ret

06f0: 4d        push  x
06f1: 7d        mov   a,x
06f2: 3f 01 07  call  $0701
06f5: ce        pop   x
06f6: 6f        ret

06f7: 4d        push  x
06f8: 7d        mov   a,x
06f9: 60        clrc
06fa: 88 08     adc   a,#$08
06fc: 3f 01 07  call  $0701
06ff: ce        pop   x
0700: 6f        ret

0701: 3f d8 07  call  $07d8
0704: f8 12     mov   x,$12
0706: e8 00     mov   a,#$00
0708: d4 5d     mov   $5d+x,a
070a: d4 ad     mov   $ad+x,a
070c: d5 50 01  mov   $0150+x,a
070f: d5 40 02  mov   $0240+x,a
0712: d5 10 02  mov   $0210+x,a
0715: d4 cd     mov   $cd+x,a
0717: e8 0f     mov   a,#$0f
0719: d4 bd     mov   $bd+x,a
071b: e8 01     mov   a,#$01
071d: d4 8d     mov   $8d+x,a
071f: d4 9d     mov   $9d+x,a
0721: e8 08     mov   a,#$08
0723: d4 7d     mov   $7d+x,a
0725: e8 04     mov   a,#$04
0727: d5 20 02  mov   $0220+x,a
072a: e8 c0     mov   a,#$c0
072c: d5 30 02  mov   $0230+x,a
072f: e8 80     mov   a,#$80
0731: d5 50 02  mov   $0250+x,a
0734: d5 80 02  mov   $0280+x,a
0737: d5 b0 02  mov   $02b0+x,a
073a: d5 e0 02  mov   $02e0+x,a
073d: e8 07     mov   a,#$07
073f: d5 00 02  mov   $0200+x,a
0742: f8 11     mov   x,$11
0744: f5 64 08  mov   a,$0864+x
0747: 48 ff     eor   a,#$ff
0749: f8 15     mov   x,$15
074b: 34 19     and   a,$19+x
074d: d4 19     mov   $19+x,a
074f: f8 13     mov   x,$13
0751: e8 00     mov   a,#$00
0753: d5 10 01  mov   $0110+x,a
0756: d5 11 01  mov   $0111+x,a
0759: e8 e0     mov   a,#$e0
075b: d5 30 01  mov   $0130+x,a
075e: e8 8f     mov   a,#$8f
0760: d5 31 01  mov   $0131+x,a
0763: 6f        ret

0764: e4 29     mov   a,$29
0766: 28 01     and   a,#$01
0768: d0 30     bne   $079a
076a: e8 00     mov   a,#$00
076c: c4 16     mov   $16,a
076e: c4 17     mov   $17,a
0770: c4 18     mov   $18,a
0772: e8 00     mov   a,#$00
0774: 2d        push  a
0775: 3f a1 07  call  $07a1
0778: ae        pop   a
0779: bc        inc   a
077a: 68 08     cmp   a,#$08
077c: d0 f6     bne   $0774
077e: 3f 88 08  call  $0888
0781: 3f b1 08  call  $08b1
0784: f8 16     mov   x,$16
0786: e8 3d     mov   a,#$3d
0788: 3f 62 0a  call  $0a62             ; NON
078b: f8 18     mov   x,$18
078d: e8 5c     mov   a,#$5c
078f: 3f 62 0a  call  $0a62             ; KOF
0792: f8 17     mov   x,$17
0794: e8 4c     mov   a,#$4c
0796: 3f 62 0a  call  $0a62             ; KON
0799: 6f        ret

079a: cd ff     mov   x,#$ff
079c: e8 5c     mov   a,#$5c
079e: 5f 62 0a  jmp   $0a62             ; KOF

07a1: 3f d8 07  call  $07d8
07a4: f8 11     mov   x,$11
07a6: f4 2d     mov   a,$2d+x
07a8: 74 35     cmp   a,$35+x
07aa: f0 17     beq   $07c3
07ac: 90 15     bcc   $07c3
07ae: e8 00     mov   a,#$00
07b0: c4 1f     mov   $1f,a
07b2: 3f f1 07  call  $07f1
07b5: e8 01     mov   a,#$01
07b7: c4 1f     mov   $1f,a
07b9: e4 11     mov   a,$11
07bb: 60        clrc
07bc: 88 08     adc   a,#$08
07be: 3f d8 07  call  $07d8
07c1: 2f 2e     bra   $07f1
07c3: e8 01     mov   a,#$01
07c5: c4 1f     mov   $1f,a
07c7: 3f f1 07  call  $07f1
07ca: e8 00     mov   a,#$00
07cc: c4 1f     mov   $1f,a
07ce: e4 11     mov   a,$11
07d0: 60        clrc
07d1: 88 08     adc   a,#$08
07d3: 3f d8 07  call  $07d8
07d6: 2f 19     bra   $07f1
07d8: c4 12     mov   $12,a
07da: 28 07     and   a,#$07
07dc: c4 11     mov   $11,a             ; physical channel #
07de: 1c        asl   a
07df: 1c        asl   a
07e0: 1c        asl   a
07e1: 1c        asl   a
07e2: c4 14     mov   $14,a             ; channel reg offset
07e4: e4 12     mov   a,$12
07e6: 1c        asl   a
07e7: c4 13     mov   $13,a
07e9: e4 12     mov   a,$12
07eb: 5c        lsr   a
07ec: 5c        lsr   a
07ed: 5c        lsr   a
07ee: c4 15     mov   $15,a
07f0: 6f        ret

07f1: 3f 20 08  call  $0820
07f4: f8 12     mov   x,$12
07f6: f4 2d     mov   a,$2d+x
07f8: f0 23     beq   $081d
07fa: e4 1b     mov   a,$1b
07fc: 04 1c     or    a,$1c
07fe: f0 1d     beq   $081d
0800: f8 12     mov   x,$12
0802: 9b 8d     dec   $8d+x             ; decrease wait counter
0804: f4 8d     mov   a,$8d+x
0806: 74 9d     cmp   a,$9d+x
0808: f0 02     beq   $080c             ; time to keyoff
080a: b0 03     bcs   $080f
080c: 3f 6c 08  call  $086c             ; keyoff
080f: f8 12     mov   x,$12
0811: f4 8d     mov   a,$8d+x
0813: d0 05     bne   $081a
0815: 3f c4 0a  call  $0ac4             ; dispatch voice op
0818: 2f 03     bra   $081d
081a: 3f 4c 09  call  $094c             ; update pitch
081d: 5f d8 04  jmp   $04d8

; set score pointer of track $13 to $1b/c
0820: f8 13     mov   x,$13
0822: f4 3d     mov   a,$3d+x
0824: c4 1b     mov   $1b,a
0826: f4 3e     mov   a,$3e+x
0828: c4 1c     mov   $1c,a
082a: 6f        ret

082b: 3f 78 0a  call  $0a78             ; read note byte
082e: 3f 4c 09  call  $094c             ; update pitch
0831: 3f 41 09  call  $0941             ; update SRCN
0834: 3f 2b 09  call  $092b             ; update ADSR
0837: 3f d6 08  call  $08d6             ; update channel volume
083a: f8 12     mov   x,$12
083c: f4 ad     mov   a,$ad+x
083e: d0 23     bne   $0863
0840: 3f 37 0a  call  $0a37
0843: f5 00 02  mov   a,$0200+x
0846: 68 07     cmp   a,#$07
0848: f0 19     beq   $0863
084a: 78 00 1f  cmp   $1f,#$00
084d: d0 14     bne   $0863
084f: f8 11     mov   x,$11
0851: f5 64 08  mov   a,$0864+x
0854: 48 ff     eor   a,#$ff
0856: 24 18     and   a,$18
0858: c4 18     mov   $18,a             ; set KOF shadow
085a: f8 11     mov   x,$11
085c: f5 64 08  mov   a,$0864+x
085f: 04 17     or    a,$17
0861: c4 17     mov   $17,a
0863: 6f        ret

; channel # to bitmask table
0864: db $01,$02,$04,$08,$10,$20,$40,$80

; keyoff
086c: f8 12     mov   x,$12
086e: f4 ad     mov   a,$ad+x
0870: d0 15     bne   $0887
0872: f5 00 02  mov   a,$0200+x
0875: 68 07     cmp   a,#$07
0877: f0 0e     beq   $0887
0879: 78 00 1f  cmp   $1f,#$00
087c: d0 09     bne   $0887
087e: f8 11     mov   x,$11
0880: f5 64 08  mov   a,$0864+x
0883: 04 18     or    a,$18
0885: c4 18     mov   $18,a             ; set KOF shadow
0887: 6f        ret

0888: cd 00     mov   x,#$00
088a: e4 2a     mov   a,$2a
088c: c4 0d     mov   $0d,a
088e: d8 0e     mov   $0e,x
0890: 0b 0d     asl   $0d
0892: 2b 0e     rol   $0e
0894: 0b 0d     asl   $0d
0896: 2b 0e     rol   $0e
0898: 0b 0d     asl   $0d
089a: 2b 0e     rol   $0e
089c: 0b 0d     asl   $0d
089e: 2b 0e     rol   $0e               ; $0d/e = $2a << 4
08a0: e4 2b     mov   a,$2b
08a2: 60        clrc
08a3: 84 0d     adc   a,$0d
08a5: 5d        mov   x,a
08a6: e4 2c     mov   a,$2c
08a8: 84 0e     adc   a,$0e             ; $2b/c += $0d/e
08aa: 30 04     bmi   $08b0
08ac: d8 2b     mov   $2b,x
08ae: c4 2c     mov   $2c,a
08b0: 6f        ret

08b1: e4 21     mov   a,$21
08b3: 8d 0c     mov   y,#$0c            ; MVOL(L)
08b5: 3f ca 08  call  $08ca
08b8: e4 23     mov   a,$23
08ba: 8d 1c     mov   y,#$1c            ; MVOL(R)
08bc: 3f ca 08  call  $08ca
08bf: e4 25     mov   a,$25
08c1: 8d 2c     mov   y,#$2c            ; EVOL(L)
08c3: 3f ca 08  call  $08ca
08c6: e4 27     mov   a,$27
08c8: 8d 3c     mov   y,#$3c            ; EVOL(R)
08ca: 80        setc
08cb: a4 2c     sbc   a,$2c             ; apply fader
08cd: 10 02     bpl   $08d1
08cf: e8 00     mov   a,#$00
08d1: 5d        mov   x,a
08d2: dd        mov   a,y
08d3: 5f 62 0a  jmp   $0a62

; update channel volume
08d6: e4 28     mov   a,$28
08d8: f0 0a     beq   $08e4
; mono
08da: f8 12     mov   x,$12
08dc: f4 bd     mov   a,$bd+x           ; channel volume (0..15)
08de: c4 0d     mov   $0d,a             ; VOL(L)
08e0: c4 0e     mov   $0e,a             ; VOL(R)
08e2: 2f 39     bra   $091d
; stereo
08e4: f8 12     mov   x,$12
08e6: f4 cd     mov   a,$cd+x           ; panpot (-15..15)
08e8: 30 0d     bmi   $08f7
; pan >= 0: pan right
08ea: 1c        asl   a
08eb: fd        mov   y,a
08ec: f7 07     mov   a,($07)+y
08ee: c4 0d     mov   $0d,a             ; left volume balance = (15-N)/15
08f0: fc        inc   y
08f1: f7 07     mov   a,($07)+y
08f3: c4 0e     mov   $0e,a             ; right volume balance = 100%
08f5: 2f 0e     bra   $0905
; pan < 0: pan left
08f7: 48 ff     eor   a,#$ff
08f9: bc        inc   a                 ; abs(pan)
08fa: 1c        asl   a
08fb: fd        mov   y,a
08fc: f7 07     mov   a,($07)+y
08fe: c4 0e     mov   $0e,a             ; right volume balance = (15-N)/15
0900: fc        inc   y
0901: f7 07     mov   a,($07)+y
0903: c4 0d     mov   $0d,a             ; left volume balance = 100%
;
0905: f8 12     mov   x,$12
0907: f4 bd     mov   a,$bd+x
0909: eb 0d     mov   y,$0d
090b: cf        mul   ya
090c: cd 64     mov   x,#$64
090e: 9e        div   ya,x
090f: c4 0d     mov   $0d,a
0911: f8 12     mov   x,$12
0913: f4 bd     mov   a,$bd+x
0915: eb 0e     mov   y,$0e
0917: cf        mul   ya
0918: cd 64     mov   x,#$64
091a: 9e        div   ya,x
091b: c4 0e     mov   $0e,a
;
091d: f8 0d     mov   x,$0d
091f: e8 00     mov   a,#$00
0921: 3f 67 0a  call  $0a67             ; set VOL(L)
0924: f8 0e     mov   x,$0e
0926: e8 01     mov   a,#$01
0928: 5f 67 0a  jmp   $0a67             ; set VOL(R)

; update ADSR
092b: f8 13     mov   x,$13
092d: f5 31 01  mov   a,$0131+x
0930: 5d        mov   x,a
0931: e8 05     mov   a,#$05
0933: 3f 67 0a  call  $0a67             ; set ADSR(1)
0936: f8 13     mov   x,$13
0938: f5 30 01  mov   a,$0130+x
093b: 5d        mov   x,a
093c: e8 06     mov   a,#$06
093e: 5f 67 0a  jmp   $0a67             ; set ADSR(2)

; update SRCN
0941: f8 12     mov   x,$12
0943: f5 10 02  mov   a,$0210+x
0946: 5d        mov   x,a
0947: e8 04     mov   a,#$04
0949: 5f 67 0a  jmp   $0a67             ; set SRCN

; update pitch
094c: f8 12     mov   x,$12
094e: f5 00 02  mov   a,$0200+x         ; key
0951: 68 07     cmp   a,#$07
0953: f0 47     beq   $099c             ; rest if key == 7
;
0955: f8 15     mov   x,$15
0957: f4 19     mov   a,$19+x
0959: f8 11     mov   x,$11
095b: 35 64 08  and   a,$0864+x
095e: d0 44     bne   $09a4             ; branch if noise on
0960: f8 12     mov   x,$12
0962: f5 00 02  mov   a,$0200+x
0965: fd        mov   y,a
0966: f6 cf 09  mov   a,$09cf+y         ; read note number
0969: 60        clrc
096a: 95 40 02  adc   a,$0240+x         ; add transpose
096d: 1c        asl   a
096e: fd        mov   y,a
096f: f7 09     mov   a,($09)+y
0971: c4 0d     mov   $0d,a
0973: fc        inc   y
0974: f7 09     mov   a,($09)+y
0976: c4 0e     mov   $0e,a             ; read pitch to $0d/e
0978: 3f df 09  call  $09df
097b: f8 12     mov   x,$12
097d: e8 05     mov   a,#$05
097f: 80        setc
0980: b5 20 02  sbc   a,$0220+x
0983: 30 09     bmi   $098e
0985: f0 07     beq   $098e
; halve pitch if octave < 5
0987: fd        mov   y,a
0988: 4b 0e     lsr   $0e
098a: 6b 0d     ror   $0d
098c: fe fa     dbnz  y,$0988
; write final pitch value
098e: f8 0d     mov   x,$0d
0990: e8 02     mov   a,#$02
0992: 3f 67 0a  call  $0a67             ; set P(L)
0995: f8 0e     mov   x,$0e
0997: e8 03     mov   a,#$03
0999: 5f 67 0a  jmp   $0a67             ; set P(H)

; rest (key = 7)
099c: e8 00     mov   a,#$00
099e: c4 0d     mov   $0d,a
09a0: c4 0e     mov   $0e,a             ; pitch = 0
09a2: 2f ea     bra   $098e
; noise note
09a4: f8 12     mov   x,$12
09a6: f5 00 02  mov   a,$0200+x
09a9: fd        mov   y,a
09aa: f6 cf 09  mov   a,$09cf+y         ; read note number
09ad: 60        clrc
09ae: 95 40 02  adc   a,$0240+x         ; add transpose
09b1: 28 1f     and   a,#$1f
09b3: 08 20     or    a,#$20
09b5: 5d        mov   x,a
09b6: e8 6c     mov   a,#$6c            ; FLG
09b8: 3f 59 0a  call  $0a59             ; set noise frequency
09bb: 78 00 1f  cmp   $1f,#$00
09be: d0 0d     bne   $09cd
09c0: f8 11     mov   x,$11
09c2: f5 64 08  mov   a,$0864+x
09c5: f8 15     mov   x,$15
09c7: 34 19     and   a,$19+x
09c9: 04 16     or    a,$16
09cb: c4 16     mov   $16,a
09cd: 2f cd     bra   $099c

;          0:  1:  2:  3:  4:  5:  6:  7:
;          c,  d,  e,  f,  g,  a,  b,rest
09cf: db $0c,$0e,$10,$11,$13,$15,$17,$6f
;          8:  9:  a:  b:  c:  d:  e:  f:
;         c+, d+,  e, f+, g+, a+,  b,(not used)
09d7: db $0d,$0f,$10,$12,$14,$16,$17,$6f

09df: 3f 48 0a  call  $0a48
09e2: f8 12     mov   x,$12
09e4: f5 70 01  mov   a,$0170+x
09e7: d0 1b     bne   $0a04
09e9: f5 60 01  mov   a,$0160+x
09ec: 60        clrc
09ed: 88 04     adc   a,#$04
09ef: d5 60 01  mov   $0160+x,a
09f2: fd        mov   y,a
09f3: f7 1d     mov   a,($1d)+y
09f5: 68 fe     cmp   a,#$fe
09f7: d0 08     bne   $0a01
09f9: dd        mov   a,y
09fa: fc        inc   y
09fb: fc        inc   y
09fc: 60        clrc
09fd: 97 1d     adc   a,($1d)+y
09ff: 2f ee     bra   $09ef
0a01: d5 70 01  mov   $0170+x,a
0a04: f5 70 01  mov   a,$0170+x
0a07: 68 ff     cmp   a,#$ff
0a09: f0 06     beq   $0a11
0a0b: 80        setc
0a0c: a8 01     sbc   a,#$01
0a0e: d5 70 01  mov   $0170+x,a
0a11: f5 60 01  mov   a,$0160+x
0a14: fd        mov   y,a
0a15: fc        inc   y
0a16: fc        inc   y
0a17: e4 0d     mov   a,$0d
0a19: 60        clrc
0a1a: 97 1d     adc   a,($1d)+y
0a1c: c4 0d     mov   $0d,a
0a1e: fc        inc   y
0a1f: e4 0e     mov   a,$0e
0a21: 97 1d     adc   a,($1d)+y
0a23: c4 0e     mov   $0e,a
0a25: f8 13     mov   x,$13
0a27: e4 0d     mov   a,$0d
0a29: 60        clrc
0a2a: 95 10 01  adc   a,$0110+x
0a2d: c4 0d     mov   $0d,a
0a2f: e4 0e     mov   a,$0e
0a31: 95 11 01  adc   a,$0111+x
0a34: c4 0e     mov   $0e,a
0a36: 6f        ret

0a37: 3f 48 0a  call  $0a48
0a3a: f8 12     mov   x,$12
0a3c: 8d 00     mov   y,#$00
0a3e: dd        mov   a,y
0a3f: d5 60 01  mov   $0160+x,a
0a42: f7 1d     mov   a,($1d)+y
0a44: d5 70 01  mov   $0170+x,a
0a47: 6f        ret

; load table address to $1d/e
0a48: f8 12     mov   x,$12
0a4a: f5 50 01  mov   a,$0150+x         ; index
0a4d: 1c        asl   a
0a4e: fd        mov   y,a
0a4f: f7 0b     mov   a,($0b)+y
0a51: c4 1d     mov   $1d,a
0a53: fc        inc   y
0a54: f7 0b     mov   a,($0b)+y
0a56: c4 1e     mov   $1e,a
0a58: 6f        ret

; write X to dsp reg A (conditional)
0a59: 3f c3 03  call  $03c3
0a5c: 78 00 1f  cmp   $1f,#$00
0a5f: f0 01     beq   $0a62
0a61: 6f        ret

; write X to dsp reg A
0a62: c4 f2     mov   $f2,a
0a64: d8 f3     mov   $f3,x
0a66: 6f        ret

; write X to dsp reg A of voice $14 (conditional)
0a67: 3f c3 03  call  $03c3
0a6a: 78 00 1f  cmp   $1f,#$00
0a6d: f0 01     beq   $0a70
0a6f: 6f        ret

; write X to dsp reg A of voice $14
0a70: 60        clrc
0a71: 84 14     adc   a,$14
0a73: c4 f2     mov   $f2,a
0a75: d8 f3     mov   $f3,x
0a77: 6f        ret

0a78: 8d 00     mov   y,#$00
0a7a: f7 1b     mov   a,($1b)+y         ; vcmd status byte
0a7c: 28 10     and   a,#$10
0a7e: f0 09     beq   $0a89             ; if vbyte & 0x10
0a80: 3f 68 0d  call  $0d68             ;   skip status byte
0a83: 8d 00     mov   y,#$00
0a85: f7 1b     mov   a,($1b)+y         ;   read arg1: note length
0a87: 2f 04     bra   $0a8d             ; else
0a89: f8 12     mov   x,$12
0a8b: f4 6d     mov   a,$6d+x           ;   use default length (set by vcmd fd)
0a8d: f8 12     mov   x,$12
0a8f: d4 8d     mov   $8d+x,a           ; save note length to wait counter
0a91: c4 0e     mov   $0e,a
0a93: e8 00     mov   a,#$00
0a95: c4 0d     mov   $0d,a
0a97: 4b 0e     lsr   $0e
0a99: 6b 0d     ror   $0d
0a9b: 4b 0e     lsr   $0e
0a9d: 6b 0d     ror   $0d
0a9f: 4b 0e     lsr   $0e
0aa1: 6b 0d     ror   $0d               ; $0d/e = len << 5
0aa3: fb 7d     mov   y,$7d+x           ; $7d+x: duration rate (0..8)
0aa5: e4 0d     mov   a,$0d
0aa7: cf        mul   ya
0aa8: cb 0f     mov   $0f,y
0aaa: fb 7d     mov   y,$7d+x
0aac: e4 0e     mov   a,$0e
0aae: cf        mul   ya
0aaf: 60        clrc
0ab0: 84 0f     adc   a,$0f             ; $0f: duration
0ab2: c4 0f     mov   $0f,a             ; len * durRate / 8 if $7d+x === (0..7)
0ab4: f4 8d     mov   a,$8d+x
0ab6: 80        setc
0ab7: a4 0f     sbc   a,$0f
0ab9: 68 00     cmp   a,#$00
0abb: d0 02     bne   $0abf
0abd: e8 01     mov   a,#$01            ; full-length = len - 1
0abf: d4 9d     mov   $9d+x,a           ; save keyoff timing (keyoff when $8d+x == $9d+x)
0ac1: 5f 68 0d  jmp   $0d68

0ac4: 3f 20 08  call  $0820             ; set score pointer to $1b/c
0ac7: 8d 00     mov   y,#$00
0ac9: f7 1b     mov   a,($1b)+y
0acb: 68 ff     cmp   a,#$ff
0acd: f0 0a     beq   $0ad9
0acf: 68 80     cmp   a,#$80
0ad1: 90 25     bcc   $0af8
0ad3: 3f 53 0b  call  $0b53
0ad6: 5f c4 0a  jmp   $0ac4

; vcmd ff - end of track
0ad9: f8 12     mov   x,$12
0adb: f4 2d     mov   a,$2d+x
0add: f0 18     beq   $0af7
0adf: f8 11     mov   x,$11
0ae1: e8 07     mov   a,#$07
0ae3: d5 00 02  mov   $0200+x,a
0ae6: d5 08 02  mov   $0208+x,a
0ae9: f8 12     mov   x,$12
0aeb: e8 00     mov   a,#$00
0aed: d4 2d     mov   $2d+x,a
0aef: f8 13     mov   x,$13
0af1: e8 00     mov   a,#$00
0af3: d4 3d     mov   $3d+x,a
0af5: d4 3e     mov   $3e+x,a
0af7: 6f        ret

; vcmd 00-7f
0af8: 28 0f     and   a,#$0f
0afa: f8 12     mov   x,$12
0afc: d5 00 02  mov   $0200+x,a         ; key: lower 4 bits of note
0aff: 3f 2b 08  call  $082b
0b02: 8d 00     mov   y,#$00
0b04: f7 1b     mov   a,($1b)+y
0b06: 68 fe     cmp   a,#$fe
0b08: d0 04     bne   $0b0e
0b0a: e8 26     mov   a,#$26
0b0c: 2f 02     bra   $0b10
0b0e: e8 00     mov   a,#$00
0b10: f8 12     mov   x,$12
0b12: d4 ad     mov   $ad+x,a
0b14: 6f        ret

; vcmd dispatch table
0b15: dw $0b62  ; e0 - n/a
0b17: dw $0b62  ; e1 - n/a
0b19: dw $0b62  ; e2 - n/a
0b1b: dw $0b62  ; e3 - n/a
0b1d: dw $0b81  ; e4 - transpose
0b1f: dw $0ba8  ; e5 - master volume
0b21: dw $0bb3  ; e6 - echo volume
0b23: dw $0b98  ; e7 - decrease octave
0b25: dw $0ba0  ; e8 - increase octave
0b27: dw $0bd6  ; e9 - repeat break
0b29: dw $0bf3  ; ea - decrease repeat nest level
0b2b: dw $0c01  ; eb - repeat again
0b2d: dw $0c73  ; ec - duration rate
0b2f: dw $0d34  ; ed - write to dsp
0b31: dw $0c4b  ; ee - repeat again w/o break, nesting
0b33: dw $0c7e  ; ef - unknown.2
0b35: dw $0b6f  ; f0 - noise on/off
0b37: dw $0bcb  ; f1 - volume
0b39: dw $0b62  ; f2 - n/a
0b3b: dw $0d2b  ; f3 - master volume fade level
0b3d: dw $0c90  ; f4 - panpot
0b3f: dw $0b62  ; f5 - n/a
0b41: dw $0b62  ; f6 - n/a
0b43: dw $0ca7  ; f7 - ADSR
0b45: dw $0d00  ; f8 - end subroutine
0b47: dw $0ce5  ; f9 - call subroutine
0b49: dw $0cd0  ; fa - goto
0b4b: dw $0cb9  ; fb - unknown.1
0b4d: dw $0c9b  ; fc - instrument
0b4f: dw $0cc5  ; fd - default note length
0b51: dw $0d68  ; fe - nop

0b53: 68 e0     cmp   a,#$e0
0b55: b0 10     bcs   $0b67
0b57: 5d        mov   x,a
0b58: 28 f0     and   a,#$f0
0b5a: 68 80     cmp   a,#$80
0b5c: f0 60     beq   $0bbe
0b5e: 68 90     cmp   a,#$90
0b60: f0 2b     beq   $0b8d

; vcmd a0-df
; vcmd e0-e3,f2,f5,f6
0b62: 5f 80 03  jmp   $0380             ; reset (do not use)

0b65: 2f fb     bra   $0b62

; dispatch vcmd (e0-fe)
0b67: 80        setc
0b68: a8 e0     sbc   a,#$e0
0b6a: 1c        asl   a
0b6b: 5d        mov   x,a
0b6c: 1f 15 0b  jmp   ($0b15+x)

; vcmd f0 - noise on/off
0b6f: f8 11     mov   x,$11
0b71: f5 64 08  mov   a,$0864+x         ; get bitmask for channel $11
0b74: f8 15     mov   x,$15
0b76: 54 19     eor   a,$19+x
0b78: d4 19     mov   $19+x,a
0b7a: 04 16     or    a,$16
0b7c: c4 16     mov   $16,a             ; set NON shadow
0b7e: 5f 68 0d  jmp   $0d68

; vcmd e4 - transpose
0b81: 8d 01     mov   y,#$01
0b83: f7 1b     mov   a,($1b)+y
0b85: f8 12     mov   x,$12
0b87: d5 40 02  mov   $0240+x,a         ; transpose
0b8a: 5f 6c 0d  jmp   $0d6c

; vcmd 90-9f - octave
0b8d: 7d        mov   a,x
0b8e: f8 12     mov   x,$12
; set octave
0b90: 28 07     and   a,#$07
0b92: d5 20 02  mov   $0220+x,a         ; octave = (statusByte & 7)
0b95: 5f 68 0d  jmp   $0d68

; vcmd e7 - decrease octave
0b98: f8 12     mov   x,$12
0b9a: f5 20 02  mov   a,$0220+x
0b9d: 9c        dec   a
0b9e: 2f f0     bra   $0b90
; vcmd e8 - increase octave
0ba0: f8 12     mov   x,$12
0ba2: f5 20 02  mov   a,$0220+x
0ba5: bc        inc   a
0ba6: 2f e8     bra   $0b90
; vcmd e5 - master volume
0ba8: 8d 01     mov   y,#$01
0baa: f7 1b     mov   a,($1b)+y         ; arg1: master volume
0bac: c4 21     mov   $21,a             ; set MVOL(L) shadow
0bae: c4 23     mov   $23,a             ; set MVOL(R) shadow
0bb0: 5f 6c 0d  jmp   $0d6c

; vcmd e6 - echo volume
0bb3: 8d 01     mov   y,#$01
0bb5: f7 1b     mov   a,($1b)+y         ; arg1: echo volume
0bb7: c4 25     mov   $25,a             ; set MVOL(L) shadow
0bb9: c4 27     mov   $27,a             ; set MVOL(R) shadow
0bbb: 5f 6c 0d  jmp   $0d6c

; vcmd 80-8f - volume
0bbe: 7d        mov   a,x
0bbf: 28 0f     and   a,#$0f
0bc1: fd        mov   y,a
0bc2: f7 05     mov   a,($05)+y
0bc4: f8 12     mov   x,$12
0bc6: d4 bd     mov   $bd+x,a
0bc8: 5f 68 0d  jmp   $0d68

; vcmd f1 - volume
0bcb: 8d 01     mov   y,#$01
0bcd: f7 1b     mov   a,($1b)+y
0bcf: f8 12     mov   x,$12
0bd1: d4 bd     mov   $bd+x,a
0bd3: 5f 6c 0d  jmp   $0d6c

; vcmd e9 - repeat break
0bd6: 3f 42 0c  call  $0c42
0bd9: f5 50 02  mov   a,$0250+x
0bdc: 68 01     cmp   a,#$01
0bde: f0 03     beq   $0be3             ; branch if last time
; do nothing
0be0: 5f 68 0d  jmp   $0d68
; repeat break
0be3: f5 60 02  mov   a,$0260+x
0be6: fd        mov   y,a
0be7: f5 70 02  mov   a,$0270+x
0bea: f8 13     mov   x,$13
0bec: d4 3e     mov   $3e+x,a
0bee: dd        mov   a,y
0bef: d4 3d     mov   $3d+x,a           ; goto end address
0bf1: 2f 39     bra   $0c2c             ; repeat end
; vcmd ea - decrease repeat nest level
0bf3: f8 12     mov   x,$12
0bf5: f5 30 02  mov   a,$0230+x
0bf8: 80        setc
0bf9: a8 30     sbc   a,#$30
0bfb: d5 30 02  mov   $0230+x,a
0bfe: 5f 68 0d  jmp   $0d68

; vcmd eb - repeat again
0c01: 3f 42 0c  call  $0c42
0c04: f5 50 02  mov   a,$0250+x
0c07: f0 23     beq   $0c2c
0c09: 10 07     bpl   $0c12
; repeat start
0c0b: 8d 01     mov   y,#$01
0c0d: f7 1b     mov   a,($1b)+y
0c0f: d5 50 02  mov   $0250+x,a
; decrease repeat count
0c12: f5 50 02  mov   a,$0250+x
0c15: 80        setc
0c16: a8 01     sbc   a,#$01            ; decrease repeat count
0c18: d5 50 02  mov   $0250+x,a
0c1b: f0 0f     beq   $0c2c             ; end repeat if 0
; repeat again
0c1d: e4 1b     mov   a,$1b
0c1f: d5 60 02  mov   $0260+x,a
0c22: e4 1c     mov   a,$1c
0c24: d5 70 02  mov   $0270+x,a         ; save repeat end address
0c27: 8d 02     mov   y,#$02
0c29: 5f d2 0c  jmp   $0cd2             ; goto
; repeat end
0c2c: 3f 42 0c  call  $0c42
0c2f: e8 80     mov   a,#$80
0c31: d5 50 02  mov   $0250+x,a
0c34: f8 12     mov   x,$12
0c36: f5 30 02  mov   a,$0230+x
0c39: 60        clrc
0c3a: 88 30     adc   a,#$30            ; 6 bytes * 8 tracks?
0c3c: d5 30 02  mov   $0230+x,a         ; add nest offset
0c3f: 5f 74 0d  jmp   $0d74

0c42: f8 12     mov   x,$12             ; repeat nest offset
0c44: 7d        mov   a,x
0c45: 60        clrc
0c46: 95 30 02  adc   a,$0230+x
0c49: 5d        mov   x,a               ; x = $0230+x + nest_offset
0c4a: 6f        ret

; vcmd ee - repeat again w/o break, nesting
0c4b: f8 12     mov   x,$12
0c4d: f5 50 02  mov   a,$0250+x
0c50: f0 19     beq   $0c6b
0c52: 10 07     bpl   $0c5b
; repeat start
0c54: 8d 01     mov   y,#$01
0c56: f7 1b     mov   a,($1b)+y
0c58: d5 50 02  mov   $0250+x,a         ; set repeat count
; decrease repeat count
0c5b: f5 50 02  mov   a,$0250+x
0c5e: 80        setc
0c5f: a8 01     sbc   a,#$01            ; decrease repeat count
0c61: d5 50 02  mov   $0250+x,a
0c64: f0 05     beq   $0c6b             ; end repeat if 0
; repeat again
0c66: 8d 02     mov   y,#$02
0c68: 5f d2 0c  jmp   $0cd2             ; goto
; repeat end
0c6b: e8 80     mov   a,#$80
0c6d: d5 50 02  mov   $0250+x,a
0c70: 5f 74 0d  jmp   $0d74

; vcmd ec - duration rate
0c73: 8d 01     mov   y,#$01
0c75: f7 1b     mov   a,($1b)+y
0c77: f8 12     mov   x,$12
0c79: d4 7d     mov   $7d+x,a           ; duration rate (0..7)
0c7b: 5f 6c 0d  jmp   $0d6c

; vcmd ef
0c7e: 8d 01     mov   y,#$01
0c80: f8 13     mov   x,$13
0c82: f7 1b     mov   a,($1b)+y
0c84: d5 10 01  mov   $0110+x,a
0c87: fc        inc   y
0c88: f7 1b     mov   a,($1b)+y
0c8a: d5 11 01  mov   $0111+x,a
0c8d: 5f 70 0d  jmp   $0d70

; vcmd f4 - panpot
0c90: 8d 01     mov   y,#$01
0c92: f7 1b     mov   a,($1b)+y
0c94: f8 12     mov   x,$12
0c96: d4 cd     mov   $cd+x,a
0c98: 5f 6c 0d  jmp   $0d6c

; vcmd fc - instrument
0c9b: 8d 01     mov   y,#$01
0c9d: f7 1b     mov   a,($1b)+y
0c9f: f8 12     mov   x,$12
0ca1: d5 10 02  mov   $0210+x,a         ; set SRCN shadow
0ca4: 5f 6c 0d  jmp   $0d6c

; vcmd f7 - ADSR
0ca7: 8d 01     mov   y,#$01
0ca9: f8 13     mov   x,$13
0cab: f7 1b     mov   a,($1b)+y         ; arg1: ADSR(2)
0cad: d5 30 01  mov   $0130+x,a
0cb0: fc        inc   y
0cb1: f7 1b     mov   a,($1b)+y         ; arg2: ADSR(1)
0cb3: d5 31 01  mov   $0131+x,a
0cb6: 5f 70 0d  jmp   $0d70

; vcmd fb
0cb9: 8d 01     mov   y,#$01
0cbb: f7 1b     mov   a,($1b)+y
0cbd: f8 12     mov   x,$12
0cbf: d5 50 01  mov   $0150+x,a
0cc2: 5f 6c 0d  jmp   $0d6c

; vcmd fd - default note length
0cc5: 8d 01     mov   y,#$01
0cc7: f7 1b     mov   a,($1b)+y
0cc9: f8 12     mov   x,$12
0ccb: d4 6d     mov   $6d+x,a
0ccd: 5f 6c 0d  jmp   $0d6c

; vcmd fa - goto
; note: $1b/c won't be changed
0cd0: 8d 01     mov   y,#$01
0cd2: f7 1b     mov   a,($1b)+y
0cd4: 60        clrc
0cd5: 84 1b     adc   a,$1b
0cd7: 2d        push  a
0cd8: fc        inc   y
0cd9: f7 1b     mov   a,($1b)+y         ; arg1/2: destination offset
0cdb: 84 1c     adc   a,$1c             ; relative offset to address
0cdd: f8 13     mov   x,$13
0cdf: d4 3e     mov   $3e+x,a
0ce1: ae        pop   a
0ce2: d4 3d     mov   $3d+x,a           ; update address
0ce4: 6f        ret

; vcmd f9 - call subroutine
0ce5: 3f d0 0c  call  $0cd0             ; goto
0ce8: 3f 17 0d  call  $0d17             ; prepare stack access
0ceb: e4 1b     mov   a,$1b
0ced: 60        clrc
0cee: 88 03     adc   a,#$03
0cf0: d7 0d     mov   ($0d)+y,a
0cf2: e4 1c     mov   a,$1c
0cf4: 88 00     adc   a,#$00
0cf6: fc        inc   y
0cf7: d7 0d     mov   ($0d)+y,a         ; push return address
0cf9: f8 12     mov   x,$12
0cfb: bb 5d     inc   $5d+x
0cfd: bb 5d     inc   $5d+x             ; increase stack pointer
0cff: 6f        ret

; vcmd f8 - end subroutine
0d00: 3f 17 0d  call  $0d17             ; prepare stack access
0d03: dc        dec   y
0d04: dc        dec   y
0d05: f8 13     mov   x,$13
0d07: f7 0d     mov   a,($0d)+y
0d09: d4 3d     mov   $3d+x,a
0d0b: fc        inc   y
0d0c: f7 0d     mov   a,($0d)+y         ; pop return address
0d0e: d4 3e     mov   $3e+x,a
0d10: f8 12     mov   x,$12
0d12: 9b 5d     dec   $5d+x
0d14: 9b 5d     dec   $5d+x             ; decrease stack pointer
0d16: 6f        ret

; prepare stack access
0d17: e4 12     mov   a,$12
0d19: 1c        asl   a
0d1a: 1c        asl   a
0d1b: 60        clrc
0d1c: 88 80     adc   a,#$80
0d1e: c4 0d     mov   $0d,a
0d20: e8 01     mov   a,#$01
0d22: 88 00     adc   a,#$00
0d24: c4 0e     mov   $0e,a
0d26: f8 12     mov   x,$12
0d28: fb 5d     mov   y,$5d+x
0d2a: 6f        ret

; vcmd f3 - master volume fade level
0d2b: 8d 01     mov   y,#$01
0d2d: f7 1b     mov   a,($1b)+y
0d2f: c4 2a     mov   $2a,a
0d31: 5f 6c 0d  jmp   $0d6c

; vcmd ed - write to dsp
0d34: 8d 01     mov   y,#$01
0d36: f7 1b     mov   a,($1b)+y         ; arg1: dsp register
0d38: 5d        mov   x,a
0d39: fc        inc   y
0d3a: f7 1b     mov   a,($1b)+y         ; arg2: new value
0d3c: 3f 59 0a  call  $0a59             ; update dsp reg
0d3f: 2d        push  a
0d40: 4d        push  x
0d41: 3f 70 0d  call  $0d70
0d44: ce        pop   x
0d45: ae        pop   a
0d46: 68 6d     cmp   a,#$6d            ; ESA
0d48: f0 01     beq   $0d4b
0d4a: 6f        ret

0d4b: e8 00     mov   a,#$00
0d4d: c4 00     mov   $00,a
0d4f: d8 01     mov   $01,x
0d51: 8d 00     mov   y,#$00
0d53: e8 00     mov   a,#$00
0d55: d7 00     mov   ($00)+y,a
0d57: fc        inc   y
0d58: d7 00     mov   ($00)+y,a
0d5a: fc        inc   y
0d5b: d7 00     mov   ($00)+y,a
0d5d: fc        inc   y
0d5e: d7 00     mov   ($00)+y,a
0d60: fc        inc   y
0d61: d0 f2     bne   $0d55
0d63: ab 01     inc   $01
0d65: d0 ea     bne   $0d51
0d67: 6f        ret

; vcmd fe - nop
; score pointer += 1
0d68: e8 01     mov   a,#$01
0d6a: 2f 0a     bra   $0d76
; score pointer += 2
0d6c: e8 02     mov   a,#$02
0d6e: 2f 06     bra   $0d76
; score pointer += 3
0d70: e8 03     mov   a,#$03
0d72: 2f 02     bra   $0d76
; score pointer += 4
0d74: e8 04     mov   a,#$04
; advance score pointer (A bytes)
0d76: f8 13     mov   x,$13
0d78: 60        clrc
0d79: 94 3d     adc   a,$3d+x
0d7b: d4 3d     mov   $3d+x,a
0d7d: c4 1b     mov   $1b,a
0d7f: 90 04     bcc   $0d85
0d81: bb 3e     inc   $3e+x
0d83: ab 1c     inc   $1c
0d85: 6f        ret

; volume balance table (linear, percentage)
0e18: db $64,$64      ; 100% (approx 100.0%; 15/15)
0e1a: db $5d,$64      ;  93% (approx  93.3%; 14/15)
0e1c: db $57,$64      ;  87% (approx  86.6%; 13/15)
0e1e: db $50,$64      ;  80% (approx  80.0%; 12/15)
0e20: db $49,$64      ;  73% (approx  73.3%; 11/15)
0e22: db $43,$64      ;  67% (approx  66.6%; 10/15)
0e24: db $3c,$64      ;  60% (approx  60.0%;  9/15)
0e26: db $35,$64      ;  53% (approx  53.3%;  8/15)
0e28: db $2f,$64      ;  47% (approx  46.6%;  7/15)
0e2a: db $28,$64      ;  40% (approx  40.0%;  6/15)
0e2c: db $21,$64      ;  33% (approx  33.3%;  5/15)
0e2e: db $1b,$64      ;  27% (approx  26.6%;  4/15)
0e30: db $14,$64      ;  20% (approx  20.0%;  3/15)
0e32: db $0d,$64      ;  13% (approx  13.3%;  2/15)
0e34: db $06,$64      ;   6% (approx   6.6%;  1/15)
0e36: db $01,$64      ;   1% (approx   0.0%;  0/15)

0e38: dw $1305  ; c
0e3a: dw $1426  ; c+
0e3c: dw $1559  ; d
0e3e: dw $169f  ; d+
0e40: dw $17f7  ; e
0e42: dw $1964  ; f
0e44: dw $1ae6  ; f+
0e46: dw $1c80  ; g
0e48: dw $1e32  ; g+
0e4a: dw $2000  ; a
0e4c: dw $21e5  ; a+
0e4e: dw $23ea  ; b
0e50: dw $260a  ; c
0e52: dw $284d  ; c+
0e54: dw $2ab3  ; d
0e56: dw $2d3e  ; d+
0e58: dw $2fef  ; e
0e5a: dw $32c8  ; f
0e5c: dw $35cd  ; f+
0e5e: dw $3901  ; g
0e60: dw $3c65  ; g+
0e62: dw $4000  ; a
0e64: dw $43ca  ; a+
0e66: dw $47d4  ; b
0e68: dw $4c14  ; c
0e6a: dw $509a  ; c+
0e6c: dw $5566  ; d
0e6e: dw $5a7c  ; d+
0e70: dw $5fde  ; e
0e72: dw $6590  ; f
0e74: dw $6b9a  ; f+
0e76: dw $7202  ; g
0e78: dw $78ca  ; g+
0e7a: dw $8000  ; a
0e7c: dw $8794  ; a+
0e7e: dw $8fa8  ; b
0e80: dw $9828  ; c
0e82: dw $a134  ; c+
0e84: dw $aacc  ; d
0e86: dw $b4f8  ; d+
0e88: dw $bfbc  ; e
0e8a: dw $cb20  ; f
0e8c: dw $d734  ; f+
0e8e: dw $e404  ; g
0e90: dw $f194  ; g+

0e92: dw $0eac
0e94: dw $0eb0
0e96: dw $0eb4
0e98: dw $0ef0
0e9a: dw $0ef4
0e9c: dw $0f30
0e9e: dw $0f34
0ea0: dw $0f60
0ea2: dw $0f64
0ea4: dw $0f90
0ea6: dw $0f94
0ea8: dw $0fc0
0eaa: dw $0ffc
