
limit = 100

fibb = [0,1]
next_number = 1

while next_number < limit do
  fibb << next_number
  next_number += fibb[-2]
end

puts fibb
