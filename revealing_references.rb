# Revealing References class
class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameter
    wheels.collect { |wheel| diameters(wheel) }
  end

  def diameters(wheel)
    wheel.rim + (wheel.tire * 2)
  end
  Wheel = Struct.new(:rim, :tire)

  def wheelify(data)
    data.collect do |cell|
      Wheel.new(cell[0], cell[1])
    end
  end
end

# Methods, like classes, should have a single responsibility

# Start by creating a Struct (state, without any behavior) inside a
# class. If that Struct needs behavior, extract it to its own class.
