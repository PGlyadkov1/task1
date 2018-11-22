
n = 100

fibb = [0,1]

while fibb[-1] < n do
  fibb << fibb[-1] + fibb[-2]
end

fibb.delete_at(-1)

puts fibb
