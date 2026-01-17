0700: 20        clrp
0701: cd ff     mov   x,#$ff		; set stack pointer
0703: bd        mov   sp,x
0704: 8f a0 fa  mov   $fa,#$a0		; stop all timers
0707: 8f a0 fb  mov   $fb,#$a0
070a: 8f 20 fc  mov   $fc,#$20
070d: 8f 87 f1  mov   $f1,#$87		; clear COM ports
0710: 3f 9f 10  call  $109f		; initialize all sound
0713: 8f 00 24  mov   $24,#$00
0716: 8f 1f 25  mov   $25,#$1f		; install permanent pointer to the wave source dir
0719: 8f 01 f6  mov   $f6,#$01
071c: 62 08     set3  $08
071e: 3f f3 0b  call  $0bf3
0721: 3f 63 0b  call  $0b63
0724: 33 07 f7  bbc1  $07,$071e
0727: 8d 10     mov   y,#$10
0729: 3f 4a 07  call  $074a
072c: 83 07 12  bbs4  $07,$0741
072f: e4 fe     mov   a,$fe
0731: f0 0e     beq   $0741
0733: e4 cd     mov   a,$cd
0735: f0 07     beq   $073e
0737: 60        clrc
0738: 84 ce     adc   a,$ce
073a: c4 ce     mov   $ce,a
073c: 90 03     bcc   $0741
073e: 3f f0 16  call  $16f0
0741: e4 fd     mov   a,$fd
0743: f0 d9     beq   $071e
0745: 3f 30 08  call  $0830
0748: 2f d4     bra   $071e
074a: e4 ff     mov   a,$ff
074c: d0 03     bne   $0751
074e: e8 01     mov   a,#$01
0750: 6f        ret

0751: cb 3b     mov   $3b,y
0753: 8f 00 3a  mov   $3a,#$00
0756: cd 14     mov   x,#$14
0758: e4 f6     mov   a,$f6
075a: f0 03     beq   $075f
075c: 3f f3 0b  call  $0bf3
075f: eb 3b     mov   y,$3b
0761: f5 ff 07  mov   a,$07ff+x
0764: c4 f2     mov   $f2,a
0766: f5 28 02  mov   a,$0228+x
0769: fa f3 3c  mov   ($3c),($f3)
076c: 64 3c     cmp   a,$3c
076e: f0 0f     beq   $077f
0770: b0 09     bcs   $077b
0772: 8b 3c     dec   $3c
0774: dc        dec   y
0775: d0 f5     bne   $076c
0777: ab 3a     inc   $3a
0779: 2f 04     bra   $077f
077b: ab 3c     inc   $3c
077d: 2f f5     bra   $0774
077f: fa 3c f3  mov   ($f3),($3c)
0782: 1d        dec   x
0783: 10 d3     bpl   $0758
0785: e4 3a     mov   a,$3a
0787: 6f        ret

0788: e2 08     set7  $08
078a: 2f 02     bra   $078e
078c: f2 08     clr7  $08
078e: 72 08     clr3  $08
0790: 8d 80     mov   y,#$80
0792: 3f 52 0d  call  $0d52
0795: 3f ed 10  call  $10ed
0798: 8f 6c f2  mov   $f2,#$6c
079b: 8f 3f f3  mov   $f3,#$3f
079e: e3 08 0f  bbs7  $08,$07b0
07a1: cd 00     mov   x,#$00
07a3: f5 80 fe  mov   a,$fe80+x
07a6: af        mov   (x)+,a
07a7: c8 61     cmp   x,#$61
07a9: 90 f8     bcc   $07a3
07ab: 5f 00 00  jmp   $0000

07ae: 4f c0     pcall $c0
07b0: 5f 00 07  jmp   $0700

; gain tables
07b3: db $ff,$d6,$a0,$80,$6b,$50,$40,$36,$28,$20,$1b,$14,$10,$0e,$0b,$08,$06,$05,$04,$03,$02,$01
07c9: db $1d,$1c,$1b,$1a,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0f,$0e,$0d,$0c,$0a,$09,$06,$00

; DSP registers: VxENVX
07df: db $08,$18,$28,$38,$48,$58,$68,$78
; DSP registers: VxGAIN
07e7: db $07,$17,$27,$37,$47,$57,$67,$77
; DSP registers: VxSCRN (select sample)
07ef: db $04,$14,$24,$34,$44,$54,$64,$74
; DSP registers: VxPITCHL
07f7: db $02,$12,$22,$32,$42,$52,$62,$72
; DSP registers: VxVOLL
07ff: db $00,$10,$20,$30,$40,$50,$60,$70,$01,$11,$21,$31,$41,$51,$61,$71,$2c,$3c,$0d,$0c,$1c

; voice numbers and bits for clearing those void bits
0814: db $01,$02,$04,$08,$10,$20,$40,$80,$fe,$fd,$fb,$f7,$ef,$df,$bf,$7f

; echo poke registers
0824: db $7d,$2c,$3c,$0d,$0f,$1f,$2f,$3f,$4f,$5f,$6f,$7f

0830: 3f f3 0b  call  $0bf3		; que command
0833: 8f 00 49  mov   $49,#$00		; reset sample flags
0836: 8f 00 5b  mov   $5b,#$00
0839: 8f 7c f2  mov   $f2,#$7c
083c: e4 f3     mov   a,$f3
083e: 24 5e     and   a,$5e
0840: c4 58     mov   $58,a
0842: 8f 00 f3  mov   $f3,#$00
0845: cd 07     mov   x,#$07		; find out all channels changing waves
0847: 3f f3 0b  call  $0bf3		; (to restart them, starting with 7)
084a: d8 28     mov   $28,x
084c: 7d        mov   a,x
084d: 60        clrc
084e: 88 10     adc   a,#$10
0850: c4 2d     mov   $2d,a
0852: f5 14 08  mov   a,$0814+x
0855: c4 4a     mov   $4a,a
0857: 48 ff     eor   a,#$ff
0859: c4 4b     mov   $4b,a
085b: f4 67     mov   a,$67+x
085d: c4 4d     mov   $4d,a
085f: a2 08     set5  $08
0861: 23 4d 06  bbs1  $4d,$086a
0864: f5 ec fc  mov   a,$fcec+x
0867: 5f 78 08  jmp   $0878

086a: eb 2d     mov   y,$2d
086c: f6 e3 04  mov   a,$04e3+y
086f: d0 02     bne   $0873
0871: b2 08     clr5  $08
0873: 3f 7c 12  call  $127c
0876: f8 28     mov   x,$28
0878: 75 f4 fc  cmp   a,$fcf4+x
087b: d0 0d     bne   $088a
087d: 3f 3a 14  call  $143a
0880: e4 63     mov   a,$63
0882: 24 5c     and   a,$5c
0884: 24 4a     and   a,$4a
0886: d0 43     bne   $08cb
0888: 2f 44     bra   $08ce
088a: d5 f4 fc  mov   $fcf4+x,a
088d: 09 4a 49  or    ($49),($4a)
0890: 3f 3a 14  call  $143a
0893: 7d        mov   a,x
0894: 1c        asl   a
0895: 5d        mov   x,a
0896: e5 04 01  mov   a,$0104
0899: d5 4b 01  mov   $014b+x,a
089c: e5 05 01  mov   a,$0105
089f: d5 4c 01  mov   $014c+x,a
08a2: f8 28     mov   x,$28
08a4: e4 64     mov   a,$64
08a6: 28 20     and   a,#$20
08a8: f0 05     beq   $08af
08aa: 29 4b 59  and   ($59),($4b)
08ad: 2f 03     bra   $08b2
08af: 09 4a 59  or    ($59),($4a)
08b2: b3 08 0b  bbc5  $08,$08c0
08b5: e4 64     mov   a,$64
08b7: 28 40     and   a,#$40
08b9: f0 05     beq   $08c0
08bb: 09 4a 63  or    ($63),($4a)
08be: 2f 03     bra   $08c3
08c0: 29 4b 63  and   ($63),($4b)
08c3: e4 63     mov   a,$63
08c5: 04 5c     or    a,$5c
08c7: 24 4a     and   a,$4a
08c9: f0 03     beq   $08ce
08cb: 09 4a 5b  or    ($5b),($4a)
08ce: 1d        dec   x
08cf: 30 03     bmi   $08d4
08d1: 5f 47 08  jmp   $0847

08d4: e4 5c     mov   a,$5c
08d6: 24 59     and   a,$59
08d8: 04 5a     or    a,$5a
08da: c4 5a     mov   $5a,a
08dc: 24 5a     and   a,$5a
08de: 04 5b     or    a,$5b
08e0: c4 5d     mov   $5d,a
08e2: 8f 5c f2  mov   $f2,#$5c
08e5: c4 f3     mov   $f3,a
08e7: cd 07     mov   x,#$07
08e9: 3f f3 0b  call  $0bf3
08ec: d8 28     mov   $28,x
08ee: f5 14 08  mov   a,$0814+x
08f1: c4 4a     mov   $4a,a
08f3: 7d        mov   a,x
08f4: 60        clrc
08f5: 88 18     adc   a,#$18
08f7: c4 2d     mov   $2d,a
08f9: e5 a2 03  mov   a,$03a2
08fc: d0 12     bne   $0910
08fe: f4 67     mov   a,$67+x
0900: c4 4d     mov   $4d,a
0902: 63 4d 06  bbs3  $4d,$090b
0905: f5 e4 fc  mov   a,$fce4+x
0908: 5f 10 09  jmp   $0910

090b: 3f 7c 12  call  $127c
090e: f8 28     mov   x,$28
0910: 60        clrc
0911: 95 9a 03  adc   a,$039a+x
0914: 30 06     bmi   $091c
0916: 70 04     bvs   $091c
0918: 68 65     cmp   a,#$65
091a: 30 0b     bmi   $0927
091c: f5 9a 03  mov   a,$039a+x
091f: 30 04     bmi   $0925
0921: e8 64     mov   a,#$64
0923: 2f 02     bra   $0927
0925: e8 00     mov   a,#$00
0927: fd        mov   y,a
0928: f5 43 01  mov   a,$0143+x
092b: c4 3c     mov   $3c,a
092d: cf        mul   ya
092e: cd 64     mov   x,#$64
0930: 9e        div   ya,x
0931: f8 28     mov   x,$28
0933: 73 4d 14  bbc3  $4d,$094a
0936: c4 3a     mov   $3a,a
0938: 6d        push  y
0939: eb 2d     mov   y,$2d
093b: f6 c3 03  mov   a,$03c3+y
093e: ee        pop   y
093f: d0 04     bne   $0945
0941: e4 3a     mov   a,$3a
0943: 2f 05     bra   $094a
0945: e4 3c     mov   a,$3c
0947: 80        setc
0948: a4 3a     sbc   a,$3a
094a: c4 3a     mov   $3a,a
094c: d5 28 02  mov   $0228+x,a
094f: e4 3c     mov   a,$3c
0951: 80        setc
0952: a4 3a     sbc   a,$3a
0954: d5 30 02  mov   $0230+x,a
0957: 1d        dec   x
0958: 30 03     bmi   $095d
095a: 5f e9 08  jmp   $08e9

095d: cd 07     mov   x,#$07		; process pitch envelopes (start with ch 7)
095f: 3f f3 0b  call  $0bf3
0962: d8 28     mov   $28,x
0964: 7d        mov   a,x
0965: 60        clrc
0966: 88 08     adc   a,#$08
0968: c4 2d     mov   $2d,a
096a: f4 67     mov   a,$67+x
096c: c4 4d     mov   $4d,a
096e: 7d        mov   a,x
096f: 1c        asl   a
0970: 5d        mov   x,a
0971: f5 d5 fc  mov   a,$fcd5+x
0974: c4 48     mov   $48,a
0976: f5 d4 fc  mov   a,$fcd4+x
0979: c4 47     mov   $47,a
097b: 53 4d 15  bbc2  $4d,$0993
097e: 4d        push  x
097f: 42 08     set2  $08
0981: 3f 7c 12  call  $127c
0984: 52 08     clr2  $08
0986: ce        pop   x
0987: 7a 47     addw  ya,$47
0989: 80        setc
098a: a8 b0     sbc   a,#$b0
098c: c4 47     mov   $47,a
098e: dd        mov   a,y
098f: a8 04     sbc   a,#$04
0991: c4 48     mov   $48,a
0993: f5 4c 01  mov   a,$014c+x
0996: fd        mov   y,a
0997: f5 4b 01  mov   a,$014b+x
099a: 7a 47     addw  ya,$47
099c: da 3a     movw  $3a,ya
099e: fb db     mov   y,$db+x
09a0: f4 da     mov   a,$da+x
09a2: 7a 3a     addw  ya,$3a
09a4: c3 4d 03  bbs6  $4d,$09aa
09a7: 3f bc 14  call  $14bc		; translate note to frequency
09aa: da 3a     movw  $3a,ya		; add in hardware tuning
09ac: e4 28     mov   a,$28		; word addressing
09ae: 1c        asl   a
09af: 5d        mov   x,a
09b0: f5 5c 01  mov   a,$015c+x
09b3: fd        mov   y,a
09b4: f5 5b 01  mov   a,$015b+x
09b7: 7a 3a     addw  ya,$3a
09b9: f8 28     mov   x,$28
09bb: d5 33 01  mov   $0133+x,a
09be: dd        mov   a,y
09bf: d5 3b 01  mov   $013b+x,a
09c2: 1d        dec   x
09c3: 10 9a     bpl   $095f
09c5: 8f 5c f2  mov   $f2,#$5c
09c8: 8f 00 f3  mov   $f3,#$00
09cb: cd 07     mov   x,#$07
09cd: 3f f3 0b  call  $0bf3
09d0: d8 28     mov   $28,x
09d2: 7d        mov   a,x
09d3: 60        clrc
09d4: 88 00     adc   a,#$00
09d6: c4 2d     mov   $2d,a
09d8: f5 14 08  mov   a,$0814+x
09db: c4 4a     mov   $4a,a
09dd: 48 ff     eor   a,#$ff
09df: c4 4b     mov   $4b,a
09e1: f4 67     mov   a,$67+x
09e3: c4 4d     mov   $4d,a
09e5: 03 4d 07  bbs0  $4d,$09ef
09e8: f5 23 01  mov   a,$0123+x
09eb: fd        mov   y,a
09ec: 5f fc 09  jmp   $09fc

