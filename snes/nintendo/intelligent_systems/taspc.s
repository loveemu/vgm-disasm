; Tetris Attack SPC - loveemu labo
; Disassembler: spcdas v0.01
; 
; The game was also released as:
; * Panel de Pon (J)

0700: 20        clrp
0701: cd cf     mov   x,#$cf
0703: bd        mov   sp,x              ; set SP to (01)cf
0704: 8f 5c f2  mov   $f2,#$5c
0707: 8f ff f3  mov   $f3,#$ff
070a: e8 00     mov   a,#$00            ; key off all voices
070c: 5d        mov   x,a
070d: af        mov   (x)+,a
070e: c8 f0     cmp   x,#$f0
0710: d0 fb     bne   $070d             ; zero 00-ef
0712: 5d        mov   x,a
0713: d5 00 06  mov   $0600+x,a
0716: d5 00 05  mov   $0500+x,a
0719: d5 00 04  mov   $0400+x,a
071c: d5 00 03  mov   $0300+x,a
071f: d5 00 02  mov   $0200+x,a
0722: d5 00 01  mov   $0100+x,a
0725: 3d        inc   x
0726: d0 eb     bne   $0713             ; zero 0100-06ff
0728: bc        inc   a
0729: 3f 56 0e  call  $0e56             ; set echo delay to 1 (16ms)
072c: a2 17     set5  $17               ; disable echo write
072e: e8 6a     mov   a,#$6a
0730: 8d 0c     mov   y,#$0c
0732: 3f 8c 08  call  $088c             ; master vol L = $6a
0735: 8d 1c     mov   y,#$1c
0737: 3f 8c 08  call  $088c             ; master vol R = $6a
073a: 8f 5d f2  mov   $f2,#$5d
073d: 8f 1c f3  mov   $f3,#$1c          ; source dir = $1c00
0740: e8 b0     mov   a,#$b0
0742: c4 f1     mov   $f1,a             ; reset ports, disable timers
0744: e8 10     mov   a,#$10
0746: c4 fa     mov   $fa,a             ; set timer0 latch to #$10 (500 Hz, 2ms)
0748: c4 3c     mov   $3c,a
074a: e8 81     mov   a,#$81
074c: c4 f1     mov   $f1,a             ; start timer0
074e: ba 08     movw  ya,$08
0750: da f4     movw  $f4,ya
0752: da f6     movw  $f6,ya
; main loop
0754: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
0756: ad 05     cmp   y,#$05
0758: f0 07     beq   $0761
075a: b0 08     bcs   $0764
075c: 69 1c 1b  cmp   ($1b),($1c)
075f: d0 0f     bne   $0770
0761: e3 1b 0c  bbs7  $1b,$0770
0764: f6 c1 07  mov   a,$07c1+y
0767: c4 f2     mov   $f2,a
0769: f6 cb 07  mov   a,$07cb+y
076c: 5d        mov   x,a
076d: e6        mov   a,(x)
076e: c4 f3     mov   $f3,a             ; write to DSP reg
0770: fe e4     dbnz  y,$0756           ; loop for each reg
0772: cb 1e     mov   $1e,y
0774: cb 1f     mov   $1f,y
0776: e4 12     mov   a,$12
0778: 44 13     eor   a,$13
077a: 5c        lsr   a
077b: 5c        lsr   a
077c: ed        notc
077d: 6b 12     ror   $12
077f: 6b 13     ror   $13
0781: eb fd     mov   y,$fd
0783: f0 fc     beq   $0781             ; wait for counter0 increment
0785: 6d        push  y
0786: e8 20     mov   a,#$20
0788: cf        mul   ya
0789: 60        clrc
078a: 84 24     adc   a,$24
078c: c4 24     mov   $24,a
078e: 90 0a     bcc   $079a
0790: 3f b6 11  call  $11b6
0793: 69 1c 1b  cmp   ($1b),($1c)
0796: f0 02     beq   $079a
0798: ab 1b     inc   $1b
079a: ee        pop   y
079b: e4 3c     mov   a,$3c
079d: cf        mul   ya
079e: 60        clrc
079f: 84 3a     adc   a,$3a
07a1: c4 3a     mov   $3a,a
07a3: 90 05     bcc   $07aa
07a5: 3f 85 09  call  $0985
07a8: 2f aa     bra   $0754
07aa: e4 23     mov   a,$23
07ac: f0 fa     beq   $07a8
07ae: cd 00     mov   x,#$00
07b0: 8f 01 15  mov   $15,#$01          ; first voice
07b3: f4 29     mov   a,$29+x
07b5: f0 03     beq   $07ba             ; skip call if vptr == 0
07b7: 3f 04 11  call  $1104             ; do per-voice fades/dsps
07ba: 3d        inc   x
07bb: 3d        inc   x
07bc: 0b 15     asl   $15
07be: d0 f3     bne   $07b3             ; loop for each voice
07c0: 2f e6     bra   $07a8

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($07cb+1) for dsp regs ($07c1+1)
07c2: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
07cc: db $48,$4a,$1d,$19,$17,$1e,$08,$18,$1a,$1f

07d6: 6f        ret

; handle a note vcmd (80-d9)
07d7: ad ca     cmp   y,#$ca
07d9: 90 2e     bcc   $0809
; vcmds ca-d9 - percussion note
07db: d3 c5 26  bbc6  $c5,$0804
; work different if ($c5 & 0x40) != 0: use customized percussion table
07de: f6 a6 00  mov   a,$00a6+y         ; percussion patch table
07e1: c4 0b     mov   $0b,a
07e3: f6 b6 00  mov   a,$00b6+y         ; percussion note number table
07e6: 2d        push  a
07e7: f6 c6 00  mov   a,$00c6+y         ; percussion pan table
07ea: 30 03     bmi   $07ef
07ec: 3f f5 0c  call  $0cf5             ; set pan
07ef: d3 0b 05  bbc6  $0b,$07f7         ; test bit 6 of patch #
; if ($0b & 0x40) != 0 then
07f2: 3f 0e 0c  call  $0c0e             ; echo on
07f5: 2f 03     bra   $07fa
; else if ($0b & 0x40) == 0 then
07f7: 3f 1c 0c  call  $0c1c             ; echo off
; end
07fa: e4 0b     mov   a,$0b
07fc: 28 bf     and   a,#$bf            ; excluding bit #$40 from patch #
07fe: 3f 96 0c  call  $0c96             ; set instrument
0801: ee        pop   y
0802: 2f 09     bra   $080d
0804: 3f 96 0c  call  $0c96             ; set instrument
0807: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
0809: ad c8     cmp   y,#$c8
080b: b0 c9     bcs   $07d6
080d: e4 14     mov   a,$14
080f: 24 15     and   a,$15
0811: d0 c3     bne   $07d6
0813: dd        mov   a,y
0814: 28 7f     and   a,#$7f            ; 80-c7 => 00-47
0816: 60        clrc
0817: 84 39     adc   a,$39             ; add global transpose
0819: 60        clrc
081a: 95 41 03  adc   a,$0341+x         ; add per-voice transpose
081d: d5 b1 02  mov   $02b1+x,a
0820: f5 d1 02  mov   a,$02d1+x
0823: d5 b0 02  mov   $02b0+x,a
0826: f5 11 03  mov   a,$0311+x
0829: 5c        lsr   a
082a: e8 00     mov   a,#$00
082c: 7c        ror   a
082d: d5 00 03  mov   $0300+x,a
0830: e8 00     mov   a,#$00
0832: d4 92     mov   $92+x,a
0834: d5 63 00  mov   $0063+x,a
0837: d5 30 03  mov   $0330+x,a
083a: d4 a2     mov   $a2+x,a
083c: 09 15 38  or    ($38),($15)       ; set volume changed flg
083f: 09 15 1e  or    ($1e),($15)       ; set key on shadow bit
0842: f5 e0 02  mov   a,$02e0+x         ; pitch envelope counter
0845: d4 82     mov   $82+x,a           ; portamento counter
0847: f0 1e     beq   $0867
0849: f5 e1 02  mov   a,$02e1+x
084c: d4 83     mov   $83+x,a
084e: f5 f0 02  mov   a,$02f0+x         ; pitch envelope mode (0:attack / 1:release)
0851: d0 0a     bne   $085d
0853: f5 b1 02  mov   a,$02b1+x
0856: 80        setc
0857: b5 f1 02  sbc   a,$02f1+x
085a: d5 b1 02  mov   $02b1+x,a
085d: f5 f1 02  mov   a,$02f1+x
0860: 60        clrc
; set DSP pitch from $0a/b
0861: 95 b1 02  adc   a,$02b1+x
0864: 3f be 0e  call  $0ebe
0867: f5 b1 02  mov   a,$02b1+x
086a: c4 0b     mov   $0b,a
086c: f5 b0 02  mov   a,$02b0+x
086f: c4 0a     mov   $0a,a
0871: 3f 91 08  call  $0891
0874: 7d        mov   a,x               ; set voice X pitch DSP reg from $10/1
0875: 9f        xcn   a
0876: 5c        lsr   a
0877: 08 02     or    a,#$02
0879: c4 f2     mov   $f2,a
087b: cb f3     mov   $f3,y
087d: bc        inc   a
087e: c4 f2     mov   $f2,a
0880: fa 10 f3  mov   ($f3),($10)
0883: 6f        ret

; write A to DSP reg Y if vbit clear in $14
0884: 2d        push  a
0885: e4 15     mov   a,$15
0887: 24 14     and   a,$14
0889: ae        pop   a
088a: d0 04     bne   $0890
; write A to DSP reg Y
088c: cb f2     mov   $f2,y
088e: c4 f3     mov   $f3,a
0890: 6f        ret

0891: 8d 00     mov   y,#$00
0893: e4 0b     mov   a,$0b
0895: 80        setc
0896: a8 34     sbc   a,#$34
0898: b0 09     bcs   $08a3
089a: e4 0b     mov   a,$0b
089c: 80        setc
089d: a8 13     sbc   a,#$13
089f: b0 06     bcs   $08a7
08a1: dc        dec   y
08a2: 1c        asl   a
08a3: 7a 0a     addw  ya,$0a
08a5: da 0a     movw  $0a,ya
08a7: 4d        push  x
08a8: e4 0b     mov   a,$0b
; get pitch from note number in A (with octave correction)
08aa: 1c        asl   a
08ab: 8d 00     mov   y,#$00
08ad: cd 18     mov   x,#$18
08af: 9e        div   ya,x
08b0: 5d        mov   x,a
08b1: f6 09 09  mov   a,$0909+y
08b4: c4 0f     mov   $0f,a
08b6: f6 08 09  mov   a,$0908+y
08b9: c4 0e     mov   $0e,a             ; set $0e/f from pitch table
08bb: f6 0b 09  mov   a,$090b+y
08be: 2d        push  a
08bf: f6 0a 09  mov   a,$090a+y
08c2: ee        pop   y
08c3: 9a 0e     subw  ya,$0e
08c5: eb 0a     mov   y,$0a
08c7: cf        mul   ya
08c8: dd        mov   a,y
08c9: 8d 00     mov   y,#$00
08cb: 7a 0e     addw  ya,$0e
08cd: cb 0f     mov   $0f,y
08cf: 1c        asl   a
08d0: 2b 0f     rol   $0f
08d2: c4 0e     mov   $0e,a
08d4: 2f 04     bra   $08da
08d6: 4b 0f     lsr   $0f
08d8: 7c        ror   a
08d9: 3d        inc   x
08da: c8 06     cmp   x,#$06
08dc: d0 f8     bne   $08d6
08de: c4 0e     mov   $0e,a
08e0: ce        pop   x
08e1: f5 00 02  mov   a,$0200+x
08e4: eb 0f     mov   y,$0f
08e6: cf        mul   ya
08e7: da 10     movw  $10,ya
08e9: f5 00 02  mov   a,$0200+x
08ec: eb 0e     mov   y,$0e
08ee: cf        mul   ya
08ef: 6d        push  y
08f0: f5 01 02  mov   a,$0201+x
08f3: eb 0e     mov   y,$0e
08f5: cf        mul   ya
08f6: 7a 10     addw  ya,$10
08f8: da 10     movw  $10,ya
08fa: f5 01 02  mov   a,$0201+x
08fd: eb 0f     mov   y,$0f
08ff: cf        mul   ya
0900: fd        mov   y,a
0901: ae        pop   a
0902: 7a 10     addw  ya,$10
0904: cb 10     mov   $10,y
0906: fd        mov   y,a
0907: 6f        ret

; pitch table
0908: dw $085f
090a: dw $08de
090c: dw $0965
090e: dw $09f4
0910: dw $0a8c
0912: dw $0b2c
0914: dw $0bd6
0916: dw $0c8b
0918: dw $0d4a
091a: dw $0e14
091c: dw $0eea
091e: dw $0fcd
0920: dw $10be

; read $25/6 into YA with advancing the ptr
0922: 8d 00     mov   y,#$00
0924: f7 25     mov   a,($25)+y
0926: 3a 25     incw  $25
0928: 2d        push  a
0929: f7 25     mov   a,($25)+y
092b: 3a 25     incw  $25
092d: fd        mov   y,a
092e: ae        pop   a
092f: 6f        ret

; play song in A (zero for pause)
0930: 1c        asl   a
0931: f0 0d     beq   $0940
0933: 5d        mov   x,a
0934: f5 4c ff  mov   a,$ff4c+x
0937: fd        mov   y,a
0938: f5 4b ff  mov   a,$ff4b+x
093b: da 25     movw  $25,ya
093d: 8f 02 21  mov   $21,#$02
0940: e4 14     mov   a,$14
0942: 48 ff     eor   a,#$ff
0944: 0e 1f 00  tset1 $001f
0947: 6f        ret

