class Word

  attr_accessor :word
  def initialize (attributes)
    @word = attributes.fetch(:word)
  end
end
