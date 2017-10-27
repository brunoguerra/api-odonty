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

ActiveRecord::Schema.define(version: 20171027102306) do

  create_table "addresses", force: :cascade do |t|
    t.string "postal_code"
    t.string "street"
    t.string "adress_number"
    t.string "complement"
    t.string "neighborhood"
    t.integer "addressable_id"
    t.string "addressable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", primary_key: "person_id", force: :cascade do |t|
    t.text "observation"
    t.string "responsable"
    t.string "responsable_cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birthdate"
    t.string "cpf"
    t.string "rg"
    t.integer "gender"
    t.integer "phone"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_people_on_addressable_type_and_addressable_id"
  end

end
