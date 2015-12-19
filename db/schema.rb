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

ActiveRecord::Schema.define(version: 20151219040806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "office_workers", force: :cascade do |t|
    t.string  "name"
    t.date    "dob"
    t.decimal "years_of_exp"
  end

  create_table "school_mates", force: :cascade do |t|
    t.integer "school_id"
    t.integer "student_id"
  end

  add_index "school_mates", ["school_id"], name: "index_school_mates_on_school_id", using: :btree
  add_index "school_mates", ["student_id"], name: "index_school_mates_on_student_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "type"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.date   "dob"
  end

end
