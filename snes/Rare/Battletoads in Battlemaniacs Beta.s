;Battletoads in Battlemaniacs
;Disassembly by KungFuFurby

;Load new data
ff98: cd 00     mov   x,#$00
ff9a: e5 bf ff  mov   a,$ffbf
ff9d: 48 80     eor   a,#$80
ff9f: c5 bf ff  mov   $ffbf,a
ffa2: c4 f4     mov   $f4,a
ffa4: e4 f4     mov   a,$f4 ;Wait for CPUIO0 to flip the highest bit
ffa6: 45 bf ff  eor   a,$ffbf
ffa9: 30 f9     bmi   $ffa4
ffab: d0 03     bne   $ffb0 ;%?xxxxxxx - CPUIO0 Command ID
;CPUIO0 Command %?0000000 ($00/$80) - Jump to CPUIO2
ffad: 1f f6 00  jmp   ($00f6+x)
ffb0: 9c        dec   a
ffb1: d0 06     bne   $ffb9
;CPUIO0 Command %?1111111 ($7F/$FF) - Send Byte to Pointer
ffb3: e4 f5     mov   a,$f5     ;Read byte from CPUIO1
ffb5: c7 f6     mov   ($f6+x),a ;Sent to pointer at CPUIO2
ffb7: 2f e1     bra   $ff9a
;Not %?0000000 or %?1111111
;CPUIO0 Command $01-$7F/$81-$FE - Send Byte from Pointer to SNES
ffb9: e7 f6     mov   a,($f6+x) ;Read byte from pointer at CPUIO2
ffbb: c4 f5     mov   $f5,a     ;Send to SNES through CPUIO1
ffbd: 2f db     bra   $ff9a

