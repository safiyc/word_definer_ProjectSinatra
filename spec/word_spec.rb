require 'rspec'
require 'word'
require 'pry'

describe("#Word") do
  describe("#word") do
    it("checks for the value of the 'word' instance, which contains the attriubutes hash, of 'Word' class") do
      word1 = Word.new({:word=> "Alibi"})
      expect(word1.word()).to(eq("Alibi"))
    end
  end

  describe("#save") do
    it("saves Word instances to a list in the class variable called @@words") do
      Word.clear
      word1 = Word.new({:word=> "Alibi"})
      word1.save
      word2 = Word.new({:word=> "Bunny"})
      word2.save
      expect(Word.all).to(eq([word1, word2]))
    end
  end

  describe(".clear") do
    it("clears the list inside @@contacts") do
      word1 = Word.new({:word=> "Alibi"})
      word1.save
      word2 = Word.new({:word=> "Alien"})
      word2.save
      word3 = Word.new({:word=> "Crazy"})
      word3.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe("#id") do
    it("increments the id by 1 of a word that is added") do
      word1 = Word.new({:word=> "Alien"})
      word1.save
      word2 = Word.new({:word=> "Bundle"})
      word2.save
      expect(word1.id()).to(eq(1))
      expect(word2.id()).to(eq(2))
    end
  end

  describe("#find") do
    it("finds a word based on its id") do
      Word.clear
      word1 = Word.new({:word=> "Alien"})
      word1.save
      word2 = Word.new({:word=> "Bundle"})
      word2.save
      expect(Word.find(2)).to(eq(word2))
    end
  end
end
