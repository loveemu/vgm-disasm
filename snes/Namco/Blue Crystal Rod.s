; update voice volume regs
0548: f8 de     mov   x,$de
0549: f4 11     mov   a,$11+x           ; master volume
054c: fd        mov   y,a
054d: f8 df     mov   x,$df
054f: f5 20 02  mov   a,$0220+x         ; voice volume
0552: cf        mul   ya
0553: e4 d4     mov   a,$d4
0555: f0 1a     beq   $0571
; mono
0557: f5 40 02  mov   a,$0240+x
055a: 28 0f     and   a,#$0f
055c: c4 42     mov   $42,a
055e: f5 40 02  mov   a,$0240+x
0561: 9f        xcn   a
0562: 28 0f     and   a,#$0f
0564: 60        clrc
0565: 84 42     adc   a,$42
0567: 1c        asl   a
0568: 1c        asl   a
0569: 1c        asl   a
056a: cf        mul   ya
056b: cb 3d     mov   $3d,y
056d: cb 3c     mov   $3c,y
056f: 2f 1e     bra   $058f
; stereo
0571: cb 3c     mov   $3c,y
0573: f5 40 02  mov   a,$0240+x
0576: 28 f0     and   a,#$f0
0578: cf        mul   ya
0579: cb 3d     mov   $3d,y             ; volL = y * ($0240+x & 0xf0)
057b: f5 40 02  mov   a,$0240+x
057e: 28 0f     and   a,#$0f
0580: 9f        xcn   a
0581: eb 3c     mov   y,$3c
0583: cf        mul   ya
0584: cb 3c     mov   $3c,y             ; volR = y * ($0240+x << 4)
0586: 6f        ret

; set dsp reg base for channel $df to $d2
0587: e4 df     mov   a,$df
0589: 28 07     and   a,#$07
058b: 9f        xcn   a
058c: c4 d2     mov   $d2,a
058e: 6f        ret

058f: eb d2     mov   y,$d2
0591: e4 3d     mov   a,$3d
0593: 5c        lsr   a                 ; 8 bits -> 7 bits
0594: 3f 65 0c  call  $0c65             ; set VOL(L)
0597: fc        inc   y
0598: e4 3c     mov   a,$3c
059a: 5c        lsr   a                 ; 8 bits -> 7 bits
059b: 3f 65 0c  call  $0c65             ; set VOL(R)
059e: 6f        ret

; write pitch $40/1 to dsp
059f: e4 40     mov   a,$40
05a1: 3f 65 0c  call  $0c65             ; set P(L)
05a4: fc        inc   y
05a5: e4 41     mov   a,$41
05a7: 3f 65 0c  call  $0c65             ; set P(H)
05aa: f8 df     mov   x,$df
05ac: f5 00 02  mov   a,$0200+x
05af: fc        inc   y
05b0: 3f 65 0c  call  $0c65             ; set SRCN
05b3: 6f        ret

05b4: e5 00 f0  mov   a,$f000
05b7: c4 42     mov   $42,a
05b9: e5 01 f0  mov   a,$f001
05bc: c4 43     mov   $43,a             ; ADSR envelope pointer table ($f000/1)
05be: f5 40 03  mov   a,$0340+x         ; envelope index
05c1: 1c        asl   a
05c2: fd        mov   y,a
05c3: f7 42     mov   a,($42)+y
05c5: c4 3a     mov   $3a,a
05c7: fc        inc   y
05c8: f7 42     mov   a,($42)+y
05ca: c4 3b     mov   $3b,a             ; set envelope pointer
05cc: 6f        ret

05cd: c4 39     mov   $39,a
05cf: e4 d2     mov   a,$d2
05d1: 08 05     or    a,#$05
05d3: fd        mov   y,a
05d4: e4 39     mov   a,$39
05d6: 3f 65 0c  call  $0c65             ; set ADSR(1)
05d9: 3a 3a     incw  $3a
05db: e7 3a     mov   a,($3a+x)
05dd: fc        inc   y
05de: 3f 65 0c  call  $0c65             ; set ADSR(2)
05e1: f8 df     mov   x,$df
05e3: e8 00     mov   a,#$00
05e5: d4 90     mov   $90+x,a
05e7: d5 00 05  mov   $0500+x,a
05ea: 6f        ret

05eb: 8d 00     mov   y,#$00
05ed: fd        mov   y,a
05ee: cf        mul   ya
05ef: f8 df     mov   x,$df
05f1: d5 00 05  mov   $0500+x,a
05f4: dd        mov   a,y
05f5: 8d 01     mov   y,#$01
05f7: db 90     mov   $90+x,y
05f9: 77 3a     cmp   a,($3a)+y
05fb: 90 04     bcc   $0601
05fd: f7 3a     mov   a,($3a)+y
05ff: bb 90     inc   $90+x
0601: c4 39     mov   $39,a
0603: e4 d2     mov   a,$d2
0605: 08 05     or    a,#$05
0607: fd        mov   y,a
0608: e4 39     mov   a,$39
060a: 3f 65 0c  call  $0c65             ; set ADSR(1)
060d: fc        inc   y
060e: fc        inc   y
060f: 3f 65 0c  call  $0c65             ; set GAIN
0612: 6f        ret

0613: f5 00 05  mov   a,$0500+x
0616: c4 3c     mov   $3c,a
0618: e4 d2     mov   a,$d2
061a: 08 08     or    a,#$08
061c: 3f 6a 0c  call  $0c6a             ; get ENVX
061f: c4 3d     mov   $3d,a
0621: fb 90     mov   y,$90+x
0623: dc        dec   y
0624: f7 3a     mov   a,($3a)+y
0626: 68 f0     cmp   a,#$f0
0628: b0 47     bcs   $0671
062a: fd        mov   y,a
062b: cf        mul   ya
062c: da 3e     movw  $3e,ya
062e: fb 90     mov   y,$90+x
0630: f7 3a     mov   a,($3a)+y
0632: c4 39     mov   $39,a
0634: ba 3c     movw  ya,$3c
0636: 7e 39     cmp   y,$39
0638: f0 20     beq   $065a
063a: b0 0a     bcs   $0646
063c: 7a 3e     addw  ya,$3e
063e: 30 12     bmi   $0652
0640: 7e 39     cmp   y,$39
0642: b0 0e     bcs   $0652
0644: 2f 14     bra   $065a
0646: 9a 3e     subw  ya,$3e
0648: b0 08     bcs   $0652
064a: 7e 39     cmp   y,$39
064c: f0 04     beq   $0652
064e: 90 02     bcc   $0652
0650: 2f 08     bra   $065a
0652: eb 39     mov   y,$39
0654: e8 00     mov   a,#$00
0656: bb 90     inc   $90+x
0658: bb 90     inc   $90+x
065a: d5 00 05  mov   $0500+x,a
065d: cb 39     mov   $39,y
065f: e4 d2     mov   a,$d2
0661: 08 07     or    a,#$07
0663: fd        mov   y,a
0664: e4 39     mov   a,$39
0666: 3f 65 0c  call  $0c65             ; set GAIN
0669: dc        dec   y
066a: dc        dec   y
066b: e8 7f     mov   a,#$7f
066d: 3f 65 0c  call  $0c65             ; set ADSR(1)
0670: 6f        ret

0671: 28 0f     and   a,#$0f
0673: f0 0d     beq   $0682
0675: 68 04     cmp   a,#$04
0677: f0 0a     beq   $0683
0679: f5 60 02  mov   a,$0260+x
067c: f0 04     beq   $0682
067e: 74 b0     cmp   a,$b0+x
0680: 90 0a     bcc   $068c
0682: 6f        ret

0683: fc        inc   y
0684: f7 3a     mov   a,($3a)+y
0686: fd        mov   y,a
0687: bc        inc   a
0688: d4 90     mov   $90+x,a
068a: 2f 98     bra   $0624
068c: fc        inc   y
068d: fc        inc   y
068e: f7 3a     mov   a,($3a)+y
0690: c4 39     mov   $39,a
0692: db 90     mov   $90+x,y
0694: f7 3a     mov   a,($3a)+y
0696: fd        mov   y,a
0697: cf        mul   ya
0698: da 3e     movw  $3e,ya
069a: ba 3c     movw  ya,$3c
069c: 5f 46 06  jmp   $0646

