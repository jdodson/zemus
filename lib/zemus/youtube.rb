module Zemus
  class Youtube

    def self.valid?(url)
      [ /^http(s?):\/\/youtube.com/, /^http(s?):\/\/www.youtube.com/, /^http(s?):\/\/www.m.youtube.com/,
        /^http(s?):\/\/m.youtube.com/, /^http(s?)(s?):\/\/youtu.be/, /^http(s?):\/\/www.youtu.be/,
        /^m.youtube.com/, /^youtu.be/, /^youtube.com/ ].map do |link_style|
          url =~ link_style
        end.any?
    end

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