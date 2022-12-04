#! /usr/bin/env ruby

def calc1(line)
  puts line
  a,b = line.split(',')
  mina, maxa = a.split('-')
  minb, maxb = b.split('-')

  if (mina.to_i <= minb.to_i) && (maxa.to_i >= maxb.to_i)
    puts "a"
    return 1 
  elsif mina.to_i >= minb.to_i && maxa.to_i <= maxb.to_i
    puts "b"
    return 1 
  else
    puts "c"
    return 0
  end
end

def main1
  sum = 0
  lines = File.readlines('input.dad')
  lines.each do |line|
    sum += calc1(line)
  end

  puts sum
end

main1
