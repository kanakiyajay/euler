euler
=====

My solutions in ruby to Project Euler

10 ## Summation of primes

Loop through 0 to two million
Function isprime? will determine whether that number id prime.
Find the sum.Too much computation complexity

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

0 - 20 numbers are unique 
seperated the digits and multiplied and added

18 ## Maximum Path Sum 1

Have found the algorithm.
1.Create a new tree with all values equal to zero of the same dimensions
2.Then find the coordinates of max number in the given tree
3.The element will be 1 of the new tree matching that dimensions.
4.Iterate steps 1 to 3 till you find a way to reach bottom from top.
5.The findtheway of will be done for binary tree
6.There will be only 1 way from top to bottom.That will be the max sum path.

Plan to use http://rubytree.rubyforge.org/rdoc/

19 ## Counting Sundays

Find the number of days from a date to a given date using simple calculations.
Then of that number % 7 == 0 , its a sunday.
A final loop and count from 1/1/1901 to 31/12/2000

20 ## Factorial Digit Sum

First loop to calcualte the product of the numbers and the second loop to calculate the sum of the individual
digits of the product

21 ## Amicable Numbers