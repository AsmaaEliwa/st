# Write a function that takes a message and an increment amount and outputs the same letters shifted by that amount in the alphabet. Assume lowercase and no punctuation. Preserve spaces.
require "byebug"
def caesar_cipher(str,num)
    alphabet="abcdefghijklmnopqrstuvwxyz"
    newstr=""
    str.each_char do |char|
        if char== " "
            newstr+=char
        end
        alphabet.each_char.with_index do |ele,i|
        if ele== char
                # debugger
                newstr+= alphabet[(i+num)%26]
            end
        end
    end
    newstr
end
str="i love u"
num=3
puts caesar_cipher(str,num)