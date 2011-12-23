(100..999).map {|a| (100..999).map{|b| a*b}}.flatten.sort.reverse.each do |n|
  a = n.to_s
  l = a.length
  o = l.odd? ? 0 : 1
  if a[0..l/2 - o] == a[l/2..-1].reverse
    puts n; break
  end
end

# => 906609