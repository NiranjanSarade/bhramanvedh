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

ActiveRecord::Schema.define(version: 20130911094052) do

  create_table "itineraries", force: true do |t|
    t.integer  "day"
    t.text     "description"
    t.integer  "tour_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_types", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: true do |t|
    t.string   "name"
    t.text     "details",          limit: 255
    t.integer  "duration"
    t.date     "departure"
    t.date     "arrival"
    t.integer  "fees"
    t.text     "inclusion",        limit: 255
    t.text     "exclusion",        limit: 255
    t.integer  "sub_type_id"
    t.integer  "max_participants"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "destination"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
