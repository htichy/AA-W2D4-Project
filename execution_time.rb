# def my_min(arr)
#   min=arr.first
#
#   arr.each do |x|
#     nested_min = x
#
#     arr.each do |y|
#       next if x == y
#       nested_min = y < x ? y : x
#     end
#
#     min = nested_min < min ? nested_min : min
#   end
#
#   min
# end

def my_min(arr)
  min = arr.first

  arr.each do |el|
    min = el if el < min
  end

  min
end

# def sub_sum(array)
#   sub_arrays = []
#   array.each_with_index do |el1, i|
#     j = i
#
#     while j < array.length
#       sub_arrays << array[i..j]
#       j += 1
#     end
#   end
#
#   sub_arrays.map!{|x| x.reduce(:+)}.max
# end

def sub_sum(arr)
  largest_sum = arr.first
  current_sum = 0

  arr.each do |el|
    current_sum += el
    largest_sum = current_sum if current_sum > largest_sum
    current_sum = 0 if current_sum < 0
  end

  largest_sum
end
