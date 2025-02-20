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

ActiveRecord::Schema[8.0].define(version: 2025_02_20_110837) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "flower_orders", force: :cascade do |t|
    t.string "name"
    t.bigint "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price"
    t.integer "user_id"
  end

  create_table "flowers", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "quantity"
    t.string "flower_language_meaning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "scientific_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tamales_customers", force: :cascade do |t|
    t.string "name"
    t.integer "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tamalescustomers", force: :cascade do |t|
    t.string "name"
    t.integer "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
