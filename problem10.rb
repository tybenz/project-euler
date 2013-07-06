# Sieve of Eratosthenes http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

sum = 2
p = 2
max = 2000000
list = (0..max).map {|n| false}

while p <= max do

  i = p
  while i <= max do
    list[i] = true
    i += p
  end

  n = p + 1
  found = false
  while !found && n <= max do
    if !list[n]
      found = true
      break
    end
    n += 1
  end

  if !found
    break
  end

  p = n
  sum += n

end

puts sum
