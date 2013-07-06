# Generate list of possible combinations
a = [ (100..999).to_a, (100..999).to_a ]
max = a.first.product(*a[1..-1]).inject(0) do |sum, array|
  num = array[0] * array[1]
  num.to_s == num.to_s.reverse && num > sum ? num : sum
end

puts max
