0700: cd 00     mov   x,#$00
0702: fe fe     dbnz  y,$0702
0704: fe fe     dbnz  y,$0704
0706: 1d        dec   x
0707: d0 f9     bne   $0702
0709: 20        clrp
070a: cd ff     mov   x,#$ff
070c: bd        mov   sp,x
070d: e8 00     mov   a,#$00
070f: c4 f4     mov   $f4,a
0711: c4 f5     mov   $f5,a
0713: c4 f6     mov   $f6,a
0715: c4 f7     mov   $f7,a
0717: e4 f4     mov   a,$f4
0719: 04 f5     or    a,$f5
071b: 04 f6     or    a,$f6
071d: 04 f7     or    a,$f7
071f: d0 f6     bne   $0717
0721: e8 00     mov   a,#$00
0723: 5d        mov   x,a
0724: d5 00 02  mov   $0200+x,a
0727: d5 00 03  mov   $0300+x,a
072a: 1d        dec   x
072b: d0 f7     bne   $0724
072d: cd 00     mov   x,#$00
072f: af        mov   (x)+,a
0730: c8 cf     cmp   x,#$cf
0732: d0 fb     bne   $072f
0734: c4 c8     mov   $c8,a
0736: 8f 6d f2  mov   $f2,#$6d
0739: e8 c8     mov   a,#$c8
073b: c4 f3     mov   $f3,a             ; ESA
073d: 8f 7d f2  mov   $f2,#$7d
0740: e8 01     mov   a,#$01
0742: fa f3 00  mov   ($00),($f3)
0745: c4 f3     mov   $f3,a             ; EDL
0747: 8f 6c f2  mov   $f2,#$6c
074a: 8f 60 71  mov   $71,#$60
074d: fa 71 f3  mov   ($f3),($71)       ; FLG
0750: e8 5f     mov   a,#$5f
0752: 8f 0c f2  mov   $f2,#$0c
0755: c4 f3     mov   $f3,a             ; MVOL(L)
0757: 8f 1c f2  mov   $f2,#$1c
075a: c4 f3     mov   $f3,a             ; MVOL(R)
075c: 3f 2c 0b  call  $0b2c
075f: e8 7f     mov   a,#$7f
0761: c5 3f 03  mov   $033f,a
0764: c4 b4     mov   $b4,a             ; master volume
0766: 8f 25 fa  mov   $fa,#$25
0769: 8f 00 f1  mov   $f1,#$00
076c: 8f 01 f1  mov   $f1,#$01
076f: d2 71     clr6  $71
0771: 3f d0 19  call  $19d0
0774: 3f 6b 08  call  $086b
0777: e4 c1     mov   a,$c1
0779: 08 80     or    a,#$80
077b: c4 f7     mov   $f7,a
077d: e4 c8     mov   a,$c8
077f: d0 0a     bne   $078b
0781: 13 c0 03  bbc0  $c0,$0787
0784: 3f c9 07  call  $07c9
0787: e4 fd     mov   a,$fd
0789: f0 f6     beq   $0781             ; poll timer 0
078b: c4 ad     mov   $ad,a
078d: 3f 98 07  call  $0798
0790: 13 c0 de  bbc0  $c0,$0771
0793: 3f 1b 08  call  $081b
0796: 2f d9     bra   $0771
0798: 53 c1 03  bbc2  $c1,$079e
079b: 3f a5 07  call  $07a5
079e: 73 c1 03  bbc3  $c1,$07a4
07a1: 3f b7 07  call  $07b7
07a4: 6f        ret

07a5: cd 01     mov   x,#$01
07a7: 3f 44 08  call  $0844
07aa: cd 08     mov   x,#$08
07ac: d8 aa     mov   $aa,x
07ae: 8f 60 ac  mov   $ac,#$60
07b1: 8f 40 ab  mov   $ab,#$40
07b4: 5f 55 08  jmp   $0855

07b7: cd 02     mov   x,#$02
07b9: 3f 44 08  call  $0844
07bc: cd 09     mov   x,#$09
07be: d8 aa     mov   $aa,x
07c0: 8f 70 ac  mov   $ac,#$70
07c3: 8f 80 ab  mov   $ab,#$80
07c6: 5f 55 08  jmp   $0855

07c9: 73 c0 1b  bbc3  $c0,$07e7
07cc: 8b c2     dec   $c2
07ce: d0 17     bne   $07e7
07d0: fa c3 c2  mov   ($c2),($c3)
07d3: 69 9b b4  cmp   ($b4),($9b)
07d6: f0 10     beq   $07e8
07d8: 60        clrc
07d9: 89 b5 b4  adc   ($b4),($b5)
07dc: 30 0a     bmi   $07e8
07de: 80        setc
07df: a9 b6 b4  sbc   ($b4),($b6)
07e2: 30 04     bmi   $07e8
07e4: 5f f6 07  jmp   $07f6

07e7: 6f        ret

07e8: fa 9b b4  mov   ($b4),($9b)
07eb: 72 c0     clr3  $c0
07ed: 38 fd c1  and   $c1,#$fd
07f0: fa c1 f7  mov   ($f7),($c1)
07f3: 5f f6 07  jmp   $07f6

07f6: cd 00     mov   x,#$00
07f8: d8 ac     mov   $ac,x
07fa: d8 aa     mov   $aa,x
07fc: 8f 01 ab  mov   $ab,#$01
07ff: e4 ab     mov   a,$ab
0801: 24 67     and   a,$67
0803: f0 0a     beq   $080f
0805: 2d        push  a
0806: e8 ff     mov   a,#$ff
0808: d5 1e 03  mov   $031e+x,a
080b: ae        pop   a
080c: 3f fd 15  call  $15fd
080f: 3d        inc   x
0810: ab aa     inc   $aa
0812: 60        clrc
0813: 98 10 ac  adc   $ac,#$10
0816: 0b ab     asl   $ab
0818: d0 e5     bne   $07ff
081a: 6f        ret

081b: cd 00     mov   x,#$00
081d: 3f 44 08  call  $0844
0820: d8 aa     mov   $aa,x
0822: d8 ac     mov   $ac,x
0824: 8f 01 ab  mov   $ab,#$01
0827: e4 ab     mov   a,$ab
0829: 24 67     and   a,$67
082b: f0 03     beq   $0830
082d: 3f 55 08  call  $0855
0830: ab aa     inc   $aa
0832: f8 aa     mov   x,$aa
0834: 60        clrc
0835: 98 10 ac  adc   $ac,#$10
0838: 0b ab     asl   $ab
083a: d0 eb     bne   $0827
083c: e4 67     mov   a,$67
083e: d0 03     bne   $0843
0840: 38 fe c1  and   $c1,#$fe
0843: 6f        ret

0844: e4 ad     mov   a,$ad             ; timer 0 clock count ($fd)
0846: fb ae     mov   y,$ae+x           ; tempo value
0848: cf        mul   ya
0849: 60        clrc
084a: 94 b1     adc   a,$b1+x           ; add tempo * clock
084c: d4 b1     mov   $b1+x,a
084e: 92 c0     clr4  $c0
0850: 90 02     bcc   $0854
0852: 82 c0     set4  $c0               ; set the tick flag
0854: 6f        ret

0855: f5 3c 02  mov   a,$023c+x
0858: c4 a6     mov   $a6,a
085a: 93 c0 05  bbc4  $c0,$0862
085d: 3f 94 12  call  $1294
0860: 2f 03     bra   $0865
0862: 3f 11 19  call  $1911
0865: e4 a6     mov   a,$a6
0867: d5 3c 02  mov   $023c+x,a
086a: 6f        ret

086b: e4 f4     mov   a,$f4
086d: 64 f4     cmp   a,$f4
086f: d0 fa     bne   $086b             ; poll APU0 input
0871: 65 3f 03  cmp   a,$033f
0874: d0 01     bne   $0877
0876: 6f        ret

0877: fa f7 9c  mov   ($9c),($f7)
087a: fa c1 f7  mov   ($f7),($c1)
087d: c4 f4     mov   $f4,a
087f: c5 3f 03  mov   $033f,a
0882: 28 fe     and   a,#$fe
0884: 68 16     cmp   a,#$16
0886: b0 ee     bcs   $0876
0888: 5d        mov   x,a
0889: 1f 8c 08  jmp   ($088c+x)

; cpu cmd dispatch table
088c: dw $08ba  ; 00
088e: dw $0915  ; 02
0890: dw $0933  ; 04
0892: dw $096f  ; 06
0894: dw $0a1d  ; 08
0896: dw $0a40  ; 0a
0898: dw $09e5  ; 0c
089a: dw $0912  ; 0e
089c: dw $08a2  ; 10
089e: dw $08ba  ; 12
08a0: dw $096b  ; 14

; cpu cmd 10
08a2: e8 ff     mov   a,#$ff
08a4: 8d 01     mov   y,#$01
08a6: 58 01 c8  eor   $c8,#$01
08a9: d0 04     bne   $08af
08ab: e4 c9     mov   a,$c9
08ad: 8d 25     mov   y,#$25
08af: c4 ae     mov   $ae,a
08b1: cb fa     mov   $fa,y
08b3: 8f 00 f1  mov   $f1,#$00
08b6: 8f 01 f1  mov   $f1,#$01
08b9: 6f        ret