;Boot program
0300: 8d 00     mov   y,#$00
0302: 20        clrp
0303: 8f 00 f7  mov   $f7,#$00 ;Acknowledge by clearing out CPUIO3
0306: cd ff     mov   x,#$ff
0308: bd        mov   sp,x
0309: 3d        inc   x
030a: 7d        mov   a,x
030b: af        mov   (x)+,a
030c: c8 f0     cmp   x,#$f0
030e: d0 fb     bne   $030b
0310: 5d        mov   x,a
0311: d5 00 01  mov   $0100+x,a
0314: d5 00 02  mov   $0200+x,a
0317: 3d        inc   x
0318: d0 f7     bne   $0311
031a: c4 f6     mov   $f6,a ;Clear out CPUIO2 to indicate completion of boot
031c: c4 03     mov   $03,a
031e: ad 00     cmp   y,#$00
0320: 10 16     bpl   $0338
0322: 6d        push  y
0323: 8d 02     mov   y,#$02
0325: 3f bc 0d  call  $0dbc
0328: e8 00     mov   a,#$00
032a: cd 05     mov   x,#$05
032c: d4 7f     mov   $7f+x,a
032e: 1d        dec   x
032f: 10 fb     bpl   $032c
0331: ee        pop   y
0332: 3f a2 07  call  $07a2
0335: 5f 3b 03  jmp   $033b
;CPUIO2 Command $FF - Play Music ID $00
;CPUIO2 Command $01-$7F - Play Music
0338: 3f bc 0d  call  $0dbc
033b: 8f 85 fa  mov   $fa,#$85
033e: 8f 00 f6  mov   $f6,#$00
0341: 8f 21 f1  mov   $f1,#$21
;Acknowledge command by switching lowest bit of CPUIO3
0344: e4 0a     mov   a,$0a
0346: 48 01     eor   a,#$01
0348: c4 0a     mov   $0a,a
034a: c4 f7     mov   $f7,a
034c: e4 fd     mov   a,$fd
034e: f0 fc     beq   $034c
0350: eb f6     mov   y,$f6 ;Check for a sound driver command from CPUIO2
0352: f0 48     beq   $039c
0354: ad f3     cmp   y,#$f3
0356: 90 32     bcc   $038a
0358: ad fb     cmp   y,#$fb
035a: 90 10     bcc   $036c
035c: f0 16     beq   $0374
035e: fc        inc   y
035f: f0 d7     beq   $0338
0361: fc        inc   y
0362: f0 15     beq   $0379
0364: fc        inc   y
0365: f0 17     beq   $037e
;CPUIO2 Command $FC - Stereo Mode
0367: 8f 00 03  mov   $03,#$00
036a: 2f 25     bra   $0391
;CPUIO2 Command $F4-$FA - Set Fixed Panning for non-sequenced SFX
;$F4 goes farthest to the left, and $FA goes farthest to the right
036c: dd        mov   a,y
036d: 80        setc
036e: a8 f3     sbc   a,#$f3
0370: c4 0d     mov   $0d,a
0372: 2f 1d     bra   $0391
;CPUIO2 Command $FB - Mono Mode
0374: 8f 01 03  mov   $03,#$01
0377: 2f 18     bra   $0391
;CPUIO2 Command $FE - Clear CPUIO2 Output
0379: 8f 00 f6  mov   $f6,#$00
037c: 2f 13     bra   $0391
;Command $FD - Stop Sound and go to Loader
037e: 8f 6c f2  mov   $f2,#$6c ;FLG
0381: 8f e0 f3  mov   $f3,#$e0
0384: 8f 00 f7  mov   $f7,#$00
0387: 5f 98 ff  jmp   $ff98
;CPUIO2 Command $01-$F2
038a: ad 00     cmp   y,#$00
038c: 10 aa     bpl   $0338
;CPUIO2 Command $80-$F3 - Play SFX
038e: 3f a2 07  call  $07a2
0391: 8f 21 f1  mov   $f1,#$21
;Acknowledge command by switching lowest bit of CPUIO3
0394: e4 0a     mov   a,$0a
0396: 48 01     eor   a,#$01
0398: c4 0a     mov   $0a,a
039a: c4 f7     mov   $f7,a
039c: e4 76     mov   a,$76
039e: f0 16     beq   $03b6
03a0: 8b 76     dec   $76
03a2: d0 12     bne   $03b6
03a4: 8f 0d f2  mov   $f2,#$0d ;EFB
03a7: fa 77 f3  mov   ($f3),($77)
03aa: 8f 2c f2  mov   $f2,#$2c ;EVOLL
03ad: fa 78 f3  mov   ($f3),($78)
03b0: 8f 3c f2  mov   $f2,#$3c ;EVOLR
03b3: fa 79 f3  mov   ($f3),($79)
03b6: 60        clrc
03b7: 89 01 00  adc   ($00),($01)
03ba: 6b 02     ror   $02
03bc: 30 03     bmi   $03c1
03be: 5f e9 06  jmp   $06e9
03c1: e4 03     mov   a,$03
03c3: d0 32     bne   $03f7
03c5: e4 7a     mov   a,$7a
03c7: f0 2e     beq   $03f7
03c9: 6e 7c 2b  dbnz  $7c,$03f7
03cc: fa 7b 7c  mov   ($7c),($7b)
03cf: 8b 7a     dec   $7a
03d1: 8f 0c f2  mov   $f2,#$0c ;MVOLL
03d4: e8 7f     mov   a,#$7f
03d6: 60        clrc
03d7: 89 7d f3  adc   ($f3),($7d)
03da: 50 08     bvc   $03e4
03dc: 30 01     bmi   $03df
03de: bc        inc   a
03df: c4 f3     mov   $f3,a
03e1: 8f 00 7d  mov   $7d,#$00
03e4: 8f 1c f2  mov   $f2,#$1c ;MVOLR
03e7: e8 7f     mov   a,#$7f
03e9: 60        clrc
03ea: 89 7e f3  adc   ($f3),($7e)
03ed: 50 08     bvc   $03f7
03ef: 30 01     bmi   $03f2
03f1: bc        inc   a
03f2: c4 f3     mov   $f3,a
03f4: 8f 00 7e  mov   $7e,#$00
03f7: cd 07     mov   x,#$07
03f9: f4 1e     mov   a,$1e+x
03fb: f0 37     beq   $0434
03fd: 9b 1e     dec   $1e+x
03ff: d0 33     bne   $0434
;Free voice by stopping it immediately
0401: 7d        mov   a,x
0402: 9f        xcn   a
0403: c4 f2     mov   $f2,a  ;VxVOLL
0405: 8f 00 f3  mov   $f3,#$00
0408: ab f2     inc   $f2    ;VxVOLR
040a: 8f 00 f3  mov   $f3,#$00
040d: 08 05     or    a,#$05 ;VxADSR1
040f: c4 f2     mov   $f2,a
0411: 8f 00 f3  mov   $f3,#$00
0414: ab f2     inc   $f2
0416: ab f2     inc   $f2    ;VxGAIN
0418: 8f 00 f3  mov   $f3,#$00
041b: 7d        mov   a,x
041c: cd ff     mov   x,#$ff ;Match against voice ID
041e: 3d        inc   x
041f: 74 16     cmp   a,$16+x
0421: d0 fb     bne   $041e
0423: 2d        push  a
0424: c8 07     cmp   x,#$07
0426: f0 09     beq   $0431
0428: f4 17     mov   a,$17+x ;Shuffle everything down
042a: d4 16     mov   $16+x,a
042c: 3d        inc   x
042d: c8 07     cmp   x,#$07
042f: d0 f7     bne   $0428
0431: ce        pop   x
0432: d8 1d     mov   $1d,x
0434: 1d        dec   x
0435: 10 c2     bpl   $03f9
0437: cd 00     mov   x,#$00
0439: f4 7f     mov   a,$7f+x
043b: f0 04     beq   $0441
043d: 9b 85     dec   $85+x
043f: f0 03     beq   $0444
0441: 5f c1 05  jmp   $05c1
0444: f4 8b     mov   a,$8b+x ;Read from track pointer.
0446: c4 04     mov   $04,a
0448: f4 91     mov   a,$91+x
044a: c4 05     mov   $05,a
044c: 8d ff     mov   y,#$ff
044e: fc        inc   y
044f: f7 04     mov   a,($04)+y ;Read VCMD ID
0451: 30 08     bmi   $045b
;VCMD $00-$7F - Dispatch VCMD
0453: 4d        push  x
0454: 1c        asl   a
0455: 5d        mov   x,a
0456: e8 00     mov   a,#$00
0458: 1f cd 08  jmp   ($08cd+x)
;VCMD $80-$FF
045b: 6d        push  y
045c: 68 80     cmp   a,#$80
045e: d0 03     bne   $0463
0460: 5f 9c 05  jmp   $059c ;VCMD $80 - One Note Delay
;VCMD $81-$FF - Note
0463: c8 05     cmp   x,#$05
0465: d0 03     bne   $046a
0467: 5f cc 05  jmp   $05cc
046a: 60        clrc
046b: 94 a3     adc   a,$a3+x
046d: 1c        asl   a
046e: 4d        push  x
046f: fb d1     mov   y,$d1+x
0471: f0 38     beq   $04ab
0473: 5d        mov   x,a
0474: cb 08     mov   $08,y
0476: dd        mov   a,y
0477: 10 03     bpl   $047c
0479: 48 ff     eor   a,#$ff
047b: bc        inc   a
047c: fd        mov   y,a
047d: 6d        push  y
047e: f5 40 0d  mov   a,$0d40+x
0481: cf        mul   ya
0482: cb 06     mov   $06,y
0484: 8f 00 07  mov   $07,#$00
0487: ee        pop   y
0488: f5 41 0d  mov   a,$0d41+x
048b: cf        mul   ya
048c: 7a 06     addw  ya,$06
048e: cb 07     mov   $07,y
0490: 4b 07     lsr   $07
0492: 7c        ror   a
0493: 4b 07     lsr   $07
0495: 7c        ror   a
0496: c4 06     mov   $06,a
0498: f5 41 0d  mov   a,$0d41+x
049b: fd        mov   y,a
049c: f5 40 0d  mov   a,$0d40+x
049f: f8 08     mov   x,$08
04a1: 30 04     bmi   $04a7
04a3: 7a 06     addw  ya,$06
04a5: 2f 0c     bra   $04b3
04a7: 9a 06     subw  ya,$06
04a9: 2f 08     bra   $04b3
04ab: 5d        mov   x,a
04ac: f5 41 0d  mov   a,$0d41+x
04af: fd        mov   y,a
04b0: f5 40 0d  mov   a,$0d40+x
04b3: da 06     movw  $06,ya
04b5: 3f 4e 0e  call  $0e4e
04b8: 7d        mov   a,x
04b9: 9f        xcn   a
04ba: 08 02     or    a,#$02
04bc: c4 f2     mov   $f2,a    ;VxPITCHL
04be: ba 06     movw  ya,$06
04c0: c4 f3     mov   $f3,a
04c2: ab f2     inc   $f2      ;VxPITCHH
04c4: cb f3     mov   $f3,y
04c6: 7d        mov   a,x
04c7: fd        mov   y,a
04c8: ce        pop   x
04c9: f4 b8     mov   a,$b8+x
04cb: ab f2     inc   $f2      ;VxSRCN
04cd: c4 f3     mov   $f3,a
04cf: f4 bd     mov   a,$bd+x
04d1: ab f2     inc   $f2      ;VxADSR1
04d3: c4 f3     mov   $f3,a
04d5: f4 c2     mov   a,$c2+x
04d7: ab f2     inc   $f2      ;VxADSR2
04d9: c4 f3     mov   $f3,a
04db: f4 c7     mov   a,$c7+x
04dd: ab f2     inc   $f2      ;VxGAIN
04df: c4 f3     mov   $f3,a
04e1: 38 70 f2  and   $f2,#$70 ;VxVOLL
04e4: e4 03     mov   a,$03
04e6: d0 0c     bne   $04f4
04e8: f4 ae     mov   a,$ae+x
04ea: c4 f3     mov   $f3,a
04ec: ab f2     inc   $f2      ;VxVOLR
04ee: f4 b3     mov   a,$b3+x
04f0: c4 f3     mov   $f3,a
04f2: 2f 1a     bra   $050e
04f4: f4 ae     mov   a,$ae+x
04f6: 10 03     bpl   $04fb
04f8: 48 ff     eor   a,#$ff
04fa: bc        inc   a
04fb: c4 06     mov   $06,a
04fd: f4 b3     mov   a,$b3+x
04ff: 10 03     bpl   $0504
0501: 48 ff     eor   a,#$ff
0503: bc        inc   a
0504: 60        clrc
0505: 84 06     adc   a,$06
0507: 7c        ror   a
0508: c4 f3     mov   $f3,a
050a: ab f2     inc   $f2      ;VxVOLR
050c: c4 f3     mov   $f3,a
050e: f4 cc     mov   a,$cc+x
0510: c4 06     mov   $06,a
0512: 8f 2d f2  mov   $f2,#$2d ;PMON
0515: f6 77 0e  mov   a,$0e77+y
0518: 4b 06     lsr   $06
051a: b0 06     bcs   $0522
051c: 48 ff     eor   a,#$ff
051e: 24 f3     and   a,$f3
0520: 2f 02     bra   $0524
0522: 04 f3     or    a,$f3
0524: c4 f3     mov   $f3,a
0526: 8f 3d f2  mov   $f2,#$3d ;NON
0529: f6 77 0e  mov   a,$0e77+y
052c: 4b 06     lsr   $06
052e: b0 06     bcs   $0536
0530: 48 ff     eor   a,#$ff
0532: 24 f3     and   a,$f3
0534: 2f 02     bra   $0538
0536: 04 f3     or    a,$f3
0538: c4 f3     mov   $f3,a
053a: 8f 4d f2  mov   $f2,#$4d ;EON
053d: f6 77 0e  mov   a,$0e77+y
0540: 4b 06     lsr   $06
0542: b0 06     bcs   $054a
0544: 48 ff     eor   a,#$ff
0546: 24 f3     and   a,$f3
0548: 2f 02     bra   $054c
054a: 04 f3     or    a,$f3
054c: c4 f3     mov   $f3,a
054e: f5 00 02  mov   a,$0200+x
0551: d6 26 00  mov   $0026+y,a
0554: 5c        lsr   a
0555: 88 00     adc   a,#$00
0557: d6 2e 00  mov   $002e+y,a
055a: f5 06 02  mov   a,$0206+x
055d: d6 36 00  mov   $0036+y,a
0560: f5 0c 02  mov   a,$020c+x
0563: d6 3e 00  mov   $003e+y,a
0566: f5 12 02  mov   a,$0212+x
0569: d6 46 00  mov   $0046+y,a
056c: f5 18 02  mov   a,$0218+x
056f: d6 4e 00  mov   $004e+y,a
0572: 60        clrc
0573: 95 1e 02  adc   a,$021e+x
0576: d6 56 00  mov   $0056+y,a
0579: f5 24 02  mov   a,$0224+x
057c: d6 5e 00  mov   $005e+y,a
057f: f5 2a 02  mov   a,$022a+x
0582: d6 66 00  mov   $0066+y,a
0585: f5 30 02  mov   a,$0230+x
0588: d6 6e 00  mov   $006e+y,a
058b: 8f 4c f2  mov   $f2,#$4c ;KON
058e: f6 77 0e  mov   a,$0e77+y
0591: c4 f3     mov   $f3,a
0593: 60        clrc
0594: f4 a9     mov   a,$a9+x
0596: f0 04     beq   $059c
0598: 80        setc
0599: d6 1e 00  mov   $001e+y,a
059c: cb 06     mov   $06,y
059e: ee        pop   y
059f: f4 9d     mov   a,$9d+x
05a1: d0 03     bne   $05a6
05a3: fc        inc   y
05a4: f7 04     mov   a,($04)+y ;Read note length
05a6: d4 85     mov   $85+x,a
05a8: b0 06     bcs   $05b0
05aa: 4d        push  x
05ab: f8 06     mov   x,$06
05ad: d4 1e     mov   $1e+x,a
05af: ce        pop   x
05b0: 68 00     cmp   a,#$00
05b2: d0 03     bne   $05b7
05b4: 5f 4e 04  jmp   $044e
05b7: fc        inc   y
05b8: dd        mov   a,y
05b9: 8d 00     mov   y,#$00
05bb: 7a 04     addw  ya,$04
05bd: d4 8b     mov   $8b+x,a
05bf: db 91     mov   $91+x,y
05c1: 3d        inc   x
05c2: c8 06     cmp   x,#$06
05c4: f0 03     beq   $05c9
05c6: 5f 39 04  jmp   $0439
05c9: 5f 4c 03  jmp   $034c

