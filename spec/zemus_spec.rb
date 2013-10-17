require_relative('./spec_helper')
 
describe Zemus do

  it "accepts test for images" do
    url = "www.google.com/sample.gif"
    Zemus.embed(url).should == "<img src='www.google.com/sample.gif' class='img-responsive img-thumbnail' />"
  
    url = 'http://play-mario-onlne.com/old-school-mario.png'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.png' class='img-responsive img-thumbnail' />"

    url = 'http://play-mario-onlne.com/old-school-mario.jpg'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.jpg' class='img-responsive img-thumbnail' />"

    url = 'http://play-mario-onlne.com/old-school-mario.jpeg'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.jpeg' class='img-responsive img-thumbnail' />"
  
    url = 'http://play-mario-onlne.com/old-school-mario.GIF'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.GIF' class='img-responsive img-thumbnail' />"
  end

  it "acceptance tests for (kick start) starter" do
    [
      "youtube.com/watch?v=Ai7pMPCDHpo", "youtu.be/Ai7pMPCDHpo",
      "youtube.com/embed/Ai7pMPCDHpo", "youtube.com/watch?feature=player_embedded&v=Ai7pMPCDHpo",
      "youtube.com/watch?v=Ai7pMPCDHpo&feature=player_embedded",
      "youtube.com/watch?v=Ai7pMPCDHpo&feature=youtu.be&hd", "m.youtube.com/#/watch?client=mv-google&gl=US&v=Ai7pMPCDHpo&oref=http%3A%2F%2Fm.youtube.com%2F"
    ].each do |url_format|
      [ "", "http://", "http://www.", "https://", "https://www." ].each do |subdomain|
        url = "#{subdomain}#{url_format}"

        Zemus.embed(url).should eq("<iframe width='100%' height='' src='http://www.youtube.com/embed/Ai7pMPCDHpo?wmode=opaque' frameborder='0' allowfullscreen></iframe>")
      end
    end
  end

end