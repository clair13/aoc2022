data = File.readlines('input.txt')


def result(opp, me)
  me.ord - 87
end

def bonus(opp, me)
  case [opp, me]
  in ['A', 'Z'] | ['B', 'X'] | ['C', 'Y']
    0
  in ['A', 'X'] | ['B', 'Y'] | ['C', 'Z']
    3
  else
    6
  end
end

def total(opp, me)
  result(opp, me) + bonus(opp, me)
end


p data.map(&:chomp)
      .map { _1.split(' ')}
      .map { |opp, me| total(opp, me) }
      .sum