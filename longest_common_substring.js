function longest_common_substring(str1, str2){
    const srr1subs=substrings(str1)
    const srr2subs=substrings(str2)
    let max="";
    srr1subs.forEach(sub1=>{
        srr2subs.forEach(sub2=>{
        if(sub1===sub2){
            if(sub1.length> max.length){
                debugger
                max=sub1
            }
        }
        }) 
      
    })
    return max

}
function substrings(str){
    const holder=[];
    for(let i=0 ; i<str.length ; i++){
        for(let j=i; j<str.length ; j++){
            holder.push(str.slice(i,j+1))
        }
    }
    return holder
}
console.log(longest_common_substring("str1", "str2"))