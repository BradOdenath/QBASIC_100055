DECLARE SUB okay ()
DECLARE SUB title ()
DECLARE SUB winner ()
DECLARE SUB game ()
DECLARE SUB delay (numTicks%)
DECLARE SUB dfield ()
DECLARE SUB border ()

'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'
'       Made by: John Swack, Sean Casey, Bradon Hunter, Vince D'Antonio
'               Some of Coding by: Brad Odenath, Anthal Arizaga
'
'++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

CLS
title

DIM SHARED x5
DIM SHARED level

SUB border
COLOR 3
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
PRINT "Catch the mouse,"
LOCATE 24, 4
PRINT "If you can."
LOCATE 24, 30
PRINT "Hold Escape to Exit."

END SUB

SUB delay (numTicks%)
FOR i% = 1 TO numTicks%
 st# = TIMER
 WHILE TIMER = st#: WEND                 'TIMER will change 1/18.2 of a second after the previous line
NEXT i%
END SUB

SUB dfield
'+++++++++++++
'  Mouse
'*************
x1 = 5
y1 = 5
x8 = x1
y8 = y1

'+++++++++++++
'    Cat
'*************
c = 20
v = 75
c1 = c
v1 = v
'++++++++++++++

COLOR 15
border

candyco = 0
'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'+  Candy                                                      +
'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
DO                                                            '+
							      '+
a$ = INKEY$                                                   '+
'RANDOMIZE TIMER                                              '+
							      '+
aid = INT(RND * 4)          'Ai direction                      +
tiem = INT(RND * 10)        'How often it changes direction    +
derd = INT(RND * 10)        'Where the candy pops up/where Mouse moves
							      '+
LOCATE 2, 4                                                   '+
PRINT "Mice Caught:"; candyco                                 '+
							      '+
IF derd = 1 THEN                                              '+
IF aid = 0 THEN                                               '+
tpx1 = x1 - tiem + INT(RND * tiem)                            '+
IF tpx1 < 5 THEN                                              '+
tpx1 = 5                                                      '+
END IF                                                        '+
LOCATE y1, tpx1                                               '+
COLOR 0                                                       '+
PRINT "*"                                                     '+
COLOR 15                                                      '+
END IF                                                        '+
IF aid = 1 THEN                                               '+
tpx1 = x1 + tiem - INT(RND * tiem)                            '+
IF tpx1 > 75 THEN                                             '+
tpx1 = 75                                                     '+
END IF                                                        '+
LOCATE y1, tpx1                                               '+
COLOR 0                                                       '+
PRINT "*"                                                     '+
COLOR 15                                                      '+
END IF                                                        '+
IF aid = 2 THEN                                               '+
tpy1 = y1 - tiem + INT(RND * tiem)                            '+
IF tpy1 < 5 THEN                                              '+
tpy1 = 5                                                      '+
END IF                                                        '+
LOCATE tpy1, x1                                               '+
COLOR 0                                                       '+
PRINT "*"                                                     '+
COLOR 15                                                      '+
END IF                                                        '+
IF aid = 3 THEN                                               '+
tpy1 = y1 + tiem - INT(RND * tiem)                            '+
IF tpy1 > 20 THEN                                             '+
tpy1 = 20                                                     '+
END IF                                                        '+
LOCATE tpy1, x1                                               '+
COLOR 0                                                       '+
PRINT "*"                                                     '+
COLOR 15                                                      '+
END IF                                                        '+
END IF                                                        '+
'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


FOR i = 1 TO tiem
delay (1)
x8 = x1
y8 = y1

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
y1 = 5
END IF

IF x1 < 5 THEN
x1 = 5
END IF

IF y1 > 20 THEN
y1 = 20
END IF

IF x1 > 75 THEN
x1 = 75
END IF

COLOR 4

IF y8 <> y1 THEN
LOCATE y8, x8
PRINT " "
END IF
IF x8 <> x1 THEN
LOCATE y8, x8
PRINT " "
END IF

LOCATE y1, x1
PRINT CHR$(2)

IF v = x1 THEN
IF c = y1 THEN
candyco = candyco + 1
END IF
END IF


'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

k$ = INKEY$
IF k$ <> "" THEN
c1 = c
v1 = v

'To go up
IF k$ = CHR$(0) + CHR$(72) THEN
c = c - 1
END IF

'To go down
IF k$ = CHR$(0) + CHR$(80) THEN
c = c + 1
END IF

'To go right
IF k$ = CHR$(0) + CHR$(75) THEN
v = v - 1
END IF

'To go left
IF k$ = CHR$(0) + CHR$(77) THEN
v = v + 1
END IF

IF c < 5 THEN
c = 5
END IF

