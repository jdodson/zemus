module Zemus
  class Twitch

    def self.valid?(url)
      url =~ /www.twitch.tv/
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      id = @url.split('/').last
      if     @url.split('/').fifth == "b"
        chan = @url.split('/').fourth
        "<div class='zemusflashembed' style='display:none;'><object bgcolor='#000000' data='http://www.twitch.tv/widgets/archive_embed_player.swf' height='378' id='clip_embed_player_flash' type='application/x-shockwave-flash' width='620'><param name='movie' value='http://www.twitch.tv/widgets/archive_embed_player.swf'><param name='allowScriptAccess' value='always'><param name='allowNetworking' value='all'><param name='allowFullScreen' value='true'><param name='flashvars' value='channel=#{chan}&amp;auto_play=false&amp;start_volume=25&amp;archive_id=#{id}'></object><br><a href='http://www.twitch.tv/#{chan}' class='trk' style='padding:2px 0px 4px; display:block; width: 320px; font-weight:normal; font-size:10px; text-decoration:underline; text-align:center;'>Watch live video from #{chan} on TwitchTV</a></div>
        <div class='zemusnoflash' style='display:none;'>Your browser cannot display this embedded Twitch stream.</div>"
        
      elsif  @url.split('/').fifth == "c"
        chan = @url.split('/').fourth
        "<div class='zemusflashembed' style='display:none;'><object data='http://www.twitch.tv/widgets/archive_embed_player.swf'  id='clip_embed_player_flash' type='application/x-shockwave-flash'><param name='movie' value='http://www.twitch.tv/widgets/archive_embed_player.swf'><param name='allowScriptAccess' value='always'><param name='allowNetworking' value='all'><param name='allowFullScreen' value='true'><param name='flashvars' value='channel=#{chan}&amp;auto_play=false&amp;start_volume=25&amp;chapter_id=#{id}'></object><br><a href='http://www.twitch.tv/#{chan}' class='trk' style='padding:2px 0px 4px; display:block; width: 320px; font-weight:normal; font-size:10px; text-decoration:underline; text-align:center;'>Watch live video from #{chan} on TwitchTV</a></div>
        <div class='zemusnoflash' style='display:none;'>Your browser cannot display this embedded Twitch stream.</div>"
      else 
        chan = @url.split('/').fourth
        "<object type='application/x-shockwave-flash' height='378' width='620' id='live_embed_player_flash' data='http://www.twitch.tv/widgets/live_embed_player.swf?channel=kneecoleslaw' bgcolor='#000000'><param name='allowFullScreen' value='true' /><param name='allowScriptAccess' value='always' /><param name='allowNetworking' value='all' /><param name='movie' value='http://www.twitch.tv/widgets/live_embed_player.swf' /><param name='flashvars' value='hostname=www.twitch.tv&channel=#{chan}&auto_play=true&start_volume=25' /></object><a href='http://www.twitch.tv/#{chan}' style='padding:2px 0px 4px; display:block; width:345px; font-weight:normal; font-size:10px;text-decoration:underline; text-align:center;'>Watch live video from #{chan} on www.twitch.tv</a>"
      end
      
    end

  end
end
