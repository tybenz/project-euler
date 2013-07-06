def factors(n)
  1.upto(Math.sqrt(n)).select {|i| (n % i).zero?}.inject([]) do |f, i|
    f << i
    f << n/i if i != n/i
    f
  end.sort
end

count = 0
i = 2
while true
  if factors(i).length <= 2
    count += 1
  end
  if count == 10001
    break
  end
  i += 1
end

puts i
