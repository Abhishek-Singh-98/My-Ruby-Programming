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
  stack_arr = input.downcase.chars
  #logic for key value assignment
  dictionary.each do |word|
    needle_arr = word.chars
    #Needle in a Haystack modified concept
    if (stack_arr.length >= needle_arr.length) && (stack_arr.include?(needle_arr[0]))
      stack_arr.each_with_index do |x, i|
        if needle_arr[0] == stack_arr[i]
          end_count = i + needle_arr.length - 1
          unless stack_arr[i..end_count] != needle_arr 
            count_hash["#{word}"] ||= 0
            count_hash["#{word}"] +=1
          end
        end
      end
    end
  end
  return count_hash
end

puts substrings(input, dictionary)