puts "Введите a"
a = gets.to_f

puts "Введите b"
b = gets.to_f

puts "Введите c"
c = gets.to_f

d = b**2 - 4.0 * a * c

puts "Дискриминант равен #{d}"

if d.positive?
  d_sqrt = Math.sqrt(d)
  x_1 = (-b + d_sqrt) / (2.0 * a)
  x_2 = (-b - d_sqrt) / (2.0 * a)
  puts "Корни равны #{x_1} и #{x_2}"

elsif d.zero?
  x = - b / (2.0 * a)
  puts "Корень равен #{x}"

else
  puts "Корней нет"
end
