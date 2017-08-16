; Super Metroid SPC - loveemu labo
; Disassembler: spcdas v0.01

1500: 20        clrp
1501: cd cf     mov   x,#$cf
1503: bd        mov   sp,x              ; set SP to (01)cf
1504: e8 00     mov   a,#$00
1506: 5d        mov   x,a
1507: af        mov   (x)+,a
1508: c8 e0     cmp   x,#$e0
150a: d0 fb     bne   $1507             ; zero 00-e0
150c: cd 00     mov   x,#$00
150e: e8 00     mov   a,#$00
1510: c4 d2     mov   $d2,a
1512: 8f 05 d3  mov   $d3,#$05
1515: c7 d2     mov   ($d2+x),a
1517: ab d2     inc   $d2
1519: d0 fa     bne   $1515
151b: ab d3     inc   $d3
151d: 78 15 d3  cmp   $d3,#$15
1520: d0 f3     bne   $1515
1522: e8 20     mov   a,#$20
1524: c4 ee     mov   $ee,a
1526: e8 00     mov   a,#$00
1528: c4 ef     mov   $ef,a
152a: e8 0f     mov   a,#$0f
152c: c5 90 03  mov   $0390,a
152f: 3f d7 1e  call  $1ed7
1532: e8 d0     mov   a,#$d0
1534: c4 ee     mov   $ee,a
1536: e8 00     mov   a,#$00
1538: c4 ef     mov   $ef,a
153a: e8 1f     mov   a,#$1f
153c: c5 90 03  mov   $0390,a
153f: 3f d7 1e  call  $1ed7
1542: e8 91     mov   a,#$91
1544: c4 ee     mov   $ee,a
1546: e8 03     mov   a,#$03
1548: c4 ef     mov   $ef,a
154a: e8 6f     mov   a,#$6f
154c: c5 90 03  mov   $0390,a
154f: 3f d7 1e  call  $1ed7
1552: e8 40     mov   a,#$40
1554: c4 ee     mov   $ee,a
1556: e8 04     mov   a,#$04
1558: c4 ef     mov   $ef,a
155a: e8 7f     mov   a,#$7f
155c: c5 90 03  mov   $0390,a
155f: 3f d7 1e  call  $1ed7
1562: bc        inc   a
1563: 3f ab 1a  call  $1aab             ; set echo delay to 1 (16ms)
1566: a2 48     set5  $48
1568: e8 60     mov   a,#$60
156a: 8d 0c     mov   y,#$0c
156c: 3f 26 17  call  $1726             ; master vol L = $60
156f: 8d 1c     mov   y,#$1c
1571: 3f 26 17  call  $1726             ; master vol R = $60
1574: e8 6d     mov   a,#$6d
1576: 8d 5d     mov   y,#$5d
1578: 3f 26 17  call  $1726             ; source dir = $6d00
157b: e8 f0     mov   a,#$f0
157d: c5 f1 00  mov   $00f1,a           ; reset ports, disable timers
1580: e8 10     mov   a,#$10
1582: c5 fa 00  mov   $00fa,a           ; set timer0 latch to #$10 (500 Hz, 2ms)
1585: c4 53     mov   $53,a
1587: e8 01     mov   a,#$01
1589: c5 f1 00  mov   $00f1,a           ; start timer0
158c: e4 1b     mov   a,$1b
158e: d0 6e     bne   $15fe
; main loop
1590: 8d 0a     mov   y,#$0a            ; set DSP regs from shadow:
1592: ad 05     cmp   y,#$05
1594: f0 07     beq   $159d
1596: b0 08     bcs   $15a0
1598: 69 4d 4c  cmp   ($4c),($4d)
159b: d0 11     bne   $15ae
159d: e3 4c 0e  bbs7  $4c,$15ae
15a0: f6 51 1e  mov   a,$1e51+y
15a3: c5 f2 00  mov   $00f2,a
15a6: f6 5b 1e  mov   a,$1e5b+y
15a9: 5d        mov   x,a
15aa: e6        mov   a,(x)
15ab: c5 f3 00  mov   $00f3,a           ; write to DSP reg
15ae: fe e2     dbnz  y,$1592           ; loop for each reg
15b0: cb 45     mov   $45,y
15b2: cb 46     mov   $46,y
15b4: e4 18     mov   a,$18
15b6: 44 19     eor   a,$19
15b8: 5c        lsr   a
15b9: 5c        lsr   a
15ba: ed        notc
15bb: 6b 18     ror   $18
15bd: 6b 19     ror   $19
15bf: ec fd 00  mov   y,$00fd           ; wait for counter0 increment
15c2: f0 fb     beq   $15bf
15c4: 6d        push  y
15c5: e8 20     mov   a,#$20
15c7: cf        mul   ya
15c8: 60        clrc
15c9: 84 43     adc   a,$43
15cb: c4 43     mov   $43,a
15cd: 90 24     bcc   $15f3
15cf: 3f e7 1e  call  $1ee7
15d2: cd 01     mov   x,#$01
15d4: 3f 21 16  call  $1621
15d7: e5 a9 04  mov   a,$04a9
15da: d0 08     bne   $15e4
15dc: 3f 57 31  call  $3157
15df: cd 02     mov   x,#$02
15e1: 3f 21 16  call  $1621
15e4: 3f 06 47  call  $4706
15e7: cd 03     mov   x,#$03
15e9: 3f 21 16  call  $1621
15ec: 69 4d 4c  cmp   ($4c),($4d)
15ef: f0 02     beq   $15f3
15f1: ab 4c     inc   $4c
15f3: e4 53     mov   a,$53
15f5: ee        pop   y
15f6: cf        mul   ya
15f7: 60        clrc
15f8: 84 51     adc   a,$51
15fa: c4 51     mov   $51,a
15fc: 90 0a     bcc   $1608
15fe: 3f 93 17  call  $1793
1601: cd 00     mov   x,#$00
1603: 3f 21 16  call  $1621
1606: 2f 84     bra   $158c
1608: e4 04     mov   a,$04
160a: f0 12     beq   $161e
160c: cd 00     mov   x,#$00
160e: 8f 01 47  mov   $47,#$01
1611: f4 31     mov   a,$31+x
1613: f0 03     beq   $1618
1615: 3f 7a 1d  call  $1d7a
1618: 3d        inc   x
1619: 3d        inc   x
161a: 0b 47     asl   $47
161c: d0 f3     bne   $1611
161e: 5f 8c 15  jmp   $158c

1621: f4 04     mov   a,$04+x
1623: d5 f4 00  mov   $00f4+x,a
1626: f5 f4 00  mov   a,$00f4+x
1629: 75 f4 00  cmp   a,$00f4+x
162c: d0 f8     bne   $1626
162e: d4 00     mov   $00+x,a
1630: 6f        ret

