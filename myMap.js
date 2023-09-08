// Implement the Array.prototype.map function in JavaScript
function addOne(num){
    return num+1
}
Array.prototype.myMap=function(callBack){
    const newArray=[]
    for(let i=0 ; i<this.length; i++){
        newArray.push(callBack(this[i]))
    }
    return newArray
}


const arr=[1,2,3]
console.log(arr.myMap(addOne))