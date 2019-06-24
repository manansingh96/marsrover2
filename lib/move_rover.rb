class MoveRover
  def process(commands, rover, grid)
    commands.each_char do |command|
      case command
      when 'L'
        rover.left
      when 'R'
        rover.right
      when 'M'
        # return unless rover.in_grid?
        rover.move
      end
    end
    rover.print
  rescue NoMethodError
    raise 'Invalid command for movement'
  end
end