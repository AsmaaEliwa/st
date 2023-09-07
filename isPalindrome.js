// Write a JavaScript function that takes a string and returns true if it's a palindrome, false if it's not. Use JavaScript.
function isPalindrome(str){
    let newStr=""
    const arr=str.split("")
    let i=arr.length-1 
    while (i>=0 ){
        newStr+= arr[i]
        i-=1
    }
    return str===newStr
}

console.log(isPalindrome("str"))
console.log(isPalindrome("level"))