09ef: 3f 7c 12  call  $127c
09f2: fd        mov   y,a
09f3: f8 28     mov   x,$28
09f5: b3 07 04  bbc5  $07,$09fc
09f8: e8 00     mov   a,#$00
09fa: d4 6f     mov   $6f+x,a
09fc: e8 80     mov   a,#$80
09fe: de 6f 04  cbne  $6f+x,$0a05
0a01: e4 60     mov   a,$60
0a03: 2f 02     bra   $0a07
0a05: e4 5f     mov   a,$5f
0a07: cf        mul   ya
0a08: f5 92 03  mov   a,$0392+x
0a0b: cf        mul   ya
0a0c: dd        mov   a,y
0a0d: d5 2b 01  mov   $012b+x,a
0a10: 8f c0 39  mov   $39,#$c0
0a13: f5 df 07  mov   a,$07df+x
0a16: c4 f2     mov   $f2,a
0a18: dd        mov   a,y
0a19: 80        setc
0a1a: a4 f3     sbc   a,$f3
0a1c: b0 06     bcs   $0a24
0a1e: 8f 80 39  mov   $39,#$80
0a21: 48 ff     eor   a,#$ff
0a23: bc        inc   a
0a24: c4 3e     mov   $3e,a
0a26: e4 4a     mov   a,$4a
0a28: 24 57     and   a,$57
0a2a: d0 06     bne   $0a32
0a2c: e4 56     mov   a,$56
0a2e: 24 4a     and   a,$4a
0a30: d0 23     bne   $0a55
0a32: e4 3e     mov   a,$3e
0a34: 5c        lsr   a
0a35: d0 08     bne   $0a3f
0a37: ad 00     cmp   y,#$00
0a39: d0 04     bne   $0a3f
0a3b: e8 82     mov   a,#$82
0a3d: 2f 0e     bra   $0a4d
0a3f: 8d 15     mov   y,#$15
0a41: 76 b3 07  cmp   a,$07b3+y
0a44: 90 02     bcc   $0a48
0a46: fe f9     dbnz  y,$0a41
0a48: f6 c9 07  mov   a,$07c9+y
0a4b: 04 39     or    a,$39
0a4d: 75 cc fc  cmp   a,$fccc+x
0a50: f0 41     beq   $0a93
0a52: fd        mov   y,a
0a53: 2f 17     bra   $0a6c
0a55: 8f 00 39  mov   $39,#$00
0a58: e4 3e     mov   a,$3e
0a5a: 68 60     cmp   a,#$60
0a5c: 90 0e     bcc   $0a6c
0a5e: ad 60     cmp   y,#$60
0a60: 90 04     bcc   $0a66
0a62: 8d df     mov   y,#$df
0a64: 2f 06     bra   $0a6c
0a66: ad 20     cmp   y,#$20
0a68: b0 02     bcs   $0a6c
0a6a: 8d 9e     mov   y,#$9e
0a6c: 29 4b 56  and   ($56),($4b)
0a6f: f5 ff 07  mov   a,$07ff+x
0a72: c4 f2     mov   $f2,a
0a74: f5 28 02  mov   a,$0228+x
0a77: 2d        push  a
0a78: e4 4a     mov   a,$4a
0a7a: 24 57     and   a,$57
0a7c: ae        pop   a
0a7d: d0 09     bne   $0a88
0a7f: c4 f3     mov   $f3,a
0a81: ab f2     inc   $f2
0a83: f5 30 02  mov   a,$0230+x
0a86: c4 f3     mov   $f3,a
0a88: f5 e7 07  mov   a,$07e7+x
0a8b: c4 f2     mov   $f2,a
0a8d: cb f3     mov   $f3,y
0a8f: dd        mov   a,y
0a90: d5 cc fc  mov   $fccc+x,a
0a93: f5 f7 07  mov   a,$07f7+x
0a96: c4 f2     mov   $f2,a
0a98: fd        mov   y,a
0a99: f5 33 01  mov   a,$0133+x
0a9c: c4 f3     mov   $f3,a
0a9e: fc        inc   y
0a9f: cb f2     mov   $f2,y
0aa1: f5 3b 01  mov   a,$013b+x
0aa4: c4 f3     mov   $f3,a
0aa6: 1d        dec   x
0aa7: 30 03     bmi   $0aac
0aa9: 5f cd 09  jmp   $09cd

0aac: 8f 4c f2  mov   $f2,#$4c
0aaf: fa 5d f3  mov   ($f3),($5d)
0ab2: e4 5d     mov   a,$5d
0ab4: 48 ff     eor   a,#$ff
0ab6: c4 5e     mov   $5e,a
0ab8: 29 5e 58  and   ($58),($5e)
0abb: 29 5e 5a  and   ($5a),($5e)
0abe: 8f 00 5c  mov   $5c,#$00
0ac1: 3f f3 0b  call  $0bf3
0ac4: 8d 07     mov   y,#$07
0ac6: cd 0e     mov   x,#$0e
0ac8: 3f f3 0b  call  $0bf3
0acb: f6 6f 00  mov   a,$006f+y
0ace: f0 31     beq   $0b01
0ad0: f6 67 00  mov   a,$0067+y
0ad3: c4 4d     mov   $4d,a
0ad5: f3 4d 07  bbc7  $4d,$0adf
0ad8: f6 14 08  mov   a,$0814+y
0adb: 24 58     and   a,$58
0add: d0 1d     bne   $0afc
0adf: f6 6f 00  mov   a,$006f+y
0ae2: 68 80     cmp   a,#$80
0ae4: d0 1b     bne   $0b01
0ae6: f6 46 02  mov   a,$0246+y
0ae9: 28 02     and   a,#$02
0aeb: d0 14     bne   $0b01
0aed: 9b 78     dec   $78+x
0aef: f4 78     mov   a,$78+x
0af1: 2e 05 02  cbne  $05,$0af6
0af4: 9b 79     dec   $79+x
0af6: f4 78     mov   a,$78+x
0af8: 14 79     or    a,$79+x
0afa: d0 05     bne   $0b01
0afc: e8 00     mov   a,#$00
0afe: d6 6f 00  mov   $006f+y,a
0b01: 1d        dec   x
0b02: 1d        dec   x
0b03: dc        dec   y
0b04: 10 c2     bpl   $0ac8
0b06: 3f f3 0b  call  $0bf3
0b09: ec 43 02  mov   y,$0243
0b0c: f0 54     beq   $0b62
0b0e: 6e cf 51  dbnz  $cf,$0b62
0b11: cb cf     mov   $cf,y
0b13: e5 3b 02  mov   a,$023b
0b16: f8 d0     mov   x,$d0
0b18: 30 0d     bmi   $0b27
0b1a: 60        clrc
0b1b: 84 d1     adc   a,$d1
0b1d: b0 04     bcs   $0b23
0b1f: 68 7f     cmp   a,#$7f
0b21: 90 12     bcc   $0b35
0b23: e8 7f     mov   a,#$7f
0b25: 2f 09     bra   $0b30
0b27: 80        setc
0b28: a4 d1     sbc   a,$d1
0b2a: f0 04     beq   $0b30
0b2c: b0 07     bcs   $0b35
0b2e: e8 00     mov   a,#$00
0b30: 8d 00     mov   y,#$00
0b32: cc 43 02  mov   $0243,y
0b35: 5d        mov   x,a
0b36: 65 44 02  cmp   a,$0244
0b39: 90 03     bcc   $0b3e
0b3b: e5 44 02  mov   a,$0244
0b3e: c5 38 02  mov   $0238,a
0b41: 7d        mov   a,x
0b42: c5 3b 02  mov   $023b,a
0b45: c5 3c 02  mov   $023c,a
0b48: 65 45 02  cmp   a,$0245
0b4b: 90 03     bcc   $0b50
0b4d: e5 45 02  mov   a,$0245
0b50: c5 39 02  mov   $0239,a
0b53: e5 43 02  mov   a,$0243
0b56: d0 0a     bne   $0b62
0b58: aa 07 40  mov1  c,$0007,2
0b5b: 90 05     bcc   $0b62
0b5d: 8d 80     mov   y,#$80
0b5f: 5f 52 0d  jmp   $0d52

0b62: 6f        ret

0b63: 32 08     clr1  $08
0b65: e4 ea     mov   a,$ea
0b67: f0 3a     beq   $0ba3
0b69: 9c        dec   a
0b6a: c4 ea     mov   $ea,a
0b6c: f8 ec     mov   x,$ec
0b6e: f5 87 10  mov   a,$1087+x
0b71: 28 fe     and   a,#$fe
0b73: c4 30     mov   $30,a
0b75: c4 f7     mov   $f7,a
0b77: f5 04 fd  mov   a,$fd04+x
0b7a: c4 31     mov   $31,a
0b7c: c4 f4     mov   $f4,a
0b7e: f5 1c fd  mov   a,$fd1c+x
0b81: c4 f5     mov   $f5,a
0b83: c4 32     mov   $32,a
0b85: 3d        inc   x
0b86: c8 18     cmp   x,#$18
0b88: d0 02     bne   $0b8c
0b8a: cd 00     mov   x,#$00
0b8c: d8 ec     mov   $ec,x
0b8e: e4 30     mov   a,$30
0b90: 5d        mov   x,a
0b91: 28 fe     and   a,#$fe
0b93: c8 4d     cmp   x,#$4d
0b95: b0 0c     bcs   $0ba3
0b97: e4 31     mov   a,$31
0b99: eb 32     mov   y,$32
0b9b: 3f a4 0b  call  $0ba4
0b9e: 3f f3 0b  call  $0bf3
0ba1: 2f c0     bra   $0b63
0ba3: 6f        ret

0ba4: 1f 00 1e  jmp   ($1e00+x)

0ba7: 79        cmp   (x),(y)
0ba8: 0c 40 0c  asl   $0c40
0bab: 40        setp
0bac: 0c 40 0c  asl   $0c40
0baf: 40        setp
0bb0: 0c 3b 0c  asl   $0c3b
0bb3: 8c 07 40  dec   $4007
0bb6: 0c 40 0c  asl   $0c40
0bb9: 40        setp
0bba: 0c 40 0c  asl   $0c40
0bbd: 40        setp
0bbe: 0c 40 0c  asl   $0c40
0bc1: 40        setp
0bc2: 0c 4e 1e  asl   $1e4e
0bc5: 40        setp
0bc6: 0c 8a 0c  asl   $0c8a
0bc9: 40        setp
0bca: 0c 40 0c  asl   $0c40
0bcd: 40        setp
0bce: 0c 40 0c  asl   $0c40
0bd1: 40        setp
0bd2: 0c 40 0c  asl   $0c40
0bd5: 40        setp
0bd6: 0c 40 0c  asl   $0c40
0bd9: 40        setp
0bda: 0c 40 0c  asl   $0c40
0bdd: 40        setp
0bde: 0c 40 0c  asl   $0c40
0be1: 40        setp
0be2: 0c 40 0c  asl   $0c40
0be5: 40        setp
0be6: 0c 40 0c  asl   $0c40
0be9: 40        setp
0bea: 0c 40 0c  asl   $0c40
0bed: 88 07     adc   a,#$07
0bef: 40        setp
0bf0: 0c 58 1e  asl   $1e58
0bf3: 73 08 0c  bbc3  $08,$0c02
0bf6: 2d        push  a
0bf7: 32 09     clr1  $09
0bf9: e4 f6     mov   a,$f6
0bfb: 2e f6 fb  cbne  $f6,$0bf9
0bfe: 2e 03 02  cbne  $03,$0c03
0c01: ae        pop   a
0c02: 6f        ret

0c03: 2e ed 02  cbne  $ed,$0c08
0c06: ae        pop   a
0c07: 6f        ret

0c08: 22 09     set1  $09
0c0a: fa ed ee  mov   ($ee),($ed)
0c0d: c4 ed     mov   $ed,a
0c0f: fa f4 f4  mov   ($f4),($f4)
0c12: fa f5 f5  mov   ($f5),($f5)
0c15: fa f7 f7  mov   ($f7),($f7)
0c18: e4 f7     mov   a,$f7
0c1a: f0 e5     beq   $0c01
0c1c: 6d        push  y
0c1d: 4d        push  x
0c1e: 5d        mov   x,a
0c1f: c4 30     mov   $30,a
0c21: 68 4d     cmp   a,#$4d
0c23: b0 0c     bcs   $0c31
0c25: ba f4     movw  ya,$f4
0c27: da 31     movw  $31,ya
0c29: 69 f6 ed  cmp   ($ed),($f6)
0c2c: d0 03     bne   $0c31
0c2e: 3f 38 0c  call  $0c38
0c31: ce        pop   x
0c32: ee        pop   y
0c33: ae        pop   a
0c34: 23 09 bc  bbs1  $09,$0bf3
0c37: 6f        ret

0c38: 1f a5 0b  jmp   ($0ba5+x)

0c3b: 6f        ret

0c3c: d8 31     mov   $31,x
0c3e: 2f 0b     bra   $0c4b
0c40: 23 08 08  bbs1  $08,$0c4b
0c43: e4 f6     mov   a,$f6
0c45: 8f b7 f1  mov   $f1,#$b7
0c48: c4 f6     mov   $f6,a
0c4a: 7d        mov   a,x
0c4b: 23 08 25  bbs1  $08,$0c73
0c4e: f8 eb     mov   x,$eb
0c50: d5 87 10  mov   $1087+x,a
0c53: e4 31     mov   a,$31
0c55: d5 04 fd  mov   $fd04+x,a
0c58: dd        mov   a,y
0c59: d5 1c fd  mov   $fd1c+x,a
0c5c: 3d        inc   x
0c5d: c8 18     cmp   x,#$18
0c5f: d0 02     bne   $0c63
0c61: cd 00     mov   x,#$00
0c63: d8 eb     mov   $eb,x
0c65: e4 ea     mov   a,$ea
0c67: bc        inc   a
0c68: c4 ea     mov   $ea,a
0c6a: 68 18     cmp   a,#$18
0c6c: d0 0a     bne   $0c78
0c6e: 22 08     set1  $08
0c70: 32 09     clr1  $09
0c72: 6f        ret

0c73: fa ee ed  mov   ($ed),($ee)
0c76: 32 09     clr1  $09
0c78: 6f        ret

0c79: e4 f6     mov   a,$f6
0c7b: 8f b7 f1  mov   $f1,#$b7
0c7e: 2d        push  a
0c7f: 72 08     clr3  $08
0c81: 3f e2 0c  call  $0ce2
0c84: 62 08     set3  $08
0c86: ae        pop   a
0c87: c4 f6     mov   $f6,a
0c89: 6f        ret

0c8a: 8d 00     mov   y,#$00
0c8c: e8 01     mov   a,#$01
0c8e: da 1a     movw  $1a,ya
0c90: e4 f6     mov   a,$f6
0c92: 2e f6 fb  cbne  $f6,$0c90
0c95: 5d        mov   x,a
0c96: ba f4     movw  ya,$f4
0c98: ad 00     cmp   y,#$00
0c9a: f0 3e     beq   $0cda
0c9c: 8f b7 f1  mov   $f1,#$b7
0c9f: d8 f6     mov   $f6,x
0ca1: c5 c5 0c  mov   $0cc5,a
0ca4: cc c6 0c  mov   $0cc6,y
0ca7: 7a 1a     addw  ya,$1a
0ca9: c5 cc 0c  mov   $0ccc,a
0cac: cc cd 0c  mov   $0ccd,y
0caf: 7a 1a     addw  ya,$1a
0cb1: c5 d3 0c  mov   $0cd3,a
0cb4: cc d4 0c  mov   $0cd4,y
0cb7: cd 00     mov   x,#$00
0cb9: e4 f6     mov   a,$f6
0cbb: 2e f6 fb  cbne  $f6,$0cb9
0cbe: d0 02     bne   $0cc2
0cc0: 2f f7     bra   $0cb9
0cc2: e4 f4     mov   a,$f4
0cc4: d5 36 ba  mov   $ba36+x,a
0cc7: ba f5     movw  ya,$f5
0cc9: 30 c5     bmi   $0c90
0ccb: d5 37 ba  mov   $ba37+x,a
0cce: e4 f7     mov   a,$f7
0cd0: cb f6     mov   $f6,y
0cd2: d5 38 ba  mov   $ba38+x,a
0cd5: 3d        inc   x
0cd6: 3d        inc   x
0cd7: 3d        inc   x
0cd8: 2f e8     bra   $0cc2
0cda: 8f b7 f1  mov   $f1,#$b7
0cdd: d8 ed     mov   $ed,x
0cdf: d8 f6     mov   $f6,x
0ce1: 6f        ret

