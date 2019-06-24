# frozen_string_literal: true

require 'spec_helper'

RSpec.describe MoveRover do
  let(:commands) { 'LMLMLMLMM' }
  let(:wrong_commands) { 'LMTRMRM' }
  let(:grid_input) { [5, 5]}

  let(:rover) do
    Rover.new(1, 2, :N)
  end

  let(:rover_outside_grid) do
    grid =  Plateau.new(grid_input)
    rover = Rover.new(6, 6, :N)
    described_class.new.rover_out_of_grid?(rover, grid)
  end

  let(:rover_inside_grid) do
    grid =  Plateau.new(grid_input)
    rover = Rover.new(1, 2, :N)
    described_class.new.rover_out_of_grid?(rover, grid)
  end

  it 'raises error' do
    expect do
      described_class.new.process(wrong_commands, rover)
    end.to raise_error(RuntimeError, 'Invalid command for movement')
  end

  it 'checks if inside grid' do
    expect(rover_inside_grid).to eq(false)
  end

  it 'checks if outside grid' do
    expect(rover_outside_grid).to eq(true)
  end
end