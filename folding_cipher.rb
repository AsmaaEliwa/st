# Implement the Folding Cipher. It folds the alphabet in half and uses the adjacent letter. Ie. a <=> z, b <=> y, c <=> x, m <=> n.
def folding_cipher(str)
    alphabet=Hash[("a".."z").zip(("a".."z").to_a.reverse)]
    new_str=""
    str.each_char do |char|
        if alphabet.key?(char)
        new_str+= alphabet[char]

        end
    end
    new_str
end
puts folding_cipher("ab")