SCREEN 12
CLS

'****************
' *BRAD ODENATH*
'****************

DX = 320 'Default X
DY = 240 'Default Y

x1 = DX - 20
y1 = DY - 20
x2 = DX + 20
y2 = DY - 20
x3 = DX - 20
y3 = DY + 20
x4 = DX + 20
y4 = DY + 20

x1a = x1
y1a = y1
x2a = x2
y2a = y2
x3a = x3
y3a = y3
x4a = x4
y4a = y4

DS = 1 'Default Size

s1 = DS
s2 = DS
s3 = DS
s4 = DS

va = 0 'Show letter values
ha = 1 'Show HUD

LOCATE 1, 1
PRINT "Point Locations"
LINE (0, 15)-(200, 15)
LOCATE 2, 1
PRINT "Point A: ("; x1; ","; y1; ") Arrow Keys"
LOCATE 3, 1
PRINT "Point B: ("; x2; ","; y2; ") WASD Keys"
LOCATE 4, 1
PRINT "Point C: ("; x3; ","; y3; ") TFGH Keys"
LOCATE 5, 1
PRINT "Point D: ("; x4; ","; y4; ") IJKL Keys"
LOCATE 7, 1
PRINT "Circle Sizes"
LINE (0, 111)-(200, 111)
LOCATE 8, 1
PRINT "Circle A: ("; s1; ") <> Keys"
LOCATE 9, 1
PRINT "Circle B: ("; s2; ") QE Keys"
LOCATE 10, 1
PRINT "Circle B: ("; s3; ") RY Keys"
LOCATE 11, 1
PRINT "Circle B: ("; s4; ") UO Keys"
LOCATE 13, 1
PRINT "Press b to set to default"
PRINT "Press v to view letters"
PRINT "Press c to hide HUD"
PRINT "Press x to exit program"


DO

a$ = INKEY$

IF a$ <> "" THEN

x4a = x4
y4a = y4
x3a = x3
y3a = y3
x2a = x2
y2a = y2
x1a = x1
y1a = y1

s1a = s1
s2a = s2
s3a = s3
s4a = s4

cs = 1 'Circle Size

IF a$ = "," THEN
s1 = s1 - 1
END IF
IF a$ = "." THEN
s1 = s1 + 1
END IF

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

IF a$ = "q" THEN
s2 = s2 - 1
END IF
IF a$ = "e" THEN
s2 = s2 + 1
END IF

IF a$ = "a" THEN
x2 = x2 - 1
END IF
IF a$ = "d" THEN
x2 = x2 + 1
END IF
IF a$ = "w" THEN
y2 = y2 - 1
END IF
IF a$ = "s" THEN
y2 = y2 + 1
END IF

IF a$ = "r" THEN
s3 = s3 - 1
END IF
IF a$ = "y" THEN
s3 = s3 + 1
END IF

IF a$ = "f" THEN
x3 = x3 - 1
END IF
IF a$ = "h" THEN
x3 = x3 + 1
END IF
IF a$ = "t" THEN
y3 = y3 - 1
END IF
IF a$ = "g" THEN
y3 = y3 + 1
END IF

IF a$ = "u" THEN
s4 = s4 - 1
END IF
IF a$ = "o" THEN
s4 = s4 + 1
END IF

IF a$ = "j" THEN
x4 = x4 - 1
END IF
IF a$ = "l" THEN
x4 = x4 + 1
END IF
IF a$ = "i" THEN
y4 = y4 - 1
END IF
IF a$ = "k" THEN
y4 = y4 + 1
END IF

IF a$ = "b" THEN
CLS

x1 = DX - 20
y1 = DY - 20

x2 = DX + 20
y2 = DY - 20

x3 = DX - 20
y3 = DY + 20

x4 = DX + 20
y4 = DY + 20

s1 = DS
s2 = DS
s3 = DS
s4 = DS

s1a = s1
s2a = s2
s3a = s3
s4a = s4

