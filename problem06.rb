list = *(1..100)

sosq = list.inject(0) do |s, n|
  s += n * n
end

sqos = list.inject(:+) ** 2

puts sqos - sosq
