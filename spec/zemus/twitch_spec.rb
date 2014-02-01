require_relative('../spec_helper')
 
describe Zemus::Twitch do
  it "embeds vimeo" do
    Zemus::Twitch.new("http://www.twitch.tv/awesomeguy").to_embed.
      should eq("<div class='zemusflashembed'><object type='application/x-shockwave-flash' height='378' id='live_embed_player_flash' data='http://www.twitch.tv/widgets/live_embed_player.swf?channel=awesomeguy'><param name='allowFullScreen' value='true' /><param name='allowScriptAccess' value='always' /><param name='allowNetworking' value='all' /><param name='movie' value='http://www.twitch.tv/widgets/live_embed_player.swf' /><param name='flashvars' value='hostname=www.twitch.tv&channel=awesomeguy&auto_play=true&start_volume=25' /></object></div>
        <div class='zemusnoflash'><a href='http://www.twitch.tv/awesomeguy'>Your browser cannot display this embedded Twitch stream</a></div>")
  end
end