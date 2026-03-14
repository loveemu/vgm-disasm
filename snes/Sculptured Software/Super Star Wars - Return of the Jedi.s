0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f a0 fa  mov   $fa,#$a0		; stop all timers
0707: 8f a0 fb  mov   $fb,#$a0
070a: 8f 20 fc  mov   $fc,#$20
070d: 8f 87 f1  mov   $f1,#$87		; clear COM ports
0710: 3f 80 10  call  $1080		; initialize all sound
0713: 8f 00 25  mov   $25,#$00		; install permanent pointer to the wave source dir
0716: 8f 1f 26  mov   $26,#$1f
0719: 8f 01 f6  mov   $f6,#$01
071c: 62 08     set3  $08
071e: 3f 99 0b  call  $0b99
0721: 3f 60 0b  call  $0b60
0724: 33 07 f7  bbc1  $07,$071e
0727: 8d 10     mov   y,#$10
0729: 3f 4a 07  call  $074a
072c: 83 07 12  bbs4  $07,$0741
072f: e4 fe     mov   a,$fe
0731: f0 0e     beq   $0741
0733: e4 cb     mov   a,$cb
0735: f0 07     beq   $073e
0737: 60        clrc
0738: 84 cc     adc   a,$cc
073a: c4 cc     mov   $cc,a
073c: 90 03     bcc   $0741
073e: 3f 0e 17  call  $170e
0741: e4 fd     mov   a,$fd
0743: f0 d9     beq   $071e
0745: 3f 2d 08  call  $082d
0748: 2f d4     bra   $071e
074a: e4 ff     mov   a,$ff
074c: d0 03     bne   $0751
074e: e8 01     mov   a,#$01
0750: 6f        ret

0751: cb 3c     mov   $3c,y
0753: 8f 00 3b  mov   $3b,#$00
0756: cd 14     mov   x,#$14
0758: e4 f6     mov   a,$f6
075a: f0 03     beq   $075f
075c: 3f 99 0b  call  $0b99
075f: eb 3c     mov   y,$3c
0761: f5 fc 07  mov   a,$07fc+x
0764: c4 f2     mov   $f2,a
0766: f5 28 02  mov   a,$0228+x
0769: fa f3 3d  mov   ($3d),($f3)
076c: 64 3d     cmp   a,$3d
076e: f0 0f     beq   $077f
0770: b0 09     bcs   $077b
0772: 8b 3d     dec   $3d
0774: dc        dec   y
0775: d0 f5     bne   $076c
0777: ab 3b     inc   $3b
0779: 2f 04     bra   $077f
077b: ab 3d     inc   $3d
077d: 2f f5     bra   $0774
077f: fa 3d f3  mov   ($f3),($3d)
0782: 1d        dec   x
0783: 10 d3     bpl   $0758
0785: e4 3b     mov   a,$3b
0787: 6f        ret

0788: e2 08     set7  $08
078a: 2f 02     bra   $078e
078c: f2 08     clr7  $08
078e: 72 08     clr3  $08
0790: 8d 80     mov   y,#$80
0792: 3f 24 0d  call  $0d24
0795: 3f ce 10  call  $10ce
0798: 8f 6c f2  mov   $f2,#$6c
079b: 8f 3f f3  mov   $f3,#$3f
079e: e3 08 0c  bbs7  $08,$07ad
07a1: cd 00     mov   x,#$00
07a3: f5 80 fe  mov   a,$fe80+x
07a6: af        mov   (x)+,a
07a7: c8 61     cmp   x,#$61
07a9: 90 f8     bcc   $07a3
07ab: 4f c0     pcall $c0
07ad: 5f 00 07  jmp   $0700

; gain tables
07b0: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08,$06,$05,$04,$03,$02,$01
07c6: db $1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

; DSP registers: VxENVX
07dc: db $08,$18,$28,$38,$48,$58,$68,$78
; DSP registers: VxGAIN
07e4: db $07,$17,$27,$37,$47,$57,$67,$77
; DSP registers: VxSCRN (select sample)
07ec: db $04,$14,$24,$34,$44,$54,$64,$74
; DSP registers: VxPITCHL
07f4: db $02,$12,$22,$32,$42,$52,$62,$72
; DSP registers: VxVOLL
07fc: db $00,$10,$20,$30,$40,$50,$60,$70,$01,$11,$21,$31,$41,$51,$61,$71,$2c,$3c,$0d,$0c,$1c

; voice numbers and bits for clearing those void bits
0811: db $01,$02,$04,$08,$10,$20,$40,$80,$fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo poke registers
0821: db $7d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

082d: 3f 99 0b  call  $0b99		; que command
0830: 8f 00 45  mov   $45,#$00		; reset sample flags
0833: 8f 00 57  mov   $57,#$00
0836: 8f 7c f2  mov   $f2,#$7c
0839: e4 f3     mov   a,$f3
083b: 24 5a     and   a,$5a
083d: c4 54     mov   $54,a
083f: 8f 00 f3  mov   $f3,#$00
0842: cd 07     mov   x,#$07		; find out all channels changing waves
0844: 3f 99 0b  call  $0b99		; (to restart them, starting with 7)
0847: d8 29     mov   $29,x
0849: 7d        mov   a,x
084a: 60        clrc
084b: 88 10     adc   a,#$10
084d: c4 2e     mov   $2e,a
084f: f5 11 08  mov   a,$0811+x
0852: c4 46     mov   $46,a
0854: 48 ff     eor   a,#$ff
0856: c4 47     mov   $47,a
0858: f4 64     mov   a,$64+x
085a: c4 49     mov   $49,a
085c: a2 08     set5  $08
085e: 23 49 06  bbs1  $49,$0867
0861: f5 ec fc  mov   a,$fcec+x
0864: 5f 75 08  jmp   $0875

0867: eb 2e     mov   y,$2e
0869: f6 e3 04  mov   a,$04e3+y
086c: d0 02     bne   $0870
086e: b2 08     clr5  $08
0870: 3f 5a 12  call  $125a
0873: f8 29     mov   x,$29
0875: 75 f4 fc  cmp   a,$fcf4+x
0878: d0 0d     bne   $0887
087a: 3f 18 14  call  $1418
087d: e4 5f     mov   a,$5f
087f: 24 58     and   a,$58
0881: 24 46     and   a,$46
0883: d0 43     bne   $08c8
0885: 2f 44     bra   $08cb
0887: d5 f4 fc  mov   $fcf4+x,a
088a: 09 46 45  or    ($45),($46)
088d: 3f 18 14  call  $1418
0890: 7d        mov   a,x
0891: 1c        asl   a
0892: 5d        mov   x,a
0893: e5 04 01  mov   a,$0104
0896: d5 4b 01  mov   $014b+x,a
0899: e5 05 01  mov   a,$0105
089c: d5 4c 01  mov   $014c+x,a
089f: f8 29     mov   x,$29
08a1: e4 60     mov   a,$60
08a3: 28 20     and   a,#$20
08a5: f0 05     beq   $08ac
08a7: 29 47 55  and   ($55),($47)
08aa: 2f 03     bra   $08af
08ac: 09 46 55  or    ($55),($46)
08af: b3 08 0b  bbc5  $08,$08bd
08b2: e4 60     mov   a,$60
08b4: 28 40     and   a,#$40
08b6: f0 05     beq   $08bd
08b8: 09 46 5f  or    ($5f),($46)
08bb: 2f 03     bra   $08c0
08bd: 29 47 5f  and   ($5f),($47)
08c0: e4 5f     mov   a,$5f
08c2: 04 58     or    a,$58
08c4: 24 46     and   a,$46
08c6: f0 03     beq   $08cb
08c8: 09 46 57  or    ($57),($46)
08cb: 1d        dec   x
08cc: 30 03     bmi   $08d1
08ce: 5f 44 08  jmp   $0844

08d1: e4 58     mov   a,$58
08d3: 24 55     and   a,$55
08d5: 04 56     or    a,$56
08d7: c4 56     mov   $56,a
08d9: 24 56     and   a,$56
08db: 04 57     or    a,$57
08dd: c4 59     mov   $59,a
08df: 8f 5c f2  mov   $f2,#$5c
08e2: c4 f3     mov   $f3,a
08e4: cd 07     mov   x,#$07
08e6: 3f 99 0b  call  $0b99
08e9: d8 29     mov   $29,x
08eb: f5 11 08  mov   a,$0811+x
08ee: c4 46     mov   $46,a
08f0: 7d        mov   a,x
08f1: 60        clrc
08f2: 88 18     adc   a,#$18
08f4: c4 2e     mov   $2e,a
08f6: e5 a2 03  mov   a,$03a2
08f9: d0 12     bne   $090d
08fb: f4 64     mov   a,$64+x
08fd: c4 49     mov   $49,a
08ff: 63 49 06  bbs3  $49,$0908
0902: f5 e4 fc  mov   a,$fce4+x
0905: 5f 0d 09  jmp   $090d

0908: 3f 5a 12  call  $125a
090b: f8 29     mov   x,$29
090d: 60        clrc
090e: 95 9a 03  adc   a,$039a+x
0911: 30 06     bmi   $0919
0913: 70 04     bvs   $0919
0915: 68 65     cmp   a,#$65
0917: 30 0b     bmi   $0924
0919: f5 9a 03  mov   a,$039a+x
091c: 30 04     bmi   $0922
091e: e8 64     mov   a,#$64
0920: 2f 02     bra   $0924
0922: e8 00     mov   a,#$00
0924: fd        mov   y,a
0925: f5 43 01  mov   a,$0143+x
0928: c4 3d     mov   $3d,a
092a: cf        mul   ya
092b: cd 64     mov   x,#$64
092d: 9e        div   ya,x
092e: f8 29     mov   x,$29
0930: 73 49 14  bbc3  $49,$0947
0933: c4 3b     mov   $3b,a
0935: 6d        push  y
0936: eb 2e     mov   y,$2e
0938: f6 c3 03  mov   a,$03c3+y
093b: ee        pop   y
093c: d0 04     bne   $0942
093e: e4 3b     mov   a,$3b
0940: 2f 05     bra   $0947
0942: e4 3d     mov   a,$3d
0944: 80        setc
0945: a4 3b     sbc   a,$3b
0947: c4 3b     mov   $3b,a
0949: d5 28 02  mov   $0228+x,a
094c: e4 3d     mov   a,$3d
094e: 80        setc
094f: a4 3b     sbc   a,$3b
0951: d5 30 02  mov   $0230+x,a
0954: 1d        dec   x
0955: 30 03     bmi   $095a
0957: 5f e6 08  jmp   $08e6

095a: cd 07     mov   x,#$07		; process pitch envelopes (start with ch 7)
095c: 3f 99 0b  call  $0b99
095f: d8 29     mov   $29,x
0961: 7d        mov   a,x
0962: 60        clrc
0963: 88 08     adc   a,#$08
0965: c4 2e     mov   $2e,a
0967: f4 64     mov   a,$64+x
0969: c4 49     mov   $49,a
096b: 7d        mov   a,x
096c: 1c        asl   a
096d: 5d        mov   x,a
096e: f5 d5 fc  mov   a,$fcd5+x
0971: c4 44     mov   $44,a
0973: f5 d4 fc  mov   a,$fcd4+x
0976: c4 43     mov   $43,a
0978: 53 49 15  bbc2  $49,$0990
097b: 4d        push  x
097c: 42 08     set2  $08
097e: 3f 5a 12  call  $125a
0981: 52 08     clr2  $08
0983: ce        pop   x
0984: 7a 43     addw  ya,$43
0986: 80        setc
0987: a8 b0     sbc   a,#$b0
0989: c4 43     mov   $43,a
098b: dd        mov   a,y
098c: a8 04     sbc   a,#$04
098e: c4 44     mov   $44,a
0990: f5 4c 01  mov   a,$014c+x
0993: fd        mov   y,a
0994: f5 4b 01  mov   a,$014b+x
0997: 7a 43     addw  ya,$43
0999: da 3b     movw  $3b,ya
099b: fb d9     mov   y,$d9+x
099d: f4 d8     mov   a,$d8+x
099f: 7a 3b     addw  ya,$3b
09a1: c3 49 03  bbs6  $49,$09a7
09a4: 3f 9a 14  call  $149a		; translate note to frequency
09a7: da 3b     movw  $3b,ya		; add in hardware tuning
09a9: e4 29     mov   a,$29		; word addressing
09ab: 1c        asl   a
09ac: 5d        mov   x,a
09ad: f5 5c 01  mov   a,$015c+x
09b0: fd        mov   y,a
09b1: f5 5b 01  mov   a,$015b+x
09b4: 7a 3b     addw  ya,$3b
09b6: f8 29     mov   x,$29
09b8: d5 33 01  mov   $0133+x,a
09bb: dd        mov   a,y
09bc: d5 3b 01  mov   $013b+x,a
09bf: 1d        dec   x
09c0: 10 9a     bpl   $095c
09c2: 8f 5c f2  mov   $f2,#$5c
09c5: 8f 00 f3  mov   $f3,#$00
09c8: cd 07     mov   x,#$07
09ca: 3f 99 0b  call  $0b99
09cd: d8 29     mov   $29,x
09cf: 7d        mov   a,x
09d0: 60        clrc
09d1: 88 00     adc   a,#$00
09d3: c4 2e     mov   $2e,a
09d5: f5 11 08  mov   a,$0811+x
09d8: c4 46     mov   $46,a
09da: 48 ff     eor   a,#$ff
09dc: c4 47     mov   $47,a
09de: f4 64     mov   a,$64+x
09e0: c4 49     mov   $49,a
09e2: 03 49 07  bbs0  $49,$09ec
09e5: f5 23 01  mov   a,$0123+x
09e8: fd        mov   y,a
09e9: 5f f9 09  jmp   $09f9

