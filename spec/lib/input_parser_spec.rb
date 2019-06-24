# frozen_string_literal: true

require 'spec_helper'

RSpec.describe InputParser do
  let(:commands) { %w[L M L M L M L M M] }

  let(:bounds) do
    {:x=>5,
     :y=>5}
  end

  # let(:file_name) do
  #   File.join(
  #       FILE_FIXTURE_PATH,
  #       'input.txt'
  #   )
  # end

  let(:input) do
    File.read(FILE_FIXTURE_PATH).split("\n").map(&:strip)
  end

  it 'sets bounds' do
    expect(subject.set_bounds(input[0])).to eq(bounds)
  end
end
