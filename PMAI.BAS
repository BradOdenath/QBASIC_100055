DECLARE SUB delay (numTicks%)

DECLARE SUB dfield ()
DECLARE SUB border ()
DECLARE SUB gbspawn ()

'***************************************
'*              Mr Pac Man             *
'*  THIS WAS CREATED BY: Brad Odenath  *   41 Pages and counting
'*                                     *
'***************************************

SCREEN 12
CLS

RANDOMIZE TIMER

DIM SHARED asd

asd = 510

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
LOCATE 11, 71
PRINT CHR$(219)
 wallx(170) = 11
 wally(170) = 71
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
LOCATE 7, 67
PRINT CHR$(219)
 wallx(186) = 7
 wally(186) = 67
LOCATE 5, 67
PRINT CHR$(219)
 wallx(187) = 5
 wally(187) = 67
LOCATE 4, 67
PRINT CHR$(219)
 wallx(188) = 4
 wally(188) = 67
LOCATE 3, 67
PRINT CHR$(219)
 wallx(189) = 3
 wally(189) = 67
LOCATE 3, 66
PRINT CHR$(219)
 wallx(190) = 3
 wally(190) = 66
LOCATE 3, 65
PRINT CHR$(219)
 wallx(191) = 3
 wally(191) = 65
LOCATE 3, 64
PRINT CHR$(219)
 wallx(192) = 3
 wally(192) = 64
LOCATE 3, 63
PRINT CHR$(219)
 wallx(193) = 3
 wally(193) = 63
LOCATE 3, 61
PRINT CHR$(219)
 wallx(194) = 3
 wally(194) = 61
LOCATE 4, 61
PRINT CHR$(219)
 wallx(195) = 4
 wally(195) = 61
LOCATE 5, 61
PRINT CHR$(219)
 wallx(196) = 5
 wally(196) = 61
LOCATE 5, 62
PRINT CHR$(219)
 wallx(197) = 5
 wally(197) = 62
LOCATE 5, 63
PRINT CHR$(219)
 wallx(198) = 5
 wally(198) = 63
LOCATE 5, 64
PRINT CHR$(219)
 wallx(199) = 5
 wally(199) = 64
LOCATE 5, 65
PRINT CHR$(219)
 wallx(200) = 5
 wally(200) = 65
LOCATE 9, 69
PRINT CHR$(219)
 wallx(201) = 9
 wally(201) = 69

LOCATE 11, 70
PRINT CHR$(219)
 wallx(202) = 11
 wally(202) = 70
LOCATE 11, 69
PRINT CHR$(219)
 wallx(203) = 11
 wally(203) = 69
LOCATE 11, 68
PRINT CHR$(219)
 wallx(204) = 11
 wally(204) = 68
LOCATE 11, 67
PRINT CHR$(219)
 wallx(205) = 11
 wally(205) = 67
LOCATE 11, 66
PRINT CHR$(219)
 wallx(206) = 11
 wally(206) = 66
LOCATE 11, 65
PRINT CHR$(219)
 wallx(207) = 11
 wally(207) = 65
LOCATE 11, 64
PRINT CHR$(219)
 wallx(208) = 11
 wally(208) = 64
LOCATE 11, 63
PRINT CHR$(219)
 wallx(209) = 11
 wally(209) = 63
LOCATE 11, 61
PRINT CHR$(219)
 wallx(210) = 11
 wally(210) = 61
LOCATE 12, 61
PRINT CHR$(219)
 wallx(211) = 12
 wally(211) = 61
LOCATE 13, 61
PRINT CHR$(219)
 wallx(212) = 13
 wally(212) = 61
LOCATE 13, 62
PRINT CHR$(219)
 wallx(213) = 13
 wally(213) = 62
LOCATE 13, 63
PRINT CHR$(219)
 wallx(214) = 13
 wally(214) = 63

LOCATE 13, 67
PRINT CHR$(219)
 wallx(215) = 13
 wally(215) = 67
LOCATE 13, 65
PRINT CHR$(219)
 wallx(216) = 13
 wally(216) = 65
LOCATE 13, 66
PRINT CHR$(219)
 wallx(217) = 13
 wally(217) = 66
LOCATE 13, 68
PRINT CHR$(219)
 wallx(218) = 13
 wally(218) = 68
LOCATE 13, 69
PRINT CHR$(219)
 wallx(219) = 13
 wally(219) = 69
LOCATE 13, 70
PRINT CHR$(219)
 wallx(220) = 13
 wally(220) = 70
LOCATE 14, 65
PRINT CHR$(219)
 wallx(221) = 14
 wally(221) = 65