09ec: 3f 5a 12  call  $125a
09ef: fd        mov   y,a
09f0: f8 29     mov   x,$29
09f2: b3 07 04  bbc5  $07,$09f9
09f5: e8 00     mov   a,#$00
09f7: d4 6c     mov   $6c+x,a
09f9: e8 80     mov   a,#$80
09fb: de 6c 04  cbne  $6c+x,$0a02
09fe: e4 5c     mov   a,$5c
0a00: 2f 02     bra   $0a04
0a02: e4 5b     mov   a,$5b
0a04: cf        mul   ya
0a05: f5 92 03  mov   a,$0392+x
0a08: cf        mul   ya
0a09: dd        mov   a,y
0a0a: d5 2b 01  mov   $012b+x,a
0a0d: 8f c0 3a  mov   $3a,#$c0
0a10: f5 dc 07  mov   a,$07dc+x
0a13: c4 f2     mov   $f2,a
0a15: dd        mov   a,y
0a16: 80        setc
0a17: a4 f3     sbc   a,$f3
0a19: b0 06     bcs   $0a21
0a1b: 8f 80 3a  mov   $3a,#$80
0a1e: 48 ff     eor   a,#$ff
0a20: bc        inc   a
0a21: c4 3f     mov   $3f,a
0a23: e4 46     mov   a,$46
0a25: 24 53     and   a,$53
0a27: d0 06     bne   $0a2f
0a29: e4 52     mov   a,$52
0a2b: 24 46     and   a,$46
0a2d: d0 23     bne   $0a52
0a2f: e4 3f     mov   a,$3f
0a31: 5c        lsr   a
0a32: d0 08     bne   $0a3c
0a34: ad 00     cmp   y,#$00
0a36: d0 04     bne   $0a3c
0a38: e8 82     mov   a,#$82
0a3a: 2f 0e     bra   $0a4a
0a3c: 8d 15     mov   y,#$15
0a3e: 76 b0 07  cmp   a,$07b0+y
0a41: 90 02     bcc   $0a45
0a43: fe f9     dbnz  y,$0a3e
0a45: f6 c6 07  mov   a,$07c6+y
0a48: 04 3a     or    a,$3a
0a4a: 75 cc fc  cmp   a,$fccc+x
0a4d: f0 41     beq   $0a90
0a4f: fd        mov   y,a
0a50: 2f 17     bra   $0a69
0a52: 8f 00 3a  mov   $3a,#$00
0a55: e4 3f     mov   a,$3f
0a57: 68 60     cmp   a,#$60
0a59: 90 0e     bcc   $0a69
0a5b: ad 60     cmp   y,#$60
0a5d: 90 04     bcc   $0a63
0a5f: 8d df     mov   y,#$df
0a61: 2f 06     bra   $0a69
0a63: ad 20     cmp   y,#$20
0a65: b0 02     bcs   $0a69
0a67: 8d 9e     mov   y,#$9e
0a69: 29 47 52  and   ($52),($47)
0a6c: f5 fc 07  mov   a,$07fc+x
0a6f: c4 f2     mov   $f2,a
0a71: f5 28 02  mov   a,$0228+x
0a74: 2d        push  a
0a75: e4 46     mov   a,$46
0a77: 24 53     and   a,$53
0a79: ae        pop   a
0a7a: d0 09     bne   $0a85
0a7c: c4 f3     mov   $f3,a
0a7e: ab f2     inc   $f2
0a80: f5 30 02  mov   a,$0230+x
0a83: c4 f3     mov   $f3,a
0a85: f5 e4 07  mov   a,$07e4+x
0a88: c4 f2     mov   $f2,a
0a8a: cb f3     mov   $f3,y
0a8c: dd        mov   a,y
0a8d: d5 cc fc  mov   $fccc+x,a
0a90: f5 f4 07  mov   a,$07f4+x
0a93: c4 f2     mov   $f2,a
0a95: fd        mov   y,a
0a96: f5 33 01  mov   a,$0133+x
0a99: c4 f3     mov   $f3,a
0a9b: fc        inc   y
0a9c: cb f2     mov   $f2,y
0a9e: f5 3b 01  mov   a,$013b+x
0aa1: c4 f3     mov   $f3,a
0aa3: 1d        dec   x
0aa4: 30 03     bmi   $0aa9
0aa6: 5f ca 09  jmp   $09ca

0aa9: 8f 4c f2  mov   $f2,#$4c
0aac: fa 59 f3  mov   ($f3),($59)
0aaf: e4 59     mov   a,$59
0ab1: 48 ff     eor   a,#$ff
0ab3: c4 5a     mov   $5a,a
0ab5: 29 5a 54  and   ($54),($5a)
0ab8: 29 5a 56  and   ($56),($5a)
0abb: 8f 00 58  mov   $58,#$00
0abe: 3f 99 0b  call  $0b99
0ac1: 8d 07     mov   y,#$07
0ac3: cd 0e     mov   x,#$0e
0ac5: 3f 99 0b  call  $0b99
0ac8: f6 6c 00  mov   a,$006c+y
0acb: f0 31     beq   $0afe
0acd: f6 64 00  mov   a,$0064+y
0ad0: c4 49     mov   $49,a
0ad2: f3 49 07  bbc7  $49,$0adc
0ad5: f6 11 08  mov   a,$0811+y
0ad8: 24 54     and   a,$54
0ada: d0 1d     bne   $0af9
0adc: f6 6c 00  mov   a,$006c+y
0adf: 68 80     cmp   a,#$80
0ae1: d0 1b     bne   $0afe
0ae3: f6 46 02  mov   a,$0246+y
0ae6: 28 02     and   a,#$02
0ae8: d0 14     bne   $0afe
0aea: 9b 75     dec   $75+x
0aec: f4 75     mov   a,$75+x
0aee: 2e 05 02  cbne  $05,$0af3
0af1: 9b 76     dec   $76+x
0af3: f4 75     mov   a,$75+x
0af5: 14 76     or    a,$76+x
0af7: d0 05     bne   $0afe
0af9: e8 80     mov   a,#$80
0afb: 3f 39 17  call  $1739
0afe: 1d        dec   x
0aff: 1d        dec   x
0b00: dc        dec   y
0b01: 10 c2     bpl   $0ac5
0b03: 3f 99 0b  call  $0b99
0b06: ec 43 02  mov   y,$0243
0b09: f0 54     beq   $0b5f
0b0b: 6e cd 51  dbnz  $cd,$0b5f
0b0e: cb cd     mov   $cd,y
0b10: e5 3b 02  mov   a,$023b
0b13: f8 ce     mov   x,$ce
0b15: 30 0d     bmi   $0b24
0b17: 60        clrc
0b18: 84 cf     adc   a,$cf
0b1a: b0 04     bcs   $0b20
0b1c: 68 7f     cmp   a,#$7f
0b1e: 90 12     bcc   $0b32
0b20: e8 7f     mov   a,#$7f
0b22: 2f 09     bra   $0b2d
0b24: 80        setc
0b25: a4 cf     sbc   a,$cf
0b27: f0 04     beq   $0b2d
0b29: b0 07     bcs   $0b32
0b2b: e8 00     mov   a,#$00
0b2d: 8d 00     mov   y,#$00
0b2f: cc 43 02  mov   $0243,y
0b32: 5d        mov   x,a
0b33: 65 44 02  cmp   a,$0244
0b36: 90 03     bcc   $0b3b
0b38: e5 44 02  mov   a,$0244
0b3b: c5 38 02  mov   $0238,a
0b3e: 7d        mov   a,x
0b3f: c5 3b 02  mov   $023b,a
0b42: c5 3c 02  mov   $023c,a
0b45: 65 45 02  cmp   a,$0245
0b48: 90 03     bcc   $0b4d
0b4a: e5 45 02  mov   a,$0245
0b4d: c5 39 02  mov   $0239,a
0b50: e5 43 02  mov   a,$0243
0b53: d0 0a     bne   $0b5f
0b55: aa 07 40  mov1  c,$0007,2
0b58: 90 05     bcc   $0b5f
0b5a: 8d 80     mov   y,#$80
0b5c: 5f 24 0d  jmp   $0d24

0b5f: 6f        ret

0b60: 32 08     clr1  $08
0b62: e4 e8     mov   a,$e8
0b64: f0 2f     beq   $0b95
0b66: 9c        dec   a
0b67: c4 e8     mov   $e8,a
0b69: f8 ea     mov   x,$ea
0b6b: f5 50 10  mov   a,$1050+x
0b6e: 28 fe     and   a,#$fe
0b70: c4 31     mov   $31,a
0b72: f5 60 10  mov   a,$1060+x
0b75: c4 32     mov   $32,a
0b77: f5 70 10  mov   a,$1070+x
0b7a: c4 33     mov   $33,a
0b7c: 3d        inc   x
0b7d: c8 10     cmp   x,#$10
0b7f: d0 02     bne   $0b83
0b81: cd 00     mov   x,#$00
0b83: d8 ea     mov   $ea,x
0b85: e4 31     mov   a,$31
0b87: 5d        mov   x,a
0b88: 28 fe     and   a,#$fe
0b8a: c8 49     cmp   x,#$49
0b8c: b0 07     bcs   $0b95
0b8e: e4 32     mov   a,$32
0b90: eb 33     mov   y,$33
0b92: 3f 96 0b  call  $0b96
0b95: 6f        ret

0b96: 1f 43 1e  jmp   ($1e43+x)

0b99: 73 08 24  bbc3  $08,$0bc0
0b9c: 69 03 f6  cmp   ($f6),($03)
0b9f: f0 1f     beq   $0bc0
0ba1: 23 08 1c  bbs1  $08,$0bc0
0ba4: 2d        push  a
0ba5: e4 f6     mov   a,$f6
0ba7: f0 16     beq   $0bbf
0ba9: 2e f6 13  cbne  $f6,$0bbf
0bac: e4 f7     mov   a,$f7
0bae: 68 1e     cmp   a,#$1e
0bb0: d0 30     bne   $0be2
0bb2: fa f4 19  mov   ($19),($f4)
0bb5: fa f5 1a  mov   ($1a),($f5)
0bb8: e4 f6     mov   a,$f6
0bba: 8f b7 f1  mov   $f1,#$b7
0bbd: c4 f6     mov   $f6,a
0bbf: ae        pop   a
0bc0: 6f        ret

0bc1: 6d        push  y
0bc2: 4d        push  x
0bc3: ba f4     movw  ya,$f4
0bc5: da 1b     movw  $1b,ya
0bc7: f8 f6     mov   x,$f6
0bc9: 8f b7 f1  mov   $f1,#$b7
0bcc: 8d 00     mov   y,#$00
0bce: f7 1b     mov   a,($1b)+y
0bd0: c4 f4     mov   $f4,a
0bd2: fc        inc   y
0bd3: f7 1b     mov   a,($1b)+y
0bd5: c4 f5     mov   $f5,a
0bd7: fc        inc   y
0bd8: f7 1b     mov   a,($1b)+y
0bda: c4 f7     mov   $f7,a
0bdc: d8 f6     mov   $f6,x
0bde: ce        pop   x
0bdf: ee        pop   y
0be0: ae        pop   a
0be1: 6f        ret

0be2: 68 22     cmp   a,#$22
0be4: f0 59     beq   $0c3f
0be6: 68 0c     cmp   a,#$0c
0be8: f0 d7     beq   $0bc1
0bea: 68 48     cmp   a,#$48
0bec: d0 03     bne   $0bf1
0bee: 5f 88 07  jmp   $0788

0bf1: 68 0e     cmp   a,#$0e
0bf3: d0 03     bne   $0bf8
0bf5: 5f 8c 07  jmp   $078c

0bf8: 68 02     cmp   a,#$02
0bfa: d0 15     bne   $0c11
0bfc: 4d        push  x
0bfd: 6d        push  y
0bfe: e4 f6     mov   a,$f6
0c00: 8f b7 f1  mov   $f1,#$b7
0c03: 2d        push  a
0c04: 72 08     clr3  $08
0c06: 3f b4 0c  call  $0cb4
0c09: 62 08     set3  $08
0c0b: ae        pop   a
0c0c: c4 f6     mov   $f6,a
0c0e: ee        pop   y
0c0f: 2f 2b     bra   $0c3c
0c11: 4d        push  x
0c12: f8 e9     mov   x,$e9
0c14: d5 50 10  mov   $1050+x,a
0c17: e4 f4     mov   a,$f4
0c19: d5 60 10  mov   $1060+x,a
0c1c: e4 f5     mov   a,$f5
0c1e: d5 70 10  mov   $1070+x,a
0c21: e4 f6     mov   a,$f6
0c23: 8f b7 f1  mov   $f1,#$b7
0c26: c4 f6     mov   $f6,a
0c28: 3d        inc   x
0c29: c8 10     cmp   x,#$10
0c2b: d0 02     bne   $0c2f
0c2d: cd 00     mov   x,#$00
0c2f: d8 e9     mov   $e9,x
0c31: e4 e8     mov   a,$e8
0c33: bc        inc   a
0c34: c4 e8     mov   $e8,a
0c36: 68 10     cmp   a,#$10
0c38: d0 02     bne   $0c3c
0c3a: 22 08     set1  $08
0c3c: ce        pop   x
0c3d: ae        pop   a
0c3e: 6f        ret

0c3f: 6d        push  y
0c40: 4d        push  x
0c41: f8 f4     mov   x,$f4
0c43: e4 f6     mov   a,$f6
0c45: 8f b7 f1  mov   $f1,#$b7
0c48: c4 f6     mov   $f6,a
0c4a: 4d        push  x
0c4b: e4 19     mov   a,$19
0c4d: c5 76 0c  mov   $0c76,a
0c50: c5 7e 0c  mov   $0c7e,a
0c53: c5 85 0c  mov   $0c85,a
0c56: e4 1a     mov   a,$1a
0c58: c5 77 0c  mov   $0c77,a
0c5b: c5 7f 0c  mov   $0c7f,a
0c5e: c5 86 0c  mov   $0c86,a
0c61: e4 f6     mov   a,$f6
0c63: f0 fc     beq   $0c61
0c65: 2e f6 f9  cbne  $f6,$0c61
0c68: ba f4     movw  ya,$f4
0c6a: da 1b     movw  $1b,ya
0c6c: ba f6     movw  ya,$f6
0c6e: 8f b7 f1  mov   $f1,#$b7
0c71: c4 f6     mov   $f6,a
0c73: e4 1b     mov   a,$1b
0c75: d5 30 e0  mov   $e030+x,a
0c78: 1d        dec   x
0c79: 30 0f     bmi   $0c8a
0c7b: e4 1c     mov   a,$1c
0c7d: d5 30 e0  mov   $e030+x,a
0c80: 1d        dec   x
0c81: 30 07     bmi   $0c8a
0c83: dd        mov   a,y
0c84: d5 30 e0  mov   $e030+x,a
0c87: 1d        dec   x
0c88: 10 d7     bpl   $0c61
0c8a: e4 f6     mov   a,$f6
0c8c: f0 fc     beq   $0c8a
0c8e: 2e f6 f9  cbne  $f6,$0c8a
0c91: ba f4     movw  ya,$f4
0c93: da 1b     movw  $1b,ya
0c95: ba f6     movw  ya,$f6
0c97: 8f b7 f1  mov   $f1,#$b7
0c9a: c4 f6     mov   $f6,a
0c9c: ad 01     cmp   y,#$01
0c9e: d0 07     bne   $0ca7
0ca0: ae        pop   a
0ca1: ba 1b     movw  ya,$1b
0ca3: da 19     movw  $19,ya
0ca5: 2f 09     bra   $0cb0
0ca7: ae        pop   a
0ca8: 8d 00     mov   y,#$00
0caa: 7a 19     addw  ya,$19
0cac: da 19     movw  $19,ya
0cae: 3a 19     incw  $19
0cb0: ce        pop   x
0cb1: ee        pop   y
0cb2: ae        pop   a
0cb3: 6f        ret