0948: cd 0e     mov   x,#$0e
094a: 8f 80 15  mov   $15,#$80          ; last voice
094d: e8 ff     mov   a,#$ff
094f: d5 51 02  mov   $0251+x,a         ; voice volume = $ff
0952: e8 0a     mov   a,#$0a
0954: 3f f5 0c  call  $0cf5             ; pan = $0a.00
0957: d5 21 02  mov   $0221+x,a         ; zero instrument
095a: d5 d1 02  mov   $02d1+x,a         ; zero tuning
095d: d5 41 03  mov   $0341+x,a         ; zero per-voice transpose
0960: d5 e0 02  mov   $02e0+x,a
0963: d4 93     mov   $93+x,a
0965: d4 a3     mov   $a3+x,a
0967: d4 b2     mov   $b2+x,a
0969: 1d        dec   x
096a: 1d        dec   x
096b: 4b 15     lsr   $15
096d: d0 de     bne   $094d             ; loop for each voice
096f: c4 43     mov   $43,a             ; zero master vol fade counter
0971: c4 4f     mov   $4f,a             ; zero echo vol fade counter
0973: c4 3d     mov   $3d,a             ; zero tempo fade counter
0975: c4 39     mov   $39,a             ; zero global transpose
0977: c4 27     mov   $27,a             ; zero block repeat count
0979: c5 50 03  mov   $0350,a
097c: c4 c5     mov   $c5,a
097e: 8f c0 42  mov   $42,#$c0          ; master vol
0981: 8f 20 3c  mov   $3c,#$20          ; tempo
0984: 6f        ret

0985: eb 20     mov   y,$20
0987: e4 23     mov   a,$23
0989: c4 20     mov   $20,a
098b: 7e 23     cmp   y,$23
098d: d0 a1     bne   $0930
098f: e4 23     mov   a,$23
0991: f0 f1     beq   $0984
0993: e4 21     mov   a,$21
0995: f0 55     beq   $09ec
;
0997: 6e 21 ae  dbnz  $21,$0948
099a: 3f 22 09  call  $0922             ; read block addr from $1f/20, advance ptr
099d: d0 1d     bne   $09bc             ; load start addresses, if hi-byte is non zero
099f: fd        mov   y,a               ; refetch lo-byte
09a0: d0 09     bne   $09ab             ; key off, return if also zero:
09a2: c4 23     mov   $23,a
09a4: c4 20     mov   $20,a
09a6: c5 65 03  mov   $0365,a
09a9: 2f 85     bra   $0930
09ab: 8b 27     dec   $27
09ad: 10 02     bpl   $09b1
09af: c4 27     mov   $27,a
09b1: 3f 22 09  call  $0922             ; read next word as well
09b4: f8 27     mov   x,$27
09b6: f0 e2     beq   $099a
09b8: da 25     movw  $25,ya            ;   "goto" that address
09ba: 2f de     bra   $099a             ; continue
; load start addresses - hi-byte not zero
09bc: da 10     movw  $10,ya
09be: 8d 0f     mov   y,#$0f
09c0: f7 10     mov   a,($10)+y
09c2: d6 28 00  mov   $0028+y,a         ; set reading ptr
09c5: dc        dec   y
09c6: 10 f8     bpl   $09c0             ; loop for each voice
;
09c8: cd 00     mov   x,#$00
09ca: 8f 01 15  mov   $15,#$01          ; first voice
09cd: f4 29     mov   a,$29+x
09cf: f0 0a     beq   $09db             ; if vptr hi != 0
09d1: f5 21 02  mov   a,$0221+x
09d4: d0 05     bne   $09db
09d6: e8 00     mov   a,#$00
09d8: 3f 96 0c  call  $0c96             ; set instrument #0 if not set
09db: e8 00     mov   a,#$00
09dd: d4 62     mov   $62+x,a           ; zero subroutine repeat counter
09df: d4 72     mov   $72+x,a           ; zero voice vol fade counter
09e1: d4 73     mov   $73+x,a           ; zero pan fade counter
09e3: bc        inc   a
09e4: d4 52     mov   $52+x,a           ; set duration counter to 1
09e6: 3d        inc   x
09e7: 3d        inc   x
09e8: 0b 15     asl   $15               ; next voice
09ea: d0 e1     bne   $09cd             ; foreach voice
;
09ec: cd 00     mov   x,#$00
09ee: d8 38     mov   $38,x
09f0: 8f 01 15  mov   $15,#$01          ; first voice
09f3: d8 16     mov   $16,x
09f5: f4 29     mov   a,$29+x
09f7: f0 71     beq   $0a6a             ; next if vptr hi zero
09f9: 9b 52     dec   $52+x             ; dec duration counter
09fb: d0 67     bne   $0a64             ; if not zero, skip to voice readahead
09fd: 3f 42 0b  call  $0b42             ; read vcmd into A and Y
0a00: d0 17     bne   $0a19
; vcmd 00 - end repeat/return
0a02: f4 62     mov   a,$62+x
0a04: f0 94     beq   $099a             ; read next block if loop has been done
; repeat / return from subroutine
0a06: 3f e3 0d  call  $0de3             ; jump to loop start addr
0a09: 9b 62     dec   $62+x             ; dec repeat count
0a0b: d0 f0     bne   $09fd             ; if the loop has been done
0a0d: f5 30 02  mov   a,$0230+x
0a10: d4 28     mov   $28+x,a
0a12: f5 31 02  mov   a,$0231+x
0a15: d4 29     mov   $29+x,a           ; back to return addr instead
0a17: 2f e4     bra   $09fd             ; then continue
; vcmd branches
0a19: 30 20     bmi   $0a3b             ; vcmds 01-7f - note info:
0a1b: d5 10 02  mov   $0210+x,a         ;   set cmd as duration
0a1e: 3f 42 0b  call  $0b42             ;   read next byte
0a21: 30 18     bmi   $0a3b             ;   if note note then
0a23: 2d        push  a
0a24: 9f        xcn   a
0a25: 28 07     and   a,#$07
0a27: fd        mov   y,a
0a28: f6 20 ff  mov   a,$ff20+y
0a2b: d5 11 02  mov   $0211+x,a         ; set dur% from high nybble
0a2e: ae        pop   a
0a2f: 28 0f     and   a,#$0f
0a31: fd        mov   y,a
0a32: f6 28 ff  mov   a,$ff28+y
0a35: d5 20 02  mov   $0220+x,a         ; set per-note vol from low nybble
0a38: 3f 42 0b  call  $0b42             ;   read vcmd into A and Y
; vcmd branches 80-ff
0a3b: 68 da     cmp   a,#$da
0a3d: 90 05     bcc   $0a44
0a3f: 3f 30 0b  call  $0b30             ; vcmds da-ff
0a42: 2f b9     bra   $09fd
; vcmds 80-d9 - note
0a44: 3f d7 07  call  $07d7             ; handle note cmd if vbit $14 clear
0a47: f5 10 02  mov   a,$0210+x
0a4a: d4 52     mov   $52+x,a           ; set duration counter from duration
0a4c: fd        mov   y,a
0a4d: 6d        push  y
0a4e: f5 11 02  mov   a,$0211+x
0a51: cf        mul   ya
0a52: dd        mov   a,y
0a53: d0 01     bne   $0a56
0a55: bc        inc   a
0a56: d4 53     mov   $53+x,a           ; set actual key-off dur counter
0a58: ee        pop   y
0a59: f4 b2     mov   a,$b2+x
0a5b: cf        mul   ya
0a5c: dd        mov   a,y
0a5d: d0 01     bne   $0a60
0a5f: bc        inc   a
0a60: d4 b3     mov   $b3+x,a
0a62: 2f 03     bra   $0a67
0a64: 3f cc 0f  call  $0fcc             ; do readahead
0a67: 3f 9e 0e  call  $0e9e
0a6a: 3d        inc   x
0a6b: 3d        inc   x
0a6c: 0b 15     asl   $15
0a6e: f0 03     beq   $0a73             ; next voice
0a70: 5f f3 09  jmp   $09f3

0a73: e4 3d     mov   a,$3d
0a75: f0 0b     beq   $0a82
0a77: ba 3f     movw  ya,$3f
0a79: 7a 3b     addw  ya,$3b            ; add tempo fade to tempo
0a7b: 6e 3d 02  dbnz  $3d,$0a80
0a7e: ba 3d     movw  ya,$3d            ; last time: move tempo target to tempo
0a80: da 3b     movw  $3b,ya
0a82: e4 4f     mov   a,$4f             ; echo vol fade counter
0a84: f0 15     beq   $0a9b
0a86: ba 4b     movw  ya,$4b
0a88: 7a 47     addw  ya,$47            ; add echo L delta to echo L vol
0a8a: da 47     movw  $47,ya
0a8c: ba 4d     movw  ya,$4d
0a8e: 7a 49     addw  ya,$49            ; add echo R delta to echo R vol
0a90: 6e 4f 06  dbnz  $4f,$0a99
0a93: ba 4f     movw  ya,$4f
0a95: da 47     movw  $47,ya
0a97: eb 51     mov   y,$51
0a99: da 49     movw  $49,ya
0a9b: e4 c6     mov   a,$c6
0a9d: d0 0f     bne   $0aae
0a9f: e4 43     mov   a,$43             ; master vol fade counter
0aa1: f0 0e     beq   $0ab1
0aa3: ba 45     movw  ya,$45
0aa5: 7a 41     addw  ya,$41            ; add master vol delta to value
0aa7: 6e 43 02  dbnz  $43,$0aac
0aaa: ba 43     movw  ya,$43
0aac: da 41     movw  $41,ya
0aae: 8f ff 38  mov   $38,#$ff          ; set all vol chg flags
0ab1: cd 00     mov   x,#$00
0ab3: 8f 01 15  mov   $15,#$01          ; first voice
0ab6: f4 29     mov   a,$29+x
0ab8: f0 03     beq   $0abd
0aba: 3f fd 0e  call  $0efd             ; do per-voice fades
0abd: 3d        inc   x
0abe: 3d        inc   x
0abf: 0b 15     asl   $15
0ac1: d0 f3     bne   $0ab6             ; loop for each voice
0ac3: 6f        ret

; vcmd dispatch table ($0a10)
0ac4: dw $0c96  ; da - set instrument
0ac6: dw $0cf5  ; db - pan
0ac8: dw $0d03  ; dc - pan fade
0aca: dw $0d1c  ; dd - vibrato on
0acc: dw $0d28  ; de - vibrato off
0ace: dw $0d43  ; df - master volume
0af0: dw $0d48  ; e0 - master volume fade
0ad2: dw $0d5a  ; e1 - tempo
0ad4: dw $0d5f  ; e2 - tempo fade
0ad6: dw $0d71  ; e3 - global transpose
0ad8: dw $0d74  ; e4 - per-voice transpose
0ada: dw $0d78  ; e5 - tremolo on
0adc: dw $0d84  ; e6 - tremolo off
0ade: dw $0da5  ; e7 - volume
0ae0: dw $0dae  ; e8 - volume fade
0ae2: dw $0dcb  ; e9 - call subroutine
0ae4: dw $0d33  ; ea - vibrato fade
0ae6: dw $0d87  ; eb - pitch envelope (release)
0ae8: dw $0d8b  ; ec - pitch envelope (attack)
0aea: dw $0da1  ; ed - pitch envelope off
0aec: dw $0dc7  ; ee - tuning
0aee: dw $0dee  ; ef - echo vbits/volume
0af0: dw $0e2d  ; f0 - disable echo
0af2: dw $0e34  ; f1 - set echo params
0af4: dw $0e0c  ; f2 - echo volume fade
0af6: dw $0eae  ; f3 - pitch slide
0af8: dw $0e98  ; f4 - set perc patch base
0afa: dw $0c0e  ; f5 - echo on
0afc: dw $0c1c  ; f6 - echo off
0afe: dw $0c2c  ; f7 - set ADSR
0b00: dw $0c44  ; f8 - set duration rate and GAIN
0b02: dw $0c56  ; f9 - set duration rate
0b04: dw $0b6f  ; fa - define voice params
0b06: dw $0c59  ; fb - set voice params
0b08: dw $0b86  ; fc - unknown (copy bytes to unused area?)
0b0a: dw $0bd6  ; fd - sub-command
                ; fe-ff undefined

; vcmd lengths ($0ab2)
0b0c: db         $01,$01,$02,$03,$00,$01 ; da-df
0b12: db $02,$01,$02,$01,$01,$03,$00,$01 ; e0-e7
0b1a: db $02,$03,$01,$03,$03,$00,$01,$03 ; e8-ef
0b22: db $00,$03,$03,$03,$01,$00,$00,$02 ; f0-f7
0b2a: db $02,$00,$01,$01,$01,$01         ; f8-fd

; dispatch vcmd in A (da-ff)
0b30: 1c        asl   a                 ; d6-ff => b4-fe (8 bit)
0b31: fd        mov   y,a
0b32: f6 11 0a  mov   a,$0a11+y
0b35: 2d        push  a
0b36: f6 10 0a  mov   a,$0a10+y
0b39: 2d        push  a                 ; push jump address from table
0b3a: dd        mov   a,y
0b3b: 5c        lsr   a
0b3c: fd        mov   y,a
0b3d: f6 b2 0a  mov   a,$0ab2+y         ; vcmd length
0b40: f0 06     beq   $0b48             ; if non zero
; read new argument to A and Y
0b42: e7 28     mov   a,($28+x)
; advance reading ptr
0b44: bb 28     inc   $28+x             ; inc reading ptr
0b46: f0 02     beq   $0b4a
0b48: fd        mov   y,a
0b49: 6f        ret
0b4a: bb 29     inc   $29+x
0b4c: fd        mov   y,a               ; refetch arg byte
0b4d: 6f        ret

