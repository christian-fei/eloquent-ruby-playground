class Document
  attr_accessor :content
  attr_reader :title,:author

  def initialize(author,title,content)
    @author= author
    @title= title
    @content= content
  end

  def is_longer_than?( number_of_characters )
    @content.size > number_of_characters
  end

  def words
    @content.split
  end

  def word_count
    self.words.size
  end
end