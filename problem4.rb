=begin
  
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
    
=end

largest = 999 * 999 

def ispalindrome(n)
    bool = true ;
    str = n.to_s
    len = str.length
    (0..len/2).each do |c|
        if str[c] != str[len-c-1]
            bool=false
        end
    end
    return bool
end

def highestfactor(number)
    x = number / 2
    (0..x).each do |counter|
        factor = x - counter
        if number%factor == 0
              return factor
        end 
    end
    return 1
end

def ismultipliyable(number)
    bool = false   
    (1..500).each do |counter|
        factor = 1000 - counter
        if number%factor == 0 and factor.to_s.length == 3
            if (number/factor).to_s.length == 3
                bool = true 
                break
            end
        end
    end
    return bool
end

(0..largest).each do |counter|
    number = largest - counter
    if ispalindrome(number)
        #997799 is the largest palindrome
        if ismultipliyable(number)
            puts number
            break
        end
    end
end