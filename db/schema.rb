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

ActiveRecord::Schema.define(:version => 20131017154518) do

  create_table "album_roly_cards", :force => true do |t|
    t.string   "notes"
    t.integer  "favorite"
    t.string   "tags"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "album_id"
    t.integer  "roly_card_id"
    t.datetime "last_viewed"
    t.datetime "last_edited"
  end

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "privacy_setting"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.string   "web_page"
    t.string   "contact_email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "friends", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "group_user", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "status"
    t.integer  "permissions"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  create_table "roly_cards", :force => true do |t|
    t.string   "title"
    t.string   "web_page"
    t.string   "facebook"
    t.string   "twitter"
    t.integer  "facebook_likes"
    t.integer  "twitter_tweets"
    t.string   "google"
    t.string   "google_circles"
    t.string   "foursquare"
    t.integer  "foursquare_checkins"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "business_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.text     "description"
    t.string   "share_code"
    t.datetime "share_date"
    t.integer  "privacy"
  end

  create_table "user_roly_cards", :force => true do |t|
    t.string   "notes"
    t.integer  "favorite"
    t.string   "tags"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.datetime "last_viewed"
    t.datetime "last_edited"
    t.integer  "user_id"
    t.integer  "roly_card_id"
    t.integer  "todays"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.integer  "status"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end