; overwrite instrument table by sequence
0b4e: 28 3f     and   a,#$3f
0b50: 8d 06     mov   y,#$06
0b52: cf        mul   ya                ; index: (arg1 & 0x3f) * 6
0b53: da 0e     movw  $0e,ya
0b55: 60        clrc
0b56: 98 80 0e  adc   $0e,#$80
0b59: 98 1a 0f  adc   $0f,#$1a          ; instrument table $1a80
0b5c: fb 29     mov   y,$29+x
0b5e: f4 28     mov   a,$28+x
0b60: da 0a     movw  $0a,ya
0b62: 8d 05     mov   y,#$05
0b64: f7 0a     mov   a,($0a)+y
0b66: d7 0e     mov   ($0e)+y,a
0b68: dc        dec   y
0b69: 10 f9     bpl   $0b64             ; overwrite instrument definition (6 bytes)
0b6b: e8 06     mov   a,#$06
0b6d: 2f 0d     bra   $0b7c             ; skip 6 byte arguments
; vcmd fa - define voice params
0b6f: 30 dd     bmi   $0b4e             ; overwrite instrument table if arg1 < 0
0b71: f4 28     mov   a,$28+x
0b73: c4 c2     mov   $c2,a
0b75: f4 29     mov   a,$29+x
0b77: c4 c3     mov   $c3,a             ; save current address into $c2/3 (predefined voice param table, see vcmd fb)
0b79: e8 04     mov   a,#$04
0b7b: cf        mul   ya                ; skip arg1 (number of items) * 4 bytes
; add A to reading ptr
0b7c: 60        clrc
0b7d: 94 28     adc   a,$28+x
0b7f: d4 28     mov   $28+x,a
0b81: 90 02     bcc   $0b85
0b83: bb 29     inc   $29+x
0b85: 6f        ret

; vcmd fc
0b86: c2 c5     set6  $c5
0b88: fb 29     mov   y,$29+x
0b8a: cb 0f     mov   $0f,y
0b8c: fb 28     mov   y,$28+x
0b8e: cb 0e     mov   $0e,y             ; save current address into $0e/f
0b90: 2d        push  a                 ; push arg1
0b91: 8d 03     mov   y,#$03
0b93: cf        mul   ya
0b94: 6d        push  y
0b95: ce        pop   x                 ; x => 0
0b96: ae        pop   a                 ; pop arg1
0b97: 28 0f     and   a,#$0f
0b99: bc        inc   a
0b9a: c4 0b     mov   $0b,a             ; (arg1 & 15) + 1
0b9c: 8d 03     mov   y,#$03
0b9e: cf        mul   ya                ; y => 0
0b9f: 2d        push  a
0ba0: f7 0e     mov   a,($0e)+y         ; offset +0: ?
0ba2: d5 70 01  mov   $0170+x,a
0ba5: fc        inc   y
0ba6: f7 0e     mov   a,($0e)+y         ; offset +1: ?
0ba8: d5 80 01  mov   $0180+x,a
0bab: fc        inc   y
0bac: f7 0e     mov   a,($0e)+y         ; offset +2: ?
0bae: d5 90 01  mov   $0190+x,a
0bb1: fc        inc   y
0bb2: 3d        inc   x
0bb3: 6e 0b ea  dbnz  $0b,$0ba0         ; repeat for (arg1 & 15) + 1 times
0bb6: f8 16     mov   x,$16
0bb8: ae        pop   a
0bb9: 2f c1     bra   $0b7c             ; skip (((arg1 & 15) + 1) * 3) bytes

; subcmd 00
0bbb: 3f 42 0b  call  $0b42
0bbe: c4 10     mov   $10,a
0bc0: 3f 42 0b  call  $0b42
0bc3: c4 11     mov   $11,a             ; arg1/2
0bc5: 3f 42 0b  call  $0b42
0bc8: fd        mov   y,a               ; push arg3
0bc9: 28 07     and   a,#$07            ; extract lower 3 bits
0bcb: 1c        asl   a
0bcc: c4 0b     mov   $0b,a
0bce: dd        mov   a,y               ; pop arg3
0bcf: 28 f8     and   a,#$f8            ; extract upper 5 bits
0bd1: c4 0a     mov   $0a,a             ; $0a/b = ((arg3 & 7) << 9) | (arg3 & 0xf8)
0bd3: 5f b4 12  jmp   $12b4

; vcmd fd - sub-command
0bd6: 68 00     cmp   a,#$00
0bd8: f0 e1     beq   $0bbb             ; 3 byte args
0bda: 68 01     cmp   a,#$01
0bdc: f0 1b     beq   $0bf9             ; 1 byte arg
0bde: 68 02     cmp   a,#$02
0be0: f0 1e     beq   $0c00             ; 1 byte arg
0be2: 68 03     cmp   a,#$03
0be4: f0 09     beq   $0bef             ; no more args
0be6: 68 04     cmp   a,#$04
0be8: f0 09     beq   $0bf3             ; no more args
0bea: 68 05     cmp   a,#$05
0bec: f0 19     beq   $0c07             ; 1 byte arg
0bee: 6f        ret
; subcmd 03 - legato on
0bef: 09 15 c4  or    ($c4),($15)
0bf2: 6f        ret
; subcmd 04 - legato off
0bf3: e4 15     mov   a,$15
0bf5: 4e c4 00  tclr1 $00c4
0bf8: 6f        ret
; subcmd 01 - use customized percussion table on
0bf9: 3f 42 0b  call  $0b42
0bfc: 0e c5 00  tset1 $00c5
0bff: 6f        ret
; subcmd 02 - use customized percussion table off
0c00: 3f 42 0b  call  $0b42
0c03: 4e c5 00  tclr1 $00c5
0c06: 6f        ret
; subcmd 05 - unknown
0c07: 3f 42 0b  call  $0b42
0c0a: cc 64 03  mov   $0364,y
0c0d: 6f        ret

; vcmd f5 - echo on
0c0e: e4 14     mov   a,$14
0c10: 24 15     and   a,$15             ; channel bitmask
0c12: f0 04     beq   $0c18
; set channel bit of $036d (another EON shadow)
0c14: 0e 6d 03  tset1 $036d
0c17: 6f        ret
; turn echo on
0c18: 09 15 19  or    ($19),($15)       ; set channel bit of EON shadow
0c1b: 6f        ret

; vcmd f6 - echo off
0c1c: e4 14     mov   a,$14
0c1e: 24 15     and   a,$15             ; channel bitmask
0c20: f0 04     beq   $0c26
; clear channel bit of $036d (another EON shadow)
0c22: 4e 6d 03  tclr1 $036d
0c25: 6f        ret
; turn echo off
0c26: e4 15     mov   a,$15
0c28: 4e 19 00  tclr1 $0019             ; clear channel bit of EON shadow
0c2b: 6f        ret

; vcmd f7 - set ADSR
0c2c: d5 52 03  mov   $0352+x,a         ; arg1: ADSR(1)
0c2f: 7d        mov   a,x
0c30: 9f        xcn   a
0c31: 5c        lsr   a
0c32: 08 05     or    a,#$05
0c34: fd        mov   y,a
0c35: f5 52 03  mov   a,$0352+x
0c38: 3f 84 08  call  $0884             ; set ADSR(1)
0c3b: 6d        push  y
0c3c: 3f 42 0b  call  $0b42             ; arg2: ADSR(2)
0c3f: ee        pop   y
0c40: fc        inc   y
0c41: 5f 84 08  jmp   $0884             ; set ADSR(2)

; vcmd f8 - set duration rate and GAIN
0c44: d4 b2     mov   $b2+x,a           ; arg1: duration rate
0c46: 7d        mov   a,x
0c47: 9f        xcn   a
0c48: 5c        lsr   a
0c49: 08 07     or    a,#$07
0c4b: 2d        push  a
0c4c: 3f 42 0b  call  $0b42
0c4f: d5 51 03  mov   $0351+x,a         ; arg2: GAIN
0c52: ee        pop   y
0c53: 5f 84 08  jmp   $0884             ; set GAIN

; vcmd f9 - set duration rate
0c56: db b2     mov   $b2+x,y           ; arg1: duration rate
0c58: 6f        ret

; vcmd fb - set voice params
0c59: c4 0b     mov   $0b,a
0c5b: 1c        asl   a
0c5c: 1c        asl   a
0c5d: fd        mov   y,a               ; index: arg1 (voice param index) * 4
0c5e: f7 c2     mov   a,($c2)+y         ; $c1/2: predefined voice param table (set by vcmd fa)
0c60: 2d        push  a                 ; offset +0, instrument #
0c61: fc        inc   y
0c62: f7 c2     mov   a,($c2)+y
0c64: d5 51 02  mov   $0251+x,a         ; offset +1, volume
0c67: fc        inc   y
0c68: f7 c2     mov   a,($c2)+y
0c6a: 2d        push  a
0c6b: 28 1f     and   a,#$1f
0c6d: d5 a1 02  mov   $02a1+x,a         ; offset +2, pan
0c70: d5 81 02  mov   $0281+x,a
0c73: fc        inc   y
0c74: f7 c2     mov   a,($c2)+y         ; offset +3: transpose
0c76: d5 41 03  mov   $0341+x,a
0c79: ae        pop   a                 ; pop instrument #
0c7a: 28 e0     and   a,#$e0            ; extract upper 3 bits
0c7c: 9f        xcn   a
0c7d: 5c        lsr   a
0c7e: 8d 05     mov   y,#$05
0c80: cf        mul   ya                ; (inst >> 5) * 5
0c81: d5 d1 02  mov   $02d1+x,a         ; tuning
0c84: dd        mov   a,y
0c85: d5 80 02  mov   $0280+x,a
0c88: d5 50 02  mov   $0250+x,a
0c8b: d4 b2     mov   $b2+x,a           ; zero GAIN
0c8d: aa 0b e0  mov1  c,$1c01,3
0c90: 90 03     bcc   $0c95
0c92: 3f 28 0d  call  $0d28
0c95: ae        pop   a
; vcmd da - set instrument
0c96: d5 21 02  mov   $0221+x,a
0c99: fd        mov   y,a
0c9a: 10 07     bpl   $0ca3             ; if percussion note:
0c9c: 80        setc
0c9d: a8 ca     sbc   a,#$ca            ;   ca-da => 00-10
0c9f: 60        clrc
0ca0: 85 50 03  adc   a,$0350           ; add perc patch base
0ca3: 8d 06     mov   y,#$06
; set sample A in bank at $0e/f width Y
0ca5: cf        mul   ya
0ca6: da 0e     movw  $0e,ya
0ca8: 60        clrc
0ca9: 98 80 0e  adc   $0e,#$80
0cac: 98 1a 0f  adc   $0f,#$1a          ; instrument table $1a80
0caf: e4 14     mov   a,$14
0cb1: 24 15     and   a,$15
0cb3: d0 3f     bne   $0cf4
0cb5: 4d        push  x
0cb6: 7d        mov   a,x
0cb7: 9f        xcn   a
0cb8: 5c        lsr   a
0cb9: 08 04     or    a,#$04            ; voice X SRCN
0cbb: 5d        mov   x,a
0cbc: 8d 00     mov   y,#$00
0cbe: f7 0e     mov   a,($0e)+y
0cc0: 10 0e     bpl   $0cd0
0cc2: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0cc4: 38 20 17  and   $17,#$20          ;  keep echo bit from FLG
0cc7: 0e 17 00  tset1 $0017             ;  OR in noise freq
0cca: 09 15 18  or    ($18),($15)       ;  set vbit in noise enable
0ccd: dd        mov   a,y               ;  set SRCN to 0
0cce: 2f 07     bra   $0cd7             ; else
0cd0: e4 15     mov   a,$15
0cd2: 4e 18 00  tclr1 $0018             ;  clear noise vbit
0cd5: f7 0e     mov   a,($0e)+y         ;  set SRCN from table
0cd7: d8 f2     mov   $f2,x
0cd9: c4 f3     mov   $f3,a
0cdb: 3d        inc   x
0cdc: fc        inc   y
0cdd: ad 04     cmp   y,#$04
0cdf: d0 f4     bne   $0cd5             ; set SRCN, ADSR1/2, GAIN from table
0ce1: ce        pop   x
0ce2: f7 0e     mov   a,($0e)+y
0ce4: d5 01 02  mov   $0201+x,a
0ce7: fc        inc   y
0ce8: f7 0e     mov   a,($0e)+y
0cea: d5 00 02  mov   $0200+x,a         ; set pitch multiplier
0ced: 8d 01     mov   y,#$01
0cef: f7 0e     mov   a,($0e)+y
0cf1: d5 52 03  mov   $0352+x,a
0cf4: 6f        ret

; vcmd db - pan
0cf5: d5 a1 02  mov   $02a1+x,a
0cf8: 28 1f     and   a,#$1f
0cfa: d5 81 02  mov   $0281+x,a         ; voice pan value
0cfd: e8 00     mov   a,#$00
0cff: d5 80 02  mov   $0280+x,a
0d02: 6f        ret

; vcmd dc - pan fade
0d03: d4 73     mov   $73+x,a
0d05: 2d        push  a
0d06: 3f 42 0b  call  $0b42
0d09: d5 a0 02  mov   $02a0+x,a
0d0c: 80        setc
0d0d: b5 81 02  sbc   a,$0281+x         ; current pan value
0d10: ce        pop   x
0d11: 3f e1 0e  call  $0ee1             ; delta = pan value / steps
0d14: d5 90 02  mov   $0290+x,a
0d17: dd        mov   a,y
0d18: d5 91 02  mov   $0291+x,a
0d1b: 6f        ret

; vcmd dd - vibrato on
0d1c: d5 10 03  mov   $0310+x,a
0d1f: 3f 42 0b  call  $0b42
0d22: d5 01 03  mov   $0301+x,a
0d25: 3f 42 0b  call  $0b42
; vcmd de - vibrato off
0d28: d4 93     mov   $93+x,a
0d2a: d5 21 03  mov   $0321+x,a
0d2d: e8 00     mov   a,#$00
0d2f: d5 11 03  mov   $0311+x,a
0d32: 6f        ret

; vcmd ea - vibrato fade
0d33: d5 11 03  mov   $0311+x,a
0d36: 2d        push  a
0d37: 8d 00     mov   y,#$00
0d39: f4 93     mov   a,$93+x
0d3b: ce        pop   x
0d3c: 9e        div   ya,x
0d3d: f8 16     mov   x,$16
0d3f: d5 20 03  mov   $0320+x,a
0d42: 6f        ret

; vcmd df - master volume
0d43: e8 00     mov   a,#$00
0d45: da 41     movw  $41,ya
0d47: 6f        ret

