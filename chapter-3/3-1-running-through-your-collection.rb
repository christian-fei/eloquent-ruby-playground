class Document
  attr_accessor :author,:content

  def initialize( author, content)
    @author = author
    @content = content
  end

  def word_length_map
    content.split(" ").map {
      |word|
      word.size
    }
  end

  def map_average_word_length
    tot = 0.0
    words = content.split(" ")
    words.map {
      |word|
      tot += word.size
    }
    tot / words.size
  end

  def inject_average_word_length
    words = content.split(" ")
    tot = words.inject(0.0) {
      |result, word|
      result + word.size
    }
    tot / words.size
  end
end

doc = Document.new "shakespeare", "just some content"
puts doc.word_length_map
puts doc.map_average_word_length
puts doc.inject_average_word_length