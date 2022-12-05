#! /usr/bin/env ruby

class Ship
  attr_accessor :contents


  def rearrange
    sum = 0
    lines = File.readlines('input.dad')
    lines.each do |line|
      calc1(line)
    end

   @contents[1..].each{|x| putc x.last}
   puts
  end


  def initialize
    raw= "W T H P J C F
    H B J Z F V R G
    R T P H
    T H P N S Z
    D C J H Z F V N
    Z D W F G M P
    P D J S W Z V M
    S D N
    M F S Z D"

    crates = raw.split("\n")
    @contents = [""]
    crates.each do |cr|
      foo = cr.split(' ').reverse
      @contents << foo
    end
  end

  def calc1(line)
    _, amount, _, from, _, to = line.split(' ')
    amount = amount.to_i
    from = from.to_i
    to = to.to_i
    @contents[to].push(@contents[from].pop(amount))
    @contents[to].flatten!
  end
end

ship = Ship.new
ship.rearrange
