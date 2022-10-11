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

ActiveRecord::Schema[7.0].define(version: 2022_10_11_121112) do
  create_table "categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
  end

  create_table "prices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cost"
  end

  create_table "product_certifications", force: :cascade do |t|
    t.string "product_certification_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "model"
    t.string "brand"
    t.string "sold_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "country_id"
    t.integer "supplier_certification_id"
    t.integer "product_certification_id"
    t.integer "price_id"
  end

  create_table "supplier_certifications", force: :cascade do |t|
    t.string "supplier_certification_name"
  end

end
