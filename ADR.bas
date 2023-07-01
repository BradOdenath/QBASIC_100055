Names:
DATA Fred, Joe, Jack, Sue
Values:
DATA 10, 24, 31, 15, 67, 34, 87, 92, 14
' Start with the DATA statement after "Values:"
RESTORE Values
FOR I = 0 TO 8
READ A(I)
NEXT I
' Start with the DATA statement after "Names:"
RESTORE Names
FOR I = 0 TO 8
READ N$(I)
NEXT I

