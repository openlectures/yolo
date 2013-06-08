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

ActiveRecord::Schema.define(version: 20130608154242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkpoints", force: true do |t|
    t.string   "checkpoint"
    t.integer  "lesson_id"
    t.text     "description"
    t.string   "videourl"
    t.text     "objective"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.string   "lesson"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seab_sub_topics", force: true do |t|
    t.string   "topic"
    t.integer  "seab_topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seab_topics", force: true do |t|
    t.string   "topic"
    t.text     "description"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "topic"
    t.integer  "subject_id"
    t.integer  "seab_sub_topic_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
