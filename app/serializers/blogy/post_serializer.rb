module Blogy
  class PostSerializer < ActiveModel::Serializer
    attributes :id, :published, :draft, :ilustration, :title, :locale, :slug, :text, :content, :created_at, :updated_at
  end
end
