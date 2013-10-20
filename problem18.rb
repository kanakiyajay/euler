
=begin
By starting at the top of the triangle below and moving to adjacent numbers on the row below,
the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle below:

75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route.
=end

chars = IO.read('18.txt')

numbergrid = chars.split("\n")

i =0
numbergrid.each do |row|
    numbergrid[i] = row.split(' ').map { |e| e.to_i  }
    i+=1
end

zeronegrid = numbergrid.map {|e| e.map {|c| 0} }

max = numbergrid.flatten.max

numbergrid.each_index do |i|
    numbergrid[i].each_index do |j|
        #(i,j) are the co-ordinates
        if numbergrid[i][j] == max
            zeronegrid[i][j] = 1
        end
    end
end

def ispossible?
    bool = true
    zeronegrid.each_index do |i|
        #First make sure that all the rows at least contain a 1
        if !zeronegrid[i].member? 1
            bool = false
        end
    end
end

@stack = []
@ways = []

zeronegrid.each_index do |i|
    #Start from the top
    zeronegrid[i].each_index do |j|
        if zeronegrid[i][j] == 1
            @stack.push([i,j])
        end
    end
end

puts @stack