LOCATE 15, 63
PRINT CHR$(219)
 wallx(222) = 15
 wally(222) = 63
LOCATE 15, 62
PRINT CHR$(219)
 wallx(223) = 15
 wally(223) = 62
LOCATE 15, 61
PRINT CHR$(219)
 wallx(224) = 15
 wally(224) = 61
LOCATE 15, 60
PRINT CHR$(219)
 wallx(225) = 15
 wally(225) = 60

LOCATE 7, 61
PRINT CHR$(219)
 wallx(226) = 7
 wally(226) = 61
LOCATE 8, 61
PRINT CHR$(219)
 wallx(227) = 8
 wally(227) = 61
LOCATE 9, 61
PRINT CHR$(219)
 wallx(228) = 9
 wally(228) = 61
LOCATE 10, 61
PRINT CHR$(219)
 wallx(229) = 10
 wally(229) = 61
LOCATE 9, 62
PRINT CHR$(219)
 wallx(230) = 9
 wally(230) = 62
LOCATE 9, 63
PRINT CHR$(219)
 wallx(231) = 9
 wally(231) = 63

LOCATE 9, 65
PRINT CHR$(219)
 wallx(232) = 9
 wally(232) = 65
LOCATE 8, 65
PRINT CHR$(219)
 wallx(233) = 8
 wally(233) = 65
LOCATE 7, 65
PRINT CHR$(219)
 wallx(234) = 7
 wally(234) = 65
LOCATE 7, 64
PRINT CHR$(219)
 wallx(235) = 7
 wally(235) = 64
LOCATE 7, 63
PRINT CHR$(219)
 wallx(236) = 7
 wally(236) = 63

LOCATE 17, 59
PRINT CHR$(219)
 wallx(237) = 17
 wally(237) = 59
LOCATE 17, 58
PRINT CHR$(219)
 wallx(238) = 17
 wally(238) = 58
LOCATE 16, 58
PRINT CHR$(219)
 wallx(239) = 16
 wally(239) = 58
LOCATE 15, 58
PRINT CHR$(219)
 wallx(240) = 15
 wally(240) = 58
LOCATE 17, 57
PRINT CHR$(219)
 wallx(241) = 17
 wally(241) = 57

LOCATE 17, 55
PRINT CHR$(219)
 wallx(242) = 17
 wally(242) = 55
LOCATE 16, 55
PRINT CHR$(219)
 wallx(243) = 16
 wally(243) = 55
LOCATE 15, 55
PRINT CHR$(219)
 wallx(244) = 15
 wally(244) = 55
LOCATE 15, 56
PRINT CHR$(219)
 wallx(245) = 15
 wally(245) = 56

LOCATE 13, 55
PRINT CHR$(219)
 wallx(246) = 13
 wally(246) = 55
LOCATE 13, 56
PRINT CHR$(219)
 wallx(247) = 13
 wally(247) = 56
LOCATE 13, 57
PRINT CHR$(219)
 wallx(248) = 13
 wally(248) = 57
LOCATE 13, 58
PRINT CHR$(219)
 wallx(249) = 13
 wally(249) = 58
LOCATE 13, 59
PRINT CHR$(219)
 wallx(250) = 13
 wally(250) = 59
LOCATE 12, 59
PRINT CHR$(219)
 wallx(251) = 12
 wally(251) = 59
LOCATE 11, 59
PRINT CHR$(219)
 wallx(252) = 11
 wally(252) = 59

LOCATE 9, 59
PRINT CHR$(219)
 wallx(253) = 9
 wally(253) = 59
LOCATE 9, 58
PRINT CHR$(219)
 wallx(254) = 9
 wally(254) = 58
LOCATE 9, 57
PRINT CHR$(219)
 wallx(255) = 9
 wally(255) = 57
LOCATE 10, 57
PRINT CHR$(219)
 wallx(256) = 10
 wally(256) = 57
LOCATE 11, 57
PRINT CHR$(219)
 wallx(257) = 11
 wally(257) = 57
LOCATE 11, 55
PRINT CHR$(219)
 wallx(258) = 11
 wally(258) = 55
LOCATE 10, 55
PRINT CHR$(219)
 wallx(259) = 10
 wally(259) = 55
LOCATE 9, 55
PRINT CHR$(219)
 wallx(260) = 9
 wally(260) = 55
LOCATE 8, 55
PRINT CHR$(219)
 wallx(261) = 8
 wally(261) = 55
LOCATE 7, 55
PRINT CHR$(219)
 wallx(262) = 7
 wally(262) = 55