;VCMD %1xxxyyyy - Percussion Note
;- %xxx is the percussion ID.
;- %yyyy is a signed offset from the percussion note.
05cc: c4 06     mov   $06,a
05ce: 3f 4e 0e  call  $0e4e
05d1: 4d        push  x
05d2: 7d        mov   a,x
05d3: 9f        xcn   a
05d4: 08 02     or    a,#$02
05d6: c4 f2     mov   $f2,a ;VxPITCHL
05d8: e4 06     mov   a,$06 ;Fetch percussion ID
05da: 9f        xcn   a
05db: 28 07     and   a,#$07
05dd: 5d        mov   x,a
05de: e4 06     mov   a,$06 ;Fetch note offset
05e0: 28 0f     and   a,#$0f
05e2: 80        setc
05e3: a8 08     sbc   a,#$08
05e5: 60        clrc
05e6: 95 76 02  adc   a,$0276+x
05e9: 1c        asl   a
05ea: fd        mov   y,a
05eb: f6 40 0d  mov   a,$0d40+y
05ee: c4 f3     mov   $f3,a
05f0: ab f2     inc   $f2      ;VxPITCHH
05f2: f6 41 0d  mov   a,$0d41+y
05f5: c4 f3     mov   $f3,a
05f7: ee        pop   y
05f8: f5 4e 02  mov   a,$024e+x
05fb: ab f2     inc   $f2      ;VxSRCN
05fd: c4 f3     mov   $f3,a
05ff: f5 56 02  mov   a,$0256+x
0602: ab f2     inc   $f2      ;VxADSR1
0604: c4 f3     mov   $f3,a
0606: f5 5e 02  mov   a,$025e+x
0609: ab f2     inc   $f2      ;VxADSR2
060b: c4 f3     mov   $f3,a
060d: f5 66 02  mov   a,$0266+x
0610: ab f2     inc   $f2      ;VxGAIN
0612: c4 f3     mov   $f3,a
0614: 38 70 f2  and   $f2,#$70 ;VxVOLL
0617: e4 03     mov   a,$03
0619: d0 0e     bne   $0629
061b: f5 3e 02  mov   a,$023e+x
061e: c4 f3     mov   $f3,a
0620: ab f2     inc   $f2      ;VxVOLR
0622: f5 46 02  mov   a,$0246+x
0625: c4 f3     mov   $f3,a
0627: 2f 1c     bra   $0645
0629: f5 3e 02  mov   a,$023e+x
062c: 10 03     bpl   $0631
062e: 48 ff     eor   a,#$ff
0630: bc        inc   a
0631: c4 06     mov   $06,a
0633: f5 46 02  mov   a,$0246+x
0636: 10 03     bpl   $063b
0638: 48 ff     eor   a,#$ff
063a: bc        inc   a
063b: 60        clrc
063c: 84 06     adc   a,$06
063e: 7c        ror   a
063f: c4 f3     mov   $f3,a
0641: ab f2     inc   $f2      ;VxVOLR
0643: c4 f3     mov   $f3,a
0645: f5 6e 02  mov   a,$026e+x
0648: c4 06     mov   $06,a
064a: 8f 2d f2  mov   $f2,#$2d ;PMON
064d: f6 77 0e  mov   a,$0e77+y
0650: 4b 06     lsr   $06
0652: b0 06     bcs   $065a
0654: 48 ff     eor   a,#$ff
0656: 24 f3     and   a,$f3
0658: 2f 02     bra   $065c
065a: 04 f3     or    a,$f3
065c: c4 f3     mov   $f3,a
065e: 8f 3d f2  mov   $f2,#$3d ;EON
0661: f6 77 0e  mov   a,$0e77+y
0664: 4b 06     lsr   $06
0666: b0 06     bcs   $066e
0668: 48 ff     eor   a,#$ff
066a: 24 f3     and   a,$f3
066c: 2f 02     bra   $0670
066e: 04 f3     or    a,$f3
0670: c4 f3     mov   $f3,a
0672: 8f 4d f2  mov   $f2,#$4d ;NON
0675: f6 77 0e  mov   a,$0e77+y
0678: 4b 06     lsr   $06
067a: b0 06     bcs   $0682
067c: 48 ff     eor   a,#$ff
067e: 24 f3     and   a,$f3
0680: 2f 02     bra   $0684
0682: 04 f3     or    a,$f3
0684: c4 f3     mov   $f3,a
0686: e8 00     mov   a,#$00
0688: d6 26 00  mov   $0026+y,a
068b: 4b 06     lsr   $06
068d: 90 1e     bcc   $06ad
068f: e5 05 02  mov   a,$0205
0692: d6 26 00  mov   $0026+y,a
0695: 5c        lsr   a
0696: 88 00     adc   a,#$00
0698: d6 2e 00  mov   $002e+y,a
069b: e5 0b 02  mov   a,$020b
069e: d6 36 00  mov   $0036+y,a
06a1: e5 11 02  mov   a,$0211
06a4: d6 3e 00  mov   $003e+y,a
06a7: e5 17 02  mov   a,$0217
06aa: d6 46 00  mov   $0046+y,a
06ad: e8 00     mov   a,#$00
06af: d6 4e 00  mov   $004e+y,a
06b2: 4b 06     lsr   $06
06b4: 90 1f     bcc   $06d5
06b6: e5 1d 02  mov   a,$021d
06b9: d6 4e 00  mov   $004e+y,a
06bc: 60        clrc
06bd: 85 23 02  adc   a,$0223
06c0: d6 56 00  mov   $0056+y,a
06c3: e5 29 02  mov   a,$0229
06c6: d6 5e 00  mov   $005e+y,a
06c9: e5 2f 02  mov   a,$022f
06cc: d6 66 00  mov   $0066+y,a
06cf: e5 35 02  mov   a,$0235
06d2: d6 6e 00  mov   $006e+y,a
06d5: 8f 4c f2  mov   $f2,#$4c ;KON
06d8: f6 77 0e  mov   a,$0e77+y
06db: c4 f3     mov   $f3,a
06dd: f5 36 02  mov   a,$0236+x
06e0: d6 1e 00  mov   $001e+y,a
06e3: 80        setc
06e4: cd 05     mov   x,#$05
06e6: 5f 9c 05  jmp   $059c

;Process pitch envelope and vibrato tick
06e9: cd 00     mov   x,#$00
06eb: f4 26     mov   a,$26+x
06ed: f0 39     beq   $0728
06ef: 9b 3e     dec   $3e+x
06f1: d0 35     bne   $0728
06f3: f4 36     mov   a,$36+x
06f5: d4 3e     mov   $3e+x,a
06f7: 7d        mov   a,x
06f8: 9f        xcn   a
06f9: 08 02     or    a,#$02
06fb: c4 f2     mov   $f2,a ;VxPITCHL
06fd: 8d 00     mov   y,#$00
06ff: f4 46     mov   a,$46+x
0701: 10 01     bpl   $0704
0703: dc        dec   y
0704: cb 06     mov   $06,y
0706: 1c        asl   a
0707: 2b 06     rol   $06
0709: 1c        asl   a
070a: 2b 06     rol   $06
070c: 1c        asl   a
070d: 2b 06     rol   $06
070f: 60        clrc
0710: 84 f3     adc   a,$f3
0712: c4 f3     mov   $f3,a
0714: ab f2     inc   $f2  ;VxPITCHH
0716: 89 06 f3  adc   ($f3),($06)
0719: 9b 2e     dec   $2e+x
071b: d0 0b     bne   $0728
071d: f4 26     mov   a,$26+x
071f: d4 2e     mov   $2e+x,a
0721: f4 46     mov   a,$46+x
0723: 48 ff     eor   a,#$ff
0725: bc        inc   a
0726: d4 46     mov   $46+x,a
0728: f4 4e     mov   a,$4e+x
072a: f0 3d     beq   $0769
072c: 9b 56     dec   $56+x
072e: d0 39     bne   $0769
0730: f4 4e     mov   a,$4e+x
0732: d4 56     mov   $56+x,a
0734: 9b 5e     dec   $5e+x
0736: d0 04     bne   $073c
0738: e8 00     mov   a,#$00
073a: d4 4e     mov   $4e+x,a
073c: 7d        mov   a,x
073d: 9f        xcn   a
073e: 08 02     or    a,#$02
0740: c4 f2     mov   $f2,a ;VxPITCHL
0742: f4 6e     mov   a,$6e+x
0744: fb 66     mov   y,$66+x
0746: f0 05     beq   $074d
0748: 9b 66     dec   $66+x
074a: 48 ff     eor   a,#$ff
074c: bc        inc   a
074d: 8d 00     mov   y,#$00
074f: 68 00     cmp   a,#$00
0751: 10 01     bpl   $0754
0753: dc        dec   y
0754: cb 06     mov   $06,y
0756: 1c        asl   a
0757: 2b 06     rol   $06
0759: 1c        asl   a
075a: 2b 06     rol   $06
075c: 1c        asl   a
075d: 2b 06     rol   $06
075f: 60        clrc
0760: 84 f3     adc   a,$f3
0762: c4 f3     mov   $f3,a
0764: ab f2     inc   $f2   ;VxPITCHH
0766: 89 06 f3  adc   ($f3),($06)
0769: 3d        inc   x
076a: c8 08     cmp   x,#$08
076c: f0 03     beq   $0771
076e: 5f eb 06  jmp   $06eb
0771: 5f 4c 03  jmp   $034c

