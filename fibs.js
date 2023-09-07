// Write a function, fibs(num) which returns the first n elements from the fibonnacci sequence, given n.
// Solve it both iteratively and recursively.

0, 1, 1, 2, 3, 5, 8, 13, 21, 34
function  fibs(num){
    const holder=[0,1];
    for (let i=0 ; i<num-2 ;i++){
        holder.push(holder[holder.length-1]+holder[holder.length-2])
    }
    return holder
}
// recursively
function fibs(num){
    if(num===2)return [0,1]
    if (num===1)return [0]
    if (num===2) return [0,1]
    const prev= fibs(num-1)
    const next = prev[prev.length-1] + prev[prev.length-2]
    prev.push(next)
    return prev
}
console.log(fibs(10))
