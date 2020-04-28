# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_28_155825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hamburguesas", force: :cascade do |t|
    t.string "nombre"
    t.integer "precio"
    t.text "descripcion"
    t.text "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingrediente_en_hamburguesas", force: :cascade do |t|
    t.bigint "ingrediente_id", null: false
    t.bigint "hamburguesa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "path"
    t.index ["hamburguesa_id"], name: "index_ingrediente_en_hamburguesas_on_hamburguesa_id"
    t.index ["ingrediente_id"], name: "index_ingrediente_en_hamburguesas_on_ingrediente_id"
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingrediente_en_hamburguesas", "hamburguesas"
  add_foreign_key "ingrediente_en_hamburguesas", "ingredientes"
end
