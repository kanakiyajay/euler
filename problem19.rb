=begin
    
You are given the following information, but you may prefer to do some research for yourself.

    1 Jan 1900 was a Monday.
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end
@thirties = [4,6,9,11]

def isleapyear?(year)
    if year % 400 == 0
        return true
    elsif year % 100 == 0
        return false
    elsif year % 4 == 0
        return true
    else
        return false
    end
end

def isSunday?(days)
    if days % 7 == 0
        return true   
    else
        return false
    end
end

def numberofdays(d,m,y)
    totaldays = 0

    (1900..(y-1)).each do |year|
        if isleapyear?(year)
            totaldays += 366
        else
            totaldays += 365
        end
    end   

    (1..(m-1)).each do |month|
        if month == 2
            if isleapyear?(y)
                totaldays += 29
            else
                totaldays += 28
            end
        end
        if @thirties.member?(month)
            totaldays += 30
        else
            totaldays += 31
        end
    end

    totaldays += (d-1)

    return totaldays
end

#the main loop
count = 0

(1901...2000).each do |year|
    (1..12).each do |month|
        totaldays = numberofdays(1,month,year)
        if isSunday?(totaldays)
            count += 1
        end
    end
end

puts(count)