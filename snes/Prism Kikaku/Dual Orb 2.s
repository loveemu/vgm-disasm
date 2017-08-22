0800: cd cf     mov   x,#$cf
0802: bd        mov   sp,x
0803: 20        clrp
0804: 8f 00 f6  mov   $f6,#$00
0807: 3f d7 15  call  $15d7
080a: cd 00     mov   x,#$00
080c: e8 00     mov   a,#$00
080e: d4 00     mov   $00+x,a
0810: 3d        inc   x
0811: c8 d0     cmp   x,#$d0
0813: d0 f9     bne   $080e
0815: 3f 3a 09  call  $093a
0818: 8f 00 f1  mov   $f1,#$00
081b: 8f 30 f1  mov   $f1,#$30
081e: 8f 00 f4  mov   $f4,#$00
0821: 8f 20 47  mov   $47,#$20
0824: e8 0c     mov   a,#$0c
0826: c4 f2     mov   $f2,a
0828: e8 50     mov   a,#$50
082a: c4 f3     mov   $f3,a             ; set MVOL(L) = 80
082c: e8 1c     mov   a,#$1c
082e: c4 f2     mov   $f2,a
0830: e8 50     mov   a,#$50
0832: c4 f3     mov   $f3,a             ; set MVOL(R) = 80
0834: 8f ff 30  mov   $30,#$ff
0837: 8f 82 fa  mov   $fa,#$82
083a: 8f a0 fb  mov   $fb,#$a0
083d: 8f 03 f1  mov   $f1,#$03
0840: 8f 01 4b  mov   $4b,#$01
0843: e8 00     mov   a,#$00
0845: c4 4c     mov   $4c,a
0847: c4 4d     mov   $4d,a
0849: c4 4f     mov   $4f,a
084b: 3f 38 14  call  $1438
084e: e8 4d     mov   a,#$4d
0850: c4 f2     mov   $f2,a
0852: e8 00     mov   a,#$00
0854: c4 f3     mov   $f3,a             ; set EON = 0
0856: cd 64     mov   x,#$64
0858: e4 fd     mov   a,$fd
085a: f0 fc     beq   $0858             ; wait for timer 0 tick
085c: 1d        dec   x
085d: d0 f9     bne   $0858
085f: 38 df 47  and   $47,#$df
0862: 8f 6c f2  mov   $f2,#$6c
0865: fa 47 f3  mov   ($f3),($47)       ; set FLG
0868: 8f ff 12  mov   $12,#$ff
;
086b: 3f 28 16  call  $1628
086e: e4 08     mov   a,$08
0870: f0 06     beq   $0878
0872: 3f 0e 0a  call  $0a0e
0875: 8f 00 08  mov   $08,#$00
0878: e4 09     mov   a,$09
087a: f0 06     beq   $0882
087c: 3f 0e 0a  call  $0a0e
087f: 8f 00 09  mov   $09,#$00
0882: fa 30 13  mov   ($13),($30)
0885: fa 12 f6  mov   ($f6),($12)
0888: fa 13 f7  mov   ($f7),($13)
088b: e4 fd     mov   a,$fd
088d: f0 dc     beq   $086b             ; repeat until timer 0 tick
088f: 3f 1f 0b  call  $0b1f
0892: e4 4a     mov   a,$4a
0894: f0 07     beq   $089d
0896: 8b 4a     dec   $4a
0898: d0 03     bne   $089d
089a: 3f 62 14  call  $1462             ; update echo settings
089d: e4 51     mov   a,$51
089f: f0 28     beq   $08c9
08a1: 8b 53     dec   $53
08a3: d0 24     bne   $08c9
08a5: eb 52     mov   y,$52
08a7: f7 50     mov   a,($50)+y         ; offset +0: delta-time
08a9: fc        inc   y
08aa: 68 ff     cmp   a,#$ff
08ac: d0 05     bne   $08b3
; $ff $xx - set offset to $xx, then continue
08ae: f7 50     mov   a,($50)+y
08b0: fd        mov   y,a
08b1: 2f f4     bra   $08a7
; else
08b3: c4 4c     mov   $4c,a
08b5: f7 50     mov   a,($50)+y         ; offset +1: EVOL(L)
08b7: fc        inc   y
08b8: c4 4d     mov   $4d,a
08ba: f7 50     mov   a,($50)+y         ; offset +2: EVOL(R)
08bc: fc        inc   y
08bd: c4 4e     mov   $4e,a
08bf: f7 50     mov   a,($50)+y         ; offset +2: EVOL for mono
08c1: fc        inc   y
08c2: c4 53     mov   $53,a
08c4: cb 52     mov   $52,y
08c6: 3f 62 14  call  $1462             ; update echo settings
08c9: e4 3c     mov   a,$3c
08cb: d0 41     bne   $090e
08cd: e4 32     mov   a,$32
08cf: f0 3d     beq   $090e
08d1: 60        clrc
08d2: 84 33     adc   a,$33
08d4: c4 33     mov   $33,a
08d6: 38 0f 33  and   $33,#$0f
08d9: 9f        xcn   a
08da: 28 0f     and   a,#$0f
08dc: f8 34     mov   x,$34
08de: f0 13     beq   $08f3
08e0: 60        clrc
08e1: 84 30     adc   a,$30
08e3: 90 08     bcc   $08ed
08e5: 8f ff 30  mov   $30,#$ff
08e8: 8f 00 32  mov   $32,#$00
08eb: 2f 21     bra   $090e
08ed: 64 31     cmp   a,$31
08ef: 90 1b     bcc   $090c
08f1: 2f 14     bra   $0907
08f3: 80        setc
08f4: c4 00     mov   $00,a
08f6: e4 30     mov   a,$30
08f8: a4 00     sbc   a,$00
08fa: b0 07     bcs   $0903
08fc: e8 00     mov   a,#$00
08fe: 8f 00 32  mov   $32,#$00
0901: 2f 09     bra   $090c
0903: 64 31     cmp   a,$31
0905: b0 05     bcs   $090c
0907: e4 31     mov   a,$31
0909: 8f 00 32  mov   $32,#$00
090c: c4 30     mov   $30,a
090e: e4 30     mov   a,$30
0910: 80        setc
0911: a4 36     sbc   a,$36             ; master volume (decrease)
0913: b0 02     bcs   $0917
0915: e8 00     mov   a,#$00
0917: c4 35     mov   $35,a
0919: e4 0b     mov   a,$0b
091b: f0 06     beq   $0923
091d: 3f 0e 0a  call  $0a0e
0920: 8f 00 0b  mov   $0b,#$00
0923: e4 0c     mov   a,$0c
0925: f0 06     beq   $092d
0927: 3f 0e 0a  call  $0a0e
092a: 8f 00 0c  mov   $0c,#$00
092d: e4 0d     mov   a,$0d
092f: f0 06     beq   $0937
0931: 3f 0e 0a  call  $0a0e
0934: 8f 00 0d  mov   $0d,#$00
0937: 5f 6b 08  jmp   $086b

093a: e8 3d     mov   a,#$3d
093c: c4 f2     mov   $f2,a
093e: e8 00     mov   a,#$00
0940: c4 f3     mov   $f3,a             ; set NON
0942: e8 4d     mov   a,#$4d
0944: c4 f2     mov   $f2,a
0946: e8 00     mov   a,#$00
0948: c4 f3     mov   $f3,a             ; set EON
094a: e8 2c     mov   a,#$2c
094c: c4 f2     mov   $f2,a
094e: e8 00     mov   a,#$00
0950: c4 f3     mov   $f3,a             ; set EVOL(L)
0952: e8 3c     mov   a,#$3c
0954: c4 f2     mov   $f2,a
0956: e8 00     mov   a,#$00
0958: c4 f3     mov   $f3,a             ; set EVOL(R)
095a: e8 0d     mov   a,#$0d
095c: c4 f2     mov   $f2,a
095e: e8 00     mov   a,#$00
0960: c4 f3     mov   $f3,a             ; set EFB
0962: e8 00     mov   a,#$00
0964: c4 4c     mov   $4c,a
0966: c4 4d     mov   $4d,a
0968: c4 4e     mov   $4e,a
096a: 3f 62 14  call  $1462             ; update echo settings
096d: 8f 82 fa  mov   $fa,#$82
0970: cd 00     mov   x,#$00
0972: 7d        mov   a,x
0973: 9f        xcn   a
0974: 08 07     or    a,#$07
0976: c4 f2     mov   $f2,a
0978: 8f 9c f3  mov   $f3,#$9c          ; set GAIN
097b: 7d        mov   a,x
097c: 9f        xcn   a
097d: 08 05     or    a,#$05
097f: c4 f2     mov   $f2,a
0981: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
0984: e8 7f     mov   a,#$7f
0986: d4 1c     mov   $1c+x,a
0988: 3d        inc   x
0989: c8 08     cmp   x,#$08
098b: d0 e5     bne   $0972
098d: cd 17     mov   x,#$17
098f: e8 00     mov   a,#$00
0991: d5 00 02  mov   $0200+x,a
0994: 1d        dec   x
0995: 10 f8     bpl   $098f
0997: e8 00     mov   a,#$00
0999: c4 3c     mov   $3c,a
099b: c4 32     mov   $32,a
099d: c4 36     mov   $36,a
099f: 8f ff 30  mov   $30,#$ff
09a2: 8f 00 59  mov   $59,#$00
09a5: 6f        ret

09a6: e8 4d     mov   a,#$4d
09a8: c4 f2     mov   $f2,a
09aa: e8 00     mov   a,#$00
09ac: c4 f3     mov   $f3,a             ; set EON
09ae: e8 00     mov   a,#$00
09b0: c4 4c     mov   $4c,a
09b2: c4 4d     mov   $4d,a
09b4: c4 4e     mov   $4e,a
09b6: 3f 62 14  call  $1462             ; update echo settings
09b9: e8 00     mov   a,#$00
09bb: c4 09     mov   $09,a
09bd: c4 0a     mov   $0a,a
09bf: 8f ff 3c  mov   $3c,#$ff
09c2: cd 17     mov   x,#$17
09c4: f5 00 02  mov   a,$0200+x
09c7: 10 05     bpl   $09ce
09c9: 48 c0     eor   a,#$c0
09cb: d5 00 02  mov   $0200+x,a
09ce: 1d        dec   x
09cf: 10 f3     bpl   $09c4
09d1: cd 00     mov   x,#$00
09d3: e8 7f     mov   a,#$7f
09d5: d4 1c     mov   $1c+x,a
09d7: 7d        mov   a,x
09d8: 9f        xcn   a
09d9: 08 07     or    a,#$07
09db: fd        mov   y,a
09dc: cb f2     mov   $f2,y
09de: 8f 9c f3  mov   $f3,#$9c          ; set GAIN
09e1: dc        dec   y
09e2: dc        dec   y
09e3: cb f2     mov   $f2,y
09e5: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
09e8: 3d        inc   x
09e9: c8 08     cmp   x,#$08
09eb: d0 e6     bne   $09d3
09ed: 6f        ret

09ee: e4 3c     mov   a,$3c
09f0: f0 19     beq   $0a0b
09f2: 8f 00 3c  mov   $3c,#$00
09f5: cd 17     mov   x,#$17
09f7: f5 00 02  mov   a,$0200+x
09fa: 28 c0     and   a,#$c0
09fc: 68 40     cmp   a,#$40
09fe: d0 08     bne   $0a08
0a00: f5 00 02  mov   a,$0200+x
0a03: 48 c0     eor   a,#$c0
0a05: d5 00 02  mov   $0200+x,a
0a08: 1d        dec   x
0a09: 10 ec     bpl   $09f7
0a0b: 6f        ret

