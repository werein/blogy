module Blogy
  class Post < ActiveRecord::Base
    
    # Translations
    has_many :translations, class_name: 'Blogy::Post::Translation', foreign_key: :blogy_post_id, autosave: true
    validates :translations, presence: :true
    accepts_nested_attributes_for :translations, allow_destroy: true
    delegate :locale, :slug, :title, :text, :storage, :format, :content, to: :translation
    delegate :locale=, :slug=, :title=, :text=, :storage=, :format=, to: :translation

    def translation locale = I18n.locale
      translations.detect{|t| t.locale.to_s == locale.to_s} || translations.build(locale: locale)
    end
  end
end
