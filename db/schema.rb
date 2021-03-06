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

ActiveRecord::Schema.define(version: 20140925105954) do

  create_table "categories", force: true do |t|
    t.string   "category_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "unit_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id"
  add_index "order_details", ["product_id"], name: "index_order_details_on_product_id"

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "unit_price"
    t.integer  "quantity"
    t.string   "ISBN"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
