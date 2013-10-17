require_relative('../spec_helper')
 
describe Zemus::Sound do
  it "embeds sound" do
    Zemus::Sound.new("http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3").to_embed.
      should eq("<audio controls='controls' class='media-object'><source src='http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3' type='audio/mpeg' /></audio><div><a href='http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3' target='_blank' class='img-thumbnail' download='bsc_E001.mp3'><i class='glyphicon glyphicon-music'></i> Download this podcast.</a></div>")
  end
end