; vcmd e0 - master volume fade
0d48: c4 43     mov   $43,a
0d4a: 3f 42 0b  call  $0b42
0d4d: c4 44     mov   $44,a
0d4f: 80        setc
0d50: a4 42     sbc   a,$42
0d52: f8 43     mov   x,$43
0d54: 3f e1 0e  call  $0ee1
0d57: da 45     movw  $45,ya
0d59: 6f        ret

; vcmd e1 - tempo
0d5a: e8 00     mov   a,#$00
0d5c: da 3b     movw  $3b,ya
0d5e: 6f        ret

; vcmd e2 - tempo fade
0d5f: c4 3d     mov   $3d,a
0d61: 3f 42 0b  call  $0b42
0d64: c4 3e     mov   $3e,a
0d66: 80        setc
0d67: a4 3c     sbc   a,$3c
0d69: f8 3d     mov   x,$3d
0d6b: 3f e1 0e  call  $0ee1
0d6e: da 3f     movw  $3f,ya
0d70: 6f        ret

; vcmd e3 - global transpose
0d71: c4 39     mov   $39,a
0d73: 6f        ret

; vcmd e4 - per-voice transpose
0d74: d5 41 03  mov   $0341+x,a
0d77: 6f        ret

; vcmd e5 - tremolo on
0d78: d5 40 03  mov   $0340+x,a
0d7b: 3f 42 0b  call  $0b42
0d7e: d5 31 03  mov   $0331+x,a
0d81: 3f 42 0b  call  $0b42
; vcmd e6 - tremolo off
0d84: d4 a3     mov   $a3+x,a
0d86: 6f        ret

; vcmd eb - pitch envelope (release)
0d87: e8 01     mov   a,#$01
0d89: 2f 02     bra   $0d8d
; vcmd ec - pitch envelope (attack)
0d8b: e8 00     mov   a,#$00
0d8d: d5 f0 02  mov   $02f0+x,a
0d90: dd        mov   a,y
0d91: d5 e1 02  mov   $02e1+x,a
0d94: 3f 42 0b  call  $0b42
0d97: d5 e0 02  mov   $02e0+x,a
0d9a: 3f 42 0b  call  $0b42
0d9d: d5 f1 02  mov   $02f1+x,a
0da0: 6f        ret

; vcmd ed - pitch envelope off
0da1: d5 e0 02  mov   $02e0+x,a
0da4: 6f        ret

; vcmd e7 - volume
0da5: d5 51 02  mov   $0251+x,a
0da8: e8 00     mov   a,#$00
0daa: d5 50 02  mov   $0250+x,a
0dad: 6f        ret

; vcmd e8 - volume fade
0dae: d4 72     mov   $72+x,a
0db0: 2d        push  a
0db1: 3f 42 0b  call  $0b42
0db4: d5 70 02  mov   $0270+x,a
0db7: 80        setc
0db8: b5 51 02  sbc   a,$0251+x
0dbb: ce        pop   x
0dbc: 3f e1 0e  call  $0ee1
0dbf: d5 60 02  mov   $0260+x,a
0dc2: dd        mov   a,y
0dc3: d5 61 02  mov   $0261+x,a
0dc6: 6f        ret

; vcmd ee - tuning
0dc7: d5 d1 02  mov   $02d1+x,a
0dca: 6f        ret

; vcmd e9 - call subroutine (n times)
0dcb: d5 40 02  mov   $0240+x,a
0dce: 3f 42 0b  call  $0b42
0dd1: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0dd4: 3f 42 0b  call  $0b42
0dd7: d4 62     mov   $62+x,a           ; repeat count from arg3
0dd9: f4 28     mov   a,$28+x
0ddb: d5 30 02  mov   $0230+x,a
0dde: f4 29     mov   a,$29+x
0de0: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0de3: f5 40 02  mov   a,$0240+x
0de6: d4 28     mov   $28+x,a
0de8: f5 41 02  mov   a,$0241+x
0deb: d4 29     mov   $29+x,a
0ded: 6f        ret

; vcmd ef - echo vbits/volume
0dee: c4 0a     mov   $0a,a
0df0: c5 6d 03  mov   $036d,a
0df3: e4 14     mov   a,$14
0df5: 48 ff     eor   a,#$ff
0df7: 24 0a     and   a,$0a
0df9: c4 19     mov   $19,a             ; echo vbit shadow from arg1
0dfb: 3f 42 0b  call  $0b42
0dfe: e8 00     mov   a,#$00
0e00: da 47     movw  $47,ya            ; echo vol L shadow = arg2
0e02: 3f 42 0b  call  $0b42
0e05: e8 00     mov   a,#$00
0e07: da 49     movw  $49,ya            ; echo vol R shadow = arg3
0e09: b2 17     clr5  $17               ; enable echo write
0e0b: 6f        ret

; vcmd f2 - echo volume fade
0e0c: c4 4f     mov   $4f,a
0e0e: 3f 42 0b  call  $0b42
0e11: c4 50     mov   $50,a
0e13: 80        setc
0e14: a4 48     sbc   a,$48
0e16: f8 4f     mov   x,$4f
0e18: 3f e1 0e  call  $0ee1
0e1b: da 4b     movw  $4b,ya
0e1d: 3f 42 0b  call  $0b42
0e20: c4 51     mov   $51,a
0e22: 80        setc
0e23: a4 4a     sbc   a,$4a
0e25: f8 4f     mov   x,$4f
0e27: 3f e1 0e  call  $0ee1
0e2a: da 4d     movw  $4d,ya
0e2c: 6f        ret

; vcmd f0 - disable echo
0e2d: da 47     movw  $47,ya            ; zero echo vol L shadow
0e2f: da 49     movw  $49,ya            ; zero echo vol R shadow
0e31: a2 17     set5  $17               ; disable echo write
0e33: 6f        ret

; vcmd f1 - set echo params
0e34: 3f 56 0e  call  $0e56             ; set echo delay from arg1
0e37: 3f 42 0b  call  $0b42
0e3a: c4 1d     mov   $1d,a             ; set echo feedback shadow from arg2
0e3c: 3f 42 0b  call  $0b42
0e3f: 8d 08     mov   y,#$08
0e41: cf        mul   ya
0e42: 5d        mov   x,a
0e43: 8d 0f     mov   y,#$0f
0e45: f5 00 ff  mov   a,$ff00+x         ; filter table
0e48: 3f 8c 08  call  $088c
0e4b: 3d        inc   x
0e4c: dd        mov   a,y
0e4d: 60        clrc
0e4e: 88 10     adc   a,#$10
0e50: fd        mov   y,a
0e51: 10 f2     bpl   $0e45             ; set echo filter from table index arg3
0e53: f8 16     mov   x,$16
0e55: 6f        ret
; set echo delay to A
0e56: c4 1c     mov   $1c,a
0e58: 8d 7d     mov   y,#$7d
0e5a: cb f2     mov   $f2,y
0e5c: e4 f3     mov   a,$f3             ; set echo delay
0e5e: 64 1c     cmp   a,$1c
0e60: f0 29     beq   $0e8b             ; same as $1c?
0e62: 28 0f     and   a,#$0f
0e64: 48 ff     eor   a,#$ff
0e66: f3 1b 03  bbc7  $1b,$0e6c
0e69: 60        clrc
0e6a: 84 1b     adc   a,$1b
0e6c: c4 1b     mov   $1b,a
0e6e: 8d 04     mov   y,#$04
0e70: f6 c1 07  mov   a,$07c1+y         ; shadow reg DSP reg table
0e73: c4 f2     mov   $f2,a
0e75: e8 00     mov   a,#$00
0e77: c4 f3     mov   $f3,a
0e79: fe f5     dbnz  y,$0e70           ; zero echo vol, feedback, vbit DSP regs
0e7b: e4 17     mov   a,$17
0e7d: 08 20     or    a,#$20
0e7f: 8d 6c     mov   y,#$6c
0e81: 3f 8c 08  call  $088c             ; set FLG from shadow but disable echo
0e84: e4 1c     mov   a,$1c
0e86: 8d 7d     mov   y,#$7d
0e88: 3f 8c 08  call  $088c             ; set echo delay from $1c
0e8b: 1c        asl   a
0e8c: 1c        asl   a
0e8d: 1c        asl   a
0e8e: 48 ff     eor   a,#$ff
0e90: 80        setc
0e91: 88 ff     adc   a,#$ff
0e93: 8d 6d     mov   y,#$6d            ; set echo region to $ff00-8*delay
0e95: 5f 8c 08  jmp   $088c

; vcmd f4 - set perc patch base
0e98: c5 50 03  mov   $0350,a
0e9b: d2 c5     clr6  $c5
0e9d: 6f        ret

0e9e: f4 82     mov   a,$82+x
0ea0: d0 33     bne   $0ed5
0ea2: e7 28     mov   a,($28+x)
0ea4: 68 f3     cmp   a,#$f3
0ea6: d0 2d     bne   $0ed5
0ea8: 3f 44 0b  call  $0b44
0eab: 3f 42 0b  call  $0b42
; vcmd f3 - pitch slide
0eae: d4 83     mov   $83+x,a
0eb0: 3f 42 0b  call  $0b42
0eb3: d4 82     mov   $82+x,a
0eb5: 3f 42 0b  call  $0b42
0eb8: 60        clrc
0eb9: 84 39     adc   a,$39             ; add global transpose
0ebb: 95 41 03  adc   a,$0341+x         ; per-voice transpose
; calculate portamento delta
0ebe: 28 7f     and   a,#$7f
0ec0: d5 d0 02  mov   $02d0+x,a         ; final portamento value
0ec3: 80        setc
0ec4: b5 b1 02  sbc   a,$02b1+x         ; note number
0ec7: fb 82     mov   y,$82+x           ; portamento steps
0ec9: 6d        push  y
0eca: ce        pop   x
0ecb: 3f e1 0e  call  $0ee1
0ece: d5 c0 02  mov   $02c0+x,a
0ed1: dd        mov   a,y
0ed2: d5 c1 02  mov   $02c1+x,a         ; portamento delta
0ed5: 6f        ret

0ed6: f5 b1 02  mov   a,$02b1+x
0ed9: c4 0b     mov   $0b,a
0edb: f5 b0 02  mov   a,$02b0+x
0ede: c4 0a     mov   $0a,a
0ee0: 6f        ret

; signed 16 bit division
0ee1: ed        notc
0ee2: 6b 0c     ror   $0c
0ee4: 10 03     bpl   $0ee9
0ee6: 48 ff     eor   a,#$ff
0ee8: bc        inc   a
0ee9: 8d 00     mov   y,#$00
0eeb: 9e        div   ya,x
0eec: 2d        push  a
0eed: e8 00     mov   a,#$00
0eef: 9e        div   ya,x
0ef0: ee        pop   y
0ef1: f8 16     mov   x,$16
0ef3: f3 0c 06  bbc7  $0c,$0efc
0ef6: da 0e     movw  $0e,ya
0ef8: ba 08     movw  ya,$08
0efa: 9a 0e     subw  ya,$0e
0efc: 6f        ret

; do voice fades
0efd: f4 72     mov   a,$72+x           ; voice volume fade counter
0eff: f0 24     beq   $0f25
0f01: 09 15 38  or    ($38),($15)
0f04: 9b 72     dec   $72+x             ; dec voice vol fade counter
0f06: d0 0a     bne   $0f12
0f08: e8 00     mov   a,#$00
0f0a: d5 50 02  mov   $0250+x,a
0f0d: f5 70 02  mov   a,$0270+x
0f10: 2f 10     bra   $0f22
0f12: 60        clrc
0f13: f5 50 02  mov   a,$0250+x
0f16: 95 60 02  adc   a,$0260+x
0f19: d5 50 02  mov   $0250+x,a
0f1c: f5 51 02  mov   a,$0251+x
0f1f: 95 61 02  adc   a,$0261+x
0f22: d5 51 02  mov   $0251+x,a
0f25: fb a3     mov   y,$a3+x
0f27: f0 23     beq   $0f4c
0f29: f5 40 03  mov   a,$0340+x
0f2c: de a2 1b  cbne  $a2+x,$0f4a
0f2f: 09 15 38  or    ($38),($15)
0f32: f5 30 03  mov   a,$0330+x
0f35: 10 07     bpl   $0f3e
0f37: fc        inc   y
0f38: d0 04     bne   $0f3e
0f3a: e8 80     mov   a,#$80
0f3c: 2f 04     bra   $0f42
0f3e: 60        clrc
0f3f: 95 31 03  adc   a,$0331+x
0f42: d5 30 03  mov   $0330+x,a
0f45: 3f 8a 11  call  $118a
0f48: 2f 07     bra   $0f51
0f4a: bb a2     inc   $a2+x
0f4c: e8 ff     mov   a,#$ff
0f4e: 3f 95 11  call  $1195
0f51: f4 73     mov   a,$73+x
0f53: f0 24     beq   $0f79
0f55: 09 15 38  or    ($38),($15)
0f58: 9b 73     dec   $73+x
0f5a: d0 0a     bne   $0f66
0f5c: e8 00     mov   a,#$00
0f5e: d5 80 02  mov   $0280+x,a
0f61: f5 a0 02  mov   a,$02a0+x
0f64: 2f 10     bra   $0f76
0f66: 60        clrc
0f67: f5 80 02  mov   a,$0280+x
0f6a: 95 90 02  adc   a,$0290+x
0f6d: d5 80 02  mov   $0280+x,a
0f70: f5 81 02  mov   a,$0281+x
0f73: 95 91 02  adc   a,$0291+x
0f76: d5 81 02  mov   $0281+x,a
0f79: e4 15     mov   a,$15
0f7b: 24 38     and   a,$38
0f7d: f0 4c     beq   $0fcb
0f7f: f5 81 02  mov   a,$0281+x
0f82: fd        mov   y,a
0f83: f5 80 02  mov   a,$0280+x
0f86: da 0a     movw  $0a,ya
0f88: e4 15     mov   a,$15
0f8a: 24 14     and   a,$14
0f8c: d0 3d     bne   $0fcb
0f8e: 7d        mov   a,x
0f8f: 9f        xcn   a
0f90: 5c        lsr   a
0f91: c4 0c     mov   $0c,a
0f93: eb 0b     mov   y,$0b
0f95: f6 39 ff  mov   a,$ff39+y         ; next pan val from table
0f98: 80        setc
0f99: b6 38 ff  sbc   a,$ff38+y         ; pan val
0f9c: eb 0a     mov   y,$0a
0f9e: cf        mul   ya
0f9f: dd        mov   a,y
0fa0: eb 0b     mov   y,$0b
0fa2: 60        clrc
0fa3: 96 38 ff  adc   a,$ff38+y         ; add integer part to pan val
0fa6: fd        mov   y,a
0fa7: f5 71 02  mov   a,$0271+x         ; volume
0faa: cf        mul   ya
0fab: f5 a1 02  mov   a,$02a1+x         ; bits 7/6 will negate volume L/R
0fae: 1c        asl   a
0faf: 13 0c 01  bbc0  $0c,$0fb3
0fb2: 1c        asl   a
0fb3: dd        mov   a,y
0fb4: 90 03     bcc   $0fb9
0fb6: 48 ff     eor   a,#$ff
0fb8: bc        inc   a
0fb9: eb 0c     mov   y,$0c
0fbb: 3f 84 08  call  $0884
0fbe: 8d 14     mov   y,#$14
0fc0: e8 00     mov   a,#$00
0fc2: 9a 0a     subw  ya,$0a
0fc4: da 0a     movw  $0a,ya
0fc6: ab 0c     inc   $0c
0fc8: 33 0c c8  bbc1  $0c,$0f93
0fcb: 6f        ret

