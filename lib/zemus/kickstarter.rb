module Zemus
  class Kickstarter

    def self.valid?(url)
      url =~ /kickstarter.com\/projects\//
    end

    def initialize(url)
      @url = url
    end

    def url
      "http://www.kickstarter.com/projects/#{kickstarter_id}"
    end

    def to_embed
      embed = "<iframe width='100%' height='600px' scrolling='no' src='http://www.kickstarter.com/projects/#{kickstarter_id}/widget/video.html' frameborder='0'> </iframe>"
      embed += "<a href='#{url}' target='_blank' class='btn btn-default btn-xs'><i class='glyphicon glyphicon-heart'></i> Back this on Kickstarter!</a>"

      embed
    end

    def kickstarter_id
      id = @url.split("kickstarter.com/projects/").last.split("?").first
      id.gsub("#", "")
    end
  end
end