069f: e4 d2     mov   a,$d2
06a1: 08 08     or    a,#$08
06a3: 3f 6a 0c  call  $0c6a             ; get ENVX
06a6: d0 01     bne   $06a9
06a8: 6f        ret

; case ENVX=0
06a9: f8 df     mov   x,$df
06ab: c4 39     mov   $39,a
06ad: f4 90     mov   a,$90+x
06af: f0 13     beq   $06c4
06b1: 3f b4 05  call  $05b4
06b4: f4 90     mov   a,$90+x
06b6: fd        mov   y,a
06b7: dc        dec   y
06b8: fc        inc   y
06b9: f7 3a     mov   a,($3a)+y
06bb: 68 f2     cmp   a,#$f2
06bd: d0 f9     bne   $06b8
06bf: db 90     mov   $90+x,y
06c1: fc        inc   y
06c2: 2f 05     bra   $06c9
06c4: 3f b4 05  call  $05b4
06c7: 8d 02     mov   y,#$02
06c9: f7 3a     mov   a,($3a)+y
06cb: 08 a0     or    a,#$a0
06cd: 5d        mov   x,a
06ce: e4 d2     mov   a,$d2
06d0: 08 07     or    a,#$07
06d2: fd        mov   y,a
06d3: 7d        mov   a,x
06d4: 3f 65 0c  call  $0c65             ; set GAIN
06d7: dc        dec   y
06d8: dc        dec   y
06d9: e8 00     mov   a,#$00
06db: 3f 65 0c  call  $0c65             ; set ADSR(1)
06de: 6f        ret

06df: da 3a     movw  $3a,ya
06e1: eb df     mov   y,$df
06e3: 3f 59 0c  call  $0c59
06e6: c4 38     mov   $38,a             ; for i = 0, 7 do
06e8: 0b 38     asl   $38
06ea: 90 05     bcc   $06f1             ;   if arg1 & (0x80 >> i) then
06ec: 3f 5c 0c  call  $0c5c             ;     read next byte, save it to ($3a)+y
06ef: d7 3a     mov   ($3a)+y,a         ;   end
06f1: fc        inc   y                 ;   y = y + 1
06f2: e4 38     mov   a,$38
06f4: d0 f2     bne   $06e8             ; repeat for all '1' bits
06f6: 6f        ret

06f7: f4 09     mov   a,$09+x
06f9: c4 dd     mov   $dd,a
06fb: f8 df     mov   x,$df
06fd: 0b dd     asl   $dd
06ff: 90 28     bcc   $0729
0701: e8 00     mov   a,#$00
0703: d5 e0 04  mov   $04e0+x,a
0706: d5 c0 03  mov   $03c0+x,a
0709: d5 a0 04  mov   $04a0+x,a
070c: d5 e0 03  mov   $03e0+x,a
070f: d5 00 04  mov   $0400+x,a
0712: d5 20 04  mov   $0420+x,a
0715: d5 40 04  mov   $0440+x,a
0718: d4 70     mov   $70+x,a
071a: e8 88     mov   a,#$88
071c: d5 a0 03  mov   $03a0+x,a
071f: d5 80 03  mov   $0380+x,a
0722: e8 54     mov   a,#$54
0724: d5 c0 04  mov   $04c0+x,a
0727: d4 50     mov   $50+x,a
0729: 3d        inc   x
072a: e4 dd     mov   a,$dd
072c: d0 cf     bne   $06fd
072e: 6f        ret

; vcmd 03 - end subroutine
072f: f8 de     mov   x,$de
0731: f4 19     mov   a,$19+x           ; check the higher byte of return address
0733: f0 0d     beq   $0742
; if return address is set, return from subroutine
0735: d4 01     mov   $01+x,a
0737: f4 18     mov   a,$18+x
0739: d4 00     mov   $00+x,a
073b: e8 00     mov   a,#$00
073d: d4 19     mov   $19+x,a
073f: 5f f3 09  jmp   $09f3
; if return address is not set, end of track
0742: 3f 50 07  call  $0750
0745: e8 00     mov   a,#$00
0747: d4 09     mov   $09+x,a
0749: d4 49     mov   $49+x,a
074b: d4 30     mov   $30+x,a
074d: 5f af 09  jmp   $09af

0750: f8 de     mov   x,$de
0752: e4 da     mov   a,$da
0754: 48 ff     eor   a,#$ff
0756: 34 09     and   a,$09+x
0758: 8f 00 dd  mov   $dd,#$00
075b: 8d 08     mov   y,#$08
075d: 5c        lsr   a
075e: 2b dd     rol   $dd
0760: fe fb     dbnz  y,$075d
0762: 8d 5c     mov   y,#$5c
0764: e4 dd     mov   a,$dd
0766: 3f 65 0c  call  $0c65             ; set KOF
0769: 6f        ret

076a: 5d        mov   x,a
076b: e8 0c     mov   a,#$0c
076d: 3f 6a 0c  call  $0c6a             ; get MVOL(L)
0770: f0 28     beq   $079a
0772: c4 3b     mov   $3b,a
0774: 7d        mov   a,x
0775: 10 0e     bpl   $0785
0777: 28 7f     and   a,#$7f
0779: bc        inc   a
077a: c4 3c     mov   $3c,a
077c: e4 3b     mov   a,$3b
077e: 80        setc
077f: a4 3c     sbc   a,$3c
0781: b0 0d     bcs   $0790
0783: 2f 15     bra   $079a
0785: 60        clrc
0786: 84 d3     adc   a,$d3
0788: c4 d3     mov   $d3,a
078a: b0 01     bcs   $078d
078c: 6f        ret

078d: e4 3b     mov   a,$3b
078f: 9c        dec   a
0790: 8d 0c     mov   y,#$0c
0792: 3f 65 0c  call  $0c65             ; set MVOL(L)
0795: 8d 1c     mov   y,#$1c
0797: 5f 65 0c  jmp   $0c65             ; set MVOL(R)

079a: 8f 00 d1  mov   $d1,#$00
079d: e8 ff     mov   a,#$ff
079f: 8d 5c     mov   y,#$5c
07a1: 3f 65 0c  call  $0c65             ; set KOF
07a4: e8 00     mov   a,#$00
07a6: c4 49     mov   $49,a
07a8: c4 4b     mov   $4b,a
07aa: c4 4d     mov   $4d,a
07ac: c4 4f     mov   $4f,a
07ae: 6f        ret

07af: db $01,$02,$04,$08,$10,$20,$40,$80

; pitch table
07b7: dw $105a  ; c
07b9: dw $1153  ; c#
07bb: dw $125b  ; d
07bd: dw $1372  ; d#
07bf: dw $149a  ; e
07c1: dw $15d4  ; f
07c3: dw $1720  ; f#
07c5: dw $1880  ; g
07c7: dw $19f5  ; g#
07c9: dw $1b80  ; a
07cb: dw $1d23  ; a#
07cd: dw $1ede  ; b
07cf: dw $20b4  ; c'


0800: 20        clrp
0801: 8f 30 f1  mov   $f1,#$30
0804: 8f 86 fa  mov   $fa,#$86          ; timer 0 = 1.675 ms
0807: 8f 01 f1  mov   $f1,#$01
080a: e8 00     mov   a,#$00
080c: 5d        mov   x,a
080d: af        mov   (x)+,a
080e: c8 f0     cmp   x,#$f0
0810: d0 fb     bne   $080d
0812: cd cf     mov   x,#$cf
0814: bd        mov   sp,x
0815: e8 ff     mov   a,#$ff
0817: 8d 5c     mov   y,#$5c
0819: 3f 65 0c  call  $0c65             ; set KOF
081c: cd 00     mov   x,#$00
081e: f5 41 0c  mov   a,$0c41+x
0821: fd        mov   y,a
0822: 3d        inc   x
0823: f5 41 0c  mov   a,$0c41+x
0826: 3f 65 0c  call  $0c65             ; reset DSP
0829: 3d        inc   x
082a: c8 18     cmp   x,#$18
082c: d0 f0     bne   $081e
082e: 8f 02 47  mov   $47,#$02
0831: 3f 8e 09  call  $098e
0834: e4 f4     mov   a,$f4
0836: 64 f4     cmp   a,$f4
0838: d0 fa     bne   $0834
083a: 64 48     cmp   a,$48
083c: d0 0f     bne   $084d
083e: e5 fd 00  mov   a,$00fd
0841: f0 f1     beq   $0834
0843: e4 db     mov   a,$db
0845: 8d 4c     mov   y,#$4c
0847: 3f 65 0c  call  $0c65             ; set KON
084a: 5f 95 09  jmp   $0995

