module Zemus
  class Soundcloud

    def valid?(url)
      url =~ /soundcloud.com/
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      "<iframe autosize='false' width='100%' height='166' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=#{@url}'></iframe>"
    end

  end
end