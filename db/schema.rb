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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130428015909) do

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rows", :force => true do |t|
    t.integer  "document_id"
    t.integer  "page"
    t.string   "date"
    t.integer  "certificate"
    t.string   "child_name"
    t.string   "display_age"
    t.string   "sex"
    t.string   "display_nation"
    t.string   "marks"
    t.string   "residing_with_name"
    t.string   "parents_name_res"
    t.string   "bringer_name_res"
    t.string   "purpose_brought"
    t.string   "signatures"
    t.string   "school"
    t.string   "outcome"
    t.text     "comments",           :limit => 255
    t.string   "search_age"
    t.string   "search_nation"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "search_reason"
    t.string   "search_outcome"
  end

end
