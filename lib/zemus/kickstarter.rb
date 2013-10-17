module Zemus
  class Kickstarter

    def to_embed(url)
      embed = "<iframe width='100%' height='' scrolling='no' src='http://www.kickstarter.com/projects/#{kickstarter_id(url)}/widget/video.html' frameborder='0'> </iframe>"
      embed += "<a href='#{url}' target='_blank' class='btn btn-default btn-xs'><i class='glyphicon glyphicon-heart'></i> Back this on Kickstarter!</a>"

      embed
    end

    def kickstarter_id(url)
      url.split("kickstarter.com/projects/").last.split("?").first
    end
  end
end