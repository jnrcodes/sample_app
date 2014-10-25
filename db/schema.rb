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

ActiveRecord::Schema.define(version: 20141025223213) do

  create_table "material_price_points", force: true do |t|
    t.integer  "material_id"
    t.integer  "price"
    t.integer  "server_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "material_price_points", ["material_id"], name: "index_material_price_points_on_material_id"
  add_index "material_price_points", ["server_id"], name: "index_material_price_points_on_server_id"
  add_index "material_price_points", ["user_id"], name: "index_material_price_points_on_user_id"

  create_table "material_types", force: true do |t|
    t.string "name"
  end

  add_index "material_types", ["name"], name: "index_material_types_on_name", unique: true

  create_table "material_types_skills", id: false, force: true do |t|
    t.integer "material_type_id", null: false
    t.integer "skill_id",         null: false
  end

  add_index "material_types_skills", ["material_type_id", "skill_id"], name: "index_material_types_skills_on_material_type_id_and_skill_id"
  add_index "material_types_skills", ["skill_id", "material_type_id"], name: "index_material_types_skills_on_skill_id_and_material_type_id"

  create_table "materials", force: true do |t|
    t.text     "name"
    t.integer  "rank_id"
    t.integer  "skill_id"
    t.integer  "quality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "material_type_id"
    t.integer  "grade"
  end

  add_index "materials", ["name"], name: "index_materials_on_name", unique: true
  add_index "materials", ["quality_id"], name: "index_materials_on_quality_id"
  add_index "materials", ["rank_id"], name: "index_materials_on_rank_id"
  add_index "materials", ["skill_id"], name: "index_materials_on_skill_id"

  create_table "microposts", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "qualities", force: true do |t|
    t.text     "name"
    t.text     "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ranks", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servers", force: true do |t|
    t.text     "name"
    t.text     "server_type"
    t.text     "region"
    t.text     "server_language"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["name"], name: "index_skills_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
