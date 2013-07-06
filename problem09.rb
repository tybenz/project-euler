a, b, c = 0, 0, 0
s = 1000

found = false
for a in (1..s/3)
  for b in (a..s/2)
    c = s - a - b

    if a ** 2 + b ** 2 == c ** 2
      found = true
      break
    end
  end

  if found
    break
  end
end

puts a * b * c
