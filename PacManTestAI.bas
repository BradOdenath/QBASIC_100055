DECLARE SUB delay (numTicks%)

DECLARE SUB dfield ()
DECLARE SUB border ()
'***************************************
'*              Mr Pac Man             *
'*  THIS WAS CREATED BY: Brad Odenath  *
'*                                     *
'***************************************

SCREEN 12
CLS

RANDOMIZE TIMER

DIM SHARED asd

asd = 200

DIM SHARED wallx(asd)
DIM SHARED wally(asd)

border
dfield

SUB border

COLOR 9

LOCATE 1, 5
PRINT STRING$(72, CHR$(219))

LOCATE 19, 5
PRINT STRING$(72, CHR$(219))

LOCATE 2, 5
PRINT CHR$(219)
LOCATE 3, 5
PRINT CHR$(219)
LOCATE 4, 5
PRINT CHR$(219)

LOCATE 4, 4
PRINT CHR$(219)
 wallx(1) = 4
 wally(1) = 4
LOCATE 4, 3
PRINT CHR$(219)
 wallx(2) = 4
 wally(2) = 3
LOCATE 4, 2
PRINT CHR$(219)
 wallx(3) = 4
 wally(3) = 2

LOCATE 6, 4
PRINT CHR$(219)
 wallx(4) = 6
 wally(4) = 4
LOCATE 6, 3
PRINT CHR$(219)
 wallx(5) = 6
 wally(5) = 3
LOCATE 6, 2
PRINT CHR$(219)
 wallx(6) = 6
 wally(2) = 2

LOCATE 6, 5
PRINT CHR$(219)
LOCATE 7, 5
PRINT CHR$(219)
LOCATE 8, 5
PRINT CHR$(219)
LOCATE 9, 5
PRINT CHR$(219)
LOCATE 10, 5
PRINT CHR$(219)
LOCATE 11, 5
PRINT CHR$(219)
LOCATE 12, 5
PRINT CHR$(219)
LOCATE 13, 5
PRINT CHR$(219)
LOCATE 14, 5
PRINT CHR$(219)

LOCATE 14, 4
PRINT CHR$(219)
 wallx(7) = 14
 wally(7) = 4
LOCATE 14, 3
PRINT CHR$(219)
 wallx(8) = 14
 wally(8) = 3
LOCATE 14, 2
PRINT CHR$(219)
 wallx(9) = 14
 wally(9) = 2

LOCATE 16, 5
PRINT CHR$(219)

LOCATE 16, 4
PRINT CHR$(219)
 wallx(10) = 16
 wally(10) = 4
LOCATE 16, 3
PRINT CHR$(219)
 wallx(11) = 16
 wally(11) = 3
LOCATE 16, 2
PRINT CHR$(219)
 wallx(12) = 16
 wally(12) = 2

LOCATE 17, 5
PRINT CHR$(219)
LOCATE 18, 5
PRINT CHR$(219)

LOCATE 2, 76
PRINT CHR$(219)
LOCATE 3, 76
PRINT CHR$(219)
LOCATE 4, 76
PRINT CHR$(219)

LOCATE 4, 77
PRINT CHR$(219)
 wallx(13) = 4
 wally(13) = 77
LOCATE 4, 78
PRINT CHR$(219)
 wallx(14) = 4
 wally(14) = 78
LOCATE 4, 79
PRINT CHR$(219)
 wallx(15) = 4
 wally(15) = 79
LOCATE 6, 77
PRINT CHR$(219)
 wallx(16) = 6
 wally(16) = 77
LOCATE 6, 78
PRINT CHR$(219)
 wallx(17) = 6
 wally(17) = 78
LOCATE 6, 79
PRINT CHR$(219)
 wallx(18) = 6
 wally(18) = 79

LOCATE 6, 76
PRINT CHR$(219)
LOCATE 7, 76
PRINT CHR$(219)
LOCATE 8, 76
PRINT CHR$(219)
LOCATE 9, 76
PRINT CHR$(219)
LOCATE 10, 76
PRINT CHR$(219)
LOCATE 11, 76
PRINT CHR$(219)
LOCATE 12, 76
PRINT CHR$(219)
LOCATE 13, 76
PRINT CHR$(219)

LOCATE 14, 76
PRINT CHR$(219)
 wallx(19) = 14
 wally(19) = 76
