#Build a method #bubble_sort that takes an array and returns a sorted array.
#It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
#
# Example:  > bubble_sort([4,3,78,2,0,2])
#           => [0,2,2,3,4,78]

input = gets.chomp.split.map(&:to_i)
def bubble_sort(input)
  len = input.length
  for i in 0...len
    n = i+1
    for j in n...len
      if input[i] > input[j]
        input[i], input[j] = input[j], input[i]
      end
    end
  end
  return input
end

p bubble_sort(input)