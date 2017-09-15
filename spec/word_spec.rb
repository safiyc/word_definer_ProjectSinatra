require 'rspec'
require 'word'
require 'pry'

describe("#Word") do
  describe("#word") do
    it("checks for the value of a Word instance within the attributes hash") do
      word1 = Word.new({:word=> "Alibi"})
      expect(word1.word()).to(eq("Alibi"))
    end
  end

end
