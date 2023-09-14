# Write a function that takes a year (four digit integer) and returns an array with the 10 closest subsequent years that meet the following condition: the first two digits summed with the last two digits are equal to the middle two digits. E.g.,
# 1978 => 19 + 78 = 97
# 2307 => 23 + 07 = 30

def is_subsequent_year(year)
    str = year.to_s
   return true  if str[0..1].to_i + str[2..3].to_i == str[1..2].to_i 
   return false
end

# puts is_subsequent_year(1999)
# puts is_subsequent_year(1978)

def  silly_years(year)
    holder=[]
    checkYear=year-1
    while  holder.length<10
        if (is_subsequent_year(checkYear))
            holder<<checkYear
        end
        checkYear-=1

    end
    holder.select{|year| year>0}
end


year=1996
puts silly_years(year)