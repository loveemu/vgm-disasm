; Kirby Super Star SPC - loveemu labo
; Disassembler: spcdas v0.01
; Kirby's Dream Land 3 uses the same engine (diff 9 bytes).
; Kirby no Kira Kira Kids is almost identical.
; 
; The game was also released as:
; * Hoshi no Kirby Super Deluxe (J)
;
; Main ASM for research of modern N-SPC.

0700: 20        clrp
0701: cd ff     mov   x,#$ff
0703: bd        mov   sp,x              ; set SP to (01)FF
0704: e8 00     mov   a,#$00
0706: 5d        mov   x,a
0707: af        mov   (x)+,a
0708: c8 e8     cmp   x,#$e8
070a: d0 fb     bne   $0707             ; zero 00-E7
070c: bc        inc   a
070d: 3f cf 0c  call  $0ccf             ; set echo delay to 1 (16ms)
0710: a2 39     set5  $39
0712: 8f 0c f2  mov   $f2,#$0c
0715: 8f 7f f3  mov   $f3,#$7f          ; master vol L = $7F
0718: 8f 1c f2  mov   $f2,#$1c
071b: 8f 7f f3  mov   $f3,#$7f          ; master vol R = $7F
071e: 8f 5d f2  mov   $f2,#$5d
0721: 8f 03 f3  mov   $f3,#$03          ; source dir = $0300
0724: e8 f0     mov   a,#$f0
0726: c4 f1     mov   $f1,a             ; reset ports, disable timers
0728: e8 10     mov   a,#$10
072a: c4 fa     mov   $fa,a             ; set timer0 latch to #$10 (500 Hz, 2ms)
072c: c4 43     mov   $43,a
072e: e8 01     mov   a,#$01
0730: c4 f1     mov   $f1,a             ; start timer0
; main loop
0732: fa 02 f6  mov   ($f6),($02)
0735: fa f6 02  mov   ($02),($f6)
0738: fa 03 f7  mov   ($f7),($03)
073b: fa f7 03  mov   ($03),($f7)
073e: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
0740: ad 05     cmp   y,#$05
0742: f0 07     beq   $074b
0744: b0 08     bcs   $074e
0746: 69 3e 3d  cmp   ($3d),($3e)
0749: d0 0f     bne   $075a
074b: e3 3d 0c  bbs7  $3d,$075a
074e: f6 a0 10  mov   a,$10a0+y
0751: c4 f2     mov   $f2,a
0753: f6 aa 10  mov   a,$10aa+y
0756: 5d        mov   x,a
0757: e6        mov   a,(x)
0758: c4 f3     mov   $f3,a             ; write to DSP reg
075a: fe e4     dbnz  y,$0740           ; loop for each reg
075c: cb 36     mov   $36,y
075e: cb 37     mov   $37,y
0760: eb fd     mov   y,$fd
0762: f0 fc     beq   $0760             ; wait for counter0 increment
0764: 6d        push  y
0765: e8 20     mov   a,#$20
0767: cf        mul   ya
0768: 60        clrc
0769: 84 19     adc   a,$19
076b: c4 19     mov   $19,a
076d: 90 18     bcc   $0787
076f: 3f c8 0f  call  $0fc8
0772: fa 05 f5  mov   ($f5),($05)
0775: eb f5     mov   y,$f5
0777: dd        mov   a,y
0778: 28 7f     and   a,#$7f
077a: 68 72     cmp   a,#$72
077c: b0 02     bcs   $0780
077e: cb 01     mov   $01,y
0780: 69 3e 3d  cmp   ($3d),($3e)
0783: f0 02     beq   $0787
0785: ab 3d     inc   $3d
0787: e4 43     mov   a,$43             ; tempo
0789: ee        pop   y
078a: cf        mul   ya
078b: 60        clrc
078c: 84 41     adc   a,$41
078e: c4 41     mov   $41,a             ; update tempo counter
0790: b0 18     bcs   $07aa             ; tick
0792: e4 04     mov   a,$04
0794: f0 9c     beq   $0732
0796: cd 00     mov   x,#$00
0798: 8f 01 38  mov   $38,#$01          ; first voice
079b: f4 21     mov   a,$21+x
079d: f0 03     beq   $07a2             ; skip call if vptr == 0
079f: 3f 25 0f  call  $0f25             ; do per-voice fades/dsps
07a2: 3d        inc   x
07a3: 3d        inc   x
07a4: 0b 38     asl   $38
07a6: d0 f3     bne   $079b             ; loop for each voice
07a8: 2f 88     bra   $0732             ; restart main loop
; 
07aa: 3f 1d 09  call  $091d
07ad: fa 04 f4  mov   ($f4),($04)
07b0: e4 f4     mov   a,$f4
07b2: f0 10     beq   $07c4
07b4: 68 ff     cmp   a,#$ff
07b6: f0 10     beq   $07c8
07b8: 68 fd     cmp   a,#$fd
07ba: b0 08     bcs   $07c4
07bc: 68 72     cmp   a,#$72
07be: f0 04     beq   $07c4
07c0: 68 73     cmp   a,#$73
07c2: d0 02     bne   $07c6
07c4: c4 00     mov   $00,a
07c6: 2f e0     bra   $07a8
07c8: 78 fe f5  cmp   $f5,#$fe
07cb: d0 f9     bne   $07c6
07cd: 78 00 f6  cmp   $f6,#$00
07d0: d0 f4     bne   $07c6
07d2: 78 78 f7  cmp   $f7,#$78
07d5: d0 ef     bne   $07c6
07d7: 2f eb     bra   $07c4
; handle a note vcmd (80-df)
07d9: 68 ca     cmp   a,#$ca
07db: 90 07     bcc   $07e4
; vcmds ca-df - percussion note
07dd: a8 9e     sbc   a,#$9e            ; ca-df => 2c-41
07df: 3f 11 0b  call  $0b11             ; set sample A
07e2: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
07e4: ad c8     cmp   y,#$c8
07e6: b0 06     bcs   $07ee             ; skip if tie/rest
07e8: e4 17     mov   a,$17
07ea: 24 38     and   a,$38
07ec: f0 01     beq   $07ef
07ee: 6f        ret
; vcmds 80-c7 - note (note number in Y)
07ef: dd        mov   a,y
07f0: 28 7f     and   a,#$7f            ; 80-c7 => 00-47
07f2: 60        clrc
07f3: 84 40     adc   a,$40             ; add global transpose
07f5: 60        clrc
07f6: 95 01 01  adc   a,$0101+x         ; add per-voice transpose
07f9: d4 91     mov   $91+x,a           ; save note number (integer)
07fb: f5 c1 02  mov   a,$02c1+x
07fe: d4 90     mov   $90+x,a           ; save note number (fraction)
0800: f5 21 01  mov   a,$0121+x
0803: 5c        lsr   a
0804: e8 00     mov   a,#$00
0806: 7c        ror   a
0807: d5 f0 02  mov   $02f0+x,a
080a: e8 00     mov   a,#$00
080c: d4 a0     mov   $a0+x,a
080e: d4 c0     mov   $c0+x,a
0810: d5 10 01  mov   $0110+x,a
0813: d4 b0     mov   $b0+x,a
0815: 09 38 4e  or    ($4e),($38)       ; set volume changed flg
0818: 09 38 36  or    ($36),($38)       ; set key on shadow bit
081b: f5 d0 02  mov   a,$02d0+x         ; pitch envelope counter
081e: d4 80     mov   $80+x,a           ; portamento counter
0820: f0 1b     beq   $083d
0822: f5 d1 02  mov   a,$02d1+x
0825: d4 81     mov   $81+x,a
0827: f5 e0 02  mov   a,$02e0+x         ; pitch envelope mode (0:attack / 1:release)
082a: d0 08     bne   $0834
082c: f4 91     mov   a,$91+x
082e: 80        setc
082f: b5 e1 02  sbc   a,$02e1+x
0832: d4 91     mov   $91+x,a
0834: f5 e1 02  mov   a,$02e1+x
0837: 60        clrc
; set DSP pitch from $1c/d (note number fraction/integer)
0838: 94 91     adc   a,$91+x
083a: 3f 31 0d  call  $0d31
083d: 3f 48 0d  call  $0d48
0840: 8d 00     mov   y,#$00
0842: e4 1d     mov   a,$1d
0844: 80        setc
0845: a8 34     sbc   a,#$34
0847: b0 09     bcs   $0852
0849: e4 1d     mov   a,$1d
084b: 80        setc
084c: a8 13     sbc   a,#$13
084e: b0 06     bcs   $0856
0850: dc        dec   y
0851: 1c        asl   a
0852: 7a 1c     addw  ya,$1c
0854: da 1c     movw  $1c,ya            ; note number (fraction)
0856: 4d        push  x
0857: e4 1d     mov   a,$1d             ; note number (integer)
; get pitch from note number
0859: 1c        asl   a
085a: 8d 00     mov   y,#$00
085c: cd 18     mov   x,#$18
085e: 9e        div   ya,x              ; y = (note_number % 12) * 2
085f: 5d        mov   x,a               ; save octave
0860: f6 b6 10  mov   a,$10b6+y
0863: c4 11     mov   $11,a
0865: f6 b5 10  mov   a,$10b5+y
0868: c4 10     mov   $10,a             ; set $10/1 from pitch table
086a: f6 b8 10  mov   a,$10b8+y
086d: 2d        push  a
086e: f6 b7 10  mov   a,$10b7+y
0871: ee        pop   y
0872: 9a 10     subw  ya,$10
0874: eb 1c     mov   y,$1c
0876: cf        mul   ya                ; linear interpolation for sub-note
0877: dd        mov   a,y
0878: 8d 00     mov   y,#$00
087a: 7a 10     addw  ya,$10
087c: cb 11     mov   $11,y
087e: 1c        asl   a
087f: 2b 11     rol   $11
0881: c4 10     mov   $10,a
0883: 2f 04     bra   $0889
; octave correction
0885: 4b 11     lsr   $11
0887: 7c        ror   a
0888: 3d        inc   x
0889: c8 06     cmp   x,#$06
088b: d0 f8     bne   $0885
088d: c4 10     mov   $10,a             ; write the pitch back
088f: ce        pop   x                 ; restore channel #
; apply instrument-specific pitch multiplier
0890: f5 20 02  mov   a,$0220+x
0893: eb 11     mov   y,$11
0895: cf        mul   ya
0896: da 12     movw  $12,ya
0898: f5 20 02  mov   a,$0220+x
089b: eb 10     mov   y,$10
089d: cf        mul   ya
089e: 6d        push  y
089f: f5 21 02  mov   a,$0221+x
08a2: eb 10     mov   y,$10
08a4: cf        mul   ya
08a5: 7a 12     addw  ya,$12
08a7: da 12     movw  $12,ya
08a9: f5 21 02  mov   a,$0221+x
08ac: eb 11     mov   y,$11
08ae: cf        mul   ya
08af: fd        mov   y,a
08b0: ae        pop   a
08b1: 7a 12     addw  ya,$12
08b3: da 12     movw  $12,ya            ; multiplied pitch frequency
; write the final pitch to DSP
08b5: 7d        mov   a,x               ; set voice X pitch DSP reg from $12/3
08b6: 9f        xcn   a                 ;  (if vbit clear in $17)
08b7: 5c        lsr   a
08b8: 08 02     or    a,#$02
08ba: fd        mov   y,a               ; Y = voice X pitch DSP reg
08bb: e4 12     mov   a,$12             ; write $12 to P(L)
08bd: 3f c3 08  call  $08c3
08c0: fc        inc   y
08c1: e4 13     mov   a,$13             ; write $13 to P(R) as well
; write A to DSP reg Y if vbit clear in $17
08c3: 2d        push  a
08c4: e4 38     mov   a,$38
08c6: 24 17     and   a,$17
08c8: ae        pop   a
08c9: d0 04     bne   $08cf
; write A to DSP reg Y
08cb: cb f2     mov   $f2,y
08cd: c4 f3     mov   $f3,a
08cf: 6f        ret

