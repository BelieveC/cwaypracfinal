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

ActiveRecord::Schema.define(version: 20160416180408) do

  create_table "aimages", force: :cascade do |t|
    t.integer  "assignment_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "aimages", ["assignment_id"], name: "index_aimages_on_assignment_id"

  create_table "assignments", force: :cascade do |t|
    t.string   "topic"
    t.integer  "subject_id"
    t.integer  "college_id"
    t.text     "description"
    t.string   "teacher"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examnotes", force: :cascade do |t|
    t.string   "topic"
    t.integer  "subject_id"
    t.integer  "college_id"
    t.text     "tips"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "practical_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "sheet_file_name"
    t.string   "sheet_content_type"
    t.integer  "sheet_file_size"
    t.datetime "sheet_updated_at"
  end

  add_index "images", ["practical_id"], name: "index_images_on_practical_id"

  create_table "notes", force: :cascade do |t|
    t.integer  "examnote_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "page_file_name"
    t.string   "page_content_type"
    t.integer  "page_file_size"
    t.datetime "page_updated_at"
  end

  add_index "notes", ["examnote_id"], name: "index_notes_on_examnote_id"

  create_table "practicals", force: :cascade do |t|
    t.string   "title"
    t.string   "aim"
    t.integer  "subject_id"
    t.integer  "college_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "qimages", force: :cascade do |t|
    t.integer  "qpaper_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "qimages", ["qpaper_id"], name: "index_qimages_on_qpaper_id"

  create_table "qpapers", force: :cascade do |t|
    t.string   "examname"
    t.integer  "subject_id"
    t.integer  "college_id"
    t.string   "teacher"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.integer  "college_id"
    t.integer  "type_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
