def read_towers(data)
  towers = []
  data
    .split("\n")
    .map { |line| line.split(/\s{4}| /) }
    .reverse
    .each_with_index do |level, i|
      next if i == 0

      level
        .map {|el| el.gsub(/\[|\]/, '') }
        .each_with_index do |el, j|
        next if el == ''

        towers[j] = [] if towers[j].nil?
        towers[j] << el
      end
    end
  towers
end

def read_instructions(data)
  data
    .split("\n")
    .map { |line| /move (?<n>\d+) from (?<from>\d+) to (?<to>\d+)/.match(line) }
    .map {|m| [m[:n].to_i, m[:from].to_i, m[:to].to_i] }
end

def move(towers, n, from, to)
  n.times { towers[to - 1] << towers[from - 1].pop }
end

def move_all(towers, instructions)
  instructions.each do |instruction|
    move(towers, *instruction)
  end
end

towers, instructions = File.read(ARGV[0]).split("\n\n")
towers = read_towers(towers)
instructions = read_instructions(instructions)
move_all(towers, instructions)
p towers.map(&:last).join