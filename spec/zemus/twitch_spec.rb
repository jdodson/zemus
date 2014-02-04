require_relative('../spec_helper')
 
describe Zemus::Twitch do
  it "embeds twitch stream" do
    Zemus::Twitch.new("http://www.twitch.tv/awesomeguy").to_embed.
      should eq("<div class='zemusflashembed'><object type='application/x-shockwave-flash' height='378' id='live_embed_player_flash' data='http://www.twitch.tv/widgets/live_embed_player.swf?channel=awesomeguy'><param name='allowFullScreen' value='true' /><param name='allowScriptAccess' value='always' /><param name='allowNetworking' value='all' /><param name='movie' value='http://www.twitch.tv/widgets/live_embed_player.swf' /><param name='flashvars' value='hostname=www.twitch.tv&channel=awesomeguy&auto_play=true&start_volume=25' /></object></div>
        <div class='zemusnoflash'><a href='http://www.twitch.tv/awesomeguy'>Your browser cannot display this embedded Twitch stream</a></div>")
  end
  
  it "embeds twitch /b/" do
    Zemus::Twitch.new("http://www.twitch.tv/awesomeguy/b/123456789").to_embed.
      should eq("<div class='zemusflashembed'><object data='http://www.twitch.tv/widgets/archive_embed_player.swf' height='378' id='clip_embed_player_flash' type='application/x-shockwave-flash' ><param name='movie' value='http://www.twitch.tv/widgets/archive_embed_player.swf'><param name='allowScriptAccess' value='always'><param name='allowNetworking' value='all'><param name='allowFullScreen' value='true'><param name='flashvars' value='channel=awesomeguy&amp;auto_play=false&amp;start_volume=25&amp;archive_id=123456789'></object></div>
        <div class='zemusnoflash'><a href='http://www.twitch.tv/awesomeguy/b/123456789'>Your browser cannot display this embedded Twitch video</a></div>")
  end
  
  it "embeds twitch /c/" do
    Zemus::Twitch.new("http://www.twitch.tv/awesomeguy/c/123456789").to_embed.
      should eq("<div class='zemusflashembed'><object data='http://www.twitch.tv/widgets/archive_embed_player.swf' height='378' id='clip_embed_player_flash' type='application/x-shockwave-flash' ><param name='movie' value='http://www.twitch.tv/widgets/archive_embed_player.swf'><param name='allowScriptAccess' value='always'><param name='allowNetworking' value='all'><param name='allowFullScreen' value='true'><param name='flashvars' value='channel=awesomeguy&amp;auto_play=false&amp;start_volume=25&amp;chapter_id=123456789'></object></div>
        <div class='zemusnoflash'><a href='http://www.twitch.tv/awesomeguy/c/123456789'>Your browser cannot display this embedded Twitch video</a></div>")
  end
end