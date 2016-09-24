describe "Level 2" do
  describe "Hashes" do
    it "adds a new key" do
      instructor = {name: "Steven", age: 30}
      # Add a key :location with a value of "NYC" to instructor
      instructor[:location] = "NYC"
      expect(instructor[:location]).to eq("NYC")
    end

    it "prints out all the key value pairs in the hash" do
      instructor = {name: "Steven", age: 30}
      expect(STDOUT).to receive(:puts).with("Key is name. Value is Steven")
      expect(STDOUT).to receive(:puts).with("Key is age. Value is 30")
      # Iterate over the hash and print each key value pair.
      instructor.each do |key, value|
        puts "Key is #{key}. Value is #{value}"
      end
      # Print using string interpolation to match the expectations.

    end

    it "returns a value from the hash" do
      instructor = {name: "Steven", age: 30}
      name = instructor.values[0]
      expect(name).to eq("Steven")
    end

    it "finds a key from a known value" do
       instructor = {name: "Steven", age: 30}
       key_from_value = instructor.key(30) # write code that finds a key where the value is 30
       expect(key_from_value).to eq(:age)
    end
  end
end
