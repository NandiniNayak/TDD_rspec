# Test cases:
# - check if method is defined
# - an empty sum should return 0
# - each number in an array should add together
# - if there are two arrays sum each array and sum those values

require_relative "array_sum.rb"

describe "Program should sum all values" do

    it "checking for a defined single-array method" do
        expect(defined? sum_array).to eql("method")
    end

    it "returning 0 if array is empty" do
        expect(sum_array([])).to eql(0)
    end

    it "returning sum of all numbers in an array" do
        expect(sum_array([10, 20, -10, 5, 0])).to eql(25)
    end
    it "returning sum should be a number" do
        expect(sum_array([10, 20, -10, 5, 0]).class).to eql Integer
    end

    it "returning sum should be a number" do
        expect(sum_array([10, a, -10, 5, 0]).class).not_to be Integer
    end
end

describe "part 2" do

    it "checking for a defined single-array method" do
        expect(defined? sum_two_arrays).to eql("method")
    end

    it "returning sum of all numbers in two arrays" do
        expect(sum_two_arrays([10, 20, -10, 5, 0], [5, 3, -2]) ).to eql(31)
    end
end