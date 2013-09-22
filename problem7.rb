=begin
    
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
    
=end

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

number = 10001
x = 2
counter = 0
flag = 1

while flag != 0
    if isprime(x)
        counter += 1
    end
    if counter == number
        puts x
        flag = 0        
    end
    x += 1
end

#104743