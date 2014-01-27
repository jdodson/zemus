require_relative('./spec_helper')
 
describe Zemus do

  it "accepts test for images" do
    url = "www.google.com/sample.gif"
    Zemus.embed(url).should == "<img src='www.google.com/sample.gif' class='img-responsive img-thumbnail' alt='www.google.com/sample.gif' />"
  
    url = 'http://play-mario-onlne.com/old-school-mario.png'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.png' class='img-responsive img-thumbnail' alt='http://play-mario-onlne.com/old-school-mario.png' />"

    url = 'http://play-mario-onlne.com/old-school-mario.jpg'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.jpg' class='img-responsive img-thumbnail' alt='http://play-mario-onlne.com/old-school-mario.jpg' />"

    url = 'http://play-mario-onlne.com/old-school-mario.jpeg'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.jpeg' class='img-responsive img-thumbnail' alt='http://play-mario-onlne.com/old-school-mario.jpeg' />"
  
    url = 'http://play-mario-onlne.com/old-school-mario.GIF'
    Zemus.embed(url).should == "<img src='http://play-mario-onlne.com/old-school-mario.GIF' class='img-responsive img-thumbnail' alt='http://play-mario-onlne.com/old-school-mario.GIF' />"
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

        Zemus.embed(url).should eq("<iframe width='100%' height='600px' src='http://www.youtube.com/embed/Ai7pMPCDHpo?wmode=opaque' frameborder='0' allowfullscreen></iframe>")
      end
    end
  end

  it "acceptance tests for sound" do
    url = "http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3"

    Zemus.embed(url).should eq("<audio controls='controls' class='media-object'><source src='http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3' type='audio/mpeg' /></audio><div><a href='http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3' target='_blank' class='img-thumbnail' download='bsc_E001.mp3'><i class='glyphicon glyphicon-music'></i> Download this podcast.</a></div>")
  end

  it "acceptance test for sound-claus" do
    url = "https://soundcloud.com/destructoid/super-mario-world-by-video"
  
    Zemus.embed(url).should eq("<iframe autosize='false' width='100%' height='166px' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https://soundcloud.com/destructoid/super-mario-world-by-video'></iframe>")
  end

  it "acceptance test for vimeo" do
    url = "http://vimeo.com/21929292"

    Zemus.embed(url).should eq("<iframe src='http://player.vimeo.com/video/21929292' width='100%' height='600px' frameborder='0'></iframe>")
  end

  it "acceptance test for vine" do
    url = "https://vine.co/v/bFPjjheVnau/embed/simple"

    Zemus.embed(url).should eq("<iframe class='vine-embed' src='https://vine.co/v/bFPjjheVnau/embed/simple' width='100%' height='600px' frameborder='0'></iframe><script async src='//platform.vine.co/static/scripts/embed.js' charset='utf-8'></script>")
  end

  it "acceptance test for the generic fallback" do
    url = "http://google.com/asdfhjklkjsdf/43123123/32124lkjklj123123/foo.html"

    Zemus.embed(url).should eq("<a href='http://google.com/asdfhjklkjsdf/43123123/32124lkjklj123123/foo.html' target='_blank'>http://google.com/asdfhjklkjsdf/43123123..</a>")
  end
end