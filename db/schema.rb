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

ActiveRecord::Schema.define(version: 20141029043438) do

  create_table "pages", force: true do |t|
    t.string   "name"
    t.integer  "permalink"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id"

  create_table "section_edits", force: true do |t|
    t.integer  "user_id"
    t.integer  "section_id"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "section_edits", ["section_id"], name: "index_section_edits_on_section_id"
  add_index "section_edits", ["user_id"], name: "index_section_edits_on_user_id"

  create_table "sections", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      default: false
    t.string   "content_type"
    t.text     "context"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_pages", force: true do |t|
    t.integer  "user_id"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_pages", ["page_id"], name: "index_user_pages_on_page_id"
  add_index "user_pages", ["user_id"], name: "index_user_pages_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