0a0c: 6f        ret

0a0d: 6f        ret

0a0e: 68 ef     cmp   a,#$ef
0a10: f0 94     beq   $09a6
0a12: 68 ee     cmp   a,#$ee
0a14: f0 d8     beq   $09ee
0a16: 9c        dec   a
0a17: 1c        asl   a
0a18: fd        mov   y,a
0a19: 90 0d     bcc   $0a28
;
0a1b: f6 00 24  mov   a,$2400+y
0a1e: c4 06     mov   $06,a
0a20: fc        inc   y
0a21: f6 00 24  mov   a,$2400+y
0a24: c4 07     mov   $07,a
0a26: 2f 0b     bra   $0a33
; song
0a28: f6 00 23  mov   a,$2300+y
0a2b: c4 06     mov   $06,a
0a2d: fc        inc   y
0a2e: f6 00 23  mov   a,$2300+y
0a31: c4 07     mov   $07,a
; zero track header item index
0a33: 8d 00     mov   y,#$00
; read header for each tracks
0a35: f7 06     mov   a,($06)+y
0a37: 30 d4     bmi   $0a0d             ; break if >= $80 (usually $ff)
0a39: c4 00     mov   $00,a             ; 00 - logical channel # (0..23)
0a3b: fc        inc   y
0a3c: f7 06     mov   a,($06)+y
0a3e: c4 01     mov   $01,a             ; 01 - physical channel # (bit 0-3) + some bits?
0a40: fc        inc   y
0a41: f7 06     mov   a,($06)+y
0a43: c4 02     mov   $02,a             ; 02 - score data address (lo)
0a45: fc        inc   y
0a46: f7 06     mov   a,($06)+y
0a48: c4 03     mov   $03,a             ; 03 - score data address (hi)
0a4a: fc        inc   y
0a4b: 8f 00 04  mov   $04,#$00
0a4e: 3f 53 0a  call  $0a53
0a51: 2f e2     bra   $0a35             ; continue

0a53: f8 00     mov   x,$00
0a55: f5 00 02  mov   a,$0200+x
0a58: 10 1f     bpl   $0a79
0a5a: 28 07     and   a,#$07
0a5c: 5d        mov   x,a
0a5d: f4 1c     mov   a,$1c+x
0a5f: 10 18     bpl   $0a79
0a61: 28 7f     and   a,#$7f
0a63: 64 00     cmp   a,$00
0a65: d0 12     bne   $0a79
0a67: d4 1c     mov   $1c+x,a
0a69: 7d        mov   a,x
0a6a: 9f        xcn   a
0a6b: 08 07     or    a,#$07
0a6d: c4 f2     mov   $f2,a
0a6f: 8f 9c f3  mov   $f3,#$9c          ; set GAIN
0a72: 9c        dec   a
0a73: 9c        dec   a
0a74: c4 f2     mov   $f2,a
0a76: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
0a79: e4 01     mov   a,$01
0a7b: 28 07     and   a,#$07
0a7d: 5d        mov   x,a
0a7e: f4 1c     mov   a,$1c+x
0a80: 28 7f     and   a,#$7f
0a82: 64 00     cmp   a,$00
0a84: b0 10     bcs   $0a96
0a86: 7d        mov   a,x
0a87: 9f        xcn   a
0a88: 08 07     or    a,#$07
0a8a: c4 f2     mov   $f2,a
0a8c: 8f 9c f3  mov   $f3,#$9c          ; set GAIN
0a8f: 9c        dec   a
0a90: 9c        dec   a
0a91: c4 f2     mov   $f2,a
0a93: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
0a96: e4 01     mov   a,$01
0a98: 28 07     and   a,#$07
0a9a: 5d        mov   x,a
0a9b: f4 1c     mov   a,$1c+x
0a9d: 28 7f     and   a,#$7f
0a9f: d4 1c     mov   $1c+x,a
;
0aa1: f8 00     mov   x,$00
0aa3: e4 01     mov   a,$01
0aa5: 08 80     or    a,#$80            ; set live bit
0aa7: d5 00 02  mov   $0200+x,a
0aaa: e4 02     mov   a,$02
0aac: d5 30 02  mov   $0230+x,a         ; voice ptr (lo)
0aaf: e4 03     mov   a,$03
0ab1: d5 48 02  mov   $0248+x,a         ; voice ptr (hi)
0ab4: e8 02     mov   a,#$02            ; key on request
0ab6: d5 18 02  mov   $0218+x,a
0ab9: e8 00     mov   a,#$00
0abb: d5 60 02  mov   $0260+x,a
0abe: d5 78 02  mov   $0278+x,a
0ac1: d5 50 03  mov   $0350+x,a
0ac4: d5 58 04  mov   $0458+x,a
0ac7: d5 88 04  mov   $0488+x,a
0aca: d5 e8 04  mov   $04e8+x,a
0acd: d5 b8 04  mov   $04b8+x,a
0ad0: d5 b0 03  mov   $03b0+x,a
0ad3: d5 00 05  mov   $0500+x,a
0ad6: d5 d8 02  mov   $02d8+x,a
0ad9: d5 98 06  mov   $0698+x,a
0adc: d5 b0 06  mov   $06b0+x,a
0adf: d5 c8 06  mov   $06c8+x,a
0ae2: d5 38 06  mov   $0638+x,a
0ae5: d4 a2     mov   $a2+x,a
0ae7: d5 90 05  mov   $0590+x,a
0aea: d5 a8 02  mov   $02a8+x,a
0aed: d5 f8 06  mov   $06f8+x,a
0af0: e8 02     mov   a,#$02
0af2: d4 5a     mov   $5a+x,a
0af4: 9c        dec   a
0af5: d5 e0 06  mov   $06e0+x,a
0af8: e8 01     mov   a,#$01
0afa: d5 80 03  mov   $0380+x,a
0afd: e8 9c     mov   a,#$9c
0aff: d5 98 03  mov   $0398+x,a
0b02: d5 c0 02  mov   $02c0+x,a
0b05: e8 9f     mov   a,#$9f
0b07: d5 e0 03  mov   $03e0+x,a         ; GAIN
0b0a: e4 04     mov   a,$04
0b0c: d5 60 05  mov   $0560+x,a         ; channel volume
0b0f: e8 0a     mov   a,#$0a
0b11: d5 d8 05  mov   $05d8+x,a
0b14: e8 b6     mov   a,#$b6
0b16: d5 f0 05  mov   $05f0+x,a
0b19: e8 14     mov   a,#$14
0b1b: d5 08 06  mov   $0608+x,a         ; set pan table address ($14b6)
0b1e: 6f        ret

0b1f: 8f 17 24  mov   $24,#$17          ; logical channel # (23 downto 0)
0b22: f8 24     mov   x,$24
0b24: f5 00 02  mov   a,$0200+x
0b27: 10 03     bpl   $0b2c             ; skip if inactive
0b29: 3f 31 0b  call  $0b31
0b2c: 8b 24     dec   $24
0b2e: 10 f2     bpl   $0b22
0b30: 6f        ret

0b31: f5 f8 06  mov   a,$06f8+x
0b34: c4 39     mov   $39,a
0b36: f5 00 02  mov   a,$0200+x
0b39: 28 07     and   a,#$07
0b3b: c4 25     mov   $25,a             ; physical channel #
0b3d: 9f        xcn   a
0b3e: c4 3d     mov   $3d,a             ; mask $x0 for channel X
0b40: f5 18 02  mov   a,$0218+x
0b43: c4 28     mov   $28,a
0b45: 28 01     and   a,#$01            ; set by vcmd ce
0b47: f0 03     beq   $0b4c
0b49: 18 20 28  or    $28,#$20          ; no key on + ADSR update for it
0b4c: 9b 5a     dec   $5a+x             ; decrease wait counter
0b4e: f0 03     beq   $0b53
0b50: 5f 2a 0c  jmp   $0c2a

0b53: f5 30 02  mov   a,$0230+x
0b56: c4 26     mov   $26,a
0b58: f5 48 02  mov   a,$0248+x         ; set voice ptr
0b5b: c4 27     mov   $27,a
0b5d: 8d 00     mov   y,#$00
0b5f: f7 26     mov   a,($26)+y         ; read vcmd
0b61: 10 1f     bpl   $0b82
0b63: 3a 26     incw  $26
0b65: 68 a0     cmp   a,#$a0
0b67: 90 08     bcc   $0b71
0b69: 80        setc
0b6a: a8 c0     sbc   a,#$c0            ; a0-b0 => crash
0b6c: 1c        asl   a
0b6d: 5d        mov   x,a
0b6e: 1f ff 0e  jmp   ($0eff+x)

