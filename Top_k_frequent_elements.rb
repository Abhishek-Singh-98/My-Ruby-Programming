# Problem Statement: Top K Frequent Elements
# Given an array of integers, return the k most frequent elements in the array.
# Example:
# arr = [1, 1, 1, 2, 2, 3] 
# k = 2

# Output:
# [1, 2]

# Explanation: The integer 1 appears 3 times, 2 appears 2 times, and 3 appears 1 time.
#              Since we need the 2 most frequent elements, the output is [1, 2].

def top_k_frequent_elements(arr, k)
  hash = {}
  arr.each do |key|
    if hash.empty? || !hash.keys.include?(key)
      hash[key] = arr.count(key)
    end
  end
  key_arr = hash.keys
  key_arr_len = key_arr.length
  for i in 0...key_arr_len
    for j in i+1...key_arr_len
      if hash[key_arr[i]] < hash[key_arr[j]]
        key_arr[i], key_arr[j] = key_arr[j], key_arr[i]
      end
    end
  end
  return key_arr.first(k)
end

#more optimized solution to this problem

def top_k_frequent_elements2(arr, k)
  frequency_hash = Hash.new(0)
  arr.each{|key| frequency_hash[key] += 1}
  #below code will sort the keys in increasing order of negative valies count 
  # (i.e. -6 < -4, so key with count 6 will automatically becomes first.)
  sorted_freq_arr = frequency_hash.keys.sort_by{|keys| -frequency_hash[keys]}
  return sorted_freq_arr.first(k)
end

array = gets.chomp.split(",").map(&:to_i)
k = gets.chomp.to_i
p top_k_frequent_elements(array, k)
p top_k_frequent_elements2(array, k)