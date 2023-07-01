'****************************
'* Test LAB 5 parts 1 2 & 3 *
'* Designed by Brad Odenath *
'****************************

x = 3
y = 3
CLS

LOCATE 2, 2
PRINT STRING$(78, CHR$(219))
LOCATE 23, 2
PRINT STRING$(78, CHR$(219))
LOCATE 13, 2
PRINT STRING$(78, CHR$(219))
FOR I = 1 TO 23 - 2
LOCATE 2 + I, 2
PRINT CHR$(219)
NEXT I
FOR I = 1 TO 23 - 2
LOCATE 2 + I, 40
PRINT CHR$(219)
NEXT I
FOR I = 1 TO 23 - 2
LOCATE 2 + I, 79
PRINT CHR$(219)
NEXT I
LOCATE y, x
PRINT CHR$(1)

DO
a$ = INKEY$
IF a$ <> "" THEN

IF a$ = CHR$(0) + CHR$(75) THEN x = x - 1
IF a$ = CHR$(0) + CHR$(77) THEN x = x + 1
IF a$ = CHR$(0) + CHR$(72) THEN y = y - 1
IF a$ = CHR$(0) + CHR$(80) THEN y = y + 1

IF y < 3 THEN y = 3
IF x < 3 THEN x = 3
IF y > 12 THEN y = 12
IF x > 39 THEN x = 39


LOCATE y, x
PRINT CHR$(1)

END IF
LOOP

