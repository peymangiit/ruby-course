def substrings(string , dictionary)
  dictionary.reduce (Hash.new(0)) do |hash, word|
    if string.include?(word) 
    hash[word] += 1
    end
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)