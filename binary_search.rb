def binary_search(arr,target)
    return nil if arr.empty? 
    mid_idx= arr.length/2
    mid= arr[mid_idx]
    left=arr[0...mid_idx]
    right= arr[mid_idx..-1]
    if (mid===target)
        return mid_idx
    elsif (target < mid)
      return  binary_search(left,target)
    else 
        result= binary_search(right,target)
        return result.nil? ? nil : mid_idx + result
        end
end

arr=[1,2,3,4,5,6]
puts binary_search(arr,2)
