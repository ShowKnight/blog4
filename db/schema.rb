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

ActiveRecord::Schema.define(version: 20150506052012) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.float    "w1"
    t.integer  "s1"
    t.integer  "d1"
    t.string   "t1"
    t.float    "w2"
    t.integer  "s2"
    t.integer  "d2"
    t.string   "t2"
    t.float    "w3"
    t.integer  "s3"
    t.integer  "d3"
    t.string   "t3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
