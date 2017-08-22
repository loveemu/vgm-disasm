0300: 20        clrp
0301: cd df     mov   x,#$df
0303: bd        mov   sp,x
0304: e8 00     mov   a,#$00
0306: 5d        mov   x,a
0307: af        mov   (x)+,a
0308: c8 f0     cmp   x,#$f0
030a: d0 fb     bne   $0307
030c: 8f 30 f1  mov   $f1,#$30
030f: cd 00     mov   x,#$00
0311: ae        pop   a
0312: d5 c0 ff  mov   $ffc0+x,a
0315: 3d        inc   x
0316: c8 20     cmp   x,#$20
0318: d0 f7     bne   $0311
031a: 8f 40 fa  mov   $fa,#$40          ; timer 0 frequency (8 ms)
031d: 8f 80 fb  mov   $fb,#$80
0320: 8f 80 fc  mov   $fc,#$80
0323: e8 00     mov   a,#$00
0325: 8d 0c     mov   y,#$0c
0327: 4f 1e     pcall $1e               ; zero MVOL(L)
0329: 8d 1c     mov   y,#$1c
032b: 4f 1e     pcall $1e               ; zero MVOL(R)
032d: 8d 2c     mov   y,#$2c
032f: 4f 1e     pcall $1e               ; zero EVOL(L)
0331: 8d 3c     mov   y,#$3c
0333: 4f 1e     pcall $1e               ; zero EVOL(R)
0335: e8 0f     mov   a,#$0f
0337: 8d 5d     mov   y,#$5d
0339: 4f 1e     pcall $1e               ; set DIR to $0f00
033b: e8 07     mov   a,#$07
033d: 8d af     mov   y,#$af
033f: c4 f2     mov   $f2,a
0341: cb f3     mov   $f3,y             ; set GAIN
0343: 60        clrc
0344: 88 10     adc   a,#$10
0346: 10 f7     bpl   $033f             ; for every voices
0348: e8 01     mov   a,#$01
034a: 61        tcall 6                 ; set echo delay to 1
034b: a2 32     set5  $32               ; disable echo
034d: 8f 07 f1  mov   $f1,#$07
0350: 8f 20 3a  mov   $3a,#$20
0353: 8f ff 20  mov   $20,#$ff
0356: 3f 22 0d  call  $0d22
0359: e4 ff     mov   a,$ff
035b: f0 f9     beq   $0356
035d: 2d        push  a
035e: 60        clrc
035f: 84 2d     adc   a,$2d
0361: c4 2d     mov   $2d,a
0363: 28 07     and   a,#$07
0365: d0 07     bne   $036e
0367: 69 37 2c  cmp   ($2c),($37)
036a: f0 02     beq   $036e
036c: ab 2c     inc   $2c
036e: e4 28     mov   a,$28
0370: 48 ff     eor   a,#$ff
0372: 24 2b     and   a,$2b
0374: c4 36     mov   $36,a             ; set EON
0376: 8d 0a     mov   y,#$0a
0378: ad 05     cmp   y,#$05
037a: f0 07     beq   $0383
037c: b0 08     bcs   $0386
037e: 69 37 2c  cmp   ($2c),($37)
0381: d0 0f     bne   $0392
0383: e3 2c 0c  bbs7  $2c,$0392
0386: f6 e1 0d  mov   a,$0de1+y
0389: c4 f2     mov   $f2,a
038b: f6 eb 0d  mov   a,$0deb+y
038e: 5d        mov   x,a
038f: e6        mov   a,(x)
0390: c4 f3     mov   $f3,a             ; set dsp regs from shadow
0392: fe e4     dbnz  y,$0378
0394: cb 30     mov   $30,y
0396: cb 31     mov   $31,y
0398: eb fd     mov   y,$fd             ; timer 0 counter
039a: f0 11     beq   $03ad
039c: e5 fd 10  mov   a,$10fd
039f: 68 11     cmp   a,#$11
03a1: f0 0a     beq   $03ad
03a3: e4 1d     mov   a,$1d
03a5: f0 06     beq   $03ad
03a7: 3f 43 0d  call  $0d43
03aa: 3f 2e 0c  call  $0c2e
03ad: ee        pop   y
03ae: e4 3a     mov   a,$3a
03b0: 60        clrc
03b1: 84 0d     adc   a,$0d
03b3: cf        mul   ya
03b4: 60        clrc
03b5: 84 38     adc   a,$38
03b7: c4 38     mov   $38,a
03b9: b0 04     bcs   $03bf
03bb: ad 00     cmp   y,#$00
03bd: f0 33     beq   $03f2
03bf: 3f 8e 05  call  $058e
03c2: e4 1d     mov   a,$1d
03c4: f0 29     beq   $03ef
03c6: eb 0c     mov   y,$0c
03c8: e4 46     mov   a,$46
03ca: cf        mul   ya
03cb: cb 2e     mov   $2e,y             ; set EVOL(L)
03cd: eb 0c     mov   y,$0c
03cf: e4 48     mov   a,$48
03d1: cf        mul   ya
03d2: cb 2f     mov   $2f,y             ; set EVOL(R)
03d4: eb 0c     mov   y,$0c
03d6: e8 60     mov   a,#$60
03d8: cf        mul   ya
03d9: dd        mov   a,y
03da: 8d 0c     mov   y,#$0c
03dc: 4f 1e     pcall $1e
03de: 8d 1c     mov   y,#$1c
03e0: 4f 1e     pcall $1e
03e2: e4 1c     mov   a,$1c
03e4: f0 09     beq   $03ef
03e6: 8b 1d     dec   $1d
03e8: d0 05     bne   $03ef
03ea: e4 0f     mov   a,$0f
03ec: 3f e5 04  call  $04e5
03ef: 5f 56 03  jmp   $0356

03f2: e4 06     mov   a,$06
03f4: f0 12     beq   $0408
03f6: cd 00     mov   x,#$00
03f8: 8f 01 27  mov   $27,#$01
03fb: f4 bf     mov   a,$bf+x
03fd: f0 03     beq   $0402
03ff: 3f 03 09  call  $0903
0402: 3d        inc   x
0403: 3d        inc   x
0404: 0b 27     asl   $27
0406: d0 f3     bne   $03fb
0408: 5f 56 03  jmp   $0356

040b: 8d bb     mov   y,#$bb
040d: e8 aa     mov   a,#$aa
040f: da f4     movw  $f4,ya
0411: e4 f4     mov   a,$f4
0413: 68 cc     cmp   a,#$cc
0415: d0 fa     bne   $0411
0417: 2f 1e     bra   $0437
0419: eb f4     mov   y,$f4
041b: d0 fc     bne   $0419
041d: 7e f4     cmp   y,$f4
041f: d0 10     bne   $0431
0421: cb f4     mov   $f4,y
0423: e4 f5     mov   a,$f5
0425: d6 ab bd  mov   $bdab+y,a
0428: fc        inc   y
0429: d0 f2     bne   $041d
042b: ac 27 04  inc   $0427
042e: 5f 1d 04  jmp   $041d

0431: 10 ea     bpl   $041d
0433: 7e f4     cmp   y,$f4
0435: 10 e6     bpl   $041d
0437: ba f6     movw  ya,$f6
0439: c5 26 04  mov   $0426,a
043c: cc 27 04  mov   $0427,y
043f: eb f4     mov   y,$f4
0441: e4 f5     mov   a,$f5
0443: cb f4     mov   $f4,y
0445: d0 d2     bne   $0419
0447: 8f 37 f1  mov   $f1,#$37
044a: 5f db 04  jmp   $04db

044d: 80        setc
044e: a8 f0     sbc   a,#$f0
0450: 90 16     bcc   $0468
0452: 68 0f     cmp   a,#$0f
0454: f0 b5     beq   $040b
0456: 68 0e     cmp   a,#$0e
0458: f0 26     beq   $0480
045a: 1c        asl   a
045b: fd        mov   y,a
045c: f6 6f 04  mov   a,$046f+y
045f: 2d        push  a
0460: f6 6e 04  mov   a,$046e+y
0463: 2d        push  a
0464: ba 08     movw  ya,$08
0466: da 04     movw  $04,ya
0468: 8f 00 08  mov   $08,#$00
046b: e4 09     mov   a,$09
046d: 6f        ret

046e: e5 04 06  mov   a,$0604
0471: 05 11 05  or    a,$0511
0474: 13 05 18  bbc0  $05,$048f
0477: 05 45 05  or    a,$0545
047a: 48 05     eor   a,#$05
047c: 4b 05     lsr   $05
047e: 4f 05     pcall $05
0480: e4 10     mov   a,$10
0482: f0 42     beq   $04c6
0484: 8f 00 11  mov   $11,#$00
0487: e8 09     mov   a,#$09
0489: c4 f2     mov   $f2,a
048b: 09 f3 11  or    ($11),($f3)       ; read OUTX
048e: 60        clrc
048f: 88 10     adc   a,#$10
0491: 10 f6     bpl   $0489
0493: e4 11     mov   a,$11
0495: f0 03     beq   $049a
0497: 5f 95 05  jmp   $0595

