values = (0..9).to_a.permutation.to_a
total = 0
hash = {
  1 => 2,
  2 => 3,
  3 => 5,
  4 => 7,
  5 => 11,
  6 => 13,
  7 => 17
}

values.each do |value|
  result = hash.keys.map do |offset|
    (value[offset..(offset + 2)].join.to_i % hash[offset]).zero?
  end
  
  total += value.join.to_i if result.all?
end

puts total
# => 16695334890