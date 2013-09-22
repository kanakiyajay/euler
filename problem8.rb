#https://projecteuler.net/problem=8
#Find the greatest product of five consecutive digits in the 1000-digit number.

#File.open('8.txt')
#puts contents

chars = IO.read("8.txt")

splitted = chars.split('')

answer = 1
n = 1

splitted.each do |c|
    if n > 5
        prod = splitted[n].to_i * splitted[n-1].to_i * splitted[n-2].to_i * splitted[n-3].to_i * splitted[n-4].to_i
        if prod > answer
            answer = prod
        end
    end
    n += 1
end

puts answer

#40824