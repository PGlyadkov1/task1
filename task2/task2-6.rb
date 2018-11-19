
hash = Hash.new

sum = 0

loop do
  puts "Введите название товара или стоп"
  input = gets.chomp

  break if input == "стоп"

  puts "Введите количество товара"
  num = gets.to_f

  puts "Введите цену единицы товара"
  price = gets.to_i

  hash_n = Hash.new
  hash_n = {price => num}

  hash[input] = hash_n
end

hash.each {|key_goods,value_hash|
  puts "Наименование товара: #{key_goods}"
  value_hash.each {|key,value| 
    puts "Количество товара: #{value}"
    puts "Цена товара: #{key}"
    sum += key*value
  }
}

puts "Общая сумма: #{sum}"
