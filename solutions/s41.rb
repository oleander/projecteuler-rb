def is_prime?(n)
  return false if n.even?
  return false if n == 1
  return true if n == 2
  !! (2..(n-1)).each {|i| return false if (n % i).zero?}
end

found = 0
(1..9).to_a.reverse.each do |n|
  (1..n).to_a.permutation.to_a.reverse.each do |value|
    v = value.join("").to_i
    found = v if v > found and is_prime?(v)
  end
end

puts found
# => 7652413
