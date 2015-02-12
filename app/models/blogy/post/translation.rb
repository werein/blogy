module Blogy
  class Post::Translation < ActiveRecord::Base
    def content
      text
    end
  end
end
