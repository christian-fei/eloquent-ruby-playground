class Printer
  attr_accessor :available
  attr_reader :last_print

  def initialize(doc)
    @doc = doc
    @available = true
    @last_print = nil
  end

  def print
    @available = false
    @last_print = Array.new
    @doc.words.each do |word|
      self.render word
    end
    @available = true;
    'document printed'
  end

  def render word
    puts word
    @last_print.push word
    sleep 0.3
  end

  def available?
    @available
  end
end