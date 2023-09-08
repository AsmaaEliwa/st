def largest_contiguous_subsum(arr)
    holder=[]
    arr.each.with_index do |ele,i|
        arr.each.with_index do |num,j|
            if i<j
                holder<<   arr[i..j].sum
            end
        end
    end
    return holder.max
end
arr=[1,2,3,-4]
puts largest_contiguous_subsum(arr)