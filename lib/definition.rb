class Word_Definition
#   @@definitions = []
  attr_accessor :definition

  def initialize (attributes)
    @definition = attributes.fetch(:definition)
  end
#
#   def save
#     @@definitions.push(self)
#   end
#
#   def self.all
#     @@definitions
#   end
#
#   def self.clear
#     @@definitions = []
#   end
end