; read $30/1 into YA with advancing the ptr
08d0: 8d 00     mov   y,#$00
08d2: f7 30     mov   a,($30)+y
08d4: 3a 30     incw  $30
08d6: 2d        push  a
08d7: f7 30     mov   a,($30)+y
08d9: 3a 30     incw  $30
08db: fd        mov   y,a
08dc: ae        pop   a
08dd: 6f        ret

; play song in A (zero for pause)
08de: c4 04     mov   $04,a
08e0: f0 0e     beq   $08f0             ; 0 = pause
08e2: 1c        asl   a
08e3: 5d        mov   x,a
08e4: f5 ff 38  mov   a,$38ff+x
08e7: fd        mov   y,a
08e8: f5 fe 38  mov   a,$38fe+x
08eb: da 30     movw  $30,ya
08ed: 8f 02 0c  mov   $0c,#$02
08f0: e4 17     mov   a,$17
08f2: 48 ff     eor   a,#$ff
08f4: 0e 37 00  tset1 $0037
08f7: 6f        ret

; reset song params
08f8: cd 0e     mov   x,#$0e
08fa: 8f 80 38  mov   $38,#$80          ; last voice
08fd: 3f 5f 0b  call  $0b5f             ; reset voice params
0900: 1d        dec   x
0901: 1d        dec   x
0902: 4b 38     lsr   $38
0904: d0 f7     bne   $08fd             ; loop for each voice
0906: c4 4a     mov   $4a,a             ; zero master vol fade counter
0908: c4 58     mov   $58,a             ; zero echo vol fade counter
090a: c4 44     mov   $44,a             ; zero tempo fade counter
090c: c4 40     mov   $40,a             ; zero global transpose
090e: c4 18     mov   $18,a             ; zero block repeat count
0910: c4 1f     mov   $1f,a             ; 
0912: fd        mov   y,a
0913: 3f a6 0c  call  $0ca6             ; disable echo
0916: 8f c0 49  mov   $49,#$c0          ; master vol
0919: 8f 20 43  mov   $43,#$20          ; tempo
091c: 6f        ret

091d: eb 08     mov   y,$08
091f: e4 00     mov   a,$00
0921: 68 fd     cmp   a,#$fd
0923: f0 11     beq   $0936
0925: 68 fe     cmp   a,#$fe
0927: f0 c7     beq   $08f0
0929: 68 ff     cmp   a,#$ff
092b: d0 03     bne   $0930
092d: 5f 3a 10  jmp   $103a