; handle a note vcmd (80-df)
1631: ad ca     cmp   y,#$ca
1633: 90 05     bcc   $163a
; vcmds ca-df - percussion note
1635: 3f f9 18  call  $18f9             ; set sample
1638: 8d a4     mov   y,#$a4            ; dispatch as note $a4
; vcmds 80-c7,c8,c9 - note/tie/rest
163a: ad c8     cmp   y,#$c8
163c: b0 f2     bcs   $1630             ; skip if tie/rest
163e: e4 1a     mov   a,$1a
1640: 24 47     and   a,$47
1642: d0 ec     bne   $1630
; vcmds 80-c7 - note (note number in Y)
1644: dd        mov   a,y
1645: 28 7f     and   a,#$7f
1647: 60        clrc
1648: 84 50     adc   a,$50             ; add global transpose
164a: 60        clrc
164b: 95 f0 02  adc   a,$02f0+x         ; add per-voice transpose
164e: d5 61 03  mov   $0361+x,a
1651: f5 81 03  mov   a,$0381+x
1654: d5 60 03  mov   $0360+x,a
1657: f5 b1 02  mov   a,$02b1+x
165a: 5c        lsr   a
165b: e8 00     mov   a,#$00
165d: 7c        ror   a
165e: d5 a0 02  mov   $02a0+x,a
1661: e8 00     mov   a,#$00
1663: d4 b0     mov   $b0+x,a
1665: d5 00 01  mov   $0100+x,a
1668: d5 d0 02  mov   $02d0+x,a
166b: d4 c0     mov   $c0+x,a
166d: 09 47 5e  or    ($5e),($47)       ; set volume changed flg
1670: 09 47 45  or    ($45),($47)       ; set key on shadow bit
1673: f5 80 02  mov   a,$0280+x         ; pitch envelope counter
1676: d4 a0     mov   $a0+x,a           ; portamento counter
1678: f0 1e     beq   $1698
167a: f5 81 02  mov   a,$0281+x
167d: d4 a1     mov   $a1+x,a
167f: f5 90 02  mov   a,$0290+x         ; pitch envelope mode (0:attack / 1:release)
1682: d0 0a     bne   $168e
1684: f5 61 03  mov   a,$0361+x
1687: 80        setc
1688: b5 91 02  sbc   a,$0291+x
168b: d5 61 03  mov   $0361+x,a
168e: f5 91 02  mov   a,$0291+x
1691: 60        clrc
; set DSP pitch from $10/1
1692: 95 61 03  adc   a,$0361+x
1695: 3f 23 1b  call  $1b23
1698: 3f 3b 1b  call  $1b3b
169b: 8d 00     mov   y,#$00
169d: e4 11     mov   a,$11
169f: 80        setc
16a0: a8 34     sbc   a,#$34
16a2: b0 09     bcs   $16ad
16a4: e4 11     mov   a,$11
16a6: 80        setc
16a7: a8 13     sbc   a,#$13
16a9: b0 06     bcs   $16b1
16ab: dc        dec   y
16ac: 1c        asl   a
16ad: 7a 10     addw  ya,$10
16af: da 10     movw  $10,ya
16b1: 4d        push  x
16b2: e4 11     mov   a,$11
; get pitch from note number in A (with octave correction)
16b4: 1c        asl   a
16b5: 8d 00     mov   y,#$00
16b7: cd 18     mov   x,#$18
16b9: 9e        div   ya,x
16ba: 5d        mov   x,a
16bb: f6 67 1e  mov   a,$1e67+y
16be: c4 15     mov   $15,a
16c0: f6 66 1e  mov   a,$1e66+y
16c3: c4 14     mov   $14,a             ; set $14/5 from pitch table
16c5: f6 69 1e  mov   a,$1e69+y
16c8: 2d        push  a
16c9: f6 68 1e  mov   a,$1e68+y
16cc: ee        pop   y
16cd: 9a 14     subw  ya,$14
16cf: eb 10     mov   y,$10
16d1: cf        mul   ya
16d2: dd        mov   a,y
16d3: 8d 00     mov   y,#$00
16d5: 7a 14     addw  ya,$14
16d7: cb 15     mov   $15,y
16d9: 1c        asl   a
16da: 2b 15     rol   $15
16dc: c4 14     mov   $14,a
16de: 2f 04     bra   $16e4
16e0: 4b 15     lsr   $15
16e2: 7c        ror   a
16e3: 3d        inc   x
16e4: c8 06     cmp   x,#$06
16e6: d0 f8     bne   $16e0
16e8: c4 14     mov   $14,a
16ea: ce        pop   x
16eb: f5 20 02  mov   a,$0220+x
16ee: eb 15     mov   y,$15
16f0: cf        mul   ya
16f1: da 16     movw  $16,ya
16f3: f5 20 02  mov   a,$0220+x
16f6: eb 14     mov   y,$14
16f8: cf        mul   ya
16f9: 6d        push  y
16fa: f5 21 02  mov   a,$0221+x
16fd: eb 14     mov   y,$14
16ff: cf        mul   ya
1700: 7a 16     addw  ya,$16
1702: da 16     movw  $16,ya
1704: f5 21 02  mov   a,$0221+x
1707: eb 15     mov   y,$15
1709: cf        mul   ya
170a: fd        mov   y,a
170b: ae        pop   a
170c: 7a 16     addw  ya,$16
170e: da 16     movw  $16,ya
1710: 7d        mov   a,x               ; set voice X pitch DSP reg from $16/7
1711: 9f        xcn   a                 ;  (if vbit clear in $1a)
1712: 5c        lsr   a
1713: 08 02     or    a,#$02
1715: fd        mov   y,a               ; Y = voice X pitch DSP reg
1716: e4 16     mov   a,$16
1718: 3f 1e 17  call  $171e
171b: fc        inc   y
171c: e4 17     mov   a,$17
; write A to DSP reg Y if vbit clear in $1a
171e: 2d        push  a
171f: e4 47     mov   a,$47
1721: 24 1a     and   a,$1a
1723: ae        pop   a
1724: d0 06     bne   $172c
; write A to DSP reg Y
1726: cc f2 00  mov   $00f2,y
1729: c5 f3 00  mov   $00f3,a
172c: 6f        ret

; read $40/1 into YA with advancing the ptr
172d: 8d 00     mov   y,#$00
172f: f7 40     mov   a,($40)+y
1731: 3a 40     incw  $40
1733: 2d        push  a
1734: f7 40     mov   a,($40)+y
1736: 3a 40     incw  $40
1738: fd        mov   y,a
1739: ae        pop   a
173a: 6f        ret

; play song in A
173b: 3f 8b 1e  call  $1e8b
173e: c4 08     mov   $08,a
1740: c4 04     mov   $04,a
1742: 1c        asl   a
1743: 5d        mov   x,a
1744: f5 1f 58  mov   a,$581f+x
1747: fd        mov   y,a
1748: f5 1e 58  mov   a,$581e+x
174b: da 40     movw  $40,ya
174d: 8f 02 0c  mov   $0c,#$02
1750: e4 1a     mov   a,$1a
1752: 48 ff     eor   a,#$ff
1754: 0e 46 00  tset1 $0046
1757: 6f        ret

; reset song params
1758: cd 0e     mov   x,#$0e
175a: 8f 80 47  mov   $47,#$80          ; last voice
175d: e8 ff     mov   a,#$ff
175f: d5 01 03  mov   $0301+x,a         ; voice volume = $ff
1762: e8 0a     mov   a,#$0a
1764: 3f 52 19  call  $1952             ; pan = $0a.00
1767: d5 11 02  mov   $0211+x,a         ; zero instrument
176a: d5 81 03  mov   $0381+x,a
176d: d5 f0 02  mov   $02f0+x,a
1770: d5 80 02  mov   $0280+x,a
1773: d5 00 04  mov   $0400+x,a
1776: d4 b1     mov   $b1+x,a
1778: d4 c1     mov   $c1+x,a
177a: 1d        dec   x
177b: 1d        dec   x
177c: 4b 47     lsr   $47
177e: d0 dd     bne   $175d             ; loop for each voice
1780: c4 5a     mov   $5a,a             ; zero master vol fade counter
1782: c4 68     mov   $68,a             ; zero echo vol fade counter
1784: c4 54     mov   $54,a             ; zero tempo fade counter
1786: c4 50     mov   $50,a             ; zero global transpose
1788: c4 42     mov   $42,a             ; zero block repeat count
178a: c4 5f     mov   $5f,a             ; 
178c: 8f c0 59  mov   $59,#$c0          ; master vol
178f: 8f 20 53  mov   $53,#$20          ; tempo
1792: 6f        ret

