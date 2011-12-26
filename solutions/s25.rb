def fib(a,b, count = 1)
  if a.to_s.length == 1_000
    puts count
  else
    fib(b, a + b, (count += 1))
  end
end

puts fib(1,2)
# => 4781