084d: 8f 01 f4  mov   $f4,#$01
0850: c4 f5     mov   $f5,a
0852: c4 48     mov   $48,a
0854: 1c        asl   a
0855: 68 14     cmp   a,#$14
0857: b0 d8     bcs   $0831
0859: 5d        mov   x,a
085a: 1f 5d 08  jmp   ($085d+x)

085d: dw $0831  ; 00
085f: dw $0898  ; 01
0861: dw $08de  ; 02
0863: dw $0831  ; 03
0865: dw $087a  ; 04
0867: dw $0883  ; 05
0869: dw $0890  ; 06
086b: dw $088a  ; 07
086d: dw $08fa  ; 08
086f: dw $0871  ; 09

0871: 8d 00     mov   y,#$00
0873: f7 f6     mov   a,($f6)+y
0875: c4 f7     mov   $f7,a
0877: 5f 31 08  jmp   $0831

087a: e4 f6     mov   a,$f6
087c: c4 d3     mov   $d3,a
087e: c4 d1     mov   $d1,a
0880: 5f 31 08  jmp   $0831

0883: e4 f5     mov   a,$f5
0885: c4 d4     mov   $d4,a
0887: 5f 31 08  jmp   $0831

088a: 8f 00 d5  mov   $d5,#$00
088d: 5f 31 08  jmp   $0831

0890: 8f ff d5  mov   $d5,#$ff
0893: 8d 5c     mov   y,#$5c
0895: 3f 65 0c  call  $0c65             ; set KOF
0898: e4 f5     mov   a,$f5
089a: c4 38     mov   $38,a
089c: c4 f6     mov   $f6,a
089e: 3f 8e 09  call  $098e
08a1: e4 d1     mov   a,$d1
08a3: f0 03     beq   $08a8
08a5: 3f 9a 07  call  $079a
08a8: e4 38     mov   a,$38
08aa: 8d 03     mov   y,#$03
08ac: cf        mul   ya
08ad: fd        mov   y,a
08ae: f6 08 f0  mov   a,$f008+y         ; offset 0: slot number?
08b1: 1c        asl   a
08b2: 5d        mov   x,a
08b3: e4 38     mov   a,$38
08b5: d4 49     mov   $49+x,a           ; song number
08b7: f6 09 f0  mov   a,$f009+y
08ba: d4 00     mov   $00+x,a
08bc: f6 0a f0  mov   a,$f00a+y         ; offset 1-2: song start address?
08bf: d4 01     mov   $01+x,a           ; set vcmd read ptr from song list (starting from $f009)
08c1: e8 00     mov   a,#$00
08c3: d4 19     mov   $19+x,a
08c5: d4 20     mov   $20+x,a
08c7: d4 21     mov   $21+x,a
08c9: d4 30     mov   $30+x,a
08cb: d4 29     mov   $29+x,a
08cd: d4 28     mov   $28+x,a
08cf: e8 60     mov   a,#$60
08d1: 8d 0c     mov   y,#$0c
08d3: 3f 65 0c  call  $0c65             ; set MVOL(L)
08d6: 8d 1c     mov   y,#$1c
08d8: 3f 65 0c  call  $0c65             ; set MVOL(R)
08db: 5f 34 08  jmp   $0834

08de: e4 f5     mov   a,$f5
08e0: c4 f6     mov   $f6,a
08e2: 30 10     bmi   $08f4
08e4: 8d 03     mov   y,#$03
08e6: cf        mul   ya
08e7: fd        mov   y,a
08e8: f6 08 f0  mov   a,$f008+y
08eb: 1c        asl   a
08ec: 5d        mov   x,a
08ed: e8 00     mov   a,#$00
08ef: d4 49     mov   $49+x,a
08f1: 5f 31 08  jmp   $0831

08f4: 3f 9d 07  call  $079d
08f7: 5f 31 08  jmp   $0831

08fa: 8f 6c f2  mov   $f2,#$6c
08fd: 8f 20 f3  mov   $f3,#$20
0900: 8f 2c f2  mov   $f2,#$2c
0903: 8f 00 f3  mov   $f3,#$00
0906: 8f 3c f2  mov   $f2,#$3c
0909: 8f 00 f3  mov   $f3,#$00
090c: 3f 9a 07  call  $079a
090f: 8f 01 f4  mov   $f4,#$01
0912: 78 01 f4  cmp   $f4,#$01
0915: d0 fb     bne   $0912
0917: fa f6 38  mov   ($38),($f6)
091a: fa f7 39  mov   ($39),($f7)
091d: 8f 81 f4  mov   $f4,#$81
0920: 78 81 f4  cmp   $f4,#$81
0923: d0 fb     bne   $0920
0925: fa f6 3c  mov   ($3c),($f6)
0928: fa f7 3d  mov   ($3d),($f7)
092b: 8f 01 f4  mov   $f4,#$01
092e: cd 00     mov   x,#$00
0930: e4 f4     mov   a,$f4
0932: 30 fc     bmi   $0930
0934: e4 f5     mov   a,$f5
0936: c7 38     mov   ($38+x),a
0938: ba f6     movw  ya,$f6
093a: 8f 81 f4  mov   $f4,#$81
093d: 1a 3c     decw  $3c
093f: f0 37     beq   $0978
0941: 3a 38     incw  $38
0943: c7 38     mov   ($38+x),a
0945: 1a 3c     decw  $3c
0947: f0 2f     beq   $0978
0949: 3a 38     incw  $38
094b: dd        mov   a,y
094c: c7 38     mov   ($38+x),a
094e: 1a 3c     decw  $3c
0950: f0 26     beq   $0978
0952: 3a 38     incw  $38
0954: e4 f4     mov   a,$f4
0956: 10 fc     bpl   $0954
0958: e4 f5     mov   a,$f5
095a: c7 38     mov   ($38+x),a
095c: ba f6     movw  ya,$f6
095e: 8f 01 f4  mov   $f4,#$01
0961: 1a 3c     decw  $3c
0963: f0 13     beq   $0978
0965: 3a 38     incw  $38
0967: c7 38     mov   ($38+x),a
0969: 1a 3c     decw  $3c
096b: f0 0b     beq   $0978
096d: 3a 38     incw  $38
096f: dd        mov   a,y
0970: c7 38     mov   ($38+x),a
0972: 3a 38     incw  $38
0974: 1a 3c     decw  $3c
0976: d0 b8     bne   $0930
0978: e4 f4     mov   a,$f4
097a: d0 fc     bne   $0978
097c: c4 48     mov   $48,a
097e: 3f 8e 09  call  $098e
0981: e4 f4     mov   a,$f4
0983: 64 f4     cmp   a,$f4
0985: d0 fa     bne   $0981
0987: 64 48     cmp   a,$48
0989: f0 f6     beq   $0981
098b: 5f 4d 08  jmp   $084d

098e: fa 47 f4  mov   ($f4),($47)
0991: 58 80 47  eor   $47,#$80
0994: 6f        ret

0995: cd 00     mov   x,#$00
0997: d8 df     mov   $df,x
0999: d8 da     mov   $da,x
099b: d8 db     mov   $db,x
099d: d8 dc     mov   $dc,x
099f: f4 49     mov   a,$49+x
09a1: c4 d6     mov   $d6,a
09a3: d8 de     mov   $de,x
09a5: f0 05     beq   $09ac
09a7: 10 4a     bpl   $09f3
09a9: 5f 96 0b  jmp   $0b96

09ac: 5f 42 07  jmp   $0742

