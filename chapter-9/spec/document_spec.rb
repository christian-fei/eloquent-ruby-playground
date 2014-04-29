require_relative '../document'

describe Document do

  before :each do
    @initial_author = 'charles d.'
    @initial_title = 'christmas carol'
    @initial_content = 'just some content'
    @doc = Document.new(@initial_author,@initial_title,@initial_content);
  end

  it 'should hold on to its content' do
    @doc.content.should == @initial_content
  end

  it 'should be able to change the content' do
    new_content = 'text'
    @doc.content= new_content
    @doc.content.should == new_content
  end

  it 'shouldn\'t allow to change the author or title' do
    expect { @doc.author= 'test author' }.to raise_error
    expect { @doc.title= 'test title' }.to raise_error
    @doc.author.should == @initial_author
    @doc.title.should == @initial_title
  end

  it 'should return an array of words' do
    @doc.words.should == @doc.content.split
  end

  it 'should return the number of words' do
    @doc.word_count.should == @initial_content.split.size
  end

  it 'should know which words it has' do
    # just to test include
    @initial_content.split.each do |word|
      @doc.content.should include(word)
    end
  end

end