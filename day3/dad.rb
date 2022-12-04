#! /usr/bin/env ruby

def prioritize(letter)
  if letter == letter.upcase
    letter.ord - 38
  else
    letter.ord - 96
  end
end

def calc1(line)
  items = line.split('')
  len = items.count
  c1 = items[0..len/2 -1]
  c2 = items[len/2..len]
  letter = (c1-(c1-c2)).first
  prioritize(letter)
end

def calc2(lines)
  a = lines[0].split('')
  b = lines[1].split('')
  c = lines[2].split('')

  same = a-(a-b)
  same = same-(same-c)
  prioritize(same.first)
end

def main1
  sum = 0
  lines = File.readlines('input.dad')
  lines.each do |line|
    sum += calc1(line)
  end

  puts sum
end

def main2
  sum = 0
  lines = File.readlines('input.dad')
  lines.each_slice(3) do |line|
    sum += calc2(line)
  end

  puts sum
end

def test
  puts prioritize("p")
  puts prioritize("Z")
  puts "16 => " + calc1("vJrwpWtwJgWrhcsFMMfFFhFp").to_s
  puts "52 => " + calc1("FdFDGdDDDhhHdZDjhDmpwSPVZszpwZsVgsPRZs").to_s
end

def test2
  lines = File.readlines('input.dad.simple')
  lines.each_slice(3) do |line|
    puts calc2(line)
  end
 
end

# main
# test
#test2
main2
