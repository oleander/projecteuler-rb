(0...1000).select do |n|
  [3, 5].map{|i| n % i}.any?(&:zero?)
end.inject(:+)

# => 233168