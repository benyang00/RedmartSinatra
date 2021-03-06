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

ActiveRecord::Schema.define(version: 20160721072525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name", limit: 50, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 50, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string  "name",        limit: 50,                          null: false
    t.integer "brand_id",                                        null: false
    t.integer "category_id",                                     null: false
    t.decimal "price",                  precision: 15, scale: 2, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "user_id",    null: false
    t.boolean "status",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 50, null: false
    t.string   "email",      limit: 50, null: false
    t.string   "address"
    t.string   "password",   limit: 50, null: false
    t.string   "cc_number",  limit: 50, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "purchases", "products"
  add_foreign_key "purchases", "users"
end
