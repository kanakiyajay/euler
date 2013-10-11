=begin

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?

=end

numbers = 2 ** 1000

total = 0

puts numbers.to_s

numbers.to_s.split('').each do |x|
    total += x.to_i
end

puts total