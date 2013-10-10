#Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

chars = IO.read('13.txt')

numbers = chars.split("\n")
sum = 0
numbers.each do |x|
    sum += x.to_i
end

ints = []
i = 0

puts sum