0ce2: 3f 12 11  call  $1112
0ce5: 3f 08 11  call  $1108
0ce8: 22 07     set1  $07
0cea: 6f        ret

0ceb: c5 a2 03  mov   $03a2,a
0cee: 6f        ret

0cef: e8 00     mov   a,#$00
0cf1: c5 43 02  mov   $0243,a
0cf4: 6f        ret

0cf5: cd 01     mov   x,#$01
0cf7: 52 07     clr2  $07
0cf9: 2f 02     bra   $0cfd
0cfb: cd ff     mov   x,#$ff
0cfd: c5 43 02  mov   $0243,a
0d00: c4 cf     mov   $cf,a
0d02: cb d1     mov   $d1,y
0d04: d8 d0     mov   $d0,x
0d06: 6f        ret

0d07: 2d        push  a
0d08: dd        mov   a,y
0d09: 28 7f     and   a,#$7f
0d0b: c5 3e 02  mov   $023e,a
0d0e: ae        pop   a
0d0f: 92 08     clr4  $08
0d11: 2f 05     bra   $0d18
0d13: cc 40 02  mov   $0240,y
0d16: 82 08     set4  $08
0d18: 5f ae 0d  jmp   $0dae

0d1b: 3f 93 1c  call  $1c93
0d1e: e5 fc 1e  mov   a,$1efc
0d21: c5 8b 06  mov   $068b,a
0d24: e5 fd 1e  mov   a,$1efd
0d27: c5 8c 06  mov   $068c,a
0d2a: 05 8b 06  or    a,$068b
0d2d: f0 20     beq   $0d4f
0d2f: 3f f0 16  call  $16f0
0d32: e5 8b 06  mov   a,$068b
0d35: 80        setc
0d36: a8 01     sbc   a,#$01
0d38: c5 8b 06  mov   $068b,a
0d3b: e5 8c 06  mov   a,$068c
0d3e: a8 00     sbc   a,#$00
0d40: c5 8c 06  mov   $068c,a
0d43: b0 ea     bcs   $0d2f
0d45: cd 07     mov   x,#$07
0d47: e8 00     mov   a,#$00
0d49: d5 43 01  mov   $0143+x,a
0d4c: 1d        dec   x
0d4d: 10 fa     bpl   $0d49
0d4f: 6f        ret

0d50: 8d ff     mov   y,#$ff
0d52: cd 07     mov   x,#$07
0d54: ad 80     cmp   y,#$80
0d56: f0 04     beq   $0d5c
0d58: ad ff     cmp   y,#$ff
0d5a: d0 08     bne   $0d64
0d5c: 82 07     set4  $07
0d5e: 8f 00 89  mov   $89,#$00
0d61: 8f ff 0c  mov   $0c,#$ff
0d64: c4 77     mov   $77,a
0d66: ad 80     cmp   y,#$80
0d68: f0 1b     beq   $0d85
0d6a: f4 d2     mov   a,$d2+x
0d6c: 68 ff     cmp   a,#$ff
0d6e: f0 30     beq   $0da0
0d70: 68 00     cmp   a,#$00
0d72: 10 06     bpl   $0d7a
0d74: ad ff     cmp   y,#$ff
0d76: f0 0d     beq   $0d85
0d78: 2f 26     bra   $0da0
0d7a: ad 00     cmp   y,#$00
0d7c: d0 07     bne   $0d85
0d7e: f5 1b 01  mov   a,$011b+x
0d81: 64 77     cmp   a,$77
0d83: d0 1b     bne   $0da0
0d85: f5 e7 07  mov   a,$07e7+x
0d88: c4 f2     mov   $f2,a
0d8a: 8f 9f f3  mov   $f3,#$9f
0d8d: f5 ef 07  mov   a,$07ef+x
0d90: e8 00     mov   a,#$00
0d92: d5 23 01  mov   $0123+x,a
0d95: d4 6f     mov   $6f+x,a
0d97: d4 67     mov   $67+x,a
0d99: f5 14 08  mov   a,$0814+x
0d9c: 04 5c     or    a,$5c
0d9e: c4 5c     mov   $5c,a
0da0: 1d        dec   x
0da1: 10 c3     bpl   $0d66
0da3: 6f        ret

0da4: 52 07     clr2  $07
0da6: 5f fb 0c  jmp   $0cfb

0da9: 42 07     set2  $07
0dab: 5f fb 0c  jmp   $0cfb

0dae: 8d 0e     mov   y,#$0e
0db0: c4 77     mov   $77,a
0db2: 3f 63 10  call  $1063
0db5: da 22     movw  $22,ya
0db7: 8d 00     mov   y,#$00
0db9: f7 22     mov   a,($22)+y
0dbb: c4 52     mov   $52,a
0dbd: 3a 22     incw  $22
0dbf: 8d 07     mov   y,#$07
0dc1: f7 22     mov   a,($22)+y
0dc3: 24 0c     and   a,$0c
0dc5: c4 53     mov   $53,a
0dc7: 8d 06     mov   y,#$06
0dc9: f7 22     mov   a,($22)+y
0dcb: c4 54     mov   $54,a
0dcd: 8f 80 55  mov   $55,#$80
0dd0: cd 07     mov   x,#$07
0dd2: 3f 89 0e  call  $0e89
0dd5: 10 03     bpl   $0dda
0dd7: 5f 5b 0e  jmp   $0e5b

0dda: 83 08 07  bbs4  $08,$0de4
0ddd: e8 02     mov   a,#$02
0ddf: 15 46 02  or    a,$0246+x
0de2: 2f 05     bra   $0de9
0de4: e8 fd     mov   a,#$fd
0de6: 35 46 02  and   a,$0246+x
0de9: d5 46 02  mov   $0246+x,a
0dec: e8 80     mov   a,#$80
0dee: d4 6f     mov   $6f+x,a
0df0: e5 3e 02  mov   a,$023e
0df3: d4 d2     mov   $d2+x,a
0df5: e5 3f 02  mov   a,$023f
0df8: d5 92 03  mov   $0392+x,a
0dfb: e5 40 02  mov   a,$0240
0dfe: d5 9a 03  mov   $039a+x,a
0e01: e5 8e 03  mov   a,$038e
0e04: c4 0f     mov   $0f,a
0e06: e5 90 03  mov   a,$0390
0e09: c4 0e     mov   $0e,a
0e0b: e5 8f 03  mov   a,$038f
0e0e: c4 10     mov   $10,a
0e10: e5 91 03  mov   a,$0391
0e13: c4 11     mov   $11,a
0e15: 7d        mov   a,x
0e16: 1c        asl   a
0e17: fd        mov   y,a
0e18: e8 00     mov   a,#$00
0e1a: d6 5b 01  mov   $015b+y,a
0e1d: d6 5c 01  mov   $015c+y,a
0e20: c5 3d 02  mov   $023d,a
0e23: e5 41 02  mov   a,$0241
0e26: d6 da 00  mov   $00da+y,a
0e29: e5 42 02  mov   a,$0242
0e2c: d6 db 00  mov   $00db+y,a
0e2f: e4 77     mov   a,$77
0e31: d5 1b 01  mov   $011b+x,a
0e34: 8d 02     mov   y,#$02
0e36: f7 22     mov   a,($22)+y
0e38: c4 4e     mov   $4e,a
0e3a: fc        inc   y
0e3b: f7 22     mov   a,($22)+y
0e3d: c4 4f     mov   $4f,a
0e3f: 8d 04     mov   y,#$04
0e41: f7 22     mov   a,($22)+y
0e43: c4 50     mov   $50,a
0e45: fc        inc   y
0e46: f7 22     mov   a,($22)+y
0e48: c4 51     mov   $51,a
0e4a: 8d 01     mov   y,#$01
0e4c: f7 22     mov   a,($22)+y
0e4e: 2d        push  a
0e4f: 8d 00     mov   y,#$00
0e51: f7 22     mov   a,($22)+y
0e53: 02 07     set0  $07
0e55: ee        pop   y
0e56: 72 07     clr3  $07
0e58: 3f 04 0f  call  $0f04
0e5b: 60        clrc
0e5c: 98 08 22  adc   $22,#$08
0e5f: 90 02     bcc   $0e63
0e61: ab 23     inc   $23
0e63: 8b 52     dec   $52
0e65: f0 03     beq   $0e6a
0e67: 5f bf 0d  jmp   $0dbf

0e6a: e8 00     mov   a,#$00
0e6c: c5 3e 02  mov   $023e,a
0e6f: c5 41 02  mov   $0241,a
0e72: c5 42 02  mov   $0242,a
0e75: c5 40 02  mov   $0240,a
0e78: c5 8e 03  mov   $038e,a
0e7b: c5 90 03  mov   $0390,a
0e7e: c5 8f 03  mov   $038f,a
0e81: c5 91 03  mov   $0391,a
0e84: 9c        dec   a
0e85: c5 3f 02  mov   $023f,a
0e88: 6f        ret

0e89: 8f 01 0b  mov   $0b,#$01
0e8c: 03 09 03  bbs0  $09,$0e92
0e8f: 8f 00 0b  mov   $0b,#$00
0e92: 83 0b 5a  bbs4  $0b,$0eef
0e95: 8d 07     mov   y,#$07
0e97: 8f ff 3a  mov   $3a,#$ff
0e9a: 8f ff 3b  mov   $3b,#$ff
0e9d: 73 0b 08  bbc3  $0b,$0ea8
0ea0: c8 08     cmp   x,#$08
0ea2: b0 4b     bcs   $0eef
0ea4: 8d 00     mov   y,#$00
0ea6: 2f 09     bra   $0eb1
0ea8: 3f f3 0b  call  $0bf3
0eab: e4 55     mov   a,$55
0ead: 24 53     and   a,$53
0eaf: f0 1f     beq   $0ed0
0eb1: f4 6f     mov   a,$6f+x
0eb3: f0 41     beq   $0ef6
0eb5: e4 54     mov   a,$54
0eb7: 03 0b 06  bbs0  $0b,$0ec0
0eba: 74 12     cmp   a,$12+x
0ebc: b0 38     bcs   $0ef6
0ebe: 2f 10     bra   $0ed0
0ec0: 74 12     cmp   a,$12+x
0ec2: f0 0c     beq   $0ed0
0ec4: 90 0a     bcc   $0ed0
0ec6: f4 12     mov   a,$12+x
0ec8: 64 3b     cmp   a,$3b
0eca: b0 04     bcs   $0ed0
0ecc: c4 3b     mov   $3b,a
0ece: d8 3a     mov   $3a,x
0ed0: 53 0b 0c  bbc2  $0b,$0edf
0ed3: 0b 55     asl   $55
0ed5: d0 05     bne   $0edc
0ed7: 8f 01 55  mov   $55,#$01
0eda: cd ff     mov   x,#$ff
0edc: 3d        inc   x
0edd: 2f 0a     bra   $0ee9
0edf: 4b 55     lsr   $55
0ee1: d0 05     bne   $0ee8
0ee3: 8f 80 55  mov   $55,#$80
0ee6: cd 08     mov   x,#$08
0ee8: 1d        dec   x
0ee9: dc        dec   y
0eea: 10 bc     bpl   $0ea8
0eec: 03 0b 03  bbs0  $0b,$0ef2
0eef: e8 ff     mov   a,#$ff
0ef1: 6f        ret

0ef2: f8 3a     mov   x,$3a
0ef4: 30 f9     bmi   $0eef
0ef6: 33 0b 04  bbc1  $0b,$0efd
0ef9: f4 6f     mov   a,$6f+x
0efb: d0 f2     bne   $0eef
0efd: e4 54     mov   a,$54
0eff: d4 12     mov   $12+x,a
0f01: e8 00     mov   a,#$00
0f03: 6f        ret

0f04: d8 28     mov   $28,x			; play sound (instrument)
0f06: d8 4c     mov   $4c,x
0f08: 2d        push  a
0f09: f5 46 02  mov   a,$0246+x
0f0c: 28 fe     and   a,#$fe
0f0e: d5 46 02  mov   $0246+x,a
0f11: 63 07 08  bbs3  $07,$0f1c
0f14: f5 e7 07  mov   a,$07e7+x
0f17: c4 f2     mov   $f2,a
0f19: 8f 9f f3  mov   $f3,#$9f
0f1c: dd        mov   a,y
0f1d: d5 43 01  mov   $0143+x,a
0f20: 7d        mov   a,x
0f21: 1c        asl   a
0f22: 5d        mov   x,a
0f23: e4 50     mov   a,$50
0f25: d5 d4 fc  mov   $fcd4+x,a
0f28: e4 51     mov   a,$51
0f2a: d5 d5 fc  mov   $fcd5+x,a
0f2d: e4 4e     mov   a,$4e
0f2f: d4 78     mov   $78+x,a
0f31: e4 4f     mov   a,$4f
0f33: d4 79     mov   $79+x,a
0f35: ae        pop   a
0f36: 8d 02     mov   y,#$02
0f38: 3f 63 10  call  $1063
0f3b: da 20     movw  $20,ya			;get current voice and instrument
0f3d: f8 4c     mov   x,$4c
0f3f: f5 14 08  mov   a,$0814+x			;get channel bit mask ID
0f42: c4 65     mov   $65,a
0f44: 48 ff     eor   a,#$ff			;and store inversion
0f46: c4 66     mov   $66,a
0f48: e4 57     mov   a,$57			;get mode flags
0f4a: 63 07 05  bbs3  $07,$0f52
0f4d: 35 1c 08  and   a,$081c+x
0f50: 2f 03     bra   $0f55
0f52: 15 14 08  or    a,$0814+x
0f55: c4 57     mov   $57,a
0f57: 8d 00     mov   y,#$00
0f59: f7 20     mov   a,($20)+y
0f5b: d4 67     mov   $67+x,a
0f5d: c4 4d     mov   $4d,a
0f5f: 8f 2d f2  mov   $f2,#$2d
0f62: 28 20     and   a,#$20			; is pitch modulation enabled? ($20 = pm)
0f64: f0 05     beq   $0f6b			; if not...
0f66: 09 65 f3  or    ($f3),($65)		; turn pitch mod on
0f69: 2f 03     bra   $0f6e
0f6b: 29 66 f3  and   ($f3),($66)		; turn pitch mod off
0f6e: 63 07 50  bbs3  $07,$0fc1			; slur handler
0f71: b0 4e     bcs   $0fc1
0f73: 93 4d 45  bbc4  $4d,$0fbb
0f76: 13 08 05  bbc0  $08,$0f7e
0f79: e5 06 01  mov   a,$0106
0f7c: 2f 04     bra   $0f82
0f7e: 8d 05     mov   y,#$05			; default echo
0f80: f7 20     mov   a,($20)+y
0f82: 8d 0c     mov   y,#$0c			; look for echo
0f84: 3f 63 10  call  $1063
0f87: 8d 00     mov   y,#$00
0f89: f6 24 08  mov   a,$0824+y			; get the echo register values to "poke"
0f8c: c4 f2     mov   $f2,a			; (from the table)
0f8e: f7 29     mov   a,($29)+y			; now get info to feed to the registers
0f90: ad 01     cmp   y,#$01			; (from the echo environment)
0f92: f0 08     beq   $0f9c
0f94: ad 03     cmp   y,#$03
0f96: f0 0f     beq   $0fa7
0f98: ad 02     cmp   y,#$02
0f9a: d0 10     bne   $0fac
0f9c: d6 43 02  mov   $0243+y,a
0f9f: 65 3b 02  cmp   a,$023b
0fa2: 90 03     bcc   $0fa7
0fa4: e5 3b 02  mov   a,$023b
0fa7: d6 37 02  mov   $0237+y,a
0faa: 2f 02     bra   $0fae
0fac: c4 f3     mov   $f3,a
0fae: fc        inc   y
0faf: ad 0c     cmp   y,#$0c			; repeat for every byte of the array
0fb1: 90 d6     bcc   $0f89
0fb3: 8f 4d f2  mov   $f2,#$4d
0fb6: 09 65 f3  or    ($f3),($65)
0fb9: 2f 06     bra   $0fc1
0fbb: 8f 4d f2  mov   $f2,#$4d
0fbe: 29 66 f3  and   ($f3),($66)
0fc1: e4 4c     mov   a,$4c
0fc3: 60        clrc
0fc4: 88 00     adc   a,#$00
0fc6: c4 2d     mov   $2d,a
0fc8: 8d 01     mov   y,#$01
0fca: f7 20     mov   a,($20)+y
0fcc: 03 4d 08  bbs0  $4d,$0fd7
0fcf: f8 4c     mov   x,$4c
0fd1: d5 23 01  mov   $0123+x,a
0fd4: 5f e2 0f  jmp   $0fe2