LOCATE 7, 56
PRINT CHR$(219)
 wallx(263) = 7
 wally(263) = 56
LOCATE 7, 57
PRINT CHR$(219)
 wallx(264) = 7
 wally(264) = 57
LOCATE 7, 58
PRINT CHR$(219)
 wallx(265) = 7
 wally(265) = 58
LOCATE 7, 59
PRINT CHR$(219)
 wallx(266) = 7
 wally(266) = 59
LOCATE 6, 55
PRINT CHR$(219)
 wallx(267) = 6
 wally(267) = 55
LOCATE 5, 55
PRINT CHR$(219)
 wallx(268) = 5
 wally(268) = 55
LOCATE 3, 55
PRINT CHR$(219)
 wallx(269) = 3
 wally(269) = 55
LOCATE 3, 56
PRINT CHR$(219)
 wallx(270) = 3
 wally(270) = 56
LOCATE 3, 57
PRINT CHR$(219)
 wallx(271) = 3
 wally(271) = 57
LOCATE 3, 58
PRINT CHR$(219)
 wallx(272) = 3
 wally(272) = 58
LOCATE 3, 59
PRINT CHR$(219)
 wallx(273) = 3
 wally(273) = 59

LOCATE 5, 60
PRINT CHR$(219)
 wallx(274) = 5
 wally(274) = 60
LOCATE 5, 59
PRINT CHR$(219)
 wallx(275) = 5
 wally(275) = 59
LOCATE 5, 58
PRINT CHR$(219)
 wallx(276) = 5
 wally(276) = 58
LOCATE 5, 57
PRINT CHR$(219)
 wallx(277) = 5
 wally(277) = 57

LOCATE 5, 21
PRINT CHR$(219)
 wallx(278) = 5
 wally(278) = 21
LOCATE 5, 22
PRINT CHR$(219)
 wallx(279) = 5
 wally(279) = 22
LOCATE 5, 23
PRINT CHR$(219)
 wallx(280) = 5
 wally(280) = 23
LOCATE 5, 24
PRINT CHR$(219)
 wallx(281) = 5
 wally(281) = 24

LOCATE 3, 22
PRINT CHR$(219)
 wallx(282) = 3
 wally(282) = 22
LOCATE 3, 23
PRINT CHR$(219)
 wallx(283) = 3
 wally(283) = 23
LOCATE 3, 24
PRINT CHR$(219)
 wallx(284) = 3
 wally(284) = 24
LOCATE 3, 25
PRINT CHR$(219)
 wallx(285) = 3
 wally(285) = 25
LOCATE 3, 26
PRINT CHR$(219)
 wallx(286) = 3
 wally(286) = 26
LOCATE 5, 26
PRINT CHR$(219)
 wallx(287) = 5
 wally(287) = 26
LOCATE 6, 26
PRINT CHR$(219)
 wallx(288) = 6
 wally(288) = 26
LOCATE 7, 26
PRINT CHR$(219)
 wallx(289) = 7
 wally(289) = 26
LOCATE 7, 22
PRINT CHR$(219)
 wallx(290) = 7
 wally(290) = 22
LOCATE 7, 23
PRINT CHR$(219)
 wallx(291) = 7
 wally(291) = 23
LOCATE 7, 24
PRINT CHR$(219)
 wallx(292) = 7
 wally(292) = 24
LOCATE 7, 25
PRINT CHR$(219)
 wallx(293) = 7
 wally(293) = 25

LOCATE 8, 26
PRINT CHR$(219)
 wallx(294) = 8
 wally(294) = 26
LOCATE 9, 26
PRINT CHR$(219)
 wallx(295) = 9
 wally(295) = 26
LOCATE 10, 26
PRINT CHR$(219)
 wallx(296) = 10
 wally(296) = 26
LOCATE 11, 26
PRINT CHR$(219)
 wallx(297) = 11
 wally(297) = 26

LOCATE 13, 26
PRINT CHR$(219)
 wallx(298) = 13
 wally(298) = 26
LOCATE 13, 25
PRINT CHR$(219)
 wallx(299) = 13
 wally(299) = 25
LOCATE 13, 24
PRINT CHR$(219)
 wallx(300) = 13
 wally(300) = 24
LOCATE 13, 23
PRINT CHR$(219)
 wallx(301) = 13
 wally(301) = 23
LOCATE 13, 22
PRINT CHR$(219)
 wallx(302) = 13
 wally(302) = 22
LOCATE 12, 22
PRINT CHR$(219)
 wallx(303) = 12
 wally(303) = 22
LOCATE 11, 22
PRINT CHR$(219)
 wallx(304) = 11
 wally(304) = 22