09af: f8 de     mov   x,$de
09b1: f4 09     mov   a,$09+x
09b3: 04 da     or    a,$da
09b5: c4 da     mov   $da,a
09b7: f4 30     mov   a,$30+x
09b9: 04 dc     or    a,$dc
09bb: c4 dc     mov   $dc,a
09bd: e4 d5     mov   a,$d5
09bf: d0 1a     bne   $09db
09c1: 3d        inc   x
09c2: 3d        inc   x
09c3: d8 df     mov   $df,x
09c5: 0b df     asl   $df
09c7: 0b df     asl   $df
09c9: c8 08     cmp   x,#$08
09cb: d0 d2     bne   $099f
09cd: e8 00     mov   a,#$00
09cf: 8d 5c     mov   y,#$5c
09d1: 3f 65 0c  call  $0c65             ; set KOF
09d4: e4 d1     mov   a,$d1
09d6: f0 03     beq   $09db
09d8: 3f 6a 07  call  $076a
09db: e4 d9     mov   a,$d9
09dd: 8d 3d     mov   y,#$3d
09df: 3f 65 0c  call  $0c65             ; set NON
09e2: 8d 08     mov   y,#$08
09e4: e8 00     mov   a,#$00
09e6: 4b dc     lsr   $dc
09e8: 3c        rol   a
09e9: fe fb     dbnz  y,$09e6
09eb: 8d 4d     mov   y,#$4d
09ed: 3f 65 0c  call  $0c65             ; set EON
09f0: 5f 34 08  jmp   $0834

; dispatch vcmd
09f3: 3f 59 0c  call  $0c59
09f6: 68 18     cmp   a,#$18
09f8: 10 05     bpl   $09ff
09fa: 1c        asl   a
09fb: 5d        mov   x,a
09fc: 1f 1e 0a  jmp   ($0a1e+x)

; vcmd 20-2a (18-1f, 2b-ff unused)
; 20 - set SRCN ($0200+x)
; 21 - set volume ($0220+x)
; 22 - set volume balance ($0240+x)
; 23 - ($0260+x)
; 24 - ($0280+x)
; 25 - ($02a0+x)
; 26 - ($02c0+x)
; 27 - ($02e0+x)
; 28 - ($0300+x)
; 29 - ($0320+x)
; 2a - set ADSR pattern ($0340+x)
09ff: c4 39     mov   $39,a             ; save vcmd to $39
0a01: 28 0f     and   a,#$0f
0a03: f8 df     mov   x,$df
0a05: 8f 60 3a  mov   $3a,#$60
0a08: 8f 03 3b  mov   $3b,#$03
0a0b: 8d 20     mov   y,#$20
0a0d: cf        mul   ya
0a0e: 7a 3a     addw  ya,$3a            ; YA = $0360 + (vcmd & 0x0f) * 32
0a10: 3f df 06  call  $06df
0a13: 2f de     bra   $09f3

; vcmd 0b
0a15: e8 e0     mov   a,#$e0
0a17: 8d 04     mov   y,#$04
0a19: 3f df 06  call  $06df
0a1c: 2f d5     bra   $09f3

; vcmd dispatch table
0a1e: dw $0a48  ; 00 - set delta time
0a20: dw $0a50  ; 01 - set active voices
0a22: dw $0a6a  ; 02 - call subroutine
0a24: dw $072f  ; 03 - end subroutine
0a26: dw $0ae9  ; 04 - set timebase
0a28: dw $0af1  ; 05 - set master volume
0a2a: dw $0a97  ; 06 - repeat until
0a2c: dw $0ac7  ; 07 - repeat break
0a2e: dw $0a87  ; 08 - goto
0a30: dw $0b79  ; 09 - note (with wait)
0a32: dw $0af9  ; 0a - set echo delay
0a34: dw $0a15  ; 0b
0a36: dw $0b04  ; 0c - unknown.1
0a38: dw $0b0c  ; 0d - set echo enable bit (not per-channel on/off)
0a3a: dw $0baa  ; 0e - wait
0a3c: dw $0aa8  ; 0f - repeat until (alternate)
0a3e: dw $0ad8  ; 10 - repeat break (alternate)
0a40: dw $0b2d  ; 11 - set echo feedback
0a42: dw $0b53  ; 12 - set echo filter
0a44: dw $0b43  ; 13 - set echo volume
0a46: dw $0b38  ; 14 - set echo start address
                ; 15-17 - undefined

; vcmd 00 - set delta time
0a48: 3f 59 0c  call  $0c59             ; arg1
0a4b: d4 08     mov   $08+x,a           ; set delta time
0a4d: 5f f3 09  jmp   $09f3

; vcmd 01 - set active voices
0a50: f8 de     mov   x,$de
0a52: e4 da     mov   a,$da
0a54: 48 ff     eor   a,#$ff
0a56: 34 09     and   a,$09+x
0a58: c4 41     mov   $41,a
0a5a: 3f 5c 0c  call  $0c5c             ; arg1 ($80 for channel 0, $01 for channel 7)
0a5d: d4 09     mov   $09+x,a
0a5f: 04 41     or    a,$41
0a61: 3f 58 07  call  $0758
0a64: 3f f7 06  call  $06f7
0a67: 5f f3 09  jmp   $09f3

; vcmd 02 - call subroutine
0a6a: 3f 59 0c  call  $0c59
0a6d: c4 38     mov   $38,a
0a6f: 3f 5c 0c  call  $0c5c
0a72: c4 39     mov   $39,a
0a74: f4 00     mov   a,$00+x
0a76: d4 18     mov   $18+x,a
0a78: f4 01     mov   a,$01+x
0a7a: d4 19     mov   $19+x,a           ; save return address
0a7c: e4 38     mov   a,$38
0a7e: d4 00     mov   $00+x,a
0a80: e4 39     mov   a,$39
0a82: d4 01     mov   $01+x,a           ; goto arg1/2
0a84: 5f f3 09  jmp   $09f3

; vcmd 08 - goto
0a87: 3f 59 0c  call  $0c59
0a8a: c4 38     mov   $38,a
0a8c: e7 00     mov   a,($00+x)
0a8e: d4 01     mov   $01+x,a
0a90: e4 38     mov   a,$38
0a92: d4 00     mov   $00+x,a           ; goto arg1/2
0a94: 5f f3 09  jmp   $09f3

; vcmd 06 - repeat until
0a97: f8 de     mov   x,$de
0a99: bb 20     inc   $20+x
0a9b: 3f 5c 0c  call  $0c5c
0a9e: 74 20     cmp   a,$20+x
0aa0: d0 e5     bne   $0a87             ; goto arg2/3 when ($20+x != arg1)
0aa2: e8 00     mov   a,#$00
0aa4: d4 20     mov   $20+x,a
0aa6: 2f 0f     bra   $0ab7

; vcmd 0f - repeat until (alternate)
0aa8: f8 de     mov   x,$de
0aaa: bb 21     inc   $21+x
0aac: 3f 5c 0c  call  $0c5c
0aaf: 74 21     cmp   a,$21+x
0ab1: d0 d4     bne   $0a87             ; goto arg2/3 when ($21+x != arg1)
0ab3: e8 00     mov   a,#$00
0ab5: d4 21     mov   $21+x,a
; skip next 2 bytes
0ab7: 60        clrc
0ab8: f4 00     mov   a,$00+x
0aba: 88 02     adc   a,#$02
0abc: d4 00     mov   $00+x,a
0abe: f4 01     mov   a,$01+x
0ac0: 88 00     adc   a,#$00
0ac2: d4 01     mov   $01+x,a
0ac4: 5f f3 09  jmp   $09f3

; vcmd 07 - repeat break
0ac7: f8 de     mov   x,$de
0ac9: bb 20     inc   $20+x
0acb: 3f 5c 0c  call  $0c5c
0ace: 74 20     cmp   a,$20+x
0ad0: d0 e5     bne   $0ab7             ; goto arg2/3 when ($20+x == arg1)
0ad2: e8 00     mov   a,#$00
0ad4: d4 20     mov   $20+x,a
0ad6: 2f af     bra   $0a87

; vcmd 10 - repeat break (alternate)
0ad8: f8 de     mov   x,$de
0ada: bb 21     inc   $21+x
0adc: 3f 5c 0c  call  $0c5c
0adf: 74 21     cmp   a,$21+x
0ae1: d0 d4     bne   $0ab7             ; goto arg2/3 when ($21+x == arg1)
0ae3: e8 00     mov   a,#$00
0ae5: d4 21     mov   $21+x,a
0ae7: 2f 9e     bra   $0a87

