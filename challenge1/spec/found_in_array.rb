# def found_in_array
# end

names = ["lin", "nandini", "carl", "zeb", "janel", "varsha", "lavanya"]

def found_in_array(names,name)
# Your code here
    if names.include?(name)
        return "Found in array"
    else
        return "Not Found in array"
    end
end

# call the method
puts found_in_array(names, "jessica")