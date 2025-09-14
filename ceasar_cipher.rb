def caesar_cipher(str,number)
# get index of numbers in the alphabet
alphabet='abcdefghijklmnopqrstuvwxyz'
text= ''
str.each_char do |char|
   if alphabet.include?(char.downcase)
      index_in_alpha=alphabet.index(char.downcase)
      new_index= (index_in_alpha + number) % 26
      new_char= alphabet[new_index]
     text += (char == char.upcase) ? new_char.upcase : new_char

    else 
       text += char
    end
end
# return result as a string
return text

end

encrypted_text= caesar_cipher("What a string!", 5)
puts encrypted_text