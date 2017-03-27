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

ActiveRecord::Schema.define(version: 20170320155945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "physicians", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "occupation_title",                    null: false
    t.string   "office_address",                      null: false
    t.string   "office_city",                         null: false
    t.string   "office_state",                        null: false
    t.string   "office_zip",                          null: false
    t.string   "practice_address"
    t.string   "practice_city"
    t.string   "practice_state"
    t.string   "practice_zip"
    t.string   "physicians_assistant"
    t.string   "phone",                               null: false
    t.string   "cellphone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_physicians_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_physicians_on_reset_password_token", unique: true, using: :btree
  end

  create_table "physicians_surgeries", force: :cascade do |t|
    t.integer "surgries_id",   null: false
    t.integer "physicians_id", null: false
    t.index ["physicians_id"], name: "index_physicians_surgeries_on_physicians_id", using: :btree
    t.index ["surgries_id"], name: "index_physicians_surgeries_on_surgries_id", using: :btree
  end

  create_table "surgeries", force: :cascade do |t|
    t.string  "name",             null: false
    t.string  "description",      null: false
    t.string  "youtube_url"
    t.integer "surgery_group_id", null: false
    t.index ["surgery_group_id"], name: "index_surgeries_on_surgery_group_id", using: :btree
  end

  create_table "surgery_groups", force: :cascade do |t|
    t.string "group", null: false
    t.string "image"
  end

  create_table "surgries", force: :cascade do |t|
    t.string  "name",              null: false
    t.string  "description",       null: false
    t.string  "youtube_url"
    t.integer "surgery_groups_id", null: false
    t.index ["surgery_groups_id"], name: "index_surgries_on_surgery_groups_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "username",                            null: false
    t.string   "state"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_physicians", force: :cascade do |t|
    t.integer "users_id",      null: false
    t.integer "physicians_id", null: false
    t.index ["physicians_id"], name: "index_users_physicians_on_physicians_id", using: :btree
    t.index ["users_id"], name: "index_users_physicians_on_users_id", using: :btree
  end

  create_table "users_surgeries", force: :cascade do |t|
    t.integer "users_id",     null: false
    t.integer "surgeries_id", null: false
    t.index ["surgeries_id"], name: "index_users_surgeries_on_surgeries_id", using: :btree
    t.index ["users_id"], name: "index_users_surgeries_on_users_id", using: :btree
  end

end
