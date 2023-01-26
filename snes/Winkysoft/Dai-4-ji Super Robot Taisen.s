f180: 20        clrp
f181: cd 7f     mov   x,#$7f
f183: e8 00     mov   a,#$00
f185: bd        mov   sp,x
f186: fd        mov   y,a
f187: 5d        mov   x,a
f188: af        mov   (x)+,a
f189: c8 e9     cmp   x,#$e9
f18b: d0 fb     bne   $f188
f18d: f6 73 fc  mov   a,$fc73+y
f190: c4 f2     mov   $f2,a
f192: f6 81 fc  mov   a,$fc81+y
f195: c4 f3     mov   $f3,a
f197: fc        inc   y
f198: ad 0f     cmp   y,#$0f
f19a: d0 f1     bne   $f18d
f19c: a2 12     set5  $12
f19e: 8d 02     mov   y,#$02
f1a0: e8 00     mov   a,#$00
f1a2: da 0a     movw  $0a,ya
f1a4: 8d 08     mov   y,#$08
f1a6: e8 00     mov   a,#$00
f1a8: da 0c     movw  $0c,ya
f1aa: 8f f0 f1  mov   $f1,#$f0
f1ad: 8f 50 fa  mov   $fa,#$50
f1b0: 8f 01 f1  mov   $f1,#$01
f1b3: ba f4     movw  ya,$f4
f1b5: da f4     movw  $f4,ya
f1b7: ba f6     movw  ya,$f6
f1b9: da f6     movw  $f6,ya
f1bb: 8f 50 37  mov   $37,#$50
; cpu cmd 00
f1be: eb fd     mov   y,$fd
f1c0: d0 18     bne   $f1da
f1c2: e4 f4     mov   a,$f4
f1c4: 44 17     eor   a,$17
f1c6: 10 f6     bpl   $f1be
f1c8: cd 17     mov   x,#$17
f1ca: f4 dd     mov   a,$dd+x
f1cc: af        mov   (x)+,a
f1cd: c8 1b     cmp   x,#$1b
f1cf: d0 f9     bne   $f1ca
f1d1: e4 17     mov   a,$17
f1d3: c4 f4     mov   $f4,a
f1d5: 1c        asl   a
f1d6: 5d        mov   x,a
f1d7: 1f 92 f8  jmp   ($f892+x)         ; dispatch cpu cmd

f1da: 3f dc fa  call  $fadc
f1dd: e4 1f     mov   a,$1f
f1df: 48 ff     eor   a,#$ff
f1e1: c4 f6     mov   $f6,a
f1e3: e4 2f     mov   a,$2f
f1e5: 04 33     or    a,$33
f1e7: 04 34     or    a,$34
f1e9: d0 02     bne   $f1ed
f1eb: 82 20     set4  $20
f1ed: e4 20     mov   a,$20
f1ef: 48 c0     eor   a,#$c0
f1f1: c4 f7     mov   $f7,a
f1f3: 5f be f1  jmp   $f1be

; vcmds 00-66
f1f6: f8 15     mov   x,$15
f1f8: c4 07     mov   $07,a
f1fa: 23 14 06  bbs1  $14,$f203
f1fd: d3 14 06  bbc6  $14,$f206
f200: 5f b9 f2  jmp   $f2b9

f203: 5f 87 f2  jmp   $f287

f206: f5 16 fd  mov   a,$fd16+x
f209: 60        clrc
f20a: 84 00     adc   a,$00
f20c: c4 05     mov   $05,a
f20e: 8d 00     mov   y,#$00
f210: cb 04     mov   $04,y
f212: e4 05     mov   a,$05
f214: 80        setc
f215: a8 34     sbc   a,#$34
f217: b0 09     bcs   $f222
f219: e4 05     mov   a,$05
f21b: 80        setc
f21c: a8 13     sbc   a,#$13
f21e: b0 06     bcs   $f226
f220: dc        dec   y
f221: 1c        asl   a
f222: 7a 04     addw  ya,$04
f224: da 04     movw  $04,ya
f226: 4d        push  x
f227: e4 05     mov   a,$05
f229: 1c        asl   a
f22a: 8d 00     mov   y,#$00
f22c: cd 18     mov   x,#$18
f22e: 9e        div   ya,x
f22f: 5d        mov   x,a
f230: f6 3a fc  mov   a,$fc3a+y
f233: c4 01     mov   $01,a
f235: f6 39 fc  mov   a,$fc39+y
f238: c4 00     mov   $00,a
f23a: f6 3c fc  mov   a,$fc3c+y
f23d: 2d        push  a
f23e: f6 3b fc  mov   a,$fc3b+y
f241: ee        pop   y
f242: 9a 00     subw  ya,$00
f244: eb 04     mov   y,$04
f246: cf        mul   ya
f247: dd        mov   a,y
f248: 8d 00     mov   y,#$00
f24a: 7a 00     addw  ya,$00
f24c: cb 01     mov   $01,y
f24e: 1c        asl   a
f24f: 2b 01     rol   $01
f251: c4 00     mov   $00,a
f253: 2f 04     bra   $f259
f255: 4b 01     lsr   $01
f257: 7c        ror   a
f258: 3d        inc   x
f259: c8 06     cmp   x,#$06
f25b: d0 f8     bne   $f255
f25d: c4 00     mov   $00,a
f25f: ce        pop   x
f260: f4 71     mov   a,$71+x
f262: eb 01     mov   y,$01
f264: cf        mul   ya
f265: da 02     movw  $02,ya
f267: f4 71     mov   a,$71+x
f269: eb 00     mov   y,$00
f26b: cf        mul   ya
f26c: 6d        push  y
f26d: f4 7b     mov   a,$7b+x
f26f: eb 00     mov   y,$00
f271: cf        mul   ya
f272: 7a 02     addw  ya,$02
f274: da 02     movw  $02,ya
f276: f4 7b     mov   a,$7b+x
f278: eb 01     mov   y,$01
f27a: cf        mul   ya
f27b: fd        mov   y,a
f27c: ae        pop   a
f27d: 7a 02     addw  ya,$02
f27f: f8 15     mov   x,$15
f281: d4 85     mov   $85+x,a
f283: db 8f     mov   $8f+x,y
f285: 2f 0f     bra   $f296
f287: e4 00     mov   a,$00
f289: d5 0c fd  mov   $fd0c+x,a
f28c: c3 14 2a  bbs6  $14,$f2b9
f28f: 3f 8e f6  call  $f68e
f292: f4 ad     mov   a,$ad+x
f294: d4 67     mov   $67+x,a
f296: 82 14     set4  $14
f298: fb 99     mov   y,$99+x
f29a: f5 3e fd  mov   a,$fd3e+x
f29d: da 00     movw  $00,ya
f29f: f5 48 fd  mov   a,$fd48+x
f2a2: fb a3     mov   y,$a3+x
f2a4: 5a 00     cmpw  ya,$00
f2a6: b0 11     bcs   $f2b9
f2a8: 09 13 10  or    ($10),($13)
f2ab: e8 80     mov   a,#$80
f2ad: d4 cb     mov   $cb+x,a
f2af: 12 14     clr0  $14
f2b1: e8 00     mov   a,#$00
f2b3: d5 84 fd  mov   $fd84+x,a
f2b6: d5 8e fd  mov   $fd8e+x,a
f2b9: 1a 08     decw  $08
f2bb: f5 48 fd  mov   a,$fd48+x
f2be: fb a3     mov   y,$a3+x
f2c0: 7a 29     addw  ya,$29
f2c2: d5 34 fd  mov   $fd34+x,a
f2c5: db 5d     mov   $5d+x,y
f2c7: ab 07     inc   $07
f2c9: 30 2a     bmi   $f2f5
f2cb: fb 99     mov   y,$99+x
f2cd: f5 3e fd  mov   a,$fd3e+x
f2d0: 7a 0e     addw  ya,$0e
f2d2: da 0e     movw  $0e,ya
f2d4: 78 7e 07  cmp   $07,#$7e
f2d7: 90 1c     bcc   $f2f5
f2d9: 3a 08     incw  $08
f2db: 3a 08     incw  $08
f2dd: 8d 00     mov   y,#$00
f2df: f7 08     mov   a,($08)+y
f2e1: 13 07 14  bbc0  $07,$f2f8
; vcmd 7e
f2e4: f8 15     mov   x,$15
f2e6: 8d 7d     mov   y,#$7d
f2e8: cf        mul   ya
f2e9: db a3     mov   $a3+x,y
f2eb: d5 48 fd  mov   $fd48+x,a
f2ee: 7a 29     addw  ya,$29
f2f0: db 5d     mov   $5d+x,y
f2f2: d5 34 fd  mov   $fd34+x,a
f2f5: 5f 57 f3  jmp   $f357

