# Write a method that takes a string as input. It should return true if the input is a valid IPv4 address (ie. anything between 0.0.0.0 and 255.255.255.255 is valid).
def valid_ip(str)
    valid=true
    arr=str.split(".")
    arr.each do |ele|
        if(!(ele.to_i >=0 && ele.to_i <=255 && arr.length==4))
            valid=false
        end
    end 
    valid
end


puts valid_ip("255.3.0")
puts valid_ip("255.3.0.-1")
puts valid_ip("255.3.0.1")

