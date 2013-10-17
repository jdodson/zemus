module Zemus
  class Image

    def initialize(url)
      @url = url
    end

    def to_embed
      "<img src='#{@url}' class='img-responsive img-thumbnail' />"
    end

  end
end