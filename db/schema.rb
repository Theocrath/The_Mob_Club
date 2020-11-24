# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_24_102949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "crime_id", null: false
    t.index ["crime_id"], name: "index_chatrooms_on_crime_id"
  end

  create_table "crimes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "date"
    t.string "location"
    t.integer "reward"
    t.bigint "boss_id", null: false
    t.bigint "right_hand_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boss_id"], name: "index_crimes_on_boss_id"
    t.index ["right_hand_id"], name: "index_crimes_on_right_hand_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "skillsets", force: :cascade do |t|
    t.integer "close_combat"
    t.integer "long_range_weapons"
    t.integer "mid_range_weapons"
    t.integer "explosives"
    t.integer "infiltration"
    t.integer "hacking"
    t.integer "lockpicking"
    t.integer "seduction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "crime_id"
    t.index ["crime_id"], name: "index_skillsets_on_crime_id"
    t.index ["user_id"], name: "index_skillsets_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.boolean "status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "crime_id", null: false
    t.index ["crime_id"], name: "index_teams_on_crime_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.text "description"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chatrooms", "crimes"
  add_foreign_key "crimes", "users", column: "boss_id"
  add_foreign_key "crimes", "users", column: "right_hand_id"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "skillsets", "crimes"
  add_foreign_key "skillsets", "users"
  add_foreign_key "teams", "crimes"
  add_foreign_key "teams", "users"
end
