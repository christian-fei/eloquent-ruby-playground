require_relative '../printer'
require_relative '../document'

describe Printer do
  before :each do
    @initial_author = 'charles d.'
    @initial_title = 'christmas carol'
    @initial_content = 'some content'

    @doc = Document.new(@initial_author,@initial_title,@initial_content);
    @printer = Printer.new(@doc)

    @printer_double = double('Printer', :print => 'document printed') #mock, now called double
  end

  it 'should not be able to access the doc property' do
    expect { @printer.doc }.to raise_error
  end

  it 'should be available' do
    @printer.available?.should == true
  end

  it 'should print a document' do
    @printer.print
    @printer.last_print.should == @initial_content.split
  end
  
  it 'should render a document [double]' do
    # allow( @printer_double ).to receive(:render)
    @printer_double.print.should == 'document printed'
    expect( @printer_double ).to have_received(:print)
  end

end