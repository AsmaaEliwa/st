# Write a method, digital_root(num). It should sum the digits of a positive integer. If it is greater than or equal to 10, sum the digits of the resulting number. Keep repeating until there is only one digit in the result, called the "digital root". Do not use string conversion within your method.
require "byebug"
def digital_root(num)
   if num < 10 
    return num 
   end
    arr=num.to_s.chars.map(&:to_i)
    # debugger
   result= arr[0] + digital_root(arr[1..-1].join('').to_i) 
   if result >= 10
    digital_root(result)
    else
    return result
    end
end


def digital_root(num)
    return num if num<10
    while num>10
        sum=0
        while num>0
            sum+= num%10
            num= (num/10).to_i
        end
        num=sum
    end
 num
end


puts digital_root(49)
puts digital_root(123)