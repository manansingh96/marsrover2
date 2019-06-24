# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Rover do
  let(:x) {1}
  let(:y) {2}
  let(:orientation) {:N}

  subject do
    described_class.new(x, y, orientation)
  end

  it 'turns left' do
    expect(subject.left).to eq(:W)
  end

  it 'turns right' do
    expect(subject.right).to eq(:E)
  end

  it 'moves forward' do
    expect(subject.move).to eq(3)
  end

  # it 'prints' do
  #   expect(subject.print).to output(nil).to_stdout
  # end


end