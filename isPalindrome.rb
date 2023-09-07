# Write a JavaScript function that takes a string and returns true if it's a palindrome, false if it's not. Use JavaScript.
def isPalindrome(str)
    i=str.length-1
    new_str=""
    while i>=0
        new_str+=str[i]
        i-=1
    end
   if new_str == str 
    return true
   else
    return false
   end
end
puts isPalindrome("car")
puts isPalindrome("level")