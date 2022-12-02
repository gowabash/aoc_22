#! /usr/bin/env ruby

# A,X - rock
# B,Y - paper
# C,Z - scissors
# win - 6
# draw - 3
# loss - 0


lines = File.readlines('input.dad')
def shift_me(choice)
  choice.ord - 87
end

def shift_you(choice)
  choice.ord - 64
end

def winner(b, a)
  diff = a-b
  return 3 if diff == 0
  return 6 if (diff == 1 || diff == -2)
  return 0
end

def calc(line)
  you, me = line.split
  sum = 0
  sum += shift_me(me)
  sum += winner(shift_you(you), shift_me(me))
end

sum = 0
lines.each do |line|
  sum += calc(line)
end

puts sum
