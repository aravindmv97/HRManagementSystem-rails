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

ActiveRecord::Schema.define(version: 2018_05_31_150130) do

  create_table "employee_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "emp_name"
    t.string "emp_number"
    t.text "emp_address"
    t.integer "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holidays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "holidays_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_takens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "leave_type"
    t.integer "days"
    t.text "reason"
    t.bigint "employee_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_detail_id"], name: "index_leave_takens_on_employee_detail_id"
  end

  create_table "performances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "points"
    t.bigint "employee_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quater"
    t.date "from"
    t.date "to"
    t.index ["employee_detail_id"], name: "index_performances_on_employee_detail_id"
  end

  create_table "salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "emp_salary"
    t.bigint "employee_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "month"
    t.index ["employee_detail_id"], name: "index_salaries_on_employee_detail_id"
  end

  create_table "salary_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "salary"
    t.bigint "employee_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_detail_id"], name: "index_salary_details_on_employee_detail_id"
  end

  add_foreign_key "leave_takens", "employee_details"
  add_foreign_key "performances", "employee_details"
  add_foreign_key "salaries", "employee_details"
  add_foreign_key "salary_details", "employee_details"
end
