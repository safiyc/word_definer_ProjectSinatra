require 'rspec'
require 'word'
require 'pry'

describe("#Word") do
  describe("#word") do
    it("checks for value of 'word' instance of class 'Word'") do
      word1 = Word.new({:word=> "Answer", :word_definition=> "The solution to a problem"})
      expect(word1.word()).to(eq("Answer"))
    end
  end

  describe("#word_definition") do
    it("checks for value of 'word_definition' instance of class 'Word'") do
      word1 = Word.new({:word=> "Answer", :word_definition=> "The solution to a problem"})
      expect(word1.word_definition()).to(eq("The solution to a problem"))
    end
  end

  describe("#save") do
    it("saves words and definitons") do
      word1 = Word.new({:word=> "Answer", :word_definition=> "The solution to a problem"})
      word1.save
      word2 = Word.new({:word=> "Tired", :word_definition=> "The result of spending a whole day figuring out coding errors"})
      word2.save
      expect(Word.all()).to(eq([word1, word2]))
    end
  end
end
