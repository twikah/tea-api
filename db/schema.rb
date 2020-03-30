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

ActiveRecord::Schema.define(version: 2020_03_30_125030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "health_benefits", force: :cascade do |t|
    t.string "benefit", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["benefit"], name: "index_health_benefits_on_benefit", unique: true
    t.index ["user_id"], name: "index_health_benefits_on_user_id"
  end

  create_table "herb_varietals", force: :cascade do |t|
    t.string "herb_type"
    t.string "name"
    t.bigint "herb_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_id"], name: "index_herb_varietals_on_herb_id"
    t.index ["user_id"], name: "index_herb_varietals_on_user_id"
  end

  create_table "herbs", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_herbs_on_name", unique: true
    t.index ["user_id"], name: "index_herbs_on_user_id"
  end

  create_table "ingredients_benefits", force: :cascade do |t|
    t.string "benefitable_type"
    t.bigint "benefitable_id"
    t.bigint "health_benefit_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["benefitable_type", "benefitable_id"], name: "benefitable_index"
    t.index ["health_benefit_id"], name: "index_ingredients_benefits_on_health_benefit_id"
    t.index ["user_id"], name: "index_ingredients_benefits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "health_benefits", "users"
  add_foreign_key "herb_varietals", "herbs"
  add_foreign_key "herb_varietals", "users"
  add_foreign_key "herbs", "users"
  add_foreign_key "ingredients_benefits", "health_benefits"
  add_foreign_key "ingredients_benefits", "users"
end
