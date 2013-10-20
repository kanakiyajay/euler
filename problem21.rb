=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

#d(n) == sumofdivisors(n)

def sumofdivisors(number)
    total = 0

    (1..number/2).each do |i|
        if number % i == 0
            total += i
        end    
    end

    return total
end

a = []

total = 0

(1..10000).each do |num|
    if !a.member? num
        sum = sumofdivisors(num)
        if num == sumofdivisors(sum)
            if num != sum
                total += sum
                total += num
            end
            a.push(sum)       
        end
    end
end

puts total