; do readahead
0fcc: f4 53     mov   a,$53+x
0fce: d0 03     bne   $0fd3
0fd0: 5f 62 10  jmp   $1062

0fd3: 9b 53     dec   $53+x
0fd5: f0 1b     beq   $0ff2
0fd7: f4 b2     mov   a,$b2+x
0fd9: f0 12     beq   $0fed
0fdb: 9b b3     dec   $b3+x
0fdd: d0 0e     bne   $0fed
0fdf: 7d        mov   a,x
0fe0: 9f        xcn   a
0fe1: 5c        lsr   a
0fe2: 08 05     or    a,#$05
0fe4: fd        mov   y,a
0fe5: f5 52 03  mov   a,$0352+x
0fe8: 28 7f     and   a,#$7f
0fea: 3f 84 08  call  $0884
0fed: e8 02     mov   a,#$02
0fef: de 52 70  cbne  $52+x,$1062
0ff2: f4 62     mov   a,$62+x
0ff4: c4 11     mov   $11,a
0ff6: f4 28     mov   a,$28+x
0ff8: fb 29     mov   y,$29+x
0ffa: da 0e     movw  $0e,ya            ; set current voice ptr to $0e/f
0ffc: 8d 00     mov   y,#$00
0ffe: f7 0e     mov   a,($0e)+y         ; readahead
1000: f0 1c     beq   $101e
1002: 30 05     bmi   $1009
; vcmd readahead 01-7f - note param
1004: fc        inc   y
1005: f7 0e     mov   a,($0e)+y
1007: 10 fb     bpl   $1004             ; skip while byte <= 0x7f
; 80-ff
1009: 68 c8     cmp   a,#$c8
100b: f0 55     beq   $1062
100d: 68 e9     cmp   a,#$e9
100f: f0 29     beq   $103a
1011: 68 da     cmp   a,#$da
1013: 90 30     bcc   $1045
; vcmd readahead da-ff (excluding e9)
1015: 6d        push  y
1016: fd        mov   y,a
1017: ae        pop   a
1018: 96 32 0a  adc   a,$0a32+y         ; vcmd lengths
101b: fd        mov   y,a
101c: 2f e0     bra   $0ffe
; vcmd readahead 00 - end/return
101e: e4 11     mov   a,$11
1020: f0 23     beq   $1045
1022: 8b 11     dec   $11
1024: d0 0a     bne   $1030
; read $0230/1+X into YA
1026: f5 31 02  mov   a,$0231+x
1029: 2d        push  a
102a: f5 30 02  mov   a,$0230+x
102d: ee        pop   y
102e: 2f ca     bra   $0ffa
; read $0240/1+X into YA
1030: f5 41 02  mov   a,$0241+x
1033: 2d        push  a
1034: f5 40 02  mov   a,$0240+x
1037: ee        pop   y
1038: 2f c0     bra   $0ffa
; vcmd readahead e5 - call subroutine
103a: fc        inc   y
103b: f7 0e     mov   a,($0e)+y
103d: 2d        push  a
103e: fc        inc   y
103f: f7 0e     mov   a,($0e)+y
1041: fd        mov   y,a
1042: ae        pop   a
1043: 2f b5     bra   $0ffa
; vcmd readahead 80-d9 (excluding c8) - note
1045: e4 c4     mov   a,$c4
1047: 24 15     and   a,$15             ; test channel bit of $c4
1049: d0 17     bne   $1062             ; skip keyoff if it's set
104b: e4 15     mov   a,$15
104d: 8d 5c     mov   y,#$5c
104f: 3f 84 08  call  $0884             ; set KOF
1052: f4 b2     mov   a,$b2+x
1054: f0 0c     beq   $1062
1056: 7d        mov   a,x
1057: 9f        xcn   a
1058: 5c        lsr   a
1059: 08 05     or    a,#$05
105b: fd        mov   y,a
105c: f5 52 03  mov   a,$0352+x
105f: 3f 84 08  call  $0884             ; set ADSR(1)
; vcmd readahead c8 - tie
1062: f2 0d     clr7  $0d
1064: f4 82     mov   a,$82+x
1066: f0 2c     beq   $1094
1068: f4 83     mov   a,$83+x
106a: f0 04     beq   $1070
106c: 9b 83     dec   $83+x
106e: 2f 24     bra   $1094
1070: e2 0d     set7  $0d
1072: 9b 82     dec   $82+x
1074: d0 0b     bne   $1081
1076: f5 d1 02  mov   a,$02d1+x
1079: d5 b0 02  mov   $02b0+x,a
107c: f5 d0 02  mov   a,$02d0+x
107f: 2f 10     bra   $1091
1081: 60        clrc
1082: f5 b0 02  mov   a,$02b0+x
1085: 95 c0 02  adc   a,$02c0+x
1088: d5 b0 02  mov   $02b0+x,a
108b: f5 b1 02  mov   a,$02b1+x
108e: 95 c1 02  adc   a,$02c1+x
1091: d5 b1 02  mov   $02b1+x,a
1094: 3f d6 0e  call  $0ed6
1097: f4 93     mov   a,$93+x
1099: f0 65     beq   $1100
109b: f5 10 03  mov   a,$0310+x
109e: de 92 5d  cbne  $92+x,$10fe
10a1: f5 63 00  mov   a,$0063+x
10a4: 75 11 03  cmp   a,$0311+x
10a7: d0 05     bne   $10ae
10a9: f5 21 03  mov   a,$0321+x
10ac: 2f 0b     bra   $10b9
10ae: bb 63     inc   $63+x
10b0: fd        mov   y,a
10b1: f0 02     beq   $10b5
10b3: f4 93     mov   a,$93+x
10b5: 60        clrc
10b6: 95 20 03  adc   a,$0320+x
10b9: d4 93     mov   $93+x,a
10bb: f5 00 03  mov   a,$0300+x
10be: 60        clrc
10bf: 95 01 03  adc   a,$0301+x
10c2: d5 00 03  mov   $0300+x,a
10c5: c4 0c     mov   $0c,a
10c7: 1c        asl   a
10c8: 1c        asl   a
10c9: 90 02     bcc   $10cd
10cb: 48 ff     eor   a,#$ff
10cd: fd        mov   y,a
10ce: f4 93     mov   a,$93+x
10d0: 68 f1     cmp   a,#$f1
10d2: 90 05     bcc   $10d9
10d4: 28 0f     and   a,#$0f
10d6: cf        mul   ya
10d7: 2f 04     bra   $10dd
10d9: cf        mul   ya
10da: dd        mov   a,y
10db: 8d 00     mov   y,#$00
10dd: f3 0c 06  bbc7  $0c,$10e6
10e0: da 0e     movw  $0e,ya
10e2: ba 08     movw  ya,$08
10e4: 9a 0e     subw  ya,$0e
10e6: 7a 0a     addw  ya,$0a
10e8: da 0a     movw  $0a,ya
10ea: 7d        mov   a,x
10eb: 9f        xcn   a
10ec: 5c        lsr   a
10ed: 08 08     or    a,#$08
10ef: c4 f2     mov   $f2,a
10f1: e4 f3     mov   a,$f3
10f3: f0 0e     beq   $1103
10f5: e4 15     mov   a,$15
10f7: 24 14     and   a,$14
10f9: d0 08     bne   $1103
10fb: 5f 71 08  jmp   $0871

10fe: bb 92     inc   $92+x
1100: e3 0d e7  bbs7  $0d,$10ea
1103: 6f        ret

; per-voice fades/dsps
1104: f2 0d     clr7  $0d
1106: f4 a3     mov   a,$a3+x
1108: f0 09     beq   $1113
110a: f5 40 03  mov   a,$0340+x
110d: de a2 03  cbne  $a2+x,$1113
1110: 3f 7d 11  call  $117d             ; voice vol calculations
1113: f5 81 02  mov   a,$0281+x
1116: fd        mov   y,a
1117: f5 80 02  mov   a,$0280+x
111a: da 0a     movw  $0a,ya            ; $0a/b = voice pan value
111c: f4 73     mov   a,$73+x           ; voice pan fade counter
111e: f0 0a     beq   $112a
1120: f5 91 02  mov   a,$0291+x
1123: fd        mov   y,a
1124: f5 90 02  mov   a,$0290+x         ; pan fade delta
1127: 3f 5f 11  call  $115f             ; add delta (with mutations)?
112a: f3 0d 03  bbc7  $0d,$1130
112d: 3f 8e 0f  call  $0f8e
1130: f2 0d     clr7  $0d
1132: 3f d6 0e  call  $0ed6
1135: f4 82     mov   a,$82+x
1137: f0 0e     beq   $1147
1139: f4 83     mov   a,$83+x
113b: d0 0a     bne   $1147
113d: f5 c1 02  mov   a,$02c1+x
1140: fd        mov   y,a
1141: f5 c0 02  mov   a,$02c0+x
1144: 3f 5f 11  call  $115f
1147: f4 93     mov   a,$93+x
1149: f0 b5     beq   $1100
114b: f5 10 03  mov   a,$0310+x
114e: de 92 af  cbne  $92+x,$1100
1151: eb 3a     mov   y,$3a
1153: f5 01 03  mov   a,$0301+x
1156: cf        mul   ya
1157: dd        mov   a,y
1158: 60        clrc
1159: 95 00 03  adc   a,$0300+x
115c: 5f c5 10  jmp   $10c5

115f: e2 0d     set7  $0d
1161: cb 0c     mov   $0c,y
1163: 3f f3 0e  call  $0ef3
1166: 6d        push  y
1167: eb 3a     mov   y,$3a
1169: cf        mul   ya
116a: cb 0e     mov   $0e,y
116c: 8f 00 0f  mov   $0f,#$00
116f: eb 3a     mov   y,$3a
1171: ae        pop   a
1172: cf        mul   ya
1173: 7a 0e     addw  ya,$0e
1175: 3f f3 0e  call  $0ef3
1178: 7a 0a     addw  ya,$0a
117a: da 0a     movw  $0a,ya
117c: 6f        ret

117d: e2 0d     set7  $0d
117f: eb 3a     mov   y,$3a
1181: f5 31 03  mov   a,$0331+x
1184: cf        mul   ya
1185: dd        mov   a,y
1186: 60        clrc
1187: 95 30 03  adc   a,$0330+x
118a: 1c        asl   a
118b: 90 02     bcc   $118f
118d: 48 ff     eor   a,#$ff
118f: fb a3     mov   y,$a3+x
1191: cf        mul   ya
1192: dd        mov   a,y
1193: 48 ff     eor   a,#$ff
1195: eb 42     mov   y,$42
1197: cf        mul   ya
1198: f5 20 02  mov   a,$0220+x
119b: cf        mul   ya
119c: f5 51 02  mov   a,$0251+x
119f: cf        mul   ya
11a0: da 0a     movw  $0a,ya
11a2: cf        mul   ya
11a3: e8 02     mov   a,#$02
11a5: cf        mul   ya
11a6: da 0e     movw  $0e,ya
11a8: e4 0b     mov   a,$0b
11aa: fd        mov   y,a
11ab: cf        mul   ya
11ac: 7a 0e     addw  ya,$0e
11ae: e4 c8     mov   a,$c8
11b0: cf        mul   ya
11b1: dd        mov   a,y
11b2: d5 71 02  mov   $0271+x,a
11b5: 6f        ret

