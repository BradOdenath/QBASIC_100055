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

LOCATE 4, 4
PRINT STRING$(73, CHR$(219))
LOCATE 21, 4
PRINT STRING$(73, CHR$(219))

FOR I = 1 TO 21 - 4
LOCATE 4 + I, 4
PRINT CHR$(219)
LOCATE 4 + I, 76
PRINT CHR$(219)
NEXT I

LOCATE 23, 4
PRINT "Lab 5, Part 6"
LOCATE 24, 4
PRINT "Created by Brad Odenath"

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

DO

a$ = INKEY$

IF a$ <> "" THEN
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
IF a$ = CHR$(0) + CHR$(75) THEN
x1 = x1 - 1
END IF
IF a$ = CHR$(0) + CHR$(77) THEN
x1 = x1 + 1
END IF
IF a$ = CHR$(0) + CHR$(72) THEN
y1 = y1 - 1
END IF
IF a$ = CHR$(0) + CHR$(80) THEN
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
PRINT "."
END IF
IF x7 <> x6 THEN
LOCATE y7, x7
PRINT "."
END IF

IF y6 <> y5 THEN
LOCATE y6, x6
PRINT "o"
END IF
IF x6 <> x5 THEN
LOCATE y6, x6
PRINT "o"
END IF

IF y5 <> y4 THEN
LOCATE y5, x5
PRINT CHR$(1)
END IF
IF x5 <> x4 THEN
LOCATE y5, x5
PRINT CHR$(1)
END IF

IF y4 <> y3 THEN
LOCATE y4, x4
PRINT " "
END IF
IF x4 <> x3 THEN
LOCATE y4, x4
PRINT " "
END IF

IF y3 <> y2 THEN
LOCATE y3, x3
PRINT "."
END IF
IF x3 <> x2 THEN
LOCATE y3, x3
PRINT "."
END IF

IF y2 <> y1 THEN
LOCATE y2, x2
PRINT "o"
END IF
IF x2 <> x1 THEN
LOCATE y2, x2
PRINT "o"
END IF

LOCATE y1, x1
PRINT CHR$(2)

END IF
LOOP WHILE a$ <> "e"


END SUB

