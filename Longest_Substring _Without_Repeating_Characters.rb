#Longest Substring Without Repeating Characters

def length_of_longest_substring(s)
  return 1 if s.size == 1
  return 0 if s.empty?
  len = s.size
  max_length = 0 
  i = 0
  hash = {}
  for j in 0...len
      key = s[j]
      if !hash[key].nil?
          i = hash[key] + 1 if hash[key] + 1 > i
      end

      hash[key] = j
      subs_string_length = j - i + 1
      max_length = subs_string_length > max_length ? subs_string_length : max_length
  end
  return max_length
end

s = 'abcabcbb'
p length_of_longest_substring(s)