; vcmd 04 - set timebase
0ae9: 3f 59 0c  call  $0c59             ; arg1
0aec: d4 10     mov   $10+x,a
0aee: 5f f3 09  jmp   $09f3

; vcmd 05 - set master volume
0af1: 3f 59 0c  call  $0c59             ; arg1
0af4: d4 11     mov   $11+x,a
0af6: 5f f3 09  jmp   $09f3

; vcmd 0a - set echo delay
0af9: 3f 59 0c  call  $0c59
0afc: 8d 7d     mov   y,#$7d
0afe: 3f 65 0c  call  $0c65             ; set EDL
0b01: 5f f3 09  jmp   $09f3

; vcmd 0c
0b04: 3f 59 0c  call  $0c59             ; arg1
0b07: d4 29     mov   $29+x,a
0b09: 5f f3 09  jmp   $09f3

; vcmd 0d - set echo enable bit (not per-channel on/off)
0b0c: e8 6c     mov   a,#$6c
0b0e: 3f 6a 0c  call  $0c6a             ; get FLG
0b11: fd        mov   y,a
0b12: 3f 59 0c  call  $0c59
0b15: 68 00     cmp   a,#$00
0b17: d0 07     bne   $0b20
; arg1 == 0, disable echo
0b19: d4 30     mov   $30+x,a
0b1b: dd        mov   a,y
0b1c: 08 20     or    a,#$20
0b1e: 2f 05     bra   $0b25
; arg1 != 0, enable echo
0b20: d4 30     mov   $30+x,a
0b22: dd        mov   a,y
0b23: 28 df     and   a,#$df
0b25: 8d 6c     mov   y,#$6c
0b27: 3f 65 0c  call  $0c65             ; set FLG
0b2a: 5f f3 09  jmp   $09f3

; vcmd 11 - set echo feedback
0b2d: 3f 59 0c  call  $0c59
0b30: 8d 0d     mov   y,#$0d
0b32: 3f 65 0c  call  $0c65             ; set EFB
0b35: 5f f3 09  jmp   $09f3

; vcmd 14 - set echo start address
0b38: 3f 59 0c  call  $0c59
0b3b: 8d 6d     mov   y,#$6d
0b3d: 3f 65 0c  call  $0c65             ; set ESA
0b40: 5f f3 09  jmp   $09f3

; vcmd 13 - set echo volume
0b43: 3f 59 0c  call  $0c59
0b46: 8d 2c     mov   y,#$2c
0b48: 3f 65 0c  call  $0c65             ; set EVOL(L)
0b4b: 8d 3c     mov   y,#$3c
0b4d: 3f 65 0c  call  $0c65             ; set EVOL(R)
0b50: 5f f3 09  jmp   $09f3

; vcmd 12 - set echo filter
0b53: ec 07 f0  mov   y,$f007
0b56: e5 06 f0  mov   a,$f006           ; FIR table address ($f006/7)
0b59: da 3a     movw  $3a,ya
0b5b: 3f 59 0c  call  $0c59             ; arg1
0b5e: cd 0f     mov   x,#$0f
0b60: 1c        asl   a
0b61: 1c        asl   a
0b62: 1c        asl   a
0b63: fd        mov   y,a
0b64: f7 3a     mov   a,($3a)+y
0b66: d8 f2     mov   $f2,x
0b68: c4 f3     mov   $f3,a             ; set FIR
0b6a: fc        inc   y
0b6b: 7d        mov   a,x
0b6c: 60        clrc
0b6d: 88 10     adc   a,#$10
0b6f: 5d        mov   x,a
0b70: 68 8f     cmp   a,#$8f
0b72: d0 f0     bne   $0b64
0b74: f8 de     mov   x,$de
0b76: 5f f3 09  jmp   $09f3

; vcmd 09 - note (with wait)
0b79: 3f 59 0c  call  $0c59             ; arg1
0b7c: eb df     mov   y,$df
0b7e: c4 38     mov   $38,a             ; do {
0b80: 0b 38     asl   $38               ;   $38 <<= 1;
0b82: 90 0b     bcc   $0b8f             ;   if carry == 0 then continue
0b84: 3f 5c 0c  call  $0c5c             ;   read next byte
0b87: d6 c0 04  mov   $04c0+y,a         ;   save note byte
0b8a: e8 00     mov   a,#$00
0b8c: d6 70 00  mov   $0070+y,a
0b8f: fc        inc   y
0b90: e4 38     mov   a,$38
0b92: d0 ec     bne   $0b80             ; } while ($38 != 0);
0b94: 2f 16     bra   $0bac             ; wait

; calculate scaled delta-time
0b96: f8 de     mov   x,$de
0b98: f4 08     mov   a,$08+x           ; delta time
0b9a: fb 10     mov   y,$10+x           ; timebase (delta-time multiplier)
0b9c: cf        mul   ya
0b9d: c4 d0     mov   $d0,a
0b9f: 74 28     cmp   a,$28+x
0ba1: d0 09     bne   $0bac
0ba3: e8 00     mov   a,#$00
0ba5: d4 28     mov   $28+x,a
0ba7: 5f f3 09  jmp   $09f3

; vcmd 0e - wait
0baa: f8 de     mov   x,$de
; prepare for waiting for the next timer clock
0bac: f4 09     mov   a,$09+x
0bae: c4 38     mov   $38,a
0bb0: e4 da     mov   a,$da
0bb2: 48 ff     eor   a,#$ff
0bb4: 24 38     and   a,$38
0bb6: c4 dd     mov   $dd,a
0bb8: f4 29     mov   a,$29+x
0bba: c4 d8     mov   $d8,a
0bbc: 3f 87 05  call  $0587
0bbf: 0b 38     asl   $38
0bc1: 90 61     bcc   $0c24
0bc3: f8 df     mov   x,$df
0bc5: e4 dd     mov   a,$dd
0bc7: 10 72     bpl   $0c3b
0bc9: f4 70     mov   a,$70+x
0bcb: 68 ff     cmp   a,#$ff
0bcd: f0 55     beq   $0c24
0bcf: 75 e0 04  cmp   a,$04e0+x
0bd2: d0 41     bne   $0c15
0bd4: f5 c0 04  mov   a,$04c0+x
0bd7: 68 ff     cmp   a,#$ff
0bd9: f0 3a     beq   $0c15
0bdb: 8f 20 3c  mov   $3c,#$20
0bde: 8f 00 3d  mov   $3d,#$00          ; step = $0020
0be1: 8f 60 3e  mov   $3e,#$60
0be4: 8f 03 3f  mov   $3f,#$03          ; src = $0360
0be7: 8f 00 40  mov   $40,#$00
0bea: 8f 02 41  mov   $41,#$02          ; dst = $0200
0bed: 8f 0b 3b  mov   $3b,#$0b
0bf0: eb df     mov   y,$df
0bf2: f7 3e     mov   a,($3e)+y
0bf4: d7 40     mov   ($40)+y,a         ; *(dst + y) = *(src + y)
0bf6: ba 3c     movw  ya,$3c
0bf8: 7a 3e     addw  ya,$3e
0bfa: da 3e     movw  $3e,ya            ; src += step
0bfc: ba 3c     movw  ya,$3c
0bfe: 7a 40     addw  ya,$40
0c00: da 40     movw  $40,ya            ; dst += step
0c02: 6e 3b eb  dbnz  $3b,$0bf0         ; do above for 11 times
0c05: 3f 6f 0c  call  $0c6f             ; dispatch note vcmd
0c08: e8 ff     mov   a,#$ff
0c0a: f8 df     mov   x,$df
0c0c: d5 c0 04  mov   $04c0+x,a
0c0f: e8 00     mov   a,#$00
0c11: d4 b0     mov   $b0+x,a
0c13: 2f 05     bra   $0c1a
0c15: 3f 7a 0d  call  $0d7a
0c18: f8 df     mov   x,$df
0c1a: bb b0     inc   $b0+x
0c1c: f4 70     mov   a,$70+x
0c1e: 68 fe     cmp   a,#$fe
0c20: f0 02     beq   $0c24
0c22: bb 70     inc   $70+x
0c24: 0b dd     asl   $dd
0c26: 0b d8     asl   $d8
0c28: ab df     inc   $df
0c2a: e4 38     mov   a,$38
0c2c: d0 8e     bne   $0bbc
0c2e: f8 de     mov   x,$de
0c30: bb 28     inc   $28+x
0c32: e4 d6     mov   a,$d6
0c34: 08 80     or    a,#$80
0c36: d4 49     mov   $49+x,a
0c38: 5f af 09  jmp   $09af