0cb4: 3f f3 10  call  $10f3
0cb7: 3f e9 10  call  $10e9
0cba: 22 07     set1  $07
0cbc: 6f        ret

0cbd: c5 a2 03  mov   $03a2,a
0cc0: 6f        ret

0cc1: e8 00     mov   a,#$00
0cc3: c5 43 02  mov   $0243,a
0cc6: 6f        ret

0cc7: cd 01     mov   x,#$01
0cc9: 52 07     clr2  $07
0ccb: 2f 02     bra   $0ccf
0ccd: cd ff     mov   x,#$ff
0ccf: c5 43 02  mov   $0243,a
0cd2: c4 cd     mov   $cd,a
0cd4: cb cf     mov   $cf,y
0cd6: d8 ce     mov   $ce,x
0cd8: 6f        ret

0cd9: 2d        push  a
0cda: dd        mov   a,y
0cdb: 28 7f     and   a,#$7f
0cdd: c5 3e 02  mov   $023e,a
0ce0: ae        pop   a
0ce1: 92 08     clr4  $08
0ce3: 2f 05     bra   $0cea
0ce5: cc 40 02  mov   $0240,y
0ce8: 82 08     set4  $08
0cea: 5f 7d 0d  jmp   $0d7d

0ced: 3f d2 1c  call  $1cd2
0cf0: e5 fc 1e  mov   a,$1efc
0cf3: c5 8b 06  mov   $068b,a
0cf6: e5 fd 1e  mov   a,$1efd
0cf9: c5 8c 06  mov   $068c,a
0cfc: 05 8b 06  or    a,$068b
0cff: f0 20     beq   $0d21
0d01: 3f 0e 17  call  $170e
0d04: e5 8b 06  mov   a,$068b
0d07: 80        setc
0d08: a8 01     sbc   a,#$01
0d0a: c5 8b 06  mov   $068b,a
0d0d: e5 8c 06  mov   a,$068c
0d10: a8 00     sbc   a,#$00
0d12: c5 8c 06  mov   $068c,a
0d15: b0 ea     bcs   $0d01
0d17: cd 07     mov   x,#$07
0d19: e8 00     mov   a,#$00
0d1b: d5 43 01  mov   $0143+x,a
0d1e: 1d        dec   x
0d1f: 10 fa     bpl   $0d1b
0d21: 6f        ret

0d22: 8d ff     mov   y,#$ff
0d24: cd 07     mov   x,#$07
0d26: ad 80     cmp   y,#$80
0d28: f0 04     beq   $0d2e
0d2a: ad ff     cmp   y,#$ff
0d2c: d0 05     bne   $0d33
0d2e: 82 07     set4  $07
0d30: 8f 00 86  mov   $86,#$00
0d33: c4 74     mov   $74,a
0d35: ad 80     cmp   y,#$80
0d37: f0 1b     beq   $0d54
0d39: f4 d0     mov   a,$d0+x
0d3b: 68 ff     cmp   a,#$ff
0d3d: f0 30     beq   $0d6f
0d3f: 68 00     cmp   a,#$00
0d41: 10 06     bpl   $0d49
0d43: ad ff     cmp   y,#$ff
0d45: f0 0d     beq   $0d54
0d47: 2f 26     bra   $0d6f
0d49: ad 00     cmp   y,#$00
0d4b: d0 07     bne   $0d54
0d4d: f5 1b 01  mov   a,$011b+x
0d50: 64 74     cmp   a,$74
0d52: d0 1b     bne   $0d6f
0d54: f5 e4 07  mov   a,$07e4+x
0d57: c4 f2     mov   $f2,a
0d59: 8f 9f f3  mov   $f3,#$9f
0d5c: f5 ec 07  mov   a,$07ec+x
0d5f: e8 00     mov   a,#$00
0d61: d5 23 01  mov   $0123+x,a
0d64: d4 6c     mov   $6c+x,a
0d66: d4 64     mov   $64+x,a
0d68: f5 11 08  mov   a,$0811+x
0d6b: 04 58     or    a,$58
0d6d: c4 58     mov   $58,a
0d6f: 1d        dec   x
0d70: 10 c3     bpl   $0d35
0d72: 6f        ret

0d73: 52 07     clr2  $07
0d75: 5f cd 0c  jmp   $0ccd

0d78: 42 07     set2  $07
0d7a: 5f cd 0c  jmp   $0ccd

0d7d: 8d 0e     mov   y,#$0e
0d7f: c4 74     mov   $74,a
0d81: 3f 2c 10  call  $102c
0d84: da 23     movw  $23,ya
0d86: 8d 00     mov   y,#$00
0d88: f7 23     mov   a,($23)+y
0d8a: c4 4e     mov   $4e,a
0d8c: 3a 23     incw  $23
0d8e: 8d 07     mov   y,#$07
0d90: f7 23     mov   a,($23)+y
0d92: 24 0b     and   a,$0b
0d94: c4 4f     mov   $4f,a
0d96: 8d 06     mov   y,#$06
0d98: f7 23     mov   a,($23)+y
0d9a: c4 50     mov   $50,a
0d9c: 8f 80 51  mov   $51,#$80
0d9f: cd 07     mov   x,#$07
0da1: 3f 58 0e  call  $0e58
0da4: 10 03     bpl   $0da9
0da6: 5f 2a 0e  jmp   $0e2a

0da9: 83 08 07  bbs4  $08,$0db3
0dac: e8 02     mov   a,#$02
0dae: 15 46 02  or    a,$0246+x
0db1: 2f 05     bra   $0db8
0db3: e8 fd     mov   a,#$fd
0db5: 35 46 02  and   a,$0246+x
0db8: d5 46 02  mov   $0246+x,a
0dbb: e8 80     mov   a,#$80
0dbd: d4 6c     mov   $6c+x,a
0dbf: e5 3e 02  mov   a,$023e
0dc2: d4 d0     mov   $d0+x,a
0dc4: e5 3f 02  mov   a,$023f
0dc7: d5 92 03  mov   $0392+x,a
0dca: e5 40 02  mov   a,$0240
0dcd: d5 9a 03  mov   $039a+x,a
0dd0: e5 8e 03  mov   a,$038e
0dd3: c4 0e     mov   $0e,a
0dd5: e5 90 03  mov   a,$0390
0dd8: c4 0d     mov   $0d,a
0dda: e5 8f 03  mov   a,$038f
0ddd: c4 0f     mov   $0f,a
0ddf: e5 91 03  mov   a,$0391
0de2: c4 10     mov   $10,a
0de4: 7d        mov   a,x
0de5: 1c        asl   a
0de6: fd        mov   y,a
0de7: e8 00     mov   a,#$00
0de9: d6 5b 01  mov   $015b+y,a
0dec: d6 5c 01  mov   $015c+y,a
0def: c5 3d 02  mov   $023d,a
0df2: e5 41 02  mov   a,$0241
0df5: d6 d8 00  mov   $00d8+y,a
0df8: e5 42 02  mov   a,$0242
0dfb: d6 d9 00  mov   $00d9+y,a
0dfe: e4 74     mov   a,$74
0e00: d5 1b 01  mov   $011b+x,a
0e03: 8d 02     mov   y,#$02
0e05: f7 23     mov   a,($23)+y
0e07: c4 4a     mov   $4a,a
0e09: fc        inc   y
0e0a: f7 23     mov   a,($23)+y
0e0c: c4 4b     mov   $4b,a
0e0e: 8d 04     mov   y,#$04
0e10: f7 23     mov   a,($23)+y
0e12: c4 4c     mov   $4c,a
0e14: fc        inc   y
0e15: f7 23     mov   a,($23)+y
0e17: c4 4d     mov   $4d,a
0e19: 8d 01     mov   y,#$01
0e1b: f7 23     mov   a,($23)+y
0e1d: 2d        push  a
0e1e: 8d 00     mov   y,#$00
0e20: f7 23     mov   a,($23)+y
0e22: 02 07     set0  $07
0e24: ee        pop   y
0e25: 72 07     clr3  $07
0e27: 3f cd 0e  call  $0ecd
0e2a: 60        clrc
0e2b: 98 08 23  adc   $23,#$08
0e2e: 90 02     bcc   $0e32
0e30: ab 24     inc   $24
0e32: 8b 4e     dec   $4e
0e34: f0 03     beq   $0e39
0e36: 5f 8e 0d  jmp   $0d8e

0e39: e8 00     mov   a,#$00
0e3b: c5 3e 02  mov   $023e,a
0e3e: c5 41 02  mov   $0241,a
0e41: c5 42 02  mov   $0242,a
0e44: c5 40 02  mov   $0240,a
0e47: c5 8e 03  mov   $038e,a
0e4a: c5 90 03  mov   $0390,a
0e4d: c5 8f 03  mov   $038f,a
0e50: c5 91 03  mov   $0391,a
0e53: 9c        dec   a
0e54: c5 3f 02  mov   $023f,a
0e57: 6f        ret

0e58: 8f 00 0a  mov   $0a,#$00
0e5b: 83 0a 5a  bbs4  $0a,$0eb8
0e5e: 8d 07     mov   y,#$07
0e60: 8f ff 3b  mov   $3b,#$ff
0e63: 8f ff 3c  mov   $3c,#$ff
0e66: 73 0a 08  bbc3  $0a,$0e71
0e69: c8 08     cmp   x,#$08
0e6b: b0 4b     bcs   $0eb8
0e6d: 8d 00     mov   y,#$00
0e6f: 2f 09     bra   $0e7a
0e71: 3f 99 0b  call  $0b99
0e74: e4 51     mov   a,$51
0e76: 24 4f     and   a,$4f
0e78: f0 1f     beq   $0e99
0e7a: f4 6c     mov   a,$6c+x
0e7c: f0 41     beq   $0ebf
0e7e: e4 50     mov   a,$50
0e80: 03 0a 06  bbs0  $0a,$0e89
0e83: 74 11     cmp   a,$11+x
0e85: b0 38     bcs   $0ebf
0e87: 2f 10     bra   $0e99
0e89: 74 11     cmp   a,$11+x
0e8b: f0 0c     beq   $0e99
0e8d: 90 0a     bcc   $0e99
0e8f: f4 11     mov   a,$11+x
0e91: 64 3c     cmp   a,$3c
0e93: b0 04     bcs   $0e99
0e95: c4 3c     mov   $3c,a
0e97: d8 3b     mov   $3b,x
0e99: 53 0a 0c  bbc2  $0a,$0ea8
0e9c: 0b 51     asl   $51
0e9e: d0 05     bne   $0ea5
0ea0: 8f 01 51  mov   $51,#$01
0ea3: cd ff     mov   x,#$ff
0ea5: 3d        inc   x
0ea6: 2f 0a     bra   $0eb2
0ea8: 4b 51     lsr   $51
0eaa: d0 05     bne   $0eb1
0eac: 8f 80 51  mov   $51,#$80
0eaf: cd 08     mov   x,#$08
0eb1: 1d        dec   x
0eb2: dc        dec   y
0eb3: 10 bc     bpl   $0e71
0eb5: 03 0a 03  bbs0  $0a,$0ebb
0eb8: e8 ff     mov   a,#$ff
0eba: 6f        ret

0ebb: f8 3b     mov   x,$3b
0ebd: 30 f9     bmi   $0eb8
0ebf: 33 0a 04  bbc1  $0a,$0ec6
0ec2: f4 6c     mov   a,$6c+x
0ec4: d0 f2     bne   $0eb8
0ec6: e4 50     mov   a,$50
0ec8: d4 11     mov   $11+x,a
0eca: e8 00     mov   a,#$00
0ecc: 6f        ret

0ecd: d8 29     mov   $29,x			; play sound (instrument)
0ecf: d8 48     mov   $48,x
0ed1: 2d        push  a
0ed2: f5 46 02  mov   a,$0246+x
0ed5: 28 fe     and   a,#$fe
0ed7: d5 46 02  mov   $0246+x,a
0eda: 63 07 08  bbs3  $07,$0ee5
0edd: f5 e4 07  mov   a,$07e4+x
0ee0: c4 f2     mov   $f2,a
0ee2: 8f 9f f3  mov   $f3,#$9f
0ee5: dd        mov   a,y
0ee6: d5 43 01  mov   $0143+x,a
0ee9: 7d        mov   a,x
0eea: 1c        asl   a
0eeb: 5d        mov   x,a
0eec: e4 4c     mov   a,$4c
0eee: d5 d4 fc  mov   $fcd4+x,a
0ef1: e4 4d     mov   a,$4d
0ef3: d5 d5 fc  mov   $fcd5+x,a
0ef6: e4 4a     mov   a,$4a
0ef8: d4 75     mov   $75+x,a
0efa: e4 4b     mov   a,$4b
0efc: d4 76     mov   $76+x,a
0efe: ae        pop   a
0eff: 8d 02     mov   y,#$02
0f01: 3f 2c 10  call  $102c
0f04: da 21     movw  $21,ya			;get current voice and instrument
0f06: f8 48     mov   x,$48
0f08: f5 11 08  mov   a,$0811+x			;get channel bit mask ID
0f0b: c4 62     mov   $62,a
0f0d: 48 ff     eor   a,#$ff			;and store inversion
0f0f: c4 63     mov   $63,a
0f11: e4 53     mov   a,$53			;get mode flags
0f13: 63 07 05  bbs3  $07,$0f1b
0f16: 35 19 08  and   a,$0819+x
0f19: 2f 03     bra   $0f1e
0f1b: 15 11 08  or    a,$0811+x
0f1e: c4 53     mov   $53,a
0f20: 8d 00     mov   y,#$00
0f22: f7 21     mov   a,($21)+y
0f24: d4 64     mov   $64+x,a
0f26: c4 49     mov   $49,a
0f28: 8f 2d f2  mov   $f2,#$2d
0f2b: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0f2d: f0 05     beq   $0f34			; if not...
0f2f: 09 62 f3  or    ($f3),($62)		; turn pitch mod on
0f32: 2f 03     bra   $0f37
0f34: 29 63 f3  and   ($f3),($63)		; turn pitch mod off
0f37: 63 07 50  bbs3  $07,$0f8a			; slur handler
0f3a: b0 4e     bcs   $0f8a
0f3c: 93 49 45  bbc4  $49,$0f84
0f3f: 13 08 05  bbc0  $08,$0f47
0f42: e5 06 01  mov   a,$0106
0f45: 2f 04     bra   $0f4b
0f47: 8d 05     mov   y,#$05			; default echo
0f49: f7 21     mov   a,($21)+y
0f4b: 8d 0c     mov   y,#$0c			; look for echo
0f4d: 3f 2c 10  call  $102c
0f50: 8d 00     mov   y,#$00
0f52: f6 21 08  mov   a,$0821+y			; get the echo register values to "poke"
0f55: c4 f2     mov   $f2,a			; (from the table)
0f57: f7 2a     mov   a,($2a)+y			; now get info to feed to the registers
0f59: ad 01     cmp   y,#$01			; (from the echo environment)
0f5b: f0 08     beq   $0f65
0f5d: ad 03     cmp   y,#$03
0f5f: f0 0f     beq   $0f70
0f61: ad 02     cmp   y,#$02
0f63: d0 10     bne   $0f75
0f65: d6 43 02  mov   $0243+y,a
0f68: 65 3b 02  cmp   a,$023b
0f6b: 90 03     bcc   $0f70
0f6d: e5 3b 02  mov   a,$023b
0f70: d6 37 02  mov   $0237+y,a
0f73: 2f 02     bra   $0f77
0f75: c4 f3     mov   $f3,a
0f77: fc        inc   y
0f78: ad 0c     cmp   y,#$0c			; repeat for every byte of the array
0f7a: 90 d6     bcc   $0f52
0f7c: 8f 4d f2  mov   $f2,#$4d
0f7f: 09 62 f3  or    ($f3),($62)
0f82: 2f 06     bra   $0f8a
0f84: 8f 4d f2  mov   $f2,#$4d
0f87: 29 63 f3  and   ($f3),($63)
0f8a: e4 48     mov   a,$48
0f8c: 60        clrc
0f8d: 88 00     adc   a,#$00
0f8f: c4 2e     mov   $2e,a
0f91: 8d 01     mov   y,#$01
0f93: f7 21     mov   a,($21)+y
0f95: 03 49 08  bbs0  $49,$0fa0
0f98: f8 48     mov   x,$48
0f9a: d5 23 01  mov   $0123+x,a
0f9d: 5f ab 0f  jmp   $0fab

