class Document
  attr_accessor :writable
  attr_reader :title, :author, :content

  def title=(new_title)
    if @writable
      @title = new_title
    end
    #or
    unless @read_only
      @title = new_title
    end
  end
end

doc = Document.new
doc.title= "test"
puts doc.title

# while's doppelgaenger is until
#
# while !document.is_printed?
#   document.print_next_page
# end
#
# use the until control structure
# until document.is_printed?
#   document.print_next_page
# end
