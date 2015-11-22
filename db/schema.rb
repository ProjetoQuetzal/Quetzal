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

ActiveRecord::Schema.define(version: 20151122174632) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "operations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "operations", ["name"], name: "index_operations_on_name"

  create_table "permissions", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "operation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "permissions", ["operation_id"], name: "index_permissions_on_operation_id"
  add_index "permissions", ["role_id"], name: "index_permissions_on_role_id"

  create_table "roles", force: :cascade do |t|
    t.string   "type"
    t.string   "title"
    t.integer  "father_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "roles", ["team_id"], name: "index_roles_on_team_id"
  add_index "roles", ["title"], name: "index_roles_on_title"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "father_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_descriptions", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.string   "registration"
    t.string   "phone_number"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "user_descriptions", ["user_id"], name: "index_user_descriptions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