0fd7: 8d 04     mov   y,#$04
0fd9: 3f 63 10  call  $1063
0fdc: fa 0f 0d  mov   ($0d),($0f)
0fdf: 3f ac 11  call  $11ac
0fe2: e4 4c     mov   a,$4c
0fe4: 60        clrc
0fe5: 88 08     adc   a,#$08
0fe7: c4 2d     mov   $2d,a
0fe9: 53 4d 13  bbc2  $4d,$0fff
0fec: 8d 03     mov   y,#$03
0fee: f7 20     mov   a,($20)+y
0ff0: 8d 06     mov   y,#$06
0ff2: 3f 63 10  call  $1063
0ff5: fa 10 0d  mov   ($0d),($10)
0ff8: 42 08     set2  $08
0ffa: 3f ac 11  call  $11ac
0ffd: 52 08     clr2  $08
0fff: e4 4c     mov   a,$4c
1001: 60        clrc
1002: 88 18     adc   a,#$18
1004: c4 2d     mov   $2d,a
1006: 63 07 57  bbs3  $07,$1060
1009: 8d 04     mov   y,#$04
100b: f7 20     mov   a,($20)+y			; now get the amplitude
100d: 63 4d 08  bbs3  $4d,$1018
1010: f8 4c     mov   x,$4c
1012: d5 e4 fc  mov   $fce4+x,a
1015: 5f 39 10  jmp   $1039

1018: 8d 08     mov   y,#$08
101a: 3f 63 10  call  $1063
101d: fa 11 0d  mov   ($0d),($11)
1020: 3f ac 11  call  $11ac
1023: eb 2d     mov   y,$2d
1025: f6 e3 04  mov   a,$04e3+y
1028: f0 0a     beq   $1034
102a: f6 c3 03  mov   a,$03c3+y
102d: d0 05     bne   $1034
102f: e8 ff     mov   a,#$ff
1031: 5f 36 10  jmp   $1036

1034: e8 00     mov   a,#$00
1036: d6 c3 03  mov   $03c3+y,a
1039: e4 4c     mov   a,$4c
103b: 60        clrc
103c: 88 10     adc   a,#$10
103e: c4 2d     mov   $2d,a
1040: 8d 02     mov   y,#$02
1042: f7 20     mov   a,($20)+y
1044: 23 4d 08  bbs1  $4d,$104f
1047: f8 4c     mov   x,$4c
1049: d5 ec fc  mov   $fcec+x,a
104c: 5f 5a 10  jmp   $105a

104f: 8d 0a     mov   y,#$0a
1051: 3f 63 10  call  $1063
1054: fa 0e 0d  mov   ($0d),($0e)
1057: 3f ac 11  call  $11ac
105a: 09 65 5c  or    ($5c),($65)
105d: 09 65 56  or    ($56),($65)
1060: 72 07     clr3  $07
1062: 6f        ret

1063: 3f f3 0b  call  $0bf3		; load current song/sfx/etc. address into stack
1066: 8f 00 1f  mov   $1f,#$00
1069: 1c        asl   a
106a: 2b 1f     rol   $1f
106c: 60        clrc
106d: 96 e0 1e  adc   a,$1ee0+y
1070: c4 1e     mov   $1e,a
1072: e4 1f     mov   a,$1f
1074: 96 e1 1e  adc   a,$1ee1+y
1077: c4 1f     mov   $1f,a
1079: 8d 01     mov   y,#$01
107b: f7 1e     mov   a,($1e)+y
107d: c4 2a     mov   $2a,a
107f: dc        dec   y
1080: f7 1e     mov   a,($1e)+y
1082: c4 29     mov   $29,a
1084: eb 2a     mov   y,$2a
1086: 6f        ret

1087: db $4a,$06,$1c,$1a,$4a,$06,$1c,$1a,$06,$1c,$1a,$4a,$06,$1c,$1a,$4a,$06,$1c,$1a,$4a,$06,$1c

; initalize sound registers
109f: 3f ed 10  call  $10ed
10a2: cd 51     mov   x,#$51
10a4: 8d 11     mov   y,#$11
10a6: 3f 3a 11  call  $113a
10a9: e8 00     mov   a,#$00
10ab: 5d        mov   x,a
10ac: fd        mov   y,a
10ad: d5 00 01  mov   $0100+x,a
10b0: af        mov   (x)+,a
10b1: c8 f0     cmp   x,#$f0
10b3: 90 f8     bcc   $10ad
10b5: 5d        mov   x,a
10b6: d5 00 02  mov   $0200+x,a
10b9: d5 00 03  mov   $0300+x,a
10bc: d5 00 04  mov   $0400+x,a
10bf: d5 00 05  mov   $0500+x,a
10c2: d5 00 06  mov   $0600+x,a
10c5: d5 00 fc  mov   $fc00+x,a
10c8: d5 00 fd  mov   $fd00+x,a
10cb: d5 00 ff  mov   $ff00+x,a
10ce: 3d        inc   x
10cf: d0 e5     bne   $10b6
10d1: e8 ff     mov   a,#$ff
10d3: c4 58     mov   $58,a
10d5: c4 5a     mov   $5a,a
10d7: c4 63     mov   $63,a
10d9: c4 59     mov   $59,a
10db: c4 5e     mov   $5e,a
10dd: c4 5f     mov   $5f,a
10df: c4 60     mov   $60,a
10e1: c5 3f 02  mov   $023f,a
10e4: c4 05     mov   $05,a
10e6: c4 06     mov   $06,a
10e8: c4 0c     mov   $0c,a
10ea: 82 07     set4  $07
10ec: 6f        ret

10ed: cd 14     mov   x,#$14
10ef: e8 00     mov   a,#$00
10f1: d5 28 02  mov   $0228+x,a
10f4: 1d        dec   x
10f5: 10 fa     bpl   $10f1
10f7: 8f 10 3a  mov   $3a,#$10
10fa: 8d 10     mov   y,#$10
10fc: 3f 4a 07  call  $074a
10ff: 68 00     cmp   a,#$00
1101: f0 04     beq   $1107
1103: 8b 3a     dec   $3a
1105: d0 f0     bne   $10f7
1107: 6f        ret

1108: e8 7f     mov   a,#$7f
110a: c5 3b 02  mov   $023b,a
110d: c5 3c 02  mov   $023c,a
1110: 2f e5     bra   $10f7
1112: e5 e1 1e  mov   a,$1ee1
1115: 8f 6d f2  mov   $f2,#$6d
1118: c4 f3     mov   $f3,a
111a: 68 ff     cmp   a,#$ff
111c: f0 1b     beq   $1139
111e: c4 01     mov   $01,a
1120: e8 00     mov   a,#$00
1122: fd        mov   y,a
1123: c4 00     mov   $00,a
1125: d7 00     mov   ($00)+y,a
1127: fe fc     dbnz  y,$1125
1129: ab 01     inc   $01
112b: 78 fc 01  cmp   $01,#$fc
112e: d0 f5     bne   $1125
1130: 8f 6c f2  mov   $f2,#$6c
1133: e8 df     mov   a,#$df
1135: 24 f3     and   a,$f3
1137: c4 f3     mov   $f3,a
1139: 6f        ret

113a: d8 00     mov   $00,x
113c: cb 01     mov   $01,y
113e: 8d 00     mov   y,#$00
1140: f7 00     mov   a,($00)+y
1142: 68 ff     cmp   a,#$ff
1144: f0 0a     beq   $1150
1146: c4 f2     mov   $f2,a
1148: fc        inc   y
1149: f7 00     mov   a,($00)+y
114b: c4 f3     mov   $f3,a
114d: fc        inc   y
114e: d0 f0     bne   $1140
1150: 6f        ret

; pre-defined DSP flags
1151: db $3d,$00		; NON (noise enable)
1153: db $4d,$00		; EON (echo enable)
1155: db $0d,$00		; EFB (echo feedback)
1157: db $7d,$00		; EDL (echo delay)
1159: db $0f,$00		; COEF (channel 1)
115b: db $1f,$00		; COEF (channel 2)
115d: db $2f,$00		; COEF (channel 3)
115f: db $3f,$00		; COEF (channel 4)
1161: db $4f,$00		; COEF (channel 5)
1163: db $5f,$00		; COEF (channel 6)
1165: db $6f,$00		; COEF (channel 7)
1167: db $7f,$00		; COEF (channel 8)
1169: db $6d,$ff		; ESA (echo buffer start offset)
116b: db $2c,$00		; EVOL (L) (echo volume - left)
116d: db $3c,$00		; EVOL (R) (echo volume - right)
116f: db $0c,$00		; MVOL (L) (main volume - left)
1171: db $1c,$00		; MVOL (R) (main volume - right)
1173: db $5d,$02		; DIR (offset of source directory)
1175: db $5c,$00		; KOF (key off)
1177: db $2d,$00		; PMON (pitch modulation)
1179: db $04,$08		; SRCN (source number - channel 1)
117b: db $14,$08		; SRCN (source number - channel 2)
117d: db $24,$08		; SRCN (source number - channel 3)
117f: db $34,$08		; SRCN (source number - channel 4)
1181: db $44,$08		; SRCN (source number - channel 5)
1183: db $54,$08		; SRCN (source number - channel 6)
1185: db $64,$08		; SRCN (source number - channel 7)
1187: db $74,$08		; SRCN (source number - channel 8)
1189: db $07,$00		; GAIN (channel 1)
118b: db $17,$00		; GAIN (channel 2)
118d: db $27,$00		; GAIN (channel 3)
118f: db $37,$00		; GAIN (channel 4)
1191: db $47,$00		; GAIN (channel 5)
1193: db $57,$00		; GAIN (channel 6)
1195: db $67,$00		; GAIN (channel 7)
1197: db $77,$00		; GAIN (channel 8)
1199: db $05,$00		; ASDR (1 - channel 1)
119b: db $15,$00		; ASDR (1 - channel 2)
119d: db $25,$00		; ASDR (1 - channel 3)
119f: db $35,$00		; ASDR (1 - channel 4)
11a1: db $45,$00		; ASDR (1 - channel 5)
11a3: db $55,$00		; ASDR (1 - channel 6)
11a5: db $65,$00		; ASDR (1 - channel 7)
11a7: db $75,$00		; ASDR (1 - channel 8)
11a9: db $7c,$00		; ENDX
11ab: db $ff

11ac: 3f f3 0b  call  $0bf3
11af: f8 2d     mov   x,$2d
11b1: 8d 07     mov   y,#$07
11b3: f7 29     mov   a,($29)+y
11b5: d5 e3 04  mov   $04e3+x,a
11b8: dc        dec   y
11b9: dc        dec   y
11ba: f7 29     mov   a,($29)+y
11bc: d5 03 04  mov   $0403+x,a
11bf: dc        dec   y
11c0: f7 29     mov   a,($29)+y
11c2: d5 c3 04  mov   $04c3+x,a
11c5: dc        dec   y
11c6: f7 29     mov   a,($29)+y
11c8: d5 23 04  mov   $0423+x,a
11cb: dc        dec   y
11cc: f7 29     mov   a,($29)+y
11ce: d5 43 04  mov   $0443+x,a
11d1: dc        dec   y
11d2: f7 29     mov   a,($29)+y
11d4: d5 83 04  mov   $0483+x,a
11d7: dc        dec   y
11d8: f7 29     mov   a,($29)+y
11da: d5 63 04  mov   $0463+x,a
11dd: eb 2d     mov   y,$2d
11df: e4 29     mov   a,$29
11e1: 60        clrc
11e2: 88 08     adc   a,#$08
11e4: d6 43 05  mov   $0543+y,a
11e7: e4 2a     mov   a,$2a
11e9: 88 00     adc   a,#$00
11eb: d6 63 05  mov   $0563+y,a
11ee: f6 23 04  mov   a,$0423+y
11f1: cd 00     mov   x,#$00
11f3: eb 0d     mov   y,$0d
11f5: f0 23     beq   $121a
11f7: cf        mul   ya
11f8: cb 3a     mov   $3a,y
11fa: c4 3b     mov   $3b,a
11fc: cd 05     mov   x,#$05
11fe: 4b 3a     lsr   $3a
1200: 7c        ror   a
1201: 1d        dec   x
1202: d0 fa     bne   $11fe
1204: eb 3a     mov   y,$3a
1206: ad 00     cmp   y,#$00
1208: d0 08     bne   $1212
120a: 68 00     cmp   a,#$00
120c: f0 0a     beq   $1218
120e: f8 3b     mov   x,$3b
1210: 2f 08     bra   $121a
1212: cd 01     mov   x,#$01
1214: e8 ff     mov   a,#$ff
1216: 2f 02     bra   $121a
1218: 5d        mov   x,a
1219: bc        inc   a
121a: eb 2d     mov   y,$2d
121c: d6 23 04  mov   $0423+y,a
121f: 7d        mov   a,x
1220: 48 ff     eor   a,#$ff
1222: 08 e0     or    a,#$e0
1224: d6 a3 03  mov   $03a3+y,a
1227: e8 ff     mov   a,#$ff
1229: d6 e3 03  mov   $03e3+y,a
122c: 3f f3 0b  call  $0bf3
122f: 5d        mov   x,a
1230: f6 43 04  mov   a,$0443+y
1233: fd        mov   y,a
1234: 7d        mov   a,x
1235: cf        mul   ya
1236: da 45     movw  $45,ya
1238: 03 07 06  bbs0  $07,$1241
123b: ba 05     movw  ya,$05
123d: da 45     movw  $45,ya
123f: 2f 0a     bra   $124b
1241: ba 4e     movw  ya,$4e
1243: 9a 45     subw  ya,$45
1245: b0 02     bcs   $1249
1247: ba 4e     movw  ya,$4e
1249: cb 46     mov   $46,y
124b: eb 2d     mov   y,$2d
124d: d6 83 05  mov   $0583+y,a
1250: e4 46     mov   a,$46
1252: d6 a3 05  mov   $05a3+y,a
1255: f6 23 04  mov   a,$0423+y
1258: bc        inc   a
1259: d0 01     bne   $125c
125b: 9c        dec   a
125c: d6 03 05  mov   $0503+y,a
125f: 68 03     cmp   a,#$03
1261: b0 05     bcs   $1268
1263: e8 00     mov   a,#$00
1265: d6 c3 04  mov   $04c3+y,a
1268: e8 01     mov   a,#$01
126a: d6 a3 04  mov   $04a3+y,a
126d: 9c        dec   a
126e: d6 23 05  mov   $0523+y,a
1271: d6 44 ff  mov   $ff44+y,a
1274: d6 64 ff  mov   $ff64+y,a
1277: c4 37     mov   $37,a
1279: 5f 4e 13  jmp   $134e

