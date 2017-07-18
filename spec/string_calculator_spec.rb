#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  it "returns the value for a single degit" do
    (0..9).each do |digit|
      expect(StringCalculator.add(digit.to_s)).to eql(digit)
    end
  end

  it "returns the sum of two digits when seperated by a coma" do
    expect(StringCalculator.add("1,2")).to eql(3)
    expect(StringCalculator.add("7,9")).to eql(16)
  end

  it "returns the sum of two strnigs of digits when seperated by a coma" do
    expect(StringCalculator.add("12,45")).to eql(57)
    expect(StringCalculator.add("42,159")).to eql(201)
  end

  it "returns the sum of two strnigs of digits when seperated by a coma" do
    expect(StringCalculator.add("15,22,45,79")).to eql(161)
    expect(StringCalculator.add("1558,2,2442")).to eql(4002)
  end

  it "handles new lines like they were commas" do
    expect(StringCalculator.add("1\n2,3")).to eql(6)
  end



  # more tests go here
end
