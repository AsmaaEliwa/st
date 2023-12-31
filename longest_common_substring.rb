# Write a function, longest_common_substring(str1, str2) that takes two strings and returns the longest common substring. A substring is defined as any consecutive slice of letters from another string.
def longest_common_substring(str1,str2)
    str1subs=substrings(str1)
    str2subs=substrings(str2)
    max=""
    str1subs.each do |sub1|
        str2subs.each do |sub2|
            if (sub1==sub2 && sub1.length>max.length)
                max=sub1
            end
        end
    end
max
end
def substrings(str)
    holder=[]
    str.each_char.with_index do |char,i|
        str.each_char.with_index do |char,j|
            if(i<j)
holder<< str[i...j+1]
            end
        end
    end
    holder
end

puts substrings("asmaa")
puts

puts substrings("hello")
puts
puts longest_common_substring("str1","str2")


# another solution 

def longest_common_substring(str1, str2)
    longest_substring = ""
  
    start_idx = 0
    while start_idx < str1.length
      # don't consider substrings that would be too short to beat
      # current max.
      len = longest_substring.length + 1
  
      while (start_idx + len) <= str1.length
        end_idx = start_idx + len
        substring = str1[start_idx...end_idx]
        longest_substring = substring if str2.include?(substring)
  
        len += 1
      end
  
      start_idx += 1
    end
  
    longest_substring
  end

#   dynamic imp
def make_matrix(str1, str2)
    matrix = Array.new(str1.length + 1) { Array.new(str2.length + 1, 0) }
  
    str1.chars.each_with_index do |el1, idx1|
      str2.chars.each_with_index do |el2, idx2|
        if el1 == el2
          matrix[idx1 + 1][idx2 + 1] = matrix[idx1][idx2] + 1
        else
          matrix[idx1 + 1][idx2 + 1] = 0
        end
      end
    end
  
    matrix
  end
  
  def longest_common_substring(str1, str2)
    matrix = make_matrix(str1, str2)
    greatest_substring = ""
    matrix.each_with_index do |row, idx1|
      row.each_with_index do |length, idx2|
        if length > greatest_substring.length
          greatest_substring = str2[idx2 - length...idx2]
        end
      end
    end
  
    greatest_substring
  end