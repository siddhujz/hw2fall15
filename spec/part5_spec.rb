require 'part5.rb'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

describe "CartesianProduct" do
  it "should exist" do
    lambda { CartesianProduct.new(1..2,3..4) }.should_not raise_error
  end
end

