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

ActiveRecord::Schema.define(version: 20131205063237) do

  create_table "match_player_records", force: true do |t|
    t.integer  "runs"
    t.integer  "balls"
    t.integer  "sixes"
    t.integer  "fours"
    t.integer  "singles"
    t.integer  "run_outs_direct"
    t.integer  "rub_out_through"
    t.float    "overs"
    t.integer  "wickets"
    t.float    "medon"
    t.integer  "catches"
    t.integer  "runs_given"
    t.integer  "hattricks"
    t.integer  "match_player_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "match_squads", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.date     "match_date"
    t.datetime "match_from"
    t.datetime "match_to"
    t.string   "match_location"
    t.string   "match_ground"
    t.text     "match_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "player_name"
    t.string   "player_contry"
    t.string   "player_role"
    t.string   "player_type"
    t.binary   "player_photo"
    t.integer  "player_points"
    t.text     "player_details"
    t.integer  "player_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "security_questions", force: true do |t|
    t.text     "sec_question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: true do |t|
    t.string   "series_name"
    t.string   "series_location"
    t.text     "series_desc"
    t.date     "series_date_from"
    t.date     "series_date_to"
    t.string   "series_result"
    t.string   "series_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "team_name"
    t.string   "team_contry"
    t.string   "team_abbr"
    t.binary   "team_logo"
    t.integer  "team_test_rank"
    t.integer  "team_odi_rank"
    t.integer  "team_tt_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_passes", force: true do |t|
    t.string   "password"
    t.string   "salt"
    t.string   "security_a"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_squads", force: true do |t|
    t.string   "squad_pattern"
    t.binary   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_id"
    t.string   "user_name"
    t.string   "email_id"
    t.integer  "ph_number"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "contry"
    t.text     "other_details"
    t.binary   "PoL"
    t.binary   "PoA"
    t.string   "team_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
