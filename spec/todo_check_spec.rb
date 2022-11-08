require "todo_check"

# A method called todo_check that takes a text as an argument
# and returns true if it contains the string TODO.

RSpec.describe "todo_check method" do
  context "given a string as an argument" do
    it "returns true if it includes TODO" do
      result = todo_check("TODO, yes, no, okay")
      expect(result).to eq true
    end
  end

  context "given a string as an argument" do
    it "returns true if it includes TODO" do
      result = todo_check("yes, no, okay, TODO")
      expect(result).to eq true
    end
  end

  context "given a string as an argument" do
    it "returns true if it includes TODO" do
      result = todo_check("yes, no, okay")
      expect(result).to eq false
    end
  end


end
