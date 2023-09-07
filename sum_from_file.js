// Write a method that reads in a file of integers, one per line, and sums them. Skip the line if it begins with a "#"
const fs = require('fs');
function sum_from_file(filename){
    let sum=0
    const data=fs
    .readFileSync(filename, 'utf-8').split('\n')
    data.map(ele=> {
        if(ele[0] !== "#"){
            const number=Number(ele)
            sum+=number
        }
       

    })
    return sum
}

file = "./file.txt"
console.log( sum_from_file(file))
