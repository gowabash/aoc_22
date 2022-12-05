#! /usr/bin/env ruby

def calc1(line)
  a,b = line.split(',')
  mina, maxa = a.split('-')
  minb, maxb = b.split('-')

  if (mina.to_i <= minb.to_i) && (maxa.to_i >= maxb.to_i)
    return 1 
  elsif mina.to_i >= minb.to_i && maxa.to_i <= maxb.to_i
    return 1 
  else
    return 0
  end
end

def calc2(line)
  a,b = line.split(',')
  mina, maxa = a.split('-')
  minb, maxb = b.split('-')

  if (mina.to_i >= minb.to_i) && (mina.to_i <= maxb.to_i)
    return 1 
  elsif (maxa.to_i >= minb.to_i) && (maxa.to_i <= maxb.to_i)
    return 1 
  elsif (mina.to_i < minb.to_i) && (maxb.to_i <= maxa.to_i)
    return 1 
  else
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

def main2
  sum = 0
  lines = File.readlines('input.dad')
  lines.each do |line|
    sum += calc2(line)
  end

  puts sum
end

main2
