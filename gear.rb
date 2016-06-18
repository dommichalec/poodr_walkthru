# Gear class subclasses from Object, inherits many methods
class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # tire goes around the rim twice for diameter
    ratio * (rim + (tire * 2)) # always hide instance variables in attr methods
  end

end

puts Gear.new(52, 11, 26, 1.5).gear_inches
puts Gear.new(30, 27, 24, 1.25).gear_inches

# Notes

# Classes should only be responsible for one thing, and one thing only.

# Applications tend to break when classes take on too much responsibility.

# If you can describe a class in one sentence without using the words 'and',
# 'or', chances are it's a good class with small responsibility.
