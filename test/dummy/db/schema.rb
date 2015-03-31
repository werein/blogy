# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150216204624) do

  create_table "blogy_post_translations", force: :cascade do |t|
    t.integer  "blogy_post_id"
    t.string   "locale"
    t.string   "title"
    t.string   "slug"
    t.text     "text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "document"
    t.string   "document_tmp"
    t.string   "remote"
    t.string   "storage"
    t.string   "format"
  end

  add_index "blogy_post_translations", ["blogy_post_id"], name: "index_blogy_post_translations_on_blogy_post_id"
  add_index "blogy_post_translations", ["locale"], name: "index_blogy_post_translations_on_locale"
  add_index "blogy_post_translations", ["slug"], name: "index_blogy_post_translations_on_slug"

  create_table "blogy_posts", force: :cascade do |t|
    t.boolean  "published"
    t.boolean  "draft"
    t.string   "ilustration"
    t.string   "ilustration_tmp"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
