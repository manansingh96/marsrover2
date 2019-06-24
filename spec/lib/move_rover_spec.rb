# frozen_string_literal: true

require 'spec_helper'

RSpec.describe MoveRover do
  let(:commands) { 'LMLMLMLMM' }
  let(:wrong_commands) { 'LMTRMRM' }
  let(:grid_input) { [5, 5]}

  let(:rover) do
    double('rover')
  end

  let(:grid) do
    double('plateau')
  end

  let(:rover1) do
    rover1 = Rover.new(1, 2, :N)
  end

  let(:rover_outside_grid) do
    allow(rover).to receive(:x).and_return(6)
    allow(rover).to receive(:y).and_return(6)
    allow(grid).to receive(:x).and_return(grid_input[0])
    allow(grid).to receive(:y).and_return(grid_input[1])

    described_class.new.rover_out_of_grid?(rover, grid)
  end

  let(:rover_inside_grid) do
    allow(rover).to receive(:x).and_return(1)
    allow(rover).to receive(:y).and_return(2)
    allow(grid).to receive(:x).and_return(grid_input[0])
    allow(grid).to receive(:y).and_return(grid_input[1])

    described_class.new.rover_out_of_grid?(rover, grid)
  end

  it 'raises error' do
    expect do
      # allow(rover).to receive(:x).and_return(1)
      # allow(rover).to receive(:y).and_return(2)
      # allow(rover).to receive(:orientation).and_return(:N)
      described_class.new.process(wrong_commands, rover1)
    end.to raise_error(RuntimeError, 'Invalid command for movement')
  end

  it 'checks if inside grid' do
    expect(rover_inside_grid).to eq(false)
  end

  it 'checks if outside grid' do
    expect(rover_outside_grid).to eq(true)
  end
end