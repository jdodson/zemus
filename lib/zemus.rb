require_relative "zemus/version"
require_relative "zemus/parser"
require_relative "zemus/youtube"
require_relative "zemus/kickstarter"


module Zemus
  
  def self.embed(url)
    Zemus::Parser.build_embedder(url).to_embed
  end


end
