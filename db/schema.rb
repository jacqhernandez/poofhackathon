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

ActiveRecord::Schema.define(version: 20160723191826) do

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.string   "province"
    t.boolean  "is_city"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evacuation_center_areas", force: :cascade do |t|
    t.integer  "evacuation_center_id"
    t.integer  "area_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "evacuation_centers", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_number"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.text     "address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "health_center_areas", force: :cascade do |t|
    t.integer  "health_center_id"
    t.integer  "area_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "health_centers", force: :cascade do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_number"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.text     "address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lgu_officers", force: :cascade do |t|
    t.string   "email",                  default: ""
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.integer  "area_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "lgu_officers", ["reset_password_token"], name: "index_lgu_officers_on_reset_password_token", unique: true
  add_index "lgu_officers", ["username"], name: "index_lgu_officers_on_username", unique: true

  create_table "lgu_responses", force: :cascade do |t|
    t.string   "disaster_type"
    t.datetime "logged_at"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.text     "address"
    t.integer  "lgu_officer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resident_lgu_responses", force: :cascade do |t|
    t.boolean  "is_safe"
    t.datetime "logged_at"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.text     "address"
    t.integer  "resident_id"
    t.integer  "lgu_response_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "residents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.string   "phone_number"
    t.string   "phone_subscriber"
    t.boolean  "is_safe",          default: true
    t.integer  "area_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
