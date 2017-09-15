class Word
  @@words = []

  attr_accessor :word
  def initialize (attributes)
    @word = attributes.fetch(:word)
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end
end
