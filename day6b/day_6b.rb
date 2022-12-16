require 'set'
data = File.read('input.txt')

def marker(data, length)
  data
    .chars
    .each_cons(length)
    .map(&:to_set)
    .find_index { |set| set.size == length } + length
end

p marker(data , 14)