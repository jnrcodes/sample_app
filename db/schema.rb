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

ActiveRecord::Schema.define(version: 20141025155856) do

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

  create_table "materials", force: true do |t|
    t.text     "name"
    t.integer  "rank_id"
    t.integer  "skill_id"
    t.integer  "quality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "material_type_id"
  end

  add_index "materials", ["quality_id"], name: "index_materials_on_quality_id"
  add_index "materials", ["rank_id"], name: "index_materials_on_rank_id"
  add_index "materials", ["skill_id"], name: "index_materials_on_skill_id"

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

end
