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

ActiveRecord::Schema.define(version: 20160711052047) do

  create_table "article_users", force: :cascade do |t|
    t.integer  "article_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "article_users", ["article_id"], name: "index_article_users_on_article_id"
  add_index "article_users", ["user_id"], name: "index_article_users_on_user_id"

  create_table "articles", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.integer  "char_count"
    t.text     "URL"
    t.boolean  "private"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_of_birth"
    t.boolean  "is_male",                default: false
    t.string   "avatar"
  end

  add_index "users", ["avatar"], name: "index_users_on_avatar"
  add_index "users", ["date_of_birth"], name: "index_users_on_date_of_birth"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["first_name"], name: "index_users_on_first_name"
  add_index "users", ["is_male"], name: "index_users_on_is_male"
  add_index "users", ["last_name"], name: "index_users_on_last_name"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
