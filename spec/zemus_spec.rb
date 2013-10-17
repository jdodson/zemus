require_relative('./spec_helper')
 
describe Zemus do

  it "generates embed code for an image" do
    url = "www.google.com/sample.gif"
    Zemus.embed(url).should == "<img src='www.google.com/sample.gif' class='img-responsive img-thumbnail' />"
  end

end