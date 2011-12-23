n = 1
a = n
b = n + 1
loop do
  value = Math.sqrt(a**2 + b**2)
    
  if b + a + value == 1_000
    puts (a * b * value).to_i; break
  end
  
  if b + a + value > 1_000 or value < b
    n += 1
    a = n
    b = n + 1
  else
    b += 1
  end
end

# => 31875000