127c: eb 2d     mov   y,$2d
127e: b2 07     clr5  $07
1280: f6 c3 04  mov   a,$04c3+y
1283: c4 37     mov   $37,a
1285: f6 a3 04  mov   a,$04a3+y
1288: f0 42     beq   $12cc
128a: f6 a3 03  mov   a,$03a3+y
128d: 60        clrc
128e: 96 e3 03  adc   a,$03e3+y
1291: d6 e3 03  mov   $03e3+y,a
1294: 90 18     bcc   $12ae
1296: f6 03 05  mov   a,$0503+y
1299: c4 38     mov   $38,a
129b: f0 03     beq   $12a0
129d: 9c        dec   a
129e: d0 03     bne   $12a3
12a0: f6 23 04  mov   a,$0423+y
12a3: d6 03 05  mov   $0503+y,a
12a6: 78 02 38  cmp   $38,#$02
12a9: 90 08     bcc   $12b3
12ab: 5f 4e 13  jmp   $134e

12ae: 8f 00 37  mov   $37,#$00
12b1: 2f f8     bra   $12ab
12b3: eb 2d     mov   y,$2d
12b5: f6 23 05  mov   a,$0523+y
12b8: bc        inc   a
12b9: 76 03 04  cmp   a,$0403+y
12bc: 90 1b     bcc   $12d9
12be: 9c        dec   a
12bf: 76 83 04  cmp   a,$0483+y
12c2: d0 03     bne   $12c7
12c4: 5f 48 13  jmp   $1348

12c7: e8 00     mov   a,#$00
12c9: d6 a3 04  mov   $04a3+y,a
12cc: a2 07     set5  $07
12ce: f6 24 ff  mov   a,$ff24+y
12d1: 2d        push  a
12d2: f6 04 ff  mov   a,$ff04+y
12d5: ee        pop   y
12d6: 5f ff 13  jmp   $13ff

12d9: d6 23 05  mov   $0523+y,a
12dc: f6 a3 05  mov   a,$05a3+y
12df: 16 83 05  or    a,$0583+y
12e2: f0 6a     beq   $134e
12e4: f8 28     mov   x,$28
12e6: f5 46 02  mov   a,$0246+x
12e9: 28 02     and   a,#$02
12eb: f0 24     beq   $1311
12ed: e8 01     mov   a,#$01
12ef: 74 6f     cmp   a,$6f+x
12f1: d0 03     bne   $12f6
12f3: 83 07 09  bbs4  $07,$12ff
12f6: eb 28     mov   y,$28
12f8: f6 46 02  mov   a,$0246+y
12fb: 28 01     and   a,#$01
12fd: f0 3d     beq   $133c
12ff: e8 00     mov   a,#$00
1301: d6 78 00  mov   $0078+y,a
1304: d6 79 00  mov   $0079+y,a
1307: eb 2d     mov   y,$2d
1309: d6 83 05  mov   $0583+y,a
130c: d6 a3 05  mov   $05a3+y,a
130f: 2f 21     bra   $1332
1311: f6 83 05  mov   a,$0583+y
1314: 80        setc
1315: b6 23 04  sbc   a,$0423+y
1318: d6 83 05  mov   $0583+y,a
131b: c4 45     mov   $45,a
131d: f6 a3 05  mov   a,$05a3+y
1320: a8 00     sbc   a,#$00
1322: b0 07     bcs   $132b
1324: e8 00     mov   a,#$00
1326: d6 83 05  mov   $0583+y,a
1329: c4 45     mov   $45,a
132b: d6 a3 05  mov   $05a3+y,a
132e: 04 45     or    a,$45
1330: d0 0a     bne   $133c
1332: f6 83 04  mov   a,$0483+y
1335: 76 03 04  cmp   a,$0403+y
1338: 90 11     bcc   $134b
133a: a2 07     set5  $07
133c: eb 2d     mov   y,$2d
133e: f6 23 05  mov   a,$0523+y
1341: 76 83 04  cmp   a,$0483+y
1344: 90 08     bcc   $134e
1346: f0 06     beq   $134e
1348: f6 63 04  mov   a,$0463+y
134b: d6 23 05  mov   $0523+y,a
134e: eb 2d     mov   y,$2d
1350: f8 37     mov   x,$37
1352: f0 1c     beq   $1370
1354: 78 03 38  cmp   $38,#$03
1357: 90 17     bcc   $1370
1359: f6 04 ff  mov   a,$ff04+y
135c: c4 33     mov   $33,a
135e: f6 24 ff  mov   a,$ff24+y
1361: c4 34     mov   $34,a
1363: f6 44 ff  mov   a,$ff44+y
1366: c4 35     mov   $35,a
1368: f6 64 ff  mov   a,$ff64+y
136b: c4 36     mov   $36,a
136d: 5f ed 13  jmp   $13ed

1370: f6 43 05  mov   a,$0543+y
1373: c4 2b     mov   $2b,a
1375: f6 63 05  mov   a,$0563+y
1378: c4 2c     mov   $2c,a
137a: f6 23 05  mov   a,$0523+y
137d: fd        mov   y,a
137e: 43 08 07  bbs2  $08,$1388
1381: f7 2b     mov   a,($2b)+y
1383: 8d 40     mov   y,#$40
1385: cf        mul   ya
1386: 2f 10     bra   $1398
1388: 8d 02     mov   y,#$02
138a: cf        mul   ya
138b: 7a 2b     addw  ya,$2b
138d: da 2b     movw  $2b,ya
138f: 8d 01     mov   y,#$01
1391: f7 2b     mov   a,($2b)+y
1393: dc        dec   y
1394: 2d        push  a
1395: f7 2b     mov   a,($2b)+y
1397: ee        pop   y
1398: f8 37     mov   x,$37
139a: f0 55     beq   $13f1
139c: 78 02 38  cmp   $38,#$02
139f: f0 50     beq   $13f1
13a1: da 3a     movw  $3a,ya
13a3: eb 2d     mov   y,$2d
13a5: f6 24 ff  mov   a,$ff24+y
13a8: c4 34     mov   $34,a
13aa: f6 04 ff  mov   a,$ff04+y
13ad: c4 33     mov   $33,a
13af: eb 34     mov   y,$34
13b1: 80        setc
13b2: 9a 3a     subw  ya,$3a
13b4: da 35     movw  $35,ya
13b6: e8 00     mov   a,#$00
13b8: 3c        rol   a
13b9: c4 3a     mov   $3a,a
13bb: d0 08     bne   $13c5
13bd: 58 ff 35  eor   $35,#$ff
13c0: 58 ff 36  eor   $36,#$ff
13c3: 3a 35     incw  $35
13c5: eb 2d     mov   y,$2d
13c7: f6 23 04  mov   a,$0423+y
13ca: 5d        mov   x,a
13cb: ba 35     movw  ya,$35
13cd: 3f 0a 14  call  $140a
13d0: c4 35     mov   $35,a
13d2: d8 36     mov   $36,x
13d4: 78 01 3a  cmp   $3a,#$01
13d7: d0 08     bne   $13e1
13d9: 58 ff 35  eor   $35,#$ff
13dc: 58 ff 36  eor   $36,#$ff
13df: 3a 35     incw  $35
13e1: eb 2d     mov   y,$2d
13e3: e4 35     mov   a,$35
13e5: d6 44 ff  mov   $ff44+y,a
13e8: e4 36     mov   a,$36
13ea: d6 64 ff  mov   $ff64+y,a
13ed: ba 33     movw  ya,$33
13ef: 7a 35     addw  ya,$35
13f1: da 33     movw  $33,ya
13f3: eb 2d     mov   y,$2d
13f5: d6 04 ff  mov   $ff04+y,a
13f8: e4 34     mov   a,$34
13fa: d6 24 ff  mov   $ff24+y,a
13fd: ba 33     movw  ya,$33
13ff: 43 08 07  bbs2  $08,$1409
1402: cd 40     mov   x,#$40
1404: 9e        div   ya,x
1405: 8d 00     mov   y,#$00
1407: da 33     movw  $33,ya
1409: 6f        ret

140a: c8 00     cmp   x,#$00
140c: d0 04     bne   $1412
140e: 1d        dec   x
140f: 7d        mov   a,x
1410: fd        mov   y,a
1411: 6f        ret

1412: 40        setp
1413: cb 01     mov   $01,y
1415: 3e 01     cmp   x,$01
1417: f0 02     beq   $141b
1419: b0 1a     bcs   $1435
141b: c4 00     mov   $00,a
141d: dd        mov   a,y
141e: 8d 00     mov   y,#$00
1420: 9e        div   ya,x
1421: c4 02     mov   $02,a
1423: fd        mov   y,a
1424: 7d        mov   a,x
1425: cf        mul   ya
1426: c4 03     mov   $03,a
1428: e4 01     mov   a,$01
142a: 80        setc
142b: a4 03     sbc   a,$03
142d: fd        mov   y,a
142e: e4 00     mov   a,$00
1430: 9e        div   ya,x
1431: f8 02     mov   x,$02
1433: 20        clrp
1434: 6f        ret

1435: 9e        div   ya,x
1436: cd 00     mov   x,#$00
1438: 20        clrp
1439: 6f        ret

143a: 4d        push  x
143b: f5 f4 fc  mov   a,$fcf4+x
143e: 8d 04     mov   y,#$04
1440: cf        mul   ya
1441: 7a 24     addw  ya,$24
1443: da 00     movw  $00,ya
1445: f5 ef 07  mov   a,$07ef+x
1448: c4 f2     mov   $f2,a
144a: 7d        mov   a,x
144b: 1c        asl   a
144c: 1c        asl   a
144d: 5d        mov   x,a
144e: f5 02 02  mov   a,$0202+x
1451: c5 26 02  mov   $0226,a
1454: f5 03 02  mov   a,$0203+x
1457: c5 27 02  mov   $0227,a
145a: 8f 09 f3  mov   $f3,#$09
145d: 8d 00     mov   y,#$00
145f: f7 00     mov   a,($00)+y
1461: d5 00 02  mov   $0200+x,a
1464: fc        inc   y
1465: f7 00     mov   a,($00)+y
1467: d5 01 02  mov   $0201+x,a
146a: fc        inc   y
146b: f7 00     mov   a,($00)+y
146d: d5 02 02  mov   $0202+x,a
1470: fc        inc   y
1471: f7 00     mov   a,($00)+y
1473: d5 03 02  mov   $0203+x,a
1476: 8d 01     mov   y,#$01
1478: f7 00     mov   a,($00)+y
147a: c4 3d     mov   $3d,a
147c: dc        dec   y
147d: f7 00     mov   a,($00)+y
147f: 80        setc
1480: a8 03     sbc   a,#$03
1482: c4 3c     mov   $3c,a
1484: b8 00 3d  sbc   $3d,#$00
1487: f7 3c     mov   a,($3c)+y
1489: c5 04 01  mov   $0104,a
148c: fc        inc   y
148d: f7 3c     mov   a,($3c)+y
148f: c5 05 01  mov   $0105,a
1492: fc        inc   y
1493: f7 3c     mov   a,($3c)+y
1495: c4 64     mov   $64,a
1497: 10 14     bpl   $14ad
1499: 28 1f     and   a,#$1f
149b: 8f 6c f2  mov   $f2,#$6c
149e: 38 e0 f3  and   $f3,#$e0
14a1: 04 f3     or    a,$f3
14a3: c4 f3     mov   $f3,a
14a5: 8f 3d f2  mov   $f2,#$3d
14a8: 09 4a f3  or    ($f3),($4a)
14ab: 2f 06     bra   $14b3
14ad: 8f 3d f2  mov   $f2,#$3d
14b0: 29 4b f3  and   ($f3),($4b)
14b3: ce        pop   x
14b4: f5 ef 07  mov   a,$07ef+x
14b7: c4 f2     mov   $f2,a
14b9: d8 f3     mov   $f3,x
14bb: 6f        ret

14bc: 60        clrc
14bd: 88 a0     adc   a,#$a0			; add offset to input frequency (1440)
14bf: 5d        mov   x,a
14c0: dd        mov   a,y
14c1: 88 05     adc   a,#$05
14c3: fd        mov   y,a
14c4: 7d        mov   a,x
14c5: ad 0a     cmp   y,#$0a			; check if it is in within positive range
14c7: 90 06     bcc   $14cf			; in range
14c9: d0 0a     bne   $14d5			; out of range
14cb: 68 50     cmp   a,#$50
14cd: b0 06     bcs   $14d5			; out of range
14cf: 8f ff 44  mov   $44,#$ff
14d2: 5f eb 14  jmp   $14eb

14d5: ad 80     cmp   y,#$80
14d7: 90 0f     bcc   $14e8
14d9: 8f 00 44  mov   $44,#$00
14dc: 60        clrc
14dd: 88 20     adc   a,#$20
14df: 5d        mov   x,a
14e0: dd        mov   a,y
14e1: 88 df     adc   a,#$df
14e3: fd        mov   y,a
14e4: 7d        mov   a,x
14e5: 5f eb 14  jmp   $14eb

