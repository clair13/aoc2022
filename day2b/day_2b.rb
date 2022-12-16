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


def change(opp, score)
  case [opp, score]
  in ['A', 'Y'] | ['B', 'X'] | ['C', 'Z']
    'X'
  in ['A', 'Z'] | ['B', 'Y'] | ['C', 'X']
    'Y'
  else
    'Z'
  end
end

def total(opp, score)
  me = change(opp, score)
  result(opp, me) + bonus(opp, me)
end


p data.map(&:chomp)
      .map { _1.split(' ')}
      .map { |opp, me| total(opp, me) }
      .sum