; vcmd 7d
f2f8: f8 15     mov   x,$15
f2fa: d5 52 fd  mov   $fd52+x,a
f2fd: 5f 57 f3  jmp   $f357

; vcmd 6b
f300: f8 15     mov   x,$15
f302: 8f 3d f2  mov   $f2,#$3d          ; NON
f305: 68 20     cmp   a,#$20
f307: b0 13     bcs   $f31c
f309: fa 13 f3  mov   ($f3),($13)
f30c: 8f 6c f2  mov   $f2,#$6c          ; FLG
f30f: 04 12     or    a,$12
f311: c4 f3     mov   $f3,a
f313: 3a 08     incw  $08
f315: f7 08     mov   a,($08)+y
f317: c4 07     mov   $07,a
f319: 5f 96 f2  jmp   $f296

f31c: 8f 00 f3  mov   $f3,#$00
f31f: 2f 36     bra   $f357
; vcmd 7c
f321: f8 15     mov   x,$15
f323: db 5d     mov   $5d+x,y
f325: db a3     mov   $a3+x,y
f327: 2f 20     bra   $f349
; vcmds 80-ff
f329: 28 7f     and   a,#$7f
f32b: d5 52 fd  mov   $fd52+x,a
f32e: 3a 08     incw  $08
f330: f7 08     mov   a,($08)+y
f332: 8d 7d     mov   y,#$7d
f334: cf        mul   ya
f335: d5 48 fd  mov   $fd48+x,a
f338: db a3     mov   $a3+x,y
f33a: 7a 29     addw  ya,$29
f33c: d5 34 fd  mov   $fd34+x,a
f33f: db 5d     mov   $5d+x,y
f341: 8d 00     mov   y,#$00
f343: 3a 08     incw  $08
f345: f7 08     mov   a,($08)+y
f347: f0 0e     beq   $f357
; vcmd 7f
f349: f8 15     mov   x,$15
f34b: 8d 7d     mov   y,#$7d
f34d: cf        mul   ya
f34e: d5 3e fd  mov   $fd3e+x,a
f351: db 99     mov   $99+x,y
f353: 7a 0e     addw  ya,$0e
f355: da 0e     movw  $0e,ya
; unused vcmd
f357: f8 15     mov   x,$15
f359: 3a 08     incw  $08
f35b: ba 0e     movw  ya,$0e
f35d: 5a 29     cmpw  ya,$29
f35f: 90 03     bcc   $f364
f361: 5f af f3  jmp   $f3af

f364: 8d 00     mov   y,#$00
f366: 53 14 07  bbc2  $14,$f370
f369: 52 14     clr2  $14
f36b: f5 02 fd  mov   a,$fd02+x
f36e: 2f 0c     bra   $f37c
f370: f7 08     mov   a,($08)+y         ; read vcmd
f372: 30 b5     bmi   $f329             ; branch if vcmd in 80..ff
f374: c4 00     mov   $00,a
f376: 5d        mov   x,a
f377: 3a 08     incw  $08
f379: f5 7d fb  mov   a,$fb7d+x         ; read table offset
f37c: 5d        mov   x,a
f37d: f7 08     mov   a,($08)+y         ; A = arg1
f37f: 1f fd fb  jmp   ($fbfd+x)         ; invoke vcmd

f382: e4 14     mov   a,$14
f384: 28 e7     and   a,#$e7
f386: d5 bc fc  mov   $fcbc+x,a
f389: 6f        ret

f38a: f5 e4 fc  mov   a,$fce4+x         ; read voice pointer (lo)
f38d: fd        mov   y,a
f38e: f5 da fc  mov   a,$fcda+x         ; read voice pointer (hi)
f391: fa 21 29  mov   ($29),($21)
f394: fa 22 2b  mov   ($2b),($22)
f397: b3 14 06  bbc5  $14,$f3a0
f39a: fa 23 29  mov   ($29),($23)
f39d: fa 24 2b  mov   ($2b),($24)
f3a0: da 08     movw  $08,ya            ; $08/9 = voice pointer (work)
f3a2: f5 2a fd  mov   a,$fd2a+x
f3a5: fb 53     mov   y,$53+x
f3a7: 9a 29     subw  ya,$29
f3a9: da 0e     movw  $0e,ya
f3ab: 5a 29     cmpw  ya,$29
f3ad: 90 b5     bcc   $f364
f3af: d5 2a fd  mov   $fd2a+x,a
f3b2: db 53     mov   $53+x,y
f3b4: ba 08     movw  ya,$08
f3b6: d5 da fc  mov   $fcda+x,a
f3b9: dd        mov   a,y
f3ba: d5 e4 fc  mov   $fce4+x,a
f3bd: c3 14 c2  bbs6  $14,$f382
f3c0: fb 5d     mov   y,$5d+x
f3c2: ad ff     cmp   y,#$ff
f3c4: f0 45     beq   $f40b
f3c6: f5 34 fd  mov   a,$fd34+x
f3c9: 9a 29     subw  ya,$29
f3cb: d5 34 fd  mov   $fd34+x,a
f3ce: db 5d     mov   $5d+x,y
f3d0: b0 03     bcs   $f3d5
f3d2: 09 13 11  or    ($11),($13)
f3d5: f4 c1     mov   a,$c1+x
f3d7: d5 5c fd  mov   $fd5c+x,a
f3da: f0 29     beq   $f405
f3dc: 1c        asl   a
f3dd: fb cb     mov   y,$cb+x
f3df: cf        mul   ya
f3e0: dd        mov   a,y
f3e1: 80        setc
f3e2: b4 c1     sbc   a,$c1+x
f3e4: d5 5c fd  mov   $fd5c+x,a
f3e7: f4 cb     mov   a,$cb+x
f3e9: 03 14 0a  bbs0  $14,$f3f6
f3ec: 94 b7     adc   a,$b7+x
f3ee: 90 0f     bcc   $f3ff
f3f0: 02 14     set0  $14
f3f2: e8 ff     mov   a,#$ff
f3f4: 2f 09     bra   $f3ff
f3f6: 80        setc
f3f7: b4 b7     sbc   a,$b7+x
f3f9: b0 04     bcs   $f3ff
f3fb: 12 14     clr0  $14
f3fd: e8 01     mov   a,#$01
f3ff: d4 cb     mov   $cb+x,a
f401: 82 14     set4  $14
f403: 2f 06     bra   $f40b
f405: e8 80     mov   a,#$80
f407: d4 cb     mov   $cb+x,a
f409: 12 14     clr0  $14
f40b: 3f 5c f8  call  $f85c
f40e: f5 d0 fc  mov   a,$fcd0+x
f411: c4 f2     mov   $f2,a             ; VOL(L)
f413: f5 52 fd  mov   a,$fd52+x
f416: fb 67     mov   y,$67+x
f418: cf        mul   ya
f419: e4 2b     mov   a,$2b
f41b: cf        mul   ya
f41c: cb 00     mov   $00,y
f41e: e8 08     mov   a,#$08
f420: f3 16 06  bbc7  $16,$f429
f423: f5 20 fd  mov   a,$fd20+x
f426: 5c        lsr   a
f427: 5c        lsr   a
f428: 5c        lsr   a
f429: 5d        mov   x,a
f42a: f5 63 fc  mov   a,$fc63+x
f42d: cf        mul   ya
f42e: cb f3     mov   $f3,y
f430: eb 00     mov   y,$00
f432: f5 53 fc  mov   a,$fc53+x
f435: cf        mul   ya
f436: ab f2     inc   $f2               ; VOL(R)
f438: cb f3     mov   $f3,y
f43a: f8 15     mov   x,$15
f43c: 60        clrc
f43d: f5 98 fd  mov   a,$fd98+x
f440: 95 84 fd  adc   a,$fd84+x
f443: d5 84 fd  mov   $fd84+x,a
f446: c4 02     mov   $02,a
f448: f5 a2 fd  mov   a,$fda2+x
f44b: 95 8e fd  adc   a,$fd8e+x
f44e: d5 8e fd  mov   $fd8e+x,a
f451: c4 03     mov   $03,a
f453: 64 02     cmp   a,$02
f455: d0 03     bne   $f45a
f457: 93 14 2d  bbc4  $14,$f487
f45a: f5 d0 fc  mov   a,$fcd0+x
f45d: 08 02     or    a,#$02
f45f: c4 f2     mov   $f2,a             ; P(L)
f461: f4 8f     mov   a,$8f+x
f463: fb 49     mov   y,$49+x
f465: cf        mul   ya
f466: da 00     movw  $00,ya
f468: 7a 00     addw  ya,$00
f46a: da 00     movw  $00,ya
f46c: f4 49     mov   a,$49+x
f46e: 60        clrc
f46f: 95 5c fd  adc   a,$fd5c+x
f472: fb 85     mov   y,$85+x
f474: cf        mul   ya
f475: 1c        asl   a
f476: dd        mov   a,y
f477: 3c        rol   a
f478: 8d 00     mov   y,#$00
f47a: 90 01     bcc   $f47d
f47c: fc        inc   y
f47d: 7a 00     addw  ya,$00
f47f: 7a 02     addw  ya,$02
f481: c4 f3     mov   $f3,a
f483: ab f2     inc   $f2               ; P(H)
f485: cb f3     mov   $f3,y
f487: e4 14     mov   a,$14
f489: 28 e7     and   a,#$e7
f48b: d5 bc fc  mov   $fcbc+x,a
f48e: 6f        ret