LOCATE 11, 24
PRINT CHR$(219)
 wallx(305) = 11
 wally(305) = 24
LOCATE 10, 24
PRINT CHR$(219)
 wallx(306) = 10
 wally(306) = 24
LOCATE 9, 24
PRINT CHR$(219)
 wallx(307) = 9
 wally(307) = 24
LOCATE 9, 23
PRINT CHR$(219)
 wallx(308) = 9
 wally(308) = 23
LOCATE 9, 22
PRINT CHR$(219)
 wallx(309) = 9
 wally(309) = 22

LOCATE 17, 22
PRINT CHR$(219)
 wallx(310) = 17
 wally(310) = 22
LOCATE 17, 23
PRINT CHR$(219)
 wallx(311) = 17
 wally(311) = 23
LOCATE 17, 24
PRINT CHR$(219)
 wallx(312) = 17
 wally(312) = 24
LOCATE 16, 23
PRINT CHR$(219)
 wallx(313) = 16
 wally(313) = 23
LOCATE 15, 23
PRINT CHR$(219)
 wallx(314) = 15
 wally(314) = 23

LOCATE 15, 25
PRINT CHR$(219)
 wallx(315) = 15
 wally(315) = 25
LOCATE 15, 26
PRINT CHR$(219)
 wallx(316) = 15
 wally(316) = 26
LOCATE 16, 26
PRINT CHR$(219)
 wallx(317) = 16
 wally(317) = 26
LOCATE 17, 26
PRINT CHR$(219)
 wallx(318) = 17
 wally(318) = 26
LOCATE 15, 27
PRINT CHR$(219)
 wallx(319) = 15
 wally(319) = 27
LOCATE 15, 28
PRINT CHR$(219)
 wallx(320) = 15
 wally(320) = 28
LOCATE 17, 28
PRINT CHR$(219)
 wallx(321) = 17
 wally(321) = 28
LOCATE 17, 29
PRINT CHR$(219)
 wallx(322) = 17
 wally(322) = 29
LOCATE 17, 30
PRINT CHR$(219)
 wallx(323) = 17
 wally(323) = 30
LOCATE 16, 30
PRINT CHR$(219)
 wallx(324) = 16
 wally(324) = 30

LOCATE 14, 30
PRINT CHR$(219)
 wallx(325) = 14
 wally(325) = 30
LOCATE 13, 30
PRINT CHR$(219)
 wallx(326) = 13
 wally(326) = 30
LOCATE 13, 29
PRINT CHR$(219)
 wallx(327) = 13
 wally(327) = 29
LOCATE 13, 27
PRINT CHR$(219)
 wallx(328) = 13
 wally(328) = 27
LOCATE 11, 28
PRINT CHR$(219)
 wallx(329) = 11
 wally(329) = 28
LOCATE 11, 29
PRINT CHR$(219)
 wallx(330) = 11
 wally(330) = 29
LOCATE 11, 30
PRINT CHR$(219)
 wallx(331) = 11
 wally(331) = 30
LOCATE 13, 32
PRINT CHR$(219)
 wallx(332) = 13
 wally(332) = 32
LOCATE 11, 32
PRINT CHR$(219)
 wallx(333) = 11
 wally(333) = 32
LOCATE 12, 32
PRINT CHR$(219)
 wallx(334) = 12
 wally(334) = 32
LOCATE 15, 32
PRINT CHR$(219)
 wallx(335) = 15
 wally(335) = 32
LOCATE 16, 32
PRINT CHR$(219)
 wallx(336) = 16
 wally(336) = 32
LOCATE 17, 32
PRINT CHR$(219)
 wallx(337) = 17
 wally(337) = 32
LOCATE 17, 33
PRINT CHR$(219)
 wallx(338) = 17
 wally(338) = 33
LOCATE 17, 34
PRINT CHR$(219)
 wallx(339) = 17
 wally(339) = 34

LOCATE 15, 54
PRINT CHR$(219)
 wallx(340) = 15
 wally(340) = 54
LOCATE 15, 53
PRINT CHR$(219)
 wallx(341) = 15
 wally(341) = 53
LOCATE 17, 53
PRINT CHR$(219)
 wallx(342) = 17
 wally(342) = 53
LOCATE 17, 52
PRINT CHR$(219)
 wallx(343) = 17
 wally(343) = 52
LOCATE 17, 51
PRINT CHR$(219)
 wallx(344) = 17
 wally(344) = 51
LOCATE 16, 51
PRINT CHR$(219)
 wallx(345) = 16
 wally(345) = 51
LOCATE 14, 51
PRINT CHR$(219)
 wallx(346) = 14
 wally(346) = 51
