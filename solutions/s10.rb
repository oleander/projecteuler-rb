def is_prime?(n)
  return true if n == 2
  return false if n.even?
  return false if n < 2
  !! (2..(n-1)).each {|i| return false if (n % i).zero?}
end

puts (0..2_000_000).inject(0) {|res, n| res + (is_prime?(n) ? n : 0)}
# => 142913828922

# real 402m11.564s
# user 379m26.622s
# sys 1m8.815s