049a: 8f 00 06  mov   $06,#$00
049d: e8 00     mov   a,#$00
049f: c4 bf     mov   $bf,a
04a1: c4 c1     mov   $c1,a
04a3: c4 c3     mov   $c3,a
04a5: c4 c5     mov   $c5,a
04a7: c4 c7     mov   $c7,a
04a9: c4 c9     mov   $c9,a
04ab: c4 cb     mov   $cb,a
04ad: c4 cd     mov   $cd,a
04af: c4 cf     mov   $cf,a
04b1: c4 d1     mov   $d1,a
04b3: c4 1d     mov   $1d,a
04b5: c4 10     mov   $10,a
04b7: e8 00     mov   a,#$00
04b9: c4 2e     mov   $2e,a
04bb: c4 2f     mov   $2f,a
04bd: c4 33     mov   $33,a
04bf: c4 2b     mov   $2b,a
04c1: a2 32     set5  $32               ; disable echo
04c3: e4 0f     mov   a,$0f
04c5: 61        tcall 6
04c6: 69 37 2c  cmp   ($2c),($37)
04c9: d0 19     bne   $04e4
04cb: e8 ff     mov   a,#$ff
04cd: c4 28     mov   $28,a
04cf: c4 31     mov   $31,a             ; set KOF
04d1: e8 00     mov   a,#$00
04d3: 8d 0c     mov   y,#$0c
04d5: 4f 1e     pcall $1e
04d7: 8d 1c     mov   y,#$1c
04d9: 4f 1e     pcall $1e
04db: fd        mov   y,a
04dc: da 00     movw  $00,ya
04de: da 08     movw  $08,ya
04e0: da 04     movw  $04,ya
04e2: da 06     movw  $06,ya
04e4: 6f        ret

04e5: 28 0f     and   a,#$0f
04e7: d0 01     bne   $04ea
04e9: bc        inc   a
04ea: c4 0f     mov   $0f,a
04ec: 8d 05     mov   y,#$05
04ee: cb f2     mov   $f2,y
04f0: e4 f3     mov   a,$f3
04f2: 28 7f     and   a,#$7f
04f4: c4 f3     mov   $f3,a             ; set ADSR(1)
04f6: dd        mov   a,y
04f7: 60        clrc
04f8: 88 10     adc   a,#$10
04fa: fd        mov   y,a
04fb: 10 f1     bpl   $04ee
04fd: 8f 7f 20  mov   $20,#$7f
0500: 8f fe 08  mov   $08,#$fe
0503: 5f 95 05  jmp   $0595

0506: 28 0f     and   a,#$0f
0508: d0 01     bne   $050b
050a: bc        inc   a
050b: c4 0f     mov   $0f,a
050d: 8f ff 1c  mov   $1c,#$ff
0510: 6f        ret

0511: e8 ff     mov   a,#$ff
0513: c4 28     mov   $28,a
0515: c4 31     mov   $31,a             ; set KOF
0517: 6f        ret

; play song
0518: 8f 01 06  mov   $06,#$01
051b: 8f 01 10  mov   $10,#$01
051e: 3f 99 0d  call  $0d99
0521: e5 fc 10  mov   a,$10fc
0524: ec fd 10  mov   y,$10fd
0527: da 23     movw  $23,ya            ; section list address from $10fc/d
0529: 3a 23     incw  $23
052b: 3a 23     incw  $23               ; skip first word
052d: d2 32     clr6  $32               ; clear mute
052f: 8f 02 1e  mov   $1e,#$02
0532: e8 00     mov   a,#$00
0534: c4 cf     mov   $cf,a
0536: c4 d1     mov   $d1,a
0538: c4 1c     mov   $1c,a
053a: c4 1d     mov   $1d,a
053c: c4 22     mov   $22,a
053e: c4 25     mov   $25,a
0540: c4 28     mov   $28,a
0542: c4 31     mov   $31,a             ; set KOF
0544: 6f        ret

0545: c4 0c     mov   $0c,a
0547: 6f        ret

0548: c4 0d     mov   $0d,a
054a: 6f        ret

054b: 8f 00 0e  mov   $0e,#$00
054e: 6f        ret

054f: 8f 01 0e  mov   $0e,#$01
0552: 6f        ret

0553: cd 0e     mov   x,#$0e
0555: 8f 80 27  mov   $27,#$80
0558: e8 00     mov   a,#$00
055a: d5 01 01  mov   $0101+x,a
055d: e8 0a     mov   a,#$0a
055f: 3f 7b 0a  call  $0a7b
0562: d5 17 02  mov   $0217+x,a
0565: d5 00 ff  mov   $ff00+x,a
0568: d5 b1 01  mov   $01b1+x,a
056b: d5 dd 02  mov   $02dd+x,a
056e: d5 58 02  mov   $0258+x,a
0571: d4 93     mov   $93+x,a
0573: d4 a9     mov   $a9+x,a
0575: 1d        dec   x
0576: 1d        dec   x
0577: 4b 27     lsr   $27
0579: d0 dd     bne   $0558
057b: c4 41     mov   $41,a
057d: c4 4d     mov   $4d,a
057f: c4 3b     mov   $3b,a
0581: c4 21     mov   $21,a
0583: c4 40     mov   $40,a
0585: c4 0d     mov   $0d,a
0587: 8f 20 3a  mov   $3a,#$20
058a: 8f ff 20  mov   $20,#$ff
058d: 6f        ret

058e: e4 08     mov   a,$08
0590: f0 03     beq   $0595
0592: 5f 4d 04  jmp   $044d

0595: e4 06     mov   a,$06
0597: f0 f4     beq   $058d
0599: e4 1e     mov   a,$1e
059b: f0 57     beq   $05f4
059d: 6e 1e b3  dbnz  $1e,$0553
; process next section word
05a0: 4f 2d     pcall $2d               ; read word from section list
05a2: d0 1f     bne   $05c3
05a4: fd        mov   y,a
05a5: d0 09     bne   $05b0
; section list end
05a7: 9c        dec   a
05a8: c4 22     mov   $22,a
05aa: 8f 00 06  mov   $06,#$00
05ad: 5f 13 05  jmp   $0513
; repeat section list
05b0: 8b 25     dec   $25
05b2: 10 05     bpl   $05b9             ; count < 1: infinite loop
05b4: c4 25     mov   $25,a             ; save repeat count for the first time
05b6: 8f 00 22  mov   $22,#$00
05b9: 4f 2d     pcall $2d               ; read word from section list
05bb: f8 25     mov   x,$25
05bd: f0 e1     beq   $05a0             ; go through if counter == 0
05bf: da 23     movw  $23,ya
05c1: 2f dd     bra   $05a0             ; otherwise, jump to the destination
; load section
05c3: ab 22     inc   $22
05c5: da 18     movw  $18,ya            ; word from section list
05c7: 8d 0f     mov   y,#$0f            ; 16 bytes
05c9: f7 18     mov   a,($18)+y
05cb: d6 be 00  mov   $00be+y,a         ; copy to voice pointers
05ce: dc        dec   y
05cf: 10 f8     bpl   $05c9
05d1: cd 00     mov   x,#$00
05d3: 8f 01 27  mov   $27,#$01
05d6: f4 bf     mov   a,$bf+x
05d8: f0 08     beq   $05e2
05da: f5 17 02  mov   a,$0217+x
05dd: d0 03     bne   $05e2
05df: e8 00     mov   a,#$00
05e1: 71        tcall 7
05e2: e8 00     mov   a,#$00
05e4: d5 2c 01  mov   $012c+x,a
05e7: d4 66     mov   $66+x,a
05e9: d4 67     mov   $67+x,a
05eb: bc        inc   a
05ec: d4 50     mov   $50+x,a
05ee: 3d        inc   x
05ef: 3d        inc   x
05f0: 0b 27     asl   $27
05f2: d0 e2     bne   $05d6
05f4: cd 00     mov   x,#$00
05f6: d8 1f     mov   $1f,x
05f8: 8f 01 27  mov   $27,#$01          ; first voice
05fb: d8 26     mov   $26,x
05fd: f4 bf     mov   a,$bf+x
05ff: f0 5e     beq   $065f             ; next if vptr hi zero
0601: 9b 50     dec   $50+x             ; dec duration counter
0603: d0 58     bne   $065d             ; if not zero, skip to voice readahead
0605: 4f 23     pcall $23               ; read vcmd into A and Y
0607: d0 1a     bne   $0623
; vcmd 00 - end repeat/return
0609: f5 2c 01  mov   a,$012c+x
060c: f0 92     beq   $05a0
060e: 3f 3c 0b  call  $0b3c
0611: 40        setp
0612: 9b 2c     dec   $2c+x
0614: 20        clrp
0615: d0 ee     bne   $0605
0617: f5 2c 02  mov   a,$022c+x
061a: d4 be     mov   $be+x,a
061c: f5 2d 02  mov   a,$022d+x
061f: d4 bf     mov   $bf+x,a           ; back to return addr instead
0621: 2f e2     bra   $0605             ; then continue
0623: 30 1e     bmi   $0643
0625: d5 00 02  mov   $0200+x,a
0628: 4f 23     pcall $23
062a: 30 17     bmi   $0643
062c: 2d        push  a
062d: 9f        xcn   a
062e: 28 07     and   a,#$07
0630: fd        mov   y,a
0631: f6 e8 0f  mov   a,$0fe8+y
0634: d5 01 02  mov   $0201+x,a
0637: ae        pop   a
0638: 28 0f     and   a,#$0f
063a: fd        mov   y,a
063b: f6 f0 0f  mov   a,$0ff0+y
063e: d5 16 02  mov   $0216+x,a
0641: 4f 23     pcall $23               ; read voice byte
0643: 68 e0     cmp   a,#$e0
0645: 90 03     bcc   $064a
0647: c1        tcall 12                ; dispatch vcmd
0648: 2f bb     bra   $0605
064a: b1        tcall 11
064b: f5 00 02  mov   a,$0200+x
064e: d4 50     mov   $50+x,a
0650: fd        mov   y,a
0651: f5 01 02  mov   a,$0201+x
0654: cf        mul   ya
0655: dd        mov   a,y
0656: d0 01     bne   $0659
0658: bc        inc   a
0659: d4 51     mov   $51+x,a
065b: 2f 01     bra   $065e
065d: f1        tcall 15                ; do readahead
065e: e1        tcall 14
065f: 3d        inc   x
0660: 3d        inc   x
0661: 0b 27     asl   $27
0663: d0 96     bne   $05fb             ; next voice
0665: e4 3b     mov   a,$3b             ; tempo fade counter
0667: f0 0b     beq   $0674
0669: ba 3d     movw  ya,$3d
066b: 7a 39     addw  ya,$39            ; add tempo fade to tempo
066d: 6e 3b 02  dbnz  $3b,$0672
0670: ba 3b     movw  ya,$3b            ; last time: move tempo target to tempo
0672: da 39     movw  $39,ya
0674: e4 4d     mov   a,$4d             ; echo vol fade counter
0676: f0 15     beq   $068d
0678: ba 49     movw  ya,$49
067a: 7a 45     addw  ya,$45
067c: da 45     movw  $45,ya            ; add echo L delta to echo L vol
067e: ba 4b     movw  ya,$4b
0680: 7a 47     addw  ya,$47            ; add echo R delta to echo R vol
0682: 6e 4d 06  dbnz  $4d,$068b
0685: ba 4d     movw  ya,$4d
0687: da 45     movw  $45,ya
0689: eb 4f     mov   y,$4f
068b: da 47     movw  $47,ya
068d: e4 41     mov   a,$41             ; master vol fade counter
068f: f0 0e     beq   $069f
0691: ba 43     movw  ya,$43
0693: 7a 3f     addw  ya,$3f            ; add master vol delta to value
0695: 6e 41 02  dbnz  $41,$069a
0698: ba 41     movw  ya,$41
069a: da 3f     movw  $3f,ya
069c: 8f ff 1f  mov   $1f,#$ff          ; set all vol chg flags
069f: cd 00     mov   x,#$00
06a1: 8f 01 27  mov   $27,#$01          ; first voice
06a4: e4 1c     mov   a,$1c
06a6: f0 03     beq   $06ab
06a8: 8f ff 1f  mov   $1f,#$ff
06ab: f4 bf     mov   a,$bf+x
06ad: f0 01     beq   $06b0
06af: d1        tcall 13
06b0: 3d        inc   x
06b1: 3d        inc   x
06b2: 0b 27     asl   $27
06b4: d0 f5     bne   $06ab
06b6: 6f        ret

