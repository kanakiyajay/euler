=begin
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
=end
@words = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen","twenty"]
@tens = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]

@countofwords = []

@countoftens = []

@words.each do |word|
    @countofwords.push(word.length)
end

@tens.each do |word|
    @countoftens.push(word.length)
end

def belowhundred(number)
    count = 0
    if number <= 20
        count += @countofwords[number]
    else
        count += @countoftens[number/10]
        if number % 10 != 0 #tens
            count += @countofwords[number%10]
        end
    end
    return count
end

def countletters(number)
    total = 0

    if number < 100
        total += belowhundred(number)
    else #hundreds
        total += @countofwords[number / 100]
        total += "hundred".length

        if number % 100 > 0
            total += "and".length
            total += belowhundred(number%100)
        end
    end
    return total
end

sum = 0

(1..999).each do |number|
    sum += countletters(number)
end

sum += "onethousand".length

puts sum