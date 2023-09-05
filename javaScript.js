function digital_root(num){
    if (num<10)return num;
    const str=num.toString();
    const digits = []
    for(let i=0; i<str.length ; i++){
        const digit=parseInt(str[i])
        digits.push(digit)
    }
    let sum=0
    let result=0
    digits.forEach(num => {
        sum+=Number(num)
    });
    if (sum<10){
        return sum
    }else{
        const digits=[]
        const sumStr=sum.toString()
        for(let i=0; i<sumStr.length ; i++){
            const digit=parseInt(sumStr[i])
            digits.push(digit)
        }
        digits.forEach(num => {
            result+=Number(num)
        });
return result
    }

}

// digital_root(3)

function digital_root(num){
    if (num<10)return num;
    const str=num.toString()
    const digits=[];
    for(let i=0; i<str.length; i++){
        const digit= parseInt(str[i])
        digits.push(digit)
    }
    const result = parseInt(digits.slice(1).join(''), 10)
   const sum=  parseInt(digits[0])+ digital_root(result)
   if (sum < 10) {
        return sum;
    } else {
        return digital_root(sum);
    }


}


function digital_root(num) {
    while (num >= 10) {
        const str = num.toString();
        const digits = str.split('').map(Number);
        num = digits.reduce((acc, digit) => acc + digit, 0);
    }
    return num;
}