; vcmd c8,c9 - tie, rest
06b7: 6f        ret

; tcall 11 - process voice byte 00-df
06b8: ad ca     cmp   y,#$ca
06ba: 90 03     bcc   $06bf
; vcmd ca-df - percussion note
06bc: 71        tcall 7
06bd: 8d a4     mov   y,#$a4
;
06bf: ad c8     cmp   y,#$c8
06c1: b0 f4     bcs   $06b7
; vcmd 00-c7
06c3: e4 28     mov   a,$28
06c5: 24 27     and   a,$27
06c7: d0 ee     bne   $06b7
06c9: dd        mov   a,y
06ca: 28 7f     and   a,#$7f            ; note number from vcmd
06cc: 60        clrc
06cd: 84 21     adc   a,$21             ; add global transpose
06cf: 60        clrc
06d0: 95 dd 02  adc   a,$02dd+x         ; add per-voice transpose
06d3: d5 85 01  mov   $0185+x,a         ; save note number (integer)
06d6: f5 b1 01  mov   a,$01b1+x
06d9: d5 84 01  mov   $0184+x,a         ; save note number (fraction)
06dc: f5 9b 02  mov   a,$029b+x
06df: 5c        lsr   a
06e0: e8 00     mov   a,#$00
06e2: 7c        ror   a
06e3: d5 84 02  mov   $0284+x,a
06e6: e8 00     mov   a,#$00
06e8: d4 92     mov   $92+x,a
06ea: d5 6e 01  mov   $016e+x,a
06ed: d5 c6 02  mov   $02c6+x,a
06f0: d4 a8     mov   $a8+x,a
06f2: 09 27 1f  or    ($1f),($27)       ; set volume changed flg
06f5: 09 27 30  or    ($30),($27)       ; set key on shadow bit
06f8: f5 58 02  mov   a,$0258+x         ; pitch envelope counter
06fb: d4 7c     mov   $7c+x,a           ; portamento counter
06fd: f0 1e     beq   $071d
06ff: f5 59 02  mov   a,$0259+x
0702: d4 7d     mov   $7d+x,a
0704: f5 6e 02  mov   a,$026e+x         ; pitch envelope mode (0:attack / 1:release)
0707: d0 0a     bne   $0713
0709: f5 85 01  mov   a,$0185+x
070c: 80        setc
070d: b5 6f 02  sbc   a,$026f+x
0710: d5 85 01  mov   $0185+x,a
0713: f5 6f 02  mov   a,$026f+x
0716: 60        clrc
;
0717: 95 85 01  adc   a,$0185+x
071a: 3f e6 0b  call  $0be6
071d: 4f 7b     pcall $7b
071f: e4 15     mov   a,$15
0721: 1c        asl   a
0722: fd        mov   y,a
0723: f6 34 0e  mov   a,$0e34+y
0726: c4 17     mov   $17,a
0728: f6 33 0e  mov   a,$0e33+y         ; read pitch table
072b: c4 16     mov   $16,a
072d: f6 36 0e  mov   a,$0e36+y
0730: 2d        push  a
0731: f6 35 0e  mov   a,$0e35+y
0734: ee        pop   y
0735: 9a 16     subw  ya,$16
0737: eb 14     mov   y,$14
0739: cf        mul   ya
073a: dd        mov   a,y
073b: 8d 00     mov   y,#$00
073d: 7a 16     addw  ya,$16
073f: da 16     movw  $16,ya
; apply instrument-specific pitch multiplier
0741: f4 d4     mov   a,$d4+x
0743: eb 17     mov   y,$17
0745: cf        mul   ya
0746: da 18     movw  $18,ya
0748: f4 d4     mov   a,$d4+x
074a: eb 16     mov   y,$16
074c: cf        mul   ya
074d: 6d        push  y
074e: f4 d5     mov   a,$d5+x
0750: eb 16     mov   y,$16
0752: cf        mul   ya
0753: 7a 18     addw  ya,$18
0755: da 18     movw  $18,ya
0757: f4 d5     mov   a,$d5+x
0759: eb 17     mov   y,$17
075b: cf        mul   ya
075c: fd        mov   y,a
075d: ae        pop   a
075e: 7a 18     addw  ya,$18
0760: da 18     movw  $18,ya
0762: f5 ce 0d  mov   a,$0dce+x
0765: 08 02     or    a,#$02
0767: fd        mov   y,a
0768: e4 18     mov   a,$18
076a: 4f 16     pcall $16               ; set P(L)
076c: fc        inc   y
076d: e4 19     mov   a,$19
076f: 5f 16 ff  jmp   $ff16             ; set P(H)

