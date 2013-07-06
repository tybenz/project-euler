def factors(n)
  1.upto(Math.sqrt(n)).select {|i| (n % i).zero?}.inject([]) do |f, i|
    f << i
    f << n/i if i != n/i
    f
  end.sort
end

max = 0
target = 600851475143
factors(target).each do |i|
  if factors(i).length <= 2 && i > max && i != target
    max = i
  end
end

puts max
