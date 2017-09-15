require 'rspec'
require 'word'
require 'pry'

describe("#Word") do
  describe("#word") do
    it("checks for the value of the Word instance within the attributes hash") do
      word1 = Word.new({:word=> "Alibi"})
      expect(word1.word()).to(eq("Alibi"))
    end
  end

  describe("#save") do
    it("saves Word instances to a list in the class variable called @@words") do
      word1 = Word.new({:word=> "Alibi"})
      word2 = Word.new({:word=> "Bully"})
      word1.save
      word2.save
      expect(Word.all).to(eq([word1, word2]))
    end
  end
end