; tcall 13
0772: f4 66     mov   a,$66+x
0774: f0 08     beq   $077e
0776: e8 00     mov   a,#$00
0778: 8d 01     mov   y,#$01
077a: 9b 66     dec   $66+x
077c: 4f 57     pcall $57
077e: fb a9     mov   y,$a9+x
0780: f0 23     beq   $07a5
0782: f5 dc 02  mov   a,$02dc+x
0785: de a8 1b  cbne  $a8+x,$07a3
0788: 09 27 1f  or    ($1f),($27)
078b: f5 c6 02  mov   a,$02c6+x
078e: 10 07     bpl   $0797
0790: fc        inc   y
0791: d0 04     bne   $0797
0793: e8 80     mov   a,#$80
0795: 2f 04     bra   $079b
0797: 60        clrc
0798: 95 c7 02  adc   a,$02c7+x
079b: d5 c6 02  mov   $02c6+x,a
079e: 3f 68 09  call  $0968
07a1: 2f 07     bra   $07aa
07a3: bb a8     inc   $a8+x
07a5: e8 ff     mov   a,#$ff
07a7: 3f 73 09  call  $0973
07aa: f4 67     mov   a,$67+x
07ac: f0 08     beq   $07b6
07ae: e8 42     mov   a,#$42
07b0: 8d 01     mov   y,#$01
07b2: 9b 67     dec   $67+x
07b4: 4f 57     pcall $57
07b6: e4 27     mov   a,$27
07b8: 24 1f     and   a,$1f
07ba: f0 56     beq   $0812
07bc: f5 43 01  mov   a,$0143+x
07bf: fd        mov   y,a
07c0: f5 42 01  mov   a,$0142+x
07c3: da 14     movw  $14,ya
07c5: f5 ce 0d  mov   a,$0dce+x
07c8: c4 12     mov   $12,a
07ca: f5 6f 01  mov   a,$016f+x
07cd: c4 11     mov   $11,a
07cf: e4 0e     mov   a,$0e
07d1: f0 09     beq   $07dc
07d3: 8f 00 14  mov   $14,#$00
07d6: 8f 0a 15  mov   $15,#$0a
07d9: 8f 00 11  mov   $11,#$00
07dc: eb 15     mov   y,$15
07de: f6 f7 0d  mov   a,$0df7+y
07e1: 80        setc
07e2: b6 f6 0d  sbc   a,$0df6+y
07e5: eb 14     mov   y,$14
07e7: cf        mul   ya
07e8: dd        mov   a,y
07e9: eb 15     mov   y,$15
07eb: 60        clrc
07ec: 96 f6 0d  adc   a,$0df6+y
07ef: fd        mov   y,a
07f0: f5 2d 01  mov   a,$012d+x
07f3: cf        mul   ya
07f4: e4 11     mov   a,$11
07f6: 1c        asl   a
07f7: 13 12 01  bbc0  $12,$07fb
07fa: 1c        asl   a
07fb: dd        mov   a,y
07fc: 90 03     bcc   $0801
07fe: 48 ff     eor   a,#$ff
0800: bc        inc   a
0801: eb 12     mov   y,$12
0803: 4f 16     pcall $16               ; set VOL(L),VOL(R)
0805: 8d 14     mov   y,#$14
0807: e8 00     mov   a,#$00
0809: 9a 14     subw  ya,$14
080b: da 14     movw  $14,ya
080d: ab 12     inc   $12
080f: 33 12 ca  bbc1  $12,$07dc
0812: 6f        ret

; tcall 15 - voice readahead
0813: f4 51     mov   a,$51+x
0815: f0 61     beq   $0878
0817: 9b 51     dec   $51+x
0819: f0 05     beq   $0820
081b: e8 02     mov   a,#$02
081d: de 50 58  cbne  $50+x,$0878
0820: f5 2c 01  mov   a,$012c+x
0823: c4 19     mov   $19,a
0825: f4 be     mov   a,$be+x
0827: fb bf     mov   y,$bf+x
0829: da 16     movw  $16,ya
082b: 8d 00     mov   y,#$00
082d: f7 16     mov   a,($16)+y
082f: f0 1c     beq   $084d
0831: 30 05     bmi   $0838
0833: fc        inc   y
0834: f7 16     mov   a,($16)+y
0836: 10 fb     bpl   $0833
0838: 68 c8     cmp   a,#$c8
083a: f0 3c     beq   $0878
083c: 68 ef     cmp   a,#$ef
083e: f0 27     beq   $0867
0840: 68 e0     cmp   a,#$e0
0842: 90 2e     bcc   $0872
0844: 6d        push  y
0845: fd        mov   y,a
0846: ae        pop   a
0847: 96 09 09  adc   a,$0909+y
084a: fd        mov   y,a
084b: 2f e0     bra   $082d
084d: e4 19     mov   a,$19
084f: f0 21     beq   $0872
0851: 8b 19     dec   $19
0853: d0 09     bne   $085e
0855: f5 2d 02  mov   a,$022d+x
0858: fd        mov   y,a
0859: f5 2c 02  mov   a,$022c+x
085c: 2f cb     bra   $0829
085e: f5 43 02  mov   a,$0243+x
0861: fd        mov   y,a
0862: f5 42 02  mov   a,$0242+x
0865: 2f c2     bra   $0829
0867: fc        inc   y
0868: f7 16     mov   a,($16)+y
086a: 2d        push  a
086b: fc        inc   y
086c: f7 16     mov   a,($16)+y
086e: fd        mov   y,a
086f: ae        pop   a
0870: 2f b7     bra   $0829
0872: e4 27     mov   a,$27
0874: 8d 5c     mov   y,#$5c
0876: 4f 16     pcall $16               ; set KOF
0878: f2 13     clr7  $13
087a: f4 7c     mov   a,$7c+x
087c: f0 2c     beq   $08aa
087e: f4 7d     mov   a,$7d+x
0880: f0 04     beq   $0886
0882: 9b 7d     dec   $7d+x
0884: 2f 24     bra   $08aa
0886: e2 13     set7  $13
0888: 9b 7c     dec   $7c+x
088a: d0 0b     bne   $0897
088c: f5 b1 01  mov   a,$01b1+x
088f: d5 84 01  mov   $0184+x,a
0892: f5 b0 01  mov   a,$01b0+x
0895: 2f 10     bra   $08a7
0897: 60        clrc
0898: f5 84 01  mov   a,$0184+x
089b: 95 9a 01  adc   a,$019a+x
089e: d5 84 01  mov   $0184+x,a
08a1: f5 85 01  mov   a,$0185+x
08a4: 95 9b 01  adc   a,$019b+x
08a7: d5 85 01  mov   $0185+x,a
08aa: 4f 7b     pcall $7b
08ac: f4 93     mov   a,$93+x
08ae: f0 4f     beq   $08ff
08b0: f5 9a 02  mov   a,$029a+x
08b3: de 92 47  cbne  $92+x,$08fd
08b6: f5 6e 01  mov   a,$016e+x
08b9: 75 9b 02  cmp   a,$029b+x
08bc: d0 05     bne   $08c3
08be: f5 b1 02  mov   a,$02b1+x
08c1: 2f 0d     bra   $08d0
08c3: 40        setp
08c4: bb 6e     inc   $6e+x
08c6: 20        clrp
08c7: fd        mov   y,a
08c8: f0 02     beq   $08cc
08ca: f4 93     mov   a,$93+x
08cc: 60        clrc
08cd: 95 b0 02  adc   a,$02b0+x
08d0: d4 93     mov   $93+x,a
08d2: f5 84 02  mov   a,$0284+x
08d5: 60        clrc
08d6: 95 85 02  adc   a,$0285+x
08d9: d5 84 02  mov   $0284+x,a
08dc: c4 12     mov   $12,a
08de: 1c        asl   a
08df: 1c        asl   a
08e0: 90 02     bcc   $08e4
08e2: 48 ff     eor   a,#$ff
08e4: fd        mov   y,a
08e5: f4 93     mov   a,$93+x
08e7: 68 f1     cmp   a,#$f1
08e9: 90 05     bcc   $08f0
08eb: 28 0f     and   a,#$0f
08ed: cf        mul   ya
08ee: 2f 04     bra   $08f4
08f0: cf        mul   ya
08f1: dd        mov   a,y
08f2: 8d 00     mov   y,#$00
08f4: 4f 4d     pcall $4d
08f6: 7a 14     addw  ya,$14
08f8: da 14     movw  $14,ya
08fa: 5f 1f 07  jmp   $071f

08fd: bb 92     inc   $92+x
08ff: e3 13 f8  bbs7  $13,$08fa
0902: 6f        ret

0903: d8 26     mov   $26,x
0905: f2 13     clr7  $13
0907: f4 a9     mov   a,$a9+x
0909: f0 16     beq   $0921
090b: f5 dc 02  mov   a,$02dc+x
090e: de a8 10  cbne  $a8+x,$0921
0911: e2 13     set7  $13
0913: eb 38     mov   y,$38
0915: f5 c7 02  mov   a,$02c7+x
0918: cf        mul   ya
0919: dd        mov   a,y
091a: 60        clrc
091b: 95 c6 02  adc   a,$02c6+x
091e: 3f 68 09  call  $0968
0921: f5 43 01  mov   a,$0143+x
0924: fd        mov   y,a
0925: f5 42 01  mov   a,$0142+x
0928: da 14     movw  $14,ya
092a: f4 67     mov   a,$67+x
092c: f0 08     beq   $0936
092e: f5 59 01  mov   a,$0159+x
0931: fd        mov   y,a
0932: f5 58 01  mov   a,$0158+x
0935: a1        tcall 10
0936: f3 13 03  bbc7  $13,$093c
0939: 3f c5 07  call  $07c5
093c: f2 13     clr7  $13
093e: 4f 7b     pcall $7b
0940: f4 7c     mov   a,$7c+x
0942: f0 0c     beq   $0950
0944: f4 7d     mov   a,$7d+x
0946: d0 08     bne   $0950
0948: f5 9b 01  mov   a,$019b+x
094b: fd        mov   y,a
094c: f5 9a 01  mov   a,$019a+x
094f: a1        tcall 10
0950: f4 93     mov   a,$93+x
0952: f0 ab     beq   $08ff
0954: f5 9a 02  mov   a,$029a+x
0957: de 92 a5  cbne  $92+x,$08ff
095a: eb 38     mov   y,$38
095c: f5 85 02  mov   a,$0285+x
095f: cf        mul   ya
0960: dd        mov   a,y
0961: 60        clrc
0962: 95 84 02  adc   a,$0284+x
0965: 5f dc 08  jmp   $08dc

