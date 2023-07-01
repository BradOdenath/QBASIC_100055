DECLARE SUB playgame ()
DECLARE SUB rules ()
DECLARE SUB rolldice ()
SCREEN 12


PRINT "Do you want to play a game of dice?"
CLS
INPUT "Do you want to play a game of dice? <y/n> ", ans0$

IF ans0$ = "y" THEN
 PRINT
 INPUT "What is your name? ", ans1$
 PRINT

 IF ans1$ = "chuck norris" THEN
  PRINT "You won."
  SLEEP 5
  END
 ELSE
  PRINT "Glad to meet you, "; ans1$; "! Let's get started."
  SLEEP 3
  rules
  playgame
 END IF

ELSE

 PRINT
 PRINT "Okay then, have a nice day."
 END

END IF

SUB playgame
hnumb = INT(RND * 6 + 1)
INPUT "Please pick a number from 1 to 6: ", hnumb

DO
cnumb = INT(RND * 6 + 1)
LOOP WHILE hnumb = cnumb

PRINT "Your number: "; hnumb; ""
PRINT "My number: "; cnumb; ""
PRINT

SLEEP 2

locater = 12


DO

FOR I = 1 TO 6 STEP 1

RANDOMIZE TIMER
roll = INT(RND * 6 + 1)


SELECT CASE roll

CASE 1
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "*     *"
LOCATE 3 + locater, I * 10
PRINT "*  1  *"
LOCATE 4 + locater, I * 10
PRINT "*     *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 2
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 2   *"
LOCATE 3 + locater, I * 10
PRINT "*     *"
LOCATE 4 + locater, I * 10
PRINT "*   2 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 3
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 3   *"
LOCATE 3 + locater, I * 10
PRINT "*  3  *"
LOCATE 4 + locater, I * 10
PRINT "*   3 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 4
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 4 4 *"
LOCATE 3 + locater, I * 10
PRINT "*     *"
LOCATE 4 + locater, I * 10
PRINT "* 4 4 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 5
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 5 5 *"
LOCATE 3 + locater, I * 10
PRINT "*  5  *"
LOCATE 4 + locater, I * 10
PRINT "* 5 5 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 6
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 6 6 *"
LOCATE 3 + locater, I * 10
PRINT "* 6 6 *"
LOCATE 4 + locater, I * 10
PRINT "* 6 6 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

END SELECT

SELECT CASE I
CASE 1
AI = roll
CASE 2
BI = roll
CASE 3
CI = roll
CASE 4
DI = roll
CASE 5
EI = roll
CASE 6
FI = roll
END SELECT
PRINT AI; BI; CI; DI; EI; FI
NEXT I

LOOP WHILE INKEY$ = ""

hscor = 0
cscor = 0

IF AI = cnumb THEN
cscor = cscor + 1
END IF
IF BI = cnumb THEN
cscor = cscor + 1
END IF
IF CI = cnumb THEN
cscor = cscor + 1
END IF
IF DI = cnumb THEN
cscor = cscor + 1
END IF
IF EI = cnumb THEN
cscor = cscor + 1
END IF
IF FI = cnumb THEN
cscor = cscor + 1
END IF

IF AI = hnumb THEN
cscor = hscor + 1
END IF
IF BI = hnumb THEN
cscor = hscor + 1
END IF
IF CI = hnumb THEN
cscor = hscor + 1
END IF
IF DI = hnumb THEN
cscor = hscor + 1
END IF
IF EI = hnumb THEN
cscor = hscor + 1
END IF
IF FI = hnumb THEN
cscor = hscor + 1
END IF

PRINT AI; BI; CI; DI; EI; FI

PRINT "Your score: ", hscor
PRINT "Comp score: ", cscor

IF hscor = cscor THEN
PRINT "IT'S A TIE!"
END IF
IF hscor < cscor THEN
PRINT "COMPUTER WINS!"
END IF
IF hscor > cscor THEN
PRINT "HUMAN WINS!"
END IF

END SUB

SUB rolldice

locater = 12

SHARED AI
SHARED BI
SHARED CI
SHARED DI
SHARED EI
SHARED FI

DO

FOR I = 1 TO 6 STEP 1

RANDOMIZE TIMER
roll = INT(RND * 6 + 1)


SELECT CASE roll

CASE 1
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "*     *"
LOCATE 3 + locater, I * 10
PRINT "*  1  *"
LOCATE 4 + locater, I * 10
PRINT "*     *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 2
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 2   *"
LOCATE 3 + locater, I * 10
PRINT "*     *"
LOCATE 4 + locater, I * 10
PRINT "*   2 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 3
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 3   *"
LOCATE 3 + locater, I * 10
PRINT "*  3  *"
LOCATE 4 + locater, I * 10
PRINT "*   3 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 4
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 4 4 *"
LOCATE 3 + locater, I * 10
PRINT "*     *"
LOCATE 4 + locater, I * 10
PRINT "* 4 4 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 5
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 5 5 *"
LOCATE 3 + locater, I * 10
PRINT "*  5  *"
LOCATE 4 + locater, I * 10
PRINT "* 5 5 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

CASE 6
LOCATE 1 + locater, I * 10
PRINT "*******"
LOCATE 2 + locater, I * 10
PRINT "* 6 6 *"
LOCATE 3 + locater, I * 10
PRINT "* 6 6 *"
LOCATE 4 + locater, I * 10
PRINT "* 6 6 *"
LOCATE 5 + locater, I * 10
PRINT "*******"

END SELECT

SELECT CASE I
CASE 1
AI = roll
CASE 2
BI = roll
CASE 3
CI = roll
CASE 4
DI = roll
CASE 5
EI = roll
CASE 6
FI = roll
END SELECT
PRINT AI; BI; CI; DI; EI; FI
NEXT I

LOOP WHILE INKEY$ = ""

END SUB

SUB rules
CLS
PRINT
PRINT "   *************************************************************************"
PRINT "   * We will play a game of dice. I will pick a number from 1 to 6. Then   *"
PRINT "   * you will pick a number from 1 to 6. We can't pick the same number.    *"
PRINT "   * Then we roll five dice. If your number matches any of the dice rolled *"
PRINT "   * you get one point for each dice matched. After 10 rolls the winner is *"
PRINT "   * the person with the highest number matched.                           *"
PRINT "   *************************************************************************"
SLEEP 3
END SUB

