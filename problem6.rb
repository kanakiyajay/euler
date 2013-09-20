=begin
    
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
    
=end

sum = 0
squares = 0

(1..100).each do |x|
    sum = sum + x
    squares = squares + x**2
end

squaressum = sum**2

puts squaressum - squares