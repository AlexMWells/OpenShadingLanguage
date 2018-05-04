# matrix u fromspace u tospace includes masking
echo testshade -t 1 -g 64 64 -param fromspace $1 -param tospace $2 -od uint8 -o Cout sout_getmatrix_$1_fromspace_$2_tospace.tif test_getmatrix_u_fromspace_u_tospace
testshade -t 1 -g 64 64 -param fromspace $1 -param tospace $2 -od uint8 -o Cout sout_getmatrix_$1_fromspace_$2_tospace.tif test_getmatrix_u_fromspace_u_tospace

echo testshade -t 1 --batched -g 64 64 -param fromspace $1 -param tospace $2 -od uint8 -o Cout bout_getmatrix_$1_fromspace_$2_tospace.tif test_getmatrix_u_fromspace_u_tospace
testshade -t 1 --batched -g 64 64 -param fromspace $1 -param tospace $2 -od uint8 -o Cout bout_getmatrix_$1_fromspace_$2_tospace.tif test_getmatrix_u_fromspace_u_tospace

idiff sout_getmatrix_$1_fromspace_$2_tospace.tif bout_getmatrix_$1_fromspace_$2_tospace.tif

