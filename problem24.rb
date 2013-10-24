=begin
  
A permutation is an ordered arrangement of objects. 
For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. 
If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. 
The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
=end

arr = (0..9).to_a

def factorial(number)
    prod = 1
    (2..number).each do |v|
       prod = prod *  v
    end
    return prod
end

answer = []
count = 1000000

(3..9).reverse_each do |n|
    
    f = factorial(n)
    q = count / f
    puts q*f

    count = count % f
    answer.push(arr[q])
    arr.delete_at(q)
end
#last 3 numbers are found out using pen and paper
#puts answer




