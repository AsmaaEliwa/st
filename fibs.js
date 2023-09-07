// Write a function, fibs(num) which returns the first n elements from the fibonnacci sequence, given n.
// Solve it both iteratively and recursively.

// 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
function  fibs(num){
    const holder=[0,1];
    for (let i=0 ; i<num-2 ;i++){
        holder.push(holder[holder.length-1]+holder[holder.length-2])
    }
    return holder
}
console.log(fibs(9))

function fibs(num){
    if(num===2)return [0,1]
    if (num==1)return [0]
    return fibs(num)
}