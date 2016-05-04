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

ActiveRecord::Schema.define(version: 20160504071317) do

  create_table "cause_of_removals", primary_key: "removal_id", force: :cascade do |t|
    t.integer  "pig_id",            limit: 3
    t.datetime "date_of_removal",                                                      null: false
    t.boolean  "sale?",                                                default: false, null: false
    t.boolean  "death?",                                               default: false, null: false
    t.decimal  "weight_on_removal",            precision: 5, scale: 2, default: 0.0,   null: false
    t.string   "remarks",           limit: 30
  end

  create_table "headcounts", primary_key: "headcount_id", force: :cascade do |t|
    t.datetime "headcount_date",                       null: false
    t.integer  "pen_id",         limit: 1, default: 0, null: false
    t.integer  "headcount",      limit: 1, default: 0, null: false
  end

  create_table "litters", primary_key: "litter_id", force: :cascade do |t|
    t.integer  "parity_number",            limit: 1, default: 0, null: false
    t.datetime "actual_date_of_farrowing",                       null: false
    t.datetime "due_to_farrow"
    t.integer  "mummified_piglets",        limit: 1, default: 0, null: false
    t.integer  "stillborn_piglets",        limit: 1, default: 0, null: false
    t.datetime "date_bred",                                      null: false
    t.integer  "building_of_birth",        limit: 1, default: 0, null: false
    t.integer  "dam_id",                   limit: 2
    t.integer  "sire_id",                  limit: 2
    t.integer  "litter_size_at_birth",     limit: 1, default: 0, null: false
  end

  create_table "pens", primary_key: "pen_id", force: :cascade do |t|
    t.integer "pen_number",      limit: 1,  default: 0, null: false
    t.integer "building_number", limit: 1,  default: 0, null: false
    t.string  "building_name",   limit: 15
  end

  create_table "pigs", primary_key: "pig_id", force: :cascade do |t|
    t.integer  "ear_notch_number", limit: 3,                          default: 0,   null: false
    t.string   "breed",            limit: 14
    t.decimal  "birth_weight",                precision: 5, scale: 2, default: 0.0, null: false
    t.decimal  "weaning_weight",              precision: 5, scale: 2, default: 0.0, null: false
    t.datetime "date_weaned"
    t.integer  "dam_id",           limit: 2
    t.integer  "sire_id",          limit: 2
    t.integer  "pen_id",           limit: 1,                          default: 0,   null: false
    t.integer  "litter_id",        limit: 2
    t.datetime "date_of_birth",                                                     null: false
    t.string   "sex",              limit: 1,                          default: "x", null: false
    t.string   "remarks",          limit: 30
  end

end