LOCATE 13, 51
PRINT CHR$(219)
 wallx(347) = 13
 wally(347) = 51
LOCATE 13, 52
PRINT CHR$(219)
 wallx(348) = 13
 wally(348) = 52
LOCATE 13, 54
PRINT CHR$(219)
 wallx(349) = 13
 wally(349) = 54
LOCATE 11, 53
PRINT CHR$(219)
 wallx(350) = 11
 wally(350) = 53
LOCATE 11, 52
PRINT CHR$(219)
 wallx(351) = 11
 wally(351) = 52
LOCATE 11, 51
PRINT CHR$(219)
 wallx(352) = 11
 wally(352) = 51

LOCATE 11, 49
PRINT CHR$(219)
 wallx(353) = 11
 wally(353) = 49
LOCATE 12, 49
PRINT CHR$(219)
 wallx(353) = 12
 wally(353) = 49
LOCATE 13, 49
PRINT CHR$(219)
 wallx(354) = 13
 wally(354) = 49

LOCATE 15, 49
PRINT CHR$(219)
 wallx(355) = 15
 wally(355) = 49
LOCATE 16, 49
PRINT CHR$(219)
 wallx(356) = 16
 wally(356) = 49
LOCATE 17, 49
PRINT CHR$(219)
 wallx(357) = 17
 wally(357) = 49
LOCATE 17, 48
PRINT CHR$(219)
 wallx(358) = 17
 wally(358) = 48
LOCATE 17, 47
PRINT CHR$(219)
 wallx(359) = 17
 wally(359) = 47
LOCATE 17, 45
PRINT CHR$(219)
 wallx(360) = 17
 wally(360) = 45
LOCATE 17, 44
PRINT CHR$(219)
 wallx(361) = 17
 wally(361) = 44
LOCATE 17, 43
PRINT CHR$(219)
 wallx(362) = 17
 wally(362) = 43
LOCATE 17, 42
PRINT CHR$(219)
 wallx(363) = 17
 wally(363) = 42
LOCATE 17, 41
PRINT CHR$(219)
 wallx(364) = 17
 wally(364) = 41
LOCATE 17, 40
PRINT CHR$(219)
 wallx(365) = 17
 wally(365) = 40
LOCATE 17, 39
PRINT CHR$(219)
 wallx(366) = 17
 wally(366) = 39
LOCATE 17, 38
PRINT CHR$(219)
 wallx(367) = 17
 wally(367) = 38
LOCATE 17, 37
PRINT CHR$(219)
 wallx(368) = 17
 wally(368) = 37
LOCATE 17, 36
PRINT CHR$(219)
 wallx(369) = 17
 wally(369) = 36

LOCATE 15, 34
PRINT CHR$(219)
 wallx(370) = 15
 wally(370) = 34
LOCATE 14, 34
PRINT CHR$(219)
 wallx(371) = 14
 wally(371) = 34
LOCATE 13, 34
PRINT CHR$(219)
 wallx(372) = 13
 wally(372) = 34

LOCATE 11, 34
PRINT CHR$(219)
 wallx(373) = 11
 wally(373) = 34
LOCATE 10, 34
PRINT CHR$(219)
 wallx(374) = 10
 wally(374) = 34
LOCATE 9, 34
PRINT CHR$(219)
 wallx(375) = 9
 wally(375) = 34
LOCATE 9, 33
PRINT CHR$(219)
 wallx(376) = 9
 wally(376) = 33
LOCATE 9, 32
PRINT CHR$(219)
 wallx(377) = 9
 wally(377) = 32
LOCATE 9, 31
PRINT CHR$(219)
 wallx(378) = 9
 wally(378) = 31
LOCATE 9, 30
PRINT CHR$(219)
 wallx(379) = 9
 wally(379) = 30

LOCATE 9, 28
PRINT CHR$(219)
 wallx(380) = 9
 wally(380) = 28
LOCATE 8, 28
PRINT CHR$(219)
 wallx(381) = 8
 wally(381) = 28
LOCATE 7, 28
PRINT CHR$(219)
 wallx(382) = 7
 wally(382) = 28
LOCATE 7, 29
PRINT CHR$(219)
 wallx(383) = 7
 wally(383) = 29
LOCATE 7, 30
PRINT CHR$(219)
 wallx(384) = 7
 wally(384) = 30
LOCATE 7, 32
PRINT CHR$(219)
 wallx(385) = 7
 wally(385) = 32
LOCATE 7, 33
PRINT CHR$(219)
 wallx(386) = 7
 wally(386) = 33
