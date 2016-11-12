module Zemus
  class Generic

    def self.valid?(url)
      true
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      url = @url

      display = url
      if display.length > 40
        display = "#{display[0,40]}.."
      end

      "<a href='#{url}' target='_blank'>#{display}</a>"
    end
  end
end