; vcmd 80-9f - noise note
0b71: f8 24     mov   x,$24
0b73: d5 a8 02  mov   $02a8+x,a         ; save note number (negative)
0b76: e8 00     mov   a,#$00
0b78: d5 90 02  mov   $0290+x,a
0b7b: e8 ff     mov   a,#$ff
0b7d: d5 c0 02  mov   $02c0+x,a
0b80: 2f 59     bra   $0bdb
; vcmd 00-7f - note
0b82: f8 24     mov   x,$24
0b84: c4 00     mov   $00,a             ; vcmd as note number
0b86: e4 28     mov   a,$28
0b88: 28 08     and   a,#$08
0b8a: f0 39     beq   $0bc5             ; dispatch note byte
0b8c: e4 00     mov   a,$00
0b8e: 1c        asl   a
0b8f: fd        mov   y,a
0b90: f5 18 05  mov   a,$0518+x
0b93: c4 00     mov   $00,a
0b95: f5 30 05  mov   a,$0530+x         ; load table address
0b98: c4 01     mov   $01,a
0b9a: f7 00     mov   a,($00)+y
0b9c: c4 02     mov   $02,a             ; voice ptr (lo)
0b9e: fc        inc   y
0b9f: f7 00     mov   a,($00)+y
0ba1: c4 03     mov   $03,a             ; voice ptr (hi)
0ba3: f5 48 05  mov   a,$0548+x
0ba6: c4 00     mov   $00,a             ; note byte
0ba8: f5 00 02  mov   a,$0200+x
0bab: 28 1f     and   a,#$1f
0bad: c4 01     mov   $01,a
0baf: f5 60 05  mov   a,$0560+x         ; channel volume
0bb2: c4 04     mov   $04,a
0bb4: f5 d8 05  mov   a,$05d8+x
0bb7: c4 05     mov   $05,a
0bb9: 3f a1 0a  call  $0aa1             ; reset voice
0bbc: 8d 00     mov   y,#$00
0bbe: f8 24     mov   x,$24
0bc0: 18 20 28  or    $28,#$20
0bc3: 2f 14     bra   $0bd9
; dispatch note byte
0bc5: e4 00     mov   a,$00
0bc7: 60        clrc
0bc8: 95 60 02  adc   a,$0260+x         ; channel transpose
0bcb: d5 a8 02  mov   $02a8+x,a         ; save note number (integer)
0bce: f5 78 02  mov   a,$0278+x
0bd1: d5 90 02  mov   $0290+x,a         ; save note number (fraction)
0bd4: e8 ff     mov   a,#$ff
0bd6: d5 c0 02  mov   $02c0+x,a
0bd9: 3a 26     incw  $26               ; skip note byte itself
; dispatch note
0bdb: f8 24     mov   x,$24
0bdd: 8d 00     mov   y,#$00
0bdf: 3f e7 13  call  $13e7             ; read delta-time
0be2: 3f f9 13  call  $13f9             ; read duration
0be5: 3f 17 14  call  $1417             ; readahead for slur/tie
0be8: f8 24     mov   x,$24
0bea: e4 26     mov   a,$26
0bec: d5 30 02  mov   $0230+x,a
0bef: e4 27     mov   a,$27
0bf1: d5 48 02  mov   $0248+x,a         ; write current voice ptr back
0bf4: e4 28     mov   a,$28
0bf6: 28 20     and   a,#$20
0bf8: d0 30     bne   $0c2a
; start new note
; if GAIN envelope address ($03f8+x/$0410+x) == 0x00nn, the engine does not run the envelope and use ADSR values
; if GAIN envelope address ($03f8+x/$0410+x) != 0x00nn, the engine start running the envelope and updates GAIN frequently
; if delta-time counter equals to $04a0+x, the engine switches GAIN envelope address to another one
; if delta-time counter equals to $0368+x, the engine writes to constant GAIN value and invalidate GAIN envelope
; GAIN envelope address can also be changed by vcmd ee/ef
; it is extremely complexed, be careful...
0bfa: 18 02 28  or    $28,#$02          ; request key on
0bfd: f5 b0 03  mov   a,$03b0+x
0c00: 08 80     or    a,#$80            ; ADSR mode
0c02: d5 b0 03  mov   $03b0+x,a         ; ADSR(1)
0c05: e4 28     mov   a,$28
0c07: 28 80     and   a,#$80
0c09: f0 09     beq   $0c14             ; load table address if GAIN mode, else invalidate the table address
0c0b: f5 40 04  mov   a,$0440+x         ; GAIN envelope table address for key on
0c0e: d5 f8 03  mov   $03f8+x,a
0c11: f5 58 04  mov   a,$0458+x
0c14: d5 10 04  mov   $0410+x,a
0c17: e8 00     mov   a,#$00
0c19: d5 28 04  mov   $0428+x,a         ; zero GAIN envelope offset
0c1c: e8 01     mov   a,#$01
0c1e: d4 72     mov   $72+x,a
0c20: e8 00     mov   a,#$00
0c22: d5 20 03  mov   $0320+x,a
0c25: f5 38 03  mov   a,$0338+x
0c28: d4 8a     mov   $8a+x,a
;
0c2a: e4 28     mov   a,$28
0c2c: 28 02     and   a,#$02            ; key on request
0c2e: c4 38     mov   $38,a
0c30: f8 24     mov   x,$24
0c32: f5 d8 05  mov   a,$05d8+x
0c35: c4 2c     mov   $2c,a             ; load pan value to $2c
0c37: f5 f0 05  mov   a,$05f0+x
0c3a: c4 2d     mov   $2d,a
0c3c: f5 08 06  mov   a,$0608+x
0c3f: c4 2e     mov   $2e,a             ; load pan table address
0c41: f5 38 06  mov   a,$0638+x
0c44: f0 23     beq   $0c69
;
0c46: 9b a2     dec   $a2+x             ; pan envelope delta-time
0c48: d0 1f     bne   $0c69
0c4a: fd        mov   y,a
0c4b: f5 20 06  mov   a,$0620+x         ; envelope address
0c4e: da 26     movw  $26,ya
0c50: f5 50 06  mov   a,$0650+x         ; envelope offset
0c53: fd        mov   y,a
0c54: f7 26     mov   a,($26)+y         ; offset +0: pan
0c56: 10 05     bpl   $0c5d
0c58: fc        inc   y
; $ff(80-ff) $xx: set offset to $xx, then continue
0c59: f7 26     mov   a,($26)+y
0c5b: 2f f6     bra   $0c53
; set pan from envelope
0c5d: c4 2c     mov   $2c,a
0c5f: fc        inc   y
0c60: dd        mov   a,y
0c61: d5 50 06  mov   $0650+x,a
0c64: f5 68 06  mov   a,$0668+x         ; read envelope speed (in tick)
0c67: d4 a2     mov   $a2+x,a
;
0c69: f5 60 05  mov   a,$0560+x         ; channel volume
0c6c: c4 2b     mov   $2b,a
0c6e: f5 90 05  mov   a,$0590+x
0c71: f0 6e     beq   $0ce1             ; skip if volume envelope address is invalid
0c73: 9b ba     dec   $ba+x             ; decrease delta-time counter for the volume envelope
0c75: d0 45     bne   $0cbc             ; skip if not 0
; dispatch channel volume envelope sequence
0c77: fd        mov   y,a
0c78: f5 78 05  mov   a,$0578+x
0c7b: da 26     movw  $26,ya
0c7d: 8d 00     mov   y,#$00
0c7f: f7 26     mov   a,($26)+y         ; offset +0: volume
0c81: d5 60 05  mov   $0560+x,a         ; channel volume
0c84: c4 2b     mov   $2b,a
0c86: 3a 26     incw  $26
0c88: f7 26     mov   a,($26)+y
0c8a: 04 2b     or    a,$2b
0c8c: d0 0d     bne   $0c9b
; $00 $00 $xx $yy: goto $yyxx
0c8e: fc        inc   y
0c8f: f7 26     mov   a,($26)+y
0c91: c4 00     mov   $00,a
0c93: fc        inc   y
0c94: f7 26     mov   a,($26)+y
0c96: fd        mov   y,a
0c97: e4 00     mov   a,$00
0c99: 2f e0     bra   $0c7b
;
0c9b: f7 26     mov   a,($26)+y         ; offset +1: envelope depth (volume delta)
0c9d: d5 a8 05  mov   $05a8+x,a
0ca0: 3a 26     incw  $26
0ca2: f7 26     mov   a,($26)+y         ; offset +2: envelope speed (in tick)
0ca4: d4 d2     mov   $d2+x,a
0ca6: d5 c0 05  mov   $05c0+x,a
0ca9: 3a 26     incw  $26
0cab: f7 26     mov   a,($26)+y         ; offset +3: delta-time
0cad: d4 ba     mov   $ba+x,a
0caf: 3a 26     incw  $26
0cb1: ba 26     movw  ya,$26
0cb3: d5 78 05  mov   $0578+x,a
0cb6: dd        mov   a,y
0cb7: d5 90 05  mov   $0590+x,a
0cba: 2f 25     bra   $0ce1
;
0cbc: 9b d2     dec   $d2+x
0cbe: d0 21     bne   $0ce1
0cc0: f5 c0 05  mov   a,$05c0+x
0cc3: d4 d2     mov   $d2+x,a
0cc5: f5 a8 05  mov   a,$05a8+x
0cc8: 30 09     bmi   $0cd3
; increase volume
0cca: 60        clrc
0ccb: 84 2b     adc   a,$2b
0ccd: 90 0d     bcc   $0cdc
0ccf: e8 ff     mov   a,#$ff
0cd1: 2f 09     bra   $0cdc
; decrease volume
0cd3: 60        clrc
0cd4: 84 2b     adc   a,$2b
0cd6: 64 2b     cmp   a,$2b
0cd8: 90 02     bcc   $0cdc
0cda: e8 00     mov   a,#$00
0cdc: c4 2b     mov   $2b,a
0cde: d5 60 05  mov   $0560+x,a         ; channel volume
0ce1: f8 25     mov   x,$25
0ce3: e4 24     mov   a,$24
0ce5: 74 1c     cmp   a,$1c+x
0ce7: f0 12     beq   $0cfb
0ce9: 08 80     or    a,#$80
0ceb: 74 1c     cmp   a,$1c+x
0ced: b0 03     bcs   $0cf2
0cef: 5f ec 0e  jmp   $0eec

0cf2: f0 0b     beq   $0cff
0cf4: eb 38     mov   y,$38
0cf6: f0 f7     beq   $0cef
0cf8: 8f ff 39  mov   $39,#$ff
0cfb: 08 80     or    a,#$80
0cfd: d4 1c     mov   $1c+x,a
0cff: f8 24     mov   x,$24
0d01: f5 e0 06  mov   a,$06e0+x
0d04: f0 07     beq   $0d0d
0d06: 9c        dec   a
0d07: d5 e0 06  mov   $06e0+x,a
0d0a: 5f ec 0e  jmp   $0eec

