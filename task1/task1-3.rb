

puts "Введите длину 1-ой стороны треугольника"
a = gets.chomp.to_f

puts "Введите длину 2-ой стороны треугольника"
b = gets.chomp.to_f

puts "Введите длину 3-ей стороны треугольника"
c = gets.chomp.to_f

sides = [a,b,c].sort

right_triangle = sides[2]**2 == sides[0]**2 + sides[1]**2

equal_sides = ( a == b) && (a == c)

if right_triangle && sides[0] == sides[1]
  puts "Это прямоугольный равнобедренный треугольник"
elsif right_triangle
  puts "Это прямоугольный треугольник"
elsif equal_sides
  puts "Это равносторонний треугольник"
else
  puts "Это не прямоугольный и не равнобедренный треугольник"
end