; cpu cmd 00,12
08ba: 38 00 c1  and   $c1,#$00
08bd: e8 00     mov   a,#$00
08bf: c5 1a 03  mov   $031a,a
08c2: c5 1b 03  mov   $031b,a
08c5: 4b b4     lsr   $b4
08c7: 3f f6 07  call  $07f6
08ca: 78 00 b4  cmp   $b4,#$00
08cd: d0 f6     bne   $08c5
08cf: e8 00     mov   a,#$00
08d1: a2 71     set5  $71
08d3: c4 64     mov   $64,a
08d5: c4 65     mov   $65,a
08d7: c4 62     mov   $62,a
08d9: c4 63     mov   $63,a
08db: 3f d0 19  call  $19d0
08de: e8 00     mov   a,#$00
08e0: fd        mov   y,a
08e1: 8f c8 01  mov   $01,#$c8
08e4: c4 00     mov   $00,a
08e6: d7 00     mov   ($00)+y,a
08e8: 3a 00     incw  $00
08ea: d0 fa     bne   $08e6
08ec: 38 00 c1  and   $c1,#$00
08ef: cd 06     mov   x,#$06
08f1: 3f 05 09  call  $0905
08f4: cd 07     mov   x,#$07
08f6: 3f 05 09  call  $0905
08f9: 12 c0     clr0  $c0
08fb: 8f 7f cf  mov   $cf,#$7f
08fe: e8 00     mov   a,#$00
0900: c4 b6     mov   $b6,a
0902: c4 b5     mov   $b5,a
0904: 6f        ret

0905: e8 00     mov   a,#$00
0907: d5 14 03  mov   $0314+x,a
090a: 9c        dec   a
090b: d5 1e 03  mov   $031e+x,a
090e: d5 28 03  mov   $0328+x,a
0911: 6f        ret

; cpu cmd 0e
0912: 8f 00 cf  mov   $cf,#$00
; cpu cmd 02 - load song from $b9 (usually 5c00)
0915: fa cf b4  mov   ($b4),($cf)
0918: 18 01 c1  or    $c1,#$01
091b: cd 07     mov   x,#$07
091d: 3f bf 0a  call  $0abf             ; initialize all tracks
0920: 1d        dec   x
0921: 10 fa     bpl   $091d
0923: 8f ff ce  mov   $ce,#$ff
0926: 3f ff 0b  call  $0bff             ; load all track addresses
0929: 02 c0     set0  $c0
092b: 8f 78 ae  mov   $ae,#$78
092e: e8 ff     mov   a,#$ff
0930: c4 b1     mov   $b1,a
0932: 6f        ret

; cpu cmd 04
0933: e4 f7     mov   a,$f7
0935: c4 9b     mov   $9b,a
0937: e4 f6     mov   a,$f6
0939: c4 f6     mov   $f6,a
093b: 68 80     cmp   a,#$80
093d: b0 08     bcs   $0947
093f: 8f 00 b6  mov   $b6,#$00
0942: 8f 01 b5  mov   $b5,#$01
0945: 2f 0c     bra   $0953
0947: 13 c1 16  bbc0  $c1,$0960
094a: 48 ff     eor   a,#$ff
094c: bc        inc   a
094d: 8f 00 b5  mov   $b5,#$00
0950: 8f 01 b6  mov   $b6,#$01
0953: 5d        mov   x,a
0954: f5 60 09  mov   a,$0960+x
0957: c4 c2     mov   $c2,a
0959: c4 c3     mov   $c3,a
095b: 18 02 c1  or    $c1,#$02
095e: 62 c0     set3  $c0
0960: 6f        ret

0961: db $ff,$c8,$96,$64,$50,$3c,$28,$14
0969: db $0a,$01

; cpu cmd 14
096b: fa b4 f6  mov   ($f6),($b4)
096e: 6f        ret

; cpu cmd 06
096f: e4 f6     mov   a,$f6
0971: c4 f6     mov   $f6,a
0973: 1c        asl   a
0974: 1c        asl   a
0975: 68 54     cmp   a,#$54
0977: b0 11     bcs   $098a
0979: fd        mov   y,a
097a: f6 26 0c  mov   a,$0c26+y
097d: 16 27 0c  or    a,$0c27+y
0980: f0 03     beq   $0985             ; branch if null song
0982: 3f 8b 09  call  $098b
0985: fc        inc   y
0986: fc        inc   y
0987: 5f a4 09  jmp   $09a4

098a: 6f        ret

098b: 38 bf 61  and   $61,#$bf
098e: 38 bf 65  and   $65,#$bf
0991: 38 bf 72  and   $72,#$bf
0994: cd 08     mov   x,#$08
0996: 18 04 c1  or    $c1,#$04
0999: 8f ff b2  mov   $b2,#$ff
099c: 8f 78 af  mov   $af,#$78
099f: b2 c0     clr5  $c0
09a1: 5f bd 09  jmp   $09bd

09a4: 38 7f 61  and   $61,#$7f
09a7: 38 7f 65  and   $65,#$7f
09aa: 38 7f 72  and   $72,#$7f
09ad: cd 09     mov   x,#$09
09af: 18 08 c1  or    $c1,#$08
09b2: 8f ff b3  mov   $b3,#$ff
09b5: 8f 78 b0  mov   $b0,#$78
09b8: d2 c0     clr6  $c0
09ba: 5f bd 09  jmp   $09bd

09bd: 4d        push  x
09be: 1d        dec   x
09bf: 1d        dec   x
09c0: e8 01     mov   a,#$01
09c2: d5 14 03  mov   $0314+x,a
09c5: ce        pop   x
09c6: 8f 4d f2  mov   $f2,#$4d
09c9: fa 65 f3  mov   ($f3),($65)       ; EON
09cc: 8f 3d f2  mov   $f2,#$3d
09cf: fa 72 f3  mov   ($f3),($72)       ; NON
09d2: 3f bf 0a  call  $0abf
09d5: e4 9c     mov   a,$9c
09d7: d5 0a 03  mov   $030a+x,a
09da: f6 27 0c  mov   a,$0c27+y
09dd: d4 7d     mov   $7d+x,a
09df: f6 26 0c  mov   a,$0c26+y
09e2: d4 73     mov   $73+x,a
09e4: 6f        ret

; cpu cmd 0c
09e5: 8f 00 ca  mov   $ca,#$00
09e8: 8f 04 cb  mov   $cb,#$04
09eb: 3f 44 11  call  $1144
09ee: 38 f3 c1  and   $c1,#$f3
09f1: 18 c0 61  or    $61,#$c0
09f4: 8d 54     mov   y,#$54
09f6: 3f 8b 09  call  $098b
09f9: e5 00 04  mov   a,$0400
09fc: 05 01 04  or    a,$0401
09ff: f0 1b     beq   $0a1c
0a01: e5 01 04  mov   a,$0401
0a04: fd        mov   y,a
0a05: e5 00 04  mov   a,$0400
0a08: 8f 04 03  mov   $03,#$04
0a0b: 8f 00 02  mov   $02,#$00
0a0e: 7a 02     addw  ya,$02
0a10: c5 7c 0c  mov   $0c7c,a
0a13: dd        mov   a,y
0a14: c5 7d 0c  mov   $0c7d,a
0a17: 8d 56     mov   y,#$56
0a19: 5f a4 09  jmp   $09a4

0a1c: 6f        ret

; cpu cmd 08
0a1d: e4 f6     mov   a,$f6
0a1f: c4 f6     mov   $f6,a
0a21: 32 c0     clr1  $c0
0a23: f0 02     beq   $0a27
0a25: 22 c0     set1  $c0
0a27: 13 c0 11  bbc0  $c0,$0a3b
0a2a: 5f f6 07  jmp   $07f6

0a2d: eb 6b     mov   y,$6b
0a2f: e4 6c     mov   a,$6c
0a31: 33 c0 07  bbc1  $c0,$0a3b
0a34: cb 00     mov   $00,y
0a36: 60        clrc
0a37: 84 00     adc   a,$00
0a39: 5c        lsr   a
0a3a: fd        mov   y,a
0a3b: cb 62     mov   $62,y
0a3d: c4 63     mov   $63,a
0a3f: 6f        ret

; cpu cmd 0a
0a40: 3f ba 08  call  $08ba
0a43: fa b9 ca  mov   ($ca),($b9)
0a46: fa ba cb  mov   ($cb),($ba)
0a49: e8 00     mov   a,#$00
0a4b: c4 f4     mov   $f4,a
0a4d: c4 f5     mov   $f5,a
0a4f: c4 f6     mov   $f6,a
0a51: c4 f7     mov   $f7,a
0a53: 3f 44 11  call  $1144
0a56: ba 00     movw  ya,$00
0a58: 7a b9     addw  ya,$b9
0a5a: e8 00     mov   a,#$00
0a5c: fc        inc   y
0a5d: da a8     movw  $a8,ya
0a5f: ba b9     movw  ya,$b9
0a61: da 00     movw  $00,ya
0a63: 8d 00     mov   y,#$00
0a65: f7 00     mov   a,($00)+y
0a67: d0 04     bne   $0a6d
0a69: fc        inc   y
0a6a: fc        inc   y
0a6b: 2f f8     bra   $0a65
0a6d: 80        setc
0a6e: a8 20     sbc   a,#$20
0a70: f0 26     beq   $0a98
0a72: 8f 20 c7  mov   $c7,#$20
0a75: fa bc bb  mov   ($bb),($bc)
0a78: f8 bf     mov   x,$bf
0a7a: 2d        push  a
0a7b: eb c7     mov   y,$c7
0a7d: f7 b9     mov   a,($b9)+y
0a7f: 8d 00     mov   y,#$00
0a81: 76 7c 0b  cmp   a,$0b7c+y
0a84: f0 0c     beq   $0a92
0a86: fc        inc   y
0a87: 7e bf     cmp   y,$bf
0a89: d0 f6     bne   $0a81
0a8b: d5 7c 0b  mov   $0b7c+x,a
0a8e: 3f 9c 0b  call  $0b9c
0a91: 3d        inc   x
0a92: ab c7     inc   $c7
0a94: ae        pop   a
0a95: 9c        dec   a
0a96: d0 e2     bne   $0a7a
0a98: e4 f4     mov   a,$f4
0a9a: 04 f5     or    a,$f5
0a9c: 04 f6     or    a,$f6
0a9e: 04 f7     or    a,$f7
0aa0: d0 f6     bne   $0a98
0aa2: e8 ff     mov   a,#$ff
0aa4: c4 f6     mov   $f6,a
0aa6: bc        inc   a
0aa7: c4 f7     mov   $f7,a
0aa9: 8f dd f4  mov   $f4,#$dd
0aac: 8f dd f5  mov   $f5,#$dd
0aaf: e4 f4     mov   a,$f4
0ab1: 04 f5     or    a,$f5
0ab3: 04 f6     or    a,$f6
0ab5: 04 f7     or    a,$f7
0ab7: d0 f6     bne   $0aaf
0ab9: c5 3f 03  mov   $033f,a
0abc: d2 71     clr6  $71
0abe: 6f        ret

