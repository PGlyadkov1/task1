
hash = Hash.new

("a".."z").to_a.each_with_index { |item, index|
  hash[item] = index
}

hash2 = hash.reject { |k, v| (k != "a") && (k != "e") && (k != "y") && (k != "u") && (k != "i") && (k != "o") }

puts hash2
