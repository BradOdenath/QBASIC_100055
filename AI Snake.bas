DECLARE SUB delay (numTicks%)

DECLARE SUB dfield ()
DECLARE SUB border ()
'***************************************
'*             Lab 5 Part 2            *
'*  THIS WAS CREATED BY: Brad Odenath  *
'*                                     *
'***************************************

SCREEN 12
CLS

border
dfield

SUB border

COLOR 9

LOCATE 4, 4
PRINT STRING$(73, CHR$(219))
LOCATE 21, 4
PRINT STRING$(73, CHR$(219))

FOR i = 1 TO 21 - 4
LOCATE 4 + i, 4
PRINT CHR$(219)
LOCATE 4 + i, 76
PRINT CHR$(219)
NEXT i

COLOR 15

LOCATE 23, 4
PRINT "The Snake,"
LOCATE 24, 4
PRINT "He wants his candy."

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
x3 = x2
y3 = y2
x4 = x3
y4 = y3
x5 = x4
y5 = y4
x6 = x5
y6 = y5
x7 = x6
y7 = y6
y8 = y7
y8 = y7

COLOR 15
border

candyco = 0

DO

a$ = INKEY$

aid = INT(RND * 4)
tiem = INT(RND * 10)
derd = INT(RND * 10)

LOCATE 2, 4
PRINT "Candy Collected:"; candyco

IF derd = 1 THEN
candyco = candyco + 1
IF aid = 0 THEN
tpx1 = x1 - tiem + INT(RND * tiem)
IF tpx1 < 5 THEN
tpx1 = 75'5
END IF
LOCATE y1, tpx1
COLOR 14
PRINT "*"
COLOR 15
END IF
IF aid = 1 THEN
tpx1 = x1 + tiem - INT(RND * tiem)
IF tpx1 > 75 THEN
tpx1 = 5'75
END IF
LOCATE y1, tpx1
COLOR 14
PRINT "*"
COLOR 15
END IF
IF aid = 2 THEN
tpy1 = y1 - tiem + INT(RND * tiem)
IF tpy1 < 5 THEN
tpy1 = 20'5
END IF
LOCATE tpy1, x1
COLOR 14
PRINT "*"
COLOR 15
END IF
IF aid = 3 THEN
tpy1 = y1 + tiem - INT(RND * tiem)
IF tpy1 > 20 THEN
tpy1 = 5'20
END IF
LOCATE tpy1, x1
COLOR 14
PRINT "*"
COLOR 15
END IF
END IF

FOR i = 1 TO tiem
delay (1)
x8 = x7
y8 = y7
x7 = x6
y7 = y6
x6 = x5
y6 = y5
x5 = x4
y5 = y4
x4 = x3
y4 = y3
x3 = x2
y3 = y2
x2 = x1
y2 = y1

IF aid = 0 THEN
x1 = x1 - 1
END IF
IF aid = 1 THEN
x1 = x1 + 1
END IF
IF aid = 2 THEN
y1 = y1 - 1
END IF
IF aid = 3 THEN
y1 = y1 + 1
END IF

IF y1 < 5 THEN
y1 = 20'5
END IF

IF x1 < 5 THEN
x1 = 75'5
END IF

IF y1 > 20 THEN
y1 = 5'20
END IF

IF x1 > 75 THEN
x1 = 5'75
END IF

COLOR 2

IF y8 <> y7 THEN
LOCATE y8, x8
PRINT " "
END IF
IF x8 <> x7 THEN
LOCATE y8, x8
PRINT " "
END IF

IF y7 <> y6 THEN
LOCATE y7, x7
PRINT "O"
END IF
IF x7 <> x6 THEN
LOCATE y7, x7
PRINT "o"
END IF

IF y6 <> y5 THEN
LOCATE y6, x6
PRINT "O"
END IF
IF x6 <> x5 THEN
LOCATE y6, x6
PRINT "o"
END IF

IF y5 <> y4 THEN
LOCATE y5, x5
PRINT "O"
END IF
IF x5 <> x4 THEN
LOCATE y5, x5
PRINT "o"
END IF

IF y4 <> y3 THEN
LOCATE y4, x4
PRINT "O"
END IF
IF x4 <> x3 THEN
LOCATE y4, x4
PRINT "o"
END IF

IF y3 <> y2 THEN
LOCATE y3, x3
PRINT "O"
END IF
IF x3 <> x2 THEN
LOCATE y3, x3
PRINT "o"
END IF

IF y2 <> y1 THEN
LOCATE y2, x2
PRINT "O"
END IF
IF x2 <> x1 THEN
LOCATE y2, x2
PRINT "o"
END IF

LOCATE y1, x1
PRINT CHR$(2)

COLOR 15

NEXT i

LOOP WHILE a$ <> "e"

END SUB