LOCATE 7, 34
PRINT CHR$(219)
 wallx(387) = 7
 wally(387) = 34
LOCATE 5, 34
PRINT CHR$(219)
 wallx(388) = 5
 wally(388) = 34
LOCATE 5, 33
PRINT CHR$(219)
 wallx(389) = 5
 wally(389) = 33
LOCATE 5, 32
PRINT CHR$(219)
 wallx(390) = 5
 wally(390) = 32
LOCATE 5, 31
PRINT CHR$(219)
 wallx(391) = 5
 wally(391) = 31
LOCATE 5, 30
PRINT CHR$(219)
 wallx(392) = 5
 wally(392) = 30
LOCATE 5, 29
PRINT CHR$(219)
 wallx(393) = 5
 wally(393) = 29
LOCATE 5, 28
PRINT CHR$(219)
 wallx(394) = 5
 wally(394) = 28
LOCATE 4, 28
PRINT CHR$(219)
 wallx(395) = 4
 wally(395) = 28
LOCATE 3, 28
PRINT CHR$(219)
 wallx(396) = 3
 wally(396) = 28
LOCATE 3, 30
PRINT CHR$(219)
 wallx(397) = 3
 wally(397) = 30
LOCATE 3, 31
PRINT CHR$(219)
 wallx(398) = 3
 wally(398) = 31
LOCATE 3, 32
PRINT CHR$(219)
 wallx(399) = 3
 wally(399) = 32
LOCATE 3, 33
PRINT CHR$(219)
 wallx(400) = 3
 wally(400) = 33
LOCATE 3, 34
PRINT CHR$(219)
 wallx(401) = 3
 wally(401) = 34

LOCATE 3, 53
PRINT CHR$(219)
 wallx(402) = 3
 wally(402) = 53
LOCATE 4, 53
PRINT CHR$(219)
 wallx(403) = 4
 wally(403) = 53
LOCATE 5, 53
PRINT CHR$(219)
 wallx(404) = 5
 wally(404) = 53
LOCATE 5, 52
PRINT CHR$(219)
 wallx(405) = 5
 wally(405) = 52
LOCATE 5, 51
PRINT CHR$(219)
 wallx(406) = 5
 wally(406) = 51
LOCATE 5, 50
PRINT CHR$(219)
 wallx(407) = 5
 wally(407) = 50
LOCATE 5, 49
PRINT CHR$(219)
 wallx(408) = 5
 wally(408) = 49
LOCATE 5, 48
PRINT CHR$(219)
 wallx(409) = 5
 wally(409) = 48
LOCATE 5, 47
PRINT CHR$(219)
 wallx(410) = 5
 wally(410) = 47
 
LOCATE 3, 51
PRINT CHR$(219)
 wallx(411) = 3
 wally(411) = 51
LOCATE 3, 50
PRINT CHR$(219)
 wallx(412) = 3
 wally(412) = 50
LOCATE 3, 49
PRINT CHR$(219)
 wallx(413) = 3
 wally(413) = 49
LOCATE 3, 48
PRINT CHR$(219)
 wallx(414) = 3
 wally(414) = 48
LOCATE 3, 47
PRINT CHR$(219)
 wallx(415) = 3
 wally(415) = 47

LOCATE 7, 47
PRINT CHR$(219)
 wallx(416) = 7
 wally(416) = 47
LOCATE 7, 48
PRINT CHR$(219)
 wallx(417) = 7
 wally(417) = 48
LOCATE 7, 49
PRINT CHR$(219)
 wallx(418) = 7
 wally(418) = 49

LOCATE 7, 51
PRINT CHR$(219)
 wallx(419) = 7
 wally(419) = 51
LOCATE 7, 52
PRINT CHR$(219)
 wallx(420) = 7
 wally(420) = 52
LOCATE 7, 53
PRINT CHR$(219)
 wallx(421) = 7
 wally(421) = 53
LOCATE 8, 53
PRINT CHR$(219)
 wallx(422) = 8
 wally(422) = 53
LOCATE 9, 53
PRINT CHR$(219)
 wallx(423) = 9
 wally(423) = 53
LOCATE 9, 51
PRINT CHR$(219)
 wallx(424) = 9
 wally(424) = 51
LOCATE 9, 50
PRINT CHR$(219)
 wallx(425) = 9
 wally(425) = 50
LOCATE 9, 49
PRINT CHR$(219)
 wallx(426) = 9
 wally(426) = 49
LOCATE 9, 48
PRINT CHR$(219)
 wallx(427) = 9
 wally(427) = 48
LOCATE 9, 47
PRINT CHR$(219)
 wallx(428) = 9
 wally(428) = 47
