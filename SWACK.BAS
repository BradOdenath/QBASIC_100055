DECLARE SUB fields ()
DECLARE SUB moves ()

'++++++++++++++++++++++++++
'+ Lab 5 John Swack      ++
'++++++++++++++++++++++++++

CLS

        fields
        moves


SUB fields

COLOR 2, 0

LOCATE 4, 4
PRINT STRING$(73, CHR$(219))

FOR i = 5 TO 21
LOCATE i, 4
PRINT CHR$(219)
LOCATE i, 76
PRINT CHR$(219)
NEXT i

LOCATE 21, 4
PRINT STRING$(72, CHR$(219))

COLOR 7, 0

END SUB

SUB moves

PRINT "To exit program press 'E'."

x = 5
y = 5
x2 = x
y2 = y
x3 = x2
y3 = y2


DO
k$ = INKEY$
IF k$ <> "" THEN
x3 = x2
y3 = y2
x2 = x
y2 = y


'++++++++++++++++++++++++++++++++

'To go up
IF k$ = CHR$(0) + CHR$(72) THEN
x = x - 1
END IF

'+++++++++++++++++++++++++++++++++

'To go down
IF k$ = CHR$(0) + CHR$(80) THEN
x = x + 1
END IF
'+++++++++++++++++++++++++++++++++

'To go right
IF k$ = CHR$(0) + CHR$(75) THEN
y = y - 1
END IF

'+++++++++++++++++++++++++++++++++

'To go left
IF k$ = CHR$(0) + CHR$(77) THEN
y = y + 1
END IF
'+++++++++++++++++++++++++++++++++++++
IF x < 5 THEN
x = 5
END IF

IF y < 5 THEN
y = 5
END IF

IF x > 20 THEN
x = 20
END IF

IF y > 75 THEN
y = 75
END IF

'++++++++++++++++++++++++++++++++++++++++
'Person moving

IF y3 <> y2 THEN
LOCATE x3, y3
PRINT " "
END IF
IF x3 <> x2 THEN
LOCATE x3, y3
PRINT " "
END IF

IF y2 <> y THEN
LOCATE x2, y2
PRINT "C"
END IF
IF x2 <> x THEN
LOCATE x2, y2
PRINT "C"
END IF

LOCATE x, y
PRINT CHR$(1)

END IF
LOOP WHILE k$ <> "e"

END SUB

