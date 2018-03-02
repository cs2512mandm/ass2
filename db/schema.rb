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

ActiveRecord::Schema.define(version: 20180226122927) do

  create_table "golfers", force: :cascade do |t|
    t.integer "this_week"
    t.string "name"
    t.string "country"
    t.string "average_points"
    t.string "total_points"
    t.string "events_played"
    t.string "points_lost_this_year"
    t.string "points_gained_this_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranking2016s", force: :cascade do |t|
    t.integer "this_week"
    t.string "name"
    t.string "country"
    t.string "average_points"
    t.string "total_points"
    t.string "events_played"
    t.string "points_lost_this_year"
    t.string "points_gained_this_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranking2017s", force: :cascade do |t|
    t.integer "this_week"
    t.string "name"
    t.string "country"
    t.string "average_points"
    t.string "total_points"
    t.string "events_played"
    t.string "points_lost_this_year"
    t.string "points_gained_this_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "us_events", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