0c3b: e8 ff     mov   a,#$ff
0c3d: d4 70     mov   $70+x,a
0c3f: 2f e3     bra   $0c24

; DSP reg:value pair
0c41: db $0c,$60      ; MVOL(L)
0c43: db $1c,$60      ; MVOL(R)
0c45: db $0d,$00      ; EFB
0c47: db $2c,$00      ; EVOL(L)
0c49: db $2d,$00      ; PMON
0c4b: db $3c,$00      ; EVOL(R)
0c4d: db $3d,$00      ; NON
0c4f: db $4d,$00      ; EON
0c51: db $5d,$11      ; DIR
0c53: db $6d,$c8      ; ESA
0c55: db $7d,$01      ; EDL
0c57: db $9c,$20      ; (typo?)

; read from $00/1[$de] to A, increment ptr
0c59: e9 de 00  mov   x,$00de
0c5c: e7 00     mov   a,($00+x)
0c5e: bb 00     inc   $00+x
0c60: d0 02     bne   $0c64
0c62: bb 01     inc   $01+x
0c64: 6f        ret

; write A to dsp reg Y
0c65: cb f2     mov   $f2,y
0c67: c4 f3     mov   $f3,a
0c69: 6f        ret

; read dsp reg A
0c6a: c4 f2     mov   $f2,a
0c6c: e4 f3     mov   a,$f3
0c6e: 6f        ret

; dispatch note vcmd
0c6f: f8 df     mov   x,$df
0c71: f5 c0 04  mov   a,$04c0+x
0c74: 68 54     cmp   a,#$54
0c76: 90 03     bcc   $0c7b
0c78: 5f ee 0c  jmp   $0cee

; normal note (00-53)
0c7b: c4 39     mov   $39,a             ; note number
0c7d: 3f a3 0d  call  $0da3             ; save adjusted note number
0c80: 3f 0b 0f  call  $0f0b             ; load it to $3c/d
0c83: f5 e0 02  mov   a,$02e0+x
0c86: f0 0c     beq   $0c94
0c88: f4 50     mov   a,$50+x
0c8a: 68 54     cmp   a,#$54
0c8c: f0 06     beq   $0c94
0c8e: d5 a0 01  mov   $01a0+x,a
0c91: 3f 16 0f  call  $0f16
0c94: e4 d8     mov   a,$d8
0c96: 10 06     bpl   $0c9e             ; update key on/off etc.
0c98: 3f b3 0d  call  $0db3
0c9b: 5f ca 0d  jmp   $0dca

0c9e: f5 80 02  mov   a,$0280+x
0ca1: f0 06     beq   $0ca9
0ca3: 3f f1 0d  call  $0df1
0ca6: 3f 07 0e  call  $0e07
0ca9: e4 df     mov   a,$df
0cab: 28 07     and   a,#$07
0cad: 5d        mov   x,a
0cae: fd        mov   y,a
0caf: f6 af 07  mov   a,$07af+y
0cb2: 8d 5c     mov   y,#$5c
0cb4: 3f 65 0c  call  $0c65
0cb7: 7d        mov   a,x
0cb8: 1c        asl   a
0cb9: 9f        xcn   a
0cba: 08 02     or    a,#$02
0cbc: c5 c4 0c  mov   $0cc4,a           ; self-modifying code
0cbf: 08 12     or    a,#$12
0cc1: c5 c6 0c  mov   $0cc6,a           ; self-modifying code
0cc4: c2 db     set6  $db               ; set0-set7 KON shadow
0cc6: d2 d9     clr6  $d9               ; clr0-clr7 NON shadow
0cc8: 3f 6a 0f  call  $0f6a
0ccb: 3f 48 05  call  $0548
0cce: 3f 8f 05  call  $058f
0cd1: fc        inc   y
0cd2: 3f 9f 05  call  $059f             ; write pitch
0cd5: f5 40 03  mov   a,$0340+x         ; ADSR index
0cd8: d0 05     bne   $0cdf
0cda: e8 7f     mov   a,#$7f
0cdc: 5f 01 06  jmp   $0601

; set ADSR/GAIN
0cdf: 3f b4 05  call  $05b4
0ce2: cd 00     mov   x,#$00
0ce4: e7 3a     mov   a,($3a+x)
0ce6: 10 03     bpl   $0ceb
0ce8: 5f cd 05  jmp   $05cd             ; ADSR mode
0ceb: 5f eb 05  jmp   $05eb             ; GAIN mode

0cee: f0 4a     beq   $0d3a             ; rest
0cf0: 68 80     cmp   a,#$80
0cf2: b0 54     bcs   $0d48

; noise note (60-7f, 59-5f unused mirror)
0cf4: f8 df     mov   x,$df
0cf6: 28 1f     and   a,#$1f
0cf8: d4 50     mov   $50+x,a
0cfa: e8 6c     mov   a,#$6c
0cfc: 3f 6a 0c  call  $0c6a             ; get FLG
0cff: 28 e0     and   a,#$e0
0d01: 14 50     or    a,$50+x
0d03: 8d 6c     mov   y,#$6c
0d05: 3f 65 0c  call  $0c65             ; set FLG
0d08: e4 d8     mov   a,$d8
0d0a: 10 03     bpl   $0d0f
0d0c: 5f ca 0d  jmp   $0dca

0d0f: e4 df     mov   a,$df
0d11: 28 07     and   a,#$07
0d13: 5d        mov   x,a
0d14: fd        mov   y,a
0d15: f6 af 07  mov   a,$07af+y
0d18: 8d 5c     mov   y,#$5c
0d1a: 3f 65 0c  call  $0c65             ; set KOF
0d1d: 7d        mov   a,x
0d1e: 1c        asl   a
0d1f: 9f        xcn   a
0d20: 08 02     or    a,#$02
0d22: c5 28 0d  mov   $0d28,a           ; self-modifying code
0d25: c5 2a 0d  mov   $0d2a,a           ; self-modifying code
0d28: 22 d9     set1  $d9               ; set0-set7 NON shadow
0d2a: 22 db     set1  $db               ; set0-set7 KON shadow
0d2c: 3f 48 05  call  $0548
0d2f: 3f 8f 05  call  $058f
0d32: fc        inc   y
0d33: fc        inc   y
0d34: 3f aa 05  call  $05aa             ; set SRCN from $0200+x
0d37: 5f d5 0c  jmp   $0cd5

; rest (54)
0d3a: f8 df     mov   x,$df
0d3c: 3f 0b 0f  call  $0f0b
0d3f: 3f b3 0d  call  $0db3
0d42: f5 40 03  mov   a,$0340+x         ; ADSR index
0d45: 5f 9f 06  jmp   $069f

; percussion note (80-ff)
0d48: 28 7f     and   a,#$7f
0d4a: 8d 05     mov   y,#$05
0d4c: cf        mul   ya                ; 5 bytes / item
0d4d: da 3a     movw  $3a,ya
0d4f: ec 05 f0  mov   y,$f005
0d52: e5 04 f0  mov   a,$f004           ; percussion table address is in $dc14
0d55: 7a 3a     addw  ya,$3a
0d57: da 3a     movw  $3a,ya            ; $3a/b = [$dc14] + ((note & 0x7f) * 5)
0d59: 8d 00     mov   y,#$00
0d5b: f8 df     mov   x,$df
0d5d: f7 3a     mov   a,($3a)+y         ; offset +0: SRCN
0d5f: d5 00 02  mov   $0200+x,a
0d62: fc        inc   y
0d63: f7 3a     mov   a,($3a)+y         ; offset +1: ADSR index
0d65: d5 40 03  mov   $0340+x,a
0d68: fc        inc   y
0d69: f7 3a     mov   a,($3a)+y         ; offset +2: volume
0d6b: d5 20 02  mov   $0220+x,a
0d6e: fc        inc   y
0d6f: f7 3a     mov   a,($3a)+y         ; offset +3: volume balance
0d71: d5 40 02  mov   $0240+x,a
0d74: fc        inc   y
0d75: f7 3a     mov   a,($3a)+y         ; offset +4: note number
0d77: 5f 74 0c  jmp   $0c74             ; dispatch it

