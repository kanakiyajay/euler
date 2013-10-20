=begin
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, 
begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, 
multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, 
which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?
=end

names = IO.read('names.txt').split(',').sort!


scores = Hash.new

i = 1
("a".."z").each do |char|
    scores[char] = i
    i += 1
end


total = 0
names.each_index do |i|

    sum = 0
    names[i].downcase.split('').each do |char|
        sum += scores[char].to_i
    end

    total += sum * (i+1)
end

puts total



