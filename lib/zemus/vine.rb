module Zemus
  class Vine

    def initialize(url)
      @url = url
    end

    def to_embed
      "<iframe class='vine-embed' src='https://vine.co/v/#{vine_id}/embed/simple' width='100%' height='' frameborder='0'></iframe><script async src='//platform.vine.co/static/scripts/embed.js' charset='utf-8'></script>"
    end

    def vine_id
      @url.split("/v").last.split("/")[1]
    end

  end
end