va = 0 'Show letter values
ha = 1 'Show HUD
END IF

IF a$ = "c" THEN
IF ha = 0 THEN
ha = 1
GOTO printer2
ELSE
ha = 0
CLS
END IF
END IF
printer2:

IF a$ = "v" THEN
IF va = 0 THEN
va = 1
GOTO printer
ELSE
va = 0
END IF
END IF

END IF

printer:

IF a$ <> "" THEN

LINE (x2a, y2a)-(x1a, y1a), 0
LINE (x3a, y3a)-(x1a, y1a), 0
LINE (x4a, y4a)-(x3a, y3a), 0
LINE (x4a, y4a)-(x2a, y2a), 0

IF s1 <= 0 THEN
s1 = 1
END IF
CIRCLE (x1a, y1a), s1a, 0

IF s2 <= 0 THEN
s2 = 1
END IF
CIRCLE (x2a, y2a), s2a, 0

IF s3 <= 0 THEN
s3 = 1
END IF
CIRCLE (x3a, y3a), s3a, 0

IF s4 <= 0 THEN
s4 = 1
END IF
CIRCLE (x4a, y4a), s4a, 0

'Letter A
LINE (x1a + 6, y1a + 6)-(x1a + 12, y1a + 6), 0
LINE (x1a + 9, y1a)-(x1a + 12, y1a + 6), 0
LINE (x1a + 9, y1a - 1)-(x1a + 6, y1a + 5), 0
LINE (x1a + 6, y1a + 10)-(x1a + 6, y1a + 5), 0
LINE (x1a + 12, y1a + 10)-(x1a + 12, y1a + 6), 0
'Letter B
LINE (x2a + 6, y2a - 1)-(x2a + 6, y2a + 10), 0
LINE (x2a + 12, y2a - 1)-(x2a + 12, y2a + 10), 0
LINE (x2a + 6, y2a + 9)-(x2a + 12, y2a + 10), 0
LINE (x2a + 6, y2a)-(x2a + 12, y2a - 1), 0
LINE (x2a + 6, y2a + 4)-(x2a + 12, y2a + 5), 0
'Letter C
LINE (x3a + 6, y3a)-(x3a + 6, y3a + 9), 0
LINE (x3a + 6, y3a + 9)-(x3a + 12, y3a + 10), 0
LINE (x3a + 6, y3a)-(x3a + 12, y3a - 1), 0
'Letter D                                          
LINE (x4a + 6, y4a - 1)-(x4a + 6, y4a + 10), 0
LINE (x4a + 12, y4a - 1)-(x4a + 12, y4a + 10), 0
LINE (x4a + 6, y4a + 9)-(x4a + 12, y4a + 10), 0
LINE (x4a + 6, y4a)-(x4a + 12, y4a - 1), 0

END IF

'FOR I = 1 TO 100
LINE (x2, y2)-(x1, y1), INT(RND * 13) + 1
LINE (x3, y3)-(x1, y1), INT(RND * 13) + 1
LINE (x4, y4)-(x3, y3), INT(RND * 13) + 1
LINE (x4, y4)-(x2, y2), INT(RND * 13) + 1

IF s1 <= 0 THEN
s1 = 1
END IF
CIRCLE (x1, y1), s1, INT(RND * 13) + 1

IF s2 <= 0 THEN
s2 = 1
END IF
CIRCLE (x2, y2), s2, INT(RND * 13) + 1

IF s3 <= 0 THEN
s3 = 1
END IF
CIRCLE (x3, y3), s3, INT(RND * 13) + 1

IF s4 <= 0 THEN
s4 = 1
END IF
CIRCLE (x4, y4), s4, INT(RND * 13) + 1

'NEXT I

IF a$ = "x" THEN
CLS
END
END IF

IF va = 1 THEN

