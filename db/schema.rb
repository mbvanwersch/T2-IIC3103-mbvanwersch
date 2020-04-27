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

ActiveRecord::Schema.define(version: 2020_04_27_174557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hamburguesa_ingredientes", force: :cascade do |t|
    t.integer "id_hamburguesa"
    t.string "id_ingrediente_integer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hamburguesas", force: :cascade do |t|
    t.integer "id_hamburguesa"
    t.string "nombre"
    t.integer "precio"
    t.text "descripcion"
    t.text "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredientes", force: :cascade do |t|
    t.integer "id_ingrediente"
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end