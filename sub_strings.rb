def substrings(word,array)
    array.include?(word)
    array.reduce(Hash.new(0)) do |result, dict_word|
    count = word.downcase.scan(dict_word).length
        result[dict_word] =+ 1 if count > 0
       result

    end

end

  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  puts substrings("below", dictionary)
  
puts substrings("Howdy partner, sit down! How's it going?", dictionary)