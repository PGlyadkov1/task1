
n = 100

fibb = []

#в зависимости от определения последовательность Фиббоначи начинается с нуля или с единицы. 

#Эта последовательность начинается с нулевого элемента равного нулю
fibb[0] = 0
fibb[1] = 1

index = 1

while fibb[index] < n do
  index += 1
  fibb[index] = fibb[index - 1] + fibb[index - 2]
end

fibb.delete_at(-1)

puts fibb