1793: eb 08     mov   y,$08
1795: e4 00     mov   a,$00
1797: c4 08     mov   $08,a
1799: 68 f0     cmp   a,#$f0
179b: f0 b3     beq   $1750
179d: 68 f1     cmp   a,#$f1
179f: f0 08     beq   $17a9
17a1: 68 ff     cmp   a,#$ff
17a3: f0 96     beq   $173b
17a5: 7e 00     cmp   y,$00
17a7: d0 97     bne   $1740
17a9: e4 04     mov   a,$04
17ab: f0 e5     beq   $1792
17ad: e4 0c     mov   a,$0c
17af: f0 5a     beq   $180b
;
17b1: 6e 0c a4  dbnz  $0c,$1758
17b4: 3f 2d 17  call  $172d             ; read block addr from $40/1, advance ptr
17b7: d0 22     bne   $17db             ; load start addresses, if hi-byte is non zero
17b9: fd        mov   y,a               ; refetch lo-byte
17ba: f0 84     beq   $1740             ; key off, return if also zero
17bc: 68 80     cmp   a,#$80
17be: f0 06     beq   $17c6
17c0: 68 81     cmp   a,#$81
17c2: d0 06     bne   $17ca
17c4: e8 00     mov   a,#$00
17c6: c4 1b     mov   $1b,a
17c8: 2f ea     bra   $17b4
17ca: 8b 42     dec   $42
17cc: 10 02     bpl   $17d0
17ce: c4 42     mov   $42,a
17d0: 3f 2d 17  call  $172d             ; read next word as well
17d3: f8 42     mov   x,$42
17d5: f0 dd     beq   $17b4
17d7: da 40     movw  $40,ya            ;   "goto" that address
17d9: 2f d9     bra   $17b4             ; continue
; load start addresses - hi-byte not zero
17db: da 16     movw  $16,ya
17dd: 8d 0f     mov   y,#$0f
17df: f7 16     mov   a,($16)+y
17e1: d6 30 00  mov   $0030+y,a
17e4: dc        dec   y
17e5: 10 f8     bpl   $17df             ; set all reading ptrs
17e7: cd 00     mov   x,#$00
17e9: 8f 01 47  mov   $47,#$01          ; first voice
17ec: f4 31     mov   a,$31+x
17ee: f0 0a     beq   $17fa             ; if vptr hi != 0
17f0: f5 11 02  mov   a,$0211+x
17f3: d0 05     bne   $17fa
17f5: e8 00     mov   a,#$00
17f7: 3f f9 18  call  $18f9             ; set instrument #0 if not set
17fa: e8 00     mov   a,#$00
17fc: d4 80     mov   $80+x,a           ; zero subroutine repeat counter
17fe: d4 90     mov   $90+x,a           ; zero voice vol fade counter
1800: d4 91     mov   $91+x,a           ; zero pan fade counter
1802: bc        inc   a
1803: d4 70     mov   $70+x,a           ; set duration counter to 1
1805: 3d        inc   x
1806: 3d        inc   x
1807: 0b 47     asl   $47               ; next voice
1809: d0 e1     bne   $17ec             ; foreach voice
;
180b: cd 00     mov   x,#$00
180d: d8 5e     mov   $5e,x
180f: 8f 01 47  mov   $47,#$01          ; first voice
1812: d8 44     mov   $44,x
1814: f4 31     mov   a,$31+x
1816: f0 72     beq   $188a             ; next if vptr hi zero
1818: 9b 70     dec   $70+x             ; dec duration counter
181a: d0 64     bne   $1880             ; if not zero, skip to voice readahead
181c: 3f ef 18  call  $18ef             ; read vcmd into A and Y
181f: d0 17     bne   $1838
; vcmd 00 - end repeat/return
1821: f4 80     mov   a,$80+x
1823: f0 8f     beq   $17b4             ; read next block if loop has been done
; repeat / return from subroutine
1825: 3f 40 1a  call  $1a40             ; jump to loop start addr
1828: 9b 80     dec   $80+x             ; dec repeat count
182a: d0 f0     bne   $181c             ; if the loop has been done
182c: f5 30 02  mov   a,$0230+x
182f: d4 30     mov   $30+x,a
1831: f5 31 02  mov   a,$0231+x
1834: d4 31     mov   $31+x,a           ; back to return addr instead
1836: 2f e4     bra   $181c             ; then continue
; vcmd branches
1838: 30 20     bmi   $185a             ; vcmds 01-7f - note info:
183a: d5 00 02  mov   $0200+x,a         ;   set cmd as duration
183d: 3f ef 18  call  $18ef             ;   read next byte
1840: 30 18     bmi   $185a             ;   if note note then
1842: 2d        push  a
1843: 9f        xcn   a
1844: 28 07     and   a,#$07
1846: fd        mov   y,a
1847: f6 00 58  mov   a,$5800+y
184a: d5 01 02  mov   $0201+x,a         ;   set dur% from high nybble
184d: ae        pop   a
184e: 28 0f     and   a,#$0f
1850: fd        mov   y,a
1851: f6 08 58  mov   a,$5808+y
1854: d5 10 02  mov   $0210+x,a         ;   set per-note vol from low nybble
1857: 3f ef 18  call  $18ef             ;   read vcmd into A and Y
; vcmd branches 80-ff
185a: 68 e0     cmp   a,#$e0
185c: 90 05     bcc   $1863
185e: 3f dd 18  call  $18dd             ; vcmds e0-ff
1861: 2f b9     bra   $181c
; vcmds 80-df - note
1863: f5 00 04  mov   a,$0400+x
1866: 04 1b     or    a,$1b
1868: d0 04     bne   $186e
186a: dd        mov   a,y
186b: 3f 31 16  call  $1631             ; handle note cmd if vbit $1a clear
186e: f5 00 02  mov   a,$0200+x
1871: d4 70     mov   $70+x,a
1873: fd        mov   y,a
1874: f5 01 02  mov   a,$0201+x
1877: cf        mul   ya
1878: dd        mov   a,y
1879: d0 01     bne   $187c
187b: bc        inc   a
187c: d4 71     mov   $71+x,a           ; set actual key-off dur counter
187e: 2f 07     bra   $1887
1880: e4 1b     mov   a,$1b
1882: d0 06     bne   $188a
1884: 3f 88 1c  call  $1c88             ; do readahead
1887: 3f 03 1b  call  $1b03
188a: 3d        inc   x
188b: 3d        inc   x
188c: 0b 47     asl   $47
188e: d0 82     bne   $1812
;
1890: e4 54     mov   a,$54             ; tempo fade counter
1892: f0 0b     beq   $189f
1894: ba 56     movw  ya,$56
1896: 7a 52     addw  ya,$52            ; add tempo fade to tempo
1898: 6e 54 02  dbnz  $54,$189d
189b: ba 54     movw  ya,$54            ; last time: move tempo target to tempo
189d: da 52     movw  $52,ya
189f: e4 68     mov   a,$68             ; echo vol fade counter
18a1: f0 15     beq   $18b8
18a3: ba 64     movw  ya,$64
18a5: 7a 60     addw  ya,$60            ; add echo L delta to echo L vol
18a7: da 60     movw  $60,ya
18a9: ba 66     movw  ya,$66
18ab: 7a 62     addw  ya,$62            ; add echo R delta to echo L vol
18ad: 6e 68 06  dbnz  $68,$18b6
18b0: ba 68     movw  ya,$68
18b2: da 60     movw  $60,ya
18b4: eb 6a     mov   y,$6a
18b6: da 62     movw  $62,ya
18b8: e4 5a     mov   a,$5a             ; master vol fade counter
18ba: f0 0e     beq   $18ca
18bc: ba 5c     movw  ya,$5c
18be: 7a 58     addw  ya,$58            ; add master vol delta to value
18c0: 6e 5a 02  dbnz  $5a,$18c5
18c3: ba 5a     movw  ya,$5a
18c5: da 58     movw  $58,ya
18c7: 8f ff 5e  mov   $5e,#$ff          ; set all vol chg flags
18ca: cd 00     mov   x,#$00
18cc: 8f 01 47  mov   $47,#$01
18cf: f4 31     mov   a,$31+x
18d1: f0 03     beq   $18d6
18d3: 3f bf 1b  call  $1bbf             ; do per-voice fades
18d6: 3d        inc   x
18d7: 3d        inc   x
18d8: 0b 47     asl   $47
18da: d0 f3     bne   $18cf
18dc: 6f        ret

