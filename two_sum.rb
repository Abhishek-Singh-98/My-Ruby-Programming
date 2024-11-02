def two_sum(array, target)
  hash = {}
  array.each_with_index do |num, index|
    compliment = target - num
    return [hash[compliment],index] if hash[compliment]
    hash[num] =index
  end
  nil
end

target = 10
array = [1,8,6,5,7,4,5,34]
p two_sum(array, target)