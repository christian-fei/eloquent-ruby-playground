# 'Document' is a class that represent a book.
# You can defined the title, author and if you want the whole content
class Document
  attr_accessor :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end
  def words
    @content.split
  end
  def word_count
    words.size
  end
end

doc = Document.new('Hamlet','Shakespeare','To be or...')

puts doc
puts doc.title
puts doc.author
puts doc.content
puts doc.words
puts doc.word_count