0968: 1c        asl   a
0969: 90 02     bcc   $096d
096b: 48 ff     eor   a,#$ff
096d: fb a9     mov   y,$a9+x
096f: cf        mul   ya
0970: dd        mov   a,y
0971: 48 ff     eor   a,#$ff
0973: eb 2a     mov   y,$2a
0975: d0 03     bne   $097a
0977: eb 40     mov   y,$40
0979: cf        mul   ya
097a: f5 16 02  mov   a,$0216+x
097d: cf        mul   ya
097e: f5 01 01  mov   a,$0101+x
0981: cf        mul   ya
0982: e4 1d     mov   a,$1d
0984: cf        mul   ya
0985: dd        mov   a,y
0986: cf        mul   ya
0987: dd        mov   a,y
0988: d5 2d 01  mov   $012d+x,a
098b: 6f        ret

; tcall 12 - dispatch vcmd (e0-ff)
098c: 1c        asl   a
098d: fd        mov   y,a
098e: f6 ea 08  mov   a,$08ea+y
0991: 2d        push  a
0992: f6 e9 08  mov   a,$08e9+y         ; refs vcmd dispatch table $09a9
0995: 2d        push  a
0996: dd        mov   a,y
0997: 5c        lsr   a
0998: fd        mov   y,a
0999: f6 89 09  mov   a,$0989+y         ; refs vcmd length table $09e9
099c: f0 08     beq   $09a6
099e: e7 be     mov   a,($be+x)         ; fetch first arg into A, if available
09a0: bb be     inc   $be+x
09a2: d0 02     bne   $09a6
09a4: bb bf     inc   $bf+x
09a6: eb 2a     mov   y,$2a
09a8: 6f        ret

; vcmd dispatch table
09a9: dw $0a0b  ; e0 - set instrument
09ab: dw $0a7b  ; e1 - pan
09ad: dw $0a89  ; e2 - pan fade
09af: dw $0a9d  ; e3 - vibrato on
09b1: dw $0aa7  ; e4 - vibrato off
09b3: dw $0ab2  ; e5 - master volume
09b5: dw $0ac4  ; e6 - master volume fade
09b7: dw $0ad4  ; e7 - tempo
09b9: dw $0adc  ; e8 - tempo fade
09bb: dw $0aec  ; e9 - global transpose
09bd: dw $0aef  ; ea - per-voice transpose
09bf: dw $0af3  ; eb - tremolo on
09c1: dw $0afd  ; ec - tremolo off
09c3: dw $0b00  ; ed - volume
09c5: dw $0b11  ; ee - volume fade
09c7: dw $0b25  ; ef - call subroutine
09c9: dw $0b47  ; f0 - vibrato fade
09cb: dw $0b57  ; f1 - pitch envelope (release)
09cd: dw $0b5b  ; f2 - pitch envelope (attack)
09cf: dw $0b6f  ; f3 - pitch envelope off
09d1: dw $0b73  ; f4 - tuning
09d3: dw $0b77  ; f5 - echo vbits/volume
09d5: dw $0b88  ; f6 - disable echo
09d7: dw $0b90  ; f7 - set echo params
09d9: dw $0bad  ; f8 - echo volume fade
09db: dw $0bd8  ; f9 - pitch slide
09dd: dw $0bfd  ; fa - set perc patch base
09df: dw $0000  ; fb - undefined
09e1: dw $0000  ; fc - undefined
09e3: dw $0000  ; fd - undefined
09e5: dw $0000  ; fe - undefined
09e7: dw $0c10  ; ff - set ADSR

; vcmd length table
09e9: db $01,$01,$02,$03,$00,$01,$02,$01
09f1: db $02,$01,$01,$03,$00,$01,$02,$03
09f9: db $01,$03,$03,$00,$01,$03,$00,$03
0a01: db $03,$03,$01,$00,$00,$00,$00,$01

; tcall 7 - percussion note
0a09: eb 2a     mov   y,$2a
; vcmd e0 - set instrument
0a0b: d5 17 02  mov   $0217+x,a
0a0e: d0 12     bne   $0a22
; BGM
0a10: fd        mov   y,a
0a11: 10 07     bpl   $0a1a             ; if percussion note:
0a13: 80        setc
0a14: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0a16: 60        clrc
0a17: 95 00 ff  adc   a,$ff00+x         ;   add perc patch base
0a1a: 4d        push  x
0a1b: 5d        mov   x,a
0a1c: f5 ab ff  mov   a,$ffab+x         ; get real instrument index from lookup table
0a1f: ce        pop   x
0a20: 2f 0a     bra   $0a2c
; SFX
0a22: fd        mov   y,a
0a23: 10 07     bpl   $0a2c             ; if percussion note:
0a25: 80        setc
0a26: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
0a28: 60        clrc
0a29: 95 00 ff  adc   a,$ff00+x         ; add perc patch base
;
0a2c: 8d 06     mov   y,#$06
0a2e: cf        mul   ya
0a2f: da 16     movw  $16,ya
0a31: 60        clrc
0a32: 98 00 16  adc   $16,#$00
0a35: 98 10 17  adc   $17,#$10          ; instrument table at $1000
0a38: e4 28     mov   a,$28
0a3a: 24 27     and   a,$27
0a3c: d0 3c     bne   $0a7a
0a3e: 4d        push  x
0a3f: f5 ce 0d  mov   a,$0dce+x
0a42: 08 04     or    a,#$04            ; voice X SRCN
0a44: 5d        mov   x,a
0a45: 8d 00     mov   y,#$00
0a47: f7 16     mov   a,($16)+y
0a49: 10 0e     bpl   $0a59
; SRCN >= $80 (noise)
0a4b: 28 1f     and   a,#$1f            ; get noice frequency by note byte
0a4d: 38 20 32  and   $32,#$20          ; keep echo bit from FLG
0a50: 0e 32 00  tset1 $0032             ; set noise frequency
0a53: 09 27 35  or    ($35),($27)       ; set NON
0a56: dd        mov   a,y
0a57: 2f 07     bra   $0a60
;
0a59: e4 27     mov   a,$27
0a5b: 4e 35 00  tclr1 $0035
; set voice dsp regs
0a5e: f7 16     mov   a,($16)+y
0a60: d8 f2     mov   $f2,x
0a62: ad 01     cmp   y,#$01
0a64: d0 02     bne   $0a68
0a66: 24 20     and   a,$20
0a68: c4 f3     mov   $f3,a             ; set SRCN,ADSR(1),ADSR(2),GAIN
0a6a: 3d        inc   x
0a6b: fc        inc   y
0a6c: ad 04     cmp   y,#$04
0a6e: d0 ee     bne   $0a5e
0a70: ce        pop   x
0a71: f7 16     mov   a,($16)+y         ; offset +4: pitch multiplier
0a73: d4 d5     mov   $d5+x,a
0a75: fc        inc   y
0a76: f7 16     mov   a,($16)+y         ; offset +5: pitch multiplier
0a78: d4 d4     mov   $d4+x,a
0a7a: 6f        ret

; vcmd e1 - pan
0a7b: d5 6f 01  mov   $016f+x,a
0a7e: 28 1f     and   a,#$1f
0a80: d5 43 01  mov   $0143+x,a         ; voice pan value
0a83: e8 00     mov   a,#$00
0a85: d5 42 01  mov   $0142+x,a
0a88: 6f        ret

; vcmd e2 - pan fade
0a89: d4 67     mov   $67+x,a
0a8b: 2d        push  a
0a8c: 4f 23     pcall $23
0a8e: 80        setc
0a8f: b5 43 01  sbc   a,$0143+x         ; current pan value
0a92: ce        pop   x
0a93: 4f 3b     pcall $3b               ; delta = pan value / steps
0a95: d5 58 01  mov   $0158+x,a
0a98: dd        mov   a,y
0a99: d5 59 01  mov   $0159+x,a
0a9c: 6f        ret

; vcmd e3 - vibrato on
0a9d: d5 9a 02  mov   $029a+x,a         ; vibrato delay
0aa0: 4f 23     pcall $23
0aa2: d5 85 02  mov   $0285+x,a         ; vibrato rate
0aa5: 4f 23     pcall $23
; vcmd e4 - vibrato off
0aa7: d4 93     mov   $93+x,a           ; vibrato depth
0aa9: d5 b1 02  mov   $02b1+x,a         ; vibrato depth
0aac: e8 00     mov   a,#$00
0aae: d5 9b 02  mov   $029b+x,a
0ab1: 6f        ret