; vcmd 6e
f48f: 3f 2c f7  call  $f72c
f492: 5f 57 f3  jmp   $f357

; vcmd 79
f495: c4 28     mov   $28,a
f497: 3a 08     incw  $08
f499: f7 08     mov   a,($08)+y
f49b: c4 27     mov   $27,a
f49d: 5f 57 f3  jmp   $f357

; vcmd 6f
f4a0: 58 02 14  eor   $14,#$02
f4a3: 5f 64 f3  jmp   $f364

; vcmd 69 - write to S-DSP register
f4a6: 5d        mov   x,a               ; arg1: register address
f4a7: 3a 08     incw  $08
f4a9: f7 08     mov   a,($08)+y         ; arg2: register value
;
f4ab: c8 1c     cmp   x,#$1c
f4ad: d0 02     bne   $f4b1
f4af: c4 34     mov   $34,a
;
f4b1: c8 0c     cmp   x,#$0c
f4b3: d0 02     bne   $f4b7
f4b5: c4 33     mov   $33,a
;
f4b7: c8 6c     cmp   x,#$6c
f4b9: d0 02     bne   $f4bd
f4bb: c4 12     mov   $12,a
;
f4bd: d8 f2     mov   $f2,x
f4bf: c4 f3     mov   $f3,a
f4c1: 5f 57 f3  jmp   $f357

; vcmd 6d
f4c4: 8f 4d f2  mov   $f2,#$4d          ; EON
f4c7: c4 f3     mov   $f3,a
f4c9: c4 36     mov   $36,a
f4cb: 3a 08     incw  $08
f4cd: f7 08     mov   a,($08)+y
f4cf: 8f 0d f2  mov   $f2,#$0d          ; EFB
f4d2: c4 f3     mov   $f3,a
f4d4: c4 35     mov   $35,a
f4d6: 3a 08     incw  $08
f4d8: f7 08     mov   a,($08)+y
f4da: c4 31     mov   $31,a
f4dc: 3a 08     incw  $08
f4de: f7 08     mov   a,($08)+y
f4e0: c4 32     mov   $32,a
f4e2: 5f 57 f3  jmp   $f357

; vcmd 71
f4e5: f8 15     mov   x,$15
f4e7: e8 28     mov   a,#$28
f4e9: d5 02 fd  mov   $fd02+x,a
f4ec: f7 08     mov   a,($08)+y
f4ee: 02 16     set0  $16
; unused vcmd
f4f0: f8 15     mov   x,$15
f4f2: c4 00     mov   $00,a
f4f4: 28 7f     and   a,#$7f
f4f6: d4 c1     mov   $c1+x,a
f4f8: 0b 00     asl   $00
f4fa: 82 14     set4  $14
f4fc: 2f 29     bra   $f527
; vcmd 70
f4fe: f8 15     mov   x,$15
f500: e8 24     mov   a,#$24
f502: d5 02 fd  mov   $fd02+x,a
f505: f7 08     mov   a,($08)+y
f507: 02 16     set0  $16
; unused vcmd
f509: 1c        asl   a
f50a: f8 15     mov   x,$15
f50c: d4 49     mov   $49+x,a
f50e: 82 14     set4  $14
f510: 2f 15     bra   $f527
; vcmd 72
f512: f8 15     mov   x,$15
f514: e8 1c     mov   a,#$1c
f516: d5 02 fd  mov   $fd02+x,a
f519: f7 08     mov   a,($08)+y
f51b: 02 16     set0  $16
; unused vcmd
f51d: 1c        asl   a
f51e: f8 15     mov   x,$15
f520: fb ad     mov   y,$ad+x
f522: cf        mul   ya
f523: db 67     mov   $67+x,y
f525: 8d 00     mov   y,#$00
f527: 90 02     bcc   $f52b
f529: 42 14     set2  $14
f52b: 43 14 17  bbs2  $14,$f545
f52e: 3a 08     incw  $08
f530: f7 08     mov   a,($08)+y
f532: f0 0c     beq   $f540
f534: 8d 7d     mov   y,#$7d
f536: cf        mul   ya
f537: d5 3e fd  mov   $fd3e+x,a
f53a: db 99     mov   $99+x,y
f53c: 7a 0e     addw  ya,$0e
f53e: da 0e     movw  $0e,ya
f540: 12 16     clr0  $16
f542: 5f 57 f3  jmp   $f357

f545: 03 16 e6  bbs0  $16,$f52e
f548: fb 99     mov   y,$99+x
f54a: f5 3e fd  mov   a,$fd3e+x
f54d: 7a 0e     addw  ya,$0e
f54f: da 0e     movw  $0e,ya
f551: 5f 57 f3  jmp   $f357

; vcmd 76
f554: 3a 08     incw  $08
f556: c4 00     mov   $00,a
f558: f8 15     mov   x,$15
f55a: e4 08     mov   a,$08
f55c: d5 ee fc  mov   $fcee+x,a
f55f: e4 09     mov   a,$09
f561: d5 f8 fc  mov   $fcf8+x,a
f564: f7 08     mov   a,($08)+y
f566: c4 09     mov   $09,a
f568: fa 00 08  mov   ($08),($00)
f56b: 5f 70 f3  jmp   $f370

