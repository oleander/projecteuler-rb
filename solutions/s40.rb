values = (1..1000000).to_a.join("")
puts [1, 10, 100, 1000, 10000, 100000, 1000000].inject(1){|res, i| res * values[i -1].to_i}
# => 210

