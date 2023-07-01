'***********************************************
'* Brad's Pokemon project (WHY? I do not know) *
'***********************************************

DECLARE SUB SortA ()
DECLARE SUB SortB ()
DECLARE SUB SortC ()
DECLARE SUB Printer ()


'I had to shorten the column "Pokedex Number" to "Pokedex #" because it was messing up the tabs because there were to many characters within the range allowed to tab it

DIM SHARED amount
amount = 10

DIM SHARED Ename$(amount)
DIM SHARED Jname$(amount)
DIM SHARED Numb(amount)

'DIM Ename$(amount)
'DIM Jname$(amount)
'DIM Numb(amount)

DIM SHARED i AS INTEGER
DIM SHARED j AS INTEGER

Numb:
DATA 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

Ename:
DATA Bulbasaur, Ivysaur, Venusaur, Charmander, Charmeleon, Squirtle, Wartortle, Blastoise, Caterpie

Jname:
DATA Fushigidane, Fushigisou, Fushigibana, Hitokage, Lizardo, Lizardon, Zenigame, Kameil, Kamex, Caterpie

RESTORE Numb
FOR i = 1 TO amount
READ Numb(i)
NEXT i

RESTORE Ename
FOR i = 1 TO amount
READ Ename$(i)
NEXT i

RESTORE Jname
FOR i = 1 TO amount
READ Jname$(i)
NEXT i

CLS

Printer

DO

IF INKEY$ = "e" THEN 'e = English Name
CLS
SortA
Printer
END IF

IF INKEY$ = "j" THEN 'j = Japanees Name
CLS
SortB
Printer
END IF

IF INKEY$ = "p" THEN
CLS
SortC
Printer
END IF

IF INKEY$ = "x" THEN
END
END IF

LOOP


SUB Printer
CLS

PRINT
PRINT "Number", "Pokedex #", "English Name", "Japanese Name"
PRINT STRING$(80, "=")

FOR i = 1 TO amount
PRINT i, Numb(i), Ename$(i), Jname$(i)
NEXT i

PRINT STRING$(80, "=")
PRINT
PRINT "Press (P)oxedex (E)nglish Name (J)apanese E(x)it"

END SUB

'DIM Ename$(amount)
'DIM Jname$(amount)
'DIM Numb(amount)
'
SUB SortA

FOR i = (amount - 1) TO 1 STEP -1
 FOR j = 1 TO i

   IF Ename$(j) > Ename$(j + 1) THEN
    SWAP Ename$(j), Ename$(j + 1)
    SWAP Jname$(j), Jname$(j + 1)
    SWAP Numb(j), Numb(j + 1)
   END IF


 NEXT j
NEXT i

END SUB

SUB SortB

FOR i = (amount - 1) TO 1 STEP -1
 FOR j = 1 TO i

   IF Jname$(j) > Jname$(j + 1) THEN
    SWAP Ename$(j), Ename$(j + 1)
    SWAP Jname$(j), Jname$(j + 1)
    SWAP Numb(j), Numb(j + 1)
   END IF


 NEXT j
NEXT i

END SUB

SUB SortC

FOR i = (amount - 1) TO 1 STEP -1
 FOR j = 1 TO i

   IF Numb(j) > Numb(j + 1) THEN
    SWAP Ename$(j), Ename$(j + 1)
    SWAP Jname$(j), Jname$(j + 1)
    SWAP Numb(j), Numb(j + 1)
   END IF


 NEXT j
NEXT i

END SUB

