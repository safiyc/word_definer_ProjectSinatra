require './lib/definition'

class Word
  @@words = []
  attr_reader :id
  attr_accessor :word, :definition

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @definition = Definition.new
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

  def self.find(id)
    word_id = id.to_i()
    @@words.each do |word|
      if word.id == word_id
        return word
      end
    end
  end
end