;Play SFX Sequence (Uses Music's VCMD Format)
;First byte is the number of tracks to initialize... as a negative number.
0774: c4 06     mov   $06,a
0776: fc        inc   y
0777: cd 05     mov   x,#$05
0779: 1d        dec   x
077a: 30 25     bmi   $07a1 ;Keep going until you're out of tracks.
077c: f4 7f     mov   a,$7f+x
077e: d0 f9     bne   $0779
0780: e8 02     mov   a,#$02
0782: d4 7f     mov   $7f+x,a
0784: 9c        dec   a
0785: d4 85     mov   $85+x,a
0787: 9c        dec   a
0788: d4 a3     mov   $a3+x,a
078a: d5 00 02  mov   $0200+x,a
078d: d5 18 02  mov   $0218+x,a
0790: 9c        dec   a
0791: d4 97     mov   $97+x,a
0793: f7 04     mov   a,($04)+y ;Read low byte of SFX sequence pointer
0795: d4 8b     mov   $8b+x,a
0797: fc        inc   y
0798: f7 04     mov   a,($04)+y ;Read high byte of SFX sequence pointer
079a: d4 91     mov   $91+x,a
079c: fc        inc   y
079d: ab 06     inc   $06
079f: d0 d8     bne   $0779
07a1: 6f        ret

;Play SFX instance
07a2: dd        mov   a,y
07a3: 1c        asl   a
07a4: fd        mov   y,a
07a5: f6 20 0f  mov   a,$0f20+y ;Read low byte of SFX instance pointer
07a8: c4 04     mov   $04,a
07aa: f6 21 0f  mov   a,$0f21+y ;Read high byte of SFX instance pointer
07ad: c4 05     mov   $05,a
07af: 8d 00     mov   y,#$00
07b1: f7 04     mov   a,($04)+y
07b3: 30 bf     bmi   $0774 ;If negative, this is a SFX sequence.
07b5: 6d        push  y
07b6: 3f 4e 0e  call  $0e4e
07b9: ee        pop   y
07ba: f7 04     mov   a,($04)+y ;Fetch VxSRCN ID
07bc: 2d        push  a
07bd: 7d        mov   a,x
07be: 9f        xcn   a
07bf: 08 02     or    a,#$02
07c1: c4 f2     mov   $f2,a    ;VxPITCHL
07c3: fc        inc   y
07c4: f7 04     mov   a,($04)+y
07c6: c4 f3     mov   $f3,a
07c8: ab f2     inc   $f2      ;VxPITCHH
07ca: fc        inc   y
07cb: f7 04     mov   a,($04)+y
07cd: c4 f3     mov   $f3,a
07cf: ae        pop   a
07d0: ab f2     inc   $f2      ;VxSRCN
07d2: c4 f3     mov   $f3,a
07d4: fc        inc   y
07d5: f7 04     mov   a,($04)+y
07d7: ab f2     inc   $f2      ;VxADSR1
07d9: c4 f3     mov   $f3,a
07db: fc        inc   y
07dc: f7 04     mov   a,($04)+y
07de: ab f2     inc   $f2      ;VxADSR2
07e0: c4 f3     mov   $f3,a
07e2: fc        inc   y
07e3: f7 04     mov   a,($04)+y
07e5: ab f2     inc   $f2      ;VxGAIN
07e7: c4 f3     mov   $f3,a
07e9: 38 70 f2  and   $f2,#$70 ;VxVOLL
07ec: fc        inc   y
07ed: e4 03     mov   a,$03
07ef: 04 0d     or    a,$0d
07f1: d0 09     bne   $07fc
07f3: f7 04     mov   a,($04)+y ;Fetch VxVOLL
07f5: c4 f3     mov   $f3,a
07f7: fc        inc   y
07f8: f7 04     mov   a,($04)+y ;Fetch VxVOLR
07fa: 2f 37     bra   $0833
07fc: f7 04     mov   a,($04)+y ;Fetch VxVOLL
07fe: 10 03     bpl   $0803
0800: 48 ff     eor   a,#$ff
0802: bc        inc   a
0803: c4 06     mov   $06,a
0805: fc        inc   y
0806: f7 04     mov   a,($04)+y ;Fetch VxVOLR
0808: 10 03     bpl   $080d
080a: 48 ff     eor   a,#$ff
080c: bc        inc   a
080d: 60        clrc
080e: 84 06     adc   a,$06
0810: 78 00 03  cmp   $03,#$00
0813: d0 1b     bne   $0830
0815: 68 00     cmp   a,#$00
0817: 10 02     bpl   $081b
0819: e8 7f     mov   a,#$7f
081b: c4 06     mov   $06,a
081d: 6d        push  y
081e: eb 0d     mov   y,$0d
0820: f6 c5 08  mov   a,$08c5+y
0823: eb 06     mov   y,$06
0825: cf        mul   ya
0826: cb f3     mov   $f3,y
0828: e4 06     mov   a,$06
082a: 80        setc
082b: a4 f3     sbc   a,$f3
082d: ee        pop   y
082e: 2f 03     bra   $0833
0830: 5c        lsr   a
0831: c4 f3     mov   $f3,a
0833: ab f2     inc   $f2      ;VxVOLR
0835: c4 f3     mov   $f3,a
0837: fc        inc   y
0838: f7 04     mov   a,($04)+y ;Fetch DSP register flags
083a: c4 06     mov   $06,a              ;%????xyza
083c: 8f 2d f2  mov   $f2,#$2d  ;PMON----------/|||
083f: f5 77 0e  mov   a,$0e77+x ;               |||
0842: 4b 06     lsr   $06       ;               |||
0844: b0 06     bcs   $084c     ;               |||
0846: 48 ff     eor   a,#$ff    ;               |||
0848: 24 f3     and   a,$f3     ;               |||
084a: 2f 02     bra   $084e     ;               |||
084c: 04 f3     or    a,$f3     ;               |||
084e: c4 f3     mov   $f3,a     ;               |||
0850: 8f 3d f2  mov   $f2,#$3d  ;NON------------/||
0853: f5 77 0e  mov   a,$0e77+x ;                ||
0856: 4b 06     lsr   $06       ;                ||
0858: b0 06     bcs   $0860     ;                ||
085a: 48 ff     eor   a,#$ff    ;                ||
085c: 24 f3     and   a,$f3     ;                ||
085e: 2f 02     bra   $0862     ;                ||
0860: 04 f3     or    a,$f3     ;                ||
0862: c4 f3     mov   $f3,a     ;                ||
0864: 8f 4d f2  mov   $f2,#$4d  ;EON-------------/|
0867: f5 77 0e  mov   a,$0e77+x ;                 |
086a: 4b 06     lsr   $06       ;                 |
086c: b0 06     bcs   $0874     ;                 |
086e: 48 ff     eor   a,#$ff    ;                 |
0870: 24 f3     and   a,$f3     ;                 |
0872: 2f 02     bra   $0876     ;                 |
0874: 04 f3     or    a,$f3     ;                 |
0876: c4 f3     mov   $f3,a     ;                 \----------------------\
0878: fc        inc   y         ;                                        |
0879: f7 04     mov   a,($04)+y ;Fetch the number of tempo ticks prior   |
087b: d4 1e     mov   $1e+x,a   ;to stopping the SFX instance.           |
087d: fc        inc   y         ;                                        |
087e: f7 04     mov   a,($04)+y ;Fetch the period of the vibrato in      |
0880: d4 26     mov   $26+x,a   ;steps. (Zero disables it.)              |
0882: 5c        lsr   a         ;                                        |
0883: 88 00     adc   a,#$00    ;                                        |
0885: d4 2e     mov   $2e+x,a   ;                                        |
0887: fc        inc   y         ;                                        |
0888: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks per |
088a: bc        inc   a         ;step for vibrato.                       |
088b: d4 36     mov   $36+x,a   ;                                        |
088d: fc        inc   y         ;                                        |
088e: f7 04     mov   a,($04)+y ;Fetch the depth of the vibrato as an    |
0890: d4 46     mov   $46+x,a   ;unsigned offset per step in VxPITCH*8   |
0892: fc        inc   y         ;units.                                  |
0893: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks to  |
0895: d4 3e     mov   $3e+x,a   ;delay the vibrato for.                  |
0897: fc        inc   y         ;                                        |
0898: fc        inc   y         ;                                        |
0899: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks per |
089b: bc        inc   a         ;pitch envelope step.                    |
089c: d4 4e     mov   $4e+x,a   ;                                        |
089e: dc        dec   y         ;                                        |
089f: 60        clrc            ;                                        |
08a0: 97 04     adc   a,($04)+y ;Fetch the number of non-tempo ticks to  |
08a2: d4 56     mov   $56+x,a   ;delay the pitch envelope (plus one      |
08a4: fc        inc   y         ;step's worth).                          |
08a5: fc        inc   y         ;                                        |
08a6: f7 04     mov   a,($04)+y ;Fetch the number of steps to apply a    |
08a8: d4 5e     mov   $5e+x,a   ;pitch offset for the pitch envelope.    |
08aa: fc        inc   y         ;                                        |
08ab: f7 04     mov   a,($04)+y ;Fetch a signed offset per step in       |
08ad: d4 6e     mov   $6e+x,a   ;VxPITCH*8 units.                        |
08af: fc        inc   y         ;                                        |
08b0: f7 04     mov   a,($04)+y ;                                        |
08b2: d4 66     mov   $66+x,a   ;                                        |
08b4: 8f 4c f2  mov   $f2,#$4c  ;KON                                     |
08b7: f5 77 0e  mov   a,$0e77+x ;                                        |
08ba: c4 f3     mov   $f3,a     ;                                        |
08bc: fc        inc   y         ;                                        |
08bd: 4b 06     lsr   $06   ;Multi-channel SFX---------------------------/
08bf: 90 03     bcc   $08c4 ;(fetch another instance's worth of data if set)
08c1: 5f b5 07  jmp   $07b5
08c4: 6f        ret

08c5: db $00
08c6: db $ec
08c7: db $9d
08c8: db $b8
08c9: db $80
08ca: db $48
08cb: db $23
08cc: db $14

;VCMD dispatch table
08cd: dw $0935 ;$00 - End of Track
08cf: dw $093d ;$01 - Jump
08d1: dw $09bf ;$02 - Pitch Slide Disable
08d3: dw $094c ;$03 - Instrument Setup
08d5: dw $09c8 ;$04 - Call Subroutine with Repeat Counter
08d7: dw $09ea ;$05 - Return from Subroutine 
08d9: dw $0a13 ;$06 - Note Length Carry (Default Duration On)
08db: dw $0a1c ;$07 - No Note Length Carry (Default Duration Off)
08dd: dw $0a24 ;$08 - Vibrato
08df: dw $0a42 ;$09 - Vibrato Disable
08e1: dw $0a4b ;$0A - Pitch Envelope
08e3: dw $0a72 ;$0B - Pitch Envelope Inverted
08e5: dw $0a7c ;$0C - Left/Right Volume
08e7: dw $0aa1 ;$0D - VxADSR + Note Length to Key Off
08e9: dw $0ad1 ;$0E - Output to SNES via CPUIO2
08eb: dw $0ada ;$0F - Main Volume
08ed: dw $0b06 ;$10 - Tempo
08ef: dw $0b12 ;$11 - Relative Tempo
08f1: dw $0b16 ;$12 - Absolute Single Track Transposition
08f3: dw $0b22 ;$13 - Relative Single Track Transposition
08f5: dw $0b27 ;$14 - Absolute Transposition for All Non-Percussion Tracks
08f7: dw $0b38 ;$15 - Use VxGAIN + Note Length to Key Off
08f9: dw $0b66 ;$16 - Fine Tune
08fb: dw $0b73 ;$17 - Vibrato Delay
08fd: dw $0ba0 ;$18 - Ping-Pong Pitch Envelope
08ff: dw $0bc9 ;$19 - Ping-Pong Pitch Envelope Inverted
0901: dw $0000 ;$1A - Invalid
0903: dw $0000 ;$1B - Invalid
0905: dw $0000 ;$1C - Invalid
0907: dw $0000 ;$1D - Invalid
0909: dw $0000 ;$1E - Invalid
090b: dw $0b80 ;$1F - Disable Echo For All Channels
090d: dw $0bd3 ;$20 - Noise Clock (and enable Echo Writes)
090f: dw $0be1 ;$21 - Echo Parameter Setup
0911: dw $0c31 ;$22 - Set FIR Coefficients
0913: dw $0c46 ;$23 - Fixed Pan Left +++
0915: dw $0c47 ;$24 - Fixed Pan Left ++
0917: dw $0c48 ;$25 - Fixed Pan Left +
0919: dw $0c49 ;$26 - Fixed Pan Center
091b: dw $0c4d ;$27 - Fixed Pan Right +++
091d: dw $0c4e ;$28 - Fixed Pan Right ++
091f: dw $0c4f ;$29 - Fixed Pan Right +
0921: dw $0cb5 ;$2A - Save Preset #1
0923: dw $0cb4 ;$2B - Save Preset #2
0925: dw $0cb3 ;$2C - Save Preset #3
0927: dw $0cb2 ;$2D - Save Preset #4
0929: dw $0ce3 ;$2E - Load Preset #1
092b: dw $0ce2 ;$2F - Load Preset #2
092d: dw $0ce1 ;$30 - Load Preset #3
092f: dw $0ce0 ;$31 - Load Preset #4
0931: dw $0d0a ;$32 - Main Volume Fade
0933: dw $0d25 ;$33 - PMON/NON/EON Flag Set
               ;$34-$7F - Invalid

;VCMD $00 - End of Track
0935: ce        pop   x
0936: e8 00     mov   a,#$00
0938: d4 7f     mov   $7f+x,a
093a: 5f c1 05  jmp   $05c1

;VCMD $01 - Jump
093d: fc        inc   y
093e: f7 04     mov   a,($04)+y ;Fetch low byte of pointer
0940: 5d        mov   x,a
0941: fc        inc   y
0942: f7 04     mov   a,($04)+y ;Fetch high byte of pointer
0944: d8 04     mov   $04,x
0946: c4 05     mov   $05,a
0948: ce        pop   x
0949: 5f 4c 04  jmp   $044c

;VCMD $03 - Instrument Setup
094c: ce        pop   x
094d: fc        inc   y
094e: f7 04     mov   a,($04)+y
0950: c8 05     cmp   x,#$05
0952: f0 2d     beq   $0981
0954: d4 b8     mov   $b8+x,a   ;Fetch VxSRCN ID
0956: fc        inc   y
0957: f7 04     mov   a,($04)+y ;Fetch VxADSR1
0959: d4 bd     mov   $bd+x,a
095b: fc        inc   y
095c: f7 04     mov   a,($04)+y ;Fetch VxADSR2
095e: d4 c2     mov   $c2+x,a
0960: fc        inc   y
0961: f7 04     mov   a,($04)+y ;Fetch VxGAIN
0963: d4 c7     mov   $c7+x,a
0965: fc        inc   y
0966: f7 04     mov   a,($04)+y ;Fetch VxVOLL
0968: d4 ae     mov   $ae+x,a
096a: fc        inc   y
096b: f7 04     mov   a,($04)+y ;Fetch VxVOLR
096d: d4 b3     mov   $b3+x,a
096f: fc        inc   y
0970: f7 04     mov   a,($04)+y ;Fetch DSP register bitwise flag 
0972: d4 cc     mov   $cc+x,a   ;%?????xyz-PMON
0974: fc        inc   y               ;|\NON
0975: f7 04     mov   a,($04)+y       ;\EON
0977: d4 a9     mov   $a9+x,a   ;Fetch tempo ticks before keying off note
0979: fc        inc   y
097a: f7 04     mov   a,($04)+y ;Fetch fine tune
097c: d4 d1     mov   $d1+x,a
097e: 5f 4e 04  jmp   $044e
0981: 28 07     and   a,#$07    ;Fetch percussion ID
0983: 5d        mov   x,a
0984: fc        inc   y
0985: f7 04     mov   a,($04)+y ;Fetch VxSRCN ID
0987: d5 4e 02  mov   $024e+x,a
098a: fc        inc   y
098b: f7 04     mov   a,($04)+y ;Fetch VxADSR1
098d: d5 56 02  mov   $0256+x,a
0990: fc        inc   y
0991: f7 04     mov   a,($04)+y ;Fetch VxADSR2
0993: d5 5e 02  mov   $025e+x,a
0996: fc        inc   y
0997: f7 04     mov   a,($04)+y ;Fetch VxGAIN
0999: d5 66 02  mov   $0266+x,a
099c: fc        inc   y
099d: f7 04     mov   a,($04)+y ;Fetch VxVOLL
099f: d5 3e 02  mov   $023e+x,a
09a2: fc        inc   y
09a3: f7 04     mov   a,($04)+y ;Fetch VxVOLR
09a5: d5 46 02  mov   $0246+x,a
09a8: fc        inc   y
09a9: f7 04     mov   a,($04)+y ;Fetch DSP register bitwise flag
09ab: d5 6e 02  mov   $026e+x,a ;%?????xyz-PMON
09ae: fc        inc   y               ;|\NON
09af: f7 04     mov   a,($04)+y       ;\EON
09b1: d5 36 02  mov   $0236+x,a ;Fetch tempo ticks before keying off note
09b4: fc        inc   y
09b5: f7 04     mov   a,($04)+y ;Fetch note
09b7: d5 76 02  mov   $0276+x,a
09ba: cd 05     mov   x,#$05
09bc: 5f 4e 04  jmp   $044e

;VCMD $02 - Pitch Slide Disable
09bf: ce        pop   x
09c0: e8 00     mov   a,#$00
09c2: d5 18 02  mov   $0218+x,a
09c5: 5f 4e 04  jmp   $044e

;VCMD $04 - Call Subroutine with Repeat Counter
;Subroutines have stack support. Based off of the memory allocation, there
;is an 8-layer limit.
09c8: ae        pop   a
09c9: 2d        push  a
09ca: 5d        mov   x,a
09cb: 1c        asl   a
09cc: 1c        asl   a
09cd: 1c        asl   a
09ce: bb 97     inc   $97+x
09d0: 14 97     or    a,$97+x
09d2: 5d        mov   x,a
09d3: fc        inc   y
09d4: f7 04     mov   a,($04)+y ;Fetch loop counter
09d6: d5 60 01  mov   $0160+x,a
09d9: dd        mov   a,y
09da: 60        clrc
09db: 84 04     adc   a,$04
09dd: d5 00 01  mov   $0100+x,a
09e0: e4 05     mov   a,$05
09e2: 88 00     adc   a,#$00
09e4: d5 30 01  mov   $0130+x,a
09e7: 5f 3d 09  jmp   $093d ;Jump to pointer

;VCMD $05 - Return from Subroutine
09ea: ce        pop   x
09eb: 4d        push  x
09ec: 7d        mov   a,x
09ed: 1c        asl   a
09ee: 1c        asl   a
09ef: 1c        asl   a
09f0: 14 97     or    a,$97+x
09f2: 5d        mov   x,a
09f3: f5 00 01  mov   a,$0100+x
09f6: c4 04     mov   $04,a
09f8: f5 30 01  mov   a,$0130+x
09fb: c4 05     mov   $05,a
09fd: f5 60 01  mov   a,$0160+x
0a00: 9c        dec   a
0a01: d5 60 01  mov   $0160+x,a
0a04: f0 05     beq   $0a0b
0a06: 8d 00     mov   y,#$00
0a08: 5f 3d 09  jmp   $093d
0a0b: ce        pop   x
0a0c: 9b 97     dec   $97+x
0a0e: 8d 02     mov   y,#$02
0a10: 5f 4e 04  jmp   $044e

;VCMD $06 - Note Length Carry (Default Duration On)
0a13: ce        pop   x
0a14: fc        inc   y
0a15: f7 04     mov   a,($04)+y ;Fetch default duration
0a17: d4 9d     mov   $9d+x,a
0a19: 5f 4e 04  jmp   $044e

;VCMD $07 - No Note Length Carry (Default Duration Off)
0a1c: ce        pop   x
0a1d: e8 00     mov   a,#$00
0a1f: d4 9d     mov   $9d+x,a
0a21: 5f 4e 04  jmp   $044e

;VCMD $08 - Vibrato
0a24: ce        pop   x
0a25: 3f 2b 0a  call  $0a2b
0a28: 5f 4e 04  jmp   $044e

;Setup Vibrato Parameters
0a2b: fc        inc   y
0a2c: f7 04     mov   a,($04)+y
0a2e: d5 00 02  mov   $0200+x,a ;Fetch the period in steps.
0a31: fc        inc   y         ;(Zero disables it.)
0a32: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks per
0a34: bc        inc   a         ;step as well as the initial delay.
0a35: d5 06 02  mov   $0206+x,a
0a38: d5 0c 02  mov   $020c+x,a
0a3b: fc        inc   y
0a3c: f7 04     mov   a,($04)+y ;Fetch the depth as an unsigned offset per
0a3e: d5 12 02  mov   $0212+x,a ;step in VxPITCH*8 units.
0a41: 6f        ret

;VCMD $09 - Vibrato Disable
0a42: ce        pop   x
0a43: e8 00     mov   a,#$00
0a45: d5 00 02  mov   $0200+x,a
0a48: 5f 4e 04  jmp   $044e

;VCMD $0A - Pitch Envelope
0a4b: ce        pop   x
0a4c: 3f 5b 0a  call  $0a5b
0a4f: d5 30 02  mov   $0230+x,a
0a52: fc        inc   y
0a53: f7 04     mov   a,($04)+y ;Fetch the number of steps to invert the
0a55: d5 2a 02  mov   $022a+x,a ;pitch offset for at the start of the pitch
0a58: 5f 4e 04  jmp   $044e     ;envelope.

;Setup Pitch Envelope Parameters
0a5b: fc        inc   y
0a5c: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks to
0a5e: d5 1e 02  mov   $021e+x,a ;delay the pitch envelope (plus one step's
0a61: fc        inc   y         ;worth).
0a62: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks per
0a64: bc        inc   a         ;pitch envelope step.
0a65: d5 18 02  mov   $0218+x,a
0a68: fc        inc   y
0a69: f7 04     mov   a,($04)+y ;Fetch the number of steps to apply a pitch
0a6b: d5 24 02  mov   $0224+x,a ;offset for the pitch envelope.
0a6e: fc        inc   y
0a6f: f7 04     mov   a,($04)+y ;Fetch a signed offset per step in VxPITCH*8 
0a71: 6f        ret             ;units.

;VCMD $0B - Pitch Envelope Inverted
0a72: ce        pop   x
0a73: 3f 5b 0a  call  $0a5b
0a76: 48 ff     eor   a,#$ff
0a78: bc        inc   a
0a79: 5f 4f 0a  jmp   $0a4f

;VCMD $0C - Left/Right Volume
0a7c: ce        pop   x
0a7d: fc        inc   y
0a7e: f7 04     mov   a,($04)+y
0a80: fc        inc   y
0a81: c8 05     cmp   x,#$05
0a83: f0 09     beq   $0a8e
0a85: d4 ae     mov   $ae+x,a   ;Fetch VxVOLL
0a87: f7 04     mov   a,($04)+y ;Fetch VxVOLR
0a89: d4 b3     mov   $b3+x,a
0a8b: 5f 4e 04  jmp   $044e

0a8e: 28 07     and   a,#$07    ;Fetch percussion ID
0a90: 5d        mov   x,a
0a91: f7 04     mov   a,($04)+y ;Fetch VxVOLL
0a93: d5 3e 02  mov   $023e+x,a
0a96: fc        inc   y
0a97: f7 04     mov   a,($04)+y ;Fetch VxVOLR
0a99: d5 46 02  mov   $0246+x,a
0a9c: cd 05     mov   x,#$05
0a9e: 5f 4e 04  jmp   $044e

;VCMD $0D - VxADSR + Note Length to Key Off
0aa1: ce        pop   x
0aa2: fc        inc   y
0aa3: f7 04     mov   a,($04)+y
0aa5: fc        inc   y
0aa6: c8 05     cmp   x,#$05
0aa8: f0 0e     beq   $0ab8
0aaa: d4 bd     mov   $bd+x,a   ;Fetch VxADSR1
0aac: f7 04     mov   a,($04)+y ;Fetch VxADSR2
0aae: d4 c2     mov   $c2+x,a
0ab0: fc        inc   y
0ab1: f7 04     mov   a,($04)+y ;Fetch tempo ticks before keying off note
0ab3: d4 a9     mov   $a9+x,a
0ab5: 5f 4e 04  jmp   $044e
0ab8: 28 07     and   a,#$07    ;Fetch percussion ID
0aba: 5d        mov   x,a
0abb: f7 04     mov   a,($04)+y ;Fetch VxADSR1
0abd: d5 56 02  mov   $0256+x,a
0ac0: fc        inc   y
0ac1: f7 04     mov   a,($04)+y ;Fetch VxADSR2
0ac3: d5 5e 02  mov   $025e+x,a
0ac6: fc        inc   y
0ac7: f7 04     mov   a,($04)+y ;Fetch tempo ticks before keying off note
0ac9: d5 36 02  mov   $0236+x,a
0acc: cd 05     mov   x,#$05
0ace: 5f 4e 04  jmp   $044e

;VCMD $0E - Output to SNES via CPUIO2
0ad1: ce        pop   x
0ad2: fc        inc   y
0ad3: f7 04     mov   a,($04)+y ;Fetch byte to output to SNES via CPUIO2
0ad5: c4 f6     mov   $f6,a
0ad7: 5f 4e 04  jmp   $044e

;VCMD $0F - Main Volume
0ada: ce        pop   x
0adb: fc        inc   y
0adc: e4 03     mov   a,$03
0ade: d0 12     bne   $0af2
0ae0: f7 04     mov   a,($04)+y
0ae2: 8f 0c f2  mov   $f2,#$0c ;MVOLL
0ae5: c4 f3     mov   $f3,a
0ae7: fc        inc   y
0ae8: f7 04     mov   a,($04)+y
0aea: 8f 1c f2  mov   $f2,#$1c ;MVOLR
0aed: c4 f3     mov   $f3,a
0aef: 5f 4e 04  jmp   $044e
0af2: 60        clrc
0af3: f7 04     mov   a,($04)+y
0af5: fc        inc   y
0af6: 97 04     adc   a,($04)+y
0af8: 7c        ror   a
0af9: 8f 0c f2  mov   $f2,#$0c ;MVOLL
0afc: c4 f3     mov   $f3,a
0afe: 8f 1c f2  mov   $f2,#$1c ;MVOLR
0b01: c4 f3     mov   $f3,a
0b03: 5f 4e 04  jmp   $044e

;VCMD $10 - Tempo
;Tempo is defined as 
0b06: e8 00     mov   a,#$00
0b08: fc        inc   y
0b09: 60        clrc
0b0a: 97 04     adc   a,($04)+y ;Fetch Tempo
0b0c: c4 01     mov   $01,a
0b0e: ce        pop   x
0b0f: 5f 4e 04  jmp   $044e

;VCMD $11 - Relative Tempo
0b12: e4 01     mov   a,$01
0b14: 2f f2     bra   $0b08

;VCMD $12 - Absolute Single Track Transposition
0b16: ce        pop   x
0b17: e8 00     mov   a,#$00
0b19: fc        inc   y
0b1a: 60        clrc
0b1b: 97 04     adc   a,($04)+y
0b1d: d4 a3     mov   $a3+x,a
0b1f: 5f 4e 04  jmp   $044e

;VCMD $13 - Relative Single Track Transposition
0b22: ce        pop   x
0b23: f4 a3     mov   a,$a3+x
0b25: 2f f2     bra   $0b19

;VCMD $14 - Absolute Transposition for All Non-Percussion Tracks
0b27: ce        pop   x
0b28: fc        inc   y
0b29: f7 04     mov   a,($04)+y
0b2b: c4 a3     mov   $a3,a
0b2d: c4 a4     mov   $a4,a
0b2f: c4 a5     mov   $a5,a
0b31: c4 a6     mov   $a6,a
0b33: c4 a7     mov   $a7,a
0b35: 5f 4e 04  jmp   $044e

;VCMD $15 - Use VxGAIN + Note Length to Key Off
0b38: ce        pop   x
0b39: fc        inc   y
0b3a: f7 04     mov   a,($04)+y
0b3c: fc        inc   y
0b3d: c8 05     cmp   x,#$05
0b3f: f0 0d     beq   $0b4e
0b41: d4 c7     mov   $c7+x,a   ;Fetch VxGAIN
0b43: f7 04     mov   a,($04)+y ;Fetch tempo ticks before keying off note
0b45: d4 a9     mov   $a9+x,a
0b47: e8 00     mov   a,#$00    ;Force VxGAIN mode
0b49: d4 bd     mov   $bd+x,a
0b4b: 5f 4e 04  jmp   $044e

0b4e: 28 07     and   a,#$07    ;Fetch percussion ID
0b50: 5d        mov   x,a
0b51: f7 04     mov   a,($04)+y ;Fetch VxGAIN
0b53: d5 66 02  mov   $0266+x,a
0b56: fc        inc   y
0b57: f7 04     mov   a,($04)+y ;Fetch tempo ticks before keying off note
0b59: d5 36 02  mov   $0236+x,a
0b5c: e8 00     mov   a,#$00    ;Force VxGAIN mode
0b5e: d5 56 02  mov   $0256+x,a
0b61: cd 05     mov   x,#$05
0b63: 5f 4e 04  jmp   $044e

;VCMD $16 - Fine Tune
0b66: ce        pop   x
0b67: fc        inc   y
0b68: f7 04     mov   a,($04)+y ;Fetch fine tune
0b6a: c8 05     cmp   x,#$05 ;Not supported by percussion (it is a NOP)
0b6c: f0 02     beq   $0b70
0b6e: d4 d1     mov   $d1+x,a
0b70: 5f 4e 04  jmp   $044e

;VCMD $17 - Vibrato + Custom Delay
0b73: ce        pop   x
0b74: 3f 2b 0a  call  $0a2b
0b77: fc        inc   y
0b78: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks to
0b7a: d5 0c 02  mov   $020c+x,a ;delay the vibrato for.
0b7d: 5f 4e 04  jmp   $044e

;VCMD $1F - Disable Echo For All Channels
0b80: ce        pop   x
0b81: 8f 6c f2  mov   $f2,#$6c ;FLG
0b84: 8f 20 f3  mov   $f3,#$20
0b87: e8 00     mov   a,#$00
0b89: 8f 7d f2  mov   $f2,#$7d ;EDL
0b8c: c4 f3     mov   $f3,a
0b8e: 8f 0d f2  mov   $f2,#$0d ;EFB
0b91: c4 f3     mov   $f3,a
0b93: 8f 2c f2  mov   $f2,#$2c ;EVOLL
0b96: c4 f3     mov   $f3,a
0b98: 8f 3c f2  mov   $f2,#$3c ;EVOLR
0b9b: c4 f3     mov   $f3,a
0b9d: 5f 4e 04  jmp   $044e

;VCMD $18 - Ping-Pong Pitch Envelope
0ba0: ce        pop   x
0ba1: 3f ad 0b  call  $0bad
0ba4: 48 ff     eor   a,#$ff
0ba6: bc        inc   a
0ba7: d5 30 02  mov   $0230+x,a
0baa: 5f 4e 04  jmp   $044e

;Ping-Pong Pitch Envelope Parameter Setup
0bad: fc        inc   y
0bae: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks to
0bb0: d5 1e 02  mov   $021e+x,a ;delay the pitch envelope (plus one step's
0bb3: fc        inc   y         ;worth).
0bb4: f7 04     mov   a,($04)+y ;Fetch the number of non-tempo ticks per
0bb6: bc        inc   a         ;pitch envelope step.
0bb7: d5 18 02  mov   $0218+x,a
0bba: fc        inc   y
0bbb: f7 04     mov   a,($04)+y ;Fetch the number of steps to run the pitch
0bbd: 5c        lsr   a         ;envelope for.
0bbe: d5 2a 02  mov   $022a+x,a ;Half of the pitch envelope will use
0bc1: 1c        asl   a         inverted offsets.
0bc2: d5 24 02  mov   $0224+x,a
0bc5: fc        inc   y
0bc6: f7 04     mov   a,($04)+y ;Fetch a signed offset per step in VxPITCH*8 
0bc8: 6f        ret             ;units.

;VCMD $19 - Ping-Pong Pitch Envelope Inverted
0bc9: ce        pop   x
0bca: 3f ad 0b  call  $0bad
0bcd: d5 30 02  mov   $0230+x,a
0bd0: 5f 4e 04  jmp   $044e

;VCMD $20 - Noise Clock (and enable Echo Writes)
0bd3: ce        pop   x
0bd4: fc        inc   y
0bd5: f7 04     mov   a,($04)+y ;Fetch noise clock value.
0bd7: 28 1f     and   a,#$1f
0bd9: 8f 6c f2  mov   $f2,#$6c  ;FLG
0bdc: c4 f3     mov   $f3,a
0bde: 5f 4e 04  jmp   $044e

;VCMD $21 - Echo Parameter Setup
0be1: 8f 6c f2  mov   $f2,#$6c ;FLG
0be4: 8f 20 f3  mov   $f3,#$20
0be7: ce        pop   x
0be8: fc        inc   y
0be9: f7 04     mov   a,($04)+y ;Fetch EDL
0beb: 28 0f     and   a,#$0f
0bed: c4 76     mov   $76,a
0bef: 64 0b     cmp   a,$0b
0bf1: 90 0c     bcc   $0bff
0bf3: c4 0b     mov   $0b,a
0bf5: 1c        asl   a
0bf6: 1c        asl   a
0bf7: 1c        asl   a
0bf8: 48 ff     eor   a,#$ff
0bfa: 8f 6d f2  mov   $f2,#$6d ;ESA
0bfd: c4 f3     mov   $f3,a
0bff: fc        inc   y
0c00: f7 04     mov   a,($04)+y
0c02: c4 77     mov   $77,a
0c04: 8f 0d f2  mov   $f2,#$0d ;EFB
0c07: 8f 00 f3  mov   $f3,#$00
0c0a: fc        inc   y
0c0b: f7 04     mov   a,($04)+y
0c0d: c4 78     mov   $78,a
0c0f: 8f 2c f2  mov   $f2,#$2c ;EVOLL
0c12: 8f 00 f3  mov   $f3,#$00
0c15: fc        inc   y
0c16: f7 04     mov   a,($04)+y
0c18: c4 79     mov   $79,a
0c1a: 8f 3c f2  mov   $f2,#$3c ;EVOLR
0c1d: 8f 00 f3  mov   $f3,#$00
0c20: 8f 7d f2  mov   $f2,#$7d ;EDL
0c23: fa 76 f3  mov   ($f3),($76)
0c26: ab 76     inc   $76
0c28: 8f 6c f2  mov   $f2,#$6c ;FLG
0c2b: 8f 00 f3  mov   $f3,#$00
0c2e: 5f 4e 04  jmp   $044e

;VCMD $22 - Set FIR Coefficients
0c31: ce        pop   x
0c32: 8f 0f f2  mov   $f2,#$0f ;FIRx
0c35: fc        inc   y
0c36: f7 04     mov   a,($04)+y
0c38: c4 f3     mov   $f3,a
0c3a: 60        clrc
0c3b: 98 10 f2  adc   $f2,#$10
0c3e: 78 8f f2  cmp   $f2,#$8f
0c41: d0 f2     bne   $0c35
0c43: 5f 4e 04  jmp   $044e

;VCMD $23-$25 - Fixed Pan Left
0c46: bc        inc   a ;VCMD $23 - Fixed Pan Left +++
0c47: bc        inc   a ;VCMD $24 - Fixed Pan Left ++
0c48: bc        inc   a ;VCMD $25 - Fixed Pan Left +
;VCMD $26 - Fixed Pan Center
0c49: cd 00     mov   x,#$00
0c4b: 2f 05     bra   $0c52

;VCMD $27-$29 - Fixed Pan Right
0c4d: bc        inc   a ;VCMD $27 - Fixed Pan Right +++
0c4e: bc        inc   a ;VCMD $28 - Fixed Pan Right ++
0c4f: bc        inc   a ;VCMD $29 - Fixed Pan Right +
0c50: cd 01     mov   x,#$01
0c52: c4 06     mov   $06,a
0c54: d8 07     mov   $07,x
0c56: ce        pop   x
0c57: 60        clrc
0c58: f4 ae     mov   a,$ae+x
0c5a: 10 04     bpl   $0c60
0c5c: 48 ff     eor   a,#$ff
0c5e: bc        inc   a
0c5f: 80        setc
0c60: 2b 08     rol   $08
0c62: c4 09     mov   $09,a
0c64: 60        clrc
0c65: f4 b3     mov   a,$b3+x
0c67: 10 04     bpl   $0c6d
0c69: 48 ff     eor   a,#$ff
0c6b: bc        inc   a
0c6c: 80        setc
0c6d: 2b 08     rol   $08
0c6f: 60        clrc
0c70: 84 09     adc   a,$09
0c72: 10 02     bpl   $0c76
0c74: e8 7f     mov   a,#$7f
0c76: c4 09     mov   $09,a
0c78: 2d        push  a
0c79: e4 06     mov   a,$06
0c7b: 4b 09     lsr   $09
0c7d: 9c        dec   a
0c7e: 10 fb     bpl   $0c7b
0c80: 58 03 06  eor   $06,#$03
0c83: ab 06     inc   $06
0c85: 38 03 06  and   $06,#$03
0c88: 60        clrc
0c89: 89 06 09  adc   ($09),($06)
0c8c: ae        pop   a
0c8d: 80        setc
0c8e: a4 09     sbc   a,$09
0c90: 6b 07     ror   $07
0c92: b0 07     bcs   $0c9b
0c94: c4 06     mov   $06,a
0c96: e4 09     mov   a,$09
0c98: fa 06 09  mov   ($09),($06)
0c9b: 4b 08     lsr   $08
0c9d: 90 03     bcc   $0ca2
0c9f: 48 ff     eor   a,#$ff
0ca1: bc        inc   a
0ca2: d4 b3     mov   $b3+x,a
0ca4: e4 09     mov   a,$09
0ca6: 4b 08     lsr   $08
0ca8: 90 03     bcc   $0cad
0caa: 48 ff     eor   a,#$ff
0cac: bc        inc   a
0cad: d4 ae     mov   $ae+x,a
0caf: 5f 4e 04  jmp   $044e

;VCMD $2A-$2D - Save Preset
0cb2: bc        inc   a      ;VCMD $2D - Save Preset #4
0cb3: bc        inc   a      ;VCMD $2C - Save Preset #3
0cb4: bc        inc   a      ;VCMD $2B - Save Preset #2
0cb5: c4 06     mov   $06,a  ;VCMD $2A - Save Preset #1
0cb7: ae        pop   a
0cb8: 2d        push  a
0cb9: 1c        asl   a
0cba: 1c        asl   a
0cbb: 04 06     or    a,$06
0cbd: 5d        mov   x,a
0cbe: fc        inc   y
0cbf: f7 04     mov   a,($04)+y ;Fetch VxVOLL
0cc1: d5 7e 02  mov   $027e+x,a
0cc4: fc        inc   y
0cc5: f7 04     mov   a,($04)+y ;Fetch VxVOLR
0cc7: d5 92 02  mov   $0292+x,a
0cca: fc        inc   y
0ccb: f7 04     mov   a,($04)+y ;Fetch VxADSR1
0ccd: d5 a6 02  mov   $02a6+x,a
0cd0: fc        inc   y
0cd1: f7 04     mov   a,($04)+y ;Fetch VxADSR2
0cd3: d5 ba 02  mov   $02ba+x,a
0cd6: fc        inc   y
0cd7: f7 04     mov   a,($04)+y ;Fetch note length before keying off
0cd9: d5 ce 02  mov   $02ce+x,a
0cdc: ce        pop   x
0cdd: 5f 4e 04  jmp   $044e

;VCMD $2E-$31 - Load Preset
0ce0: bc        inc   a     ;VCMD $31 - Load Preset #4
0ce1: bc        inc   a     ;VCMD $30 - Load Preset #3
0ce2: bc        inc   a     ;VCMD $2F - Load Preset #2
0ce3: c4 06     mov   $06,a ;VCMD $2E - Load Preset #1
0ce5: ae        pop   a
0ce6: 5d        mov   x,a
0ce7: 1c        asl   a
0ce8: 1c        asl   a
0ce9: 04 06     or    a,$06
0ceb: 6d        push  y
0cec: fd        mov   y,a
0ced: f6 7e 02  mov   a,$027e+y
0cf0: d4 ae     mov   $ae+x,a
0cf2: f6 92 02  mov   a,$0292+y
0cf5: d4 b3     mov   $b3+x,a
0cf7: f6 a6 02  mov   a,$02a6+y
0cfa: d4 bd     mov   $bd+x,a
0cfc: f6 ba 02  mov   a,$02ba+y
0cff: d4 c2     mov   $c2+x,a
0d01: f6 ce 02  mov   a,$02ce+y
0d04: d4 a9     mov   $a9+x,a
0d06: ee        pop   y
0d07: 5f 4e 04  jmp   $044e

;VCMD $32 - Main Volume Fade
0d0a: ce        pop   x
0d0b: fc        inc   y
0d0c: f7 04     mov   a,($04)+y ;Fetch MVOLL offset per step
0d0e: c4 7d     mov   $7d,a
0d10: fc        inc   y
0d11: f7 04     mov   a,($04)+y ;Fetch MVOLR offset per step
0d13: c4 7e     mov   $7e,a
0d15: fc        inc   y
0d16: f7 04     mov   a,($04)+y ;Fetch tempo ticks per step
0d18: bc        inc   a
0d19: c4 7b     mov   $7b,a
0d1b: c4 7c     mov   $7c,a
0d1d: fc        inc   y
0d1e: f7 04     mov   a,($04)+y ;Fetch number of steps to run the fade for
0d20: c4 7a     mov   $7a,a
0d22: 5f 4e 04  jmp   $044e

;VCMD $33 - PMON/NON/EON Flag Set
0d25: ce        pop   x
0d26: fc        inc   y
0d27: f7 04     mov   a,($04)+y
0d29: c8 05     cmp   x,#$05    ;Fetch DSP register flags
0d2b: f0 05     beq   $0d32     ;%?????xyz-PMON
0d2d: d4 cc     mov   $cc+x,a         ;|\NON
0d2f: 5f 4e 04  jmp   $044e           ;\EON

0d32: 28 07     and   a,#$07 ;Fetch percussion ID
0d34: 5d        mov   x,a
0d35: fc        inc   y
0d36: f7 04     mov   a,($04)+y ;Fetch DSP register flags
0d38: d5 6e 02  mov   $026e+x,a ;%?????xyz-PMON
0d3b: cd 05     mov   x,#$05          ;|\NON
0d3d: 5f 4e 04  jmp   $044e           ;\EON

;Pitch table
0d40: dw $0000
0d42: dw $0200
0d44: dw $021e
0d46: dw $023f
0d48: dw $0261
0d4a: dw $0285
0d4c: dw $02ab
0d4e: dw $02d4
0d50: dw $02ff
0d52: dw $032d
0d54: dw $035d
0d56: dw $0390
0d58: dw $03c7
0d5a: dw $0400
0d5c: dw $043d
0d5e: dw $047d
0d60: dw $04c2
0d62: dw $050a
0d64: dw $0557
0d66: dw $05a8
0d68: dw $05fe
0d6a: dw $065a
0d6c: dw $06ba
0d6e: dw $0721
0d70: dw $078d
0d72: dw $0800
0d74: dw $087a
0d76: dw $08fb
0d78: dw $0984
0d7a: dw $0a14
0d7c: dw $0aae
0d7e: dw $0b50
0d80: dw $0bfd
0d82: dw $0cb3
0d84: dw $0d74
0d86: dw $0e41
0d88: dw $0f1a
0d8a: dw $1000
0d8c: dw $10f4
0d8e: dw $11f6
0d90: dw $1307
0d92: dw $1429
0d94: dw $155c
0d96: dw $16a1
0d98: dw $17f9
0d9a: dw $1966
0d9c: dw $1ae9
0d9e: dw $1c82
0da0: dw $1e34
0da2: dw $2000
0da4: dw $21e7
0da6: dw $23eb
0da8: dw $260e
0daa: dw $2851
0dac: dw $2ab7
0dae: dw $2d41
0db0: dw $2ff2
0db2: dw $32cc
0db4: dw $35d1
0db6: dw $3904
0db8: dw $3c68
0dba: dw $3fff

;Initialize music instance
0dbc: cd 00     mov   x,#$00
0dbe: d8 00     mov   $00,x
0dc0: f6 00 0f  mov   a,$0f00+y ;Read starting tempo
0dc3: c4 01     mov   $01,a
0dc5: e8 0c     mov   a,#$0c
0dc7: cf        mul   ya
0dc8: fd        mov   y,a
0dc9: e8 01     mov   a,#$01
0dcb: d4 7f     mov   $7f+x,a
0dcd: d4 85     mov   $85+x,a
0dcf: 9c        dec   a
0dd0: d4 a3     mov   $a3+x,a
0dd2: d5 00 02  mov   $0200+x,a
0dd5: d5 18 02  mov   $0218+x,a
0dd8: d4 9d     mov   $9d+x,a
0dda: 9c        dec   a
0ddb: d4 97     mov   $97+x,a
0ddd: f6 a0 0f  mov   a,$0fa0+y ;Read low byte of track pointer
0de0: d4 8b     mov   $8b+x,a
0de2: f6 a1 0f  mov   a,$0fa1+y ;Read high byte of track pointer
0de5: d4 91     mov   $91+x,a
0de7: fc        inc   y
0de8: fc        inc   y
0de9: 3d        inc   x
0dea: c8 06     cmp   x,#$06
0dec: d0 db     bne   $0dc9
0dee: 8f 6c f2  mov   $f2,#$6c ;FLG
0df1: 8f e0 f3  mov   $f3,#$e0
0df4: cd 07     mov   x,#$07
0df6: e8 00     mov   a,#$00
0df8: d4 1e     mov   $1e+x,a
0dfa: 7d        mov   a,x
0dfb: d4 0e     mov   $0e+x,a
0dfd: d4 16     mov   $16+x,a
0dff: 1d        dec   x
0e00: 10 f4     bpl   $0df6
0e02: 8f 5c f2  mov   $f2,#$5c ;KOFF
0e05: 3d        inc   x
0e06: d8 f3     mov   $f3,x
0e08: 8f 7d f2  mov   $f2,#$7d ;EDL
0e0b: d8 f3     mov   $f3,x
0e0d: 8f 2d f2  mov   $f2,#$2d ;PMON
0e10: d8 f3     mov   $f3,x
0e12: 8f 3d f2  mov   $f2,#$3d ;NON
0e15: d8 f3     mov   $f3,x
0e17: 8f 4d f2  mov   $f2,#$4d ;EON
0e1a: d8 f3     mov   $f3,x
0e1c: e8 7f     mov   a,#$7f
0e1e: 8f 0c f2  mov   $f2,#$0c ;MVOLL
0e21: c4 f3     mov   $f3,a
0e23: 8f 1c f2  mov   $f2,#$1c ;MVOLR
0e26: c4 f3     mov   $f3,a
0e28: 8f 5d f2  mov   $f2,#$5d ;DIR
0e2b: 8f 40 f3  mov   $f3,#$40
0e2e: e8 ff     mov   a,#$ff
0e30: bc        inc   a
0e31: c4 76     mov   $76,a
0e33: 8f 2c f2  mov   $f2,#$2c ;EVOLL
0e36: c4 f3     mov   $f3,a
0e38: 8f 3c f2  mov   $f2,#$3c ;EVOLR
0e3b: c4 f3     mov   $f3,a
0e3d: 8f 6c f2  mov   $f2,#$6c ;FLG
0e40: 8f 20 f3  mov   $f3,#$20
0e43: 8f 85 fa  mov   $fa,#$85
0e46: 8f 01 f1  mov   $f1,#$01
0e49: e4 fd     mov   a,$fd
0e4b: f0 fc     beq   $0e49
0e4d: 6f        ret

;Allocate a note to a voice
0e4e: 8d 00     mov   y,#$00
0e50: f9 16     mov   x,$16+y
0e52: f4 1e     mov   a,$1e+x
0e54: f0 07     beq   $0e5d
0e56: fc        inc   y
0e57: ad 08     cmp   y,#$08
0e59: d0 f5     bne   $0e50
0e5b: f8 0e     mov   x,$0e
0e5d: 7d        mov   a,x
0e5e: cd ff     mov   x,#$ff
0e60: 3d        inc   x
0e61: 74 0e     cmp   a,$0e+x
0e63: d0 fb     bne   $0e60
0e65: 2d        push  a
0e66: c8 07     cmp   x,#$07
0e68: f0 09     beq   $0e73
0e6a: f4 0f     mov   a,$0f+x
0e6c: d4 0e     mov   $0e+x,a
0e6e: 3d        inc   x
0e6f: c8 07     cmp   x,#$07
0e71: d0 f7     bne   $0e6a
0e73: ce        pop   x
0e74: d8 15     mov   $15,x
0e76: 6f        ret

0e77: db $01
0e78: db $02
0e79: db $04
0e7a: db $08
0e7b: db $10
0e7c: db $20
0e7d: db $40
0e7e: db $80
0e7f: db $ff
