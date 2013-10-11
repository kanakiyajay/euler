euler
=====

My solutions in ruby to Project Euler

11 ## Greatest product of four adjacent numbers

Take a matrix grid of 20x20
2 nested loops for :
take products of horizontal cells
take products of vertical cells
take products of diagonal-up cells
take products of diagonal-down cells
find the highest

12 ## Triangle Number

function to find the total number of divisors.
Here is the algo
24 = 2^3 * 3^1
n =  (3+1) * (1 + 1) = 8
Loop through the triangles to find the number whose n > 500

13 ## Large Sum

Loop through numbers to find the large sum.
Fortunately ruby handles all the Big Numbers

14 ## Collatz Sequence

one function to find the next number
another to find the number of total sequence of a given number
A loop from million to 2 to find the highest sequence

15 ## Lattice Paths

Computational Intensive
Used a simple recursive node function but was too computational intensive
used the method provided by jasonbhill of matrix[i][j] = matrix[i-1][j] + matrix[i][j-1] to find the last row and last column

16 ## 2 ^ 1000

easy because ruby can handle Big numbers

17 ## Number letter counts