=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def nextnumber(number)
    nextnum = 1
    if number % 2 == 0 #even
        nextnum = number / 2
    else #odd
        nextnum = 3 * number + 1
    end
    return nextnum
end

def collatzitems(number)
    i = 1
    while number != 1
        number = nextnumber(number)
        i += 1
    end
    return i
end

million = 1000000
flag = 0
highest = 10
answer = 10

(2..million).reverse_each do |x|
   items = collatzitems(x)
   if items > highest
    puts highest
    highest = items
    answer = x
   end
end

puts answer