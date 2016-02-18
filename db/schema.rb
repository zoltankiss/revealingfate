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

ActiveRecord::Schema.define(version: 20160218023956) do

  create_table "info_for_readings", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "birth_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "gender"
    t.string   "service_type"
    t.string   "personalized_question_0"
    t.string   "personalized_question_1"
    t.string   "personalized_question_2"
    t.string   "personalized_question_3"
    t.string   "personalized_question_4"
    t.string   "title"
  end

  create_table "info_for_romantic_readings", force: :cascade do |t|
    t.string   "name1"
    t.string   "name2"
    t.string   "email1"
    t.string   "email2"
    t.string   "gender1"
    t.string   "gender2"
    t.string   "personalized_question"
    t.datetime "birth_date1"
    t.datetime "birth_date2"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
