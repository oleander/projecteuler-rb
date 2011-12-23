def is_prime?(n)
  !! (2..(n-1)).to_a.each {|i| return false if (n % i).zero? }
end

n = 2
found = 0
loop do
  found += 1 if is_prime?(n)
  break if found == 10_001
  n += 1
end

# => 104743