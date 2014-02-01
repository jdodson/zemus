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
        "<div class='zemusflashembed'><object data='http://www.twitch.tv/widgets/archive_embed_player.swf' height='378' id='clip_embed_player_flash' type='application/x-shockwave-flash' ><param name='movie' value='http://www.twitch.tv/widgets/archive_embed_player.swf'><param name='allowScriptAccess' value='always'><param name='allowNetworking' value='all'><param name='allowFullScreen' value='true'><param name='flashvars' value='channel=#{chan}&amp;auto_play=false&amp;start_volume=25&amp;archive_id=#{id}'></object></div>
        <div class='zemusnoflash'><a href='#{@url}'>Your browser cannot display this embedded Twitch video</a></div>"
        
      elsif  @url.split('/').fifth == "c"
        chan = @url.split('/').fourth
        "<div class='zemusflashembed'><object data='http://www.twitch.tv/widgets/archive_embed_player.swf' height='378' id='clip_embed_player_flash' type='application/x-shockwave-flash' ><param name='movie' value='http://www.twitch.tv/widgets/archive_embed_player.swf'><param name='allowScriptAccess' value='always'><param name='allowNetworking' value='all'><param name='allowFullScreen' value='true'><param name='flashvars' value='channel=#{chan}&amp;auto_play=false&amp;start_volume=25&amp;chapter_id=#{id}'></object></div>
        <div class='zemusnoflash'><a href='#{@url}'>Your browser cannot display this embedded Twitch video</a></div>"
      else 
        chan = @url.split('/').fourth
        "<div class='zemusflashembed'><object type='application/x-shockwave-flash' height='378' id='live_embed_player_flash' data='http://www.twitch.tv/widgets/live_embed_player.swf?channel=#{chan}'><param name='allowFullScreen' value='true' /><param name='allowScriptAccess' value='always' /><param name='allowNetworking' value='all' /><param name='movie' value='http://www.twitch.tv/widgets/live_embed_player.swf' /><param name='flashvars' value='hostname=www.twitch.tv&channel=#{chan}&auto_play=true&start_volume=25' /></object></div>
        <div class='zemusnoflash'><a href='#{@url}'>Your browser cannot display this embedded Twitch stream</a></div>"
      end
      
    end

  end
end
