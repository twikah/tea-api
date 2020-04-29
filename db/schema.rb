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

ActiveRecord::Schema.define(version: 2020_04_29_163810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "herb_types", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "herb_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["herb_id"], name: "index_herb_types_on_herb_id"
    t.index ["name"], name: "index_herb_types_on_name", unique: true
    t.index ["slug"], name: "index_herb_types_on_slug", unique: true
    t.index ["user_id"], name: "index_herb_types_on_user_id"
  end

  create_table "herb_varieties", force: :cascade do |t|
    t.string "name", null: false
    t.string "region"
    t.bigint "herb_type_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["herb_type_id"], name: "index_herb_varieties_on_herb_type_id"
    t.index ["name"], name: "index_herb_varieties_on_name"
    t.index ["user_id"], name: "index_herb_varieties_on_user_id"
  end

  create_table "herbs", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["name"], name: "index_herbs_on_name", unique: true
    t.index ["slug"], name: "index_herbs_on_slug", unique: true
    t.index ["user_id"], name: "index_herbs_on_user_id"
  end

  create_table "misc_ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_misc_ingredients_on_name", unique: true
    t.index ["user_id"], name: "index_misc_ingredients_on_user_id"
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

  add_foreign_key "herb_types", "herbs"
  add_foreign_key "herb_types", "users"
  add_foreign_key "herb_varieties", "herb_types"
  add_foreign_key "herb_varieties", "users"
  add_foreign_key "herbs", "users"
  add_foreign_key "misc_ingredients", "users"
end
