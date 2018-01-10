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

ActiveRecord::Schema.define(version: 20150820154433) do

  create_table "appconfigs", force: :cascade do |t|
    t.integer "singleton_guard"
    t.string "template"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "color_by_project", default: false, null: false
    t.integer "total_hours"
    t.boolean "show_extra_color_box", default: false
    t.boolean "sidebar", default: false
    t.boolean "show_legend", default: false
    t.integer "shade_percentage", default: 10
    t.index ["singleton_guard"], name: "index_appconfigs_on_singleton_guard", unique: true
  end

  create_table "apps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.string "description"
    t.string "text_color"
  end

  create_table "booking_requests", force: :cascade do |t|
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "project"
    t.string "user"
    t.date "start_date"
    t.date "end_date"
    t.integer "status_id"
    t.index ["status_id"], name: "index_booking_requests_on_status_id"
  end

  create_table "downtimes", force: :cascade do |t|
    t.integer "env_id"
    t.integer "hours"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
    t.date "date"
    t.index ["env_id"], name: "index_downtimes_on_env_id"
  end

  create_table "envbookings", force: :cascade do |t|
    t.integer "env_id"
    t.integer "project_id"
    t.integer "user_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "app_id"
    t.string "notes"
    t.index ["app_id"], name: "index_envbookings_on_app_id"
    t.index ["env_id", "project_id", "start_date", "end_date", "app_id"], name: "index_envbookings_env_project_start_date_end_date", unique: true
    t.index ["env_id"], name: "index_envbookings_on_env_id"
    t.index ["project_id"], name: "index_envbookings_on_project_id"
    t.index ["user_id"], name: "index_envbookings_on_user_id"
  end

  create_table "envlevels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "envs", force: :cascade do |t|
    t.string "name"
    t.integer "envlevel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "notes"
    t.index ["envlevel_id"], name: "index_envs_on_envlevel_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "color"
    t.string "text_color"
  end

  create_table "refresh_requests", force: :cascade do |t|
    t.integer "env_id"
    t.integer "app_id"
    t.date "refresh_date"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mks_id"
    t.integer "status_id"
    t.integer "user_id"
    t.index ["app_id"], name: "index_refresh_requests_on_app_id"
    t.index ["env_id"], name: "index_refresh_requests_on_env_id"
    t.index ["status_id"], name: "index_refresh_requests_on_status_id"
    t.index ["user_id"], name: "index_refresh_requests_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status_type"
  end

  create_table "system_properties", force: :cascade do |t|
    t.integer "system_id"
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["system_id"], name: "index_system_properties_on_system_id"
  end

  create_table "systems", force: :cascade do |t|
    t.integer "env_id"
    t.integer "app_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "refresh_date"
    t.boolean "refreshed_daily", default: false
    t.index ["app_id"], name: "index_systems_on_app_id"
    t.index ["env_id"], name: "index_systems_on_env_id"
  end

  create_table "user_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.string "template"
    t.boolean "color_by_project", default: false
    t.boolean "show_extra_color_box", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "sidebar", default: false
    t.boolean "show_legend", default: false
    t.integer "shade_percentage", default: 10
    t.index ["user_id"], name: "index_user_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