LOCATE 14, 77
PRINT CHR$(219)
 wallx(20) = 14
 wally(20) = 77
LOCATE 14, 78
PRINT CHR$(219)
 wallx(21) = 14
 wally(21) = 78
LOCATE 14, 79
PRINT CHR$(219)
 wallx(22) = 14
 wally(22) = 79

LOCATE 16, 76
PRINT CHR$(219)
 wallx(23) = 16
 wally(23) = 76
LOCATE 16, 77
PRINT CHR$(219)
 wallx(24) = 16
 wally(24) = 77
LOCATE 16, 78
PRINT CHR$(219)
 wallx(25) = 16
 wally(25) = 78
LOCATE 16, 79
PRINT CHR$(219)
 wallx(26) = 16
 wally(26) = 79

LOCATE 17, 76
PRINT CHR$(219)
LOCATE 18, 76
PRINT CHR$(219)

LOCATE 4, 7
PRINT CHR$(219)
 wallx(27) = 4
 wally(27) = 7
LOCATE 3, 7
PRINT CHR$(219)
 wallx(28) = 3
 wally(28) = 7
LOCATE 3, 8
PRINT CHR$(219)
 wallx(29) = 3
 wally(29) = 8
LOCATE 3, 9
PRINT CHR$(219)
 wallx(30) = 3
 wally(30) = 9
LOCATE 3, 10
PRINT CHR$(219)
 wallx(31) = 3
 wally(31) = 10
LOCATE 3, 11
PRINT CHR$(219)
 wallx(32) = 3
 wally(32) = 11
LOCATE 3, 12
PRINT CHR$(219)
 wallx(33) = 3
 wally(33) = 12

LOCATE 3, 74
PRINT CHR$(219)
 wallx(34) = 3
 wally(34) = 74
LOCATE 4, 74
PRINT CHR$(219)
 wallx(35) = 4
 wally(35) = 74
LOCATE 3, 73
PRINT CHR$(219)
 wallx(36) = 3
 wally(36) = 73
LOCATE 3, 72
PRINT CHR$(219)
 wallx(37) = 3
 wally(37) = 72
LOCATE 3, 71
PRINT CHR$(219)
 wallx(38) = 3
 wally(38) = 71
LOCATE 3, 70
PRINT CHR$(219)
 wallx(39) = 3
 wally(39) = 70
LOCATE 3, 69
PRINT CHR$(219)
 wallx(40) = 3
 wally(40) = 69

LOCATE 17, 69
PRINT CHR$(219)
 wallx(41) = 17
 wally(41) = 69
LOCATE 17, 70
PRINT CHR$(219)
 wallx(42) = 17
 wally(42) = 70
LOCATE 17, 71
PRINT CHR$(219)
 wallx(43) = 17
 wally(43) = 71
LOCATE 17, 72
PRINT CHR$(219)
 wallx(44) = 17
 wally(44) = 72
LOCATE 17, 73
PRINT CHR$(219)
 wallx(45) = 17
 wally(45) = 73
LOCATE 17, 74
PRINT CHR$(219)
 wallx(46) = 17
 wally(46) = 74
LOCATE 16, 74
PRINT CHR$(219)
 wallx(47) = 16
 wally(47) = 74

LOCATE 16, 7
PRINT CHR$(219)
 wallx(48) = 16
 wally(48) = 7
LOCATE 17, 7
PRINT CHR$(219)
 wallx(49) = 17
 wally(49) = 7
LOCATE 17, 8
PRINT CHR$(219)
 wallx(50) = 17
 wally(50) = 8
LOCATE 17, 9
PRINT CHR$(219)
 wallx(51) = 17
 wally(51) = 9
LOCATE 17, 10
PRINT CHR$(219)
 wallx(52) = 17
 wally(52) = 10
LOCATE 17, 11
PRINT CHR$(219)
 wallx(53) = 17
 wally(53) = 11
LOCATE 17, 12
PRINT CHR$(219)
 wallx(54) = 17
 wally(54) = 12

LOCATE 16, 16
PRINT CHR$(219)
 wallx(55) = 16
 wally(55) = 16
LOCATE 17, 14
PRINT CHR$(219)
 wallx(56) = 17
 wally(56) = 14
LOCATE 17, 15
PRINT CHR$(219)
 wallx(57) = 17
 wally(57) = 15
LOCATE 17, 16
PRINT CHR$(219)
 wallx(58) = 17
 wally(58) = 16
