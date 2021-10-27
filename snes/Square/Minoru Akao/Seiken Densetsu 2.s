0200: 20        clrp                    ; dpage = 0
0201: c0        di                      ; interrupts off
0202: cd ff     mov   x,#$ff            
0204: bd        mov   sp,x              ; SP = $(01)FF
0205: e8 00     mov   a,#$00
0207: 5d        mov   x,a
0208: af        mov   (x)+,a
0209: c8 f0     cmp   x,#$f0
020b: d0 fb     bne   $0208             ; zero $00-$EF
020d: e8 00     mov   a,#$00
020f: 8d 0c     mov   y,#$0c
0211: 3f 1b 06  call  $061b             ; zero master vol L
0214: 8d 1c     mov   y,#$1c            
0216: 3f 1b 06  call  $061b             ; zero master vol R
0219: 8d 2c     mov   y,#$2c            
021b: 3f 1b 06  call  $061b             ; zero echo vol L
021e: 8d 3c     mov   y,#$3c            
0220: 3f 1b 06  call  $061b             ; zero echo vol R
0223: 8d 2d     mov   y,#$2d            
0225: 3f 1b 06  call  $061b             ; clear pitchmod bits
0228: 8d 3d     mov   y,#$3d            
022a: 3f 1b 06  call  $061b             ; clear noise enable bits
022d: 8d 4d     mov   y,#$4d            
022f: 3f 1b 06  call  $061b             ; clear echo enable bits
0232: 8d 5d     mov   y,#$5d            
0234: e8 19     mov   a,#$19            
0236: 3f 1b 06  call  $061b             ; set sample dir to $1900
0239: 8d 07     mov   y,#$07
023b: cd a0     mov   x,#$a0
023d: cb f2     mov   $f2,y
023f: d8 f3     mov   $f3,x             ; set exp decr gain mode
0241: dd        mov   a,y
0242: 60        clrc
0243: 88 10     adc   a,#$10
0245: fd        mov   y,a
0246: 10 f5     bpl   $023d             ; ...for all voices
0248: 8f f0 f1  mov   $f1,#$f0          ; clear ports
024b: 8f 24 fa  mov   $fa,#$24          ; set timer0 latch to 24 (4.5ms, 222 Hz)
024e: 8f 01 f1  mov   $f1,#$01          ; start timer0
0251: 8f 02 df  mov   $df,#$02          ; set echo delay to 2
0254: 3f de 12  call  $12de             ; set echo registers
0257: 3f 2f 13  call  $132f             ; wait for echo delays, set echo regs
025a: e8 7f     mov   a,#$7f            
025c: 8d 0c     mov   y,#$0c            
025e: 3f 1b 06  call  $061b             
0261: 8d 1c     mov   y,#$1c            
0263: 3f 1b 06  call  $061b             ; set master vol L/R to 100% (#$7F)
0266: 8f ff b0  mov   $b0,#$ff          ; set key off shadow to #$FF
0269: 8f 07 dd  mov   $dd,#$07          ; set $DD to #$07
026c: e2 90     set7  $90
026e: e2 9c     set7  $9c
0270: 8d 08     mov   y,#$08
0272: e8 ff     mov   a,#$ff
0274: d6 7f ff  mov   $ff7f+y,a
0277: fe fb     dbnz  y,$0274           ; set FF80-87 to #$FF
; begin main loop                       
0279: 3f af 0c  call  $0caf             ; check for and dispatch CPU cmd
027c: eb fd     mov   y,$fd             
027e: f0 f9     beq   $0279             ; process cmds until counter0 != 0
0280: 8d 06     mov   y,#$06            
0282: f6 8b 15  mov   a,$158b+y
0285: c4 f2     mov   $f2,a
0287: f6 91 15  mov   a,$1591+y
028a: 5d        mov   x,a
028b: e6        mov   a,(x)
028c: c4 f3     mov   $f3,a
028e: fe f2     dbnz  y,$0282           ; write DSP shadows to registers
0290: cb b0     mov   $b0,y             ; clear key off shadow
0292: cb af     mov   $af,y             ; clear key on shadow
0294: e3 b1 15  bbs7  $b1,$02ac
0297: ba ad     movw  ya,$ad
0299: da f6     movw  $f6,ya            ; write APU2/3 from $AD/E
029b: a3 b1 04  bbs5  $b1,$02a2
029e: e8 00     mov   a,#$00
02a0: 2f 06     bra   $02a8
02a2: e4 8b     mov   a,$8b
02a4: d0 02     bne   $02a8
02a6: b2 b1     clr5  $b1
02a8: c4 f5     mov   $f5,a             ; write 0 or $8B to APU1
02aa: 2f 03     bra   $02af             
02ac: 3f 8e 13  call  $138e             ; read wave height regs, write APU0-3
02af: ba cb     movw  ya,$cb
02b1: d0 0a     bne   $02bd
02b3: 8b dd     dec   $dd
02b5: d0 06     bne   $02bd
02b7: 8f 07 dd  mov   $dd,#$07
02ba: 3f e5 13  call  $13e5
02bd: 3f f7 02  call  $02f7             ; do tempo adds, process vcmds if it's time
02c0: cd 00     mov   x,#$00
02c2: 8f 01 b2  mov   $b2,#$01
02c5: e4 ae     mov   a,$ae
02c7: 48 ff     eor   a,#$ff
02c9: 24 ad     and   a,$ad
02cb: c4 02     mov   $02,a
02cd: 4b 02     lsr   $02
02cf: 90 05     bcc   $02d6
02d1: d8 05     mov   $05,x
02d3: 3f c0 0a  call  $0ac0
02d6: 3d        inc   x
02d7: 3d        inc   x
02d8: 0b b2     asl   $b2
02da: d0 f1     bne   $02cd
02dc: cd 10     mov   x,#$10
02de: 8f 01 b2  mov   $b2,#$01
02e1: e4 ae     mov   a,$ae
02e3: c4 02     mov   $02,a
02e5: 4b 02     lsr   $02
02e7: 90 05     bcc   $02ee
02e9: d8 05     mov   $05,x
02eb: 3f c0 0a  call  $0ac0
02ee: 3d        inc   x
02ef: 3d        inc   x
02f0: 0b b2     asl   $b2
02f2: d0 f1     bne   $02e5
02f4: 5f 79 02  jmp   $0279

02f7: e4 90     mov   a,$90
02f9: 48 80     eor   a,#$80
02fb: eb 7d     mov   y,$7d
02fd: cf        mul   ya
02fe: dd        mov   a,y
02ff: f3 90 0a  bbc7  $90,$030c
0302: 1c        asl   a
0303: 60        clrc
0304: 84 7d     adc   a,$7d
0306: 90 07     bcc   $030f
0308: e8 ff     mov   a,#$ff
030a: 2f 03     bra   $030f
030c: d0 01     bne   $030f
030e: bc        inc   a
030f: 60        clrc
0310: 84 7e     adc   a,$7e
0312: c4 7e     mov   $7e,a
0314: 23 b1 02  bbs1  $b1,$0319
0317: 90 4e     bcc   $0367
0319: cd 00     mov   x,#$00            ; foreach voice
031b: 8f 01 b2  mov   $b2,#$01          
031e: fa ad 02  mov   ($02),($ad)       ; get active voice flags from AD
0321: 4b 02     lsr   $02               
0323: 90 30     bcc   $0355             ; skip voice if voice not active
0325: d8 05     mov   $05,x             
0327: 9b 3c     dec   $3c+x             ; DEC voice activity counter
0329: d0 05     bne   $0330             
032b: 3f b1 03  call  $03b1             ; process vcmds
032e: 2f 21     bra   $0351
0330: e4 ae     mov   a,$ae
0332: 24 b2     and   a,$b2
0334: d0 1f     bne   $0355
0336: e8 02     mov   a,#$02
0338: de 3c 09  cbne  $3c+x,$0344
033b: e4 c2     mov   a,$c2
033d: 24 b2     and   a,$b2
033f: d0 03     bne   $0344
0341: 09 b2 b0  or    ($b0),($b2)       ; set keyoff shadow bit for this voice
0344: 40        setp
0345: f4 00     mov   a,$00+x
0347: f0 02     beq   $034b
0349: 9b 00     dec   $00+x
034b: f4 01     mov   a,$01+x
034d: f0 02     beq   $0351
034f: 9b 01     dec   $01+x
0351: 20        clrp
0352: 3f df 09  call  $09df             ; do per-voice fades
0355: 3d        inc   x                 
0356: 3d        inc   x                 
0357: 0b b2     asl   $b2               
0359: d0 c6     bne   $0321             ; next voice
035b: e4 80     mov   a,$80             ; do global fades
035d: f0 08     beq   $0367
035f: 8b 80     dec   $80
0361: ba 81     movw  ya,$81
0363: 7a 7c     addw  ya,$7c
0365: da 7c     movw  $7c,ya
0367: e8 78     mov   a,#$78
0369: 60        clrc
036a: 84 7f     adc   a,$7f
036c: c4 7f     mov   $7f,a
036e: 23 b1 02  bbs1  $b1,$0373
0371: 90 3d     bcc   $03b0
0373: cd 10     mov   x,#$10            ; foreach super-voice
0375: 8f 01 b2  mov   $b2,#$01
0378: e4 ae     mov   a,$ae
037a: c4 02     mov   $02,a
037c: 4b 02     lsr   $02
037e: 90 2a     bcc   $03aa
0380: d8 05     mov   $05,x
0382: 9b 3c     dec   $3c+x             ; DEC voice activity counter
0384: d0 05     bne   $038b             
0386: 3f b1 03  call  $03b1             ; process vcmds
0389: 2f 1b     bra   $03a6             
038b: e8 02     mov   a,#$02
038d: de 3c 09  cbne  $3c+x,$0399
0390: e4 c3     mov   a,$c3
0392: 24 b2     and   a,$b2
0394: d0 03     bne   $0399
0396: 09 b2 b0  or    ($b0),($b2)       ; set keyoff shadow bit for this voice
0399: 40        setp
039a: f4 00     mov   a,$00+x
039c: f0 02     beq   $03a0
039e: 9b 00     dec   $00+x
03a0: f4 01     mov   a,$01+x
03a2: f0 02     beq   $03a6
03a4: 9b 01     dec   $01+x
03a6: 20        clrp
03a7: 3f df 09  call  $09df             ; do per-voice fades
03aa: 3d        inc   x
03ab: 3d        inc   x
03ac: 0b b2     asl   $b2
03ae: d0 cc     bne   $037c
03b0: 6f        ret

; process vcmds
03b1: 3f 62 05  call  $0562             ; get next voice stream byte
03b4: 68 d2     cmp   a,#$d2            
03b6: 90 05     bcc   $03bd             
03b8: 3f 4e 05  call  $054e             ; dispatch cmd
03bb: 2f f4     bra   $03b1             
03bd: 8d 00     mov   y,#$00            
03bf: cd 0f     mov   x,#$0f            
03c1: 9e        div   ya,x              ; A = note = A / $F, Y = duration = A % $F
03c2: f8 05     mov   x,$05
03c4: f6 2c 15  mov   a,$152c+y         ; get duration from table
03c7: d4 3c     mov   $3c+x,a           ; put in voice activity counter
03c9: 3f 6d 05  call  $056d             
03cc: 78 b4 04  cmp   $04,#$b4          ; (tie)
03cf: 90 09     bcc   $03da             
03d1: 78 c3 04  cmp   $04,#$c3          ; (rest)
03d4: b0 03     bcs   $03d9
03d6: 5f 85 04  jmp   $0485             ; tie

03d9: 6f        ret

03da: c8 10     cmp   x,#$10
03dc: b0 06     bcs   $03e4
03de: e4 ae     mov   a,$ae
03e0: 24 b2     and   a,$b2
03e2: d0 f5     bne   $03d9
03e4: e4 04     mov   a,$04
03e6: 8d 00     mov   y,#$00
03e8: cd 0f     mov   x,#$0f
03ea: 9e        div   ya,x
03eb: c4 04     mov   $04,a             ; save note in $04
03ed: f8 05     mov   x,$05             
03ef: f4 3d     mov   a,$3d+x           ; current octave
03f1: 8d 0c     mov   y,#$0c
03f3: cf        mul   ya
03f4: 60        clrc
03f5: 84 04     adc   a,$04
03f7: 60        clrc
03f8: 95 61 fd  adc   a,$fd61+x         ; add per-voice transpose
03fb: 80        setc                    
03fc: a8 0a     sbc   a,#$0a            
03fe: d5 41 fd  mov   $fd41+x,a         ; store corrected note #
0401: 3f ed 04  call  $04ed             ; calculate pitch value base in $08/9
0404: e4 08     mov   a,$08             
0406: d5 60 fe  mov   $fe60+x,a         
0409: e4 09     mov   a,$09             
040b: d5 61 fe  mov   $fe61+x,a         ; store pitch in FE60/1+X
040e: 8d 07     mov   y,#$07
0410: f5 21 01  mov   a,$0121+x
0413: f0 22     beq   $0437
0415: 68 c0     cmp   a,#$c0
0417: b0 04     bcs   $041d
0419: e8 00     mov   a,#$00
041b: 2f 02     bra   $041f
041d: e8 80     mov   a,#$80
041f: d5 c0 fd  mov   $fdc0+x,a
0422: e8 01     mov   a,#$01
0424: d5 e0 fc  mov   $fce0+x,a
0427: f5 60 01  mov   a,$0160+x
042a: d5 00 01  mov   $0100+x,a
042d: f0 03     beq   $0432
042f: dd        mov   a,y
0430: 2f 02     bra   $0434
0432: e8 00     mov   a,#$00
0434: d5 00 fe  mov   $fe00+x,a
0437: f5 40 01  mov   a,$0140+x
043a: f0 24     beq   $0460
043c: 68 c0     cmp   a,#$c0
043e: b0 04     bcs   $0444
0440: e8 00     mov   a,#$00
0442: 2f 02     bra   $0446
0444: e8 80     mov   a,#$80
0446: d5 c1 fd  mov   $fdc1+x,a
0449: e8 01     mov   a,#$01
044b: d5 e1 fc  mov   $fce1+x,a
044e: f5 61 01  mov   a,$0161+x
0451: d5 01 01  mov   $0101+x,a
0454: f0 03     beq   $0459
0456: dd        mov   a,y
0457: 2f 02     bra   $045b
0459: e8 00     mov   a,#$00
045b: d5 01 fe  mov   $fe01+x,a
045e: e8 00     mov   a,#$00
0460: d5 40 fe  mov   $fe40+x,a
0463: d5 41 fe  mov   $fe41+x,a
0466: d5 01 fd  mov   $fd01+x,a
0469: d5 80 fd  mov   $fd80+x,a
046c: d5 81 fd  mov   $fd81+x,a
046f: c8 10     cmp   x,#$10
0471: b0 06     bcs   $0479
0473: e4 ae     mov   a,$ae
0475: 24 b2     and   a,$b2
0477: d0 0c     bne   $0485
0479: 09 b2 c9  or    ($c9),($b2)
047c: 09 b2 ca  or    ($ca),($b2)
047f: 09 b2 af  or    ($af),($b2)       ; set key on shadow bit for this voice
0482: 3f 83 08  call  $0883
0485: f5 20 01  mov   a,$0120+x
0488: f0 62     beq   $04ec
048a: 60        clrc
048b: 95 41 fd  adc   a,$fd41+x
048e: d5 41 fd  mov   $fd41+x,a
0491: 3f ed 04  call  $04ed
0494: f5 60 fe  mov   a,$fe60+x
0497: c4 34     mov   $34,a
0499: f5 61 fe  mov   a,$fe61+x
049c: c4 35     mov   $35,a
049e: ba 08     movw  ya,$08
04a0: 80        setc
04a1: 9a 34     subw  ya,$34
04a3: da 34     movw  $34,ya
04a5: 0d        push  psw
04a6: b0 08     bcs   $04b0
04a8: 58 ff 34  eor   $34,#$ff
04ab: 58 ff 35  eor   $35,#$ff
04ae: 3a 34     incw  $34
04b0: f5 c1 fc  mov   a,$fcc1+x
04b3: d0 08     bne   $04bd
04b5: fa 35 34  mov   ($34),($35)
04b8: 8f 00 35  mov   $35,#$00
04bb: 2f 0d     bra   $04ca
04bd: 5d        mov   x,a
04be: e4 35     mov   a,$35
04c0: 8d 00     mov   y,#$00
04c2: 9e        div   ya,x
04c3: c4 35     mov   $35,a
04c5: e4 34     mov   a,$34
04c7: 9e        div   ya,x
04c8: c4 34     mov   $34,a
04ca: ba 34     movw  ya,$34
04cc: d0 02     bne   $04d0
04ce: ab 34     inc   $34
04d0: 8e        pop   psw
04d1: b0 08     bcs   $04db
04d3: 58 ff 34  eor   $34,#$ff
04d6: 58 ff 35  eor   $35,#$ff
04d9: 3a 34     incw  $34
04db: f8 05     mov   x,$05
04dd: e4 34     mov   a,$34
04df: d5 80 fd  mov   $fd80+x,a
04e2: e4 35     mov   a,$35
04e4: d5 81 fd  mov   $fd81+x,a
04e7: e8 00     mov   a,#$00
04e9: d5 20 01  mov   $0120+x,a
04ec: 6f        ret

; calculate base pitch value for note # in A
04ed: cd 0c     mov   x,#$0c
04ef: 8d 00     mov   y,#$00
04f1: 9e        div   ya,x
04f2: f8 05     mov   x,$05
04f4: c4 03     mov   $03,a
04f6: dd        mov   a,y
04f7: 1c        asl   a
04f8: fd        mov   y,a
04f9: f6 f2 14  mov   a,$14f2+y
04fc: c4 0a     mov   $0a,a
04fe: f6 f3 14  mov   a,$14f3+y
0501: c4 0b     mov   $0b,a             ; get pitch from table into $0A/B
0503: fd        mov   y,a
0504: f5 20 fd  mov   a,$fd20+x
0507: 60        clrc
0508: 95 40 fd  adc   a,$fd40+x
050b: 0d        push  psw
050c: 2d        push  a
050d: cf        mul   ya
050e: da 08     movw  $08,ya
0510: eb 0a     mov   y,$0a
0512: ae        pop   a
0513: cf        mul   ya
0514: dd        mov   a,y
0515: 8d 00     mov   y,#$00
0517: 7a 08     addw  ya,$08
0519: da 08     movw  $08,ya
051b: f5 21 fd  mov   a,$fd21+x
051e: f0 08     beq   $0528
0520: cf        mul   ya
0521: dd        mov   a,y
0522: 8d 00     mov   y,#$00
0524: 7a 08     addw  ya,$08
0526: 2f 02     bra   $052a
0528: e4 08     mov   a,$08
052a: 8e        pop   psw
052b: 30 02     bmi   $052f
052d: 7a 0a     addw  ya,$0a
052f: da 08     movw  $08,ya
0531: e8 04     mov   a,#$04
0533: eb 03     mov   y,$03
0535: 30 0e     bmi   $0545
0537: 64 03     cmp   a,$03
0539: b0 0f     bcs   $054a
053b: 0b 08     asl   $08
053d: 2b 09     rol   $09
053f: bc        inc   a
0540: 2e 03 f8  cbne  $03,$053b
0543: 2f 08     bra   $054d
0545: 4b 09     lsr   $09
0547: 6b 08     ror   $08
0549: 9c        dec   a
054a: 2e 03 f8  cbne  $03,$0545
054d: 6f        ret

; dispatch vcmd
054e: a8 d2     sbc   a,#$d2
0550: 1c        asl   a
0551: fd        mov   y,a               ; A - D2 index to table
0552: f6 29 14  mov   a,$1429+y         
0555: 2d        push  a                 
0556: f6 28 14  mov   a,$1428+y         
0559: 2d        push  a                 ; push return address from table
055a: dd        mov   a,y               
055b: 5c        lsr   a                 
055c: fd        mov   y,a               
055d: f6 84 14  mov   a,$1484+y         ; get operand count from table
0560: f0 0a     beq   $056c
; get next byte from voice stream (0C+X)
0562: e7 0c     mov   a,($0c+x)
0564: c4 04     mov   $04,a             ; store a copy in $04
0566: bb 0c     inc   $0c+x
0568: d0 02     bne   $056c
056a: bb 0d     inc   $0d+x
056c: 6f        ret

; find next note command
056d: f4 0c     mov   a,$0c+x
056f: fb 0d     mov   y,$0d+x
0571: da 2c     movw  $2c,ya
0573: f4 5c     mov   a,$5c+x
0575: c4 de     mov   $de,a
0577: 8d 00     mov   y,#$00
0579: f7 2c     mov   a,($2c)+y
057b: 68 d2     cmp   a,#$d2
057d: 90 76     bcc   $05f5
057f: 3a 2c     incw  $2c
0581: 68 f2     cmp   a,#$f2
0583: f0 70     beq   $05f5
0585: 68 fa     cmp   a,#$fa
0587: d0 0e     bne   $0597
0589: f7 2c     mov   a,($2c)+y
058b: 2d        push  a
058c: fc        inc   y
058d: f7 2c     mov   a,($2c)+y
058f: fd        mov   y,a
0590: ae        pop   a
0591: 7a 06     addw  ya,$06
0593: da 2c     movw  $2c,ya
0595: 2f e0     bra   $0577
0597: 68 f1     cmp   a,#$f1
0599: d0 27     bne   $05c2
059b: eb de     mov   y,$de
059d: f6 c0 fe  mov   a,$fec0+y
05a0: f0 11     beq   $05b3
05a2: 9c        dec   a
05a3: d0 0e     bne   $05b3
05a5: 8b de     dec   $de
05a7: 7d        mov   a,x
05a8: 1c        asl   a
05a9: 9c        dec   a
05aa: 2e de ca  cbne  $de,$0577
05ad: 60        clrc
05ae: 98 04 de  adc   $de,#$04
05b1: 2f c4     bra   $0577
05b3: dd        mov   a,y
05b4: 1c        asl   a
05b5: fd        mov   y,a
05b6: f6 00 ff  mov   a,$ff00+y
05b9: c4 2c     mov   $2c,a
05bb: f6 01 ff  mov   a,$ff01+y
05be: c4 2d     mov   $2d,a
05c0: 2f b5     bra   $0577
05c2: 68 f9     cmp   a,#$f9
05c4: d0 11     bne   $05d7
05c6: eb de     mov   y,$de
05c8: f6 a0 fe  mov   a,$fea0+y
05cb: bc        inc   a
05cc: 77 2c     cmp   a,($2c)+y
05ce: d0 03     bne   $05d3
05d0: fc        inc   y
05d1: 2f b6     bra   $0589
05d3: 8d 03     mov   y,#$03
05d5: 2f 18     bra   $05ef
05d7: 68 fb     cmp   a,#$fb
05d9: d0 0a     bne   $05e5
05db: e4 b2     mov   a,$b2
05dd: 24 c4     and   a,$c4
05df: d0 a8     bne   $0589
05e1: 8d 02     mov   y,#$02
05e3: 2f 0a     bra   $05ef
05e5: 80        setc
05e6: a8 d2     sbc   a,#$d2
05e8: fd        mov   y,a
05e9: f6 84 14  mov   a,$1484+y
05ec: f0 89     beq   $0577
05ee: fd        mov   y,a
05ef: 3a 2c     incw  $2c
05f1: fe fc     dbnz  y,$05ef
05f3: 2f 84     bra   $0579
05f5: fd        mov   y,a               ; found note or halt
05f6: e4 b2     mov   a,$b2
05f8: ad c3     cmp   y,#$c3
05fa: b0 12     bcs   $060e
05fc: ad b4     cmp   y,#$b4
05fe: 90 0e     bcc   $060e
0600: c8 10     cmp   x,#$10
0602: b0 05     bcs   $0609
0604: 0e c2 00  tset1 $00c2
0607: 2f 11     bra   $061a
0609: 0e c3 00  tset1 $00c3
060c: 2f 0c     bra   $061a
060e: c8 10     cmp   x,#$10
0610: b0 05     bcs   $0617
0612: 4e c2 00  tclr1 $00c2
0615: 2f 03     bra   $061a
0617: 4e c3 00  tclr1 $00c3
061a: 6f        ret

; set DSP reg Y to A
061b: cb f2     mov   $f2,y
061d: c4 f3     mov   $f3,a
061f: 6f        ret

; vcmd f3
0620: c8 10     cmp   x,#$10
0622: b0 08     bcs   $062c
0624: c4 7d     mov   $7d,a
0626: e8 00     mov   a,#$00
0628: c4 7c     mov   $7c,a
062a: c4 80     mov   $80,a
062c: 6f        ret

; vcmd f4
062d: c4 80     mov   $80,a
062f: 3f 62 05  call  $0562
0632: c8 10     cmp   x,#$10
0634: b0 2e     bcs   $0664
0636: eb 80     mov   y,$80
0638: f0 e6     beq   $0620
063a: 80        setc
063b: a4 7d     sbc   a,$7d
063d: f0 eb     beq   $062a
063f: 0d        push  psw
0640: b0 03     bcs   $0645
0642: 48 ff     eor   a,#$ff
0644: bc        inc   a
0645: f8 80     mov   x,$80
0647: 8d 00     mov   y,#$00
0649: 9e        div   ya,x
064a: c4 35     mov   $35,a
064c: e8 00     mov   a,#$00
064e: 9e        div   ya,x
064f: c4 34     mov   $34,a
0651: f8 05     mov   x,$05
0653: 8e        pop   psw
0654: b0 08     bcs   $065e
0656: 58 ff 34  eor   $34,#$ff
0659: 58 ff 35  eor   $35,#$ff
065c: 3a 34     incw  $34
065e: ba 34     movw  ya,$34
0660: c4 81     mov   $81,a
0662: cb 82     mov   $82,y
0664: 6f        ret

; vcmd f8
0665: c4 ac     mov   $ac,a
0667: 6f        ret

; vcmd d2
0668: d5 01 fc  mov   $fc01+x,a
066b: e8 00     mov   a,#$00
066d: d5 00 fc  mov   $fc00+x,a
0670: d5 80 fc  mov   $fc80+x,a
0673: 6f        ret

; vcmd d3
0674: c4 34     mov   $34,a
0676: d5 80 fc  mov   $fc80+x,a
0679: 3f 62 05  call  $0562
067c: eb 34     mov   y,$34
067e: f0 e8     beq   $0668
0680: 80        setc
0681: b5 01 fc  sbc   a,$fc01+x
0684: f0 ea     beq   $0670
0686: 0d        push  psw
0687: b0 03     bcs   $068c
0689: 48 ff     eor   a,#$ff
068b: bc        inc   a
068c: f8 34     mov   x,$34
068e: 8d 00     mov   y,#$00
0690: 9e        div   ya,x
0691: c4 35     mov   $35,a
0693: e8 00     mov   a,#$00
0695: 9e        div   ya,x
0696: c4 34     mov   $34,a
0698: f8 05     mov   x,$05
069a: 8e        pop   psw
069b: b0 08     bcs   $06a5
069d: 58 ff 34  eor   $34,#$ff
06a0: 58 ff 35  eor   $35,#$ff
06a3: 3a 34     incw  $34
06a5: e4 34     mov   a,$34
06a7: d5 20 fc  mov   $fc20+x,a
06aa: e4 35     mov   a,$35
06ac: d5 21 fc  mov   $fc21+x,a
06af: 6f        ret

; vcmd f6
06b0: 3f 62 05  call  $0562
; vcmd f5
06b3: 6f        ret

; vcmd d4
06b4: c8 10     cmp   x,#$10
06b6: b0 0c     bcs   $06c4
06b8: d5 41 fc  mov   $fc41+x,a
06bb: e8 00     mov   a,#$00
06bd: d5 40 fc  mov   $fc40+x,a
06c0: d5 81 fc  mov   $fc81+x,a
06c3: 6f        ret

06c4: fd        mov   y,a
06c5: 0d        push  psw
06c6: 48 80     eor   a,#$80
06c8: 8e        pop   psw
06c9: 10 0a     bpl   $06d5
06cb: 60        clrc
06cc: 95 41 fc  adc   a,$fc41+x
06cf: 90 0f     bcc   $06e0
06d1: e8 ff     mov   a,#$ff
06d3: 2f 0b     bra   $06e0
06d5: 48 ff     eor   a,#$ff
06d7: bc        inc   a
06d8: 60        clrc
06d9: 95 41 fc  adc   a,$fc41+x
06dc: b0 02     bcs   $06e0
06de: e8 00     mov   a,#$00
06e0: d5 41 fc  mov   $fc41+x,a
06e3: 6f        ret

; vcmd d5
06e4: c4 34     mov   $34,a
06e6: d5 81 fc  mov   $fc81+x,a
06e9: 3f 62 05  call  $0562
06ec: eb 34     mov   y,$34
06ee: f0 c8     beq   $06b8
06f0: 80        setc
06f1: b5 41 fc  sbc   a,$fc41+x
06f4: f0 ca     beq   $06c0
06f6: 0d        push  psw
06f7: b0 03     bcs   $06fc
06f9: 48 ff     eor   a,#$ff
06fb: bc        inc   a
06fc: f8 34     mov   x,$34
06fe: 8d 00     mov   y,#$00
0700: 9e        div   ya,x
0701: c4 35     mov   $35,a
0703: e8 00     mov   a,#$00
0705: 9e        div   ya,x
0706: c4 34     mov   $34,a
0708: f8 05     mov   x,$05
070a: 8e        pop   psw
070b: b0 08     bcs   $0715
070d: 58 ff 34  eor   $34,#$ff
0710: 58 ff 35  eor   $35,#$ff
0713: 3a 34     incw  $34
0715: e4 34     mov   a,$34
0717: d5 60 fc  mov   $fc60+x,a
071a: e4 35     mov   a,$35
071c: d5 61 fc  mov   $fc61+x,a
071f: 6f        ret

; vcmd d6
0720: bc        inc   a
0721: d5 c1 fc  mov   $fcc1+x,a
0724: 3f 62 05  call  $0562
0727: d5 20 01  mov   $0120+x,a
072a: 6f        ret

; vcmd e8
072b: 60        clrc
072c: 95 61 fd  adc   a,$fd61+x
; vcmd e7
072f: d5 61 fd  mov   $fd61+x,a
0732: 6f        ret

; vcmd f7
0733: 3f 62 05  call  $0562
0736: 6f        ret

; vcmd d7
0737: d5 60 01  mov   $0160+x,a
073a: 3f 62 05  call  $0562
073d: bc        inc   a
073e: d5 a0 fc  mov   $fca0+x,a
0741: e8 01     mov   a,#$01
0743: d5 e0 fc  mov   $fce0+x,a
0746: 3f 62 05  call  $0562
; vcmd d8
0749: d5 21 01  mov   $0121+x,a
074c: 6f        ret

; vcmd d9
074d: d5 61 01  mov   $0161+x,a
0750: 3f 62 05  call  $0562
0753: bc        inc   a
0754: d5 a1 fc  mov   $fca1+x,a
0757: e8 01     mov   a,#$01
0759: d5 e1 fc  mov   $fce1+x,a
075c: 3f 62 05  call  $0562
; vcmd da
075f: d5 40 01  mov   $0140+x,a
0762: 6f        ret

; vcmd db
0763: 60        clrc
0764: bc        inc   a
0765: d5 c0 fc  mov   $fcc0+x,a
0768: d0 01     bne   $076b
076a: 80        setc
076b: 7c        ror   a
076c: d0 01     bne   $076f
076e: bc        inc   a
076f: d5 00 fd  mov   $fd00+x,a
0772: fd        mov   y,a
0773: 3f 62 05  call  $0562
0776: 1c        asl   a
0777: e4 04     mov   a,$04
0779: 28 7f     and   a,#$7f
077b: 90 02     bcc   $077f
077d: 48 7f     eor   a,#$7f
077f: c4 34     mov   $34,a
0781: dd        mov   a,y
0782: 10 05     bpl   $0789
0784: 8f 00 35  mov   $35,#$00
0787: 2f 13     bra   $079c
0789: 5d        mov   x,a
078a: 8d 00     mov   y,#$00
078c: e4 34     mov   a,$34
078e: 9e        div   ya,x
078f: c4 35     mov   $35,a
0791: e8 00     mov   a,#$00
0793: 9e        div   ya,x
0794: c4 34     mov   $34,a
0796: ba 34     movw  ya,$34
0798: d0 02     bne   $079c
079a: ab 34     inc   $34
079c: 90 08     bcc   $07a6
079e: 58 ff 34  eor   $34,#$ff
07a1: 58 ff 35  eor   $35,#$ff
07a4: 3a 34     incw  $34
07a6: f8 05     mov   x,$05
07a8: e4 34     mov   a,$34
07aa: d5 a0 fd  mov   $fda0+x,a
07ad: e4 35     mov   a,$35
07af: d5 a1 fd  mov   $fda1+x,a
07b2: e4 04     mov   a,$04
; vcmd dc
07b4: d5 41 01  mov   $0141+x,a
07b7: e8 00     mov   a,#$00
07b9: d5 e0 fd  mov   $fde0+x,a
07bc: d5 e1 fd  mov   $fde1+x,a
07bf: 6f        ret

; vcmd e5 - inc octave
07c0: f5 3d 00  mov   a,$003d+x
07c3: bc        inc   a
07c4: 2f 04     bra   $07ca
; vcmd e6 - dec octave
07c6: f5 3d 00  mov   a,$003d+x
07c9: 9c        dec   a
; vcmd e4 - set octave
07ca: d5 3d 00  mov   $003d+x,a
07cd: 6f        ret

; vcmd e2 - enable echo
07ce: c8 10     cmp   x,#$10
07d0: b0 05     bcs   $07d7
07d2: 09 b2 bc  or    ($bc),($b2)
07d5: 2f 03     bra   $07da
07d7: 09 b2 bd  or    ($bd),($b2)
07da: e4 ae     mov   a,$ae
07dc: 48 ff     eor   a,#$ff
07de: 24 bc     and   a,$bc
07e0: 04 bd     or    a,$bd
07e2: c4 b8     mov   $b8,a             ; echo DSP shadow
07e4: 6f        ret

; vcmd e3 - disable echo
07e5: e4 b2     mov   a,$b2
07e7: c8 10     cmp   x,#$10
07e9: b0 05     bcs   $07f0
07eb: 4e bc 00  tclr1 $00bc
07ee: 2f ea     bra   $07da
07f0: 4e bd 00  tclr1 $00bd
07f3: 2f e5     bra   $07da

; vcmd de - enable noise
07f5: c8 10     cmp   x,#$10
07f7: b0 05     bcs   $07fe
07f9: 09 b2 be  or    ($be),($b2)
07fc: 2f 05     bra   $0803
07fe: 09 b2 bf  or    ($bf),($b2)
0801: 82 b1     set4  $b1
0803: e4 bb     mov   a,$bb
0805: 28 e0     and   a,#$e0
0807: 83 b1 04  bbs4  $b1,$080e
080a: 04 c5     or    a,$c5
080c: 2f 02     bra   $0810
080e: 04 c6     or    a,$c6
0810: c4 bb     mov   $bb,a             ; set noise freq bits of FLG shadow
0812: e4 ae     mov   a,$ae
0814: 48 ff     eor   a,#$ff
0816: 24 be     and   a,$be
0818: 04 bf     or    a,$bf
081a: c4 b9     mov   $b9,a             ; noise enable DSP shadow
081c: 6f        ret

; vcmd df - disable noise
081d: e4 b2     mov   a,$b2
081f: c8 10     cmp   x,#$10
0821: b0 05     bcs   $0828
0823: 4e be 00  tclr1 $00be
0826: 2f db     bra   $0803
0828: 4e bf 00  tclr1 $00bf
082b: d0 d6     bne   $0803
082d: 92 b1     clr4  $b1
082f: 2f d2     bra   $0803

; vcmd dd - set noise freq
0831: 28 1f     and   a,#$1f
0833: c8 10     cmp   x,#$10
0835: b0 04     bcs   $083b
0837: c4 c5     mov   $c5,a
0839: 2f c8     bra   $0803
083b: c4 c6     mov   $c6,a
083d: 2f c4     bra   $0803

; vcmd e0 - enable pitchmod
083f: c8 10     cmp   x,#$10
0841: b0 05     bcs   $0848
0843: 09 b2 c0  or    ($c0),($b2)
0846: 2f 03     bra   $084b
0848: 09 b2 c1  or    ($c1),($b2)
084b: e4 ae     mov   a,$ae
084d: 48 ff     eor   a,#$ff
084f: 24 c0     and   a,$c0
0851: 04 c1     or    a,$c1
0853: c4 ba     mov   $ba,a             ; pitchmod DSP shadow
0855: 6f        ret

; vcmd e1 - disable pitchmod
0856: e4 b2     mov   a,$b2
0858: c8 10     cmp   x,#$10
085a: b0 05     bcs   $0861
085c: 4e c0 00  tclr1 $00c0
085f: 2f ea     bra   $084b
0861: 4e c1 00  tclr1 $00c1
0864: 2f e5     bra   $084b

; vcmd ea - set patch
0866: d4 5d     mov   $5d+x,a
0868: 1c        asl   a
0869: fd        mov   y,a
086a: f6 00 18  mov   a,$1800+y
086d: d5 20 fd  mov   $fd20+x,a
0870: f6 01 18  mov   a,$1801+y
0873: d5 21 fd  mov   $fd21+x,a
0876: f6 80 18  mov   a,$1880+y
0879: d5 80 fe  mov   $fe80+x,a         ; default ADSR1
087c: f6 81 18  mov   a,$1881+y         
087f: d5 81 fe  mov   $fe81+x,a         ; default ADSR2
0882: 6f        ret

; set SRCN reg for voice X/2 from $5D+x
0883: fb 5d     mov   y,$5d+x
0885: 7d        mov   a,x
0886: 9f        xcn   a
0887: 5c        lsr   a
0888: 08 04     or    a,#$04
088a: c4 f2     mov   $f2,a
088c: cb f3     mov   $f3,y
088e: 2f 10     bra   $08a0

; vcmd eb - set ADSR attack
0890: 28 0f     and   a,#$0f
0892: c4 04     mov   $04,a
0894: f5 80 fe  mov   a,$fe80+x
0897: 28 70     and   a,#$70            ; keep old decay
0899: 04 04     or    a,$04             ; set new attack
089b: 08 80     or    a,#$80            ; set ADSR mode
089d: d5 80 fe  mov   $fe80+x,a
08a0: c8 10     cmp   x,#$10
08a2: b0 07     bcs   $08ab
08a4: e4 ae     mov   a,$ae
08a6: 24 b2     and   a,$b2
08a8: f0 01     beq   $08ab
08aa: 6f        ret

08ab: 7d        mov   a,x
08ac: 9f        xcn   a
08ad: 5c        lsr   a
08ae: 08 05     or    a,#$05
08b0: fd        mov   y,a
08b1: f5 80 fe  mov   a,$fe80+x
08b4: 3f 1b 06  call  $061b             ; set ADSR1 from FE80+X
08b7: fc        inc   y                 
08b8: f5 81 fe  mov   a,$fe81+x         ; set ADSR2 from FE81+X
08bb: 5f 1b 06  jmp   $061b

; vcmd ec - set ADSR decay
08be: 28 07     and   a,#$07
08c0: 9f        xcn   a
08c1: c4 04     mov   $04,a
08c3: f5 80 fe  mov   a,$fe80+x
08c6: 28 0f     and   a,#$0f            ; keep old attack
08c8: 04 04     or    a,$04             ; add new decay
08ca: 08 80     or    a,#$80            ; force ADSR mode
08cc: d5 80 fe  mov   $fe80+x,a         
08cf: 2f cf     bra   $08a0             ; write DSP regs

; vcmd ed - set ADSR sustain
08d1: 28 07     and   a,#$07
08d3: 9f        xcn   a
08d4: 1c        asl   a
08d5: c4 04     mov   $04,a
08d7: f5 81 fe  mov   a,$fe81+x
08da: 28 1f     and   a,#$1f            ; keep old release
08dc: 04 04     or    a,$04             ; add new sustain
08de: d5 81 fe  mov   $fe81+x,a         
08e1: 2f bd     bra   $08a0             ; write DSP regs

; vcmd ee - set ADSR release
08e3: 28 1f     and   a,#$1f
08e5: c4 04     mov   $04,a
08e7: f5 81 fe  mov   a,$fe81+x
08ea: 28 e0     and   a,#$e0            ; keep old sustain
08ec: 04 04     or    a,$04             ; add new release
08ee: d5 81 fe  mov   $fe81+x,a         
08f1: 2f ad     bra   $08a0             ; write DSP regs

; vcmd ef - restore default ADSR values for patch
08f3: f4 5d     mov   a,$5d+x           ; get current patch #
08f5: 1c        asl   a                 
08f6: fd        mov   y,a               ; as index into tables
08f7: f6 80 18  mov   a,$1880+y         
08fa: d5 80 fe  mov   $fe80+x,a         ; ADSR1 value
08fd: f6 81 18  mov   a,$1881+y         
0900: d5 81 fe  mov   $fe81+x,a         ; ADSR2 value
0903: 2f 9b     bra   $08a0             ; write DSP ADSR regs

; vcmd fa - goto
0905: fd        mov   y,a
0906: 3f 62 05  call  $0562
0909: c8 10     cmp   x,#$10
090b: b0 09     bcs   $0916
090d: dd        mov   a,y
090e: eb 04     mov   y,$04             ; address -> YA
0910: 7a 06     addw  ya,$06            ; add offset from $06/7
0912: d4 0c     mov   $0c+x,a           
0914: db 0d     mov   $0d+x,y           ; set new vptr value
0916: 6f        ret

; vcmd f9
0917: c4 36     mov   $36,a
0919: 3f 62 05  call  $0562
091c: c4 34     mov   $34,a
091e: 3f 62 05  call  $0562
0921: c4 35     mov   $35,a
0923: c8 10     cmp   x,#$10
0925: b0 12     bcs   $0939
0927: f5 a0 fe  mov   a,$fea0+x
092a: bc        inc   a
092b: d5 a0 fe  mov   $fea0+x,a
092e: 2e 36 08  cbne  $36,$0939
0931: ba 34     movw  ya,$34
0933: 7a 06     addw  ya,$06
0935: d4 0c     mov   $0c+x,a
0937: db 0d     mov   $0d+x,y
0939: 6f        ret

; vcmd fc
093a: c8 10     cmp   x,#$10
093c: b0 05     bcs   $0943
093e: e8 00     mov   a,#$00
0940: d5 a0 fe  mov   $fea0+x,a
0943: 6f        ret

; vcmd f0
0944: bb 5c     inc   $5c+x
0946: 7d        mov   a,x
0947: 1c        asl   a
0948: 60        clrc
0949: 88 04     adc   a,#$04
094b: de 5c 05  cbne  $5c+x,$0953
094e: 80        setc
094f: a8 04     sbc   a,#$04
0951: d4 5c     mov   $5c+x,a
0953: fb 5c     mov   y,$5c+x
0955: e4 04     mov   a,$04
0957: f0 01     beq   $095a
0959: bc        inc   a
095a: d6 c0 fe  mov   $fec0+y,a
095d: dd        mov   a,y
095e: 1c        asl   a
095f: fd        mov   y,a
0960: f4 0c     mov   a,$0c+x
0962: d6 00 ff  mov   $ff00+y,a
0965: f4 0d     mov   a,$0d+x
0967: d6 01 ff  mov   $ff01+y,a
096a: 6f        ret

; vcmd f1
096b: fb 5c     mov   y,$5c+x
096d: f6 c0 fe  mov   a,$fec0+y
0970: f0 15     beq   $0987
0972: 9c        dec   a
0973: d0 0f     bne   $0984
0975: 7d        mov   a,x
0976: 1c        asl   a
0977: 9c        dec   a
0978: 9b 5c     dec   $5c+x
097a: de 5c 17  cbne  $5c+x,$0994
097d: 60        clrc
097e: 88 04     adc   a,#$04
0980: d4 5c     mov   $5c+x,a
0982: 2f 10     bra   $0994
0984: d6 c0 fe  mov   $fec0+y,a
0987: dd        mov   a,y
0988: 1c        asl   a
0989: fd        mov   y,a
098a: f6 00 ff  mov   a,$ff00+y
098d: d4 0c     mov   $0c+x,a
098f: f6 01 ff  mov   a,$ff01+y
0992: d4 0d     mov   $0d+x,a
0994: 6f        ret

; vcmd fb
0995: fd        mov   y,a
0996: 3f 62 05  call  $0562
0999: c8 10     cmp   x,#$10
099b: b0 12     bcs   $09af
099d: e4 b2     mov   a,$b2
099f: 24 c4     and   a,$c4
09a1: f0 0c     beq   $09af
09a3: 4e c4 00  tclr1 $00c4
09a6: dd        mov   a,y
09a7: eb 04     mov   y,$04
09a9: 7a 06     addw  ya,$06
09ab: d4 0c     mov   $0c+x,a
09ad: db 0d     mov   $0d+x,y
09af: 6f        ret

; vcmd e9
09b0: d5 40 fd  mov   $fd40+x,a
09b3: 6f        ret

; vcmd fd
09b4: c8 10     cmp   x,#$10
09b6: b0 03     bcs   $09bb
09b8: c5 88 ff  mov   $ff88,a
09bb: 6f        ret

; vcmd f2,fe,ff - halt
09bc: ae        pop   a
09bd: ae        pop   a
09be: e4 b2     mov   a,$b2
09c0: c8 10     cmp   x,#$10
09c2: b0 05     bcs   $09c9
09c4: 4e ad 00  tclr1 $00ad
09c7: 2f 0d     bra   $09d6
09c9: 4e ae 00  tclr1 $00ae
09cc: 7d        mov   a,x
09cd: 5c        lsr   a
09ce: 28 07     and   a,#$07
09d0: fd        mov   y,a
09d1: e8 ff     mov   a,#$ff
09d3: d6 80 ff  mov   $ff80+y,a
09d6: 3f 1d 08  call  $081d
09d9: 3f 56 08  call  $0856
09dc: 5f e5 07  jmp   $07e5

; do per-voice fades
09df: f5 80 fc  mov   a,$fc80+x
09e2: f0 26     beq   $0a0a
09e4: 9c        dec   a
09e5: d5 80 fc  mov   $fc80+x,a
09e8: f5 00 fc  mov   a,$fc00+x
09eb: c4 34     mov   $34,a
09ed: f5 01 fc  mov   a,$fc01+x
09f0: c4 35     mov   $35,a
09f2: f5 21 fc  mov   a,$fc21+x
09f5: fd        mov   y,a
09f6: f5 20 fc  mov   a,$fc20+x
09f9: 7a 34     addw  ya,$34
09fb: d5 00 fc  mov   $fc00+x,a
09fe: dd        mov   a,y
09ff: 75 01 fc  cmp   a,$fc01+x
0a02: d5 01 fc  mov   $fc01+x,a
0a05: f0 03     beq   $0a0a
0a07: 09 b2 c9  or    ($c9),($b2)
0a0a: f5 81 fc  mov   a,$fc81+x
0a0d: f0 26     beq   $0a35
0a0f: 9c        dec   a
0a10: d5 81 fc  mov   $fc81+x,a
0a13: f5 40 fc  mov   a,$fc40+x
0a16: c4 34     mov   $34,a
0a18: f5 41 fc  mov   a,$fc41+x
0a1b: c4 35     mov   $35,a
0a1d: f5 61 fc  mov   a,$fc61+x
0a20: fd        mov   y,a
0a21: f5 60 fc  mov   a,$fc60+x
0a24: 7a 34     addw  ya,$34
0a26: d5 40 fc  mov   $fc40+x,a
0a29: dd        mov   a,y
0a2a: 75 41 fc  cmp   a,$fc41+x
0a2d: d5 41 fc  mov   $fc41+x,a
0a30: f0 03     beq   $0a35
0a32: 09 b2 c9  or    ($c9),($b2)
0a35: f5 80 fd  mov   a,$fd80+x
0a38: c4 34     mov   $34,a
0a3a: f5 81 fd  mov   a,$fd81+x
0a3d: c4 35     mov   $35,a
0a3f: ba 34     movw  ya,$34
0a41: f0 22     beq   $0a65
0a43: f5 c1 fc  mov   a,$fcc1+x
0a46: 9c        dec   a
0a47: d0 06     bne   $0a4f
0a49: d5 80 fd  mov   $fd80+x,a
0a4c: d5 81 fd  mov   $fd81+x,a
0a4f: d5 c1 fc  mov   $fcc1+x,a
0a52: f5 61 fe  mov   a,$fe61+x
0a55: fd        mov   y,a
0a56: f5 60 fe  mov   a,$fe60+x
0a59: 7a 34     addw  ya,$34
0a5b: d5 60 fe  mov   $fe60+x,a
0a5e: dd        mov   a,y
0a5f: d5 61 fe  mov   $fe61+x,a
0a62: 09 b2 ca  or    ($ca),($b2)
0a65: f5 41 01  mov   a,$0141+x
0a68: f0 55     beq   $0abf
0a6a: f5 a0 fd  mov   a,$fda0+x
0a6d: c4 34     mov   $34,a
0a6f: f5 a1 fd  mov   a,$fda1+x
0a72: c4 35     mov   $35,a
0a74: f5 e1 fd  mov   a,$fde1+x
0a77: fd        mov   y,a
0a78: c4 36     mov   $36,a
0a7a: f5 e0 fd  mov   a,$fde0+x
0a7d: 7a 34     addw  ya,$34
0a7f: d5 e0 fd  mov   $fde0+x,a
0a82: dd        mov   a,y
0a83: e3 35 09  bbs7  $35,$0a8f
0a86: e3 36 0d  bbs7  $36,$0a96
0a89: 10 0b     bpl   $0a96
0a8b: e8 7f     mov   a,#$7f
0a8d: 2f 07     bra   $0a96
0a8f: f3 36 04  bbc7  $36,$0a96
0a92: 30 02     bmi   $0a96
0a94: e8 80     mov   a,#$80
0a96: 75 e1 fd  cmp   a,$fde1+x
0a99: d5 e1 fd  mov   $fde1+x,a
0a9c: f0 03     beq   $0aa1
0a9e: 09 b2 c9  or    ($c9),($b2)
0aa1: f5 00 fd  mov   a,$fd00+x
0aa4: 9c        dec   a
0aa5: d0 15     bne   $0abc
0aa7: 58 ff 34  eor   $34,#$ff
0aaa: 58 ff 35  eor   $35,#$ff
0aad: 3a 34     incw  $34
0aaf: e4 34     mov   a,$34
0ab1: d5 a0 fd  mov   $fda0+x,a
0ab4: e4 35     mov   a,$35
0ab6: d5 a1 fd  mov   $fda1+x,a
0ab9: f5 c0 fc  mov   a,$fcc0+x
0abc: d5 00 fd  mov   $fd00+x,a
0abf: 6f        ret

0ac0: f5 21 01  mov   a,$0121+x
0ac3: f0 6c     beq   $0b31
0ac5: fd        mov   y,a
0ac6: f5 00 01  mov   a,$0100+x
0ac9: d0 66     bne   $0b31
0acb: f5 e0 fc  mov   a,$fce0+x
0ace: 9c        dec   a
0acf: d0 5d     bne   $0b2e
0ad1: f5 00 fe  mov   a,$fe00+x
0ad4: da 34     movw  $34,ya
0ad6: f5 c0 fd  mov   a,$fdc0+x
0ad9: c4 36     mov   $36,a
0adb: 3f 5e 0c  call  $0c5e
0ade: d5 c0 fd  mov   $fdc0+x,a
0ae1: 1c        asl   a
0ae2: d0 03     bne   $0ae7
0ae4: fd        mov   y,a
0ae5: 2f 3a     bra   $0b21
0ae7: 0d        push  psw
0ae8: 2d        push  a
0ae9: 2d        push  a
0aea: e4 34     mov   a,$34
0aec: d5 00 fe  mov   $fe00+x,a
0aef: 8d 0f     mov   y,#$0f
0af1: f5 61 fe  mov   a,$fe61+x
0af4: cf        mul   ya
0af5: da 36     movw  $36,ya
0af7: 8d 0f     mov   y,#$0f
0af9: f5 60 fe  mov   a,$fe60+x
0afc: cf        mul   ya
0afd: dd        mov   a,y
0afe: 8d 00     mov   y,#$00
0b00: 7a 36     addw  ya,$36
0b02: c4 36     mov   $36,a
0b04: ae        pop   a
0b05: cf        mul   ya
0b06: da 38     movw  $38,ya
0b08: ae        pop   a
0b09: eb 36     mov   y,$36
0b0b: cf        mul   ya
0b0c: dd        mov   a,y
0b0d: 8d 00     mov   y,#$00
0b0f: 7a 38     addw  ya,$38
0b11: 8e        pop   psw
0b12: 90 0d     bcc   $0b21
0b14: 48 ff     eor   a,#$ff
0b16: c4 38     mov   $38,a
0b18: dd        mov   a,y
0b19: 48 ff     eor   a,#$ff
0b1b: c4 39     mov   $39,a
0b1d: 3a 38     incw  $38
0b1f: ba 38     movw  ya,$38
0b21: d5 40 fe  mov   $fe40+x,a
0b24: dd        mov   a,y
0b25: d5 41 fe  mov   $fe41+x,a
0b28: 09 b2 ca  or    ($ca),($b2)
0b2b: f5 a0 fc  mov   a,$fca0+x
0b2e: d5 e0 fc  mov   $fce0+x,a
0b31: f5 40 01  mov   a,$0140+x
0b34: f0 2d     beq   $0b63
0b36: fd        mov   y,a
0b37: f5 01 01  mov   a,$0101+x
0b3a: d0 27     bne   $0b63
0b3c: f5 e1 fc  mov   a,$fce1+x
0b3f: 9c        dec   a
0b40: d0 1e     bne   $0b60
0b42: f5 01 fe  mov   a,$fe01+x
0b45: da 34     movw  $34,ya
0b47: f5 c1 fd  mov   a,$fdc1+x
0b4a: c4 36     mov   $36,a
0b4c: 3f 5e 0c  call  $0c5e
0b4f: d5 c1 fd  mov   $fdc1+x,a
0b52: d5 01 fd  mov   $fd01+x,a
0b55: e4 34     mov   a,$34
0b57: d5 01 fe  mov   $fe01+x,a
0b5a: 09 b2 c9  or    ($c9),($b2)
0b5d: f5 a1 fc  mov   a,$fca1+x
0b60: d5 e1 fc  mov   $fce1+x,a
0b63: ba c9     movw  ya,$c9
0b65: d0 01     bne   $0b68
0b67: 6f        ret

0b68: 7d        mov   a,x
0b69: 28 0f     and   a,#$0f
0b6b: c4 34     mov   $34,a
0b6d: 9f        xcn   a
0b6e: 5c        lsr   a
0b6f: c4 35     mov   $35,a
0b71: e4 b2     mov   a,$b2
0b73: 24 c9     and   a,$c9
0b75: d0 03     bne   $0b7a
0b77: 5f 0a 0c  jmp   $0c0a

0b7a: 8f 80 36  mov   $36,#$80
0b7d: 03 b1 1c  bbs0  $b1,$0b9c
0b80: f5 41 fc  mov   a,$fc41+x
0b83: 60        clrc
0b84: 95 e1 fd  adc   a,$fde1+x
0b87: 2d        push  a
0b88: f5 e1 fd  mov   a,$fde1+x
0b8b: ae        pop   a
0b8c: 30 06     bmi   $0b94
0b8e: 90 08     bcc   $0b98
0b90: e8 ff     mov   a,#$ff
0b92: 2f 04     bra   $0b98
0b94: b0 02     bcs   $0b98
0b96: e8 00     mov   a,#$00
0b98: 48 ff     eor   a,#$ff
0b9a: c4 36     mov   $36,a
0b9c: f5 01 fc  mov   a,$fc01+x
0b9f: fd        mov   y,a
0ba0: c4 37     mov   $37,a
0ba2: f5 01 fd  mov   a,$fd01+x
0ba5: 1c        asl   a
0ba6: f0 10     beq   $0bb8
0ba8: 90 03     bcc   $0bad
0baa: 48 ff     eor   a,#$ff
0bac: bc        inc   a
0bad: cf        mul   ya
0bae: b0 08     bcs   $0bb8
0bb0: dd        mov   a,y
0bb1: 84 37     adc   a,$37
0bb3: 90 02     bcc   $0bb7
0bb5: e8 ff     mov   a,#$ff
0bb7: fd        mov   y,a
0bb8: c8 10     cmp   x,#$10
0bba: b0 0e     bcs   $0bca
0bbc: e4 84     mov   a,$84
0bbe: cf        mul   ya
0bbf: e5 88 ff  mov   a,$ff88
0bc2: 74 5d     cmp   a,$5d+x
0bc4: f0 07     beq   $0bcd
0bc6: e4 ac     mov   a,$ac
0bc8: 2f 02     bra   $0bcc
0bca: e8 90     mov   a,#$90
0bcc: cf        mul   ya
0bcd: cb 37     mov   $37,y
0bcf: c8 10     cmp   x,#$10
0bd1: 90 06     bcc   $0bd9
0bd3: aa b1 60  mov1  c,$0c16,1
0bd6: ca 34 00  mov1  $0006,4,c
0bd9: e4 36     mov   a,$36
0bdb: fd        mov   y,a
0bdc: e4 37     mov   a,$37
0bde: cf        mul   ya
0bdf: e4 b2     mov   a,$b2
0be1: 24 b3     and   a,$b3
0be3: f0 02     beq   $0be7
0be5: 8d 00     mov   y,#$00
0be7: dd        mov   a,y
0be8: eb 34     mov   y,$34
0bea: d6 cd 00  mov   $00cd+y,a
0bed: 5c        lsr   a
0bee: fd        mov   y,a
0bef: e4 35     mov   a,$35
0bf1: c8 10     cmp   x,#$10
0bf3: 90 05     bcc   $0bfa
0bf5: 73 b1 02  bbc3  $b1,$0bfa
0bf8: 48 01     eor   a,#$01
0bfa: c4 f2     mov   $f2,a
0bfc: cb f3     mov   $f3,y
0bfe: e4 36     mov   a,$36
0c00: 48 ff     eor   a,#$ff
0c02: ea 34 00  not1  $0006,4
0c05: ab 35     inc   $35
0c07: 33 35 d1  bbc1  $35,$0bdb
0c0a: 22 35     set1  $35
0c0c: e4 b2     mov   a,$b2
0c0e: 24 ca     and   a,$ca
0c10: f0 43     beq   $0c55
0c12: f5 60 fe  mov   a,$fe60+x
0c15: c4 36     mov   $36,a
0c17: f5 61 fe  mov   a,$fe61+x
0c1a: c4 37     mov   $37,a
0c1c: f5 41 fe  mov   a,$fe41+x
0c1f: fd        mov   y,a
0c20: f5 40 fe  mov   a,$fe40+x
0c23: 7a 36     addw  ya,$36
0c25: da 36     movw  $36,ya
0c27: c8 10     cmp   x,#$10
0c29: b0 1d     bcs   $0c48
0c2b: e4 9c     mov   a,$9c
0c2d: 48 80     eor   a,#$80
0c2f: 0d        push  psw
0c30: 2d        push  a
0c31: cf        mul   ya
0c32: da 38     movw  $38,ya
0c34: ae        pop   a
0c35: eb 36     mov   y,$36
0c37: cf        mul   ya
0c38: dd        mov   a,y
0c39: 8d 00     mov   y,#$00
0c3b: 7a 38     addw  ya,$38
0c3d: 8e        pop   psw
0c3e: 30 08     bmi   $0c48
0c40: 1c        asl   a
0c41: 2d        push  a
0c42: dd        mov   a,y
0c43: 3c        rol   a
0c44: fd        mov   y,a
0c45: ae        pop   a
0c46: 7a 36     addw  ya,$36
0c48: f8 35     mov   x,$35
0c4a: d8 f2     mov   $f2,x
0c4c: c4 f3     mov   $f3,a
0c4e: 3d        inc   x
0c4f: d8 f2     mov   $f2,x
0c51: cb f3     mov   $f3,y
0c53: f8 05     mov   x,$05
0c55: e4 b2     mov   a,$b2
0c57: 4e c9 00  tclr1 $00c9
0c5a: 4e ca 00  tclr1 $00ca
0c5d: 6f        ret

0c5e: dd        mov   a,y
0c5f: 28 3f     and   a,#$3f
0c61: 1c        asl   a
0c62: bc        inc   a
0c63: f3 35 09  bbc7  $35,$0c6f
0c66: d3 35 06  bbc6  $35,$0c6f
0c69: f3 36 3e  bbc7  $36,$0caa
0c6c: 8f 00 36  mov   $36,#$00
0c6f: 0b 36     asl   $36
0c71: d0 29     bne   $0c9c
0c73: eb 34     mov   y,$34
0c75: f0 27     beq   $0c9e
0c77: 13 34 09  bbc0  $34,$0c83
0c7a: 12 34     clr0  $34
0c7c: 5c        lsr   a
0c7d: 5c        lsr   a
0c7e: d0 1e     bne   $0c9e
0c80: bc        inc   a
0c81: 2f 1b     bra   $0c9e
0c83: 33 34 08  bbc1  $34,$0c8e
0c86: 32 34     clr1  $34
0c88: 5c        lsr   a
0c89: d0 13     bne   $0c9e
0c8b: bc        inc   a
0c8c: 2f 10     bra   $0c9e
0c8e: 52 34     clr2  $34
0c90: 5c        lsr   a
0c91: c4 38     mov   $38,a
0c93: 5c        lsr   a
0c94: 60        clrc
0c95: 84 38     adc   a,$38
0c97: d0 05     bne   $0c9e
0c99: bc        inc   a
0c9a: 2f 02     bra   $0c9e
0c9c: e8 00     mov   a,#$00
0c9e: 38 40 35  and   $35,#$40
0ca1: 0b 35     asl   $35
0ca3: 58 80 35  eor   $35,#$80
0ca6: 04 35     or    a,$35
0ca8: 2f 04     bra   $0cae
0caa: e4 36     mov   a,$36
0cac: 08 80     or    a,#$80
0cae: 6f        ret

; check for CPU command on APU0
0caf: f8 f4     mov   x,$f4             ; check APU0
0cb1: f0 3d     beq   $0cf0             ; return if 0
0cb3: ba f6     movw  ya,$f6            
0cb5: da b6     movw  $b6,ya            ; save APU2/3 in $B6/7
0cb7: ba f4     movw  ya,$f4            
0cb9: da b4     movw  $b4,ya            ; save APU0/1 in $B4/5
0cbb: 68 83     cmp   a,#$83            
0cbd: d0 02     bne   $0cc1             
0cbf: cb f5     mov   $f5,y             ; write APU1 back if APU0 == $83
0cc1: c4 f4     mov   $f4,a             ; write APU0 back
0cc3: 64 f4     cmp   a,$f4             
0cc5: f0 fc     beq   $0cc3             ; wait for APU0 to change
0cc7: 5d        mov   x,a
0cc8: 10 0d     bpl   $0cd7             ; if X >= $80 then
0cca: c8 fe     cmp   x,#$fe            
0ccc: d0 03     bne   $0cd1             
0cce: 5f ea 11  jmp   $11ea             ;  if X == $FE then JMP 11EA

0cd1: 8f 00 f4  mov   $f4,#$00          ;  write 0 to APU0
0cd4: 5f f9 0f  jmp   $0ff9             ;  JMP 0FF9
                                        
0cd7: c8 01     cmp   x,#$01            
0cd9: f0 16     beq   $0cf1             ; if X == $01 then JMP 0CF1
0cdb: 8f 00 f4  mov   $f4,#$00          ; write 0 to APU0
0cde: c8 02     cmp   x,#$02            
0ce0: d0 03     bne   $0ce5             
0ce2: 5f 10 0e  jmp   $0e10             ; if X == $02 then JMP 0E10
                                        
0ce5: c8 10     cmp   x,#$10            
0ce7: 90 07     bcc   $0cf0             
0ce9: c8 20     cmp   x,#$20            
0ceb: b0 03     bcs   $0cf0             
0ced: 5f f6 0e  jmp   $0ef6             ; if X >= $10 && X < $20 then JMP 0EF6

0cf0: 6f        ret

; CPU cmd 01
0cf1: e8 ff     mov   a,#$ff
0cf3: 8d 5c     mov   y,#$5c
0cf5: 3f 1b 06  call  $061b             ; key off all voices NOW
0cf8: 8f 00 f1  mov   $f1,#$00          ; stop timers
0cfb: 8f 40 fa  mov   $fa,#$40          ; set timer0 latch to #$40 (31.25 Hz, 8ms)
0cfe: 8f 01 f1  mov   $f1,#$01          ; start timer0
0d01: e4 fd     mov   a,$fd             ; clear counter0
0d03: e4 fd     mov   a,$fd             
0d05: f0 fc     beq   $0d03             ; wait for counter0 to trigger
0d07: 8f 00 f1  mov   $f1,#$00          ; stop timers
0d0a: 8f 24 fa  mov   $fa,#$24          ; reset timer0 latch to normal val
0d0d: 8f 01 f1  mov   $f1,#$01          ; start timer0
0d10: f8 f4     mov   x,$f4
0d12: e4 f6     mov   a,$f6
0d14: 28 0f     and   a,#$0f
0d16: c4 df     mov   $df,a             ; set echo delay from APU2 & #$0F
0d18: e4 f7     mov   a,$f7             
0d1a: c4 a7     mov   $a7,a             
0d1c: d8 f4     mov   $f4,x             ; write APU0 value back
0d1e: 3e f4     cmp   x,$f4             
0d20: f0 fc     beq   $0d1e             ; wait for APU0 change
0d22: f8 f4     mov   x,$f4             
0d24: ba f6     movw  ya,$f6            
0d26: c4 c8     mov   $c8,a             
0d28: cb c7     mov   $c7,y             ; set $C7/8 from APU2/3
0d2a: d8 f4     mov   $f4,x             ; write APU0 value back
0d2c: 3e f4     cmp   x,$f4             
0d2e: f0 fc     beq   $0d2c             ; wait for APU0 change
0d30: 3f de 12  call  $12de             ; set echo registers
0d33: 3f ea 11  call  $11ea             ; simulate CPU cmd FE
0d36: e8 00     mov   a,#$00
0d38: fd        mov   y,a
0d39: da ad     movw  $ad,ya
0d3b: da bc     movw  $bc,ya
0d3d: da be     movw  $be,ya
0d3f: da c0     movw  $c0,ya
0d41: c4 b8     mov   $b8,a             ; zero echo enable shadow
0d43: c4 b9     mov   $b9,a             ; zero noise enable shadow
0d45: c4 ba     mov   $ba,a             ; zero pitchmod enable shadow
0d47: 32 b1     clr1  $b1               
0d49: da af     movw  $af,ya            ; zero keyon/off shadows
0d4b: c4 90     mov   $90,a
0d4d: e2 90     set7  $90
0d4f: c4 97     mov   $97,a
0d51: c4 9c     mov   $9c,a
0d53: e2 9c     set7  $9c
0d55: c4 a3     mov   $a3,a
0d57: da c9     movw  $c9,ya
0d59: da c2     movw  $c2,ya
0d5b: c4 c4     mov   $c4,a
0d5d: da cb     movw  $cb,ya
0d5f: 8f 01 7d  mov   $7d,#$01
0d62: 8f ff 7e  mov   $7e,#$ff
0d65: 8f ff ac  mov   $ac,#$ff
0d68: e3 b1 02  bbs7  $b1,$0d6d
0d6b: c4 b3     mov   $b3,a
0d6d: 3f 2f 13  call  $132f             ; finish echo setup
0d70: 73 04 03  bbc3  $04,$0d76
0d73: 5f dd 0d  jmp   $0ddd

0d76: cd 10     mov   x,#$10
0d78: f5 01 1a  mov   a,$1a01+x
0d7b: d4 0b     mov   $0b+x,a
0d7d: 1d        dec   x
0d7e: d0 f8     bne   $0d78
0d80: e5 00 1a  mov   a,$1a00
0d83: c4 06     mov   $06,a
0d85: e5 01 1a  mov   a,$1a01
0d88: c4 07     mov   $07,a
0d8a: e8 14     mov   a,#$14
0d8c: 8d 1a     mov   y,#$1a
0d8e: 9a 06     subw  ya,$06
0d90: da 06     movw  $06,ya
0d92: cd 0e     mov   x,#$0e
0d94: 8f 80 b2  mov   $b2,#$80
0d97: e5 12 1a  mov   a,$1a12
0d9a: ec 13 1a  mov   y,$1a13
0d9d: da 34     movw  $34,ya
0d9f: f4 0c     mov   a,$0c+x
0da1: fb 0d     mov   y,$0d+x
0da3: 5a 34     cmpw  ya,$34
0da5: f0 11     beq   $0db8
0da7: 09 b2 ad  or    ($ad),($b2)
0daa: 7a 06     addw  ya,$06
0dac: d4 0c     mov   $0c+x,a
0dae: db 0d     mov   $0d+x,y
0db0: e8 ff     mov   a,#$ff
0db2: c5 88 ff  mov   $ff88,a
0db5: 3f e5 0d  call  $0de5
0db8: 1d        dec   x
0db9: 1d        dec   x
0dba: 4b b2     lsr   $b2
0dbc: d0 e1     bne   $0d9f
0dbe: e4 b7     mov   a,$b7
0dc0: 28 f0     and   a,#$f0
0dc2: 9f        xcn   a
0dc3: 8d 11     mov   y,#$11
0dc5: cf        mul   ya
0dc6: c4 84     mov   $84,a
0dc8: e4 b6     mov   a,$b6
0dca: 28 f0     and   a,#$f0
0dcc: c4 b5     mov   $b5,a
0dce: e4 b7     mov   a,$b7
0dd0: 28 0f     and   a,#$0f
0dd2: 04 b5     or    a,$b5
0dd4: c4 b5     mov   $b5,a
0dd6: e8 81     mov   a,#$81
0dd8: c4 b4     mov   $b4,a
0dda: 3f 11 10  call  $1011             ; cpu cmd $80
0ddd: cd ff     mov   x,#$ff
0ddf: bd        mov   sp,x
0de0: e4 fd     mov   a,$fd
0de2: 5f 79 02  jmp   $0279

0de5: 7d        mov   a,x
0de6: 1c        asl   a
0de7: d4 5c     mov   $5c+x,a
0de9: e8 00     mov   a,#$00
0deb: d5 20 01  mov   $0120+x,a
0dee: d5 80 fd  mov   $fd80+x,a
0df1: d5 81 fd  mov   $fd81+x,a
0df4: d5 21 01  mov   $0121+x,a
0df7: d5 40 01  mov   $0140+x,a
0dfa: d5 41 01  mov   $0141+x,a
0dfd: d5 e0 fd  mov   $fde0+x,a
0e00: d5 e1 fd  mov   $fde1+x,a
0e03: d5 40 fd  mov   $fd40+x,a
0e06: d5 61 fd  mov   $fd61+x,a
0e09: d5 80 fc  mov   $fc80+x,a
0e0c: bc        inc   a
0e0d: d4 3c     mov   $3c+x,a
0e0f: 6f        ret

; CPU cmd 02
0e10: fa b5 2c  mov   ($2c),($b5)
0e13: 8f 00 2d  mov   $2d,#$00
0e16: 0b 2c     asl   $2c
0e18: 2b 2d     rol   $2d
0e1a: 0b 2c     asl   $2c
0e1c: 2b 2d     rol   $2d
0e1e: e8 00     mov   a,#$00
0e20: 8d 2c     mov   y,#$2c
0e22: 7a 2c     addw  ya,$2c
0e24: da 2c     movw  $2c,ya
0e26: cd 00     mov   x,#$00
0e28: 8d 01     mov   y,#$01
0e2a: f7 2c     mov   a,($2c)+y
0e2c: d0 09     bne   $0e37
0e2e: 8d 03     mov   y,#$03
0e30: f7 2c     mov   a,($2c)+y
0e32: f0 17     beq   $0e4b
0e34: dc        dec   y
0e35: 2f 08     bra   $0e3f
0e37: 8d 03     mov   y,#$03
0e39: f7 2c     mov   a,($2c)+y
0e3b: d0 0f     bne   $0e4c
0e3d: 8d 00     mov   y,#$00
0e3f: f7 2c     mov   a,($2c)+y
0e41: c4 30     mov   $30,a
0e43: fc        inc   y
0e44: f7 2c     mov   a,($2c)+y
0e46: c4 31     mov   $31,a
0e48: 5f 11 0f  jmp   $0f11

0e4b: 6f        ret

0e4c: 8f 40 b2  mov   $b2,#$40
0e4f: cd 1c     mov   x,#$1c
0e51: 3f ce 0f  call  $0fce
0e54: dd        mov   a,y
0e55: f0 0a     beq   $0e61
0e57: c8 10     cmp   x,#$10
0e59: f0 25     beq   $0e80
0e5b: 4b b2     lsr   $b2
0e5d: 1d        dec   x
0e5e: 1d        dec   x
0e5f: 2f 1f     bra   $0e80
0e61: 78 fe ae  cmp   $ae,#$fe
0e64: 90 01     bcc   $0e67
0e66: 6f        ret

0e67: 8f 40 b2  mov   $b2,#$40
0e6a: cd 1c     mov   x,#$1c
0e6c: e4 b2     mov   a,$b2
0e6e: 24 ae     and   a,$ae
0e70: d0 07     bne   $0e79
0e72: e4 b2     mov   a,$b2
0e74: 1c        asl   a
0e75: 24 ae     and   a,$ae
0e77: f0 07     beq   $0e80
0e79: 1d        dec   x
0e7a: 1d        dec   x
0e7b: 4b b2     lsr   $b2
0e7d: d0 ed     bne   $0e6c
0e7f: 6f        ret

0e80: e4 b2     mov   a,$b2
0e82: 0b b2     asl   $b2
0e84: 04 b2     or    a,$b2
0e86: 0e b0 00  tset1 $00b0
0e89: 4e af 00  tclr1 $00af
0e8c: 4e c9 00  tclr1 $00c9
0e8f: 4e ca 00  tclr1 $00ca
0e92: 4e b8 00  tclr1 $00b8
0e95: 4e ba 00  tclr1 $00ba
0e98: 4e b9 00  tclr1 $00b9
0e9b: 4e bd 00  tclr1 $00bd
0e9e: 4e c1 00  tclr1 $00c1
0ea1: 4e bf 00  tclr1 $00bf
0ea4: 4e c3 00  tclr1 $00c3
0ea7: 0e ae 00  tset1 $00ae
0eaa: 3d        inc   x
0eab: 3d        inc   x
0eac: 7d        mov   a,x
0ead: 5c        lsr   a
0eae: 28 07     and   a,#$07
0eb0: fd        mov   y,a
0eb1: e4 b5     mov   a,$b5
0eb3: d6 80 ff  mov   $ff80+y,a
0eb6: d6 7f ff  mov   $ff7f+y,a
0eb9: 4d        push  x
0eba: 3f 91 0f  call  $0f91
0ebd: ce        pop   x
0ebe: 8d 03     mov   y,#$03
0ec0: f7 2c     mov   a,($2c)+y
0ec2: d4 0d     mov   $0d+x,a
0ec4: dc        dec   y
0ec5: f7 2c     mov   a,($2c)+y
0ec7: d4 0c     mov   $0c+x,a
0ec9: 3f e5 0d  call  $0de5
0ecc: bb 3c     inc   $3c+x
0ece: e8 64     mov   a,#$64
0ed0: d5 01 fc  mov   $fc01+x,a
0ed3: e4 b7     mov   a,$b7
0ed5: d5 41 fc  mov   $fc41+x,a
0ed8: e4 b6     mov   a,$b6
0eda: d5 81 fc  mov   $fc81+x,a
0edd: e4 b4     mov   a,$b4
0edf: d5 60 fc  mov   $fc60+x,a
0ee2: e4 b5     mov   a,$b5
0ee4: d5 61 fc  mov   $fc61+x,a
0ee7: 6d        push  y
0ee8: e8 04     mov   a,#$04
0eea: 3f 66 08  call  $0866
0eed: ee        pop   y
0eee: 1d        dec   x
0eef: 1d        dec   x
0ef0: 4b b2     lsr   $b2
0ef2: dc        dec   y
0ef3: 10 cb     bpl   $0ec0
0ef5: 6f        ret

; CPU cmds 10-1F
0ef6: 7d        mov   a,x
0ef7: 28 0f     and   a,#$0f
0ef9: 1c        asl   a
0efa: fd        mov   y,a
0efb: f6 3c 15  mov   a,$153c+y
0efe: d0 01     bne   $0f01
0f00: 6f        ret

0f01: c4 31     mov   $31,a
0f03: f6 3b 15  mov   a,$153b+y
0f06: c4 30     mov   $30,a
0f08: 8f fe b5  mov   $b5,#$fe
0f0b: 8f 0f b6  mov   $b6,#$0f
0f0e: 8f 80 b7  mov   $b7,#$80
0f11: 8f 80 b2  mov   $b2,#$80
0f14: cd 1e     mov   x,#$1e
0f16: 3f ce 0f  call  $0fce
0f19: dd        mov   a,y
0f1a: d0 16     bne   $0f32
0f1c: 78 ff ae  cmp   $ae,#$ff
0f1f: f0 6f     beq   $0f90
0f21: 8f 80 b2  mov   $b2,#$80
0f24: cd 1e     mov   x,#$1e
0f26: e4 b2     mov   a,$b2
0f28: 24 ae     and   a,$ae
0f2a: f0 06     beq   $0f32
0f2c: 1d        dec   x
0f2d: 1d        dec   x
0f2e: 4b b2     lsr   $b2
0f30: 2f f4     bra   $0f26
0f32: e4 b2     mov   a,$b2
0f34: 0e b0 00  tset1 $00b0
0f37: 4e af 00  tclr1 $00af
0f3a: 4e c9 00  tclr1 $00c9
0f3d: 4e ca 00  tclr1 $00ca
0f40: 4e b8 00  tclr1 $00b8
0f43: 4e ba 00  tclr1 $00ba
0f46: 4e b9 00  tclr1 $00b9
0f49: 4e bd 00  tclr1 $00bd
0f4c: 4e c1 00  tclr1 $00c1
0f4f: 4e bf 00  tclr1 $00bf
0f52: 4e c3 00  tclr1 $00c3
0f55: 0e ae 00  tset1 $00ae
0f58: 7d        mov   a,x
0f59: 5c        lsr   a
0f5a: 28 07     and   a,#$07
0f5c: fd        mov   y,a
0f5d: e4 b5     mov   a,$b5
0f5f: d6 80 ff  mov   $ff80+y,a
0f62: 4d        push  x
0f63: 3f 91 0f  call  $0f91
0f66: ce        pop   x
0f67: ba 30     movw  ya,$30
0f69: d4 0c     mov   $0c+x,a
0f6b: db 0d     mov   $0d+x,y
0f6d: 3f e5 0d  call  $0de5
0f70: bb 3c     inc   $3c+x
0f72: e8 04     mov   a,#$04
0f74: 3f 66 08  call  $0866
0f77: e8 64     mov   a,#$64
0f79: d5 01 fc  mov   $fc01+x,a
0f7c: e4 b7     mov   a,$b7
0f7e: d5 41 fc  mov   $fc41+x,a
0f81: e4 b6     mov   a,$b6
0f83: d5 81 fc  mov   $fc81+x,a
0f86: e4 b4     mov   a,$b4
0f88: d5 60 fc  mov   $fc60+x,a
0f8b: e4 b5     mov   a,$b5
0f8d: d5 61 fc  mov   $fc61+x,a
0f90: 6f        ret

0f91: e4 b7     mov   a,$b7
0f93: 9f        xcn   a
0f94: 28 f0     and   a,#$f0
0f96: d0 02     bne   $0f9a
0f98: e8 80     mov   a,#$80
0f9a: c4 b5     mov   $b5,a
0f9c: 38 f0 b7  and   $b7,#$f0
0f9f: d0 02     bne   $0fa3
0fa1: e2 b7     set7  $b7
0fa3: 38 f0 b6  and   $b6,#$f0
0fa6: e4 b7     mov   a,$b7
0fa8: 80        setc
0fa9: a4 b5     sbc   a,$b5
0fab: 0d        push  psw
0fac: b0 03     bcs   $0fb1
0fae: 48 ff     eor   a,#$ff
0fb0: bc        inc   a
0fb1: f8 b6     mov   x,$b6
0fb3: d0 03     bne   $0fb8
0fb5: ae        pop   a
0fb6: 2f 15     bra   $0fcd
0fb8: 8d 00     mov   y,#$00
0fba: 9e        div   ya,x
0fbb: c4 b5     mov   $b5,a
0fbd: e8 00     mov   a,#$00
0fbf: 9e        div   ya,x
0fc0: c4 b4     mov   $b4,a
0fc2: 8e        pop   psw
0fc3: 90 08     bcc   $0fcd
0fc5: 58 ff b4  eor   $b4,#$ff
0fc8: 58 ff b5  eor   $b5,#$ff
0fcb: 3a b4     incw  $b4
0fcd: 6f        ret

0fce: 8d 08     mov   y,#$08
0fd0: e4 b5     mov   a,$b5
0fd2: 76 7f ff  cmp   a,$ff7f+y
0fd5: f0 04     beq   $0fdb
0fd7: fe f9     dbnz  y,$0fd2
0fd9: 2f 1d     bra   $0ff8
0fdb: e4 b6     mov   a,$b6
0fdd: 28 0f     and   a,#$0f
0fdf: f0 15     beq   $0ff6
0fe1: cb 34     mov   $34,y
0fe3: 8b 34     dec   $34
0fe5: 0b 34     asl   $34
0fe7: 82 34     set4  $34
0fe9: 7d        mov   a,x
0fea: 2f 04     bra   $0ff0
0fec: 4b b2     lsr   $b2
0fee: 9c        dec   a
0fef: 9c        dec   a
0ff0: 2e 34 f9  cbne  $34,$0fec
0ff3: 5d        mov   x,a
0ff4: 2f 02     bra   $0ff8
0ff6: ae        pop   a
0ff7: ae        pop   a
0ff8: 6f        ret

; handle CPU cmd >= $80 in X
0ff9: c8 f0     cmp   x,#$f0
0ffb: b0 04     bcs   $1001
0ffd: c8 90     cmp   x,#$90
0fff: b0 0d     bcs   $100e             ; if X >= $90 && X < $F0 then return
1001: 7d        mov   a,x
1002: 28 1f     and   a,#$1f
1004: 1c        asl   a
1005: fd        mov   y,a
1006: f6 b3 14  mov   a,$14b3+y
1009: 2d        push  a
100a: f6 b2 14  mov   a,$14b2+y
100d: 2d        push  a                 ; push addr from table for return
100e: 6f        ret

; CPU cmd 83
100f: a2 b1     set5  $b1
; CPU cmd 80
1011: e4 b5     mov   a,$b5
1013: 38 f0 b5  and   $b5,#$f0
1016: 28 0f     and   a,#$0f
1018: 8d 11     mov   y,#$11
101a: cf        mul   ya
101b: c4 b6     mov   $b6,a
101d: fa b5 f5  mov   ($f5),($b5)
1020: eb b6     mov   y,$b6
1022: e4 b5     mov   a,$b5
1024: c4 8b     mov   $8b,a
1026: d0 0d     bne   $1035
1028: cb 84     mov   $84,y
102a: c4 83     mov   $83,a
102c: c4 88     mov   $88,a
102e: c4 87     mov   $87,a
1030: 09 ad c9  or    ($c9),($ad)
1033: 2f 30     bra   $1065
1035: dd        mov   a,y
1036: 80        setc
1037: a4 84     sbc   a,$84
1039: f0 e9     beq   $1024
103b: 0d        push  psw
103c: b0 03     bcs   $1041
103e: 48 ff     eor   a,#$ff
1040: bc        inc   a
1041: f8 b5     mov   x,$b5
1043: 8d 00     mov   y,#$00
1045: 9e        div   ya,x
1046: c4 35     mov   $35,a
1048: e8 00     mov   a,#$00
104a: 9e        div   ya,x
104b: c4 34     mov   $34,a
104d: ba 34     movw  ya,$34
104f: d0 02     bne   $1053
1051: ab 34     inc   $34
1053: 8e        pop   psw
1054: b0 08     bcs   $105e
1056: 58 ff 34  eor   $34,#$ff
1059: 58 ff 35  eor   $35,#$ff
105c: 3a 34     incw  $34
105e: ba 34     movw  ya,$34
1060: da 87     movw  $87,ya
1062: 8f 00 83  mov   $83,#$00
1065: 6f        ret

; CPU cmd 86
1066: e4 b5     mov   a,$b5
1068: 28 07     and   a,#$07
106a: f0 0a     beq   $1076
106c: 73 b5 01  bbc3  $b5,$1070
106f: 9c        dec   a
1070: 8d 12     mov   y,#$12
1072: cf        mul   ya
1073: 63 b5 02  bbs3  $b5,$1078
1076: 48 80     eor   a,#$80
1078: c4 b6     mov   $b6,a
107a: 38 f0 b5  and   $b5,#$f0
107d: eb b6     mov   y,$b6
107f: e4 b5     mov   a,$b5
1081: c4 97     mov   $97,a
1083: d0 0a     bne   $108f
1085: cb 90     mov   $90,y
1087: c4 8f     mov   $8f,a
; CPU cmd 89
1089: c4 94     mov   $94,a
108b: c4 93     mov   $93,a
108d: 2f 30     bra   $10bf
108f: dd        mov   a,y
1090: 80        setc
1091: a4 90     sbc   a,$90
1093: f0 ec     beq   $1081
1095: 0d        push  psw
1096: b0 03     bcs   $109b
1098: 48 ff     eor   a,#$ff
109a: bc        inc   a
109b: f8 b5     mov   x,$b5
109d: 8d 00     mov   y,#$00
109f: 9e        div   ya,x
10a0: c4 35     mov   $35,a
10a2: e8 00     mov   a,#$00
10a4: 9e        div   ya,x
10a5: c4 34     mov   $34,a
10a7: ba 34     movw  ya,$34
10a9: d0 02     bne   $10ad
10ab: ab 34     inc   $34
10ad: 8e        pop   psw
10ae: b0 08     bcs   $10b8
10b0: 58 ff 34  eor   $34,#$ff
10b3: 58 ff 35  eor   $35,#$ff
10b6: 3a 34     incw  $34
10b8: ba 34     movw  ya,$34
10ba: da 93     movw  $93,ya
10bc: 8f 00 8f  mov   $8f,#$00
10bf: 6f        ret

10c0: ab b4     inc   $b4
10c2: e4 b5     mov   a,$b5
10c4: 28 07     and   a,#$07
10c6: f0 0a     beq   $10d2
10c8: 73 b5 01  bbc3  $b5,$10cc
10cb: 9c        dec   a
10cc: 8d 12     mov   y,#$12
10ce: cf        mul   ya
10cf: 63 b5 02  bbs3  $b5,$10d4
10d2: 48 80     eor   a,#$80
10d4: c4 b6     mov   $b6,a
10d6: 38 f0 b5  and   $b5,#$f0
10d9: eb b6     mov   y,$b6
10db: e4 b5     mov   a,$b5
10dd: c4 a3     mov   $a3,a
10df: d0 0d     bne   $10ee
10e1: cb 9c     mov   $9c,y
10e3: c4 9b     mov   $9b,a
10e5: c4 a0     mov   $a0,a
10e7: c4 9f     mov   $9f,a
10e9: 09 ad ca  or    ($ca),($ad)
10ec: 2f 30     bra   $111e
10ee: dd        mov   a,y
10ef: 80        setc
10f0: a4 9c     sbc   a,$9c
10f2: f0 e9     beq   $10dd
10f4: 0d        push  psw
10f5: b0 03     bcs   $10fa
10f7: 48 ff     eor   a,#$ff
10f9: bc        inc   a
10fa: f8 b5     mov   x,$b5
10fc: 8d 00     mov   y,#$00
10fe: 9e        div   ya,x
10ff: c4 35     mov   $35,a
1101: e8 00     mov   a,#$00
1103: 9e        div   ya,x
1104: c4 34     mov   $34,a
1106: ba 34     movw  ya,$34
1108: d0 02     bne   $110c
110a: ab 34     inc   $34
110c: 8e        pop   psw
110d: b0 08     bcs   $1117
110f: 58 ff 34  eor   $34,#$ff
1112: 58 ff 35  eor   $35,#$ff
1115: 3a 34     incw  $34
1117: ba 34     movw  ya,$34
1119: da 9f     movw  $9f,ya
111b: 8f 00 9b  mov   $9b,#$00
111e: 6f        ret

; CPU cmds F3-F4
111f: 13 b4 04  bbc0  $b4,$1126
1122: 12 b1     clr0  $b1
1124: 2f 02     bra   $1128
1126: 02 b1     set0  $b1
1128: 8f ff c9  mov   $c9,#$ff
112b: 6f        ret

; CPU cmds F0-F2
112c: 23 b4 24  bbs1  $b4,$1153
112f: e4 ae     mov   a,$ae
1131: 48 ff     eor   a,#$ff
1133: 0e b0 00  tset1 $00b0
1136: 4e af 00  tclr1 $00af
1139: 4e b8 00  tclr1 $00b8
113c: 4e ba 00  tclr1 $00ba
113f: 4e b9 00  tclr1 $00b9
1142: e8 00     mov   a,#$00
1144: c4 ad     mov   $ad,a
1146: c4 cb     mov   $cb,a
1148: c4 bc     mov   $bc,a
114a: c4 c0     mov   $c0,a
114c: c4 be     mov   $be,a
114e: b2 b1     clr5  $b1
1150: 03 b4 26  bbs0  $b4,$1179
1153: e4 ae     mov   a,$ae
1155: 0e b0 00  tset1 $00b0
1158: 4e af 00  tclr1 $00af
115b: 4e b8 00  tclr1 $00b8
115e: 4e ba 00  tclr1 $00ba
1161: 4e b9 00  tclr1 $00b9
1164: 92 b1     clr4  $b1
1166: e8 00     mov   a,#$00
1168: c4 ae     mov   $ae,a
116a: c4 bd     mov   $bd,a
116c: c4 c1     mov   $c1,a
116e: c4 bf     mov   $bf,a
1170: 8d 08     mov   y,#$08
1172: e8 ff     mov   a,#$ff
1174: d6 7f ff  mov   $ff7f+y,a
1177: fe fb     dbnz  y,$1174
1179: 6f        ret

; CPU cmd F5
117a: fa b5 b3  mov   ($b3),($b5)
117d: 8f ff c9  mov   $c9,#$ff
1180: 6f        ret

; CPU cmd FB
1181: fa ad c4  mov   ($c4),($ad)
1184: 6f        ret

; CPU cmd FC
1185: 60        clrc
1186: e8 ff     mov   a,#$ff
1188: 84 b5     adc   a,$b5
118a: ca b1 60  mov1  $0c16,1,c
118d: 6f        ret

; CPU cmds F6-F7
118e: 03 b4 3a  bbs0  $b4,$11cb
1191: 8d 05     mov   y,#$05
1193: cb f2     mov   $f2,y
1195: e4 f3     mov   a,$f3
1197: 28 7f     and   a,#$7f
1199: c4 f3     mov   $f3,a
119b: dd        mov   a,y
119c: 60        clrc
119d: 88 10     adc   a,#$10
119f: fd        mov   y,a
11a0: 10 f1     bpl   $1193
11a2: cd 00     mov   x,#$00
11a4: 8d 00     mov   y,#$00
11a6: cb f2     mov   $f2,y
11a8: d8 f3     mov   $f3,x
11aa: fc        inc   y
11ab: cb f2     mov   $f2,y
11ad: d8 f3     mov   $f3,x
11af: dd        mov   a,y
11b0: 60        clrc
11b1: 88 0f     adc   a,#$0f
11b3: fd        mov   y,a
11b4: 10 f0     bpl   $11a6
11b6: ba ad     movw  ya,$ad
11b8: f0 06     beq   $11c0
11ba: da cb     movw  $cb,ya
11bc: ba 00     movw  ya,$00
11be: da ad     movw  $ad,ya
11c0: c4 af     mov   $af,a
11c2: 8d 10     mov   y,#$10
11c4: d6 cc 00  mov   $00cc+y,a
11c7: fe fb     dbnz  y,$11c4
11c9: 2f 1e     bra   $11e9
11cb: 8d 05     mov   y,#$05
11cd: cb f2     mov   $f2,y
11cf: e4 f3     mov   a,$f3
11d1: 08 80     or    a,#$80
11d3: c4 f3     mov   $f3,a
11d5: dd        mov   a,y
11d6: 60        clrc
11d7: 88 10     adc   a,#$10
11d9: fd        mov   y,a
11da: 10 f1     bpl   $11cd
11dc: ba cb     movw  ya,$cb
11de: f0 09     beq   $11e9
11e0: 8f ff c9  mov   $c9,#$ff
11e3: da ad     movw  $ad,ya
11e5: ba 00     movw  ya,$00
11e7: da cb     movw  $cb,ya
11e9: 6f        ret

; cpu cmd FE
11ea: e4 f5     mov   a,$f5
11ec: c4 04     mov   $04,a             ; get APU1 in A, $04
11ee: 28 07     and   a,#$07            
11f0: c4 f5     mov   $f5,a             ; write A & 7 back to APU1
11f2: d0 04     bne   $11f8             
11f4: d8 f4     mov   $f4,x             ; if A == 0, write cmd back to APU0
11f6: 2f 1b     bra   $1213             ; and return
11f8: 1c        asl   a                 
11f9: 2d        push  a
11fa: ba f6     movw  ya,$f6
11fc: da 2c     movw  $2c,ya
11fe: ee        pop   y
11ff: f6 19 14  mov   a,$1419+y
1202: 2d        push  a
1203: f6 18 14  mov   a,$1418+y
1206: 2d        push  a
1207: 8d 00     mov   y,#$00
1209: f8 f4     mov   x,$f4
120b: d8 f4     mov   $f4,x
120d: 3e f4     cmp   x,$f4
120f: f0 fc     beq   $120d
1211: f8 f4     mov   x,$f4
1213: 6f        ret

; CPU cmd FE-03
1214: e4 f5     mov   a,$f5
1216: d7 2c     mov   ($2c)+y,a
1218: d8 f4     mov   $f4,x
121a: fc        inc   y
121b: e4 f6     mov   a,$f6
121d: d7 2c     mov   ($2c)+y,a
121f: fc        inc   y
1220: e4 f7     mov   a,$f7
1222: d7 2c     mov   ($2c)+y,a
1224: 60        clrc
1225: 98 03 2c  adc   $2c,#$03
1228: 98 00 2d  adc   $2d,#$00
122b: 8d 00     mov   y,#$00
122d: 3e f4     cmp   x,$f4
122f: f0 fc     beq   $122d
1231: f8 f4     mov   x,$f4
1233: d0 df     bne   $1214
1235: 2f b3     bra   $11ea             ; goto CPU cmd FE main
; CPU cmd FE-02
1237: e4 f6     mov   a,$f6
1239: d7 2c     mov   ($2c)+y,a
123b: d8 f4     mov   $f4,x
123d: fc        inc   y
123e: e4 f7     mov   a,$f7
1240: d7 2c     mov   ($2c)+y,a
1242: 3a 2c     incw  $2c
1244: 3a 2c     incw  $2c
1246: dc        dec   y
1247: 3e f4     cmp   x,$f4
1249: f0 fc     beq   $1247
124b: f8 f4     mov   x,$f4
124d: d0 e8     bne   $1237
124f: 2f 99     bra   $11ea             ; goto CPU cmd FE main
; CPU cmd FE-01
1251: d8 f4     mov   $f4,x
1253: e4 f7     mov   a,$f7
1255: d7 2c     mov   ($2c)+y,a
1257: 3a 2c     incw  $2c
1259: 3e f4     cmp   x,$f4
125b: f0 fc     beq   $1259
125d: f8 f4     mov   x,$f4
125f: d0 f0     bne   $1251
1261: 2f 87     bra   $11ea             ; goto CPU cmd FE main
; CPU cmd FE-00,04,05,06
1263: d8 f4     mov   $f4,x
1265: 3e f4     cmp   x,$f4
1267: f0 fc     beq   $1265
1269: f8 f4     mov   x,$f4
126b: d0 f6     bne   $1263
126d: 5f ea 11  jmp   $11ea             ; goto CPU cmd FE main

; CPU cmd FE-07
1270: ba f6     movw  ya,$f6
1272: da 2e     movw  $2e,ya
1274: d8 f4     mov   $f4,x
1276: 3e f4     cmp   x,$f4
1278: f0 fc     beq   $1276
127a: f8 f4     mov   x,$f4
127c: ba f6     movw  ya,$f6
127e: da 34     movw  $34,ya
1280: d8 f4     mov   $f4,x
1282: 8d 00     mov   y,#$00
1284: f7 2c     mov   a,($2c)+y
1286: d7 2e     mov   ($2e)+y,a
1288: fc        inc   y
1289: d0 04     bne   $128f
128b: ab 2d     inc   $2d
128d: ab 2f     inc   $2f
128f: 1a 34     decw  $34
1291: d0 f1     bne   $1284
1293: 3e f4     cmp   x,$f4
1295: f0 fc     beq   $1293
1297: f8 f4     mov   x,$f4
1299: f0 0e     beq   $12a9
129b: ba f6     movw  ya,$f6
129d: da 2c     movw  $2c,ya
129f: d8 f4     mov   $f4,x
12a1: 3e f4     cmp   x,$f4
12a3: f0 fc     beq   $12a1
12a5: f8 f4     mov   x,$f4
12a7: 2f c7     bra   $1270
12a9: 5f ea 11  jmp   $11ea             ; goto CPU cmd FE main

12ac: ea b4 20  not1  $0416,4
12af: aa b4 20  mov1  c,$0416,4
12b2: ca b1 20  mov1  $0416,1,c
12b5: b0 04     bcs   $12bb
12b7: e8 24     mov   a,#$24
12b9: 2f 02     bra   $12bd
12bb: e8 01     mov   a,#$01
12bd: 8f 00 f1  mov   $f1,#$00
12c0: c4 fa     mov   $fa,a
12c2: 8f 01 f1  mov   $f1,#$01
12c5: 6f        ret

; CPU cmd FF
12c6: e8 ff     mov   a,#$ff
12c8: 8d fe     mov   y,#$fe
12ca: 5a b4     cmpw  ya,$b4
12cc: d0 0c     bne   $12da
12ce: e8 fd     mov   a,#$fd
12d0: 8d fc     mov   y,#$fc
12d2: 5a b6     cmpw  ya,$b6
12d4: d0 04     bne   $12da
12d6: e2 b1     set7  $b1
12d8: 2f 02     bra   $12dc
12da: f2 b1     clr7  $b1
12dc: 6f        ret

; no-op CPU cmds
12dd: 6f        ret

; set up echo registers; set timer1 for old echo delay time
12de: 8f 6c f2  mov   $f2,#$6c
12e1: e4 f3     mov   a,$f3
12e3: 08 20     or    a,#$20
12e5: c4 f3     mov   $f3,a             ; DSP FLG bit ECEN on (disable echo)
12e7: e8 00     mov   a,#$00            
12e9: 8d 4d     mov   y,#$4d            
12eb: 3f 1b 06  call  $061b             ; clear all voice echo enable bits
12ee: 8d 0d     mov   y,#$0d            
12f0: 3f 1b 06  call  $061b             ; zero echo feedback
12f3: 8d 2c     mov   y,#$2c            
12f5: 3f 1b 06  call  $061b             ; zero echo vol L
12f8: 8d 3c     mov   y,#$3c            
12fa: 3f 1b 06  call  $061b             ; zero echo vol R
12fd: 8d 7d     mov   y,#$7d
12ff: cb f2     mov   $f2,y
1301: e4 f3     mov   a,$f3
1303: 28 0f     and   a,#$0f
1305: c4 e0     mov   $e0,a             ; save old echo delay in $e0
1307: e4 df     mov   a,$df             
1309: 3f 1b 06  call  $061b             ; set echo delay from $DF
130c: fd        mov   y,a               
130d: d0 01     bne   $1310             
130f: bc        inc   a                 ; A = 1 if A == 0
1310: 1c        asl   a
1311: 1c        asl   a
1312: 1c        asl   a
1313: 48 ff     eor   a,#$ff
1315: bc        inc   a
1316: 60        clrc
1317: 88 fa     adc   a,#$fa
1319: 8d 6d     mov   y,#$6d
131b: 3f 1b 06  call  $061b             ; set echo mem to $FA00-delay*8
131e: c4 e2     mov   $e2,a             
1320: 8f 00 e1  mov   $e1,#$00          ; save echo mem addr in $E1/2
1323: 8f 01 f1  mov   $f1,#$01          
1326: 8f 80 fb  mov   $fb,#$80          ; set timer1 latch to 80 (62.5 Hz, 16ms)
1329: 8f 03 f1  mov   $f1,#$03          ; start timers 0 and 1
132c: e4 fe     mov   a,$fe             ; clear timer1 counter
132e: 6f        ret

; finish echo setup
132f: e8 00     mov   a,#$00
1331: fd        mov   y,a
1332: d7 e1     mov   ($e1)+y,a
1334: fc        inc   y
1335: d0 fb     bne   $1332
1337: ab e2     inc   $e2
1339: 78 fa e2  cmp   $e2,#$fa
133c: d0 f4     bne   $1332             ; zero echo mem region
133e: e4 fe     mov   a,$fe             
1340: 2f 05     bra   $1347             
1342: eb fe     mov   y,$fe             
1344: f0 fc     beq   $1342             ; wait for counter1 to increase
1346: bc        inc   a                 
1347: 64 e0     cmp   a,$e0             ; waited long enough (old echo delay)?
1349: 90 f7     bcc   $1342             ; nope, wait more
134b: 8f 6c f2  mov   $f2,#$6c          
134e: e4 f3     mov   a,$f3             
1350: 28 df     and   a,#$df            
1352: c4 f3     mov   $f3,a             ; clear ECEN in FLG to enable echo
1354: e4 fe     mov   a,$fe
1356: 2f 05     bra   $135d
1358: eb fe     mov   y,$fe
135a: f0 fc     beq   $1358
135c: bc        inc   a
135d: 64 df     cmp   a,$df             ; waited long enough (new echo delay?)
135f: 90 f7     bcc   $1358             ; nope, wait more
1361: e4 a7     mov   a,$a7             
1363: 8d 2c     mov   y,#$2c            
1365: 3f 1b 06  call  $061b             ; set echo vol L from $A7
1368: 8d 3c     mov   y,#$3c            
136a: 3f 1b 06  call  $061b             ; set echo vol R from $A7
136d: 38 03 c7  and   $c7,#$03          
1370: e4 c7     mov   a,$c7             ; get filter index from $C7
1372: 1c        asl   a                 
1373: 1c        asl   a                 
1374: 1c        asl   a                 
1375: fd        mov   y,a               
1376: cd 0f     mov   x,#$0f            ; set DSP filter coeffs
1378: f6 0c 15  mov   a,$150c+y         ; from table at 150C
137b: d8 f2     mov   $f2,x
137d: c4 f3     mov   $f3,a
137f: fc        inc   y
1380: 7d        mov   a,x
1381: 60        clrc
1382: 88 10     adc   a,#$10
1384: 5d        mov   x,a
1385: 10 f1     bpl   $1378
1387: 8d 0d     mov   y,#$0d
1389: e4 c8     mov   a,$c8
138b: 5f 1b 06  jmp   $061b

138e: e8 34     mov   a,#$34
1390: c4 39     mov   $39,a
1392: e8 cd     mov   a,#$cd
1394: 8f 00 03  mov   $03,#$00
1397: 43 b1 05  bbs2  $b1,$139f
139a: 8f 09 b2  mov   $b2,#$09          ; OUTX wave height for voice 0
139d: 2f 08     bra   $13a7
139f: 8f 49 b2  mov   $b2,#$49
13a2: 60        clrc
13a3: 88 08     adc   a,#$08
13a5: e2 03     set7  $03
13a7: c4 3a     mov   $3a,a
13a9: 60        clrc
13aa: 88 08     adc   a,#$08
13ac: c4 02     mov   $02,a
13ae: f8 3a     mov   x,$3a
13b0: eb b2     mov   y,$b2
13b2: cb f2     mov   $f2,y
13b4: eb f3     mov   y,$f3             ; read wave height for voice
13b6: 6d        push  y
13b7: bf        mov   a,(x)+
13b8: cf        mul   ya
13b9: dd        mov   a,y
13ba: 28 70     and   a,#$70
13bc: c4 38     mov   $38,a
13be: ee        pop   y
13bf: bf        mov   a,(x)+
13c0: cf        mul   ya
13c1: dd        mov   a,y
13c2: d8 3a     mov   $3a,x
13c4: f8 39     mov   x,$39
13c6: 9f        xcn   a
13c7: 28 07     and   a,#$07
13c9: 04 38     or    a,$38
13cb: 04 03     or    a,$03
13cd: af        mov   (x)+,a
13ce: d8 39     mov   $39,x
13d0: 60        clrc
13d1: 98 10 b2  adc   $b2,#$10
13d4: 69 02 3a  cmp   ($3a),($02)
13d7: d0 d5     bne   $13ae
13d9: ba 34     movw  ya,$34
13db: da f4     movw  $f4,ya            ; write APU0/1 from $34/5
13dd: ba 36     movw  ya,$36            
13df: da f6     movw  $f6,ya            ; write APU2/3 from $36/7
13e1: 58 04 b1  eor   $b1,#$04
13e4: 6f        ret

13e5: e4 8b     mov   a,$8b
13e7: f0 0f     beq   $13f8
13e9: 8b 8b     dec   $8b
13eb: ba 87     movw  ya,$87
13ed: 7a 83     addw  ya,$83
13ef: 7e 84     cmp   y,$84
13f1: da 83     movw  $83,ya
13f3: f0 03     beq   $13f8
13f5: 09 ad c9  or    ($c9),($ad)
13f8: e4 97     mov   a,$97
13fa: f0 08     beq   $1404
13fc: 8b 97     dec   $97
13fe: ba 93     movw  ya,$93
1400: 7a 8f     addw  ya,$8f
1402: da 8f     movw  $8f,ya
1404: e4 a3     mov   a,$a3
1406: f0 0f     beq   $1417
1408: 8b a3     dec   $a3
140a: ba 9f     movw  ya,$9f
140c: 7a 9b     addw  ya,$9b
140e: 7e 9c     cmp   y,$9c
1410: da 9b     movw  $9b,ya
1412: f0 03     beq   $1417
1414: 09 ad ca  or    ($ca),($ad)
1417: 6f        ret

; dispatch table for CPU cmd FE subcommands
1418: dw $1263  ; 00
141a: dw $1251  ; 01
141c: dw $1237  ; 02
141e: dw $1214  ; 03
1420: dw $1263  ; 04
1422: dw $1263  ; 05
1424: dw $1263  ; 06
1426: dw $1270  ; 07

; vcmd dispatch table (d2-ff)
1428: dw $0668  ; d2
142a: dw $0674  ; d3
142c: dw $06b4  ; d4
142e: dw $06e4  ; d5
1430: dw $0720  ; d6
1432: dw $0737  ; d7
1434: dw $0749  ; d8
1436: dw $074d  ; d9
1438: dw $075f  ; da
143a: dw $0763  ; db
143c: dw $07b4  ; dc
143e: dw $0831  ; dd - set noise freq
1440: dw $07f5  ; de - enable noise
1442: dw $081d  ; df - disable noise
1444: dw $083f  ; e0 - enable pitchmod
1446: dw $0856  ; e1 - disable pitchmod
1448: dw $07ce  ; e2 - enable echo
144a: dw $07e5  ; e3 - disable echo
144c: dw $07ca  ; e4 - set octave
144e: dw $07c0  ; e5 - inc octave
1450: dw $07c6  ; e6 - dec octave
1452: dw $072f  ; e7
1454: dw $072b  ; e8
1456: dw $09b0  ; e9
1458: dw $0866  ; ea - set patch
145a: dw $0890  ; eb - set ADSR attack
145c: dw $08be  ; ec - set ADSR decay
145e: dw $08d1  ; ed - set ADSR sustain
1460: dw $08e3  ; ee - set ADSR release
1462: dw $08f3  ; ef - restore default ADSR for patch
1464: dw $0944  ; f0
1466: dw $096b  ; f1
1468: dw $09bc  ; f2 - halt
146a: dw $0620  ; f3
146c: dw $062d  ; f4
146e: dw $06b3  ; f5 - NOP
1470: dw $06b0  ; f6 - NOP with arg
1472: dw $0733  ; f7 - NOP with arg
1474: dw $0665  ; f8
1476: dw $0917  ; f9
1478: dw $0905  ; fa - goto
147a: dw $0995  ; fb
147c: dw $093a  ; fc
147e: dw $09b4  ; fd
1480: dw $09bc  ; fe - halt
1482: dw $09bc  ; ff - halt

; opcode length table
1484: db         $01,$02,$01,$02,$02,$03  ; d2-d7
148a: db $00,$03,$00,$02,$00,$01,$00,$00  ; d8-df
1492: db $00,$00,$00,$00,$01,$00,$00,$01  ; e0-e7
149a: db $01,$01,$01,$01,$01,$01,$01,$00  ; e8-ef
14a2: db $01,$00,$00,$01,$02,$01,$02,$02  ; f0-f7
14aa: db $01,$03,$02,$02,$00,$01,$00,$00  ; f8-ff

; table for CPU cmds 80-8F and F0-FF
14b2: dw $1011  ; 80
14b4: dw $12dd  ; 81 - nop
14b6: dw $12dd  ; 82 - nop
14b8: dw $100f  ; 83
14ba: dw $12dd  ; 84 - nop
14bc: dw $12dd  ; 85 - nop
14be: dw $1066  ; 86
14c0: dw $12dd  ; 87 - nop
14c2: dw $12dd  ; 88 - nop
14c4: dw $10c0  ; 89
14c6: dw $12dd  ; 8a - nop
14c8: dw $12dd  ; 8b - nop
14ca: dw $12dd  ; 8c - nop
14cc: dw $12dd  ; 8d - nop
14ce: dw $12dd  ; 8e - nop
14d0: dw $12dd  ; 8f - nop
14d2: dw $112c  ; f0
14d4: dw $112c  ; f1
14d6: dw $112c  ; f2
14d8: dw $111f  ; f3
14da: dw $111f  ; f4
14dc: dw $117a  ; f5
14de: dw $118e  ; f6
14e0: dw $118e  ; f7
14e2: dw $12ac  ; f8
14e4: dw $12ac  ; f9
14e6: dw $12ac  ; fa
14e8: dw $1181  ; fb
14ea: dw $1185  ; fc
14ec: dw $12dd  ; fd - nop
14ee: dw $12dd  ; fe - nop (actually handled seperately)
14f0: dw $12c6  ; ff

; pitch table
14f2: dw $0879  ; c
14f4: dw $08fa  ; c#
14f6: dw $0983  ; d
14f8: dw $0a14  ; d#
14fa: dw $0aad  ; e
14fc: dw $0b50  ; f
14fe: dw $0bfc  ; f#
1500: dw $0cb2  ; g
1502: dw $0d74  ; g#
1504: dw $0e41  ; a
1506: dw $0f1a  ; a#
1508: dw $1000  ; b
150a: dw $10f3  ; c

; filter coeffecients table
150c: db $7f,$00,$00,$00,$00,$00,$00,$00
1514: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9
151c: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c
1524: db $34,$33,$00,$d9,$e5,$01,$fc,$eb

; duration table
152c: db $c0,$90,$60,$40,$48,$30,$20,$24,$18,$10,$0c,$08,$06,$04,$03

; table for CPU cmds 10-1F
153b: dw $155b  ; 10
153d: dw $156a  ; 11
153f: dw $157a  ; 12
1541: dw $0000  ; 13
1543: dw $0000  ; 14
1545: dw $0000  ; 15
1547: dw $0000  ; 16
1549: dw $0000  ; 17
154b: dw $0000  ; 18
154d: dw $0000  ; 19
154f: dw $0000  ; 1a
1551: dw $0000  ; 1b
1553: dw $0000  ; 1c
1555: dw $0000  ; 1d
1557: dw $0000  ; 1e
1559: dw $0000  ; 1f

; vcmds for CPU cmd 10
155b: db $d2,$ff,$ea,$03,$e4,$08,$d6,$28,$74,$d7,$00,$04,$ff,$56,$f2
; vcmds for CPU cmd 11
156a: db $d2,$ff,$ea,$00,$e4,$04,$d7,$00,$00,$ff,$d6,$04,$0c,$0b,$1b,$f2
; vcmds for CPU cmd 12
157a: db $d2,$ff,$ea,$03,$e4,$07,$d7,$00,$18,$dd,$94,$d6,$18,$7e,$ee,$14,$71,$f2
; shadow reg table
158c: db $4c,$5c,$2d,$3d,$4d,$6c
1592: db $af,$b0,$ba,$b9,$b8,$bb
