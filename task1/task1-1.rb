
puts "Как вас зовут?"
username = gets.chomp

puts "Каков ваш рост?"
user_height = Integer(gets.chomp)

ideal_weight = user_height - 110

if ideal_weight >= 0
	puts "#{username}, ваш идеальный вес #{ideal_weight}"
else
	puts "Ваш вес уже оптимальный"
end