IF v < 5 THEN
v = 5
END IF

IF c > 20 THEN
c = 20
END IF

IF v > 75 THEN
v = 75
END IF

IF c1 <> c THEN
LOCATE c1, v1
PRINT " "
END IF
IF v1 <> v THEN
LOCATE c1, v1
PRINT " "
END IF

COLOR 2
LOCATE c, v
PRINT CHR$(1)


END IF

IF candyco = (level * (x5 - 4)) THEN
winner
END
END IF
'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

COLOR 15

NEXT i

LOOP WHILE INKEY$ <> CHR$(27)

END SUB

SUB game
CLS

border
dfield

END SUB

SUB okay
CLS
x5 = 5
y = 2

level = 10

PRINT "Select game diffculty"

COLOR 15
LOCATE 5, 4
PRINT "Level 1"
LOCATE 6, 4
PRINT "Level 2"
LOCATE 7, 4
PRINT "Level 3"
LOCATE 8, 4
PRINT "Level 4"
LOCATE 9, 4
PRINT "Level 5"
LOCATE 10, 4
PRINT "Level 6"
LOCATE 11, 4
PRINT "Level 7"
LOCATE 12, 4
PRINT "Level 8"
LOCATE 13, 4
PRINT "Level 9"
LOCATE 14, 4
PRINT "Level 10"

'=============
'Cursor Movement

DO
k$ = INKEY$

IF k$ = CHR$(0) + CHR$(72) THEN
x5 = x5 - 1
END IF

IF k$ = CHR$(0) + CHR$(80) THEN
x5 = x5 + 1
END IF

'=====Cursor Placement======
	    
IF x5 < 5 THEN
x5 = 14
END IF

IF x5 > 14 THEN
x5 = 5
END IF

'========Print Statement==========

LOCATE 5, 2
  PRINT " "
LOCATE 6, 2
  PRINT " "
LOCATE 7, 2
  PRINT " "
LOCATE 8, 2
  PRINT " "
LOCATE 9, 2
  PRINT " "
LOCATE 10, 2
  PRINT " "
LOCATE 11, 2
  PRINT " "
LOCATE 12, 2
  PRINT " "
LOCATE 13, 2
  PRINT " "
LOCATE 14, 2
  PRINT " "

LOCATE x5, y
  COLOR 2
  PRINT CHR$(26)
  COLOR 15

IF k$ = CHR$(13) THEN
  IF x5 = 5 THEN
    level = level * 1
    game
    END
  END IF
  IF x5 = 6 THEN
    level = level * 2
    game
    END
  END IF
  IF x5 = 7 THEN
	level = level * 3
	game
    END
  END IF
  IF x5 = 8 THEN
    level = level * 4
    game
    END
  END IF
  IF x5 = 9 THEN
    level = level * 5
    game
    END
  END IF
  IF x5 = 10 THEN
	level = level * 6
	game
    END
  END IF
  IF x5 = 11 THEN
    level = level * 7
    game
    END
  END IF
  IF x5 = 12 THEN
    level = level * 8
    game
    END
  END IF
  IF x5 = 13 THEN
     level = level * 9
    game
    END
  END IF
  IF x5 = 14 THEN
    level = level * 10
    game
    END
  END IF
END IF

LOCATE 15, 30
PRINT "You have to catch the mouse"; level * (x5 - 4); "times.   "

LOOP WHILE k$ <> CHR$(27)
END SUB

SUB title

CLS

x = 11
y = 32

'+++++++++++++++++++++++++++++
' Mouse
SLEEP 1
COLOR 4
LOCATE 1, 61
PRINT STRING$(8, CHR$(219))
LOCATE 2, 60
PRINT STRING$(10, CHR$(219))
LOCATE 3, 60
PRINT STRING$(2, CHR$(219)); " "; STRING$(4, CHR$(219)); " "; STRING$(2, CHR$(219))
LOCATE 4, 60
PRINT STRING$(10, CHR$(219))
LOCATE 5, 60
PRINT STRING$(10, CHR$(219))
LOCATE 6, 60
PRINT STRING$(2, CHR$(219)); " "; STRING$(4, CHR$(219)); " "; STRING$(2, CHR$(219))
LOCATE 7, 60
PRINT STRING$(3, CHR$(219)); STRING$(4, " "); STRING$(3, CHR$(219))
LOCATE 8, 60
PRINT STRING$(10, CHR$(219))
LOCATE 9, 60
PRINT " "; STRING$(8, CHR$(219))

