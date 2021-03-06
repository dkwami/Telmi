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

ActiveRecord::Schema.define(version: 20160221214244) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_users", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations_users", id: false, force: :cascade do |t|
    t.integer "destination_id"
    t.integer "user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods_users", id: false, force: :cascade do |t|
    t.integer "food_id"
    t.integer "user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_users", id: false, force: :cascade do |t|
    t.integer "game_id"
    t.integer "user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies_users", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "feedback"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs_users", id: false, force: :cascade do |t|
    t.integer "song_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.date     "birthday"
    t.string   "password_digest"
    t.string   "location"
    t.boolean  "nda_agree"
    t.boolean  "read_interest",   default: false
    t.boolean  "watch_interest",  default: false
    t.boolean  "listen_interest", default: false
    t.boolean  "play_interest",   default: false
    t.boolean  "eat_interest",    default: false
    t.boolean  "travel_interest", default: false
    t.string   "other_interest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