14e8: 8f 0a 44  mov   $44,#$0a
14eb: cd f0     mov   x,#$f0
14ed: 9e        div   ya,x
14ee: 78 ff 44  cmp   $44,#$ff
14f1: d0 02     bne   $14f5
14f3: c4 44     mov   $44,a
14f5: f6 10 15  mov   a,$1510+y			;get pitch value (from table)
14f8: c4 3a     mov   $3a,a
14fa: f6 00 16  mov   a,$1600+y
14fd: c4 3b     mov   $3b,a
14ff: e8 0a     mov   a,#$0a
1501: 80        setc
1502: a4 44     sbc   a,$44
1504: f0 07     beq   $150d
1506: fd        mov   y,a
1507: 4b 3b     lsr   $3b
1509: 6b 3a     ror   $3a
150b: fe fa     dbnz  y,$1507
150d: ba 3a     movw  ya,$3a
150f: 6f        ret

; pitch table (low byte)
1510: db $00,$18,$2f,$47,$5f,$77,$8f,$a7,$bf,$d8,$f0,$08,$21,$39,$52,$6b,$83,$9c,$b5,$ce,$e7,$00,$19,$33,$4c,$65,$7f,$98,$b2,$cc,$e5,$ff,$19,$33,$4d,$67,$82,$9c,$b6,$d1,$eb,$06,$20,$3b,$56,$71,$8c,$a7,$c2,$dd,$f9,$14,$2f,$4b,$67,$82,$9e,$ba,$d6,$f2,$0e,$2a,$46,$63,$7f,$9c,$b8,$d5,$f2,$0f,$2b,$48,$66,$83,$a0,$bd,$db,$f8,$16,$34,$51,$6f,$8d,$ab,$c9,$e7,$06,$24,$43,$61,$80,$9e,$bd,$dc,$fb,$1a,$39,$59,$78,$97,$b7,$d7,$f6,$16,$36,$56,$76,$96,$b7,$d7,$f7,$18,$39,$59,$7a,$9b,$bc,$dd,$ff,$20,$41,$63,$84,$a6,$c8,$ea,$0c,$2e,$50,$72,$95,$b7,$da,$fc,$1f,$42,$65,$88,$ab,$cf,$f2,$16,$39,$5d,$81,$a5,$c9,$ed,$11,$35,$5a,$7e,$a3,$c8,$ed,$12,$37,$5c,$81,$a6,$cc,$f2,$17,$3d,$63,$89,$af,$d6,$fc,$22,$49,$70,$97,$be,$e5,$0c,$33,$5a,$82,$aa,$d1,$f9,$21,$49,$71,$9a,$c2,$eb,$13,$3c,$65,$8e,$b7,$e0,$0a,$33,$5d,$87,$b0,$da,$04,$2f,$59,$84,$ae,$d9,$04,$2f,$5a,$85,$b0,$dc,$07,$33,$5f,$8b,$b7,$e3,$0f,$3c,$68,$95,$c2,$ef,$1c,$49,$77,$a4,$d2,$00,$2e,$5c,$8a,$b8,$e7,$15,$44,$73,$a2,$d1

; pitch table (high byte)
1600: db $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21,$21,$21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23,$23,$23,$23,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$25,$25,$25,$25,$25,$25,$25,$25,$25,$26,$26,$26,$26,$26,$26,$26,$26,$26,$27,$27,$27,$27,$27,$27,$27,$27,$27,$28,$28,$28,$28,$28,$28,$28,$28,$29,$29,$29,$29,$29,$29,$29,$29,$29,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2a,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2b,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2c,$2d,$2d,$2d,$2d,$2d,$2d,$2d,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2e,$2f,$2f,$2f,$2f,$2f,$2f,$2f,$30,$30,$30,$30,$30,$30,$30,$31,$31,$31,$31,$31,$31,$31,$32,$32,$32,$32,$32,$32,$32,$33,$33,$33,$33,$33,$33,$33,$34,$34,$34,$34,$34,$34,$35,$35,$35,$35,$35,$35,$35,$36,$36,$36,$36,$36,$36,$37,$37,$37,$37,$37,$37,$38,$38,$38,$38,$38,$38,$39,$39,$39,$39,$39,$39,$3a,$3a,$3a,$3a,$3a,$3a,$3b,$3b,$3b,$3b,$3b,$3b,$3c,$3c,$3c,$3c,$3c,$3c,$3d,$3d,$3d,$3d,$3d,$3e,$3e,$3e,$3e,$3e,$3e,$3f,$3f,$3f,$3f,$3f

16f0: 3f 6a 17  call  $176a
16f3: 8f 00 8a  mov   $8a,#$00
16f6: e4 89     mov   a,$89
16f8: f0 20     beq   $171a
16fa: e4 88     mov   a,$88
16fc: 9c        dec   a
16fd: c4 8b     mov   $8b,a
16ff: 3f f3 0b  call  $0bf3
1702: f8 8a     mov   x,$8a
1704: f5 07 01  mov   a,$0107+x
1707: 30 0a     bmi   $1713
1709: 5d        mov   x,a
170a: c4 8b     mov   $8b,a
170c: f5 66 03  mov   a,$0366+x
170f: 5d        mov   x,a
1710: 1f f8 1d  jmp   ($1df8+x)

1713: ab 8a     inc   $8a
1715: 69 88 8a  cmp   ($8a),($88)
1718: d0 e5     bne   $16ff
171a: 6f        ret

171b: c4 3a     mov   $3a,a
171d: f6 67 00  mov   a,$0067+y
1720: 28 80     and   a,#$80
1722: f0 08     beq   $172c
1724: f6 12 00  mov   a,$0012+y
1727: 9c        dec   a
1728: d6 12 00  mov   $0012+y,a
172b: 6f        ret

172c: f6 6f 00  mov   a,$006f+y
172f: 64 3a     cmp   a,$3a
1731: d0 07     bne   $173a
1733: f6 12 00  mov   a,$0012+y
1736: 5c        lsr   a
1737: d6 12 00  mov   $0012+y,a
173a: 6f        ret

173b: 3f f3 0b  call  $0bf3
173e: f8 8b     mov   x,$8b
1740: 9b b7     dec   $b7+x
1742: d0 cf     bne   $1713
1744: 2f 1c     bra   $1762
1746: 3f f3 0b  call  $0bf3
1749: f8 8b     mov   x,$8b
174b: 9b b7     dec   $b7+x
174d: d0 c4     bne   $1713
174f: e8 04     mov   a,#$04
1751: d5 66 03  mov   $0366+x,a
1754: 5f 56 18  jmp   $1856

; vcmd ec - set pitch bend state and release
1757: 3f b0 17  call  $17b0

; vcmd eb - set pitch bend state
175a: e8 00     mov   a,#$00
175c: d5 c6 02  mov   $02c6+x,a
175f: d5 da 02  mov   $02da+x,a
1762: e8 06     mov   a,#$06
1764: d5 66 03  mov   $0366+x,a
1767: 5f e8 17  jmp   $17e8

176a: d3 07 2f  bbc6  $07,$179c
176d: d2 07     clr6  $07
176f: f8 88     mov   x,$88
1771: f0 29     beq   $179c
1773: e8 ff     mov   a,#$ff
1775: 1d        dec   x
1776: d5 07 01  mov   $0107+x,a
1779: 1d        dec   x
177a: 10 fa     bpl   $1776
177c: f8 88     mov   x,$88
177e: 1d        dec   x
177f: 8f 00 3a  mov   $3a,#$00
1782: eb 3a     mov   y,$3a
1784: f6 07 01  mov   a,$0107+y
1787: 30 14     bmi   $179d
1789: fd        mov   y,a
178a: f5 b2 02  mov   a,$02b2+x
178d: 76 b2 02  cmp   a,$02b2+y
1790: b0 0b     bcs   $179d
1792: ab 3a     inc   $3a
1794: 78 14 3a  cmp   $3a,#$14
1797: d0 e9     bne   $1782
1799: 1d        dec   x
179a: 10 e3     bpl   $177f
179c: 6f        ret

179d: eb 3a     mov   y,$3a
179f: 4d        push  x
17a0: 40        setp
17a1: f6 07 01  mov   a,$0107+y
17a4: d9 07     mov   $07+y,x
17a6: 5d        mov   x,a
17a7: fc        inc   y
17a8: 68 ff     cmp   a,#$ff
17aa: d0 f5     bne   $17a1
17ac: ce        pop   x
17ad: 20        clrp
17ae: 2f e9     bra   $1799
17b0: f5 27 06  mov   a,$0627+x
17b3: 30 1d     bmi   $17d2
17b5: fd        mov   y,a
17b6: 7d        mov   a,x
17b7: 08 80     or    a,#$80
17b9: 76 d2 00  cmp   a,$00d2+y
17bc: d0 14     bne   $17d2
17be: e8 01     mov   a,#$01
17c0: 16 46 02  or    a,$0246+y
17c3: d6 46 02  mov   $0246+y,a
17c6: e8 01     mov   a,#$01
17c8: 3f 1b 17  call  $171b
17cb: f5 7a 03  mov   a,$037a+x
17ce: 28 02     and   a,#$02
17d0: d0 00     bne   $17d2
17d2: 6f        ret

17d3: c4 02     mov   $02,a
17d5: 7d        mov   a,x
17d6: 8d 05     mov   y,#$05
17d8: cf        mul   ya
17d9: 60        clrc
17da: 84 02     adc   a,$02
17dc: fd        mov   y,a
17dd: cb 02     mov   $02,y
17df: 6f        ret

; voice numbers
17e0: db $01,$02,$04,$08,$10,$20,$40,$80

17e8: 3f f3 0b  call  $0bf3
17eb: f8 8b     mov   x,$8b
17ed: f5 c6 02  mov   a,$02c6+x
17f0: c4 3a     mov   $3a,a
17f2: f5 da 02  mov   a,$02da+x
17f5: c4 3b     mov   $3b,a
17f7: 3f 29 1a  call  $1a29
17fa: fd        mov   y,a
17fb: 28 0f     and   a,#$0f
17fd: 2d        push  a
17fe: dd        mov   a,y
17ff: 5c        lsr   a
1800: 5c        lsr   a
1801: 5c        lsr   a
1802: 5c        lsr   a
1803: f0 28     beq   $182d
1805: 60        clrc
1806: 88 f8     adc   a,#$f8
1808: 8d 00     mov   y,#$00
180a: 68 00     cmp   a,#$00
180c: 10 01     bpl   $180f
180e: dc        dec   y
180f: 7a 3a     addw  ya,$3a
1811: d5 c6 02  mov   $02c6+x,a
1814: dd        mov   a,y
1815: d5 da 02  mov   $02da+x,a
1818: 8f 00 8c  mov   $8c,#$00
181b: 3f ee 18  call  $18ee
181e: f8 8b     mov   x,$8b
1820: ae        pop   a
1821: 68 00     cmp   a,#$00
1823: f0 c3     beq   $17e8
1825: d4 b7     mov   $b7+x,a
1827: 3f 12 1c  call  $1c12
182a: 5f 13 17  jmp   $1713

182d: ae        pop   a
182e: dd        mov   a,y
182f: 68 00     cmp   a,#$00
1831: d0 03     bne   $1836
1833: 5f 4f 17  jmp   $174f

1836: 68 01     cmp   a,#$01
1838: d0 0b     bne   $1845
183a: 3f 29 1a  call  $1a29
183d: d4 b7     mov   $b7+x,a
183f: 3f 12 1c  call  $1c12
1842: 5f 13 17  jmp   $1713

1845: 68 02     cmp   a,#$02
1847: d0 05     bne   $184e
1849: 3f b0 17  call  $17b0
184c: 2f 9a     bra   $17e8
184e: f4 b7     mov   a,$b7+x
1850: 2d        push  a
1851: 3f 29 1a  call  $1a29
1854: 2f b2     bra   $1808
1856: f8 8b     mov   x,$8b
1858: f5 4e 02  mov   a,$024e+x
185b: 68 05     cmp   a,#$05
185d: f0 1e     beq   $187d
185f: 3f d3 17  call  $17d3
1862: f6 98 fd  mov   a,$fd98+y
1865: c4 00     mov   $00,a
1867: f6 34 fd  mov   a,$fd34+y
186a: c4 01     mov   $01,a
186c: 8d 02     mov   y,#$02
186e: f7 00     mov   a,($00)+y
1870: de 8f 0a  cbne  $8f+x,$187d
1873: 8d 03     mov   y,#$03
1875: f7 00     mov   a,($00)+y
1877: de a3 03  cbne  $a3+x,$187d

; play melody byte
187a: 5f 62 1b  jmp   $1b62

187d: 3f f3 0b  call  $0bf3
1880: 3f 29 1a  call  $1a29		; get 1 byte
1883: fd        mov   y,a		; separate the flags
1884: ad e0     cmp   y,#$e0		; check if it's a vector command
1886: 90 16     bcc   $189e		; if not a vector...
1888: dd        mov   a,y
1889: 28 1f     and   a,#$1f		; mask off bits
188b: 1c        asl   a
188c: fd        mov   y,a
188d: f6 53 1c  mov   a,$1c53+y
1890: c5 9c 18  mov   $189c,a
1893: f6 54 1c  mov   a,$1c54+y
1896: c5 9d 18  mov   $189d,a
1899: eb 3a     mov   y,$3a
189b: 5f c8 1a  jmp   $1ac8

189e: ad c0     cmp   y,#$c0		; is it a rest?
18a0: 90 06     bcc   $18a8
18a2: 80        setc
18a3: a8 bf     sbc   a,#$bf		; get the duration
18a5: 5f ab 1a  jmp   $1aab		; and set rest

18a8: ad 00     cmp   y,#$00		; is it a relative note?
18aa: 10 06     bpl   $18b2		; if so, play the note
18ac: 80        setc			; otherwise, it must be an absolute note...
18ad: a8 60     sbc   a,#$60
18af: fd        mov   y,a
18b0: 2f 16     bra   $18c8
18b2: 2d        push  a
18b3: 5c        lsr   a
18b4: 5c        lsr   a
18b5: 5c        lsr   a
18b6: 80        setc
18b7: a8 08     sbc   a,#$08
18b9: 60        clrc
18ba: 95 76 02  adc   a,$0276+x
18bd: fd        mov   y,a
18be: ae        pop   a
18bf: 28 07     and   a,#$07
18c1: bc        inc   a
18c2: 2f 07     bra   $18cb

; vcmd ef - play absolute note
18c4: 3f 29 1a  call  $1a29
18c7: fd        mov   y,a
18c8: 3f 29 1a  call  $1a29
18cb: 2d        push  a
18cc: e8 00     mov   a,#$00
18ce: d5 c6 02  mov   $02c6+x,a
18d1: d5 da 02  mov   $02da+x,a
18d4: dd        mov   a,y
18d5: d5 76 02  mov   $0276+x,a
18d8: 8f 01 8c  mov   $8c,#$01
18db: f3 07 02  bbc7  $07,$18e0
18de: 8b 8c     dec   $8c
18e0: f2 07     clr7  $07
18e2: ae        pop   a
18e3: 3f e9 18  call  $18e9
18e6: 5f 13 17  jmp   $1713

