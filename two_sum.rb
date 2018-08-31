require 'byebug'
def brute_force?(array, target) #time complexity is O(n^2)
  array.each_with_index do |el1, idx|
    array[idx + 1...array.length].each do |el2|
      return true if el1 + el2 == target
    end
  end

  false
end

def sorting?(array, target)
  s_array = array.sort

  s_array.each_with_index do |el, i|
    result = s_array.bsearch_index { |el2| (target - el) <=> el2 }

    if result && result != i
      return true
    end
  end

  false
end



def hash_map?(array, target)
  el_hash = {}

  array.each_with_index do |el, idx|
    if el_hash[target - el]
      return true
    else
      el_hash[el] = idx
    end
  end

  false
end

arr = [0, 1, 5, 7]
p hash_map?(arr, 6) # => should be true
p hash_map?(arr, 10) # => should be false