0930: c4 08     mov   $08,a
0932: 7e 00     cmp   y,$00
0934: d0 a8     bne   $08de
0936: e4 04     mov   a,$04
0938: f0 e2     beq   $091c
093a: e4 0c     mov   a,$0c
093c: f0 64     beq   $09a2
;
093e: 6e 0c b7  dbnz  $0c,$08f8
0941: 3f d0 08  call  $08d0             ; read block addr from $30/1, advance ptr
0944: d0 14     bne   $095a             ; load start addresses, if hi-byte is non zero
0946: fd        mov   y,a               ; refetch lo-byte
0947: f0 95     beq   $08de             ; key off, return if also zero
0949: 8b 18     dec   $18
094b: 10 02     bpl   $094f
094d: c4 18     mov   $18,a
094f: 3f d0 08  call  $08d0             ; read next word as well
0952: f8 18     mov   x,$18
0954: f0 eb     beq   $0941
0956: da 30     movw  $30,ya            ;   "goto" that address
0958: 2f e7     bra   $0941             ; continue
; load start addresses - hi-byte not zero
095a: da 12     movw  $12,ya
095c: 8d 00     mov   y,#$00
095e: 8f 01 38  mov   $38,#$01          ; first voice
0961: e4 32     mov   a,$32
0963: 24 38     and   a,$38
0965: d0 0d     bne   $0974             ; if voice is inactive
0967: f7 12     mov   a,($12)+y         ; offset +0
0969: d6 20 00  mov   $0020+y,a
096c: fc        inc   y
096d: f7 12     mov   a,($12)+y         ; offset +1
096f: d6 20 00  mov   $0020+y,a         ; set reading ptr
0972: 2f 01     bra   $0975
0974: fc        inc   y
0975: fc        inc   y
0976: 0b 38     asl   $38
0978: d0 e7     bne   $0961             ; loop for each voice
;
097a: cd 00     mov   x,#$00
097c: 8f 01 38  mov   $38,#$01          ; first voice
097f: e4 32     mov   a,$32
0981: 24 38     and   a,$38
0983: d0 17     bne   $099c             ; next if voice is active
0985: f4 21     mov   a,$21+x
0987: f0 08     beq   $0991             ; if vptr hi != 0
0989: f5 11 02  mov   a,$0211+x
098c: d0 03     bne   $0991
098e: 3f 11 0b  call  $0b11             ; set instrument #0 if not set
0991: e8 00     mov   a,#$00
0993: d4 c1     mov   $c1+x,a           ; zero subroutine repeat counter
0995: d4 70     mov   $70+x,a           ; zero voice vol fade counter
0997: d4 71     mov   $71+x,a           ; zero pan fade counter
0999: bc        inc   a
099a: d4 60     mov   $60+x,a           ; set duration counter to 1
099c: 3d        inc   x
099d: 3d        inc   x
099e: 0b 38     asl   $38               ; next voice
09a0: d0 dd     bne   $097f             ; foreach voice
;
09a2: cd 00     mov   x,#$00
09a4: d8 4e     mov   $4e,x
09a6: 8f 01 38  mov   $38,#$01          ; first voice
09a9: d8 35     mov   $35,x
09ab: f4 21     mov   a,$21+x
09ad: f0 3c     beq   $09eb             ; next if vptr hi zero
09af: 9b 60     dec   $60+x             ; dec duration counter
09b1: d0 7a     bne   $0a2d             ; if not zero, skip to voice readahead
09b3: 3f b6 0a  call  $0ab6             ; read vcmd into A and Y
09b6: d0 35     bne   $09ed
; vcmd 00 - end repeat/return
09b8: f4 c1     mov   a,$c1+x
09ba: d0 1a     bne   $09d6             ; do loop if repeat count is left
; end of block
09bc: e4 32     mov   a,$32
09be: 24 38     and   a,$38
09c0: f0 96     beq   $0958             ; do nothing if voice is inactive
09c2: e8 00     mov   a,#$00
09c4: d5 20 00  mov   $0020+x,a
09c7: d5 21 00  mov   $0021+x,a         ; zero reading ptr
09ca: c4 05     mov   $05,a
09cc: e4 38     mov   a,$38
09ce: 0e 37 00  tset1 $0037
09d1: 4e 32 00  tclr1 $0032             ; inactivate voice
09d4: 2f 15     bra   $09eb
; repeat / return from subroutine
09d6: 3f 67 0c  call  $0c67             ; jump to loop start addr
09d9: 9b c1     dec   $c1+x             ; dec repeat count
09db: d0 d6     bne   $09b3             ; if the loop has been done
09dd: f5 30 02  mov   a,$0230+x
09e0: d4 20     mov   $20+x,a
09e2: f5 31 02  mov   a,$0231+x
09e5: d4 21     mov   $21+x,a           ; back to return addr instead
09e7: 2f ca     bra   $09b3             ; then continue
;
09e9: 2f be     bra   $09a9
09eb: 2f 46     bra   $0a33
; vcmd branches
09ed: 30 20     bmi   $0a0f             ; vcmds 01-7f - note info:
09ef: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
09f2: 3f b6 0a  call  $0ab6             ;   read next byte
09f5: 30 18     bmi   $0a0f             ;   if note note then
09f7: 2d        push  a
09f8: 9f        xcn   a
09f9: 28 07     and   a,#$07
09fb: fd        mov   y,a
09fc: f6 cf 10  mov   a,$10cf+y
09ff: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
0a02: ae        pop   a
0a03: 28 0f     and   a,#$0f
0a05: fd        mov   y,a
0a06: f6 d7 10  mov   a,$10d7+y
0a09: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
0a0c: 3f b6 0a  call  $0ab6             ;   read vcmd into A and Y
; vcmd branches 80-ff
0a0f: 68 e0     cmp   a,#$e0
0a11: 90 05     bcc   $0a18
0a13: 3f a4 0a  call  $0aa4             ; vcmds e0-ff
0a16: 2f 9b     bra   $09b3
; vcmds 80-df - note
0a18: 3f d9 07  call  $07d9             ; handle note cmd if vbit $17 clear
0a1b: f5 00 02  mov   a,$0200+x
0a1e: d4 60     mov   $60+x,a           ; set duration counter from duration
0a20: fd        mov   y,a
0a21: f5 01 02  mov   a,$0201+x
0a24: cf        mul   ya
0a25: dd        mov   a,y
0a26: d0 01     bne   $0a29
0a28: bc        inc   a
0a29: d4 61     mov   $61+x,a           ; set actual key-off dur counter
0a2b: 2f 03     bra   $0a30
0a2d: 3f 3d 0e  call  $0e3d             ; do readahead
0a30: 3f 11 0d  call  $0d11
0a33: 3d        inc   x
0a34: 3d        inc   x
0a35: 0b 38     asl   $38
0a37: d0 b0     bne   $09e9             ; next voice
0a39: e4 44     mov   a,$44             ; tempo fade counter
0a3b: f0 0b     beq   $0a48
0a3d: ba 46     movw  ya,$46
0a3f: 7a 42     addw  ya,$42            ; add tempo fade to tempo
0a41: 6e 44 02  dbnz  $44,$0a46
0a44: ba 44     movw  ya,$44            ; last time: move tempo target to tempo
0a46: da 42     movw  $42,ya
0a48: e4 58     mov   a,$58             ; echo vol fade counter
0a4a: f0 15     beq   $0a61
0a4c: ba 54     movw  ya,$54
0a4e: 7a 50     addw  ya,$50
0a50: da 50     movw  $50,ya            ; add echo L delta to echo L vol
0a52: ba 56     movw  ya,$56
0a54: 7a 52     addw  ya,$52            ; add echo R delta to echo R vol
0a56: 6e 58 06  dbnz  $58,$0a5f
0a59: ba 58     movw  ya,$58
0a5b: da 50     movw  $50,ya
0a5d: eb 5a     mov   y,$5a
0a5f: da 52     movw  $52,ya
0a61: e4 4a     mov   a,$4a             ; master vol fade counter
0a63: f0 0e     beq   $0a73
0a65: ba 4c     movw  ya,$4c
0a67: 7a 48     addw  ya,$48            ; add master vol delta to value
0a69: 6e 4a 02  dbnz  $4a,$0a6e
0a6c: ba 4a     movw  ya,$4a
0a6e: da 48     movw  $48,ya
0a70: 8f ff 4e  mov   $4e,#$ff          ; set all vol chg flags
0a73: cd 00     mov   x,#$00
0a75: 8f 01 38  mov   $38,#$01          ; first voice
0a78: f4 21     mov   a,$21+x
0a7a: f0 03     beq   $0a7f
0a7c: 3f 6c 0d  call  $0d6c             ; do per-voice fades
0a7f: 7d        mov   a,x
0a80: 5c        lsr   a
0a81: 9f        xcn   a
0a82: fb d1     mov   y,$d1+x
0a84: 3f 94 0a  call  $0a94
0a87: fb d0     mov   y,$d0+x
0a89: bc        inc   a
0a8a: 3f 94 0a  call  $0a94
0a8d: 3d        inc   x
0a8e: 3d        inc   x
0a8f: 0b 38     asl   $38
0a91: d0 e5     bne   $0a78             ; loop for each voice
0a93: 6f        ret

0a94: 2d        push  a
0a95: e4 32     mov   a,$32
0a97: 24 38     and   a,$38
0a99: d0 03     bne   $0a9e
0a9b: e4 02     mov   a,$02
0a9d: cf        mul   ya
0a9e: ae        pop   a
0a9f: c4 f2     mov   $f2,a
0aa1: cb f3     mov   $f3,y
0aa3: 6f        ret