0d0d: eb 25     mov   y,$25             ; physical channel #
0d0f: e4 28     mov   a,$28
0d11: 28 40     and   a,#$40
0d13: f0 07     beq   $0d1c
; enable channel echo
0d15: f6 cf 15  mov   a,$15cf+y
0d18: 04 48     or    a,$48
0d1a: 2f 07     bra   $0d23
; disable channel echo
0d1c: f6 cf 15  mov   a,$15cf+y
0d1f: 48 ff     eor   a,#$ff
0d21: 24 48     and   a,$48
;
0d23: 8f 4d f2  mov   $f2,#$4d
0d26: c4 f3     mov   $f3,a             ; set EON
0d28: c4 48     mov   $48,a
0d2a: f8 24     mov   x,$24
0d2c: f5 00 02  mov   a,$0200+x
0d2f: 28 10     and   a,#$10
0d31: f0 07     beq   $0d3a
0d33: eb 2b     mov   y,$2b
0d35: e4 35     mov   a,$35
0d37: cf        mul   ya
0d38: cb 2b     mov   $2b,y
0d3a: e4 2c     mov   a,$2c
0d3c: d5 d8 05  mov   $05d8+x,a
0d3f: 3f 8a 14  call  $148a
0d42: eb 3d     mov   y,$3d
0d44: cb f2     mov   $f2,y
0d46: fa 3e f3  mov   ($f3),($3e)       ; set VOL(L)
0d49: fc        inc   y
0d4a: cb f2     mov   $f2,y
0d4c: fa 3f f3  mov   ($f3),($3f)       ; set VOL(R)
0d4f: f8 24     mov   x,$24
0d51: f5 90 02  mov   a,$0290+x
0d54: c4 29     mov   $29,a             ; note number (fraction)
0d56: f5 a8 02  mov   a,$02a8+x
0d59: c4 2a     mov   $2a,a             ; note number (integer)
0d5b: f5 50 03  mov   a,$0350+x
0d5e: c4 42     mov   $42,a             ; SRCN
0d60: f5 c0 02  mov   a,$02c0+x
0d63: 30 3a     bmi   $0d9f
0d65: c4 01     mov   $01,a
0d67: f5 78 02  mov   a,$0278+x
0d6a: c4 00     mov   $00,a
0d6c: f4 5a     mov   a,$5a+x
0d6e: 5d        mov   x,a
0d6f: ba 00     movw  ya,$00
0d71: 9a 29     subw  ya,$29
0d73: f0 2a     beq   $0d9f
0d75: 10 17     bpl   $0d8e
0d77: ba 29     movw  ya,$29
0d79: 9a 00     subw  ya,$00
0d7b: c4 00     mov   $00,a
0d7d: dd        mov   a,y
0d7e: 8d 00     mov   y,#$00
0d80: 9e        div   ya,x
0d81: c4 01     mov   $01,a
0d83: e4 00     mov   a,$00
0d85: 9e        div   ya,x
0d86: c4 00     mov   $00,a
0d88: ba 29     movw  ya,$29
0d8a: 9a 00     subw  ya,$00
0d8c: 2f 0f     bra   $0d9d
0d8e: c4 00     mov   $00,a
0d90: dd        mov   a,y
0d91: 8d 00     mov   y,#$00
0d93: 9e        div   ya,x
0d94: c4 01     mov   $01,a
0d96: e4 00     mov   a,$00
0d98: 9e        div   ya,x
0d99: eb 01     mov   y,$01
0d9b: 7a 29     addw  ya,$29
0d9d: da 29     movw  $29,ya
0d9f: f8 24     mov   x,$24
0da1: 8d 00     mov   y,#$00
0da3: f5 d8 02  mov   a,$02d8+x
0da6: 10 02     bpl   $0daa
0da8: 8d ff     mov   y,#$ff
0daa: da 00     movw  $00,ya
0dac: ba 29     movw  ya,$29
0dae: 7a 00     addw  ya,$00
0db0: 7a 00     addw  ya,$00
0db2: da 29     movw  $29,ya
0db4: e4 29     mov   a,$29             ; note number (fraction)
0db6: d5 90 02  mov   $0290+x,a
0db9: e4 2a     mov   a,$2a             ; note number (integer)
0dbb: d5 a8 02  mov   $02a8+x,a
0dbe: e4 28     mov   a,$28
0dc0: 28 04     and   a,#$04            ; LFO
0dc2: f0 33     beq   $0df7
0dc4: 9b 8a     dec   $8a+x
0dc6: d0 2f     bne   $0df7
0dc8: f5 08 03  mov   a,$0308+x
0dcb: c4 27     mov   $27,a
0dcd: f5 f0 02  mov   a,$02f0+x
0dd0: c4 26     mov   $26,a
0dd2: f5 20 03  mov   a,$0320+x
0dd5: fd        mov   y,a
0dd6: f7 26     mov   a,($26)+y
0dd8: fc        inc   y
0dd9: 68 80     cmp   a,#$80
0ddb: d0 04     bne   $0de1
0ddd: f7 26     mov   a,($26)+y
0ddf: 2f f4     bra   $0dd5
0de1: c4 00     mov   $00,a
0de3: dd        mov   a,y
0de4: d5 20 03  mov   $0320+x,a
0de7: e8 01     mov   a,#$01
0de9: d4 8a     mov   $8a+x,a
0deb: 8d 00     mov   y,#$00
0ded: e4 00     mov   a,$00
0def: 10 02     bpl   $0df3
0df1: 8d ff     mov   y,#$ff
0df3: 7a 29     addw  ya,$29
0df5: da 29     movw  $29,ya            ; note number (fraction/integer)
0df7: e4 2a     mov   a,$2a
0df9: 10 17     bpl   $0e12
; noise note
0dfb: 28 1f     and   a,#$1f            ; frequency from note number
0dfd: 38 e0 47  and   $47,#$e0
0e00: 04 47     or    a,$47
0e02: c4 47     mov   $47,a
0e04: 8f 6c f2  mov   $f2,#$6c
0e07: c4 f3     mov   $f3,a             ; set FLG
0e09: eb 25     mov   y,$25
0e0b: f6 cf 15  mov   a,$15cf+y
0e0e: 04 49     or    a,$49             ; set NON bit
0e10: 2f 1b     bra   $0e2d
; regular note
0e12: 3f e0 14  call  $14e0             ; calculate note pitch
0e15: e4 3d     mov   a,$3d
0e17: 08 02     or    a,#$02
0e19: c4 f2     mov   $f2,a
0e1b: fa 40 f3  mov   ($f3),($40)       ; set P(L)
0e1e: bc        inc   a
0e1f: c4 f2     mov   $f2,a
0e21: fa 41 f3  mov   ($f3),($41)       ; set P(H)
0e24: eb 25     mov   y,$25
0e26: f6 cf 15  mov   a,$15cf+y
0e29: 48 ff     eor   a,#$ff
0e2b: 24 49     and   a,$49             ; clear NON bit
;
0e2d: c4 49     mov   $49,a
0e2f: 8f 3d f2  mov   $f2,#$3d
0e32: c4 f3     mov   $f3,a             ; set NON
0e34: f8 24     mov   x,$24
0e36: f5 f8 06  mov   a,$06f8+x
0e39: 04 39     or    a,$39
0e3b: f0 0d     beq   $0e4a
0e3d: e4 3d     mov   a,$3d
0e3f: 08 04     or    a,#$04
0e41: c4 f2     mov   $f2,a
0e43: fa 42 f3  mov   ($f3),($42)       ; set SRCN
0e46: e8 00     mov   a,#$00
0e48: c4 39     mov   $39,a
0e4a: f5 b0 03  mov   a,$03b0+x         ; ADSR(1)
0e4d: c4 43     mov   $43,a    
0e4f: f5 c8 03  mov   a,$03c8+x         ; ADSR(2)
0e52: c4 44     mov   $44,a
0e54: f5 e0 03  mov   a,$03e0+x         ; GAIN
0e57: c4 45     mov   $45,a
0e59: f5 68 03  mov   a,$0368+x
0e5c: 74 5a     cmp   a,$5a+x
0e5e: d0 0f     bne   $0e6f
; load constant GAIN value while wait counter == $0368+x (release?)
0e60: f5 98 03  mov   a,$0398+x
0e63: c4 45     mov   $45,a             ; set GAIN from vcmd f0
0e65: 38 7f 43  and   $43,#$7f          ; GAIN mode
0e68: e8 00     mov   a,#$00
0e6a: d5 10 04  mov   $0410+x,a         ; invalidate GAIN envelope
0e6d: 2f 4b     bra   $0eba
; when wait counter != $0368+x:
0e6f: f5 a0 04  mov   a,$04a0+x
0e72: 74 5a     cmp   a,$5a+x
0e74: d0 15     bne   $0e8b
; and when wait counter == $04a0+x: start GAIN envelope #2
0e76: f5 70 04  mov   a,$0470+x
0e79: d5 f8 03  mov   $03f8+x,a
0e7c: f5 88 04  mov   a,$0488+x
0e7f: d5 10 04  mov   $0410+x,a         ; change GAIN envelope table address
0e82: e8 00     mov   a,#$00
0e84: d5 28 04  mov   $0428+x,a         ; zero offset
0e87: e8 01     mov   a,#$01
0e89: d4 72     mov   $72+x,a           ; delta-time counter for GAIN envelope table
; dispatch GAIN envelope sequence
0e8b: f5 10 04  mov   a,$0410+x
0e8e: f0 2a     beq   $0eba             ; skip if invalid GAIN table address
0e90: 9b 72     dec   $72+x             ; decrease wait counter for GAIN envelope
0e92: d0 26     bne   $0eba
; read new byte
0e94: c4 27     mov   $27,a
0e96: f5 f8 03  mov   a,$03f8+x         ; load table address
0e99: c4 26     mov   $26,a
0e9b: f5 28 04  mov   a,$0428+x         ; GAIN envelope offset
0e9e: fd        mov   y,a
0e9f: f7 26     mov   a,($26)+y         ; offset +0
0ea1: 68 ff     cmp   a,#$ff
0ea3: d0 06     bne   $0eab
; $ff $xx - set GAIN envelope offset to xx, then continue
0ea5: fc        inc   y
0ea6: f7 26     mov   a,($26)+y         ; offset +1
0ea8: fd        mov   y,a
0ea9: 2f f4     bra   $0e9f             ; continue
; or read new GAIN value
0eab: c4 45     mov   $45,a             ; GAIN
0ead: fc        inc   y
0eae: f7 26     mov   a,($26)+y         ; offset +1
0eb0: d4 72     mov   $72+x,a
0eb2: fc        inc   y
0eb3: dd        mov   a,y
0eb4: d5 28 04  mov   $0428+x,a         ; update GAIN envelope offset
0eb7: 38 7f 43  and   $43,#$7f          ; GAIN mode
; write ADSR/GAIN to dsp and shadows
0eba: e4 43     mov   a,$43
0ebc: d5 b0 03  mov   $03b0+x,a         ; ADSR(1)
0ebf: e4 44     mov   a,$44
0ec1: d5 c8 03  mov   $03c8+x,a         ; ADSR(2)
0ec4: e4 45     mov   a,$45
0ec6: d5 e0 03  mov   $03e0+x,a         ; GAIN
0ec9: e4 3d     mov   a,$3d
0ecb: 08 07     or    a,#$07
0ecd: c4 f2     mov   $f2,a
0ecf: fa 45 f3  mov   ($f3),($45)       ; set GAIN
0ed2: 9c        dec   a
0ed3: c4 f2     mov   $f2,a
0ed5: fa 44 f3  mov   ($f3),($44)       ; set ADSR(2)
0ed8: 9c        dec   a
0ed9: c4 f2     mov   $f2,a
0edb: fa 43 f3  mov   ($f3),($43)       ; set ADSR(1)
0ede: e4 38     mov   a,$38
0ee0: f0 0a     beq   $0eec
0ee2: eb 25     mov   y,$25
0ee4: f6 cf 15  mov   a,$15cf+y
0ee7: 8f 4c f2  mov   $f2,#$4c
0eea: c4 f3     mov   $f3,a             ; set KON
0eec: f8 24     mov   x,$24
0eee: e4 28     mov   a,$28
0ef0: 28 df     and   a,#$df            ; kill $20
0ef2: 28 fd     and   a,#$fd            ; kill key on request
0ef4: d5 18 02  mov   $0218+x,a
0ef7: e4 39     mov   a,$39
0ef9: d5 f8 06  mov   $06f8+x,a
0efc: 5f 2c 0b  jmp   $0b2c

; vcmd dispatch table
0eff: dw $0f7f  ; c0 - tempo (set timer 0 freq)
0f01: dw $0f7f  ; c1 - tempo (set timer 0 freq)
0f03: dw $0f7f  ; c2 - tempo (set timer 0 freq)
0f05: dw $0f7f  ; c3 - tempo (set timer 0 freq)
0f07: dw $0f7f  ; c4 - tempo (set timer 0 freq)
0f09: dw $0f88  ; c5 - conditional jump (flag)
0f0b: dw $0f96  ; c6 - set condition (flag)
0f0d: dw $0f9c  ; c7 - master volume (increase)?
0f0f: dw $0fa8  ; c8 - unknown.2
0f11: dw $0fbd  ; c9 - unknown.2
0f13: dw $0fd2  ; ca - restore echo param
0f15: dw $0ff1  ; cb - save echo param
0f17: dw $1006  ; cc - master volume (decrease)?
0f19: dw $100f  ; cd - slur off?
0f1b: dw $1015  ; ce - slur on?
0f1d: dw $101e  ; cf - channel volume envelope
0f1f: dw $1035  ; d0 - default pan table #1
0f21: dw $1044  ; d1 - default pan table #2
0f23: dw $1053  ; d2 - unknown.0 (on/off switch)
0f25: dw $1059  ; d3 - increment APU port #3 value
0f27: dw $105e  ; d4 - increment APU port #2 value
0f29: dw $1063  ; d5 - start song playback type-2
0f2b: dw $106c  ; d6 - start song playback type-1
0f2d: dw $1075  ; d7 - start song playback type-0
0f2f: dw $107e  ; d8 - transpose (relative)
0f31: dw $108e  ; d9 - pan envelope
0f33: dw $10b1  ; da - pan table address
0f35: dw $10c4  ; db - nop (take 2 byte params)
0f37: dw $10cb  ; dc - default note length off
0f39: dw $10d5  ; dd - default note length
0f3b: dw $10e1  ; de - repeat until
0f3d: dw $110a  ; df - repeat until (alternative)
0f3f: dw $1133  ; e0 - end subroutine
0f41: dw $1149  ; e1 - subroutine
0f43: dw $116a  ; e2 - goto
0f45: dw $1177  ; e3 - transpose (absolute)
0f47: dw $1183  ; e4 - tuning
0f49: dw $118f  ; e5 - vibrato delay
0f4b: dw $119e  ; e6 - vibrato off
0f4d: dw $11a4  ; e7 - vibrato
0f4f: dw $11c1  ; e8 - unknown.1
0f51: dw $11d2  ; e9 - unknown.2
0f53: dw $11fc  ; ea - volume (relative)
0f55: dw $1228  ; eb - pan
0f57: dw $1239  ; ec - volume
0f59: dw $124a  ; ed - unknown.3
0f5b: dw $126f  ; ee - tie
0f5d: dw $1292  ; ef - envelope address for tie
0f5f: dw $12a5  ; f0 - unknown.2
0f61: dw $12ba  ; f1 - auto duration off
0f63: dw $12c0  ; f2 - auto duration on
0f65: dw $12c6  ; f3 - auto duration threshold
0f67: dw $12d5  ; f4 - unknown.0 (on/off switch)
0f69: dw $12db  ; f5 - unknown.0 (on/off switch)
0f6b: dw $12e1  ; f6 - envelope address #2
0f6d: dw $12f4  ; f7 - echo volume envelope address
0f6f: dw $1309  ; f8 - echo volume
0f71: dw $1324  ; f9 - echo off
0f73: dw $132a  ; fa - echo on
0f75: dw $1330  ; fb - echo param
0f77: dw $135d  ; fc - ADSR
0f79: dw $138d  ; fd - envelope address #1
0f7b: dw $13a3  ; fe - instrument
0f7d: dw $13c2  ; ff - unknown.0