'Letter A
LINE (x1 + 6, y1 + 6)-(x1 + 12, y1 + 6)
LINE (x1 + 9, y1)-(x1 + 12, y1 + 6)
LINE (x1 + 9, y1 - 1)-(x1 + 6, y1 + 5)
LINE (x1 + 6, y1 + 10)-(x1 + 6, y1 + 5)
LINE (x1 + 12, y1 + 10)-(x1 + 12, y1 + 6)
'Letter B
LINE (x2 + 6, y2 - 1)-(x2 + 6, y2 + 10)
LINE (x2 + 12, y2 - 1)-(x2 + 12, y2 + 10)
LINE (x2 + 6, y2 + 9)-(x2 + 12, y2 + 10)
LINE (x2 + 6, y2)-(x2 + 12, y2 - 1)
LINE (x2 + 6, y2 + 4)-(x2 + 12, y2 + 5)
'Letter C
LINE (x3 + 6, y3)-(x3 + 6, y3 + 9)
LINE (x3 + 6, y3 + 9)-(x3 + 12, y3 + 10)
LINE (x3 + 6, y3)-(x3 + 12, y3 - 1)
'Letter D
LINE (x4 + 6, y4 - 1)-(x4 + 6, y4 + 10)
LINE (x4 + 12, y4 - 1)-(x4 + 12, y4 + 10)
LINE (x4 + 6, y4 + 9)-(x4 + 12, y4 + 10)
LINE (x4 + 6, y4)-(x4 + 12, y4 - 1)
END IF

'LINE (220, 120)-(220, 360)
'LINE (220, 120)-(440, 120)

IF a$ <> "" THEN

IF ha = 1 THEN
LOCATE 1, 1
PRINT "Point Locations"
LINE (0, 15)-(200, 15)
LOCATE 2, 1
PRINT "Point A: ("; x1; ","; y1; ") Arrow Keys"
LOCATE 3, 1
PRINT "Point B: ("; x2; ","; y2; ") WASD Keys"
LOCATE 4, 1
PRINT "Point C: ("; x3; ","; y3; ") TFGH Keys"
LOCATE 5, 1
PRINT "Point D: ("; x4; ","; y4; ") IJKL Keys"
LOCATE 7, 1
PRINT "Circle Sizes"
LINE (0, 111)-(200, 111)
LOCATE 8, 1
PRINT "Circle A: ("; s1; ") <> Keys"
LOCATE 9, 1
PRINT "Circle B: ("; s2; ") QE Keys"
LOCATE 10, 1
PRINT "Circle B: ("; s3; ") RY Keys"
LOCATE 11, 1
PRINT "Circle B: ("; s4; ") UO Keys"
LOCATE 13, 1
PRINT "Press b to set to default"
PRINT "Press v to view letters"
PRINT "Press c to hide HUD"
PRINT "Press x to exit program"
END IF

END IF

LOOP

SUB asd
LOCATE 1, 1
PRINT "Point Locations"
LINE (0, 15)-(200, 15)
LOCATE 2, 1
PRINT "Point A: ("; x1; ","; y1; ") Arrow Keys"
LOCATE 3, 1
PRINT "Point B: ("; x2; ","; y2; ") WASD Keys"
LOCATE 4, 1
PRINT "Point C: ("; x3; ","; y3; ") TFGH Keys"
LOCATE 5, 1
PRINT "Point D: ("; x4; ","; y4; ") IJKL Keys"
LOCATE 7, 1
PRINT "Circle Sizes"
LINE (0, 111)-(200, 111)
LOCATE 8, 1
PRINT "Circle A: ("; s1; ") <> Keys"
LOCATE 9, 1
PRINT "Circle B: ("; s2; ") QE Keys"
LOCATE 10, 1
PRINT "Circle B: ("; s3; ") RY Keys"
LOCATE 11, 1
PRINT "Circle B: ("; s4; ") UO Keys"
LOCATE 13, 1
PRINT "Press b to set to default"
PRINT "Press v to view letters"
PRINT "Press c to hide HUD"
PRINT "Press x to exit program"

END SUB

