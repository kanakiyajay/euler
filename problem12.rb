=begin

The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

     1: 1
     3: 1,3
     6: 1,2,3,6
    10: 1,2,5,10
    15: 1,3,5,15
    21: 1,3,7,21
    28: 1,2,4,7,14,28

We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?

refer -> http://www.wikihow.com/Determine-the-Number-of-Divisors-of-an-Integer
number of divisors of 24

24 = 2^3 * 3^1
n =  (3+1) * (1 + 1) = 8

=end
def numberofdivisors(number)
    prod = 1
    divisors = finddivisors(number)
    divisors.uniq.each do |x|
        prod = prod * (divisors.count(x) + 1)
    end
    return prod
end

def finddivisors(number)
    divisors = []
    x = 2
    while number != 1
        if number % x == 0
            divisors.push(x)
            number = number / x
        else
            x += 1
        end
    end
    return divisors
end

triangles = []
flag = 0
iterate = 1
number = 0

while flag == 0
    number += iterate
    n = numberofdivisors(number)
    if n >= 500
        puts number
        flag = 1
    end
    iterate += 1
end