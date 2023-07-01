DIM SHARED asd
asd = 200

DIM SHARED GTZ 'Getting there (don't worry about it)

DIM SHARED wallx(asd)
DIM SHARED wally(asd)


SUB border

cborder(1,1)

END SUB

SUB cborder (yz%, xz%)

GTZ = GTZ + 1

LOCATE yz%, xz%
PRINT CHR$(219)
wally(GTZ) = yz%
wallx(GTZ) = xz%

END SUB

