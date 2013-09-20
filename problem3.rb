=begin
    
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
    
=end

# generate terms

number = 600851475143
x = number / 2

def isprime(number)
    bool = true ;
    (2..number/2).each do |counter|
        if number%counter == 0
            bool = false 
            break    
        end 
    end
    return bool
end

(1..x).each do |counter|
    if number % counter == 0
        number = number / counter
        if isprime(number)
          puts number
          break  
        end
    end
end