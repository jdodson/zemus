module Zemus
  class Parser
    
    def self.url_classes
      zemus_js_dir = 'app/assets/javascripts/zemus.js'
      if File.exist?(zemus_js_dir)
        [Image, Kickstarter, Sound, Soundcloud, Vimeo,
         Vine, Youtube, Twitch]
      else
         [Image, Kickstarter, Sound, Soundcloud, Vimeo,
          Vine, Youtube]
      end
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
