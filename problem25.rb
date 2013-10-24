=begin
    
The Fibonacci sequence is defined by the recurrence relation:

    Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.

The 12th term, F12, is the first term to contain three digits.

What is the first term in the Fibonacci sequence to contain 1000 digits?

=end

arr = [1,1]
flag = true
n = 2

while flag
    number = arr[n-2] + arr[n-1]
    arr.push(number)
    n+=1
    if n==12
        flag = false
    end
end

puts arr.last