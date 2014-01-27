module Zemus
  class Image

    def self.valid?(url)
      url.downcase =~ /\.jpg/ || url.downcase =~ /\.jpeg/ || 
      url.downcase =~ /\.png/ || url.downcase =~ /\.gif/
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      "<img src='#{@url}' class='img-responsive img-thumbnail' alt='#{@url}' />"
    end

  end
end
