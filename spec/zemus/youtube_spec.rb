require_relative('../spec_helper')

describe Zemus::Youtube do
  it "embeds youtube" do
    Zemus::Youtube.new("youtube.com/watch?v=Ai7pMPCDHpo").to_embed.
      should eq("<iframe width='100%' height='600px' src='https://www.youtube.com/embed/Ai7pMPCDHpo?wmode=opaque' frameborder='0' allowfullscreen></iframe>")
  end

  it "get youtube embed image" do
    Zemus::Youtube.new("youtube.com/watch?v=Ai7pMPCDHpo").
      to_embed_image.should eq("http://img.youtube.com/vi/Ai7pMPCDHpo/hqdefault.jpg")
  end
end