LOCATE 17, 17
PRINT CHR$(219)
 wallx(59) = 17
 wally(59) = 17
LOCATE 17, 18
PRINT CHR$(219)
 wallx(60) = 17
 wally(60) = 18
LOCATE 17, 19
PRINT CHR$(219)
 wallx(61) = 17
 wally(61) = 19
LOCATE 17, 20
PRINT CHR$(219)
 wallx(62) = 17
 wally(62) = 20

LOCATE 17, 67
PRINT CHR$(219)
 wallx(63) = 17
 wally(63) = 67
LOCATE 17, 66
PRINT CHR$(219)
 wallx(64) = 17
 wally(64) = 66
LOCATE 16, 65
PRINT CHR$(219)
 wallx(65) = 16
 wally(65) = 65
LOCATE 17, 65
PRINT CHR$(219)
 wallx(66) = 17
 wally(66) = 65
LOCATE 17, 64
PRINT CHR$(219)
 wallx(67) = 17
 wally(67) = 64
LOCATE 17, 63
PRINT CHR$(219)
 wallx(68) = 17
 wally(68) = 63
LOCATE 17, 62
PRINT CHR$(219)
 wallx(69) = 17
 wally(69) = 62
LOCATE 17, 61
PRINT CHR$(219)
 wallx(70) = 17
 wally(70) = 61

LOCATE 15, 14
PRINT CHR$(219)
 wallx(71) = 15
 wally(71) = 14
LOCATE 15, 13
PRINT CHR$(219)
 wallx(72) = 15
 wally(72) = 13
LOCATE 15, 12
PRINT CHR$(219)
 wallx(73) = 15
 wally(73) = 12
LOCATE 15, 11
PRINT CHR$(219)
 wallx(74) = 15
 wally(74) = 11
LOCATE 15, 10
PRINT CHR$(219)
 wallx(75) = 15
 wally(75) = 10
LOCATE 15, 9
PRINT CHR$(219)
 wallx(76) = 15
 wally(76) = 9
LOCATE 14, 9
PRINT CHR$(219)
 wallx(77) = 14
 wally(77) = 9
LOCATE 13, 11
PRINT CHR$(219)
 wallx(78) = 13
 wally(78) = 11
LOCATE 12, 9
PRINT CHR$(219)
 wallx(79) = 12
 wally(79) = 9
LOCATE 11, 9
PRINT CHR$(219)
 wallx(80) = 11
 wally(80) = 9
LOCATE 11, 10
PRINT CHR$(219)
 wallx(81) = 11
 wally(81) = 10
LOCATE 11, 11
PRINT CHR$(219)
 wallx(82) = 11
 wally(82) = 11
LOCATE 11, 12
PRINT CHR$(219)
 wallx(83) = 11
 wally(83) = 12
LOCATE 11, 13
PRINT CHR$(219)
 wallx(84) = 11
 wally(84) = 13
LOCATE 11, 14
PRINT CHR$(219)
 wallx(85) = 11
 wally(85) = 14
LOCATE 13, 12
PRINT CHR$(219)
 wallx(86) = 13
 wally(86) = 12
LOCATE 13, 13
PRINT CHR$(219)
 wallx(87) = 13
 wally(87) = 13
LOCATE 13, 14
PRINT CHR$(219)
 wallx(88) = 13
 wally(88) = 14
LOCATE 14, 7
PRINT CHR$(219)
 wallx(89) = 14
 wally(89) = 7
LOCATE 13, 7
PRINT CHR$(219)
 wallx(90) = 13
 wally(90) = 7
LOCATE 12, 7
PRINT CHR$(219)
 wallx(91) = 12
 wally(91) = 7
LOCATE 11, 7
PRINT CHR$(219)
 wallx(92) = 11
 wally(92) = 7
LOCATE 10, 7
PRINT CHR$(219)
 wallx(93) = 10
 wally(93) = 7
LOCATE 10, 9
PRINT CHR$(219)
 wallx(94) = 10
 wally(94) = 9
LOCATE 8, 9
PRINT CHR$(219)
 wallx(95) = 8
 wally(95) = 9
LOCATE 8, 8
PRINT CHR$(219)
 wallx(96) = 8
 wally(96) = 8
LOCATE 8, 7
PRINT CHR$(219)
 wallx(97) = 8
 wally(97) = 7
