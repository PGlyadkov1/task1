
vowels_hash = {}

vowels = %w[a e i o u y]
('a'..'z').each_with_index do |letter, index|
  vowels_hash[letter] = index + 1 if vowels.include?(letter)
end

puts vowels_hash
