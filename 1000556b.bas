'SCREEN 12
CLS
' ****************
'  *BRAD ODENATH*
' ****************

P1N$ = "Joe"
P2N$ = "Bob"

'*****************


P1WS = 1
P2WS = 1
w = 0

DO
FOR I = 1 TO 5

P1WS = P1WS + (w ^ 10)

d = d + 1

CLS
LOCATE 1, 1
PRINT "Name:", w; "Weeks To overblow error"
LOCATE 3, 1
PRINT P1N$; , P1WS
LOCATE 5, 1
PRINT P2N$; , P1WS
ON ERROR GOTO Blank:
NEXT I
w = w + 1

LOOP

Blank:
LOCATE 7, 1
PRINT "They would have to work"; w; "weeks."

END

