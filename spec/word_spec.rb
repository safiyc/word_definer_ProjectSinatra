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
end
