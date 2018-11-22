
cart = {}

sum = 0

index= 1
loop do
  puts "Введите название товара или стоп"
  product_name = gets.chomp

  break if product_name.downcase == "стоп"

  puts "Введите количество товара"
  number = gets.to_f

  puts "Введите цену единицы товара"
  price = gets.to_i

  cart [product_name] = {price: price, number: number}
end

cart.each {|key_goods,value_hash|
  puts "Наименование товара: #{key_goods}"
  puts "Количество товара: #{value_hash[:number]}"
  puts "Цена товара: #{value_hash[:price]}"
  sum += value_hash[:number] * value_hash[:price]

}

puts "Общая сумма: #{sum}"
