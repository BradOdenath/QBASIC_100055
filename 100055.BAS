'PART 1 **************************************************
' TEST LAB 5  Designed by 100055
'*********************************************************

'PART 2 **************************************************
' REPLACE BELOW with a data type
'*********************************************************

arraysize = 10

TYPE pokemon
 engname AS STRING * 10
 japname AS STRING * 10
 cardnum AS INTEGER
END TYPE

DIM pm(arraysize) AS pokemon


'*********************************************************
' USE THE DATA BELOW FOR YOUR DATA
'*********************************************************

card:
DATA 6, 9, 21, 26, 50, 56, 76, 78, 89, 93, 95
english:
DATA Charizard, Spearow, Kamex,Raichu, Diglett, Mankey, Golem, Rapidash, Muk, Haunter, Onix
japanese:
DATA Lizardon, Onisuzume, Blastoise, Raichu, Digda, Mankey, Golonya, Gallop, Betbeton, Ghost, Iwark

'PART 3 ***************************************************
' CHANGE THE CODE BELOW TO REFLECT YOUR NEW DATA TYPE
'**********************************************************

RESTORE card
FOR i = 1 TO arraysize
        READ pm(i).cardnum
NEXT i

RESTORE english
FOR i = 1 TO arraysize
        READ pm(i).engname
NEXT i

RESTORE japanese
FOR i = 1 TO arraysize
        READ pm(i).japname
NEXT i

'PART 4 *************************************************
'CHANGE THE CODE BELOW TO PRINT OUT YOUR DATA
'*********************************************************
CLS
LOCATE 2, 2
 PRINT "Number", "Card Number", "English Name", "Japanese Name"
 PRINT STRING$(80, "=")
 PRINT
FOR i = 1 TO arraysize
 PRINT i, pm(i).cardnum, pm(i).engname, pm(i).japname
NEXT i
PRINT
PRINT STRING$(80, "=")
PRINT
PRINT "PRESS ANY KEY TO SORT BY ENGLISH NAME"
SLEEP
CLS

'PART 5 ******************************************************
' WRITE THE CODE THAT SORTS THE DATA BY ENGLISH NAME
'*************************************************************

FOR s = 1 TO 10
FOR i = (arraysize - 1) TO 1 STEP -1
 FOR j = 1 TO i
  IF pm(i).engname > pm(i + 1).engname THEN
   SWAP pm(i).engname, pm(i + 1).engname
   SWAP pm(i).japname, pm(i + 1).japname
   SWAP pm(i).cardnum, pm(i + 1).cardnum
  END IF
 NEXT j
NEXT i
NEXT s

'PART 6  ******************************************************
'PRINT OUT THE SORTED DATA   USE CODE FROM PART 4
'*************************************************************

LOCATE 2, 2
 PRINT "Number", "Card Number", "English Name", "Japanese Name"
 PRINT STRING$(80, "=")
 PRINT
 FOR i = 1 TO arraysize
 PRINT i, pm(i).cardnum, pm(i).engname, pm(i).japname
 NEXT i
 PRINT
 PRINT STRING$(80, "=")
 PRINT
 PRINT "PRESS ANY KEY TO SORT BY JAPANESE NAME"
SLEEP
CLS

'PART 7 ******************************************************
' WRITE THE CODE THAT SORTS THE DATA BY JAPANESE NAME
' USE CODE FROM PART 5
'*************************************************************

FOR s = 1 TO 10
FOR i = (arraysize - 1) TO 1 STEP -1
 FOR j = 1 TO i
  IF pm(i).japname > pm(i + 1).japname THEN
   SWAP pm(i).japname, pm(i + 1).japname
   SWAP pm(i).engname, pm(i + 1).engname
   SWAP pm(i).cardnum, pm(i + 1).cardnum
  END IF
 NEXT j
NEXT i
NEXT s


'PART 8 ******************************************************
' WRTIE THE CODE THAT PRINTS OUT THE SORTED DATA USE CODE AS PART 4
'*************************************************************
LOCATE 2, 2
 PRINT "Number", "Card Number", "English Name", "Japanese Name"
 PRINT STRING$(80, "=")
 PRINT
 FOR i = 1 TO arraysize
 PRINT i, pm(i).cardnum, pm(i).engname, pm(i).japname
 NEXT i
 PRINT
 PRINT STRING$(80, "=")
 PRINT "PRESS ANY KEY TO END"