; vcmd 77
f56e: f8 15     mov   x,$15
f570: f5 ee fc  mov   a,$fcee+x
f573: c4 08     mov   $08,a
f575: f5 f8 fc  mov   a,$fcf8+x
f578: c4 09     mov   $09,a
f57a: 5f 57 f3  jmp   $f357

; vcmd 74
f57d: f8 15     mov   x,$15
f57f: fb 3f     mov   y,$3f+x
f581: fc        inc   y
f582: e4 08     mov   a,$08
f584: d6 ac fd  mov   $fdac+y,a
f587: fc        inc   y
f588: e4 09     mov   a,$09
f58a: d6 ac fd  mov   $fdac+y,a
f58d: fc        inc   y
f58e: e8 01     mov   a,#$01
f590: db 3f     mov   $3f+x,y
f592: d6 ac fd  mov   $fdac+y,a
f595: 5f 64 f3  jmp   $f364

; vcmd 75
f598: f8 15     mov   x,$15
f59a: fb 3f     mov   y,$3f+x
f59c: 76 ac fd  cmp   a,$fdac+y
f59f: b0 17     bcs   $f5b8
f5a1: e4 38     mov   a,$38
f5a3: d0 1d     bne   $f5c2
f5a5: e8 00     mov   a,#$00
f5a7: c4 0f     mov   $0f,a
f5a9: c4 0e     mov   $0e,a
f5ab: c4 27     mov   $27,a
f5ad: 8f 80 28  mov   $28,#$80
f5b0: e4 25     mov   a,$25
f5b2: c4 21     mov   $21,a
f5b4: c4 29     mov   $29,a
f5b6: 2f 1c     bra   $f5d4
f5b8: d0 13     bne   $f5cd
f5ba: dd        mov   a,y
f5bb: a8 03     sbc   a,#$03
f5bd: d4 3f     mov   $3f+x,a
f5bf: 5f 57 f3  jmp   $f357

f5c2: dd        mov   a,y
f5c3: a8 03     sbc   a,#$03
f5c5: d4 3f     mov   $3f+x,a
f5c7: 8f 02 38  mov   $38,#$02
f5ca: 5f 57 f3  jmp   $f357

f5cd: f6 ac fd  mov   a,$fdac+y
f5d0: bc        inc   a
f5d1: d6 ac fd  mov   $fdac+y,a
f5d4: f6 ab fd  mov   a,$fdab+y
f5d7: c4 09     mov   $09,a
f5d9: f6 aa fd  mov   a,$fdaa+y
f5dc: c4 08     mov   $08,a
f5de: 5f 64 f3  jmp   $f364

; vcmd 6c
f5e1: f8 15     mov   x,$15
f5e3: d5 98 fd  mov   $fd98+x,a
f5e6: 68 00     cmp   a,#$00
f5e8: 10 04     bpl   $f5ee
f5ea: e8 ff     mov   a,#$ff
f5ec: 2f 02     bra   $f5f0
f5ee: e8 00     mov   a,#$00
f5f0: d5 a2 fd  mov   $fda2+x,a
f5f3: e8 00     mov   a,#$00
f5f5: d5 84 fd  mov   $fd84+x,a
f5f8: d5 8e fd  mov   $fd8e+x,a
f5fb: 5f 57 f3  jmp   $f357

; vcmd 67
f5fe: f8 15     mov   x,$15
f600: d5 70 fd  mov   $fd70+x,a
f603: 3a 08     incw  $08
f605: f7 08     mov   a,($08)+y
f607: d5 7a fd  mov   $fd7a+x,a
f60a: e8 01     mov   a,#$01
f60c: d5 66 fd  mov   $fd66+x,a
f60f: 5f 57 f3  jmp   $f357

; vcmd 68
f612: 68 80     cmp   a,#$80
f614: 90 29     bcc   $f63f
f616: 28 06     and   a,#$06
f618: 5d        mov   x,a
f619: 1f 1c f6  jmp   ($f61c+x)

f61c: dw $f63f  ; 80
f61f: dw $f638  ; 81
f620: dw $f62e  ; 82
f622: dw $f624  ; 83

f624: f8 15     mov   x,$15
f626: e8 00     mov   a,#$00
f628: d5 66 fd  mov   $fd66+x,a
f62b: 5f 57 f3  jmp   $f357

f62e: e5 78 fd  mov   a,$fd78
f631: c5 79 fd  mov   $fd79,a
f634: f0 ee     beq   $f624
f636: 2f 07     bra   $f63f
f638: f8 15     mov   x,$15
f63a: f5 70 fd  mov   a,$fd70+x
f63d: f0 e5     beq   $f624
f63f: 1c        asl   a
f640: 5d        mov   x,a
f641: f5 c0 0a  mov   a,$0ac0+x
f644: c4 00     mov   $00,a
f646: f5 c1 0a  mov   a,$0ac1+x
f649: f8 15     mov   x,$15
f64b: d5 7a fd  mov   $fd7a+x,a
f64e: e4 00     mov   a,$00
f650: d5 70 fd  mov   $fd70+x,a
f653: e8 01     mov   a,#$01
f655: d5 66 fd  mov   $fd66+x,a
f658: 5f 57 f3  jmp   $f357

; vcmd 73
f65b: f8 15     mov   x,$15
f65d: c4 00     mov   $00,a
f65f: f5 66 fd  mov   a,$fd66+x
f662: d0 05     bne   $f669
f664: e4 00     mov   a,$00
f666: d5 20 fd  mov   $fd20+x,a
f669: 5f 57 f3  jmp   $f357

; unused vcmd
f66c: f8 15     mov   x,$15
f66e: d4 b7     mov   $b7+x,a
f670: 5f 57 f3  jmp   $f357

; vcmd 7a
f673: f8 15     mov   x,$15
f675: d5 16 fd  mov   $fd16+x,a
f678: 5f 57 f3  jmp   $f357

; vcmd 7b
f67b: f8 15     mov   x,$15
f67d: d5 0c fd  mov   $fd0c+x,a
f680: 3f 8e f6  call  $f68e
f683: f4 85     mov   a,$85+x
f685: d4 71     mov   $71+x,a
f687: f4 8f     mov   a,$8f+x
f689: d4 7b     mov   $7b+x,a
f68b: 5f 57 f3  jmp   $f357

f68e: 8d 08     mov   y,#$08
f690: cf        mul   ya
f691: 7a 0a     addw  ya,$0a
f693: da 00     movw  $00,ya
f695: c3 14 12  bbs6  $14,$f6aa
f698: 8d 02     mov   y,#$02
f69a: f5 d0 fc  mov   a,$fcd0+x
f69d: 08 06     or    a,#$06
f69f: c4 f2     mov   $f2,a             ; ADSR(2)
f6a1: f7 00     mov   a,($00)+y
f6a3: c4 f3     mov   $f3,a
f6a5: 8b f2     dec   $f2               ; ADSR(1)
f6a7: dc        dec   y
f6a8: 10 f7     bpl   $f6a1
f6aa: 8d 03     mov   y,#$03
f6ac: f7 00     mov   a,($00)+y
f6ae: d4 8f     mov   $8f+x,a
f6b0: fc        inc   y
f6b1: f7 00     mov   a,($00)+y
f6b3: d4 85     mov   $85+x,a
f6b5: fc        inc   y
f6b6: f7 00     mov   a,($00)+y
f6b8: d4 ad     mov   $ad+x,a
f6ba: fc        inc   y
f6bb: f5 66 fd  mov   a,$fd66+x
f6be: d0 05     bne   $f6c5
f6c0: f7 00     mov   a,($00)+y
f6c2: d5 20 fd  mov   $fd20+x,a
f6c5: fc        inc   y
f6c6: f7 00     mov   a,($00)+y
f6c8: d5 16 fd  mov   $fd16+x,a
f6cb: e8 00     mov   a,#$00
f6cd: d4 c1     mov   $c1+x,a
f6cf: d5 84 fd  mov   $fd84+x,a
f6d2: d5 8e fd  mov   $fd8e+x,a
f6d5: d5 98 fd  mov   $fd98+x,a
f6d8: d5 a2 fd  mov   $fda2+x,a
f6db: e8 80     mov   a,#$80
f6dd: d4 49     mov   $49+x,a
f6df: 6f        ret