; dispatch vcmd in A (e0-ff)
18dd: 1c        asl   a                 ; e0-ff => c0-fe (8 bit)
18de: fd        mov   y,a
18df: f6 a3 1a  mov   a,$1aa3+y
18e2: 2d        push  a
18e3: f6 a2 1a  mov   a,$1aa2+y
18e6: 2d        push  a                 ; push jump address from table
18e7: dd        mov   a,y
18e8: 5c        lsr   a
18e9: fd        mov   y,a
18ea: f6 40 1b  mov   a,$1b40+y         ; vcmd length
18ed: f0 08     beq   $18f7             ; if non zero
; read new argument to A and Y
18ef: e7 30     mov   a,($30+x)
; advance reading ptr
18f1: bb 30     inc   $30+x
18f3: d0 02     bne   $18f7
18f5: bb 31     inc   $31+x             ; inc reading ptr
18f7: fd        mov   y,a
18f8: 6f        ret                     ; jump to vcmd

; vcmd e0 - set instrument
18f9: d5 11 02  mov   $0211+x,a
18fc: fd        mov   y,a
18fd: 10 06     bpl   $1905             ; if percussion note:
18ff: 80        setc
1900: a8 ca     sbc   a,#$ca            ;   ca-dd => 00-15
1902: 60        clrc
1903: 84 5f     adc   a,$5f             ; add perc patch base
1905: 8d 06     mov   y,#$06
; set sample A in bank at $14/5 width Y
1907: cf        mul   ya
1908: da 14     movw  $14,ya
190a: 60        clrc
190b: 98 00 14  adc   $14,#$00
190e: 98 6c 15  adc   $15,#$6c
1911: e4 1a     mov   a,$1a
1913: 24 47     and   a,$47
1915: d0 3a     bne   $1951
1917: 4d        push  x
1918: 7d        mov   a,x
1919: 9f        xcn   a
191a: 5c        lsr   a
191b: 08 04     or    a,#$04            ; voice X SRCN
191d: 5d        mov   x,a
191e: 8d 00     mov   y,#$00
1920: f7 14     mov   a,($14)+y
1922: 10 0e     bpl   $1932
1924: 28 1f     and   a,#$1f            ; sample > 80: noise, freq in low bits
1926: 38 20 48  and   $48,#$20          ;  keep echo bit from FLG
1929: 0e 48 00  tset1 $0048             ;  OR in noise freq
192c: 09 47 49  or    ($49),($47)       ;  set vbit in noise enable
192f: dd        mov   a,y               ;  set SRCN to 0
1930: 2f 07     bra   $1939             ; else
1932: e4 47     mov   a,$47
1934: 4e 49 00  tclr1 $0049             ;  clear noise vbit
1937: f7 14     mov   a,($14)+y         ;  set SRCN from table
1939: c9 f2 00  mov   $00f2,x
193c: c5 f3 00  mov   $00f3,a
193f: 3d        inc   x
1940: fc        inc   y
1941: ad 04     cmp   y,#$04
1943: d0 f2     bne   $1937             ; set SRCN, ADSR1/2, GAIN from table
1945: ce        pop   x
1946: f7 14     mov   a,($14)+y
1948: d5 21 02  mov   $0221+x,a         ; set pitch multiplier
194b: fc        inc   y
194c: f7 14     mov   a,($14)+y
194e: d5 20 02  mov   $0220+x,a
1951: 6f        ret

; vcmd e1 - pan
1952: d5 51 03  mov   $0351+x,a
1955: 28 1f     and   a,#$1f
1957: d5 31 03  mov   $0331+x,a         ; voice pan value
195a: e8 00     mov   a,#$00
195c: d5 30 03  mov   $0330+x,a
195f: 6f        ret

; vcmd e2 - pan fade
1960: d4 91     mov   $91+x,a
1962: 2d        push  a
1963: 3f ef 18  call  $18ef
1966: d5 50 03  mov   $0350+x,a
1969: 80        setc
196a: b5 31 03  sbc   a,$0331+x         ; current pan value
196d: ce        pop   x
196e: 3f 46 1b  call  $1b46             ; delta = pan value / steps
1971: d5 40 03  mov   $0340+x,a
1974: dd        mov   a,y
1975: d5 41 03  mov   $0341+x,a
1978: 6f        ret

; vcmd e3 - vibrato on
1979: d5 b0 02  mov   $02b0+x,a
197c: 3f ef 18  call  $18ef
197f: d5 a1 02  mov   $02a1+x,a
1982: 3f ef 18  call  $18ef
; vcmd e4 - vibrato off
1985: d4 b1     mov   $b1+x,a
1987: d5 c1 02  mov   $02c1+x,a
198a: e8 00     mov   a,#$00
198c: d5 b1 02  mov   $02b1+x,a
198f: 6f        ret

; vcmd f0 - vibrato fade
1990: d5 b1 02  mov   $02b1+x,a
1993: 2d        push  a
1994: 8d 00     mov   y,#$00
1996: f4 b1     mov   a,$b1+x
1998: ce        pop   x
1999: 9e        div   ya,x
199a: f8 44     mov   x,$44
199c: d5 c0 02  mov   $02c0+x,a
199f: 6f        ret

; vcmd e5 - master volume
19a0: e8 00     mov   a,#$00
19a2: da 58     movw  $58,ya
19a4: 6f        ret

; vcmd e6 - master volume fade
19a5: c4 5a     mov   $5a,a
19a7: 3f ef 18  call  $18ef
19aa: c4 5b     mov   $5b,a
19ac: 80        setc
19ad: a4 59     sbc   a,$59
19af: f8 5a     mov   x,$5a
19b1: 3f 46 1b  call  $1b46
19b4: da 5c     movw  $5c,ya
19b6: 6f        ret

; vcmd e7 - tempo
19b7: e8 00     mov   a,#$00
19b9: da 52     movw  $52,ya
19bb: 6f        ret

; vcmd e8 - tempo fade
19bc: c4 54     mov   $54,a
19be: 3f ef 18  call  $18ef
19c1: c4 55     mov   $55,a
19c3: 80        setc
19c4: a4 53     sbc   a,$53
19c6: f8 54     mov   x,$54
19c8: 3f 46 1b  call  $1b46
19cb: da 56     movw  $56,ya
19cd: 6f        ret

; vcmd e9 - global transpose
19ce: c4 50     mov   $50,a
19d0: 6f        ret

; vcmd ea - per-voice transpose
19d1: d5 f0 02  mov   $02f0+x,a
19d4: 6f        ret

; vcmd eb - tremolo on
19d5: d5 e0 02  mov   $02e0+x,a
19d8: 3f ef 18  call  $18ef
19db: d5 d1 02  mov   $02d1+x,a
19de: 3f ef 18  call  $18ef
; vcmd ec - tremolo off
19e1: d4 c1     mov   $c1+x,a
19e3: 6f        ret

; vcmd f1 - pitch envelope (release)
19e4: e8 01     mov   a,#$01
19e6: 2f 02     bra   $19ea
; vcmd f2 - pitch envelope (attack)
19e8: e8 00     mov   a,#$00
19ea: d5 90 02  mov   $0290+x,a
19ed: dd        mov   a,y
19ee: d5 81 02  mov   $0281+x,a
19f1: 3f ef 18  call  $18ef
19f4: d5 80 02  mov   $0280+x,a
19f7: 3f ef 18  call  $18ef
19fa: d5 91 02  mov   $0291+x,a
19fd: 6f        ret

; vcmd f3 - pitch envelope off
19fe: d5 80 02  mov   $0280+x,a
1a01: 6f        ret