LOCATE 10, 47
PRINT CHR$(219)
 wallx(429) = 10
 wally(429) = 47
LOCATE 11, 47
PRINT CHR$(219)
 wallx(430) = 11
 wally(430) = 47

LOCATE 13, 47
PRINT CHR$(219)
 wallx(431) = 13
 wally(431) = 47
LOCATE 14, 47
PRINT CHR$(219)
 wallx(432) = 14
 wally(432) = 47
LOCATE 15, 47
PRINT CHR$(219)
 wallx(433) = 15
 wally(433) = 47
LOCATE 15, 46
PRINT CHR$(219)
 wallx(434) = 15
 wally(434) = 46
LOCATE 15, 45
PRINT CHR$(219)
 wallx(435) = 15
 wally(435) = 45
LOCATE 15, 44
PRINT CHR$(219)
 wallx(436) = 15
 wally(436) = 44

LOCATE 15, 42
PRINT CHR$(219)
 wallx(437) = 15
 wally(437) = 42
LOCATE 15, 41
PRINT CHR$(219)
 wallx(438) = 15
 wally(438) = 41
LOCATE 15, 40
PRINT CHR$(219)
 wallx(439) = 15
 wally(439) = 40
LOCATE 15, 39
PRINT CHR$(219)
 wallx(440) = 15
 wally(440) = 39

LOCATE 15, 37
PRINT CHR$(219)
 wallx(441) = 15
 wally(441) = 37
LOCATE 15, 36
PRINT CHR$(219)
 wallx(442) = 15
 wally(442) = 36
LOCATE 15, 35
PRINT CHR$(219)
 wallx(443) = 15
 wally(443) = 35

LOCATE 9, 35
PRINT CHR$(219)
 wallx(444) = 9
 wally(444) = 35
LOCATE 9, 36
PRINT CHR$(219)
 wallx(445) = 9
 wally(445) = 36
LOCATE 9, 37
PRINT CHR$(219)
 wallx(446) = 9
 wally(446) = 37
LOCATE 9, 38
PRINT CHR$(219)
 wallx(447) = 9
 wally(447) = 38
LOCATE 9, 40
PRINT CHR$(219)
 wallx(448) = 9
 wally(448) = 40
LOCATE 9, 41
PRINT CHR$(219)
 wallx(449) = 9
 wally(449) = 41
LOCATE 9, 43
PRINT CHR$(219)
 wallx(450) = 9
 wally(450) = 43
LOCATE 9, 44
PRINT CHR$(219)
 wallx(451) = 9
 wally(451) = 44
LOCATE 9, 45
PRINT CHR$(219)
 wallx(452) = 9
 wally(452) = 45
LOCATE 9, 46
PRINT CHR$(219)
 wallx(453) = 9
 wally(453) = 46

LOCATE 7, 46
PRINT CHR$(219)
 wallx(454) = 7
 wally(454) = 46
LOCATE 7, 45
PRINT CHR$(219)
 wallx(455) = 7
 wally(455) = 45
LOCATE 7, 44
PRINT CHR$(219)
 wallx(456) = 7
 wally(456) = 44
LOCATE 7, 43
PRINT CHR$(219)
 wallx(457) = 7
 wally(457) = 43
LOCATE 7, 42
PRINT CHR$(219)
 wallx(458) = 7
 wally(458) = 42
LOCATE 7, 41
PRINT CHR$(219)
 wallx(459) = 7
 wally(459) = 41
LOCATE 7, 40
PRINT CHR$(219)
 wallx(460) = 7
 wally(460) = 40
LOCATE 7, 39
PRINT CHR$(219)
 wallx(461) = 7
 wally(461) = 39
LOCATE 7, 38
PRINT CHR$(219)
 wallx(462) = 7
 wally(462) = 38
LOCATE 7, 37
PRINT CHR$(219)
 wallx(463) = 7
 wally(463) = 37
LOCATE 7, 36
PRINT CHR$(219)
 wallx(464) = 7
 wally(464) = 36
LOCATE 7, 35
PRINT CHR$(219)
 wallx(465) = 7
 wally(465) = 35

LOCATE 3, 35
PRINT CHR$(219)
 wallx(466) = 3
 wally(466) = 35
LOCATE 3, 36
PRINT CHR$(219)
 wallx(467) = 3
 wally(467) = 36
LOCATE 4, 36
PRINT CHR$(219)
 wallx(468) = 4
 wally(468) = 36
LOCATE 5, 36
PRINT CHR$(219)
 wallx(469) = 5
 wally(469) = 36
