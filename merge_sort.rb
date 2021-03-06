def merge_sort(array)
  return array if array.length < 2
  half = array.length/2
  left_half = merge_sort(array.slice(0, half))
  right_half = merge_sort(array.slice(half, array.length - half))
  i = 0
  j = 0
  sorted_array = []
  until j == right_half.length and i == left_half.length
    if i >= left_half.length
      sorted_array << right_half[j]
      j += 1
    elsif j >= right_half.length
      sorted_array << left_half[i]
      i += 1
    elsif left_half[i] < right_half[j]
      sorted_array << left_half[i]
      i += 1
    else
      sorted_array << right_half[j]
      j += 1
    end
  end
  return sorted_array
end

array = []
1000000.times do 
  array << rand(1000000)
end
puts "Sorting..."
puts merge_sort(array).to_s