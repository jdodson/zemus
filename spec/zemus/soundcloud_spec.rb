require_relative('../spec_helper')
 
describe Zemus::Soundcloud do
  it "embeds soundcloud" do
    Zemus::Soundcloud.new("https://soundcloud.com/destructoid/super-mario-world-by-video").to_embed.
      should eq("<iframe autosize='false' width='100%' height='166' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https://soundcloud.com/destructoid/super-mario-world-by-video'></iframe>")
  end
end