LOCATE 6, 7
PRINT CHR$(219)
 wallx(98) = 6
 wally(98) = 7
LOCATE 7, 7
PRINT CHR$(219)
 wallx(99) = 7
 wally(99) = 7
LOCATE 5, 9
PRINT CHR$(219)
 wallx(100) = 5
 wally(100) = 9
LOCATE 6, 9
PRINT CHR$(219)
 wallx(101) = 6
 wally(101) = 9
LOCATE 5, 10
PRINT CHR$(219)
 wallx(102) = 5
 wally(102) = 10
LOCATE 5, 11
PRINT CHR$(219)
 wallx(103) = 5
 wally(103) = 11
LOCATE 7, 12
PRINT CHR$(219)
 wallx(104) = 7
 wally(104) = 12
LOCATE 9, 11
PRINT CHR$(219)
 wallx(105) = 9
 wally(105) = 11
LOCATE 9, 12
PRINT CHR$(219)
 wallx(106) = 9
 wally(106) = 12
LOCATE 9, 13
PRINT CHR$(219)
 wallx(107) = 9
 wally(107) = 13
LOCATE 9, 14
PRINT CHR$(219)
 wallx(108) = 9
 wally(108) = 14
LOCATE 8, 14
PRINT CHR$(219)
 wallx(109) = 8
 wally(109) = 14
LOCATE 7, 14
PRINT CHR$(219)
 wallx(110) = 7
 wally(110) = 14
LOCATE 5, 14
PRINT CHR$(219)
 wallx(111) = 5
 wally(111) = 14
LOCATE 7, 11
PRINT CHR$(219)
 wallx(112) = 7
 wally(112) = 11
LOCATE 5, 12
PRINT CHR$(219)
 wallx(113) = 5
 wally(113) = 12
LOCATE 4, 14
PRINT CHR$(219)
 wallx(114) = 4
 wally(114) = 14
LOCATE 3, 14
PRINT CHR$(219)
 wallx(115) = 3
 wally(115) = 14
LOCATE 3, 15
PRINT CHR$(219)
 wallx(116) = 3
 wally(116) = 15
LOCATE 3, 16
PRINT CHR$(219)
 wallx(117) = 3
 wally(117) = 16
LOCATE 3, 17
PRINT CHR$(219)
 wallx(118) = 3
 wally(118) = 17
LOCATE 3, 18
PRINT CHR$(219)
 wallx(119) = 3
 wally(119) = 18
LOCATE 3, 20
PRINT CHR$(219)
 wallx(120) = 3
 wally(120) = 20
LOCATE 4, 20
PRINT CHR$(219)
 wallx(121) = 4
 wally(121) = 20
LOCATE 5, 20
PRINT CHR$(219)
 wallx(122) = 5
 wally(122) = 20
LOCATE 5, 19
PRINT CHR$(219)
 wallx(123) = 5
 wally(123) = 19
LOCATE 5, 18
PRINT CHR$(219)
 wallx(124) = 5
 wally(124) = 18
LOCATE 5, 17
PRINT CHR$(219)
 wallx(125) = 5
 wally(125) = 17
LOCATE 5, 16
PRINT CHR$(219)
 wallx(126) = 5
 wally(126) = 16
LOCATE 7, 16
PRINT CHR$(219)
 wallx(127) = 7
 wally(127) = 16
LOCATE 8, 16
PRINT CHR$(219)
 wallx(128) = 8
 wally(128) = 16
LOCATE 9, 16
PRINT CHR$(219)
 wallx(129) = 9
 wally(129) = 16
LOCATE 7, 17
PRINT CHR$(219)
 wallx(130) = 7
 wally(130) = 17
LOCATE 7, 18
PRINT CHR$(219)
 wallx(131) = 7
 wally(131) = 18
LOCATE 7, 20
PRINT CHR$(219)
 wallx(132) = 7
 wally(132) = 20
LOCATE 8, 20
PRINT CHR$(219)
 wallx(133) = 8
 wally(133) = 20
LOCATE 9, 20
PRINT CHR$(219)
 wallx(134) = 9
 wally(134) = 20
LOCATE 9, 19
PRINT CHR$(219)
 wallx(135) = 9
 wally(135) = 19
LOCATE 9, 18
PRINT CHR$(219)
 wallx(136) = 9
 wally(136) = 18
LOCATE 11, 15
PRINT CHR$(219)
 wallx(137) = 11
 wally(137) = 15
