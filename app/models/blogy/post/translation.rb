module Blogy
  class Post::Translation < ActiveRecord::Base
    extend Enumerize
    enumerize :storage, in: [:text, :document, :remote]
    enumerize :format, in: [:plain, :html, :markdown]

    validates :storage, :format, presence: true

    def content
      formated
    end

    def formated
      case format.to_sym
      when :plain, :html
        value
      when :markdown
        markdown
      end
    end

    def value
      case storage.to_sym
      when :text
        text
      when :document
        # TODO
        # document.file.read if document?
      when :remote
        open(remote).read if remote?
      end
    end

    private
      def markdown
        Kramdown::Document.new(value.force_encoding('UTF-8'), input: 'GFM').to_html
      end
  end
end
