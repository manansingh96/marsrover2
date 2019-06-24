require "bundler/setup"
require 'simplecov'
SimpleCov.start

require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov

project_lib_dir = File.join(
    File.dirname(
        File.expand_path(__FILE__)
    ), '..', 'lib'
)

require "#{project_lib_dir}/move_rover.rb"
require "#{project_lib_dir}/rover.rb"
require "#{project_lib_dir}/plateau.rb"

FILE_FIXTURE_PATH = File.join(
    File.dirname(
        File.expand_path(__FILE__)
    ), '..', 'spec', 'fixtures', 'input.txt'
)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
