module Zemus
  class Parser
    
    def self.url_classes
      [Image, Kickstarter, Sound, Soundcloud, Vimeo,
      Vine, Youtube]
    end

    def self.build_embedder(url)
      url_classes.each do |klass|
        if klass.valid?(url)
          return klass.new(url)
        end
      end
      Generic.new(url)
    end
  end
end