DECLARE SUB askname ()
DECLARE FUNCTION printdice! (num!, x!, y!)
CLS

REM askname

CLS

DO
 num = INT(RND * 6 + 1)
 row = INT(RND * 23 + 1)
 column = INT(RND * 79 + 1)

temp = printdice(num, row, column)

LOOP WHILE INKEY$ = ""


SUB askname


INPUT " would you like to play a game of chance? (y/n)", response$



IF response$ = "y" THEN
  INPUT "what is your name", name$
  PRINT "hello "; name$
ELSE
 PRINT "have a nice day"
 END
END IF


END SUB

FUNCTION printdice (num, x, y)


LOCATE x, y
PRINT CHR$(1); CHR$(2)



END FUNCTION

