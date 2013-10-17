require_relative('../spec_helper')
 
describe Zemus::Image do
  it "embeds images" do
    Zemus::Image.new.to_embed("http://google.com/image.gif").
      should eq("<img src='http://google.com/image.gif' class='img-responsive img-thumbnail' />")
  end
end