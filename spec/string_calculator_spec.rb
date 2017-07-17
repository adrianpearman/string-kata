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
    # Refractored versions of test parameter
    # except(StringCalculator.add("0")).to eql(0)
    # except(StringCalculator.add("1")).to eql(1)
    # except(StringCalculator.add("2")).to eql(2)
    # except(StringCalculator.add("3")).to eql(3)
    # except(StringCalculator.add("4")).to eql(4)
    # except(StringCalculator.add("5")).to eql(5)
    # except(StringCalculator.add("6")).to eql(6)
    # except(StringCalculator.add("7")).to eql(7)
    # except(StringCalculator.add("8")).to eql(8)
    # except(StringCalculator.add("9")).to eql(9)
    #
    # [0,1,2,3,4,5,6,7,8,9] each do |digit|
    #   except(StringCalculator.add(digit.to_s)).to eql(digit)
    # end
    #
    (0..9).each do |digit|
      expect(StringCalculator.add(digit.to_s)).to eql(digit)
    end

    it "returns the sum of two digits when seperated by a coma"do

    end
  end



  # more tests go here
end
