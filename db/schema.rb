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

ActiveRecord::Schema.define(version: 20150212122412) do

  create_table "apps", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "envapps", force: :cascade do |t|
    t.integer  "env_id"
    t.integer  "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "envapps", ["app_id"], name: "index_envapps_on_app_id"
  add_index "envapps", ["env_id"], name: "index_envapps_on_env_id"

  create_table "envbookings", force: :cascade do |t|
    t.integer  "env_id"
    t.integer  "project_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "envbookings", ["env_id"], name: "index_envbookings_on_env_id"
  add_index "envbookings", ["project_id"], name: "index_envbookings_on_project_id"

  create_table "envlevels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "envs", force: :cascade do |t|
    t.string   "name"
    t.integer  "envlevel_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "envs", ["envlevel_id"], name: "index_envs_on_envlevel_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