0d7a: f8 df     mov   x,$df
0d7c: f4 50     mov   a,$50+x
0d7e: 68 54     cmp   a,#$54
0d80: b0 19     bcs   $0d9b
0d82: 3f 0b 0f  call  $0f0b
0d85: f5 e0 02  mov   a,$02e0+x
0d88: f0 0b     beq   $0d95
0d8a: f5 a0 01  mov   a,$01a0+x
0d8d: f0 06     beq   $0d95
0d8f: 3f 16 0f  call  $0f16
0d92: 5f be 0d  jmp   $0dbe

0d95: 3f b3 0d  call  $0db3
0d98: 5f ca 0d  jmp   $0dca

0d9b: d0 2d     bne   $0dca
0d9d: 3f b3 0d  call  $0db3
0da0: 5f 9f 06  jmp   $069f

; set note number into $0120+x and $0100+x (fraction)
0da3: f8 df     mov   x,$df
0da5: 60        clrc
0da6: 95 a0 02  adc   a,$02a0+x         ; vcmd 25 param (transpose?)
0da9: d5 20 01  mov   $0120+x,a
0dac: f5 c0 02  mov   a,$02c0+x         ; vcmd 26 param (tuning?)
0daf: d5 00 01  mov   $0100+x,a
0db2: 6f        ret

0db3: f5 80 02  mov   a,$0280+x
0db6: f0 06     beq   $0dbe
0db8: 3f f1 0d  call  $0df1
0dbb: 3f 48 0e  call  $0e48
0dbe: 3f 6a 0f  call  $0f6a
0dc1: e4 d2     mov   a,$d2
0dc3: 08 02     or    a,#$02
0dc5: fd        mov   y,a
0dc6: 3f 9f 05  call  $059f             ; write pitch
0dc9: 6f        ret

0dca: f8 df     mov   x,$df
0dcc: f5 60 02  mov   a,$0260+x
0dcf: f0 0a     beq   $0ddb
0dd1: 74 b0     cmp   a,$b0+x
0dd3: b0 06     bcs   $0ddb
0dd5: f5 40 03  mov   a,$0340+x         ; ADSR index
0dd8: 5f 9f 06  jmp   $069f

0ddb: f4 90     mov   a,$90+x
0ddd: d0 01     bne   $0de0
0ddf: 6f        ret

0de0: f4 b0     mov   a,$b0+x
0de2: 75 60 02  cmp   a,$0260+x
0de5: b0 03     bcs   $0dea
0de7: 5f b1 06  jmp   $06b1

0dea: 3f b4 05  call  $05b4
0ded: 3f 13 06  call  $0613
0df0: 6f        ret

0df1: 1c        asl   a
0df2: fd        mov   y,a
0df3: e5 02 f0  mov   a,$f002
0df6: c4 40     mov   $40,a
0df8: e5 03 f0  mov   a,$f003
0dfb: c4 41     mov   $41,a
0dfd: f7 40     mov   a,($40)+y
0dff: c4 3a     mov   $3a,a
0e01: fc        inc   y
0e02: f7 40     mov   a,($40)+y
0e04: c4 3b     mov   $3b,a
0e06: 6f        ret

0e07: e8 00     mov   a,#$00
0e09: d5 80 01  mov   $0180+x,a
0e0c: d5 40 01  mov   $0140+x,a
0e0f: d5 60 01  mov   $0160+x,a
0e12: fd        mov   y,a
0e13: f5 a0 01  mov   a,$01a0+x
0e16: f0 01     beq   $0e19
0e18: 6f        ret

0e19: f7 3a     mov   a,($3a)+y
0e1b: 80        setc
0e1c: a8 64     sbc   a,#$64
0e1e: 90 10     bcc   $0e30
0e20: fd        mov   y,a
0e21: f5 20 03  mov   a,$0320+x
0e24: cf        mul   ya
0e25: 60        clrc
0e26: 84 3c     adc   a,$3c
0e28: c4 3c     mov   $3c,a
0e2a: dd        mov   a,y
0e2b: 84 3d     adc   a,$3d
0e2d: c4 3d     mov   $3d,a
0e2f: 6f        ret

0e30: 48 ff     eor   a,#$ff
0e32: bc        inc   a
0e33: fd        mov   y,a
0e34: f5 20 03  mov   a,$0320+x
0e37: cf        mul   ya
0e38: da 42     movw  $42,ya
0e3a: e4 3c     mov   a,$3c
0e3c: 80        setc
0e3d: a4 42     sbc   a,$42
0e3f: c4 3c     mov   $3c,a
0e41: e4 3d     mov   a,$3d
0e43: a4 43     sbc   a,$43
0e45: c4 3d     mov   $3d,a
0e47: 6f        ret

0e48: f5 40 01  mov   a,$0140+x
0e4b: fd        mov   y,a
0e4c: f7 3a     mov   a,($3a)+y
0e4e: c4 3e     mov   $3e,a
0e50: fc        inc   y
0e51: f7 3a     mov   a,($3a)+y
0e53: c4 3f     mov   $3f,a
0e55: f5 00 03  mov   a,$0300+x
0e58: 60        clrc
0e59: 95 80 01  adc   a,$0180+x
0e5c: 90 1a     bcc   $0e78
0e5e: f5 00 03  mov   a,$0300+x
0e61: d5 80 01  mov   $0180+x,a
0e64: e4 3f     mov   a,$3f
0e66: 68 f0     cmp   a,#$f0
0e68: 90 05     bcc   $0e6f
0e6a: 3f f8 0e  call  $0ef8
0e6d: f7 3a     mov   a,($3a)+y
0e6f: c4 3e     mov   $3e,a
0e71: dd        mov   a,y
0e72: d5 40 01  mov   $0140+x,a
0e75: fc        inc   y
0e76: 2f 0c     bra   $0e84
0e78: d5 80 01  mov   $0180+x,a
0e7b: e4 3f     mov   a,$3f
0e7d: 68 f0     cmp   a,#$f0
0e7f: 90 09     bcc   $0e8a
0e81: 3f f8 0e  call  $0ef8
0e84: f7 3a     mov   a,($3a)+y
0e86: c4 3f     mov   $3f,a
0e88: 2f f3     bra   $0e7d
0e8a: f5 00 03  mov   a,$0300+x
0e8d: fd        mov   y,a
0e8e: f5 20 03  mov   a,$0320+x
0e91: cf        mul   ya
0e92: da 40     movw  $40,ya
0e94: e4 3f     mov   a,$3f
0e96: 80        setc
0e97: a4 3e     sbc   a,$3e
0e99: 90 2d     bcc   $0ec8
0e9b: c4 3e     mov   $3e,a
0e9d: eb 40     mov   y,$40
0e9f: cf        mul   ya
0ea0: da 42     movw  $42,ya
0ea2: e4 3e     mov   a,$3e
0ea4: eb 41     mov   y,$41
0ea6: cf        mul   ya
0ea7: 60        clrc
0ea8: 84 43     adc   a,$43
0eaa: c4 43     mov   $43,a
0eac: dd        mov   a,y
0ead: 88 00     adc   a,#$00
0eaf: c4 44     mov   $44,a
0eb1: 60        clrc
0eb2: e4 42     mov   a,$42
0eb4: 95 60 01  adc   a,$0160+x
0eb7: d5 60 01  mov   $0160+x,a
0eba: e4 43     mov   a,$43
0ebc: 95 20 05  adc   a,$0520+x
0ebf: c4 3c     mov   $3c,a
0ec1: e4 44     mov   a,$44
0ec3: 94 50     adc   a,$50+x
0ec5: c4 3d     mov   $3d,a
0ec7: 6f        ret

