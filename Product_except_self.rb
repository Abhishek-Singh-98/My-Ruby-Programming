#Leetcode: 238
#time complexity is high
def product_except_self(nums)
  output = []
  len = nums.length
  nums.each_with_index do |val,index|
      if index == 0
          product = nums[1...len].inject(1){|result,val| result*val}
          output << product
      else
          nums[0], nums[index] = val, nums[0]
          product = nums[1...len].inject(1){|result,val| result*val}
          output << product
      end
  end
  return output
end
#here time complexity is O(n) more optimized than before.
def product_except_self2(nums)
  output = []
  len = nums.length
  zero_count = nums.count(0)
  if zero_count != nil and zero_count == 1
    dup_num = nums.dup
    dup_num.delete(0)
    p dup_num
    high_prod = dup_num.inject(1){|result,val| result*val}
  end
  nums.each_with_index do |val,index|
      if index == 0
          product = nums[1...len].inject(1){|result,val| result*val}
          output << product
      else
          nums[0], nums[index] = val, nums[0]
          div = val !=0 ? (output.last)/val : 0
          if val==0 && zero_count == 1
           product = high_prod
          elsif val == 0 && zero_count>1
          product = 0
          else
          product = div * nums[index]
          end
          output << product
      end
  end
  return output
end
nums = [1,2,3,0,4]
p product_except_self(nums)
p product_except_self2(nums)