; dispatch vcmd in A (e0-ff)
0aa4: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
0aa5: fd        mov   y,a
0aa6: f6 01 0a  mov   a,$0a01+y
0aa9: 2d        push  a
0aaa: f6 00 0a  mov   a,$0a00+y
0aad: 2d        push  a                 ; push jump address from table
0aae: dd        mov   a,y
0aaf: 5c        lsr   a
0ab0: fd        mov   y,a
0ab1: f6 96 0a  mov   a,$0a96+y         ; vcmd length
0ab4: f0 08     beq   $0abe             ; if non zero
; read new argument to A and Y
0ab6: e7 20     mov   a,($20+x)
; advance reading ptr
0ab8: bb 20     inc   $20+x
0aba: d0 02     bne   $0abe
0abc: bb 21     inc   $21+x             ; inc reading ptr
0abe: fd        mov   y,a
; vcmd fa - nop (ruin of set perc base)
0abf: 6f        ret                     ; jump to vcmd / nop

; vcmd dispatch table ($0a00)
0ac0: dw $0b11  ; e0 - set instrument
0ac2: dw $0b77  ; e1 - pan
0ac4: dw $0b85  ; e2 - pan fade
0ac6: dw $0b9e  ; e3 - vibrato on
0ac8: dw $0baa  ; e4 - vibrato off
0aca: dw $0bc5  ; e5 - master volume
0acc: dw $0bca  ; e6 - master volume fade
0ace: dw $0bde  ; e7 - tempo
0ad0: dw $0be3  ; e8 - tempo fade
0ad2: dw $0bf5  ; e9 - global transpose
0ad4: dw $0bf8  ; ea - per-voice transpose
0ad6: dw $0bfc  ; eb - tremolo on
0ad8: dw $0c08  ; ec - tremolo off
0ada: dw $0c29  ; ed - volume
0adc: dw $0c32  ; ee - volume fade
0ade: dw $0c4f  ; ef - call subroutine
0ae0: dw $0bb5  ; f0 - vibrato fade
0ae2: dw $0c0b  ; f1 - pitch envelope (release)
0ae4: dw $0c0f  ; f2 - pitch envelope (attack)
0ae6: dw $0c25  ; f3 - pitch envelope off
0ae8: dw $0c4b  ; f4 - tuning
0aea: dw $0c72  ; f5 - echo vbits/volume
0aec: dw $0ca6  ; f6 - disable echo
0aee: dw $0cad  ; f7 - set echo params
0af0: dw $0c85  ; f8 - echo volume fade
0af2: dw $0d21  ; f9 - pitch slide
0af4: dw $0abf  ; fa - set perc base (NYI)
                ; fb-ff undefined

; vcmd lengths ($0a96)
0af6: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
0afe: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
0b06: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
0b0e: db $03,$03,$01                     ; f8-fa

; vcmd e0 - set instrument
0b11: d5 11 02  mov   $0211+x,a
0b14: 8d 06     mov   y,#$06
; set sample A in bank at $10/1 width Y
0b16: cf        mul   ya
0b17: da 10     movw  $10,ya
0b19: 60        clrc
0b1a: 98 00 10  adc   $10,#$00
0b1d: 98 05 11  adc   $11,#$05
0b20: e4 17     mov   a,$17
0b22: 24 38     and   a,$38
0b24: d0 38     bne   $0b5e
0b26: 4d        push  x
0b27: 7d        mov   a,x
0b28: 9f        xcn   a
0b29: 5c        lsr   a
0b2a: 08 04     or    a,#$04            ; voice X SRCN
0b2c: 5d        mov   x,a
0b2d: 8d 00     mov   y,#$00
0b2f: f7 10     mov   a,($10)+y
0b31: 10 0e     bpl   $0b41
0b33: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
0b35: 38 20 39  and   $39,#$20          ;  keep echo bit from FLG
0b38: 0e 39 00  tset1 $0039             ;  OR in noise freq
0b3b: 09 38 3a  or    ($3a),($38)       ;  set vbit in noise enable
0b3e: dd        mov   a,y               ;  set SRCN to 0
0b3f: 2f 07     bra   $0b48             ; else
0b41: e4 38     mov   a,$38
0b43: 4e 3a 00  tclr1 $003a             ;  clear noise vbit
0b46: f7 10     mov   a,($10)+y         ;  set SRCN from table
0b48: d8 f2     mov   $f2,x
0b4a: c4 f3     mov   $f3,a
0b4c: 3d        inc   x
0b4d: fc        inc   y
0b4e: ad 04     cmp   y,#$04
0b50: d0 f4     bne   $0b46             ; set SRCN, ADSR1/2, GAIN from table
0b52: ce        pop   x
0b53: f7 10     mov   a,($10)+y
0b55: d5 21 02  mov   $0221+x,a         ; set pitch multiplier (integer) (i.e. unity key)
0b58: fc        inc   y
0b59: f7 10     mov   a,($10)+y
0b5b: d5 20 02  mov   $0220+x,a         ; set pitch multiplier (fraction) (i.e. fine tune)
0b5e: 6f        ret

; reset voice params
0b5f: e8 00     mov   a,#$00
0b61: d5 11 02  mov   $0211+x,a         ; zero instrument
0b64: d5 c1 02  mov   $02c1+x,a         ; zero tuning
0b67: d5 01 01  mov   $0101+x,a         ; zero per-voice transpose
0b6a: d5 d0 02  mov   $02d0+x,a
0b6d: d4 a1     mov   $a1+x,a
0b6f: d4 b1     mov   $b1+x,a
0b71: 9c        dec   a
0b72: d5 51 02  mov   $0251+x,a         ; voice volume = $ff
0b75: e8 0a     mov   a,#$0a            ; pan = $0a.00
; vcmd e1 - pan
0b77: d5 a1 02  mov   $02a1+x,a
0b7a: 28 1f     and   a,#$1f
0b7c: d5 81 02  mov   $0281+x,a         ; voice pan value
0b7f: e8 00     mov   a,#$00
0b81: d5 80 02  mov   $0280+x,a
0b84: 6f        ret

; vcmd e2 - pan fade
0b85: d4 71     mov   $71+x,a
0b87: 2d        push  a
0b88: 3f b6 0a  call  $0ab6
0b8b: d5 a0 02  mov   $02a0+x,a
0b8e: 80        setc
0b8f: b5 81 02  sbc   a,$0281+x         ; current pan value
0b92: ce        pop   x
0b93: 3f 50 0d  call  $0d50             ; delta = pan value / steps
0b96: d5 90 02  mov   $0290+x,a
0b99: dd        mov   a,y
0b9a: d5 91 02  mov   $0291+x,a
0b9d: 6f        ret

; vcmd e3 - vibrato on
0b9e: d5 00 01  mov   $0100+x,a         ; vibrato delay
0ba1: 3f b6 0a  call  $0ab6
0ba4: d5 f1 02  mov   $02f1+x,a         ; vibrato rate
0ba7: 3f b6 0a  call  $0ab6
; vcmd e4 - vibrato off
0baa: d4 a1     mov   $a1+x,a           ; vibrato depth
0bac: d5 30 01  mov   $0130+x,a         ; vibrato depth
0baf: e8 00     mov   a,#$00
0bb1: d5 21 01  mov   $0121+x,a
0bb4: 6f        ret

; vcmd f0 - vibrato fade
0bb5: d5 21 01  mov   $0121+x,a         ; vibrato fade length
0bb8: 2d        push  a
0bb9: 8d 00     mov   y,#$00
0bbb: f4 a1     mov   a,$a1+x
0bbd: ce        pop   x
0bbe: 9e        div   ya,x
0bbf: f8 35     mov   x,$35
0bc1: d5 31 01  mov   $0131+x,a
0bc4: 6f        ret

; vcmd e5 - master volume
0bc5: e8 00     mov   a,#$00
0bc7: da 48     movw  $48,ya
0bc9: 6f        ret

