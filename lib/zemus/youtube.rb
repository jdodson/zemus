module Zemus
  class Youtube

    def initialize(url)
      @url = url
    end

    def to_embed
      "<iframe width='100%' height='' src='http://www.youtube.com/embed/#{youtube_id}?wmode=opaque' frameborder='0' allowfullscreen></iframe>"
    end

    def youtube_id
      id = ''

      url = @url.gsub("&feature=player_embedded", "")
      
      if url =~ /\?v=/
        id = url.split('?v=').last.split("&").first
      elsif url =~ /&v=/
        id = url.split('&v=').last.split("&").first
      else
        id = url.split('/').last.split("&").first
      end
      
      id
    end

  end
end