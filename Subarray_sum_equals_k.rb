def subarray_sum(nums, k)
  prefix_sum = 0
  count = 0
  hash = {0 => 1}

  nums.each do |num|
    prefix_sum += num
    count += hash[prefix_sum - k] if hash[prefix_sum - k]
    hash[prefix_sum] = hash.fetch(prefix_sum, 0) + 1
  end
  count
end

nums = [10,12,17,33,20,11,18,28,16,15,12,19]
k = 29
p subarray_sum(nums, k)