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

ActiveRecord::Schema.define(version: 20150828061343) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 50, null: false
    t.string   "code",        limit: 50, null: false
    t.integer  "category_id", limit: 4
    t.integer  "hierarchy",   limit: 4,  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id", using: :btree

  create_table "customer_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",                limit: 255,   null: false
    t.string   "name_r",              limit: 255,   null: false
    t.text     "password",            limit: 65535, null: false
    t.integer  "customer_status_id",  limit: 4
    t.integer  "delivery_address_id", limit: 4
    t.string   "tel",                 limit: 255,   null: false
    t.text     "mail",                limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["customer_status_id"], name: "index_customers_on_customer_status_id", using: :btree
  add_index "customers", ["delivery_address_id"], name: "index_customers_on_delivery_address_id", using: :btree

  create_table "delivery_addresses", force: :cascade do |t|
    t.integer  "classification", limit: 4,   null: false
    t.string   "zip",            limit: 255, null: false
    t.integer  "prefecture_id",  limit: 4
    t.string   "address",        limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delivery_addresses", ["prefecture_id"], name: "index_delivery_addresses_on_prefecture_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name",              limit: 50,             null: false
    t.integer  "category_id",       limit: 4
    t.integer  "price_without_tax", limit: 4,  default: 0, null: false
    t.integer  "postage",           limit: 4,  default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["item_id"], name: "index_order_items_on_item_id", using: :btree
  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id",         limit: 4,     null: false
    t.integer  "delivery_address_id", limit: 4
    t.integer  "order_status_id",     limit: 4,     null: false
    t.text     "remark",              limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["delivery_address_id"], name: "index_orders_on_delivery_address_id", using: :btree

  create_table "prefectures", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "categories", "categories"
  add_foreign_key "customers", "customer_statuses"
  add_foreign_key "customers", "delivery_addresses"
  add_foreign_key "delivery_addresses", "prefectures"
  add_foreign_key "items", "categories"
  add_foreign_key "order_items", "items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "delivery_addresses"
end
