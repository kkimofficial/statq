/ *
/ * Constructs identity matrix of order x
/ * See https://en.wikipedia.org/wiki/Identity_matrix
/ *
/ * @param {int} x: order of identity matrix
/ * @returns {float list}: identity matrix of order x
/ * @example: .statq.matrix.identity 3
.statq.matrix.identity:{
    .statq.matrix.diagonal x#1f
 };

/ *
/ * Constructs diagonal matrix with x as diagonal entries
/ * See https://en.wikipedia.org/wiki/Diagonal_matrix
/ *
/ * @param {int|float} x: diagonal elements
/ * @returns {int|float list}: diagonal matrix of order of size of x
/ * @example: .statq.matrix.diagonal 1 2 3
.statq.matrix.diagonal:{
    @[x * 0;;:;]'[til count x;x]
 };
