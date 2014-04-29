class Document
  attr_reader :author
  # attr_writer :author
  def initialize( author )
    @author = author
  end
end

doc = Document.new("foo")
# doc.author = 123
puts doc.author