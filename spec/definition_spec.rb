#
  #
  # describe("#save") do
  #   it("checks for the value of the instance 'define' of the class 'Definition', which is an instance 'definition' of class 'Word'") do
  #     Word.clear
  #     word1 = Word.new({:word=> "Answer"})
  #     word1.definition.define = "The solution to a problem"
  #     word1.definition.save
  #     word2 = Word.new({:word=> "Brake"})
  #     word2.definition.define = "To stop"
  #     word2.definition.save
  #     expect(word1.definition.define).to(eq("The solution to a problem"))
  #     expect(word2.definition.define).to(eq("To stop"))
  #   end
  # end
  #
  # describe(".clear") do
  #   it("clears words and definitions") do
  #     word1 = Word.new({:word=> "Answer"})
  #     word1.definition.define = "The solution to a problem"
  #     word1.definition.save
  #     word2 = Word.new({:word=> "Brake"})
  #     word2.definition.define = "To stop"
  #     word2.definition.save
  #     Word.clear
  #     expect(word1.definition.define).to(eq(""))
  #     expect(word2.definition.define).to(eq(""))
  #   end
  # end
# end