LOCATE 11, 16
PRINT CHR$(219)
 wallx(138) = 11
 wally(138) = 16
LOCATE 11, 17
PRINT CHR$(219)
 wallx(139) = 11
 wally(139) = 17
LOCATE 11, 18
PRINT CHR$(219)
 wallx(140) = 11
 wally(140) = 18
LOCATE 10, 20
PRINT CHR$(219)
 wallx(141) = 10
 wally(141) = 20
LOCATE 11, 20
PRINT CHR$(219)
 wallx(142) = 11
 wally(142) = 20
LOCATE 12, 20
PRINT CHR$(219)
 wallx(143) = 12
 wally(143) = 20
LOCATE 13, 20
PRINT CHR$(219)
 wallx(144) = 13
 wally(144) = 20
LOCATE 13, 19
PRINT CHR$(219)
 wallx(145) = 13
 wally(145) = 19
LOCATE 13, 18
PRINT CHR$(219)
 wallx(146) = 13
 wally(146) = 18
LOCATE 13, 15
PRINT CHR$(219)
 wallx(147) = 13
 wally(147) = 15
LOCATE 13, 16
PRINT CHR$(219)
 wallx(148) = 13
 wally(148) = 16
LOCATE 14, 16
PRINT CHR$(219)
 wallx(149) = 14
 wally(149) = 16
LOCATE 15, 18
PRINT CHR$(219)
 wallx(150) = 15
 wally(150) = 18
LOCATE 15, 19
PRINT CHR$(219)
 wallx(151) = 15
 wally(151) = 19
LOCATE 15, 20
PRINT CHR$(219)
 wallx(152) = 15
 wally(152) = 20
LOCATE 15, 21
PRINT CHR$(219)
 wallx(153) = 15
 wally(153) = 21

LOCATE 14, 74
PRINT CHR$(219)
 wallx(154) = 14
 wally(154) = 74
LOCATE 13, 74
PRINT CHR$(219)
 wallx(155) = 13
 wally(155) = 74
LOCATE 12, 74
PRINT CHR$(219)
 wallx(156) = 12
 wally(156) = 74
LOCATE 11, 74
PRINT CHR$(219)
 wallx(157) = 11
 wally(157) = 74
LOCATE 10, 74
PRINT CHR$(219)
 wallx(158) = 10
 wally(158) = 74

LOCATE 15, 72
PRINT CHR$(219)
 wallx(159) = 15
 wally(159) = 72
LOCATE 15, 71
PRINT CHR$(219)
 wallx(160) = 15
 wally(160) = 71
LOCATE 15, 70
PRINT CHR$(219)
 wallx(161) = 15
 wally(161) = 70
LOCATE 15, 69
PRINT CHR$(219)
 wallx(162) = 15
 wally(162) = 69
LOCATE 15, 68
PRINT CHR$(219)
 wallx(163) = 15
 wally(163) = 68
LOCATE 15, 67
PRINT CHR$(219)
 wallx(164) = 15
 wally(164) = 67
LOCATE 14, 72
PRINT CHR$(219)
 wallx(165) = 14
 wally(165) = 72

LOCATE 12, 72
PRINT CHR$(219)
 wallx(166) = 12
 wally(166) = 72
LOCATE 11, 72
PRINT CHR$(219)
 wallx(167) = 11
 wally(167) = 72
LOCATE 10, 72
PRINT CHR$(219)
 wallx(168) = 10
 wally(168) = 72
LOCATE 8, 72
PRINT CHR$(219)
 wallx(169) = 8
 wally(169) = 72
LOCATE 8, 72
PRINT CHR$(219)
 wallx(170) = 8
 wally(170) = 72
LOCATE 8, 73
PRINT CHR$(219)
 wallx(171) = 8
 wally(171) = 73
LOCATE 8, 74
PRINT CHR$(219)
 wallx(172) = 8
 wally(172) = 74
LOCATE 7, 74
PRINT CHR$(219)
 wallx(173) = 7
 wally(173) = 74
LOCATE 6, 74
PRINT CHR$(219)
 wallx(174) = 6
 wally(174) = 74
LOCATE 6, 72
PRINT CHR$(219)
 wallx(175) = 6
 wally(175) = 72
LOCATE 5, 72
PRINT CHR$(219)
 wallx(176) = 5
 wally(176) = 72
