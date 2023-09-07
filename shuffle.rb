# You are given an array and a random number generator. Shuffle the array.
def shuffle(arr)
    array=arr.dup
    arrLength=arr.length 
    i=arrLength-1
    while i>=0
        randomIndex=rand(0...arrLength)
        array[i],array[randomIndex]=array[randomIndex],array[i]
        i-=1
    end
    array
end

 myArray = [1, 2, 3, 4, 5];
 shuffledArray = shuffle(myArray);
puts (shuffledArray);