0fa0: 8d 04     mov   y,#$04
0fa2: 3f 2c 10  call  $102c
0fa5: fa 0e 0c  mov   ($0c),($0e)
0fa8: 3f 8d 11  call  $118d
0fab: e4 48     mov   a,$48
0fad: 60        clrc
0fae: 88 08     adc   a,#$08
0fb0: c4 2e     mov   $2e,a
0fb2: 53 49 13  bbc2  $49,$0fc8
0fb5: 8d 03     mov   y,#$03
0fb7: f7 21     mov   a,($21)+y
0fb9: 8d 06     mov   y,#$06
0fbb: 3f 2c 10  call  $102c
0fbe: fa 0f 0c  mov   ($0c),($0f)
0fc1: 42 08     set2  $08
0fc3: 3f 8d 11  call  $118d
0fc6: 52 08     clr2  $08
0fc8: e4 48     mov   a,$48
0fca: 60        clrc
0fcb: 88 18     adc   a,#$18
0fcd: c4 2e     mov   $2e,a
0fcf: 63 07 57  bbs3  $07,$1029
0fd2: 8d 04     mov   y,#$04
0fd4: f7 21     mov   a,($21)+y			; now get the amplitude
0fd6: 63 49 08  bbs3  $49,$0fe1
0fd9: f8 48     mov   x,$48
0fdb: d5 e4 fc  mov   $fce4+x,a
0fde: 5f 02 10  jmp   $1002

0fe1: 8d 08     mov   y,#$08
0fe3: 3f 2c 10  call  $102c
0fe6: fa 10 0c  mov   ($0c),($10)
0fe9: 3f 8d 11  call  $118d
0fec: eb 2e     mov   y,$2e
0fee: f6 e3 04  mov   a,$04e3+y
0ff1: f0 0a     beq   $0ffd
0ff3: f6 c3 03  mov   a,$03c3+y
0ff6: d0 05     bne   $0ffd
0ff8: e8 ff     mov   a,#$ff
0ffa: 5f ff 0f  jmp   $0fff

0ffd: e8 00     mov   a,#$00
0fff: d6 c3 03  mov   $03c3+y,a
1002: e4 48     mov   a,$48
1004: 60        clrc
1005: 88 10     adc   a,#$10
1007: c4 2e     mov   $2e,a
1009: 8d 02     mov   y,#$02
100b: f7 21     mov   a,($21)+y
100d: 23 49 08  bbs1  $49,$1018
1010: f8 48     mov   x,$48
1012: d5 ec fc  mov   $fcec+x,a
1015: 5f 23 10  jmp   $1023

1018: 8d 0a     mov   y,#$0a
101a: 3f 2c 10  call  $102c
101d: fa 0d 0c  mov   ($0c),($0d)
1020: 3f 8d 11  call  $118d
1023: 09 62 58  or    ($58),($62)
1026: 09 62 52  or    ($52),($62)
1029: 72 07     clr3  $07
102b: 6f        ret

102c: 3f 99 0b  call  $0b99		; load current song/sfx/etc. address into stack
102f: 8f 00 20  mov   $20,#$00
1032: 1c        asl   a
1033: 2b 20     rol   $20
1035: 60        clrc
1036: 96 e0 1e  adc   a,$1ee0+y
1039: c4 1f     mov   $1f,a
103b: e4 20     mov   a,$20
103d: 96 e1 1e  adc   a,$1ee1+y
1040: c4 20     mov   $20,a
1042: 8d 01     mov   y,#$01
1044: f7 1f     mov   a,($1f)+y
1046: c4 2b     mov   $2b,a
1048: dc        dec   y
1049: f7 1f     mov   a,($1f)+y
104b: c4 2a     mov   $2a,a
104d: eb 2b     mov   y,$2b
104f: 6f        ret

1050: db $06,$04,$04,$04,$04,$04,$1c,$1a,$26,$04,$10,$12,$26,$26,$26,$26
1060: db $01,$0c,$0c,$0c,$0c,$0c,$80,$00,$29,$0a,$01,$01,$2b,$4f,$4f,$4f
1070: db $00,$00,$00,$00,$00,$00,$80,$00,$38,$00,$08,$06,$38,$c0,$cd,$e2

; initalize sound registers
1080: 3f ce 10  call  $10ce
1083: cd 32     mov   x,#$32
1085: 8d 11     mov   y,#$11
1087: 3f 1b 11  call  $111b
108a: e8 00     mov   a,#$00
108c: 5d        mov   x,a
108d: fd        mov   y,a
108e: d5 00 01  mov   $0100+x,a
1091: af        mov   (x)+,a
1092: c8 f0     cmp   x,#$f0
1094: 90 f8     bcc   $108e
1096: 5d        mov   x,a
1097: d5 00 02  mov   $0200+x,a
109a: d5 00 03  mov   $0300+x,a
109d: d5 00 04  mov   $0400+x,a
10a0: d5 00 05  mov   $0500+x,a
10a3: d5 00 06  mov   $0600+x,a
10a6: d5 00 fc  mov   $fc00+x,a
10a9: d5 00 fd  mov   $fd00+x,a
10ac: d5 00 ff  mov   $ff00+x,a
10af: 3d        inc   x
10b0: d0 e5     bne   $1097
10b2: e8 ff     mov   a,#$ff
10b4: c4 54     mov   $54,a
10b6: c4 56     mov   $56,a
10b8: c4 5f     mov   $5f,a
10ba: c4 55     mov   $55,a
10bc: c4 5a     mov   $5a,a
10be: c4 5b     mov   $5b,a
10c0: c4 5c     mov   $5c,a
10c2: c5 3f 02  mov   $023f,a
10c5: c4 05     mov   $05,a
10c7: c4 06     mov   $06,a
10c9: c4 0b     mov   $0b,a
10cb: 82 07     set4  $07
10cd: 6f        ret

10ce: cd 14     mov   x,#$14
10d0: e8 00     mov   a,#$00
10d2: d5 28 02  mov   $0228+x,a
10d5: 1d        dec   x
10d6: 10 fa     bpl   $10d2
10d8: 8f 10 3b  mov   $3b,#$10
10db: 8d 10     mov   y,#$10
10dd: 3f 4a 07  call  $074a
10e0: 68 00     cmp   a,#$00
10e2: f0 04     beq   $10e8
10e4: 8b 3b     dec   $3b
10e6: d0 f0     bne   $10d8
10e8: 6f        ret

10e9: e8 7f     mov   a,#$7f
10eb: c5 3b 02  mov   $023b,a
10ee: c5 3c 02  mov   $023c,a
10f1: 2f e5     bra   $10d8

10f3: e5 e1 1e  mov   a,$1ee1
10f6: 8f 6d f2  mov   $f2,#$6d
10f9: c4 f3     mov   $f3,a
10fb: 68 ff     cmp   a,#$ff
10fd: f0 1b     beq   $111a
10ff: c4 01     mov   $01,a
1101: e8 00     mov   a,#$00
1103: fd        mov   y,a
1104: c4 00     mov   $00,a
1106: d7 00     mov   ($00)+y,a
1108: fe fc     dbnz  y,$1106
110a: ab 01     inc   $01
110c: 78 fc 01  cmp   $01,#$fc
110f: d0 f5     bne   $1106
1111: 8f 6c f2  mov   $f2,#$6c
1114: e8 df     mov   a,#$df
1116: 24 f3     and   a,$f3
1118: c4 f3     mov   $f3,a
111a: 6f        ret

111b: d8 00     mov   $00,x
111d: cb 01     mov   $01,y
111f: 8d 00     mov   y,#$00
1121: f7 00     mov   a,($00)+y
1123: 68 ff     cmp   a,#$ff
1125: f0 0a     beq   $1131
1127: c4 f2     mov   $f2,a
1129: fc        inc   y
112a: f7 00     mov   a,($00)+y
112c: c4 f3     mov   $f3,a
112e: fc        inc   y
112f: d0 f0     bne   $1121
1131: 6f        ret

; pre-defined DSP flags
1132: db $3d,$00		; NON (noise enable)
1134: db $4d,$00		; EON (echo enable)
1136: db $0d,$00		; EFB (echo feedback)
1138: db $7d,$00		; EDL (echo delay)
113a: db $0f,$00		; COEF (channel 1)
113c: db $1f,$00		; COEF (channel 2)
113e: db $2f,$00		; COEF (channel 3)
1140: db $3f,$00		; COEF (channel 4)
1142: db $4f,$00		; COEF (channel 5)
1144: db $5f,$00		; COEF (channel 6)
1146: db $6f,$00		; COEF (channel 7)
1148: db $7f,$00		; COEF (channel 8)
114a: db $6d,$ff		; ESA (echo buffer start offset)
114c: db $2c,$00		; EVOL (L) (echo volume - left)
114e: db $3c,$00		; EVOL (R) (echo volume - right)
1150: db $0c,$00		; MVOL (L) (main volume - left)
1152: db $1c,$00		; MVOL (R) (main volume - right)
1154: db $5d,$02		; DIR (offset of source directory)
1156: db $5c,$00		; KOF (key off)
1158: db $2d,$00		; PMON (pitch modulation)
115a: db $04,$08		; SRCN (source number - channel 1)
115c: db $14,$08		; SRCN (source number - channel 2)
115e: db $24,$08		; SRCN (source number - channel 3)
1160: db $34,$08		; SRCN (source number - channel 4)
1162: db $44,$08		; SRCN (source number - channel 5)
1164: db $54,$08		; SRCN (source number - channel 6)
1166: db $64,$08		; SRCN (source number - channel 7)
1168: db $74,$08		; SRCN (source number - channel 8)
116a: db $07,$00		; GAIN (channel 1)
116c: db $17,$00		; GAIN (channel 2)
116e: db $27,$00		; GAIN (channel 3)
1170: db $37,$00		; GAIN (channel 4)
1172: db $47,$00		; GAIN (channel 5)
1174: db $57,$00		; GAIN (channel 6)
1176: db $67,$00		; GAIN (channel 7)
1178: db $77,$00		; GAIN (channel 8)
117a: db $05,$00		; ASDR (1 - channel 1)
117c: db $15,$00		; ASDR (1 - channel 2)
117e: db $25,$00		; ASDR (1 - channel 3)
1180: db $35,$00		; ASDR (1 - channel 4)
1182: db $45,$00		; ASDR (1 - channel 5)
1184: db $55,$00		; ASDR (1 - channel 6)
1186: db $65,$00		; ASDR (1 - channel 7)
1188: db $75,$00		; ASDR (1 - channel 8)
118a: db $7c,$00		; ENDX
118b: db $ff

