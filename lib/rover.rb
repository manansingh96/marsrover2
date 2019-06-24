class Rover
  attr_accessor :x, :y, :orientation

  LEFT = {
    N: :W,
    E: :N,
    S: :E,
    W: :S
  }.freeze

  RIGHT = {
    N: :E,
    E: :S,
    S: :W,
    W: :N
  }.freeze

  def initialize(x, y, orientation)
    @x         = x
    @y         = y
    @orientation = orientation
  end

  def left
    @orientation = LEFT[@orientation]
  end

  def right
    @orientation = RIGHT[@orientation]
  end

  def move
    case orientation
    when :N
      self.y += 1
    when :E
      self.x += 1
    when :S
      self.y -= 1
    when :W
      self.x -= 1
    end
  end

  def print
    puts "#{x} #{y} #{orientation.to_s}"
  end
end