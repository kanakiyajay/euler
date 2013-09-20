=begin
    


2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

    
=end

# Lowest Common Multiple of numbers from 1 to 20

def gcd(n1,n2)
    g = 1
    n1 > n2 ? small = n2 : small = n1
    (1..small).each do |x|
        if n1 % x ==0 and n2 % x == 0
            g = x # Highest Common Factor
        end
    end
    return g
end

def lcm(n1,n2)   
    return n1 * n2 / gcd(n1,n2)
end

answer = 1

(1..20).each do |counter|
    answer = lcm(answer,counter)
end

puts answer