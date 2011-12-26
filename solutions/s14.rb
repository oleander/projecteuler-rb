def calculate(n)
  if n == 1
    return 1
  elsif n.even?
    return 1 + calculate(n/2)
  else
    return 1 + calculate(3*n + 1)
  end
end

max  = 0
what = nil
(1..1_000_000).each do |n|
  if (val = calculate(n)) > max
    max = val
    what = n
  end
end

puts what
# => 837799