118d: f8 2e     mov   x,$2e
118f: 8d 07     mov   y,#$07
1191: f7 2a     mov   a,($2a)+y
1193: d5 e3 04  mov   $04e3+x,a
1196: dc        dec   y
1197: dc        dec   y
1198: f7 2a     mov   a,($2a)+y
119a: d5 03 04  mov   $0403+x,a
119d: dc        dec   y
119e: f7 2a     mov   a,($2a)+y
11a0: d5 c3 04  mov   $04c3+x,a
11a3: dc        dec   y
11a4: f7 2a     mov   a,($2a)+y
11a6: d5 23 04  mov   $0423+x,a
11a9: dc        dec   y
11aa: f7 2a     mov   a,($2a)+y
11ac: d5 43 04  mov   $0443+x,a
11af: dc        dec   y
11b0: f7 2a     mov   a,($2a)+y
11b2: d5 83 04  mov   $0483+x,a
11b5: dc        dec   y
11b6: f7 2a     mov   a,($2a)+y
11b8: d5 63 04  mov   $0463+x,a
11bb: eb 2e     mov   y,$2e
11bd: e4 2a     mov   a,$2a
11bf: 60        clrc
11c0: 88 08     adc   a,#$08
11c2: d6 43 05  mov   $0543+y,a
11c5: e4 2b     mov   a,$2b
11c7: 88 00     adc   a,#$00
11c9: d6 63 05  mov   $0563+y,a
11cc: f6 23 04  mov   a,$0423+y
11cf: cd 00     mov   x,#$00
11d1: eb 0c     mov   y,$0c
11d3: f0 23     beq   $11f8
11d5: cf        mul   ya
11d6: cb 3b     mov   $3b,y
11d8: c4 3c     mov   $3c,a
11da: cd 05     mov   x,#$05
11dc: 4b 3b     lsr   $3b
11de: 7c        ror   a
11df: 1d        dec   x
11e0: d0 fa     bne   $11dc
11e2: eb 3b     mov   y,$3b
11e4: ad 00     cmp   y,#$00
11e6: d0 08     bne   $11f0
11e8: 68 00     cmp   a,#$00
11ea: f0 0a     beq   $11f6
11ec: f8 3c     mov   x,$3c
11ee: 2f 08     bra   $11f8
11f0: cd 01     mov   x,#$01
11f2: e8 ff     mov   a,#$ff
11f4: 2f 02     bra   $11f8
11f6: 5d        mov   x,a
11f7: bc        inc   a
11f8: eb 2e     mov   y,$2e
11fa: d6 23 04  mov   $0423+y,a
11fd: 7d        mov   a,x
11fe: 48 ff     eor   a,#$ff
1200: 08 e0     or    a,#$e0
1202: d6 a3 03  mov   $03a3+y,a
1205: e8 ff     mov   a,#$ff
1207: d6 e3 03  mov   $03e3+y,a
120a: 3f 99 0b  call  $0b99
120d: 5d        mov   x,a
120e: f6 43 04  mov   a,$0443+y
1211: fd        mov   y,a
1212: 7d        mov   a,x
1213: cf        mul   ya
1214: da 41     movw  $41,ya
1216: 03 07 06  bbs0  $07,$121f
1219: ba 05     movw  ya,$05
121b: da 41     movw  $41,ya
121d: 2f 0a     bra   $1229
121f: ba 4a     movw  ya,$4a
1221: 9a 41     subw  ya,$41
1223: b0 02     bcs   $1227
1225: ba 4a     movw  ya,$4a
1227: cb 42     mov   $42,y
1229: eb 2e     mov   y,$2e
122b: d6 83 05  mov   $0583+y,a
122e: e4 42     mov   a,$42
1230: d6 a3 05  mov   $05a3+y,a
1233: f6 23 04  mov   a,$0423+y
1236: bc        inc   a
1237: d0 01     bne   $123a
1239: 9c        dec   a
123a: d6 03 05  mov   $0503+y,a
123d: 68 03     cmp   a,#$03
123f: b0 05     bcs   $1246
1241: e8 00     mov   a,#$00
1243: d6 c3 04  mov   $04c3+y,a
1246: e8 01     mov   a,#$01
1248: d6 a3 04  mov   $04a3+y,a
124b: 9c        dec   a
124c: d6 23 05  mov   $0523+y,a
124f: d6 44 ff  mov   $ff44+y,a
1252: d6 64 ff  mov   $ff64+y,a
1255: c4 38     mov   $38,a
1257: 5f 2c 13  jmp   $132c

125a: eb 2e     mov   y,$2e
125c: b2 07     clr5  $07
125e: f6 c3 04  mov   a,$04c3+y
1261: c4 38     mov   $38,a
1263: f6 a3 04  mov   a,$04a3+y
1266: f0 42     beq   $12aa
1268: f6 a3 03  mov   a,$03a3+y
126b: 60        clrc
126c: 96 e3 03  adc   a,$03e3+y
126f: d6 e3 03  mov   $03e3+y,a
1272: 90 18     bcc   $128c
1274: f6 03 05  mov   a,$0503+y
1277: c4 39     mov   $39,a
1279: f0 03     beq   $127e
127b: 9c        dec   a
127c: d0 03     bne   $1281
127e: f6 23 04  mov   a,$0423+y
1281: d6 03 05  mov   $0503+y,a
1284: 78 02 39  cmp   $39,#$02
1287: 90 08     bcc   $1291
1289: 5f 2c 13  jmp   $132c

128c: 8f 00 38  mov   $38,#$00
128f: 2f f8     bra   $1289
1291: eb 2e     mov   y,$2e
1293: f6 23 05  mov   a,$0523+y
1296: bc        inc   a
1297: 76 03 04  cmp   a,$0403+y
129a: 90 1b     bcc   $12b7
129c: 9c        dec   a
129d: 76 83 04  cmp   a,$0483+y
12a0: d0 03     bne   $12a5
12a2: 5f 26 13  jmp   $1326

12a5: e8 00     mov   a,#$00
12a7: d6 a3 04  mov   $04a3+y,a
12aa: a2 07     set5  $07
12ac: f6 24 ff  mov   a,$ff24+y
12af: 2d        push  a
12b0: f6 04 ff  mov   a,$ff04+y
12b3: ee        pop   y
12b4: 5f dd 13  jmp   $13dd

12b7: d6 23 05  mov   $0523+y,a
12ba: f6 a3 05  mov   a,$05a3+y
12bd: 16 83 05  or    a,$0583+y
12c0: f0 6a     beq   $132c
12c2: f8 29     mov   x,$29
12c4: f5 46 02  mov   a,$0246+x
12c7: 28 02     and   a,#$02
12c9: f0 24     beq   $12ef
12cb: e8 01     mov   a,#$01
12cd: 74 6c     cmp   a,$6c+x
12cf: d0 03     bne   $12d4
12d1: 83 07 09  bbs4  $07,$12dd
12d4: eb 29     mov   y,$29
12d6: f6 46 02  mov   a,$0246+y
12d9: 28 01     and   a,#$01
12db: f0 3d     beq   $131a
12dd: e8 00     mov   a,#$00
12df: d6 75 00  mov   $0075+y,a
12e2: d6 76 00  mov   $0076+y,a
12e5: eb 2e     mov   y,$2e
12e7: d6 83 05  mov   $0583+y,a
12ea: d6 a3 05  mov   $05a3+y,a
12ed: 2f 21     bra   $1310
12ef: f6 83 05  mov   a,$0583+y
12f2: 80        setc
12f3: b6 23 04  sbc   a,$0423+y
12f6: d6 83 05  mov   $0583+y,a
12f9: c4 41     mov   $41,a
12fb: f6 a3 05  mov   a,$05a3+y
12fe: a8 00     sbc   a,#$00
1300: b0 07     bcs   $1309
1302: e8 00     mov   a,#$00
1304: d6 83 05  mov   $0583+y,a
1307: c4 41     mov   $41,a
1309: d6 a3 05  mov   $05a3+y,a
130c: 04 41     or    a,$41
130e: d0 0a     bne   $131a
1310: f6 83 04  mov   a,$0483+y
1313: 76 03 04  cmp   a,$0403+y
1316: 90 11     bcc   $1329
1318: a2 07     set5  $07
131a: eb 2e     mov   y,$2e
131c: f6 23 05  mov   a,$0523+y
131f: 76 83 04  cmp   a,$0483+y
1322: 90 08     bcc   $132c
1324: f0 06     beq   $132c
1326: f6 63 04  mov   a,$0463+y
1329: d6 23 05  mov   $0523+y,a
132c: eb 2e     mov   y,$2e
132e: f8 38     mov   x,$38
1330: f0 1c     beq   $134e
1332: 78 03 39  cmp   $39,#$03
1335: 90 17     bcc   $134e
1337: f6 04 ff  mov   a,$ff04+y
133a: c4 34     mov   $34,a
133c: f6 24 ff  mov   a,$ff24+y
133f: c4 35     mov   $35,a
1341: f6 44 ff  mov   a,$ff44+y
1344: c4 36     mov   $36,a
1346: f6 64 ff  mov   a,$ff64+y
1349: c4 37     mov   $37,a
134b: 5f cb 13  jmp   $13cb

134e: f6 43 05  mov   a,$0543+y
1351: c4 2c     mov   $2c,a
1353: f6 63 05  mov   a,$0563+y
1356: c4 2d     mov   $2d,a
1358: f6 23 05  mov   a,$0523+y
135b: fd        mov   y,a
135c: 43 08 07  bbs2  $08,$1366
135f: f7 2c     mov   a,($2c)+y
1361: 8d 40     mov   y,#$40
1363: cf        mul   ya
1364: 2f 10     bra   $1376
1366: 8d 02     mov   y,#$02
1368: cf        mul   ya
1369: 7a 2c     addw  ya,$2c
136b: da 2c     movw  $2c,ya
136d: 8d 01     mov   y,#$01
136f: f7 2c     mov   a,($2c)+y
1371: dc        dec   y
1372: 2d        push  a
1373: f7 2c     mov   a,($2c)+y
1375: ee        pop   y
1376: f8 38     mov   x,$38
1378: f0 55     beq   $13cf
137a: 78 02 39  cmp   $39,#$02
137d: f0 50     beq   $13cf
137f: da 3b     movw  $3b,ya
1381: eb 2e     mov   y,$2e
1383: f6 24 ff  mov   a,$ff24+y
1386: c4 35     mov   $35,a
1388: f6 04 ff  mov   a,$ff04+y
138b: c4 34     mov   $34,a
138d: eb 35     mov   y,$35
138f: 80        setc
1390: 9a 3b     subw  ya,$3b
1392: da 36     movw  $36,ya
1394: e8 00     mov   a,#$00
1396: 3c        rol   a
1397: c4 3b     mov   $3b,a
1399: d0 08     bne   $13a3
139b: 58 ff 36  eor   $36,#$ff
139e: 58 ff 37  eor   $37,#$ff
13a1: 3a 36     incw  $36
13a3: eb 2e     mov   y,$2e
13a5: f6 23 04  mov   a,$0423+y
13a8: 5d        mov   x,a
13a9: ba 36     movw  ya,$36
13ab: 3f e8 13  call  $13e8
13ae: c4 36     mov   $36,a
13b0: d8 37     mov   $37,x
13b2: 78 01 3b  cmp   $3b,#$01
13b5: d0 08     bne   $13bf
13b7: 58 ff 36  eor   $36,#$ff
13ba: 58 ff 37  eor   $37,#$ff
13bd: 3a 36     incw  $36
13bf: eb 2e     mov   y,$2e
13c1: e4 36     mov   a,$36
13c3: d6 44 ff  mov   $ff44+y,a
13c6: e4 37     mov   a,$37
13c8: d6 64 ff  mov   $ff64+y,a
13cb: ba 34     movw  ya,$34
13cd: 7a 36     addw  ya,$36
13cf: da 34     movw  $34,ya
13d1: eb 2e     mov   y,$2e
13d3: d6 04 ff  mov   $ff04+y,a
13d6: e4 35     mov   a,$35
13d8: d6 24 ff  mov   $ff24+y,a
13db: ba 34     movw  ya,$34
13dd: 43 08 07  bbs2  $08,$13e7
13e0: cd 40     mov   x,#$40
13e2: 9e        div   ya,x
13e3: 8d 00     mov   y,#$00
13e5: da 34     movw  $34,ya
13e7: 6f        ret

13e8: c8 00     cmp   x,#$00
13ea: d0 04     bne   $13f0
13ec: 1d        dec   x
13ed: 7d        mov   a,x
13ee: fd        mov   y,a
13ef: 6f        ret

13f0: 40        setp
13f1: cb 01     mov   $01,y
13f3: 3e 01     cmp   x,$01
13f5: f0 02     beq   $13f9
13f7: b0 1a     bcs   $1413
13f9: c4 00     mov   $00,a
13fb: dd        mov   a,y
13fc: 8d 00     mov   y,#$00
13fe: 9e        div   ya,x
13ff: c4 02     mov   $02,a
1401: fd        mov   y,a
1402: 7d        mov   a,x
1403: cf        mul   ya
1404: c4 03     mov   $03,a
1406: e4 01     mov   a,$01
1408: 80        setc
1409: a4 03     sbc   a,$03
140b: fd        mov   y,a
140c: e4 00     mov   a,$00
140e: 9e        div   ya,x
140f: f8 02     mov   x,$02
1411: 20        clrp
1412: 6f        ret

1413: 9e        div   ya,x
1414: cd 00     mov   x,#$00
1416: 20        clrp
1417: 6f        ret

1418: 4d        push  x
1419: f5 f4 fc  mov   a,$fcf4+x
141c: 8d 04     mov   y,#$04
141e: cf        mul   ya
141f: 7a 25     addw  ya,$25
1421: da 00     movw  $00,ya
1423: f5 ec 07  mov   a,$07ec+x
1426: c4 f2     mov   $f2,a
1428: 7d        mov   a,x
1429: 1c        asl   a
142a: 1c        asl   a
142b: 5d        mov   x,a
142c: f5 02 02  mov   a,$0202+x
142f: c5 26 02  mov   $0226,a
1432: f5 03 02  mov   a,$0203+x
1435: c5 27 02  mov   $0227,a
1438: 8f 09 f3  mov   $f3,#$09
143b: 8d 00     mov   y,#$00
143d: f7 00     mov   a,($00)+y
143f: d5 00 02  mov   $0200+x,a
1442: fc        inc   y
1443: f7 00     mov   a,($00)+y
1445: d5 01 02  mov   $0201+x,a
1448: fc        inc   y
1449: f7 00     mov   a,($00)+y
144b: d5 02 02  mov   $0202+x,a
144e: fc        inc   y
144f: f7 00     mov   a,($00)+y
1451: d5 03 02  mov   $0203+x,a
1454: 8d 01     mov   y,#$01
1456: f7 00     mov   a,($00)+y
1458: c4 3e     mov   $3e,a
145a: dc        dec   y
145b: f7 00     mov   a,($00)+y
145d: 80        setc
145e: a8 03     sbc   a,#$03
1460: c4 3d     mov   $3d,a
1462: b8 00 3e  sbc   $3e,#$00
1465: f7 3d     mov   a,($3d)+y
1467: c5 04 01  mov   $0104,a
146a: fc        inc   y
146b: f7 3d     mov   a,($3d)+y
146d: c5 05 01  mov   $0105,a
1470: fc        inc   y
1471: f7 3d     mov   a,($3d)+y
1473: c4 60     mov   $60,a
1475: 10 14     bpl   $148b
1477: 28 1f     and   a,#$1f
1479: 8f 6c f2  mov   $f2,#$6c
147c: 38 e0 f3  and   $f3,#$e0
147f: 04 f3     or    a,$f3
1481: c4 f3     mov   $f3,a
1483: 8f 3d f2  mov   $f2,#$3d
1486: 09 46 f3  or    ($f3),($46)
1489: 2f 06     bra   $1491
148b: 8f 3d f2  mov   $f2,#$3d
148e: 29 47 f3  and   ($f3),($47)
1491: ce        pop   x
1492: f5 ec 07  mov   a,$07ec+x
1495: c4 f2     mov   $f2,a
1497: d8 f3     mov   $f3,x
1499: 6f        ret