; initialize track x
0abf: e8 ff     mov   a,#$ff
0ac1: d5 14 02  mov   $0214+x,a
0ac4: d5 1e 03  mov   $031e+x,a
0ac7: d5 28 03  mov   $0328+x,a
0aca: e8 40     mov   a,#$40
0acc: d5 0a 03  mov   $030a+x,a
0acf: e8 01     mov   a,#$01
0ad1: d5 32 03  mov   $0332+x,a
0ad4: d4 56     mov   $56+x,a
0ad6: 9c        dec   a
0ad7: d5 00 02  mov   $0200+x,a
0ada: d5 0a 02  mov   $020a+x,a
0add: d5 3c 02  mov   $023c+x,a
0ae0: d5 46 02  mov   $0246+x,a
0ae3: d5 50 02  mov   $0250+x,a
0ae6: d5 5a 02  mov   $025a+x,a
0ae9: d5 64 02  mov   $0264+x,a
0aec: d5 6e 02  mov   $026e+x,a
0aef: d5 78 02  mov   $0278+x,a
0af2: d5 82 02  mov   $0282+x,a
0af5: d5 8c 02  mov   $028c+x,a
0af8: d5 96 02  mov   $0296+x,a
0afb: d5 a0 02  mov   $02a0+x,a
0afe: d5 aa 02  mov   $02aa+x,a
0b01: d5 b4 02  mov   $02b4+x,a
0b04: d5 be 02  mov   $02be+x,a
0b07: d5 c8 02  mov   $02c8+x,a
0b0a: d5 d2 02  mov   $02d2+x,a
0b0d: d5 dc 02  mov   $02dc+x,a
0b10: d5 e6 02  mov   $02e6+x,a
0b13: d5 28 02  mov   $0228+x,a
0b16: d5 38 00  mov   $0038+x,a
0b19: d5 1e 02  mov   $021e+x,a
0b1c: d5 00 03  mov   $0300+x,a
0b1f: d4 06     mov   $06+x,a
0b21: d4 10     mov   $10+x,a
0b23: d4 1a     mov   $1a+x,a
0b25: d4 24     mov   $24+x,a
0b27: d4 42     mov   $42+x,a
0b29: d4 4c     mov   $4c+x,a
0b2b: 6f        ret

0b2c: e8 1b     mov   a,#$1b
0b2e: 8f 5d f2  mov   $f2,#$5d
0b31: c4 f3     mov   $f3,a             ; DIR = 0x1b00
0b33: c4 a9     mov   $a9,a
0b35: 8f 80 a8  mov   $a8,#$80
0b38: c4 b8     mov   $b8,a
0b3a: 8f 00 b7  mov   $b7,#$00
0b3d: 8d 7f     mov   y,#$7f
0b3f: e8 00     mov   a,#$00
0b41: d7 b7     mov   ($b7)+y,a         ; clear DIR entries
0b43: dc        dec   y
0b44: 10 fb     bpl   $0b41
0b46: eb bf     mov   y,$bf
0b48: f6 7c 0b  mov   a,$0b7c+y
0b4b: 68 ff     cmp   a,#$ff
0b4d: f0 07     beq   $0b56
0b4f: 3f 9c 0b  call  $0b9c
0b52: ab bf     inc   $bf
0b54: 2f f0     bra   $0b46
0b56: e4 f4     mov   a,$f4
0b58: 04 f5     or    a,$f5
0b5a: 04 f6     or    a,$f6
0b5c: 04 f7     or    a,$f7
0b5e: d0 f6     bne   $0b56
0b60: e8 ff     mov   a,#$ff
0b62: c4 f6     mov   $f6,a
0b64: bc        inc   a
0b65: c4 f7     mov   $f7,a
0b67: 8f dd f4  mov   $f4,#$dd
0b6a: 8f dd f5  mov   $f5,#$dd
0b6d: 8f 00 a8  mov   $a8,#$00
0b70: ab a9     inc   $a9
0b72: fa bb bc  mov   ($bc),($bb)
0b75: fa a8 b9  mov   ($b9),($a8)
0b78: fa a9 ba  mov   ($ba),($a9)
0b7b: 6f        ret

; instrument-SRCN lookup table
0b7c: db $00,$01,$02,$03
0b80: db $06,$1b,$20,$24
0b84: db $18,$0b,$27,$19
0b88: db $2b,$08,$2c,$2d
0b8c: db $25,$ff,$ff,$ff
0b90: db $ff,$ff,$ff,$ff
0b94: db $ff,$ff,$ff,$ff
0b98: db $ff,$ff,$ff,$ff
0b9a: db $ff,$ff,$ff,$ff

0b9c: 2d        push  a
0b9d: e4 f4     mov   a,$f4
0b9f: 04 f5     or    a,$f5
0ba1: 04 f6     or    a,$f6
0ba3: 04 f7     or    a,$f7
0ba5: d0 f6     bne   $0b9d
0ba7: ae        pop   a
0ba8: c4 f6     mov   $f6,a
0baa: 8f dd f4  mov   $f4,#$dd
0bad: 8f dd f5  mov   $f5,#$dd
0bb0: fa a8 ca  mov   ($ca),($a8)
0bb3: fa a9 cb  mov   ($cb),($a9)
0bb6: 3f 44 11  call  $1144
0bb9: ba a8     movw  ya,$a8
0bbb: 8f 02 02  mov   $02,#$02
0bbe: 8f 00 03  mov   $03,#$00
0bc1: 7a 02     addw  ya,$02
0bc3: da c4     movw  $c4,ya
0bc5: eb bb     mov   y,$bb
0bc7: 8f 00 02  mov   $02,#$00
0bca: e4 a8     mov   a,$a8
0bcc: 60        clrc
0bcd: 88 02     adc   a,#$02
0bcf: 90 02     bcc   $0bd3
0bd1: ab 02     inc   $02
0bd3: d7 b7     mov   ($b7)+y,a
0bd5: fc        inc   y
0bd6: e4 a9     mov   a,$a9
0bd8: 60        clrc
0bd9: 84 02     adc   a,$02
0bdb: d7 b7     mov   ($b7)+y,a
0bdd: fc        inc   y
0bde: 6d        push  y
0bdf: 8d 01     mov   y,#$01
0be1: f7 a8     mov   a,($a8)+y
0be3: 2d        push  a
0be4: dc        dec   y
0be5: f7 a8     mov   a,($a8)+y
0be7: ee        pop   y
0be8: 7a c4     addw  ya,$c4
0bea: cb 02     mov   $02,y
0bec: ee        pop   y
0bed: d7 b7     mov   ($b7)+y,a
0bef: fc        inc   y
0bf0: e4 02     mov   a,$02
0bf2: d7 b7     mov   ($b7)+y,a
0bf4: ba a8     movw  ya,$a8
0bf6: 7a 00     addw  ya,$00
0bf8: da a8     movw  $a8,ya
0bfa: 60        clrc
0bfb: 98 04 bb  adc   $bb,#$04
0bfe: 6f        ret

; load all track addresses
0bff: e8 00     mov   a,#$00
0c01: fd        mov   y,a
0c02: 5d        mov   x,a
0c03: c4 67     mov   $67,a
; for x in 0..8
0c05: 4b 67     lsr   $67
0c07: f7 b9     mov   a,($b9)+y
0c09: d4 73     mov   $73+x,a           ; load voice address (lo)
0c0b: c4 00     mov   $00,a
0c0d: fc        inc   y
0c0e: f7 b9     mov   a,($b9)+y
0c10: c4 01     mov   $01,a
0c12: 60        clrc
0c13: 84 ba     adc   a,$ba             ; convert offset to address
0c15: d4 7d     mov   $7d+x,a           ; load voice address (hi)
0c17: 09 01 00  or    ($00),($01)
0c1a: f0 03     beq   $0c1f             ; offset 0 = unused track
0c1c: 18 80 67  or    $67,#$80          ; indicate track availability
0c1f: fc        inc   y
0c20: 3d        inc   x
0c21: c8 08     cmp   x,#$08
0c23: d0 e0     bne   $0c05
0c25: 6f        ret

; 0c26: song list

