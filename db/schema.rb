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

ActiveRecord::Schema.define(version: 20160603035648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "brand_names", force: :cascade do |t|
    t.integer  "designer_id"
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

  add_index "brand_names", ["designer_id"], name: "index_brand_names_on_designer_id", using: :btree
  add_index "brand_names", ["dress_id"], name: "index_brand_names_on_dress_id", using: :btree
  add_index "brand_names", ["pant_id"], name: "index_brand_names_on_pant_id", using: :btree
  add_index "brand_names", ["shirt_id"], name: "index_brand_names_on_shirt_id", using: :btree
  add_index "brand_names", ["short_id"], name: "index_brand_names_on_short_id", using: :btree
  add_index "brand_names", ["skirt_id"], name: "index_brand_names_on_skirt_id", using: :btree
  add_index "brand_names", ["tank_id"], name: "index_brand_names_on_tank_id", using: :btree
  add_index "brand_names", ["tee_id"], name: "index_brand_names_on_tee_id", using: :btree

  create_table "clothings", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "designers", force: :cascade do |t|
    t.string   "title"
    t.string   "website_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dresses", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dresses", ["clothing_id"], name: "index_dresses_on_clothing_id", using: :btree

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
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.boolean  "jean"
    t.string   "waist"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pants", ["clothing_id"], name: "index_pants_on_clothing_id", using: :btree

  create_table "photos", force: :cascade do |t|
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
    t.string   "image"
  end

  add_index "photos", ["dress_id"], name: "index_photos_on_dress_id", using: :btree
  add_index "photos", ["pant_id"], name: "index_photos_on_pant_id", using: :btree
  add_index "photos", ["shirt_id"], name: "index_photos_on_shirt_id", using: :btree
  add_index "photos", ["short_id"], name: "index_photos_on_short_id", using: :btree
  add_index "photos", ["skirt_id"], name: "index_photos_on_skirt_id", using: :btree
  add_index "photos", ["tank_id"], name: "index_photos_on_tank_id", using: :btree
  add_index "photos", ["tee_id"], name: "index_photos_on_tee_id", using: :btree

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
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shirts", ["clothing_id"], name: "index_shirts_on_clothing_id", using: :btree

  create_table "shorts", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.boolean  "jean"
    t.string   "waist"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shorts", ["clothing_id"], name: "index_shorts_on_clothing_id", using: :btree

  create_table "skirts", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.string   "color"
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
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tanks", ["clothing_id"], name: "index_tanks_on_clothing_id", using: :btree

  create_table "tees", force: :cascade do |t|
    t.integer  "clothing_id"
    t.string   "title"
    t.integer  "cost"
    t.string   "size"
    t.string   "description"
    t.string   "length"
    t.string   "color"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tees", ["clothing_id"], name: "index_tees_on_clothing_id", using: :btree

  add_foreign_key "brand_names", "designers"
  add_foreign_key "brand_names", "dresses"
  add_foreign_key "brand_names", "pants"
  add_foreign_key "brand_names", "shirts"
  add_foreign_key "brand_names", "shorts"
  add_foreign_key "brand_names", "skirts"
  add_foreign_key "brand_names", "tanks"
  add_foreign_key "brand_names", "tees"
  add_foreign_key "dresses", "clothings"
  add_foreign_key "outfits", "dresses"
  add_foreign_key "outfits", "pants"
  add_foreign_key "outfits", "shirts"
  add_foreign_key "outfits", "shorts"
  add_foreign_key "outfits", "skirts"
  add_foreign_key "outfits", "tanks"
  add_foreign_key "outfits", "tees"
  add_foreign_key "pants", "clothings"
  add_foreign_key "photos", "dresses"
  add_foreign_key "photos", "pants"
  add_foreign_key "photos", "shirts"
  add_foreign_key "photos", "shorts"
  add_foreign_key "photos", "skirts"
  add_foreign_key "photos", "tanks"
  add_foreign_key "photos", "tees"
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
