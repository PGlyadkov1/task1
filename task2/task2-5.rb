
months = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31}

puts "Введите год"
year = gets.to_i

is_leap_year = ((year % 4 == 0) && !(year % 100 == 0)) || ((year % 4 == 0) && (year % 400 == 0))

puts "Введите месяц, (число от 1 до 12):"
month = gets.to_i
puts "Введите число, (число от 1 до 31):"
day = gets.to_i

condition = (month >= 1) && (month <= 12) && (day >= 1) && (day <= 31)

raise "Неверный месяц или число" unless condition

raise "Неверное число дней в феврале" if month == 2 && day >= 30

raise "Неверное число дней в невисокосный год" if month == 2 && day == 29 && !is_leap_year

#считаем до месяц-1 прибавляем соответствующие цифры из хэша. 
#Потом если високосный год и месяц больше 2 нужно добавить еще один день
sum = day
months[0]=0
0.upto(month - 1) { |i| sum += months[i]}

if is_leap_year && month > 2
  sum += 1
end

print "Порядковый номер даты: #{sum}"
