# frozen_string_literal: true

current_directory = File.join(File.dirname(File.expand_path(__FILE__)))
$LOAD_PATH << current_directory

require 'version'
require 'move_rover'
require 'plateau'
require 'rover'

module Marsrover2
  class Error < StandardError; end
end

grid = Plateau.new(ARGF.gets.strip.split)

until ARGF.eof
  input = ARGF.gets.strip.split
  x = input[0].to_i
  y = input[1].to_i
  orientation = input[2].to_sym
  commands = ARGF.gets.strip
  rover = Rover.new(x, y, orientation)
  MoveRover.new.process(commands, rover, grid)
end