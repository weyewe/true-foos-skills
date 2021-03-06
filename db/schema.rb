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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121006192341) do

  create_table "games", :force => true do |t|
    t.integer  "black_front_player_id"
    t.integer  "black_back_player_id"
    t.integer  "yellow_front_player_id"
    t.integer  "yellow_back_player_id"
    t.boolean  "result"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.datetime "deleted_at"
    t.integer  "goals_yellow"
    t.integer  "goals_black"
  end

  create_table "news", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.float    "mean",       :default => 100.0
    t.float    "deviation",  :default => 100.0
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
