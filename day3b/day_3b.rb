data = File.readlines('input.txt')

result = data
  .map(&:chomp)
  .each_slice(3)
  .map { _1.map(&:chars) }
  .map { _1 & _2 & _3 }
  .flatten
  .map { _1 =~ /[A-Z]/ ? _1.ord - 38 : _1.ord - 96 }
  .sum





p result