149a: 60        clrc
149b: 88 a0     adc   a,#$a0			; add offset to input frequency (1440)
149d: 5d        mov   x,a
149e: dd        mov   a,y
149f: 88 05     adc   a,#$05
14a1: fd        mov   y,a
14a2: 7d        mov   a,x
14a3: ad 0a     cmp   y,#$0a			; check if it is in within positive range
14a5: 90 06     bcc   $14ad			; in range
14a7: d0 0a     bne   $14b3			; out of range
14a9: 68 50     cmp   a,#$50
14ab: b0 06     bcs   $14b3			; out of range
14ad: 8f ff 61  mov   $61,#$ff
14b0: 5f c9 14  jmp   $14c9

14b3: ad 80     cmp   y,#$80
14b5: 90 0f     bcc   $14c6
14b7: 8f 00 61  mov   $61,#$00
14ba: 60        clrc
14bb: 88 20     adc   a,#$20
14bd: 5d        mov   x,a
14be: dd        mov   a,y
14bf: 88 df     adc   a,#$df
14c1: fd        mov   y,a
14c2: 7d        mov   a,x
14c3: 5f c9 14  jmp   $14c9

14c6: 8f 0a 61  mov   $61,#$0a
14c9: cd f0     mov   x,#$f0
14cb: 9e        div   ya,x
14cc: 78 ff 61  cmp   $61,#$ff
14cf: d0 02     bne   $14d3
14d1: c4 61     mov   $61,a
14d3: f6 ee 14  mov   a,$14ee+y			;get pitch value (from table)
14d6: c4 3b     mov   $3b,a
14d8: f6 de 15  mov   a,$15de+y
14db: c4 3c     mov   $3c,a
14dd: e8 0a     mov   a,#$0a
14df: 80        setc
14e0: a4 61     sbc   a,$61
14e2: f0 07     beq   $14eb
14e4: fd        mov   y,a
14e5: 4b 3c     lsr   $3c
14e7: 6b 3b     ror   $3b
14e9: fe fa     dbnz  y,$14e5
14eb: ba 3b     movw  ya,$3b
14ed: 6f        ret

; pitch table (low byte)
14ee: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
15de: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

; note interval frequencies (low byte)
16ce: db $30,$20,$ac,$10,$24,$38,$4c,$60,$74,$88,$9c,$b0,$c4,$d8,$ec,$00,$14,$28,$3c,$50,$64,$78,$8c,$a0,$b4,$c8,$dc,$f0,$54,$e0,$d0,$c0

; note interval frequencies (high byte)
16ee: db $fd,$fe,$fe,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$03

170e: 3f 82 17  call  $1782
1711: 8f 00 87  mov   $87,#$00
1714: e4 86     mov   a,$86
1716: f0 20     beq   $1738
1718: e4 85     mov   a,$85
171a: 9c        dec   a
171b: c4 88     mov   $88,a
171d: 3f 99 0b  call  $0b99
1720: f8 87     mov   x,$87
1722: f5 07 01  mov   a,$0107+x
1725: 30 0a     bmi   $1731
1727: 5d        mov   x,a
1728: c4 88     mov   $88,a
172a: f5 66 03  mov   a,$0366+x
172d: 5d        mov   x,a
172e: 1f 3b 1e  jmp   ($1e3b+x)

1731: ab 87     inc   $87
1733: 69 85 87  cmp   ($87),($85)
1736: d0 e5     bne   $171d
1738: 6f        ret

1739: c4 3b     mov   $3b,a
173b: f6 64 00  mov   a,$0064+y
173e: 28 80     and   a,#$80
1740: f0 08     beq   $174a
1742: f6 11 00  mov   a,$0011+y
1745: 9c        dec   a
1746: d6 11 00  mov   $0011+y,a
1749: 6f        ret

174a: f6 6c 00  mov   a,$006c+y
174d: 64 3b     cmp   a,$3b
174f: d0 07     bne   $1758
1751: f6 11 00  mov   a,$0011+y
1754: 5c        lsr   a
1755: d6 11 00  mov   $0011+y,a
1758: 6f        ret

1759: f8 88     mov   x,$88
175b: 9b b4     dec   $b4+x
175d: d0 d2     bne   $1731
175f: 2f 19     bra   $177a
1761: f8 88     mov   x,$88
1763: 9b b4     dec   $b4+x
1765: d0 ca     bne   $1731
1767: e8 04     mov   a,#$04
1769: d5 66 03  mov   $0366+x,a
176c: 5f 6b 18  jmp   $186b

176f: 3f c8 17  call  $17c8
1772: e8 00     mov   a,#$00
1774: d5 c6 02  mov   $02c6+x,a
1777: d5 da 02  mov   $02da+x,a
177a: e8 06     mov   a,#$06
177c: d5 66 03  mov   $0366+x,a
177f: 5f 00 18  jmp   $1800

1782: d3 07 2f  bbc6  $07,$17b4
1785: d2 07     clr6  $07
1787: f8 85     mov   x,$85
1789: f0 29     beq   $17b4
178b: e8 ff     mov   a,#$ff
178d: 1d        dec   x
178e: d5 07 01  mov   $0107+x,a
1791: 1d        dec   x
1792: 10 fa     bpl   $178e
1794: f8 85     mov   x,$85
1796: 1d        dec   x
1797: 8f 00 3b  mov   $3b,#$00
179a: eb 3b     mov   y,$3b
179c: f6 07 01  mov   a,$0107+y
179f: 30 14     bmi   $17b5
17a1: fd        mov   y,a
17a2: f5 b2 02  mov   a,$02b2+x
17a5: 76 b2 02  cmp   a,$02b2+y
17a8: b0 0b     bcs   $17b5
17aa: ab 3b     inc   $3b
17ac: 78 14 3b  cmp   $3b,#$14
17af: d0 e9     bne   $179a
17b1: 1d        dec   x
17b2: 10 e3     bpl   $1797
17b4: 6f        ret

17b5: eb 3b     mov   y,$3b
17b7: 4d        push  x
17b8: 40        setp
17b9: f6 07 01  mov   a,$0107+y
17bc: d9 07     mov   $07+y,x
17be: 5d        mov   x,a
17bf: fc        inc   y
17c0: 68 ff     cmp   a,#$ff
17c2: d0 f5     bne   $17b9
17c4: ce        pop   x
17c5: 20        clrp
17c6: 2f e9     bra   $17b1
17c8: f5 27 06  mov   a,$0627+x
17cb: 30 1d     bmi   $17ea
17cd: fd        mov   y,a
17ce: 7d        mov   a,x
17cf: 08 80     or    a,#$80
17d1: 76 d0 00  cmp   a,$00d0+y
17d4: d0 14     bne   $17ea
17d6: e8 01     mov   a,#$01
17d8: 16 46 02  or    a,$0246+y
17db: d6 46 02  mov   $0246+y,a
17de: e8 01     mov   a,#$01
17e0: 3f 39 17  call  $1739
17e3: f5 7a 03  mov   a,$037a+x
17e6: 28 02     and   a,#$02
17e8: d0 00     bne   $17ea
17ea: 6f        ret

17eb: c4 02     mov   $02,a
17ed: 7d        mov   a,x
17ee: 8d 05     mov   y,#$05
17f0: cf        mul   ya
17f1: 60        clrc
17f2: 84 02     adc   a,$02
17f4: fd        mov   y,a
17f5: cb 02     mov   $02,y
17f7: 6f        ret

; voice numbers
17f8: db $01,$02,$04,$08,$10,$20,$40,$80

1800: f8 88     mov   x,$88
1802: f5 c6 02  mov   a,$02c6+x
1805: c4 3b     mov   $3b,a
1807: f5 da 02  mov   a,$02da+x
180a: c4 3c     mov   $3c,a
180c: 3f 3b 1a  call  $1a3b
180f: fd        mov   y,a
1810: 28 0f     and   a,#$0f
1812: 2d        push  a
1813: dd        mov   a,y
1814: 5c        lsr   a
1815: 5c        lsr   a
1816: 5c        lsr   a
1817: 5c        lsr   a
1818: f0 28     beq   $1842
181a: 60        clrc
181b: 88 f8     adc   a,#$f8
181d: 8d 00     mov   y,#$00
181f: 68 00     cmp   a,#$00
1821: 10 01     bpl   $1824
1823: dc        dec   y
1824: 7a 3b     addw  ya,$3b
1826: d5 c6 02  mov   $02c6+x,a
1829: dd        mov   a,y
182a: d5 da 02  mov   $02da+x,a
182d: 8f 00 89  mov   $89,#$00
1830: 3f 00 19  call  $1900
1833: f8 88     mov   x,$88
1835: ae        pop   a
1836: 68 00     cmp   a,#$00
1838: f0 c6     beq   $1800
183a: d4 b4     mov   $b4+x,a
183c: 3f 24 1c  call  $1c24
183f: 5f 31 17  jmp   $1731

1842: ae        pop   a
1843: dd        mov   a,y
1844: 68 00     cmp   a,#$00
1846: d0 03     bne   $184b
1848: 5f 67 17  jmp   $1767
184b: 68 01     cmp   a,#$01
184d: d0 0b     bne   $185a
184f: 3f 3b 1a  call  $1a3b
1852: d4 b4     mov   $b4+x,a
1854: 3f 24 1c  call  $1c24
1857: 5f 31 17  jmp   $1731

185a: 68 02     cmp   a,#$02
185c: d0 05     bne   $1863
185e: 3f c8 17  call  $17c8
1861: 2f 9d     bra   $1800
1863: f4 b4     mov   a,$b4+x
1865: 2d        push  a
1866: 3f 3b 1a  call  $1a3b
1869: 2f b2     bra   $181d
186b: f8 88     mov   x,$88
186d: f5 4e 02  mov   a,$024e+x
1870: 68 05     cmp   a,#$05
1872: f0 1e     beq   $1892
1874: 3f eb 17  call  $17eb
1877: f6 68 fd  mov   a,$fd68+y
187a: c4 00     mov   $00,a
187c: f6 04 fd  mov   a,$fd04+y
187f: c4 01     mov   $01,a
1881: 8d 02     mov   y,#$02
1883: f7 00     mov   a,($00)+y
1885: de 8c 0a  cbne  $8c+x,$1892
1888: 8d 03     mov   y,#$03
188a: f7 00     mov   a,($00)+y
188c: de a0 03  cbne  $a0+x,$1892

; play melody byte
188f: 5f 74 1b  jmp   $1b74

1892: 3f 3b 1a  call  $1a3b		; get 1 byte
1895: fd        mov   y,a		; separate the flags
1896: ad e0     cmp   y,#$e0		; check if it's a vector command
1898: 90 16     bcc   $18b0		; if not a vector...
189a: dd        mov   a,y
189b: 28 1f     and   a,#$1f		; mask off bits
189d: 1c        asl   a
189e: fd        mov   y,a
189f: f6 79 1c  mov   a,$1c79+y
18a2: c5 ae 18  mov   $18ae,a
18a5: f6 7a 1c  mov   a,$1c7a+y
18a8: c5 af 18  mov   $18af,a
18ab: eb 3b     mov   y,$3b
18ad: 5f 0e 1c  jmp   $1c0e

18b0: ad c0     cmp   y,#$c0		; is it a rest?
18b2: 90 06     bcc   $18ba
18b4: 80        setc
18b5: a8 bf     sbc   a,#$bf		; get the duration
18b7: 5f bd 1a  jmp   $1abd		; and set rest

18ba: ad 00     cmp   y,#$00		; is it a relative note?
18bc: 10 06     bpl   $18c4		; if so, play the note
18be: 80        setc			; otherwise, it must be an absolute note...
18bf: a8 60     sbc   a,#$60
18c1: fd        mov   y,a
18c2: 2f 16     bra   $18da
18c4: 2d        push  a
18c5: 5c        lsr   a
18c6: 5c        lsr   a
18c7: 5c        lsr   a
18c8: 80        setc
18c9: a8 08     sbc   a,#$08
18cb: 60        clrc
18cc: 95 76 02  adc   a,$0276+x
18cf: fd        mov   y,a
18d0: ae        pop   a
18d1: 28 07     and   a,#$07
18d3: bc        inc   a
18d4: 2f 07     bra   $18dd
18d6: 3f 3b 1a  call  $1a3b
18d9: fd        mov   y,a
18da: 3f 3b 1a  call  $1a3b
18dd: 2d        push  a
18de: e8 00     mov   a,#$00
18e0: d5 c6 02  mov   $02c6+x,a
18e3: d5 da 02  mov   $02da+x,a
18e6: dd        mov   a,y
18e7: d5 76 02  mov   $0276+x,a
18ea: 8f 01 89  mov   $89,#$01
18ed: f3 07 02  bbc7  $07,$18f2
18f0: 8b 89     dec   $89
18f2: f2 07     clr7  $07
18f4: ae        pop   a
18f5: 3f fb 18  call  $18fb
18f8: 5f 31 17  jmp   $1731

18fb: d4 b4     mov   $b4+x,a
18fd: 3f 1e 1c  call  $1c1e
1900: e4 89     mov   a,$89
1902: f0 06     beq   $190a
1904: 3f c8 17  call  $17c8
1907: 73 07 16  bbc3  $07,$1920
190a: f5 27 06  mov   a,$0627+x
190d: 30 0d     bmi   $191c
190f: fd        mov   y,a
1910: 7d        mov   a,x
1911: 08 80     or    a,#$80
1913: 76 d0 00  cmp   a,$00d0+y
1916: d0 04     bne   $191c
1918: dd        mov   a,y
1919: 5d        mov   x,a
191a: 2f 51     bra   $196d
191c: ab 89     inc   $89
191e: 72 07     clr3  $07
1920: e8 ff     mov   a,#$ff
1922: d5 27 06  mov   $0627+x,a
1925: f5 b2 02  mov   a,$02b2+x
1928: c4 50     mov   $50,a
192a: f5 eb 05  mov   a,$05eb+x
192d: c4 0a     mov   $0a,a
192f: f5 13 06  mov   a,$0613+x
1932: c4 4f     mov   $4f,a
1934: f5 ff 05  mov   a,$05ff+x
1937: 5d        mov   x,a
1938: f5 f8 17  mov   a,$17f8+x
193b: c4 51     mov   $51,a
193d: f5 7a 03  mov   a,$037a+x
1940: 28 01     and   a,#$01
1942: d0 24     bne   $1968
1944: 3f 5b 0e  call  $0e5b
1947: 30 1f     bmi   $1968
1949: f5 7a 03  mov   a,$037a+x
194c: 28 fd     and   a,#$fd
194e: b3 0a 02  bbc5  $0a,$1953
1951: 08 02     or    a,#$02
1953: d5 7a 03  mov   $037a+x,a
1956: d3 0a 12  bbc6  $0a,$196b
1959: 7d        mov   a,x
195a: 53 0a 03  bbc2  $0a,$1960
195d: bc        inc   a
195e: 2f 01     bra   $1961
1960: 9c        dec   a
1961: 28 07     and   a,#$07
1963: d5 ff 05  mov   $05ff+x,a
1966: 2f 03     bra   $196b
1968: 5f 36 1a  jmp   $1a36