; vcmd c0-c4 - tempo (set timer 0 freq)
0f7f: f7 26     mov   a,($26)+y
0f81: c4 fa     mov   $fa,a
0f83: 3a 26     incw  $26
0f85: 5f 5d 0b  jmp   $0b5d

; vcmd c5 - conditional jump (flag)
0f88: e4 59     mov   a,$59
0f8a: f0 03     beq   $0f8f
0f8c: 5f 6a 11  jmp   $116a
0f8f: 3a 26     incw  $26
0f91: 3a 26     incw  $26
0f93: 5f 5d 0b  jmp   $0b5d

; vcmd c6 - set condition (flag)
0f96: 8f ff 59  mov   $59,#$ff
0f99: 5f 5d 0b  jmp   $0b5d

; vcmd c7 - master volume (increase)?
0f9c: f7 26     mov   a,($26)+y
0f9e: c4 30     mov   $30,a
0fa0: 3a 26     incw  $26
0fa2: 8f 00 32  mov   $32,#$00
0fa5: 5f 5d 0b  jmp   $0b5d

; vcmd c8
0fa8: f7 26     mov   a,($26)+y
0faa: c4 31     mov   $31,a             ; volume threshold?
0fac: 3a 26     incw  $26
0fae: f7 26     mov   a,($26)+y
0fb0: c4 32     mov   $32,a
0fb2: 3a 26     incw  $26
0fb4: 8f 00 34  mov   $34,#$00
0fb7: 8f 00 33  mov   $33,#$00
0fba: 5f 5d 0b  jmp   $0b5d

; vcmd c9
0fbd: f7 26     mov   a,($26)+y
0fbf: c4 31     mov   $31,a
0fc1: 3a 26     incw  $26
0fc3: f7 26     mov   a,($26)+y
0fc5: c4 32     mov   $32,a
0fc7: 3a 26     incw  $26
0fc9: 8f 01 34  mov   $34,#$01
0fcc: 8f 00 33  mov   $33,#$00
0fcf: 5f 5d 0b  jmp   $0b5d

; vcmd ca - restore echo param
0fd2: e4 54     mov   a,$54
0fd4: f0 18     beq   $0fee
0fd6: fa 55 4c  mov   ($4c),($55)
0fd9: fa 56 4d  mov   ($4d),($56)
0fdc: fa 57 4e  mov   ($4e),($57)
0fdf: fa 58 4f  mov   ($4f),($58)
0fe2: 8f 0d f2  mov   $f2,#$0d
0fe5: fa 4f f3  mov   ($f3),($4f)       ; set EFB
0fe8: 3f 62 14  call  $1462             ; update echo settings
0feb: 8f 00 54  mov   $54,#$00
0fee: 5f 5d 0b  jmp   $0b5d

; vcmd cb - save echo param
0ff1: e4 54     mov   a,$54
0ff3: d0 0e     bne   $1003
0ff5: fa 4c 55  mov   ($55),($4c)
0ff8: fa 4d 56  mov   ($56),($4d)
0ffb: fa 4e 57  mov   ($57),($4e)
0ffe: fa 4f 58  mov   ($58),($4f)
1001: 8b 54     dec   $54
1003: 5f 5d 0b  jmp   $0b5d

; vcmd cc - master volume (decrease)?
1006: f7 26     mov   a,($26)+y
1008: c4 36     mov   $36,a
100a: 3a 26     incw  $26
100c: 5f 5d 0b  jmp   $0b5d

; vcmd cd - slur off?
100f: 38 fe 28  and   $28,#$fe
1012: 5f 5d 0b  jmp   $0b5d

; vcmd ce - slur on?
1015: 18 01 28  or    $28,#$01
1018: 18 20 28  or    $28,#$20
101b: 5f 5d 0b  jmp   $0b5d

; vcmd cf - channel volume envelope
101e: f8 24     mov   x,$24
1020: f7 26     mov   a,($26)+y
1022: d5 78 05  mov   $0578+x,a
1025: 3a 26     incw  $26
1027: f7 26     mov   a,($26)+y
1029: d5 90 05  mov   $0590+x,a         ; arg1/2: envelope address
102c: 3a 26     incw  $26
102e: e8 01     mov   a,#$01
1030: d4 ba     mov   $ba+x,a
1032: 5f 5d 0b  jmp   $0b5d

; vcmd d0 - default pan table #1
1035: f8 24     mov   x,$24
1037: e8 cb     mov   a,#$cb
1039: d5 f0 05  mov   $05f0+x,a
103c: e8 14     mov   a,#$14
103e: d5 08 06  mov   $0608+x,a         ; $14cb
1041: 5f 5d 0b  jmp   $0b5d

; vcmd d1 - default pan table #2
1044: f8 24     mov   x,$24
1046: e8 b6     mov   a,#$b6
1048: d5 f0 05  mov   $05f0+x,a
104b: e8 14     mov   a,#$14
104d: d5 08 06  mov   $0608+x,a         ; set pan table address ($14b6)
1050: 5f 5d 0b  jmp   $0b5d

; vcmd d2
1053: 38 f7 28  and   $28,#$f7
1056: 5f 5d 0b  jmp   $0b5d

; vcmd d3 - increment APU port #3 value
1059: ab 13     inc   $13
105b: 5f 5d 0b  jmp   $0b5d

; vcmd d4 - increment APU port #2 value
105e: ab 12     inc   $12
1060: 5f 5d 0b  jmp   $0b5d

; vcmd d5 - start song playback type-2
1063: f7 26     mov   a,($26)+y
1065: c4 0d     mov   $0d,a
1067: 3a 26     incw  $26
1069: 5f 5d 0b  jmp   $0b5d

; vcmd d6 - start song playback type-1
106c: f7 26     mov   a,($26)+y
106e: c4 0c     mov   $0c,a
1070: 3a 26     incw  $26
1072: 5f 5d 0b  jmp   $0b5d

; vcmd d7 - start song playback type-0
1075: f7 26     mov   a,($26)+y
1077: c4 0b     mov   $0b,a
1079: 3a 26     incw  $26
107b: 5f 5d 0b  jmp   $0b5d

; vcmd d8 - transpose (relative)
107e: f8 24     mov   x,$24
1080: f7 26     mov   a,($26)+y
1082: 60        clrc
1083: 95 60 02  adc   a,$0260+x
1086: d5 60 02  mov   $0260+x,a
1089: 3a 26     incw  $26
108b: 5f 5d 0b  jmp   $0b5d

; vcmd d9 - pan envelope
108e: f8 24     mov   x,$24
1090: f7 26     mov   a,($26)+y
1092: d5 20 06  mov   $0620+x,a         ; pan envelope address (lo)
1095: 3a 26     incw  $26
1097: f7 26     mov   a,($26)+y
1099: d5 38 06  mov   $0638+x,a         ; pan envelope address (hi)
109c: 3a 26     incw  $26
109e: f7 26     mov   a,($26)+y
10a0: d5 68 06  mov   $0668+x,a         ; pan envelope speed
10a3: e8 01     mov   a,#$01
10a5: d4 a2     mov   $a2+x,a
10a7: e8 00     mov   a,#$00
10a9: d5 50 06  mov   $0650+x,a
10ac: 3a 26     incw  $26
10ae: 5f 5d 0b  jmp   $0b5d

; vcmd da - pan table address
10b1: f8 24     mov   x,$24
10b3: f7 26     mov   a,($26)+y
10b5: d5 f0 05  mov   $05f0+x,a
10b8: 3a 26     incw  $26
10ba: f7 26     mov   a,($26)+y
10bc: d5 08 06  mov   $0608+x,a
10bf: 3a 26     incw  $26
10c1: 5f 5d 0b  jmp   $0b5d

; vcmd db - nop (take 2 byte params)
10c4: 3a 26     incw  $26
10c6: 3a 26     incw  $26
10c8: 5f 5d 0b  jmp   $0b5d

; vcmd dc - default note length off
10cb: f8 24     mov   x,$24
10cd: e8 00     mov   a,#$00
10cf: d5 00 05  mov   $0500+x,a
10d2: 5f 5d 0b  jmp   $0b5d

; vcmd dd - default note length
10d5: f8 24     mov   x,$24
10d7: f7 26     mov   a,($26)+y
10d9: d5 00 05  mov   $0500+x,a
10dc: 3a 26     incw  $26
10de: 5f 5d 0b  jmp   $0b5d

; vcmd de - repeat until
10e1: f8 24     mov   x,$24
10e3: f5 c8 06  mov   a,$06c8+x
10e6: f0 0f     beq   $10f7
10e8: 9c        dec   a
10e9: d0 0e     bne   $10f9
; finish - skip all arguments
10eb: d5 c8 06  mov   $06c8+x,a
10ee: 3a 26     incw  $26
10f0: 3a 26     incw  $26
10f2: 3a 26     incw  $26
10f4: 5f 5d 0b  jmp   $0b5d
; first time - get repeat count
10f7: f7 26     mov   a,($26)+y
10f9: d5 c8 06  mov   $06c8+x,a         ; arg1 - repeat cuont
; goto
10fc: fc        inc   y
10fd: f7 26     mov   a,($26)+y
10ff: 5d        mov   x,a
1100: fc        inc   y
1101: f7 26     mov   a,($26)+y         ; arg2/3 - destination address
1103: c4 27     mov   $27,a
1105: d8 26     mov   $26,x
1107: 5f 5d 0b  jmp   $0b5d

; vcmd df - repeat until (alternative)
110a: f8 24     mov   x,$24
110c: f5 b0 06  mov   a,$06b0+x
110f: f0 0f     beq   $1120
1111: 9c        dec   a
1112: d0 0e     bne   $1122
; finish - skip all arguments
1114: d5 b0 06  mov   $06b0+x,a
1117: 3a 26     incw  $26
1119: 3a 26     incw  $26
111b: 3a 26     incw  $26
111d: 5f 5d 0b  jmp   $0b5d
; first time - get repeat count
1120: f7 26     mov   a,($26)+y
1122: d5 b0 06  mov   $06b0+x,a         ; arg1 - repeat cuont
; goto
1125: fc        inc   y
1126: f7 26     mov   a,($26)+y
1128: 5d        mov   x,a
1129: fc        inc   y
112a: f7 26     mov   a,($26)+y         ; arg2/3 - destination address
112c: c4 27     mov   $27,a
112e: d8 26     mov   $26,x
1130: 5f 5d 0b  jmp   $0b5d