1144: 78 aa f4  cmp   $f4,#$aa
1147: d0 fb     bne   $1144
1149: 78 aa f5  cmp   $f5,#$aa
114c: d0 f6     bne   $1144
114e: fa f6 c4  mov   ($c4),($f6)
1151: fa f7 c5  mov   ($c5),($f7)
1154: fa c4 00  mov   ($00),($c4)
1157: fa c5 01  mov   ($01),($c5)
115a: 8f aa f4  mov   $f4,#$aa
115d: 8f aa f5  mov   $f5,#$aa
1160: 8d 00     mov   y,#$00
1162: 78 bb f4  cmp   $f4,#$bb
1165: d0 fb     bne   $1162
1167: 78 bb f5  cmp   $f5,#$bb
116a: d0 f6     bne   $1162
116c: e4 f6     mov   a,$f6
116e: d7 ca     mov   ($ca)+y,a
1170: 3a ca     incw  $ca
1172: e4 f7     mov   a,$f7
1174: d7 ca     mov   ($ca)+y,a
1176: 3a ca     incw  $ca
1178: 8f bb f4  mov   $f4,#$bb
117b: 8f bb f5  mov   $f5,#$bb
117e: 78 cc f4  cmp   $f4,#$cc
1181: d0 fb     bne   $117e
1183: 78 cc f5  cmp   $f5,#$cc
1186: d0 f6     bne   $117e
1188: 8f cc f4  mov   $f4,#$cc
118b: 8f cc f5  mov   $f5,#$cc
118e: 1a c4     decw  $c4
1190: 1a c4     decw  $c4
1192: d0 ce     bne   $1162
1194: 6f        ret

; 1195: instrument table

; tick
1294: 9b 56     dec   $56+x
1296: f0 07     beq   $129f
1298: f4 56     mov   a,$56+x
129a: 75 46 02  cmp   a,$0246+x         ; tick for key-off?
129d: d0 0b     bne   $12aa
129f: e3 a6 08  bbs7  $a6,$12aa
12a2: f5 14 03  mov   a,$0314+x
12a5: d0 03     bne   $12aa
12a7: 09 ab 61  or    ($61),($ab)
12aa: f4 56     mov   a,$56+x
12ac: d0 20     bne   $12ce
12ae: f4 7d     mov   a,$7d+x
12b0: fd        mov   y,a
12b1: f4 73     mov   a,$73+x
12b3: da a4     movw  $a4,ya            ; set voice ptr into $a4
12b5: 3f 07 1a  call  $1a07             ; read vcmd
12b8: 68 d0     cmp   a,#$d0
12ba: 90 07     bcc   $12c3
12bc: 3f ba 13  call  $13ba
12bf: f8 aa     mov   x,$aa
12c1: 2f f2     bra   $12b5
; vcmd 00-cf
12c3: 3f f8 12  call  $12f8             ; dispatch note byte
12c6: e4 a4     mov   a,$a4
12c8: d4 73     mov   $73+x,a
12ca: e4 a5     mov   a,$a5
12cc: d4 7d     mov   $7d+x,a
12ce: 5f a9 18  jmp   $18a9

12d1: f5 c8 02  mov   a,$02c8+x
12d4: d4 4c     mov   $4c+x,a
12d6: f5 00 02  mov   a,$0200+x
12d9: d4 06     mov   $06+x,a
12db: e8 00     mov   a,#$00
12dd: 33 a6 02  bbc1  $a6,$12e2
12e0: e8 80     mov   a,#$80
12e2: d4 24     mov   $24+x,a
12e4: f5 50 02  mov   a,$0250+x
12e7: d5 46 02  mov   $0246+x,a
12ea: f0 0b     beq   $12f7
12ec: f4 56     mov   a,$56+x           ; load note length
12ee: fd        mov   y,a
12ef: f5 50 02  mov   a,$0250+x
12f2: cf        mul   ya                ; apply quantize
12f3: dd        mov   a,y
12f4: d5 46 02  mov   $0246+x,a         ; save the tick count before key-off
12f7: 6f        ret

; dispatch note byte A
12f8: c4 9f     mov   $9f,a             ; save note byte
12fa: 28 07     and   a,#$07            ; lower 3 bits: duration
12fc: f0 09     beq   $1307
12fe: 9c        dec   a
12ff: 60        clrc
1300: 88 18     adc   a,#$18            ; duration table: offset 018h in song header
1302: fd        mov   y,a
1303: f7 b9     mov   a,($b9)+y         ; read note length from duration table
1305: 2f 03     bra   $130a
;
1307: 3f 07 1a  call  $1a07             ; read note length if durbit == 0
;
130a: d4 56     mov   $56+x,a           ; save note length
130c: e4 9f     mov   a,$9f
130e: 68 c0     cmp   a,#$c0
1310: 90 04     bcc   $1316
; c0-cf - rest
1312: d5 14 02  mov   $0214+x,a         ; save note byte
1315: 6f        ret
; 00-bf - note
1316: 28 f0     and   a,#$f0            ; upper 4 bits: key of note
1318: 9f        xcn   a
1319: 95 aa 02  adc   a,$02aa+x         ; add octave
131c: c4 00     mov   $00,a
131e: 1c        asl   a
131f: 73 9f 03  bbc3  $9f,$1325         ; bit 3: slur/tie
1322: 60        clrc
1323: 08 01     or    a,#$01            ; set the slur/tie flag
1325: c4 02     mov   $02,a
1327: b2 a6     clr5  $a6
1329: f5 14 02  mov   a,$0214+x
132c: 5c        lsr   a
132d: 90 10     bcc   $133f
132f: 2d        push  a
1330: e4 02     mov   a,$02
1332: d5 14 02  mov   $0214+x,a
1335: 5c        lsr   a
1336: c4 03     mov   $03,a
1338: ae        pop   a
1339: 64 03     cmp   a,$03
133b: d0 02     bne   $133f
133d: a2 a6     set5  $a6
133f: e3 a6 08  bbs7  $a6,$134a
1342: f5 14 03  mov   a,$0314+x
1345: d0 03     bne   $134a
1347: 3f 74 13  call  $1374
134a: f2 a6     clr7  $a6
134c: 73 9f 02  bbc3  $9f,$1351
134f: e2 a6     set7  $a6
1351: e4 02     mov   a,$02
1353: d5 14 02  mov   $0214+x,a
1356: a3 a6 1a  bbs5  $a6,$1373
1359: 3f d1 12  call  $12d1
135c: e4 00     mov   a,$00
135e: c4 a1     mov   $a1,a
1360: d5 be 02  mov   $02be+x,a
1363: e8 00     mov   a,#$00
1365: c4 a0     mov   $a0,a
1367: d5 b4 02  mov   $02b4+x,a
136a: 3f 22 1a  call  $1a22
136d: 3f fd 15  call  $15fd
1370: 5f 60 17  jmp   $1760

1373: 6f        ret

1374: f5 1e 02  mov   a,$021e+x
1377: f0 05     beq   $137e
1379: 09 ab 65  or    ($65),($ab)
137c: 2f 05     bra   $1383
137e: e4 ab     mov   a,$ab
1380: 4e 65 00  tclr1 $0065
1383: f5 32 02  mov   a,$0232+x
1386: f0 05     beq   $138d
1388: 09 ab 66  or    ($66),($ab)
138b: 2f 05     bra   $1392
138d: e4 ab     mov   a,$ab
138f: 4e 66 00  tclr1 $0066
1392: f4 38     mov   a,$38+x
1394: f0 1b     beq   $13b1
1396: c8 08     cmp   x,#$08
1398: b0 06     bcs   $13a0
139a: a3 c0 1c  bbs5  $c0,$13b9
139d: c3 c0 19  bbs6  $c0,$13b9
13a0: 09 ab 72  or    ($72),($ab)
13a3: 38 60 71  and   $71,#$60
13a6: 04 71     or    a,$71
13a8: c4 71     mov   $71,a
13aa: 8f 6c f2  mov   $f2,#$6c
13ad: c4 f3     mov   $f3,a             ; FLG
13af: 2f 05     bra   $13b6
13b1: e4 ab     mov   a,$ab
13b3: 4e 72 00  tclr1 $0072
13b6: 09 ab 60  or    ($60),($ab)
13b9: 6f        ret

; dispatch vcmd
13ba: 80        setc
13bb: a8 d0     sbc   a,#$d0
13bd: c4 9f     mov   $9f,a
13bf: 1c        asl   a
13c0: 5d        mov   x,a
13c1: 1f c4 13  jmp   ($13c4+x)

; vcmd dispatch table
13c4: dw $141e  ; d0 - octave 0
13c6: dw $141e  ; d1 - octave 1
13c8: dw $141e  ; d2 - octave 2
13ca: dw $141e  ; d3 - octave 3
13cc: dw $141e  ; d4 - octave 4
13ce: dw $141e  ; d5 - octave 5
13d0: dw $141e  ; d6 - octave 6
13d2: dw $1429  ; d7 - tempo
13d4: dw $1443  ; d8 - instrument
13d6: dw $14c0  ; d9
13d8: dw $14f0  ; da
13da: dw $14fe  ; db
13dc: dw $1508  ; dc
13de: dw $150c  ; dd - quantize
13e0: dw $1515  ; de - volume
13e2: dw $151e  ; df - decrease volume by 8
13e4: dw $1523  ; e0 - decrease volume by 1
13e6: dw $1528  ; e1 - decrease volume by 2
13e8: dw $152d  ; e2 - decrease volume by 4
13ea: dw $1545  ; e3 - increase volume by 8
13ec: dw $154a  ; e4 - increase volume by 1
13ee: dw $154f  ; e5 - increase volume by 2
13f0: dw $1554  ; e6 - increase volume by 4
13f2: dw $156e  ; e7 - pan
13f4: dw $1581  ; e8
13f6: dw $159b  ; e9
13f8: dw $15b5  ; ea
13fa: dw $15e5  ; eb
13fc: dw $15f4  ; ec - tuning
13fe: dw $16c7  ; ed - repeat start
1400: dw $16d1  ; ee - repeat break
1402: dw $1701  ; ef - repeat end
1404: dw $1726  ; f0
1406: dw $1740  ; f1
1408: dw $174f  ; f2 - ADSR
140a: dw $179b  ; f3
140c: dw $17af  ; f4
140e: dw $17e4  ; f5 - pitchmod on/off
1410: dw $17ed  ; f6 - echo on/off
1412: dw $17f6  ; f7 - echo param
1414: dw $1864  ; f8
1416: dw $187f  ; f9 - echo volume
1418: dw $1890  ; fa
141a: dw $18a6  ; fb - nop.1
141c: dw $1473  ; fc - goto / halt

