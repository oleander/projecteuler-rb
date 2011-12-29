def divisors(n)
  (1..n/2).select{|i| (n % i) == 0}
end

puts (1..10_000).inject(0){|res, n| res + (divisors(n).inject(:+) || 0)}

# => 32251014