11b6: e8 ff     mov   a,#$ff
11b8: c5 68 03  mov   $0368,a
11bb: ba f4     movw  ya,$f4
11bd: 5a f4     cmpw  ya,$f4
11bf: d0 fa     bne   $11bb
11c1: da 00     movw  $00,ya
11c3: ba f6     movw  ya,$f6
11c5: 5a f6     cmpw  ya,$f6
11c7: d0 fa     bne   $11c3
11c9: da 02     movw  $02,ya
11cb: 3f 75 13  call  $1375
11ce: e4 00     mov   a,$00
11d0: 3f 85 18  call  $1885
11d3: cd 01     mov   x,#$01
11d5: f4 00     mov   a,$00+x
11d7: f0 11     beq   $11ea
11d9: 74 04     cmp   a,$04+x
11db: f0 0d     beq   $11ea
11dd: c4 0a     mov   $0a,a
11df: 8f 00 0b  mov   $0b,#$00
11e2: 4d        push  x
11e3: 3f 92 12  call  $1292
11e6: 3f b4 12  call  $12b4
11e9: ce        pop   x
11ea: d4 04     mov   $04+x,a
11ec: cd 02     mov   x,#$02
11ee: f4 00     mov   a,$00+x
11f0: f0 11     beq   $1203
11f2: 74 04     cmp   a,$04+x
11f4: f0 0d     beq   $1203
11f6: c4 0a     mov   $0a,a
11f8: 8f 02 0b  mov   $0b,#$02
11fb: 4d        push  x
11fc: 3f 92 12  call  $1292
11ff: 3f b4 12  call  $12b4
1202: ce        pop   x
1203: d4 04     mov   $04+x,a
1205: cd 03     mov   x,#$03
1207: f4 00     mov   a,$00+x
1209: f0 11     beq   $121c
120b: 74 04     cmp   a,$04+x
120d: f0 0d     beq   $121c
120f: c4 0a     mov   $0a,a
1211: 8f 04 0b  mov   $0b,#$04
1214: 4d        push  x
1215: 3f 92 12  call  $1292
1218: 3f b4 12  call  $12b4
121b: ce        pop   x
121c: d4 04     mov   $04+x,a
121e: cd 00     mov   x,#$00
1220: f5 c0 04  mov   a,$04c0+x
1223: f0 32     beq   $1257
1225: 4d        push  x
1226: fd        mov   y,a
1227: f5 bf 04  mov   a,$04bf+x
122a: da ca     movw  $ca,ya
122c: f5 c7 04  mov   a,$04c7+x
122f: c4 0a     mov   $0a,a
1231: f5 c8 04  mov   a,$04c8+x
1234: c4 16     mov   $16,a
1236: 9f        xcn   a
1237: 5c        lsr   a
1238: c5 66 03  mov   $0366,a
123b: 9f        xcn   a
123c: 5d        mov   x,a
123d: f5 8a 12  mov   a,$128a+x
1240: c4 15     mov   $15,a
1242: 3f f4 12  call  $12f4
1245: ce        pop   x
1246: e8 00     mov   a,#$00
1248: d5 c0 04  mov   $04c0+x,a
124b: d5 c7 04  mov   $04c7+x,a
124e: d5 c8 04  mov   $04c8+x,a
1251: 3d        inc   x
1252: 3d        inc   x
1253: c8 08     cmp   x,#$08
1255: 90 c9     bcc   $1220
1257: fa 00 04  mov   ($04),($00)
125a: ba 04     movw  ya,$04
125c: da f4     movw  $f4,ya
125e: ba 06     movw  ya,$06
1260: da f6     movw  $f6,ya
1262: 3f b5 13  call  $13b5
1265: e4 c6     mov   a,$c6
1267: f0 20     beq   $1289
1269: e5 61 03  mov   a,$0361
126c: ec 62 03  mov   y,$0362
126f: 7a c7     addw  ya,$c7
1271: da c7     movw  $c7,ya
1273: 6e c6 13  dbnz  $c6,$1289
1276: e5 63 03  mov   a,$0363
1279: c4 c8     mov   $c8,a
127b: e4 ec     mov   a,$ec
127d: 28 20     and   a,#$20
127f: d0 03     bne   $1284
1281: 8f 00 23  mov   $23,#$00
1284: e8 30     mov   a,#$30
1286: 4e ec 00  tclr1 $00ec
1289: 6f        ret

128a: db $01,$02,$04,$08,$10,$20,$40,$80

1292: e4 0a     mov   a,$0a
1294: 9c        dec   a
1295: 9f        xcn   a
1296: 28 0f     and   a,#$0f
1298: 1c        asl   a
1299: 5d        mov   x,a
129a: f5 01 c4  mov   a,$c401+x
129d: fd        mov   y,a
129e: f5 00 c4  mov   a,$c400+x
12a1: da 0e     movw  $0e,ya
12a3: e4 0a     mov   a,$0a
12a5: 9c        dec   a
12a6: 28 0f     and   a,#$0f
12a8: 1c        asl   a
12a9: fd        mov   y,a
12aa: f7 0e     mov   a,($0e)+y
12ac: c4 10     mov   $10,a
12ae: fc        inc   y
12af: f7 0e     mov   a,($0e)+y
12b1: c4 11     mov   $11,a
12b3: 6f        ret

12b4: e4 0b     mov   a,$0b
12b6: cd 00     mov   x,#$00
12b8: 8d 04     mov   y,#$04
12ba: 75 c8 04  cmp   a,$04c8+x
12bd: f0 06     beq   $12c5
12bf: 3d        inc   x
12c0: 3d        inc   x
12c1: fe f7     dbnz  y,$12ba
12c3: 2f 1d     bra   $12e2
12c5: e4 0a     mov   a,$0a
12c7: 75 c7 04  cmp   a,$04c7+x
12ca: 90 23     bcc   $12ef
12cc: ba 10     movw  ya,$10
12ce: d5 bf 04  mov   $04bf+x,a
12d1: dd        mov   a,y
12d2: d5 c0 04  mov   $04c0+x,a
12d5: e4 0b     mov   a,$0b
12d7: d5 c8 04  mov   $04c8+x,a
12da: e4 0a     mov   a,$0a
12dc: d5 c7 04  mov   $04c7+x,a
12df: f8 16     mov   x,$16
12e1: 6f        ret

12e2: cd 00     mov   x,#$00
12e4: 8d 04     mov   y,#$04
12e6: f5 c0 04  mov   a,$04c0+x
12e9: f0 e1     beq   $12cc
12eb: 3d        inc   x
12ec: 3d        inc   x
12ed: fe f7     dbnz  y,$12e6
12ef: f8 16     mov   x,$16
12f1: e8 00     mov   a,#$00
12f3: 6f        ret

12f4: f8 16     mov   x,$16
12f6: f5 00 04  mov   a,$0400+x
12f9: d0 17     bne   $1312
12fb: e4 15     mov   a,$15
12fd: 0e 14 00  tset1 $0014
1300: 4e 6d 03  tclr1 $036d
1303: 4e 6e 03  tclr1 $036e
1306: 24 19     and   a,$19
1308: 0e 6d 03  tset1 $036d
130b: e4 15     mov   a,$15
130d: 24 18     and   a,$18
130f: 0e 6e 03  tset1 $036e
1312: e4 0a     mov   a,$0a
1314: 75 00 04  cmp   a,$0400+x
1317: b0 01     bcs   $131a
1319: 6f        ret

131a: d5 00 04  mov   $0400+x,a
131d: e8 ff     mov   a,#$ff
131f: d5 ef 03  mov   $03ef+x,a
1322: bc        inc   a
1323: fd        mov   y,a
1324: d4 cd     mov   $cd+x,a
1326: d5 ff 03  mov   $03ff+x,a
1329: d5 f0 03  mov   $03f0+x,a
132c: d5 0f 04  mov   $040f+x,a
132f: d5 10 04  mov   $0410+x,a
1332: d5 b0 04  mov   $04b0+x,a
1335: bc        inc   a
1336: d4 cc     mov   $cc+x,a
1338: e4 15     mov   a,$15
133a: 4e 69 03  tclr1 $0369
133d: 0e 67 03  tset1 $0367
1340: 8f 5c f2  mov   $f2,#$5c
1343: c4 f3     mov   $f3,a
1345: e5 66 03  mov   a,$0366
1348: 08 05     or    a,#$05
134a: c4 f2     mov   $f2,a
134c: cb f3     mov   $f3,y
134e: f7 ca     mov   a,($ca)+y
1350: 3f 16 16  call  $1616
1353: f7 ca     mov   a,($ca)+y
1355: 3f 36 16  call  $1636
1358: f7 ca     mov   a,($ca)+y
135a: 3f 97 16  call  $1697
135d: ba ca     movw  ya,$ca
135f: d5 1f 04  mov   $041f+x,a
1362: dd        mov   a,y
1363: d5 20 04  mov   $0420+x,a
1366: 6f        ret

1367: 40        setp
1368: e9 c9 00  mov   x,$00c9
136b: af        mov   (x)+,a
136c: dd        mov   a,y
136d: af        mov   (x)+,a
136e: c9 c9 00  mov   $00c9,x
1371: 20        clrp
1372: f8 16     mov   x,$16
1374: 6f        ret

1375: 40        setp
1376: e8 ff     mov   a,#$ff
1378: e9 c9 00  mov   x,$00c9
137b: c6        mov   (x),a
137c: cd 00     mov   x,#$00
137e: bf        mov   a,(x)+
137f: 30 09     bmi   $138a
1381: c5 f2 00  mov   $00f2,a
1384: bf        mov   a,(x)+
1385: c5 f3 00  mov   $00f3,a
1388: 2f f4     bra   $137e
138a: 20        clrp
138b: e5 69 03  mov   a,$0369
138e: c4 18     mov   $18,a
1390: e4 17     mov   a,$17
1392: 28 e0     and   a,#$e0
1394: 05 6c 03  or    a,$036c
1397: c4 17     mov   $17,a
1399: 8d 03     mov   y,#$03
139b: f6 b1 13  mov   a,$13b1+y
139e: c5 f2 00  mov   $00f2,a
13a1: f6 68 03  mov   a,$0368+y
13a4: c5 f3 00  mov   $00f3,a
13a7: fe f2     dbnz  y,$139b
13a9: cb c9     mov   $c9,y
13ab: cc 6b 03  mov   $036b,y
13ae: cc 6a 03  mov   $036a,y
13b1: 6f        ret

13b2: 3d        inc   x
13b3: 5c        lsr   a
13b4: 4c 8f 01  lsr   $018f
13b7: 15 cd 00  or    a,$00cd+x
13ba: e4 c9     mov   a,$c9
13bc: 68 68     cmp   a,#$68
13be: b0 fa     bcs   $13ba
13c0: d8 16     mov   $16,x
13c2: f5 00 04  mov   a,$0400+x
13c5: f0 63     beq   $142a
13c7: f5 20 04  mov   a,$0420+x
13ca: c4 cb     mov   $cb,a
13cc: f5 1f 04  mov   a,$041f+x
13cf: c4 ca     mov   $ca,a
13d1: 7d        mov   a,x
13d2: 9f        xcn   a
13d3: 5c        lsr   a
13d4: c5 66 03  mov   $0366,a
13d7: 8f 00 0d  mov   $0d,#$00
13da: 9b cc     dec   $cc+x
13dc: d0 46     bne   $1424
13de: e4 15     mov   a,$15
13e0: 25 67 03  and   a,$0367
13e3: f0 06     beq   $13eb
13e5: 4e 67 03  tclr1 $0367
13e8: 8f 01 0d  mov   $0d,#$01
13eb: 3f 5e 15  call  $155e
13ee: fd        mov   y,a
13ef: d0 33     bne   $1424
13f1: d5 00 04  mov   $0400+x,a
13f4: e4 15     mov   a,$15
13f6: 4e 19 00  tclr1 $0019
13f9: 4e 18 00  tclr1 $0018
13fc: 4e 69 03  tclr1 $0369
13ff: 4e 14 00  tclr1 $0014
1402: 25 6d 03  and   a,$036d
1405: 0e 19 00  tset1 $0019
1408: e4 15     mov   a,$15
140a: 25 6e 03  and   a,$036e
140d: 0e 18 00  tset1 $0018
1410: f5 21 02  mov   a,$0221+x
1413: 3f 96 0c  call  $0c96
1416: e5 66 03  mov   a,$0366
1419: 08 07     or    a,#$07
141b: fd        mov   y,a
141c: f5 51 03  mov   a,$0351+x
141f: 3f 84 08  call  $0884
1422: 2f 06     bra   $142a
1424: 3f 31 14  call  $1431
1427: 3f 5d 13  call  $135d
142a: 3d        inc   x
142b: 3d        inc   x
142c: 0b 15     asl   $15
142e: d0 8a     bne   $13ba
1430: 6f        ret