LOCATE 3, 46
PRINT CHR$(219)
 wallx(470) = 3
 wally(470) = 46
LOCATE 3, 45
PRINT CHR$(219)
 wallx(471) = 3
 wally(471) = 45
LOCATE 4, 45
PRINT CHR$(219)
 wallx(472) = 4
 wally(472) = 45
LOCATE 5, 45
PRINT CHR$(219)
 wallx(473) = 5
 wally(473) = 45

LOCATE 5, 43
PRINT CHR$(219)
 wallx(474) = 5
 wally(474) = 43
LOCATE 5, 42
PRINT CHR$(219)
 wallx(475) = 5
 wally(475) = 42
LOCATE 5, 41
PRINT CHR$(219)
 wallx(476) = 5
 wally(476) = 41
LOCATE 5, 40
PRINT CHR$(219)
 wallx(477) = 5
 wally(477) = 40
LOCATE 5, 39
PRINT CHR$(219)
 wallx(478) = 5
 wally(478) = 39
LOCATE 5, 38
PRINT CHR$(219)
 wallx(479) = 5
 wally(479) = 38
LOCATE 3, 37
PRINT CHR$(219)
 wallx(480) = 3
 wally(480) = 37

LOCATE 3, 39
PRINT CHR$(219)
 wallx(481) = 3
 wally(481) = 39
LOCATE 3, 40
PRINT CHR$(219)
 wallx(482) = 3
 wally(482) = 40
LOCATE 3, 41
PRINT CHR$(219)
 wallx(483) = 3
 wally(483) = 41
LOCATE 3, 42
PRINT CHR$(219)
 wallx(484) = 3
 wally(484) = 42

LOCATE 3, 44
PRINT CHR$(219)
 wallx(485) = 3
 wally(485) = 44

gbspawn

COLOR 15

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
'IF y1 <> 2 OR y1 <> 18 THEN delay (1)
x2 = x1
y2 = y1

IF aid = 0 THEN
FOR aa = 1 TO asd
 IF wally(aa) = (x1 - 1) THEN
  IF wallx(aa) = y1 THEN
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

SUB gbspawn

COLOR 9

LOCATE 13, 45
PRINT CHR$(219)
 wallx(486) = 13
 wally(486) = 45
LOCATE 12, 45
PRINT CHR$(219)
 wallx(487) = 12
 wally(487) = 45
LOCATE 11, 45
PRINT CHR$(219)
 wallx(488) = 11
 wally(488) = 45

LOCATE 11, 36
PRINT CHR$(219)
 wallx(489) = 11
 wally(489) = 36
LOCATE 12, 36
PRINT CHR$(219)
 wallx(490) = 12
 wally(490) = 36
LOCATE 13, 36
PRINT CHR$(219)
 wallx(491) = 13
 wally(491) = 36

LOCATE 13, 37
PRINT CHR$(220)
 wallx(492) = 13
 wally(492) = 37
LOCATE 13, 38
PRINT CHR$(220)
 wallx(493) = 13
 wally(493) = 38
LOCATE 13, 39
PRINT CHR$(220)
 wallx(494) = 13
 wally(494) = 39
LOCATE 13, 40
PRINT CHR$(220)
 wallx(495) = 13
 wally(495) = 40
LOCATE 13, 41
PRINT CHR$(220)
 wallx(496) = 13
 wally(496) = 41
LOCATE 13, 42
PRINT CHR$(220)
 wallx(497) = 13
 wally(497) = 42
LOCATE 13, 43
PRINT CHR$(220)
 wallx(498) = 13
 wally(498) = 43
LOCATE 13, 44
PRINT CHR$(220)
 wallx(499) = 13
 wally(499) = 44

COLOR 7

LOCATE 11, 44
PRINT CHR$(223)
 wallx(500) = 11
 wally(500) = 44
LOCATE 11, 43
PRINT CHR$(223)
 wallx(501) = 11
 wally(501) = 43
LOCATE 11, 42
PRINT CHR$(223)
 wallx(502) = 11
 wally(502) = 42
LOCATE 11, 41
PRINT CHR$(223)
 wallx(503) = 11
 wally(503) = 41
LOCATE 11, 40
PRINT CHR$(223)
 wallx(504) = 11
 wally(504) = 40
LOCATE 11, 39
PRINT CHR$(223)
 wallx(505) = 11
 wally(505) = 39
LOCATE 11, 38
PRINT CHR$(223)
 wallx(506) = 11
 wally(506) = 38
LOCATE 11, 37
PRINT CHR$(223)
 wallx(507) = 11
 wally(507) = 37

COLOR 15

END SUB

