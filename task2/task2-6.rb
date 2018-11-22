
cart = {}

sum = 0

loop do
  puts "Введите название товара или стоп"
  product_name = gets.chomp

  break if product_name.downcase == "стоп"

  puts "Введите количество товара"
  number = gets.to_f

  puts "Введите цену единицы товара"
  price = gets.to_i

  cart[product_name] = {price: price, number: number}
end

cart.each do |product_name,product_info|
  puts "Наименование товара: #{product_name}"
  puts "Количество товара: #{product_info[:number]}"
  puts "Цена единицы товара: #{product_info[:price]}"
  puts "Цена всего товара: #{product_info[:number] * product_info[:price]}"

  sum += product_info[:number] * product_info[:price]

end

puts "Общая сумма: #{sum}"
