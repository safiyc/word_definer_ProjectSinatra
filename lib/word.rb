class Word
  @@words = []
  attr_reader :id
  attr_accessor :word

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @id = @@words.length + 1
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
