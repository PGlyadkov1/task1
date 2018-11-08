
puts "Введите a"
a = gets.chomp.to_f

puts "Введите b"
b = gets.chomp.to_f

puts "Введите c"
c = gets.chomp.to_f

d = b**2 - 4.0 * a * c

puts "Дискриминант равен #{d}"

d_sqrt = Math.sqrt(d)

if d.positive?
  x_1 = ( - b + d_sqrt ) / (2.0 * a)
  x_2 = ( - b - d_sqrt ) / (2.0 * a)
  puts "Корни равны #{x_1} и #{x_2}"

elsif d.zero?
  x = - b / (2.0 * a)
  puts "Корень равен #{x}"

else
  puts "Корней нет"
end
