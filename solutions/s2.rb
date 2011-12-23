def fib(a,b)
  a >= 4_000_000 ? 0 : [a, fib(b, a+b)]
end

fib(1,2).flatten.select(&:even?).inject(:+)

# => 4613732