# Write a method that reads in a file of integers, one per line, and sums them. Skip the line if it begins with a "#"
def sum_from_file(filename)
    nums = File
      .readlines(filename)
      .select { |line| line[0] != "#" }
      .map(&:to_i)
  
    nums.inject(:+)
end

file = "./file.txt"
puts sum_from_file(file)