; vcmd e6 - master volume fade
0bca: c4 4a     mov   $4a,a
0bcc: 3f b6 0a  call  $0ab6
0bcf: c4 4b     mov   $4b,a
0bd1: 80        setc
0bd2: a4 49     sbc   a,$49
0bd4: f8 4a     mov   x,$4a
0bd6: 3f 50 0d  call  $0d50
0bd9: da 4c     movw  $4c,ya
0bdb: f8 35     mov   x,$35
0bdd: 6f        ret

; vcmd e7 - tempo
0bde: e8 00     mov   a,#$00
0be0: da 42     movw  $42,ya
0be2: 6f        ret

; vcmd e8 - tempo fade
0be3: c4 44     mov   $44,a
0be5: 3f b6 0a  call  $0ab6
0be8: c4 45     mov   $45,a
0bea: 80        setc
0beb: a4 43     sbc   a,$43
0bed: f8 44     mov   x,$44
0bef: 3f 50 0d  call  $0d50
0bf2: da 46     movw  $46,ya
0bf4: 6f        ret

; vcmd e9 - global transpose (absolete)
0bf5: c4 40     mov   $40,a
0bf7: 6f        ret

; vcmd ea - per-voice transpose (absolete)
0bf8: d5 01 01  mov   $0101+x,a
0bfb: 6f        ret

; vcmd eb - tremolo on
0bfc: d5 20 01  mov   $0120+x,a         ; tremolo delay
0bff: 3f b6 0a  call  $0ab6
0c02: d5 11 01  mov   $0111+x,a         ; tremolo rate
0c05: 3f b6 0a  call  $0ab6
; vcmd ec - tremolo off
0c08: d4 b1     mov   $b1+x,a           ; tremolo depth
0c0a: 6f        ret

; vcmd f1 - pitch envelope (release)
0c0b: e8 01     mov   a,#$01
0c0d: 2f 02     bra   $0c11
; vcmd f2 - pitch envelope (attack)
0c0f: e8 00     mov   a,#$00
0c11: d5 e0 02  mov   $02e0+x,a
0c14: dd        mov   a,y
0c15: d5 d1 02  mov   $02d1+x,a
0c18: 3f b6 0a  call  $0ab6
0c1b: d5 d0 02  mov   $02d0+x,a
0c1e: 3f b6 0a  call  $0ab6
0c21: d5 e1 02  mov   $02e1+x,a
0c24: 6f        ret

; vcmd f3 - pitch envelope off
0c25: d5 d0 02  mov   $02d0+x,a
0c28: 6f        ret

; vcmd ed - volume
0c29: d5 51 02  mov   $0251+x,a
0c2c: e8 00     mov   a,#$00
0c2e: d5 50 02  mov   $0250+x,a
0c31: 6f        ret

; vcmd ee - volume fade
0c32: d4 70     mov   $70+x,a
0c34: 2d        push  a
0c35: 3f b6 0a  call  $0ab6
0c38: d5 70 02  mov   $0270+x,a
0c3b: 80        setc
0c3c: b5 51 02  sbc   a,$0251+x
0c3f: ce        pop   x
0c40: 3f 50 0d  call  $0d50
0c43: d5 60 02  mov   $0260+x,a
0c46: dd        mov   a,y
0c47: d5 61 02  mov   $0261+x,a
0c4a: 6f        ret

; vcmd f4 - tuning
0c4b: d5 c1 02  mov   $02c1+x,a
0c4e: 6f        ret

; vcmd ef - call subroutine (n times)
0c4f: d5 40 02  mov   $0240+x,a
0c52: 3f b6 0a  call  $0ab6
0c55: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
0c58: 3f b6 0a  call  $0ab6
0c5b: d4 c1     mov   $c1+x,a           ; repeat count from arg3
0c5d: f4 20     mov   a,$20+x
0c5f: d5 30 02  mov   $0230+x,a
0c62: f4 21     mov   a,$21+x
0c64: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
0c67: f5 40 02  mov   a,$0240+x
0c6a: d4 20     mov   $20+x,a
0c6c: f5 41 02  mov   a,$0241+x
0c6f: d4 21     mov   $21+x,a
0c71: 6f        ret

; vcmd f5 - echo vbits/volume
0c72: c4 3b     mov   $3b,a             ; echo vbit shadow = arg1
0c74: 3f b6 0a  call  $0ab6
0c77: e8 00     mov   a,#$00
0c79: da 50     movw  $50,ya            ; echo vol L shadow = arg2
0c7b: 3f b6 0a  call  $0ab6
0c7e: e8 00     mov   a,#$00
0c80: da 52     movw  $52,ya            ; echo vol R shadow = arg3
0c82: b2 39     clr5  $39               ; enable echo write
0c84: 6f        ret

; vcmd f8 - echo volume fade
0c85: c4 58     mov   $58,a
0c87: 3f b6 0a  call  $0ab6
0c8a: c4 59     mov   $59,a
0c8c: 80        setc
0c8d: a4 51     sbc   a,$51
0c8f: f8 58     mov   x,$58
0c91: 3f 50 0d  call  $0d50
0c94: da 54     movw  $54,ya
0c96: 3f b6 0a  call  $0ab6
0c99: c4 5a     mov   $5a,a
0c9b: 80        setc
0c9c: a4 53     sbc   a,$53
0c9e: f8 58     mov   x,$58
0ca0: 3f 50 0d  call  $0d50
0ca3: da 56     movw  $56,ya
0ca5: 6f        ret

; vcmd f6 - disable echo
0ca6: da 50     movw  $50,ya            ; zero echo vol L shadow
0ca8: da 52     movw  $52,ya            ; zero echo vol R shadow
0caa: a2 39     set5  $39               ; disable echo write
0cac: 6f        ret

; vcmd f7 - set echo delay, feedback, filter
0cad: 3f cf 0c  call  $0ccf             ; set echo delay from arg1
0cb0: 3f b6 0a  call  $0ab6
0cb3: c4 3f     mov   $3f,a             ; set echo feedback shadow from arg2
0cb5: 3f b6 0a  call  $0ab6
0cb8: 8d 08     mov   y,#$08
0cba: cf        mul   ya
0cbb: 5d        mov   x,a
0cbc: 8d 0f     mov   y,#$0f
0cbe: f5 81 10  mov   a,$1081+x         ; filter table
0cc1: 3f cb 08  call  $08cb
0cc4: 3d        inc   x
0cc5: dd        mov   a,y
0cc6: 60        clrc
0cc7: 88 10     adc   a,#$10
0cc9: fd        mov   y,a
0cca: 10 f2     bpl   $0cbe             ; set echo filter from table index arg3
0ccc: f8 35     mov   x,$35
0cce: 6f        ret
; set echo delay to A
0ccf: c4 3e     mov   $3e,a
0cd1: 8d 7d     mov   y,#$7d
0cd3: cb f2     mov   $f2,y
0cd5: e4 f3     mov   a,$f3             ; set echo delay
0cd7: 64 3e     cmp   a,$3e
0cd9: f0 28     beq   $0d03             ; same as $3e?
0cdb: 28 0f     and   a,#$0f
0cdd: 48 ff     eor   a,#$ff
0cdf: f3 3d 03  bbc7  $3d,$0ce5
0ce2: 60        clrc
0ce3: 84 3d     adc   a,$3d
0ce5: c4 3d     mov   $3d,a
0ce7: 8d 04     mov   y,#$04
0ce9: f6 a0 10  mov   a,$10a0+y         ; shadow reg DSP reg table
0cec: c4 f2     mov   $f2,a
0cee: 8f 00 f3  mov   $f3,#$00
0cf1: fe f6     dbnz  y,$0ce9           ; zero echo vol, feedback, vbit DSP regs
0cf3: e4 39     mov   a,$39
0cf5: 08 20     or    a,#$20
0cf7: 8f 6c f2  mov   $f2,#$6c
0cfa: c4 f3     mov   $f3,a             ; set FLG from shadow but disable echo
0cfc: 8f 7d f2  mov   $f2,#$7d
0cff: e4 3e     mov   a,$3e
0d01: c4 f3     mov   $f3,a             ; set echo delay from $3e
0d03: 1c        asl   a
0d04: 1c        asl   a
0d05: 1c        asl   a
0d06: 48 ff     eor   a,#$ff
0d08: 80        setc
0d09: 88 39     adc   a,#$39
0d0b: 8f 6d f2  mov   $f2,#$6d
0d0e: c4 f3     mov   $f3,a             ; set echo region to $3900-8*delay
0d10: 6f        ret

