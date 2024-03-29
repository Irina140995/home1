# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_07_152146) do
  create_table "api_tokens", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "active"
    t.text "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_api_tokens_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "short_description"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "publish_at"
    t.integer "user_id"
    t.integer "likes_article", default: 0
  end

  create_table "articles_coments", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "coment_id", null: false
  end

  create_table "coments", force: :cascade do |t|
    t.string "author"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "article_id"
    t.integer "user_id"
    t.index ["article_id"], name: "index_coments_on_article_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "article_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "api_tokens", "users"
end
