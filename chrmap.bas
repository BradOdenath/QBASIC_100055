PRINT (255 / 5)
CLS

DIM I AS INTEGER
DIM J AS INTEGER

c = 0

FOR I = 1 TO 24

at$ = CHR$(c)
n1t = c
c = c + 1
bt$ = CHR$(c)
c = c + 1
n2t = c
ct$ = CHR$(c)
c = c + 1
n3t = c
dt$ = CHR$(c)
c = c + 1
n4t = c
et$ = CHR$(c)
c = c + 1
n5t = c
PRINT n1t; at$, n2t; bt$, n3t; ct$, n4t; dt$, n5t; et$

NEXT I

