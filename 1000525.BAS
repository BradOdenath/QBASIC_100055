'+++++++++++++++++++++++++++++++++++++++
' This program was created by  Brad
'+++++++++++++++++++++++++++++++++++++++

q = 10

DIM firstname$(q)
DIM lastname$(q)
DIM datestart$(q)
DIM dateend$(q)

DIM i AS INTEGER
DIM j AS INTEGER


firstname:
 DATA george,john,thomas,james,james,john,andrew,martin,william,john
lastname:
 DATA washington,adams,jefferson,madison,monroe,adams,jackson,van buren,harrison,tyler
datestart:
 DATA 1789,1797,1801,1809,1817,1825,1829,1837,1841,1841
dateend:
 DATA 1797,1801,1809,1817,1825,1829,1837,1841,1841,1845


CLS

RESTORE firstname
 FOR i = 1 TO q
  READ firstname$(i)
 NEXT i

RESTORE lastname
 FOR i = 1 TO q
  READ lastname$(i)
 NEXT i

RESTORE datestart
 FOR i = 1 TO q
  READ datestart$(i)
 NEXT i


RESTORE dateend
 FOR i = 1 TO q
  READ dateend$(i)
 NEXT i


PRINT "Order", "Firstname", "Lastname", "Years in Office"
PRINT STRING$(80, "=")

 FOR i = 1 TO 10
PRINT i, firstname$(i), lastname$(i), datestart$(i); "-"; dateend$(i)
 NEXT i


PRINT
PRINT "Press enter to sort by first name"
SLEEP
CLS

FOR i = (q - 1) TO 1 STEP -1
 FOR j = 1 TO i
  IF firstname$(j) > firstname$(j + 1) THEN
   SWAP firstname$(j), firstname$(j + 1)
   SWAP lastname$(j), lastname$(j + 1)
   SWAP startdate$(j), startdate$(j + 1)
   SWAP dateend$(j), dateend$(j + 1)
  END IF
 NEXT j
NEXT i


PRINT "Order", "Firstname", "Lastname", "Years in Office"
PRINT STRING$(80, "=")

 FOR i = 1 TO 10
PRINT i, firstname$(i), lastname$(i), datestart$(i); "-"; dateend$(i)
 NEXT i