; vcmd e0 - end subroutine
1133: f8 24     mov   x,$24
1135: f5 98 06  mov   a,$0698+x
1138: f0 0c     beq   $1146
113a: c4 27     mov   $27,a
113c: f5 80 06  mov   a,$0680+x
113f: c4 26     mov   $26,a
1141: e8 00     mov   a,#$00
1143: d5 98 06  mov   $0698+x,a
1146: 5f 5d 0b  jmp   $0b5d

; vcmd e1 - subroutine (cannot be nested)
1149: f8 24     mov   x,$24
114b: f7 26     mov   a,($26)+y
114d: c4 00     mov   $00,a
114f: 3a 26     incw  $26
1151: f7 26     mov   a,($26)+y
1153: c4 01     mov   $01,a
1155: 3a 26     incw  $26
1157: e4 26     mov   a,$26
1159: d5 80 06  mov   $0680+x,a
115c: e4 27     mov   a,$27
115e: d5 98 06  mov   $0698+x,a
1161: fa 00 26  mov   ($26),($00)
1164: fa 01 27  mov   ($27),($01)
1167: 5f 5d 0b  jmp   $0b5d

; vcmd e2 - goto
116a: f7 26     mov   a,($26)+y
116c: 5d        mov   x,a
116d: fc        inc   y
116e: f7 26     mov   a,($26)+y
1170: c4 27     mov   $27,a
1172: d8 26     mov   $26,x
1174: 5f 5d 0b  jmp   $0b5d

; vcmd e3 - transpose (absolute)
1177: f8 24     mov   x,$24
1179: f7 26     mov   a,($26)+y
117b: d5 60 02  mov   $0260+x,a
117e: 3a 26     incw  $26
1180: 5f 5d 0b  jmp   $0b5d

; vcmd e4 - tuning
1183: f8 24     mov   x,$24
1185: f7 26     mov   a,($26)+y
1187: d5 78 02  mov   $0278+x,a
118a: 3a 26     incw  $26
118c: 5f 5d 0b  jmp   $0b5d

; vcmd e5 - vibrato delay
118f: f8 24     mov   x,$24
1191: f7 26     mov   a,($26)+y
1193: d5 38 03  mov   $0338+x,a
1196: 3a 26     incw  $26
1198: 18 04 28  or    $28,#$04          ; LFO
119b: 5f 5d 0b  jmp   $0b5d

; vcmd e6 - vibrato off
119e: 38 fb 28  and   $28,#$fb
11a1: 5f 5d 0b  jmp   $0b5d

; vcmd e7 - vibrato
11a4: f8 24     mov   x,$24
11a6: f7 26     mov   a,($26)+y
11a8: d5 38 03  mov   $0338+x,a         ; arg1
11ab: 3a 26     incw  $26
11ad: f7 26     mov   a,($26)+y
11af: d5 f0 02  mov   $02f0+x,a         ; arg2
11b2: 3a 26     incw  $26
11b4: f7 26     mov   a,($26)+y
11b6: d5 08 03  mov   $0308+x,a         ; arg3
11b9: 3a 26     incw  $26
11bb: 18 04 28  or    $28,#$04          ; LFO on
11be: 5f 5d 0b  jmp   $0b5d

; vcmd e8
11c1: f8 24     mov   x,$24
11c3: f7 26     mov   a,($26)+y
11c5: 3a 26     incw  $26
11c7: d5 d8 02  mov   $02d8+x,a
11ca: e8 ff     mov   a,#$ff
11cc: d5 c0 02  mov   $02c0+x,a
11cf: 5f 5d 0b  jmp   $0b5d

; vcmd e9
11d2: f8 24     mov   x,$24
11d4: f7 26     mov   a,($26)+y
11d6: 30 04     bmi   $11dc
11d8: 60        clrc
11d9: 95 60 02  adc   a,$0260+x         ; apply transpose if arg1 >= 0
11dc: d5 a8 02  mov   $02a8+x,a
11df: 3a 26     incw  $26
11e1: f7 26     mov   a,($26)+y
11e3: 30 04     bmi   $11e9
11e5: 60        clrc
11e6: 95 60 02  adc   a,$0260+x         ; apply transpose if arg2 >= 0
11e9: d5 c0 02  mov   $02c0+x,a
11ec: f5 78 02  mov   a,$0278+x         ; tuning
11ef: d5 90 02  mov   $0290+x,a
11f2: 3a 26     incw  $26
11f4: e8 00     mov   a,#$00
11f6: d5 d8 02  mov   $02d8+x,a
11f9: 5f db 0b  jmp   $0bdb             ; dispatch note

; vcmd ea - volume (relative)
11fc: f8 24     mov   x,$24
11fe: f7 26     mov   a,($26)+y
1200: 10 11     bpl   $1213
; decrease volume
1202: 48 ff     eor   a,#$ff
1204: bc        inc   a
1205: c4 00     mov   $00,a
1207: f5 60 05  mov   a,$0560+x         ; channel volume
120a: 80        setc
120b: a4 00     sbc   a,$00
120d: b0 0c     bcs   $121b
120f: e8 00     mov   a,#$00
1211: 2f 08     bra   $121b
; increase volume
1213: 60        clrc
1214: 95 60 05  adc   a,$0560+x         ; channel volume
1217: 90 02     bcc   $121b
1219: e8 ff     mov   a,#$ff
; finalize
121b: d5 60 05  mov   $0560+x,a         ; channel volume
121e: 3a 26     incw  $26
1220: e8 00     mov   a,#$00
1222: d5 90 05  mov   $0590+x,a
1225: 5f 5d 0b  jmp   $0b5d

; vcmd eb - pan
1228: f8 24     mov   x,$24
122a: f7 26     mov   a,($26)+y
122c: d5 d8 05  mov   $05d8+x,a         ; pan (0..20)
122f: 3a 26     incw  $26
1231: e8 00     mov   a,#$00
1233: d5 38 06  mov   $0638+x,a         ; invalidate pan envelope
1236: 5f 5d 0b  jmp   $0b5d

; vcmd ec - volume
1239: f8 24     mov   x,$24
123b: f7 26     mov   a,($26)+y
123d: d5 60 05  mov   $0560+x,a         ; channel volume
1240: 3a 26     incw  $26
1242: e8 00     mov   a,#$00
1244: d5 90 05  mov   $0590+x,a
1247: 5f 5d 0b  jmp   $0b5d

; vcmd ed
124a: f8 24     mov   x,$24
124c: f7 26     mov   a,($26)+y
124e: d5 48 05  mov   $0548+x,a
1251: 3a 26     incw  $26
1253: f7 26     mov   a,($26)+y
1255: d5 18 05  mov   $0518+x,a
1258: 3a 26     incw  $26
125a: f7 26     mov   a,($26)+y
125c: d5 30 05  mov   $0530+x,a         ; set table address
125f: 3a 26     incw  $26
1261: 38 ef 28  and   $28,#$ef
1264: e8 00     mov   a,#$00
1266: d5 b8 04  mov   $04b8+x,a
1269: 18 08 28  or    $28,#$08
126c: 5f 5d 0b  jmp   $0b5d

; vcmd ee - tie
126f: f8 24     mov   x,$24
1271: 3f e7 13  call  $13e7             ; read delta-time
1274: 3f 17 14  call  $1417             ; readahead for slur/tie
1277: f5 d0 04  mov   a,$04d0+x
127a: d5 f8 03  mov   $03f8+x,a         ; update GAIN envelope address (see vcmd ef)
127d: f5 e8 04  mov   a,$04e8+x
1280: d5 10 04  mov   $0410+x,a
1283: e8 00     mov   a,#$00
1285: d5 28 04  mov   $0428+x,a         ; zero GAIN envelope offset
1288: e8 01     mov   a,#$01
128a: d4 72     mov   $72+x,a           ; reset GAIN envelope delta-time
128c: 18 20 28  or    $28,#$20          ; not a new note
128f: 5f e8 0b  jmp   $0be8

; vcmd ef - envelope address for tie
1292: f8 24     mov   x,$24
1294: f7 26     mov   a,($26)+y
1296: d5 d0 04  mov   $04d0+x,a
1299: 3a 26     incw  $26
129b: f7 26     mov   a,($26)+y
129d: d5 e8 04  mov   $04e8+x,a
12a0: 3a 26     incw  $26
12a2: 5f 5d 0b  jmp   $0b5d

; vcmd f0
12a5: f8 24     mov   x,$24
12a7: f7 26     mov   a,($26)+y
12a9: d5 80 03  mov   $0380+x,a         ; arg1: time to constant GAIN
12ac: 3a 26     incw  $26
12ae: f7 26     mov   a,($26)+y
12b0: 08 80     or    a,#$80            ; kill direct mode
12b2: d5 98 03  mov   $0398+x,a         ; arg2: GAIN
12b5: 3a 26     incw  $26
12b7: 5f 5d 0b  jmp   $0b5d

; vcmd f1 - auto duration off
12ba: 38 ef 28  and   $28,#$ef
12bd: 5f 5d 0b  jmp   $0b5d

; vcmd f2 - auto duration on
12c0: 18 10 28  or    $28,#$10
12c3: 5f 5d 0b  jmp   $0b5d

; vcmd f3 - auto duration threshold
12c6: f8 24     mov   x,$24
12c8: f7 26     mov   a,($26)+y
12ca: d5 b8 04  mov   $04b8+x,a
12cd: 3a 26     incw  $26
12cf: 38 ef 28  and   $28,#$ef
12d2: 5f 5d 0b  jmp   $0b5d

; vcmd f4
12d5: 18 20 28  or    $28,#$20
12d8: 5f db 0b  jmp   $0bdb             ; dispatch note

; vcmd f5
12db: 18 20 28  or    $28,#$20
12de: 5f 5d 0b  jmp   $0b5d

; vcmd f6 - envelope address #2
12e1: f8 24     mov   x,$24
12e3: f7 26     mov   a,($26)+y
12e5: d5 70 04  mov   $0470+x,a
12e8: 3a 26     incw  $26
12ea: f7 26     mov   a,($26)+y
12ec: d5 88 04  mov   $0488+x,a
12ef: 3a 26     incw  $26
12f1: 5f 5d 0b  jmp   $0b5d

; vcmd f7 - echo volume envelope address
12f4: f7 26     mov   a,($26)+y
12f6: c4 50     mov   $50,a
12f8: 3a 26     incw  $26
12fa: f7 26     mov   a,($26)+y
12fc: c4 51     mov   $51,a
12fe: 3a 26     incw  $26
1300: 8f 01 53  mov   $53,#$01
1303: 8f 00 52  mov   $52,#$00
1306: 5f 5d 0b  jmp   $0b5d

; vcmd f8 - echo volume
1309: f7 26     mov   a,($26)+y
130b: c4 4c     mov   $4c,a             ; EVOL(L)
130d: 3a 26     incw  $26
130f: f7 26     mov   a,($26)+y
1311: c4 4d     mov   $4d,a             ; EVOL(R)
1313: 3a 26     incw  $26
1315: f7 26     mov   a,($26)+y
1317: c4 4e     mov   $4e,a             ; EVOL for mono
1319: 3a 26     incw  $26
131b: 3f 62 14  call  $1462             ; update echo settings
131e: 8f 00 51  mov   $51,#$00          ; invalidate echo volume envelope
1321: 5f 5d 0b  jmp   $0b5d

