=begin

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,

Find the sum of the digits in the number 100!
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

=end

product = 1

(2..100).each do |number|
    product = product * number    
end

sum = 0

product.to_s.split('').each do |k|
    sum += k.to_i
end

puts sum