0ec8: 48 ff     eor   a,#$ff
0eca: bc        inc   a
0ecb: c4 3e     mov   $3e,a
0ecd: eb 40     mov   y,$40
0ecf: cf        mul   ya
0ed0: da 42     movw  $42,ya
0ed2: e4 3e     mov   a,$3e
0ed4: eb 41     mov   y,$41
0ed6: cf        mul   ya
0ed7: 60        clrc
0ed8: 84 43     adc   a,$43
0eda: c4 43     mov   $43,a
0edc: dd        mov   a,y
0edd: 88 00     adc   a,#$00
0edf: c4 44     mov   $44,a
0ee1: 80        setc
0ee2: f5 60 01  mov   a,$0160+x
0ee5: a4 42     sbc   a,$42
0ee7: d5 60 01  mov   $0160+x,a
0eea: f5 20 05  mov   a,$0520+x
0eed: a4 43     sbc   a,$43
0eef: c4 3c     mov   $3c,a
0ef1: f4 50     mov   a,$50+x
0ef3: a4 44     sbc   a,$44
0ef5: c4 3d     mov   $3d,a
0ef7: 6f        ret

0ef8: d0 0c     bne   $0f06
0efa: f5 20 05  mov   a,$0520+x
0efd: c4 3c     mov   $3c,a
0eff: f4 50     mov   a,$50+x
0f01: c4 3d     mov   $3d,a
0f03: ee        pop   y
0f04: ee        pop   y
0f05: 6f        ret

0f06: fc        inc   y
0f07: f7 3a     mov   a,($3a)+y
0f09: fd        mov   y,a
0f0a: 6f        ret

; load note number to $3c/d
0f0b: f5 00 01  mov   a,$0100+x
0f0e: c4 3c     mov   $3c,a
0f10: f5 20 01  mov   a,$0120+x
0f13: c4 3d     mov   $3d,a
0f15: 6f        ret

0f16: 80        setc
0f17: f5 00 01  mov   a,$0100+x
0f1a: b5 20 05  sbc   a,$0520+x
0f1d: f5 20 01  mov   a,$0120+x
0f20: b4 50     sbc   a,$50+x
0f22: 30 1a     bmi   $0f3e
0f24: bc        inc   a
0f25: fd        mov   y,a
0f26: f5 e0 02  mov   a,$02e0+x
0f29: cf        mul   ya
0f2a: da 3a     movw  $3a,ya
0f2c: 4b 3b     lsr   $3b
0f2e: 6b 3a     ror   $3a
0f30: f5 20 05  mov   a,$0520+x
0f33: fb 50     mov   y,$50+x
0f35: 7a 3a     addw  ya,$3a
0f37: 5a 3c     cmpw  ya,$3c
0f39: b0 20     bcs   $0f5b
0f3b: da 3c     movw  $3c,ya
0f3d: 6f        ret

0f3e: 48 ff     eor   a,#$ff
0f40: bc        inc   a
0f41: bc        inc   a
0f42: fd        mov   y,a
0f43: f5 e0 02  mov   a,$02e0+x
0f46: cf        mul   ya
0f47: da 3a     movw  $3a,ya
0f49: 4b 3b     lsr   $3b
0f4b: 6b 3a     ror   $3a
0f4d: f5 20 05  mov   a,$0520+x
0f50: fb 50     mov   y,$50+x
0f52: 9a 3a     subw  ya,$3a
0f54: 5a 3c     cmpw  ya,$3c
0f56: 90 03     bcc   $0f5b
0f58: da 3c     movw  $3c,ya
0f5a: 6f        ret

0f5b: f5 20 01  mov   a,$0120+x
0f5e: fd        mov   y,a
0f5f: f5 00 01  mov   a,$0100+x
0f62: da 3c     movw  $3c,ya
0f64: e8 00     mov   a,#$00
0f66: d5 a0 01  mov   $01a0+x,a
0f69: 6f        ret

; calculate pitch into $40/1
0f6a: f8 df     mov   x,$df
0f6c: e4 3c     mov   a,$3c             ; note key
0f6e: d5 20 05  mov   $0520+x,a
0f71: e4 3d     mov   a,$3d
0f73: d4 50     mov   $50+x,a
0f75: 8d 00     mov   y,#$00
0f77: cd 0c     mov   x,#$0c
0f79: 9e        div   ya,x
0f7a: 48 ff     eor   a,#$ff
0f7c: 9c        dec   a
0f7d: 28 07     and   a,#$07
0f7f: 2d        push  a                 ; push octave
0f80: dd        mov   a,y               ; key
0f81: 1c        asl   a
0f82: fd        mov   y,a
0f83: f6 b8 07  mov   a,$07b8+y
0f86: c4 3b     mov   $3b,a
0f88: f6 b7 07  mov   a,$07b7+y
0f8b: c4 3a     mov   $3a,a
0f8d: f6 ba 07  mov   a,$07ba+y
0f90: c4 39     mov   $39,a
0f92: f6 b9 07  mov   a,$07b9+y
0f95: eb 39     mov   y,$39             ; read pitch table
0f97: 9a 3a     subw  ya,$3a
0f99: da 42     movw  $42,ya            ; delta pitch
0f9b: f8 df     mov   x,$df
0f9d: fd        mov   y,a
0f9e: f5 60 01  mov   a,$0160+x         ; tuning?
0fa1: cf        mul   ya
0fa2: cb 3e     mov   $3e,y
0fa4: e4 42     mov   a,$42
0fa6: eb 3c     mov   y,$3c
0fa8: cf        mul   ya
0fa9: 60        clrc
0faa: 84 3e     adc   a,$3e
0fac: c4 3e     mov   $3e,a
0fae: dd        mov   a,y
0faf: 88 00     adc   a,#$00
0fb1: c4 3f     mov   $3f,a
0fb3: eb 43     mov   y,$43
0fb5: d0 04     bne   $0fbb
0fb7: cb 40     mov   $40,y
0fb9: 2f 17     bra   $0fd2
0fbb: f5 60 01  mov   a,$0160+x
0fbe: cf        mul   ya
0fbf: 7a 3e     addw  ya,$3e
0fc1: da 3e     movw  $3e,ya
0fc3: e4 3c     mov   a,$3c
0fc5: eb 43     mov   y,$43
0fc7: cf        mul   ya
0fc8: 60        clrc
0fc9: 84 3f     adc   a,$3f
0fcb: c4 3f     mov   $3f,a
0fcd: dd        mov   a,y
0fce: 88 00     adc   a,#$00
0fd0: c4 40     mov   $40,a
0fd2: f3 3e 02  bbc7  $3e,$0fd7
0fd5: 3a 3f     incw  $3f
0fd7: ba 3a     movw  ya,$3a
0fd9: 7a 3f     addw  ya,$3f
0fdb: cb 3b     mov   $3b,y
0fdd: ce        pop   x                 ; pop octave
0fde: c8 00     cmp   x,#$00
0fe0: f0 06     beq   $0fe8
0fe2: 4b 3b     lsr   $3b
0fe4: 7c        ror   a
0fe5: 1d        dec   x
0fe6: d0 fa     bne   $0fe2
0fe8: c4 3a     mov   $3a,a
0fea: f8 df     mov   x,$df
0fec: f5 00 02  mov   a,$0200+x         ; SRCN index
0fef: 1c        asl   a
0ff0: 60        clrc
0ff1: 88 b0     adc   a,#$b0
0ff3: c4 3c     mov   $3c,a
0ff5: e8 11     mov   a,#$11
0ff7: 88 00     adc   a,#$00
0ff9: c4 3d     mov   $3d,a             ; $3c/d = $11b0 + (srcn * 2)
0ffb: 8d 00     mov   y,#$00
0ffd: f7 3c     mov   a,($3c)+y
0fff: c4 3e     mov   $3e,a
1001: fc        inc   y
1002: f7 3c     mov   a,($3c)+y
1004: c4 3d     mov   $3d,a             ; read per-instrument tuning
1006: eb 3b     mov   y,$3b
1008: cf        mul   ya
1009: da 40     movw  $40,ya
100b: e4 3d     mov   a,$3d
100d: eb 3a     mov   y,$3a
100f: cf        mul   ya
1010: 6d        push  y
1011: e4 3e     mov   a,$3e
1013: eb 3a     mov   y,$3a
1015: cf        mul   ya
1016: 7a 40     addw  ya,$40
1018: da 40     movw  $40,ya
101a: e4 3e     mov   a,$3e
101c: eb 3b     mov   y,$3b
101e: cf        mul   ya
101f: fd        mov   y,a
1020: ae        pop   a
1021: 7a 40     addw  ya,$40
1023: da 40     movw  $40,ya
1025: 6f        ret
