// Write a function that takes an array of integers and returns their sum. Use recursion.

function sum_rec(arr){
    if(arr.length===1)return arr[0]
    if(arr.length===0)return 0
    return arr[0]+sum_rec(arr.slice(1))
}

console.log(sum_rec([1,2,3,4]))