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

ActiveRecord::Schema.define(:version => 20130815142230) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "pri_color"
    t.string   "sec_color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website"
  end

  create_table "conferences", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.datetime "date"
    t.integer  "transaction_id"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "folded"
    t.integer  "flat"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.text     "note"
    t.string   "docket"
    t.string   "usage"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.boolean  "admin"
    t.integer  "client_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
