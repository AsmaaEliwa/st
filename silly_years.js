// Write a function that takes a year (four digit integer) and returns an array with the 10 closest subsequent years that meet the following condition: the first two digits summed with the last two digits are equal to the middle two digits. E.g.,
function isSubsequentYear(year){
let str= year.toString()
if(Number(str[0]+str[1]) +Number(str[2]+str[3]) ==Number(str[1]+str[2])   ){
return true
}else{
    return false
}
}
// console.log(isSubsequentYear(1999))
// console.log(isSubsequentYear(1978))


function silly_years(year){
let checkYear=year-1 ;
const holder=[];
while (holder.length <10 ){
if (isSubsequentYear(checkYear)){
    holder.push(checkYear)
}
checkYear-=1
}
return holder.filter(ele=>ele>0)
}
year=1996
console.log( silly_years(year))