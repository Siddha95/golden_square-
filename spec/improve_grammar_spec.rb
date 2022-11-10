
require 'improve_grammar'

RSpec.describe "improve_grammar" do
  context "given a string with no capital letter and punctuation at the end" do
    it "returns a string" do
      result = improve_grammar("hello WORLD")
      expect(result).to eq false
    end
  end

    context "given a string with capital letter and punctuation at the end" do
    it "returns a string" do
      result = improve_grammar("Hello WORLD!")
      expect(result).to eq true
    end
  end

  context "given a string with capital letter and NO punctuation at the end" do
  it "returns a string" do
    result = improve_grammar("Hello WORLD")
    expect(result).to eq false
   end
 end

  context "given a string with NO capital letter and a punctuation at the end" do
  it "returns a string" do
   result = improve_grammar("hello WORLD!")
   expect(result).to eq false
  end
 end

end
  #context "given a string of six words" do
  #  it "returns the first five with a..." do
  #    result = make_snippet("one two three four five six")
  #    expect(result).to eq "one two three four five..."
  #  end
  #end
#end
