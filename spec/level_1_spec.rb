describe "Level 1" do
	describe "Arrays" do
		it "adds an element to an array" do
			array = ["Blake","Steven","Jeff", "Joe"]
  		# add an element to the array
			expect(array.count).to eq(4)
		end



		it "prints each element in the array" do
			array = ["Blake","Steven","Jeff"]

			expect(STDOUT).to receive(:puts).with("Blake")
			expect(STDOUT).to receive(:puts).with("Steven")
			expect(STDOUT).to receive(:puts).with("Jeff")
			array.each do |name|
				puts name
			end
			# iterate over each element in the array and puts it
		end

		it "returns the value at index 0" do
			array = ["Blake","Steven","Jeff"]
			element_1 = array[0] # replace banana with the code that finds the first element
			expect(element_1).to eq("Blake")
		end

		it "returns the user at an index" do
			array = ["Blake","Steven","Jeff"]
			jeff_index = array.index("Jeff") # replace banana with the code that finds Jeff's index
			expect(jeff_index).to eq(2)
		end
	end
end
