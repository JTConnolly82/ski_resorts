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

ActiveRecord::Schema.define(version: 2019_03_17_045137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "regions", force: :cascade do |t|
    t.bigint "state_id"
    t.string "region_name"
    t.string "region_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_regions_on_state_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.bigint "region_id"
    t.integer "vertical_drop"
    t.boolean "allows_snowboarding"
    t.integer "annual_snowfall"
    t.string "resort_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resort_name"
    t.index ["region_id"], name: "index_resorts_on_region_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_name"
    t.text "state_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "regions", "states"
  add_foreign_key "resorts", "regions"
end