; vcmd e5 - master volume
0ab2: d0 0f     bne   $0ac3
0ab4: fd        mov   y,a
0ab5: e8 00     mov   a,#$00
0ab7: da 3f     movw  $3f,ya
0ab9: e4 1d     mov   a,$1d
0abb: d0 06     bne   $0ac3
0abd: 8f ff 1d  mov   $1d,#$ff
0ac0: 8f ff 0c  mov   $0c,#$ff
0ac3: 6f        ret

; vcmd e6 - master volume fade
0ac4: c4 41     mov   $41,a
0ac6: 4f 23     pcall $23
0ac8: c4 42     mov   $42,a
0aca: 80        setc
0acb: a4 40     sbc   a,$40
0acd: f8 41     mov   x,$41
0acf: 4f 3b     pcall $3b
0ad1: da 43     movw  $43,ya
0ad3: 6f        ret

; vcmd e7 - tempo
0ad4: d0 05     bne   $0adb
0ad6: fd        mov   y,a
0ad7: e8 00     mov   a,#$00
0ad9: da 39     movw  $39,ya
0adb: 6f        ret

; vcmd e8 - tempo fade
0adc: c4 3b     mov   $3b,a
0ade: 4f 23     pcall $23
0ae0: c4 3c     mov   $3c,a
0ae2: 80        setc
0ae3: a4 3a     sbc   a,$3a
0ae5: f8 3b     mov   x,$3b
0ae7: 4f 3b     pcall $3b
0ae9: da 3d     movw  $3d,ya
0aeb: 6f        ret

; vcmd e9 - global transpose
0aec: c4 21     mov   $21,a
0aee: 6f        ret

; vcmd ea - per-voice transpose
0aef: d5 dd 02  mov   $02dd+x,a
0af2: 6f        ret

; vcmd eb - tremolo on
0af3: d5 dc 02  mov   $02dc+x,a         ; tremolo delay
0af6: 4f 23     pcall $23
0af8: d5 c7 02  mov   $02c7+x,a         ; tremolo rate
0afb: 4f 23     pcall $23
; vcmd ec - tremolo off
0afd: d4 a9     mov   $a9+x,a           ; tremolo depth
0aff: 6f        ret

; vcmd ed - volume
0b00: f0 06     beq   $0b08
0b02: 68 c8     cmp   a,#$c8
0b04: 90 02     bcc   $0b08
0b06: e8 c8     mov   a,#$c8
0b08: d5 01 01  mov   $0101+x,a
0b0b: e8 00     mov   a,#$00
0b0d: d5 00 01  mov   $0100+x,a
0b10: 6f        ret

; vcmd ee - volume fade
0b11: d4 66     mov   $66+x,a
0b13: 2d        push  a
0b14: 4f 23     pcall $23
0b16: 80        setc
0b17: b5 01 01  sbc   a,$0101+x
0b1a: ce        pop   x
0b1b: 4f 3b     pcall $3b
0b1d: d5 16 01  mov   $0116+x,a
0b20: dd        mov   a,y
0b21: d5 17 01  mov   $0117+x,a
0b24: 6f        ret

; vcmd ef - call subroutine
0b25: d5 42 02  mov   $0242+x,a
0b28: 4f 23     pcall $23
0b2a: d5 43 02  mov   $0243+x,a         ; arg1/2: destination address
0b2d: 4f 23     pcall $23
0b2f: d5 2c 01  mov   $012c+x,a         ; arg3: repeat count
0b32: f4 be     mov   a,$be+x
0b34: d5 2c 02  mov   $022c+x,a
0b37: f4 bf     mov   a,$bf+x
0b39: d5 2d 02  mov   $022d+x,a         ; save return address
; jump to $0242/3+x (loop destination)
0b3c: f5 42 02  mov   a,$0242+x
0b3f: d4 be     mov   $be+x,a
0b41: f5 43 02  mov   a,$0243+x
0b44: d4 bf     mov   $bf+x,a
0b46: 6f        ret

; vcmd f0 - vibrato fade
0b47: d5 9b 02  mov   $029b+x,a         ; vibrato fade length
0b4a: 2d        push  a
0b4b: 8d 00     mov   y,#$00
0b4d: f4 93     mov   a,$93+x
0b4f: ce        pop   x
0b50: 9e        div   ya,x
0b51: f8 26     mov   x,$26
0b53: d5 b0 02  mov   $02b0+x,a
0b56: 6f        ret

; vcmd f1 - pitch envelope (release)
0b57: 8d 01     mov   y,#$01
0b59: 2f 02     bra   $0b5d
; vcmd f2 - pitch envelope (attack)
0b5b: 8d 00     mov   y,#$00
0b5d: d5 59 02  mov   $0259+x,a
0b60: dd        mov   a,y
0b61: d5 6e 02  mov   $026e+x,a
0b64: 4f 23     pcall $23
0b66: d5 58 02  mov   $0258+x,a
0b69: 4f 23     pcall $23
0b6b: d5 6f 02  mov   $026f+x,a
0b6e: 6f        ret

; vcmd f3 - pitch envelope off
0b6f: d5 58 02  mov   $0258+x,a
0b72: 6f        ret

; vcmd f4 - tuning
0b73: d5 b1 01  mov   $01b1+x,a
0b76: 6f        ret

; vcmd f5 - echo vbits/volume
0b77: c4 2b     mov   $2b,a             ; echo vbit shadow = arg1
0b79: 4f 23     pcall $23
0b7b: e8 00     mov   a,#$00
0b7d: da 45     movw  $45,ya            ; echo vol L shadow = arg2
0b7f: 4f 23     pcall $23
0b81: e8 00     mov   a,#$00
0b83: da 47     movw  $47,ya            ; echo vol R shadow = arg3
0b85: b2 32     clr5  $32               ; enable echo
0b87: 6f        ret

; vcmd f6 - disable echo
0b88: fd        mov   y,a
0b89: da 45     movw  $45,ya            ; zero echo vol L shadow
0b8b: da 47     movw  $47,ya            ; zero echo vol R shadow
0b8d: a2 32     set5  $32               ; disable echo
0b8f: 6f        ret

; vcmd f7 - set echo params
0b90: 61        tcall 6                 ; set echo delay by arg1
0b91: 4f 23     pcall $23               ; arg2: echo feedback
0b93: c4 33     mov   $33,a             ; set EFB
0b95: 4f 23     pcall $23               ; arg3: echo filter index
0b97: 8d 08     mov   y,#$08
0b99: cf        mul   ya
0b9a: 5d        mov   x,a
0b9b: 8d 0f     mov   y,#$0f
0b9d: f5 0b 0e  mov   a,$0e0b+x
0ba0: 4f 1e     pcall $1e
0ba2: 3d        inc   x
0ba3: dd        mov   a,y
0ba4: 60        clrc
0ba5: 88 10     adc   a,#$10
0ba7: fd        mov   y,a
0ba8: 10 f3     bpl   $0b9d
0baa: f8 26     mov   x,$26
0bac: 6f        ret

; vcmd f8 - echo volume fade
0bad: c4 4d     mov   $4d,a
0baf: 4f 23     pcall $23
0bb1: c4 4e     mov   $4e,a
0bb3: 80        setc
0bb4: a4 46     sbc   a,$46
0bb6: f8 4d     mov   x,$4d
0bb8: 4f 3b     pcall $3b
0bba: da 49     movw  $49,ya
0bbc: 4f 23     pcall $23
0bbe: c4 4f     mov   $4f,a
0bc0: 80        setc
0bc1: a4 48     sbc   a,$48
0bc3: f8 4d     mov   x,$4d
0bc5: 4f 3b     pcall $3b
0bc7: da 4b     movw  $4b,ya
0bc9: 6f        ret

; tcall 14
0bca: f4 7c     mov   a,$7c+x
0bcc: d0 2e     bne   $0bfc
0bce: e7 be     mov   a,($be+x)
0bd0: 68 f9     cmp   a,#$f9
0bd2: d0 28     bne   $0bfc
0bd4: 4f 25     pcall $25
0bd6: 4f 23     pcall $23
; vcmd f9 - pitch slide
0bd8: d4 7d     mov   $7d+x,a
0bda: 4f 23     pcall $23
0bdc: d4 7c     mov   $7c+x,a
0bde: 4f 23     pcall $23
0be0: 60        clrc
0be1: 84 21     adc   a,$21
0be3: 95 dd 02  adc   a,$02dd+x
0be6: 28 7f     and   a,#$7f
0be8: d5 b0 01  mov   $01b0+x,a
0beb: 80        setc
0bec: b5 85 01  sbc   a,$0185+x
0bef: fb 7c     mov   y,$7c+x
0bf1: 6d        push  y
0bf2: ce        pop   x
0bf3: 4f 3b     pcall $3b
0bf5: d5 9a 01  mov   $019a+x,a
0bf8: dd        mov   a,y
0bf9: d5 9b 01  mov   $019b+x,a
0bfc: 6f        ret

; vcmd fa - set perc patch base
0bfd: d0 0d     bne   $0c0c
0bff: d5 01 ff  mov   $ff01+x,a
0c02: 8d 10     mov   y,#$10
0c04: d6 fe fe  mov   $fefe+y,a
0c07: dc        dec   y
0c08: dc        dec   y
0c09: d0 f9     bne   $0c04
0c0b: 6f        ret

