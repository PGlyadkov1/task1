
puts "Введите a"
a = Float(gets.chomp)

puts "Введите b"
b = Float(gets.chomp)

puts "Введите c"
c = Float(gets.chomp)

d = b**2 - 4*a*c

if d >= 0
	if d > 0
		x_1 = (-b + Math.sqrt(d) ) / (2*a)
		x_2 = (-b - Math.sqrt(d) ) / (2*a)

		puts "Дискриминант равен #{d}"
		puts "Корни равны #{x_1} и #{x_2}"

	elsif d = 0
		puts "Дискриминант равен #{d}"
		puts "Корень равен #{-1 * b / (2*a)}"

	end
		

else
	puts "Дискриминант равен #{d}"
	puts "Корней нет"
end