196b: 7d        mov   a,x
196c: fd        mov   y,a
196d: f8 88     mov   x,$88
196f: d5 27 06  mov   $0627+x,a
1972: 7d        mov   a,x
1973: 08 80     or    a,#$80
1975: d6 d0 00  mov   $00d0+y,a
1978: e4 89     mov   a,$89
197a: f0 00     beq   $197c
197c: cb c8     mov   $c8,y
197e: e8 01     mov   a,#$01
1980: d6 6c 00  mov   $006c+y,a
1983: f5 b2 02  mov   a,$02b2+x
1986: d6 11 00  mov   $0011+y,a
1989: dd        mov   a,y
198a: 1c        asl   a
198b: fd        mov   y,a
198c: f5 ee 02  mov   a,$02ee+x
198f: d6 5b 01  mov   $015b+y,a
1992: f5 02 03  mov   a,$0302+x
1995: d6 5c 01  mov   $015c+y,a
1998: f5 76 02  mov   a,$0276+x
199b: 8d 14     mov   y,#$14
199d: cf        mul   ya
199e: 80        setc
199f: a8 84     sbc   a,#$84
19a1: c4 4c     mov   $4c,a
19a3: dd        mov   a,y
19a4: a8 03     sbc   a,#$03
19a6: c4 4d     mov   $4d,a
19a8: f5 da 02  mov   a,$02da+x
19ab: fd        mov   y,a
19ac: f5 c6 02  mov   a,$02c6+x
19af: 7a 4c     addw  ya,$4c
19b1: da 4c     movw  $4c,ya
19b3: f5 4f 06  mov   a,$064f+x
19b6: fd        mov   y,a
19b7: f5 3b 06  mov   a,$063b+x
19ba: 7a 4c     addw  ya,$4c
19bc: 7a 5d     addw  ya,$5d
19be: da 4c     movw  $4c,ya
19c0: f5 77 06  mov   a,$0677+x
19c3: fd        mov   y,a
19c4: f5 63 06  mov   a,$0663+x
19c7: 7a 4c     addw  ya,$4c
19c9: dd        mov   a,y
19ca: eb 89     mov   y,$89
19cc: d0 13     bne   $19e1
19ce: c4 30     mov   $30,a
19d0: fa 4c 2f  mov   ($2f),($4c)
19d3: 8f d4 00  mov   $00,#$d4
19d6: 8f fc 01  mov   $01,#$fc
19d9: 7d        mov   a,x
19da: 08 80     or    a,#$80
19dc: 3f f3 1d  call  $1df3
19df: 2f 55     bra   $1a36
19e1: f5 c3 05  mov   a,$05c3+x
19e4: 10 02     bpl   $19e8
19e6: e8 7f     mov   a,#$7f
19e8: c4 c9     mov   $c9,a
19ea: e4 c8     mov   a,$c8
19ec: 1c        asl   a
19ed: fd        mov   y,a
19ee: e8 00     mov   a,#$00
19f0: 12 07     clr0  $07
19f2: d6 d8 00  mov   $00d8+y,a
19f5: d6 d9 00  mov   $00d9+y,a
19f8: e4 c8     mov   a,$c8
19fa: fd        mov   y,a
19fb: f6 46 02  mov   a,$0246+y
19fe: 08 02     or    a,#$02
1a00: d6 46 02  mov   $0246+y,a
1a03: e8 ff     mov   a,#$ff
1a05: d6 92 03  mov   $0392+y,a
1a08: f5 9e 02  mov   a,$029e+x
1a0b: d6 9a 03  mov   $039a+y,a
1a0e: f5 16 03  mov   a,$0316+x
1a11: c4 0e     mov   $0e,a
1a13: f5 62 02  mov   a,$0262+x
1a16: c5 3d 02  mov   $023d,a
1a19: f5 3e 03  mov   a,$033e+x
1a1c: c4 0d     mov   $0d,a
1a1e: f5 52 03  mov   a,$0352+x
1a21: c4 10     mov   $10,a
1a23: f5 2a 03  mov   a,$032a+x
1a26: c4 0f     mov   $0f,a
1a28: eb c9     mov   y,$c9
1a2a: f5 8a 02  mov   a,$028a+x
1a2d: cf        mul   ya
1a2e: f5 d7 05  mov   a,$05d7+x
1a31: f8 c8     mov   x,$c8
1a33: 3f cd 0e  call  $0ecd
1a36: ab 89     inc   $89
1a38: 72 07     clr3  $07
1a3a: 6f        ret

1a3b: 3f 99 0b  call  $0b99
1a3e: f8 88     mov   x,$88
1a40: f4 8c     mov   a,$8c+x
1a42: c5 4b 1a  mov   $1a4b,a
1a45: f4 a0     mov   a,$a0+x
1a47: c5 4c 1a  mov   $1a4c,a
1a4a: e5 86 dc  mov   a,$dc86
1a4d: bb 8c     inc   $8c+x
1a4f: d0 02     bne   $1a53
1a51: bb a0     inc   $a0+x
1a53: 6f        ret

; vcmd e9 - set effects mask
1a54: 3f 3b 1a  call  $1a3b
1a57: c4 0b     mov   $0b,a
1a59: 2f 09     bra   $1a64

; vcmd e6 - set standard allocation
1a5b: e8 08     mov   a,#$08
1a5d: d5 eb 05  mov   $05eb+x,a
1a60: 7d        mov   a,x
1a61: d5 ff 05  mov   $05ff+x,a
1a64: 5f 6b 18  jmp   $186b

; vcmd e5 - set channel allocation
1a67: 3f 3b 1a  call  $1a3b
1a6a: d5 eb 05  mov   $05eb+x,a
1a6d: 3f 3b 1a  call  $1a3b
1a70: d5 ff 05  mov   $05ff+x,a
1a73: 3f 3b 1a  call  $1a3b
1a76: d5 13 06  mov   $0613+x,a
1a79: 2f e9     bra   $1a64
1a7b: 3f c8 17  call  $17c8
1a7e: e8 00     mov   a,#$00
1a80: d5 66 03  mov   $0366+x,a
1a83: 8b 86     dec   $86
1a85: 5f 31 17  jmp   $1731

; vcmd f1 - delta expression
1a88: f5 c3 05  mov   a,$05c3+x
1a8b: 3f 93 1a  call  $1a93
1a8e: d5 c3 05  mov   $05c3+x,a
1a91: 2f d1     bra   $1a64

1a93: 4d        push  x
1a94: fd        mov   y,a
1a95: 6d        push  y
1a96: 3f 3b 1a  call  $1a3b
1a99: cf        mul   ya
1a9a: da 3b     movw  $3b,ya
1a9c: ee        pop   y
1a9d: 3f 3b 1a  call  $1a3b
1aa0: cf        mul   ya
1aa1: 6d        push  y
1aa2: 0b 3b     asl   $3b
1aa4: 84 3c     adc   a,$3c
1aa6: 5d        mov   x,a
1aa7: ae        pop   a
1aa8: 88 00     adc   a,#$00
1aaa: fd        mov   y,a
1aab: d0 03     bne   $1ab0
1aad: 7d        mov   a,x
1aae: 10 02     bpl   $1ab2
1ab0: e8 7f     mov   a,#$7f
1ab2: ce        pop   x
1ab3: 6f        ret

; vcmd f2 - absolute expression
1ab4: 3f 3b 1a  call  $1a3b
1ab7: d5 c3 05  mov   $05c3+x,a
1aba: 5f 6b 18  jmp   $186b

1abd: 2d        push  a
1abe: 3f c8 17  call  $17c8
1ac1: ae        pop   a
1ac2: d4 b4     mov   $b4+x,a
1ac4: 3f 1e 1c  call  $1c1e
1ac7: 5f 31 17  jmp   $1731

; vcmd fd - set time (delay) - 64
1aca: e8 40     mov   a,#$40
1acc: 2f f4     bra   $1ac2

; vcmd f8 - set time (delay) - 32
1ace: e8 20     mov   a,#$20
1ad0: 2f f0     bra   $1ac2

; vcmd fe - set time (delay) - 128
1ad2: e8 80     mov   a,#$80
1ad4: 2f ec     bra   $1ac2

; vcmd ff - set time (delay) - 256
1ad6: e8 00     mov   a,#$00
1ad8: 2f e8     bra   $1ac2

; vcmd f5 - set sound (instrument)
1ada: 3f 3b 1a  call  $1a3b
1add: d5 d7 05  mov   $05d7+x,a
1ae0: f5 4e 02  mov   a,$024e+x
1ae3: 68 05     cmp   a,#$05
1ae5: f0 2b     beq   $1b12
1ae7: 3f eb 17  call  $17eb
1aea: f6 68 fd  mov   a,$fd68+y
1aed: c4 00     mov   $00,a
1aef: f6 04 fd  mov   a,$fd04+y
1af2: c4 01     mov   $01,a
1af4: f6 04 fc  mov   a,$fc04+y
1af7: 8d 09     mov   y,#$09
1af9: 77 00     cmp   a,($00)+y
1afb: 90 02     bcc   $1aff
1afd: e8 00     mov   a,#$00
1aff: bc        inc   a
1b00: eb 02     mov   y,$02
1b02: d6 04 fc  mov   $fc04+y,a
1b05: 60        clrc
1b06: 88 09     adc   a,#$09
1b08: fd        mov   y,a
1b09: f7 00     mov   a,($00)+y
1b0b: 68 ff     cmp   a,#$ff
1b0d: f0 03     beq   $1b12
1b0f: d5 d7 05  mov   $05d7+x,a
1b12: 5f 6b 18  jmp   $186b

; vcmd f6 - play phrase
1b15: f5 4e 02  mov   a,$024e+x
1b18: 9c        dec   a
1b19: d5 4e 02  mov   $024e+x,a
1b1c: 3f eb 17  call  $17eb
1b1f: f4 8c     mov   a,$8c+x
1b21: d6 68 fd  mov   $fd68+y,a
1b24: f4 a0     mov   a,$a0+x
1b26: d6 04 fd  mov   $fd04+y,a
1b29: e8 00     mov   a,#$00
1b2b: d6 68 fc  mov   $fc68+y,a
1b2e: 3f 3b 1a  call  $1a3b
1b31: 2d        push  a
1b32: 3f 40 1a  call  $1a40
1b35: 2d        push  a
1b36: 3f 40 1a  call  $1a40
1b39: 3f 40 1a  call  $1a40
1b3c: 3f 40 1a  call  $1a40
1b3f: 3f 40 1a  call  $1a40
1b42: fd        mov   y,a
1b43: 3f 40 1a  call  $1a40
1b46: 2d        push  a
1b47: dd        mov   a,y
1b48: 60        clrc
1b49: 95 3b 06  adc   a,$063b+x
1b4c: d5 3b 06  mov   $063b+x,a
1b4f: ae        pop   a
1b50: 95 4f 06  adc   a,$064f+x
1b53: d5 4f 06  mov   $064f+x,a
1b56: f5 c3 05  mov   a,$05c3+x
1b59: eb 02     mov   y,$02
1b5b: d6 00 fe  mov   $fe00+y,a
1b5e: 3f 93 1a  call  $1a93
1b61: d5 c3 05  mov   $05c3+x,a
1b64: eb 02     mov   y,$02
1b66: e8 00     mov   a,#$00
1b68: d6 04 fc  mov   $fc04+y,a
1b6b: ae        pop   a
1b6c: d4 a0     mov   $a0+x,a
1b6e: ae        pop   a
1b6f: d4 8c     mov   $8c+x,a
1b71: 5f 6b 18  jmp   $186b

1b74: eb 02     mov   y,$02
1b76: f6 68 fc  mov   a,$fc68+y
1b79: bc        inc   a
1b7a: d6 68 fc  mov   $fc68+y,a
1b7d: 8d 04     mov   y,#$04
1b7f: f7 00     mov   a,($00)+y
1b81: f0 07     beq   $1b8a
1b83: eb 02     mov   y,$02
1b85: 76 68 fc  cmp   a,$fc68+y
1b88: f0 0f     beq   $1b99
1b8a: 8d 00     mov   y,#$00
1b8c: f7 00     mov   a,($00)+y
1b8e: d4 8c     mov   $8c+x,a
1b90: 8d 01     mov   y,#$01
1b92: f7 00     mov   a,($00)+y
1b94: d4 a0     mov   $a0+x,a
1b96: 5f 92 18  jmp   $1892

1b99: f5 3b 06  mov   a,$063b+x
1b9c: 80        setc
1b9d: 8d 05     mov   y,#$05
1b9f: b7 00     sbc   a,($00)+y
1ba1: d5 3b 06  mov   $063b+x,a
1ba4: f5 4f 06  mov   a,$064f+x
1ba7: 8d 06     mov   y,#$06
1ba9: b7 00     sbc   a,($00)+y
1bab: d5 4f 06  mov   $064f+x,a
1bae: eb 02     mov   y,$02
1bb0: f6 00 fe  mov   a,$fe00+y
1bb3: d5 c3 05  mov   $05c3+x,a
1bb6: e4 00     mov   a,$00
1bb8: 60        clrc
1bb9: 88 0a     adc   a,#$0a
1bbb: d4 8c     mov   $8c+x,a
1bbd: e4 01     mov   a,$01
1bbf: 88 00     adc   a,#$00
1bc1: d4 a0     mov   $a0+x,a
1bc3: 8d 09     mov   y,#$09
1bc5: f7 00     mov   a,($00)+y
1bc7: 60        clrc
1bc8: 94 8c     adc   a,$8c+x
1bca: d4 8c     mov   $8c+x,a
1bcc: f4 a0     mov   a,$a0+x
1bce: 88 00     adc   a,#$00
1bd0: d4 a0     mov   $a0+x,a
1bd2: f5 4e 02  mov   a,$024e+x
1bd5: bc        inc   a
1bd6: d5 4e 02  mov   $024e+x,a
1bd9: 5f 6b 18  jmp   $186b

; vcmd f0 - end of sequence
1bdc: 3f c8 17  call  $17c8
1bdf: 2f 03     bra   $1be4

; vcmd f9 - go to loop
1be1: 3f 06 1d  call  $1d06
1be4: 5f 6b 18  jmp   $186b

; vcmd fa - set tempo
1be7: 3f 3b 1a  call  $1a3b
1bea: c4 cb     mov   $cb,a
1bec: 2f f6     bra   $1be4

; vcmd fb - set panning
1bee: 3f 3b 1a  call  $1a3b
1bf1: d5 9e 02  mov   $029e+x,a
1bf4: 2f ee     bra   $1be4

