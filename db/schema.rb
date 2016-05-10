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

ActiveRecord::Schema.define(version: 20160510143752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clothings", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dresses", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dresses", ["clothing_id"], name: "index_dresses_on_clothing_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "description"
    t.integer  "shirt_id"
    t.integer  "pant_id"
    t.integer  "tee_id"
    t.integer  "skirt_id"
    t.integer  "short_id"
    t.integer  "dress_id"
    t.integer  "tank_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "images", ["dress_id"], name: "index_images_on_dress_id", using: :btree
  add_index "images", ["pant_id"], name: "index_images_on_pant_id", using: :btree
  add_index "images", ["shirt_id"], name: "index_images_on_shirt_id", using: :btree
  add_index "images", ["short_id"], name: "index_images_on_short_id", using: :btree
  add_index "images", ["skirt_id"], name: "index_images_on_skirt_id", using: :btree
  add_index "images", ["tank_id"], name: "index_images_on_tank_id", using: :btree
  add_index "images", ["tee_id"], name: "index_images_on_tee_id", using: :btree

  create_table "outfits", force: :cascade do |t|
    t.string   "description"
    t.integer  "shirt_id"
    t.integer  "pant_id"
    t.integer  "tee_id"
    t.integer  "skirt_id"
    t.integer  "short_id"
    t.integer  "dress_id"
    t.integer  "tank_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "outfits", ["dress_id"], name: "index_outfits_on_dress_id", using: :btree
  add_index "outfits", ["pant_id"], name: "index_outfits_on_pant_id", using: :btree
  add_index "outfits", ["shirt_id"], name: "index_outfits_on_shirt_id", using: :btree
  add_index "outfits", ["short_id"], name: "index_outfits_on_short_id", using: :btree
  add_index "outfits", ["skirt_id"], name: "index_outfits_on_skirt_id", using: :btree
  add_index "outfits", ["tank_id"], name: "index_outfits_on_tank_id", using: :btree
  add_index "outfits", ["tee_id"], name: "index_outfits_on_tee_id", using: :btree

  create_table "pants", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.boolean  "jean"
    t.string   "waist"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pants", ["clothing_id"], name: "index_pants_on_clothing_id", using: :btree

  create_table "seasons", force: :cascade do |t|
    t.string   "title"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "outfit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seasons", ["outfit_id"], name: "index_seasons_on_outfit_id", using: :btree

  create_table "shirts", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shirts", ["clothing_id"], name: "index_shirts_on_clothing_id", using: :btree

  create_table "shorts", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.boolean  "jean"
    t.string   "waist"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shorts", ["clothing_id"], name: "index_shorts_on_clothing_id", using: :btree

  create_table "skirts", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "skirts", ["clothing_id"], name: "index_skirts_on_clothing_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "shirt_id"
    t.integer  "pant_id"
    t.integer  "tee_id"
    t.integer  "short_id"
    t.integer  "dress_id"
    t.integer  "tank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["dress_id"], name: "index_taggings_on_dress_id", using: :btree
  add_index "taggings", ["pant_id"], name: "index_taggings_on_pant_id", using: :btree
  add_index "taggings", ["shirt_id"], name: "index_taggings_on_shirt_id", using: :btree
  add_index "taggings", ["short_id"], name: "index_taggings_on_short_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["tank_id"], name: "index_taggings_on_tank_id", using: :btree
  add_index "taggings", ["tee_id"], name: "index_taggings_on_tee_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tanks", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tanks", ["clothing_id"], name: "index_tanks_on_clothing_id", using: :btree

  create_table "tees", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.string   "brand"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tees", ["clothing_id"], name: "index_tees_on_clothing_id", using: :btree

  add_foreign_key "dresses", "clothings"
  add_foreign_key "images", "dresses"
  add_foreign_key "images", "pants"
  add_foreign_key "images", "shirts"
  add_foreign_key "images", "shorts"
  add_foreign_key "images", "skirts"
  add_foreign_key "images", "tanks"
  add_foreign_key "images", "tees"
  add_foreign_key "outfits", "dresses"
  add_foreign_key "outfits", "pants"
  add_foreign_key "outfits", "shirts"
  add_foreign_key "outfits", "shorts"
  add_foreign_key "outfits", "skirts"
  add_foreign_key "outfits", "tanks"
  add_foreign_key "outfits", "tees"
  add_foreign_key "pants", "clothings"
  add_foreign_key "seasons", "outfits"
  add_foreign_key "shirts", "clothings"
  add_foreign_key "shorts", "clothings"
  add_foreign_key "skirts", "clothings"
  add_foreign_key "taggings", "dresses"
  add_foreign_key "taggings", "pants"
  add_foreign_key "taggings", "shirts"
  add_foreign_key "taggings", "shorts"
  add_foreign_key "taggings", "tags"
  add_foreign_key "taggings", "tanks"
  add_foreign_key "taggings", "tees"
  add_foreign_key "tanks", "clothings"
  add_foreign_key "tees", "clothings"
end
