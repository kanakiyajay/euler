=begin

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. 
For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum 
of two abundant numbers is 24. 

By mathematical analysis,it can be shown that 
all integers greater than 28123  can be written as the sum of two abundant numbers. 

However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that 
cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=end

#First find all the abundant numbers

limit = 28123

def sumofdivisors(number)
    total = 0

    (1..number/2).each do |i|
        if number % i == 0
            total += i
        end    
    end

    return total
end

abundants = []

(1..limit).each do |num|
    if sumofdivisors(num) > num #sum exceeds the number
        abundants.push(num)
    end
end

def allsumcombinations(arr)
    # Take an array of numbers as the input and return all the possible sum combinations
    uniqarray = arr.uniq.sort
    temparray = []
    uniqarray.each_index do |i|
        uniqarray.each_index do |j|
                temparray.push(uniqarray[i]+uniqarray[j])
        end
    end
    return temparray.uniq
end

sumofabundants = allsumcombinations(abundants)

temp = (1..limit).to_a - sumofabundants

total = 0

temp.each do |num|
    total += num    
end

puts total

