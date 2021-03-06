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

ActiveRecord::Schema.define(:version => 20120626150551) do

  create_table "attendances", :force => true do |t|
    t.integer "edition_id"
    t.integer "user_id"
  end

  add_index "attendances", ["edition_id"], :name => "index_attendances_on_edition_id"
  add_index "attendances", ["user_id"], :name => "index_attendances_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "rendered_body"
    t.string   "type"
    t.integer  "author_id"
    t.datetime "doors_open_at"
    t.string   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps",          :default => false
    t.integer  "edition_number"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "testimonies", :force => true do |t|
    t.string   "tweet_id"
    t.string   "screen_name"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.string   "gravatar_id"
    t.string   "bio"
    t.boolean  "hireable"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "admin",       :default => false
    t.string   "twitter"
    t.boolean  "public",      :default => true
  end

end
