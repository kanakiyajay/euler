=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
    
=end
@primes = [2,3,5,7]
@lastdigits = ["1","3","7","9"]
def isprime?(number)
    bool = true
    if @lastdigits.member?(number.to_s.split('').last())
        @primes.each do |counter|
            if number%counter == 0
                bool = false 
                break
            end 
        end
        end    
    return bool
end

sum = 2+3+5+7

(10..2000000).each do |i|
    if isprime?(i)
        @primes.push(i)
        sum += i
    end
end

puts sum