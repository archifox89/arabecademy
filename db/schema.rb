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

ActiveRecord::Schema.define(version: 20160221102157) do

  create_table "chapters", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "course_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "chapters", ["course_id"], name: "index_chapters_on_course_id"

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.string   "period"
    t.text     "description"
    t.string   "semester"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "grade_id"
    t.string   "video_url"
    t.integer  "subject_id"
    t.integer  "instructor_id"
  end

  add_index "courses", ["grade_id"], name: "index_courses_on_grade_id"
  add_index "courses", ["instructor_id"], name: "index_courses_on_instructor_id"
  add_index "courses", ["subject_id"], name: "index_courses_on_subject_id"

  create_table "grades", force: :cascade do |t|
    t.string   "grade_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "notes"
    t.string   "video_url"
    t.integer  "chapter_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "lessons", ["chapter_id"], name: "index_lessons_on_chapter_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
