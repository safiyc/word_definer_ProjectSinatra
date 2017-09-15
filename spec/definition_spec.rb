require 'rspec'
require 'definition'
require 'pry'

describe("#Definition") do
  describe("#define") do
    it("checks for the value of the instance 'define' of the class 'Definition', which is an instance 'definition' of class 'Word'") do
      word1 = Word.new({:word=> "Answer"})
      word1.definition.define = "The solution to a problem"
      expect(word1.definition.define).to(eq("The solution to a problem"))
    end
  end

  describe("#save") do
    it("checks for the value of the instance 'define' of the class 'Definition', which is an instance 'definition' of class 'Word'") do
      word1 = Word.new({:word=> "Answer"})
      word1.definition.define = "The solution to a problem"
      word1.save
      word2 = Word.new({:word=> "Brake"})
      word2.definition.define = "To stop"
      word2.save
      expect(word1.definition.define).to(eq("The solution to a problem"))
      expect(word2.definition.define).to(eq("To stop"))
    end
  end
end
