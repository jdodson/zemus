require_relative('../spec_helper')
 
describe Zemus::Kickstarter do
  it "embeds kickstarter" do
    Zemus::Vimeo.new("http://vimeo.com/21929292").to_embed.
      should eq("<iframe src='http://player.vimeo.com/video/21929292' width='100%' height='' frameborder='0'></iframe>")
  end
end