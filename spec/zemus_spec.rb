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

end