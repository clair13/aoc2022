require 'set'

data = File.readlines('input.txt')

result = data
  .map(&:chomp)
  .map { _1.split(/[,-]/) }
  .map { _1.map(&:to_i) }
  .map { _1.each_slice(2).to_a }
  .map { _1.map { |a, b| (a..b).to_set } }
  .reduce(0) {|count, (a, b)| a.intersect?(b) ? count + 1 : count }


p result