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

ActiveRecord::Schema.define(version: 20160418104152) do

  create_table "faqs", force: :cascade do |t|
    t.string   "question"
    t.text     "answer"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_items", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  add_index "portfolio_items", ["service_id"], name: "index_portfolio_items_on_service_id"

  create_table "requests", force: :cascade do |t|
    t.integer  "service_id"
    t.date     "day"
    t.integer  "hour"
    t.integer  "minute"
    t.boolean  "meridiem"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "requests", ["service_id"], name: "index_requests_on_service_id"

  create_table "service_items", force: :cascade do |t|
    t.integer  "service_id"
    t.string   "description"
    t.text     "long_description"
    t.integer  "position"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "service_items", ["service_id"], name: "index_service_items_on_service_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.integer  "position"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
