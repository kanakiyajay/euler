iterate = 1
number = 0
flag = 0

while flag == 0
    number = number + iterate
    puts number
    if number >= 50
        flag = 1
    end
    iterate += 1
end