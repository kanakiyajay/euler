=begin
https://github.com/zengin/project-euler-solutions/blob/master/results.txt
http://projecteuler.net/problem=1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

addition = 0

(1..999).each do |counter|
    if counter % 3 == 0 or counter % 5 == 0
            addition += counter
    end
end

#234168
#233168
puts addition