; vcmd d0-d6 - octave
141e: f8 aa     mov   x,$aa
1420: e4 9f     mov   a,$9f
1422: 8d 0c     mov   y,#$0c
1424: cf        mul   ya
1425: d5 aa 02  mov   $02aa+x,a
1428: 6f        ret

; vcmd d7 - tempo
1429: 3f 07 1a  call  $1a07
142c: 78 08 aa  cmp   $aa,#$08
142f: f0 0c     beq   $143d
1431: b0 0d     bcs   $1440
1433: 78 00 c8  cmp   $c8,#$00
1436: d0 02     bne   $143a
1438: c4 ae     mov   $ae,a             ; tempo
143a: c4 c9     mov   $c9,a
143c: 6f        ret

143d: c4 af     mov   $af,a
143f: 6f        ret

1440: c4 b0     mov   $b0,a
1442: 6f        ret

; vcmd d8 - instrument
1443: 3f 07 1a  call  $1a07
1446: cd 00     mov   x,#$00
1448: 75 7c 0b  cmp   a,$0b7c+x         ; read instrument-SRCN lookup table
144b: f0 03     beq   $1450             ; break if the instrument found (x=SRCN)
144d: 3d        inc   x
144e: 2f f8     bra   $1448
1450: 8d 05     mov   y,#$05
1452: cf        mul   ya
1453: fd        mov   y,a
1454: 7d        mov   a,x
1455: f8 aa     mov   x,$aa
1457: d5 28 02  mov   $0228+x,a         ; SRCN
145a: f6 95 11  mov   a,$1195+y
145d: d5 5a 02  mov   $025a+x,a         ; ADSR(1)
1460: f6 96 11  mov   a,$1196+y
1463: d5 64 02  mov   $0264+x,a         ; ADSR(2)
1466: f6 99 11  mov   a,$1199+y
1469: d4 87     mov   $87+x,a           ; set pitch multiplier (fraction)
146b: f6 98 11  mov   a,$1198+y
146e: d4 91     mov   $91+x,a           ; set pitch multiplier (integer)
1470: 5f 60 17  jmp   $1760

; vcmd fc - goto / halt
1473: 3f 07 1a  call  $1a07
1476: c4 9f     mov   $9f,a
1478: 3f 07 1a  call  $1a07
147b: fd        mov   y,a               ; arg1/2: destination offset
147c: 04 9f     or    a,$9f
147e: f0 07     beq   $1487
; dest != 0: goto
1480: e4 9f     mov   a,$9f
1482: 7a a4     addw  ya,$a4
1484: da a4     movw  $a4,ya
1486: 6f        ret
; dest == 0: halt
1487: ae        pop   a
1488: ae        pop   a
1489: f8 aa     mov   x,$aa
148b: c8 08     cmp   x,#$08
148d: f0 08     beq   $1497
148f: b0 0d     bcs   $149e
1491: e4 ab     mov   a,$ab
1493: 4e 67 00  tclr1 $0067
1496: 6f        ret

1497: 38 8b c1  and   $c1,#$8b
149a: cd 06     mov   x,#$06
149c: 2f 05     bra   $14a3
149e: 38 87 c1  and   $c1,#$87
14a1: cd 07     mov   x,#$07
14a3: e8 00     mov   a,#$00
14a5: d5 14 03  mov   $0314+x,a
14a8: 9c        dec   a
14a9: d5 1e 03  mov   $031e+x,a
14ac: d5 28 03  mov   $0328+x,a
14af: 7d        mov   a,x
14b0: 80        setc
14b1: a8 06     sbc   a,#$06
14b3: 5d        mov   x,a
14b4: f5 be 14  mov   a,$14be+x
14b7: 24 c0     and   a,$c0
14b9: c4 c0     mov   $c0,a
14bb: f8 aa     mov   x,$aa
14bd: 6f        ret

14be: db $df,$bf

; vcmd d9
14c0: f8 aa     mov   x,$aa
14c2: 3f 07 1a  call  $1a07
14c5: d4 06     mov   $06+x,a
14c7: d5 00 02  mov   $0200+x,a
14ca: 3f 07 1a  call  $1a07
14cd: d4 10     mov   $10+x,a
14cf: 3f 07 1a  call  $1a07
14d2: fd        mov   y,a
14d3: 68 80     cmp   a,#$80
14d5: 90 0c     bcc   $14e3
14d7: 22 a6     set1  $a6
14d9: e8 80     mov   a,#$80
14db: d4 24     mov   $24+x,a
14dd: dd        mov   a,y
14de: 48 ff     eor   a,#$ff
14e0: bc        inc   a
14e1: 2f 07     bra   $14ea
14e3: 32 a6     clr1  $a6
14e5: e8 00     mov   a,#$00
14e7: d4 24     mov   $24+x,a
14e9: dd        mov   a,y
14ea: d4 1a     mov   $1a+x,a
14ec: d5 0a 02  mov   $020a+x,a
14ef: 6f        ret

; vcmd da
14f0: f8 aa     mov   x,$aa
14f2: 3f 07 1a  call  $1a07
14f5: fd        mov   y,a
14f6: f0 03     beq   $14fb
14f8: f5 0a 02  mov   a,$020a+x
14fb: d4 1a     mov   $1a+x,a
14fd: 6f        ret

; vcmd db
14fe: 3f 07 1a  call  $1a07
1501: 3f 07 1a  call  $1a07
1504: 3f 07 1a  call  $1a07
1507: 6f        ret

; vcmd dc
1508: 3f 07 1a  call  $1a07
150b: 6f        ret

; vcmd dd - quantize
150c: f8 aa     mov   x,$aa
150e: 3f 07 1a  call  $1a07
1511: d5 50 02  mov   $0250+x,a         ; unsigned 8-bit quantize value
1514: 6f        ret

; vcmd de - volume
1515: f8 aa     mov   x,$aa
1517: 3f 07 1a  call  $1a07
151a: d5 00 03  mov   $0300+x,a
151d: 6f        ret

; vcmd df - decrease volume by 8
151e: 8f 08 00  mov   $00,#$08
1521: 2f 0d     bra   $1530
; vcmd e0 - decrease volume by 1
1523: 8f 01 00  mov   $00,#$01
1526: 2f 08     bra   $1530
; vcmd e1 - decrease volume by 2
1528: 8f 02 00  mov   $00,#$02
152b: 2f 03     bra   $1530
; vcmd e2 - decrease volume by 4
152d: 8f 04 00  mov   $00,#$04
1530: f8 aa     mov   x,$aa
1532: f5 00 03  mov   a,$0300+x
1535: f0 0d     beq   $1544
1537: 80        setc
1538: a4 00     sbc   a,$00
153a: b0 02     bcs   $153e
153c: e8 00     mov   a,#$00
153e: d5 00 03  mov   $0300+x,a
1541: 5f fd 15  jmp   $15fd

1544: 6f        ret

; vcmd e3 - increase volume by 8
1545: 8f 08 00  mov   $00,#$08
1548: 2f 0d     bra   $1557
; vcmd e4 - increase volume by 1
154a: 8f 01 00  mov   $00,#$01
154d: 2f 08     bra   $1557
; vcmd e5 - increase volume by 2
154f: 8f 02 00  mov   $00,#$02
1552: 2f 03     bra   $1557
; vcmd e6 - increase volume by 4
1554: 8f 04 00  mov   $00,#$04
1557: f8 aa     mov   x,$aa
1559: f5 00 03  mov   a,$0300+x
155c: 68 7f     cmp   a,#$7f
155e: f0 0d     beq   $156d
1560: 60        clrc
1561: 84 00     adc   a,$00
1563: 10 02     bpl   $1567
1565: e8 7f     mov   a,#$7f
1567: d5 00 03  mov   $0300+x,a
156a: 5f fd 15  jmp   $15fd

156d: 6f        ret

; vcmd e7 - pan
156e: f8 aa     mov   x,$aa
1570: 3f 07 1a  call  $1a07
1573: d5 0a 03  mov   $030a+x,a
1576: e8 ff     mov   a,#$ff
1578: d5 1e 03  mov   $031e+x,a
157b: e8 00     mov   a,#$00
157d: d5 8c 02  mov   $028c+x,a
1580: 6f        ret

; vcmd e8
1581: f8 aa     mov   x,$aa
1583: f5 0a 03  mov   a,$030a+x
1586: f0 12     beq   $159a
1588: 80        setc
1589: a8 08     sbc   a,#$08
158b: b0 02     bcs   $158f
158d: e8 00     mov   a,#$00
158f: d5 0a 03  mov   $030a+x,a
1592: e8 ff     mov   a,#$ff
1594: d5 1e 03  mov   $031e+x,a
1597: 5f fd 15  jmp   $15fd

