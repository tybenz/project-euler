def numfactors(n)
  total = 1.upto(Math.sqrt(n)).select {|i| (n % i).zero?}.inject(0) do |f, i|
    f += 2
  end

  if Math.sqrt(n) ** 2 == n
    total -= 1
  end

  total
end

i = 1
num = 0
while numfactors(num) < 500 do
  num += i
  i += 1
end

puts num
