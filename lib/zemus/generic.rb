module Zemus
  class Generic   
    
    def self.valid?(url)
      true
    end

    def initialize(url)
      @url = url
    end

    def to_embed
      "<a href = #{@url}>#{@url}</a>"
    end
  end
end