159a: 6f        ret

; vcmd e9
159b: f8 aa     mov   x,$aa
159d: f5 0a 03  mov   a,$030a+x
15a0: 30 12     bmi   $15b4
15a2: 60        clrc
15a3: 88 08     adc   a,#$08
15a5: 10 02     bpl   $15a9
15a7: e8 7f     mov   a,#$7f
15a9: d5 0a 03  mov   $030a+x,a
15ac: e8 ff     mov   a,#$ff
15ae: d5 1e 03  mov   $031e+x,a
15b1: 5f fd 15  jmp   $15fd

15b4: 6f        ret

; vcmd ea
15b5: f8 aa     mov   x,$aa
15b7: f5 0a 03  mov   a,$030a+x
15ba: 2d        push  a
15bb: 3f 07 1a  call  $1a07
15be: 72 a6     clr3  $a6
15c0: 75 0a 03  cmp   a,$030a+x
15c3: b0 07     bcs   $15cc
15c5: ee        pop   y
15c6: 2d        push  a
15c7: 62 a6     set3  $a6
15c9: f5 0a 03  mov   a,$030a+x
15cc: d5 82 02  mov   $0282+x,a
15cf: ae        pop   a
15d0: d5 78 02  mov   $0278+x,a
15d3: 3f 07 1a  call  $1a07
15d6: d5 8c 02  mov   $028c+x,a
15d9: d5 96 02  mov   $0296+x,a
15dc: 3f 07 1a  call  $1a07
15df: d4 42     mov   $42+x,a
15e1: d5 6e 02  mov   $026e+x,a
15e4: 6f        ret

; vcmd eb
15e5: f8 aa     mov   x,$aa
15e7: 3f 07 1a  call  $1a07
15ea: fd        mov   y,a
15eb: f0 03     beq   $15f0
15ed: f5 96 02  mov   a,$0296+x
15f0: d5 8c 02  mov   $028c+x,a
15f3: 6f        ret

; vcmd ec - tuning
15f4: f8 aa     mov   x,$aa
15f6: 3f 07 1a  call  $1a07
15f9: d5 a0 02  mov   $02a0+x,a         ; signed 8-bit (in hertz, NOT in semitones/cents)
15fc: 6f        ret

15fd: f5 00 03  mov   a,$0300+x         ; volume
1600: 75 1e 03  cmp   a,$031e+x
1603: f0 40     beq   $1645
1605: d5 1e 03  mov   $031e+x,a
1608: c8 08     cmp   x,#$08
160a: b0 08     bcs   $1614
; apply master volume
160c: eb b4     mov   y,$b4             ; master volume
160e: cf        mul   ya
160f: 4d        push  x
1610: cd 7f     mov   x,#$7f
1612: 9e        div   ya,x
1613: ce        pop   x
;
1614: fd        mov   y,a
1615: f5 0a 03  mov   a,$030a+x         ; pan
1618: 33 c0 02  bbc1  $c0,$161d
161b: e8 3f     mov   a,#$3f            ; mono pan = 63
161d: 5d        mov   x,a
161e: f5 46 16  mov   a,$1646+x         ; left volume balance = table[pan]
1621: 6d        push  y
1622: 4d        push  x
1623: cf        mul   ya
1624: cd 7f     mov   x,#$7f
1626: 9e        div   ya,x
1627: 8d 00     mov   y,#$00
1629: f8 aa     mov   x,$aa
162b: 3f 0e 1a  call  $1a0e             ; set VOL(L)
162e: ce        pop   x
162f: ee        pop   y
1630: 7d        mov   a,x
1631: 48 7f     eor   a,#$7f
1633: bc        inc   a
1634: 28 7f     and   a,#$7f
1636: 5d        mov   x,a
1637: f5 46 16  mov   a,$1646+x         ; right volume balance = table[(128 - pan) & 128]
163a: cf        mul   ya                ; pan 0 = center (intended behavior?)
163b: cd 7f     mov   x,#$7f
163d: 9e        div   ya,x
163e: 8d 01     mov   y,#$01
1640: f8 aa     mov   x,$aa
1642: 5f 0e 1a  jmp   $1a0e             ; set VOL(R)

1645: 6f        ret

; volume balance table (linear)
1646: db $40,$40,$40,$40,$40,$40,$40,$40
164e: db $40,$40,$40,$40,$40,$40,$40,$40
1656: db $40,$40,$40,$40,$40,$40,$40,$40
165e: db $40,$40,$40,$40,$40,$40,$40,$40
1666: db $40,$40,$40,$40,$40,$40,$40,$40
166e: db $40,$40,$40,$40,$40,$40,$40,$40
1676: db $40,$40,$40,$40,$40,$40,$40,$40
167e: db $40,$40,$40,$40,$40,$40,$40,$40
1686: db $3f,$3e,$3d,$3c,$3b,$3a,$39,$38
168e: db $37,$36,$35,$34,$33,$32,$31,$30
1696: db $2f,$2e,$2d,$2c,$2b,$2a,$29,$28
169e: db $27,$26,$25,$24,$23,$22,$21,$20
16a6: db $1f,$1e,$1d,$1c,$1b,$1a,$19,$18
16ae: db $17,$16,$15,$14,$13,$12,$11,$10
16b6: db $0f,$0e,$0d,$0c,$0b,$0a,$09,$08
16be: db $07,$06,$05,$04,$03,$02,$01,$00
16c6: db $00

; vcmd ed - repeat start
16c7: 3f 07 1a  call  $1a07             ; get arg1 - repeat count
16ca: d7 a4     mov   ($a4)+y,a         ; write the count to arg2 address
16cc: 92 a6     clr4  $a6
16ce: 3a a4     incw  $a4               ; arg2 updated, skip it
16d0: 6f        ret

; vcmd ee - repeat break
16d1: 3f 07 1a  call  $1a07
16d4: 2d        push  a
16d5: 3f 07 1a  call  $1a07
16d8: fd        mov   y,a
16d9: ae        pop   a                 ; arg1/2: destination (relative offset)
16da: 7a a4     addw  ya,$a4            ; convert offset to address
16dc: da 02     movw  $02,ya            ; save the destination address
16de: da 00     movw  $00,ya
16e0: 1a 00     decw  $00
16e2: 1a 00     decw  $00
16e4: 8d 00     mov   y,#$00
16e6: f7 00     mov   a,($00)+y         ; read repeat counter offset from [dest-2]
16e8: 2d        push  a
16e9: 3a 00     incw  $00
16eb: f7 00     mov   a,($00)+y
16ed: fd        mov   y,a
16ee: ae        pop   a
16ef: 3a 00     incw  $00
16f1: 7a 00     addw  ya,$00
16f3: da 00     movw  $00,ya            ; $00 = repeat counter address
16f5: 8d 00     mov   y,#$00
16f7: f7 00     mov   a,($00)+y
16f9: 9c        dec   a
16fa: d0 04     bne   $1700             ; test the repeat counter
16fc: ba 02     movw  ya,$02
16fe: da a4     movw  $a4,ya            ; jump to the destination on the final repeat
1700: 6f        ret

; vcmd ef - repeat end
1701: 3f 07 1a  call  $1a07
1704: c4 02     mov   $02,a
1706: 3f 07 1a  call  $1a07
1709: c4 03     mov   $03,a             ; arg1/2: destination (relative offset)
170b: ba a4     movw  ya,$a4
170d: da 00     movw  $00,ya            ; save the current voice ptr
170f: ba 02     movw  ya,$02
1711: 7a a4     addw  ya,$a4
1713: da a4     movw  $a4,ya            ; update the voice ptr to the destination address
1715: 8d 00     mov   y,#$00
1717: f7 a4     mov   a,($a4)+y         ; read the repeat count from the destination
1719: 9c        dec   a
171a: d7 a4     mov   ($a4)+y,a         ; decrease and write it back
171c: d0 05     bne   $1723
; count == 0: repeat over
171e: ba 00     movw  ya,$00
1720: da a4     movw  $a4,ya            ; restore the voice ptr
1722: 6f        ret
; count != 0: repeat again
1723: 3a a4     incw  $a4               ; skip the counter
1725: 6f        ret

; vcmd f0
1726: f8 aa     mov   x,$aa
1728: 3f 07 1a  call  $1a07
172b: d4 4c     mov   $4c+x,a
172d: d5 c8 02  mov   $02c8+x,a
1730: 3f 07 1a  call  $1a07
1733: d5 d2 02  mov   $02d2+x,a
1736: d5 dc 02  mov   $02dc+x,a
1739: 3f 07 1a  call  $1a07
173c: d5 e6 02  mov   $02e6+x,a
173f: 6f        ret

; vcmd f1
1740: f8 aa     mov   x,$aa
1742: 3f 07 1a  call  $1a07
1745: fd        mov   y,a
1746: f0 03     beq   $174b
1748: f5 dc 02  mov   a,$02dc+x
174b: d5 d2 02  mov   $02d2+x,a
174e: 6f        ret

; vcmd f2 - ADSR
174f: f8 aa     mov   x,$aa
1751: 3f 07 1a  call  $1a07
1754: d5 5a 02  mov   $025a+x,a         ; ADSR(1)
1757: 3f 07 1a  call  $1a07
175a: d5 64 02  mov   $0264+x,a         ; ADSR(2)
175d: 5f 70 17  jmp   $1770