; vcmd 78
f6e0: f8 15     mov   x,$15
f6e2: e2 14     set7  $14
f6e4: 09 13 11  or    ($11),($13)
f6e7: c8 08     cmp   x,#$08
f6e9: 90 34     bcc   $f71f
f6eb: 8f 5c f2  mov   $f2,#$5c          ; KOF
f6ee: fa 13 f3  mov   ($f3),($13)
f6f1: 1d        dec   x
f6f2: 1d        dec   x
f6f3: 8f 3d f2  mov   $f2,#$3d          ; NON
f6f6: 8f 00 f3  mov   $f3,#$00
f6f9: f5 bc fc  mov   a,$fcbc+x
f6fc: 28 af     and   a,#$af
f6fe: d5 bc fc  mov   $fcbc+x,a
f701: f5 0c fd  mov   a,$fd0c+x
f704: 8d 08     mov   y,#$08
f706: cf        mul   ya
f707: 7a 0a     addw  ya,$0a
f709: da 00     movw  $00,ya
f70b: 8d 02     mov   y,#$02
f70d: f5 d0 fc  mov   a,$fcd0+x
f710: 08 06     or    a,#$06
f712: c4 f2     mov   $f2,a             ; ADSR(2)
f714: f7 00     mov   a,($00)+y
f716: c4 f3     mov   $f3,a
f718: 8b f2     dec   $f2               ; ADSR(1)
f71a: dc        dec   y
f71b: 10 f7     bpl   $f714
f71d: f8 15     mov   x,$15
f71f: e8 00     mov   a,#$00
f721: d5 66 fd  mov   $fd66+x,a
f724: e4 14     mov   a,$14
f726: 28 e7     and   a,#$e7
f728: d5 bc fc  mov   $fcbc+x,a
f72b: 6f        ret

f72c: 5d        mov   x,a
f72d: e8 00     mov   a,#$00
f72f: d5 16 fd  mov   $fd16+x,a
f732: d4 5d     mov   $5d+x,a
f734: d5 48 fd  mov   $fd48+x,a
f737: d4 a3     mov   $a3+x,a
f739: d5 3e fd  mov   $fd3e+x,a
f73c: d5 66 fd  mov   $fd66+x,a
f73f: e8 80     mov   a,#$80
f741: d4 99     mov   $99+x,a
f743: e8 20     mov   a,#$20
f745: d4 b7     mov   $b7+x,a
f747: 3a 08     incw  $08
f749: f7 08     mov   a,($08)+y
f74b: d5 da fc  mov   $fcda+x,a
f74e: 3a 08     incw  $08
f750: f7 08     mov   a,($08)+y
f752: d5 e4 fc  mov   $fce4+x,a
f755: 7d        mov   a,x
f756: 8d 18     mov   y,#$18
f758: cf        mul   ya
f759: d4 3f     mov   $3f+x,a
f75b: ba 0e     movw  ya,$0e
f75d: 7a 29     addw  ya,$29
f75f: db 53     mov   $53+x,y
f761: d5 2a fd  mov   $fd2a+x,a
f764: f5 bc fc  mov   a,$fcbc+x
f767: 38 20 14  and   $14,#$20
f76a: 28 40     and   a,#$40
f76c: 04 14     or    a,$14
f76e: d5 bc fc  mov   $fcbc+x,a
f771: c8 08     cmp   x,#$08
f773: 90 11     bcc   $f786
f775: 1d        dec   x
f776: 1d        dec   x
f777: f5 bc fc  mov   a,$fcbc+x
f77a: 08 40     or    a,#$40
f77c: d5 bc fc  mov   $fcbc+x,a
f77f: f5 c6 fc  mov   a,$fcc6+x
f782: 04 11     or    a,$11
f784: c4 11     mov   $11,a
f786: 6f        ret

f787: e4 27     mov   a,$27
f789: f0 19     beq   $f7a4
f78b: 69 26 28  cmp   ($28),($26)
f78e: f0 20     beq   $f7b0
f790: b0 0a     bcs   $f79c
f792: a9 27 26  sbc   ($26),($27)
f795: 69 28 26  cmp   ($26),($28)
f798: 90 0a     bcc   $f7a4
f79a: 2f 0b     bra   $f7a7
f79c: 89 27 26  adc   ($26),($27)
f79f: 69 28 26  cmp   ($26),($28)
f7a2: 90 03     bcc   $f7a7
f7a4: fa 28 26  mov   ($26),($28)
f7a7: ba 25     movw  ya,$25
f7a9: cf        mul   ya
f7aa: da 00     movw  $00,ya
f7ac: 7a 00     addw  ya,$00
f7ae: cb 21     mov   $21,y
f7b0: 6f        ret

f7b1: e4 2d     mov   a,$2d
f7b3: f0 1f     beq   $f7d4
f7b5: 69 2f 2e  cmp   ($2e),($2f)
f7b8: f0 1d     beq   $f7d7
f7ba: e2 20     set7  $20
f7bc: b0 0c     bcs   $f7ca
f7be: a9 2d 2f  sbc   ($2f),($2d)
f7c1: 90 11     bcc   $f7d4
f7c3: 69 2e 2f  cmp   ($2f),($2e)
f7c6: 90 0c     bcc   $f7d4
f7c8: 2f 0d     bra   $f7d7
f7ca: 89 2d 2f  adc   ($2f),($2d)
f7cd: b0 05     bcs   $f7d4
f7cf: 69 2e 2f  cmp   ($2f),($2e)
f7d2: 90 03     bcc   $f7d7
f7d4: fa 2e 2f  mov   ($2f),($2e)
f7d7: ba 2f     movw  ya,$2f
f7d9: 1c        asl   a
f7da: b0 01     bcs   $f7dd
f7dc: cf        mul   ya
f7dd: cb 22     mov   $22,y
f7df: eb 31     mov   y,$31
f7e1: e4 2f     mov   a,$2f
f7e3: 1c        asl   a
f7e4: b0 01     bcs   $f7e7
f7e6: cf        mul   ya
f7e7: 8f 2c f2  mov   $f2,#$2c          ; EVOL(L)
f7ea: cb f3     mov   $f3,y
f7ec: eb 32     mov   y,$32
f7ee: e4 2f     mov   a,$2f
f7f0: 1c        asl   a
f7f1: b0 01     bcs   $f7f4
f7f3: cf        mul   ya
f7f4: 8f 3c f2  mov   $f2,#$3c          ; EVOL(R)
f7f7: cb f3     mov   $f3,y
f7f9: 6f        ret

f7fa: 73 16 11  bbc3  $16,$f80e
f7fd: a2 20     set5  $20
f7ff: fa 21 29  mov   ($29),($21)
f802: ba 3b     movw  ya,$3b
f804: f0 0c     beq   $f812
f806: 9a 29     subw  ya,$29
f808: da 3b     movw  $3b,ya
f80a: 5a 29     cmpw  ya,$29
f80c: 90 04     bcc   $f812
f80e: fa 3d f5  mov   ($f5),($3d)
f811: 6f        ret

f812: 8d 00     mov   y,#$00
f814: f7 39     mov   a,($39)+y
f816: 3a 39     incw  $39
f818: 68 f0     cmp   a,#$f0
f81a: 90 07     bcc   $f823
f81c: 28 0f     and   a,#$0f
f81e: 1c        asl   a
f81f: 5d        mov   x,a
f820: 1f 2c f8  jmp   ($f82c+x)

