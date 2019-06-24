# frozen_string_literal: true

class MoveRover
  def process(commands, rover)
    commands.each_char do |command|
      case command
      when 'L'
        rover.left
      when 'R'
        rover.right
      when 'M'
        rover.move
      else
        raise 'Invalid command for movement'
      end
    end
    rover.print
  end

  def rover_out_of_grid?(rover, grid)
    rover.x > grid.x ||
      rover.y > grid.y ||
      rover.x.negative? ||
      rover.y.negative?
  end
end