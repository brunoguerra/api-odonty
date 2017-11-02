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

ActiveRecord::Schema.define(version: 20171102141542) do

  create_table "additionals", force: :cascade do |t|
    t.string "email"
    t.string "medical_record_number"
    t.integer "reason_id"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "postal_code"
    t.string "street"
    t.string "adress_number"
    t.string "complement"
    t.string "neighborhood"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "anamneses", force: :cascade do |t|
    t.integer "anamnesis_model_id"
    t.integer "patient_id"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anamnesis_model_id"], name: "index_anamneses_on_anamnesis_model_id"
    t.index ["patient_id"], name: "index_anamneses_on_patient_id"
  end

  create_table "anamnesis_model_questions", force: :cascade do |t|
    t.integer "anamnesis_model_id"
    t.integer "question_id"
    t.boolean "enabled", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anamnesis_model_id"], name: "index_anamnesis_model_questions_on_anamnesis_model_id"
    t.index ["question_id"], name: "index_anamnesis_model_questions_on_question_id"
  end

  create_table "anamnesis_models", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer "anamnesis_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anamnesis_id"], name: "index_answers_on_anamnesis_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedure_categories", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.string "description"
    t.integer "procedure_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "description"
    t.integer "question_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "auxiliar_text"
    t.boolean "is_an_alert", default: false
    t.integer "is_an_alert_when"
    t.string "alert_text"
  end

end