; change instrument
1760: f5 28 02  mov   a,$0228+x         ; new SRCN value
1763: 75 28 03  cmp   a,$0328+x
1766: f0 08     beq   $1770
1768: d5 28 03  mov   $0328+x,a
176b: 8d 04     mov   y,#$04
176d: 3f 0e 1a  call  $1a0e             ; set SRCN
1770: f5 5a 02  mov   a,$025a+x
1773: 08 80     or    a,#$80
1775: 8d 05     mov   y,#$05
1777: 3f 0e 1a  call  $1a0e             ; set ADSR(1)
177a: f5 64 02  mov   a,$0264+x
177d: 8d 06     mov   y,#$06
177f: 3f 0e 1a  call  $1a0e             ; set ADSR(2)
1782: e8 00     mov   a,#$00
1784: 75 32 03  cmp   a,$0332+x
1787: f0 11     beq   $179a
1789: d5 32 03  mov   $0332+x,a
178c: e8 03     mov   a,#$03
178e: d4 56     mov   $56+x,a
1790: e4 a4     mov   a,$a4
1792: d4 73     mov   $73+x,a
1794: e4 a5     mov   a,$a5
1796: d4 7d     mov   $7d+x,a
1798: ae        pop   a
1799: ae        pop   a
179a: 6f        ret

; vcmd f3
179b: f8 aa     mov   x,$aa
179d: f5 5a 02  mov   a,$025a+x
17a0: 28 ef     and   a,#$ef
17a2: 8d 05     mov   y,#$05
17a4: 3f 0e 1a  call  $1a0e             ; set ADSR(1)
17a7: 3f 07 1a  call  $1a07
17aa: 8d 07     mov   y,#$07
17ac: 5f 0e 1a  jmp   $1a0e             ; set GAIN

; vcmd f4
17af: f8 aa     mov   x,$aa
17b1: 3f 07 1a  call  $1a07
17b4: d4 38     mov   $38+x,a
17b6: 8d 6c     mov   y,#$6c
17b8: 38 20 71  and   $71,#$20
17bb: 04 71     or    a,$71
17bd: c4 71     mov   $71,a
17bf: 3f 0e 1a  call  $1a0e             ; set FLG?
17c2: c8 08     cmp   x,#$08
17c4: b0 01     bcs   $17c7
17c6: 6f        ret

17c7: fd        mov   y,a
17c8: 7d        mov   a,x
17c9: 80        setc
17ca: a8 08     sbc   a,#$08
17cc: 5d        mov   x,a
17cd: dd        mov   a,y
17ce: f0 08     beq   $17d8
17d0: f5 e0 17  mov   a,$17e0+x
17d3: 04 c0     or    a,$c0
17d5: c4 c0     mov   $c0,a
17d7: 6f        ret

17d8: f5 e2 17  mov   a,$17e2+x
17db: 24 c0     and   a,$c0
17dd: c4 c0     mov   $c0,a
17df: 6f        ret

17e0: 20        clrp
17e1: 40        setp
17e2: df        daa   a
17e3: bf        mov   a,(x)+
; vcmd f5 - pitchmod on/off
17e4: f8 aa     mov   x,$aa
17e6: 3f 07 1a  call  $1a07
17e9: d5 32 02  mov   $0232+x,a
17ec: 6f        ret

; vcmd f6 - echo on/off
17ed: f8 aa     mov   x,$aa
17ef: 3f 07 1a  call  $1a07
17f2: d5 1e 02  mov   $021e+x,a         ; EON shadow (0: off, 1: on)
17f5: 6f        ret

; vcmd f7 - echo param
17f6: f8 aa     mov   x,$aa
17f8: e8 01     mov   a,#$01
17fa: d5 1e 02  mov   $021e+x,a         ; EON shadow (0: off, 1: on)
17fd: 3f 07 1a  call  $1a07
1800: 68 08     cmp   a,#$08
1802: 90 02     bcc   $1806
1804: e8 07     mov   a,#$07
1806: 8f 7d f2  mov   $f2,#$7d
1809: fa f3 00  mov   ($00),($f3)
180c: c4 f3     mov   $f3,a             ; EDL
180e: 3f 07 1a  call  $1a07
1811: c4 64     mov   $64,a             ; EFB
1813: c5 3c 03  mov   $033c,a
1816: 3f 07 1a  call  $1a07
1819: 8d 08     mov   y,#$08
181b: cf        mul   ya
181c: 5d        mov   x,a
181d: 8d 0f     mov   y,#$0f
181f: f5 34 18  mov   a,$1834+x
1822: 4d        push  x
1823: f8 aa     mov   x,$aa
1825: 3f 0e 1a  call  $1a0e             ; set FIR C0-C7
1828: ce        pop   x
1829: 3d        inc   x
182a: dd        mov   a,y
182b: 60        clrc
182c: 88 10     adc   a,#$10
182e: fd        mov   y,a
182f: 10 ee     bpl   $181f
1831: b2 71     clr5  $71               ; echo write on
1833: 6f        ret

1834: db $7f,$00,$00,$00,$00,$00,$00,$00
183c: db $ff,$08,$17,$24,$24,$17,$18,$ff
1844: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
184c: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
1854: db $00,$00,$00,$00,$00,$00,$00,$00
185c: db $00,$00,$00,$00,$00,$00,$00,$00

; vcmd f8
1864: 3f 07 1a  call  $1a07
1867: fd        mov   y,a
1868: f0 10     beq   $187a
186a: e5 3d 03  mov   a,$033d
186d: c4 62     mov   $62,a
186f: e5 3e 03  mov   a,$033e
1872: c4 63     mov   $63,a
1874: e5 3c 03  mov   a,$033c
1877: c4 64     mov   $64,a
1879: 6f        ret

187a: c4 62     mov   $62,a
187c: c4 63     mov   $63,a
187e: 6f        ret

; vcmd f9 - echo volume
187f: 3f 07 1a  call  $1a07
1882: c5 3d 03  mov   $033d,a           ; EVOL(L)
1885: c4 62     mov   $62,a
1887: 3f 07 1a  call  $1a07
188a: c5 3e 03  mov   $033e,a           ; EVOL(R)
188d: c4 63     mov   $63,a
188f: 6f        ret

; vcmd fa
1890: 3f 07 1a  call  $1a07
1893: 8d 08     mov   y,#$08
1895: cf        mul   ya
1896: 5d        mov   x,a
1897: 8f 08 00  mov   $00,#$08
189a: 3f 07 1a  call  $1a07
189d: d5 34 18  mov   $1834+x,a
18a0: 3d        inc   x
18a1: 8b 00     dec   $00
18a3: d0 f5     bne   $189a
18a5: 6f        ret

; vcmd fb - nop.1
18a6: 5f 07 1a  jmp   $1a07

18a9: f5 d2 02  mov   a,$02d2+x
18ac: f0 03     beq   $18b1
18ae: 3f c1 18  call  $18c1
18b1: f4 1a     mov   a,$1a+x
18b3: f0 03     beq   $18b8
18b5: 3f 00 19  call  $1900
18b8: f5 8c 02  mov   a,$028c+x
18bb: f0 03     beq   $18c0
18bd: 5f 95 19  jmp   $1995

18c0: 6f        ret

18c1: f4 4c     mov   a,$4c+x
18c3: d0 1f     bne   $18e4
18c5: 8d 00     mov   y,#$00
18c7: f5 d2 02  mov   a,$02d2+x
18ca: 3f e7 18  call  $18e7
18cd: d5 b4 02  mov   $02b4+x,a
18d0: dd        mov   a,y
18d1: d5 be 02  mov   $02be+x,a
18d4: 3f 22 1a  call  $1a22
18d7: f5 e6 02  mov   a,$02e6+x
18da: c4 00     mov   $00,a
18dc: f3 00 03  bbc7  $00,$18e2
18df: 48 ff     eor   a,#$ff
18e1: bc        inc   a
18e2: d4 4c     mov   $4c+x,a
18e4: 9b 4c     dec   $4c+x
18e6: 6f        ret

18e7: da 00     movw  $00,ya
18e9: f5 e6 02  mov   a,$02e6+x
18ec: 1c        asl   a
18ed: f5 be 02  mov   a,$02be+x
18f0: 2d        push  a
18f1: f5 b4 02  mov   a,$02b4+x
18f4: ee        pop   y
18f5: 90 04     bcc   $18fb
18f7: 9a 00     subw  ya,$00
18f9: 2f 02     bra   $18fd
18fb: 7a 00     addw  ya,$00
18fd: da a0     movw  $a0,ya
18ff: 6f        ret

1900: f4 06     mov   a,$06+x
1902: d0 0a     bne   $190e
1904: f4 24     mov   a,$24+x
1906: 60        clrc
1907: 94 1a     adc   a,$1a+x
1909: d4 24     mov   $24+x,a
190b: 5f 62 19  jmp   $1962

190e: 9b 06     dec   $06+x
1910: 6f        ret

1911: f5 d2 02  mov   a,$02d2+x
1914: f0 03     beq   $1919
1916: 3f 21 19  call  $1921
1919: f4 1a     mov   a,$1a+x
191b: f0 03     beq   $1920
191d: 3f 43 19  call  $1943
1920: 6f        ret

1921: f4 4c     mov   a,$4c+x
1923: d0 1d     bne   $1942
1925: f5 d2 02  mov   a,$02d2+x
1928: eb b1     mov   y,$b1
192a: c8 08     cmp   x,#$08
192c: d0 04     bne   $1932
192e: eb b2     mov   y,$b2
1930: 2f 06     bra   $1938
1932: c8 09     cmp   x,#$09
1934: d0 02     bne   $1938
1936: eb b3     mov   y,$b3
1938: cf        mul   ya
1939: dd        mov   a,y
193a: 8d 00     mov   y,#$00
193c: 3f e7 18  call  $18e7
193f: 5f 22 1a  jmp   $1a22