0c0c: d5 00 ff  mov   $ff00+x,a         ; set perc patch base
0c0f: 6f        ret

; vcmd ff - set ADSR
0c10: 2d        push  a
0c11: f5 ce 0d  mov   a,$0dce+x
0c14: 08 05     or    a,#$05
0c16: fd        mov   y,a
0c17: ae        pop   a
0c18: 08 80     or    a,#$80
0c1a: 24 20     and   a,$20
0c1c: 4f 16     pcall $16               ; set ADSR(1)
0c1e: fc        inc   y
0c1f: 6d        push  y
0c20: 4f 23     pcall $23
0c22: c4 11     mov   $11,a
0c24: 4f 23     pcall $23
0c26: 9f        xcn   a
0c27: 1c        asl   a
0c28: 04 11     or    a,$11
0c2a: ee        pop   y
0c2b: 5f 16 ff  jmp   $ff16             ; set ADSR(2)

0c2e: 8f ff 2a  mov   $2a,#$ff
0c31: fa 28 29  mov   ($29),($28)
0c34: 38 3f 28  and   $28,#$3f
0c37: 8f 00 1f  mov   $1f,#$00
0c3a: cd 10     mov   x,#$10
0c3c: 8f 40 27  mov   $27,#$40
0c3f: d8 26     mov   $26,x
0c41: e4 02     mov   a,$02
0c43: f0 04     beq   $0c49
0c45: 8f 00 02  mov   $02,#$00
0c48: 91        tcall 9
0c49: 81        tcall 8
0c4a: 3d        inc   x
0c4b: 3d        inc   x
0c4c: 0b 27     asl   $27
0c4e: d8 26     mov   $26,x
0c50: e4 03     mov   a,$03
0c52: f0 04     beq   $0c58
0c54: 8f 00 03  mov   $03,#$00
0c57: 91        tcall 9
0c58: 81        tcall 8
0c59: fa 29 28  mov   ($28),($29)
0c5c: 8f 00 2a  mov   $2a,#$00
0c5f: 6f        ret

; tcall 9
0c60: 1c        asl   a
0c61: 5d        mov   x,a
0c62: f5 01 11  mov   a,$1101+x
0c65: fd        mov   y,a
0c66: f5 00 11  mov   a,$1100+x
0c69: f8 26     mov   x,$26
0c6b: d4 be     mov   $be+x,a
0c6d: db bf     mov   $bf+x,y
0c6f: 09 27 31  or    ($31),($27)       ; set KOF
0c72: 09 27 29  or    ($29),($27)
0c75: e4 31     mov   a,$31
0c77: 8d 5c     mov   y,#$5c
0c79: 4f 1e     pcall $1e
0c7b: e8 96     mov   a,#$96
0c7d: d5 01 01  mov   $0101+x,a
0c80: e8 0a     mov   a,#$0a
0c82: 3f 7b 0a  call  $0a7b
0c85: e8 00     mov   a,#$00
0c87: d5 17 02  mov   $0217+x,a
0c8a: d5 00 ff  mov   $ff00+x,a
0c8d: d5 b1 01  mov   $01b1+x,a
0c90: d5 dd 02  mov   $02dd+x,a
0c93: d5 58 02  mov   $0258+x,a
0c96: d4 93     mov   $93+x,a
0c98: d4 a9     mov   $a9+x,a
0c9a: d5 2c 01  mov   $012c+x,a
0c9d: d4 66     mov   $66+x,a
0c9f: d4 67     mov   $67+x,a
0ca1: e8 02     mov   a,#$02
0ca3: d4 50     mov   $50+x,a
0ca5: 1d        dec   x
0ca6: 1d        dec   x
0ca7: 1d        dec   x
0ca8: 1d        dec   x
0ca9: f5 00 ff  mov   a,$ff00+x
0cac: d5 01 ff  mov   $ff01+x,a
0caf: f8 26     mov   x,$26
0cb1: 6f        ret

0cb2: e4 27     mov   a,$27
0cb4: 4e 29 00  tclr1 $0029
0cb7: 09 27 1f  or    ($1f),($27)
0cba: 09 27 31  or    ($31),($27)
0cbd: 8f 00 2a  mov   $2a,#$00
0cc0: 1d        dec   x
0cc1: 1d        dec   x
0cc2: 1d        dec   x
0cc3: 1d        dec   x
0cc4: f5 01 ff  mov   a,$ff01+x
0cc7: d5 00 ff  mov   $ff00+x,a
0cca: f5 17 02  mov   a,$0217+x
0ccd: 71        tcall 7
0cce: 8f ff 2a  mov   $2a,#$ff
0cd1: f8 26     mov   x,$26
0cd3: e8 00     mov   a,#$00
0cd5: d4 bf     mov   $bf+x,a
0cd7: 6f        ret

; tcall 8
0cd8: f4 bf     mov   a,$bf+x
0cda: f0 45     beq   $0d21
0cdc: 9b 50     dec   $50+x
0cde: d0 3e     bne   $0d1e
0ce0: 4f 23     pcall $23
0ce2: f0 ce     beq   $0cb2
0ce4: 30 1e     bmi   $0d04
0ce6: d5 00 02  mov   $0200+x,a
0ce9: 4f 23     pcall $23
0ceb: 30 17     bmi   $0d04
0ced: 2d        push  a
0cee: 9f        xcn   a
0cef: 28 07     and   a,#$07
0cf1: fd        mov   y,a
0cf2: f6 e8 0f  mov   a,$0fe8+y
0cf5: d5 01 02  mov   $0201+x,a
0cf8: ae        pop   a
0cf9: 28 0f     and   a,#$0f
0cfb: fd        mov   y,a
0cfc: f6 f0 0f  mov   a,$0ff0+y
0cff: d5 16 02  mov   $0216+x,a
0d02: 4f 23     pcall $23
0d04: 68 e0     cmp   a,#$e0
0d06: 90 03     bcc   $0d0b
0d08: c1        tcall 12
0d09: 2f d5     bra   $0ce0
0d0b: b1        tcall 11
0d0c: f5 00 02  mov   a,$0200+x
0d0f: d4 50     mov   $50+x,a
0d11: fd        mov   y,a
0d12: f5 01 02  mov   a,$0201+x
0d15: cf        mul   ya
0d16: dd        mov   a,y
0d17: d0 01     bne   $0d1a
0d19: bc        inc   a
0d1a: d4 51     mov   $51+x,a
0d1c: 2f 01     bra   $0d1f
0d1e: f1        tcall 15
0d1f: e1        tcall 14
0d20: d1        tcall 13
0d21: 6f        ret

0d22: e4 f4     mov   a,$f4
0d24: 64 f4     cmp   a,$f4
0d26: d0 fa     bne   $0d22
0d28: eb f5     mov   y,$f5
0d2a: 7e f5     cmp   y,$f5
0d2c: d0 fa     bne   $0d28
0d2e: 5a 00     cmpw  ya,$00
0d30: f0 08     beq   $0d3a
0d32: da 00     movw  $00,ya
0d34: 68 00     cmp   a,#$00
0d36: f0 02     beq   $0d3a
0d38: da 08     movw  $08,ya
0d3a: ba 04     movw  ya,$04
0d3c: da f4     movw  $f4,ya
0d3e: ba 06     movw  ya,$06
0d40: da f6     movw  $f6,ya
0d42: 6f        ret

0d43: e4 f6     mov   a,$f6
0d45: 64 f6     cmp   a,$f6
0d47: d0 fa     bne   $0d43
0d49: c4 02     mov   $02,a
0d4b: e4 f7     mov   a,$f7
0d4d: 64 f7     cmp   a,$f7
0d4f: d0 fa     bne   $0d4b
0d51: c4 03     mov   $03,a
0d53: 6f        ret

; tcall 6 - set echo delay
0d54: c4 37     mov   $37,a
0d56: c4 0f     mov   $0f,a
0d58: 8d 7d     mov   y,#$7d
0d5a: cb f2     mov   $f2,y
0d5c: e4 f3     mov   a,$f3             ; set EDL
0d5e: 64 37     cmp   a,$37
0d60: f0 2a     beq   $0d8c
0d62: 28 0f     and   a,#$0f
0d64: 48 ff     eor   a,#$ff
0d66: bc        inc   a
0d67: f3 2c 03  bbc7  $2c,$0d6d
0d6a: 60        clrc
0d6b: 84 2c     adc   a,$2c
0d6d: c4 2c     mov   $2c,a
0d6f: 8f 00 2d  mov   $2d,#$00
0d72: e4 32     mov   a,$32             ; FLG
0d74: 08 20     or    a,#$20
0d76: 8d 6c     mov   y,#$6c
0d78: 4f 1e     pcall $1e
0d7a: 8d 04     mov   y,#$04
0d7c: f6 e1 0d  mov   a,$0de1+y
0d7f: c4 f2     mov   $f2,a
0d81: 8f 00 f3  mov   $f3,#$00          ; reset dsp regs
0d84: fe f6     dbnz  y,$0d7c
0d86: e4 37     mov   a,$37
0d88: 8d 7d     mov   y,#$7d
0d8a: 4f 1e     pcall $1e
0d8c: 1c        asl   a
0d8d: 1c        asl   a
0d8e: 1c        asl   a
0d8f: 48 ff     eor   a,#$ff
0d91: 80        setc
0d92: 88 ff     adc   a,#$ff
0d94: 8d 6d     mov   y,#$6d
0d96: 5f 1e ff  jmp   $ff1e

