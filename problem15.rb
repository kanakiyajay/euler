=begin
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?
=end

@last = 4
@total = 1

def recurse(a,b)
    #puts "a : " + a.to_s
    #puts "b : "+ b.to_s
    if a+1 < @last
        recurse(a+1,b)
    end
    if b+1 < @last
        recurse(a,b+1)
    end
    @total += 1
end

recurse(0,0)

puts @total

# if @last = 20 .. becomes too much computational intensive