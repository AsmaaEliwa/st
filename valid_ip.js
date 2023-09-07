// Write a method that takes a string as input. It should return true if the input is a valid IPv4 address (ie. anything between 0.0.0.0 and 255.255.255.255 is valid).
function valid_ip(str){
const arr=str.split(".")
let valid=true
arr.forEach(element => {
    if ( !(Number(element)>=0 && Number(element)<=255)){
        valid= false
    }
});
return valid
}

console.log(valid_ip("255.255.255.255"))
console.log(valid_ip("0.2.19.55"))
console.log(valid_ip("-1.2.100.55"))

