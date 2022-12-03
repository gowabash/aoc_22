#! /usr/bin/env ruby


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

def calc1(line)
  you, me = line.split
  sum = 0
  sum += shift_me(me)
  sum += winner(shift_you(you), shift_me(me))
end

# 1 is loose
# 2 draw
# 3 win
def pick(you, result)
  return you if result == 2
  return (you%3) + 1 if result == 3
  return (((you - 1)+2) % 3) + 1 if result == 1
end

def calc2(line)
  you, me = line.split
  sum = 0
  sum += (shift_me(me) - 1) * 3
  sum += pick(shift_you(you), shift_me(me))
end


def main
  sum = 0
  lines = File.readlines('input.dad')
  lines.each do |line|
    sum += calc2(line)
  end

  puts sum
end

# A,X - rock
# B,Y - paper
# C,Z - scissors
# win - 6
# draw - 3
# loss - 0

def test
  line = "A Y"
  you, me = line.split
  puts "This should be 4 -> " + calc2("A Y").to_s
  puts "This should be 3 -> " + calc2("A X").to_s
  puts "This should be 1 -> " + calc2("B X").to_s
  puts "This should be 2 -> " + calc2("C X").to_s
  puts "This should be 8 -> " + calc2("A Z").to_s
  puts "This should be 9 -> " + calc2("B Z").to_s
  puts "This should be 7 -> " + calc2("C Z").to_s
end

main
#test
