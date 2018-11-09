
puts "Как вас зовут?"
username = gets.chomp.capitalize

puts "Каков ваш рост?"
user_height = gets.to_i

ideal_weight = user_height - 110

if ideal_weight >= 0
  puts "#{username}, ваш идеальный вес #{ideal_weight}"
else
  puts "Ваш вес уже оптимальный"
end
