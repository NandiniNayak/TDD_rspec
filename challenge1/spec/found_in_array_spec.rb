require_relative "found_in_array.rb"

# Test cases:
# 1. make sure that the method is defned
# 2. if you pass less than 2 arguments should throw an error
# 3. should return found in the array if the name is in the array
# 4. shuld return not found in the array if name is not in the array
# 5. return value is always a string

describe "is name in the array" do
    it "exists as a method" do
        expect(defined? found_in_array).to eql("method")
    end

    it "should throw argument error if less than 2 arguments passed" do
        expect{found_in_array(["grant","jessica"])}.to raise_error(ArgumentError)
    end

    it "should return found in the array if name is in that array" do
        expect(found_in_array(["grant","jessica","mike"], "jessica")).to eq("Found in array")
    end

    it "should return not found in the array if name is in not in the array" do
        expect(found_in_array(["grant","jessica","mike"], "Ana")).to eq("Not Found in array")
    end

    it "returns a string" do
        expect(found_in_array(["grant","jessica","mike"],"jessica").class).to eq String
    end
end