require_relative('../spec_helper')
 
describe Zemus::Youtube do
  it "embeds youtube" do
    Zemus::Youtube.new("youtube.com/watch?v=Ai7pMPCDHpo").to_embed.
      should eq("<iframe width='100%' height='' src='http://www.youtube.com/embed/Ai7pMPCDHpo?wmode=opaque' frameborder='0' allowfullscreen></iframe>")
  end
end