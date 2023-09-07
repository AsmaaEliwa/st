# Write a function, fibs(num) which returns the first n elements from the fibonnacci sequence, given n.
# Solve it both iteratively and recursively.
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
def fibs(num)
    return [] if num==0
    return [0] if num==1
    holder=[0,1]
    (num-2).times do 
        last=holder[-1]+holder[-2]
        holder.push(last)
    end
      holder
end


puts fibs(1)