; 
0d11: f4 80     mov   a,$80+x
0d13: d0 32     bne   $0d47
0d15: e7 20     mov   a,($20+x)
0d17: 68 f9     cmp   a,#$f9
0d19: d0 2c     bne   $0d47
0d1b: 3f b8 0a  call  $0ab8
0d1e: 3f b6 0a  call  $0ab6
; vcmd f9 - pitch slide
0d21: d4 81     mov   $81+x,a
0d23: 3f b6 0a  call  $0ab6
0d26: d4 80     mov   $80+x,a
0d28: 3f b6 0a  call  $0ab6
0d2b: 60        clrc
0d2c: 84 40     adc   a,$40             ; add global transpose
0d2e: 95 01 01  adc   a,$0101+x         ; per-voice transpose
; calculate portamento delta
0d31: 28 7f     and   a,#$7f
0d33: d5 c0 02  mov   $02c0+x,a         ; final portamento value
0d36: 80        setc
0d37: b4 91     sbc   a,$91+x           ; note number
0d39: fb 80     mov   y,$80+x           ; portamento steps
0d3b: 6d        push  y
0d3c: ce        pop   x
0d3d: 3f 50 0d  call  $0d50
0d40: d5 b0 02  mov   $02b0+x,a
0d43: dd        mov   a,y
0d44: d5 b1 02  mov   $02b1+x,a         ; portamento delta
0d47: 6f        ret

; get the current note number in ya and $1c/d
0d48: f4 91     mov   a,$91+x           ; note number (integer)
0d4a: fd        mov   y,a
0d4b: f4 90     mov   a,$90+x           ; note number (fraction)
0d4d: da 1c     movw  $1c,ya
0d4f: 6f        ret

; signed 16 bit division
0d50: ed        notc
0d51: 6b 1e     ror   $1e
0d53: 10 03     bpl   $0d58
0d55: 48 ff     eor   a,#$ff
0d57: bc        inc   a
0d58: 8d 00     mov   y,#$00
0d5a: 9e        div   ya,x
0d5b: 2d        push  a
0d5c: e8 00     mov   a,#$00
0d5e: 9e        div   ya,x
0d5f: ee        pop   y
0d60: f8 35     mov   x,$35
0d62: f3 1e 06  bbc7  $1e,$0d6b
0d65: da 10     movw  $10,ya
0d67: ba 1a     movw  ya,$1a
0d69: 9a 10     subw  ya,$10
0d6b: 6f        ret

; do voice fades
0d6c: f4 70     mov   a,$70+x           ; voice volume fade counter
0d6e: f0 24     beq   $0d94
0d70: 09 38 4e  or    ($4e),($38)
0d73: 9b 70     dec   $70+x             ; dec voice vol fade counter
0d75: d0 0a     bne   $0d81
0d77: e8 00     mov   a,#$00
0d79: d5 50 02  mov   $0250+x,a
0d7c: f5 70 02  mov   a,$0270+x
0d7f: 2f 10     bra   $0d91
0d81: 60        clrc
0d82: f5 50 02  mov   a,$0250+x
0d85: 95 60 02  adc   a,$0260+x
0d88: d5 50 02  mov   $0250+x,a
0d8b: f5 51 02  mov   a,$0251+x
0d8e: 95 61 02  adc   a,$0261+x
0d91: d5 51 02  mov   $0251+x,a
0d94: fb b1     mov   y,$b1+x
0d96: f0 23     beq   $0dbb
0d98: f5 20 01  mov   a,$0120+x
0d9b: de b0 1b  cbne  $b0+x,$0db9       ; check for tremolo delay
0d9e: 09 38 4e  or    ($4e),($38)
0da1: f5 10 01  mov   a,$0110+x
0da4: 10 07     bpl   $0dad
0da6: fc        inc   y
0da7: d0 04     bne   $0dad
0da9: e8 80     mov   a,#$80
0dab: 2f 04     bra   $0db1
0dad: 60        clrc
0dae: 95 11 01  adc   a,$0111+x
0db1: d5 10 01  mov   $0110+x,a
0db4: 3f ab 0f  call  $0fab
0db7: 2f 07     bra   $0dc0
0db9: bb b0     inc   $b0+x
0dbb: e8 ff     mov   a,#$ff
0dbd: 3f b6 0f  call  $0fb6
0dc0: f4 71     mov   a,$71+x
0dc2: f0 24     beq   $0de8
0dc4: 09 38 4e  or    ($4e),($38)
0dc7: 9b 71     dec   $71+x
0dc9: d0 0a     bne   $0dd5
0dcb: e8 00     mov   a,#$00
0dcd: d5 80 02  mov   $0280+x,a
0dd0: f5 a0 02  mov   a,$02a0+x
0dd3: 2f 10     bra   $0de5
0dd5: 60        clrc
0dd6: f5 80 02  mov   a,$0280+x
0dd9: 95 90 02  adc   a,$0290+x
0ddc: d5 80 02  mov   $0280+x,a
0ddf: f5 81 02  mov   a,$0281+x
0de2: 95 91 02  adc   a,$0291+x
0de5: d5 81 02  mov   $0281+x,a
0de8: e4 38     mov   a,$38
0dea: 24 4e     and   a,$4e
0dec: f0 27     beq   $0e15
0dee: e4 03     mov   a,$03
0df0: f0 08     beq   $0dfa
0df2: 8f 0a 1d  mov   $1d,#$0a
0df5: 8f 00 1c  mov   $1c,#$00
0df8: 2f 09     bra   $0e03
0dfa: f5 81 02  mov   a,$0281+x
0dfd: fd        mov   y,a
0dfe: f5 80 02  mov   a,$0280+x
0e01: da 1c     movw  $1c,ya
; update volume dsp regs
0e03: 3f 16 0e  call  $0e16
0e06: d4 d0     mov   $d0+x,a           ; VOL(L)
0e08: 8d 14     mov   y,#$14
0e0a: e8 00     mov   a,#$00
0e0c: 9a 1c     subw  ya,$1c
0e0e: da 1c     movw  $1c,ya
0e10: 3f 16 0e  call  $0e16
0e13: d4 d1     mov   $d1+x,a           ; VOL(R)
0e15: 6f        ret

; calculate volume balance from $1c/d (integer/fractional, signed)
0e16: eb 1d     mov   y,$1d             ; pan value (0-20)
0e18: f6 e8 10  mov   a,$10e8+y         ; next pan val from table
0e1b: 80        setc
0e1c: b6 e7 10  sbc   a,$10e7+y         ; pan val
0e1f: eb 1c     mov   y,$1c
0e21: cf        mul   ya                ; multiple by fractional part (linear interpolation)
0e22: dd        mov   a,y
0e23: eb 1d     mov   y,$1d
0e25: 60        clrc
0e26: 96 e7 10  adc   a,$10e7+y         ; add integer part to pan val
0e29: fd        mov   y,a
0e2a: f5 71 02  mov   a,$0271+x         ; base volume
0e2d: cf        mul   ya
0e2e: f5 a1 02  mov   a,$02a1+x         ; bits 7/6 will negate volume L/R
0e31: 1c        asl   a
0e32: 13 1e 01  bbc0  $1e,$0e36
0e35: 1c        asl   a
0e36: dd        mov   a,y
0e37: 90 03     bcc   $0e3c
0e39: 48 ff     eor   a,#$ff
0e3b: bc        inc   a                 ; reverse-phase
0e3c: 6f        ret

