require_relative('../spec_helper')
 
describe Zemus::Image do
  it "embeds images" do
    url = "http://google.com/image.gif"
    Zemus::Image.new(url).to_embed.
      should eq("<img src='http://google.com/image.gif' class='img-responsive img-thumbnail' alt='http://google.com/image.gif' />")
  end

end
