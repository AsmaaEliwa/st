// Write a method, digital_root(num). It should sum the digits of a positive integer. If it is greater than or equal to 10, sum the digits of the resulting number. Keep repeating until there is only one digit in the result, called the "digital root". Do not use string conversion within your method.

function digital_root(num){
    if (num<10)return num;
    const str=num.toString();
    const digits = []
    for(let i=0; i<str.length ; i++){
        const digit=parseInt(str[i])
        digits.push(digit) 
    } //digits=[1,2,3]
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
// digital_root(123)
// console.log(digital_root(123))

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


const digital_root = (num) => {     //O(n^2),
    if(num < 10) {
        return num
    }
    while (num >= 10 )  {   //123
        let sum = 0         //0
        while (num > 0){    //123 //12 //1
            let rooot = (num % 10)  //3  // 2  1%10=1
            sum += rooot   // sum=3  5  6
            num = Math.floor(num / 10)  //num=12  ,1 ,0
        }
        num = sum
    }
    return num
}

// console.log(digital_root(123)); 