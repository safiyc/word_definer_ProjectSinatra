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
      word2 = Word.new({:word=> "Busted"})
      word1.save
      word2.save
      expect(Word.all).to(eq([word1, word2]))
    end
  end

  describe(".clear") do
    it("clears the list inside @@contacts") do
      word1 = Word.new({:word=> "Alibi"})
      word2 = Word.new({:word=> "Busted"})
      word3 = Word.new({:word=> "Criminal"})
      word1.save
      word2.save
      word3.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end
end
