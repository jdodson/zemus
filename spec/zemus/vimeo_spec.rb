require_relative('../spec_helper')

describe Zemus::Vimeo do
  it "embeds vimeo" do
    Zemus::Vimeo.new("http://vimeo.com/21929292").to_embed.
      should eq("<iframe src='https://player.vimeo.com/video/21929292' width='100%' height='600px' frameborder='0'></iframe>")
  end
end
