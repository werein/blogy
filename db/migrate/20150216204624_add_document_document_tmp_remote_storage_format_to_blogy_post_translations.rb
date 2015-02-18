class AddDocumentDocumentTmpRemoteStorageFormatToBlogyPostTranslations < ActiveRecord::Migration
  def change
    add_column :blogy_post_translations, :document, :string
    add_column :blogy_post_translations, :document_tmp, :string
    add_column :blogy_post_translations, :remote, :string
    add_column :blogy_post_translations, :storage, :string
    add_column :blogy_post_translations, :format, :string
  end
end
