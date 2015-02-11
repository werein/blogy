class CreateBlogyPostTranslations < ActiveRecord::Migration
  def change
    create_table :blogy_post_translations do |t|
      t.references :blogy_post, index: true
      t.string :locale
      t.string :title
      t.string :slug
      t.text :text

      t.timestamps null: false
    end
    add_index :blogy_post_translations, :locale
    add_index :blogy_post_translations, :slug
  end
end
