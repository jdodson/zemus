module Zemus
  class Image

    def to_embed url
      "<img src='#{url}' class='img-responsive img-thumbnail' />"
    end

  end
end