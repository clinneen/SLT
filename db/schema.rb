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

ActiveRecord::Schema.define(version: 20171208185256) do

  create_table "carriers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.string "phone"
    t.string "email"
    t.string "ops_manager"
    t.string "manager_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "store_id"
    t.integer "carrier_id"
    t.string "commodity"
    t.integer "volume"
    t.datetime "outage_time"
    t.datetime "delivery_time"
    t.string "reported_via"
    t.text "notes"
    t.text "closing_notes"
    t.string "cause"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "fd"
    t.string "fd_phone"
    t.string "fd_email"
    t.string "fa"
    t.string "fa_phone"
    t.string "fa_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shippers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "tcn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "site_id"
    t.integer "region_id"
    t.integer "carrier_id"
    t.integer "shipper_id"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "brand"
    t.string "supplier"
    t.text "loading_numbers"
    t.string "mm_dbm"
    t.string "manager_phone"
    t.text "notes"
    t.decimal "miles", precision: 64, scale: 12
    t.string "co_de"
    t.string "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