18e9: d4 b7     mov   $b7+x,a
18eb: 3f 0c 1c  call  $1c0c
18ee: f5 7a 03  mov   a,$037a+x
18f1: 28 01     and   a,#$01
18f3: d0 61     bne   $1956
18f5: e4 8c     mov   a,$8c
18f7: f0 06     beq   $18ff
18f9: 3f b0 17  call  $17b0
18fc: 73 07 16  bbc3  $07,$1915
18ff: f5 27 06  mov   a,$0627+x
1902: 30 0d     bmi   $1911
1904: fd        mov   y,a
1905: 7d        mov   a,x
1906: 08 80     or    a,#$80
1908: 76 d2 00  cmp   a,$00d2+y
190b: d0 04     bne   $1911
190d: dd        mov   a,y
190e: 5d        mov   x,a
190f: 2f 4a     bra   $195b
1911: ab 8c     inc   $8c
1913: 72 07     clr3  $07
1915: e8 ff     mov   a,#$ff
1917: d5 27 06  mov   $0627+x,a
191a: f5 b2 02  mov   a,$02b2+x
191d: c4 54     mov   $54,a
191f: f5 eb 05  mov   a,$05eb+x
1922: c4 0b     mov   $0b,a
1924: f5 13 06  mov   a,$0613+x
1927: c4 53     mov   $53,a
1929: f5 ff 05  mov   a,$05ff+x
192c: 5d        mov   x,a
192d: f5 e0 17  mov   a,$17e0+x
1930: c4 55     mov   $55,a
1932: 3f 92 0e  call  $0e92
1935: 30 1f     bmi   $1956
1937: f5 7a 03  mov   a,$037a+x
193a: 28 fd     and   a,#$fd
193c: b3 0b 02  bbc5  $0b,$1941
193f: 08 02     or    a,#$02
1941: d5 7a 03  mov   $037a+x,a
1944: d3 0b 12  bbc6  $0b,$1959
1947: 7d        mov   a,x
1948: 53 0b 03  bbc2  $0b,$194e
194b: bc        inc   a
194c: 2f 01     bra   $194f
194e: 9c        dec   a
194f: 28 07     and   a,#$07
1951: d5 ff 05  mov   $05ff+x,a
1954: 2f 03     bra   $1959
1956: 5f 24 1a  jmp   $1a24

1959: 7d        mov   a,x
195a: fd        mov   y,a
195b: f8 8b     mov   x,$8b
195d: d5 27 06  mov   $0627+x,a
1960: 7d        mov   a,x
1961: 08 80     or    a,#$80
1963: d6 d2 00  mov   $00d2+y,a
1966: e4 8c     mov   a,$8c
1968: f0 00     beq   $196a
196a: cb cb     mov   $cb,y
196c: e8 01     mov   a,#$01
196e: d6 6f 00  mov   $006f+y,a
1971: f5 b2 02  mov   a,$02b2+x
1974: d6 12 00  mov   $0012+y,a
1977: dd        mov   a,y
1978: 1c        asl   a
1979: fd        mov   y,a
197a: f5 ee 02  mov   a,$02ee+x
197d: d6 5b 01  mov   $015b+y,a
1980: f5 02 03  mov   a,$0302+x
1983: d6 5c 01  mov   $015c+y,a
1986: f5 76 02  mov   a,$0276+x
1989: 8d 14     mov   y,#$14
198b: cf        mul   ya
198c: 80        setc
198d: a8 84     sbc   a,#$84
198f: c4 50     mov   $50,a
1991: dd        mov   a,y
1992: a8 03     sbc   a,#$03
1994: c4 51     mov   $51,a
1996: f5 da 02  mov   a,$02da+x
1999: fd        mov   y,a
199a: f5 c6 02  mov   a,$02c6+x
199d: 7a 50     addw  ya,$50
199f: da 50     movw  $50,ya
19a1: f5 4f 06  mov   a,$064f+x
19a4: fd        mov   y,a
19a5: f5 3b 06  mov   a,$063b+x
19a8: 7a 50     addw  ya,$50
19aa: 7a 61     addw  ya,$61
19ac: da 50     movw  $50,ya
19ae: f5 77 06  mov   a,$0677+x
19b1: fd        mov   y,a
19b2: f5 63 06  mov   a,$0663+x
19b5: 7a 50     addw  ya,$50
19b7: dd        mov   a,y
19b8: eb 8c     mov   y,$8c
19ba: d0 13     bne   $19cf
19bc: c4 3d     mov   $3d,a
19be: fa 50 3c  mov   ($3c),($50)
19c1: 8f d4 00  mov   $00,#$d4
19c4: 8f fc 01  mov   $01,#$fc
19c7: 7d        mov   a,x
19c8: 08 80     or    a,#$80
19ca: 3f b8 1d  call  $1db8
19cd: 2f 55     bra   $1a24
19cf: f5 c3 05  mov   a,$05c3+x
19d2: 10 02     bpl   $19d6
19d4: e8 7f     mov   a,#$7f
19d6: c4 cc     mov   $cc,a
19d8: e4 cb     mov   a,$cb
19da: 1c        asl   a
19db: fd        mov   y,a
19dc: e8 00     mov   a,#$00
19de: 12 07     clr0  $07
19e0: d6 da 00  mov   $00da+y,a
19e3: d6 db 00  mov   $00db+y,a
19e6: e4 cb     mov   a,$cb
19e8: fd        mov   y,a
19e9: f6 46 02  mov   a,$0246+y
19ec: 08 02     or    a,#$02
19ee: d6 46 02  mov   $0246+y,a
19f1: e8 ff     mov   a,#$ff
19f3: d6 92 03  mov   $0392+y,a
19f6: f5 9e 02  mov   a,$029e+x
19f9: d6 9a 03  mov   $039a+y,a
19fc: f5 16 03  mov   a,$0316+x
19ff: c4 0f     mov   $0f,a
1a01: f5 62 02  mov   a,$0262+x
1a04: c5 3d 02  mov   $023d,a
1a07: f5 3e 03  mov   a,$033e+x
1a0a: c4 0e     mov   $0e,a
1a0c: f5 52 03  mov   a,$0352+x
1a0f: c4 11     mov   $11,a
1a11: f5 2a 03  mov   a,$032a+x
1a14: c4 10     mov   $10,a
1a16: eb cc     mov   y,$cc
1a18: f5 8a 02  mov   a,$028a+x
1a1b: cf        mul   ya
1a1c: f5 d7 05  mov   a,$05d7+x
1a1f: f8 cb     mov   x,$cb
1a21: 3f 04 0f  call  $0f04
1a24: ab 8c     inc   $8c
1a26: 72 07     clr3  $07
1a28: 6f        ret

1a29: 3f f3 0b  call  $0bf3
1a2c: f8 8b     mov   x,$8b
1a2e: f4 8f     mov   a,$8f+x
1a30: c5 39 1a  mov   $1a39,a
1a33: f4 a3     mov   a,$a3+x
1a35: c5 3a 1a  mov   $1a3a,a
1a38: e5 53 9e  mov   a,$9e53
1a3b: bb 8f     inc   $8f+x
1a3d: d0 02     bne   $1a41
1a3f: bb a3     inc   $a3+x
1a41: 6f        ret

; vcmd e9 - set effects mask
1a42: 3f 29 1a  call  $1a29
1a45: c4 0c     mov   $0c,a
1a47: 2f 09     bra   $1a52

; vcmd e6 - set standard allocation
1a49: e8 08     mov   a,#$08
1a4b: d5 eb 05  mov   $05eb+x,a
1a4e: 7d        mov   a,x
1a4f: d5 ff 05  mov   $05ff+x,a
1a52: 5f 56 18  jmp   $1856

; vcmd e5 - set channel allocation
1a55: 3f 29 1a  call  $1a29
1a58: d5 eb 05  mov   $05eb+x,a
1a5b: 3f 29 1a  call  $1a29
1a5e: d5 ff 05  mov   $05ff+x,a
1a61: 3f 29 1a  call  $1a29
1a64: d5 13 06  mov   $0613+x,a
1a67: 2f e9     bra   $1a52

; vcmd f0 - end of sequence
1a69: 3f b0 17  call  $17b0
1a6c: e8 00     mov   a,#$00
1a6e: d5 66 03  mov   $0366+x,a
1a71: 8b 89     dec   $89
1a73: 5f 13 17  jmp   $1713

; vcmd f1 - delta expression
1a76: f5 c3 05  mov   a,$05c3+x
1a79: 3f 81 1a  call  $1a81
1a7c: d5 c3 05  mov   $05c3+x,a
1a7f: 2f d1     bra   $1a52
1a81: 4d        push  x
1a82: fd        mov   y,a
1a83: 6d        push  y
1a84: 3f 29 1a  call  $1a29
1a87: cf        mul   ya
1a88: da 3a     movw  $3a,ya
1a8a: ee        pop   y
1a8b: 3f 29 1a  call  $1a29
1a8e: cf        mul   ya
1a8f: 6d        push  y
1a90: 0b 3a     asl   $3a
1a92: 84 3b     adc   a,$3b
1a94: 5d        mov   x,a
1a95: ae        pop   a
1a96: 88 00     adc   a,#$00
1a98: fd        mov   y,a
1a99: d0 03     bne   $1a9e
1a9b: 7d        mov   a,x
1a9c: 10 02     bpl   $1aa0
1a9e: e8 7f     mov   a,#$7f
1aa0: ce        pop   x
1aa1: 6f        ret

; vcmd f2 - absolute expression
1aa2: 3f 29 1a  call  $1a29
1aa5: d5 c3 05  mov   $05c3+x,a
1aa8: 5f 56 18  jmp   $1856

1aab: 2d        push  a
1aac: 3f b0 17  call  $17b0
1aaf: ae        pop   a
1ab0: d4 b7     mov   $b7+x,a
1ab2: 3f 0c 1c  call  $1c0c
1ab5: 5f 13 17  jmp   $1713

; vcmd fd - set time (delay) - 64
1ab8: e8 40     mov   a,#$40
1aba: 2f f4     bra   $1ab0

; vcnd f8 - set time (delay) - 32
1abc: e8 20     mov   a,#$20
1abe: 2f f0     bra   $1ab0

; vcmd fe - set time (delay) - 128
1ac0: e8 80     mov   a,#$80
1ac2: 2f ec     bra   $1ab0

; vcmd ff - set time (delay) - 256
1ac4: e8 00     mov   a,#$00
1ac6: 2f e8     bra   $1ab0

; vcmd f5 - set sound (instrument)
1ac8: 3f 29 1a  call  $1a29
1acb: d5 d7 05  mov   $05d7+x,a
1ace: f5 4e 02  mov   a,$024e+x
1ad1: 68 05     cmp   a,#$05
1ad3: f0 2b     beq   $1b00
1ad5: 3f d3 17  call  $17d3
1ad8: f6 98 fd  mov   a,$fd98+y
1adb: c4 00     mov   $00,a
1add: f6 34 fd  mov   a,$fd34+y
1ae0: c4 01     mov   $01,a
1ae2: f6 04 fc  mov   a,$fc04+y
1ae5: 8d 09     mov   y,#$09
1ae7: 77 00     cmp   a,($00)+y
1ae9: 90 02     bcc   $1aed
1aeb: e8 00     mov   a,#$00
1aed: bc        inc   a
1aee: eb 02     mov   y,$02
1af0: d6 04 fc  mov   $fc04+y,a
1af3: 60        clrc
1af4: 88 09     adc   a,#$09
1af6: fd        mov   y,a
1af7: f7 00     mov   a,($00)+y
1af9: 68 ff     cmp   a,#$ff
1afb: f0 03     beq   $1b00
1afd: d5 d7 05  mov   $05d7+x,a
1b00: 5f 56 18  jmp   $1856

; vcmd f6 - play phrase
1b03: f5 4e 02  mov   a,$024e+x
1b06: 9c        dec   a
1b07: d5 4e 02  mov   $024e+x,a
1b0a: 3f d3 17  call  $17d3
1b0d: f4 8f     mov   a,$8f+x
1b0f: d6 98 fd  mov   $fd98+y,a
1b12: f4 a3     mov   a,$a3+x
1b14: d6 34 fd  mov   $fd34+y,a
1b17: e8 00     mov   a,#$00
1b19: d6 68 fc  mov   $fc68+y,a
1b1c: 3f 29 1a  call  $1a29
1b1f: 2d        push  a
1b20: 3f 2e 1a  call  $1a2e
1b23: 2d        push  a
1b24: 3f 2e 1a  call  $1a2e
1b27: 3f 2e 1a  call  $1a2e
1b2a: 3f 2e 1a  call  $1a2e
1b2d: 3f 2e 1a  call  $1a2e
1b30: fd        mov   y,a
1b31: 3f 2e 1a  call  $1a2e
1b34: 2d        push  a
1b35: dd        mov   a,y
1b36: 60        clrc
1b37: 95 3b 06  adc   a,$063b+x
1b3a: d5 3b 06  mov   $063b+x,a
1b3d: ae        pop   a
1b3e: 95 4f 06  adc   a,$064f+x
1b41: d5 4f 06  mov   $064f+x,a
1b44: f5 c3 05  mov   a,$05c3+x
1b47: eb 02     mov   y,$02
1b49: d6 00 fe  mov   $fe00+y,a
1b4c: 3f 81 1a  call  $1a81
1b4f: d5 c3 05  mov   $05c3+x,a
1b52: eb 02     mov   y,$02
1b54: e8 00     mov   a,#$00
1b56: d6 04 fc  mov   $fc04+y,a
1b59: ae        pop   a
1b5a: d4 a3     mov   $a3+x,a
1b5c: ae        pop   a
1b5d: d4 8f     mov   $8f+x,a
1b5f: 5f 56 18  jmp   $1856

1b62: eb 02     mov   y,$02
1b64: f6 68 fc  mov   a,$fc68+y
1b67: bc        inc   a
1b68: d6 68 fc  mov   $fc68+y,a
1b6b: 8d 04     mov   y,#$04
1b6d: f7 00     mov   a,($00)+y
1b6f: f0 07     beq   $1b78
1b71: eb 02     mov   y,$02
1b73: 76 68 fc  cmp   a,$fc68+y
1b76: f0 0f     beq   $1b87
1b78: 8d 00     mov   y,#$00
1b7a: f7 00     mov   a,($00)+y
1b7c: d4 8f     mov   $8f+x,a
1b7e: 8d 01     mov   y,#$01
1b80: f7 00     mov   a,($00)+y
1b82: d4 a3     mov   $a3+x,a
1b84: 5f 7d 18  jmp   $187d

