path = File.expand_path('../zemus', __FILE__)
Dir.glob(File.join(path, "/**/*.rb")).each { |f| require f }

module Zemus
  
  # This merely creates an empty engine to serve the assets
  module Rails
    class Engine < ::Rails::Engine
    end
  end

  def self.embed(url)
    Zemus::Parser.build_embedder(url).to_embed
  end


end
