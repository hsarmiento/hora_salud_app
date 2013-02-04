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

ActiveRecord::Schema.define(:version => 20130202221119) do

  create_table "accounts", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bookings", :force => true do |t|
    t.integer  "schedule_id"
    t.integer  "user_id"
    t.integer  "day_id"
    t.integer  "hour_id"
    t.integer  "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clinics", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "township"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clinics", ["address"], :name => "index_clinics_on_address", :unique => true
  add_index "clinics", ["phone"], :name => "index_clinics_on_phone", :unique => true

  create_table "days", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.integer  "account_id"
    t.string   "rut"
    t.string   "specialty"
    t.integer  "has_avatar"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.string   "last_name"
  end

  create_table "hours", :force => true do |t|
    t.time     "hour"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schedules", :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "clinic_id"
    t.string   "day"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specific_knowledges", :force => true do |t|
    t.integer  "doctor_id"
    t.string   "work_area"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "account_id"
    t.string   "rut"
    t.date     "date_of_birth"
    t.string   "address"
    t.string   "gender"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