f823: 3a 3d     incw  $3d
f825: 8d 7d     mov   y,#$7d
f827: cf        mul   ya
f828: 7a 3b     addw  ya,$3b
f82a: 2f dc     bra   $f808

f82c: dw $f84c  ; f0
f82e: dw $f855  ; f1
f830: dw $f859  ; f2
f832: dw $f859  ; f3
f834: dw $f859  ; f4
f836: dw $f859  ; f5
f838: dw $f859  ; f6
f83a: dw $f859  ; f7
f83c: dw $f859  ; f8
f83e: dw $f859  ; f9
f840: dw $f859  ; fa
f842: dw $f859  ; fb
f844: dw $f859  ; fc
f846: dw $f859  ; fd
f848: dw $f859  ; fe
f84a: dw $f859  ; ff

f84c: e8 f0     mov   a,#$f0
f84e: 8d 7d     mov   y,#$7d
f850: cf        mul   ya
f851: 7a 3b     addw  ya,$3b
f853: 2f b3     bra   $f808
f855: 1a 3d     decw  $3d
f857: 2f b9     bra   $f812
f859: 72 16     clr3  $16
f85b: 6f        ret

f85c: f5 66 fd  mov   a,$fd66+x
f85f: f0 30     beq   $f891
f861: 9c        dec   a
f862: f0 04     beq   $f868
f864: d5 66 fd  mov   $fd66+x,a
f867: 6f        ret

f868: f5 70 fd  mov   a,$fd70+x
f86b: c4 08     mov   $08,a
f86d: f5 7a fd  mov   a,$fd7a+x
f870: c4 09     mov   $09,a
f872: 8d 00     mov   y,#$00
f874: f7 08     mov   a,($08)+y
f876: 3a 08     incw  $08
f878: 68 f0     cmp   a,#$f0
f87a: 90 09     bcc   $f885
f87c: 28 0f     and   a,#$0f
f87e: 9f        xcn   a
f87f: 5c        lsr   a
f880: d5 20 fd  mov   $fd20+x,a
f883: 2f ef     bra   $f874
f885: d5 66 fd  mov   $fd66+x,a
f888: ba 08     movw  ya,$08
f88a: d5 70 fd  mov   $fd70+x,a
f88d: dd        mov   a,y
f88e: d5 7a fd  mov   $fd7a+x,a
f891: 6f        ret

; cpu cmd
f892: dw $f1be  ; 00 - null
f894: dw $f9a7  ; 01
f896: dw $fa74  ; 02
f898: dw $f8d8  ; 03
f89a: dw $f8f5  ; 04
f89c: dw $f8ef  ; 05
f89e: dw $f9ad  ; 06
f8a0: dw $f992  ; 07
f8a2: dw $fa26  ; 08
f8a4: dw $fa37  ; 09
f8a6: dw $f9d9  ; 0a
f8a8: dw $f9de  ; 0b
f8aa: dw $f9e3  ; 0c
f8ac: dw $f9e8  ; 0d
f8ae: dw $f9b6  ; 0e
f8b0: dw $fa40  ; 0f
f8b2: dw $f9ed  ; 10
f8b4: dw $f8df  ; 11
f8b6: dw $f8e6  ; 12
f8b8: dw $fa5e  ; 13
f8ba: dw $0000  ; 14
f8bc: dw $0000  ; 15
f8be: dw $0000  ; 16
f8c0: dw $0000  ; 17
f8c2: dw $0000  ; 18
f8c4: dw $0000  ; 19
f8c6: dw $0000  ; 1a
f8c8: dw $0000  ; 1b
f8ca: dw $0000  ; 1c
f8cc: dw $0000  ; 1d
f8ce: dw $0000  ; 1e
f8d0: dw $0000  ; 1f
f8d2: dw $f9c7  ; 20
f8d4: dw $f9cd  ; 21
f8d6: dw $f9d3  ; 22

; cpu cmd 03
f8d8: ba 18     movw  ya,$18
f8d9: da 1b     movw  $1b,ya
f8dc: 5f be f1  jmp   $f1be

; cpu cmd 11
f8df: ba 1b     movw  ya,$1b
f8e1: da 1d     movw  $1d,ya
f8e3: 5f be f1  jmp   $f1be

; cpu cmd 12
f8e6: ba 1d     movw  ya,$1d
f8e8: da 1b     movw  $1b,ya
f8ea: c2 16     set6  $16
f8ec: 5f be f1  jmp   $f1be

; cpu cmd 05
f8ef: ba 19     movw  ya,$19
f8f1: da 1b     movw  $1b,ya
f8f3: 2f 26     bra   $f91b
; cpu cmd 04
f8f5: 60        clrc
f8f6: e4 18     mov   a,$18
f8f8: 8d 04     mov   y,#$04
f8fa: cf        mul   ya
f8fb: da 00     movw  $00,ya
f8fd: 98 06 01  adc   $01,#$06
f900: ba 1b     movw  ya,$1b
f902: 7a 19     addw  ya,$19
f904: da 02     movw  $02,ya
f906: 8d 00     mov   y,#$00
f908: e4 1b     mov   a,$1b
f90a: d7 00     mov   ($00)+y,a
f90c: fc        inc   y
f90d: e4 1c     mov   a,$1c
f90f: d7 00     mov   ($00)+y,a
f911: fc        inc   y
f912: e4 02     mov   a,$02
f914: d7 00     mov   ($00)+y,a
f916: fc        inc   y
f917: e4 03     mov   a,$03
f919: d7 00     mov   ($00)+y,a
f91b: c3 16 35  bbs6  $16,$f953
f91e: 8f 5c f2  mov   $f2,#$5c          ; KOF
f921: 8f ff f3  mov   $f3,#$ff
f924: 8f 3d f2  mov   $f2,#$3d          ; NON
f927: 8f 00 f3  mov   $f3,#$00
f92a: eb f4     mov   y,$f4
f92c: d0 fc     bne   $f92a
f92e: e4 f6     mov   a,$f6
f930: cb f4     mov   $f4,y
f932: d7 1b     mov   ($1b)+y,a
f934: dd        mov   a,y
f935: fc        inc   y
f936: d0 02     bne   $f93a
f938: ab 1c     inc   $1c
f93a: c4 f4     mov   $f4,a
f93c: 64 f4     cmp   a,$f4
f93e: f0 fa     beq   $f93a
f940: 7e f4     cmp   y,$f4
f942: f0 ea     beq   $f92e
f944: 9c        dec   a
f945: c4 17     mov   $17,a
f947: c4 f4     mov   $f4,a
f949: dd        mov   a,y
f94a: 8d 00     mov   y,#$00
f94c: 7a 1b     addw  ya,$1b
f94e: da 1b     movw  $1b,ya
f950: 5f be f1  jmp   $f1be

f953: f8 fd     mov   x,$fd
f955: f0 07     beq   $f95e
f957: 2d        push  a
f958: 6d        push  y
f959: 3f dc fa  call  $fadc
f95c: ee        pop   y
f95d: ae        pop   a
f95e: eb f4     mov   y,$f4
f960: d0 f1     bne   $f953
f962: e4 f6     mov   a,$f6
f964: cb f4     mov   $f4,y
f966: d7 1b     mov   ($1b)+y,a
f968: dd        mov   a,y
f969: fc        inc   y
f96a: d0 02     bne   $f96e
f96c: ab 1c     inc   $1c
f96e: f8 fd     mov   x,$fd
f970: f0 07     beq   $f979
f972: 2d        push  a
f973: 6d        push  y
f974: 3f dc fa  call  $fadc
f977: ee        pop   y
f978: ae        pop   a
f979: c4 f4     mov   $f4,a
f97b: 64 f4     cmp   a,$f4
f97d: f0 ef     beq   $f96e
f97f: 7e f4     cmp   y,$f4
f981: f0 df     beq   $f962
f983: 9c        dec   a
f984: c4 17     mov   $17,a
f986: c4 f4     mov   $f4,a
f988: dd        mov   a,y
f989: 8d 00     mov   y,#$00
f98b: 7a 1b     addw  ya,$1b
f98d: da 1b     movw  $1b,ya
f98f: 5f be f1  jmp   $f1be

