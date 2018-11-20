
days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts 'Введите год'
year = gets.to_i

is_leap_year = year % 4 == 0 && year % 100 != 0 || year % 400 == 0

puts 'Введите месяц, (число от 1 до 12):'
month = gets.to_i
puts 'Введите число, (число от 1 до 31):'
day = gets.to_i

days[1] += 1 if is_leap_year

condition = month.between?(1, 12) && day.between?(1, days[month])

#с исключениями код короче

raise 'Неверный месяц или число' unless condition

raise 'Неверное число дней в феврале' if month == 2 && day >= 30

raise 'Неверное число дней в невисокосный год' if month == 2 && day == 29 && !is_leap_year

sum = day
sum += days.take(month-1).sum

print "Порядковый номер даты: #{sum}"
