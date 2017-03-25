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

  create_table "apartments", force: :cascade do |t|
    t.integer "floor_id"
    t.string  "external_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
  end

  create_table "floors", force: :cascade do |t|
    t.integer "building_id"
    t.integer "number"
  end

  create_table "residents", force: :cascade do |t|
    t.integer "apartment_id"
    t.string  "external_id"
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.string  "phone_number"
  end

end
