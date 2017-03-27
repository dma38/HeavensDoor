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

ActiveRecord::Schema.define(version: 20170327041945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "country"
    t.string   "postalCode"
    t.string   "email"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["location_id"], name: "index_customers_on_location_id", using: :btree
  end

  create_table "flower_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.integer  "location_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_flower_items_on_category_id", using: :btree
    t.index ["location_id"], name: "index_flower_items_on_location_id", using: :btree
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "quantity"
    t.decimal  "price"
    t.integer  "flower_item_id"
    t.integer  "order_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["flower_item_id"], name: "index_line_items_on_flower_item_id", using: :btree
    t.index ["order_id"], name: "index_line_items_on_order_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.decimal  "tax_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.text     "notes"
    t.decimal  "tax_rate"
    t.integer  "status_id"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["status_id"], name: "index_orders_on_status_id", using: :btree
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "customers", "locations"
  add_foreign_key "flower_items", "categories"
  add_foreign_key "flower_items", "locations"
  add_foreign_key "line_items", "flower_items"
  add_foreign_key "line_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "statuses"
end
