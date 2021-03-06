module Zemus
  class Soundcloud

    def self.valid?(url)
      url =~ /soundcloud.com/
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      "<iframe autosize='false' width='100%' height='166px' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=#{@url}'></iframe>"
    end

  end
end