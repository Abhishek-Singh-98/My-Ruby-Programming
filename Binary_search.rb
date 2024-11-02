def binary_search(array, target)
  left, right = 0, (array.length - 1)

  while left <= right
    mid = left + (right - left)/ 2
    return mid if array[mid] == target
    if array[mid] > target
      right = mid - 1
    else 
      left = mid + 1
    end
  end
  return -1
end

array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,22,25,28]
target = 30
p binary_search(array,target)