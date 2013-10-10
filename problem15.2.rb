=begin
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

Solved using http://code.jasonbhill.com/python/project-euler-problem-15/

=end

grid = []

def getnumber(i,j,grid)
    if i==0 || j ==0
        return 1        
    elsif i == j
        return grid[i][j-1] * 2
    else
        return grid[i-1][j] + grid[i][j-1]
    end    
end

(0..20).each do |i|
    grid.push([])
    (0..20).each do |j| 
        grid[i].push(getnumber(i,j,grid))
    end
end

puts grid[20][20]