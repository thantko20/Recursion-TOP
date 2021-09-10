# return the array if the array size is less than 2 since there is nothing to be sorted
# sort the left half of the array
# sort the right half of the array
# merge the arrays
# repeat until the original half arrays are merged

# The code is heavily referenced from Top-down implementation of Merge Sort wikipedia
# https://en.wikipedia.org/wiki/Merge_sort
def merge_sort(arr)
  return arr if arr.size < 2

  left, right = merge_sort(arr.slice(0..(arr.size/2)-1)), merge_sort(arr.slice((arr.size/2)..arr.size))

  result = []
  result.push(left.first < right.first ? left.shift : right.shift) while !left.empty? && !right.empty?

  result.push(left) unless left.empty?
  result.push(right) unless right.empty?
  result.flatten
end

p merge_sort([5, 4, 3, 2, 1])
p merge_sort(['Pineapple', 'Orange', 'Peach', 'Watermelon', 'Apple'])