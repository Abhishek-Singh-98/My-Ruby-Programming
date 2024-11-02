# TC - O(N^2) because of i & j re-evaluation.
def num_subarray_product_less_than_k(nums, k)
  return 0 if k<=1
  prefix_prod = 1
  count = 0
  len = nums.length - 1
  i = 0
  j = 0
  while i <= len
      prefix_prod *= nums[i]
      if prefix_prod < k
          count += 1
          if i == len
              j +=1
              i = j
              prefix_prod = 1
          else
              i +=1
          end
      else
          j +=1
          i = j
          prefix_prod = 1
      end
  end
  return count
end

# Optimized solution
def num_subarray_product_less_than_k2(nums, k)
    return 0 if k<=1
    prefix_prod = 1
    count = 0
    j = 0
    nums.each_with_index do |num,i|
        prefix_prod *= num
        while prefix_prod >= k && j <=i
            prefix_prod /= nums[j]
            j += 1
        end
        count += i - j + 1
    end
    return count
end