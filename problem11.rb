=begin
    
What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?
    
=end

chars = IO.read('11.txt')
grid = chars.split("\n")
i = 0
grid.each do |row|
    grid[i] = row.split(' ')
    j = 0
    grid[i].each do |x|
        grid[i][j] = x.to_i
        j += 1
    end
    i += 1
end


highest = 48477312
product = 1
# horizontal and vertical

j = 0
grid.each do |row|
    k = 3
    while k < row.length
        #horizontal
        #product = grid[j][k-3] * grid[j][k-2] * grid[j][k-1] * grid[j][k]
        if product > highest
            highest = product
        end

        #vertical
        product = grid[k-3][j] * grid[k-2][j] * grid[k-1][j] * grid[k][j]
        if product > highest
            highest = product
        end

        #diagonal south-east
        if (j+3) < row.length
            product = grid[j][k-3]  * grid[j+1][k-2] * grid[j+2][k-1] * grid[j+3][k]
            if product > highest
                highest = product
            end
        end

        #diagonal north-east
        if (j-3) >= 0
            product = grid[j][k-3]  * grid[j-1][k-2] * grid[j-2][k-1] * grid[j-3][k]
            if product > highest
                highest = product
            end
        end
        
        k += 1
    end
    
    j += 1
end

puts highest