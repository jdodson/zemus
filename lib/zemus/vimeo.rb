module Zemus
  class Vimeo

    def self.valid?(url)
      url =~ /vimeo.com/
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      id = @url.split('/').last

      "<iframe src='http://player.vimeo.com/video/#{id}' width='100%' height='600px' frameborder='0'></iframe>"
    end

  end
end