; vcmd f9 - echo off
1324: 38 bf 28  and   $28,#$bf
1327: 5f 5d 0b  jmp   $0b5d

; vcmd fa - echo on
132a: 18 40 28  or    $28,#$40
132d: 5f 5d 0b  jmp   $0b5d

; vcmd fb - echo param
1330: 8f 01 4b  mov   $4b,#$01
1333: f7 26     mov   a,($26)+y
1335: c4 4f     mov   $4f,a             ; arg1: EFB
1337: 3a 26     incw  $26
1339: f7 26     mov   a,($26)+y
133b: c4 4c     mov   $4c,a             ; arg2: EVOL(L)
133d: 3a 26     incw  $26
133f: f7 26     mov   a,($26)+y
1341: c4 4d     mov   $4d,a             ; arg3: EVOL(R)
1343: 3a 26     incw  $26
1345: f7 26     mov   a,($26)+y
1347: c4 4e     mov   $4e,a             ; arg4: EVOL for mono
1349: 3a 26     incw  $26
134b: 3f 38 14  call  $1438
134e: 8f 0d f2  mov   $f2,#$0d
1351: fa 4f f3  mov   ($f3),($4f)       ; set EFB
1354: 3f 62 14  call  $1462             ; update echo settings
1357: 8f 00 51  mov   $51,#$00          ; invalidate echo volume envelope
135a: 5f 5d 0b  jmp   $0b5d

; vcmd fc - ADSR
135d: f8 24     mov   x,$24
135f: f7 26     mov   a,($26)+y
1361: 10 12     bpl   $1375
; arg1 >= $80: set ADSR1/2 from arg1/2
1363: d5 b0 03  mov   $03b0+x,a         ; ADSR(1)
1366: 3a 26     incw  $26
1368: f7 26     mov   a,($26)+y
136a: d5 c8 03  mov   $03c8+x,a         ; ADSR(2)
136d: 3a 26     incw  $26
136f: 38 7f 28  and   $28,#$7f          ; ADSR mode
1372: 5f 5d 0b  jmp   $0b5d
; arg1 < $80: load default ADSR
1375: 3a 26     incw  $26
1377: f5 50 03  mov   a,$0350+x         ; SRCN
137a: fd        mov   y,a
137b: f6 00 1f  mov   a,$1f00+y
137e: d5 b0 03  mov   $03b0+x,a         ; load ADSR(1)
1381: f6 00 20  mov   a,$2000+y
1384: d5 c8 03  mov   $03c8+x,a         ; load ADSR(2)
1387: 38 7f 28  and   $28,#$7f          ; ADSR mode
138a: 5f 5d 0b  jmp   $0b5d

; vcmd fd - envelope address #1
138d: f8 24     mov   x,$24
138f: f7 26     mov   a,($26)+y
1391: d5 40 04  mov   $0440+x,a
1394: 3a 26     incw  $26
1396: f7 26     mov   a,($26)+y
1398: d5 58 04  mov   $0458+x,a
139b: 3a 26     incw  $26
139d: 18 80 28  or    $28,#$80          ; GAIN mode
13a0: 5f 5d 0b  jmp   $0b5d

; vcmd fe - instrument
13a3: f8 24     mov   x,$24
13a5: f7 26     mov   a,($26)+y
13a7: 3a 26     incw  $26
13a9: d5 50 03  mov   $0350+x,a         ; set SRCN shadow
13ac: fd        mov   y,a
13ad: f6 00 1f  mov   a,$1f00+y
13b0: d5 b0 03  mov   $03b0+x,a         ; load ADSR(1)
13b3: f6 00 20  mov   a,$2000+y
13b6: d5 c8 03  mov   $03c8+x,a         ; load ADSR(2)
13b9: 38 7f 28  and   $28,#$7f          ; ADSR mode
13bc: 8f ff 39  mov   $39,#$ff
13bf: 5f 5d 0b  jmp   $0b5d

; vcmd ff
13c2: e8 00     mov   a,#$00
13c4: f8 24     mov   x,$24
13c6: d5 00 02  mov   $0200+x,a
13c9: 7d        mov   a,x
13ca: 08 80     or    a,#$80
13cc: f8 25     mov   x,$25
13ce: 74 1c     cmp   a,$1c+x
13d0: d0 14     bne   $13e6
13d2: e8 7f     mov   a,#$7f
13d4: d4 1c     mov   $1c+x,a
13d6: 7d        mov   a,x
13d7: 9f        xcn   a
13d8: 08 07     or    a,#$07
13da: c4 f2     mov   $f2,a
13dc: 8f 9d f3  mov   $f3,#$9d          ; set GAIN
13df: 9c        dec   a
13e0: 9c        dec   a
13e1: c4 f2     mov   $f2,a
13e3: 8f 00 f3  mov   $f3,#$00          ; set ADSR(1)
13e6: 6f        ret

; read delta-time
13e7: f5 00 05  mov   a,$0500+x         ; default note length
13ea: d0 04     bne   $13f0
13ec: f7 26     mov   a,($26)+y         ; read note length
13ee: 3a 26     incw  $26
13f0: d4 5a     mov   $5a+x,a           ; set delta-time
13f2: f5 80 03  mov   a,$0380+x
13f5: d5 68 03  mov   $0368+x,a         ; duration timer #1
13f8: 6f        ret

; read duration
13f9: e4 28     mov   a,$28
13fb: 28 10     and   a,#$10
13fd: f0 08     beq   $1407
; manual duration
13ff: f7 26     mov   a,($26)+y
1401: d5 a0 04  mov   $04a0+x,a         ; duration timer #2
1404: 3a 26     incw  $26
1406: 6f        ret
; auto duration
1407: f5 5a 00  mov   a,$005a+x
140a: 5c        lsr   a                 ; halve delta-time
140b: 75 b8 04  cmp   a,$04b8+x
140e: 90 03     bcc   $1413             ; if exceeds $04b8+x:
1410: f5 b8 04  mov   a,$04b8+x         ;   limit maximum silence
1413: d5 a0 04  mov   $04a0+x,a         ; duration timer #2
1416: 6f        ret

; readahead for slur/tie
1417: e4 28     mov   a,$28
1419: 28 01     and   a,#$01            ; slur
141b: d0 12     bne   $142f
141d: f7 26     mov   a,($26)+y         ; read next vcmd
; force full-length note for slur/tie
141f: 68 ee     cmp   a,#$ee
1421: f0 0c     beq   $142f
1423: 68 f4     cmp   a,#$f4
1425: f0 08     beq   $142f
1427: 68 ce     cmp   a,#$ce
1429: f0 04     beq   $142f
142b: 68 f5     cmp   a,#$f5
142d: d0 08     bne   $1437
142f: e8 00     mov   a,#$00
1431: d5 a0 04  mov   $04a0+x,a         ; invalidate duration timer #2
1434: d5 68 03  mov   $0368+x,a         ; invalidate duration timer #1
1437: 6f        ret

1438: e8 00     mov   a,#$00
143a: 8f 2c f2  mov   $f2,#$2c
143d: c4 f3     mov   $f3,a             ; set EVOL(L)
143f: 8f 3c f2  mov   $f2,#$3c
1442: c4 f3     mov   $f3,a             ; set EVOL(R)
1444: eb 4b     mov   y,$4b
1446: dd        mov   a,y
1447: bc        inc   a
1448: bc        inc   a
1449: c4 4a     mov   $4a,a
144b: 8f 0d f2  mov   $f2,#$0d
144e: 8f 01 f3  mov   $f3,#$01          ; set EFB
1451: 6f        ret

1452: db $ff,$f8,$f0,$e8,$e0,$d8,$d0,$c8
145a: db $c0,$b8,$b0,$a8,$a0,$98,$90,$88

; set echo params
1462: e4 4a     mov   a,$4a
1464: d0 23     bne   $1489
1466: 8f 0d f2  mov   $f2,#$0d
1469: fa 4f f3  mov   ($f3),($4f)       ; set EFB
146c: e4 1b     mov   a,$1b
146e: d0 0d     bne   $147d             ; mono?
1470: 8f 2c f2  mov   $f2,#$2c
1473: fa 4c f3  mov   ($f3),($4c)       ; set EVOL(L)
1476: 8f 3c f2  mov   $f2,#$3c
1479: fa 4d f3  mov   ($f3),($4d)       ; set EVOL(R)
147c: 6f        ret

147d: e4 4e     mov   a,$4e
147f: 8f 2c f2  mov   $f2,#$2c          ; set EVOL(L)
1482: c4 f3     mov   $f3,a
1484: 8f 3c f2  mov   $f2,#$3c          ; set EVOL(R)
1487: c4 f3     mov   $f3,a
1489: 6f        ret

148a: e4 1b     mov   a,$1b
148c: f0 03     beq   $1491             ; stereo?
148e: 8f 0a 2c  mov   $2c,#$0a          ; pan center
1491: e8 14     mov   a,#$14
1493: 80        setc
1494: a4 2c     sbc   a,$2c             ; left level in A
1496: fd        mov   y,a
1497: f7 2d     mov   a,($2d)+y         ; read pan table
1499: c4 00     mov   $00,a
149b: eb 2c     mov   y,$2c
149d: f7 2d     mov   a,($2d)+y
149f: c4 01     mov   $01,a
14a1: eb 2b     mov   y,$2b
14a3: e4 00     mov   a,$00
14a5: cf        mul   ya
14a6: f0 01     beq   $14a9
14a8: fc        inc   y
14a9: cb 3e     mov   $3e,y             ; VOL(L)
14ab: eb 2b     mov   y,$2b
14ad: e4 01     mov   a,$01
14af: cf        mul   ya
14b0: f0 01     beq   $14b3
14b2: fc        inc   y
14b3: cb 3f     mov   $3f,y             ; VOL(R)
14b5: 6f        ret

; pan table #1
14b6: db $00,$01,$03,$07,$0d,$15,$1e,$29
14be: db $34,$42,$51,$5e,$67,$6e,$73,$77
14c6: db $7a,$7c,$7d,$7e,$7f

; pan table #2
14cb: db $00,$01,$03,$07,$0d,$15,$1e,$29
14d3: db $34,$42,$7f,$5e,$67,$6e,$73,$77
14db: db $7a,$7c,$7d,$7e,$7f