1942: 6f        ret

1943: f4 06     mov   a,$06+x
1945: d0 1a     bne   $1961
1947: eb b1     mov   y,$b1
1949: c8 08     cmp   x,#$08
194b: d0 04     bne   $1951
194d: eb b2     mov   y,$b2
194f: 2f 06     bra   $1957
1951: c8 09     cmp   x,#$09
1953: d0 02     bne   $1957
1955: eb b3     mov   y,$b3
1957: f4 1a     mov   a,$1a+x
1959: cf        mul   ya
195a: dd        mov   a,y
195b: 60        clrc
195c: 94 24     adc   a,$24+x
195e: 5f 62 19  jmp   $1962

1961: 6f        ret

1962: c4 00     mov   $00,a
1964: f5 be 02  mov   a,$02be+x
1967: c4 a1     mov   $a1,a
1969: f5 b4 02  mov   a,$02b4+x
196c: c4 a0     mov   $a0,a
196e: e4 00     mov   a,$00
1970: 1c        asl   a
1971: 1c        asl   a
1972: 90 02     bcc   $1976
1974: 48 ff     eor   a,#$ff
1976: fb 10     mov   y,$10+x
1978: cf        mul   ya
1979: dd        mov   a,y
197a: 8f 00 02  mov   $02,#$00
197d: 8d 02     mov   y,#$02
197f: 1c        asl   a
1980: 2b 02     rol   $02
1982: fe fb     dbnz  y,$197f
1984: f3 00 05  bbc7  $00,$198c
1987: 48 ff     eor   a,#$ff
1989: 58 ff 02  eor   $02,#$ff
198c: eb 02     mov   y,$02
198e: 7a a0     addw  ya,$a0
1990: da a0     movw  $a0,ya
1992: 5f 22 1a  jmp   $1a22

1995: 9b 42     dec   $42+x
1997: d0 36     bne   $19cf
1999: f5 0a 03  mov   a,$030a+x
199c: 63 a6 10  bbs3  $a6,$19af
199f: 60        clrc
19a0: 95 8c 02  adc   a,$028c+x
19a3: 75 82 02  cmp   a,$0282+x
19a6: 90 17     bcc   $19bf
19a8: 62 a6     set3  $a6
19aa: f5 82 02  mov   a,$0282+x
19ad: 2f 10     bra   $19bf
19af: 80        setc
19b0: b5 8c 02  sbc   a,$028c+x
19b3: 90 05     bcc   $19ba
19b5: 75 78 02  cmp   a,$0278+x
19b8: b0 05     bcs   $19bf
19ba: 72 a6     clr3  $a6
19bc: f5 78 02  mov   a,$0278+x
19bf: d5 0a 03  mov   $030a+x,a
19c2: f5 6e 02  mov   a,$026e+x
19c5: d4 42     mov   $42+x,a
19c7: e8 ff     mov   a,#$ff
19c9: d5 1e 03  mov   $031e+x,a
19cc: 5f fd 15  jmp   $15fd

19cf: 6f        ret

19d0: 8d 0a     mov   y,#$0a
19d2: f6 f2 19  mov   a,$19f2+y
19d5: 2d        push  a
19d6: f6 fc 19  mov   a,$19fc+y
19d9: 5d        mov   x,a
19da: e6        mov   a,(x)
19db: ce        pop   x
19dc: d8 f2     mov   $f2,x
19de: ad 03     cmp   y,#$03
19e0: b0 08     bcs   $19ea
19e2: 6d        push  y
19e3: cd 7f     mov   x,#$7f
19e5: eb b4     mov   y,$b4
19e7: cf        mul   ya
19e8: 9e        div   ya,x
19e9: ee        pop   y
19ea: c4 f3     mov   $f3,a             ; set dsp reg from shadow
19ec: fe e4     dbnz  y,$19d2
19ee: cb 60     mov   $60,y
19f0: cb 61     mov   $61,y
19f2: 6f        ret

; $19f2+y - dsp reg addresses
; EVOL(L),EVOL(R),EFB,EON,FLG,KON,KOF,NON,PMON,KOF
19f3: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
; $19fc+y - dsp reg shadows
19fd: db $62,$63,$64,$65,$71,$60,$9d,$72,$66,$61

; read byte from voice ptr
1a07: 8d 00     mov   y,#$00
1a09: f7 a4     mov   a,($a4)+y
1a0b: 3a a4     incw  $a4
1a0d: 6f        ret

; write A to dsp reg Y for voice $ac?
1a0e: 2d        push  a
1a0f: f5 14 03  mov   a,$0314+x
1a12: ae        pop   a
1a13: d0 0c     bne   $1a21
1a15: 2d        push  a
1a16: cb 9f     mov   $9f,y
1a18: e4 ac     mov   a,$ac
1a1a: 04 9f     or    a,$9f
1a1c: c4 f2     mov   $f2,a
1a1e: ae        pop   a
1a1f: c4 f3     mov   $f3,a
1a21: 6f        ret

1a22: f5 87 00  mov   a,$0087+x
1a25: c4 a2     mov   $a2,a
1a27: f5 91 00  mov   a,$0091+x
1a2a: c4 a3     mov   $a3,a             ; read instrument pitch multiplier
1a2c: e4 a1     mov   a,$a1
1a2e: 8d 00     mov   y,#$00
1a30: 80        setc
1a31: a8 34     sbc   a,#$34
1a33: b0 08     bcs   $1a3d
1a35: e4 a1     mov   a,$a1
1a37: 80        setc
1a38: a8 13     sbc   a,#$13
1a3a: b0 05     bcs   $1a41
1a3c: dc        dec   y
1a3d: 7a a0     addw  ya,$a0
1a3f: da a0     movw  $a0,ya
1a41: e4 a1     mov   a,$a1
1a43: 1c        asl   a
1a44: 8d 00     mov   y,#$00
1a46: cd 18     mov   x,#$18
1a48: 9e        div   ya,x
1a49: 80        setc
1a4a: a8 05     sbc   a,#$05
1a4c: c4 02     mov   $02,a
1a4e: f6 c7 1a  mov   a,$1ac7+y
1a51: c4 00     mov   $00,a
1a53: f6 c8 1a  mov   a,$1ac8+y
1a56: c4 01     mov   $01,a
1a58: f6 ca 1a  mov   a,$1aca+y
1a5b: 2d        push  a
1a5c: f6 c9 1a  mov   a,$1ac9+y
1a5f: ee        pop   y
1a60: 9a 00     subw  ya,$00
1a62: eb a0     mov   y,$a0
1a64: cf        mul   ya
1a65: dd        mov   a,y
1a66: 8d 00     mov   y,#$00
1a68: 7a 00     addw  ya,$00
1a6a: cb 01     mov   $01,y
1a6c: eb 02     mov   y,$02
1a6e: f0 0d     beq   $1a7d
1a70: 30 05     bmi   $1a77
1a72: 1c        asl   a
1a73: 2b 01     rol   $01
1a75: 2f 06     bra   $1a7d
; octave correction
1a77: 4b 01     lsr   $01
1a79: 7c        ror   a
1a7a: fc        inc   y
1a7b: d0 fa     bne   $1a77
; apply instrument-specific pitch multiplier
1a7d: c4 00     mov   $00,a
1a7f: e4 a2     mov   a,$a2
1a81: eb 01     mov   y,$01
1a83: cf        mul   ya
1a84: da 02     movw  $02,ya
1a86: e4 a3     mov   a,$a3
1a88: eb 00     mov   y,$00
1a8a: cf        mul   ya
1a8b: 7a 02     addw  ya,$02
1a8d: da 02     movw  $02,ya
1a8f: e4 a3     mov   a,$a3
1a91: eb 01     mov   y,$01
1a93: cf        mul   ya
1a94: c4 01     mov   $01,a
1a96: e4 a2     mov   a,$a2
1a98: eb 00     mov   y,$00
1a9a: cf        mul   ya
1a9b: dd        mov   a,y
1a9c: eb 01     mov   y,$01
1a9e: 7a 02     addw  ya,$02            ; multiplied pitch frequency
1aa0: f8 aa     mov   x,$aa
1aa2: da 02     movw  $02,ya
1aa4: 8f 00 01  mov   $01,#$00
1aa7: f5 a0 02  mov   a,$02a0+x
1aaa: f0 0c     beq   $1ab8
1aac: 10 02     bpl   $1ab0
; per-voice microtuning
1aae: 8b 01     dec   $01
1ab0: c4 00     mov   $00,a             ; $00/1 = tuning (sign extended)
1ab2: ba 02     movw  ya,$02
1ab4: 7a 00     addw  ya,$00
1ab6: da 02     movw  $02,ya            ; add the value to the frequency
; write the final pitch to DSP
1ab8: e4 02     mov   a,$02
1aba: 8d 02     mov   y,#$02
1abc: 3f 0e 1a  call  $1a0e             ; set P(L)
1abf: e4 03     mov   a,$03
1ac1: 8d 03     mov   y,#$03
1ac3: 3f 0e 1a  call  $1a0e             ; set P(H)
1ac6: 6f        ret

1ac7: dw $085f
1ac9: dw $08de
1acb: dw $0965
1acd: dw $09f4
1acf: dw $0a8c
1ad1: dw $0b2c
1ad3: dw $0bd6
1ad5: dw $0c8b
1ad7: dw $0d4a
1ad9: dw $0e14
1adb: dw $0eea
1add: dw $0fcd
1adf: dw $10be