; do readahead
0e3d: f4 61     mov   a,$61+x           ; actual key-off dur counter
0e3f: f0 63     beq   $0ea4
0e41: 9b 61     dec   $61+x
0e43: f0 05     beq   $0e4a             ; going to key-off
0e45: e8 02     mov   a,#$02
0e47: de 60 5a  cbne  $60+x,$0ea4       ; go through if dur counter == 2
; begin readahead
0e4a: f4 c1     mov   a,$c1+x
0e4c: c4 13     mov   $13,a             ; save repeat count
0e4e: f4 20     mov   a,$20+x
0e50: fb 21     mov   y,$21+x
0e52: da 10     movw  $10,ya            ; set current voice read ptr to $10/1
0e54: 8d 00     mov   y,#$00
0e56: f7 10     mov   a,($10)+y         ; get vcmd byte
0e58: f0 1e     beq   $0e78             ; end?
0e5a: 30 07     bmi   $0e63
0e5c: fc        inc   y                 ; note info
0e5d: 30 3e     bmi   $0e9d
0e5f: f7 10     mov   a,($10)+y
0e61: 10 f9     bpl   $0e5c             ; skip parameter bytes (00 should not come)
0e63: 68 c8     cmp   a,#$c8
0e65: f0 3d     beq   $0ea4             ; tie (skip key-off)
0e67: 68 ef     cmp   a,#$ef
0e69: f0 27     beq   $0e92             ; subroutine
0e6b: 68 e0     cmp   a,#$e0
0e6d: 90 2e     bcc   $0e9d             ; next note (key-off the current note)
0e6f: 6d        push  y
0e70: fd        mov   y,a
0e71: ae        pop   a
0e72: 96 16 0a  adc   a,$0a16+y         ; vcmd lengths ($0af6) (skip vcmd by using oplens table)
0e75: fd        mov   y,a
0e76: 2f de     bra   $0e56             ; continue
; readahead: end of block / pattern
0e78: e4 13     mov   a,$13             ; test saved repeat counter
0e7a: f0 21     beq   $0e9d
0e7c: 8b 13     dec   $13
0e7e: d0 09     bne   $0e89
; readahead: repeat again
0e80: f5 31 02  mov   a,$0231+x
0e83: fd        mov   y,a
0e84: f5 30 02  mov   a,$0230+x
0e87: 2f c9     bra   $0e52
; readahead: repeat over
0e89: f5 41 02  mov   a,$0241+x
0e8c: fd        mov   y,a
0e8d: f5 40 02  mov   a,$0240+x
0e90: 2f c0     bra   $0e52
; readahead: subroutine
0e92: fc        inc   y
0e93: f7 10     mov   a,($10)+y
0e95: 2d        push  a
0e96: fc        inc   y
0e97: f7 10     mov   a,($10)+y
0e99: fd        mov   y,a
0e9a: ae        pop   a
0e9b: 2f b5     bra   $0e52             ; jump and continue (no return address saved)
; readahead: key-off voice (note / block end)
0e9d: e4 38     mov   a,$38
0e9f: 8d 5c     mov   y,#$5c            ; KOF
0ea1: 3f c3 08  call  $08c3             ; set DSP reg
; realtime note performance
0ea4: f2 1f     clr7  $1f
0ea6: f4 80     mov   a,$80+x
0ea8: f0 27     beq   $0ed1             ; branch if portamento is not active
0eaa: f4 81     mov   a,$81+x
0eac: f0 04     beq   $0eb2             ; branch if pitch slide is not active
0eae: 9b 81     dec   $81+x
0eb0: 2f 1f     bra   $0ed1
; portamento
0eb2: e2 1f     set7  $1f
0eb4: 9b 80     dec   $80+x
0eb6: d0 0a     bne   $0ec2
0eb8: f5 c1 02  mov   a,$02c1+x
0ebb: d4 90     mov   $90+x,a
0ebd: f5 c0 02  mov   a,$02c0+x
0ec0: 2f 0d     bra   $0ecf
0ec2: 60        clrc
0ec3: f4 90     mov   a,$90+x
0ec5: 95 b0 02  adc   a,$02b0+x
0ec8: d4 90     mov   $90+x,a
0eca: f4 91     mov   a,$91+x
0ecc: 95 b1 02  adc   a,$02b1+x
0ecf: d4 91     mov   $91+x,a
; normal or pitch slide
0ed1: 3f 48 0d  call  $0d48
0ed4: f4 a1     mov   a,$a1+x
0ed6: f0 49     beq   $0f21
0ed8: f5 00 01  mov   a,$0100+x
0edb: de a0 41  cbne  $a0+x,$0f1f       ; check for vibrato delay
0ede: f4 c0     mov   a,$c0+x
0ee0: 75 21 01  cmp   a,$0121+x
0ee3: d0 05     bne   $0eea
0ee5: f5 30 01  mov   a,$0130+x
0ee8: 2f 0b     bra   $0ef5
0eea: bb c0     inc   $c0+x
0eec: fd        mov   y,a
0eed: f0 02     beq   $0ef1
0eef: f4 a1     mov   a,$a1+x
0ef1: 60        clrc
0ef2: 95 31 01  adc   a,$0131+x
0ef5: d4 a1     mov   $a1+x,a
0ef7: f5 f0 02  mov   a,$02f0+x
0efa: 60        clrc
0efb: 95 f1 02  adc   a,$02f1+x
0efe: d5 f0 02  mov   $02f0+x,a
;
0f01: c4 1e     mov   $1e,a
0f03: 1c        asl   a
0f04: 1c        asl   a
0f05: 90 02     bcc   $0f09
0f07: 48 ff     eor   a,#$ff
0f09: fd        mov   y,a
0f0a: f4 a1     mov   a,$a1+x
0f0c: 68 f1     cmp   a,#$f1
0f0e: 90 05     bcc   $0f15
0f10: 28 0f     and   a,#$0f
0f12: cf        mul   ya
0f13: 2f 04     bra   $0f19
0f15: cf        mul   ya
0f16: dd        mov   a,y
0f17: 8d 00     mov   y,#$00
0f19: 3f 96 0f  call  $0f96
0f1c: 5f 40 08  jmp   $0840

0f1f: bb a0     inc   $a0+x
0f21: e3 1f f8  bbs7  $1f,$0f1c
0f24: 6f        ret

; per-voice fades/dsps
0f25: f2 1f     clr7  $1f
0f27: f4 b1     mov   a,$b1+x
0f29: f0 09     beq   $0f34
0f2b: f5 20 01  mov   a,$0120+x
0f2e: de b0 03  cbne  $b0+x,$0f34       ; check for tremolo delay
0f31: 3f 9e 0f  call  $0f9e             ; voice vol calculations
0f34: f5 81 02  mov   a,$0281+x
0f37: fd        mov   y,a
0f38: f5 80 02  mov   a,$0280+x
0f3b: da 1c     movw  $1c,ya            ; $1c/d = voice pan value
0f3d: f4 71     mov   a,$71+x           ; voice pan fade counter
0f3f: f0 0a     beq   $0f4b
0f41: f5 91 02  mov   a,$0291+x
0f44: fd        mov   y,a
0f45: f5 90 02  mov   a,$0290+x         ; pan fade delta
0f48: 3f 80 0f  call  $0f80             ; add delta (with mutations)?
0f4b: f3 1f 03  bbc7  $1f,$0f51
0f4e: 3f 03 0e  call  $0e03             ; update channel volume and balance if required
0f51: f2 1f     clr7  $1f
0f53: 3f 48 0d  call  $0d48             ; get note number into $1c/d
0f56: f4 80     mov   a,$80+x
0f58: f0 0e     beq   $0f68
0f5a: f4 81     mov   a,$81+x
0f5c: d0 0a     bne   $0f68
0f5e: f5 b1 02  mov   a,$02b1+x
0f61: fd        mov   y,a
0f62: f5 b0 02  mov   a,$02b0+x         ; portamento delta
0f65: 3f 80 0f  call  $0f80             ; add delta (with mutations)?
0f68: f4 a1     mov   a,$a1+x
0f6a: f0 b5     beq   $0f21             ; check for vibrato depth?
0f6c: f5 00 01  mov   a,$0100+x
0f6f: de a0 af  cbne  $a0+x,$0f21       ; check for vibrato delay
0f72: eb 41     mov   y,$41
0f74: f5 f1 02  mov   a,$02f1+x
0f77: cf        mul   ya
0f78: dd        mov   a,y
0f79: 60        clrc
0f7a: 95 f0 02  adc   a,$02f0+x
0f7d: 5f 01 0f  jmp   $0f01