; cpu cmd 07
f992: 8f 0c f2  mov   $f2,#$0c          ; MVOL(L)
f995: e4 18     mov   a,$18
f997: c4 33     mov   $33,a
f999: c4 f3     mov   $f3,a
f99b: 8f 1c f2  mov   $f2,#$1c          ; MVOL(R)
f99e: e4 19     mov   a,$19
f9a0: c4 34     mov   $34,a
f9a2: c4 f3     mov   $f3,a
f9a4: 5f be f1  jmp   $f1be

; cpu cmd 01
f9a7: fa 18 16  mov   ($16),($18)
f9aa: 5f be f1  jmp   $f1be

; cpu cmd 06
f9ad: fa 18 2e  mov   ($2e),($18)
f9b0: fa 19 2d  mov   ($2d),($19)
f9b3: 5f be f1  jmp   $f1be

; cpu cmd 0e
f9b6: a3 16 07  bbs5  $16,$f9c0
f9b9: a2 16     set5  $16
f9bb: 92 16     clr4  $16
f9bd: 5f be f1  jmp   $f1be

f9c0: b2 16     clr5  $16
f9c2: 82 16     set4  $16
f9c4: 5f be f1  jmp   $f1be

; cpu cmd 20
f9c7: fa 18 37  mov   ($37),($18)
f9ca: 5f be f1  jmp   $f1be

; cpu cmd 21
f9cd: 8f 50 37  mov   $37,#$50
f9d0: 5f be f1  jmp   $f1be

; cpu cmd 22
f9d3: 8f 01 38  mov   $38,#$01
f9d6: 5f be f1  jmp   $f1be

; cpu cmd 0a
f9d9: 8f 06 00  mov   $00,#$06
f9dc: 2f 1c     bra   $f9fa
; cpu cmd 0b
f9de: 8f 07 00  mov   $00,#$07
f9e1: 2f 17     bra   $f9fa
; cpu cmd 0c
f9e3: 8f 08 00  mov   $00,#$08
f9e6: 2f 12     bra   $f9fa
; cpu cmd 0d
f9e8: 8f 09 00  mov   $00,#$09
f9eb: 2f 0d     bra   $f9fa
; cpu cmd 10
f9ed: f8 18     mov   x,$18
f9ef: f5 c0 09  mov   a,$09c0+x
f9f2: c4 00     mov   $00,a
f9f4: 5d        mov   x,a
f9f5: e4 19     mov   a,$19
f9f7: d5 70 fd  mov   $fd70+x,a
f9fa: 8d 02     mov   y,#$02
f9fc: e4 18     mov   a,$18
f9fe: cf        mul   ya
f9ff: 7a 0c     addw  ya,$0c
fa01: da 08     movw  $08,ya
fa03: 1a 08     decw  $08
fa05: a2 14     set5  $14
fa07: 8d 00     mov   y,#$00
fa09: cb 0f     mov   $0f,y
fa0b: cb 0e     mov   $0e,y
fa0d: 8f 3d f2  mov   $f2,#$3d          ; NON
fa10: cb f3     mov   $f3,y
fa12: e5 00 08  mov   a,$0800
fa15: c4 23     mov   $23,a
fa17: c4 29     mov   $29,a
fa19: e5 01 08  mov   a,$0801
fa1c: c4 24     mov   $24,a
fa1e: e4 00     mov   a,$00
fa20: 3f 2c f7  call  $f72c
fa23: 5f be f1  jmp   $f1be

; cpu cmd 08
fa26: 8d fc     mov   y,#$fc
fa28: e8 8f     mov   a,#$8f
fa2a: 8f 00 18  mov   $18,#$00
fa2d: 8f 80 19  mov   $19,#$80
fa30: 8f 00 1a  mov   $1a,#$00
fa33: 72 16     clr3  $16
fa35: 2f 41     bra   $fa78
; cpu cmd 09
fa37: 8d fc     mov   y,#$fc
fa39: e8 ba     mov   a,#$ba
fa3b: 8f 09 00  mov   $00,#$09
fa3e: 2f c1     bra   $fa01
; cpu cmd 0f
fa40: 8d 00     mov   y,#$00
fa42: 8f 5c f2  mov   $f2,#$5c          ; KOF
fa45: 8f ff f3  mov   $f3,#$ff
fa48: 8f 3d f2  mov   $f2,#$3d          ; NON
fa4b: cb f3     mov   $f3,y
fa4d: 3f bb fa  call  $fabb
fa50: 8f bb f4  mov   $f4,#$bb
fa53: 8f aa f5  mov   $f5,#$aa
fa56: 78 cc f4  cmp   $f4,#$cc
fa59: d0 fb     bne   $fa56
fa5b: 5f 80 f1  jmp   $f180

; cpu cmd 13
fa5e: e5 00 07  mov   a,$0700
fa61: c4 39     mov   $39,a
fa63: e5 01 07  mov   a,$0701
fa66: c4 3a     mov   $3a,a
fa68: e8 00     mov   a,#$00
fa6a: c4 3d     mov   $3d,a
fa6c: c4 3e     mov   $3e,a
fa6e: c4 3b     mov   $3b,a
fa70: c4 3c     mov   $3c,a
fa72: 62 16     set3  $16
; cpu cmd 02
fa74: 8d 52     mov   y,#$52
fa76: e8 00     mov   a,#$00
fa78: da 00     movw  $00,ya
fa7a: 8f ff 08  mov   $08,#$ff
fa7d: 8f ff 09  mov   $09,#$ff
fa80: 0b 18     asl   $18
fa82: f8 18     mov   x,$18
fa84: f5 00 08  mov   a,$0800+x
fa87: c4 21     mov   $21,a
fa89: c4 25     mov   $25,a
fa8b: c4 29     mov   $29,a
fa8d: f5 01 08  mov   a,$0801+x
fa90: c4 22     mov   $22,a
fa92: c4 30     mov   $30,a
fa94: 8d 00     mov   y,#$00
fa96: cb 0f     mov   $0f,y
fa98: cb 0e     mov   $0e,y
fa9a: cb 38     mov   $38,y
fa9c: 3f bb fa  call  $fabb
fa9f: b2 14     clr5  $14
faa1: cb 27     mov   $27,y
faa3: 8f 80 28  mov   $28,#$80
faa6: e8 00     mov   a,#$00
faa8: 3f 2c f7  call  $f72c
faab: fa 19 2e  mov   ($2e),($19)
faae: fa 1a 2d  mov   ($2d),($1a)
fab1: 8f 00 2f  mov   $2f,#$00
fab4: eb fd     mov   y,$fd
fab6: f0 fc     beq   $fab4
fab8: 5f da f1  jmp   $f1da

fabb: a2 12     set5  $12
fabd: 8f 4d f2  mov   $f2,#$4d          ; EON
fac0: cb f3     mov   $f3,y
fac2: 8f 0d f2  mov   $f2,#$0d          ; EFB
fac5: cb f3     mov   $f3,y
fac7: 8f 2c f2  mov   $f2,#$2c          ; EVOL(L)
faca: cb f3     mov   $f3,y
facc: 8f 3c f2  mov   $f2,#$3c          ; EVOL(R)
facf: cb f3     mov   $f3,y
fad1: 8f 6c f2  mov   $f2,#$6c          ; FLG
fad4: fa 12 f3  mov   ($f3),($12)
fad7: cb 31     mov   $31,y
fad9: cb 32     mov   $32,y
fadb: 6f        ret

