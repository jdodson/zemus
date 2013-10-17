module Zemus
  class Parser
    def self.build_embedder(url)
      if url.match(/youtube/)
        Zemus::Youtube.new
      else
        Zemus::Kickstarter.new
      end
    end
  end
end