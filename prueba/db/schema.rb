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

ActiveRecord::Schema.define(version: 0) do

  create_table "categories", primary_key: "categoryId", force: true do |t|
    t.string  "name",      limit: 45
    t.integer "profileId",            null: false
  end

  add_index "categories", ["profileId"], name: "fk_Category_profile1_idx", using: :btree

  create_table "profiles", primary_key: "profileId", force: true do |t|
    t.string  "name",   limit: 45
    t.integer "userId",            null: false
  end

  add_index "profiles", ["userId"], name: "fk_profile_user1_idx", using: :btree

  create_table "records", primary_key: "recordId", force: true do |t|
    t.string  "name",      limit: 45
    t.date    "startDate"
    t.date    "endDate"
    t.integer "category",             null: false
  end

  add_index "records", ["category"], name: "fk_record_Category_idx", using: :btree

  create_table "users", primary_key: "userId", force: true do |t|
    t.string "name",      limit: 45
    t.string "email",     limit: 45
    t.string "password",  limit: 45
    t.date   "createdAt"
    t.date   "lastLogin"
  end

end