fadc: 8f 00 f1  mov   $f1,#$00
fadf: e4 37     mov   a,$37
fae1: c4 fa     mov   $fa,a
fae3: 8f 01 f1  mov   $f1,#$01
fae6: 8f 4c f2  mov   $f2,#$4c          ; KON
fae9: fa 10 f3  mov   ($f3),($10)
faec: 8f 5c f2  mov   $f2,#$5c          ; KOF
faef: fa 11 f3  mov   ($f3),($11)
faf2: 78 01 38  cmp   $38,#$01
faf5: f0 03     beq   $fafa
faf7: 8f 00 38  mov   $38,#$00
fafa: cd 00     mov   x,#$00
fafc: d8 20     mov   $20,x
fafe: d8 10     mov   $10,x
fb00: d8 11     mov   $11,x
fb02: d8 15     mov   $15,x
fb04: b3 16 0f  bbc5  $16,$fb16
fb07: 8f 0d f2  mov   $f2,#$0d          ; EFB
fb0a: 8f 50 f3  mov   $f3,#$50
fb0d: 8f 4d f2  mov   $f2,#$4d          ; EON
fb10: e4 36     mov   a,$36
fb12: 28 3f     and   a,#$3f
fb14: c4 f3     mov   $f3,a
fb16: 93 16 0c  bbc4  $16,$fb25
fb19: 8f 0d f2  mov   $f2,#$0d          ; EFB
fb1c: fa 35 f3  mov   ($f3),($35)
fb1f: 8f 4d f2  mov   $f2,#$4d          ; EON
fb22: fa 36 f3  mov   ($f3),($36)
fb25: a3 16 09  bbs5  $16,$fb31
fb28: 3f b1 f7  call  $f7b1
fb2b: 3f 87 f7  call  $f787
fb2e: 3f fa f7  call  $f7fa
fb31: f8 15     mov   x,$15
fb33: f5 c6 fc  mov   a,$fcc6+x
fb36: c4 13     mov   $13,a
fb38: f5 bc fc  mov   a,$fcbc+x
fb3b: c4 14     mov   $14,a
fb3d: 30 0e     bmi   $fb4d
fb3f: 78 08 15  cmp   $15,#$08
fb42: b0 06     bcs   $fb4a
fb44: a3 16 1c  bbs5  $16,$fb63
fb47: 83 16 1e  bbs4  $16,$fb68
fb4a: 3f 8a f3  call  $f38a             ; dispatch vcmd
fb4d: c8 08     cmp   x,#$08
fb4f: 90 05     bcc   $fb56
fb51: 1c        asl   a
fb52: 6b 20     ror   $20
fb54: 2f 03     bra   $fb59
fb56: 1c        asl   a
fb57: 6b 1f     ror   $1f
fb59: ab 15     inc   $15
fb5b: 78 0a 15  cmp   $15,#$0a
fb5e: d0 d1     bne   $fb31
fb60: 92 16     clr4  $16
fb62: 6f        ret

fb63: 09 13 11  or    ($11),($13)
fb66: 2f e5     bra   $fb4d
;
fb68: fb 99     mov   y,$99+x
fb6a: f5 3e fd  mov   a,$fd3e+x
fb6d: da 00     movw  $00,ya
fb6f: f5 48 fd  mov   a,$fd48+x
fb72: fb a3     mov   y,$a3+x
fb74: 5a 00     cmpw  ya,$00
fb76: 90 d2     bcc   $fb4a
fb78: 09 13 10  or    ($10),($13)
fb7b: 2f cd     bra   $fb4a

; offsets for vcmd address table (vcmds 00-7f)
;         +0  +1  +2  +3  +4  +5  +6  +7  +8  +9  +a  +b  +c  +d  +e  +f
fb7d: db $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; 00-0f
fb8d: db $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; 10-1f
fb9d: db $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; 20-2f
fbad: db $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; 30-3f
fbbd: db $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; 40-4f
fbcd: db $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02 ; 50-5f
fbdd: db $02,$02,$02,$02,$02,$02,$02,$3a,$38,$36,$20,$34,$32,$30,$2e,$10 ; 60-6f
fbed: db $22,$26,$1a,$1e,$16,$18,$12,$14,$2c,$2a,$0e,$0c,$0a,$08,$06,$04 ; 70-7f

; vcmd dispatch table (NOT in command number order)
fbfd: dw $f357                          ; unused? (offset $00)
fbff: dw $f1f6                          ; 00-66
fc01: dw $f349                          ; 7f
fc03: dw $f2e4                          ; 7e
fc05: dw $f2f8                          ; 7d
fc07: dw $f321                          ; 7c
fc09: dw $f67b                          ; 7b
fc0b: dw $f673                          ; 7a
fc0d: dw $f4a0                          ; 6f
fc0f: dw $f554                          ; 76
fc01: dw $f56e                          ; 77
fc03: dw $f57d                          ; 74
fc05: dw $f598                          ; 75
fc07: dw $f512                          ; 72
fc09: dw $f51d                          ; unused? (offset $1c)
fc0b: dw $f65b                          ; 73
fc0d: dw $f66c                          ; 6a
fc0f: dw $f4fe                          ; 70
fc01: dw $f509                          ; unused? (offset $24)
fc03: dw $f4e5                          ; 71
fc05: dw $f4f0                          ; unused? (offset $28)
fc07: dw $f495                          ; 79
fc09: dw $f6e0                          ; 78
fc0b: dw $f48f                          ; 6e
fc0d: dw $f4c4                          ; 6d
fc0f: dw $f5e1                          ; 6c
fc01: dw $f300                          ; 6b
fc03: dw $f4a6                          ; 69 - write to S-DSP register
fc05: dw $f612                          ; 68
fc07: dw $f5fe                          ; 67

; pitch table
fc39: dw $085f
fc3b: dw $08de
fc3d: dw $0965
fc3f: dw $09f4
fc41: dw $0a8c
fc43: dw $0b2c
fc45: dw $0bd6
fc47: dw $0c8b
fc49: dw $0d4a
fc4b: dw $0e14
fc4d: dw $0eea
fc4f: dw $0fcd
fc51: dw $10be

fc53: db $ff,$fd,$fa,$f6,$f0,$e8,$de,$d2,$c4,$b4,$a0,$88,$6c,$4c,$28,$00

fc63: db $00,$28,$4c,$6c,$88,$a0,$b4,$c4,$d2,$de,$e8,$f0,$f6,$fa,$fd,$ff

; S-DSP register initialization table
; EON,EFB,EVOL(L),EVOL(R),FLG,KON,KOF,NON,PMON,DIR,ESA,EDL,MVOL(L),MVOL(R)
fc73: db $4d,$0d,$2c,$3c,$6c,$4c,$5c,$3d,$2d,$5d,$6d,$7d,$0c,$1c
fc81: db $00,$00,$00,$00,$20,$00,$00,$00,$00,$06,$f1,$00,$7f,$7f

fc8f: db $69,$0c,$7f,$69,$1c,$7f,$6e,$01,$b9,$fc,$6e,$02,$b9,$fc,$6e,$03,$b9,$fc,$6e,$04,$b9,$fc,$6e,$05,$b9,$fc,$6e,$06,$b9,$fc,$6e,$07,$b9,$fc,$6e,$09,$b9,$fc,$6e,$08,$b9,$fc,$78,$b5,$fc

fcbc: db $00,$00,$02,$00,$00,$00,$02,$00,$80,$80

fcc6: db $01,$02,$04,$08,$10,$20,$40,$80,$40,$80

fcd0: db $00,$10,$20,$30,$40,$50,$60,$70,$60,$70
