// # Write a method that finds all the unique substrings for a word.
function uniqe_subs(word){
    const holder=[]
    for (let i=0 ; i<word.length ; i++){
        for (let j=i ; j<word.length ; j++){
            let str=""
           for(let k=i ;k<=j ; k++){
               str+=word[k]
           }
           holder.push(str)
        }
    }
    return holder
}

console.log(uniqe_subs("word"))

// # the time complixity is  O(n^3)