; vcmd ed - volume
1a02: d5 01 03  mov   $0301+x,a
1a05: e8 00     mov   a,#$00
1a07: d5 00 03  mov   $0300+x,a
1a0a: 6f        ret

; vcmd ee - volume fade
1a0b: d4 90     mov   $90+x,a
1a0d: 2d        push  a
1a0e: 3f ef 18  call  $18ef
1a11: d5 20 03  mov   $0320+x,a
1a14: 80        setc
1a15: b5 01 03  sbc   a,$0301+x
1a18: ce        pop   x
1a19: 3f 46 1b  call  $1b46
1a1c: d5 10 03  mov   $0310+x,a
1a1f: dd        mov   a,y
1a20: d5 11 03  mov   $0311+x,a
1a23: 6f        ret

; vcmd f4 - tuning
1a24: d5 81 03  mov   $0381+x,a
1a27: 6f        ret

; vcmd ef - call subroutine
1a28: d5 40 02  mov   $0240+x,a
1a2b: 3f ef 18  call  $18ef
1a2e: d5 41 02  mov   $0241+x,a         ; $0240/1+X - destination (arg1/2)
1a31: 3f ef 18  call  $18ef
1a34: d4 80     mov   $80+x,a           ; repeat count from arg3
1a36: f4 30     mov   a,$30+x
1a38: d5 30 02  mov   $0230+x,a
1a3b: f4 31     mov   a,$31+x
1a3d: d5 31 02  mov   $0231+x,a         ; $0230/1+X - return addr
; jump to $0240/1+X (loop destination)
1a40: f5 40 02  mov   a,$0240+x
1a43: d4 30     mov   $30+x,a
1a45: f5 41 02  mov   a,$0241+x
1a48: d4 31     mov   $31+x,a
1a4a: 6f        ret

; vcmd f5 - echo vbits/volume
1a4b: c4 4a     mov   $4a,a
1a4d: 3f ef 18  call  $18ef             ; echo vbit shadow = arg1
1a50: e8 00     mov   a,#$00
1a52: da 60     movw  $60,ya            ; echo vol L shadow = arg2
1a54: 3f ef 18  call  $18ef
1a57: e8 00     mov   a,#$00
1a59: da 62     movw  $62,ya            ; echo vol R shadow = arg3
1a5b: b2 48     clr5  $48
1a5d: 6f        ret

; vcmd f8 - echo volume fade
1a5e: c4 68     mov   $68,a
1a60: 3f ef 18  call  $18ef
1a63: c4 69     mov   $69,a
1a65: 80        setc
1a66: a4 61     sbc   a,$61
1a68: f8 68     mov   x,$68
1a6a: 3f 46 1b  call  $1b46
1a6d: da 64     movw  $64,ya
1a6f: 3f ef 18  call  $18ef
1a72: c4 6a     mov   $6a,a
1a74: 80        setc
1a75: a4 63     sbc   a,$63
1a77: f8 68     mov   x,$68
1a79: 3f 46 1b  call  $1b46
1a7c: da 66     movw  $66,ya
1a7e: 6f        ret

; vcmd f6 - disable echo
1a7f: da 60     movw  $60,ya            ; zero echo vol L shadow
1a81: da 62     movw  $62,ya            ; zero echo vol R shadow
1a83: a2 48     set5  $48               ; disable echo write
1a85: 6f        ret

; vcmd f7 - set echo params
1a86: 3f ab 1a  call  $1aab             ; set echo delay from arg1
1a89: 3f ef 18  call  $18ef
1a8c: c4 4e     mov   $4e,a             ; set echo feedback shadow from arg2
1a8e: 3f ef 18  call  $18ef
1a91: c5 b1 04  mov   $04b1,a
1a94: 8d 08     mov   y,#$08
1a96: cf        mul   ya
1a97: 5d        mov   x,a
1a98: 8d 0f     mov   y,#$0f
1a9a: f5 32 1e  mov   a,$1e32+x         ; filter table
1a9d: 3f 26 17  call  $1726
1aa0: 3d        inc   x
1aa1: dd        mov   a,y
1aa2: 60        clrc
1aa3: 88 10     adc   a,#$10
1aa5: fd        mov   y,a
1aa6: 10 f2     bpl   $1a9a             ; set echo filter from table index arg3
1aa8: f8 44     mov   x,$44
1aaa: 6f        ret
; set echo delay to A
1aab: c4 4d     mov   $4d,a
1aad: 8d 7d     mov   y,#$7d
1aaf: cc f2 00  mov   $00f2,y
1ab2: e5 f3 00  mov   a,$00f3           ; set echo delay
1ab5: 64 4d     cmp   a,$4d
1ab7: f0 2b     beq   $1ae4             ; same as $4d?
1ab9: 28 0f     and   a,#$0f
1abb: 48 ff     eor   a,#$ff
1abd: f3 4c 03  bbc7  $4c,$1ac3
1ac0: 60        clrc
1ac1: 84 4c     adc   a,$4c
1ac3: c4 4c     mov   $4c,a
1ac5: 8d 04     mov   y,#$04
1ac7: f6 51 1e  mov   a,$1e51+y         ; shadow reg DSP reg table
1aca: c5 f2 00  mov   $00f2,a
1acd: e8 00     mov   a,#$00
1acf: c5 f3 00  mov   $00f3,a
1ad2: fe f3     dbnz  y,$1ac7           ; zero echo vol, feedback, vbit DSP regs
1ad4: e4 48     mov   a,$48
1ad6: 08 20     or    a,#$20
1ad8: 8d 6c     mov   y,#$6c
1ada: 3f 26 17  call  $1726             ; set FLG from shadow but disable echo
1add: e4 4d     mov   a,$4d
1adf: 8d 7d     mov   y,#$7d
1ae1: 3f 26 17  call  $1726             ; set echo delay from $4d
1ae4: 1c        asl   a
1ae5: 1c        asl   a
1ae6: 1c        asl   a
1ae7: 48 ff     eor   a,#$ff
1ae9: 80        setc
1aea: 88 15     adc   a,#$15
1aec: 8d 6d     mov   y,#$6d
1aee: 5f 26 17  jmp   $1726             ; set echo region to $1500-8*delay

; vcmd fa - set perc patch base
1af1: c4 5f     mov   $5f,a
1af3: 6f        ret

; vcmd fb - skip 2 bytes
1af4: 3f f1 18  call  $18f1
1af7: 6f        ret

; vcmd fc
1af8: bc        inc   a
1af9: d5 00 04  mov   $0400+x,a
1afc: 6f        ret

; vcmd fd
1afd: bc        inc   a
; vcmd fe
1afe: c4 1b     mov   $1b,a
1b00: 5f 50 17  jmp   $1750

1b03: f4 a0     mov   a,$a0+x
1b05: d0 33     bne   $1b3a
1b07: e7 30     mov   a,($30+x)
1b09: 68 f9     cmp   a,#$f9
1b0b: d0 2d     bne   $1b3a
1b0d: 3f f1 18  call  $18f1
1b10: 3f ef 18  call  $18ef
; vcmd f9 - pitch slide
1b13: d4 a1     mov   $a1+x,a
1b15: 3f ef 18  call  $18ef
1b18: d4 a0     mov   $a0+x,a
1b1a: 3f ef 18  call  $18ef
1b1d: 60        clrc
1b1e: 84 50     adc   a,$50             ; add global transpose
1b20: 95 f0 02  adc   a,$02f0+x         ; per-voice transpose
; calculate portamento delta
1b23: 28 7f     and   a,#$7f
1b25: d5 80 03  mov   $0380+x,a         ; final portamento value
1b28: 80        setc
1b29: b5 61 03  sbc   a,$0361+x         ; note number
1b2c: fb a0     mov   y,$a0+x           ; portamento steps
1b2e: 6d        push  y
1b2f: ce        pop   x
1b30: 3f 46 1b  call  $1b46
1b33: d5 70 03  mov   $0370+x,a
1b36: dd        mov   a,y
1b37: d5 71 03  mov   $0371+x,a         ; portamento delta
1b3a: 6f        ret

