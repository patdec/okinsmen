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

ActiveRecord::Schema.define(version: 20160721225347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "okm_core_addresses", force: :cascade do |t|
    t.integer  "human_id"
    t.string   "street"
    t.string   "zip"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["human_id"], name: "index_okm_core_addresses_on_human_id", using: :btree
  end

  create_table "okm_core_humen", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "okm_core_addresses", "okm_core_humen", column: "human_id"
end
