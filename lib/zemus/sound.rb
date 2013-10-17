module Zemus
  class Sound

    def initialize(url)
      @url = url
    end

    def to_embed
      filename = @url.split("/").last

      embed = "<audio controls='controls' class='media-object'>"
      embed += "<source src='#{@url}' type='audio/mpeg' />"
      embed += "</audio>"
      embed += "<div><a href='#{@url}' target='_blank' class='img-thumbnail' download='#{filename}'><i class='glyphicon glyphicon-music'></i> Download this podcast.</a></div>"

      embed
    end

  end
end