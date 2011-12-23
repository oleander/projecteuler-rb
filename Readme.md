# Project Euler in Ruby

## Philosophy

Slow(ish) and compact instead of fast and spacey.

## Example of compact code?

Here is my solution to the first assignment.

``` ruby
(0...1000).select {|n| [3, 5].map{|i| n % i}.any?(&:zero?)}.inject(:+)
```

1. Slow? Probably.
2. Compact? Yes, sort of.
3. Readable? Nope.