1b3b: f5 61 03  mov   a,$0361+x
1b3e: c4 11     mov   $11,a
1b40: f5 60 03  mov   a,$0360+x
1b43: c4 10     mov   $10,a
1b45: 6f        ret

; signed 16 bit division
1b46: ed        notc
1b47: 6b 12     ror   $12
1b49: 10 03     bpl   $1b4e
1b4b: 48 ff     eor   a,#$ff
1b4d: bc        inc   a
1b4e: 8d 00     mov   y,#$00
1b50: 9e        div   ya,x
1b51: 2d        push  a
1b52: e8 00     mov   a,#$00
1b54: 9e        div   ya,x
1b55: ee        pop   y
1b56: f8 44     mov   x,$44
1b58: f3 12 06  bbc7  $12,$1b61
1b5b: da 14     movw  $14,ya
1b5d: ba 0e     movw  ya,$0e
1b5f: 9a 14     subw  ya,$14
1b61: 6f        ret

; vcmd dispatch table ($1aa2)
1b62: dw $18f9  ; e0 - set instrument
1b64: dw $1952  ; e1 - pan
1b66: dw $1960  ; e2 - pan fade
1b68: dw $1979  ; e3 - vibrato on
1b6a: dw $1985  ; e4 - vibrato off
1b6c: dw $19a0  ; e5 - master volume
1b6e: dw $19a5  ; e6 - master volume fade
1b70: dw $19b7  ; e7 - tempo
1b72: dw $19bc  ; e8 - tempo fade
1b74: dw $19ce  ; e9 - global transpose
1b76: dw $19d1  ; ea - per-voice transpose
1b78: dw $19d5  ; eb - tremolo on
1b7a: dw $19e1  ; ec - tremolo off
1b7c: dw $1a02  ; ed - volume
1b7e: dw $1a0b  ; ee - volume fade
1b80: dw $1a28  ; ef - call subroutine
1b82: dw $1990  ; f0 - vibrato fade
1b84: dw $19e4  ; f1 - pitch envelope (release)
1b86: dw $19e8  ; f2 - pitch envelope (attack)
1b88: dw $19fe  ; f3 - pitch envelope off
1b8a: dw $1a24  ; f4 - tuning
1b8c: dw $1a4b  ; f5 - echo vbits/volume
1b8e: dw $1a7f  ; f6 - disable echo
1b90: dw $1a86  ; f7 - set echo params
1b92: dw $1a5e  ; f8 - echo volume fade
1b94: dw $1b13  ; f9 - pitch slide
1b96: dw $1af1  ; fa - set perc patch base
1b98: dw $1af4  ; fb - skip 2 bytes
1b9a: dw $1af8  ; fc
1b9c: dw $1afd  ; fd
1b9e: dw $1afe  ; fe
                ; ff - undefined

; vcmd lengths ($1b40)
1ba0: db $01,$01,$02,$03,$00,$01,$02,$01 ; e0-e7
1ba8: db $02,$01,$01,$03,$00,$01,$02,$03 ; e8-ef
1bb0: db $01,$03,$03,$00,$01,$03,$00,$03 ; f0-f7
1bb8: db $03,$03,$01,$02,$00,$00,$00     ; f8-fe

; do voice fades
1bbf: f4 90     mov   a,$90+x           ; voice volume fade counter
1bc1: f0 24     beq   $1be7
1bc3: 09 47 5e  or    ($5e),($47)
1bc6: 9b 90     dec   $90+x             ; dec voice vol fade counter
1bc8: d0 0a     bne   $1bd4
1bca: e8 00     mov   a,#$00
1bcc: d5 00 03  mov   $0300+x,a
1bcf: f5 20 03  mov   a,$0320+x
1bd2: 2f 10     bra   $1be4
1bd4: 60        clrc
1bd5: f5 00 03  mov   a,$0300+x
1bd8: 95 10 03  adc   a,$0310+x
1bdb: d5 00 03  mov   $0300+x,a
1bde: f5 01 03  mov   a,$0301+x
1be1: 95 11 03  adc   a,$0311+x
1be4: d5 01 03  mov   $0301+x,a
1be7: fb c1     mov   y,$c1+x
1be9: f0 23     beq   $1c0e
1beb: f5 e0 02  mov   a,$02e0+x
1bee: de c0 1b  cbne  $c0+x,$1c0c
1bf1: 09 47 5e  or    ($5e),($47)
1bf4: f5 d0 02  mov   a,$02d0+x
1bf7: 10 07     bpl   $1c00
1bf9: fc        inc   y
1bfa: d0 04     bne   $1c00
1bfc: e8 80     mov   a,#$80
1bfe: 2f 04     bra   $1c04
1c00: 60        clrc
1c01: 95 d1 02  adc   a,$02d1+x
1c04: d5 d0 02  mov   $02d0+x,a
1c07: 3f 00 1e  call  $1e00
1c0a: 2f 07     bra   $1c13
1c0c: bb c0     inc   $c0+x
1c0e: e8 ff     mov   a,#$ff
1c10: 3f 0b 1e  call  $1e0b
1c13: f4 91     mov   a,$91+x
1c15: f0 24     beq   $1c3b
1c17: 09 47 5e  or    ($5e),($47)
1c1a: 9b 91     dec   $91+x
1c1c: d0 0a     bne   $1c28
1c1e: e8 00     mov   a,#$00
1c20: d5 30 03  mov   $0330+x,a
1c23: f5 50 03  mov   a,$0350+x
1c26: 2f 10     bra   $1c38
1c28: 60        clrc
1c29: f5 30 03  mov   a,$0330+x
1c2c: 95 40 03  adc   a,$0340+x
1c2f: d5 30 03  mov   $0330+x,a
1c32: f5 31 03  mov   a,$0331+x
1c35: 95 41 03  adc   a,$0341+x
1c38: d5 31 03  mov   $0331+x,a
1c3b: e4 47     mov   a,$47
1c3d: 24 5e     and   a,$5e
1c3f: f0 46     beq   $1c87
1c41: f5 31 03  mov   a,$0331+x
1c44: fd        mov   y,a
1c45: f5 30 03  mov   a,$0330+x
1c48: da 10     movw  $10,ya
1c4a: 7d        mov   a,x
1c4b: 9f        xcn   a
1c4c: 5c        lsr   a
1c4d: c4 12     mov   $12,a
;
1c4f: eb 11     mov   y,$11
1c51: f6 1e 1e  mov   a,$1e1e+y         ; next pan val from table
1c54: 80        setc
1c55: b6 1d 1e  sbc   a,$1e1d+y         ; pan val
1c58: eb 10     mov   y,$10
1c5a: cf        mul   ya
1c5b: dd        mov   a,y
1c5c: eb 11     mov   y,$11
1c5e: 60        clrc
1c5f: 96 1d 1e  adc   a,$1e1d+y         ; add integer part to pan val
1c62: fd        mov   y,a
1c63: f5 21 03  mov   a,$0321+x         ; volume
1c66: cf        mul   ya
1c67: f5 51 03  mov   a,$0351+x         ; bits 7/6 will negate volume L/R
1c6a: 1c        asl   a
1c6b: 13 12 01  bbc0  $12,$1c6f
1c6e: 1c        asl   a
1c6f: dd        mov   a,y
1c70: 90 03     bcc   $1c75
1c72: 48 ff     eor   a,#$ff
1c74: bc        inc   a
1c75: eb 12     mov   y,$12
1c77: 3f 1e 17  call  $171e
1c7a: 8d 14     mov   y,#$14
1c7c: e8 00     mov   a,#$00
1c7e: 9a 10     subw  ya,$10
1c80: da 10     movw  $10,ya
1c82: ab 12     inc   $12
1c84: 33 12 c8  bbc1  $12,$1c4f
1c87: 6f        ret

