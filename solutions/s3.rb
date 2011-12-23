n = 600851475143
s = 2

def is_prime?(n)
  !! (2..(n-1)).to_a.each {|i| return false if (n % i).zero? }
end

loop do
  n = n / s if (n % s).zero? and is_prime?(s)
  break if s > n  
  s += 1
end

# => s = 6857