def is_prime?(n)
  !! (2..(n-1)).to_a.each {|i| return false if (n % i).zero?}
end

def factor(n)
  (2..n).inject([]) do |found, value|
    while (n % value).zero?
      found << value
      n /= value
    end
    
    found
  end
end

n = 2
found = 0
while true do
  values = factor(n).uniq
  if values.all?{|i| is_prime?(i)} and values.count == 4
    found += 1
  else
    found = 0
  end
    
  break if found == 4
  
  n += 1
end

puts n - 3
# => 134043