1b87: f5 3b 06  mov   a,$063b+x
1b8a: 80        setc
1b8b: 8d 05     mov   y,#$05
1b8d: b7 00     sbc   a,($00)+y
1b8f: d5 3b 06  mov   $063b+x,a
1b92: f5 4f 06  mov   a,$064f+x
1b95: 8d 06     mov   y,#$06
1b97: b7 00     sbc   a,($00)+y
1b99: d5 4f 06  mov   $064f+x,a
1b9c: eb 02     mov   y,$02
1b9e: f6 00 fe  mov   a,$fe00+y
1ba1: d5 c3 05  mov   $05c3+x,a
1ba4: e4 00     mov   a,$00
1ba6: 60        clrc
1ba7: 88 0a     adc   a,#$0a
1ba9: d4 8f     mov   $8f+x,a
1bab: e4 01     mov   a,$01
1bad: 88 00     adc   a,#$00
1baf: d4 a3     mov   $a3+x,a
1bb1: 8d 09     mov   y,#$09
1bb3: f7 00     mov   a,($00)+y
1bb5: 60        clrc
1bb6: 94 8f     adc   a,$8f+x
1bb8: d4 8f     mov   $8f+x,a
1bba: f4 a3     mov   a,$a3+x
1bbc: 88 00     adc   a,#$00
1bbe: d4 a3     mov   $a3+x,a
1bc0: f5 4e 02  mov   a,$024e+x
1bc3: bc        inc   a
1bc4: d5 4e 02  mov   $024e+x,a
1bc7: 5f 56 18  jmp   $1856

; vcmd ea - set release
1bca: 3f b0 17  call  $17b0
1bcd: 2f 03     bra   $1bd2

; vcmd f9 - go to loop
1bcf: 3f c7 1c  call  $1cc7
1bd2: 5f 56 18  jmp   $1856

; vcmd fa - set tempo
1bd5: 3f 29 1a  call  $1a29
1bd8: c4 cd     mov   $cd,a
1bda: 2f f6     bra   $1bd2

; vcmd fb - set panning
1bdc: 3f 29 1a  call  $1a29
1bdf: d5 9e 02  mov   $029e+x,a
1be2: 2f ee     bra   $1bd2

; vcmd e0 - set hardware detune
1be4: 3f 29 1a  call  $1a29
1be7: d5 ee 02  mov   $02ee+x,a
1bea: 3f 29 1a  call  $1a29
1bed: d5 02 03  mov   $0302+x,a
1bf0: 2f e0     bra   $1bd2

; vcmd f3 - set priority
1bf2: 3f 29 1a  call  $1a29
1bf5: d5 b2 02  mov   $02b2+x,a
1bf8: c2 07     set6  $07
1bfa: 2f d6     bra   $1bd2

; vcmd ed - set velocity
1bfc: 3f 29 1a  call  $1a29
1bff: d5 8a 02  mov   $028a+x,a
1c02: 2f ce     bra   $1bd2

1c04: 62 07     set3  $07
1c06: 2f ca     bra   $1bd2

; vcmd f4 - set tied note
1c08: e2 07     set7  $07
1c0a: 2f c6     bra   $1bd2

1c0c: e8 02     mov   a,#$02
1c0e: d5 66 03  mov   $0366+x,a
1c11: 6f        ret

1c12: e8 08     mov   a,#$08
1c14: d5 66 03  mov   $0366+x,a
1c17: 6f        ret

; vcmd e1 - set amplitude articulation
1c18: 3f 29 1a  call  $1a29
1c1b: d5 16 03  mov   $0316+x,a
1c1e: 2f b2     bra   $1bd2

1c20: 3f 29 1a  call  $1a29
1c23: d5 62 02  mov   $0262+x,a
1c26: 2f aa     bra   $1bd2

; vcmd e2 - set stereo articulation
1c28: 3f 29 1a  call  $1a29
1c2b: d5 52 03  mov   $0352+x,a
1c2e: 2f a2     bra   $1bd2

; vcmd e4 - set pitch articulation
1c30: 3f 29 1a  call  $1a29
1c33: d5 2a 03  mov   $032a+x,a
1c36: 2f f6     bra   $1c2e

; vcmd e3 - set tone articulation
1c38: 3f 29 1a  call  $1a29
1c3b: d5 3e 03  mov   $033e+x,a
1c3e: 2f ee     bra   $1c2e

; vcmd e7 - reset track
1c40: 3f e4 1c  call  $1ce4
1c43: 2f e9     bra   $1c2e

; vcmd f7 - set detune
1c45: 3f 29 1a  call  $1a29
1c48: d5 63 06  mov   $0663+x,a
1c4b: 3f 29 1a  call  $1a29
1c4e: d5 77 06  mov   $0677+x,a
1c51: 2f db     bra   $1c2e

; vcmd table (e0-ff)
1c53: dw $1be4		; e0 - set hardware detune
1c55: dw $1c18		; e1 - set amplitude articulation
1c57: dw $1c28		; e2 - set stereo articulation
1c59: dw $1c38		; e3 - set tone articulation
1c5b: dw $1c30		; e4 - set pitch articulation
1c5d: dw $1a55		; e5 - set channel allocation
1c5f: dw $1a49		; e6 - set standard allocation
1c61: dw $1c40		; e7 - reset track
1c63: dw $0000		; e8 - redirect track (disabled)
1c65: dw $1a42		; e9 - set effects mask
1c67: dw $1bca		; ea - set release
1c69: dw $175a		; eb - set pitch bend state
1c6b: dw $1757		; ec - set pitch bend state and release
1c6d: dw $1bfc		; ed - set velocity
1c6f: dw $0000		; ee - extended command (disabled)
1c70: dw $18c4		; ef - play absolute note
1c72: dw $1a69		; f0 - end of sequence
1c74: dw $1a76		; f1 - delta expression
1c76: dw $1aa2		; f2 - absolute expression
1c78: dw $1bf2		; f3 - set priority
1c7a: dw $1c08		; f4 - set tied note
1c7c: dw $1ac8		; f5 - set sound (instrument)
1c7e: dw $1b03		; f6 - play phrase
1c80: dw $1c45		; f7 - set detune
1c82: dw $1abc		; f8 - set time (delay) - 32
1c84: dw $1bcf		; f9 - go to loop
1c86: dw $1bd5		; fa - set tempo
1c88: dw $1bdc		; fb - set panning
1c8a: dw $1c04		; fc - set no retrigger
1c8c: dw $1ab8		; fd - set time (delay) - 64
1c8e: dw $1ac0		; fe - set time (delay) - 128
1c90: dw $1ac4		; ff - set time (delay) - 256

1c93: 2d        push  a
1c94: 3f 50 0d  call  $0d50
1c97: ae        pop   a
1c98: 92 07     clr4  $07
1c9a: 8d 1a     mov   y,#$1a
1c9c: 3f 63 10  call  $1063
1c9f: da 8d     movw  $8d,ya
1ca1: 8d 00     mov   y,#$00
1ca3: f7 8d     mov   a,($8d)+y
1ca5: c4 88     mov   $88,a
1ca7: c4 89     mov   $89,a
1ca9: f0 1b     beq   $1cc6
1cab: cb 8b     mov   $8b,y
1cad: 3f c7 1c  call  $1cc7
1cb0: ab 8b     inc   $8b
1cb2: e8 00     mov   a,#$00
1cb4: d3 08 02  bbc6  $08,$1cb9
1cb7: e8 01     mov   a,#$01
1cb9: f8 8b     mov   x,$8b
1cbb: 35 7a 03  and   a,$037a+x
1cbe: d5 7a 03  mov   $037a+x,a
1cc1: 69 88 8b  cmp   ($8b),($88)
1cc4: d0 e7     bne   $1cad
1cc6: 6f        ret

1cc7: e4 8b     mov   a,$8b
1cc9: 5d        mov   x,a
1cca: 1c        asl   a
1ccb: bc        inc   a
1ccc: fd        mov   y,a
1ccd: f7 8d     mov   a,($8d)+y
1ccf: d4 8f     mov   $8f+x,a
1cd1: fc        inc   y
1cd2: f7 8d     mov   a,($8d)+y
1cd4: d4 a3     mov   $a3+x,a
1cd6: e8 ff     mov   a,#$ff
1cd8: c4 ce     mov   $ce,a
1cda: e8 05     mov   a,#$05
1cdc: d5 4e 02  mov   $024e+x,a
1cdf: e8 04     mov   a,#$04
1ce1: d5 66 03  mov   $0366+x,a
1ce4: 72 07     clr3  $07
1ce6: f2 07     clr7  $07
1ce8: f8 8b     mov   x,$8b
1cea: e8 08     mov   a,#$08
1cec: d5 eb 05  mov   $05eb+x,a
1cef: 7d        mov   a,x
1cf0: d5 ff 05  mov   $05ff+x,a
1cf3: e8 00     mov   a,#$00
1cf5: d5 76 02  mov   $0276+x,a
1cf8: d5 c6 02  mov   $02c6+x,a
1cfb: d5 da 02  mov   $02da+x,a
1cfe: d5 3b 06  mov   $063b+x,a
1d01: d5 4f 06  mov   $064f+x,a
1d04: d5 63 06  mov   $0663+x,a
1d07: d5 77 06  mov   $0677+x,a
1d0a: d5 ee 02  mov   $02ee+x,a
1d0d: d5 02 03  mov   $0302+x,a
1d10: d5 16 03  mov   $0316+x,a
1d13: d5 62 02  mov   $0262+x,a
1d16: d5 52 03  mov   $0352+x,a
1d19: d5 3e 03  mov   $033e+x,a
1d1c: d5 2a 03  mov   $032a+x,a
1d1f: d5 9e 02  mov   $029e+x,a
1d22: 9c        dec   a
1d23: d5 27 06  mov   $0627+x,a
1d26: d5 8a 02  mov   $028a+x,a
1d29: e8 40     mov   a,#$40
1d2b: d5 b2 02  mov   $02b2+x,a
1d2e: e8 7f     mov   a,#$7f
1d30: d5 c3 05  mov   $05c3+x,a
1d33: c2 07     set6  $07
1d35: 8f 6f 00  mov   $00,#$6f
1d38: 8f 00 01  mov   $01,#$00
1d3b: 7d        mov   a,x
1d3c: 08 80     or    a,#$80
1d3e: 8d 00     mov   y,#$00
1d40: 5f 81 1d  jmp   $1d81

1d43: c4 5f     mov   $5f,a
1d45: 6f        ret

1d46: c4 60     mov   $60,a
1d48: 6f        ret

1d49: da 61     movw  $61,ya
1d4b: 6f        ret

1d4c: da 2e     movw  $2e,ya
1d4e: 6f        ret

1d4f: c4 fb     mov   $fb,a
1d51: 6f        ret

1d52: 28 7f     and   a,#$7f
1d54: c5 3e 02  mov   $023e,a
1d57: 6f        ret

1d58: 12 08     clr0  $08
1d5a: c5 06 01  mov   $0106,a
1d5d: 68 ff     cmp   a,#$ff
1d5f: f0 02     beq   $1d63
1d61: 02 08     set0  $08
1d63: 6f        ret

1d64: c5 3f 02  mov   $023f,a
1d67: 6f        ret

1d68: c5 40 02  mov   $0240,a
1d6b: 6f        ret

1d6c: c5 41 02  mov   $0241,a
1d6f: cc 42 02  mov   $0242,y
1d72: 6f        ret

1d73: 8f 9a 00  mov   $00,#$9a
1d76: 8f 03 01  mov   $01,#$03
1d79: 2f 06     bra   $1d81

1d7b: 8f 92 00  mov   $00,#$92
1d7e: 8f 03 01  mov   $01,#$03
1d81: c4 3a     mov   $3a,a
1d83: dd        mov   a,y
1d84: 5d        mov   x,a
1d85: e8 07     mov   a,#$07
1d87: fd        mov   y,a
1d88: f6 d2 00  mov   a,$00d2+y
1d8b: 2e 3a 03  cbne  $3a,$1d91
1d8e: 7d        mov   a,x
1d8f: d7 00     mov   ($00)+y,a
1d91: dc        dec   y
1d92: 10 f4     bpl   $1d88
1d94: 6f        ret

1d95: 28 7f     and   a,#$7f
1d97: c4 3a     mov   $3a,a
1d99: cd 07     mov   x,#$07
1d9b: f4 d2     mov   a,$d2+x
1d9d: 2e 3a 08  cbne  $3a,$1da8
1da0: f5 46 02  mov   a,$0246+x
1da3: 08 03     or    a,#$03
1da5: d5 46 02  mov   $0246+x,a
1da8: 1d        dec   x
1da9: 10 f0     bpl   $1d9b
1dab: 6f        ret

1dac: 8f da 00  mov   $00,#$da
1daf: 8f 00 01  mov   $01,#$00
1db2: fa 2e 3c  mov   ($3c),($2e)
1db5: fa 2f 3d  mov   ($3d),($2f)
1db8: c4 3a     mov   $3a,a
1dba: e8 0f     mov   a,#$0f
1dbc: fd        mov   y,a
1dbd: e8 07     mov   a,#$07
1dbf: 5d        mov   x,a
1dc0: f4 d2     mov   a,$d2+x
1dc2: 2e 3a 0a  cbne  $3a,$1dcf
1dc5: e4 3d     mov   a,$3d
1dc7: d7 00     mov   ($00)+y,a
1dc9: dc        dec   y
1dca: e4 3c     mov   a,$3c
1dcc: d7 00     mov   ($00)+y,a
1dce: fc        inc   y
1dcf: dc        dec   y
1dd0: dc        dec   y
1dd1: 1d        dec   x
1dd2: 10 ec     bpl   $1dc0
1dd4: 6f        ret

1dd5: 5d        mov   x,a
1dd6: e8 01     mov   a,#$01
1dd8: 15 7a 03  or    a,$037a+x
1ddb: d5 7a 03  mov   $037a+x,a
1dde: 6f        ret

1ddf: 5d        mov   x,a
1de0: e8 fe     mov   a,#$fe
1de2: 35 7a 03  and   a,$037a+x
1de5: 2f f4     bra   $1ddb
1de7: 2e 03 03  cbne  $03,$1ded
1dea: d2 08     clr6  $08
1dec: 6f        ret

1ded: c2 08     set6  $08
1def: 6f        ret

1df0: 02 09     set0  $09
1df2: 2e 03 02  cbne  $03,$1df7
1df5: 12 09     clr0  $09
1df7: 6f        ret

1df8: dw $1713,$1746,$1856,$17e8,$173b,$0ce2,$0d16,$0d1b,$0d07,$1d95,$0000,$078c,$0da4,$0cf5,$0cef,$0ceb,$0000,$0d50,$0d52,$1e55,$0000,$0000,$0da9,$0d13,$1d43,$1d4f,$1d49,$1d46,$1d6c,$1d52,$1d64,$1d7b,$1d4c,$1dac,$1d68,$1d73,$1d58,$1dd5,$1ddf,$1de7,$0788,$1df0,$1e5f

; uncompiled source code
1e95: db $20,$20,$20,$20,$20,$20,$20,$20,$72,$65,$74,$0d,$0a,$53,$65,$74,$4e,$65,$78,$74,$45,$66,$66,$65,$63,$74,$50,$61,$6e,$0d,$0a,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$6d,$6f,$76,$20,$4e,$65,$78,$74,$45,$78,$53,$74,$65,$72,$65,$6f,$4d,$6f,$64,$2c,$00,$