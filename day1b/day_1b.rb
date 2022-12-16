data = File.readlines('input.txt')


def result(data)
  data.map(&:chomp)
      .chunk_while { _2 != "" }
      .map { _1.map(&:to_i) }
      .map(&:sum)
      .sort[-3..]
      .sum
end

p result(data)