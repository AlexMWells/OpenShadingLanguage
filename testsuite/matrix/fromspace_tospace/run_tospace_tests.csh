# matrix v fromspace u tospace includes masking
testshade -t 1 -g 64 64 -param tospace $1 -od uint8 -o Cout sout_matrix_v_fromspace_$1_tospace.tif test_matrix_v_fromspace_u_tospace
testshade -t 1 --batched -g 64 64 -param tospace $1 -od uint8 -o Cout bout_matrix_v_fromspace_$1_tospace.tif test_matrix_v_fromspace_u_tospace
idiff sout_matrix_v_fromspace_$1_tospace.tif bout_matrix_v_fromspace_$1_tospace.tif

