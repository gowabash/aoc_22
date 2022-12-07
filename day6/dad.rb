#! /usr/bin/env ruby


def calc(line)
  index = 1
   while index < line.size - 13
    foo = line[index-1..index+12]
    if foo.split('').uniq.size == 14
      return index + 13
    end
    index = index + 1
  end
end

def main1
  sum = 0
  line = File.readlines('input.dad')
  puts calc(line.first)
end

main1
