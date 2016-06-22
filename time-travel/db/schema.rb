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

ActiveRecord::Schema.define(version: 20160622203942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "period_posts", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "period_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "period_posts", ["period_id"], name: "index_period_posts_on_period_id", using: :btree
  add_index "period_posts", ["post_id"], name: "index_period_posts_on_post_id", using: :btree

  create_table "periods", force: :cascade do |t|
    t.string   "name"
    t.date     "start_time"
    t.date     "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "image"
    t.string   "description"
  end

  add_index "periods", ["user_id"], name: "index_periods_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "post_date"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "period_posts", "periods"
  add_foreign_key "period_posts", "posts"
  add_foreign_key "periods", "users"
  add_foreign_key "posts", "users"
end
