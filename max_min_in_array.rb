def max_min(nums)
  return nums[0], nums[0] if nums.size == 1
hash = {'max'=> nil, 'min' => nil}
  nums.each do |key|
    if hash['max'].nil?
      hash['max'] = key
      next
    elsif hash['min'].nil?
      hash['max'] >= key ? (hash['min'] = key) : (hash['min'], hash['max'] = hash['max'], key)
    else 
      if key > hash['max']
        hash['max'] = key
      elsif key < hash['min']
        hash['min'] = key
      else
        next
      end
    end
  end
  return hash['min'], hash['max']
end

def max_min2(nums)
  return nums[0], nums[0] if nums.size == 1
  max, min = nums[0], nums[0]
  nums.each do |num|
    if num > max
      max = num
    elsif num < min
      min = num
    else
      next
    end
  end
  return min, max
end
nums = [1,1,1,1]

p max_min2(nums)