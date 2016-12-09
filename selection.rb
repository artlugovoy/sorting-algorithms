def selection_sort(array)
  (0..(array.length - 1)).each do |i|
    min_id = i
    ((i+1)..(array.length - 1)).each { |j| min_id = j if array[min_id] > array[j] }
    array[i], array[min_id] = array[min_id], array[i] if min_id != i
  end
  array
end

puts selection_sort([1, 3, 5, 3, 10, 2, 9, 1]) == [1, 1, 2, 3, 3, 5, 9, 10]
puts selection_sort([3, -2, -10, -10, 2, 1, 0]) == [-10, -10, -2, 0, 1, 2, 3]

