dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(phrase, dictionary)

  my_hash = Hash.new(0)

  phrase.downcase.split(" ").each {|n| dictionary.each {|m| if n.index(m) then my_hash[m] += 1 end}}
 
  return my_hash

end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)