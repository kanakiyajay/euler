=begin


A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a**2 + b**2 = c**2

For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
    
=end

#Create an array of squares

flag = 0
arr = []
x = 1

while flag == 0
    square = x**2
    arr.push(square)
    if x > 900
        flag = 1
    end
    x+=1
end

arr.each do |i|
    arr.each do |j|
        if i !=j
            sum = i + j
            if arr.member?(sum)                
                if Math.sqrt(i)+Math.sqrt(j)+Math.sqrt(sum) == 1000
                    puts Math.sqrt(i) * Math.sqrt(j) * Math.sqrt(sum)
                    break
                end                
            end
        end
    end
end

#a.member?(6)
