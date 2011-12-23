range = (1..20).to_a
n = 20
loop do
  break if range.all?{|i| n % i == 0}
  n += 20
end

puts n # => 232792560