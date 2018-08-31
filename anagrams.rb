def phase_one(string1, string2)
  perms = string1.chars.permutation.to_a

  perms.each do |perm|
    return true if perm.join == string2
  end

  false
end

def phase_two(string1, string2)
  string1.chars.each do |char|
    idx = string2.index(char)
    return false unless idx
    string2[idx] = ""
  end

  return true if string2 == ""
  false
end


def phase_three(string1, string2)
  string1.chars.sort == string2.chars.sort
end



def phase_four(str1,str2)
  char_hash = Hash.new
  char2_hash = Hash.new

  str1.chars.each do |x|
    if char_hash[x]
      char_hash[x] += 1
    else
      char_hash[x] = 1
    end
  end

  str2.chars.each do |x|
    if char2_hash[x]
      char2_hash[x] += 1
    else
      char2_hash[x] = 1
    end
  end

  return true if char_hash == char2_hash
  false
end
