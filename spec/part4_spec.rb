require 'part4.rb'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

describe "Class" do
  it "should have an attr_accessor_with_history method" do
    lambda { Class.new.attr_accessor_with_history :x }.should_not raise_error
  end
end

