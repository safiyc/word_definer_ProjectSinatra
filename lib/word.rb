class Word
  @@words = []

  attr_reader :word
  def initialize (attributes)
    @word = attributes.fetch(:word)
  end

  def save
    @@words.push(self)
  end

  def self.all
    @@words
  end

  def self.clear
    @@words = []
  end
end
