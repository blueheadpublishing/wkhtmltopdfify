require 'wkhtmltopdfify'

describe Wkhtmltopdfify do

  class DummyClass
  end

  before(:each) do
    @dummy_class = DummyClass.new
    @dummy_class.extend(Wkhtmltopdfify)
  end

  its "executable should match the os" do
    @dummy_class.determine_os_executable('darwin')
    executable.should == "darwin"
  end


end