LOCATE 5, 71
PRINT CHR$(219)
 wallx(177) = 5
 wally(177) = 71
LOCATE 5, 70
PRINT CHR$(219)
 wallx(178) = 5
 wally(178) = 70
LOCATE 5, 69
PRINT CHR$(219)
 wallx(179) = 5
 wally(179) = 69
LOCATE 7, 69
PRINT CHR$(219)
 wallx(180) = 7
 wally(180) = 69
LOCATE 7, 70
PRINT CHR$(219)
 wallx(181) = 7
 wally(181) = 70
LOCATE 9, 70
PRINT CHR$(219)
 wallx(182) = 9
 wally(182) = 70
LOCATE 9, 69
PRINT CHR$(219)
 wallx(182) = 9
 wally(182) = 69
LOCATE 9, 68
PRINT CHR$(219)
 wallx(183) = 9
 wally(183) = 68
LOCATE 9, 67
PRINT CHR$(219)
 wallx(184) = 9
 wally(184) = 67
LOCATE 8, 67
PRINT CHR$(219)
 wallx(185) = 8
 wally(185) = 67

END SUB

SUB delay (numTicks%)
FOR i% = 1 TO numTicks%
 st# = TIMER
 WHILE TIMER = st#: WEND 'TIMER will change 1/18.2 of a second after the previous line
NEXT i%
END SUB

SUB dfield

x1 = 5
y1 = 5
x2 = x1
y2 = y1

COLOR 15
border

DO

a$ = INKEY$

aid = INT(RND * 4)
tiem = INT(RND * 10)

FOR i = 1 TO tiem
IF y1 <> 2 OR y1 <> 18 THEN delay (1)
x2 = x1
y2 = y1

IF aid = 0 THEN
FOR aa = 1 TO asd
 IF wally(aa) = (x1 - 1) THEN
  IF wallx(aa) = y1 THEN
   LOCATE 23, 5
   PRINT wallx(aa), wally(aa)
   LOCATE y1, x1
   COLOR 4
   PRINT CHR$(219)
   COLOR 15
  GOTO aaa
  END IF
 END IF
NEXT aa
x1 = x1 - 1
aaa:
END IF

IF aid = 1 THEN
FOR bb = 1 TO asd
 IF wally(bb) = (x1 + 1) THEN
  IF wallx(bb) = y1 THEN
   LOCATE 23, 5
   PRINT wallx(bb), wally(bb)
   LOCATE y1, x1
   COLOR 4
   PRINT CHR$(219)
   COLOR 15
  GOTO bbb
  END IF
 END IF
NEXT bb
x1 = x1 + 1
bbb:
END IF

IF aid = 2 THEN
FOR cc = 1 TO asd
 IF wallx(cc) = (y1 - 1) THEN
  IF wally(cc) = x1 THEN
   LOCATE 23, 5
   PRINT wallx(cc), wally(cc)
   LOCATE y1, x1
   COLOR 4
   PRINT CHR$(219)
   COLOR 15
  GOTO ccc
  END IF
 END IF
NEXT cc
y1 = y1 - 1
ccc:
END IF

IF aid = 3 THEN
FOR dd = 1 TO asd
 IF wallx(dd) = (y1 + 1) THEN
  IF wally(dd) = x1 THEN
   LOCATE 23, 5
   PRINT wallx(dd), wally(dd)
   LOCATE y1, x1
   COLOR 4
   PRINT CHR$(219)
   COLOR 15
  GOTO ddd
  END IF
 END IF
NEXT dd
y1 = y1 + 1
ddd:
END IF

IF y1 < 2 THEN
y1 = 2
END IF

IF x1 < 6 THEN
IF y1 = 5 OR y1 = 15 THEN
IF x1 < 4 THEN
x1 = 75
END IF
ELSE
x1 = 6
END IF
END IF

IF y1 > 18 THEN
y1 = 18
END IF

IF x1 > 75 THEN
IF y1 = 5 OR y1 = 15 THEN
IF x1 > 77 THEN
x1 = 6'75
END IF
ELSE
x1 = 75
END IF
END IF
COLOR 14

IF y2 <> y1 THEN
LOCATE y2, x2
PRINT " "
END IF
IF x2 <> x1 THEN
LOCATE y2, x2
PRINT " "
END IF

LOCATE y1, x1
PRINT CHR$(2)

COLOR 15

NEXT i

LOOP WHILE a$ <> "e"

END SUB
