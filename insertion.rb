def insertion_sort(array)
  (1..(array.length - 1)).each do |i|
    current_element = array.delete_at(i)
    pos = i
    pos -= 1 while(current_element <= array[pos - 1] && pos > 0)
    array.insert(pos, current_element)
  end
  array
end

puts insertion_sort([1, 3, 5, 3, 10, 2, 9, 1]) == [1, 1, 2, 3, 3, 5, 9, 10]
puts insertion_sort([3, -2, -10, -10, 2, 1, 0]) == [-10, -10, -2, 0, 1, 2, 3]
