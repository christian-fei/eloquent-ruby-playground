class Document
  attr_reader :title,:author,:content
  def initialize(title,author,content)
    @title=title
    @author=author
    @content=content
  end
end


class GoogleDocument < Document
  attr_reader :url
  def initialize(title,author,content)
    super(title,author,content)
    random_char_from_property(@title);
    @url = random_char_from_property(@title) + random_char_from_property(@author) + random_char_from_property(@content)
  end

  def random_char_from_property(prop)
    prop[Random.rand(0..prop.size-1)]
  end
end

gdoc = GoogleDocument.new('shakespeare','ode to shit','some words')
puts gdoc.url