; add delta (with mutations)?
0f80: e2 1f     set7  $1f
0f82: cb 1e     mov   $1e,y
0f84: 3f 62 0d  call  $0d62
0f87: 6d        push  y
0f88: eb 41     mov   y,$41
0f8a: cf        mul   ya
0f8b: cb 10     mov   $10,y
0f8d: 8f 00 11  mov   $11,#$00
0f90: eb 41     mov   y,$41
0f92: ae        pop   a
0f93: cf        mul   ya
0f94: 7a 10     addw  ya,$10
0f96: 3f 62 0d  call  $0d62
0f99: 7a 1c     addw  ya,$1c
0f9b: da 1c     movw  $1c,ya
0f9d: 6f        ret

; calculate base volume
0f9e: e2 1f     set7  $1f
0fa0: eb 41     mov   y,$41             ; tempo counter (i.e. fractional part of tick counter)
0fa2: f5 11 01  mov   a,$0111+x         ; tremolo rate
0fa5: cf        mul   ya
0fa6: dd        mov   a,y
0fa7: 60        clrc
0fa8: 95 10 01  adc   a,$0110+x
0fab: 1c        asl   a
0fac: 90 02     bcc   $0fb0
0fae: 48 ff     eor   a,#$ff
0fb0: fb b1     mov   y,$b1+x           ; tremolo depth
0fb2: cf        mul   ya
0fb3: dd        mov   a,y
0fb4: 48 ff     eor   a,#$ff
0fb6: eb 49     mov   y,$49             ; master volume
0fb8: cf        mul   ya
0fb9: f5 10 02  mov   a,$0210+x         ; per-note volume (velocity)
0fbc: cf        mul   ya
0fbd: f5 51 02  mov   a,$0251+x         ; channel volume
0fc0: cf        mul   ya
0fc1: dd        mov   a,y
0fc2: cf        mul   ya
0fc3: dd        mov   a,y               ; (^2 exponential)
0fc4: d5 71 02  mov   $0271+x,a         ; base volume is derermined
0fc7: 6f        ret

0fc8: eb 09     mov   y,$09
0fca: e4 01     mov   a,$01
0fcc: c4 09     mov   $09,a
0fce: 7e 01     cmp   y,$01
0fd0: f0 26     beq   $0ff8
0fd2: c4 05     mov   $05,a
0fd4: 1c        asl   a
0fd5: d0 22     bne   $0ff9
0fd7: 8f 01 38  mov   $38,#$01
0fda: cd 00     mov   x,#$00
0fdc: e4 32     mov   a,$32
0fde: 24 38     and   a,$38
0fe0: f0 10     beq   $0ff2
0fe2: 0e 37 00  tset1 $0037
0fe5: e8 00     mov   a,#$00
0fe7: d5 20 00  mov   $0020+x,a
0fea: d5 21 00  mov   $0021+x,a         ; zero reading ptr
0fed: e4 38     mov   a,$38
0fef: 4e 32 00  tclr1 $0032
0ff2: 3d        inc   x
0ff3: 3d        inc   x
0ff4: 0b 38     asl   $38
0ff6: d0 e4     bne   $0fdc
0ff8: 6f        ret

0ff9: 5d        mov   x,a
0ffa: f5 ff 38  mov   a,$38ff+x
0ffd: fd        mov   y,a
0ffe: f5 fe 38  mov   a,$38fe+x
1001: da 33     movw  $33,ya            ; set $33/4 to $38FE/F+X
1003: 8d 00     mov   y,#$00            ; zero offset
1005: f7 33     mov   a,($33)+y         ; offset 0
1007: 5d        mov   x,a
1008: fc        inc   y
1009: f7 33     mov   a,($33)+y         ; offset 1
100b: d8 33     mov   $33,x
100d: c4 34     mov   $34,a             ; $33/4 = ($33/4)
100f: 8f 01 38  mov   $38,#$01          ; first voice
1012: cd 00     mov   x,#$00
; set reading ptrs
1014: 7d        mov   a,x
1015: fd        mov   y,a
1016: fc        inc   y
1017: f7 33     mov   a,($33)+y         ; offset +1
1019: f0 18     beq   $1033             ; skip, if non zero
101b: d6 20 00  mov   $0020+y,a         ; reading ptr hi
101e: dc        dec   y
101f: f7 33     mov   a,($33)+y         ; offset +0
1021: d6 20 00  mov   $0020+y,a         ; reading ptr lo
1024: 3f 5f 0b  call  $0b5f             ; reset voice params
1027: d4 c1     mov   $c1+x,a
1029: d4 70     mov   $70+x,a
102b: d4 71     mov   $71+x,a
102d: bc        inc   a
102e: d4 60     mov   $60+x,a
1030: 09 38 32  or    ($32),($38)       ; activate voice
1033: 3d        inc   x
1034: 3d        inc   x
1035: 0b 38     asl   $38
1037: d0 db     bne   $1014             ; loop for each voice
1039: 6f        ret

103a: cd fe     mov   x,#$fe
103c: d8 f4     mov   $f4,x
103e: 3e f4     cmp   x,$f4
1040: d0 fc     bne   $103e
1042: ba f6     movw  ya,$f6
1044: d0 16     bne   $105c
1046: c8 fe     cmp   x,#$fe
1048: d0 07     bne   $1051
104a: 3d        inc   x
104b: d8 f4     mov   $f4,x
104d: 3e f4     cmp   x,$f4
104f: d0 fc     bne   $104d
1051: e8 fe     mov   a,#$fe
1053: c4 f4     mov   $f4,a
1055: 64 f4     cmp   a,$f4
1057: d0 fc     bne   $1055
1059: 5f f0 08  jmp   $08f0

105c: 3d        inc   x
105d: d8 f4     mov   $f4,x
105f: da 1c     movw  $1c,ya
1061: 3e f4     cmp   x,$f4
1063: d0 fc     bne   $1061
1065: ba f6     movw  ya,$f6
1067: 3d        inc   x
1068: d8 f4     mov   $f4,x
106a: da 10     movw  $10,ya
106c: 8d 00     mov   y,#$00
106e: 3e f4     cmp   x,$f4
1070: d0 fc     bne   $106e
1072: e4 f6     mov   a,$f6
1074: 3d        inc   x
1075: d8 f4     mov   $f4,x
1077: d7 10     mov   ($10)+y,a
1079: 3a 10     incw  $10
107b: 1a 1c     decw  $1c
107d: d0 ef     bne   $106e
107f: 2f bd     bra   $103e

; echo FIR preset
1081: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1089: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
1091: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1099: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($10AA+1) for dsp regs ($10A0+1)
10a1: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
10ab: db $51,$53,$3f,$3b,$39,$36,$1a,$3a,$3c,$37

; pitch table
10b5: dw $085f,$08de
10b9: dw $0965,$09f4
10bd: dw $0a8c
10bf: dw $0b2c,$0bd6
10c3: dw $0c8b,$0d4a
10c7: dw $0e14,$0eea
10cb: dw $0fcd
10cd: dw $10be

; note dur%'s
10cf: db $65,$7f,$98,$b2,$cb,$e5,$f2,$fc
; per-note velocity values
10d7: db $4c,$59,$6d,$7f,$87,$8e,$98,$a0
10df: db $a8,$b2,$bf,$cb,$d8,$e5,$f2,$fc

; pan table
10e7: db $00,$01,$03,$07,$0d,$15,$1e,$29
10ef: db $34,$42,$51,$5e,$67,$6e,$73,$77
10f7: db $7a,$7c,$7d,$7e,$7f