1431: f4 cd     mov   a,$cd+x
1433: f0 24     beq   $1459
1435: f5 bf 03  mov   a,$03bf+x
1438: 60        clrc
1439: 95 cf 03  adc   a,$03cf+x
143c: d5 bf 03  mov   $03bf+x,a
143f: f5 c0 03  mov   a,$03c0+x
1442: 95 d0 03  adc   a,$03d0+x
1445: d5 c0 03  mov   $03c0+x,a
1448: 9b cd     dec   $cd+x
144a: d0 12     bne   $145e
144c: e8 00     mov   a,#$00
144e: d5 bf 03  mov   $03bf+x,a
1451: f5 df 03  mov   a,$03df+x
1454: d5 c0 03  mov   $03c0+x,a
1457: 2f 05     bra   $145e
1459: aa 0d 20  mov1  c,$0401,5
145c: 90 4c     bcc   $14aa
145e: f5 bf 03  mov   a,$03bf+x
1461: 60        clrc
1462: 95 ff 03  adc   a,$03ff+x
1465: c4 0a     mov   $0a,a
1467: f5 c0 03  mov   a,$03c0+x
146a: 95 f0 03  adc   a,$03f0+x
146d: 28 7f     and   a,#$7f
146f: c4 0b     mov   $0b,a
1471: e5 69 03  mov   a,$0369
1474: 24 15     and   a,$15
1476: d0 2b     bne   $14a3
1478: f5 0f 04  mov   a,$040f+x
147b: f0 0f     beq   $148c
147d: 0b 12     asl   $12
147f: eb 12     mov   y,$12
1481: cf        mul   ya
1482: dd        mov   a,y
1483: 60        clrc
1484: 84 0a     adc   a,$0a
1486: c4 0a     mov   $0a,a
1488: 90 02     bcc   $148c
148a: ab 0b     inc   $0b
148c: 3f 91 08  call  $0891
148f: e5 66 03  mov   a,$0366
1492: 08 02     or    a,#$02
1494: 3f 67 13  call  $1367
1497: eb 10     mov   y,$10
1499: e5 66 03  mov   a,$0366
149c: 08 03     or    a,#$03
149e: 3f 67 13  call  $1367
14a1: 2f 07     bra   $14aa
14a3: e4 0b     mov   a,$0b
14a5: 28 1f     and   a,#$1f
14a7: c5 6c 03  mov   $036c,a
14aa: f4 dc     mov   a,$dc+x
14ac: f0 22     beq   $14d0
14ae: f5 9f 03  mov   a,$039f+x
14b1: 60        clrc
14b2: 95 af 03  adc   a,$03af+x
14b5: d5 9f 03  mov   $039f+x,a
14b8: f5 a0 03  mov   a,$03a0+x
14bb: 95 b0 03  adc   a,$03b0+x
14be: d5 a0 03  mov   $03a0+x,a
14c1: 02 0d     set0  $0d
14c3: 9b dc     dec   $dc+x
14c5: d0 09     bne   $14d0
14c7: d5 9f 03  mov   $039f+x,a
14ca: f5 90 03  mov   a,$0390+x
14cd: d5 a0 03  mov   $03a0+x,a
14d0: f4 dd     mov   a,$dd+x
14d2: f0 22     beq   $14f6
14d4: f5 6f 03  mov   a,$036f+x
14d7: 60        clrc
14d8: 95 7f 03  adc   a,$037f+x
14db: d5 6f 03  mov   $036f+x,a
14de: f5 70 03  mov   a,$0370+x
14e1: 95 80 03  adc   a,$0380+x
14e4: d5 70 03  mov   $0370+x,a
14e7: 02 0d     set0  $0d
14e9: 9b dd     dec   $dd+x
14eb: d0 09     bne   $14f6
14ed: d5 6f 03  mov   $036f+x,a
14f0: f5 8f 03  mov   a,$038f+x
14f3: d5 70 03  mov   $0370+x,a
14f6: aa 0d 00  mov1  c,$0001,5
14f9: 90 43     bcc   $153e
14fb: ec 68 03  mov   y,$0368
14fe: f5 a0 03  mov   a,$03a0+x
1501: cf        mul   ya
1502: f5 ef 03  mov   a,$03ef+x
1505: cf        mul   ya
1506: cb 0e     mov   $0e,y
1508: e5 66 03  mov   a,$0366
150b: c4 0d     mov   $0d,a
150d: f5 70 03  mov   a,$0370+x
1510: fd        mov   y,a
1511: f5 6f 03  mov   a,$036f+x
1514: da 0a     movw  $0a,ya
1516: f6 40 15  mov   a,$1540+y
1519: 80        setc
151a: b6 3f 15  sbc   a,$153f+y
151d: eb 0a     mov   y,$0a
151f: cf        mul   ya
1520: dd        mov   a,y
1521: eb 0b     mov   y,$0b
1523: 60        clrc
1524: 96 3f 15  adc   a,$153f+y
1527: eb 0e     mov   y,$0e
1529: cf        mul   ya
152a: e4 0d     mov   a,$0d
152c: 3f 67 13  call  $1367
152f: 03 0d 0c  bbs0  $0d,$153e
1532: ab 0d     inc   $0d
1534: 8d 1e     mov   y,#$1e
1536: e8 00     mov   a,#$00
1538: 9a 0a     subw  ya,$0a
153a: da 0a     movw  $0a,ya
153c: 2f d8     bra   $1516
153e: 6f        ret

153f: db $00,$02,$05,$09,$0f,$15,$1b,$22
1547: db $29,$2f,$35,$3c,$42,$48,$4c,$51
154f: db $55,$59,$5e,$62,$66,$6a,$6e,$71
1557: db $74,$77,$7a,$7c,$7d,$7e,$7f

155e: e8 15     mov   a,#$15
1560: 2d        push  a
1561: e8 5e     mov   a,#$5e
1563: 2d        push  a
1564: 8d 00     mov   y,#$00
1566: f7 ca     mov   a,($ca)+y
1568: f0 27     beq   $1591
156a: 30 0a     bmi   $1576
156c: 68 40     cmp   a,#$40
156e: 90 03     bcc   $1573
1570: 5f 17 17  jmp   $1717

1573: 5f 00 16  jmp   $1600

1576: 68 c8     cmp   a,#$c8
1578: b0 03     bcs   $157d
157a: 5f 3f 17  jmp   $173f

157d: 80        setc
157e: a8 c8     sbc   a,#$c8
1580: 1c        asl   a
1581: fd        mov   y,a
1582: f6 95 15  mov   a,$1595+y
1585: 2d        push  a
1586: f6 94 15  mov   a,$1594+y
1589: 2d        push  a
158a: 8d 00     mov   y,#$00
158c: 3a ca     incw  $ca
158e: f7 ca     mov   a,($ca)+y
1590: 6f        ret

1591: ee        pop   y
1592: ee        pop   y
1593: 6f        ret

1594: dw $1616  ; 
1596: dw $1697  ; 
1598: dw $16ee  ; 
159a: dw $1724  ; 
159c: dw $16d2  ; 
159e: dw $16e8  ; 
15a0: dw $1600  ; 
15a2: dw $164f  ; 
15a4: dw $165f  ; 
15a6: dw $167b  ; 
15a8: dw $1779  ; 
15aa: dw $1816  ; 
15ac: dw $182e  ; 
15ae: dw $1795  ; 
15b0: dw $179b  ; 
15b2: dw $17a2  ; 
15b4: dw $17b9  ; 
15b6: dw $17c7  ; 
15b8: dw $17d6  ; 
15ba: dw $160c  ; 
15bc: dw $1604  ; 
15be: dw $172f  ; 
15c0: dw $1734  ; 
15c2: dw $1739  ; 
15c4: dw $1708  ; 
15c6: dw $170d  ; 
15c8: dw $1712  ; 
15ca: dw $183c  ; 
15cc: dw $1838  ; 
15ce: dw $1612  ; 
15d0: dw $1842  ; 
15d2: dw $1848  ; 
15d4: dw $1628  ; 
15d6: dw $1624  ; 
15d8: dw $1630  ; 
15da: dw $17f3  ; 
15dc: dw $180c  ; 

15de: e4 15     mov   a,$15
15e0: f0 15     beq   $15f7
15e2: d8 16     mov   $16,x
15e4: e5 66 03  mov   a,$0366
15e7: 08 08     or    a,#$08
15e9: c4 f2     mov   $f2,a
15eb: e4 f3     mov   a,$f3
15ed: d0 0b     bne   $15fa
15ef: 6f        ret

15f0: 8f 7c f2  mov   $f2,#$7c
15f3: e4 f3     mov   a,$f3
15f5: 24 15     and   a,$15
15f7: f0 01     beq   $15fa
15f9: 6f        ret

15fa: 1a ca     decw  $ca
15fc: e8 01     mov   a,#$01
15fe: 2f 07     bra   $1607
1600: 3a ca     incw  $ca
1602: 2f 03     bra   $1607
1604: f5 10 04  mov   a,$0410+x
1607: d4 cc     mov   $cc+x,a
1609: ae        pop   a
160a: ae        pop   a
160b: 6f        ret

160c: d5 10 04  mov   $0410+x,a
160f: 3a ca     incw  $ca
1611: 6f        ret

1612: 60        clrc
1613: 95 a0 03  adc   a,$03a0+x
1616: d5 a0 03  mov   $03a0+x,a
1619: dd        mov   a,y
161a: d5 9f 03  mov   $039f+x,a
161d: d4 dc     mov   $dc+x,a
161f: 3a ca     incw  $ca
1621: 02 0d     set0  $0d
1623: 6f        ret

1624: 60        clrc
1625: 95 ff 03  adc   a,$03ff+x
1628: d5 ff 03  mov   $03ff+x,a
162b: 3a ca     incw  $ca
162d: 22 0d     set1  $0d
162f: 6f        ret

1630: d5 00 04  mov   $0400+x,a
1633: 3a ca     incw  $ca
1635: 6f        ret

1636: c4 0a     mov   $0a,a
1638: e4 15     mov   a,$15
163a: e3 0a 0d  bbs7  $0a,$164a
163d: aa ec c0  mov1  c,$181d,4
1640: b0 03     bcs   $1645
1642: b3 0a 05  bbc5  $0a,$164a
1645: 0e 19 00  tset1 $0019
1648: 2f 03     bra   $164d
164a: 4e 19 00  tclr1 $0019
164d: e4 0a     mov   a,$0a
164f: 28 1f     and   a,#$1f
1651: d5 70 03  mov   $0370+x,a
1654: dd        mov   a,y
1655: d5 6f 03  mov   $036f+x,a
1658: d4 dd     mov   $dd+x,a
165a: 3a ca     incw  $ca
165c: 02 0d     set0  $0d
165e: 6f        ret

165f: d4 dc     mov   $dc+x,a
1661: 2d        push  a
1662: 3a ca     incw  $ca
1664: f7 ca     mov   a,($ca)+y
1666: 3a ca     incw  $ca
1668: d5 90 03  mov   $0390+x,a
166b: 80        setc
166c: b5 a0 03  sbc   a,$03a0+x
166f: ce        pop   x
1670: 3f e1 0e  call  $0ee1
1673: d5 af 03  mov   $03af+x,a
1676: dd        mov   a,y
1677: d5 b0 03  mov   $03b0+x,a
167a: 6f        ret

167b: d4 dd     mov   $dd+x,a
167d: 2d        push  a
167e: 3a ca     incw  $ca
1680: f7 ca     mov   a,($ca)+y
1682: 3a ca     incw  $ca
1684: d5 8f 03  mov   $038f+x,a
1687: 80        setc
1688: b5 70 03  sbc   a,$0370+x
168b: ce        pop   x
168c: 3f e1 0e  call  $0ee1
168f: d5 7f 03  mov   $037f+x,a
1692: dd        mov   a,y
1693: d5 80 03  mov   $0380+x,a
1696: 6f        ret

1697: c4 0a     mov   $0a,a
1699: d3 0a 03  bbc6  $0a,$169f
169c: 3f d2 16  call  $16d2
169f: e4 0a     mov   a,$0a
16a1: f3 0a 05  bbc7  $0a,$16a9
16a4: e4 15     mov   a,$15
16a6: 0e 69 03  tset1 $0369
16a9: e4 0a     mov   a,$0a
16ab: 28 3f     and   a,#$3f
16ad: 2d        push  a
16ae: 8d 06     mov   y,#$06
16b0: cf        mul   ya
16b1: da 0e     movw  $0e,ya
16b3: 60        clrc
16b4: 98 80 0e  adc   $0e,#$80
16b7: 98 1a 0f  adc   $0f,#$1a          ; instrument table $1a80
16ba: 8d 04     mov   y,#$04
16bc: f7 0e     mov   a,($0e)+y
16be: d5 01 02  mov   $0201+x,a
16c1: fc        inc   y
16c2: f7 0e     mov   a,($0e)+y
16c4: d5 00 02  mov   $0200+x,a
16c7: e5 66 03  mov   a,$0366
16ca: 08 04     or    a,#$04
16cc: ee        pop   y
16cd: 3a ca     incw  $ca
16cf: 5f 67 13  jmp   $1367

16d2: e4 15     mov   a,$15
16d4: 0e 6b 03  tset1 $036b
16d7: 6f        ret

16d8: e8 84     mov   a,#$84
16da: 8d 18     mov   y,#$18
16dc: da ca     movw  $ca,ya
16de: e8 01     mov   a,#$01
16e0: d5 00 04  mov   $0400+x,a
16e3: bc        inc   a
16e4: d4 cc     mov   $cc+x,a
16e6: ae        pop   a
16e7: ae        pop   a
16e8: e4 15     mov   a,$15
16ea: 0e 6a 03  tset1 $036a
16ed: 6f        ret

16ee: fd        mov   y,a
16ef: e5 66 03  mov   a,$0366
16f2: 08 05     or    a,#$05
16f4: 3f 67 13  call  $1367
16f7: 3a ca     incw  $ca
16f9: 8d 00     mov   y,#$00
16fb: f7 ca     mov   a,($ca)+y
16fd: fd        mov   y,a
16fe: e5 66 03  mov   a,$0366
1701: 08 06     or    a,#$06
1703: 3a ca     incw  $ca
1705: 5f 67 13  jmp   $1367

1708: f5 2f 04  mov   a,$042f+x
170b: 2f 19     bra   $1726
170d: f5 30 04  mov   a,$0430+x
1710: 2f 14     bra   $1726
1712: f5 3f 04  mov   a,$043f+x
1715: 2f 0f     bra   $1726
1717: fd        mov   y,a
1718: 28 0f     and   a,#$0f
171a: c4 0a     mov   $0a,a
171c: dd        mov   a,y
171d: 28 70     and   a,#$70
171f: 1c        asl   a
1720: 04 0a     or    a,$0a
1722: 08 10     or    a,#$10
1724: 3a ca     incw  $ca
1726: fd        mov   y,a
1727: e5 66 03  mov   a,$0366
172a: 08 07     or    a,#$07
172c: 5f 67 13  jmp   $1367

172f: d5 2f 04  mov   $042f+x,a
1732: 2f 08     bra   $173c
1734: d5 30 04  mov   $0430+x,a
1737: 2f 03     bra   $173c
1739: d5 3f 04  mov   $043f+x,a
173c: 3a ca     incw  $ca
173e: 6f        ret

173f: d5 c0 03  mov   $03c0+x,a
1742: dd        mov   a,y
1743: d5 bf 03  mov   $03bf+x,a
1746: d4 cd     mov   $cd+x,a
1748: 3a ca     incw  $ca
174a: f5 b0 04  mov   a,$04b0+x
174d: f0 12     beq   $1761
174f: c4 0e     mov   $0e,a
1751: ba ca     movw  ya,$ca
1753: d5 9f 04  mov   $049f+x,a
1756: dd        mov   a,y
1757: d5 a0 04  mov   $04a0+x,a
175a: eb 0e     mov   y,$0e
175c: f5 af 04  mov   a,$04af+x
175f: da ca     movw  $ca,ya
1761: e5 69 03  mov   a,$0369
1764: 24 15     and   a,$15
1766: f0 0e     beq   $1776
1768: f5 c0 03  mov   a,$03c0+x
176b: 68 a0     cmp   a,#$a0
176d: 90 07     bcc   $1776
176f: e4 15     mov   a,$15
1771: 4e 69 03  tclr1 $0369
1774: 2f 02     bra   $1778
1776: 22 0d     set1  $0d
1778: 6f        ret

