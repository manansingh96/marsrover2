class Plateau
  attr_reader :x, :y

  def initialize(input)
    @x = input[0].to_i
    @y = input[1].to_i
  end
end