; calculate note pitch ($2a: note number)
14e0: f8 42     mov   x,$42             ; SRCN
14e2: f5 00 21  mov   a,$2100+x         ; per-instrument tuning (coarse)
14e5: 60        clrc
14e6: 84 2a     adc   a,$2a
14e8: c4 2a     mov   $2a,a
14ea: f5 00 22  mov   a,$2200+x
14ed: 60        clrc
14ee: 84 29     adc   a,$29
14f0: c4 29     mov   $29,a
14f2: 90 02     bcc   $14f6
14f4: ab 2a     inc   $2a
14f6: f8 2a     mov   x,$2a
14f8: f5 3d 15  mov   a,$153d+x         ; note octave/key table
14fb: c4 00     mov   $00,a
14fd: 9f        xcn   a
14fe: 28 0f     and   a,#$0f            ; higher 4 bits: key
1500: 5d        mov   x,a
1501: f5 b5 15  mov   a,$15b5+x
1504: c4 41     mov   $41,a
1506: f5 c2 15  mov   a,$15c2+x         ; read pitch table
1509: c4 40     mov   $40,a             ; get pitch into $40/1
150b: f5 b6 15  mov   a,$15b6+x
150e: fd        mov   y,a
150f: f5 c3 15  mov   a,$15c3+x
1512: 9a 40     subw  ya,$40
1514: cb 01     mov   $01,y
1516: eb 29     mov   y,$29
1518: cf        mul   ya
1519: e4 01     mov   a,$01
151b: cb 01     mov   $01,y
151d: eb 29     mov   y,$29
151f: cf        mul   ya
1520: 8f 00 02  mov   $02,#$00
1523: 7a 01     addw  ya,$01
1525: 7a 40     addw  ya,$40            ; apply linear interpolation
1527: cb 41     mov   $41,y
1529: c4 40     mov   $40,a
152b: e4 00     mov   a,$00
152d: 28 0f     and   a,#$0f            ; lower 4 bits: octave (pitch *= 1/2^N)
152f: f0 09     beq   $153a
1531: 5d        mov   x,a
1532: e4 40     mov   a,$40
1534: 4b 41     lsr   $41
1536: 7c        ror   a
1537: 1d        dec   x
1538: d0 fa     bne   $1534
153a: c4 40     mov   $40,a
153c: 6f        ret

;       c, c+,  d, d+,  e,  f, f+,  g, g+,  a, a+,  b
153d:             $39,$49,$59,$69,$79,$89,$99,$a9,$b9
1546: $08,$18,$28,$38,$48,$58,$68,$78,$88,$98,$a8,$b8
154e: $07,$17,$27,$37,$47,$57,$67,$77,$87,$97,$a7,$b7
1556: $06,$16,$26,$36,$46,$56,$66,$76,$86,$96,$a6,$b6
155e: $05,$15,$25,$35,$45,$55,$65,$75,$85,$95,$a5,$b5
1566: $04,$14,$24,$34,$44,$54,$64,$74,$84,$94,$a4,$b4
156e: $03,$13,$23,$33,$43,$53,$63,$73,$83,$93,$a3,$b3
1576: $02,$12,$22,$32,$42,$52,$62,$72,$82,$92,$a2,$b2
157e: $01,$11,$21,$31,$41,$51,$61,$71,$81,$91,$a1,$b1
1586: $00,$10,$20,$30,$40,$50,$60,$70,$80,$90,$a0,$b0
158e: $00,$10,$20

; pitch table (hi/lo)
;          c, c+,  d, d+,  e,  f, f+,  g, g+,  a, a+,  b,  c
15b5: db $20,$21,$23,$26,$28,$2a,$2d,$2f,$32,$35,$39,$3c,$40
15c2: db $00,$e8,$ec,$0e,$52,$b8,$42,$f2,$c4,$d2,$04,$68,$00

15cf: db $01,$02,$04,$08,$10,$20,$40,$80

15d7: 8f 6c f2  mov   $f2,#$6c
15da: 8f ff f3  mov   $f3,#$ff          ; set FLG
15dd: 8d 16     mov   y,#$16
15df: e8 14     mov   a,#$14
15e1: da 00     movw  $00,ya            ; $1614
15e3: 8d 03     mov   y,#$03
15e5: cd 3c     mov   x,#$3c
15e7: 3f 05 16  call  $1605
15ea: 8d 16     mov   y,#$16
15ec: e8 18     mov   a,#$18
15ee: da 00     movw  $00,ya            ; $1618
15f0: 8d 07     mov   y,#$07
15f2: cd 7d     mov   x,#$7d
15f4: 3f 05 16  call  $1605
15f7: 8d 16     mov   y,#$16
15f9: e8 20     mov   a,#$20
15fb: da 00     movw  $00,ya            ; $1620
15fd: 8d 07     mov   y,#$07
15ff: cd 7f     mov   x,#$7f
1601: 3f 05 16  call  $1605
1604: 6f        ret

1605: d8 f2     mov   $f2,x
1607: f7 00     mov   a,($00)+y
1609: c4 f3     mov   $f3,a
160b: 7d        mov   a,x
160c: 80        setc
160d: a8 10     sbc   a,#$10
160f: 5d        mov   x,a
1610: dc        dec   y
1611: 10 f2     bpl   $1605
1613: 6f        ret

; MVOL(L),MVOL(R),EVOL(L),EVOL(R)
1614: db $00,$01,$00,$00
; EFB,-,PMON,NON,EON,DIR,ESA,EDL
1618: db $00,$00,$00,$00,$00,$1b,$e0,$04
; FIR
1620: db $7f,$00,$00,$00,$00,$00,$00,$00

1628: 3f 2f 16  call  $162f
162b: 3f 45 16  call  $1645
162e: 6f        ret

162f: e4 f4     mov   a,$f4
1631: 64 f4     cmp   a,$f4
1633: d0 fa     bne   $162f
1635: 64 0e     cmp   a,$0e
1637: f0 0b     beq   $1644
1639: c4 0e     mov   $0e,a
163b: fa f6 10  mov   ($10),($f6)
163e: fa 0e f4  mov   ($f4),($0e)
1641: 3f 60 16  call  $1660
1644: 6f        ret

1645: e4 f5     mov   a,$f5
1647: 64 f5     cmp   a,$f5
1649: d0 fa     bne   $1645
164b: 64 0f     cmp   a,$0f
164d: f0 10     beq   $165f
164f: c4 0f     mov   $0f,a
1651: e4 f7     mov   a,$f7
1653: 64 f7     cmp   a,$f7
1655: d0 ee     bne   $1645
1657: c4 11     mov   $11,a
1659: fa 0f f5  mov   ($f5),($0f)
165c: fa 11 09  mov   ($09),($11)
165f: 6f        ret

1660: e4 10     mov   a,$10
1662: 80        setc
1663: a8 f0     sbc   a,#$f0
1665: b0 04     bcs   $166b
1667: fa 10 08  mov   ($08),($10)
166a: 6f        ret

166b: 1c        asl   a
166c: 5d        mov   x,a
166d: 1f 70 16  jmp   ($1670+x)

1670: dw $1739  ; f0
1672: dw $174c  ; f1
1674: dw $175f  ; f2
1676: dw $1690  ; f3 - nop
1678: dw $1690  ; f4 - nop
167a: dw $1766  ; f5
167c: dw $176d  ; f6
167e: dw $1690  ; f7 - nop
1680: dw $1690  ; f8 - nop
1682: dw $1690  ; f9 - nop
1684: dw $1690  ; fa - nop
1686: dw $1690  ; fb - nop
1688: dw $1690  ; fc - nop
168a: dw $093a  ; fd
168c: dw $1691  ; fe
168e: dw $1690  ; ff - nop

1690: 6f        ret

1691: 3f 3a 09  call  $093a
1694: 8f 01 14  mov   $14,#$01
1697: e4 f4     mov   a,$f4
1699: 64 f4     cmp   a,$f4
169b: d0 fa     bne   $1697
169d: 64 0e     cmp   a,$0e
169f: f0 0e     beq   $16af
16a1: c4 0e     mov   $0e,a
16a3: fa f5 0f  mov   ($0f),($f5)
16a6: fa f6 10  mov   ($10),($f6)
16a9: fa f7 11  mov   ($11),($f7)
16ac: 3f b4 16  call  $16b4
16af: e4 14     mov   a,$14
16b1: d0 e4     bne   $1697
16b3: 6f        ret

16b4: e4 0f     mov   a,$0f
16b6: 1c        asl   a
16b7: 5d        mov   x,a
16b8: 1f bb 16  jmp   ($16bb+x)

16bb: dw $16d4
16bd: dw $16f3
16bf: dw $16ff
16c1: dw $1718
16c3: dw $16c7
16c5: dw $1728

16c7: fa 11 f7  mov   ($f7),($11)
16ca: fa 10 f6  mov   ($f6),($10)
16cd: fa 0f f5  mov   ($f5),($0f)
16d0: fa 0e f4  mov   ($f4),($0e)
16d3: 6f        ret

16d4: 8f 00 14  mov   $14,#$00
16d7: 8f 00 f1  mov   $f1,#$00
16da: 8f 01 f1  mov   $f1,#$01
16dd: 8f 00 0f  mov   $0f,#$00
16e0: fa 12 10  mov   ($10),($12)
16e3: fa 13 11  mov   ($11),($13)
16e6: fa 11 f7  mov   ($f7),($11)
16e9: fa 10 f6  mov   ($f6),($10)
16ec: fa 0f f5  mov   ($f5),($0f)
16ef: fa 0e f4  mov   ($f4),($0e)
16f2: 6f        ret

16f3: fa 0e f4  mov   ($f4),($0e)
16f6: e4 10     mov   a,$10
16f8: eb 11     mov   y,$11
16fa: da 15     movw  $15,ya
16fc: da 17     movw  $17,ya
16fe: 6f        ret

16ff: fa 0e f4  mov   ($f4),($0e)
1702: 8d 00     mov   y,#$00
1704: e4 10     mov   a,$10
1706: d7 15     mov   ($15)+y,a
1708: 3a 15     incw  $15
170a: e4 11     mov   a,$11
170c: d7 15     mov   ($15)+y,a
170e: 3a 15     incw  $15
1710: fd        mov   y,a
1711: e4 10     mov   a,$10
1713: 7a 17     addw  ya,$17
1715: da 17     movw  $17,ya
1717: 6f        ret

1718: fa 0e f4  mov   ($f4),($0e)
171b: e4 10     mov   a,$10
171d: 8d 00     mov   y,#$00
171f: d7 15     mov   ($15)+y,a
1721: 3a 15     incw  $15
1723: 7a 17     addw  ya,$17
1725: da 17     movw  $17,ya
1727: 6f        ret

1728: ba 17     movw  ya,$17
172a: da 10     movw  $10,ya
172c: fa 11 f7  mov   ($f7),($11)
172f: fa 10 f6  mov   ($f6),($10)
1732: fa 0f f5  mov   ($f5),($0f)
1735: fa 0e f4  mov   ($f4),($0e)
1738: 6f        ret

1739: 3f 74 17  call  $1774
173c: fa 10 31  mov   ($31),($10)
173f: 3f 74 17  call  $1774
1742: fa 10 32  mov   ($32),($10)
1745: 8f 00 34  mov   $34,#$00
1748: 8f 00 33  mov   $33,#$00
174b: 6f        ret

174c: 3f 74 17  call  $1774
174f: fa 10 31  mov   ($31),($10)
1752: 3f 74 17  call  $1774
1755: fa 10 32  mov   ($32),($10)
1758: 8f 01 34  mov   $34,#$01
175b: 8f 00 33  mov   $33,#$00
175e: 6f        ret

175f: 3f 74 17  call  $1774
1762: fa 10 30  mov   ($30),($10)
1765: 6f        ret

1766: 8f 00 1b  mov   $1b,#$00
1769: 3f 62 14  call  $1462             ; update echo settings
176c: 6f        ret

176d: 8f ff 1b  mov   $1b,#$ff
1770: 3f 62 14  call  $1462             ; update echo settings
1773: 6f        ret

1774: e4 f4     mov   a,$f4
1776: 64 f4     cmp   a,$f4
1778: d0 fa     bne   $1774
177a: 64 0e     cmp   a,$0e
177c: f0 f6     beq   $1774
177e: c4 0e     mov   $0e,a
1780: fa f6 10  mov   ($10),($f6)
1783: fa 0e f4  mov   ($f4),($0e)
1786: 6f        ret

