data = File.readlines('input.txt')

result = data
  .map(&:chomp)
  .map(&:chars)
  .map { _1.each_slice(_1.length / 2).to_a }
  .map { |(left, right)| left & right }
  .flatten
  .map { _1 =~ /[A-Z]/ ? _1.ord - 38 : _1.ord - 96 }
  .sum





p result