; do readahead
1c88: f4 71     mov   a,$71+x
1c8a: f0 65     beq   $1cf1
1c8c: 9b 71     dec   $71+x
1c8e: f0 05     beq   $1c95
1c90: e8 02     mov   a,#$02
1c92: de 70 5c  cbne  $70+x,$1cf1
1c95: f4 80     mov   a,$80+x
1c97: c4 17     mov   $17,a
1c99: f4 30     mov   a,$30+x
1c9b: fb 31     mov   y,$31+x
1c9d: da 14     movw  $14,ya
1c9f: 8d 00     mov   y,#$00
1ca1: f7 14     mov   a,($14)+y
1ca3: f0 1e     beq   $1cc3
1ca5: 30 07     bmi   $1cae
1ca7: fc        inc   y
1ca8: 30 40     bmi   $1cea
1caa: f7 14     mov   a,($14)+y
1cac: 10 f9     bpl   $1ca7
1cae: 68 c8     cmp   a,#$c8
1cb0: f0 3f     beq   $1cf1
1cb2: 68 ef     cmp   a,#$ef
1cb4: f0 29     beq   $1cdf
1cb6: 68 e0     cmp   a,#$e0
1cb8: 90 30     bcc   $1cea
1cba: 6d        push  y
1cbb: fd        mov   y,a
1cbc: ae        pop   a
1cbd: 96 c0 1a  adc   a,$1ac0+y         ; vcmd lengths
1cc0: fd        mov   y,a
1cc1: 2f de     bra   $1ca1
1cc3: e4 17     mov   a,$17
1cc5: f0 23     beq   $1cea
1cc7: 8b 17     dec   $17
1cc9: d0 0a     bne   $1cd5
; read $0230/1+X into YA
1ccb: f5 31 02  mov   a,$0231+x
1cce: 2d        push  a
1ccf: f5 30 02  mov   a,$0230+x
1cd2: ee        pop   y
1cd3: 2f c8     bra   $1c9d
; read $0240/1+X into YA
1cd5: f5 41 02  mov   a,$0241+x
1cd8: 2d        push  a
1cd9: f5 40 02  mov   a,$0240+x
1cdc: ee        pop   y
1cdd: 2f be     bra   $1c9d
;
1cdf: fc        inc   y
1ce0: f7 14     mov   a,($14)+y
1ce2: 2d        push  a
1ce3: fc        inc   y
1ce4: f7 14     mov   a,($14)+y
1ce6: fd        mov   y,a
1ce7: ae        pop   a
1ce8: 2f b3     bra   $1c9d
1cea: e4 47     mov   a,$47
1cec: 8d 5c     mov   y,#$5c
1cee: 3f 1e 17  call  $171e
1cf1: f2 13     clr7  $13
1cf3: f4 a0     mov   a,$a0+x
1cf5: f0 2c     beq   $1d23
1cf7: f4 a1     mov   a,$a1+x
1cf9: f0 04     beq   $1cff
1cfb: 9b a1     dec   $a1+x
1cfd: 2f 24     bra   $1d23
1cff: e2 13     set7  $13
1d01: 9b a0     dec   $a0+x
1d03: d0 0b     bne   $1d10
1d05: f5 81 03  mov   a,$0381+x
1d08: d5 60 03  mov   $0360+x,a
1d0b: f5 80 03  mov   a,$0380+x
1d0e: 2f 10     bra   $1d20
1d10: 60        clrc
1d11: f5 60 03  mov   a,$0360+x
1d14: 95 70 03  adc   a,$0370+x
1d17: d5 60 03  mov   $0360+x,a
1d1a: f5 61 03  mov   a,$0361+x
1d1d: 95 71 03  adc   a,$0371+x
1d20: d5 61 03  mov   $0361+x,a
1d23: 3f 3b 1b  call  $1b3b
1d26: f4 b1     mov   a,$b1+x
1d28: f0 4c     beq   $1d76
1d2a: f5 b0 02  mov   a,$02b0+x
1d2d: de b0 44  cbne  $b0+x,$1d74
1d30: f5 00 01  mov   a,$0100+x
1d33: 75 b1 02  cmp   a,$02b1+x
1d36: d0 05     bne   $1d3d
1d38: f5 c1 02  mov   a,$02c1+x
1d3b: 2f 0d     bra   $1d4a
1d3d: 40        setp
1d3e: bb 00     inc   $00+x
1d40: 20        clrp
1d41: fd        mov   y,a
1d42: f0 02     beq   $1d46
1d44: f4 b1     mov   a,$b1+x
1d46: 60        clrc
1d47: 95 c0 02  adc   a,$02c0+x
1d4a: d4 b1     mov   $b1+x,a
1d4c: f5 a0 02  mov   a,$02a0+x
1d4f: 60        clrc
1d50: 95 a1 02  adc   a,$02a1+x
1d53: d5 a0 02  mov   $02a0+x,a
1d56: c4 12     mov   $12,a
1d58: 1c        asl   a
1d59: 1c        asl   a
1d5a: 90 02     bcc   $1d5e
1d5c: 48 ff     eor   a,#$ff
1d5e: fd        mov   y,a
1d5f: f4 b1     mov   a,$b1+x
1d61: 68 f1     cmp   a,#$f1
1d63: 90 05     bcc   $1d6a
1d65: 28 0f     and   a,#$0f
1d67: cf        mul   ya
1d68: 2f 04     bra   $1d6e
1d6a: cf        mul   ya
1d6b: dd        mov   a,y
1d6c: 8d 00     mov   y,#$00
1d6e: 3f eb 1d  call  $1deb
1d71: 5f 9b 16  jmp   $169b

1d74: bb b0     inc   $b0+x
1d76: e3 13 f8  bbs7  $13,$1d71
1d79: 6f        ret

; per-voice fades/dsps
1d7a: f2 13     clr7  $13
1d7c: f4 c1     mov   a,$c1+x
1d7e: f0 09     beq   $1d89
1d80: f5 e0 02  mov   a,$02e0+x
1d83: de c0 03  cbne  $c0+x,$1d89
1d86: 3f f3 1d  call  $1df3             ; voice vol calculations
1d89: f5 31 03  mov   a,$0331+x
1d8c: fd        mov   y,a
1d8d: f5 30 03  mov   a,$0330+x
1d90: da 10     movw  $10,ya            ; $10/1 = voice pan value
1d92: f4 91     mov   a,$91+x           ; voice pan fade counter
1d94: f0 0a     beq   $1da0
1d96: f5 41 03  mov   a,$0341+x
1d99: fd        mov   y,a
1d9a: f5 40 03  mov   a,$0340+x         ; pan fade delta
1d9d: 3f d5 1d  call  $1dd5             ; add delta (with mutations)?
1da0: f3 13 03  bbc7  $13,$1da6
1da3: 3f 4a 1c  call  $1c4a
1da6: f2 13     clr7  $13
1da8: 3f 3b 1b  call  $1b3b
1dab: f4 a0     mov   a,$a0+x
1dad: f0 0e     beq   $1dbd
1daf: f4 a1     mov   a,$a1+x
1db1: d0 0a     bne   $1dbd
1db3: f5 71 03  mov   a,$0371+x
1db6: fd        mov   y,a
1db7: f5 70 03  mov   a,$0370+x
1dba: 3f d5 1d  call  $1dd5
1dbd: f4 b1     mov   a,$b1+x
1dbf: f0 b5     beq   $1d76
1dc1: f5 b0 02  mov   a,$02b0+x
1dc4: de b0 af  cbne  $b0+x,$1d76
1dc7: eb 51     mov   y,$51
1dc9: f5 a1 02  mov   a,$02a1+x
1dcc: cf        mul   ya
1dcd: dd        mov   a,y
1dce: 60        clrc
1dcf: 95 a0 02  adc   a,$02a0+x
1dd2: 5f 56 1d  jmp   $1d56

