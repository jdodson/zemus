module Zemus
  class Kickstarter

    def self.valid?(url)
      url =~ /kickstarter.com\/projects\//
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      embed = "<iframe width='100%' height='600' scrolling='no' src='http://www.kickstarter.com/projects/#{kickstarter_id}/widget/video.html' frameborder='0'> </iframe>"
      embed += "<a href='#{@url}' target='_blank' class='btn btn-default btn-xs'><i class='glyphicon glyphicon-heart'></i> Back this on Kickstarter!</a>"

      embed
    end

    def kickstarter_id
      @url.split("kickstarter.com/projects/").last.split("?").first
    end
  end
end