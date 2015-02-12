class CreateBlogyPosts < ActiveRecord::Migration
  def change
    create_table :blogy_posts do |t|
      t.boolean :published
      t.boolean :draft
      t.string :ilustration
      t.string :ilustration_tmp

      t.timestamps null: false
    end
  end
end
