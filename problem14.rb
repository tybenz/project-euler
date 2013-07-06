def collatz(n)
  if n % 2 == 0
    n/2
  else
    3*n+1
  end
end

def collatz_count(starting)
  num = starting
  count = 1
  while num != 1 do
    num = collatz(num)
    count += 1
  end

  count
end

max = 0
for i in (1..1000000).to_a.reverse do
  count = collatz_count(i)
  if count > max
    max = count
  end
end
