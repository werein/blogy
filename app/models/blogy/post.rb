module Blogy
  class Post < ActiveRecord::Base
    
    # Translations
    has_many :translations, class_name: 'Blogy::Post::Translation', foreign_key: :blogy_post_id
    validates :translations, presence: :true
    accepts_nested_attributes_for :translations, allow_destroy: true
    delegate :locale, :slug, :title, :text, :content, to: :translation
    delegate :locale=, :slug=, :title=, :text=, to: :translation

    def translation locale = I18n.locale
      @translation ||= translations.find_or_initialize_by(locale: locale)
    end
  end
end
