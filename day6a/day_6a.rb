require 'set'
data = File.read('input.txt')

def marker(data)
  data
    .chars
    .each_cons(4)
    .map(&:to_set)
    .find_index { |set| set.size ==4 } + 4
end

p marker(data)