1779: d4 cd     mov   $cd+x,a
177b: 2d        push  a
177c: 3a ca     incw  $ca
177e: f7 ca     mov   a,($ca)+y
1780: 3a ca     incw  $ca
1782: d5 df 03  mov   $03df+x,a
1785: 80        setc
1786: b5 c0 03  sbc   a,$03c0+x
1789: ce        pop   x
178a: 3f e1 0e  call  $0ee1
178d: d5 cf 03  mov   $03cf+x,a
1790: dd        mov   a,y
1791: d5 d0 03  mov   $03d0+x,a
1794: 6f        ret

1795: d5 40 04  mov   $0440+x,a
1798: dd        mov   a,y
1799: 2f 0c     bra   $17a7
179b: d5 4f 04  mov   $044f+x,a
179e: e8 10     mov   a,#$10
17a0: 2f 05     bra   $17a7
17a2: d5 50 04  mov   $0450+x,a
17a5: e8 20     mov   a,#$20
17a7: 60        clrc
17a8: 84 16     adc   a,$16
17aa: 5d        mov   x,a
17ab: 3a ca     incw  $ca
17ad: ba ca     movw  ya,$ca
17af: d5 5f 04  mov   $045f+x,a
17b2: dd        mov   a,y
17b3: d5 60 04  mov   $0460+x,a
17b6: f8 16     mov   x,$16
17b8: 6f        ret

17b9: f5 40 04  mov   a,$0440+x
17bc: f0 06     beq   $17c4
17be: 9c        dec   a
17bf: d5 40 04  mov   $0440+x,a
17c2: f0 2e     beq   $17f2
17c4: dd        mov   a,y
17c5: 2f 1c     bra   $17e3
17c7: f5 4f 04  mov   a,$044f+x
17ca: f0 06     beq   $17d2
17cc: 9c        dec   a
17cd: d5 4f 04  mov   $044f+x,a
17d0: f0 20     beq   $17f2
17d2: e8 10     mov   a,#$10
17d4: 2f 0d     bra   $17e3
17d6: f5 50 04  mov   a,$0450+x
17d9: f0 06     beq   $17e1
17db: 9c        dec   a
17dc: d5 50 04  mov   $0450+x,a
17df: f0 11     beq   $17f2
17e1: e8 20     mov   a,#$20
17e3: 60        clrc
17e4: 84 16     adc   a,$16
17e6: 5d        mov   x,a
17e7: f5 60 04  mov   a,$0460+x
17ea: fd        mov   y,a
17eb: f5 5f 04  mov   a,$045f+x
17ee: da ca     movw  $ca,ya
17f0: f8 16     mov   x,$16
17f2: 6f        ret

17f3: f0 11     beq   $1806
17f5: 9c        dec   a
17f6: 1c        asl   a
17f7: fd        mov   y,a
17f8: f6 20 c4  mov   a,$c420+y
17fb: d5 af 04  mov   $04af+x,a
17fe: f6 21 c4  mov   a,$c421+y
1801: d5 b0 04  mov   $04b0+x,a
1804: 2f 03     bra   $1809
1806: d5 b0 04  mov   $04b0+x,a
1809: 3a ca     incw  $ca
180b: 6f        ret

180c: f5 a0 04  mov   a,$04a0+x
180f: fd        mov   y,a
1810: f5 9f 04  mov   a,$049f+x
1813: da ca     movw  $ca,ya
1815: 6f        ret

1816: c4 0e     mov   $0e,a
1818: 3a ca     incw  $ca
181a: f7 ca     mov   a,($ca)+y
181c: c4 0f     mov   $0f,a
181e: 3a ca     incw  $ca
1820: ba ca     movw  ya,$ca
1822: d5 8f 04  mov   $048f+x,a
1825: dd        mov   a,y
1826: d5 90 04  mov   $0490+x,a
1829: ba 0e     movw  ya,$0e
182b: da ca     movw  $ca,ya
182d: 6f        ret

182e: f5 90 04  mov   a,$0490+x
1831: fd        mov   y,a
1832: f5 8f 04  mov   a,$048f+x
1835: da ca     movw  $ca,ya
1837: 6f        ret

1838: 60        clrc
1839: 95 f0 03  adc   a,$03f0+x
183c: d5 f0 03  mov   $03f0+x,a
183f: 3a ca     incw  $ca
1841: 6f        ret

1842: d5 0f 04  mov   $040f+x,a
1845: 3a ca     incw  $ca
1847: 6f        ret

1848: c4 10     mov   $10,a
184a: 3a ca     incw  $ca
184c: f7 ca     mov   a,($ca)+y
184e: 3a ca     incw  $ca
1850: c4 11     mov   $11,a
1852: f7 ca     mov   a,($ca)+y
1854: 3a ca     incw  $ca
1856: fd        mov   y,a
1857: 28 07     and   a,#$07
1859: 1c        asl   a
185a: c4 0b     mov   $0b,a
185c: dd        mov   a,y
185d: 28 f8     and   a,#$f8
185f: c4 0a     mov   $0a,a
1861: 5f b4 12  jmp   $12b4

1864: 8d 01     mov   y,#$01
1866: cd 00     mov   x,#$00
1868: 2f 04     bra   $186e
186a: 8d 08     mov   y,#$08
186c: cd 00     mov   x,#$00
186e: e8 01     mov   a,#$01
1870: d4 cc     mov   $cc+x,a
1872: e8 83     mov   a,#$83
1874: d5 1f 04  mov   $041f+x,a
1877: e8 18     mov   a,#$18
1879: d5 20 04  mov   $0420+x,a
187c: 3d        inc   x
187d: 3d        inc   x
187e: fe ee     dbnz  y,$186e
1880: f8 16     mov   x,$16
1882: 6f        ret

1883: ef        sleep
1884: 00        nop

1885: 64 04     cmp   a,$04
1887: f0 08     beq   $1891
1889: 68 e0     cmp   a,#$e0
188b: b0 30     bcs   $18bd
188d: 68 c0     cmp   a,#$c0
188f: b0 01     bcs   $1892
1891: 6f        ret

1892: 28 03     and   a,#$03
1894: 64 23     cmp   a,$23
1896: f0 24     beq   $18bc
1898: 68 03     cmp   a,#$03
189a: d0 0d     bne   $18a9
189c: e5 30 d3  mov   a,$d330
189f: d0 1b     bne   $18bc
18a1: e5 31 d3  mov   a,$d331
18a4: bc        inc   a
18a5: d0 15     bne   $18bc
18a7: e8 03     mov   a,#$03
18a9: c4 23     mov   $23,a
18ab: e8 00     mov   a,#$00
18ad: c5 65 03  mov   $0365,a
18b0: c4 c6     mov   $c6,a
18b2: c4 c4     mov   $c4,a
18b4: 9c        dec   a
18b5: c4 c8     mov   $c8,a
18b7: e8 32     mov   a,#$32
18b9: 4e ec 00  tclr1 $00ec
18bc: 6f        ret

18bd: 28 1f     and   a,#$1f
18bf: fd        mov   y,a
18c0: 1c        asl   a
18c1: 5d        mov   x,a
18c2: 1f c5 18  jmp   ($18c5+x)

18c5: dw $1914  ; 
18c7: dw $1914  ; 
18c9: dw $1914  ; 
18cb: dw $1914  ; 
18cd: dw $1914  ; 
18cf: dw $1914  ; 
18d1: dw $1914  ; 
18d3: dw $1914  ; 
18d5: dw $1906  ; 
18d7: dw $1906  ; 
18d9: dw $1906  ; 
18db: dw $1906  ; 
18dd: dw $1906  ; 
18df: dw $1906  ; 
18e1: dw $1906  ; 
18e3: dw $1906  ; 
18e5: dw $1936  ; 
18e7: dw $1964  ; 
18e9: dw $1905  ; 
18eb: dw $1905  ; 
18ed: dw $1905  ; 
18ef: dw $1905  ; 
18f1: dw $1905  ; 
18f3: dw $1905  ; 
18f5: dw $1905  ; 
18f7: dw $1905  ; 
18f9: dw $1864  ; 
18fb: dw $186a  ; 
18fd: dw $ffa8  ; 
18ff: dw $ff5e  ; 
1901: dw $ff55  ; 
1903: dw $0700  ; 

1905: 6f        ret

1906: 92 ec     clr4  $ec
1908: a2 ec     set5  $ec
190a: fc        inc   y
190b: e8 20     mov   a,#$20
190d: cf        mul   ya
190e: 9c        dec   a
190f: 5d        mov   x,a
1910: e8 ff     mov   a,#$ff
1912: 2f 0c     bra   $1920
1914: b2 ec     clr5  $ec
1916: 82 ec     set4  $ec
1918: fc        inc   y
1919: e8 20     mov   a,#$20
191b: cf        mul   ya
191c: 9c        dec   a
191d: 5d        mov   x,a
191e: e8 0a     mov   a,#$0a
1920: d8 c6     mov   $c6,x
1922: c5 63 03  mov   $0363,a
1925: 8f 00 c7  mov   $c7,#$00
1928: 80        setc
1929: a4 c8     sbc   a,$c8
192b: 3f e1 0e  call  $0ee1
192e: c5 61 03  mov   $0361,a
1931: dd        mov   a,y
1932: c5 62 03  mov   $0362,a
1935: 6f        ret

1936: 3f e1 19  call  $19e1
1939: 3f 52 19  call  $1952
193c: 3f f0 19  call  $19f0
193f: 3f 52 19  call  $1952
1942: 3f f9 19  call  $19f9
1945: 3f 52 19  call  $1952
1948: 3f 02 1a  call  $1a02
194b: e8 01     mov   a,#$01
194d: c4 ed     mov   $ed,a
194f: 9c        dec   a
1950: c4 23     mov   $23,a
1952: 8d 00     mov   y,#$00
1954: f7 10     mov   a,($10)+y
1956: d7 0e     mov   ($0e)+y,a
1958: fc        inc   y
1959: 1d        dec   x
195a: d0 f8     bne   $1954
195c: dd        mov   a,y
195d: 8d 00     mov   y,#$00
195f: 7a 0e     addw  ya,$0e
1961: da 0e     movw  $0e,ya
1963: 6f        ret

1964: e4 ed     mov   a,$ed
1966: f0 78     beq   $19e0
1968: 3f e1 19  call  $19e1
196b: 3f cf 19  call  $19cf
196e: 3f f0 19  call  $19f0
1971: 3f cf 19  call  $19cf
1974: 3f f9 19  call  $19f9
1977: 3f cf 19  call  $19cf
197a: 3f 02 1a  call  $1a02
197d: 3f cf 19  call  $19cf
1980: 8f 00 15  mov   $15,#$00
1983: cd 0e     mov   x,#$0e
1985: f5 00 04  mov   a,$0400+x
1988: d0 12     bne   $199c
198a: f5 21 02  mov   a,$0221+x
198d: 3f 96 0c  call  $0c96
1990: e5 66 03  mov   a,$0366
1993: 08 07     or    a,#$07
1995: fd        mov   y,a
1996: f5 51 03  mov   a,$0351+x
1999: 3f 84 08  call  $0884
199c: 1d        dec   x
199d: 1d        dec   x
199e: 10 e5     bpl   $1985
19a0: e8 5c     mov   a,#$5c
19a2: c5 f2 00  mov   $00f2,a
19a5: e4 14     mov   a,$14
19a7: 48 ff     eor   a,#$ff
19a9: c5 f3 00  mov   $00f3,a
19ac: 4e 19 00  tclr1 $0019
19af: 4e 18 00  tclr1 $0018
19b2: 4e 69 03  tclr1 $0369
19b5: c4 0a     mov   $0a,a
19b7: 25 6d 03  and   a,$036d
19ba: 0e 19 00  tset1 $0019
19bd: e4 0a     mov   a,$0a
19bf: 25 6e 03  and   a,$036e
19c2: 0e 18 00  tset1 $0018
19c5: e8 00     mov   a,#$00
19c7: c4 c8     mov   $c8,a
19c9: c4 ed     mov   $ed,a
19cb: fd        mov   y,a
19cc: 5f 06 19  jmp   $1906

19cf: 8d 00     mov   y,#$00
19d1: f7 0e     mov   a,($0e)+y
19d3: d7 10     mov   ($10)+y,a
19d5: fc        inc   y
19d6: 1d        dec   x
19d7: d0 f8     bne   $19d1
19d9: dd        mov   a,y
19da: 8d 00     mov   y,#$00
19dc: 7a 0e     addw  ya,$0e
19de: da 0e     movw  $0e,ya
19e0: 6f        ret

19e1: 8f cf 0e  mov   $0e,#$cf
19e4: 8f 04 0f  mov   $0f,#$04
19e7: 8f 20 10  mov   $10,#$20
19ea: 8f 00 11  mov   $11,#$00
19ed: cd a6     mov   x,#$a6
19ef: 6f        ret

19f0: 8f 70 10  mov   $10,#$70
19f3: 8f 01 11  mov   $11,#$01
19f6: cd 30     mov   x,#$30
19f8: 6f        ret

19f9: 8f 10 10  mov   $10,#$10
19fc: 8f 02 11  mov   $11,#$02
19ff: cd d0     mov   x,#$d0
1a01: 6f        ret

1a02: 8f e0 10  mov   $10,#$e0
1a05: 8f 02 11  mov   $11,#$02
1a08: cd 86     mov   x,#$86
1a0a: 6f        ret

; echo FIR presets
ff00: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
ff08: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
ff10: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
ff18: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; note dur%'s
ff20: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
ff28: db $19,$32,$4c,$65,$72,$7f,$8c,$98
ff30: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc

; pan table
ff38: db $00,$01,$03,$07,$0d,$15,$1e,$29
ff40: db $34,$42,$51,$5e,$67,$6e,$73,$77
ff48: db $7a,$7c,$7d,$7e,$7f
