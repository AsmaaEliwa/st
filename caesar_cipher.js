function caesar_cipher(str,num){
    const alphabet="abcdefghijklmnopqrstuvwxyz"
    let newstr=""
    const arr=str.split("")
arr.forEach(element => {
    if (element===" "){
        newstr+=" "
    }else {
        for(let i=0 ; i<alphabet.length ; i++){
            if (alphabet[i]=== element){
                newstr+=alphabet[(i+num)%26]
            }
        }
    }
  
});
return newstr;

}
console.log(caesar_cipher("i love food",3))