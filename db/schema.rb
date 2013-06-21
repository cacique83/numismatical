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

ActiveRecord::Schema.define(:version => 20130605123253) do

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "albums", ["user_id"], :name => "index_albums_on_user_id"

  create_table "albums_coins", :id => false, :force => true do |t|
    t.integer "album_id", :null => false
    t.integer "coin_id",  :null => false
  end

  add_index "albums_coins", ["album_id", "coin_id"], :name => "index_albums_coins_on_album_id_and_coin_id", :unique => true

  create_table "albums_users", :id => false, :force => true do |t|
    t.integer "album_id", :null => false
    t.integer "user_id",  :null => false
  end

  add_index "albums_users", ["album_id", "user_id"], :name => "index_albums_users_on_album_id_and_user_id", :unique => true

  create_table "coins", :force => true do |t|
    t.string   "name"
    t.integer  "condition"
    t.integer  "market_value"
    t.string   "origin"
    t.integer  "user_id"
    t.boolean  "for_sale"
    t.boolean  "for_trade"
    t.string   "image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "coins", ["user_id"], :name => "index_coins_on_user_id"

  create_table "offers", :force => true do |t|
    t.integer  "coin_id"
    t.integer  "offer_price"
    t.integer  "trader_id"
    t.integer  "trader_coin_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "offers", ["coin_id"], :name => "index_offers_on_coin_id"
  add_index "offers", ["trader_coin_id"], :name => "index_offers_on_trader_coin_id"
  add_index "offers", ["trader_id"], :name => "index_offers_on_trader_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
