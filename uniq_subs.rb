# Write a method that finds all the unique substrings for a word.



def uniq_subs(word)
subs=[]
    word.each_char.with_index do |char,i|
        word.each_char.with_index do |ele,j|
            if i<j
                subs<<word[i..j]
            end
        end
    end
    subs
end

puts uniq_subs("word")

# the time complixity is  O(n^2)