; vcmd e0 - set hardware detune
1bf6: 3f 3b 1a  call  $1a3b
1bf9: d5 ee 02  mov   $02ee+x,a
1bfc: 3f 3b 1a  call  $1a3b
1bff: d5 02 03  mov   $0302+x,a
1c02: 2f e0     bra   $1be4

; vcmd f3 - set priority
1c04: 3f 3b 1a  call  $1a3b
1c07: d5 b2 02  mov   $02b2+x,a
1c0a: c2 07     set6  $07
1c0c: 2f d6     bra   $1be4

; vcmd f4 - set tied note
1c0e: 3f 3b 1a  call  $1a3b
1c11: d5 8a 02  mov   $028a+x,a
1c14: 2f ce     bra   $1be4

; vcmd fc - set no retrigger
1c16: 62 07     set3  $07
1c18: 2f ca     bra   $1be4

1c1a: e2 07     set7  $07
1c1c: 2f c6     bra   $1be4

1c1e: e8 02     mov   a,#$02
1c20: d5 66 03  mov   $0366+x,a
1c23: 6f        ret

1c24: e8 08     mov   a,#$08
1c26: d5 66 03  mov   $0366+x,a
1c29: 6f        ret

1c2a: 78 80 ca  cmp   $ca,#$80
1c2d: 90 08     bcc   $1c37
1c2f: 60        clrc
1c30: 84 ca     adc   a,$ca
1c32: 10 09     bpl   $1c3d
1c34: e8 00     mov   a,#$00
1c36: 6f        ret

1c37: 84 ca     adc   a,$ca
1c39: 10 02     bpl   $1c3d
1c3b: e8 7f     mov   a,#$7f
1c3d: 6f        ret

; vcmd e1 - set amplitude articulation
1c3e: 3f 3b 1a  call  $1a3b
1c41: d5 16 03  mov   $0316+x,a
1c44: 2f 9e     bra   $1be4

; vcmd 00-0f - extended melody vectors
1c46: 3f 3b 1a  call  $1a3b
1c49: d5 62 02  mov   $0262+x,a
1c4c: 2f 96     bra   $1be4

; vcmd e2 - set stereo articulation
1c4e: 3f 3b 1a  call  $1a3b
1c51: d5 52 03  mov   $0352+x,a
1c54: 2f 8e     bra   $1be4

; vcmd e4 - set pitch articulation
1c56: 3f 3b 1a  call  $1a3b
1c59: d5 2a 03  mov   $032a+x,a
1c5c: 2f f6     bra   $1c54

; vcmd e3 - set tone articulation
1c5e: 3f 3b 1a  call  $1a3b
1c61: d5 3e 03  mov   $033e+x,a
1c64: 2f ee     bra   $1c54

; vcmd e7 - reset track
1c66: 3f 25 1d  call  $1d25
1c69: 2f e9     bra   $1c54

; vcmd f7 - set detune
1c6b: 3f 3b 1a  call  $1a3b
1c6e: d5 63 06  mov   $0663+x,a
1c71: 3f 3b 1a  call  $1a3b
1c74: d5 77 06  mov   $0677+x,a
1c77: 2f db     bra   $1c54

; vcmd table (e0-ff)
1c79: dw $1bf6		; e0 - set hardware detune
1c7b: dw $1c3e		; e1 - set amplitude articulation
1c7d: dw $1c4e		; e2 - set stereo articulation
1c7f: dw $1c5e		; e3 - set tone articulation
1c81: dw $1c56		; e4 - set pitch articulation
1c83: dw $1a67		; e5 - set channel allocation
1c85: dw $1a5b		; e6 - set standard allocation
1c87: dw $1c66		; e7 - reset track
1c89: dw $0000		; e8 - redirect track (disabled)
1c8b: dw $1a54		; e9 - set effects mask
1c8d: dw $1bdc		; ea - set release
1c8f: dw $1772		; eb - set pitch bend state
1c91: dw $176f		; ec - set pitch bend state and release
1c93: dw $1c0e		; ed - set velocity
1c95: dw $1cbb		; ee - extended command
1c97: dw $18d6		; ef - play absolute note
1c99: dw $1a7b		; f0 - end of sequence
1c9b: dw $1a88		; f1 - delta expression
1c9d: dw $1ab4		; f2 - absolute expression
1c9f: dw $1c04		; f3 - set priority
1ca1: dw $1c1a		; f4 - set tied note
1ca3: dw $1ada		; f5 - set sound (instrument)
1ca5: dw $1b15		; f6 - play phrase
1ca7: dw $1c6b		; f7 - set detune
1ca9: dw $1ace		; f8 - set time (delay) - 32
1cab: dw $1be1		; f9 - go to loop
1cad: dw $1be7		; fa - set tempo
1caf: dw $1bee		; fb - set panning
1cb1: dw $1c16		; fc - set no retrigger
1cb3: dw $1aca		; fd - set time (delay) - 64
1cb5: dw $1ad2		; fe - set time (delay) - 128
1cb7: dw $1ad6		; ff - set time (delay) - 256
1cb9: dw $1c46		; 00-0f - extended melody vectors

1cbb: 3f 3b 1a  call  $1a3b
1cbe: dd        mov   a,y
1cbf: 1c        asl   a
1cc0: fd        mov   y,a
1cc1: f6 b9 1c  mov   a,$1cb9+y
1cc4: c5 d0 1c  mov   $1cd0,a
1cc7: f6 ba 1c  mov   a,$1cba+y
1cca: c5 d1 1c  mov   $1cd1,a
1ccd: eb 3b     mov   y,$3b
1ccf: 5f cf 1c  jmp   $1ccf

1cd2: 2d        push  a
1cd3: 3f 22 0d  call  $0d22
1cd6: ae        pop   a
1cd7: 92 07     clr4  $07
1cd9: 8d 1a     mov   y,#$1a
1cdb: 3f 2c 10  call  $102c
1cde: da 8a     movw  $8a,ya
1ce0: 8d 00     mov   y,#$00
1ce2: f7 8a     mov   a,($8a)+y
1ce4: c4 85     mov   $85,a
1ce6: c4 86     mov   $86,a
1ce8: f0 1b     beq   $1d05
1cea: cb 88     mov   $88,y
1cec: 3f 06 1d  call  $1d06
1cef: ab 88     inc   $88
1cf1: e8 00     mov   a,#$00
1cf3: d3 08 02  bbc6  $08,$1cf8
1cf6: e8 01     mov   a,#$01
1cf8: f8 88     mov   x,$88
1cfa: 35 7a 03  and   a,$037a+x
1cfd: d5 7a 03  mov   $037a+x,a
1d00: 69 85 88  cmp   ($88),($85)
1d03: d0 e7     bne   $1cec
1d05: 6f        ret

1d06: e4 88     mov   a,$88
1d08: 5d        mov   x,a
1d09: 1c        asl   a
1d0a: bc        inc   a
1d0b: fd        mov   y,a
1d0c: f7 8a     mov   a,($8a)+y
1d0e: d4 8c     mov   $8c+x,a
1d10: fc        inc   y
1d11: f7 8a     mov   a,($8a)+y
1d13: d4 a0     mov   $a0+x,a
1d15: e8 ff     mov   a,#$ff
1d17: c4 cc     mov   $cc,a
1d19: c4 0b     mov   $0b,a
1d1b: e8 05     mov   a,#$05
1d1d: d5 4e 02  mov   $024e+x,a
1d20: e8 04     mov   a,#$04
1d22: d5 66 03  mov   $0366+x,a
1d25: 72 07     clr3  $07
1d27: f2 07     clr7  $07
1d29: f8 88     mov   x,$88
1d2b: e8 08     mov   a,#$08
1d2d: d5 eb 05  mov   $05eb+x,a
1d30: 7d        mov   a,x
1d31: d5 ff 05  mov   $05ff+x,a
1d34: e8 00     mov   a,#$00
1d36: d5 76 02  mov   $0276+x,a
1d39: d5 c6 02  mov   $02c6+x,a
1d3c: d5 da 02  mov   $02da+x,a
1d3f: d5 3b 06  mov   $063b+x,a
1d42: d5 4f 06  mov   $064f+x,a
1d45: d5 63 06  mov   $0663+x,a
1d48: d5 77 06  mov   $0677+x,a
1d4b: d5 ee 02  mov   $02ee+x,a
1d4e: d5 02 03  mov   $0302+x,a
1d51: d5 16 03  mov   $0316+x,a
1d54: d5 62 02  mov   $0262+x,a
1d57: d5 52 03  mov   $0352+x,a
1d5a: d5 3e 03  mov   $033e+x,a
1d5d: d5 2a 03  mov   $032a+x,a
1d60: d5 9e 02  mov   $029e+x,a
1d63: 9c        dec   a
1d64: d5 27 06  mov   $0627+x,a
1d67: d5 8a 02  mov   $028a+x,a
1d6a: e8 40     mov   a,#$40
1d6c: d5 b2 02  mov   $02b2+x,a
1d6f: e8 7f     mov   a,#$7f
1d71: d5 c3 05  mov   $05c3+x,a
1d74: c2 07     set6  $07
1d76: 8f 6c 00  mov   $00,#$6c
1d79: 8f 00 01  mov   $01,#$00
1d7c: 7d        mov   a,x
1d7d: 08 80     or    a,#$80
1d7f: 8d 00     mov   y,#$00
1d81: 5f c2 1d  jmp   $1dc2

1d84: c4 5b     mov   $5b,a
1d86: 6f        ret

1d87: c4 5c     mov   $5c,a
1d89: 6f        ret

1d8a: da 5d     movw  $5d,ya
1d8c: 6f        ret

1d8d: da 2f     movw  $2f,ya
1d8f: 6f        ret

1d90: c4 fb     mov   $fb,a
1d92: 6f        ret

1d93: 28 7f     and   a,#$7f
1d95: c5 3e 02  mov   $023e,a
1d98: 6f        ret

1d99: 12 08     clr0  $08
1d9b: c5 06 01  mov   $0106,a
1d9e: 68 ff     cmp   a,#$ff
1da0: f0 02     beq   $1da4
1da2: 02 08     set0  $08
1da4: 6f        ret

1da5: c5 3f 02  mov   $023f,a
1da8: 6f        ret

1da9: c5 40 02  mov   $0240,a
1dac: 6f        ret

1dad: c5 41 02  mov   $0241,a
1db0: cc 42 02  mov   $0242,y
1db3: 6f        ret

1db4: 8f 9a 00  mov   $00,#$9a
1db7: 8f 03 01  mov   $01,#$03
1dba: 2f 06     bra   $1dc2
1dbc: 8f 92 00  mov   $00,#$92
1dbf: 8f 03 01  mov   $01,#$03
1dc2: c4 3b     mov   $3b,a
1dc4: dd        mov   a,y
1dc5: 5d        mov   x,a
1dc6: e8 07     mov   a,#$07
1dc8: fd        mov   y,a
1dc9: f6 d0 00  mov   a,$00d0+y
1dcc: 2e 3b 03  cbne  $3b,$1dd2
1dcf: 7d        mov   a,x
1dd0: d7 00     mov   ($00)+y,a
1dd2: dc        dec   y
1dd3: 10 f4     bpl   $1dc9
1dd5: 6f        ret

1dd6: 28 7f     and   a,#$7f
1dd8: c4 3b     mov   $3b,a
1dda: cd 07     mov   x,#$07
1ddc: f4 d0     mov   a,$d0+x
1dde: 2e 3b 08  cbne  $3b,$1de9
1de1: f5 46 02  mov   a,$0246+x
1de4: 08 03     or    a,#$03
1de6: d5 46 02  mov   $0246+x,a
1de9: 1d        dec   x
1dea: 10 f0     bpl   $1ddc
1dec: 6f        ret

1ded: 8f d8 00  mov   $00,#$d8
1df0: 8f 00 01  mov   $01,#$00
1df3: c4 3b     mov   $3b,a
1df5: e8 0f     mov   a,#$0f
1df7: fd        mov   y,a
1df8: e8 07     mov   a,#$07
1dfa: 5d        mov   x,a
1dfb: f4 d0     mov   a,$d0+x
1dfd: 2e 3b 0a  cbne  $3b,$1e0a
1e00: e4 30     mov   a,$30
1e02: d7 00     mov   ($00)+y,a
1e04: dc        dec   y
1e05: e4 2f     mov   a,$2f
1e07: d7 00     mov   ($00)+y,a
1e09: fc        inc   y
1e0a: dc        dec   y
1e0b: dc        dec   y
1e0c: 1d        dec   x
1e0d: 10 ec     bpl   $1dfb
1e0f: 6f        ret

1e10: 5d        mov   x,a
1e11: e8 01     mov   a,#$01
1e13: 15 7a 03  or    a,$037a+x
1e16: d5 7a 03  mov   $037a+x,a
1e19: 6f        ret

1e1a: 5d        mov   x,a
1e1b: e8 fe     mov   a,#$fe
1e1d: 35 7a 03  and   a,$037a+x
1e20: 2f f4     bra   $1e16

1e22: dw $2e,$03,$03,$d2,$08,$6f,$c2,$08,$6f,$eb,$09,$c4,$09,$dd,$f3,$08,$05,$8d,$00,$3f,$24,$0d,$e2,$08,$6f,$31,$17,$61,$17,$6b,$18,$00,$18,$59,$17,$b4,$0c,$e8,$0c,$ed,$0c,$d9,$0c,$d6,$1d,$00,$00,$8c,$07,$73,$0d,$c7,$0c,$c1,$0c,$bd,$0c,$2b,$1e,$22,$0d,$24,$0d,$00,$00,$00,$00,$00,$00,$78,$0d,$e5,$0c,$84,$1d,$90,$1d,$8a,$1d,$87,$1d,$ad,$1d,$93,$1d,$a5,$1d,$bc,$1d,$8d,$1d,$ed,$1d,$a9,$1d,$b4,$1d,$99,$1d,$10,$1e,$1a,$1e,$22,$1e,$88,$07,$3b,$20

; uncompiled source code
1e8f: db $41,$20,$68,$61,$73,$20,$74,$72,$61,$63,$6b,$20,$6e,$75,$6d,$62,$65,$72,$20,$2d,$20,$4e,$4f,$20,$65,$72,$72,$6f,$72,$20,$63,$68,$65,$63,$6b,$69,$6e,$67,$20,$69,$73,$20,$64,$6f,$6e,$65,$0d,$0a,$0d,$0a,$44,$6f,$4d,$75,$74,$65,$54,$72,$61,$63,$6b,$0d,$0a,$20,$20,$20,$20,$6d,$6f