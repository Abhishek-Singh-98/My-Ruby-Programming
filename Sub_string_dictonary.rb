#Implement a method #substrings that takes a word as the first argument
#and then an array of valid substrings (your dictionary) as the second argument.
#It should return a hash listing each substring (case insensitive) that was
#found in the original string and how many times it was found.

#Example: dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

input = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(input, dictionary)
  count_hash = Hash.new
  # input_arr = input.split.join.chars
  #logic for key value assignment
  dictionary.each do |word|
    puts word
    if input.include?(word)
      count_hash["#{word}"] ||= 0
      count_hash["#{word}"] = input.count(word)
    end
  end
  return count_hash
end

puts substrings(input, dictionary)