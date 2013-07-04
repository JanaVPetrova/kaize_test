require 'test_helper'

SimpleCov.command_name 'Unit Tests'

class TestProblem < Minitest::Test
  def setup
    @char = Character.new
  end
end
