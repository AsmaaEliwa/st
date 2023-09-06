# Write a function that takes an array of integers and returns their sum. Use recursion.

def sum_rec(arr)
    return arr[0] if arr.length==1
    return arr[0]+sum_rec(arr[1..-1])
end
puts  sum_rec([1,2,3,4])