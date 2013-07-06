i = 20

while true

  found = true

  for j in (1..20)
    if i % j != 0
      found = false
      break
    end
  end

  if found
    break
  end

  i += 20
end

puts i
