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

ActiveRecord::Schema.define(version: 20180322190310) do

  create_table "characters", force: :cascade do |t|
    t.string "char_name"
    t.integer "game_id"
    t.text "first_game"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "char_pic"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "release"
    t.text "description"
    t.text "story"
    t.text "gameplay"
    t.text "development"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
