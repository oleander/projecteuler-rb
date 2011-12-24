def is_prime?(n)
  !! (2..(n-1)).to_a.each {|i| return false if (n % i).zero? }
end

n = 3
sum = 1
loop do
  break if n > 2_000_000
  if is_prime?(n)
    sum += n
  end
    
  if n % 10_001 == 0
    puts "n=#{n}"
  end
  
  n += 2  
end

puts sum