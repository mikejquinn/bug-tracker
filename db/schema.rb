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

ActiveRecord::Schema.define(:version => 20140227021320) do

  create_table "bug_statuses", :force => true do |t|
    t.string "description"
  end

  create_table "bugs", :force => true do |t|
    t.string   "title",         :null => false
    t.text     "description",   :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "bug_status_id", :null => false
  end

  add_index "bugs", ["bug_status_id"], :name => "bugs_bug_status_id_fk"

  create_table "projects", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "bugs", "bug_statuses", name: "bugs_bug_status_id_fk"

end
