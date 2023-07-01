CLS
q = 200
DIM Array(q)
DIM i AS INTEGER
DIM j AS INTEGER
count = 0

FOR i = 1 TO q
 Array(i) = INT(RND * (q * 10) + 1)
 PRINT "Value for Array "; i; " is "; Array(i)
NEXT i

FOR i = (q - 1) TO 1 STEP -1
 FOR j = 1 TO i
  IF Array(j) < Array(j + 1) THEN
   SWAP Array(j), Array(j + 1)
  count = count + 1
  END IF
 NEXT j
NEXT i

PRINT
PRINT "Ordering numbers from greatest to least, please wait . . ."
PRINT
SLEEP 5

FOR i = 1 TO q
 PRINT "Value for sorted Array "; i; " is "; Array(i)
NEXT i

PRINT "This proccess took "; count; " steps."

