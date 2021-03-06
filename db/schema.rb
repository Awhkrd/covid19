# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_13_095350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country_code"
    t.string "name"
    t.integer "num_of_states"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.bigint "region_id", null: false
    t.integer "confirmed", default: 0
    t.integer "death", default: 0
    t.integer "recovered", default: 0
    t.integer "active", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "event_date"
    t.index ["region_id"], name: "index_records_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "region_code"
    t.string "name"
    t.decimal "latitude", default: "0.0"
    t.decimal "longitude", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  add_foreign_key "records", "regions"
  add_foreign_key "regions", "countries"
end
