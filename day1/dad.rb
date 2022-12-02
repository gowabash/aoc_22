#! /usr/bin/env ruby

class Elf
  def initialize
    @carry = []
  end

  def add(item)
    @carry << item
  end

  def sum
    @carry.sum
  end
end



lines = File.readlines('input.dad')

elves = []
elf = Elf.new

lines.each do |line|
  line.chomp!
  if line == ""
    elves << elf.sum
    elf = Elf.new
    next
  else
    elf.add line.to_i
  end
end
elves << elf.sum

puts elves.sort.last(3)
puts elves.sort.last(3).sum
