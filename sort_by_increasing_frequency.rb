#leetcode question no. 1636
#Given an array of integers nums, sort the array in increasing order based
#on the frequency of the values. If multiple values have the same frequency,
#sort them in decreasing order.

#Return the sorted array.

# Example 1:
# Input: nums = [1,1,2,2,2,3]
# Output: [3,1,1,2,2,2]
# Explanation: '3' has a frequency of 1, '1' has a frequency of 2, and '2' has a frequency of 3.

# Example 2:
# Input: nums = [2,3,1,3,2]
# Output: [1,3,3,2,2]
# Explanation: '2' and '3' both have a frequency of 2, so they are sorted in decreasing order.

# Example 3:
# Input: nums = [-1,1,-6,4,5,-6,1,4,1]
# Output: [5,-1,4,4,-6,-6,1,1,1]


nums = gets.chomp.split
def frequency_sort(nums)
    count_hash = Hash.new
    nums.each do |key|
        if count_hash.empty? || !count_hash.keys.include?(key)
            count_hash["#{key}"] = nums.count(key)
        end
    end
    key_arr = count_hash.keys
    key_arr_len = count_hash.keys.length - 1
    for i in 0...key_arr_len
        for j in (i+1)..key_arr_len
            if count_hash[key_arr[i]] > count_hash[key_arr[j]]
                key_arr[i], key_arr[j] = key_arr[j], key_arr[i]
            elsif count_hash[key_arr[i]] < count_hash[key_arr[j]]
                true
            else
                unless key_arr[i].to_i > key_arr[j].to_i
                    key_arr[i], key_arr[j] = key_arr[j], key_arr[i]
                end
            end
        end
    end
    final_arr = []
    key_arr.each do |key|
      count_hash[key].times do
          final_arr << key.to_i
      end
    end
    p count_hash
    p key_arr
    return final_arr
end

p frequency_sort(nums)