LOCATE 12, 63
PRINT "Mouse"
COLOR 15
'++++++++++++++++++++++++++++++
COLOR 2
LOCATE 1, 12
PRINT STRING$(8, CHR$(219))
LOCATE 2, 11
PRINT CHR$(219); STRING$(8, " "); CHR$(219)
LOCATE 3, 11
PRINT CHR$(219); " "; CHR$(219); "    "; CHR$(219); " "; CHR$(219)
LOCATE 4, 11
PRINT CHR$(219); STRING$(8, " "); CHR$(219)
LOCATE 5, 11
PRINT CHR$(219); STRING$(8, " "); CHR$(219)
LOCATE 6, 11
PRINT CHR$(219); " "; STRING$(6, CHR$(219)); " "; CHR$(219)
LOCATE 7, 11
PRINT CHR$(219); STRING$(3, " "); STRING$(2, CHR$(219)); STRING$(3, " "); CHR$(219)
LOCATE 8, 11
PRINT CHR$(219); STRING$(8, " "); CHR$(219)
LOCATE 9, 11
PRINT " "; STRING$(8, CHR$(219))

LOCATE 12, 14
PRINT "Cat"

COLOR 15

SLEEP 1
'+++++++++++++++++++++
' Text
'     Title Box
COLOR 4
LOCATE 1, 29
PRINT CHR$(201); STRING$(19, CHR$(203)); CHR$(187)

FOR i = 2 TO 4
LOCATE i, 29
PRINT CHR$(204); STRING$(19, CHR$(206)); CHR$(185)
NEXT i

LOCATE 5, 29
PRINT CHR$(200); STRING$(19, CHR$(202)); CHR$(188)

SLEEP 1

COLOR 2
LOCATE 3, 33
PRINT " CAT & MOUSE "

LOCATE 7, 30
PRINT CHR$(201); STRING$(16, CHR$(205)); CHR$(187)


LOCATE 8, 30
PRINT CHR$(186)
LOCATE 8, 47
PRINT CHR$(186)

LOCATE 9, 30
PRINT CHR$(204)
LOCATE 9, 31
PRINT STRING$(16, CHR$(205))
LOCATE 9, 47
PRINT CHR$(185)

FOR i = 10 TO 14
LOCATE i, 30
PRINT CHR$(186)
LOCATE i, 47
PRINT CHR$(186)
NEXT i

LOCATE 15, 30
PRINT CHR$(200); STRING$(16, CHR$(205)); CHR$(188)


COLOR 6
LOCATE 8, 37
PRINT "MENU"
COLOR 15
LOCATE 11, 33
PRINT "Level Select"
LOCATE 13, 37
PRINT "EXIT"

SLEEP 1

COLOR 2
LOCATE 17, 1
PRINT STRING$(80, CHR$(219))
SLEEP 1

COLOR 3
LOCATE 19, 1
PRINT STRING$(80, CHR$(219))
SLEEP 1

COLOR 4
LOCATE 21, 1
PRINT STRING$(80, CHR$(219))
SLEEP 1

COLOR 5
LOCATE 23, 1
PRINT STRING$(80, CHR$(219))
SLEEP 1

COLOR 6
LOCATE 25, 1
PRINT STRING$(80, CHR$(219))

COLOR 15

'=============
'Cursor Movement

DO
k$ = INKEY$

IF k$ = CHR$(0) + CHR$(72) THEN
x = x - 2
END IF

IF k$ = CHR$(0) + CHR$(80) THEN
x = x + 2
END IF

'=====Cursor Placement======
	    

IF x1 <> x THEN
LOCATE 11, 32
PRINT " "
END IF

IF y1 <> y THEN
LOCATE 13, 32
PRINT " "
END IF


IF x < 11 THEN
x = 13
END IF

IF x > 13 THEN
x = 11
END IF

'========Print Statement==========

LOCATE 11, 32
  PRINT " "

LOCATE 13, 32
  PRINT " "

LOCATE x, y
  COLOR 2
  PRINT CHR$(26)
  COLOR 15


IF k$ = CHR$(13) THEN
  IF x = 11 THEN
    okay
    END
  END IF
END IF

IF k$ = CHR$(13) THEN
  IF x = 13 THEN
    END
  END IF
END IF


LOOP WHILE k$ <> CHR$(27)
'+++++++++++++++++++++++++++++++++

END SUB

SUB winner

CLS

COLOR 15
SLEEP
LOCATE 10, 35
PRINT "YOU WON!"
LOCATE 11, 25
PRINT "Your prize is in the mail"
SLEEP
COLOR 15
LOCATE 15, 25
PRINT "Press Return/Enter to escape"
LOCATE 16, 28
INPUT "Title screen is T     ", a$

IF a$ = "t" THEN
title
END IF

IF a$ = "T" THEN
title
END IF
END

END SUB

