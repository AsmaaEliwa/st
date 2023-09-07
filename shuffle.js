// You are given an array and a random number generator. Shuffle the array.
function shuffle(arr){
    let array=[...arr]
const arrLength=arr.length 
for (let i = arrLength - 1; i > 0; i--) {
    // Generate a random index between 0 and i (inclusive)
    const randomIndex = Math.floor(Math.random() * (i + 1));

    // Swap array elements at randomIndex and i
    [array[i], array[randomIndex]] = [array[randomIndex], array[i]];
  }
  return array
}

const myArray = [1, 2, 3, 4, 5];
const shuffledArray = shuffle(myArray);
console.log(shuffledArray);