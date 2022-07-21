def substrings(string , dictionary)
  string = string.downcase
  str_arr = string.split(" ") 
  str_arr.reduce (Hash.new(0)) do |hash, string|
    dictionary.map {|text|  hash[text] += 1 if string.include?(text)} 
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)