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

ActiveRecord::Schema.define(version: 20150221191058) do

  create_table "images", force: :cascade do |t|
    t.integer  "template_id"
    t.string   "name"
    t.integer  "size"
    t.integer  "width"
    t.string   "content_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pages", force: :cascade do |t|
    t.text     "css"
    t.text     "js"
    t.text     "html"
    t.integer  "template_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pages", ["template_id"], name: "index_pages_on_template_id"
  add_index "pages", ["user_id"], name: "index_pages_on_user_id"

  create_table "templates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "html"
    t.text     "css"
    t.text     "js"
  end

  create_table "texts", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "template_id"
  end

end
