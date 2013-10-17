module Zemus
  class Parser
    def self.build_embedder(url)
      if url.match(/youtube/)
        Zemus::Youtube.new(url)
      else
        Zemus::Kickstarter.new(url)
      end
    end
  end
end