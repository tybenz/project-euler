# 1 1 2 3 5 8 13 21

fib = [1, 1]
sum = 0
num = 0
i = 1
while num < 4000000
  i += 1
  num = fib[i-2] + fib[i-1]
  fib << num
  sum += num if num % 2 == 0
end

puts sum
