# Write a function that takes an array of integers and returns their sum. Use recursion.

def sum_rec(arr)
    return arr[0] if arr.length==1
    return arr[0]+sum_rec(arr[1..-1])
end

def sum_rec(arr)
  sum=0
  arr.each do |ele|
    sum+=ele
  end
  sum
end

def sum_rec(nums)
    return 0 if nums.empty?
    nums[0] + sum_rec(nums.drop(1))
  end
puts  sum_rec([1,2,3,4])