0d99: 2d        push  a
0d9a: e8 00     mov   a,#$00
0d9c: ec ff 10  mov   y,$10ff
0d9f: da 16     movw  $16,ya
0da1: ec fe 10  mov   y,$10fe
0da4: d7 16     mov   ($16)+y,a
0da6: fc        inc   y
0da7: d0 fb     bne   $0da4
0da9: ab 17     inc   $17
0dab: 78 ff 17  cmp   $17,#$ff
0dae: d0 f4     bne   $0da4
0db0: ae        pop   a
0db1: 6f        ret

; tcall 10
0db2: e2 13     set7  $13
0db4: cb 12     mov   $12,y
0db6: 4f 4d     pcall $4d
0db8: 6d        push  y
0db9: eb 38     mov   y,$38
0dbb: cf        mul   ya
0dbc: cb 16     mov   $16,y
0dbe: 8f 00 17  mov   $17,#$00
0dc1: eb 38     mov   y,$38
0dc3: ae        pop   a
0dc4: cf        mul   ya
0dc5: 7a 16     addw  ya,$16
0dc7: 4f 4d     pcall $4d
0dc9: 7a 14     addw  ya,$14
0dcb: da 14     movw  $14,ya
0dcd: 6f        ret

0dce: dw $0000
0dd0: dw $0010
0dd2: dw $0020
0dd4: dw $0030
0dd6: dw $0040
0dd8: dw $0050
0dda: dw $0060
0ddc: dw $0070
0dde: dw $0060
0de0: dw $0070

; $0de1+x - dsp reg addresses
; EVOL(L),EVOL(R),EFB,EON,FLG,KON,KOF,NON,PMON,KOF
0de2: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
; $0deb+x - dsp reg shadows
0dec: db $2e,$2f,$33,$36,$32,$30,$1a,$35,$34,$31

0df6: db $00,$01,$03,$07,$0d,$15,$1e,$29
0dfe: db $34,$42,$51,$5e,$67,$6e,$73,$77
0e06: db $7a,$7c,$7d,$7e,$7f

0e0b: db $7f,$00,$00,$00,$00,$00,$00,$00
0e13: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
0e1b: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
0e23: db $34,$33,$00,$d9,$e5,$01,$fc,$eb
0e2b: db $5f,$f3,$f4,$f5,$f6,$f7,$f8,$f9

0e33: dw $0042
0e35: dw $0046
0e37: dw $004a
0e39: dw $004f
0e3b: dw $0053
0e3d: dw $0058
0e3f: dw $005d
0e41: dw $0063
0e43: dw $0069
0e45: dw $0070
0e47: dw $0076
0e49: dw $007d
0e4b: dw $0084
0e4d: dw $008c
0e4f: dw $0094
0e51: dw $009d
0e53: dw $00a6
0e55: dw $00b0
0e57: dw $00ba
0e59: dw $00c6
0e5b: dw $00d2
0e5d: dw $00df
0e5f: dw $00ec
0e61: dw $00fa
0e63: dw $0108
0e65: dw $0118
0e67: dw $0128
0e69: dw $013a
0e6b: dw $014c
0e6d: dw $0160
0e6f: dw $0175
0e71: dw $018c
0e73: dw $01a3
0e75: dw $01bd
0e77: dw $01d6
0e79: dw $01f3
0e7b: dw $0210
0e7d: dw $022f
0e7f: dw $0250
0e81: dw $0274
0e83: dw $0299
0e85: dw $02c0
0e87: dw $02ea
0e89: dw $0318
0e8b: dw $0346
0e8d: dw $0379
0e8f: dw $03ad
0e91: dw $03e5
0e93: dw $0420
0e95: dw $045f
0e97: dw $04a1
0e99: dw $04e8
0e9b: dw $0533
0e9d: dw $0581
0e9f: dw $05d5
0ea1: dw $062e
0ea3: dw $068c
0ea5: dw $06f0
0ea7: dw $075a
0ea9: dw $07ca
0eab: dw $0840
0ead: dw $08be
0eaf: dw $0942
0eb1: dw $09d0
0eb3: dw $0a65
0eb5: dw $0b04
0eb7: dw $0baa
0eb9: dw $0c5c
0ebb: dw $0d18
0ebd: dw $0de0
0ebf: dw $0eb3
0ec1: dw $0f93
0ec3: dw $1080
0ec5: dw $117b
0ec7: dw $1285
0ec9: dw $139f
0ecb: dw $14ca
0ecd: dw $1606
0ecf: dw $17ac
0ed1: dw $18b8
0ed3: dw $1a31
0ed5: dw $1bc0
0ed7: dw $1d66
0ed9: dw $1f26
0edb: dw $2100
0edd: dw $22f6
0edf: dw $250a
0ee1: dw $273e
0ee3: dw $2994
0ee5: dw $2c0c
0ee7: dw $2eab
0ee9: dw $3171
0eeb: dw $3462
0eed: dw $3780
0eef: dw $3acc
0ef1: dw $3e4c
0ef3: dw $4200

; pcall $16 - write A to dsp reg Y with mask
ff16: 2d        push  a
ff17: e4 27     mov   a,$27
ff19: 24 28     and   a,$28
ff1b: ae        pop   a
ff1c: d0 04     bne   $ff22
; pcall $1e - write A to dsp reg Y
ff1e: cb f2     mov   $f2,y
ff20: c4 f3     mov   $f3,a
ff22: 6f        ret

; pcall $23 - read next voice byte
ff23: e7 be     mov   a,($be+x)
ff25: bb be     inc   $be+x
ff27: d0 02     bne   $ff2b
ff29: bb bf     inc   $bf+x
ff2b: fd        mov   y,a
ff2c: 6f        ret

; pcall $2d - read word from section list
ff2d: 8d 00     mov   y,#$00
ff2f: f7 23     mov   a,($23)+y
ff31: 3a 23     incw  $23
ff33: 2d        push  a
ff34: f7 23     mov   a,($23)+y
ff36: 3a 23     incw  $23
ff38: fd        mov   y,a
ff39: ae        pop   a
ff3a: 6f        ret

; pcall $3b - signed 16 bit division
ff3b: ed        notc
ff3c: 6b 12     ror   $12
ff3e: 10 03     bpl   $ff43
ff40: 48 ff     eor   a,#$ff
ff42: bc        inc   a
ff43: 8d 00     mov   y,#$00
ff45: 9e        div   ya,x
ff46: 2d        push  a
ff47: e8 00     mov   a,#$00
ff49: 9e        div   ya,x
ff4a: ee        pop   y
ff4b: f8 26     mov   x,$26
ff4d: f3 12 06  bbc7  $12,$ff56
ff50: da 16     movw  $16,ya
ff52: ba 1a     movw  ya,$1a
ff54: 9a 16     subw  ya,$16
ff56: 6f        ret

; pcall $57
ff57: 09 27 1f  or    ($1f),($27)
ff5a: da 16     movw  $16,ya
ff5c: da 18     movw  $18,ya
ff5e: 4d        push  x
ff5f: ee        pop   y
ff60: 60        clrc
ff61: d0 0b     bne   $ff6e
ff63: 98 2b 18  adc   $18,#$2b
ff66: 60        clrc
ff67: e8 00     mov   a,#$00
ff69: d7 16     mov   ($16)+y,a
ff6b: fc        inc   y
ff6c: 2f 08     bra   $ff76
ff6e: 98 16 18  adc   $18,#$16
ff71: 4f 74     pcall $74
ff73: fc        inc   y
ff74: f7 16     mov   a,($16)+y
ff76: 97 18     adc   a,($18)+y
ff78: d7 16     mov   ($16)+y,a
ff7a: 6f        ret

; pcall $7b
ff7b: f5 85 01  mov   a,$0185+x
ff7e: fd        mov   y,a
ff7f: f5 84 01  mov   a,$0184+x
ff82: da 14     movw  $14,ya
ff84: 6f        ret

; tcall table
ffc0: dw $0813  ; tcall 15 - voice readahead
ffc2: dw $0bca  ; tcall 14
ffc4: dw $0772  ; tcall 13
ffc6: dw $098c  ; tcall 12
ffc8: dw $06b8  ; tcall 11
ffca: dw $0db2  ; tcall 10
ffcc: dw $0c60  ; tcall 9
ffce: dw $0cd8  ; tcall 8
ffd0: dw $0a09  ; tcall 7
ffd2: dw $0d54  ; tcall 6 - set echo delay
ffd4: dw $0000  ; tcall 5
ffd6: dw $0000  ; tcall 4
ffd8: dw $0000  ; tcall 3
ffda: dw $0000  ; tcall 2
ffdc: dw $0000  ; tcall 1
ffde: dw $0000  ; tcall 0