1dd5: e2 13     set7  $13
1dd7: cb 12     mov   $12,y
1dd9: 3f 58 1b  call  $1b58
1ddc: 6d        push  y
1ddd: eb 51     mov   y,$51
1ddf: cf        mul   ya
1de0: cb 14     mov   $14,y
1de2: 8f 00 15  mov   $15,#$00
1de5: eb 51     mov   y,$51
1de7: ae        pop   a
1de8: cf        mul   ya
1de9: 7a 14     addw  ya,$14
1deb: 3f 58 1b  call  $1b58
1dee: 7a 10     addw  ya,$10
1df0: da 10     movw  $10,ya
1df2: 6f        ret

1df3: e2 13     set7  $13
1df5: eb 51     mov   y,$51
1df7: f5 d1 02  mov   a,$02d1+x
1dfa: cf        mul   ya
1dfb: dd        mov   a,y
1dfc: 60        clrc
1dfd: 95 d0 02  adc   a,$02d0+x
1e00: 1c        asl   a
1e01: 90 02     bcc   $1e05
1e03: 48 ff     eor   a,#$ff
1e05: fb c1     mov   y,$c1+x
1e07: cf        mul   ya
1e08: dd        mov   a,y
1e09: 48 ff     eor   a,#$ff
1e0b: eb 59     mov   y,$59
1e0d: cf        mul   ya
1e0e: f5 10 02  mov   a,$0210+x
1e11: cf        mul   ya
1e12: f5 01 03  mov   a,$0301+x
1e15: cf        mul   ya
1e16: dd        mov   a,y
1e17: cf        mul   ya
1e18: dd        mov   a,y
1e19: d5 21 03  mov   $0321+x,a
1e1c: 6f        ret


; pan table
1e1d: db $00,$01,$03,$07,$0d,$15,$1e,$29
1e25: db $34,$42,$51,$5e,$67,$6e,$73,$77
1e2d: db $7a,$7c,$7d,$7e,$7f

; echo FIR preset
1e32: db $7f,$00,$00,$00,$00,$00,$00,$00 ; 00
1e3a: db $58,$bf,$db,$f0,$fe,$07,$0c,$0c ; 01
1e42: db $0c,$21,$2b,$2b,$13,$fe,$f3,$f9 ; 02
1e4a: db $34,$33,$00,$d9,$e5,$01,$fc,$eb ; 03

; EVOL(L),EVOL(R),EFB,EON,FLG,KOL,KOF,NON,PMON,KOF
; dsp shadow addrs ($1e5b+1) for dsp regs ($1e51+1)
1e52: db $2c,$3c,$0d,$4d,$6c,$4c,$5c,$3d,$2d,$5c
1e5c: db $61,$63,$4e,$4a,$48,$45,$0e,$49,$4b,$46

; pitch table
1e66: dw $085f
1e68: dw $08de
1e6a: dw $0965
1e6c: dw $09f4
1e6e: dw $0a8c
1e70: dw $0b2c
1e72: dw $0bd6
1e74: dw $0c8b
1e76: dw $0d4a
1e78: dw $0e14
1e7a: dw $0eea
1e7c: dw $0fcd
1e7e: dw $10be

1e80: db $2a,$56,$65,$72,$20,$53,$31,$2e,$32,$30,$2a

1e8b: e8 aa     mov   a,#$aa
1e8d: c5 f4 00  mov   $00f4,a
1e90: e8 bb     mov   a,#$bb
1e92: c5 f5 00  mov   $00f5,a
1e95: e5 f4 00  mov   a,$00f4
1e98: 68 cc     cmp   a,#$cc
1e9a: d0 f9     bne   $1e95
1e9c: 2f 20     bra   $1ebe
1e9e: ec f4 00  mov   y,$00f4
1ea1: d0 fb     bne   $1e9e
1ea3: 5e f4 00  cmp   y,$00f4
1ea6: d0 0f     bne   $1eb7
1ea8: e5 f5 00  mov   a,$00f5
1eab: cc f4 00  mov   $00f4,y
1eae: d7 14     mov   ($14)+y,a
1eb0: fc        inc   y
1eb1: d0 f0     bne   $1ea3
1eb3: ab 15     inc   $15
1eb5: 2f ec     bra   $1ea3
1eb7: 10 ea     bpl   $1ea3
1eb9: 5e f4 00  cmp   y,$00f4
1ebc: 10 e5     bpl   $1ea3
1ebe: e5 f6 00  mov   a,$00f6
1ec1: ec f7 00  mov   y,$00f7
1ec4: da 14     movw  $14,ya
1ec6: ec f4 00  mov   y,$00f4
1ec9: e5 f5 00  mov   a,$00f5
1ecc: cc f4 00  mov   $00f4,y
1ecf: d0 cd     bne   $1e9e
1ed1: cd 31     mov   x,#$31
1ed3: c9 f1 00  mov   $00f1,x
1ed6: 6f        ret

1ed7: e8 00     mov   a,#$00
1ed9: 8d 00     mov   y,#$00
1edb: d7 ee     mov   ($ee)+y,a
1edd: fc        inc   y
1ede: 5e 90 03  cmp   y,$0390
1ee1: d0 f8     bne   $1edb
1ee3: 6f        ret

1ee4: 5f d1 1f  jmp   $1fd1

1ee7: eb 09     mov   y,$09
1ee9: e4 01     mov   a,$01
1eeb: c4 09     mov   $09,a
1eed: c4 05     mov   $05,a
1eef: 7e 01     cmp   y,$01
1ef1: d0 06     bne   $1ef9
1ef3: e5 92 03  mov   a,$0392
1ef6: d0 ec     bne   $1ee4
1ef8: 6f        ret

1ef9: 68 00     cmp   a,#$00
1efb: f0 f6     beq   $1ef3
1efd: e4 01     mov   a,$01
1eff: 68 02     cmp   a,#$02
1f01: f0 09     beq   $1f0c
1f03: 68 01     cmp   a,#$01
1f05: f0 05     beq   $1f0c
1f07: e5 bb 04  mov   a,$04bb
1f0a: d0 e7     bne   $1ef3
1f0c: e5 92 03  mov   a,$0392
1f0f: f0 11     beq   $1f22
1f11: e8 00     mov   a,#$00
1f13: c5 b3 03  mov   $03b3,a
1f16: 3f 32 27  call  $2732
1f19: 3f 75 27  call  $2775
1f1c: 3f b8 27  call  $27b8
1f1f: 3f fb 27  call  $27fb
1f22: e8 00     mov   a,#$00
1f24: c5 e1 03  mov   $03e1,a
1f27: c5 e8 03  mov   $03e8,a
1f2a: c5 ef 03  mov   $03ef,a
1f2d: c5 f6 03  mov   $03f6,a
1f30: e4 05     mov   a,$05
1f32: 9c        dec   a
1f33: 1c        asl   a
1f34: c5 93 03  mov   $0393,a
1f37: e9 93 03  mov   x,$0393
1f3a: f5 ed 2a  mov   a,$2aed+x
1f3d: c4 22     mov   $22,a
1f3f: 3d        inc   x
1f40: f5 ed 2a  mov   a,$2aed+x
1f43: c4 23     mov   $23,a
1f45: e4 05     mov   a,$05
1f47: c5 92 03  mov   $0392,a
1f4a: 3f 75 28  call  $2875
1f4d: 5f 2a 63  jmp   $632a

; note dur%'s
5800: db $32,$65,$7f,$98,$b2,$cb,$e5,$fc
; per-note velocity values
5808: db $19,$32,$4c,$65,$72,$7f,$8c,$98
5810: db $a5,$b2,$bf,$cb,$d8,$e5,$f2,$fc
