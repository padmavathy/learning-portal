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

ActiveRecord::Schema.define(version: 20190320042201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "option",                      null: false
    t.boolean  "is_correct",  default: false, null: false
    t.integer  "question_id",                 null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "topic_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_chapters_on_topic_id", using: :btree
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "question",      null: false
    t.integer  "category_type", null: false
    t.integer  "chapter_id",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["chapter_id"], name: "index_questions_on_chapter_id", using: :btree
  end

  create_table "quizz", force: :cascade do |t|
    t.integer  "question_id", null: false
    t.integer  "response"
    t.boolean  "is_correct"
    t.boolean  "is_skipped"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_quizz_on_question_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "exam_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_subjects_on_exam_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id", using: :btree
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "chapters", "topics"
  add_foreign_key "questions", "chapters"
  add_foreign_key "quizz", "questions"
  add_foreign_key "subjects", "exams"
  add_foreign_key "topics", "subjects"
end
