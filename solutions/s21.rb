def divisors(n)
  (1..n/2).select{|i| (n % i) == 0}
end

sum = 0
(1..10_000).each do |n|
  a = divisors(n).inject(:+) || 0
  b = divisors(a).inject(:+) || 0
  if b == n and a != n
    sum += a
  end
end

puts sum

# => 31626