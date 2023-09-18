# Given an array of integers, return all pairs that sum up to a specified value k. List the pairs in [min, max] order.
def pair_sum(arr,k)
    holder=[]
    arr.each.with_index do |num,i|
        arr.each.with_index do |n,j|
            if j>i && num+n == k 
                if num<n && !holder.include?([num,n])
                holder<< [num,n]
                elsif !holder.include?([n,num]) 
                holder<< [n,num]
                end
            end

        end
    end
holder
end


puts pair_sum([1, 2, -1], 0)          # => #<Set: {[-1, 1]}>
puts pair_sum([1, 2, -1, -1], 0)      # => #<Set: {[-1, 1]}>
# puts pair_sum([1, 2, -1, -1, -2], 0)  # => #<Set: {[-1, 1], [-2, 2]}>
# puts pair_sum([1, 2, -1, -1, -2], 1)  # => #<Set: {[-1, 2]}>
puts pair_sum([1, 2, -1, -1, -2], -1) # => #<Set: {[-2, 1]}>