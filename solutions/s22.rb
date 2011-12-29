value = File.read("names.txt").split("\n").sort.each_with_index.inject(1) do |res, args|
  value, index = args
  res + value.upcase.split("").inject(0){|res, letter| res + letter.ord - 64 } * index
end

puts value