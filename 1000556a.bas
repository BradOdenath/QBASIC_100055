'SCREEN 12
CLS
' ****************
'  *BRAD ODENATH*
' ****************

P1N$ = "Joe"
P2N$ = "Bob"

W1 = 5 'Five workdays a week

M1 = 4 'Four weeks in one month
M2 = M1 * 2 'Six months

Y1 = 52 'Fifty two weeks in a year
Y2 = Y1 * 2
Y4 = Y1 * 4
Y20 = Y1 * 20

'*************** P1

FOR I = 1 TO M2
P1M2 = P1M2 + 125
NEXT I

FOR I = 1 TO Y2
P1Y2 = P1Y2 + 125
NEXT I

FOR I = 1 TO Y4
P1Y4 = P1Y4 + 125
NEXT I

FOR I = 1 TO Y20
P1Y20 = P1Y20 + 125
NEXT I


'*************** P2

FOR I = 1 TO (W1 * M2)
P2M2 = P2M2 + 3
NEXT I

FOR I = 1 TO (W1 * Y2)
P2Y2 = P2Y2 + 3
NEXT I

FOR I = 1 TO (W1 * Y4)
P2Y4 = P2Y4 + 3
NEXT I

FOR I = 1 TO (W1 * Y20)
P2Y20 = P2Y20 + 3
NEXT I



'***************

CLS
PRINT "Name: ", "2 Months", "2 Years", "4 Years", "20 Years"
PRINT
PRINT P1N$; , "$"; P1M2, "$"; P1Y2, "$"; P1Y4, "$"; P1Y20
PRINT
PRINT P2N$; , "$"; P2M2, "$"; P2Y2, "$"; P2Y4, "$"; P2Y20
PRINT

