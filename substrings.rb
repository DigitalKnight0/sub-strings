def substrings(phrase , dictionary)
    arr = phrase.split(" ")
    hash = {}

    dictionary.each do |x|
        hash[x] = arr.count {|a| a.downcase.include?(x.downcase)}
    end
    hash = hash.select {|k , v| v != 0}
    puts hash
    return hash
end

 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 substrings("Howdy partner, sit down! How's it going?", dictionary)

